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
    li      x1,0xffeeddcc
    li      x2,0xbbaa7766
    li      x3,0x12345678
    li      x21, 0x10000
    addi    x22, x21,128
    sw      x1, 4(x22)
    sw      x2, 8(x22)

    lw      x4, 4(x22)

    lh      x5, 4(x22)
    lhu     x6, 4(x22)
    lh      x7, 6(x22)
    lhu     x8, 6(x22)

    lb      x9, 4(x22)
    lbu     x10, 4(x22)
    lb      x11, 9(x22)
    lbu     x12, 9(x22)
    lb      x13, 10(x22)
    lbu     x14, 10(x22)
    lb      x15, 11(x22)
    lbu     x16, 11(x22)


    sw      x0, 12(x22)
    sw      x0, 16(x22)
    sw      x0, 20(x22)
    sw      x0, 24(x22)
    sw      x0, 28(x22)
    sw      x0, 32(x22)

    sh      x3, 12(x22)
    sh      x3, 18(x22)
    sb      x3, 20(x22)
    sb      x3, 25(x22)
    sb      x3, 30(x22)
    sb      x3, 35(x22)

    sw      x1, 4(x21)
    sw      x2, 8(x21)
    sw      x3, 12(x21)
    sw      x4, 4*4(x21)
    sw      x5, 5*4(x21)
    sw      x6, 6*4(x21)
    sw      x7, 7*4(x21)
    sw      x8, 8*4(x21)
    sw      x9, 9*4(x21)
    sw      x10, 10*4(x21)
    sw      x11, 11*4(x21)
    sw      x12, 12*4(x21)
    sw      x13, 13*4(x21)
    sw      x14, 14*4(x21)
    sw      x15, 15*4(x21)
    sw      x16, 16*4(x21)

    j    _end
	.size	main, .-main
    
	
    .section data
    .= 0x10000
registers:
    .zero 128
	.ident	"GCC: (Arch User Repository) 9.2.0"