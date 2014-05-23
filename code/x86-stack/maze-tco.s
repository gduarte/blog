	.file	"maze.c"
	.text
	.globl	explore
	.type	explore, @function
explore:
.LFB22:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movl	12(%esp), %ebx
	movl	$0, %eax
	testl	%ebx, %ebx
	je	.L2
	movb	$1, %al
	cmpl	$0, (%ebx)
	jne	.L2
	movl	8(%ebx), %eax
	movl	%eax, (%esp)
	call	explore
	movl	%eax, %edx
	movl	$1, %eax
	testl	%edx, %edx
	jne	.L2
	movl	12(%ebx), %eax
	movl	%eax, (%esp)
	call	explore
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
.L2:
	addl	$4, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	.cfi_restore 3
	ret
	.cfi_endproc
.LFE22:
	.size	explore, .-explore
	.globl	main
	.type	main, @function
main:
.LFB23:
	.cfi_startproc
	movl	$maze, 4(%esp)
	jmp	explore
	.cfi_endproc
.LFE23:
	.size	main, .-main
	.globl	maze
	.data
	.align 4
	.type	maze, @object
	.size	maze, 16
maze:
	.zero	4
	.long	1
	.long	__compound_literal.5
	.long	__compound_literal.11
	.align 4
	.type	__compound_literal.5, @object
	.size	__compound_literal.5, 16
__compound_literal.5:
	.zero	8
	.long	__compound_literal.2
	.long	__compound_literal.4
	.align 4
	.type	__compound_literal.11, @object
	.size	__compound_literal.11, 16
__compound_literal.11:
	.zero	4
	.long	8
	.long	__compound_literal.6
	.long	__compound_literal.10
	.align 4
	.type	__compound_literal.2, @object
	.size	__compound_literal.2, 16
__compound_literal.2:
	.zero	8
	.long	__compound_literal.0
	.long	__compound_literal.1
	.align 4
	.type	__compound_literal.4, @object
	.size	__compound_literal.4, 16
__compound_literal.4:
	.zero	12
	.long	__compound_literal.3
	.local	__compound_literal.6
	.comm	__compound_literal.6,16,4
	.align 4
	.type	__compound_literal.10, @object
	.size	__compound_literal.10, 16
__compound_literal.10:
	.zero	4
	.long	10
	.long	__compound_literal.8
	.long	__compound_literal.9
	.local	__compound_literal.0
	.comm	__compound_literal.0,16,4
	.local	__compound_literal.1
	.comm	__compound_literal.1,16,4
	.local	__compound_literal.3
	.comm	__compound_literal.3,16,4
	.align 4
	.type	__compound_literal.8, @object
	.size	__compound_literal.8, 16
__compound_literal.8:
	.zero	4
	.long	11
	.long	__compound_literal.7
	.zero	4
	.local	__compound_literal.9
	.comm	__compound_literal.9,16,4
	.align 4
	.type	__compound_literal.7, @object
	.size	__compound_literal.7, 16
__compound_literal.7:
	.long	1
	.long	12
	.zero	8
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
