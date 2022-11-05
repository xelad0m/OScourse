	.file	"memory.cpp"
	.text
	.section	.text._ZnwmPv,"axG",@progbits,_ZnwmPv,comdat
	.weak	_ZnwmPv
	.type	_ZnwmPv, @function
_ZnwmPv:
.LFB38:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	_ZnwmPv, .-_ZnwmPv
	.section	.text._ZdlPvS_,"axG",@progbits,_ZdlPvS_,comdat
	.weak	_ZdlPvS_
	.type	_ZdlPvS_, @function
_ZdlPvS_:
.LFB40:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	_ZdlPvS_, .-_ZdlPvS_
	.section	.rodata
	.type	_ZStL19piecewise_construct, @object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.zero	1
.LC0:
	.string	"stoi"
	.section	.text._ZNSt7__cxx114stoiERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi,"axG",@progbits,_ZNSt7__cxx114stoiERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi,comdat
	.weak	_ZNSt7__cxx114stoiERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi
	.type	_ZNSt7__cxx114stoiERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi, @function
_ZNSt7__cxx114stoiERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi:
.LFB908:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv@PLT
	movq	%rax, %rdx
	movl	-20(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, %r8d
	movq	%rax, %rcx
	leaq	.LC0(%rip), %rsi
	movq	strtol@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE908:
	.size	_ZNSt7__cxx114stoiERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi, .-_ZNSt7__cxx114stoiERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi
	.section	.rodata
.LC1:
	.string	"stoull"
	.section	.text._ZNSt7__cxx116stoullERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi,"axG",@progbits,_ZNSt7__cxx116stoullERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi,comdat
	.weak	_ZNSt7__cxx116stoullERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi
	.type	_ZNSt7__cxx116stoullERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi, @function
_ZNSt7__cxx116stoullERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi:
.LFB912:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv@PLT
	movq	%rax, %rdx
	movl	-20(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, %r8d
	movq	%rax, %rcx
	leaq	.LC1(%rip), %rsi
	movq	strtoull@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE912:
	.size	_ZNSt7__cxx116stoullERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi, .-_ZNSt7__cxx116stoullERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.text._ZNSt18_Rb_tree_node_base10_S_minimumEPS_,"axG",@progbits,_ZNSt18_Rb_tree_node_base10_S_minimumEPS_,comdat
	.weak	_ZNSt18_Rb_tree_node_base10_S_minimumEPS_
	.type	_ZNSt18_Rb_tree_node_base10_S_minimumEPS_, @function
_ZNSt18_Rb_tree_node_base10_S_minimumEPS_:
.LFB1946:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
.L10:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L9
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L10
.L9:
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1946:
	.size	_ZNSt18_Rb_tree_node_base10_S_minimumEPS_, .-_ZNSt18_Rb_tree_node_base10_S_minimumEPS_
	.section	.text._ZNSt18_Rb_tree_node_base10_S_maximumEPS_,"axG",@progbits,_ZNSt18_Rb_tree_node_base10_S_maximumEPS_,comdat
	.weak	_ZNSt18_Rb_tree_node_base10_S_maximumEPS_
	.type	_ZNSt18_Rb_tree_node_base10_S_maximumEPS_, @function
_ZNSt18_Rb_tree_node_base10_S_maximumEPS_:
.LFB1948:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
.L14:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L13
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L14
.L13:
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1948:
	.size	_ZNSt18_Rb_tree_node_base10_S_maximumEPS_, .-_ZNSt18_Rb_tree_node_base10_S_maximumEPS_
	.section	.text._ZNSt15_Rb_tree_headerC2Ev,"axG",@progbits,_ZNSt15_Rb_tree_headerC5Ev,comdat
	.align 2
	.weak	_ZNSt15_Rb_tree_headerC2Ev
	.type	_ZNSt15_Rb_tree_headerC2Ev, @function
_ZNSt15_Rb_tree_headerC2Ev:
.LFB1954:
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
	movl	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15_Rb_tree_header8_M_resetEv
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1954:
	.size	_ZNSt15_Rb_tree_headerC2Ev, .-_ZNSt15_Rb_tree_headerC2Ev
	.weak	_ZNSt15_Rb_tree_headerC1Ev
	.set	_ZNSt15_Rb_tree_headerC1Ev,_ZNSt15_Rb_tree_headerC2Ev
	.section	.text._ZNSt15_Rb_tree_header8_M_resetEv,"axG",@progbits,_ZNSt15_Rb_tree_header8_M_resetEv,comdat
	.align 2
	.weak	_ZNSt15_Rb_tree_header8_M_resetEv
	.type	_ZNSt15_Rb_tree_header8_M_resetEv, @function
_ZNSt15_Rb_tree_header8_M_resetEv:
.LFB1960:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1960:
	.size	_ZNSt15_Rb_tree_header8_M_resetEv, .-_ZNSt15_Rb_tree_header8_M_resetEv
	.section	.rodata
	.type	_ZStL13allocator_arg, @object
	.size	_ZStL13allocator_arg, 1
_ZStL13allocator_arg:
	.zero	1
	.type	_ZStL6ignore, @object
	.size	_ZStL6ignore, 1
_ZStL6ignore:
	.zero	1
	.section	.text._ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implD5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implD2Ev
	.type	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implD2Ev, @function
_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implD2Ev:
.LFB2652:
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
	call	_ZNSaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2652:
	.size	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implD2Ev, .-_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implD2Ev
	.weak	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implD1Ev
	.set	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implD1Ev,_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implD2Ev
	.section	.text._ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev,"axG",@progbits,_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev
	.type	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev, @function
_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev:
.LFB2654:
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
	call	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implC1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2654:
	.size	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev, .-_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev
	.weak	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC1Ev
	.set	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC1Ev,_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev
	.section	.text._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev,"axG",@progbits,_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev
	.type	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev, @function
_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev:
.LFB2656:
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
	call	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2656:
	.size	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev, .-_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev
	.weak	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC1Ev
	.set	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC1Ev,_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev
	.text
	.globl	_Z5splitNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc
	.type	_Z5splitNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc, @function
_Z5splitNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc:
.LFB2648:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2648
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$472, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -456(%rbp)
	movq	%rsi, -464(%rbp)
	movl	%edx, %eax
	movb	%al, -468(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-456(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC1Ev
	leaq	-416(%rbp), %rax
	movq	%rax, %rdi
.LEHB0:
	call	_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev@PLT
.LEHE0:
	movq	-464(%rbp), %rdx
	leaq	-416(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB1:
	call	_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE@PLT
.LEHE1:
	leaq	-448(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev@PLT
.L23:
	movsbl	-468(%rbp), %edx
	leaq	-448(%rbp), %rcx
	leaq	-416(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB2:
	call	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_@PLT
	movq	(%rax), %rdx
	subq	$24, %rdx
	movq	(%rdx), %rdx
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv@PLT
	testb	%al, %al
	je	.L34
	leaq	-448(%rbp), %rdx
	movq	-456(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_
.LEHE2:
	jmp	.L23
.L34:
	nop
	leaq	-448(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-416(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev@PLT
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L28
	jmp	.L33
.L31:
	endbr64
	movq	%rax, %rbx
	leaq	-448(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L26
.L30:
	endbr64
	movq	%rax, %rbx
.L26:
	leaq	-416(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L27
.L29:
	endbr64
	movq	%rax, %rbx
.L27:
	movq	-456(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB3:
	call	_Unwind_Resume@PLT
.LEHE3:
.L33:
	call	__stack_chk_fail@PLT
.L28:
	movq	-456(%rbp), %rax
	addq	$472, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2648:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA2648:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2648-.LLSDACSB2648
.LLSDACSB2648:
	.uleb128 .LEHB0-.LFB2648
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L29-.LFB2648
	.uleb128 0
	.uleb128 .LEHB1-.LFB2648
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L30-.LFB2648
	.uleb128 0
	.uleb128 .LEHB2-.LFB2648
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L31-.LFB2648
	.uleb128 0
	.uleb128 .LEHB3-.LFB2648
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSE2648:
	.text
	.size	_Z5splitNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc, .-_Z5splitNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc
	.globl	_Z7p_laddrmPm
	.type	_Z7p_laddrmPm, @function
_Z7p_laddrmPm:
.LFB2664:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	shrq	$39, %rax
	andl	$511, %eax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	shrq	$30, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	$8, %rax
	andl	$511, %edx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	shrq	$21, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	$16, %rax
	andl	$511, %edx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	shrq	$12, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	$24, %rax
	andl	$511, %edx
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	addq	$32, %rax
	movq	-8(%rbp), %rdx
	andl	$4095, %edx
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2664:
	.size	_Z7p_laddrmPm, .-_Z7p_laddrmPm
	.globl	_Z9get_paddrmSt3mapImmSt4lessImESaISt4pairIKmmEEEm
	.type	_Z9get_paddrmSt3mapImmSt4lessImESaISt4pairIKmmEEEm, @function
_Z9get_paddrmSt3mapImmSt4lessImESaISt4pairIKmmEEEm:
.LFB2665:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-104(%rbp), %rax
	movq	%rax, -64(%rbp)
	leaq	-48(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Z7p_laddrmPm
	movl	$0, -76(%rbp)
.L40:
	cmpl	$3, -76(%rbp)
	jg	.L37
	movl	-76(%rbp), %eax
	cltq
	movq	-48(%rbp,%rax,8), %rax
	salq	$3, %rax
	movq	%rax, -56(%rbp)
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -72(%rbp)
	leaq	-72(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixEOm
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	andl	$1, %eax
	testq	%rax, %rax
	jne	.L38
	movl	$0, %eax
	jmp	.L41
.L38:
	movabsq	$4503599627366400, %rax
	andq	%rax, -64(%rbp)
	addl	$1, -76(%rbp)
	jmp	.L40
.L37:
	movq	-16(%rbp), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
.L41:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L42
	call	__stack_chk_fail@PLT
.L42:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2665:
	.size	_Z9get_paddrmSt3mapImmSt4lessImESaISt4pairIKmmEEEm, .-_Z9get_paddrmSt3mapImmSt4lessImESaISt4pairIKmmEEEm
	.section	.text._ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE13_Rb_tree_implIS6_Lb1EED2Ev,"axG",@progbits,_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE13_Rb_tree_implIS6_Lb1EED5Ev,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE13_Rb_tree_implIS6_Lb1EED2Ev
	.type	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE13_Rb_tree_implIS6_Lb1EED2Ev, @function
_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE13_Rb_tree_implIS6_Lb1EED2Ev:
.LFB2670:
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
	call	_ZNSaISt13_Rb_tree_nodeISt4pairIKmmEEED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2670:
	.size	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE13_Rb_tree_implIS6_Lb1EED2Ev, .-_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE13_Rb_tree_implIS6_Lb1EED2Ev
	.weak	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE13_Rb_tree_implIS6_Lb1EED1Ev
	.set	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE13_Rb_tree_implIS6_Lb1EED1Ev,_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE13_Rb_tree_implIS6_Lb1EED2Ev
	.section	.text._ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EEC2Ev,"axG",@progbits,_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EEC5Ev,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EEC2Ev
	.type	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EEC2Ev, @function
_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EEC2Ev:
.LFB2672:
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
	call	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE13_Rb_tree_implIS6_Lb1EEC1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2672:
	.size	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EEC2Ev, .-_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EEC2Ev
	.weak	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EEC1Ev
	.set	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EEC1Ev,_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EEC2Ev
	.section	.text._ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEC2Ev,"axG",@progbits,_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEC5Ev,comdat
	.align 2
	.weak	_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEC2Ev
	.type	_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEC2Ev, @function
_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEC2Ev:
.LFB2674:
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
	call	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EEC1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2674:
	.size	_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEC2Ev, .-_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEC2Ev
	.weak	_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEC1Ev
	.set	_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEC1Ev,_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEC2Ev
	.section	.text._ZNSt3mapImmSt4lessImESaISt4pairIKmmEEED2Ev,"axG",@progbits,_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEED5Ev,comdat
	.align 2
	.weak	_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEED2Ev
	.type	_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEED2Ev, @function
_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEED2Ev:
.LFB2677:
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
	call	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EED1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2677:
	.size	_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEED2Ev, .-_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEED2Ev
	.weak	_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEED1Ev
	.set	_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEED1Ev,_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEED2Ev
	.section	.text._ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEC2ERKS6_,"axG",@progbits,_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEC5ERKS6_,comdat
	.align 2
	.weak	_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEC2ERKS6_
	.type	_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEC2ERKS6_, @function
_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEC2ERKS6_:
.LFB2680:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EEC1ERKS8_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2680:
	.size	_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEC2ERKS6_, .-_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEC2ERKS6_
	.weak	_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEC1ERKS6_
	.set	_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEC1ERKS6_,_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEC2ERKS6_
	.section	.rodata
	.align 8
.LC2:
	.string	"/home/user1/projects/stepik.org/OS/2.Memory/dataset_44327_15.txt"
	.align 8
.LC3:
	.string	"/home/user1/projects/stepik.org/OS/2.Memory/ofile.txt"
.LC4:
	.string	"\n"
.LC5:
	.string	"fault"
	.text
	.globl	main
	.type	main, @function
main:
.LFB2666:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2666
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$1280, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-1120(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev@PLT
	leaq	-544(%rbp), %rax
	movl	$8, %edx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
.LEHB4:
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode@PLT
.LEHE4:
	leaq	-1056(%rbp), %rax
	movl	$16, %edx
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
.LEHB5:
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode@PLT
.LEHE5:
	leaq	-1216(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEC1Ev
	leaq	-1120(%rbp), %rdx
	leaq	-544(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB6:
	call	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE@PLT
	leaq	-1120(%rbp), %rdx
	leaq	-1088(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_@PLT
.LEHE6:
	leaq	-1248(%rbp), %rax
	leaq	-1088(%rbp), %rcx
	movl	$32, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB7:
	call	_Z5splitNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc
.LEHE7:
	leaq	-1088(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-1248(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm
	movl	$10, %edx
	movl	$0, %esi
	movq	%rax, %rdi
.LEHB8:
	call	_ZNSt7__cxx114stoiERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi
	movl	%eax, -1288(%rbp)
	leaq	-1248(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm
	movl	$10, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZNSt7__cxx114stoiERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi
	movl	%eax, -1284(%rbp)
	leaq	-1248(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm
	movl	$10, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZNSt7__cxx116stoullERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi
	movq	%rax, -1272(%rbp)
	movl	$0, -1296(%rbp)
.L50:
	movl	-1296(%rbp), %eax
	cmpl	-1288(%rbp), %eax
	jge	.L49
	leaq	-1120(%rbp), %rdx
	leaq	-544(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE@PLT
	leaq	-1120(%rbp), %rdx
	leaq	-1088(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_@PLT
.LEHE8:
	leaq	-1168(%rbp), %rax
	leaq	-1088(%rbp), %rcx
	movl	$32, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB9:
	call	_Z5splitNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc
.LEHE9:
	leaq	-1088(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-1168(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm
	movq	%rax, %r12
	leaq	-1168(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm
	movl	$10, %edx
	movl	$0, %esi
	movq	%rax, %rdi
.LEHB10:
	call	_ZNSt7__cxx116stoullERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi
	movq	%rax, -1280(%rbp)
	leaq	-1280(%rbp), %rdx
	leaq	-1216(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixEOm
	movq	%rax, %rbx
	movl	$10, %edx
	movl	$0, %esi
	movq	%r12, %rdi
	call	_ZNSt7__cxx116stoullERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi
.LEHE10:
	movq	%rax, (%rbx)
	leaq	-1168(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED1Ev
	addl	$1, -1296(%rbp)
	jmp	.L50
.L49:
	movl	$0, -1292(%rbp)
.L54:
	movl	-1292(%rbp), %eax
	cmpl	-1284(%rbp), %eax
	jge	.L51
	leaq	-1120(%rbp), %rdx
	leaq	-544(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB11:
	call	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE@PLT
	leaq	-1120(%rbp), %rax
	movl	$10, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZNSt7__cxx116stoullERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi
	movq	%rax, -1264(%rbp)
	leaq	-1216(%rbp), %rdx
	leaq	-1168(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEC1ERKS6_
.LEHE11:
	movq	-1272(%rbp), %rdx
	leaq	-1168(%rbp), %rcx
	movq	-1264(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB12:
	call	_Z9get_paddrmSt3mapImmSt4lessImESaISt4pairIKmmEEEm
.LEHE12:
	movq	%rax, -1256(%rbp)
	leaq	-1168(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEED1Ev
	cmpq	$0, -1256(%rbp)
	je	.L52
	movq	-1256(%rbp), %rdx
	leaq	-1056(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB13:
	call	_ZNSolsEm@PLT
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	jmp	.L53
.L52:
	leaq	-1056(%rbp), %rax
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
.L53:
	addl	$1, -1292(%rbp)
	jmp	.L54
.L51:
	leaq	-1056(%rbp), %rax
	movq	_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
.LEHE13:
	movl	$0, %ebx
	leaq	-1248(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED1Ev
	leaq	-1216(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEED1Ev
	leaq	-1056(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@PLT
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@PLT
	leaq	-1120(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	movl	%ebx, %eax
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L64
	jmp	.L73
.L68:
	endbr64
	movq	%rax, %rbx
	leaq	-1088(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L57
.L70:
	endbr64
	movq	%rax, %rbx
	leaq	-1088(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L59
.L71:
	endbr64
	movq	%rax, %rbx
	leaq	-1168(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED1Ev
	jmp	.L59
.L72:
	endbr64
	movq	%rax, %rbx
	leaq	-1168(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEED1Ev
	jmp	.L59
.L69:
	endbr64
	movq	%rax, %rbx
.L59:
	leaq	-1248(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED1Ev
	jmp	.L57
.L67:
	endbr64
	movq	%rax, %rbx
.L57:
	leaq	-1216(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEED1Ev
	leaq	-1056(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@PLT
	jmp	.L62
.L66:
	endbr64
	movq	%rax, %rbx
.L62:
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@PLT
	jmp	.L63
.L65:
	endbr64
	movq	%rax, %rbx
.L63:
	leaq	-1120(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB14:
	call	_Unwind_Resume@PLT
.LEHE14:
.L73:
	call	__stack_chk_fail@PLT
.L64:
	addq	$1280, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2666:
	.section	.gcc_except_table
.LLSDA2666:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2666-.LLSDACSB2666
.LLSDACSB2666:
	.uleb128 .LEHB4-.LFB2666
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L65-.LFB2666
	.uleb128 0
	.uleb128 .LEHB5-.LFB2666
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L66-.LFB2666
	.uleb128 0
	.uleb128 .LEHB6-.LFB2666
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L67-.LFB2666
	.uleb128 0
	.uleb128 .LEHB7-.LFB2666
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L68-.LFB2666
	.uleb128 0
	.uleb128 .LEHB8-.LFB2666
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L69-.LFB2666
	.uleb128 0
	.uleb128 .LEHB9-.LFB2666
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L70-.LFB2666
	.uleb128 0
	.uleb128 .LEHB10-.LFB2666
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L71-.LFB2666
	.uleb128 0
	.uleb128 .LEHB11-.LFB2666
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L69-.LFB2666
	.uleb128 0
	.uleb128 .LEHB12-.LFB2666
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L72-.LFB2666
	.uleb128 0
	.uleb128 .LEHB13-.LFB2666
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L69-.LFB2666
	.uleb128 0
	.uleb128 .LEHB14-.LFB2666
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0
	.uleb128 0
.LLSDACSE2666:
	.text
	.size	main, .-main
	.section	.text._ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev,"axG",@progbits,_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC5Ev,comdat
	.align 2
	.weak	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev
	.type	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev, @function
_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev:
.LFB2685:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	__errno_location@PLT
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	call	__errno_location@PLT
	movl	$0, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2685:
	.size	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev, .-_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev
	.weak	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC1Ev
	.set	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC1Ev,_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev
	.section	.text._ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev,"axG",@progbits,_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD5Ev,comdat
	.align 2
	.weak	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev
	.type	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev, @function
_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev:
.LFB2688:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	__errno_location@PLT
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L77
	call	__errno_location@PLT
	movq	-8(%rbp), %rdx
	movl	(%rdx), %edx
	movl	%edx, (%rax)
.L77:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2688:
	.size	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev, .-_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev
	.weak	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD1Ev
	.set	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD1Ev,_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev
	.section	.text._ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkElSt17integral_constantIbLb1EE,"axG",@progbits,_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkElSt17integral_constantIbLb1EE,comdat
	.weak	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkElSt17integral_constantIbLb1EE
	.type	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkElSt17integral_constantIbLb1EE, @function
_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkElSt17integral_constantIbLb1EE:
.LFB2691:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movabsq	$-2147483649, %rax
	cmpq	%rax, -8(%rbp)
	jle	.L79
	movl	$2147483648, %eax
	cmpq	%rax, -8(%rbp)
	jl	.L80
.L79:
	movl	$1, %eax
	jmp	.L81
.L80:
	movl	$0, %eax
.L81:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2691:
	.size	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkElSt17integral_constantIbLb1EE, .-_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkElSt17integral_constantIbLb1EE
	.section	.text._ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,"axG",@progbits,_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,comdat
	.weak	_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
	.type	_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_, @function
_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_:
.LFB2683:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2683
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movl	%r8d, -100(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC1Ev
	movl	-100(%rbp), %edx
	leaq	-40(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	-72(%rbp), %r8
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB15:
	call	*%r8
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	cmpq	%rax, -88(%rbp)
	jne	.L84
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt24__throw_invalid_argumentPKc@PLT
.L84:
	call	__errno_location@PLT
	movl	(%rax), %eax
	cmpl	$34, %eax
	je	.L85
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkElSt17integral_constantIbLb1EE
	testb	%al, %al
	je	.L86
.L85:
	movl	$1, %eax
	jmp	.L87
.L86:
	movl	$0, %eax
.L87:
	testb	%al, %al
	je	.L88
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt20__throw_out_of_rangePKc@PLT
.LEHE15:
.L88:
	movq	-32(%rbp), %rax
	movl	%eax, -44(%rbp)
	cmpq	$0, -96(%rbp)
	je	.L89
	movq	-40(%rbp), %rax
	subq	-88(%rbp), %rax
	movq	%rax, %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, (%rax)
.L89:
	movl	-44(%rbp), %ebx
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD1Ev
	movl	%ebx, %eax
	movq	-24(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L92
	jmp	.L94
.L93:
	endbr64
	movq	%rax, %rbx
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB16:
	call	_Unwind_Resume@PLT
.LEHE16:
.L94:
	call	__stack_chk_fail@PLT
.L92:
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2683:
	.section	.gcc_except_table
.LLSDA2683:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2683-.LLSDACSB2683
.LLSDACSB2683:
	.uleb128 .LEHB15-.LFB2683
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L93-.LFB2683
	.uleb128 0
	.uleb128 .LEHB16-.LFB2683
	.uleb128 .LEHE16-.LEHB16
	.uleb128 0
	.uleb128 0
.LLSDACSE2683:
	.section	.text._ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,"axG",@progbits,_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,comdat
	.size	_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_, .-_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
	.section	.text._ZZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev,"axG",@progbits,_ZZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC5Ev,comdat
	.align 2
	.weak	_ZZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev
	.type	_ZZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev, @function
_ZZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev:
.LFB2721:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	__errno_location@PLT
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	call	__errno_location@PLT
	movl	$0, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2721:
	.size	_ZZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev, .-_ZZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev
	.weak	_ZZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC1Ev
	.set	_ZZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC1Ev,_ZZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev
	.section	.text._ZZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev,"axG",@progbits,_ZZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD5Ev,comdat
	.align 2
	.weak	_ZZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev
	.type	_ZZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev, @function
_ZZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev:
.LFB2724:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	__errno_location@PLT
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L98
	call	__errno_location@PLT
	movq	-8(%rbp), %rdx
	movl	(%rdx), %edx
	movl	%edx, (%rax)
.L98:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2724:
	.size	_ZZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev, .-_ZZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev
	.weak	_ZZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD1Ev
	.set	_ZZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD1Ev,_ZZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev
	.section	.text._ZZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkEySt17integral_constantIbLb0EE,"axG",@progbits,_ZZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkEySt17integral_constantIbLb0EE,comdat
	.weak	_ZZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkEySt17integral_constantIbLb0EE
	.type	_ZZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkEySt17integral_constantIbLb0EE, @function
_ZZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkEySt17integral_constantIbLb0EE:
.LFB2726:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2726:
	.size	_ZZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkEySt17integral_constantIbLb0EE, .-_ZZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkEySt17integral_constantIbLb0EE
	.section	.text._ZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,"axG",@progbits,_ZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,comdat
	.weak	_ZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
	.type	_ZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_, @function
_ZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_:
.LFB2719:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2719
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movl	%r8d, -100(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-52(%rbp), %rax
	movq	%rax, %rdi
	call	_ZZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC1Ev
	movl	-100(%rbp), %edx
	leaq	-48(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	-72(%rbp), %r8
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB17:
	call	*%r8
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	cmpq	%rax, -88(%rbp)
	jne	.L102
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt24__throw_invalid_argumentPKc@PLT
.L102:
	call	__errno_location@PLT
	movl	(%rax), %eax
	cmpl	$34, %eax
	je	.L103
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkEySt17integral_constantIbLb0EE
	testb	%al, %al
	je	.L104
.L103:
	movl	$1, %eax
	jmp	.L105
.L104:
	movl	$0, %eax
.L105:
	testb	%al, %al
	je	.L106
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt20__throw_out_of_rangePKc@PLT
.LEHE17:
.L106:
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -96(%rbp)
	je	.L107
	movq	-48(%rbp), %rax
	subq	-88(%rbp), %rax
	movq	%rax, %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, (%rax)
.L107:
	movq	-32(%rbp), %rbx
	leaq	-52(%rbp), %rax
	movq	%rax, %rdi
	call	_ZZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD1Ev
	movq	%rbx, %rax
	movq	-24(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L110
	jmp	.L112
.L111:
	endbr64
	movq	%rax, %rbx
	leaq	-52(%rbp), %rax
	movq	%rax, %rdi
	call	_ZZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB18:
	call	_Unwind_Resume@PLT
.LEHE18:
.L112:
	call	__stack_chk_fail@PLT
.L110:
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2719:
	.section	.gcc_except_table
.LLSDA2719:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2719-.LLSDACSB2719
.LLSDACSB2719:
	.uleb128 .LEHB17-.LFB2719
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L111-.LFB2719
	.uleb128 0
	.uleb128 .LEHB18-.LFB2719
	.uleb128 .LEHE18-.LEHB18
	.uleb128 0
	.uleb128 0
.LLSDACSE2719:
	.section	.text._ZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,"axG",@progbits,_ZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,comdat
	.size	_ZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_, .-_ZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
	.section	.text._ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implC2Ev,"axG",@progbits,_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implC2Ev
	.type	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implC2Ev, @function
_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implC2Ev:
.LFB2937:
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
	call	_ZNSaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2Ev
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2937:
	.size	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implC2Ev, .-_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implC2Ev
	.weak	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implC1Ev
	.set	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implC1Ev,_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implC2Ev
	.section	.text._ZNSaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev,"axG",@progbits,_ZNSaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED5Ev,comdat
	.align 2
	.weak	_ZNSaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev
	.type	_ZNSaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev, @function
_ZNSaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev:
.LFB2940:
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
	call	_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2940:
	.size	_ZNSaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev, .-_ZNSaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev
	.weak	_ZNSaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED1Ev
	.set	_ZNSaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED1Ev,_ZNSaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev
	.section	.text._ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev
	.type	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, @function
_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev:
.LFB2943:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2943
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$5, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implD1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2943:
	.section	.gcc_except_table
.LLSDA2943:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2943-.LLSDACSB2943
.LLSDACSB2943:
.LLSDACSE2943:
	.section	.text._ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED5Ev,comdat
	.size	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, .-_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev
	.weak	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED1Ev
	.set	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED1Ev,_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev
	.section	.text._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev,"axG",@progbits,_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev
	.type	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, @function
_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev:
.LFB2946:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2946
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
	call	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2946:
	.section	.gcc_except_table
.LLSDA2946:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2946-.LLSDACSB2946
.LLSDACSB2946:
.LLSDACSE2946:
	.section	.text._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev,"axG",@progbits,_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED5Ev,comdat
	.size	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, .-_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev
	.weak	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED1Ev
	.set	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED1Ev,_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev
	.section	.text._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_,"axG",@progbits,_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_,comdat
	.align 2
	.weak	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_
	.type	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_, @function
_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_:
.LFB2964:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, %rdx
	je	.L118
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS5_JRKS5_EEEvRS6_PT_DpOT0_
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	jmp	.L120
.L118:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv
	movq	%rax, %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_
.L120:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2964:
	.size	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_, .-_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_
	.section	.text._ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixEOm,"axG",@progbits,_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixEOm,comdat
	.align 2
	.weak	_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixEOm
	.type	_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixEOm, @function
_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixEOm:
.LFB2968:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_
	movq	%rax, -48(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE3endEv
	movq	%rax, -32(%rbp)
	leaq	-32(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSteqRKSt17_Rb_tree_iteratorISt4pairIKmmEES5_
	testb	%al, %al
	jne	.L122
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt3mapImmSt4lessImESaISt4pairIKmmEEE8key_compEv
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt17_Rb_tree_iteratorISt4pairIKmmEEdeEv
	movq	%rax, %rdx
	movq	-80(%rbp), %rcx
	leaq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNKSt4lessImEclERKmS2_
	testb	%al, %al
	je	.L123
.L122:
	movl	$1, %eax
	jmp	.L124
.L123:
	movl	$0, %eax
.L124:
	testb	%al, %al
	je	.L125
	movq	-72(%rbp), %rbx
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRmEONSt16remove_referenceIT_E4typeEOS2_
	movq	%rax, %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt16forward_as_tupleIJmEESt5tupleIJDpOT_EES3_
	leaq	-48(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt23_Rb_tree_const_iteratorISt4pairIKmmEEC1ERKSt17_Rb_tree_iteratorIS2_E
	leaq	-49(%rbp), %rcx
	leaq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	leaq	_ZStL19piecewise_construct(%rip), %rdx
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOmEESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_
	movq	%rax, -48(%rbp)
.L125:
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt17_Rb_tree_iteratorISt4pairIKmmEEdeEv
	addq	$8, %rax
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L127
	call	__stack_chk_fail@PLT
.L127:
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2968:
	.size	_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixEOm, .-_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixEOm
	.section	.text._ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE13_Rb_tree_implIS6_Lb1EEC2Ev,"axG",@progbits,_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE13_Rb_tree_implIS6_Lb1EEC5Ev,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE13_Rb_tree_implIS6_Lb1EEC2Ev
	.type	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE13_Rb_tree_implIS6_Lb1EEC2Ev, @function
_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE13_Rb_tree_implIS6_Lb1EEC2Ev:
.LFB2986:
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
	call	_ZNSaISt13_Rb_tree_nodeISt4pairIKmmEEEC2Ev
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt20_Rb_tree_key_compareISt4lessImEEC2Ev
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZNSt15_Rb_tree_headerC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2986:
	.size	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE13_Rb_tree_implIS6_Lb1EEC2Ev, .-_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE13_Rb_tree_implIS6_Lb1EEC2Ev
	.weak	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE13_Rb_tree_implIS6_Lb1EEC1Ev
	.set	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE13_Rb_tree_implIS6_Lb1EEC1Ev,_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE13_Rb_tree_implIS6_Lb1EEC2Ev
	.section	.text._ZNSaISt13_Rb_tree_nodeISt4pairIKmmEEED2Ev,"axG",@progbits,_ZNSaISt13_Rb_tree_nodeISt4pairIKmmEEED5Ev,comdat
	.align 2
	.weak	_ZNSaISt13_Rb_tree_nodeISt4pairIKmmEEED2Ev
	.type	_ZNSaISt13_Rb_tree_nodeISt4pairIKmmEEED2Ev, @function
_ZNSaISt13_Rb_tree_nodeISt4pairIKmmEEED2Ev:
.LFB2989:
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
	call	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKmmEEED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2989:
	.size	_ZNSaISt13_Rb_tree_nodeISt4pairIKmmEEED2Ev, .-_ZNSaISt13_Rb_tree_nodeISt4pairIKmmEEED2Ev
	.weak	_ZNSaISt13_Rb_tree_nodeISt4pairIKmmEEED1Ev
	.set	_ZNSaISt13_Rb_tree_nodeISt4pairIKmmEEED1Ev,_ZNSaISt13_Rb_tree_nodeISt4pairIKmmEEED2Ev
	.section	.text._ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EED2Ev,"axG",@progbits,_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EED5Ev,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EED2Ev
	.type	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EED2Ev, @function
_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EED2Ev:
.LFB2992:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2992
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
	call	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_beginEv
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE13_Rb_tree_implIS6_Lb1EED1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2992:
	.section	.gcc_except_table
.LLSDA2992:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2992-.LLSDACSB2992
.LLSDACSB2992:
.LLSDACSE2992:
	.section	.text._ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EED2Ev,"axG",@progbits,_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EED5Ev,comdat
	.size	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EED2Ev, .-_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EED2Ev
	.weak	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EED1Ev
	.set	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EED1Ev,_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EED2Ev
	.section	.text._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm,"axG",@progbits,_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm,comdat
	.align 2
	.weak	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm
	.type	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm, @function
_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm:
.LFB2998:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$5, %rdx
	addq	%rdx, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2998:
	.size	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm, .-_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm
	.section	.text._ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EEC2ERKS8_,"axG",@progbits,_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EEC5ERKS8_,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EEC2ERKS8_
	.type	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EEC2ERKS8_, @function
_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EEC2ERKS8_:
.LFB3000:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3000
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB19:
	call	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE13_Rb_tree_implIS6_Lb1EEC1ERKSA_
.LEHE19:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE7_M_rootEv
	testq	%rax, %rax
	setne	%al
	testb	%al, %al
	je	.L137
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE7_M_rootEv
	movq	%rax, %rbx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB20:
	call	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE7_M_copyERKS8_
.LEHE20:
	movq	%rax, (%rbx)
	jmp	.L137
.L136:
	endbr64
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE13_Rb_tree_implIS6_Lb1EED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB21:
	call	_Unwind_Resume@PLT
.LEHE21:
.L137:
	nop
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3000:
	.section	.gcc_except_table
.LLSDA3000:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3000-.LLSDACSB3000
.LLSDACSB3000:
	.uleb128 .LEHB19-.LFB3000
	.uleb128 .LEHE19-.LEHB19
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB20-.LFB3000
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L136-.LFB3000
	.uleb128 0
	.uleb128 .LEHB21-.LFB3000
	.uleb128 .LEHE21-.LEHB21
	.uleb128 0
	.uleb128 0
.LLSDACSE3000:
	.section	.text._ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EEC2ERKS8_,"axG",@progbits,_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EEC5ERKS8_,comdat
	.size	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EEC2ERKS8_, .-_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EEC2ERKS8_
	.weak	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EEC1ERKS8_
	.set	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EEC1ERKS8_,_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EEC2ERKS8_
	.section	.text._ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_,"axG",@progbits,_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_,comdat
	.weak	_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_
	.type	_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_, @function
_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_:
.LFB3108:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3108:
	.size	_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_, .-_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_
	.section	.text._ZNSaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2Ev,"axG",@progbits,_ZNSaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC5Ev,comdat
	.align 2
	.weak	_ZNSaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2Ev
	.type	_ZNSaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2Ev, @function
_ZNSaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2Ev:
.LFB3112:
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
	call	_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3112:
	.size	_ZNSaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2Ev, .-_ZNSaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2Ev
	.weak	_ZNSaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC1Ev
	.set	_ZNSaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC1Ev,_ZNSaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2Ev
	.section	.text._ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataC2Ev,"axG",@progbits,_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataC2Ev
	.type	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataC2Ev, @function
_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataC2Ev:
.LFB3115:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3115:
	.size	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataC2Ev, .-_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataC2Ev
	.weak	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataC1Ev
	.set	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataC1Ev,_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataC2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev
	.type	_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev, @function
_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev:
.LFB3118:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3118:
	.size	_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev, .-_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED1Ev
	.set	_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED1Ev,_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev
	.section	.text._ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m,"axG",@progbits,_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m
	.type	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m, @function
_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m:
.LFB3120:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L145
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10deallocateERS6_PS5_m
.L145:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3120:
	.size	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m, .-_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m
	.section	.text._ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv
	.type	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv, @function
_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv:
.LFB3121:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3121:
	.size	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv, .-_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv
	.section	.text._ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E,"axG",@progbits,_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E,comdat
	.weak	_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E
	.type	_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E, @function
_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E:
.LFB3122:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3122:
	.size	_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E, .-_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E
	.section	.text._ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS5_JRKS5_EEEvRS6_PT_DpOT0_,"axG",@progbits,_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS5_JRKS5_EEEvRS6_PT_DpOT0_,comdat
	.weak	_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS5_JRKS5_EEEvRS6_PT_DpOT0_
	.type	_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS5_JRKS5_EEEvRS6_PT_DpOT0_, @function
_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS5_JRKS5_EEEvRS6_PT_DpOT0_:
.LFB3146:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS8_E4typeE
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS6_JRKS6_EEEvPT_DpOT0_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3146:
	.size	_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS5_JRKS5_EEEvRS6_PT_DpOT0_, .-_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS5_JRKS5_EEEvRS6_PT_DpOT0_
	.section	.text._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv,"axG",@progbits,_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv,comdat
	.align 2
	.weak	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv
	.type	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv, @function
_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv:
.LFB3147:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEC1ERKS7_
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L152
	call	__stack_chk_fail@PLT
.L152:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3147:
	.size	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv, .-_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv
	.section	.text._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_S_use_relocateEv,"axG",@progbits,_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_S_use_relocateEv,comdat
	.weak	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_S_use_relocateEv
	.type	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_S_use_relocateEv, @function
_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_S_use_relocateEv:
.LFB3149:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	call	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_S_nothrow_relocateESt17integral_constantIbLb1EE
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L155
	call	__stack_chk_fail@PLT
.L155:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3149:
	.size	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_S_use_relocateEv, .-_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_S_use_relocateEv
	.section	.text._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_S_nothrow_relocateESt17integral_constantIbLb1EE,"axG",@progbits,_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_S_nothrow_relocateESt17integral_constantIbLb1EE,comdat
	.weak	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_S_nothrow_relocateESt17integral_constantIbLb1EE
	.type	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_S_nothrow_relocateESt17integral_constantIbLb1EE, @function
_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_S_nothrow_relocateESt17integral_constantIbLb1EE:
.LFB3150:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3150:
	.size	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_S_nothrow_relocateESt17integral_constantIbLb1EE, .-_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_S_nothrow_relocateESt17integral_constantIbLb1EE
	.section	.rodata
.LC6:
	.string	"vector::_M_realloc_insert"
	.section	.text._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_,"axG",@progbits,_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_,comdat
	.align 2
	.weak	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_
	.type	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_, @function
_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_:
.LFB3148:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3148
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-88(%rbp), %rax
	leaq	.LC6(%rip), %rdx
	movl	$1, %esi
	movq	%rax, %rdi
.LEHB22:
	call	_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc
	movq	%rax, -64(%rbp)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv
	movq	%rax, -80(%rbp)
	leaq	-80(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxxmiIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSE_SH_
	movq	%rax, -40(%rbp)
	movq	-88(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm
.LEHE22:
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS8_E4typeE
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rcx
	movq	-32(%rbp), %rax
	addq	%rax, %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB23:
	call	_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS5_JRKS5_EEEvRS6_PT_DpOT0_
	movq	$0, -72(%rbp)
	call	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_S_use_relocateEv
	testb	%al, %al
	je	.L159
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rbx
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEE4baseEv
	movq	(%rax), %rsi
	movq	-32(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rbx, %rcx
	movq	%rax, %rdi
	call	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_
	movq	%rax, -72(%rbp)
	addq	$32, -72(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rbx
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEE4baseEv
	movq	(%rax), %rax
	movq	-72(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	%rbx, %rcx
	movq	%rax, %rdi
	call	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_
	movq	%rax, -72(%rbp)
	jmp	.L160
.L159:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rbx
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEE4baseEv
	movq	(%rax), %rsi
	movq	-32(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rbx, %rcx
	movq	%rax, %rdi
	call	_ZSt34__uninitialized_move_if_noexcept_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_
	movq	%rax, -72(%rbp)
	addq	$32, -72(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rbx
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEE4baseEv
	movq	(%rax), %rax
	movq	-72(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	%rbx, %rcx
	movq	%rax, %rdi
	call	_ZSt34__uninitialized_move_if_noexcept_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_
.LEHE23:
	movq	%rax, -72(%rbp)
.L160:
	call	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_S_use_relocateEv
	xorl	$1, %eax
	testb	%al, %al
	je	.L161
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	movq	-48(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB24:
	call	_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E
.L161:
	movq	-88(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	16(%rdx), %rdx
	subq	-56(%rbp), %rdx
	sarq	$5, %rdx
	movq	-56(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m
.LEHE24:
	movq	-88(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-88(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-64(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, 16(%rax)
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L166
	jmp	.L169
.L167:
	endbr64
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	cmpq	$0, -72(%rbp)
	jne	.L163
	movq	-40(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7destroyIS5_EEvRS6_PT_
	jmp	.L164
.L163:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	movq	-72(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB25:
	call	_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E
.L164:
	movq	-88(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m
	call	__cxa_rethrow@PLT
.LEHE25:
.L168:
	endbr64
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB26:
	call	_Unwind_Resume@PLT
.LEHE26:
.L169:
	call	__stack_chk_fail@PLT
.L166:
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3148:
	.section	.gcc_except_table
	.align 4
.LLSDA3148:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT3148-.LLSDATTD3148
.LLSDATTD3148:
	.byte	0x1
	.uleb128 .LLSDACSE3148-.LLSDACSB3148
.LLSDACSB3148:
	.uleb128 .LEHB22-.LFB3148
	.uleb128 .LEHE22-.LEHB22
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB23-.LFB3148
	.uleb128 .LEHE23-.LEHB23
	.uleb128 .L167-.LFB3148
	.uleb128 0x1
	.uleb128 .LEHB24-.LFB3148
	.uleb128 .LEHE24-.LEHB24
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB25-.LFB3148
	.uleb128 .LEHE25-.LEHB25
	.uleb128 .L168-.LFB3148
	.uleb128 0
	.uleb128 .LEHB26-.LFB3148
	.uleb128 .LEHE26-.LEHB26
	.uleb128 0
	.uleb128 0
.LLSDACSE3148:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT3148:
	.section	.text._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_,"axG",@progbits,_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_,comdat
	.size	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_, .-_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_
	.section	.text._ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_,"axG",@progbits,_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_,comdat
	.align 2
	.weak	_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_
	.type	_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_, @function
_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_:
.LFB3158:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE11lower_boundERS1_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3158:
	.size	_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_, .-_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_
	.section	.text._ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE3endEv,"axG",@progbits,_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE3endEv,comdat
	.align 2
	.weak	_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE3endEv
	.type	_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE3endEv, @function
_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE3endEv:
.LFB3159:
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
	call	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE3endEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3159:
	.size	_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE3endEv, .-_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE3endEv
	.section	.text._ZSteqRKSt17_Rb_tree_iteratorISt4pairIKmmEES5_,"axG",@progbits,_ZSteqRKSt17_Rb_tree_iteratorISt4pairIKmmEES5_,comdat
	.weak	_ZSteqRKSt17_Rb_tree_iteratorISt4pairIKmmEES5_
	.type	_ZSteqRKSt17_Rb_tree_iteratorISt4pairIKmmEES5_, @function
_ZSteqRKSt17_Rb_tree_iteratorISt4pairIKmmEES5_:
.LFB3160:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	sete	%al
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3160:
	.size	_ZSteqRKSt17_Rb_tree_iteratorISt4pairIKmmEES5_, .-_ZSteqRKSt17_Rb_tree_iteratorISt4pairIKmmEES5_
	.section	.text._ZNKSt3mapImmSt4lessImESaISt4pairIKmmEEE8key_compEv,"axG",@progbits,_ZNKSt3mapImmSt4lessImESaISt4pairIKmmEEE8key_compEv,comdat
	.align 2
	.weak	_ZNKSt3mapImmSt4lessImESaISt4pairIKmmEEE8key_compEv
	.type	_ZNKSt3mapImmSt4lessImESaISt4pairIKmmEEE8key_compEv, @function
_ZNKSt3mapImmSt4lessImESaISt4pairIKmmEEE8key_compEv:
.LFB3161:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8key_compEv
	movl	%ebx, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3161:
	.size	_ZNKSt3mapImmSt4lessImESaISt4pairIKmmEEE8key_compEv, .-_ZNKSt3mapImmSt4lessImESaISt4pairIKmmEEE8key_compEv
	.section	.text._ZNKSt17_Rb_tree_iteratorISt4pairIKmmEEdeEv,"axG",@progbits,_ZNKSt17_Rb_tree_iteratorISt4pairIKmmEEdeEv,comdat
	.align 2
	.weak	_ZNKSt17_Rb_tree_iteratorISt4pairIKmmEEdeEv
	.type	_ZNKSt17_Rb_tree_iteratorISt4pairIKmmEEdeEv, @function
_ZNKSt17_Rb_tree_iteratorISt4pairIKmmEEdeEv:
.LFB3162:
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
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_ZNSt13_Rb_tree_nodeISt4pairIKmmEE9_M_valptrEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3162:
	.size	_ZNKSt17_Rb_tree_iteratorISt4pairIKmmEEdeEv, .-_ZNKSt17_Rb_tree_iteratorISt4pairIKmmEEdeEv
	.section	.text._ZNKSt4lessImEclERKmS2_,"axG",@progbits,_ZNKSt4lessImEclERKmS2_,comdat
	.align 2
	.weak	_ZNKSt4lessImEclERKmS2_
	.type	_ZNKSt4lessImEclERKmS2_, @function
_ZNKSt4lessImEclERKmS2_:
.LFB3163:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	setb	%al
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3163:
	.size	_ZNKSt4lessImEclERKmS2_, .-_ZNKSt4lessImEclERKmS2_
	.section	.text._ZSt4moveIRmEONSt16remove_referenceIT_E4typeEOS2_,"axG",@progbits,_ZSt4moveIRmEONSt16remove_referenceIT_E4typeEOS2_,comdat
	.weak	_ZSt4moveIRmEONSt16remove_referenceIT_E4typeEOS2_
	.type	_ZSt4moveIRmEONSt16remove_referenceIT_E4typeEOS2_, @function
_ZSt4moveIRmEONSt16remove_referenceIT_E4typeEOS2_:
.LFB3164:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3164:
	.size	_ZSt4moveIRmEONSt16remove_referenceIT_E4typeEOS2_, .-_ZSt4moveIRmEONSt16remove_referenceIT_E4typeEOS2_
	.section	.text._ZNSt5tupleIJOmEEC2EOS1_,"axG",@progbits,_ZNSt5tupleIJOmEEC5EOS1_,comdat
	.align 2
	.weak	_ZNSt5tupleIJOmEEC2EOS1_
	.type	_ZNSt5tupleIJOmEEC2EOS1_, @function
_ZNSt5tupleIJOmEEC2EOS1_:
.LFB3181:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11_Tuple_implILm0EJOmEEC2EOS1_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3181:
	.size	_ZNSt5tupleIJOmEEC2EOS1_, .-_ZNSt5tupleIJOmEEC2EOS1_
	.weak	_ZNSt5tupleIJOmEEC1EOS1_
	.set	_ZNSt5tupleIJOmEEC1EOS1_,_ZNSt5tupleIJOmEEC2EOS1_
	.section	.text._ZSt16forward_as_tupleIJmEESt5tupleIJDpOT_EES3_,"axG",@progbits,_ZSt16forward_as_tupleIJmEESt5tupleIJDpOT_EES3_,comdat
	.weak	_ZSt16forward_as_tupleIJmEESt5tupleIJDpOT_EES3_
	.type	_ZSt16forward_as_tupleIJmEESt5tupleIJDpOT_EES3_, @function
_ZSt16forward_as_tupleIJmEESt5tupleIJDpOT_EES3_:
.LFB3165:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3165
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardImEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt5tupleIJOmEEC1IJmELb1EEEDpOT_
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3165:
	.section	.gcc_except_table
.LLSDA3165:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3165-.LLSDACSB3165
.LLSDACSB3165:
.LLSDACSE3165:
	.section	.text._ZSt16forward_as_tupleIJmEESt5tupleIJDpOT_EES3_,"axG",@progbits,_ZSt16forward_as_tupleIJmEESt5tupleIJDpOT_EES3_,comdat
	.size	_ZSt16forward_as_tupleIJmEESt5tupleIJDpOT_EES3_, .-_ZSt16forward_as_tupleIJmEESt5tupleIJDpOT_EES3_
	.section	.text._ZNSt23_Rb_tree_const_iteratorISt4pairIKmmEEC2ERKSt17_Rb_tree_iteratorIS2_E,"axG",@progbits,_ZNSt23_Rb_tree_const_iteratorISt4pairIKmmEEC5ERKSt17_Rb_tree_iteratorIS2_E,comdat
	.align 2
	.weak	_ZNSt23_Rb_tree_const_iteratorISt4pairIKmmEEC2ERKSt17_Rb_tree_iteratorIS2_E
	.type	_ZNSt23_Rb_tree_const_iteratorISt4pairIKmmEEC2ERKSt17_Rb_tree_iteratorIS2_E, @function
_ZNSt23_Rb_tree_const_iteratorISt4pairIKmmEEC2ERKSt17_Rb_tree_iteratorIS2_E:
.LFB3184:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3184:
	.size	_ZNSt23_Rb_tree_const_iteratorISt4pairIKmmEEC2ERKSt17_Rb_tree_iteratorIS2_E, .-_ZNSt23_Rb_tree_const_iteratorISt4pairIKmmEEC2ERKSt17_Rb_tree_iteratorIS2_E
	.weak	_ZNSt23_Rb_tree_const_iteratorISt4pairIKmmEEC1ERKSt17_Rb_tree_iteratorIS2_E
	.set	_ZNSt23_Rb_tree_const_iteratorISt4pairIKmmEEC1ERKSt17_Rb_tree_iteratorIS2_E,_ZNSt23_Rb_tree_const_iteratorISt4pairIKmmEEC2ERKSt17_Rb_tree_iteratorIS2_E
	.section	.text._ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOmEESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_,"axG",@progbits,_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOmEESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOmEESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_
	.type	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOmEESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_, @function
_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOmEESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_:
.LFB3186:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3186
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$96, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%r8, -104(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE
	movq	%rax, %r12
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt5tupleIJOmEEEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %rbx
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %rsi
	movq	-72(%rbp), %rax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movq	%rax, %rdi
.LEHB27:
	call	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_create_nodeIJRKSt21piecewise_construct_tSt5tupleIJOmEESD_IJEEEEEPSt13_Rb_tree_nodeIS2_EDpOT_
.LEHE27:
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
.LEHB28:
	call	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE6_S_keyEPKSt13_Rb_tree_nodeIS2_E
	movq	%rax, %rdx
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	je	.L189
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSA_PSt13_Rb_tree_nodeIS2_E
.LEHE28:
	jmp	.L191
.L189:
	movq	-56(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS2_E
	movq	-48(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt17_Rb_tree_iteratorISt4pairIKmmEEC1EPSt18_Rb_tree_node_base
	movq	-64(%rbp), %rax
.L191:
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L194
	jmp	.L197
.L195:
	endbr64
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	movq	-56(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS2_E
.LEHB29:
	call	__cxa_rethrow@PLT
.LEHE29:
.L196:
	endbr64
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB30:
	call	_Unwind_Resume@PLT
.LEHE30:
.L197:
	call	__stack_chk_fail@PLT
.L194:
	addq	$96, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3186:
	.section	.gcc_except_table
	.align 4
.LLSDA3186:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT3186-.LLSDATTD3186
.LLSDATTD3186:
	.byte	0x1
	.uleb128 .LLSDACSE3186-.LLSDACSB3186
.LLSDACSB3186:
	.uleb128 .LEHB27-.LFB3186
	.uleb128 .LEHE27-.LEHB27
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB28-.LFB3186
	.uleb128 .LEHE28-.LEHB28
	.uleb128 .L195-.LFB3186
	.uleb128 0x1
	.uleb128 .LEHB29-.LFB3186
	.uleb128 .LEHE29-.LEHB29
	.uleb128 .L196-.LFB3186
	.uleb128 0
	.uleb128 .LEHB30-.LFB3186
	.uleb128 .LEHE30-.LEHB30
	.uleb128 0
	.uleb128 0
.LLSDACSE3186:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT3186:
	.section	.text._ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOmEESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_,"axG",@progbits,_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOmEESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_,comdat
	.size	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOmEESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_, .-_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOmEESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_
	.section	.text._ZNSaISt13_Rb_tree_nodeISt4pairIKmmEEEC2Ev,"axG",@progbits,_ZNSaISt13_Rb_tree_nodeISt4pairIKmmEEEC5Ev,comdat
	.align 2
	.weak	_ZNSaISt13_Rb_tree_nodeISt4pairIKmmEEEC2Ev
	.type	_ZNSaISt13_Rb_tree_nodeISt4pairIKmmEEEC2Ev, @function
_ZNSaISt13_Rb_tree_nodeISt4pairIKmmEEEC2Ev:
.LFB3212:
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
	call	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKmmEEEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3212:
	.size	_ZNSaISt13_Rb_tree_nodeISt4pairIKmmEEEC2Ev, .-_ZNSaISt13_Rb_tree_nodeISt4pairIKmmEEEC2Ev
	.weak	_ZNSaISt13_Rb_tree_nodeISt4pairIKmmEEEC1Ev
	.set	_ZNSaISt13_Rb_tree_nodeISt4pairIKmmEEEC1Ev,_ZNSaISt13_Rb_tree_nodeISt4pairIKmmEEEC2Ev
	.section	.text._ZNSt20_Rb_tree_key_compareISt4lessImEEC2Ev,"axG",@progbits,_ZNSt20_Rb_tree_key_compareISt4lessImEEC5Ev,comdat
	.align 2
	.weak	_ZNSt20_Rb_tree_key_compareISt4lessImEEC2Ev
	.type	_ZNSt20_Rb_tree_key_compareISt4lessImEEC2Ev, @function
_ZNSt20_Rb_tree_key_compareISt4lessImEEC2Ev:
.LFB3215:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3215:
	.size	_ZNSt20_Rb_tree_key_compareISt4lessImEEC2Ev, .-_ZNSt20_Rb_tree_key_compareISt4lessImEEC2Ev
	.weak	_ZNSt20_Rb_tree_key_compareISt4lessImEEC1Ev
	.set	_ZNSt20_Rb_tree_key_compareISt4lessImEEC1Ev,_ZNSt20_Rb_tree_key_compareISt4lessImEEC2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKmmEEED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKmmEEED5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKmmEEED2Ev
	.type	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKmmEEED2Ev, @function
_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKmmEEED2Ev:
.LFB3218:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3218:
	.size	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKmmEEED2Ev, .-_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKmmEEED2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKmmEEED1Ev
	.set	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKmmEEED1Ev,_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKmmEEED2Ev
	.section	.text._ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E,"axG",@progbits,_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E
	.type	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E, @function
_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E:
.LFB3220:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
.L203:
	cmpq	$0, -32(%rbp)
	je	.L204
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_S_rightEPSt18_Rb_tree_node_base
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE7_S_leftEPSt18_Rb_tree_node_base
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS2_E
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.L203
.L204:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3220:
	.size	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E, .-_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E
	.section	.text._ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_beginEv,"axG",@progbits,_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_beginEv,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_beginEv
	.type	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_beginEv, @function
_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_beginEv:
.LFB3221:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3221:
	.size	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_beginEv, .-_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_beginEv
	.section	.text._ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE13_Rb_tree_implIS6_Lb1EEC2ERKSA_,"axG",@progbits,_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE13_Rb_tree_implIS6_Lb1EEC5ERKSA_,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE13_Rb_tree_implIS6_Lb1EEC2ERKSA_
	.type	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE13_Rb_tree_implIS6_Lb1EEC2ERKSA_, @function
_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE13_Rb_tree_implIS6_Lb1EEC2ERKSA_:
.LFB3227:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx14__alloc_traitsISaISt13_Rb_tree_nodeISt4pairIKmmEEES5_E17_S_select_on_copyERKS6_
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt20_Rb_tree_key_compareISt4lessImEEC2ERKS1_
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZNSt15_Rb_tree_headerC2Ev
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L208
	call	__stack_chk_fail@PLT
.L208:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3227:
	.size	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE13_Rb_tree_implIS6_Lb1EEC2ERKSA_, .-_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE13_Rb_tree_implIS6_Lb1EEC2ERKSA_
	.weak	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE13_Rb_tree_implIS6_Lb1EEC1ERKSA_
	.set	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE13_Rb_tree_implIS6_Lb1EEC1ERKSA_,_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE13_Rb_tree_implIS6_Lb1EEC2ERKSA_
	.section	.text._ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE7_M_rootEv,"axG",@progbits,_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE7_M_rootEv,comdat
	.align 2
	.weak	_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE7_M_rootEv
	.type	_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE7_M_rootEv, @function
_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE7_M_rootEv:
.LFB3229:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3229:
	.size	_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE7_M_rootEv, .-_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE7_M_rootEv
	.section	.text._ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE7_M_rootEv,"axG",@progbits,_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE7_M_rootEv,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE7_M_rootEv
	.type	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE7_M_rootEv, @function
_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE7_M_rootEv:
.LFB3230:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$16, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3230:
	.size	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE7_M_rootEv, .-_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE7_M_rootEv
	.section	.text._ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE7_M_copyERKS8_,"axG",@progbits,_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE7_M_copyERKS8_,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE7_M_copyERKS8_
	.type	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE7_M_copyERKS8_, @function
_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE7_M_copyERKS8_:
.LFB3231:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE11_Alloc_nodeC1ERS8_
	leaq	-16(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE7_M_copyINS8_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS2_ERKS8_RT_
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L215
	call	__stack_chk_fail@PLT
.L215:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3231:
	.size	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE7_M_copyERKS8_, .-_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE7_M_copyERKS8_
	.section	.text._ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2Ev
	.type	_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2Ev, @function
_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2Ev:
.LFB3265:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3265:
	.size	_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2Ev, .-_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC1Ev
	.set	_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC1Ev,_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2Ev
	.section	.text._ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10deallocateERS6_PS5_m,"axG",@progbits,_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10deallocateERS6_PS5_m,comdat
	.weak	_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10deallocateERS6_PS5_m
	.type	_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10deallocateERS6_PS5_m, @function
_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10deallocateERS6_PS5_m:
.LFB3267:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10deallocateEPS6_m
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3267:
	.size	_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10deallocateERS6_PS5_m, .-_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10deallocateERS6_PS5_m
	.section	.text._ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_,"axG",@progbits,_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_,comdat
	.weak	_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_
	.type	_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_, @function
_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_:
.LFB3268:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3268:
	.size	_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_, .-_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_
	.section	.text._ZSt7forwardIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS8_E4typeE,"axG",@progbits,_ZSt7forwardIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS8_E4typeE,comdat
	.weak	_ZSt7forwardIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS8_E4typeE
	.type	_ZSt7forwardIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS8_E4typeE, @function
_ZSt7forwardIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS8_E4typeE:
.LFB3275:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3275:
	.size	_ZSt7forwardIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS8_E4typeE, .-_ZSt7forwardIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS8_E4typeE
	.section	.text._ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS6_JRKS6_EEEvPT_DpOT0_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS6_JRKS6_EEEvPT_DpOT0_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS6_JRKS6_EEEvPT_DpOT0_
	.type	_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS6_JRKS6_EEEvPT_DpOT0_, @function
_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS6_JRKS6_EEEvPT_DpOT0_:
.LFB3276:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3276
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS8_E4typeE
	movq	%rax, %r13
	movq	-48(%rbp), %rbx
	movq	%rbx, %rsi
	movl	$32, %edi
	call	_ZnwmPv
	movq	%rax, %r12
	movq	%r13, %rsi
	movq	%r12, %rdi
.LEHB31:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_@PLT
.LEHE31:
	jmp	.L224
.L223:
	endbr64
	movq	%rax, %r13
	movq	%rbx, %rsi
	movq	%r12, %rdi
	call	_ZdlPvS_
	movq	%r13, %rax
	movq	%rax, %rdi
.LEHB32:
	call	_Unwind_Resume@PLT
.LEHE32:
.L224:
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3276:
	.section	.gcc_except_table
.LLSDA3276:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3276-.LLSDACSB3276
.LLSDACSB3276:
	.uleb128 .LEHB31-.LFB3276
	.uleb128 .LEHE31-.LEHB31
	.uleb128 .L223-.LFB3276
	.uleb128 0
	.uleb128 .LEHB32-.LFB3276
	.uleb128 .LEHE32-.LEHB32
	.uleb128 0
	.uleb128 0
.LLSDACSE3276:
	.section	.text._ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS6_JRKS6_EEEvPT_DpOT0_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS6_JRKS6_EEEvPT_DpOT0_,comdat
	.size	_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS6_JRKS6_EEEvPT_DpOT0_, .-_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS6_JRKS6_EEEvPT_DpOT0_
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEC2ERKS7_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEC5ERKS7_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEC2ERKS7_
	.type	_ZN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEC2ERKS7_, @function
_ZN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEC2ERKS7_:
.LFB3278:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3278:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEC2ERKS7_, .-_ZN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEC2ERKS7_
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEC1ERKS7_
	.set	_ZN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEC1ERKS7_,_ZN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEC2ERKS7_
	.section	.text._ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc,"axG",@progbits,_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc,comdat
	.align 2
	.weak	_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc
	.type	_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc, @function
_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc:
.LFB3280:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8max_sizeEv
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4sizeEv
	subq	%rax, %rbx
	movq	%rbx, %rdx
	movq	-64(%rbp), %rax
	cmpq	%rax, %rdx
	setb	%al
	testb	%al, %al
	je	.L227
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
.L227:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4sizeEv
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4sizeEv
	movq	%rax, -40(%rbp)
	leaq	-64(%rbp), %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt3maxImERKT_S2_S2_
	movq	(%rax), %rax
	addq	%rbx, %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4sizeEv
	cmpq	%rax, -32(%rbp)
	jb	.L228
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8max_sizeEv
	cmpq	%rax, -32(%rbp)
	jbe	.L229
.L228:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8max_sizeEv
	jmp	.L230
.L229:
	movq	-32(%rbp), %rax
.L230:
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L232
	call	__stack_chk_fail@PLT
.L232:
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3280:
	.size	_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc, .-_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc
	.section	.text._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv,"axG",@progbits,_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv,comdat
	.align 2
	.weak	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv
	.type	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv, @function
_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv:
.LFB3281:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEC1ERKS7_
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L235
	call	__stack_chk_fail@PLT
.L235:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3281:
	.size	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv, .-_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv
	.section	.text._ZN9__gnu_cxxmiIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSE_SH_,"axG",@progbits,_ZN9__gnu_cxxmiIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSE_SH_,comdat
	.weak	_ZN9__gnu_cxxmiIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSE_SH_
	.type	_ZN9__gnu_cxxmiIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSE_SH_, @function
_ZN9__gnu_cxxmiIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSE_SH_:
.LFB3282:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEE4baseEv
	movq	(%rax), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEE4baseEv
	movq	(%rax), %rax
	subq	%rax, %rbx
	movq	%rbx, %rax
	sarq	$5, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3282:
	.size	_ZN9__gnu_cxxmiIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSE_SH_, .-_ZN9__gnu_cxxmiIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSE_SH_
	.section	.text._ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm
	.type	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm, @function
_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm:
.LFB3283:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L239
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8allocateERS6_m
	jmp	.L241
.L239:
	movl	$0, %eax
.L241:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3283:
	.size	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm, .-_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm
	.section	.text._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_,"axG",@progbits,_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_,comdat
	.weak	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_
	.type	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_, @function
_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_:
.LFB3284:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_S_do_relocateEPS5_S8_S8_RS6_St17integral_constantIbLb1EE
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L244
	call	__stack_chk_fail@PLT
.L244:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3284:
	.size	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_, .-_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEE4baseEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEE4baseEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEE4baseEv, @function
_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEE4baseEv:
.LFB3285:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3285:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEE4baseEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEE4baseEv
	.section	.text._ZSt34__uninitialized_move_if_noexcept_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_,"axG",@progbits,_ZSt34__uninitialized_move_if_noexcept_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_,comdat
	.weak	_ZSt34__uninitialized_move_if_noexcept_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_
	.type	_ZSt34__uninitialized_move_if_noexcept_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_, @function
_ZSt34__uninitialized_move_if_noexcept_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_:
.LFB3286:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt32__make_move_if_noexcept_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt13move_iteratorIPS5_EET0_PT_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt32__make_move_if_noexcept_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt13move_iteratorIPS5_EET0_PT_
	movq	%rax, %rdi
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movq	%rbx, %rsi
	call	_ZSt22__uninitialized_copy_aISt13move_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_S6_ET0_T_SA_S9_RSaIT1_E
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3286:
	.size	_ZSt34__uninitialized_move_if_noexcept_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_, .-_ZSt34__uninitialized_move_if_noexcept_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_
	.section	.text._ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7destroyIS5_EEvRS6_PT_,"axG",@progbits,_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7destroyIS5_EEvRS6_PT_,comdat
	.weak	_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7destroyIS5_EEvRS6_PT_
	.type	_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7destroyIS5_EEvRS6_PT_, @function
_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7destroyIS5_EEvRS6_PT_:
.LFB3287:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7destroyIS6_EEvPT_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3287:
	.size	_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7destroyIS5_EEvRS6_PT_, .-_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7destroyIS5_EEvRS6_PT_
	.section	.text._ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE11lower_boundERS1_,"axG",@progbits,_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE11lower_boundERS1_,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE11lower_boundERS1_
	.type	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE11lower_boundERS1_, @function
_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE11lower_boundERS1_:
.LFB3291:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE6_M_endEv
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_beginEv
	movq	%rax, %rsi
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rbx, %rdx
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3291:
	.size	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE11lower_boundERS1_, .-_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE11lower_boundERS1_
	.section	.text._ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE3endEv,"axG",@progbits,_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE3endEv,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE3endEv
	.type	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE3endEv, @function
_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE3endEv:
.LFB3292:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt17_Rb_tree_iteratorISt4pairIKmmEEC1EPSt18_Rb_tree_node_base
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L254
	call	__stack_chk_fail@PLT
.L254:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3292:
	.size	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE3endEv, .-_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE3endEv
	.section	.text._ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8key_compEv,"axG",@progbits,_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8key_compEv,comdat
	.align 2
	.weak	_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8key_compEv
	.type	_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8key_compEv, @function
_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8key_compEv:
.LFB3293:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3293:
	.size	_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8key_compEv, .-_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8key_compEv
	.section	.text._ZNSt13_Rb_tree_nodeISt4pairIKmmEE9_M_valptrEv,"axG",@progbits,_ZNSt13_Rb_tree_nodeISt4pairIKmmEE9_M_valptrEv,comdat
	.align 2
	.weak	_ZNSt13_Rb_tree_nodeISt4pairIKmmEE9_M_valptrEv
	.type	_ZNSt13_Rb_tree_nodeISt4pairIKmmEE9_M_valptrEv, @function
_ZNSt13_Rb_tree_nodeISt4pairIKmmEE9_M_valptrEv:
.LFB3294:
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
	addq	$32, %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx16__aligned_membufISt4pairIKmmEE6_M_ptrEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3294:
	.size	_ZNSt13_Rb_tree_nodeISt4pairIKmmEE9_M_valptrEv, .-_ZNSt13_Rb_tree_nodeISt4pairIKmmEE9_M_valptrEv
	.section	.text._ZSt7forwardImEOT_RNSt16remove_referenceIS0_E4typeE,"axG",@progbits,_ZSt7forwardImEOT_RNSt16remove_referenceIS0_E4typeE,comdat
	.weak	_ZSt7forwardImEOT_RNSt16remove_referenceIS0_E4typeE
	.type	_ZSt7forwardImEOT_RNSt16remove_referenceIS0_E4typeE, @function
_ZSt7forwardImEOT_RNSt16remove_referenceIS0_E4typeE:
.LFB3295:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3295:
	.size	_ZSt7forwardImEOT_RNSt16remove_referenceIS0_E4typeE, .-_ZSt7forwardImEOT_RNSt16remove_referenceIS0_E4typeE
	.section	.text._ZNSt5tupleIJOmEEC2IJmELb1EEEDpOT_,"axG",@progbits,_ZNSt5tupleIJOmEEC5IJmELb1EEEDpOT_,comdat
	.align 2
	.weak	_ZNSt5tupleIJOmEEC2IJmELb1EEEDpOT_
	.type	_ZNSt5tupleIJOmEEC2IJmELb1EEEDpOT_, @function
_ZNSt5tupleIJOmEEC2IJmELb1EEEDpOT_:
.LFB3297:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardImEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt11_Tuple_implILm0EJOmEEC2ImEEOT_
	nop
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3297:
	.size	_ZNSt5tupleIJOmEEC2IJmELb1EEEDpOT_, .-_ZNSt5tupleIJOmEEC2IJmELb1EEEDpOT_
	.weak	_ZNSt5tupleIJOmEEC1IJmELb1EEEDpOT_
	.set	_ZNSt5tupleIJOmEEC1IJmELb1EEEDpOT_,_ZNSt5tupleIJOmEEC2IJmELb1EEEDpOT_
	.section	.text._ZNSt11_Tuple_implILm0EJOmEEC2EOS1_,"axG",@progbits,_ZNSt11_Tuple_implILm0EJOmEEC5EOS1_,comdat
	.align 2
	.weak	_ZNSt11_Tuple_implILm0EJOmEEC2EOS1_
	.type	_ZNSt11_Tuple_implILm0EJOmEEC2EOS1_, @function
_ZNSt11_Tuple_implILm0EJOmEEC2EOS1_:
.LFB3300:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Tuple_implILm0EJOmEE7_M_headERS1_
	movq	%rax, %rdi
	call	_ZSt7forwardIOmEOT_RNSt16remove_referenceIS1_E4typeE
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt10_Head_baseILm0EOmLb0EEC2ImEEOT_
	nop
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3300:
	.size	_ZNSt11_Tuple_implILm0EJOmEEC2EOS1_, .-_ZNSt11_Tuple_implILm0EJOmEEC2EOS1_
	.weak	_ZNSt11_Tuple_implILm0EJOmEEC1EOS1_
	.set	_ZNSt11_Tuple_implILm0EJOmEEC1EOS1_,_ZNSt11_Tuple_implILm0EJOmEEC2EOS1_
	.section	.text._ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE,"axG",@progbits,_ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE,comdat
	.weak	_ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE
	.type	_ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE, @function
_ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE:
.LFB3302:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3302:
	.size	_ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE, .-_ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE
	.section	.text._ZSt7forwardISt5tupleIJOmEEEOT_RNSt16remove_referenceIS3_E4typeE,"axG",@progbits,_ZSt7forwardISt5tupleIJOmEEEOT_RNSt16remove_referenceIS3_E4typeE,comdat
	.weak	_ZSt7forwardISt5tupleIJOmEEEOT_RNSt16remove_referenceIS3_E4typeE
	.type	_ZSt7forwardISt5tupleIJOmEEEOT_RNSt16remove_referenceIS3_E4typeE, @function
_ZSt7forwardISt5tupleIJOmEEEOT_RNSt16remove_referenceIS3_E4typeE:
.LFB3303:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3303:
	.size	_ZSt7forwardISt5tupleIJOmEEEOT_RNSt16remove_referenceIS3_E4typeE, .-_ZSt7forwardISt5tupleIJOmEEEOT_RNSt16remove_referenceIS3_E4typeE
	.section	.text._ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE,"axG",@progbits,_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE,comdat
	.weak	_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE
	.type	_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE, @function
_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE:
.LFB3304:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3304:
	.size	_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE, .-_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE
	.section	.text._ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_create_nodeIJRKSt21piecewise_construct_tSt5tupleIJOmEESD_IJEEEEEPSt13_Rb_tree_nodeIS2_EDpOT_,"axG",@progbits,_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_create_nodeIJRKSt21piecewise_construct_tSt5tupleIJOmEESD_IJEEEEEPSt13_Rb_tree_nodeIS2_EDpOT_,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_create_nodeIJRKSt21piecewise_construct_tSt5tupleIJOmEESD_IJEEEEEPSt13_Rb_tree_nodeIS2_EDpOT_
	.type	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_create_nodeIJRKSt21piecewise_construct_tSt5tupleIJOmEESD_IJEEEEEPSt13_Rb_tree_nodeIS2_EDpOT_, @function
_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_create_nodeIJRKSt21piecewise_construct_tSt5tupleIJOmEESD_IJEEEEEPSt13_Rb_tree_nodeIS2_EDpOT_:
.LFB3305:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE11_M_get_nodeEv
	movq	%rax, -24(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE
	movq	%rax, %r12
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt5tupleIJOmEEEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %rbx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %rdx
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%r12, %r8
	movq	%rbx, %rcx
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJOmEESD_IJEEEEEvPSt13_Rb_tree_nodeIS2_EDpOT_
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3305:
	.size	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_create_nodeIJRKSt21piecewise_construct_tSt5tupleIJOmEESD_IJEEEEEPSt13_Rb_tree_nodeIS2_EDpOT_, .-_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_create_nodeIJRKSt21piecewise_construct_tSt5tupleIJOmEESD_IJEEEEEPSt13_Rb_tree_nodeIS2_EDpOT_
	.section	.text._ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_,"axG",@progbits,_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_
	.type	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_, @function
_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_:
.LFB3306:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt23_Rb_tree_const_iteratorISt4pairIKmmEE13_M_const_castEv
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rbx
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE6_M_endEv
	cmpq	%rax, %rbx
	sete	%al
	testb	%al, %al
	je	.L272
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE4sizeEv
	testq	%rax, %rax
	je	.L273
	movq	-88(%rbp), %rbx
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE12_M_rightmostEv
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE6_S_keyEPKSt18_Rb_tree_node_base
	movq	%rax, %rcx
	movq	-104(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movq	%rbx, %rdi
	call	_ZNKSt4lessImEclERKmS2_
	testb	%al, %al
	je	.L273
	movl	$1, %eax
	jmp	.L274
.L273:
	movl	$0, %eax
.L274:
	testb	%al, %al
	je	.L275
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE12_M_rightmostEv
	movq	%rax, %rdx
	movq	$0, -56(%rbp)
	leaq	-56(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC1IRS1_Lb1EEERKS1_OT_
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	jmp	.L287
.L275:
	movq	-104(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE24_M_get_insert_unique_posERS1_
	jmp	.L287
.L272:
	movq	-88(%rbp), %rbx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE6_S_keyEPKSt18_Rb_tree_node_base
	movq	%rax, %rdx
	movq	-104(%rbp), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNKSt4lessImEclERKmS2_
	testb	%al, %al
	je	.L277
	movq	-72(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-72(%rbp), %rbx
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE11_M_leftmostEv
	movq	(%rax), %rax
	cmpq	%rax, %rbx
	sete	%al
	testb	%al, %al
	je	.L278
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE11_M_leftmostEv
	movq	%rax, %rbx
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE11_M_leftmostEv
	movq	%rax, %rcx
	leaq	-48(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC1IRS1_S4_Lb1EEEOT_OT0_
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	jmp	.L287
.L278:
	movq	-88(%rbp), %rbx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt17_Rb_tree_iteratorISt4pairIKmmEEmmEv
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE6_S_keyEPKSt18_Rb_tree_node_base
	movq	%rax, %rcx
	movq	-104(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movq	%rbx, %rdi
	call	_ZNKSt4lessImEclERKmS2_
	testb	%al, %al
	je	.L280
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_S_rightEPSt18_Rb_tree_node_base
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	je	.L281
	movq	$0, -56(%rbp)
	leaq	-64(%rbp), %rdx
	leaq	-56(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC1IRS1_Lb1EEERKS1_OT_
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	jmp	.L287
.L281:
	leaq	-72(%rbp), %rdx
	leaq	-72(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC1IRS1_S4_Lb1EEEOT_OT0_
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	jmp	.L287
.L280:
	movq	-104(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE24_M_get_insert_unique_posERS1_
	jmp	.L287
.L277:
	movq	-88(%rbp), %rbx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE6_S_keyEPKSt18_Rb_tree_node_base
	movq	%rax, %rcx
	movq	-104(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movq	%rbx, %rdi
	call	_ZNKSt4lessImEclERKmS2_
	testb	%al, %al
	je	.L282
	movq	-72(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-72(%rbp), %rbx
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE12_M_rightmostEv
	movq	(%rax), %rax
	cmpq	%rax, %rbx
	sete	%al
	testb	%al, %al
	je	.L283
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE12_M_rightmostEv
	movq	%rax, %rdx
	movq	$0, -56(%rbp)
	leaq	-56(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC1IRS1_Lb1EEERKS1_OT_
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	jmp	.L287
.L283:
	movq	-88(%rbp), %rbx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt17_Rb_tree_iteratorISt4pairIKmmEEppEv
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE6_S_keyEPKSt18_Rb_tree_node_base
	movq	%rax, %rdx
	movq	-104(%rbp), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNKSt4lessImEclERKmS2_
	testb	%al, %al
	je	.L285
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_S_rightEPSt18_Rb_tree_node_base
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	je	.L286
	movq	$0, -56(%rbp)
	leaq	-72(%rbp), %rdx
	leaq	-56(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC1IRS1_Lb1EEERKS1_OT_
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	jmp	.L287
.L286:
	leaq	-64(%rbp), %rdx
	leaq	-64(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC1IRS1_S4_Lb1EEEOT_OT0_
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	jmp	.L287
.L285:
	movq	-104(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE24_M_get_insert_unique_posERS1_
	jmp	.L287
.L282:
	movq	$0, -56(%rbp)
	leaq	-56(%rbp), %rdx
	leaq	-72(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC1IRS1_Lb1EEEOT_RKS1_
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
.L287:
	movq	-24(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L288
	call	__stack_chk_fail@PLT
.L288:
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3306:
	.size	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_, .-_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_
	.section	.text._ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE6_S_keyEPKSt13_Rb_tree_nodeIS2_E,"axG",@progbits,_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE6_S_keyEPKSt13_Rb_tree_nodeIS2_E,comdat
	.weak	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE6_S_keyEPKSt13_Rb_tree_nodeIS2_E
	.type	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE6_S_keyEPKSt13_Rb_tree_nodeIS2_E, @function
_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE6_S_keyEPKSt13_Rb_tree_nodeIS2_E:
.LFB3323:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt13_Rb_tree_nodeISt4pairIKmmEE9_M_valptrEv
	movq	%rax, %rdx
	leaq	-9(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNKSt10_Select1stISt4pairIKmmEEclERKS2_
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L291
	call	__stack_chk_fail@PLT
.L291:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3323:
	.size	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE6_S_keyEPKSt13_Rb_tree_nodeIS2_E, .-_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE6_S_keyEPKSt13_Rb_tree_nodeIS2_E
	.section	.text._ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSA_PSt13_Rb_tree_nodeIS2_E,"axG",@progbits,_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSA_PSt13_Rb_tree_nodeIS2_E,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSA_PSt13_Rb_tree_nodeIS2_E
	.type	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSA_PSt13_Rb_tree_nodeIS2_E, @function
_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSA_PSt13_Rb_tree_nodeIS2_E:
.LFB3325:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$64, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	cmpq	$0, -64(%rbp)
	jne	.L293
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE6_M_endEv
	cmpq	%rax, -72(%rbp)
	je	.L293
	movq	-56(%rbp), %rbx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE6_S_keyEPKSt18_Rb_tree_node_base
	movq	%rax, %r12
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE6_S_keyEPKSt13_Rb_tree_nodeIS2_E
	movq	%r12, %rdx
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNKSt4lessImEclERKmS2_
	testb	%al, %al
	je	.L294
.L293:
	movl	$1, %eax
	jmp	.L295
.L294:
	movl	$0, %eax
.L295:
	movb	%al, -33(%rbp)
	movq	-56(%rbp), %rax
	leaq	8(%rax), %rcx
	movzbl	-33(%rbp), %eax
	movq	-72(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movl	%eax, %edi
	call	_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_@PLT
	movq	-56(%rbp), %rax
	movq	40(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-80(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt17_Rb_tree_iteratorISt4pairIKmmEEC1EPSt18_Rb_tree_node_base
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L297
	call	__stack_chk_fail@PLT
.L297:
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3325:
	.size	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSA_PSt13_Rb_tree_nodeIS2_E, .-_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSA_PSt13_Rb_tree_nodeIS2_E
	.section	.text._ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS2_E,"axG",@progbits,_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS2_E,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS2_E
	.type	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS2_E, @function
_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS2_E:
.LFB3326:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS2_E
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS2_E
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3326:
	.size	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS2_E, .-_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS2_E
	.section	.text._ZNSt17_Rb_tree_iteratorISt4pairIKmmEEC2EPSt18_Rb_tree_node_base,"axG",@progbits,_ZNSt17_Rb_tree_iteratorISt4pairIKmmEEC5EPSt18_Rb_tree_node_base,comdat
	.align 2
	.weak	_ZNSt17_Rb_tree_iteratorISt4pairIKmmEEC2EPSt18_Rb_tree_node_base
	.type	_ZNSt17_Rb_tree_iteratorISt4pairIKmmEEC2EPSt18_Rb_tree_node_base, @function
_ZNSt17_Rb_tree_iteratorISt4pairIKmmEEC2EPSt18_Rb_tree_node_base:
.LFB3328:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3328:
	.size	_ZNSt17_Rb_tree_iteratorISt4pairIKmmEEC2EPSt18_Rb_tree_node_base, .-_ZNSt17_Rb_tree_iteratorISt4pairIKmmEEC2EPSt18_Rb_tree_node_base
	.weak	_ZNSt17_Rb_tree_iteratorISt4pairIKmmEEC1EPSt18_Rb_tree_node_base
	.set	_ZNSt17_Rb_tree_iteratorISt4pairIKmmEEC1EPSt18_Rb_tree_node_base,_ZNSt17_Rb_tree_iteratorISt4pairIKmmEEC2EPSt18_Rb_tree_node_base
	.section	.text._ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKmmEEEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKmmEEEC5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKmmEEEC2Ev
	.type	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKmmEEEC2Ev, @function
_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKmmEEEC2Ev:
.LFB3331:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3331:
	.size	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKmmEEEC2Ev, .-_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKmmEEEC2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKmmEEEC1Ev
	.set	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKmmEEEC1Ev,_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKmmEEEC2Ev
	.section	.text._ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_S_rightEPSt18_Rb_tree_node_base,"axG",@progbits,_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_S_rightEPSt18_Rb_tree_node_base,comdat
	.weak	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_S_rightEPSt18_Rb_tree_node_base
	.type	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_S_rightEPSt18_Rb_tree_node_base, @function
_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_S_rightEPSt18_Rb_tree_node_base:
.LFB3333:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3333:
	.size	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_S_rightEPSt18_Rb_tree_node_base, .-_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_S_rightEPSt18_Rb_tree_node_base
	.section	.text._ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE7_S_leftEPSt18_Rb_tree_node_base,"axG",@progbits,_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE7_S_leftEPSt18_Rb_tree_node_base,comdat
	.weak	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE7_S_leftEPSt18_Rb_tree_node_base
	.type	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE7_S_leftEPSt18_Rb_tree_node_base, @function
_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE7_S_leftEPSt18_Rb_tree_node_base:
.LFB3334:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3334:
	.size	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE7_S_leftEPSt18_Rb_tree_node_base, .-_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE7_S_leftEPSt18_Rb_tree_node_base
	.section	.text._ZN9__gnu_cxx14__alloc_traitsISaISt13_Rb_tree_nodeISt4pairIKmmEEES5_E17_S_select_on_copyERKS6_,"axG",@progbits,_ZN9__gnu_cxx14__alloc_traitsISaISt13_Rb_tree_nodeISt4pairIKmmEEES5_E17_S_select_on_copyERKS6_,comdat
	.weak	_ZN9__gnu_cxx14__alloc_traitsISaISt13_Rb_tree_nodeISt4pairIKmmEEES5_E17_S_select_on_copyERKS6_
	.type	_ZN9__gnu_cxx14__alloc_traitsISaISt13_Rb_tree_nodeISt4pairIKmmEEES5_E17_S_select_on_copyERKS6_, @function
_ZN9__gnu_cxx14__alloc_traitsISaISt13_Rb_tree_nodeISt4pairIKmmEEES5_E17_S_select_on_copyERKS6_:
.LFB3338:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKmmEEEE37select_on_container_copy_constructionERKS5_
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L307
	call	__stack_chk_fail@PLT
.L307:
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3338:
	.size	_ZN9__gnu_cxx14__alloc_traitsISaISt13_Rb_tree_nodeISt4pairIKmmEEES5_E17_S_select_on_copyERKS6_, .-_ZN9__gnu_cxx14__alloc_traitsISaISt13_Rb_tree_nodeISt4pairIKmmEEES5_E17_S_select_on_copyERKS6_
	.section	.text._ZNSaISt13_Rb_tree_nodeISt4pairIKmmEEEC2ERKS4_,"axG",@progbits,_ZNSaISt13_Rb_tree_nodeISt4pairIKmmEEEC5ERKS4_,comdat
	.align 2
	.weak	_ZNSaISt13_Rb_tree_nodeISt4pairIKmmEEEC2ERKS4_
	.type	_ZNSaISt13_Rb_tree_nodeISt4pairIKmmEEEC2ERKS4_, @function
_ZNSaISt13_Rb_tree_nodeISt4pairIKmmEEEC2ERKS4_:
.LFB3340:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKmmEEEC2ERKS6_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3340:
	.size	_ZNSaISt13_Rb_tree_nodeISt4pairIKmmEEEC2ERKS4_, .-_ZNSaISt13_Rb_tree_nodeISt4pairIKmmEEEC2ERKS4_
	.weak	_ZNSaISt13_Rb_tree_nodeISt4pairIKmmEEEC1ERKS4_
	.set	_ZNSaISt13_Rb_tree_nodeISt4pairIKmmEEEC1ERKS4_,_ZNSaISt13_Rb_tree_nodeISt4pairIKmmEEEC2ERKS4_
	.section	.text._ZNSt20_Rb_tree_key_compareISt4lessImEEC2ERKS1_,"axG",@progbits,_ZNSt20_Rb_tree_key_compareISt4lessImEEC5ERKS1_,comdat
	.align 2
	.weak	_ZNSt20_Rb_tree_key_compareISt4lessImEEC2ERKS1_
	.type	_ZNSt20_Rb_tree_key_compareISt4lessImEEC2ERKS1_, @function
_ZNSt20_Rb_tree_key_compareISt4lessImEEC2ERKS1_:
.LFB3343:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3343:
	.size	_ZNSt20_Rb_tree_key_compareISt4lessImEEC2ERKS1_, .-_ZNSt20_Rb_tree_key_compareISt4lessImEEC2ERKS1_
	.weak	_ZNSt20_Rb_tree_key_compareISt4lessImEEC1ERKS1_
	.set	_ZNSt20_Rb_tree_key_compareISt4lessImEEC1ERKS1_,_ZNSt20_Rb_tree_key_compareISt4lessImEEC2ERKS1_
	.section	.text._ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE11_Alloc_nodeC2ERS8_,"axG",@progbits,_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE11_Alloc_nodeC5ERS8_,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE11_Alloc_nodeC2ERS8_
	.type	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE11_Alloc_nodeC2ERS8_, @function
_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE11_Alloc_nodeC2ERS8_:
.LFB3346:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3346:
	.size	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE11_Alloc_nodeC2ERS8_, .-_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE11_Alloc_nodeC2ERS8_
	.weak	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE11_Alloc_nodeC1ERS8_
	.set	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE11_Alloc_nodeC1ERS8_,_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE11_Alloc_nodeC2ERS8_
	.section	.text._ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE7_M_copyINS8_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS2_ERKS8_RT_,"axG",@progbits,_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE7_M_copyINS8_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS2_ERKS8_RT_,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE7_M_copyINS8_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS2_ERKS8_RT_
	.type	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE7_M_copyINS8_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS2_ERKS8_RT_, @function
_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE7_M_copyINS8_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS2_ERKS8_RT_:
.LFB3348:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE6_M_endEv
	movq	%rax, %rbx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_beginEv
	movq	%rax, %rsi
	movq	-56(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rbx, %rdx
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE7_M_copyINS8_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS2_EPKSC_PSt18_Rb_tree_node_baseRT_
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE11_M_leftmostEv
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE10_S_minimumEPSt18_Rb_tree_node_base
	movq	%rax, (%rbx)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE12_M_rightmostEv
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE10_S_maximumEPSt18_Rb_tree_node_base
	movq	%rax, (%rbx)
	movq	-48(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-24(%rbp), %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3348:
	.size	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE7_M_copyINS8_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS2_ERKS8_RT_, .-_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE7_M_copyINS8_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS2_ERKS8_RT_
	.section	.text._ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10deallocateEPS6_m,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10deallocateEPS6_m,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10deallocateEPS6_m
	.type	_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10deallocateEPS6_m, @function
_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10deallocateEPS6_m:
.LFB3381:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdlPv@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3381:
	.size	_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10deallocateEPS6_m, .-_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10deallocateEPS6_m
	.section	.text._ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_,"axG",@progbits,_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_,comdat
	.weak	_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_
	.type	_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_, @function
_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_:
.LFB3382:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
.L316:
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.L317
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt11__addressofINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEPT_RS6_
	movq	%rax, %rdi
	call	_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_
	addq	$32, -8(%rbp)
	jmp	.L316
.L317:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3382:
	.size	_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_, .-_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_
	.section	.text._ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8max_sizeEv,"axG",@progbits,_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8max_sizeEv,comdat
	.align 2
	.weak	_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8max_sizeEv
	.type	_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8max_sizeEv, @function
_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8max_sizeEv:
.LFB3383:
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
	call	_ZNKSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rdi
	call	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_max_sizeERKS6_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3383:
	.size	_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8max_sizeEv, .-_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8max_sizeEv
	.section	.text._ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4sizeEv,"axG",@progbits,_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4sizeEv
	.type	_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4sizeEv, @function
_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4sizeEv:
.LFB3384:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$5, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3384:
	.size	_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4sizeEv, .-_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4sizeEv
	.section	.text._ZSt3maxImERKT_S2_S2_,"axG",@progbits,_ZSt3maxImERKT_S2_S2_,comdat
	.weak	_ZSt3maxImERKT_S2_S2_
	.type	_ZSt3maxImERKT_S2_S2_, @function
_ZSt3maxImERKT_S2_S2_:
.LFB3385:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L323
	movq	-16(%rbp), %rax
	jmp	.L324
.L323:
	movq	-8(%rbp), %rax
.L324:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3385:
	.size	_ZSt3maxImERKT_S2_S2_, .-_ZSt3maxImERKT_S2_S2_
	.section	.text._ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8allocateERS6_m,"axG",@progbits,_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8allocateERS6_m,comdat
	.weak	_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8allocateERS6_m
	.type	_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8allocateERS6_m, @function
_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8allocateERS6_m:
.LFB3386:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3386:
	.size	_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8allocateERS6_m, .-_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8allocateERS6_m
	.section	.text._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_S_do_relocateEPS5_S8_S8_RS6_St17integral_constantIbLb1EE,"axG",@progbits,_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_S_do_relocateEPS5_S8_S8_RS6_St17integral_constantIbLb1EE,comdat
	.weak	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_S_do_relocateEPS5_S8_S8_RS6_St17integral_constantIbLb1EE
	.type	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_S_do_relocateEPS5_S8_S8_RS6_St17integral_constantIbLb1EE, @function
_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_S_do_relocateEPS5_S8_S8_RS6_St17integral_constantIbLb1EE:
.LFB3387:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__relocate_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3387:
	.size	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_S_do_relocateEPS5_S8_S8_RS6_St17integral_constantIbLb1EE, .-_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_S_do_relocateEPS5_S8_S8_RS6_St17integral_constantIbLb1EE
	.section	.text._ZSt32__make_move_if_noexcept_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt13move_iteratorIPS5_EET0_PT_,"axG",@progbits,_ZSt32__make_move_if_noexcept_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt13move_iteratorIPS5_EET0_PT_,comdat
	.weak	_ZSt32__make_move_if_noexcept_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt13move_iteratorIPS5_EET0_PT_
	.type	_ZSt32__make_move_if_noexcept_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt13move_iteratorIPS5_EET0_PT_, @function
_ZSt32__make_move_if_noexcept_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt13move_iteratorIPS5_EET0_PT_:
.LFB3388:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt13move_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC1ES6_
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L331
	call	__stack_chk_fail@PLT
.L331:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3388:
	.size	_ZSt32__make_move_if_noexcept_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt13move_iteratorIPS5_EET0_PT_, .-_ZSt32__make_move_if_noexcept_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt13move_iteratorIPS5_EET0_PT_
	.section	.text._ZSt22__uninitialized_copy_aISt13move_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_S6_ET0_T_SA_S9_RSaIT1_E,"axG",@progbits,_ZSt22__uninitialized_copy_aISt13move_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_S6_ET0_T_SA_S9_RSaIT1_E,comdat
	.weak	_ZSt22__uninitialized_copy_aISt13move_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_S6_ET0_T_SA_S9_RSaIT1_E
	.type	_ZSt22__uninitialized_copy_aISt13move_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_S6_ET0_T_SA_S9_RSaIT1_E, @function
_ZSt22__uninitialized_copy_aISt13move_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_S6_ET0_T_SA_S9_RSaIT1_E:
.LFB3389:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt18uninitialized_copyISt13move_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_ET0_T_SA_S9_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3389:
	.size	_ZSt22__uninitialized_copy_aISt13move_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_S6_ET0_T_SA_S9_RSaIT1_E, .-_ZSt22__uninitialized_copy_aISt13move_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_S6_ET0_T_SA_S9_RSaIT1_E
	.section	.text._ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7destroyIS6_EEvPT_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7destroyIS6_EEvPT_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7destroyIS6_EEvPT_
	.type	_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7destroyIS6_EEvPT_, @function
_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7destroyIS6_EEvPT_:
.LFB3390:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3390:
	.size	_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7destroyIS6_EEvPT_, .-_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7destroyIS6_EEvPT_
	.section	.text._ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE6_M_endEv,"axG",@progbits,_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE6_M_endEv,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE6_M_endEv
	.type	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE6_M_endEv, @function
_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE6_M_endEv:
.LFB3391:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3391:
	.size	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE6_M_endEv, .-_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE6_M_endEv
	.section	.text._ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_,"axG",@progbits,_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_
	.type	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_, @function
_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_:
.LFB3392:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
.L341:
	cmpq	$0, -48(%rbp)
	je	.L338
	movq	-40(%rbp), %rbx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE6_S_keyEPKSt13_Rb_tree_nodeIS2_E
	movq	%rax, %rcx
	movq	-64(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movq	%rbx, %rdi
	call	_ZNKSt4lessImEclERKmS2_
	xorl	$1, %eax
	testb	%al, %al
	je	.L339
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE7_S_leftEPSt18_Rb_tree_node_base
	movq	%rax, -48(%rbp)
	jmp	.L341
.L339:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_S_rightEPSt18_Rb_tree_node_base
	movq	%rax, -48(%rbp)
	jmp	.L341
.L338:
	movq	-56(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt17_Rb_tree_iteratorISt4pairIKmmEEC1EPSt18_Rb_tree_node_base
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L343
	call	__stack_chk_fail@PLT
.L343:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3392:
	.size	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_, .-_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_
	.section	.text._ZN9__gnu_cxx16__aligned_membufISt4pairIKmmEE6_M_ptrEv,"axG",@progbits,_ZN9__gnu_cxx16__aligned_membufISt4pairIKmmEE6_M_ptrEv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx16__aligned_membufISt4pairIKmmEE6_M_ptrEv
	.type	_ZN9__gnu_cxx16__aligned_membufISt4pairIKmmEE6_M_ptrEv, @function
_ZN9__gnu_cxx16__aligned_membufISt4pairIKmmEE6_M_ptrEv:
.LFB3393:
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
	call	_ZN9__gnu_cxx16__aligned_membufISt4pairIKmmEE7_M_addrEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3393:
	.size	_ZN9__gnu_cxx16__aligned_membufISt4pairIKmmEE6_M_ptrEv, .-_ZN9__gnu_cxx16__aligned_membufISt4pairIKmmEE6_M_ptrEv
	.section	.text._ZNSt11_Tuple_implILm0EJOmEEC2ImEEOT_,"axG",@progbits,_ZNSt11_Tuple_implILm0EJOmEEC5ImEEOT_,comdat
	.align 2
	.weak	_ZNSt11_Tuple_implILm0EJOmEEC2ImEEOT_
	.type	_ZNSt11_Tuple_implILm0EJOmEEC2ImEEOT_, @function
_ZNSt11_Tuple_implILm0EJOmEEC2ImEEOT_:
.LFB3395:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardImEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt10_Head_baseILm0EOmLb0EEC2ImEEOT_
	nop
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3395:
	.size	_ZNSt11_Tuple_implILm0EJOmEEC2ImEEOT_, .-_ZNSt11_Tuple_implILm0EJOmEEC2ImEEOT_
	.weak	_ZNSt11_Tuple_implILm0EJOmEEC1ImEEOT_
	.set	_ZNSt11_Tuple_implILm0EJOmEEC1ImEEOT_,_ZNSt11_Tuple_implILm0EJOmEEC2ImEEOT_
	.section	.text._ZNSt11_Tuple_implILm0EJOmEE7_M_headERS1_,"axG",@progbits,_ZNSt11_Tuple_implILm0EJOmEE7_M_headERS1_,comdat
	.weak	_ZNSt11_Tuple_implILm0EJOmEE7_M_headERS1_
	.type	_ZNSt11_Tuple_implILm0EJOmEE7_M_headERS1_, @function
_ZNSt11_Tuple_implILm0EJOmEE7_M_headERS1_:
.LFB3397:
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
	call	_ZNSt10_Head_baseILm0EOmLb0EE7_M_headERS1_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3397:
	.size	_ZNSt11_Tuple_implILm0EJOmEE7_M_headERS1_, .-_ZNSt11_Tuple_implILm0EJOmEE7_M_headERS1_
	.section	.text._ZSt7forwardIOmEOT_RNSt16remove_referenceIS1_E4typeE,"axG",@progbits,_ZSt7forwardIOmEOT_RNSt16remove_referenceIS1_E4typeE,comdat
	.weak	_ZSt7forwardIOmEOT_RNSt16remove_referenceIS1_E4typeE
	.type	_ZSt7forwardIOmEOT_RNSt16remove_referenceIS1_E4typeE, @function
_ZSt7forwardIOmEOT_RNSt16remove_referenceIS1_E4typeE:
.LFB3398:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3398:
	.size	_ZSt7forwardIOmEOT_RNSt16remove_referenceIS1_E4typeE, .-_ZSt7forwardIOmEOT_RNSt16remove_referenceIS1_E4typeE
	.section	.text._ZNSt10_Head_baseILm0EOmLb0EEC2ImEEOT_,"axG",@progbits,_ZNSt10_Head_baseILm0EOmLb0EEC5ImEEOT_,comdat
	.align 2
	.weak	_ZNSt10_Head_baseILm0EOmLb0EEC2ImEEOT_
	.type	_ZNSt10_Head_baseILm0EOmLb0EEC2ImEEOT_, @function
_ZNSt10_Head_baseILm0EOmLb0EEC2ImEEOT_:
.LFB3400:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardImEOT_RNSt16remove_referenceIS0_E4typeE
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3400:
	.size	_ZNSt10_Head_baseILm0EOmLb0EEC2ImEEOT_, .-_ZNSt10_Head_baseILm0EOmLb0EEC2ImEEOT_
	.weak	_ZNSt10_Head_baseILm0EOmLb0EEC1ImEEOT_
	.set	_ZNSt10_Head_baseILm0EOmLb0EEC1ImEEOT_,_ZNSt10_Head_baseILm0EOmLb0EEC2ImEEOT_
	.section	.text._ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE11_M_get_nodeEv,"axG",@progbits,_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE11_M_get_nodeEv,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE11_M_get_nodeEv
	.type	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE11_M_get_nodeEv, @function
_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE11_M_get_nodeEv:
.LFB3402:
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
	call	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE21_M_get_Node_allocatorEv
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKmmEEEE8allocateERS5_m
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3402:
	.size	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE11_M_get_nodeEv, .-_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE11_M_get_nodeEv
	.section	.text._ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJOmEESD_IJEEEEEvPSt13_Rb_tree_nodeIS2_EDpOT_,"axG",@progbits,_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJOmEESD_IJEEEEEvPSt13_Rb_tree_nodeIS2_EDpOT_,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJOmEESD_IJEEEEEvPSt13_Rb_tree_nodeIS2_EDpOT_
	.type	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJOmEESD_IJEEEEEvPSt13_Rb_tree_nodeIS2_EDpOT_, @function
_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJOmEESD_IJEEEEEvPSt13_Rb_tree_nodeIS2_EDpOT_:
.LFB3403:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3403
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movl	$48, %edi
	call	_ZnwmPv
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE
	movq	%rax, %r14
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt5tupleIJOmEEEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %r13
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %r12
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt13_Rb_tree_nodeISt4pairIKmmEE9_M_valptrEv
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE21_M_get_Node_allocatorEv
	movq	%r14, %r8
	movq	%r13, %rcx
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
.LEHB33:
	call	_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKmmEEEE9constructIS3_JRKSt21piecewise_construct_tSt5tupleIJOmEESB_IJEEEEEvRS5_PT_DpOT0_
.LEHE33:
	jmp	.L359
.L357:
	endbr64
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS2_E
.LEHB34:
	call	__cxa_rethrow@PLT
.LEHE34:
.L358:
	endbr64
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB35:
	call	_Unwind_Resume@PLT
.LEHE35:
.L359:
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3403:
	.section	.gcc_except_table
	.align 4
.LLSDA3403:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT3403-.LLSDATTD3403
.LLSDATTD3403:
	.byte	0x1
	.uleb128 .LLSDACSE3403-.LLSDACSB3403
.LLSDACSB3403:
	.uleb128 .LEHB33-.LFB3403
	.uleb128 .LEHE33-.LEHB33
	.uleb128 .L357-.LFB3403
	.uleb128 0x1
	.uleb128 .LEHB34-.LFB3403
	.uleb128 .LEHE34-.LEHB34
	.uleb128 .L358-.LFB3403
	.uleb128 0
	.uleb128 .LEHB35-.LFB3403
	.uleb128 .LEHE35-.LEHB35
	.uleb128 0
	.uleb128 0
.LLSDACSE3403:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT3403:
	.section	.text._ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJOmEESD_IJEEEEEvPSt13_Rb_tree_nodeIS2_EDpOT_,"axG",@progbits,_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJOmEESD_IJEEEEEvPSt13_Rb_tree_nodeIS2_EDpOT_,comdat
	.size	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJOmEESD_IJEEEEEvPSt13_Rb_tree_nodeIS2_EDpOT_, .-_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJOmEESD_IJEEEEEvPSt13_Rb_tree_nodeIS2_EDpOT_
	.section	.text._ZNKSt23_Rb_tree_const_iteratorISt4pairIKmmEE13_M_const_castEv,"axG",@progbits,_ZNKSt23_Rb_tree_const_iteratorISt4pairIKmmEE13_M_const_castEv,comdat
	.align 2
	.weak	_ZNKSt23_Rb_tree_const_iteratorISt4pairIKmmEE13_M_const_castEv
	.type	_ZNKSt23_Rb_tree_const_iteratorISt4pairIKmmEE13_M_const_castEv, @function
_ZNKSt23_Rb_tree_const_iteratorISt4pairIKmmEE13_M_const_castEv:
.LFB3404:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt17_Rb_tree_iteratorISt4pairIKmmEEC1EPSt18_Rb_tree_node_base
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L362
	call	__stack_chk_fail@PLT
.L362:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3404:
	.size	_ZNKSt23_Rb_tree_const_iteratorISt4pairIKmmEE13_M_const_castEv, .-_ZNKSt23_Rb_tree_const_iteratorISt4pairIKmmEE13_M_const_castEv
	.section	.text._ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE4sizeEv,"axG",@progbits,_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE4sizeEv
	.type	_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE4sizeEv, @function
_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE4sizeEv:
.LFB3405:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3405:
	.size	_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE4sizeEv, .-_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE4sizeEv
	.section	.text._ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE12_M_rightmostEv,"axG",@progbits,_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE12_M_rightmostEv,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE12_M_rightmostEv
	.type	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE12_M_rightmostEv, @function
_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE12_M_rightmostEv:
.LFB3406:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$32, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3406:
	.size	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE12_M_rightmostEv, .-_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE12_M_rightmostEv
	.section	.text._ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE6_S_keyEPKSt18_Rb_tree_node_base,"axG",@progbits,_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE6_S_keyEPKSt18_Rb_tree_node_base,comdat
	.weak	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE6_S_keyEPKSt18_Rb_tree_node_base
	.type	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE6_S_keyEPKSt18_Rb_tree_node_base, @function
_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE6_S_keyEPKSt18_Rb_tree_node_base:
.LFB3407:
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
	call	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE6_S_keyEPKSt13_Rb_tree_nodeIS2_E
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3407:
	.size	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE6_S_keyEPKSt18_Rb_tree_node_base, .-_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE6_S_keyEPKSt18_Rb_tree_node_base
	.section	.text._ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_Lb1EEERKS1_OT_,"axG",@progbits,_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC5IRS1_Lb1EEERKS1_OT_,comdat
	.align 2
	.weak	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_Lb1EEERKS1_OT_
	.type	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_Lb1EEERKS1_OT_, @function
_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_Lb1EEERKS1_OT_:
.LFB3409:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3409:
	.size	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_Lb1EEERKS1_OT_, .-_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_Lb1EEERKS1_OT_
	.weak	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC1IRS1_Lb1EEERKS1_OT_
	.set	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC1IRS1_Lb1EEERKS1_OT_,_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_Lb1EEERKS1_OT_
	.section	.text._ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE24_M_get_insert_unique_posERS1_,"axG",@progbits,_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE24_M_get_insert_unique_posERS1_,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE24_M_get_insert_unique_posERS1_
	.type	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE24_M_get_insert_unique_posERS1_, @function
_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE24_M_get_insert_unique_posERS1_:
.LFB3411:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_beginEv
	movq	%rax, -80(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE6_M_endEv
	movq	%rax, -72(%rbp)
	movb	$1, -81(%rbp)
.L374:
	movq	-80(%rbp), %rax
	testq	%rax, %rax
	je	.L371
	movq	-80(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-104(%rbp), %rbx
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE6_S_keyEPKSt13_Rb_tree_nodeIS2_E
	movq	%rax, %rdx
	movq	-112(%rbp), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNKSt4lessImEclERKmS2_
	movb	%al, -81(%rbp)
	cmpb	$0, -81(%rbp)
	je	.L372
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE7_S_leftEPSt18_Rb_tree_node_base
	jmp	.L373
.L372:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_S_rightEPSt18_Rb_tree_node_base
.L373:
	movq	%rax, -80(%rbp)
	jmp	.L374
.L371:
	movq	-72(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt17_Rb_tree_iteratorISt4pairIKmmEEC1EPSt18_Rb_tree_node_base
	cmpb	$0, -81(%rbp)
	je	.L375
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE5beginEv
	movq	%rax, -48(%rbp)
	leaq	-48(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSteqRKSt17_Rb_tree_iteratorISt4pairIKmmEES5_
	testb	%al, %al
	je	.L376
	leaq	-72(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC1IRPSt13_Rb_tree_nodeIS_IKmmEERS1_Lb1EEEOT_OT0_
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	jmp	.L379
.L376:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt17_Rb_tree_iteratorISt4pairIKmmEEmmEv
.L375:
	movq	-104(%rbp), %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE6_S_keyEPKSt18_Rb_tree_node_base
	movq	%rax, %rcx
	movq	-112(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movq	%rbx, %rdi
	call	_ZNKSt4lessImEclERKmS2_
	testb	%al, %al
	je	.L378
	leaq	-72(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC1IRPSt13_Rb_tree_nodeIS_IKmmEERS1_Lb1EEEOT_OT0_
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	jmp	.L379
.L378:
	movq	$0, -56(%rbp)
	leaq	-56(%rbp), %rdx
	leaq	-64(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC1IRS1_Lb1EEEOT_RKS1_
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
.L379:
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L380
	call	__stack_chk_fail@PLT
.L380:
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3411:
	.size	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE24_M_get_insert_unique_posERS1_, .-_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE24_M_get_insert_unique_posERS1_
	.section	.text._ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE11_M_leftmostEv,"axG",@progbits,_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE11_M_leftmostEv,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE11_M_leftmostEv
	.type	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE11_M_leftmostEv, @function
_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE11_M_leftmostEv:
.LFB3416:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$24, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3416:
	.size	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE11_M_leftmostEv, .-_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE11_M_leftmostEv
	.section	.text._ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_S4_Lb1EEEOT_OT0_,"axG",@progbits,_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC5IRS1_S4_Lb1EEEOT_OT0_,comdat
	.align 2
	.weak	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_S4_Lb1EEEOT_OT0_
	.type	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_S4_Lb1EEEOT_OT0_, @function
_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_S4_Lb1EEEOT_OT0_:
.LFB3418:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3418:
	.size	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_S4_Lb1EEEOT_OT0_, .-_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_S4_Lb1EEEOT_OT0_
	.weak	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC1IRS1_S4_Lb1EEEOT_OT0_
	.set	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC1IRS1_S4_Lb1EEEOT_OT0_,_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_S4_Lb1EEEOT_OT0_
	.section	.text._ZNSt17_Rb_tree_iteratorISt4pairIKmmEEmmEv,"axG",@progbits,_ZNSt17_Rb_tree_iteratorISt4pairIKmmEEmmEv,comdat
	.align 2
	.weak	_ZNSt17_Rb_tree_iteratorISt4pairIKmmEEmmEv
	.type	_ZNSt17_Rb_tree_iteratorISt4pairIKmmEEmmEv, @function
_ZNSt17_Rb_tree_iteratorISt4pairIKmmEEmmEv:
.LFB3420:
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
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3420:
	.size	_ZNSt17_Rb_tree_iteratorISt4pairIKmmEEmmEv, .-_ZNSt17_Rb_tree_iteratorISt4pairIKmmEEmmEv
	.section	.text._ZNSt17_Rb_tree_iteratorISt4pairIKmmEEppEv,"axG",@progbits,_ZNSt17_Rb_tree_iteratorISt4pairIKmmEEppEv,comdat
	.align 2
	.weak	_ZNSt17_Rb_tree_iteratorISt4pairIKmmEEppEv
	.type	_ZNSt17_Rb_tree_iteratorISt4pairIKmmEEppEv, @function
_ZNSt17_Rb_tree_iteratorISt4pairIKmmEEppEv:
.LFB3421:
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
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3421:
	.size	_ZNSt17_Rb_tree_iteratorISt4pairIKmmEEppEv, .-_ZNSt17_Rb_tree_iteratorISt4pairIKmmEEppEv
	.section	.text._ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_Lb1EEEOT_RKS1_,"axG",@progbits,_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC5IRS1_Lb1EEEOT_RKS1_,comdat
	.align 2
	.weak	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_Lb1EEEOT_RKS1_
	.type	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_Lb1EEEOT_RKS1_, @function
_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_Lb1EEEOT_RKS1_:
.LFB3423:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3423:
	.size	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_Lb1EEEOT_RKS1_, .-_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_Lb1EEEOT_RKS1_
	.weak	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC1IRS1_Lb1EEEOT_RKS1_
	.set	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC1IRS1_Lb1EEEOT_RKS1_,_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_Lb1EEEOT_RKS1_
	.section	.text._ZNKSt13_Rb_tree_nodeISt4pairIKmmEE9_M_valptrEv,"axG",@progbits,_ZNKSt13_Rb_tree_nodeISt4pairIKmmEE9_M_valptrEv,comdat
	.align 2
	.weak	_ZNKSt13_Rb_tree_nodeISt4pairIKmmEE9_M_valptrEv
	.type	_ZNKSt13_Rb_tree_nodeISt4pairIKmmEE9_M_valptrEv, @function
_ZNKSt13_Rb_tree_nodeISt4pairIKmmEE9_M_valptrEv:
.LFB3425:
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
	addq	$32, %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx16__aligned_membufISt4pairIKmmEE6_M_ptrEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3425:
	.size	_ZNKSt13_Rb_tree_nodeISt4pairIKmmEE9_M_valptrEv, .-_ZNKSt13_Rb_tree_nodeISt4pairIKmmEE9_M_valptrEv
	.section	.text._ZNKSt10_Select1stISt4pairIKmmEEclERKS2_,"axG",@progbits,_ZNKSt10_Select1stISt4pairIKmmEEclERKS2_,comdat
	.align 2
	.weak	_ZNKSt10_Select1stISt4pairIKmmEEclERKS2_
	.type	_ZNKSt10_Select1stISt4pairIKmmEEclERKS2_, @function
_ZNKSt10_Select1stISt4pairIKmmEEclERKS2_:
.LFB3426:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3426:
	.size	_ZNKSt10_Select1stISt4pairIKmmEEclERKS2_, .-_ZNKSt10_Select1stISt4pairIKmmEEclERKS2_
	.section	.text._ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS2_E,"axG",@progbits,_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS2_E,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS2_E
	.type	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS2_E, @function
_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS2_E:
.LFB3427:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt13_Rb_tree_nodeISt4pairIKmmEE9_M_valptrEv
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE21_M_get_Node_allocatorEv
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKmmEEEE7destroyIS3_EEvRS5_PT_
	nop
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3427:
	.size	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS2_E, .-_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS2_E
	.section	.text._ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS2_E,"axG",@progbits,_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS2_E,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS2_E
	.type	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS2_E, @function
_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS2_E:
.LFB3428:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3428
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE21_M_get_Node_allocatorEv
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKmmEEEE10deallocateERS5_PS4_m
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3428:
	.section	.gcc_except_table
.LLSDA3428:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3428-.LLSDACSB3428
.LLSDACSB3428:
.LLSDACSE3428:
	.section	.text._ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS2_E,"axG",@progbits,_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS2_E,comdat
	.size	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS2_E, .-_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS2_E
	.section	.text._ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKmmEEEE37select_on_container_copy_constructionERKS5_,"axG",@progbits,_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKmmEEEE37select_on_container_copy_constructionERKS5_,comdat
	.weak	_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKmmEEEE37select_on_container_copy_constructionERKS5_
	.type	_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKmmEEEE37select_on_container_copy_constructionERKS5_, @function
_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKmmEEEE37select_on_container_copy_constructionERKS5_:
.LFB3430:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSaISt13_Rb_tree_nodeISt4pairIKmmEEEC1ERKS4_
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3430:
	.size	_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKmmEEEE37select_on_container_copy_constructionERKS5_, .-_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKmmEEEE37select_on_container_copy_constructionERKS5_
	.section	.text._ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKmmEEEC2ERKS6_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKmmEEEC5ERKS6_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKmmEEEC2ERKS6_
	.type	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKmmEEEC2ERKS6_, @function
_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKmmEEEC2ERKS6_:
.LFB3432:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3432:
	.size	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKmmEEEC2ERKS6_, .-_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKmmEEEC2ERKS6_
	.weak	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKmmEEEC1ERKS6_
	.set	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKmmEEEC1ERKS6_,_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKmmEEEC2ERKS6_
	.section	.text._ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_beginEv,"axG",@progbits,_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_beginEv,comdat
	.align 2
	.weak	_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_beginEv
	.type	_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_beginEv, @function
_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_beginEv:
.LFB3434:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3434:
	.size	_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_beginEv, .-_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_beginEv
	.section	.text._ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE7_M_copyINS8_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS2_EPKSC_PSt18_Rb_tree_node_baseRT_,"axG",@progbits,_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE7_M_copyINS8_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS2_EPKSC_PSt18_Rb_tree_node_baseRT_,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE7_M_copyINS8_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS2_EPKSC_PSt18_Rb_tree_node_baseRT_
	.type	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE7_M_copyINS8_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS2_EPKSC_PSt18_Rb_tree_node_baseRT_, @function
_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE7_M_copyINS8_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS2_EPKSC_PSt18_Rb_tree_node_baseRT_:
.LFB3435:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3435
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB36:
	call	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE13_M_clone_nodeINS8_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS2_EPKSC_RT_
.LEHE36:
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L401
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_S_rightEPKSt18_Rb_tree_node_base
	movq	%rax, %rsi
	movq	-64(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
.LEHB37:
	call	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE7_M_copyINS8_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS2_EPKSC_PSt18_Rb_tree_node_baseRT_
	movq	-32(%rbp), %rdx
	movq	%rax, 24(%rdx)
.L401:
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE7_S_leftEPKSt18_Rb_tree_node_base
	movq	%rax, -48(%rbp)
.L404:
	cmpq	$0, -48(%rbp)
	je	.L402
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE13_M_clone_nodeINS8_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS2_EPKSC_RT_
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-24(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L403
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_S_rightEPKSt18_Rb_tree_node_base
	movq	%rax, %rsi
	movq	-64(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE7_M_copyINS8_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS2_EPKSC_PSt18_Rb_tree_node_baseRT_
.LEHE37:
	movq	-24(%rbp), %rdx
	movq	%rax, 24(%rdx)
.L403:
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE7_S_leftEPKSt18_Rb_tree_node_base
	movq	%rax, -48(%rbp)
	jmp	.L404
.L402:
	movq	-32(%rbp), %rax
	jmp	.L410
.L408:
	endbr64
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB38:
	call	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E
	call	__cxa_rethrow@PLT
.LEHE38:
.L409:
	endbr64
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB39:
	call	_Unwind_Resume@PLT
.LEHE39:
.L410:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3435:
	.section	.gcc_except_table
	.align 4
.LLSDA3435:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT3435-.LLSDATTD3435
.LLSDATTD3435:
	.byte	0x1
	.uleb128 .LLSDACSE3435-.LLSDACSB3435
.LLSDACSB3435:
	.uleb128 .LEHB36-.LFB3435
	.uleb128 .LEHE36-.LEHB36
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB37-.LFB3435
	.uleb128 .LEHE37-.LEHB37
	.uleb128 .L408-.LFB3435
	.uleb128 0x1
	.uleb128 .LEHB38-.LFB3435
	.uleb128 .LEHE38-.LEHB38
	.uleb128 .L409-.LFB3435
	.uleb128 0
	.uleb128 .LEHB39-.LFB3435
	.uleb128 .LEHE39-.LEHB39
	.uleb128 0
	.uleb128 0
.LLSDACSE3435:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT3435:
	.section	.text._ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE7_M_copyINS8_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS2_EPKSC_PSt18_Rb_tree_node_baseRT_,"axG",@progbits,_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE7_M_copyINS8_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS2_EPKSC_PSt18_Rb_tree_node_baseRT_,comdat
	.size	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE7_M_copyINS8_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS2_EPKSC_PSt18_Rb_tree_node_baseRT_, .-_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE7_M_copyINS8_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS2_EPKSC_PSt18_Rb_tree_node_baseRT_
	.section	.text._ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE10_S_minimumEPSt18_Rb_tree_node_base,"axG",@progbits,_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE10_S_minimumEPSt18_Rb_tree_node_base,comdat
	.weak	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE10_S_minimumEPSt18_Rb_tree_node_base
	.type	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE10_S_minimumEPSt18_Rb_tree_node_base, @function
_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE10_S_minimumEPSt18_Rb_tree_node_base:
.LFB3436:
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
	call	_ZNSt18_Rb_tree_node_base10_S_minimumEPS_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3436:
	.size	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE10_S_minimumEPSt18_Rb_tree_node_base, .-_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE10_S_minimumEPSt18_Rb_tree_node_base
	.section	.text._ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE10_S_maximumEPSt18_Rb_tree_node_base,"axG",@progbits,_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE10_S_maximumEPSt18_Rb_tree_node_base,comdat
	.weak	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE10_S_maximumEPSt18_Rb_tree_node_base
	.type	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE10_S_maximumEPSt18_Rb_tree_node_base, @function
_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE10_S_maximumEPSt18_Rb_tree_node_base:
.LFB3437:
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
	call	_ZNSt18_Rb_tree_node_base10_S_maximumEPS_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3437:
	.size	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE10_S_maximumEPSt18_Rb_tree_node_base, .-_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE10_S_maximumEPSt18_Rb_tree_node_base
	.section	.text._ZSt11__addressofINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEPT_RS6_,"axG",@progbits,_ZSt11__addressofINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEPT_RS6_,comdat
	.weak	_ZSt11__addressofINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEPT_RS6_
	.type	_ZSt11__addressofINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEPT_RS6_, @function
_ZSt11__addressofINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEPT_RS6_:
.LFB3466:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3466:
	.size	_ZSt11__addressofINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEPT_RS6_, .-_ZSt11__addressofINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEPT_RS6_
	.section	.text._ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_,"axG",@progbits,_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_,comdat
	.weak	_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_
	.type	_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_, @function
_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_:
.LFB3467:
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
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3467:
	.size	_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_, .-_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_
	.section	.text._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_max_sizeERKS6_,"axG",@progbits,_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_max_sizeERKS6_,comdat
	.weak	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_max_sizeERKS6_
	.type	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_max_sizeERKS6_, @function
_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_max_sizeERKS6_:
.LFB3468:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movabsq	$288230376151711743, %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8max_sizeERKS6_
	movq	%rax, -16(%rbp)
	leaq	-16(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt3minImERKT_S2_S2_
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L420
	call	__stack_chk_fail@PLT
.L420:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3468:
	.size	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_max_sizeERKS6_, .-_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_max_sizeERKS6_
	.section	.text._ZNKSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNKSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNKSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv
	.type	_ZNKSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv, @function
_ZNKSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv:
.LFB3469:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3469:
	.size	_ZNKSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv, .-_ZNKSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv
	.section	.text._ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv
	.type	_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv, @function
_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv:
.LFB3470:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8max_sizeEv
	cmpq	%rax, -16(%rbp)
	seta	%al
	testb	%al, %al
	je	.L424
	call	_ZSt17__throw_bad_allocv@PLT
.L424:
	movq	-16(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdi
	call	_Znwm@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3470:
	.size	_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv, .-_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv
	.section	.text._ZSt12__relocate_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_,"axG",@progbits,_ZSt12__relocate_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_,comdat
	.weak	_ZSt12__relocate_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_
	.type	_ZSt12__relocate_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_, @function
_ZSt12__relocate_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_:
.LFB3471:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_S7_
	movq	%rax, %r12
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_S7_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_S7_
	movq	%rax, %rdi
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	movq	%r12, %rdx
	movq	%rbx, %rsi
	call	_ZSt14__relocate_a_1IPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3471:
	.size	_ZSt12__relocate_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_, .-_ZSt12__relocate_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_
	.section	.text._ZNSt13move_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ES6_,"axG",@progbits,_ZNSt13move_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC5ES6_,comdat
	.align 2
	.weak	_ZNSt13move_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ES6_
	.type	_ZNSt13move_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ES6_, @function
_ZNSt13move_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ES6_:
.LFB3473:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3473:
	.size	_ZNSt13move_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ES6_, .-_ZNSt13move_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ES6_
	.weak	_ZNSt13move_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC1ES6_
	.set	_ZNSt13move_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC1ES6_,_ZNSt13move_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ES6_
	.section	.text._ZSt18uninitialized_copyISt13move_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_ET0_T_SA_S9_,"axG",@progbits,_ZSt18uninitialized_copyISt13move_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_ET0_T_SA_S9_,comdat
	.weak	_ZSt18uninitialized_copyISt13move_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_ET0_T_SA_S9_
	.type	_ZSt18uninitialized_copyISt13move_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_ET0_T_SA_S9_, @function
_ZSt18uninitialized_copyISt13move_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_ET0_T_SA_S9_:
.LFB3475:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movb	$1, -1(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES9_EET0_T_SC_SB_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3475:
	.size	_ZSt18uninitialized_copyISt13move_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_ET0_T_SA_S9_, .-_ZSt18uninitialized_copyISt13move_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_ET0_T_SA_S9_
	.section	.text._ZN9__gnu_cxx16__aligned_membufISt4pairIKmmEE7_M_addrEv,"axG",@progbits,_ZN9__gnu_cxx16__aligned_membufISt4pairIKmmEE7_M_addrEv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx16__aligned_membufISt4pairIKmmEE7_M_addrEv
	.type	_ZN9__gnu_cxx16__aligned_membufISt4pairIKmmEE7_M_addrEv, @function
_ZN9__gnu_cxx16__aligned_membufISt4pairIKmmEE7_M_addrEv:
.LFB3479:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3479:
	.size	_ZN9__gnu_cxx16__aligned_membufISt4pairIKmmEE7_M_addrEv, .-_ZN9__gnu_cxx16__aligned_membufISt4pairIKmmEE7_M_addrEv
	.section	.text._ZNSt10_Head_baseILm0EOmLb0EE7_M_headERS1_,"axG",@progbits,_ZNSt10_Head_baseILm0EOmLb0EE7_M_headERS1_,comdat
	.weak	_ZNSt10_Head_baseILm0EOmLb0EE7_M_headERS1_
	.type	_ZNSt10_Head_baseILm0EOmLb0EE7_M_headERS1_, @function
_ZNSt10_Head_baseILm0EOmLb0EE7_M_headERS1_:
.LFB3480:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3480:
	.size	_ZNSt10_Head_baseILm0EOmLb0EE7_M_headERS1_, .-_ZNSt10_Head_baseILm0EOmLb0EE7_M_headERS1_
	.section	.text._ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE21_M_get_Node_allocatorEv,"axG",@progbits,_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE21_M_get_Node_allocatorEv,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE21_M_get_Node_allocatorEv
	.type	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE21_M_get_Node_allocatorEv, @function
_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE21_M_get_Node_allocatorEv:
.LFB3481:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3481:
	.size	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE21_M_get_Node_allocatorEv, .-_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE21_M_get_Node_allocatorEv
	.section	.text._ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKmmEEEE8allocateERS5_m,"axG",@progbits,_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKmmEEEE8allocateERS5_m,comdat
	.weak	_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKmmEEEE8allocateERS5_m
	.type	_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKmmEEEE8allocateERS5_m, @function
_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKmmEEEE8allocateERS5_m:
.LFB3482:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKmmEEE8allocateEmPKv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3482:
	.size	_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKmmEEEE8allocateERS5_m, .-_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKmmEEEE8allocateERS5_m
	.section	.text._ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKmmEEEE9constructIS3_JRKSt21piecewise_construct_tSt5tupleIJOmEESB_IJEEEEEvRS5_PT_DpOT0_,"axG",@progbits,_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKmmEEEE9constructIS3_JRKSt21piecewise_construct_tSt5tupleIJOmEESB_IJEEEEEvRS5_PT_DpOT0_,comdat
	.weak	_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKmmEEEE9constructIS3_JRKSt21piecewise_construct_tSt5tupleIJOmEESB_IJEEEEEvRS5_PT_DpOT0_
	.type	_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKmmEEEE9constructIS3_JRKSt21piecewise_construct_tSt5tupleIJOmEESB_IJEEEEEvRS5_PT_DpOT0_, @function
_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKmmEEEE9constructIS3_JRKSt21piecewise_construct_tSt5tupleIJOmEESB_IJEEEEEvRS5_PT_DpOT0_:
.LFB3483:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE
	movq	%rax, %r12
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt5tupleIJOmEEEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%r12, %r8
	movq	%rbx, %rcx
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKmmEEE9constructIS4_JRKSt21piecewise_construct_tSt5tupleIJOmEESB_IJEEEEEvPT_DpOT0_
	nop
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3483:
	.size	_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKmmEEEE9constructIS3_JRKSt21piecewise_construct_tSt5tupleIJOmEESB_IJEEEEEvRS5_PT_DpOT0_, .-_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKmmEEEE9constructIS3_JRKSt21piecewise_construct_tSt5tupleIJOmEESB_IJEEEEEvRS5_PT_DpOT0_
	.section	.text._ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE,"axG",@progbits,_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE,comdat
	.weak	_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE
	.type	_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE, @function
_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE:
.LFB3484:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3484:
	.size	_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE, .-_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE
	.section	.text._ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE5beginEv,"axG",@progbits,_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE5beginEv,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE5beginEv
	.type	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE5beginEv, @function
_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE5beginEv:
.LFB3485:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt17_Rb_tree_iteratorISt4pairIKmmEEC1EPSt18_Rb_tree_node_base
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L444
	call	__stack_chk_fail@PLT
.L444:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3485:
	.size	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE5beginEv, .-_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE5beginEv
	.section	.text._ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIS_IKmmEERS1_Lb1EEEOT_OT0_,"axG",@progbits,_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC5IRPSt13_Rb_tree_nodeIS_IKmmEERS1_Lb1EEEOT_OT0_,comdat
	.align 2
	.weak	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIS_IKmmEERS1_Lb1EEEOT_OT0_
	.type	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIS_IKmmEERS1_Lb1EEEOT_OT0_, @function
_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIS_IKmmEERS1_Lb1EEEOT_OT0_:
.LFB3487:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRPSt13_Rb_tree_nodeISt4pairIKmmEEEOT_RNSt16remove_referenceIS7_E4typeE
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3487:
	.size	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIS_IKmmEERS1_Lb1EEEOT_OT0_, .-_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIS_IKmmEERS1_Lb1EEEOT_OT0_
	.weak	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC1IRPSt13_Rb_tree_nodeIS_IKmmEERS1_Lb1EEEOT_OT0_
	.set	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC1IRPSt13_Rb_tree_nodeIS_IKmmEERS1_Lb1EEEOT_OT0_,_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIS_IKmmEERS1_Lb1EEEOT_OT0_
	.section	.text._ZNK9__gnu_cxx16__aligned_membufISt4pairIKmmEE6_M_ptrEv,"axG",@progbits,_ZNK9__gnu_cxx16__aligned_membufISt4pairIKmmEE6_M_ptrEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx16__aligned_membufISt4pairIKmmEE6_M_ptrEv
	.type	_ZNK9__gnu_cxx16__aligned_membufISt4pairIKmmEE6_M_ptrEv, @function
_ZNK9__gnu_cxx16__aligned_membufISt4pairIKmmEE6_M_ptrEv:
.LFB3489:
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
	call	_ZNK9__gnu_cxx16__aligned_membufISt4pairIKmmEE7_M_addrEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3489:
	.size	_ZNK9__gnu_cxx16__aligned_membufISt4pairIKmmEE6_M_ptrEv, .-_ZNK9__gnu_cxx16__aligned_membufISt4pairIKmmEE6_M_ptrEv
	.section	.text._ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKmmEEEE7destroyIS3_EEvRS5_PT_,"axG",@progbits,_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKmmEEEE7destroyIS3_EEvRS5_PT_,comdat
	.weak	_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKmmEEEE7destroyIS3_EEvRS5_PT_
	.type	_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKmmEEEE7destroyIS3_EEvRS5_PT_, @function
_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKmmEEEE7destroyIS3_EEvRS5_PT_:
.LFB3490:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKmmEEE7destroyIS4_EEvPT_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3490:
	.size	_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKmmEEEE7destroyIS3_EEvRS5_PT_, .-_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKmmEEEE7destroyIS3_EEvRS5_PT_
	.section	.text._ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKmmEEEE10deallocateERS5_PS4_m,"axG",@progbits,_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKmmEEEE10deallocateERS5_PS4_m,comdat
	.weak	_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKmmEEEE10deallocateERS5_PS4_m
	.type	_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKmmEEEE10deallocateERS5_PS4_m, @function
_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKmmEEEE10deallocateERS5_PS4_m:
.LFB3491:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKmmEEE10deallocateEPS5_m
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3491:
	.size	_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKmmEEEE10deallocateERS5_PS4_m, .-_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKmmEEEE10deallocateERS5_PS4_m
	.section	.text._ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE13_M_clone_nodeINS8_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS2_EPKSC_RT_,"axG",@progbits,_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE13_M_clone_nodeINS8_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS2_EPKSC_RT_,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE13_M_clone_nodeINS8_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS2_EPKSC_RT_
	.type	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE13_M_clone_nodeINS8_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS2_EPKSC_RT_, @function
_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE13_M_clone_nodeINS8_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS2_EPKSC_RT_:
.LFB3495:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt13_Rb_tree_nodeISt4pairIKmmEE9_M_valptrEv
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE11_Alloc_nodeclIRKS2_EEPSt13_Rb_tree_nodeIS2_EOT_
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3495:
	.size	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE13_M_clone_nodeINS8_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS2_EPKSC_RT_, .-_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE13_M_clone_nodeINS8_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS2_EPKSC_RT_
	.section	.text._ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_S_rightEPKSt18_Rb_tree_node_base,"axG",@progbits,_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_S_rightEPKSt18_Rb_tree_node_base,comdat
	.weak	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_S_rightEPKSt18_Rb_tree_node_base
	.type	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_S_rightEPKSt18_Rb_tree_node_base, @function
_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_S_rightEPKSt18_Rb_tree_node_base:
.LFB3496:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3496:
	.size	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_S_rightEPKSt18_Rb_tree_node_base, .-_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_S_rightEPKSt18_Rb_tree_node_base
	.section	.text._ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE7_S_leftEPKSt18_Rb_tree_node_base,"axG",@progbits,_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE7_S_leftEPKSt18_Rb_tree_node_base,comdat
	.weak	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE7_S_leftEPKSt18_Rb_tree_node_base
	.type	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE7_S_leftEPKSt18_Rb_tree_node_base, @function
_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE7_S_leftEPKSt18_Rb_tree_node_base:
.LFB3497:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3497:
	.size	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE7_S_leftEPKSt18_Rb_tree_node_base, .-_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE7_S_leftEPKSt18_Rb_tree_node_base
	.section	.text._ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8max_sizeERKS6_,"axG",@progbits,_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8max_sizeERKS6_,comdat
	.weak	_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8max_sizeERKS6_
	.type	_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8max_sizeERKS6_, @function
_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8max_sizeERKS6_:
.LFB3522:
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
	call	_ZNK9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8max_sizeEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3522:
	.size	_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8max_sizeERKS6_, .-_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8max_sizeERKS6_
	.section	.text._ZSt3minImERKT_S2_S2_,"axG",@progbits,_ZSt3minImERKT_S2_S2_,comdat
	.weak	_ZSt3minImERKT_S2_S2_
	.type	_ZSt3minImERKT_S2_S2_, @function
_ZSt3minImERKT_S2_S2_:
.LFB3523:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L459
	movq	-16(%rbp), %rax
	jmp	.L460
.L459:
	movq	-8(%rbp), %rax
.L460:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3523:
	.size	_ZSt3minImERKT_S2_S2_, .-_ZSt3minImERKT_S2_S2_
	.section	.text._ZNK9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8max_sizeEv:
.LFB3524:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movabsq	$288230376151711743, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3524:
	.size	_ZNK9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8max_sizeEv
	.section	.text._ZSt12__niter_baseIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_S7_,"axG",@progbits,_ZSt12__niter_baseIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_S7_,comdat
	.weak	_ZSt12__niter_baseIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_S7_
	.type	_ZSt12__niter_baseIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_S7_, @function
_ZSt12__niter_baseIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_S7_:
.LFB3525:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3525:
	.size	_ZSt12__niter_baseIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_S7_, .-_ZSt12__niter_baseIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_S7_
	.section	.text._ZSt14__relocate_a_1IPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_,"axG",@progbits,_ZSt14__relocate_a_1IPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_,comdat
	.weak	_ZSt14__relocate_a_1IPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_
	.type	_ZSt14__relocate_a_1IPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_, @function
_ZSt14__relocate_a_1IPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_:
.LFB3526:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
.L467:
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	.L466
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt11__addressofINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEPT_RS6_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt11__addressofINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEPT_RS6_
	movq	%rax, %rcx
	movq	-64(%rbp), %rax
	movq	%rax, %rdx
	movq	%rbx, %rsi
	movq	%rcx, %rdi
	call	_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_
	addq	$32, -40(%rbp)
	addq	$32, -24(%rbp)
	jmp	.L467
.L466:
	movq	-24(%rbp), %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3526:
	.size	_ZSt14__relocate_a_1IPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_, .-_ZSt14__relocate_a_1IPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_
	.section	.text._ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES9_EET0_T_SC_SB_,"axG",@progbits,_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES9_EET0_T_SC_SB_,comdat
	.weak	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES9_EET0_T_SC_SB_
	.type	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES9_EET0_T_SC_SB_, @function
_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES9_EET0_T_SC_SB_:
.LFB3527:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3527
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
.L471:
	leaq	-48(%rbp), %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB40:
	call	_ZStneIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEbRKSt13move_iteratorIT_ESB_
.LEHE40:
	testb	%al, %al
	je	.L470
	leaq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt13move_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt11__addressofINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEPT_RS6_
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_
	leaq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt13move_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv
	addq	$32, -24(%rbp)
	jmp	.L471
.L470:
	movq	-24(%rbp), %rax
	jmp	.L477
.L475:
	endbr64
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	movq	-24(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB41:
	call	_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_
	call	__cxa_rethrow@PLT
.LEHE41:
.L476:
	endbr64
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB42:
	call	_Unwind_Resume@PLT
.LEHE42:
.L477:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3527:
	.section	.gcc_except_table
	.align 4
.LLSDA3527:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT3527-.LLSDATTD3527
.LLSDATTD3527:
	.byte	0x1
	.uleb128 .LLSDACSE3527-.LLSDACSB3527
.LLSDACSB3527:
	.uleb128 .LEHB40-.LFB3527
	.uleb128 .LEHE40-.LEHB40
	.uleb128 .L475-.LFB3527
	.uleb128 0x1
	.uleb128 .LEHB41-.LFB3527
	.uleb128 .LEHE41-.LEHB41
	.uleb128 .L476-.LFB3527
	.uleb128 0
	.uleb128 .LEHB42-.LFB3527
	.uleb128 .LEHE42-.LEHB42
	.uleb128 0
	.uleb128 0
.LLSDACSE3527:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT3527:
	.section	.text._ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES9_EET0_T_SC_SB_,"axG",@progbits,_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES9_EET0_T_SC_SB_,comdat
	.size	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES9_EET0_T_SC_SB_, .-_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES9_EET0_T_SC_SB_
	.section	.text._ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKmmEEE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKmmEEE8allocateEmPKv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKmmEEE8allocateEmPKv
	.type	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKmmEEE8allocateEmPKv, @function
_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKmmEEE8allocateEmPKv:
.LFB3528:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKmmEEE8max_sizeEv
	cmpq	%rax, -16(%rbp)
	seta	%al
	testb	%al, %al
	je	.L479
	call	_ZSt17__throw_bad_allocv@PLT
.L479:
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	%rax, %rdi
	call	_Znwm@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3528:
	.size	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKmmEEE8allocateEmPKv, .-_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKmmEEE8allocateEmPKv
	.section	.text._ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKmmEEE9constructIS4_JRKSt21piecewise_construct_tSt5tupleIJOmEESB_IJEEEEEvPT_DpOT0_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKmmEEE9constructIS4_JRKSt21piecewise_construct_tSt5tupleIJOmEESB_IJEEEEEvPT_DpOT0_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKmmEEE9constructIS4_JRKSt21piecewise_construct_tSt5tupleIJOmEESB_IJEEEEEvPT_DpOT0_
	.type	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKmmEEE9constructIS4_JRKSt21piecewise_construct_tSt5tupleIJOmEESB_IJEEEEEvPT_DpOT0_, @function
_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKmmEEE9constructIS4_JRKSt21piecewise_construct_tSt5tupleIJOmEESB_IJEEEEEvPT_DpOT0_:
.LFB3529:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3529
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%r8, -104(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -40(%rbp)
	xorl	%eax, %eax
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt5tupleIJOmEEEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt5tupleIJOmEEC1EOS1_
	leaq	-48(%rbp), %r13
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE
	movq	-80(%rbp), %rbx
	movq	%rbx, %rsi
	movl	$16, %edi
	call	_ZnwmPv
	movq	%rax, %r12
	movq	%r13, %rsi
	movq	%r12, %rdi
.LEHB43:
	call	_ZNSt4pairIKmmEC1IJOmEJEEESt21piecewise_construct_tSt5tupleIJDpT_EES5_IJDpT0_EE
.LEHE43:
	jmp	.L485
.L484:
	endbr64
	movq	%rax, %r13
	movq	%rbx, %rsi
	movq	%r12, %rdi
	call	_ZdlPvS_
	movq	%r13, %rax
	movq	%rax, %rdi
.LEHB44:
	call	_Unwind_Resume@PLT
.LEHE44:
.L485:
	movq	-40(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L483
	call	__stack_chk_fail@PLT
.L483:
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3529:
	.section	.gcc_except_table
.LLSDA3529:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3529-.LLSDACSB3529
.LLSDACSB3529:
	.uleb128 .LEHB43-.LFB3529
	.uleb128 .LEHE43-.LEHB43
	.uleb128 .L484-.LFB3529
	.uleb128 0
	.uleb128 .LEHB44-.LFB3529
	.uleb128 .LEHE44-.LEHB44
	.uleb128 0
	.uleb128 0
.LLSDACSE3529:
	.section	.text._ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKmmEEE9constructIS4_JRKSt21piecewise_construct_tSt5tupleIJOmEESB_IJEEEEEvPT_DpOT0_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKmmEEE9constructIS4_JRKSt21piecewise_construct_tSt5tupleIJOmEESB_IJEEEEEvPT_DpOT0_,comdat
	.size	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKmmEEE9constructIS4_JRKSt21piecewise_construct_tSt5tupleIJOmEESB_IJEEEEEvPT_DpOT0_, .-_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKmmEEE9constructIS4_JRKSt21piecewise_construct_tSt5tupleIJOmEESB_IJEEEEEvPT_DpOT0_
	.section	.text._ZSt7forwardIRPSt13_Rb_tree_nodeISt4pairIKmmEEEOT_RNSt16remove_referenceIS7_E4typeE,"axG",@progbits,_ZSt7forwardIRPSt13_Rb_tree_nodeISt4pairIKmmEEEOT_RNSt16remove_referenceIS7_E4typeE,comdat
	.weak	_ZSt7forwardIRPSt13_Rb_tree_nodeISt4pairIKmmEEEOT_RNSt16remove_referenceIS7_E4typeE
	.type	_ZSt7forwardIRPSt13_Rb_tree_nodeISt4pairIKmmEEEOT_RNSt16remove_referenceIS7_E4typeE, @function
_ZSt7forwardIRPSt13_Rb_tree_nodeISt4pairIKmmEEEOT_RNSt16remove_referenceIS7_E4typeE:
.LFB3530:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3530:
	.size	_ZSt7forwardIRPSt13_Rb_tree_nodeISt4pairIKmmEEEOT_RNSt16remove_referenceIS7_E4typeE, .-_ZSt7forwardIRPSt13_Rb_tree_nodeISt4pairIKmmEEEOT_RNSt16remove_referenceIS7_E4typeE
	.section	.text._ZNK9__gnu_cxx16__aligned_membufISt4pairIKmmEE7_M_addrEv,"axG",@progbits,_ZNK9__gnu_cxx16__aligned_membufISt4pairIKmmEE7_M_addrEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx16__aligned_membufISt4pairIKmmEE7_M_addrEv
	.type	_ZNK9__gnu_cxx16__aligned_membufISt4pairIKmmEE7_M_addrEv, @function
_ZNK9__gnu_cxx16__aligned_membufISt4pairIKmmEE7_M_addrEv:
.LFB3531:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3531:
	.size	_ZNK9__gnu_cxx16__aligned_membufISt4pairIKmmEE7_M_addrEv, .-_ZNK9__gnu_cxx16__aligned_membufISt4pairIKmmEE7_M_addrEv
	.section	.text._ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKmmEEE7destroyIS4_EEvPT_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKmmEEE7destroyIS4_EEvPT_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKmmEEE7destroyIS4_EEvPT_
	.type	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKmmEEE7destroyIS4_EEvPT_, @function
_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKmmEEE7destroyIS4_EEvPT_:
.LFB3532:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3532:
	.size	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKmmEEE7destroyIS4_EEvPT_, .-_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKmmEEE7destroyIS4_EEvPT_
	.section	.text._ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKmmEEE10deallocateEPS5_m,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKmmEEE10deallocateEPS5_m,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKmmEEE10deallocateEPS5_m
	.type	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKmmEEE10deallocateEPS5_m, @function
_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKmmEEE10deallocateEPS5_m:
.LFB3533:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdlPv@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3533:
	.size	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKmmEEE10deallocateEPS5_m, .-_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKmmEEE10deallocateEPS5_m
	.section	.text._ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE11_Alloc_nodeclIRKS2_EEPSt13_Rb_tree_nodeIS2_EOT_,"axG",@progbits,_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE11_Alloc_nodeclIRKS2_EEPSt13_Rb_tree_nodeIS2_EOT_,comdat
	.align 2
	.weak	_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE11_Alloc_nodeclIRKS2_EEPSt13_Rb_tree_nodeIS2_EOT_
	.type	_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE11_Alloc_nodeclIRKS2_EEPSt13_Rb_tree_nodeIS2_EOT_, @function
_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE11_Alloc_nodeclIRKS2_EEPSt13_Rb_tree_nodeIS2_EOT_:
.LFB3536:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRKSt4pairIKmmEEOT_RNSt16remove_referenceIS5_E4typeE
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_create_nodeIJRKS2_EEEPSt13_Rb_tree_nodeIS2_EDpOT_
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3536:
	.size	_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE11_Alloc_nodeclIRKS2_EEPSt13_Rb_tree_nodeIS2_EOT_, .-_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE11_Alloc_nodeclIRKS2_EEPSt13_Rb_tree_nodeIS2_EOT_
	.section	.text._ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_,"axG",@progbits,_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_,comdat
	.weak	_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_
	.type	_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_, @function
_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_:
.LFB3545:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_
	movq	%rax, %rdx
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS5_JS5_EEEvRS6_PT_DpOT0_
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt11__addressofINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEPT_RS6_
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7destroyIS5_EEvRS6_PT_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3545:
	.size	_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_, .-_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_
	.section	.text._ZStneIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEbRKSt13move_iteratorIT_ESB_,"axG",@progbits,_ZStneIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEbRKSt13move_iteratorIT_ESB_,comdat
	.weak	_ZStneIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEbRKSt13move_iteratorIT_ESB_
	.type	_ZStneIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEbRKSt13move_iteratorIT_ESB_, @function
_ZStneIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEbRKSt13move_iteratorIT_ESB_:
.LFB3546:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSteqIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEbRKSt13move_iteratorIT_ESB_
	xorl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3546:
	.size	_ZStneIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEbRKSt13move_iteratorIT_ESB_, .-_ZStneIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEbRKSt13move_iteratorIT_ESB_
	.section	.text._ZNSt13move_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv,"axG",@progbits,_ZNSt13move_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv,comdat
	.align 2
	.weak	_ZNSt13move_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv
	.type	_ZNSt13move_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv, @function
_ZNSt13move_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv:
.LFB3547:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3547:
	.size	_ZNSt13move_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv, .-_ZNSt13move_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv
	.section	.text._ZNKSt13move_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv,"axG",@progbits,_ZNKSt13move_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv,comdat
	.align 2
	.weak	_ZNKSt13move_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv
	.type	_ZNKSt13move_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv, @function
_ZNKSt13move_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv:
.LFB3548:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3548:
	.size	_ZNKSt13move_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv, .-_ZNKSt13move_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv
	.section	.text._ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_,"axG",@progbits,_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_,comdat
	.weak	_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_
	.type	_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_, @function
_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_:
.LFB3549:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS6_E4typeE
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$32, %edi
	call	_ZnwmPv
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_@PLT
	nop
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3549:
	.size	_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_, .-_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_
	.section	.text._ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKmmEEE8max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKmmEEE8max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKmmEEE8max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKmmEEE8max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKmmEEE8max_sizeEv:
.LFB3550:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movabsq	$192153584101141162, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3550:
	.size	_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKmmEEE8max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKmmEEE8max_sizeEv
	.section	.text._ZNSt4pairIKmmEC2IJOmEJEEESt21piecewise_construct_tSt5tupleIJDpT_EES5_IJDpT0_EE,"axG",@progbits,_ZNSt4pairIKmmEC5IJOmEJEEESt21piecewise_construct_tSt5tupleIJDpT_EES5_IJDpT0_EE,comdat
	.align 2
	.weak	_ZNSt4pairIKmmEC2IJOmEJEEESt21piecewise_construct_tSt5tupleIJDpT_EES5_IJDpT0_EE
	.type	_ZNSt4pairIKmmEC2IJOmEJEEESt21piecewise_construct_tSt5tupleIJDpT_EES5_IJDpT0_EE, @function
_ZNSt4pairIKmmEC2IJOmEJEEESt21piecewise_construct_tSt5tupleIJDpT_EES5_IJDpT0_EE:
.LFB3552:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-33(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt4pairIKmmEC1IJOmEJLm0EEJEJEEERSt5tupleIJDpT_EERS4_IJDpT1_EESt12_Index_tupleIJXspT0_EEESD_IJXspT2_EEE
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L505
	call	__stack_chk_fail@PLT
.L505:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3552:
	.size	_ZNSt4pairIKmmEC2IJOmEJEEESt21piecewise_construct_tSt5tupleIJDpT_EES5_IJDpT0_EE, .-_ZNSt4pairIKmmEC2IJOmEJEEESt21piecewise_construct_tSt5tupleIJDpT_EES5_IJDpT0_EE
	.weak	_ZNSt4pairIKmmEC1IJOmEJEEESt21piecewise_construct_tSt5tupleIJDpT_EES5_IJDpT0_EE
	.set	_ZNSt4pairIKmmEC1IJOmEJEEESt21piecewise_construct_tSt5tupleIJDpT_EES5_IJDpT0_EE,_ZNSt4pairIKmmEC2IJOmEJEEESt21piecewise_construct_tSt5tupleIJDpT_EES5_IJDpT0_EE
	.section	.text._ZSt7forwardIRKSt4pairIKmmEEOT_RNSt16remove_referenceIS5_E4typeE,"axG",@progbits,_ZSt7forwardIRKSt4pairIKmmEEOT_RNSt16remove_referenceIS5_E4typeE,comdat
	.weak	_ZSt7forwardIRKSt4pairIKmmEEOT_RNSt16remove_referenceIS5_E4typeE
	.type	_ZSt7forwardIRKSt4pairIKmmEEOT_RNSt16remove_referenceIS5_E4typeE, @function
_ZSt7forwardIRKSt4pairIKmmEEOT_RNSt16remove_referenceIS5_E4typeE:
.LFB3554:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3554:
	.size	_ZSt7forwardIRKSt4pairIKmmEEOT_RNSt16remove_referenceIS5_E4typeE, .-_ZSt7forwardIRKSt4pairIKmmEEOT_RNSt16remove_referenceIS5_E4typeE
	.section	.text._ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_create_nodeIJRKS2_EEEPSt13_Rb_tree_nodeIS2_EDpOT_,"axG",@progbits,_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_create_nodeIJRKS2_EEEPSt13_Rb_tree_nodeIS2_EDpOT_,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_create_nodeIJRKS2_EEEPSt13_Rb_tree_nodeIS2_EDpOT_
	.type	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_create_nodeIJRKS2_EEEPSt13_Rb_tree_nodeIS2_EDpOT_, @function
_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_create_nodeIJRKS2_EEEPSt13_Rb_tree_nodeIS2_EDpOT_:
.LFB3555:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE11_M_get_nodeEv
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRKSt4pairIKmmEEOT_RNSt16remove_referenceIS5_E4typeE
	movq	%rax, %rdx
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE17_M_construct_nodeIJRKS2_EEEvPSt13_Rb_tree_nodeIS2_EDpOT_
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3555:
	.size	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_create_nodeIJRKS2_EEEPSt13_Rb_tree_nodeIS2_EDpOT_, .-_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_create_nodeIJRKS2_EEEPSt13_Rb_tree_nodeIS2_EDpOT_
	.section	.text._ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS5_JS5_EEEvRS6_PT_DpOT0_,"axG",@progbits,_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS5_JS5_EEEvRS6_PT_DpOT0_,comdat
	.weak	_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS5_JS5_EEEvRS6_PT_DpOT0_
	.type	_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS5_JS5_EEEvRS6_PT_DpOT0_, @function
_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS5_JS5_EEEvRS6_PT_DpOT0_:
.LFB3558:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS6_E4typeE
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS6_JS6_EEEvPT_DpOT0_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3558:
	.size	_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS5_JS5_EEEvRS6_PT_DpOT0_, .-_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS5_JS5_EEEvRS6_PT_DpOT0_
	.section	.text._ZSteqIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEbRKSt13move_iteratorIT_ESB_,"axG",@progbits,_ZSteqIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEbRKSt13move_iteratorIT_ESB_,comdat
	.weak	_ZSteqIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEbRKSt13move_iteratorIT_ESB_
	.type	_ZSteqIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEbRKSt13move_iteratorIT_ESB_, @function
_ZSteqIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEbRKSt13move_iteratorIT_ESB_:
.LFB3559:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt13move_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4baseEv
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt13move_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4baseEv
	cmpq	%rax, %rbx
	sete	%al
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3559:
	.size	_ZSteqIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEbRKSt13move_iteratorIT_ESB_, .-_ZSteqIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEbRKSt13move_iteratorIT_ESB_
	.section	.text._ZSt7forwardINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS6_E4typeE,"axG",@progbits,_ZSt7forwardINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS6_E4typeE,comdat
	.weak	_ZSt7forwardINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS6_E4typeE
	.type	_ZSt7forwardINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS6_E4typeE, @function
_ZSt7forwardINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS6_E4typeE:
.LFB3560:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3560:
	.size	_ZSt7forwardINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS6_E4typeE, .-_ZSt7forwardINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS6_E4typeE
	.section	.text._ZNSt4pairIKmmEC2IJOmEJLm0EEJEJEEERSt5tupleIJDpT_EERS4_IJDpT1_EESt12_Index_tupleIJXspT0_EEESD_IJXspT2_EEE,"axG",@progbits,_ZNSt4pairIKmmEC5IJOmEJLm0EEJEJEEERSt5tupleIJDpT_EERS4_IJDpT1_EESt12_Index_tupleIJXspT0_EEESD_IJXspT2_EEE,comdat
	.align 2
	.weak	_ZNSt4pairIKmmEC2IJOmEJLm0EEJEJEEERSt5tupleIJDpT_EERS4_IJDpT1_EESt12_Index_tupleIJXspT0_EEESD_IJXspT2_EEE
	.type	_ZNSt4pairIKmmEC2IJOmEJLm0EEJEJEEERSt5tupleIJDpT_EERS4_IJDpT1_EESt12_Index_tupleIJXspT0_EEESD_IJXspT2_EEE, @function
_ZNSt4pairIKmmEC2IJOmEJLm0EEJEJEEERSt5tupleIJDpT_EERS4_IJDpT1_EESt12_Index_tupleIJXspT0_EEESD_IJXspT2_EEE:
.LFB3562:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt3getILm0EJOmEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS5_
	movq	%rax, %rdi
	call	_ZSt7forwardIOmEOT_RNSt16remove_referenceIS1_E4typeE
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3562:
	.size	_ZNSt4pairIKmmEC2IJOmEJLm0EEJEJEEERSt5tupleIJDpT_EERS4_IJDpT1_EESt12_Index_tupleIJXspT0_EEESD_IJXspT2_EEE, .-_ZNSt4pairIKmmEC2IJOmEJLm0EEJEJEEERSt5tupleIJDpT_EERS4_IJDpT1_EESt12_Index_tupleIJXspT0_EEESD_IJXspT2_EEE
	.weak	_ZNSt4pairIKmmEC1IJOmEJLm0EEJEJEEERSt5tupleIJDpT_EERS4_IJDpT1_EESt12_Index_tupleIJXspT0_EEESD_IJXspT2_EEE
	.set	_ZNSt4pairIKmmEC1IJOmEJLm0EEJEJEEERSt5tupleIJDpT_EERS4_IJDpT1_EESt12_Index_tupleIJXspT0_EEESD_IJXspT2_EEE,_ZNSt4pairIKmmEC2IJOmEJLm0EEJEJEEERSt5tupleIJDpT_EERS4_IJDpT1_EESt12_Index_tupleIJXspT0_EEESD_IJXspT2_EEE
	.section	.text._ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE17_M_construct_nodeIJRKS2_EEEvPSt13_Rb_tree_nodeIS2_EDpOT_,"axG",@progbits,_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE17_M_construct_nodeIJRKS2_EEEvPSt13_Rb_tree_nodeIS2_EDpOT_,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE17_M_construct_nodeIJRKS2_EEEvPSt13_Rb_tree_nodeIS2_EDpOT_
	.type	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE17_M_construct_nodeIJRKS2_EEEvPSt13_Rb_tree_nodeIS2_EDpOT_, @function
_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE17_M_construct_nodeIJRKS2_EEEvPSt13_Rb_tree_nodeIS2_EDpOT_:
.LFB3564:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$48, %edi
	call	_ZnwmPv
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRKSt4pairIKmmEEOT_RNSt16remove_referenceIS5_E4typeE
	movq	%rax, %r12
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt13_Rb_tree_nodeISt4pairIKmmEE9_M_valptrEv
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE21_M_get_Node_allocatorEv
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKmmEEEE9constructIS3_JRKS3_EEEvRS5_PT_DpOT0_
	nop
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3564:
	.size	_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE17_M_construct_nodeIJRKS2_EEEvPSt13_Rb_tree_nodeIS2_EDpOT_, .-_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE17_M_construct_nodeIJRKS2_EEEvPSt13_Rb_tree_nodeIS2_EDpOT_
	.section	.text._ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS6_JS6_EEEvPT_DpOT0_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS6_JS6_EEEvPT_DpOT0_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS6_JS6_EEEvPT_DpOT0_
	.type	_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS6_JS6_EEEvPT_DpOT0_, @function
_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS6_JS6_EEEvPT_DpOT0_:
.LFB3567:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS6_E4typeE
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$32, %edi
	call	_ZnwmPv
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_@PLT
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3567:
	.size	_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS6_JS6_EEEvPT_DpOT0_, .-_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS6_JS6_EEEvPT_DpOT0_
	.section	.text._ZNKSt13move_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4baseEv,"axG",@progbits,_ZNKSt13move_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4baseEv,comdat
	.align 2
	.weak	_ZNKSt13move_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4baseEv
	.type	_ZNKSt13move_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4baseEv, @function
_ZNKSt13move_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4baseEv:
.LFB3568:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3568:
	.size	_ZNKSt13move_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4baseEv, .-_ZNKSt13move_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4baseEv
	.section	.text._ZSt3getILm0EJOmEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS5_,"axG",@progbits,_ZSt3getILm0EJOmEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS5_,comdat
	.weak	_ZSt3getILm0EJOmEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS5_
	.type	_ZSt3getILm0EJOmEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS5_, @function
_ZSt3getILm0EJOmEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS5_:
.LFB3569:
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
	call	_ZSt12__get_helperILm0EOmJEERT0_RSt11_Tuple_implIXT_EJS1_DpT1_EE
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3569:
	.size	_ZSt3getILm0EJOmEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS5_, .-_ZSt3getILm0EJOmEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS5_
	.section	.text._ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKmmEEEE9constructIS3_JRKS3_EEEvRS5_PT_DpOT0_,"axG",@progbits,_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKmmEEEE9constructIS3_JRKS3_EEEvRS5_PT_DpOT0_,comdat
	.weak	_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKmmEEEE9constructIS3_JRKS3_EEEvRS5_PT_DpOT0_
	.type	_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKmmEEEE9constructIS3_JRKS3_EEEvRS5_PT_DpOT0_, @function
_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKmmEEEE9constructIS3_JRKS3_EEEvRS5_PT_DpOT0_:
.LFB3570:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRKSt4pairIKmmEEOT_RNSt16remove_referenceIS5_E4typeE
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKmmEEE9constructIS4_JRKS4_EEEvPT_DpOT0_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3570:
	.size	_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKmmEEEE9constructIS3_JRKS3_EEEvRS5_PT_DpOT0_, .-_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKmmEEEE9constructIS3_JRKS3_EEEvRS5_PT_DpOT0_
	.section	.text._ZSt12__get_helperILm0EOmJEERT0_RSt11_Tuple_implIXT_EJS1_DpT1_EE,"axG",@progbits,_ZSt12__get_helperILm0EOmJEERT0_RSt11_Tuple_implIXT_EJS1_DpT1_EE,comdat
	.weak	_ZSt12__get_helperILm0EOmJEERT0_RSt11_Tuple_implIXT_EJS1_DpT1_EE
	.type	_ZSt12__get_helperILm0EOmJEERT0_RSt11_Tuple_implIXT_EJS1_DpT1_EE, @function
_ZSt12__get_helperILm0EOmJEERT0_RSt11_Tuple_implIXT_EJS1_DpT1_EE:
.LFB3571:
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
	call	_ZNSt11_Tuple_implILm0EJOmEE7_M_headERS1_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3571:
	.size	_ZSt12__get_helperILm0EOmJEERT0_RSt11_Tuple_implIXT_EJS1_DpT1_EE, .-_ZSt12__get_helperILm0EOmJEERT0_RSt11_Tuple_implIXT_EJS1_DpT1_EE
	.section	.text._ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKmmEEE9constructIS4_JRKS4_EEEvPT_DpOT0_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKmmEEE9constructIS4_JRKS4_EEEvPT_DpOT0_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKmmEEE9constructIS4_JRKS4_EEEvPT_DpOT0_
	.type	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKmmEEE9constructIS4_JRKS4_EEEvPT_DpOT0_, @function
_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKmmEEE9constructIS4_JRKS4_EEEvPT_DpOT0_:
.LFB3572:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRKSt4pairIKmmEEOT_RNSt16remove_referenceIS5_E4typeE
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$16, %edi
	call	_ZnwmPv
	movq	%rax, %rcx
	movq	(%rbx), %rax
	movq	8(%rbx), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3572:
	.size	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKmmEEE9constructIS4_JRKS4_EEEvPT_DpOT0_, .-_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKmmEEE9constructIS4_JRKS4_EEEvPT_DpOT0_
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB3573:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$1, -4(%rbp)
	jne	.L528
	cmpl	$65535, -8(%rbp)
	jne	.L528
	leaq	_ZStL8__ioinit(%rip), %rdi
	call	_ZNSt8ios_base4InitC1Ev@PLT
	leaq	__dso_handle(%rip), %rdx
	leaq	_ZStL8__ioinit(%rip), %rsi
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	__cxa_atexit@PLT
.L528:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3573:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I__Z5splitNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc, @function
_GLOBAL__sub_I__Z5splitNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc:
.LFB3574:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$65535, %esi
	movl	$1, %edi
	call	_Z41__static_initialization_and_destruction_0ii
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3574:
	.size	_GLOBAL__sub_I__Z5splitNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc, .-_GLOBAL__sub_I__Z5splitNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z5splitNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.hidden	__dso_handle
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
