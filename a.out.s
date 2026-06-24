	.file	"main.npk"
	.text
	.weak	nitpick_args.args_get
	.p2align	4
	.type	nitpick_args.args_get,@function
nitpick_args.args_get:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rsi, %rax
	movq	%rdi, %rbx
	leaq	.L.str.14(%rip), %rsi
	movq	%rax, %rdi
	callq	npk_string_concat_simple@PLT
	leaq	.L.str.13(%rip), %rdi
	movq	%rax, %rsi
	callq	npk_string_concat_simple@PLT
	movq	%rax, %r14
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	npk_string_index_of_simple@PLT
	testq	%rax, %rax
	js	.LBB0_1
	addq	8(%r14), %rax
	movq	8(%rbx), %rdx
	cmpq	%rdx, %rax
	jge	.LBB0_4
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	npk_string_substring_simple@PLT
	movq	%rax, %rbx
	leaq	.L.str.22(%rip), %rsi
	movq	%rax, %rdi
	callq	npk_string_index_of_simple@PLT
	testq	%rax, %rax
	jle	.LBB0_6
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movq	%rax, %rdx
	callq	npk_string_substring_simple@PLT
	jmp	.LBB0_2
.LBB0_1:
	leaq	.L.str.18(%rip), %rax
	jmp	.LBB0_2
.LBB0_4:
	leaq	.L.str.20(%rip), %rax
	jmp	.LBB0_2
.LBB0_6:
	leaq	.L.str.24(%rip), %rax
.LBB0_2:
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	nitpick_args.args_get, .Lfunc_end0-nitpick_args.args_get
	.cfi_endproc

	.weak	nitpick_args.args_at
	.p2align	4
	.type	nitpick_args.args_at,@function
nitpick_args.args_at:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	pushq	%rax
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	8(%rdi), %r15
	cmpq	$2, %r15
	jge	.LBB1_2
	leaq	.L.str.2(%rip), %rax
	jmp	.LBB1_12
.LBB1_2:
	movl	%esi, %ebx
	testl	%esi, %esi
	js	.LBB1_3
	movq	%rdi, %r14
	movl	$1, %esi
	movq	%r15, %rdx
	callq	npk_string_substring_simple@PLT
	movq	%rax, %r12
	leaq	.L.str.4(%rip), %rsi
	movq	%rax, %rdi
	callq	npk_string_index_of_simple@PLT
	leaq	.L.str.6(%rip), %rcx
	testq	%rax, %rax
	js	.LBB1_5
	testl	%ebx, %ebx
	je	.LBB1_10
	movl	$1, %r13d
	leaq	.L.str.4(%rip), %rbp
	.p2align	4
.LBB1_8:
	addq	%rax, %r13
	incq	%r13
	callq	npk_gc_safepoint@PLT
	movq	%r14, %rdi
	movq	%r13, %rsi
	movq	%r15, %rdx
	callq	npk_string_substring_simple@PLT
	movq	%rax, %r12
	movq	%rax, %rdi
	movq	%rbp, %rsi
	callq	npk_string_index_of_simple@PLT
	testq	%rax, %rax
	js	.LBB1_11
	decl	%ebx
	jne	.LBB1_8
.LBB1_10:
	movq	%r12, %rdi
	xorl	%esi, %esi
	movq	%rax, %rdx
	callq	npk_string_substring_simple@PLT
	jmp	.LBB1_12
.LBB1_3:
	leaq	.L.str.8(%rip), %rax
	jmp	.LBB1_12
.LBB1_5:
	movq	%rcx, %rax
	jmp	.LBB1_12
.LBB1_11:
	leaq	.L.str.6(%rip), %rax
.LBB1_12:
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	addq	$8, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	nitpick_args.args_at, .Lfunc_end1-nitpick_args.args_at
	.cfi_endproc

	.weak	nitpick_str.str_replace_all
	.p2align	4
	.type	nitpick_str.str_replace_all,@function
nitpick_str.str_replace_all:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdx, -56(%rbp)
	movq	%rdi, %r15
	movq	%rsi, -64(%rbp)
	movq	8(%rsi), %rax
	movq	%rax, -48(%rbp)
	movq	$0, -72(%rbp)
	leaq	-72(%rbp), %r13
	jmp	.LBB2_1
	.p2align	4
.LBB2_3:
	movq	(%r13), %rbx
	incq	%rbx
	callq	npk_gc_safepoint@PLT
	movq	%rsp, %rax
	leaq	-16(%rax), %r13
	movq	%r13, %rsp
	movq	%rbx, -16(%rax)
	cmpq	$256, %rbx
	jge	.LBB2_4
.LBB2_1:
	movq	%rsp, %r12
	leaq	-16(%r12), %rbx
	movq	%rbx, %rsp
	movq	%r15, %rdi
	movq	-64(%rbp), %rsi
	callq	npk_string_index_of_simple@PLT
	movq	%rax, -16(%r12)
	testq	%rax, %rax
	js	.LBB2_3
	movq	%rsp, %r12
	leaq	-16(%r12), %rsp
	movq	8(%r15), %rcx
	movq	%rcx, -16(%r12)
	movq	%rsp, %r14
	leaq	-16(%r14), %rsp
	movq	%r15, %rdi
	xorl	%esi, %esi
	movq	%rax, %rdx
	callq	npk_string_substring_simple@PLT
	movq	%rax, -16(%r14)
	movq	(%rbx), %rsi
	addq	-48(%rbp), %rsi
	movq	-16(%r12), %rdx
	movq	%r15, %rdi
	callq	npk_string_substring_simple@PLT
	movq	%rax, %r15
	movq	-16(%r14), %rdi
	movq	-56(%rbp), %rsi
	callq	npk_string_concat_simple@PLT
	movq	%rax, %rdi
	movq	%r15, %rsi
	callq	npk_string_concat_simple@PLT
	movq	%rax, %r15
	jmp	.LBB2_3
.LBB2_4:
	movq	%r15, %rax
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	nitpick_str.str_replace_all, .Lfunc_end2-nitpick_str.str_replace_all
	.cfi_endproc

	.weak	nitpick_str.str_token
	.p2align	4
	.type	nitpick_str.str_token,@function
nitpick_str.str_token:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdx, -64(%rbp)
	movq	%rsi, -56(%rbp)
	movq	%rdi, %r15
	movq	$0, -72(%rbp)
	leaq	.L.str.139(%rip), %rax
	movq	%rax, -48(%rbp)
	leaq	-72(%rbp), %r12
	xorl	%ebx, %ebx
	xorl	%r13d, %r13d
	jmp	.LBB3_1
.LBB3_6:
	testq	%rax, %rax
	js	.LBB3_7
	movq	8(%r15), %rdx
	movq	-56(%rbp), %rcx
	movq	8(%rcx), %rsi
	addq	%rax, %rsi
	movq	%r15, %rdi
	callq	npk_string_substring_simple@PLT
	movq	%rax, %r15
	incq	%r13
	xorl	%ebx, %ebx
	.p2align	4
.LBB3_9:
	movq	(%r12), %r14
	incq	%r14
	callq	npk_gc_safepoint@PLT
	movq	%rsp, %rax
	leaq	-16(%rax), %r12
	movq	%r12, %rsp
	movq	%r14, -16(%rax)
	cmpq	$4096, %r14
	jge	.LBB3_10
.LBB3_1:
	testq	%rbx, %rbx
	jne	.LBB3_9
	movq	%r15, %rdi
	movq	-56(%rbp), %rsi
	callq	npk_string_index_of_simple@PLT
	cmpq	-64(%rbp), %r13
	jne	.LBB3_6
	movl	$1, %ebx
	testq	%rax, %rax
	js	.LBB3_4
	movq	%r15, %rdi
	xorl	%esi, %esi
	movq	%rax, %rdx
	callq	npk_string_substring_simple@PLT
	movq	%rax, -48(%rbp)
	jmp	.LBB3_9
.LBB3_7:
	movl	$2, %ebx
	jmp	.LBB3_9
.LBB3_4:
	movq	%r15, -48(%rbp)
	jmp	.LBB3_9
.LBB3_10:
	cmpq	$2, %rbx
	leaq	.L.str.141(%rip), %rcx
	movq	-48(%rbp), %rax
	cmoveq	%rcx, %rax
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end3:
	.size	nitpick_str.str_token, .Lfunc_end3-nitpick_str.str_token
	.cfi_endproc

	.weak	parser._read_file
	.p2align	4
	.type	parser._read_file,@function
parser._read_file:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %rbp, -16
	leaq	.L.str.151(%rip), %rsi
	callq	fopen@PLT
	testq	%rax, %rax
	je	.LBB4_1
	movq	%rax, %r14
	movq	%rax, %rdi
	callq	fgetc@PLT
	testl	%eax, %eax
	js	.LBB4_4
	movl	%eax, %ebp
	leaq	.L.str.155(%rip), %rbx
	.p2align	4
.LBB4_6:
	movl	%ebp, %edi
	callq	npk_string_from_char_simple@PLT
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	npk_string_concat_simple@PLT
	movq	%rax, %rbx
	movq	%r14, %rdi
	callq	fgetc@PLT
	movl	%eax, %ebp
	callq	npk_gc_safepoint@PLT
	testl	%ebp, %ebp
	jns	.LBB4_6
	jmp	.LBB4_7
.LBB4_1:
	leaq	.L.str.153(%rip), %rbx
	jmp	.LBB4_2
.LBB4_4:
	leaq	.L.str.155(%rip), %rbx
.LBB4_7:
	movq	%r14, %rdi
	callq	fclose@PLT
.LBB4_2:
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end4:
	.size	parser._read_file, .Lfunc_end4-parser._read_file
	.cfi_endproc

	.weak	parser.getenv_file
	.p2align	4
	.type	parser.getenv_file,@function
parser.getenv_file:
	.cfi_startproc
	cmpq	$0, 8(%rsi)
	je	.LBB5_1
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdi, %rbx
	leaq	.L.str.159(%rip), %rax
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	fopen@PLT
	testq	%rax, %rax
	je	.LBB5_4
	movq	%rax, %r14
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, -56(%rbp)
	movq	%rcx, %rsp
	leaq	.L.str.163(%rip), %rcx
	movq	%rcx, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, -48(%rbp)
	movq	%rcx, %rsp
	leaq	.L.str.165(%rip), %r13
	movq	%r13, -16(%rax)
	movq	%r14, %rdi
	callq	fgetc@PLT
	testl	%eax, %eax
	js	.LBB5_14
	movl	%eax, %r15d
	leaq	.L.str.165(%rip), %r12
	jmp	.LBB5_7
	.p2align	4
.LBB5_8:
	movq	%r12, %r13
.LBB5_13:
	movq	%r14, %rdi
	callq	fgetc@PLT
	movl	%eax, %r15d
	callq	npk_gc_safepoint@PLT
	movq	%r13, %r12
	testl	%r15d, %r15d
	js	.LBB5_14
.LBB5_7:
	cmpl	$13, %r15d
	je	.LBB5_8
	cmpl	$10, %r15d
	jne	.LBB5_12
	movq	%rbx, %rdi
	leaq	.L.str.167(%rip), %rsi
	callq	npk_string_concat_simple@PLT
	movq	%rax, %r15
	movq	(%r12), %rdi
	movq	8(%r12), %rsi
	movq	(%rax), %rdx
	movq	8(%rax), %rcx
	callq	npk_string_starts_with@PLT
	leaq	.L.str.169(%rip), %r13
	testb	$1, %al
	je	.LBB5_13
	jmp	.LBB5_11
	.p2align	4
.LBB5_12:
	movl	%r15d, %edi
	callq	npk_string_from_char_simple@PLT
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	npk_string_concat_simple@PLT
	movq	%rax, %r13
	jmp	.LBB5_13
.LBB5_1:
	.cfi_def_cfa %rsp, 8
	.cfi_restore %rbx
	.cfi_restore %rbp
	.cfi_restore %r12
	.cfi_restore %r13
	.cfi_restore %r14
	.cfi_restore %r15
	leaq	.L.str.157(%rip), %rax
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	retq
.LBB5_14:
	.cfi_def_cfa %rbp, 16
	.cfi_offset %rbx, -56
	.cfi_offset %rbp, -16
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	-48(%rbp), %rax
	movq	%r13, (%rax)
	movq	%rax, %r13
	movq	-56(%rbp), %r15
.LBB5_15:
	movq	%r14, %rdi
	callq	fclose@PLT
	movq	(%r15), %rax
	cmpq	$0, 8(%rax)
	je	.LBB5_16
.LBB5_19:
	movq	(%r15), %rax
	jmp	.LBB5_20
.LBB5_4:
	leaq	.L.str.161(%rip), %rax
.LBB5_20:
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	.cfi_restore %rbx
	.cfi_restore %r12
	.cfi_restore %r13
	.cfi_restore %r14
	.cfi_restore %r15
	.cfi_restore %rbp
	retq
.LBB5_16:
	.cfi_def_cfa %rbp, 16
	.cfi_offset %rbx, -56
	.cfi_offset %rbp, -16
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	(%r13), %r14
	cmpq	$0, 8(%r14)
	jle	.LBB5_19
	leaq	.L.str.171(%rip), %rsi
	movq	%rbx, %rdi
	callq	npk_string_concat_simple@PLT
	movq	%rax, %rbx
	movq	(%r14), %rdi
	movq	8(%r14), %rsi
	movq	(%rax), %rdx
	movq	8(%rax), %rcx
	callq	npk_string_starts_with@PLT
	testb	$1, %al
	je	.LBB5_19
	movq	8(%r14), %rdx
	movq	8(%rbx), %rsi
	movq	%r14, %rdi
	callq	npk_string_substring_simple@PLT
	movq	%rax, (%r15)
	jmp	.LBB5_19
.LBB5_11:
	movq	-48(%rbp), %r13
	movq	%r12, (%r13)
	movq	8(%r12), %rdx
	movq	8(%r15), %rsi
	movq	%r12, %rdi
	callq	npk_string_substring_simple@PLT
	movq	-56(%rbp), %r15
	movq	%rax, (%r15)
	jmp	.LBB5_15
.Lfunc_end5:
	.size	parser.getenv_file, .Lfunc_end5-parser.getenv_file
	.cfi_endproc

	.weak	parser.getenv_proc
	.p2align	4
	.type	parser.getenv_proc,@function
parser.getenv_proc:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdi, %r14
	leaq	.L.str.173(%rip), %rdi
	leaq	.L.str.175(%rip), %rsi
	callq	fopen@PLT
	testq	%rax, %rax
	je	.LBB6_1
	movq	%rax, %rbx
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, -48(%rbp)
	movq	%rcx, %rsp
	leaq	.L.str.179(%rip), %rcx
	movq	%rcx, -16(%rax)
	movq	%rbx, %rdi
	callq	fgetc@PLT
	testl	%eax, %eax
	js	.LBB6_10
	movl	%eax, %r13d
	leaq	.L.str.181(%rip), %r15
	jmp	.LBB6_5
	.p2align	4
.LBB6_8:
	movl	%r13d, %edi
	callq	npk_string_from_char_simple@PLT
	movq	%r15, %rdi
	movq	%rax, %rsi
	callq	npk_string_concat_simple@PLT
	movq	%rax, %r12
.LBB6_9:
	movq	%rbx, %rdi
	callq	fgetc@PLT
	movl	%eax, %r13d
	callq	npk_gc_safepoint@PLT
	movq	%r12, %r15
	testl	%r13d, %r13d
	js	.LBB6_10
.LBB6_5:
	testl	%r13d, %r13d
	jne	.LBB6_8
	movq	%r14, %rdi
	leaq	.L.str.183(%rip), %rsi
	callq	npk_string_concat_simple@PLT
	movq	%rax, %r13
	movq	(%r15), %rdi
	movq	8(%r15), %rsi
	movq	(%rax), %rdx
	movq	8(%rax), %rcx
	callq	npk_string_starts_with@PLT
	leaq	.L.str.185(%rip), %r12
	testb	$1, %al
	je	.LBB6_9
	movq	8(%r15), %rdx
	movq	8(%r13), %rsi
	movq	%r15, %rdi
	callq	npk_string_substring_simple@PLT
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB6_10:
	movq	%rbx, %rdi
	callq	fclose@PLT
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB6_2
.LBB6_1:
	leaq	.L.str.177(%rip), %rax
.LBB6_2:
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end6:
	.size	parser.getenv_proc, .Lfunc_end6-parser.getenv_proc
	.cfi_endproc

	.weak	parser.replace_env_vars
	.p2align	4
	.type	parser.replace_env_vars,@function
parser.replace_env_vars:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rsi, -56(%rbp)
	movq	%rdi, %r12
	leaq	.L.str.187(%rip), %rsi
	callq	npk_string_index_of_simple@PLT
	testq	%rax, %rax
	js	.LBB7_6
	movq	%rax, %r13
	jmp	.LBB7_2
	.p2align	4
.LBB7_5:
	movq	%r12, %rdi
	xorl	%esi, %esi
	movq	%r13, %rdx
	callq	npk_string_substring_simple@PLT
	movq	%rax, %rbx
	addq	$2, %r14
	movq	8(%r15), %rdx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	npk_string_substring_simple@PLT
	movq	-48(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	%rax, %rsi
	callq	npk_string_concat_simple@PLT
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	npk_string_concat_simple@PLT
	movq	%rax, %r12
	callq	npk_gc_safepoint@PLT
	movq	%r12, %rdi
	leaq	.L.str.187(%rip), %rsi
	callq	npk_string_index_of_simple@PLT
	movq	%rax, %r13
	testq	%rax, %rax
	js	.LBB7_6
.LBB7_2:
	leaq	2(%r13), %rsi
	movq	8(%r12), %rdx
	movq	%r12, %rdi
	callq	npk_string_substring_simple@PLT
	movq	%rax, %r15
	movq	%rax, %rdi
	leaq	.L.str.189(%rip), %rsi
	callq	npk_string_index_of_simple@PLT
	testq	%rax, %rax
	js	.LBB7_6
	movq	%rax, %r14
	movq	%r15, %rdi
	xorl	%esi, %esi
	movq	%rax, %rdx
	callq	npk_string_substring_simple@PLT
	movq	%rax, %rdi
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rax
	movq	%rax, -48(%rbp)
	movq	%rax, %rsp
	movq	%rdi, -64(%rbp)
	movq	-56(%rbp), %rsi
	callq	parser.getenv_file@PLT
	movq	%rax, -16(%rbx)
	cmpq	$0, 8(%rax)
	jne	.LBB7_5
	movq	-64(%rbp), %rdi
	callq	parser.getenv_proc@PLT
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB7_5
.LBB7_6:
	movq	%r12, %rax
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end7:
	.size	parser.replace_env_vars, .Lfunc_end7-parser.replace_env_vars
	.cfi_endproc

	.weak	parser.parse_request
	.p2align	4
	.type	parser.parse_request,@function
parser.parse_request:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdx, %r14
	movq	%rdi, %rbx
	movq	%rsi, %rdi
	callq	parser._read_file@PLT
	movl	$1, %ecx
	movl	$30, %edx
	leaq	.L.str.119(%rip), %rdi
	leaq	.L.str.117(%rip), %r12
	leaq	.L.str.193(%rip), %r15
	leaq	.L.str.191(%rip), %rsi
	cmpq	$0, 8(%rax)
	je	.LBB8_41
	movq	%r14, -104(%rbp)
	movq	%rbx, -96(%rbp)
	leaq	.L.str.195(%rip), %rsi
	leaq	.L.str.197(%rip), %rdx
	movq	%rax, %rdi
	callq	nitpick_str.str_replace_all@PLT
	movq	%rsp, %rcx
	addq	$-16, %rcx
	movq	%rcx, -64(%rbp)
	movq	%rcx, %rsp
	movq	%rax, -72(%rbp)
	movq	8(%rax), %r13
	testq	%r13, %r13
	je	.LBB8_2
	leaq	1(%r13), %r15
	movl	$4096, %r12d
	xorl	%ebx, %ebx
	xorl	%r14d, %r14d
	jmp	.LBB8_4
	.p2align	4
.LBB8_5:
	movq	%r15, %r14
.LBB8_9:
	callq	npk_gc_safepoint@PLT
	decq	%r12
	je	.LBB8_10
.LBB8_4:
	movq	%r13, %rax
	subq	%r14, %rax
	testq	%rax, %rax
	jle	.LBB8_5
	movq	-72(%rbp), %rdi
	movq	%r14, %rsi
	movq	%r13, %rdx
	callq	npk_string_substring_simple@PLT
	movq	%rax, %rdi
	leaq	.L.str.137(%rip), %rsi
	callq	npk_string_index_of_simple@PLT
	testq	%rax, %rax
	js	.LBB8_7
	incq	%rbx
	addq	%rax, %r14
	incq	%r14
	jmp	.LBB8_9
	.p2align	4
.LBB8_7:
	movq	%r13, %r14
	jmp	.LBB8_9
.LBB8_10:
	incq	%rbx
	leaq	.L.str.193(%rip), %r15
	leaq	.L.str.117(%rip), %r12
	jmp	.LBB8_11
.LBB8_2:
	movl	$1, %ebx
.LBB8_11:
	movq	-64(%rbp), %rax
	movq	%rbx, (%rax)
	testq	%rbx, %rbx
	leaq	.L.str.191(%rip), %rsi
	leaq	.L.str.119(%rip), %rdi
	je	.LBB8_12
	movq	%rsp, %rbx
	leaq	-16(%rbx), %r15
	movq	%r15, %rsp
	leaq	.L.str.199(%rip), %rsi
	movq	-72(%rbp), %rdi
	xorl	%edx, %edx
	callq	nitpick_str.str_token@PLT
	movq	%rax, -16(%rbx)
	movq	8(%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB8_23
	movq	%rax, %r14
	movq	%r15, -48(%rbp)
	leaq	1(%rbx), %rax
	movq	%rax, -56(%rbp)
	movl	$4096, %r13d
	xorl	%r15d, %r15d
	xorl	%r12d, %r12d
	jmp	.LBB8_15
	.p2align	4
.LBB8_16:
	movq	-56(%rbp), %r12
.LBB8_20:
	callq	npk_gc_safepoint@PLT
	decq	%r13
	je	.LBB8_21
.LBB8_15:
	movq	%rbx, %rax
	subq	%r12, %rax
	testq	%rax, %rax
	jle	.LBB8_16
	movq	%r14, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	npk_string_substring_simple@PLT
	movq	%rax, %rdi
	leaq	.L.str.201(%rip), %rsi
	callq	npk_string_index_of_simple@PLT
	testq	%rax, %rax
	js	.LBB8_18
	incq	%r15
	addq	%rax, %r12
	incq	%r12
	jmp	.LBB8_20
	.p2align	4
.LBB8_18:
	movq	%rbx, %r12
	jmp	.LBB8_20
.LBB8_21:
	incq	%r15
	cmpq	$2, %r15
	movq	-48(%rbp), %r15
	jl	.LBB8_23
	movq	(%r15), %rbx
	leaq	.L.str.203(%rip), %rsi
	movq	%rbx, %rdi
	xorl	%edx, %edx
	callq	nitpick_str.str_token@PLT
	movq	%rax, -88(%rbp)
	leaq	.L.str.205(%rip), %rsi
	movl	$1, %edx
	movq	%rbx, %rdi
	callq	nitpick_str.str_token@PLT
	movq	%rax, -80(%rbp)
	jmp	.LBB8_24
.LBB8_23:
	movq	(%r15), %rdi
	callq	npk_string_trim_simple@PLT
	movq	%rax, -80(%rbp)
	leaq	.L.str.191(%rip), %rax
	movq	%rax, -88(%rbp)
.LBB8_24:
	movq	%rsp, %rax
	leaq	-16(%rax), %r13
	movq	%r13, %rsp
	movq	$1, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, -56(%rbp)
	movq	%rcx, %rsp
	movl	$0, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %r14
	movq	%r14, %rsp
	leaq	.L.str.207(%rip), %rcx
	movq	%rcx, -16(%rax)
	movq	-64(%rbp), %rax
	cmpq	$2, (%rax)
	jl	.LBB8_25
	leaq	.L.str.117(%rip), %rax
	movq	%rax, -48(%rbp)
	movl	$1, %ebx
	jmp	.LBB8_27
	.p2align	4
.LBB8_38:
	movq	(%r14), %rdi
	movq	%rbx, %rsi
	callq	npk_string_concat_simple@PLT
	movq	%rax, (%r14)
.LBB8_39:
	movq	(%r13), %rbx
	incq	%rbx
	movq	%rbx, (%r13)
	callq	npk_gc_safepoint@PLT
	movq	-64(%rbp), %rax
	cmpq	(%rax), %rbx
	jge	.LBB8_40
.LBB8_27:
	movq	%rsp, %r15
	leaq	-16(%r15), %r12
	movq	%r12, %rsp
	movq	-72(%rbp), %rdi
	leaq	.L.str.209(%rip), %rsi
	movq	%rbx, %rdx
	callq	nitpick_str.str_token@PLT
	movq	%rax, %rbx
	movq	%rax, -16(%r15)
	movq	-56(%rbp), %rax
	cmpl	$0, (%rax)
	je	.LBB8_28
	movq	(%r14), %rdi
	cmpq	$0, 8(%rdi)
	jle	.LBB8_38
	leaq	.L.str.219(%rip), %rsi
	callq	npk_string_concat_simple@PLT
	movq	%rax, (%r14)
	jmp	.LBB8_38
	.p2align	4
.LBB8_28:
	movq	%rbx, %rdi
	callq	npk_string_trim_simple@PLT
	cmpq	$0, 8(%rax)
	je	.LBB8_29
	movq	(%r12), %r12
	movq	%r12, %rdi
	leaq	.L.str.211(%rip), %rsi
	callq	npk_string_index_of_simple@PLT
	testq	%rax, %rax
	jle	.LBB8_39
	movq	%r12, %rdi
	leaq	.L.str.213(%rip), %rsi
	callq	npk_string_index_of_simple@PLT
	movq	%r12, %rbx
	testq	%rax, %rax
	js	.LBB8_33
	movq	%r12, %rdi
	xorl	%esi, %esi
	movq	%rax, %rdx
	callq	npk_string_substring_simple@PLT
	movq	%rax, %rbx
.LBB8_33:
	movq	%r12, %rdi
	leaq	.L.str.215(%rip), %rsi
	callq	npk_string_index_of_simple@PLT
	leaq	.L.str.129(%rip), %rdi
	testq	%rax, %rax
	js	.LBB8_35
	movq	8(%r12), %rdx
	incq	%rax
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	npk_string_substring_simple@PLT
	movq	%rax, %rdi
.LBB8_35:
	callq	npk_string_trim_simple@PLT
	leaq	.L.str.217(%rip), %rdi
	movq	%rax, %rsi
	callq	npk_string_concat_simple@PLT
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	npk_string_concat_simple@PLT
	movq	%rax, %rdi
	leaq	.L.str.121(%rip), %rsi
	callq	npk_string_concat_simple@PLT
	movq	-48(%rbp), %rdi
	movq	%rax, %rsi
	callq	npk_string_concat_simple@PLT
	movq	%rax, -48(%rbp)
	jmp	.LBB8_39
.LBB8_29:
	movq	-56(%rbp), %rax
	movl	$1, (%rax)
	jmp	.LBB8_39
.LBB8_12:
	movq	-96(%rbp), %rbx
	movl	$1, %ecx
	movl	$30, %edx
	jmp	.LBB8_41
.LBB8_25:
	leaq	.L.str.117(%rip), %rax
	movq	%rax, -48(%rbp)
.LBB8_40:
	movq	(%r14), %rbx
	movq	-80(%rbp), %rdi
	movq	-104(%rbp), %r14
	movq	%r14, %rsi
	callq	parser.replace_env_vars@PLT
	movq	%rax, %r15
	movq	-48(%rbp), %rdi
	movq	%r14, %rsi
	callq	parser.replace_env_vars@PLT
	movq	%rax, %r12
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	parser.replace_env_vars@PLT
	movq	%rax, %rdi
	movq	-96(%rbp), %rbx
	movl	$1, %ecx
	movl	$30, %edx
	movq	-88(%rbp), %rsi
.LBB8_41:
	movq	%rsi, (%rbx)
	movq	%r15, 8(%rbx)
	movq	%r12, 16(%rbx)
	movq	%rdi, 24(%rbx)
	movl	%edx, 32(%rbx)
	movl	%ecx, 36(%rbx)
	movb	$0, 48(%rbx)
	movq	$0, 40(%rbx)
	movq	%rbx, %rax
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end8:
	.size	parser.parse_request, .Lfunc_end8-parser.parse_request
	.cfi_endproc

	.weak	client._split_and_set_headers
	.p2align	4
	.type	client._split_and_set_headers,@function
client._split_and_set_headers:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	pushq	%rax
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	8(%rdi), %r14
	callq	nitpick_http_clear_headers@PLT
	testq	%r14, %r14
	jle	.LBB9_6
	xorl	%r15d, %r15d
	leaq	.L.str.225(%rip), %r12
	jmp	.LBB9_2
	.p2align	4
.LBB9_5:
	addq	%r13, %r15
	incq	%r15
	callq	npk_gc_safepoint@PLT
	cmpq	%r14, %r15
	jge	.LBB9_6
.LBB9_2:
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	npk_string_substring_simple@PLT
	movq	%rax, %rbp
	movq	%rax, %rdi
	movq	%r12, %rsi
	callq	npk_string_index_of_simple@PLT
	testq	%rax, %rax
	js	.LBB9_6
	movq	%rax, %r13
	movq	%rbp, %rdi
	xorl	%esi, %esi
	movq	%rax, %rdx
	callq	npk_string_substring_simple@PLT
	cmpq	$0, 8(%rax)
	jle	.LBB9_5
	movq	%rax, %rdi
	callq	nitpick_http_set_header@PLT
	jmp	.LBB9_5
.LBB9_6:
	xorl	%eax, %eax
	xorl	%edx, %edx
	addq	$8, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end9:
	.size	client._split_and_set_headers, .Lfunc_end9-client._split_and_set_headers
	.cfi_endproc

	.weak	client.client_send
	.p2align	4
	.type	client.client_send,@function
client.client_send:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	pushq	%rax
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%r9d, %ebp
	movq	%r8, %r15
	movq	%rdx, %r14
	movq	%rsi, %r12
	movq	%rdi, %rbx
	movl	64(%rsp), %r13d
	movq	%rcx, %rdi
	callq	client._split_and_set_headers@PLT
	movl	%ebp, %edi
	callq	nitpick_http_set_timeout@PLT
	movl	%r13d, %edi
	callq	nitpick_http_set_follow_redirects@PLT
	movq	(%r12), %rdi
	movq	8(%r12), %rsi
	leaq	.L.str.data.226(%rip), %rdx
	movl	$3, %ecx
	callq	npk_string_equals@PLT
	testb	$1, %al
	je	.LBB10_1
.LBB10_11:
	movq	%r14, %rdi
	callq	nitpick_http_get@PLT
	jmp	.LBB10_12
.LBB10_1:
	movq	(%r12), %rdi
	movq	8(%r12), %rsi
	leaq	.L.str.data.228(%rip), %rdx
	movl	$4, %ecx
	callq	npk_string_equals@PLT
	testb	$1, %al
	je	.LBB10_3
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	nitpick_http_post@PLT
	jmp	.LBB10_12
.LBB10_3:
	movq	(%r12), %rdi
	movq	8(%r12), %rsi
	leaq	.L.str.data.230(%rip), %rdx
	movl	$3, %ecx
	callq	npk_string_equals@PLT
	testb	$1, %al
	je	.LBB10_5
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	nitpick_http_put@PLT
	jmp	.LBB10_12
.LBB10_5:
	movq	(%r12), %rdi
	movq	8(%r12), %rsi
	leaq	.L.str.data.232(%rip), %rdx
	movl	$6, %ecx
	callq	npk_string_equals@PLT
	testb	$1, %al
	je	.LBB10_7
	movq	%r14, %rdi
	callq	nitpick_http_delete@PLT
	jmp	.LBB10_12
.LBB10_7:
	movq	(%r12), %rdi
	movq	8(%r12), %rsi
	leaq	.L.str.data.234(%rip), %rdx
	movl	$5, %ecx
	callq	npk_string_equals@PLT
	testb	$1, %al
	je	.LBB10_9
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	nitpick_http_patch@PLT
	jmp	.LBB10_12
.LBB10_9:
	movq	(%r12), %rdi
	movq	8(%r12), %rsi
	leaq	.L.str.data.236(%rip), %rdx
	movl	$4, %ecx
	callq	npk_string_equals@PLT
	testb	$1, %al
	je	.LBB10_11
	movq	%r14, %rdi
	callq	nitpick_http_head@PLT
.LBB10_12:
	callq	nitpick_http_status@PLT
	movl	%eax, %ebp
	callq	nitpick_http_response_body@PLT
	movq	%rax, %rdi
	callq	npk_string_from_cstr_simple@PLT
	movq	%rax, %r14
	callq	nitpick_http_response_headers@PLT
	movq	%rax, %rdi
	callq	npk_string_from_cstr_simple@PLT
	movq	%rax, %r15
	callq	nitpick_http_error@PLT
	movq	%rax, %rdi
	callq	npk_string_from_cstr_simple@PLT
	movl	%ebp, (%rbx)
	movq	%r15, 8(%rbx)
	movq	%r14, 16(%rbx)
	movq	%rax, 24(%rbx)
	movq	$0, 32(%rbx)
	movb	$0, 40(%rbx)
	movq	%rbx, %rax
	addq	$8, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end10:
	.size	client.client_send, .Lfunc_end10-client.client_send
	.cfi_endproc

	.weak	formatter.format_response
	.p2align	4
	.type	formatter.format_response,@function
formatter.format_response:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rcx, -48(%rbp)
	movq	%rdx, -64(%rbp)
	movq	%rsi, -56(%rbp)
	movl	%edi, %r13d
	leaq	.L.str.data.270(%rip), %rdi
	callq	npk_print_cstr@PLT
	leaq	.L.str.249(%rip), %rbx
	movl	$50, %r14d
	leaq	.L.str.273(%rip), %r15
	.p2align	4
.LBB11_1:
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	npk_string_concat_simple@PLT
	movq	%rax, %rbx
	callq	npk_gc_safepoint@PLT
	decl	%r14d
	jne	.LBB11_1
	movq	(%rbx), %rdi
	callq	npk_print_cstr@PLT
	leaq	.L.str.data.274(%rip), %rdi
	callq	npk_print_cstr@PLT
	movslq	%r13d, %r15
	movq	%r15, %rdi
	callq	npk_string_from_int_simple@PLT
	movq	%rax, %rbx
	cmpl	$200, %r15d
	jl	.LBB11_9
	cmpl	$299, %r13d
	movq	-48(%rbp), %r14
	movl	$27, %edi
	jg	.LBB11_5
	callq	npk_string_from_char_simple@PLT
	movq	%rax, %r12
	leaq	.L.str.243(%rip), %rsi
	movq	%rax, %rdi
	callq	npk_string_concat_simple@PLT
	leaq	.L.str.251(%rip), %rsi
	jmp	.LBB11_7
.LBB11_9:
	movl	$27, %edi
	callq	npk_string_from_char_simple@PLT
	movq	%rax, %r12
	leaq	.L.str.243(%rip), %rsi
	movq	%rax, %rdi
	callq	npk_string_concat_simple@PLT
	leaq	.L.str.257(%rip), %rsi
	movq	%rax, %rdi
	callq	npk_string_concat_simple@PLT
	movq	-48(%rbp), %r14
	jmp	.LBB11_10
.LBB11_5:
	callq	npk_string_from_char_simple@PLT
	movq	%rax, %r12
	leaq	.L.str.243(%rip), %rsi
	movq	%rax, %rdi
	callq	npk_string_concat_simple@PLT
	cmpl	$400, %r13d
	jl	.LBB11_8
	leaq	.L.str.253(%rip), %rsi
	jmp	.LBB11_7
.LBB11_8:
	leaq	.L.str.257(%rip), %rsi
.LBB11_7:
	movq	%rax, %rdi
	callq	npk_string_concat_simple@PLT
.LBB11_10:
	leaq	.L.str.245(%rip), %r13
	movq	%rax, %rdi
	movq	%r13, %rsi
	callq	npk_string_concat_simple@PLT
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	npk_string_concat_simple@PLT
	movq	%rax, %rdi
	movq	%r12, %rsi
	callq	npk_string_concat_simple@PLT
	leaq	.L.str.247(%rip), %r12
	movq	%rax, %rdi
	movq	%r12, %rsi
	callq	npk_string_concat_simple@PLT
	movq	%rax, %rbx
	movl	$27, %edi
	callq	npk_string_from_char_simple@PLT
	movq	%rax, %r15
	leaq	.L.str.243(%rip), %rsi
	movq	%rax, %rdi
	callq	npk_string_concat_simple@PLT
	leaq	.L.str.261(%rip), %rsi
	movq	%rax, %rdi
	callq	npk_string_concat_simple@PLT
	movq	%rax, %rdi
	movq	%r13, %rsi
	callq	npk_string_concat_simple@PLT
	leaq	.L.str.279(%rip), %rsi
	movq	%rax, %rdi
	callq	npk_string_concat_simple@PLT
	movq	%rax, %rdi
	movq	%r15, %rsi
	callq	npk_string_concat_simple@PLT
	movq	%rax, %rdi
	movq	%r12, %rsi
	callq	npk_string_concat_simple@PLT
	movq	(%rax), %rdi
	callq	npk_print_cstr@PLT
	movq	(%rbx), %rdi
	callq	npk_print_cstr@PLT
	leaq	.L.str.data.280(%rip), %rdi
	callq	npk_print_cstr@PLT
	cmpq	$0, 8(%r14)
	jle	.LBB11_12
	movl	$27, %edi
	callq	npk_string_from_char_simple@PLT
	movq	%rax, %r13
	leaq	.L.str.243(%rip), %rsi
	movq	%rax, %rdi
	callq	npk_string_concat_simple@PLT
	leaq	.L.str.269(%rip), %rsi
	movq	%rax, %rdi
	callq	npk_string_concat_simple@PLT
	leaq	.L.str.245(%rip), %r12
	movq	%rax, %rdi
	movq	%r12, %rsi
	callq	npk_string_concat_simple@PLT
	leaq	.L.str.283(%rip), %rsi
	movq	%rax, %rdi
	callq	npk_string_concat_simple@PLT
	movq	%rax, %rdi
	movq	%r13, %rsi
	callq	npk_string_concat_simple@PLT
	leaq	.L.str.247(%rip), %r13
	movq	%rax, %rdi
	movq	%r13, %rsi
	callq	npk_string_concat_simple@PLT
	movq	%rax, %r15
	movl	$27, %edi
	callq	npk_string_from_char_simple@PLT
	movq	%rax, %rbx
	movq	%rax, %rdi
	leaq	.L.str.243(%rip), %rsi
	callq	npk_string_concat_simple@PLT
	leaq	.L.str.261(%rip), %rsi
	movq	%rax, %rdi
	callq	npk_string_concat_simple@PLT
	movq	%rax, %rdi
	movq	%r12, %rsi
	callq	npk_string_concat_simple@PLT
	movq	%rax, %rdi
	movq	%r15, %rsi
	callq	npk_string_concat_simple@PLT
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	npk_string_concat_simple@PLT
	movq	%rax, %rdi
	movq	%r13, %rsi
	callq	npk_string_concat_simple@PLT
	movq	(%rax), %rdi
	callq	npk_print_cstr@PLT
	movq	(%r14), %rdi
	callq	npk_print_cstr@PLT
	leaq	.L.str.data.284(%rip), %rdi
	callq	npk_print_cstr@PLT
.LBB11_12:
	movl	$27, %edi
	callq	npk_string_from_char_simple@PLT
	movq	%rax, %r12
	leaq	.L.str.243(%rip), %r14
	movq	%rax, %rdi
	movq	%r14, %rsi
	callq	npk_string_concat_simple@PLT
	leaq	.L.str.265(%rip), %rsi
	movq	%rax, %rdi
	callq	npk_string_concat_simple@PLT
	leaq	.L.str.245(%rip), %r15
	movq	%rax, %rdi
	movq	%r15, %rsi
	callq	npk_string_concat_simple@PLT
	leaq	.L.str.287(%rip), %rsi
	movq	%rax, %rdi
	callq	npk_string_concat_simple@PLT
	movq	%rax, %rdi
	movq	%r12, %rsi
	callq	npk_string_concat_simple@PLT
	leaq	.L.str.247(%rip), %r12
	movq	%rax, %rdi
	movq	%r12, %rsi
	callq	npk_string_concat_simple@PLT
	movq	%rax, %r13
	movl	$27, %edi
	callq	npk_string_from_char_simple@PLT
	movq	%rax, %rbx
	movq	%rax, %rdi
	movq	%r14, %rsi
	callq	npk_string_concat_simple@PLT
	leaq	.L.str.261(%rip), %rsi
	movq	%rax, %rdi
	callq	npk_string_concat_simple@PLT
	movq	%rax, %rdi
	movq	%r15, %rsi
	callq	npk_string_concat_simple@PLT
	movq	%rax, %rdi
	movq	%r13, %rsi
	callq	npk_string_concat_simple@PLT
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	npk_string_concat_simple@PLT
	movq	%rax, %rdi
	movq	%r12, %rsi
	callq	npk_string_concat_simple@PLT
	movq	(%rax), %rdi
	callq	npk_print_cstr@PLT
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, -48(%rbp)
	movq	%rax, %rsp
	movq	-56(%rbp), %rax
	movq	8(%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB11_13
	leaq	1(%rbx), %r14
	movl	$4096, %r15d
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	jmp	.LBB11_15
	.p2align	4
.LBB11_16:
	movq	%r14, %r12
.LBB11_20:
	callq	npk_gc_safepoint@PLT
	decq	%r15
	je	.LBB11_21
.LBB11_15:
	movq	%rbx, %rax
	subq	%r12, %rax
	testq	%rax, %rax
	jle	.LBB11_16
	movq	-56(%rbp), %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	npk_string_substring_simple@PLT
	movq	%rax, %rdi
	leaq	.L.str.137(%rip), %rsi
	callq	npk_string_index_of_simple@PLT
	testq	%rax, %rax
	js	.LBB11_18
	incq	%r13
	addq	%rax, %r12
	incq	%r12
	jmp	.LBB11_20
	.p2align	4
.LBB11_18:
	movq	%rbx, %r12
	jmp	.LBB11_20
.LBB11_21:
	incq	%r13
	jmp	.LBB11_22
.LBB11_13:
	movl	$1, %r13d
.LBB11_22:
	movq	-48(%rbp), %rcx
	movq	%r13, (%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %r12
	movq	%r12, %rsp
	movq	$0, -16(%rax)
	testq	%r13, %r13
	jle	.LBB11_34
	movq	%rcx, %r13
	xorl	%ebx, %ebx
	movq	%r12, -72(%rbp)
	jmp	.LBB11_24
	.p2align	4
.LBB11_31:
	leaq	.L.str.data.302(%rip), %rdi
	callq	npk_print_cstr@PLT
	movq	%rbx, %rdi
	callq	npk_string_trim_simple@PLT
	movq	%rax, %rbx
	movl	$27, %edi
	callq	npk_string_from_char_simple@PLT
	movq	%rax, %r15
	movq	%rax, %rdi
	leaq	.L.str.243(%rip), %rsi
	callq	npk_string_concat_simple@PLT
	movq	%rax, %rdi
	leaq	.L.str.263(%rip), %rsi
	callq	npk_string_concat_simple@PLT
	movq	%rax, %rdi
	leaq	.L.str.245(%rip), %rsi
	callq	npk_string_concat_simple@PLT
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	npk_string_concat_simple@PLT
	movq	%rax, %rdi
	movq	%r15, %rsi
	callq	npk_string_concat_simple@PLT
	movq	%rax, %rdi
	leaq	.L.str.247(%rip), %rsi
	callq	npk_string_concat_simple@PLT
	leaq	.L.str.data.304(%rip), %rbx
.LBB11_32:
	movq	(%rax), %rdi
	callq	npk_print_cstr@PLT
	movq	%rbx, %rdi
	callq	npk_print_cstr@PLT
.LBB11_33:
	movq	(%r12), %rbx
	incq	%rbx
	movq	%rbx, (%r12)
	callq	npk_gc_safepoint@PLT
	cmpq	(%r13), %rbx
	jge	.LBB11_34
.LBB11_24:
	movq	%rsp, %r15
	leaq	-16(%r15), %r14
	movq	%r14, %rsp
	movq	-56(%rbp), %rdi
	leaq	.L.str.289(%rip), %rsi
	movq	%rbx, %rdx
	callq	nitpick_str.str_token@PLT
	movq	%rax, -16(%r15)
	movq	%rax, %rdi
	callq	npk_string_trim_simple@PLT
	cmpq	$0, 8(%rax)
	jle	.LBB11_33
	movq	(%r14), %rbx
	movq	%rbx, %rdi
	leaq	.L.str.291(%rip), %rsi
	callq	npk_string_index_of_simple@PLT
	testq	%rax, %rax
	jle	.LBB11_31
	movq	%rbx, %rdi
	leaq	.L.str.293(%rip), %rsi
	callq	npk_string_index_of_simple@PLT
	movq	%rbx, %r13
	testq	%rax, %rax
	js	.LBB11_28
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movq	%rax, %rdx
	callq	npk_string_substring_simple@PLT
	movq	%rax, %r13
.LBB11_28:
	movq	%rbx, %rdi
	leaq	.L.str.295(%rip), %rsi
	callq	npk_string_index_of_simple@PLT
	leaq	.L.str.129(%rip), %r15
	testq	%rax, %rax
	js	.LBB11_30
	movq	8(%rbx), %rdx
	incq	%rax
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	npk_string_substring_simple@PLT
	movq	%rax, %r15
.LBB11_30:
	leaq	.L.str.data.296(%rip), %rdi
	callq	npk_print_cstr@PLT
	movq	%r13, %rdi
	callq	npk_string_trim_simple@PLT
	movq	%rax, %rbx
	movl	$27, %edi
	callq	npk_string_from_char_simple@PLT
	movq	%rax, %r13
	movq	%rax, %rdi
	leaq	.L.str.243(%rip), %r14
	movq	%r14, %rsi
	callq	npk_string_concat_simple@PLT
	movq	%rax, %rdi
	leaq	.L.str.255(%rip), %rsi
	callq	npk_string_concat_simple@PLT
	movq	%rax, %rdi
	leaq	.L.str.245(%rip), %r12
	movq	%r12, %rsi
	callq	npk_string_concat_simple@PLT
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	npk_string_concat_simple@PLT
	movq	%rax, %rdi
	movq	%r13, %rsi
	callq	npk_string_concat_simple@PLT
	movq	%rax, %rdi
	leaq	.L.str.247(%rip), %r13
	movq	%r13, %rsi
	callq	npk_string_concat_simple@PLT
	movq	(%rax), %rdi
	callq	npk_print_cstr@PLT
	movl	$27, %edi
	callq	npk_string_from_char_simple@PLT
	movq	%rax, %rbx
	movq	%rax, %rdi
	movq	%r14, %rsi
	callq	npk_string_concat_simple@PLT
	movq	%rax, %rdi
	leaq	.L.str.263(%rip), %rsi
	callq	npk_string_concat_simple@PLT
	movq	%rax, %rdi
	movq	%r12, %rsi
	callq	npk_string_concat_simple@PLT
	movq	%rax, %rdi
	leaq	.L.str.299(%rip), %rsi
	callq	npk_string_concat_simple@PLT
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	npk_string_concat_simple@PLT
	movq	%rax, %rdi
	movq	%r13, %rsi
	callq	npk_string_concat_simple@PLT
	movq	(%rax), %rdi
	callq	npk_print_cstr@PLT
	movq	%r15, %rdi
	callq	npk_string_trim_simple@PLT
	leaq	.L.str.data.300(%rip), %rbx
	movq	-48(%rbp), %r13
	movq	-72(%rbp), %r12
	jmp	.LBB11_32
.LBB11_34:
	leaq	.L.str.data.306(%rip), %rdi
	callq	npk_print_cstr@PLT
	movl	$27, %edi
	callq	npk_string_from_char_simple@PLT
	movq	%rax, %r15
	leaq	.L.str.243(%rip), %rbx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	npk_string_concat_simple@PLT
	leaq	.L.str.267(%rip), %rsi
	movq	%rax, %rdi
	callq	npk_string_concat_simple@PLT
	leaq	.L.str.245(%rip), %r14
	movq	%rax, %rdi
	movq	%r14, %rsi
	callq	npk_string_concat_simple@PLT
	leaq	.L.str.309(%rip), %rsi
	movq	%rax, %rdi
	callq	npk_string_concat_simple@PLT
	movq	%rax, %rdi
	movq	%r15, %rsi
	callq	npk_string_concat_simple@PLT
	leaq	.L.str.247(%rip), %r15
	movq	%rax, %rdi
	movq	%r15, %rsi
	callq	npk_string_concat_simple@PLT
	movq	%rax, %r12
	movl	$27, %edi
	callq	npk_string_from_char_simple@PLT
	movq	%rax, %r13
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	npk_string_concat_simple@PLT
	leaq	.L.str.261(%rip), %rsi
	movq	%rax, %rdi
	callq	npk_string_concat_simple@PLT
	movq	%rax, %rdi
	movq	%r14, %rsi
	callq	npk_string_concat_simple@PLT
	movq	%rax, %rdi
	movq	%r12, %rsi
	callq	npk_string_concat_simple@PLT
	movq	%rax, %rdi
	movq	%r13, %rsi
	callq	npk_string_concat_simple@PLT
	movq	%rax, %rdi
	movq	%r15, %rsi
	callq	npk_string_concat_simple@PLT
	movq	(%rax), %rdi
	callq	npk_print_cstr@PLT
	movq	%rsp, %rax
	leaq	-16(%rax), %r14
	movq	%r14, %rsp
	movl	$0, -16(%rax)
	movq	-64(%rbp), %r15
	movq	%r15, %rdi
	callq	npk_string_trim_simple@PLT
	movq	%rax, %rbx
	movq	(%rax), %rdi
	movq	8(%rax), %rsi
	leaq	.L.str.data.310(%rip), %rdx
	movl	$1, %ecx
	callq	npk_string_starts_with@PLT
	testb	$1, %al
	je	.LBB11_36
	movl	$1, (%r14)
.LBB11_36:
	movq	(%rbx), %rdi
	movq	8(%rbx), %rsi
	leaq	.L.str.data.312(%rip), %rdx
	movl	$1, %ecx
	callq	npk_string_starts_with@PLT
	testb	$1, %al
	je	.LBB11_38
	movl	$1, (%r14)
.LBB11_38:
	cmpl	$1, (%r14)
	jne	.LBB11_40
	movl	$27, %edi
	callq	npk_string_from_char_simple@PLT
	movq	%rax, %rbx
	leaq	.L.str.243(%rip), %rsi
	movq	%rax, %rdi
	callq	npk_string_concat_simple@PLT
	leaq	.L.str.257(%rip), %rsi
	movq	%rax, %rdi
	callq	npk_string_concat_simple@PLT
	leaq	.L.str.245(%rip), %rsi
	movq	%rax, %rdi
	callq	npk_string_concat_simple@PLT
	movq	%rax, %rdi
	movq	%r15, %rsi
	callq	npk_string_concat_simple@PLT
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	npk_string_concat_simple@PLT
	leaq	.L.str.247(%rip), %rsi
	movq	%rax, %rdi
	callq	npk_string_concat_simple@PLT
	movq	%rax, %r15
.LBB11_40:
	movq	(%r15), %rdi
	callq	npk_print_cstr@PLT
	leaq	.L.str.data.314(%rip), %rdi
	callq	npk_print_cstr@PLT
	xorl	%eax, %eax
	xorl	%edx, %edx
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end11:
	.size	formatter.format_response, .Lfunc_end11-formatter.format_response
	.cfi_endproc

	.p2align	4
	.type	args_load,@function
args_load:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	leaq	.L.str.317(%rip), %rdi
	leaq	.L.str.319(%rip), %rsi
	callq	fopen@PLT
	testq	%rax, %rax
	je	.LBB12_1
	movq	%rax, %rbx
	movq	%rsp, %rax
	leaq	-16(%rax), %r15
	movq	%r15, %rsp
	leaq	.L.str.323(%rip), %r14
	movq	%r14, -16(%rax)
	movq	%rbx, %rdi
	callq	fgetc@PLT
	testl	%eax, %eax
	js	.LBB12_4
	movl	%eax, %r13d
	leaq	.L.str.323(%rip), %r14
	leaq	.L.str.325(%rip), %r12
	jmp	.LBB12_6
	.p2align	4
.LBB12_9:
	movl	%r13d, %edi
	callq	npk_string_from_char_simple@PLT
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	npk_string_concat_simple@PLT
	movq	%rax, %r12
.LBB12_10:
	movq	%rbx, %rdi
	callq	fgetc@PLT
	movl	%eax, %r13d
	callq	npk_gc_safepoint@PLT
	testl	%r13d, %r13d
	js	.LBB12_11
.LBB12_6:
	testl	%r13d, %r13d
	jne	.LBB12_9
	cmpq	$0, 8(%r12)
	jle	.LBB12_10
	movq	%r12, %rdi
	leaq	.L.str.327(%rip), %rsi
	callq	npk_string_concat_simple@PLT
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	npk_string_concat_simple@PLT
	movq	%rax, %r14
	leaq	.L.str.329(%rip), %r12
	jmp	.LBB12_10
.LBB12_1:
	leaq	.L.str.321(%rip), %rax
	jmp	.LBB12_2
.LBB12_4:
	leaq	.L.str.325(%rip), %r12
.LBB12_11:
	movq	%r14, (%r15)
	cmpq	$0, 8(%r12)
	jle	.LBB12_13
	movq	(%r15), %r14
	leaq	.L.str.331(%rip), %rsi
	movq	%r12, %rdi
	callq	npk_string_concat_simple@PLT
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	npk_string_concat_simple@PLT
	movq	%rax, (%r15)
.LBB12_13:
	movq	%rbx, %rdi
	callq	fclose@PLT
	movq	(%r15), %rax
.LBB12_2:
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end12:
	.size	args_load, .Lfunc_end12-args_load
	.cfi_endproc

	.globl	main
	.p2align	4
	.type	main,@function
main:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$136, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rsi, %rbx
	movl	%edi, %r14d
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	npk_gc_init@PLT
	movl	%r14d, %edi
	movq	%rbx, %rsi
	callq	npk_args_init@PLT
	callq	npk_streams_init@PLT
	callq	args_load
	movq	%rax, %rbx
	movq	8(%rax), %r13
	testq	%r13, %r13
	jle	.LBB13_1
	xorl	%esi, %esi
	leaq	.L.str.data.53(%rip), %r14
	xorl	%r12d, %r12d
	.p2align	4
.LBB13_3:
	leaq	1(%rsi), %r15
	movq	%rbx, %rdi
	movq	%r15, %rdx
	callq	npk_string_substring_simple@PLT
	movq	(%rax), %rdi
	movq	8(%rax), %rsi
	movl	$1, %ecx
	movq	%r14, %rdx
	callq	npk_string_equals@PLT
	movzbl	%al, %eax
	andl	$1, %eax
	addq	%rax, %r12
	callq	npk_gc_safepoint@PLT
	movq	%r15, %rsi
	cmpq	%r15, %r13
	jne	.LBB13_3
	addq	$-2, %r12
	jmp	.LBB13_5
.LBB13_1:
	movq	$-2, %r12
.LBB13_5:
	xorl	%r14d, %r14d
	testq	%r12, %r12
	cmovgq	%r12, %r14
	leaq	.L.str.333(%rip), %rdi
	leaq	.L.str.11(%rip), %rsi
	callq	npk_string_concat_simple@PLT
	leaq	.L.str.10(%rip), %rdi
	movq	%rax, %rsi
	callq	npk_string_concat_simple@PLT
	movq	(%rbx), %rdi
	movq	8(%rbx), %rsi
	movq	(%rax), %rdx
	movq	8(%rax), %rcx
	callq	npk_string_contains@PLT
	testb	$1, %al
	je	.LBB13_7
	leaq	.L.str.data.334(%rip), %rdi
	callq	npk_print_cstr@PLT
	leaq	.L.str.data.336(%rip), %rdi
	callq	npk_print_cstr@PLT
	leaq	.L.str.data.338(%rip), %rdi
	callq	npk_print_cstr@PLT
	leaq	.L.str.data.340(%rip), %rdi
	callq	npk_print_cstr@PLT
	leaq	.L.str.data.342(%rip), %rdi
	callq	npk_print_cstr@PLT
	leaq	.L.str.data.344(%rip), %rdi
	callq	npk_print_cstr@PLT
	leaq	.L.str.data.346(%rip), %rdi
	callq	npk_print_cstr@PLT
	xorl	%edi, %edi
	callq	proc_exit@PLT
.LBB13_7:
	leaq	.L.str.349(%rip), %rdi
	leaq	.L.str.11(%rip), %rsi
	callq	npk_string_concat_simple@PLT
	leaq	.L.str.10(%rip), %rdi
	movq	%rax, %rsi
	callq	npk_string_concat_simple@PLT
	movq	(%rbx), %rdi
	movq	8(%rbx), %rsi
	movq	(%rax), %rdx
	movq	8(%rax), %rcx
	callq	npk_string_contains@PLT
	testb	$1, %al
	je	.LBB13_9
	leaq	.L.str.data.350(%rip), %rdi
	callq	npk_print_cstr@PLT
	xorl	%edi, %edi
	callq	proc_exit@PLT
.LBB13_9:
	testl	%r14d, %r14d
	jg	.LBB13_11
	leaq	.L.str.data.352(%rip), %rdi
	callq	npk_print_cstr@PLT
	leaq	.L.str.data.354(%rip), %rdi
	callq	npk_print_cstr@PLT
	movl	$1, %edi
	callq	proc_exit@PLT
.LBB13_11:
	movq	%rsp, %r14
	leaq	-16(%r14), %r15
	movq	%r15, %rsp
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	nitpick_args.args_at@PLT
	movq	%rax, -16(%r14)
	movq	(%rax), %rdi
	movq	8(%rax), %rsi
	leaq	.L.str.data.356(%rip), %rdx
	movl	$2, %ecx
	callq	npk_string_starts_with@PLT
	testb	$1, %al
	je	.LBB13_13
	leaq	.L.str.data.358(%rip), %rdi
	callq	npk_print_cstr@PLT
	movl	$1, %edi
	callq	proc_exit@PLT
.LBB13_13:
	movq	%rsp, %r14
	leaq	-16(%r14), %rax
	movq	%rax, -72(%rbp)
	movq	%rax, %rsp
	leaq	.L.str.361(%rip), %rsi
	movq	%rbx, %rdi
	callq	nitpick_args.args_get@PLT
	movq	%rax, -16(%r14)
	leaq	.L.str.363(%rip), %rsi
	movq	%rbx, %rdi
	callq	nitpick_args.args_get@PLT
	movq	%rax, %r14
	movq	%rsp, %rax
	leaq	-16(%rax), %r12
	movq	%r12, %rsp
	movl	$0, -16(%rax)
	leaq	.L.str.365(%rip), %rdi
	leaq	.L.str.11(%rip), %rsi
	callq	npk_string_concat_simple@PLT
	leaq	.L.str.10(%rip), %rdi
	movq	%rax, %rsi
	callq	npk_string_concat_simple@PLT
	movq	(%rbx), %rdi
	movq	8(%rbx), %rsi
	movq	(%rax), %rdx
	movq	8(%rax), %rcx
	callq	npk_string_contains@PLT
	testb	$1, %al
	je	.LBB13_15
	movl	$1, (%r12)
.LBB13_15:
	leaq	.L.str.367(%rip), %rdi
	leaq	.L.str.11(%rip), %rsi
	callq	npk_string_concat_simple@PLT
	leaq	.L.str.10(%rip), %rdi
	movq	%rax, %rsi
	callq	npk_string_concat_simple@PLT
	movq	(%rbx), %rdi
	movq	8(%rbx), %rsi
	movq	(%rax), %rdx
	movq	8(%rax), %rcx
	callq	npk_string_contains@PLT
	testb	$1, %al
	je	.LBB13_17
	movl	$1, (%r12)
.LBB13_17:
	leaq	.L.str.data.368(%rip), %rdi
	callq	npk_print_cstr@PLT
	movq	(%r15), %rbx
	movq	(%rbx), %rdi
	callq	npk_print_cstr@PLT
	leaq	.L.str.data.370(%rip), %rdi
	callq	npk_print_cstr@PLT
	movq	%r12, -48(%rbp)
	movq	%rsp, %r12
	leaq	-48(%r12), %r15
	movq	%r15, %rsp
	leaq	-128(%rbp), %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	parser.parse_request@PLT
	movl	-92(%rbp), %eax
	movl	-96(%rbp), %ecx
	movq	-104(%rbp), %rdx
	movq	-112(%rbp), %rbx
	movq	-128(%rbp), %r13
	movq	-120(%rbp), %r14
	movq	%r13, -48(%r12)
	movq	%r14, -40(%r12)
	movq	%rbx, -32(%r12)
	movq	%rdx, -24(%r12)
	movl	%ecx, -16(%r12)
	movl	%eax, -12(%r12)
	movq	-48(%rbp), %rax
	cmpl	$1, (%rax)
	jne	.LBB13_23
	leaq	.L.str.data.372(%rip), %rdi
	callq	npk_print_cstr@PLT
	movq	(%r13), %rdi
	callq	npk_print_cstr@PLT
	leaq	.L.str.data.374(%rip), %rdi
	callq	npk_print_cstr@PLT
	movq	(%r14), %rdi
	callq	npk_print_cstr@PLT
	leaq	.L.str.data.376(%rip), %rdi
	callq	npk_print_cstr@PLT
	leaq	.L.str.379(%rip), %rsi
	leaq	.L.str.381(%rip), %rdx
	movq	%rbx, %rdi
	callq	nitpick_str.str_replace_all@PLT
	cmpq	$0, 8(%rax)
	jle	.LBB13_20
	movq	(%rax), %rdi
	callq	npk_print_cstr@PLT
	leaq	.L.str.data.382(%rip), %rdi
	callq	npk_print_cstr@PLT
.LBB13_20:
	movq	24(%r15), %rbx
	cmpq	$0, 8(%rbx)
	jle	.LBB13_22
	leaq	.L.str.data.384(%rip), %rdi
	callq	npk_print_cstr@PLT
	movq	(%rbx), %rdi
	callq	npk_print_cstr@PLT
	leaq	.L.str.data.386(%rip), %rdi
	callq	npk_print_cstr@PLT
.LBB13_22:
	leaq	.L.str.data.388(%rip), %rdi
	callq	npk_print_cstr@PLT
.LBB13_23:
	leaq	.L.str.data.390(%rip), %rdi
	callq	npk_print_cstr@PLT
	movq	8(%r15), %rbx
	movq	(%rbx), %rdi
	callq	npk_print_cstr@PLT
	leaq	.L.str.data.392(%rip), %rdi
	callq	npk_print_cstr@PLT
	movq	%rsp, %r13
	leaq	-32(%r13), %rax
	movq	%rax, -64(%rbp)
	movq	%rax, %rsp
	movq	(%r15), %r14
	movq	16(%r15), %rax
	movq	%rax, -48(%rbp)
	movq	24(%r15), %r12
	movl	32(%r15), %eax
	movl	%eax, -52(%rbp)
	movl	36(%r15), %r15d
	callq	nitpick_http_init@PLT
	subq	$8, %rsp
	leaq	-176(%rbp), %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	movq	-48(%rbp), %rcx
	movq	%r12, %r8
	movl	-52(%rbp), %r9d
	pushq	%r15
	callq	client.client_send@PLT
	addq	$16, %rsp
	movq	-152(%rbp), %rbx
	movq	-160(%rbp), %r14
	movq	-168(%rbp), %r15
	movl	-176(%rbp), %r12d
	callq	nitpick_http_cleanup@PLT
	movl	%r12d, -32(%r13)
	movq	%r15, -24(%r13)
	movq	%r14, -16(%r13)
	movq	%rbx, -8(%r13)
	movl	%r12d, %edi
	movq	%r15, %rsi
	movq	%r14, %rdx
	movq	%rbx, %rcx
	callq	formatter.format_response@PLT
	movq	-72(%rbp), %rax
	movq	(%rax), %rbx
	cmpq	$0, 8(%rbx)
	jle	.LBB13_28
	movq	-64(%rbp), %rax
	movq	16(%rax), %rsi
	movq	%rbx, %rdi
	callq	nitpick_fs_write_file@PLT
	cmpl	$1, %eax
	jne	.LBB13_25
	leaq	.L.str.data.394(%rip), %rdi
	callq	npk_print_cstr@PLT
	movq	(%rbx), %rdi
	callq	npk_print_cstr@PLT
	leaq	.L.str.data.396(%rip), %rdi
	jmp	.LBB13_27
.LBB13_25:
	leaq	.L.str.data.398(%rip), %rdi
.LBB13_27:
	callq	npk_print_cstr@PLT
.LBB13_28:
	xorl	%edi, %edi
	callq	proc_exit@PLT
	xorl	%eax, %eax
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end13:
	.size	main, .Lfunc_end13-main
	.cfi_endproc

	.type	.L.str.data.1,@object
	.section	.rodata,"a",@progbits
.L.str.data.1:
	.zero	1
	.size	.L.str.data.1, 1

	.type	.L.str.2,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.2:
	.quad	.L.str.data.1
	.quad	0
	.size	.L.str.2, 16

	.type	.L.str.data.3,@object
	.section	.rodata,"a",@progbits
.L.str.data.3:
	.asciz	"|"
	.size	.L.str.data.3, 2

	.type	.L.str.4,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.4:
	.quad	.L.str.data.3
	.quad	1
	.size	.L.str.4, 16

	.type	.L.str.data.5,@object
	.section	.rodata,"a",@progbits
.L.str.data.5:
	.zero	1
	.size	.L.str.data.5, 1

	.type	.L.str.6,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.6:
	.quad	.L.str.data.5
	.quad	0
	.size	.L.str.6, 16

	.type	.L.str.data.7,@object
	.section	.rodata,"a",@progbits
.L.str.data.7:
	.zero	1
	.size	.L.str.data.7, 1

	.type	.L.str.8,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.8:
	.quad	.L.str.data.7
	.quad	0
	.size	.L.str.8, 16

	.type	.L.str.data.9,@object
	.section	.rodata,"a",@progbits
.L.str.data.9:
	.asciz	"|"
	.size	.L.str.data.9, 2

	.type	.L.str.10,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.10:
	.quad	.L.str.data.9
	.quad	1
	.size	.L.str.10, 16

	.type	.L.str.11,@object
	.p2align	3, 0x0
.L.str.11:
	.quad	.L.str.data.9
	.quad	1
	.size	.L.str.11, 16

	.type	.L.str.data.12,@object
	.section	.rodata,"a",@progbits
.L.str.data.12:
	.asciz	"|"
	.size	.L.str.data.12, 2

	.type	.L.str.13,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.13:
	.quad	.L.str.data.12
	.quad	1
	.size	.L.str.13, 16

	.type	.L.str.14,@object
	.p2align	3, 0x0
.L.str.14:
	.quad	.L.str.data.12
	.quad	1
	.size	.L.str.14, 16

	.type	.L.str.data.17,@object
	.section	.rodata,"a",@progbits
.L.str.data.17:
	.zero	1
	.size	.L.str.data.17, 1

	.type	.L.str.18,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.18:
	.quad	.L.str.data.17
	.quad	0
	.size	.L.str.18, 16

	.type	.L.str.data.19,@object
	.section	.rodata,"a",@progbits
.L.str.data.19:
	.zero	1
	.size	.L.str.data.19, 1

	.type	.L.str.20,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.20:
	.quad	.L.str.data.19
	.quad	0
	.size	.L.str.20, 16

	.type	.L.str.data.21,@object
	.section	.rodata,"a",@progbits
.L.str.data.21:
	.asciz	"|"
	.size	.L.str.data.21, 2

	.type	.L.str.22,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.22:
	.quad	.L.str.data.21
	.quad	1
	.size	.L.str.22, 16

	.type	.L.str.data.23,@object
	.section	.rodata,"a",@progbits
.L.str.data.23:
	.zero	1
	.size	.L.str.data.23, 1

	.type	.L.str.24,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.24:
	.quad	.L.str.data.23
	.quad	0
	.size	.L.str.24, 16

	.type	.L.str.data.53,@object
	.section	.rodata,"a",@progbits
.L.str.data.53:
	.asciz	"|"
	.size	.L.str.data.53, 2

	.type	.L.str.data.116,@object
.L.str.data.116:
	.zero	1
	.size	.L.str.data.116, 1

	.type	.L.str.117,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.117:
	.quad	.L.str.data.116
	.quad	0
	.size	.L.str.117, 16

	.type	.L.str.data.118,@object
	.section	.rodata,"a",@progbits
.L.str.data.118:
	.zero	1
	.size	.L.str.data.118, 1

	.type	.L.str.119,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.119:
	.quad	.L.str.data.118
	.quad	0
	.size	.L.str.119, 16

	.type	.L.str.data.120,@object
	.section	.rodata,"a",@progbits
.L.str.data.120:
	.asciz	"|"
	.size	.L.str.data.120, 2

	.type	.L.str.121,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.121:
	.quad	.L.str.data.120
	.quad	1
	.size	.L.str.121, 16

	.type	.L.str.data.128,@object
	.section	.rodata,"a",@progbits
.L.str.data.128:
	.zero	1
	.size	.L.str.data.128, 1

	.type	.L.str.129,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.129:
	.quad	.L.str.data.128
	.quad	0
	.size	.L.str.129, 16

	.type	.L.str.data.136,@object
	.section	.rodata,"a",@progbits
.L.str.data.136:
	.asciz	"\n"
	.size	.L.str.data.136, 2

	.type	.L.str.137,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.137:
	.quad	.L.str.data.136
	.quad	1
	.size	.L.str.137, 16

	.type	.L.str.data.138,@object
	.section	.rodata,"a",@progbits
.L.str.data.138:
	.zero	1
	.size	.L.str.data.138, 1

	.type	.L.str.139,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.139:
	.quad	.L.str.data.138
	.quad	0
	.size	.L.str.139, 16

	.type	.L.str.data.140,@object
	.section	.rodata,"a",@progbits
.L.str.data.140:
	.zero	1
	.size	.L.str.data.140, 1

	.type	.L.str.141,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.141:
	.quad	.L.str.data.140
	.quad	0
	.size	.L.str.141, 16

	.type	.L.str.data.150,@object
	.section	.rodata,"a",@progbits
.L.str.data.150:
	.asciz	"r"
	.size	.L.str.data.150, 2

	.type	.L.str.151,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.151:
	.quad	.L.str.data.150
	.quad	1
	.size	.L.str.151, 16

	.type	.L.str.data.152,@object
	.section	.rodata,"a",@progbits
.L.str.data.152:
	.zero	1
	.size	.L.str.data.152, 1

	.type	.L.str.153,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.153:
	.quad	.L.str.data.152
	.quad	0
	.size	.L.str.153, 16

	.type	.L.str.data.154,@object
	.section	.rodata,"a",@progbits
.L.str.data.154:
	.zero	1
	.size	.L.str.data.154, 1

	.type	.L.str.155,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.155:
	.quad	.L.str.data.154
	.quad	0
	.size	.L.str.155, 16

	.type	.L.str.data.156,@object
	.section	.rodata,"a",@progbits
.L.str.data.156:
	.zero	1
	.size	.L.str.data.156, 1

	.type	.L.str.157,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.157:
	.quad	.L.str.data.156
	.quad	0
	.size	.L.str.157, 16

	.type	.L.str.data.158,@object
	.section	.rodata,"a",@progbits
.L.str.data.158:
	.asciz	"r"
	.size	.L.str.data.158, 2

	.type	.L.str.159,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.159:
	.quad	.L.str.data.158
	.quad	1
	.size	.L.str.159, 16

	.type	.L.str.data.160,@object
	.section	.rodata,"a",@progbits
.L.str.data.160:
	.zero	1
	.size	.L.str.data.160, 1

	.type	.L.str.161,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.161:
	.quad	.L.str.data.160
	.quad	0
	.size	.L.str.161, 16

	.type	.L.str.data.162,@object
	.section	.rodata,"a",@progbits
.L.str.data.162:
	.zero	1
	.size	.L.str.data.162, 1

	.type	.L.str.163,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.163:
	.quad	.L.str.data.162
	.quad	0
	.size	.L.str.163, 16

	.type	.L.str.data.164,@object
	.section	.rodata,"a",@progbits
.L.str.data.164:
	.zero	1
	.size	.L.str.data.164, 1

	.type	.L.str.165,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.165:
	.quad	.L.str.data.164
	.quad	0
	.size	.L.str.165, 16

	.type	.L.str.data.166,@object
	.section	.rodata,"a",@progbits
.L.str.data.166:
	.asciz	"="
	.size	.L.str.data.166, 2

	.type	.L.str.167,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.167:
	.quad	.L.str.data.166
	.quad	1
	.size	.L.str.167, 16

	.type	.L.str.data.168,@object
	.section	.rodata,"a",@progbits
.L.str.data.168:
	.zero	1
	.size	.L.str.data.168, 1

	.type	.L.str.169,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.169:
	.quad	.L.str.data.168
	.quad	0
	.size	.L.str.169, 16

	.type	.L.str.data.170,@object
	.section	.rodata,"a",@progbits
.L.str.data.170:
	.asciz	"="
	.size	.L.str.data.170, 2

	.type	.L.str.171,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.171:
	.quad	.L.str.data.170
	.quad	1
	.size	.L.str.171, 16

	.type	.L.str.data.172,@object
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
.L.str.data.172:
	.asciz	"/proc/self/environ"
	.size	.L.str.data.172, 19

	.type	.L.str.173,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.173:
	.quad	.L.str.data.172
	.quad	18
	.size	.L.str.173, 16

	.type	.L.str.data.174,@object
	.section	.rodata,"a",@progbits
.L.str.data.174:
	.asciz	"r"
	.size	.L.str.data.174, 2

	.type	.L.str.175,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.175:
	.quad	.L.str.data.174
	.quad	1
	.size	.L.str.175, 16

	.type	.L.str.data.176,@object
	.section	.rodata,"a",@progbits
.L.str.data.176:
	.zero	1
	.size	.L.str.data.176, 1

	.type	.L.str.177,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.177:
	.quad	.L.str.data.176
	.quad	0
	.size	.L.str.177, 16

	.type	.L.str.data.178,@object
	.section	.rodata,"a",@progbits
.L.str.data.178:
	.zero	1
	.size	.L.str.data.178, 1

	.type	.L.str.179,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.179:
	.quad	.L.str.data.178
	.quad	0
	.size	.L.str.179, 16

	.type	.L.str.data.180,@object
	.section	.rodata,"a",@progbits
.L.str.data.180:
	.zero	1
	.size	.L.str.data.180, 1

	.type	.L.str.181,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.181:
	.quad	.L.str.data.180
	.quad	0
	.size	.L.str.181, 16

	.type	.L.str.data.182,@object
	.section	.rodata,"a",@progbits
.L.str.data.182:
	.asciz	"="
	.size	.L.str.data.182, 2

	.type	.L.str.183,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.183:
	.quad	.L.str.data.182
	.quad	1
	.size	.L.str.183, 16

	.type	.L.str.data.184,@object
	.section	.rodata,"a",@progbits
.L.str.data.184:
	.zero	1
	.size	.L.str.data.184, 1

	.type	.L.str.185,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.185:
	.quad	.L.str.data.184
	.quad	0
	.size	.L.str.185, 16

	.type	.L.str.data.186,@object
	.section	.rodata,"a",@progbits
.L.str.data.186:
	.asciz	"{{"
	.size	.L.str.data.186, 3

	.type	.L.str.187,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.187:
	.quad	.L.str.data.186
	.quad	2
	.size	.L.str.187, 16

	.type	.L.str.data.188,@object
	.section	.rodata,"a",@progbits
.L.str.data.188:
	.asciz	"}}"
	.size	.L.str.data.188, 3

	.type	.L.str.189,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.189:
	.quad	.L.str.data.188
	.quad	2
	.size	.L.str.189, 16

	.type	.L.str.data.190,@object
	.section	.rodata,"a",@progbits
.L.str.data.190:
	.asciz	"GET"
	.size	.L.str.data.190, 4

	.type	.L.str.191,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.191:
	.quad	.L.str.data.190
	.quad	3
	.size	.L.str.191, 16

	.type	.L.str.data.192,@object
	.section	.rodata,"a",@progbits
.L.str.data.192:
	.zero	1
	.size	.L.str.data.192, 1

	.type	.L.str.193,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.193:
	.quad	.L.str.data.192
	.quad	0
	.size	.L.str.193, 16

	.type	.L.str.data.194,@object
	.section	.rodata,"a",@progbits
.L.str.data.194:
	.asciz	"\r\n"
	.size	.L.str.data.194, 3

	.type	.L.str.195,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.195:
	.quad	.L.str.data.194
	.quad	2
	.size	.L.str.195, 16

	.type	.L.str.data.196,@object
	.section	.rodata,"a",@progbits
.L.str.data.196:
	.asciz	"\n"
	.size	.L.str.data.196, 2

	.type	.L.str.197,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.197:
	.quad	.L.str.data.196
	.quad	1
	.size	.L.str.197, 16

	.type	.L.str.data.198,@object
	.section	.rodata,"a",@progbits
.L.str.data.198:
	.asciz	"\n"
	.size	.L.str.data.198, 2

	.type	.L.str.199,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.199:
	.quad	.L.str.data.198
	.quad	1
	.size	.L.str.199, 16

	.type	.L.str.data.200,@object
	.section	.rodata,"a",@progbits
.L.str.data.200:
	.asciz	" "
	.size	.L.str.data.200, 2

	.type	.L.str.201,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.201:
	.quad	.L.str.data.200
	.quad	1
	.size	.L.str.201, 16

	.type	.L.str.data.202,@object
	.section	.rodata,"a",@progbits
.L.str.data.202:
	.asciz	" "
	.size	.L.str.data.202, 2

	.type	.L.str.203,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.203:
	.quad	.L.str.data.202
	.quad	1
	.size	.L.str.203, 16

	.type	.L.str.data.204,@object
	.section	.rodata,"a",@progbits
.L.str.data.204:
	.asciz	" "
	.size	.L.str.data.204, 2

	.type	.L.str.205,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.205:
	.quad	.L.str.data.204
	.quad	1
	.size	.L.str.205, 16

	.type	.L.str.data.206,@object
	.section	.rodata,"a",@progbits
.L.str.data.206:
	.zero	1
	.size	.L.str.data.206, 1

	.type	.L.str.207,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.207:
	.quad	.L.str.data.206
	.quad	0
	.size	.L.str.207, 16

	.type	.L.str.data.208,@object
	.section	.rodata,"a",@progbits
.L.str.data.208:
	.asciz	"\n"
	.size	.L.str.data.208, 2

	.type	.L.str.209,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.209:
	.quad	.L.str.data.208
	.quad	1
	.size	.L.str.209, 16

	.type	.L.str.data.210,@object
	.section	.rodata,"a",@progbits
.L.str.data.210:
	.asciz	":"
	.size	.L.str.data.210, 2

	.type	.L.str.211,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.211:
	.quad	.L.str.data.210
	.quad	1
	.size	.L.str.211, 16

	.type	.L.str.data.212,@object
	.section	.rodata,"a",@progbits
.L.str.data.212:
	.asciz	":"
	.size	.L.str.data.212, 2

	.type	.L.str.213,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.213:
	.quad	.L.str.data.212
	.quad	1
	.size	.L.str.213, 16

	.type	.L.str.data.214,@object
	.section	.rodata,"a",@progbits
.L.str.data.214:
	.asciz	":"
	.size	.L.str.data.214, 2

	.type	.L.str.215,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.215:
	.quad	.L.str.data.214
	.quad	1
	.size	.L.str.215, 16

	.type	.L.str.data.216,@object
	.section	.rodata,"a",@progbits
.L.str.data.216:
	.asciz	": "
	.size	.L.str.data.216, 3

	.type	.L.str.217,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.217:
	.quad	.L.str.data.216
	.quad	2
	.size	.L.str.217, 16

	.type	.L.str.data.218,@object
	.section	.rodata,"a",@progbits
.L.str.data.218:
	.asciz	"\n"
	.size	.L.str.data.218, 2

	.type	.L.str.219,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.219:
	.quad	.L.str.data.218
	.quad	1
	.size	.L.str.219, 16

	.type	.L.str.data.224,@object
	.section	.rodata,"a",@progbits
.L.str.data.224:
	.asciz	"|"
	.size	.L.str.data.224, 2

	.type	.L.str.225,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.225:
	.quad	.L.str.data.224
	.quad	1
	.size	.L.str.225, 16

	.type	.L.str.data.226,@object
	.section	.rodata,"a",@progbits
.L.str.data.226:
	.asciz	"GET"
	.size	.L.str.data.226, 4

	.type	.L.str.data.228,@object
.L.str.data.228:
	.asciz	"POST"
	.size	.L.str.data.228, 5

	.type	.L.str.data.230,@object
.L.str.data.230:
	.asciz	"PUT"
	.size	.L.str.data.230, 4

	.type	.L.str.data.232,@object
.L.str.data.232:
	.asciz	"DELETE"
	.size	.L.str.data.232, 7

	.type	.L.str.data.234,@object
.L.str.data.234:
	.asciz	"PATCH"
	.size	.L.str.data.234, 6

	.type	.L.str.data.236,@object
.L.str.data.236:
	.asciz	"HEAD"
	.size	.L.str.data.236, 5

	.type	.L.str.data.242,@object
.L.str.data.242:
	.asciz	"["
	.size	.L.str.data.242, 2

	.type	.L.str.243,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.243:
	.quad	.L.str.data.242
	.quad	1
	.size	.L.str.243, 16

	.type	.L.str.data.244,@object
	.section	.rodata,"a",@progbits
.L.str.data.244:
	.asciz	"m"
	.size	.L.str.data.244, 2

	.type	.L.str.245,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.245:
	.quad	.L.str.data.244
	.quad	1
	.size	.L.str.245, 16

	.type	.L.str.data.246,@object
	.section	.rodata,"a",@progbits
.L.str.data.246:
	.asciz	"[0m"
	.size	.L.str.data.246, 4

	.type	.L.str.247,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.247:
	.quad	.L.str.data.246
	.quad	3
	.size	.L.str.247, 16

	.type	.L.str.data.248,@object
	.section	.rodata,"a",@progbits
.L.str.data.248:
	.zero	1
	.size	.L.str.data.248, 1

	.type	.L.str.249,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.249:
	.quad	.L.str.data.248
	.quad	0
	.size	.L.str.249, 16

	.type	.L.str.data.250,@object
	.section	.rodata,"a",@progbits
.L.str.data.250:
	.asciz	"92"
	.size	.L.str.data.250, 3

	.type	.L.str.251,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.251:
	.quad	.L.str.data.250
	.quad	2
	.size	.L.str.251, 16

	.type	.L.str.data.252,@object
	.section	.rodata,"a",@progbits
.L.str.data.252:
	.asciz	"91"
	.size	.L.str.data.252, 3

	.type	.L.str.253,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.253:
	.quad	.L.str.data.252
	.quad	2
	.size	.L.str.253, 16

	.type	.L.str.data.254,@object
	.section	.rodata,"a",@progbits
.L.str.data.254:
	.asciz	"36"
	.size	.L.str.data.254, 3

	.type	.L.str.255,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.255:
	.quad	.L.str.data.254
	.quad	2
	.size	.L.str.255, 16

	.type	.L.str.data.256,@object
	.section	.rodata,"a",@progbits
.L.str.data.256:
	.asciz	"33"
	.size	.L.str.data.256, 3

	.type	.L.str.257,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.257:
	.quad	.L.str.data.256
	.quad	2
	.size	.L.str.257, 16

	.type	.L.str.data.260,@object
	.section	.rodata,"a",@progbits
.L.str.data.260:
	.asciz	"1"
	.size	.L.str.data.260, 2

	.type	.L.str.261,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.261:
	.quad	.L.str.data.260
	.quad	1
	.size	.L.str.261, 16

	.type	.L.str.data.262,@object
	.section	.rodata,"a",@progbits
.L.str.data.262:
	.asciz	"2"
	.size	.L.str.data.262, 2

	.type	.L.str.263,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.263:
	.quad	.L.str.data.262
	.quad	1
	.size	.L.str.263, 16

	.type	.L.str.data.264,@object
	.section	.rodata,"a",@progbits
.L.str.data.264:
	.asciz	"34"
	.size	.L.str.data.264, 3

	.type	.L.str.265,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.265:
	.quad	.L.str.data.264
	.quad	2
	.size	.L.str.265, 16

	.type	.L.str.data.266,@object
	.section	.rodata,"a",@progbits
.L.str.data.266:
	.asciz	"35"
	.size	.L.str.data.266, 3

	.type	.L.str.267,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.267:
	.quad	.L.str.data.266
	.quad	2
	.size	.L.str.267, 16

	.type	.L.str.data.268,@object
	.section	.rodata,"a",@progbits
.L.str.data.268:
	.asciz	"31"
	.size	.L.str.data.268, 3

	.type	.L.str.269,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.269:
	.quad	.L.str.data.268
	.quad	2
	.size	.L.str.269, 16

	.type	.L.str.data.270,@object
	.section	.rodata,"a",@progbits
.L.str.data.270:
	.asciz	"\n"
	.size	.L.str.data.270, 2

	.type	.L.str.data.272,@object
.L.str.data.272:
	.asciz	"-"
	.size	.L.str.data.272, 2

	.type	.L.str.273,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.273:
	.quad	.L.str.data.272
	.quad	1
	.size	.L.str.273, 16

	.type	.L.str.data.274,@object
	.section	.rodata,"a",@progbits
.L.str.data.274:
	.asciz	"\n"
	.size	.L.str.data.274, 2

	.type	.L.str.data.278,@object
.L.str.data.278:
	.asciz	"Status: "
	.size	.L.str.data.278, 9

	.type	.L.str.279,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.279:
	.quad	.L.str.data.278
	.quad	8
	.size	.L.str.279, 16

	.type	.L.str.data.280,@object
	.section	.rodata,"a",@progbits
.L.str.data.280:
	.asciz	"\n\n"
	.size	.L.str.data.280, 3

	.type	.L.str.data.282,@object
.L.str.data.282:
	.asciz	"Error: "
	.size	.L.str.data.282, 8

	.type	.L.str.283,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.283:
	.quad	.L.str.data.282
	.quad	7
	.size	.L.str.283, 16

	.type	.L.str.data.284,@object
	.section	.rodata,"a",@progbits
.L.str.data.284:
	.asciz	"\n\n"
	.size	.L.str.data.284, 3

	.type	.L.str.data.286,@object
.L.str.data.286:
	.asciz	"Headers:\n"
	.size	.L.str.data.286, 10

	.type	.L.str.287,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.287:
	.quad	.L.str.data.286
	.quad	9
	.size	.L.str.287, 16

	.type	.L.str.data.288,@object
	.section	.rodata,"a",@progbits
.L.str.data.288:
	.asciz	"\n"
	.size	.L.str.data.288, 2

	.type	.L.str.289,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.289:
	.quad	.L.str.data.288
	.quad	1
	.size	.L.str.289, 16

	.type	.L.str.data.290,@object
	.section	.rodata,"a",@progbits
.L.str.data.290:
	.asciz	":"
	.size	.L.str.data.290, 2

	.type	.L.str.291,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.291:
	.quad	.L.str.data.290
	.quad	1
	.size	.L.str.291, 16

	.type	.L.str.data.292,@object
	.section	.rodata,"a",@progbits
.L.str.data.292:
	.asciz	":"
	.size	.L.str.data.292, 2

	.type	.L.str.293,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.293:
	.quad	.L.str.data.292
	.quad	1
	.size	.L.str.293, 16

	.type	.L.str.data.294,@object
	.section	.rodata,"a",@progbits
.L.str.data.294:
	.asciz	":"
	.size	.L.str.data.294, 2

	.type	.L.str.295,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.295:
	.quad	.L.str.data.294
	.quad	1
	.size	.L.str.295, 16

	.type	.L.str.data.296,@object
	.section	.rodata,"a",@progbits
.L.str.data.296:
	.asciz	"  "
	.size	.L.str.data.296, 3

	.type	.L.str.data.298,@object
.L.str.data.298:
	.asciz	": "
	.size	.L.str.data.298, 3

	.type	.L.str.299,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.299:
	.quad	.L.str.data.298
	.quad	2
	.size	.L.str.299, 16

	.type	.L.str.data.300,@object
	.section	.rodata,"a",@progbits
.L.str.data.300:
	.asciz	"\n"
	.size	.L.str.data.300, 2

	.type	.L.str.data.302,@object
.L.str.data.302:
	.asciz	"  "
	.size	.L.str.data.302, 3

	.type	.L.str.data.304,@object
.L.str.data.304:
	.asciz	"\n"
	.size	.L.str.data.304, 2

	.type	.L.str.data.306,@object
.L.str.data.306:
	.asciz	"\n"
	.size	.L.str.data.306, 2

	.type	.L.str.data.308,@object
.L.str.data.308:
	.asciz	"Body:\n"
	.size	.L.str.data.308, 7

	.type	.L.str.309,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.309:
	.quad	.L.str.data.308
	.quad	6
	.size	.L.str.309, 16

	.type	.L.str.data.310,@object
	.section	.rodata,"a",@progbits
.L.str.data.310:
	.asciz	"{"
	.size	.L.str.data.310, 2

	.type	.L.str.data.312,@object
.L.str.data.312:
	.asciz	"["
	.size	.L.str.data.312, 2

	.type	.L.str.data.314,@object
.L.str.data.314:
	.asciz	"\n"
	.size	.L.str.data.314, 2

	.type	.L.str.data.316,@object
	.p2align	4, 0x0
.L.str.data.316:
	.asciz	"/proc/self/cmdline"
	.size	.L.str.data.316, 19

	.type	.L.str.317,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.317:
	.quad	.L.str.data.316
	.quad	18
	.size	.L.str.317, 16

	.type	.L.str.data.318,@object
	.section	.rodata,"a",@progbits
.L.str.data.318:
	.asciz	"r"
	.size	.L.str.data.318, 2

	.type	.L.str.319,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.319:
	.quad	.L.str.data.318
	.quad	1
	.size	.L.str.319, 16

	.type	.L.str.data.320,@object
	.section	.rodata,"a",@progbits
.L.str.data.320:
	.asciz	"|"
	.size	.L.str.data.320, 2

	.type	.L.str.321,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.321:
	.quad	.L.str.data.320
	.quad	1
	.size	.L.str.321, 16

	.type	.L.str.data.322,@object
	.section	.rodata,"a",@progbits
.L.str.data.322:
	.asciz	"|"
	.size	.L.str.data.322, 2

	.type	.L.str.323,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.323:
	.quad	.L.str.data.322
	.quad	1
	.size	.L.str.323, 16

	.type	.L.str.data.324,@object
	.section	.rodata,"a",@progbits
.L.str.data.324:
	.zero	1
	.size	.L.str.data.324, 1

	.type	.L.str.325,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.325:
	.quad	.L.str.data.324
	.quad	0
	.size	.L.str.325, 16

	.type	.L.str.data.326,@object
	.section	.rodata,"a",@progbits
.L.str.data.326:
	.asciz	"|"
	.size	.L.str.data.326, 2

	.type	.L.str.327,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.327:
	.quad	.L.str.data.326
	.quad	1
	.size	.L.str.327, 16

	.type	.L.str.data.328,@object
	.section	.rodata,"a",@progbits
.L.str.data.328:
	.zero	1
	.size	.L.str.data.328, 1

	.type	.L.str.329,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.329:
	.quad	.L.str.data.328
	.quad	0
	.size	.L.str.329, 16

	.type	.L.str.data.330,@object
	.section	.rodata,"a",@progbits
.L.str.data.330:
	.asciz	"|"
	.size	.L.str.data.330, 2

	.type	.L.str.331,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.331:
	.quad	.L.str.data.330
	.quad	1
	.size	.L.str.331, 16

	.type	.L.str.data.332,@object
	.section	.rodata,"a",@progbits
.L.str.data.332:
	.asciz	"--help"
	.size	.L.str.data.332, 7

	.type	.L.str.333,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.333:
	.quad	.L.str.data.332
	.quad	6
	.size	.L.str.333, 16

	.type	.L.str.data.334,@object
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
.L.str.data.334:
	.asciz	"Usage: napit <request_file> [options]\n\n"
	.size	.L.str.data.334, 40

	.type	.L.str.data.336,@object
.L.str.data.336:
	.asciz	"Options:\n"
	.size	.L.str.data.336, 10

	.type	.L.str.data.338,@object
	.p2align	4, 0x0
.L.str.data.338:
	.asciz	"  --output <file> Save response body to file\n"
	.size	.L.str.data.338, 46

	.type	.L.str.data.340,@object
	.p2align	4, 0x0
.L.str.data.340:
	.asciz	"  --env <file>    Load variables from .env file\n"
	.size	.L.str.data.340, 49

	.type	.L.str.data.342,@object
	.p2align	4, 0x0
.L.str.data.342:
	.asciz	"  --verbose, -v   Print verbose outgoing request details\n"
	.size	.L.str.data.342, 58

	.type	.L.str.data.344,@object
	.p2align	4, 0x0
.L.str.data.344:
	.asciz	"  --help          Show this help message\n"
	.size	.L.str.data.344, 42

	.type	.L.str.data.346,@object
	.p2align	4, 0x0
.L.str.data.346:
	.asciz	"  --version       Show version information\n"
	.size	.L.str.data.346, 44

	.type	.L.str.data.348,@object
.L.str.data.348:
	.asciz	"--version"
	.size	.L.str.data.348, 10

	.type	.L.str.349,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.349:
	.quad	.L.str.data.348
	.quad	9
	.size	.L.str.349, 16

	.type	.L.str.data.350,@object
	.section	.rodata,"a",@progbits
.L.str.data.350:
	.asciz	"napit v0.1.0\n"
	.size	.L.str.data.350, 14

	.type	.L.str.data.352,@object
	.p2align	4, 0x0
.L.str.data.352:
	.asciz	"Error: No request file provided.\n"
	.size	.L.str.data.352, 34

	.type	.L.str.data.354,@object
	.p2align	4, 0x0
.L.str.data.354:
	.asciz	"Run 'napit --help' for usage.\n"
	.size	.L.str.data.354, 31

	.type	.L.str.data.356,@object
.L.str.data.356:
	.asciz	"--"
	.size	.L.str.data.356, 3

	.type	.L.str.data.358,@object
	.p2align	4, 0x0
.L.str.data.358:
	.asciz	"Error: The first argument must be the request file.\n"
	.size	.L.str.data.358, 53

	.type	.L.str.data.360,@object
.L.str.data.360:
	.asciz	"--output"
	.size	.L.str.data.360, 9

	.type	.L.str.361,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.361:
	.quad	.L.str.data.360
	.quad	8
	.size	.L.str.361, 16

	.type	.L.str.data.362,@object
	.section	.rodata,"a",@progbits
.L.str.data.362:
	.asciz	"--env"
	.size	.L.str.data.362, 6

	.type	.L.str.363,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.363:
	.quad	.L.str.data.362
	.quad	5
	.size	.L.str.363, 16

	.type	.L.str.data.364,@object
	.section	.rodata,"a",@progbits
.L.str.data.364:
	.asciz	"--verbose"
	.size	.L.str.data.364, 10

	.type	.L.str.365,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.365:
	.quad	.L.str.data.364
	.quad	9
	.size	.L.str.365, 16

	.type	.L.str.data.366,@object
	.section	.rodata,"a",@progbits
.L.str.data.366:
	.asciz	"-v"
	.size	.L.str.data.366, 3

	.type	.L.str.367,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.367:
	.quad	.L.str.data.366
	.quad	2
	.size	.L.str.367, 16

	.type	.L.str.data.368,@object
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
.L.str.data.368:
	.asciz	"Executing request from: "
	.size	.L.str.data.368, 25

	.type	.L.str.data.370,@object
.L.str.data.370:
	.asciz	"\n"
	.size	.L.str.data.370, 2

	.type	.L.str.data.372,@object
	.p2align	4, 0x0
.L.str.data.372:
	.asciz	"\n--- Outgoing Request ---\n"
	.size	.L.str.data.372, 27

	.type	.L.str.data.374,@object
.L.str.data.374:
	.asciz	" "
	.size	.L.str.data.374, 2

	.type	.L.str.data.376,@object
.L.str.data.376:
	.asciz	"\n"
	.size	.L.str.data.376, 2

	.type	.L.str.data.378,@object
.L.str.data.378:
	.asciz	"|"
	.size	.L.str.data.378, 2

	.type	.L.str.379,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.379:
	.quad	.L.str.data.378
	.quad	1
	.size	.L.str.379, 16

	.type	.L.str.data.380,@object
	.section	.rodata,"a",@progbits
.L.str.data.380:
	.asciz	"\n"
	.size	.L.str.data.380, 2

	.type	.L.str.381,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L.str.381:
	.quad	.L.str.data.380
	.quad	1
	.size	.L.str.381, 16

	.type	.L.str.data.382,@object
	.section	.rodata,"a",@progbits
.L.str.data.382:
	.asciz	"\n"
	.size	.L.str.data.382, 2

	.type	.L.str.data.384,@object
.L.str.data.384:
	.asciz	"\n"
	.size	.L.str.data.384, 2

	.type	.L.str.data.386,@object
.L.str.data.386:
	.asciz	"\n"
	.size	.L.str.data.386, 2

	.type	.L.str.data.388,@object
	.p2align	4, 0x0
.L.str.data.388:
	.asciz	"------------------------\n\n"
	.size	.L.str.data.388, 27

	.type	.L.str.data.390,@object
	.p2align	4, 0x0
.L.str.data.390:
	.asciz	"Dispatching request to "
	.size	.L.str.data.390, 24

	.type	.L.str.data.392,@object
.L.str.data.392:
	.asciz	"...\n\n"
	.size	.L.str.data.392, 6

	.type	.L.str.data.394,@object
	.p2align	4, 0x0
.L.str.data.394:
	.asciz	"Response body saved to: "
	.size	.L.str.data.394, 25

	.type	.L.str.data.396,@object
.L.str.data.396:
	.asciz	"\n"
	.size	.L.str.data.396, 2

	.type	.L.str.data.398,@object
	.p2align	4, 0x0
.L.str.data.398:
	.asciz	"Error: Could not open output file for writing.\n"
	.size	.L.str.data.398, 48

	.section	".note.GNU-stack","",@progbits
