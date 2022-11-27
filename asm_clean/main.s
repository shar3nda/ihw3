	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"Enter your number: "
.LC1:
	.string	"%lf"
.LC2:
	.string	"Cth(%lf) = %lf\n"
	.text
	.global	main
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	lea	rdi, .LC0[rip]
	mov	eax, 0
	call	printf@PLT
	lea	rsi, -8[rbp]
	lea	rdi, .LC1[rip]
	mov	eax, 0
	call	__isoc99_scanf@PLT
	movq	xmm0, QWORD PTR -8[rbp]
	call	Cth@PLT
	movq	xmm1, xmm0
	movq	xmm0, QWORD PTR -8[rbp]
	lea	rdi, .LC2[rip]
	mov	eax, 2
	call	printf@PLT
	mov	eax, 0
	leave
	ret
	.size	main, .-main
