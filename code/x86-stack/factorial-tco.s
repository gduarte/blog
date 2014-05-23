	.file	"factorial.c"
	.text
	.globl	factorial
	.type	factorial, @function
factorial:
.LFB22:
	.cfi_startproc
	movl	4(%esp), %edx
	movl	$1, %eax
	cmpl	$1, %edx
	jbe	.L2
.L3:
	leal	-1(%edx), %ecx
	imull	%edx, %eax
	movl	%ecx, %edx
	cmpl	$1, %ecx
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
	.text
	.globl	main
	.type	main, @function
main:
.LFB23:
	.cfi_startproc
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	movl	$5, (%esp)
	call	factorial
	movl	%eax, 8(%esp)
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
