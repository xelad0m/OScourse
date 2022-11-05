	.file	"spinlocks.c"
	.text
	.local	CRITICAL_DATA
	.comm	CRITICAL_DATA,4,4
	.globl	p2_fence_lock_init
	.type	p2_fence_lock_init, @function
p2_fence_lock_init:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	movb	%al, 1(%rdx)
	movq	-8(%rbp), %rdx
	movb	%al, (%rdx)
	movq	-8(%rbp), %rax
	movl	$0, 4(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	p2_fence_lock_init, .-p2_fence_lock_init
	.globl	p2_fence_lock
	.type	p2_fence_lock, @function
p2_fence_lock:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdx
	movl	-12(%rbp), %eax
	cltq
	movb	$1, (%rdx,%rax)
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 4(%rax)
#APP
# 31 "/home/user1/projects/stepik.org/OS/4.Synchronization/spinlock/spinlocks.c" 1
	mfence
# 0 "" 2
#NO_APP
	jmp	.L3
.L5:
	nop
.L3:
	movl	$1, %eax
	subl	-12(%rbp), %eax
	movq	-8(%rbp), %rdx
	cltq
	movzbl	(%rdx,%rax), %eax
	testb	%al, %al
	je	.L6
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	%eax, -12(%rbp)
	je	.L5
.L6:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	p2_fence_lock, .-p2_fence_lock
	.globl	p2_fence_unlock
	.type	p2_fence_unlock, @function
p2_fence_unlock:
.LFB2:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdx
	movl	-12(%rbp), %eax
	cltq
	movb	$0, (%rdx,%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	p2_fence_unlock, .-p2_fence_unlock
	.globl	p2_atomic_lock_init
	.type	p2_atomic_lock_init, @function
p2_atomic_lock_init:
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rax
	movq	%rax, -32(%rbp)
	movb	$0, -36(%rbp)
	movzbl	-36(%rbp), %eax
	movzbl	%al, %edx
	movq	-32(%rbp), %rax
	movb	%dl, (%rax)
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	movb	$0, -36(%rbp)
	movzbl	-36(%rbp), %eax
	movzbl	%al, %edx
	movq	-24(%rbp), %rax
	movb	%dl, (%rax)
	movq	-56(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -16(%rbp)
	movl	$0, -36(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L9
	call	__stack_chk_fail@PLT
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	p2_atomic_lock_init, .-p2_atomic_lock_init
	.globl	p2_atomic_lock
	.type	p2_atomic_lock, @function
p2_atomic_lock:
.LFB4:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	movb	$1, -44(%rbp)
	movzbl	-44(%rbp), %eax
	movzbl	%al, %edx
	movq	-40(%rbp), %rax
	movb	%dl, (%rax)
	mfence
	movq	-56(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -32(%rbp)
	movl	-60(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
	mfence
	jmp	.L11
.L13:
	nop
.L11:
	movl	$1, %eax
	subl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -44(%rbp)
	movzbl	-44(%rbp), %eax
	testb	%al, %al
	je	.L15
	movq	-56(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	cmpl	-60(%rbp), %eax
	je	.L13
.L15:
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L14
	call	__stack_chk_fail@PLT
.L14:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	p2_atomic_lock, .-p2_atomic_lock
	.globl	p2_atomic_unlock
	.type	p2_atomic_unlock, @function
p2_atomic_unlock:
.LFB5:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movb	$0, -17(%rbp)
	movzbl	-17(%rbp), %eax
	movzbl	%al, %edx
	movq	-16(%rbp), %rax
	movb	%dl, (%rax)
	mfence
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L17
	call	__stack_chk_fail@PLT
.L17:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	p2_atomic_unlock, .-p2_atomic_unlock
	.globl	N_atomic_lock_init
	.type	N_atomic_lock_init, @function
N_atomic_lock_init:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -36(%rbp)
	jmp	.L19
.L20:
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movl	$0, -40(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	movl	-36(%rbp), %eax
	cltq
	addq	$4, %rax
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movl	$0, -40(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	addl	$1, -36(%rbp)
.L19:
	cmpl	$3, -36(%rbp)
	jne	.L20
	movq	-56(%rbp), %rax
	addq	$12, %rax
	movq	%rax, -32(%rbp)
	movl	$0, -40(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L21
	call	__stack_chk_fail@PLT
.L21:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	N_atomic_lock_init, .-N_atomic_lock_init
	.section	.rodata
.LC0:
	.string	"lock->level: "
.LC1:
	.string	"%d"
.LC2:
	.string	", lock->last: "
	.text
	.globl	__prnt_lock
	.type	__prnt_lock, @function
__prnt_lock:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$13, %edx
	movl	$1, %esi
	leaq	.LC0(%rip), %rdi
	call	fwrite@PLT
	movl	$0, -32(%rbp)
	jmp	.L23
.L24:
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %edx
	movq	stderr(%rip), %rax
	leaq	.LC1(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	addl	$1, -32(%rbp)
.L23:
	cmpl	$4, -32(%rbp)
	jne	.L24
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$14, %edx
	movl	$1, %esi
	leaq	.LC2(%rip), %rdi
	call	fwrite@PLT
	movl	$0, -28(%rbp)
	jmp	.L25
.L26:
	movl	-28(%rbp), %eax
	cltq
	addq	$4, %rax
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %edx
	movq	stderr(%rip), %rax
	leaq	.LC1(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	addl	$1, -28(%rbp)
.L25:
	cmpl	$3, -28(%rbp)
	jne	.L26
	movq	stderr(%rip), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	fputc@PLT
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L27
	call	__stack_chk_fail@PLT
.L27:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	__prnt_lock, .-__prnt_lock
	.globl	level_winner
	.type	level_winner, @function
level_winner:
.LFB8:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	%edx, -48(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -12(%rbp)
	jmp	.L29
.L32:
	movl	-12(%rbp), %eax
	cmpl	-44(%rbp), %eax
	je	.L30
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %edx
	movl	-44(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	cmpl	%eax, %edx
	jne	.L30
	movl	$0, %eax
	jmp	.L31
.L30:
	addl	$1, -12(%rbp)
.L29:
	cmpl	$4, -12(%rbp)
	jne	.L32
	movl	$1, %eax
.L31:
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L33
	call	__stack_chk_fail@PLT
.L33:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	level_winner, .-level_winner
	.globl	N_atomic_lock
	.type	N_atomic_lock, @function
N_atomic_lock:
.LFB9:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -36(%rbp)
	jmp	.L35
.L38:
	movl	-60(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
	mfence
	movl	-36(%rbp), %eax
	cltq
	addq	$4, %rax
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movl	-60(%rbp), %eax
	movl	%eax, -40(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	mfence
	nop
.L37:
	movl	-36(%rbp), %edx
	movl	-60(%rbp), %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	level_winner
	testl	%eax, %eax
	jne	.L36
	movl	-36(%rbp), %eax
	cltq
	addq	$4, %rax
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -40(%rbp)
	movl	-40(%rbp), %eax
	cmpl	-60(%rbp), %eax
	je	.L37
.L36:
	addl	$1, -36(%rbp)
.L35:
	cmpl	$3, -36(%rbp)
	jne	.L38
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L39
	call	__stack_chk_fail@PLT
.L39:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	N_atomic_lock, .-N_atomic_lock
	.globl	N_atomic_unlock
	.type	N_atomic_unlock, @function
N_atomic_unlock:
.LFB10:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	-44(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movl	$0, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	mfence
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L41
	call	__stack_chk_fail@PLT
.L41:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	N_atomic_unlock, .-N_atomic_unlock
	.local	lock
	.comm	lock,28,16
	.globl	routine0
	.type	routine0, @function
routine0:
.LFB11:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -12(%rbp)
	movl	$0, -16(%rbp)
	jmp	.L43
.L44:
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	leaq	lock(%rip), %rdi
	call	N_atomic_lock
	movl	CRITICAL_DATA(%rip), %eax
	addl	$1, %eax
	movl	%eax, CRITICAL_DATA(%rip)
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	leaq	lock(%rip), %rdi
	call	N_atomic_unlock
	addl	$1, -16(%rbp)
.L43:
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	%eax, -16(%rbp)
	jl	.L44
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	routine0, .-routine0
	.section	.rodata
.LC3:
	.string	"%d thread %d ++ops -> "
.LC4:
	.string	"%d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB12:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movl	%edi, -100(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	lock(%rip), %rdi
	call	N_atomic_lock_init
	movl	$250000, -84(%rbp)
	movl	-84(%rbp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	$4, %esi
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, -92(%rbp)
	jmp	.L47
.L48:
	movl	-92(%rbp), %eax
	cltq
	movl	-84(%rbp), %edx
	movl	%edx, -76(%rbp,%rax,8)
	movl	-92(%rbp), %eax
	cltq
	movl	-92(%rbp), %edx
	movl	%edx, -80(%rbp,%rax,8)
	leaq	-80(%rbp), %rax
	movl	-92(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	leaq	-48(%rbp), %rax
	movl	-92(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	%rdx, %rcx
	leaq	routine0(%rip), %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	pthread_create@PLT
	addl	$1, -92(%rbp)
.L47:
	cmpl	$3, -92(%rbp)
	jle	.L48
	movl	$0, -88(%rbp)
	jmp	.L49
.L50:
	movl	-88(%rbp), %eax
	cltq
	movq	-48(%rbp,%rax,8), %rax
	leaq	-96(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	pthread_join@PLT
	addl	$1, -88(%rbp)
.L49:
	cmpl	$4, -88(%rbp)
	jne	.L50
	movl	CRITICAL_DATA(%rip), %eax
	movl	%eax, %esi
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L52
	call	__stack_chk_fail@PLT
.L52:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
