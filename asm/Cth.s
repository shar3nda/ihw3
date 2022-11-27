	.file	"Cth.c"
	.intel_syntax noprefix
	.text
	.globl	Cth
	.type	Cth, @function
Cth:
.LFB0:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	movsd	QWORD PTR -40[rbp], xmm0
	pxor	xmm0, xmm0
	comisd	xmm0, QWORD PTR -40[rbp]
	jbe	.L11
	movsd	xmm0, QWORD PTR -40[rbp]
	movq	xmm1, QWORD PTR .LC1[rip]
	xorpd	xmm0, xmm1
	movq	rax, xmm0
	movq	xmm0, rax
	call	Cth
	movq	rax, xmm0
	movq	xmm0, QWORD PTR .LC1[rip]
	movq	xmm2, rax
	xorpd	xmm2, xmm0
	movapd	xmm0, xmm2
	jmp	.L4
.L11:
	movsd	xmm0, QWORD PTR .LC2[rip]
	movsd	QWORD PTR -32[rbp], xmm0
	movsd	xmm0, QWORD PTR .LC2[rip]
	movsd	QWORD PTR -8[rbp], xmm0
	movsd	xmm0, QWORD PTR .LC2[rip]
	movsd	QWORD PTR -24[rbp], xmm0
	movsd	xmm0, QWORD PTR .LC2[rip]
	movsd	QWORD PTR -16[rbp], xmm0
.L8:
	movsd	xmm0, QWORD PTR -24[rbp]
	movsd	QWORD PTR -8[rbp], xmm0
	movsd	xmm1, QWORD PTR -16[rbp]
	movsd	xmm0, QWORD PTR .LC3[rip]
	mulsd	xmm0, xmm1
	mulsd	xmm0, QWORD PTR -40[rbp]
	movq	rax, xmm0
	movq	xmm0, rax
	call	exp@PLT
	addsd	xmm0, xmm0
	movsd	QWORD PTR -24[rbp], xmm0
	movsd	xmm0, QWORD PTR -24[rbp]
	subsd	xmm0, QWORD PTR -8[rbp]
	movq	xmm1, QWORD PTR .LC4[rip]
	andpd	xmm1, xmm0
	movsd	xmm0, QWORD PTR .LC5[rip]
	comisd	xmm0, xmm1
	ja	.L12
	movsd	xmm0, QWORD PTR -32[rbp]
	addsd	xmm0, QWORD PTR -24[rbp]
	movsd	QWORD PTR -32[rbp], xmm0
	movsd	xmm1, QWORD PTR -16[rbp]
	movsd	xmm0, QWORD PTR .LC2[rip]
	addsd	xmm0, xmm1
	movsd	QWORD PTR -16[rbp], xmm0
	pxor	xmm0, xmm0
	ucomisd	xmm0, QWORD PTR -16[rbp]
	jp	.L8
	pxor	xmm0, xmm0
	ucomisd	xmm0, QWORD PTR -16[rbp]
	je	.L7
	jmp	.L8
.L12:
	nop
.L7:
	movsd	xmm0, QWORD PTR -32[rbp]
.L4:
	movq	rax, xmm0
	movq	xmm0, rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	Cth, .-Cth
	.section	.rodata
	.align 16
.LC1:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.align 8
.LC2:
	.long	0
	.long	1072693248
	.align 8
.LC3:
	.long	0
	.long	-1073741824
	.align 16
.LC4:
	.long	-1
	.long	2147483647
	.long	0
	.long	0
	.align 8
.LC5:
	.long	-755914244
	.long	1062232653
	.ident	"GCC: (GNU) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
