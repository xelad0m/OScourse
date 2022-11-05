	.text
	.code64
	.global __switch_threads
	.global __thread_entry
	.global __thread_exit
	.extern thread_entry


__thread_exit:
	movq %rax, %rdi
	callq thread_exit


__thread_entry:
	movq %r15, %rdi
	movq %r14, %rsi
	movq %r13, %rdx

	cld
	call thread_entry
	jmp jump_back


__switch_threads:
	pushq %rbx
	pushq %rbp
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	pushfq

	movq %rsp, (%rdi)
	movq %rsi, %rsp

	popfq
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbp
	popq %rbx

	retq

jump_back:
	movq 0(%rsp), %rbp
	movq 8(%rsp), %rbx
	movq 16(%rsp), %r15
	movq 24(%rsp), %r14
	movq 32(%rsp), %r13
	movq 40(%rsp), %r12
	movq 48(%rsp), %r11
	movq 56(%rsp), %r10
	movq 64(%rsp), %r9
	movq 72(%rsp), %r8
	movq 80(%rsp), %rax
	movq 88(%rsp), %rcx
	movq 96(%rsp), %rdx
	movq 104(%rsp), %rsi
	movq 112(%rsp), %rdi
	addq $136, %rsp
	iretq
