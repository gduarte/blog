	.file	"tailPidFactorial.c"
	.text
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
	movl	12(%esp), %ebx
	movl	16(%esp), %esi
	cmpl	$1, %ebx
	jne	.L4
.L3:
	call	getpid
	imull	%esi, %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	popl	%esi
	.cfi_def_cfa_offset 4
	.cfi_restore 6
	ret
.L4:
	.cfi_restore_state
	call	getpid
	imull	%eax, %esi
	imull	%ebx, %esi
	subl	$1, %ebx
	cmpl	$1, %ebx
	jne	.L4
	jmp	.L3
	.cfi_endproc
.LFE36:
	.size	tailPidFactorial, .-tailPidFactorial
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%d\n"
	.text
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
	movl	%eax, 8(%esp)
	movl	$.LC0, 4(%esp)
	movl	$1, (%esp)
	call	__printf_chk
	addl	$12, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE37:
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
