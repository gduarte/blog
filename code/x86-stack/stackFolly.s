	.file	"stackFolly.c"
	.text
	.globl	read
	.type	read, @function
read:
.LFB0:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$48, %esp
	movl	%gs:20, %eax
	movl	%eax, -4(%ebp)
	xorl	%eax, %eax
	movl	stdin, %eax
	movl	%eax, 8(%esp)
	movl	$32, 4(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	fgets
	leal	-36(%ebp), %eax
	movl	-4(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L2
	call	__stack_chk_fail
.L2:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	read, .-read
	.section	.rodata
.LC0:
	.string	"Song:"
.LC1:
	.string	"Band:"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$12, %esp
	movl	$.LC0, (%esp)
	call	puts
	call	read
	movl	%eax, -8(%ebp)
	movl	$.LC1, (%esp)
	call	puts
	call	read
	movl	%eax, -4(%ebp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	puts
	movl	-4(%ebp), %eax
	movl	%eax, (%esp)
	call	puts
	movl	$0, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
