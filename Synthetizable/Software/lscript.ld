/* Define Memories in the system */
MEMORY
{
   axi_bram_ctrl_Instr_Mem0 (rx) : ORIGIN = 0x80000000, LENGTH = 0x8000
   axi_bram_ctrl_Data_Mem0 : ORIGIN = 0x82000000, LENGTH = 0x8000
}

ENTRY(_startup)
_MEMINTR_START = ORIGIN(axi_bram_ctrl_Instr_Mem0);
_STACK_START = ORIGIN(axi_bram_ctrl_Data_Mem0)+LENGTH(axi_bram_ctrl_Data_Mem0)-4;

SECTIONS
{
    .text : {
        *(.text.finish) 
        *(.text.startup)   
        *(.text)
        *(.text.*)
    } > axi_bram_ctrl_Instr_Mem0

    .rodata :{
        *(.rodata)
    } > axi_bram_ctrl_Data_Mem0

    .data :{
        __DATA_BEGIN__ = .;
        *(.data)
    } > axi_bram_ctrl_Data_Mem0

    .sdata :{
        __SDATA_BEGIN__ = .;
        *(.sdata)
        _edata = .; PROVIDE (edata = .);
        . = .;
    } > axi_bram_ctrl_Data_Mem0

    .sbss :{
        *(.sbss)
    } > axi_bram_ctrl_Data_Mem0

    .bss :{
        *(.bss)
        __BSS_END__ = .;
        __global_pointer$ = MIN(__SDATA_BEGIN__ + 0x800,
                        MAX(__DATA_BEGIN__ + 0x800, __BSS_END__ - 0x800));
    _end = .; PROVIDE (end = .);
    } > axi_bram_ctrl_Data_Mem0
}