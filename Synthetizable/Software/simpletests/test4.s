.file	"init.s"
	.option nopic
	.attribute arch, "rv32i2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 4

    .section .text
    .=0
	.align	4
	.globl	_end
	.type	_end, @function
_end:
    j _end
    .size	_end, .-_end

	.section .text
	.align	4
    .globl	main
	.type	main, @function

    .= 0x20
main:

    li      x2, 0x10000
    csrr    x1,misa
    sw      x1, 0(x2)
    csrr    x1,mcause
    sw      x1, 4(x2)
    mv      x6,x2
    li      x2, 0x87654321
    csrw    mscratch,x2
    csrr    x7,mscratch
    sw      x7, 8(x6)
    csrw    mepc,x2
    csrw    mtvec,x2
    csrw    mcause,x2

    csrr    x7,mepc
    sw      x7, 12(x6)
    csrr    x7,mtvec
    sw      x7, 16(x6)
    csrr    x7,mcause
    sw      x7, 20(x6)

    csrrw   x5,misa,x2
    li      x3,0xf0
    li      x4,0xf00
    csrs    mscratch,x3
    csrc    mscratch,x4
    csrs    mtvec,x3
    csrc    mtvec,x4
    csrs    mepc,x3
    csrc    mepc,x4 

    li      x2, 0x10000
    csrr    x1,mscratch
    sw      x1, 28(x2)
    csrr    x1,mepc
    sw      x1, 32(x2)
    csrr    x1,mtvec
    sw      x1, 36(x2)
    csrr    x1,mcause
    sw      x1, 40(x2)
    csrr    x1,misa
    sw      x1, 44(x2)
    sw      x5, 48(x2)

    j    _end
	.size	main, .-main
    
	
    .section data
    .= 0x10000
registers:
    .zero 128
	.ident	"GCC: (Arch User Repository) 9.2.0"
