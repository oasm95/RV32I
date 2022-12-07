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
    lui     x1, 255
    auipc   x2,3
    addi    x3,x0, 3
    slti    x4,x0,-3
    sltiu   x5,x0,2
    xori    x6,x3, 2
    ori     x7, x3, 512
    andi    x8, x3, 1
    slli    x9, x3, 4
    srli    x10, x3, 1
    srai    x11, x3, 1
    add     x12 ,x1, x3
    sub     x13 ,x1, x3
    sll     x14 ,x1, x3
    slt     x15 ,x1, x3
    sltu    x16 ,x1, x3
    xor     x17 ,x1, x3
    srl     x18 ,x1, x3
    sra     x19 ,x1, x3
    or      x20 ,x1, x3
    and     x20 ,x1, x3
    li      x21, 0x10000
    slti    x22,x0,3
    sltiu   x23,x0,0
    sw      x1, 1*4(x21)
    sw      x2, 2*4(x21)
    sw      x3, 3*4(x21)
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
    sw      x17, 17*4(x21)
    sw      x18, 18*4(x21)
    sw      x19, 19*4(x21)
    sw      x20, 20*4(x21)
    sw      x21, 21*4(x21)
    sw      x22, 22*4(x21)
    sw      x23, 23*4(x21)
    j    _end
	.size	main, .-main
    
	
    .section data
    .= 0x10000
registers:
    .zero 128
	.ident	"GCC: (Arch User Repository) 9.2.0"