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

    li    x3, 0
    li    x4, 0
    jal     counter
    jal     testbeq
    jal     testbne
    jal     testblt
    jal     testbge
    jal     testbltu
    jal     testbgeu

    li      x21, 0x10000
    sw      x1, 1*4(x21)
    sw      x2, 2*4(x21)
    sw      x3, 3*4(x21)
    sw      x4, 4*4(x21)
    li      x5, 0xc
    addi    x5,x5,256
    jalr    x0, -256(x5)
    
    j       _end
	.size	main, .-main



testbeq:
    li    x31, 5
    li    x29, 4
    li    x30,5
    beq     x31,x30,.beqTdown
.beqerror:
    ret
.beqTup:
    ori     x4,x4,4
    ret
.beqTdown:
    ori     x4,x4,1
    beq     x31,x29,.beqerror
.beqFalse:
    ori     x4,x4,2
    li    x30,4
    beq     x30,x29,.beqTup
    ret


testbne:
    li    x31,5
    li    x29,4
    li    x30,4
    bne     x31,x30,.bneTdown
.bneerror:
    ret
.bneTup:
    li      x5,0x40
    or      x4,x4,x5
    ret
.bneTdown:
    li      x5,0x10
    or      x4,x4,x5
    bne     x30,x29,.bneerror
.bneFalse:
    li      x5,0x20
    or      x4,x4,x5
    bne     x31,x29,.bneTup
    ret

testblt:
    li    x31,-3
    li    x29,4
    li    x30,4
    blt     x31,x30,.bltTdown
.blterror:
    ret
.bltTup:
    li      x5,0x400
    or      x4,x4,x5
    ret
.bltTdown:
    li      x5,0x100
    or      x4,x4,x5
    blt     x30,x29,.blterror
.bltFalse:
    li      x5,0x200
    or      x4,x4,x5
    blt     x31,x29,.bltTup
    ret

testbge:
    li    x31,-3
    li    x29,4
    li    x30,4
    bge     x30,x31,.bgeTdown
.bgeerror:
    ret
.bgeTup:
    li      x5,0x4000
    or      x4,x4,x5
    ret
.bgeTdown:
    li      x5,0x1000
    or      x4,x4,x5
    bge     x31,x29,.bgeerror
.bgeFalse:
    li      x5,0x2000
    or      x4,x4,x5
    bge     x29,x30,.bgeTup
    ret


testbltu:
    li    x31,-3
    li    x29,4
    li    x30,4
    bltu    x30,x31,.bltuTdown
.bltuerror:
    ret
.bltuTup:
    li      x5,0x40000
    or      x4,x4,x5
    ret
.bltuTdown:
    li      x5,0x10000
    or      x4,x4,x5
    bltu    x30,x29,.bltuerror
.bltuFalse:
    li      x5,0x20000
    or      x4,x4,x5
    bltu    x29,x31,.bltuTup
    ret

testbgeu:
    li    x31,-3
    li    x29,4
    li    x30,4
    bgeu    x31,x30,.bgeuTdown
.bgeuerror:
    ret
.bgeuTup:
    li      x5,0x400000
    or      x4,x4,x5
    ret
.bgeuTdown:
    li      x5,0x100000
    or      x4,x4,x5
    bgeu    x29,x31,.bgeuerror
.bgeuFalse:
    li      x5,0x200000
    or      x4,x4,x5
    bgeu    x29,x30,.bgeuTup
    ret
	
    .section .text
	.align	4
	.globl	counter
	.type	counter, @function
counter:
    li    x31,5
cntloop:
    addi    x3,x3, 1
    addi    x31,x31,-1
    bne     x0,x31, cntloop
    ret
    .size	counter, .-counter

    .section data
    .= 0x10000
registers:
    .zero 128
	.ident	"GCC: (Arch User Repository) 9.2.0"
