	.file	"tailPidFactorial.c"
	.text
	.p2align 4,,15
	.globl	tailPidFactorial
	.type	tailPidFactorial, @function
tailPidFactorial:
.LFB36:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	12(%esp), %esi
	movl	16(%esp), %ebx
	cmpl	$1, %esi
	je	.L3
	.p2align 4,,7
	.p2align 3
.L5:
	call	getpid
	imull	%eax, %ebx
	imull	%esi, %ebx
	subl	$1, %esi
	cmpl	$1, %esi
	jne	.L5
.L3:
	call	getpid
	imull	%ebx, %eax
	popl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	popl	%esi
	.cfi_def_cfa_offset 4
	.cfi_restore 6
	ret
	.cfi_endproc
.LFE36:
	.size	tailPidFactorial, .-tailPidFactorial
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%d\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB37:
	.cfi_startproc
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	movl	$1, 4(%esp)
	movl	$5, (%esp)
	call	tailPidFactorial
	movl	$.LC0, 4(%esp)
	movl	$1, (%esp)
	movl	%eax, 8(%esp)
	call	__printf_chk
	addl	$12, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE37:
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
