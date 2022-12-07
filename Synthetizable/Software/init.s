	.file	"init.s"
	.option nopic
	.attribute arch, "rv32i2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16

    .section .text.finish
    .align	4
    .globl	__finish
	.type	__finish, @function
__finish:
    j    __finish
	.size	__finish, .-__finish

	.section .text.startup
	.align	4
    .globl	_startup
	.type	_startup, @function
_startup:
    csrwi   mie, 0
    csrwi   mstatus, 0
    la      t0,_trap
    csrw    mtvec, t0
    li      x1, 0
    li      x2, 0
    li      x3, 0
    li      x4, 0
    li      x5, 0
    li      x6, 0
    li      x7, 0
    li      x8, 0
    li      x9, 0
    li      x10,0
    li      x11,0
    li      x12,0
    li      x13,0
    li      x14,0
    li      x15,0
    li      x16,0
    li      x17,0
    li      x18,0
    li      x19,0
    li      x20,0
    li      x21,0
    li      x22,0
    li      x23,0
    li      x24,0
    li      x25,0
    li      x26,0
    li      x27,0
    li      x28,0
    li      x29,0
    li      x30,0
    li      x31,0
    la      sp, _STACK_START
    mv      s0, sp
    j    _start
	.size	_startup, .-_startup
    
    .section .text
	.align	4
	.globl	_trap
	.type	_trap, @function
_trap:
    j       _trapEntry
	.size	_trap, .-_trap

    .globl	_trapintr
	.type	_trapintr, @function
.= _trap+0x2c
_trapintr:
    j       _trapEntry
	.size	_trapintr, .-_trapintr	
	
    .section .text
	.align	4
	.globl	_trapEntry
	.type	_trapEntry, @function
_trapEntry:
    addi    sp, sp,-132
    sw      x1, 1*4(sp)
    sw      x2, 2*4(sp)
    sw      x3, 3*4(sp)
    sw      x4, 4*4(sp)
    sw      x5, 5*4(sp)
    sw      x6, 6*4(sp)
    sw      x7, 7*4(sp)
    sw      x8, 8*4(sp)
    sw      x9, 9*4(sp)
    sw      x10, 10*4(sp)
    sw      x11, 11*4(sp)
    sw      x12, 12*4(sp)
    sw      x13, 13*4(sp)
    sw      x14, 14*4(sp)
    sw      x15, 15*4(sp)
    sw      x16, 16*4(sp)
    sw      x17, 17*4(sp)
    sw      x18, 18*4(sp)
    sw      x19, 19*4(sp)
    sw      x20, 20*4(sp)
    sw      x21, 21*4(sp)
    sw      x22, 22*4(sp)
    sw      x23, 23*4(sp)
    sw      x24, 24*4(sp)
    sw      x25, 25*4(sp)
    sw      x26, 26*4(sp)
    sw      x27, 27*4(sp)
    sw      x28, 28*4(sp)
    sw      x29, 29*4(sp)
    sw      x30, 30*4(sp)
    sw      x31, 31*4(sp)
    
    csrr    a0, mcause
    csrr    a1, mepc
    mv      a2,sp
    jal _Ehandler    
    csrw    mepc,a0
    
    lw      x1, 1*4(sp)
    lw      x3, 3*4(sp)
    lw      x4, 4*4(sp)
    lw      x5, 5*4(sp)
    lw      x6, 6*4(sp)
    lw      x7, 7*4(sp)
    lw      x8, 8*4(sp)
    lw      x9, 9*4(sp)
    lw      x10, 10*4(sp)
    lw      x11, 11*4(sp)
    lw      x12, 12*4(sp)
    lw      x13, 13*4(sp)
    lw      x14, 14*4(sp)
    lw      x15, 15*4(sp)
    lw      x16, 16*4(sp)
    lw      x17, 17*4(sp)
    lw      x18, 18*4(sp)
    lw      x19, 19*4(sp)
    lw      x20, 20*4(sp)
    lw      x21, 21*4(sp)
    lw      x22, 22*4(sp)
    lw      x23, 23*4(sp)
    lw      x24, 24*4(sp)
    lw      x25, 25*4(sp)
    lw      x26, 26*4(sp)
    lw      x27, 27*4(sp)
    lw      x28, 28*4(sp)
    lw      x29, 29*4(sp)
    lw      x30, 30*4(sp)
    lw      x31, 31*4(sp)
    lw      x2, 2*4(sp)
    
    addi    sp, sp,132
    mret
	.size	_trapEntry, .-_trapEntry
	
	.ident	"GCC: (Arch User Repository) 9.2.0"
