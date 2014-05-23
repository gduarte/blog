	.file	"simpleTailCalls.c"
	.text
	.globl	add5
	.type	add5, @function
add5:
.LFB0:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	addl	$5, %eax
	popl	%ebp
	.cfi_def_cfa 4, 4
	.cfi_restore 5
	ret
	.cfi_endproc
.LFE0:
	.size	add5, .-add5
	.globl	add10
	.type	add10, @function
add10:
.LFB1:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add5
	movl	%eax, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	%eax, (%esp)
	call	add5
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1:
	.size	add10, .-add10
	.globl	add5AndTriple
	.type	add5AndTriple, @function
add5AndTriple:
.LFB2:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add5
	movl	%eax, -4(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add5
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2:
	.size	add5AndTriple, .-add5AndTriple
	.globl	finicky
	.type	finicky, @function
finicky:
.LFB3:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	cmpl	$10, 8(%ebp)
	jle	.L5
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add5AndTriple
	jmp	.L6
.L5:
	cmpl	$5, 8(%ebp)
	jle	.L7
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add5
	movl	%eax, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	%eax, (%esp)
	call	finicky
	jmp	.L6
.L7:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add10
.L6:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE3:
	.size	finicky, .-finicky
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
