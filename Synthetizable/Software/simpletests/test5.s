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
    csrwi   mie, 0
    csrwi   mstatus, 0
    csrwi   mepc,0
    li      x3, 0x100
    csrw    mtvec,x3

    mv      x31,x0
    li      x30,0x10000
    auipc   x4, 0
    ebreak
    sret
    uret
    ecall
    lh      x0,7(x0)
    lw   x0,7(x0)
    sh   x0,7(x0)
    sw   x0,7(x0)
    j     .+2
    jalr   x0, 3
    beq  x0,x0, .+2
    bne  x0,x0, .+2
    j       _end
	.size	main, .-main
    

    .section .text
	.align	4
	.globl	_trap
	.type	_trap, @function

.=0x100
_trap:
    csrr    x1,mcause
    add     x2,x30,x31
    sw      x1, 0(x2)
    addi    x31,x31,4
    csrr    x1,mepc
    addi    x1,x1,4
    csrw    mepc,x1
    mret
    .size	_trap, .-_trap
	
    .section data
    .= 0x10000
registers:
    .zero 128
	.ident	"GCC: (Arch User Repository) 9.2.0"
