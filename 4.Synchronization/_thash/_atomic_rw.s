	.file	"_atomic_rw.c"
	.text
	.globl	__switch_threads
	.type	__switch_threads, @function
__switch_threads:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	__switch_threads, .-__switch_threads
	.section	.rodata
	.align 8
.LC0:
	.string	"-> new thread: RSP= %p, RIP=%p\n"
	.text
	.globl	__create_thread
	.type	__create_thread, @function
__create_thread:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$136, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-136(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -112(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.L3
	movq	-112(%rbp), %rax
	jmp	.L5
.L3:
	leaq	-96(%rbp), %rax
	movl	$64, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-144(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-120(%rbp), %rax
	leaq	-64(%rax), %rdx
	movq	-112(%rbp), %rax
	addq	%rax, %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rbx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rbx
	movq	%rcx, 16(%rax)
	movq	%rbx, 24(%rax)
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rbx
	movq	%rcx, 32(%rax)
	movq	%rbx, 40(%rax)
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rbx
	movq	%rcx, 48(%rax)
	movq	%rbx, 56(%rax)
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdx
	movq	-112(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-112(%rbp), %rax
.L5:
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L6
	call	__stack_chk_fail@PLT
.L6:
	addq	$136, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	__create_thread, .-__create_thread
	.globl	create_thread
	.type	create_thread, @function
create_thread:
.LFB8:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	$4096, -8(%rbp)
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	__create_thread
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	create_thread, .-create_thread
	.globl	destroy_thread
	.type	destroy_thread, @function
destroy_thread:
.LFB9:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	destroy_thread, .-destroy_thread
	.local	_thread0
	.comm	_thread0,8,8
	.local	thread
	.comm	thread,24,16
	.section	.rodata
	.align 8
.LC1:
	.string	"flags= %p; r15=%p; r14=%p; r13=%p; r12=%p; rbp=%p; rbx=%p; rip=%p\n"
	.text
	.globl	regs
	.type	regs, @function
regs:
.LFB10:
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
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %r8
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rsi
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %r9
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %r10
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	subq	$8, %rsp
	pushq	%r8
	pushq	%rdi
	pushq	%rsi
	movq	%r10, %r8
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	addq	$32, %rsp
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	regs, .-regs
	.section	.rodata
	.align 8
.LC2:
	.string	"In thread1, switching to thread2..."
.LC3:
	.string	"-> thread1: "
.LC4:
	.string	"-> thread2: "
	.align 8
.LC5:
	.string	"Back in thread1, switching to thread2..."
	.align 8
.LC6:
	.string	"Back in thread1, switching to thread0..."
	.text
	.type	thread_entry1, @function
thread_entry1:
.LFB11:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$8, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	leaq	.LC2(%rip), %rdi
	call	puts@PLT
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	8+thread(%rip), %rax
	movq	%rax, %rdi
	call	regs
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	16+thread(%rip), %rax
	movq	%rax, %rdi
	call	regs
	movq	8+thread(%rip), %rax
	movq	16+thread(%rip), %rsi
	movq	%rax, %rdi
#APP
# 141 "/home/user1/projects/stepik.org/OS/4.Synchronization/_atomic_rw.c" 1
	pushf ; pushq %rbp ; movq %rsi,%rbp
	movq %rsp, (%rdi)
	movq %rsi, %rsp
	callq __switch_threads
	movq %rbp,%rsi ; popq %rbp ; popf	
# 0 "" 2
#NO_APP
	leaq	.LC5(%rip), %rdi
	call	puts@PLT
	movq	8+thread(%rip), %rax
	movq	16+thread(%rip), %rsi
	movq	%rax, %rdi
#APP
# 143 "/home/user1/projects/stepik.org/OS/4.Synchronization/_atomic_rw.c" 1
	pushf ; pushq %rbp ; movq %rsi,%rbp
	movq %rsp, (%rdi)
	movq %rsi, %rsp
	callq __switch_threads
	movq %rbp,%rsi ; popq %rbp ; popf	
# 0 "" 2
#NO_APP
	leaq	.LC6(%rip), %rdi
	call	puts@PLT
	movq	8+thread(%rip), %rax
	movq	thread(%rip), %rsi
	movq	%rax, %rdi
#APP
# 145 "/home/user1/projects/stepik.org/OS/4.Synchronization/_atomic_rw.c" 1
	pushf ; pushq %rbp ; movq %rsi,%rbp
	movq %rsp, (%rdi)
	movq %rsi, %rsp
	callq __switch_threads
	movq %rbp,%rsi ; popq %rbp ; popf	
# 0 "" 2
#NO_APP
	nop
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	thread_entry1, .-thread_entry1
	.section	.rodata
	.align 8
.LC7:
	.string	"In thread2, switching to thread1..."
	.align 8
.LC8:
	.string	"Back in thread2, switching to thread1..."
	.text
	.type	thread_entry2, @function
thread_entry2:
.LFB12:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$8, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	leaq	.LC7(%rip), %rdi
	call	puts@PLT
	movq	16+thread(%rip), %rax
	movq	8+thread(%rip), %rsi
	movq	%rax, %rdi
#APP
# 151 "/home/user1/projects/stepik.org/OS/4.Synchronization/_atomic_rw.c" 1
	pushf ; pushq %rbp ; movq %rsi,%rbp
	movq %rsp, (%rdi)
	movq %rsi, %rsp
	callq __switch_threads
	movq %rbp,%rsi ; popq %rbp ; popf	
# 0 "" 2
#NO_APP
	leaq	.LC8(%rip), %rdi
	call	puts@PLT
	movq	16+thread(%rip), %rax
	movq	8+thread(%rip), %rsi
	movq	%rax, %rdi
#APP
# 153 "/home/user1/projects/stepik.org/OS/4.Synchronization/_atomic_rw.c" 1
	pushf ; pushq %rbp ; movq %rsi,%rbp
	movq %rsp, (%rdi)
	movq %rsi, %rsp
	callq __switch_threads
	movq %rbp,%rsi ; popq %rbp ; popf	
# 0 "" 2
#NO_APP
	nop
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	thread_entry2, .-thread_entry2
	.section	.rodata
	.align 8
.LC9:
	.string	"In thread0, switching to thread1..."
.LC10:
	.string	"Retunred to thread 0"
	.text
	.globl	main
	.type	main, @function
main:
.LFB13:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$8, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	leaq	_thread0(%rip), %rax
	movq	%rax, thread(%rip)
	leaq	thread_entry1(%rip), %rdi
	call	create_thread
	movq	%rax, 8+thread(%rip)
	leaq	thread_entry2(%rip), %rdi
	call	create_thread
	movq	%rax, 16+thread(%rip)
	leaq	.LC9(%rip), %rdi
	call	puts@PLT
	movq	thread(%rip), %rax
	movq	8+thread(%rip), %rsi
	movq	%rax, %rdi
#APP
# 164 "/home/user1/projects/stepik.org/OS/4.Synchronization/_atomic_rw.c" 1
	pushf ; pushq %rbp ; movq %rsi,%rbp
	movq %rsp, (%rdi)
	movq %rsi, %rsp
	callq __switch_threads
	movq %rbp,%rsi ; popq %rbp ; popf	
# 0 "" 2
#NO_APP
	leaq	.LC10(%rip), %rdi
	call	puts@PLT
	movq	16+thread(%rip), %rax
	movq	%rax, %rdi
	call	destroy_thread
	movq	8+thread(%rip), %rax
	movq	%rax, %rdi
	call	destroy_thread
	movl	$0, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
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
