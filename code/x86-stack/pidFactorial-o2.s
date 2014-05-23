	.file	"pidFactorial.c"
	.text
	.p2align 4,,15
	.globl	pidFactorial
	.type	pidFactorial, @function
pidFactorial:
.LFB36:
	.cfi_startproc
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	movl	%ebx, 4(%esp)
	movl	16(%esp), %ebx
	.cfi_offset 3, -12
	movl	%esi, 8(%esp)
	cmpl	$1, %ebx
	je	.L4
	.cfi_offset 6, -8
	leal	-1(%ebx), %eax
	movl	%eax, (%esp)
	call	pidFactorial
	movl	%eax, %esi
	call	getpid
	imull	%ebx, %esi
	movl	4(%esp), %ebx
	imull	%esi, %eax
	movl	8(%esp), %esi
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	.cfi_restore 6
	.cfi_restore 3
	ret
	.p2align 4,,7
	.p2align 3
.L4:
	.cfi_restore_state
	movl	4(%esp), %ebx
	movl	8(%esp), %esi
	addl	$12, %esp
	.cfi_def_cfa_offset 4
	.cfi_restore 6
	.cfi_restore 3
	jmp	getpid
	.cfi_endproc
.LFE36:
	.size	pidFactorial, .-pidFactorial
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
	movl	$5, (%esp)
	call	pidFactorial
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
