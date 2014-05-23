	.file	"factorial.c"
	.text
	.p2align 4,,15
	.globl	factorial
	.type	factorial, @function
factorial:
.LFB22:
	.cfi_startproc
	movl	4(%esp), %edx
	movl	$1, %eax
	cmpl	$1, %edx
	jbe	.L2
	.p2align 4,,7
	.p2align 3
.L3:
	imull	%edx, %eax
	subl	$1, %edx
	cmpl	$1, %edx
	jne	.L3
.L2:
	rep
	ret
	.cfi_endproc
.LFE22:
	.size	factorial, .-factorial
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%d\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB23:
	.cfi_startproc
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	movl	$120, 8(%esp)
	movl	$.LC0, 4(%esp)
	movl	$1, (%esp)
	call	__printf_chk
	addl	$12, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE23:
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
