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
	movsd	QWORD PTR -40[rbp], xmm0  # -40[rbp] = x
	pxor	xmm0, xmm0  # if x >= 0
	comisd	xmm0, QWORD PTR -40[rbp]  # if x >= 0
	jbe	.L11  # continue
	movsd	xmm0, QWORD PTR -40[rbp]  # x
	movq	xmm1, QWORD PTR .LC1[rip]  # -1.0
	xorpd	xmm0, xmm1
	movq	rax, xmm0
	movq	xmm0, rax
	call	Cth
	movq	rax, xmm0  # Cth(-x)
	movq	xmm0, QWORD PTR .LC1[rip]  # -1
	movq	xmm2, rax
	xorpd	xmm2, xmm0  # Cth(-x) *= -1
	movapd	xmm0, xmm2
	jmp	.L4
.L11:
	movsd	xmm0, QWORD PTR .LC2[rip]  # 1
	movsd	QWORD PTR -32[rbp], xmm0  # ans = 1
	movsd	xmm0, QWORD PTR .LC2[rip]  # 1
	movsd	QWORD PTR -8[rbp], xmm0  # prev = 1
	movsd	xmm0, QWORD PTR .LC2[rip]  # 1
	movsd	QWORD PTR -24[rbp], xmm0  # cur = 1
 	movsd	xmm0, QWORD PTR .LC2[rip]  # 1
	movsd	QWORD PTR -16[rbp], xmm0  # i = 1
.L8:
	movsd	xmm0, QWORD PTR -24[rbp]  # cur
	movsd	QWORD PTR -8[rbp], xmm0  # prev = cur
	movsd	xmm1, QWORD PTR -16[rbp]  # i
	movsd	xmm0, QWORD PTR .LC3[rip]  # -2
	mulsd	xmm0, xmm1  # i *= -2
	mulsd	xmm0, QWORD PTR -40[rbp]  # i *= x
	movq	rax, xmm0
	movq	xmm0, rax
	call	exp@PLT
	addsd	xmm0, xmm0  # exp() + exp()
	movsd	QWORD PTR -24[rbp], xmm0  # cur = 2 * exp()
	movsd	xmm0, QWORD PTR -24[rbp]  # cur
	subsd	xmm0, QWORD PTR -8[rbp]  # cur - prev
	movq	xmm1, QWORD PTR .LC4[rip]  # fabs mask
	andpd	xmm1, xmm0  # fabs()
	movsd	xmm0, QWORD PTR .LC5[rip]  # 0.001
	comisd	xmm0, xmm1  # if fabs() < 0.001
	ja	.L12  # break
	movsd	xmm0, QWORD PTR -32[rbp]  # ans
	addsd	xmm0, QWORD PTR -24[rbp]  # ans += cur
	movsd	QWORD PTR -32[rbp], xmm0  # ans
	movsd	xmm1, QWORD PTR -16[rbp]  # i
	movsd	xmm0, QWORD PTR .LC2[rip]  # 1
	addsd	xmm0, xmm1  # ++i
	movsd	QWORD PTR -16[rbp], xmm0  # i
	pxor	xmm0, xmm0
	ucomisd	xmm0, QWORD PTR -16[rbp]  # if ++i
	jp	.L8
	pxor	xmm0, xmm0
	ucomisd	xmm0, QWORD PTR -16[rbp]  # if ++i
	je	.L7
	jmp	.L8
.L12:
	nop
.L7:
	movsd	xmm0, QWORD PTR -32[rbp]  # ans
.L4:
	movq	rax, xmm0
	movq	xmm0, rax
	leave
	.cfi_def_cfa 7, 8
	ret  # return ans
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
