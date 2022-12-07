from cachesim import Cache

class memory:
    from random import randint
    from math import log2

    def __init__(self,size,membus,blocksize):
        lines = size//membus
        self._data = [memory.randint(0,(1<<8*membus)-1) for _ in range(lines)]
        self._wordsperblock = blocksize//membus
        self._bitsoffset = int(memory.log2(lines))
        self._i = 0
        self._mask = ((1<<8*membus)-1) & (~(int(memory.log2(self._wordsperblock))))

    def store(self,addr,value):
        index = addr >> self._bitsoffset & self._mask
        self._data[index+self._i] = value
        self._i = self._i + 1 if(self._i + 1 <self._wordsperblock) else 0 
        return self._i
             
    def load(self,addr):
        index = (addr >> self._bitsoffset)& self._mask
        for i in range(self._wordsperblock):
            yield self._data[index+i]

    def __repr__(self):
        return f"lines: {len(self._data)}\tmask: 0x{self._mask:X}\toffset: {self._bitsoffset}"

class testCache(Cache):
    def __init__(self,cachetype,settings,replacepolicy = None,cpubus=4,fname=None):
        Cache.__init__(self,cachetype,settings,replacepolicy)
        assert fname, "must declare output filename"
        self.filestream = open(fname,'w')
        self.cpubus = cpubus
        self.cpubusbits = int(Cache.log2(cpubus))
        self.wordsinblock = self.linewigth //cpubus
        if self.kind == 'direct':
            self.data =[[0]*(self.linewigth//cpubus) for _ in range(self.lines)]
            self.dirty = [False]*self.lines
            
        elif self.kind == 'setway':
            self.data =[[[0]*(self.linewigth//cpubus) for _ in range(self.lines)] for __ in range(self.ways)]
            self.dirty = [[False]*self.lines for _ in range(self.ways)]

        #Port values
        self._EDS = 0       # Extern Data Store
        self._EDL = 0       # Extern Data Load
        self._EMADDR = 0    # Extern Mem Addr
        self._EMA = 0       # Extern Mem Access
        self._EWEN = 0      # Extern Write Enable
        self._ESD = 0       # Extern Store Done
        self._ELD = 0       # Extern Load Done
        self._DL = 0        # Data Load
        self._DS = 0        # Data Store
        self._MADDR = 0     # Mem Addr
        self._WEN = 0       # Write Enable
        self._MA = 0        # Mem Access
        self._C = 0         # Continue
        


    def __del__(self):
        self.filestream.close()

    def writetb(self):
        txt = f"{self._EDS:0{(self.membus*2)}X} {self._EDL:0{(self.membus*2)}X} "+\
            f"{self._EMADDR:0{(self.cpubus*2)}X} {self._EMA} {self._EWEN}"+\
            f" {self._ESD} {self._ELD} {self._DL:0{(self.cpubus*2)}X} "+ \
            f"{self._DS:0{(self.cpubus*2)}X} {self._MADDR:0{(self.cpubus*2)}X}"+\
            f" {self._WEN} {self._MA} {self._C}\n"
        
        self.filestream.write(txt)

    def writenoaccesswait(self,waittime = 20):
        randomwait = Cache.randint(0,waittime)     
        for _ in range(randomwait):
            self.writetb()

    def _writerandomwait(self):
        self._ELD = 0
        self._ESD = 0
        randomwait = Cache.randint(0,20)

        def nop():
            pass

        if self.rpolicy == 'trivium' or self.rpolicy == 'lfsr':
            func = self.genrandom
        else:
            func = nop

        for _ in range(randomwait):
            self.writetb()
            func()

    def initmem(self,memsize,membus):
        self.mem = memory(memsize,membus,self.linewigth)
        self.wordsinmembus = membus // self.cpubus
        self.membus = membus
        self.writetb()

    def loadcache(self,addr,way):
        index = (self.lines-1) & (addr>>self.offsetbits)
        word = ((self.linewigth - 1) & addr) >> self.cpubusbits
        if self.kind == 'direct':
            return self.data[index][word]
        else:
            return self.data[way][index][word]

    def storecache(self,addr,way,value):
        index = (self.lines-1) & (addr>>self.offsetbits)
        word = ((self.linewigth - 1) & addr) >> self.cpubusbits
        if self.kind == 'direct':
            self.data[index][word] = value
            self.dirty[index] = True
        else:
            self.data[way][index][word] = value
            self.dirty[way][index] = True


    def refillline(self,addr,way,pretag):
        self._EMA = 1
        index = (self.lines-1) & (addr>>self.offsetbits)
        mask = ((1<<8*self.cpubus)-1)
        dirty = self.dirty[index] if self.kind=='direct' else self.dirty[way][index]
        if dirty:
            waddr = (pretag << self.tagbits) | ( ((1<<self.tagbits) -1) & addr)
            word = 0
            self._EMADDR = waddr
            self._EWEN = 1
            while True:
                to_store = 0
                for n in range(self.wordsinmembus):
                    tmp = self.data[index][word] if self.kind=='direct' else self.data[way][index][word]
                    to_store |= (tmp<<(8*n*self.cpubus))
                    word+= 1
                
                self._EDS = to_store
                self._writerandomwait()
                self._ESD = 1
                self.writetb()
                
                if not self.mem.store(waddr,to_store):
                    break
            if self.kind=='direct':               
                self.dirty[index] = False
            else:
                self.dirty[way][index] = False

            self._EWEN = 0
            self._ESD = 0

        word = 0
        self._EMADDR = addr
        for value in self.mem.load(addr):
            self._EDL = value
            for _ in range(self.wordsinmembus):
                if self.kind=='direct':               
                    self.data[index][word] = value & mask
                else:
                    self.data[way][index][word] = value & mask
                
                value = value >> (8*self.cpubus)
                word+=1
                
            self._writerandomwait()
            self._ELD = 1
            self.writetb()
        
        self._ELD = 0
        self._EMA = 0

    def accesswithdata(self,addr,storevalue):
        self._MA = 1
        self._MADDR = addr
        self._WEN = 1 if storevalue != None else 0

        matchingway = self.match(addr)
        if not matchingway:
            matchingway, pretag = self.replaceline(addr)
            self.refillline(addr,matchingway,pretag)
        else:
            # if match return the matching way in 1 to Way, if not match return0
            # is substracted 1 to be usable by arrays 
            matchingway-= 1
        
        self._C = 1
        if storevalue != None:
            self._DL = self.loadcache(addr,matchingway)
            self.storecache(addr,matchingway,storevalue)
            self._DS = storevalue
            self.writetb()

        else:   
            self._DL = self.loadcache(addr,matchingway)
            self.writetb()

        self._MA = 0
        self._C = 0
        self._WEN = 0
        return self._DL

def main():
    from random import randint
    t = testCache('setway',[512,8,8],fname='cachetb6.txt',replacepolicy="lifo")
    t.initmem(4096,8)
    for _ in range(10000):
        storevalue = randint(0,0xffffffff) if not randint(0,2) else None
        addr = randint(0,4095)
        t.accesswithdata(addr,storevalue)
        t.writenoaccesswait(2)

def histogram():
    bits = 2
    ways = 1<<bits
    Hlen = 120
    N = 1000000

    t = Cache('setway',[512,4,ways],'trivium')
    print(f"key = 0x{t.K:X}, Internal Value 0x{t.IV:X},states: {len(t.istates)}")
    
    hist = {}
    for _ in range(N):
        ran = t.genrandom()
        if ran not in hist:
            hist[ran] = 1
        else:
            hist[ran]+=1

    
    print("Histogram: ")
    for i in range(ways):
        reps = (hist[i]/N)*Hlen
        print(f"{i:02}:\t{'#'*int(reps)}\t{hist[i]}")

def tests():
    print("displaying memory simpletest")
    mem = memory(1<<16,8,64)
    print(mem)
    for data in mem.load(0xffaf8):
        print("value:",hex(data))
    print("updating memory...")
    a = 0
    while mem.store(0xffaf8,a): 
        a+=1
    for data in mem.load(0xffaf8):
        print("new value:",hex(data))
    print("updating memory...")
    while mem.store(0xffaf8,a): 
        a+=1
    for data in mem.load(0xffaf8):
        print("new value:",hex(data))

    print("displaying cache simpletest")
    t = testCache('direct',[512,16],fname='test.txt')
    t.initmem(4096,8)
    print(f"0x{t.accesswithdata(2484,None):08X}")
    print(f"0x{t.accesswithdata(2484,None):08X}")
    print(f"0x{t.accesswithdata(2480,None):08X}")
    print(f"0x{t.accesswithdata(2480,0x489847):08X}")
    print(f"0x{t.accesswithdata(2480,None):08X}")
    for value in t.mem.load(2480):
        print(f"0x{value:016X}")
    print(f"0x{t.accesswithdata(2480+512,0xDEADBEEF):08X}")
    t.writenoaccesswait()
    print(f"0x{t.accesswithdata(2480+512,None):08X}")
    print(f"0x{t.accesswithdata(2484+512,0xBABEACEF):08X}")
    print(f"0x{t.accesswithdata(2484+512,None):08X}")
    for value in t.mem.load(2480):
        print(f"0x{value:016X}")
    
    print(f"0x{t.accesswithdata(2480-512,0x489847):08X}")
    print(f"0x{t.accesswithdata(2480-512,None):08X}")

    for value in t.mem.load(2480+512):
        print(f"0x{value:016X}")

if __name__ == "__main__":
    main()



    