	.intel_syntax noprefix
	.text
	.global	Cth
Cth:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	movsd	QWORD PTR -40[rbp], xmm0
	pxor	xmm0, xmm0
	comisd	xmm0, QWORD PTR -40[rbp]
	jbe	.L11
	movsd	xmm0, QWORD PTR -40[rbp]
	movq	xmm1, QWORD PTR .LC1[rip]
	xorpd	xmm0, xmm1
	call	Cth
	movq	xmm2, xmm0
	movq	xmm0, QWORD PTR .LC1[rip]
	xorpd	xmm2, xmm0
	movapd	xmm0, xmm2
	jmp	.L4
.L11:
	movsd	xmm0, QWORD PTR .LC2[rip]
	movsd	QWORD PTR -8[rbp], xmm0
	movsd	xmm0, QWORD PTR .LC2[rip]
	movsd	QWORD PTR -32[rbp], xmm0
	movsd	xmm0, QWORD PTR .LC2[rip]
	movsd	QWORD PTR -16[rbp], xmm0
	movsd	xmm0, QWORD PTR .LC2[rip]
	movsd	QWORD PTR -24[rbp], xmm0
.L8:
	movsd	xmm0, QWORD PTR -16[rbp]
	movsd	QWORD PTR -32[rbp], xmm0
	movsd	xmm1, QWORD PTR -24[rbp]
	movsd	xmm0, QWORD PTR .LC3[rip]
	mulsd	xmm0, xmm1
	mulsd	xmm0, QWORD PTR -40[rbp]
	call	exp@PLT
	addsd	xmm0, xmm0
	movsd	QWORD PTR -16[rbp], xmm0
	movsd	xmm0, QWORD PTR -16[rbp]
	subsd	xmm0, QWORD PTR -32[rbp]
	movq	xmm1, QWORD PTR .LC4[rip]
	andpd	xmm1, xmm0
	movsd	xmm0, QWORD PTR .LC5[rip]
	comisd	xmm0, xmm1
	ja	.L12
	movsd	xmm0, QWORD PTR -8[rbp]
	addsd	xmm0, QWORD PTR -16[rbp]
	movsd	QWORD PTR -8[rbp], xmm0
	movsd	xmm1, QWORD PTR -24[rbp]
	movsd	xmm0, QWORD PTR .LC2[rip]
	addsd	xmm0, xmm1
	movsd	QWORD PTR -24[rbp], xmm0
	pxor	xmm0, xmm0
	ucomisd	xmm0, QWORD PTR -24[rbp]
	jp	.L8
	pxor	xmm0, xmm0
	ucomisd	xmm0, QWORD PTR -24[rbp]
	je	.L7
	jmp	.L8
.L12:
	nop
.L7:
	movsd	xmm0, QWORD PTR -8[rbp]
.L4:
	leave
	ret
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
