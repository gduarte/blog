	.file	"simpleTailCalls.c"
	.text
	.globl	add5
	.type	add5, @function
add5:
.LFB0:
	.cfi_startproc
	movl	4(%esp), %eax
	addl	$5, %eax
	ret
	.cfi_endproc
.LFE0:
	.size	add5, .-add5
	.globl	add10
	.type	add10, @function
add10:
.LFB1:
	.cfi_startproc
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	movl	8(%esp), %eax
	movl	%eax, (%esp)
	call	add5
	movl	%eax, 8(%esp)
	addl	$4, %esp
	.cfi_def_cfa_offset 4
	jmp	add5
	.cfi_endproc
.LFE1:
	.size	add10, .-add10
	.globl	add5AndTriple
	.type	add5AndTriple, @function
add5AndTriple:
.LFB2:
	.cfi_startproc
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	movl	8(%esp), %eax
	movl	%eax, (%esp)
	call	add5
	leal	(%eax,%eax,2), %eax
	addl	$4, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE2:
	.size	add5AndTriple, .-add5AndTriple
	.globl	finicky
	.type	finicky, @function
finicky:
.LFB3:
	.cfi_startproc
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	movl	8(%esp), %edx
	cmpl	$10, %edx
	jg	.L5
	cmpl	$5, %edx
	jg	.L11
	jmp	.L7
.L14:
	movl	%eax, %edx
.L5:
	movl	%edx, 8(%esp)
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	jmp	add5AndTriple
.L13:
	.cfi_restore_state
	movl	%eax, %edx
	cmpl	$5, %eax
	jle	.L7
.L11:
	movl	%edx, (%esp)
	call	add5
	cmpl	$10, %eax
	jle	.L13
	.p2align 4,,2
	jmp	.L14
.L7:
	movl	%edx, 8(%esp)
	addl	$4, %esp
	.cfi_def_cfa_offset 4
	jmp	add10
	.cfi_endproc
.LFE3:
	.size	finicky, .-finicky
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
