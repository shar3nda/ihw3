	.file	"main.c"
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
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	rax, .LC0[rip]  # "Enter your number: "
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, -16[rbp]  # &num
	mov	rsi, rax
	lea	rax, .LC1[rip]  # "%lf"
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	rax, QWORD PTR -16[rbp]  # num
	movq	xmm0, rax
	call	Cth@PLT
	movq	rdx, xmm0  # Cth()
	mov	rax, QWORD PTR -16[rbp]  # num
	movq	xmm1, rdx  # Cth()
	movq	xmm0, rax  # num
	lea	rax, .LC2[rip]  # "Cth(%lf) = %lf\n"
	mov	rdi, rax
	mov	eax, 2
	call	printf@PLT
	mov	eax, 0  # 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L3
	call	__stack_chk_fail@PLT
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret  # return 0
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (GNU) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
