extern int* __BSS_END__;

void _setvectored()
{
    asm("csrsi\tmtvec,1");
}
void _setdirect()
{
    asm("csrci\tmtvec,1");
}

void _enableintr(int vectored)
{
    if (vectored) 
        _setvectored();
    volatile int mie = 0x800;
    asm volatile ("csrw mie,%0\n\t"
        "csrwi mstatus,8"
        : "=r" (mie));    
}

void _disableintr()
{
    asm("csrwi mie,0\n\t"
        "csrci mstatus,8");    
}

void interruptCPU()
{
    volatile int *SetIRQ = (int *) 0x90000004;
    *SetIRQ = 1;
}
void intrhandler() 
{
    volatile int *disableIRQ = (int *) 0x90000000;
    *disableIRQ = 1;
    int pendingIRQ;
    do{
        asm volatile ("csrr %0,mip"
            : "=r" (pendingIRQ));
    }while(pendingIRQ != 0);
}

static int sys_fstat(int fd)
{
    if (fd == 1)
        return 0;
    return -1;
}

static int sys_brk(int EndHeapAddr)
{
    const int HeapStart = (const int) &__BSS_END__ + 12;
    const int HeapSize = 2048*4;
    
    if (EndHeapAddr == 0)
        return HeapStart;
    else if (EndHeapAddr < HeapStart+HeapSize)
        return EndHeapAddr;
    else
    {
        volatile int* HeapOverflow = (int*) 0x7002BEEC;
        *HeapOverflow = EndHeapAddr - (HeapStart+HeapSize);
        return -1; 
    }
}

static int sys_write(int fd, const char* buf, int size)
{
    volatile char *printAddr = (char*)0x7000BEEF;
    if (fd == 1) // if standard ouput
    {
        for (int i=0; i<size;i++)
            *printAddr = buf[i];
        
        return size;
    }
    return -1;
}

static int syscall(int a0,int a1,int a2,int a3,int a4,int a5,int syscalltype)
{
    int res = 0;
    if(syscalltype == 64)// sys_write
    {
        res = sys_write(a0,(const char*)a1,a2);
    }
    else if(syscalltype == 214)// brk
    {
        res = sys_brk(a0);
    }
    else if(syscalltype == 80)// fstat
    {
        res = sys_fstat(a0);
    }
    else
    {
        volatile int* othersyscall = (int*) 0x7001BEEC;
        *othersyscall = syscalltype;
    }
    
    return res;
}
//unsigned int __attribute__((weak)) 
unsigned int _Ehandler(unsigned int mcause,unsigned int mepc, int regs[32])
{
    if (mcause & 0x80000000) //check if it was an irq
    { 
        intrhandler();
    }
    else if (mcause == 0xB) // if enviroment call
    {
        //syscalls arguments a0-a5,a7 regs x10-x15,x7
        regs[10] = syscall(regs[10],regs[11],regs[12],regs[13],regs[14],\
                regs[15],regs[17]);
        mepc +=4;
    }
    else
    {
        volatile int *ErrorAddr = (int*)0xDEADBEEC;
        *ErrorAddr = mcause;
#ifdef EXPTEST
        mepc +=4;
#else
        for(;;);
#endif
    }
    
    return mepc;
}
