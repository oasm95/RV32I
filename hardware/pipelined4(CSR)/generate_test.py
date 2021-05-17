import random
import os

def clear(x,y):
    mask = (~x)&0xffffffff
    return y & mask

def sltu (x,y):
    return 1 if (x<y) else 0

def s(x, y):
    return (x + y) & 0xffffffff

def r(x, y):
    return (x - y) & 0xffffffff

def a(x, y):
    return x

def b(x, y):
    return y

def ran(x,y):
    return random.randint(0,0xffffffff)

def ssl(x,y):
    return (x << (y&0x1f))&0xffffffff

def srl(x,y):
    return (x >> (y&0x1f))&0xffffffff

def bor(x,y):
    return x | y

def band(x,y):
    return x & y

def xor(x,y):
    return (x^y)&0xffffffff

def stl(x,y):
    xb = x.to_bytes(4,'little', signed=False)                                                          
    x = int.from_bytes(xb, 'little', signed=True)
    yb = y.to_bytes(4,'little', signed=False)                                                          
    y = int.from_bytes(yb, 'little', signed=True)
    return 1 if (x<y) else 0
    

def sra(x,y):
    singext = x & 0x80000000
    rang = (y&0x1f) 
    for _ in range(rang):
        x = x >> 1
        x = x | singext
    return x     

#requiered to have riscv32-binutils installed
def CU():
#    std-vector    logic      std-vector   std-vector   std-vector   std-vector
#  Instruction  |  Trap    |     PCSel*   |   ASel*    |   BSel*    |   ImmSel*   |...
    PCcons = {"jmp": 1,"nextPC":0,"jalr":2,"trap":3,"x": 'x',"X": 'x'}
    Asel = {"currentPC":1,"rs1":0,"csr":2,"x":'x'}
    Bsel = {"imm":1,"rs2":0,"csr":2,"x":'x'}
    WBsel = {"alu":0,"nextPC":2,"csrdata":3,"mem":1,"x":'x'}
    Immsel = {"itype":0,"stype":1,"btype":2,"jtype":4,"utype":3,"csrtype":5,"x":'x'}
    alusel = {"add":0,"sub":8,"sll":1,"slt":2,"sltu":3,"xor":4,"srl":5,"sra":'d',"or":6,"and":7,\
        "clear":'f',"a":'c',"b":'e',"x":'x'}  
    isa = []
    with open("CU.csv",'r') as f:
        a = f.readline()
        if not a[0].isalpha():
            a = a[1:]            
        a = a.replace("\n","")
        a = a.split(';')
        isa.append(a)
        for line in f:
            a = line.replace("\n","")
            a = a.split(';')
            isa.append(a)
    N = 3000        
    testvector = []
    randname = "{:08x}.s".format(random.randint(0,0xffffffff))
    with open(randname,'w') as f:
        f.write("main:\n")
        rang = len(isa)-2
        for _ in range(N):
            inst=random.randint(0,rang)
            f.write("\t{}\n".format(isa[inst][0]))
            testvector.append(inst)

    randnameout = randname.replace('.s','.out')
    randnametext = randname.replace('.s','.obj')
    cmd = "riscv32-elf-as -o {} {}".format(randnameout,randname)
    os.system(cmd)
    cmd = "riscv32-elf-objcopy  --dump-section .text={} {}".format(randnametext,randnameout)
    os.system(cmd)
    os.remove(randnameout)
    os.remove(randname)
    
    with open(randnametext,'rb') as textsection:
        with open('testvectorControlUnit.txt','w') as f:
            _ = 0
            for a in testvector:
                _+= 1
                orignal = a
                trap = random.randint(0,1) if (( _ % 23) == 0) else 0
                a = a if (trap == 0) else (len(isa)-1)
                instr = textsection.read(4)
                instr = int.from_bytes(instr,'little')
                pc = PCcons[isa[a][3]]
                
                if isa[a][1] == 'BRANCH':
                    alu = hex(alusel[isa[a][8]]|8)[2:]         
                else:
                    alu= alusel[isa[a][8]]
                    
                sels = [str(pc),str(Asel[isa[a][4]]),str(Bsel[isa[a][5]]),str(Immsel[isa[a][6]]),str(WBsel[isa[a][7]]),str(alu)]
                logics = isa[a][9:]
                txt = "{:08X} {} {} {} {}\n".format(instr," ".join([str(trap)])," ".join(sels)," ".join(logics),isa[a][2]+' '+isa[orignal][2])
                f.write(txt)
    os.remove(randnametext)

#requiered to have riscv32-binutils installed
def imm():
#    std-vector   std-vector*    integer              
#  Instruction  |  Immediate  |  ImmSel 
    immtypes = (
        ("\taddi\ta1,a2,{}{}\n", #itype
         False,
         -2048,2047,
         lambda x : x&0xffffffff
         ), 
        ("\tsw\ta1,{}{}(a2)\n",#stype
         False,
         -2048,2047,
         lambda x: x&0xffffffff
         ),
        ("\tbeq\ta1,a2,.{}{}\n",#btype
         True,
         -2048,2047,
         lambda x: x&0xfffffffe
         ),
        ("\tlui\ta1,{}{}\n", #utype
         False,
         0,0xfffff,
         lambda x: x<<12
         ),
        ("\tjal\ta1,.{}{}\n", #jtype
         True,
         -1048576,1048575,
         lambda x: x&0xfffffffe
         ),
        ("\tcsrrci\tx0,768,{}{}\n", #csrtype
         False,
         0,31,
         lambda x: x
         )
    )
    randname = "{:08x}.s".format(random.randint(0,0xffffffff))
    N = 1200
    testvector = []
    with open(randname,'w') as f:
        f.write("main:\n")
        for a in range(N):
            imm = random.randint(0,5)
            immval = random.randint(immtypes[imm][2],immtypes[imm][3])
            tocmp = immtypes[imm][4](immval)
            if immval < 0:
                sign = '-'
            else:
                sign = '+' if (immtypes[imm][1]) else ''
            asmcode = immtypes[imm][0].format(sign,abs(immval))
            testvector.append([imm,tocmp])
            f.write(asmcode)
    
    randnameout = randname.replace('.s','.out')
    randnametext = randname.replace('.s','.obj')
    cmd = "riscv32-elf-as -o {} {}".format(randnameout,randname)
    os.system(cmd)
    cmd = "riscv32-elf-objcopy  --dump-section .text={} {}".format(randnametext,randnameout)
    os.system(cmd)
    os.remove(randnameout)
    os.remove(randname)
    with open(randnametext,'rb') as textsection:
        with open('testvectorImmDecoder.txt','w') as f:
            for a in testvector:
                instr = textsection.read(4)
                instr = int.from_bytes(instr,'little')
                txt = "{:08X} {:08X} {}\n".format(instr,a[1],a[0])
                f.write(txt)
    os.remove(randnametext)
    
def alu():
#std-vector   std-vector   std-vector*  std-vector    logic*      logic*       logic*       logic*              
#     A    |      B      |     C      |   Funsel  |     Z     |  CondTrue | MisalignedW | MisalignedHW    
    op = {"0": s,"1": ssl,"2": stl,"3": sltu,\
        "4": xor,"5": srl,"6": bor,"7": band,\
            "8": r,"12":a,"14": b,"13": sra,"15": clear,\
                "10":stl,"11":sltu}
    vals = (0x00000000,0x55555555,0xaaaaaaaa,0xffffffff)    
    with open('testvectorALU.txt','w') as f:
        for key, func in op.items():
            for avar in vals:
                for bvar in vals:
                    funsel = int(key)
                    c = func(avar,bvar)
                    z = 0 if (c) else 1
                    condt = 0 if (funsel != 3 and funsel != 2) else c
                    if funsel != 0:
                        misaW = 0
                        misaHW = 0
                    else :
                        misaW = 1 if (c % 4) else 0
                        misaHW = 1 if (c %2) else 0
                    
                    txt = "{:08x} {:08x} {:08x} {:x} {} {} {} {}\n".format(\
                        avar,bvar,c,funsel,z,condt,misaW,misaHW)
                    f.write(txt)

def memIn():
    #std-vector       std-vector       std-vector*   std-vector      std-vector*           integer    
    #Mem_addr |   Extern_Data_Load   |  Data_Load  | Data_Store |  Extern_Data_Store   |   Mem_size 
    with open('testvectorMemInterface.txt','w') as f:
        align=(0xffffffff,0xfffffffe,0xfffffffc)
        for _ in range(2000):
            dsz = random.randint(0,2) # decides data size (dsz), Word(2), HalfWord(1) or Byte(0)
            maddr = ran(0,0) & align[dsz]
            unsigned = random.randint(0,1)
            memsize = dsz | (unsigned << 2)
            selbyte = maddr & 0x3
            #******for Load
            edload = ran(0,0)
            edloadbytes = (edload).to_bytes(4,byteorder='big')
            #format load by size
            if dsz == 0 : #byte load
                dload = edloadbytes[3-selbyte]
                if not unsigned:
                    if dload & 0x80:
                        dload = dload | 0xffffff00
            elif dsz == 1:#halfword load
                dload = int.from_bytes(edloadbytes[2-selbyte:4-selbyte],'big')
                if not unsigned:
                    if dload & 0x8000:
                        dload = dload | 0xffff0000
            else:#word load
                dload = edload
            #*****for Store
            dstoremask=(0x000000ff,0x0000ffff,0xffffffff)
            dstore = ran(0,0)
            towrite = dstore & dstoremask[dsz]
            if dsz == 0: #bytestore
                mask = (0xffffff00,0xffff00ff,0xff00ffff,0x00ffffff)
                edstore = (edload & mask[selbyte]) | (towrite << 8*(selbyte))
            elif dsz == 1: #halfwordstore
                mask = (0xffff0000,0x0000ffff)                
                edstore = (edload & mask[selbyte>>1]) | (towrite << 16*(selbyte>>1))
            else:#wordstore
                edstore = towrite
            txt = "{:08x} {:08x} {:08x} {:08x} {:08x} {} \n".format(\
                maddr,edload,dload,dstore,edstore,memsize)
            f.write(txt)
            
def pc():
#std-vector  std-vector  std-vector  std-vector  std-vector   integer    std_logic
#jumptarget |   jalr   |    expt   | currentpc |  nextpc   |   pc_sel   |   stall  
    with open('testvectorPC.txt','w') as f:
        pcmux = [0x00000020,0,0,0]
        for _ in range(2000):
            currentpc = pcmux[0]
            nextpc = s(currentpc,4)
            pcmux[1] = ran(0,0)
            pcmux[2] = ran(0,0)
            pcmux[3] = ran(0,0)
            stall = random.randint(0,1)            
            pcsel = 0 if (_ % 25) else random.randint(0,3)
            if not stall:
                pcmux[0] = pcmux[pcsel] if (pcsel) else nextpc
           
            txt = "{:08x} {:08x} {:08x} {:08x} {:08x} {} {}\n".format(\
                pcmux[1],pcmux[2],pcmux[3],currentpc,nextpc,pcsel,stall)
            f.write(txt)
                 
             
             
def regfile():
    funcs = [s,r,a,b,ran]
    with open('testvectorRegFile.txt','w') as f:
        regs = [0]*32
        for _ in range(1200):
            rs1 = random.randint(0,31)
            rs2 = random.randint(0,31)
            rd = random.randint(0,31)
            op = random.randint(0,4)
            wren = random.randint(0,1)
            aval = 0 if(rs1==0) else regs[rs1]
            bval = 0 if(rs1==0) else regs[rs2]
            rval = funcs[op](aval,bval)        
            if rd !=0 and wren !=0:
                regs[rd] = rval
                            
            txt = '{} {:08x} {} {:08x} {} {:08x} {}\n'.format(rs1,aval,rs2,bval,rd,rval,wren) 
            f.write(txt)
        
        for a in range(16):
            txt = '{} {:08x} {} {:08x} {} {:08x} {}\n'.format(a,regs[a],16+a,regs[16+a],a,0,0) 
            f.write(txt)
 
def csr():
#1 std-vector  std-vector   std-vector*     std-vector*  std-vector(12)  std-vector(4)     
#1 CSRWdata |    currentPC     |    CSRdata *  |    OUTPC *   |  CSRaddr   |   CSRcause      

#2 logic   logic         logic    logic     logic         
#2 Eirq |   Mret   |  Trap_Wen  |   Wen  |  irq *   
    
    #constants
    MISA = '301';MVECT = '305';MEPC = '341'
    MCAUSE = '342';MSTATUS = '300';MIE = '304'
    MIP = '344'
    
    mie = 0;mpie = 0;MIP_meip = 0
    eirq = 0;irq = 0; meta = 0
       
    csr = {
        MISA : 0x40000100, MVECT : 0,
        MEPC : 0,MCAUSE : 0,
        MSTATUS : (3<<11)|(mpie<<7)|(mie<<3),
        MIP : 0,MIE : 0}
    
    csrread = {
        MISA : lambda x : csr[x],
        MVECT : lambda x : csr[x],
        MEPC : lambda x : csr[x],
        MCAUSE : lambda x : csr[x],
        MSTATUS : lambda x: csr[x],
        MIP : lambda x :  (MIP_meip<<11),
        MIE : lambda x : csr[x]} 

    csrwrite = {
        MISA : lambda x : 0x40000100,
        MVECT : lambda x : x,
        MEPC : lambda x : x&0xfffffffc,
        MCAUSE : lambda x : (x&0x7fffffff),
        MSTATUS : lambda x: (x & 0x88)|(3<<11),
        MIP : lambda x :  (MIP_meip<<11),
        MIE : lambda x : x & (1<<11)} 
    
    with open('testvectorCSRFile.txt','w') as f:        
        csraddr = random.randint(0,0xfff)
        currentPC = 0; rdata = 0; outputPC = 0
        intrcause = 0;mret = 0; trapWen = 0
        Wen = 1
        for key in csr:
            wrdata = random.randint(0,0xffffffff)
            csr[key] = csrwrite[key](wrdata)
        
            txt = "{:08X} {:08X} {:08X} {:08X} {} {:01x} {} {} {} {} {}\n".\
                format(wrdata,currentPC,rdata,outputPC,key,intrcause,\
                    eirq,mret,trapWen,Wen,irq)
            f.write(txt)
        
        csrkeys = list(csr.keys())
        for _ in range(1200):
            mie = 1 if (csr[MSTATUS]&0x8) else 0
            mpie = 1 if (csr[MSTATUS]&0x80) else 0
            wrdata = random.randint(0,0xffffffff)
            currentPC = random.randint(0,0xffffffff)
            csraddr = random.randint(0,0xfff)
            intrcause = random.randint(0,0xf)
            Wen = random.randint(0,1)
            MIP_meip = meta
            meta = eirq
            eirq = random.randint(0,1) if (( (_+1) % 37) == 0) else eirq            
            trapWen = random.randint(0,1) if (( (_+1) % 23) == 0) else 0
            mret = random.randint(0,1) if (( (_+1) % 29) == 0) else 0
            
            MIE_meie = 1 if ((1<<11) & csr[MIE]) else 0
            irq = 1 if (MIP_meip and mie and MIE_meie) else 0
            
            if _ % 2 :
                hexaddr = hex(csraddr)[2:]
            else:
                hexaddr = csrkeys[random.randint(0,6)]
                csraddr = int(hexaddr,16)
                
            rdata = 0 if (hexaddr not in csrkeys) else csrread[hexaddr](hexaddr)

            # Selects address to pc, based on MVECT, bit 1 of mvect, irq sets the address as base + 4*cuse(0x2c) of irq 
            base = csr[MVECT] & 0xfffffffc
            outputPC = s(base,0x2c) if (irq &csr[MVECT]) else base
            
            if mret == 1:
                outputPC = csr[MEPC]
                        
            if trapWen == 1:
                csr[MCAUSE] = intrcause|(irq <<31)
                csr[MEPC] = csrwrite[MEPC](currentPC) 
                mpie = mie
                mie = 0
                csr[MSTATUS] = csrwrite[MSTATUS]((mpie<<7)|(mie<<3))
            elif mret == 1:
                mie = mpie
                mpie = 1
                csr[MSTATUS] = csrwrite[MSTATUS]((mpie<<7)|(mie<<3))
            else:
                if (Wen) and (hexaddr in csrkeys) and mret == 0:
                    csr[hexaddr] = csrwrite[hexaddr](wrdata)
            

            txt = "{:08X} {:08X} {:08X} {:08X} {:03X} {:01x} {} {} {} {} {}\n".\
                format(wrdata,currentPC,rdata,outputPC,csraddr,intrcause,\
                    eirq,mret,trapWen,Wen,irq)
            f.write(txt)

def dumpsoftware(name,bss_size):
    with open(name+".text",'rb') as objectfile:
        with open("programText.txt",'w') as f:
            instr = objectfile.read(4)
            while(instr != b''):
                instr = int.from_bytes(instr,'little')
                f.write("{:08x}\n".format(instr))
                instr = objectfile.read(4)
                
    with open("programData.txt",'w') as f:
        with open(name+".data",'rb') as objectfile:
            instr = objectfile.read(4)
            while(instr != b''):
                instr = int.from_bytes(instr,'little')
                f.write("{:08x}\n".format(instr))
                instr = objectfile.read(4)
       
        bss_size = bss_size//4 +1
        while(bss_size> 0):
            f.write("{:08x}\n".format(0))
            bss_size-=1

if __name__ == '__main__':
    CU()
