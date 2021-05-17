def dumpsoftware(name,bss_size,space):
    with open(name+".text",'rb') as objectfile:
        with open("programText.txt",'w') as f:
            instr = objectfile.read(4)
            while(instr != b''):
                instr = int.from_bytes(instr,'little')
                f.write("{:08x}\n".format(instr))
                instr = objectfile.read(4)
    space = space//4
    with open("programData.txt",'w') as f:
        with open(name+".data",'rb') as objectfile:
            while(space>0):
                f.write("{:08x}\n".format(0))
                space-=1
            instr = objectfile.read(4)
            while(instr != b''):
                instr = int.from_bytes(instr,'little')
                f.write("{:08x}\n".format(instr))
                instr = objectfile.read(4)
        
        HEAPSIZE = 2048
        bss_size = bss_size//4 + 1 + HEAPSIZE+6
        while(bss_size> 0):
            f.write("{:08x}\n".format(0))
            bss_size-=1

if __name__ == '__main__':
    import sys
    if len(sys.argv) != 4 or (not sys.argv[2].isdigit()) or (not sys.argv[3].isdigit()):
        print("Usage: dumpsoftware.py name bssSize SpaceBetweenSections")
        sys.exit()
    
    dumpsoftware(sys.argv[1],int(sys.argv[2]),int(sys.argv[3]))
