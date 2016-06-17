	.file	"hw4main.c"
	.text
.Ltext0:
	.globl	foo
	.type	foo, @function
foo:
.LFB40:
	.file 1 "hw4main.c"
	.loc 1 31 0
	.cfi_startproc
.LVL0:
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rdi, %rbx
	movq	%r8, %r13
	.loc 1 33 0
	testq	%r8, %r8
	jne	.L2
	.loc 1 34 0
	movl	$0, %eax
	call	recover
.LVL1:
	.loc 1 35 0
	movq	%rbx, %rax
	jmp	.L3
.LVL2:
.L2:
	movq	%rsi, %r12
	movq	%rdx, %rbp
	movq	%rcx, %r14
	.loc 1 40 0
	leaq	(%rdi,%rdi), %rdi
	.loc 1 38 0
	leaq	12(%rbx,%rbx), %rax
	testq	%rbx, %rbx
	cmovs	%rax, %rdi
.LVL3:
	.loc 1 44 0
	leaq	(%rsi,%rsi), %rsi
.LVL4:
	.loc 1 42 0
	leaq	34(%r12,%r12), %rax
	testq	%r12, %r12
	cmovs	%rax, %rsi
.LVL5:
	.loc 1 48 0
	leaq	(%rdx,%rdx), %rdx
.LVL6:
	.loc 1 46 0
	leaq	56(%rbp,%rbp), %rax
	testq	%rbp, %rbp
	cmovs	%rax, %rdx
.LVL7:
	.loc 1 52 0
	leaq	1(%rcx), %rcx
.LVL8:
	.loc 1 51 0
	xorq	%rbx, %rdx
.LVL9:
	.loc 1 50 0
	xorq	%rbp, %rsi
.LVL10:
	.loc 1 49 0
	xorq	%r12, %rdi
.LVL11:
	.loc 1 52 0
	leaq	-1(%r8), %r8
.LVL12:
	call	foo
.LVL13:
	addq	%rax, %rbx
.LVL14:
	addq	%rbx, %r12
.LVL15:
	addq	%r12, %rbp
.LVL16:
	addq	%rbp, %r14
.LVL17:
	leaq	(%r14,%r13), %rax
.LVL18:
.L3:
	.loc 1 53 0
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
.LVL19:
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE40:
	.size	foo, .-foo
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"Usage: program <int> <int> <int> <int>"
	.align 8
.LC1:
	.string	"main called with a = 0x%lx, b = 0x%lx, c = 0x%lx, countDown = %ld\n"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC2:
	.string	"foo returns 0x%lx\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB39:
	.loc 1 15 0
	.cfi_startproc
.LVL20:
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	.loc 1 17 0
	cmpl	$5, %edi
	je	.L12
.LVL21:
.LBB16:
.LBB17:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 2 104 0
	movl	$.LC0, %edi
.LVL22:
	call	puts
.LVL23:
.LBE17:
.LBE16:
	.loc 1 19 0
	movl	$-1, %edi
	call	exit
.LVL24:
.L12:
	movq	%rsi, %rbx
.LVL25:
.LBB18:
.LBB19:
	.file 3 "/usr/include/stdlib.h"
	.loc 3 280 0
	movq	8(%rsi), %rdi
.LVL26:
	movl	$10, %edx
	movl	$0, %esi
.LVL27:
	call	strtol
.LVL28:
.LBE19:
.LBE18:
	.loc 1 21 0
	movslq	%eax, %rbp
.LVL29:
.LBB20:
.LBB21:
	.loc 3 280 0
	movq	16(%rbx), %rdi
	movl	$10, %edx
	movl	$0, %esi
	call	strtol
.LVL30:
.LBE21:
.LBE20:
	.loc 1 22 0
	movslq	%eax, %r12
.LVL31:
.LBB22:
.LBB23:
	.loc 3 280 0
	movq	24(%rbx), %rdi
	movl	$10, %edx
	movl	$0, %esi
	call	strtol
.LVL32:
.LBE23:
.LBE22:
	.loc 1 23 0
	movslq	%eax, %r13
.LVL33:
.LBB24:
.LBB25:
	.loc 3 280 0
	movq	32(%rbx), %rdi
	movl	$10, %edx
	movl	$0, %esi
	call	strtol
.LVL34:
.LBE25:
.LBE24:
	.loc 1 24 0
	movslq	%eax, %rbx
.LVL35:
.LBB26:
.LBB27:
	.loc 2 104 0
	movq	%rbx, %r9
	movq	%r13, %r8
	movq	%r12, %rcx
	movq	%rbp, %rdx
	movl	$.LC1, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk
.LVL36:
.LBE27:
.LBE26:
	.loc 1 26 0
	movq	%rbx, %r8
	movl	$0, %ecx
	movq	%r13, %rdx
	movq	%r12, %rsi
	movq	%rbp, %rdi
	call	foo
.LVL37:
.LBB28:
.LBB29:
	.loc 2 104 0
	movq	%rax, %rdx
	movl	$.LC2, %esi
	movl	$1, %edi
	movl	$0, %eax
.LVL38:
	call	__printf_chk
.LVL39:
.LBE29:
.LBE28:
	.loc 1 29 0
	movl	$0, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
.LVL40:
	popq	%rbp
	.cfi_def_cfa_offset 24
.LVL41:
	popq	%r12
	.cfi_def_cfa_offset 16
.LVL42:
	popq	%r13
	.cfi_def_cfa_offset 8
.LVL43:
	ret
	.cfi_endproc
.LFE39:
	.size	main, .-main
.Letext0:
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 6 "/usr/include/libio.h"
	.file 7 "/usr/include/stdio.h"
	.file 8 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x70c
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF65
	.byte	0x1
	.long	.LASF66
	.long	.LASF67
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF7
	.byte	0x4
	.byte	0xd4
	.long	0x38
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.long	.LASF8
	.byte	0x5
	.byte	0x83
	.long	0x69
	.uleb128 0x2
	.long	.LASF9
	.byte	0x5
	.byte	0x84
	.long	0x69
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.long	0x95
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x7
	.long	.LASF41
	.byte	0xd8
	.byte	0x6
	.byte	0xf5
	.long	0x21c
	.uleb128 0x8
	.long	.LASF12
	.byte	0x6
	.byte	0xf6
	.long	0x62
	.byte	0
	.uleb128 0x8
	.long	.LASF13
	.byte	0x6
	.byte	0xfb
	.long	0x8f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF14
	.byte	0x6
	.byte	0xfc
	.long	0x8f
	.byte	0x10
	.uleb128 0x8
	.long	.LASF15
	.byte	0x6
	.byte	0xfd
	.long	0x8f
	.byte	0x18
	.uleb128 0x8
	.long	.LASF16
	.byte	0x6
	.byte	0xfe
	.long	0x8f
	.byte	0x20
	.uleb128 0x8
	.long	.LASF17
	.byte	0x6
	.byte	0xff
	.long	0x8f
	.byte	0x28
	.uleb128 0x9
	.long	.LASF18
	.byte	0x6
	.value	0x100
	.long	0x8f
	.byte	0x30
	.uleb128 0x9
	.long	.LASF19
	.byte	0x6
	.value	0x101
	.long	0x8f
	.byte	0x38
	.uleb128 0x9
	.long	.LASF20
	.byte	0x6
	.value	0x102
	.long	0x8f
	.byte	0x40
	.uleb128 0x9
	.long	.LASF21
	.byte	0x6
	.value	0x104
	.long	0x8f
	.byte	0x48
	.uleb128 0x9
	.long	.LASF22
	.byte	0x6
	.value	0x105
	.long	0x8f
	.byte	0x50
	.uleb128 0x9
	.long	.LASF23
	.byte	0x6
	.value	0x106
	.long	0x8f
	.byte	0x58
	.uleb128 0x9
	.long	.LASF24
	.byte	0x6
	.value	0x108
	.long	0x254
	.byte	0x60
	.uleb128 0x9
	.long	.LASF25
	.byte	0x6
	.value	0x10a
	.long	0x25a
	.byte	0x68
	.uleb128 0x9
	.long	.LASF26
	.byte	0x6
	.value	0x10c
	.long	0x62
	.byte	0x70
	.uleb128 0x9
	.long	.LASF27
	.byte	0x6
	.value	0x110
	.long	0x62
	.byte	0x74
	.uleb128 0x9
	.long	.LASF28
	.byte	0x6
	.value	0x112
	.long	0x70
	.byte	0x78
	.uleb128 0x9
	.long	.LASF29
	.byte	0x6
	.value	0x116
	.long	0x46
	.byte	0x80
	.uleb128 0x9
	.long	.LASF30
	.byte	0x6
	.value	0x117
	.long	0x54
	.byte	0x82
	.uleb128 0x9
	.long	.LASF31
	.byte	0x6
	.value	0x118
	.long	0x260
	.byte	0x83
	.uleb128 0x9
	.long	.LASF32
	.byte	0x6
	.value	0x11c
	.long	0x270
	.byte	0x88
	.uleb128 0x9
	.long	.LASF33
	.byte	0x6
	.value	0x125
	.long	0x7b
	.byte	0x90
	.uleb128 0x9
	.long	.LASF34
	.byte	0x6
	.value	0x12e
	.long	0x8d
	.byte	0x98
	.uleb128 0x9
	.long	.LASF35
	.byte	0x6
	.value	0x12f
	.long	0x8d
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF36
	.byte	0x6
	.value	0x130
	.long	0x8d
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF37
	.byte	0x6
	.value	0x131
	.long	0x8d
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF38
	.byte	0x6
	.value	0x132
	.long	0x2d
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF39
	.byte	0x6
	.value	0x134
	.long	0x62
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF40
	.byte	0x6
	.value	0x136
	.long	0x276
	.byte	0xc4
	.byte	0
	.uleb128 0xa
	.long	.LASF68
	.byte	0x6
	.byte	0x9a
	.uleb128 0x7
	.long	.LASF42
	.byte	0x18
	.byte	0x6
	.byte	0xa0
	.long	0x254
	.uleb128 0x8
	.long	.LASF43
	.byte	0x6
	.byte	0xa1
	.long	0x254
	.byte	0
	.uleb128 0x8
	.long	.LASF44
	.byte	0x6
	.byte	0xa2
	.long	0x25a
	.byte	0x8
	.uleb128 0x8
	.long	.LASF45
	.byte	0x6
	.byte	0xa6
	.long	0x62
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x223
	.uleb128 0x6
	.byte	0x8
	.long	0x9c
	.uleb128 0xb
	.long	0x95
	.long	0x270
	.uleb128 0xc
	.long	0x86
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x21c
	.uleb128 0xb
	.long	0x95
	.long	0x286
	.uleb128 0xc
	.long	0x86
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x28c
	.uleb128 0xd
	.long	0x95
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF46
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF47
	.uleb128 0xe
	.long	.LASF58
	.byte	0x2
	.byte	0x66
	.long	0x62
	.byte	0x3
	.long	0x2bc
	.uleb128 0xf
	.long	.LASF48
	.byte	0x2
	.byte	0x66
	.long	0x286
	.uleb128 0x10
	.byte	0
	.uleb128 0x11
	.long	.LASF60
	.byte	0x3
	.value	0x116
	.long	0x62
	.byte	0x3
	.long	0x2da
	.uleb128 0x12
	.long	.LASF49
	.byte	0x3
	.value	0x116
	.long	0x286
	.byte	0
	.uleb128 0x13
	.string	"foo"
	.byte	0x1
	.byte	0x1f
	.long	0x69
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x3dd
	.uleb128 0x14
	.string	"a"
	.byte	0x1
	.byte	0x1f
	.long	0x69
	.long	.LLST0
	.uleb128 0x14
	.string	"b"
	.byte	0x1
	.byte	0x1f
	.long	0x69
	.long	.LLST1
	.uleb128 0x14
	.string	"c"
	.byte	0x1
	.byte	0x1f
	.long	0x69
	.long	.LLST2
	.uleb128 0x15
	.long	.LASF50
	.byte	0x1
	.byte	0x1f
	.long	0x69
	.long	.LLST3
	.uleb128 0x15
	.long	.LASF51
	.byte	0x1
	.byte	0x1f
	.long	0x69
	.long	.LLST4
	.uleb128 0x16
	.string	"x"
	.byte	0x1
	.byte	0x20
	.long	0x69
	.long	.LLST5
	.uleb128 0x16
	.string	"y"
	.byte	0x1
	.byte	0x20
	.long	0x69
	.long	.LLST6
	.uleb128 0x16
	.string	"z"
	.byte	0x1
	.byte	0x20
	.long	0x69
	.long	.LLST7
	.uleb128 0x17
	.quad	.LVL1
	.long	0x6a1
	.uleb128 0x18
	.quad	.LVL13
	.long	0x2da
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x16
	.byte	0x73
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x23
	.uleb128 0xc
	.byte	0x73
	.sleb128 0
	.byte	0x30
	.byte	0x2a
	.byte	0x28
	.value	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x7c
	.sleb128 0
	.byte	0x27
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x16
	.byte	0x7c
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x7c
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x23
	.uleb128 0x22
	.byte	0x7c
	.sleb128 0
	.byte	0x30
	.byte	0x2a
	.byte	0x28
	.value	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x76
	.sleb128 0
	.byte	0x27
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x16
	.byte	0x76
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x76
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x23
	.uleb128 0x38
	.byte	0x76
	.sleb128 0
	.byte	0x30
	.byte	0x2a
	.byte	0x28
	.value	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x73
	.sleb128 0
	.byte	0x27
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7e
	.sleb128 1
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2
	.byte	0x7d
	.sleb128 -1
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	.LASF52
	.byte	0x1
	.byte	0xf
	.long	0x62
	.quad	.LFB39
	.quad	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.long	0x685
	.uleb128 0x15
	.long	.LASF53
	.byte	0x1
	.byte	0xf
	.long	0x62
	.long	.LLST8
	.uleb128 0x15
	.long	.LASF54
	.byte	0x1
	.byte	0xf
	.long	0x685
	.long	.LLST9
	.uleb128 0x16
	.string	"a"
	.byte	0x1
	.byte	0x10
	.long	0x69
	.long	.LLST10
	.uleb128 0x16
	.string	"b"
	.byte	0x1
	.byte	0x10
	.long	0x69
	.long	.LLST11
	.uleb128 0x16
	.string	"c"
	.byte	0x1
	.byte	0x10
	.long	0x69
	.long	.LLST12
	.uleb128 0x1b
	.long	.LASF51
	.byte	0x1
	.byte	0x10
	.long	0x69
	.long	.LLST13
	.uleb128 0x1b
	.long	.LASF55
	.byte	0x1
	.byte	0x10
	.long	0x69
	.long	.LLST14
	.uleb128 0x1c
	.long	0x29f
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.byte	0x1
	.byte	0x12
	.long	0x49d
	.uleb128 0x1d
	.long	0x2af
	.uleb128 0x18
	.quad	.LVL23
	.long	0x6ae
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	0x2bc
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.byte	0x1
	.byte	0x15
	.long	0x4da
	.uleb128 0x1e
	.long	0x2cd
	.long	.LLST16
	.uleb128 0x18
	.quad	.LVL28
	.long	0x6c7
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	0x2bc
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.byte	0x1
	.byte	0x16
	.long	0x517
	.uleb128 0x1e
	.long	0x2cd
	.long	.LLST17
	.uleb128 0x18
	.quad	.LVL30
	.long	0x6c7
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	0x2bc
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.byte	0x1
	.byte	0x17
	.long	0x554
	.uleb128 0x1e
	.long	0x2cd
	.long	.LLST18
	.uleb128 0x18
	.quad	.LVL32
	.long	0x6c7
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	0x2bc
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.byte	0x1
	.byte	0x18
	.long	0x591
	.uleb128 0x1e
	.long	0x2cd
	.long	.LLST19
	.uleb128 0x18
	.quad	.LVL34
	.long	0x6c7
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	0x29f
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.byte	0x1
	.byte	0x19
	.long	0x5f5
	.uleb128 0x1f
	.long	0x2af
	.uleb128 0xa
	.byte	0x3
	.quad	.LC1
	.byte	0x9f
	.uleb128 0x18
	.quad	.LVL36
	.long	0x6e6
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	0x29f
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.byte	0x1
	.byte	0x1b
	.long	0x641
	.uleb128 0x1f
	.long	0x2af
	.uleb128 0xa
	.byte	0x3
	.quad	.LC2
	.byte	0x9f
	.uleb128 0x18
	.quad	.LVL39
	.long	0x6e6
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.byte	0
	.byte	0
	.uleb128 0x20
	.quad	.LVL24
	.long	0x701
	.long	0x659
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x18
	.quad	.LVL37
	.long	0x2da
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x8f
	.uleb128 0x21
	.long	.LASF56
	.byte	0x7
	.byte	0xa8
	.long	0x25a
	.uleb128 0x21
	.long	.LASF57
	.byte	0x7
	.byte	0xa9
	.long	0x25a
	.uleb128 0x22
	.long	.LASF63
	.byte	0x1
	.byte	0xd
	.long	0x6ae
	.uleb128 0x10
	.byte	0
	.uleb128 0x23
	.long	.LASF59
	.byte	0x8
	.byte	0
	.long	.LASF69
	.long	0x62
	.long	0x6c7
	.uleb128 0x24
	.long	0x286
	.byte	0
	.uleb128 0x25
	.long	.LASF61
	.byte	0x3
	.byte	0xb7
	.long	0x69
	.long	0x6e6
	.uleb128 0x24
	.long	0x286
	.uleb128 0x24
	.long	0x685
	.uleb128 0x24
	.long	0x62
	.byte	0
	.uleb128 0x25
	.long	.LASF62
	.byte	0x2
	.byte	0x57
	.long	0x62
	.long	0x701
	.uleb128 0x24
	.long	0x62
	.uleb128 0x24
	.long	0x286
	.uleb128 0x10
	.byte	0
	.uleb128 0x26
	.long	.LASF64
	.byte	0x3
	.value	0x21f
	.uleb128 0x24
	.long	0x62
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.quad	.LVL0-.Ltext0
	.quad	.LVL1-1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL1-1-.Ltext0
	.quad	.LVL14-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL14-.Ltext0
	.quad	.LFE40-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST1:
	.quad	.LVL0-.Ltext0
	.quad	.LVL1-1-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL1-1-.Ltext0
	.quad	.LVL2-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL2-.Ltext0
	.quad	.LVL4-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL4-.Ltext0
	.quad	.LVL15-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL15-.Ltext0
	.quad	.LFE40-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST2:
	.quad	.LVL0-.Ltext0
	.quad	.LVL1-1-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL1-1-.Ltext0
	.quad	.LVL2-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	.LVL2-.Ltext0
	.quad	.LVL6-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL6-.Ltext0
	.quad	.LVL16-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL16-.Ltext0
	.quad	.LFE40-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LLST3:
	.quad	.LVL0-.Ltext0
	.quad	.LVL1-1-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	.LVL1-1-.Ltext0
	.quad	.LVL2-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	.LVL2-.Ltext0
	.quad	.LVL8-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	.LVL8-.Ltext0
	.quad	.LVL17-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	.LVL17-.Ltext0
	.quad	.LFE40-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	0
	.quad	0
.LLST4:
	.quad	.LVL0-.Ltext0
	.quad	.LVL1-1-.Ltext0
	.value	0x1
	.byte	0x58
	.quad	.LVL1-1-.Ltext0
	.quad	.LVL2-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	.LVL2-.Ltext0
	.quad	.LVL12-.Ltext0
	.value	0x1
	.byte	0x58
	.quad	.LVL12-.Ltext0
	.quad	.LVL19-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	.LVL19-.Ltext0
	.quad	.LFE40-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x58
	.byte	0x9f
	.quad	0
	.quad	0
.LLST5:
	.quad	.LVL3-.Ltext0
	.quad	.LVL7-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL7-.Ltext0
	.quad	.LVL11-.Ltext0
	.value	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x7c
	.sleb128 0
	.byte	0x27
	.byte	0x9f
	.quad	.LVL11-.Ltext0
	.quad	.LVL13-1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL13-1-.Ltext0
	.quad	.LVL14-.Ltext0
	.value	0x17
	.byte	0x73
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x23
	.uleb128 0xc
	.byte	0x73
	.sleb128 0
	.byte	0x30
	.byte	0x2a
	.byte	0x28
	.value	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x7c
	.sleb128 0
	.byte	0x27
	.byte	0x9f
	.quad	.LVL14-.Ltext0
	.quad	.LVL15-.Ltext0
	.value	0x1a
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x31
	.byte	0x24
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x31
	.byte	0x24
	.byte	0x23
	.uleb128 0xc
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x30
	.byte	0x2a
	.byte	0x28
	.value	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x7c
	.sleb128 0
	.byte	0x27
	.byte	0x9f
	.quad	.LVL15-.Ltext0
	.quad	.LVL18-.Ltext0
	.value	0x1b
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x31
	.byte	0x24
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x31
	.byte	0x24
	.byte	0x23
	.uleb128 0xc
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x30
	.byte	0x2a
	.byte	0x28
	.value	0x1
	.byte	0x16
	.byte	0x13
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x27
	.byte	0x9f
	.quad	0
	.quad	0
.LLST6:
	.quad	.LVL5-.Ltext0
	.quad	.LVL7-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL7-.Ltext0
	.quad	.LVL10-.Ltext0
	.value	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x27
	.byte	0x9f
	.quad	.LVL10-.Ltext0
	.quad	.LVL13-1-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL13-1-.Ltext0
	.quad	.LVL15-.Ltext0
	.value	0x17
	.byte	0x7c
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x7c
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x23
	.uleb128 0x22
	.byte	0x7c
	.sleb128 0
	.byte	0x30
	.byte	0x2a
	.byte	0x28
	.value	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x76
	.sleb128 0
	.byte	0x27
	.byte	0x9f
	.quad	.LVL15-.Ltext0
	.quad	.LVL16-.Ltext0
	.value	0x1a
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x31
	.byte	0x24
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x31
	.byte	0x24
	.byte	0x23
	.uleb128 0x22
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x30
	.byte	0x2a
	.byte	0x28
	.value	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x76
	.sleb128 0
	.byte	0x27
	.byte	0x9f
	.quad	.LVL16-.Ltext0
	.quad	.LVL18-.Ltext0
	.value	0x1b
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x31
	.byte	0x24
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x31
	.byte	0x24
	.byte	0x23
	.uleb128 0x22
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x30
	.byte	0x2a
	.byte	0x28
	.value	0x1
	.byte	0x16
	.byte	0x13
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x27
	.byte	0x9f
	.quad	0
	.quad	0
.LLST7:
	.quad	.LVL7-.Ltext0
	.quad	.LVL9-.Ltext0
	.value	0x6
	.byte	0x71
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x27
	.byte	0x9f
	.quad	.LVL9-.Ltext0
	.quad	.LVL13-1-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL13-1-.Ltext0
	.quad	.LVL14-.Ltext0
	.value	0x17
	.byte	0x76
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x76
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x23
	.uleb128 0x38
	.byte	0x76
	.sleb128 0
	.byte	0x30
	.byte	0x2a
	.byte	0x28
	.value	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x73
	.sleb128 0
	.byte	0x27
	.byte	0x9f
	.quad	.LVL14-.Ltext0
	.quad	.LVL16-.Ltext0
	.value	0x18
	.byte	0x76
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x76
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x23
	.uleb128 0x38
	.byte	0x76
	.sleb128 0
	.byte	0x30
	.byte	0x2a
	.byte	0x28
	.value	0x1
	.byte	0x16
	.byte	0x13
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x27
	.byte	0x9f
	.quad	.LVL16-.Ltext0
	.quad	.LVL18-.Ltext0
	.value	0x1b
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x31
	.byte	0x24
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x31
	.byte	0x24
	.byte	0x23
	.uleb128 0x38
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x30
	.byte	0x2a
	.byte	0x28
	.value	0x1
	.byte	0x16
	.byte	0x13
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x27
	.byte	0x9f
	.quad	0
	.quad	0
.LLST8:
	.quad	.LVL20-.Ltext0
	.quad	.LVL22-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL22-.Ltext0
	.quad	.LVL24-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL24-.Ltext0
	.quad	.LVL26-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL26-.Ltext0
	.quad	.LFE39-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST9:
	.quad	.LVL20-.Ltext0
	.quad	.LVL23-1-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL23-1-.Ltext0
	.quad	.LVL24-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL24-.Ltext0
	.quad	.LVL27-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL27-.Ltext0
	.quad	.LVL35-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL35-.Ltext0
	.quad	.LFE39-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST10:
	.quad	.LVL29-.Ltext0
	.quad	.LVL41-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LLST11:
	.quad	.LVL31-.Ltext0
	.quad	.LVL42-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LLST12:
	.quad	.LVL33-.Ltext0
	.quad	.LVL43-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LLST13:
	.quad	.LVL35-.Ltext0
	.quad	.LVL40-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST14:
	.quad	.LVL37-.Ltext0
	.quad	.LVL38-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL38-.Ltext0
	.quad	.LVL39-1-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST16:
	.quad	.LVL25-.Ltext0
	.quad	.LVL28-1-.Ltext0
	.value	0x2
	.byte	0x73
	.sleb128 8
	.quad	0
	.quad	0
.LLST17:
	.quad	.LVL29-.Ltext0
	.quad	.LVL30-1-.Ltext0
	.value	0x2
	.byte	0x73
	.sleb128 16
	.quad	0
	.quad	0
.LLST18:
	.quad	.LVL31-.Ltext0
	.quad	.LVL32-1-.Ltext0
	.value	0x2
	.byte	0x73
	.sleb128 24
	.quad	0
	.quad	0
.LLST19:
	.quad	.LVL33-.Ltext0
	.quad	.LVL34-1-.Ltext0
	.value	0x2
	.byte	0x73
	.sleb128 32
	.quad	0
	.quad	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF58:
	.string	"printf"
.LASF8:
	.string	"__off_t"
.LASF13:
	.string	"_IO_read_ptr"
.LASF55:
	.string	"retVal"
.LASF25:
	.string	"_chain"
.LASF7:
	.string	"size_t"
.LASF31:
	.string	"_shortbuf"
.LASF19:
	.string	"_IO_buf_base"
.LASF47:
	.string	"long long unsigned int"
.LASF46:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF26:
	.string	"_fileno"
.LASF14:
	.string	"_IO_read_end"
.LASF6:
	.string	"long int"
.LASF61:
	.string	"strtol"
.LASF12:
	.string	"_flags"
.LASF20:
	.string	"_IO_buf_end"
.LASF29:
	.string	"_cur_column"
.LASF62:
	.string	"__printf_chk"
.LASF28:
	.string	"_old_offset"
.LASF33:
	.string	"_offset"
.LASF42:
	.string	"_IO_marker"
.LASF56:
	.string	"stdin"
.LASF3:
	.string	"unsigned int"
.LASF0:
	.string	"long unsigned int"
.LASF17:
	.string	"_IO_write_ptr"
.LASF44:
	.string	"_sbuf"
.LASF2:
	.string	"short unsigned int"
.LASF21:
	.string	"_IO_save_base"
.LASF67:
	.string	"/u/lingel/Documents/CS201/HW4"
.LASF32:
	.string	"_lock"
.LASF27:
	.string	"_flags2"
.LASF39:
	.string	"_mode"
.LASF59:
	.string	"__builtin_puts"
.LASF57:
	.string	"stdout"
.LASF69:
	.string	"puts"
.LASF10:
	.string	"sizetype"
.LASF18:
	.string	"_IO_write_end"
.LASF68:
	.string	"_IO_lock_t"
.LASF50:
	.string	"countUp"
.LASF41:
	.string	"_IO_FILE"
.LASF65:
	.string	"GNU C 4.8.4 -m64 -mtune=generic -march=x86-64 -g -O1 -fstack-protector"
.LASF49:
	.string	"__nptr"
.LASF45:
	.string	"_pos"
.LASF24:
	.string	"_markers"
.LASF60:
	.string	"atoi"
.LASF1:
	.string	"unsigned char"
.LASF5:
	.string	"short int"
.LASF30:
	.string	"_vtable_offset"
.LASF64:
	.string	"exit"
.LASF11:
	.string	"char"
.LASF63:
	.string	"recover"
.LASF43:
	.string	"_next"
.LASF9:
	.string	"__off64_t"
.LASF15:
	.string	"_IO_read_base"
.LASF23:
	.string	"_IO_save_end"
.LASF48:
	.string	"__fmt"
.LASF34:
	.string	"__pad1"
.LASF35:
	.string	"__pad2"
.LASF36:
	.string	"__pad3"
.LASF37:
	.string	"__pad4"
.LASF38:
	.string	"__pad5"
.LASF40:
	.string	"_unused2"
.LASF54:
	.string	"argv"
.LASF51:
	.string	"countDown"
.LASF22:
	.string	"_IO_backup_base"
.LASF53:
	.string	"argc"
.LASF66:
	.string	"hw4main.c"
.LASF52:
	.string	"main"
.LASF16:
	.string	"_IO_write_base"
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
