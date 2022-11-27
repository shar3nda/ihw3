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
	movq	xmm7, xmm0  # xmm7 = ans
	movsd	xmm0, QWORD PTR .LC2[rip]
	movq	xmm6, xmm0  # xmm6 = prev
	movsd	xmm0, QWORD PTR .LC2[rip]
	movq	xmm5, xmm0  # xmm5 = cur
	movsd	xmm0, QWORD PTR .LC2[rip]
	movq	xmm4, xmm0  # xmm4 = i
.L8:
	movq	xmm0, xmm5
	movq	xmm6, xmm0
	movq	xmm1, xmm4
	movsd	xmm0, QWORD PTR .LC3[rip]
	mulsd	xmm0, xmm1
	mulsd	xmm0, QWORD PTR -40[rbp]
	call	exp@PLT
	addsd	xmm0, xmm0
	movq	xmm5, xmm0
	movq	xmm0, xmm5
	subsd	xmm0, xmm6
	movq	xmm1, QWORD PTR .LC4[rip]
	andpd	xmm1, xmm0
	movsd	xmm0, QWORD PTR .LC5[rip]
	comisd	xmm0, xmm1
	ja	.L12
	movq	xmm0, xmm7
	addsd	xmm0, xmm5
	movq	xmm7, xmm0
	movq	xmm1, xmm4
	movsd	xmm0, QWORD PTR .LC2[rip]
	addsd	xmm0, xmm1
	movq	xmm4, xmm0
	pxor	xmm0, xmm0
	ucomisd	xmm0, xmm4
	jp	.L8
	pxor	xmm0, xmm0
	ucomisd	xmm0, xmm4
	je	.L7
	jmp	.L8
.L12:
	nop
.L7:
	movq	xmm0, xmm7
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
