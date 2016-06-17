	.file	"hw4.c"
	.text
.Ltext0:
	.globl	print_value
	.type	print_value, @function
print_value:
.LFB40:
	.file 1 "hw4.c"
	.loc 1 56 0
	.cfi_startproc
.LVL0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, %rbp
.LVL1:
	.loc 1 56 0
	movl	$60, %ebx
.LVL2:
.L5:
.LBB17:
	.loc 1 67 0
	movq	%rbp, %rax
	movl	%ebx, %ecx
	shrq	%cl, %rax
	.loc 1 68 0
	andl	$15, %eax
.LVL3:
	.loc 1 69 0
	cmpb	$9, %al
	ja	.L2
.LVL4:
	.loc 1 70 0
	movzbl	%al, %eax
	leal	48(%rax), %edi
.LVL5:
.LBB18:
.LBB19:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/stdio.h"
	.loc 2 81 0
	movq	stdout(%rip), %rsi
	call	_IO_putc
.LVL6:
	jmp	.L3
.LVL7:
.L2:
.LBE19:
.LBE18:
	.loc 1 72 0
	movzbl	%al, %eax
.LVL8:
	leal	87(%rax), %edi
.LVL9:
.LBB20:
.LBB21:
	.loc 2 81 0
	movq	stdout(%rip), %rsi
	call	_IO_putc
.LVL10:
.L3:
	subl	$4, %ebx
.LVL11:
.LBE21:
.LBE20:
.LBE17:
	.loc 1 63 0
	cmpl	$-4, %ebx
	jne	.L5
	.loc 1 76 0
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
.LVL12:
	popq	%rbp
	.cfi_def_cfa_offset 8
.LVL13:
	ret
	.cfi_endproc
.LFE40:
	.size	print_value, .-print_value
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"foo called with args "
.LC1:
	.string	"a: "
.LC2:
	.string	"\nb: "
.LC3:
	.string	"\nc: "
.LC4:
	.string	"\n"
	.text
	.globl	recover
	.type	recover, @function
recover:
.LFB39:
	.loc 1 14 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
.LVL14:
	.loc 1 19 0
	leaq	-24(%rbp), %rax
	movq	%rax, -24(%rbp)
	.loc 1 20 0
	movq	48(%rbp), %rax
.LVL15:
	.loc 1 21 0
	leaq	3(%rax,%rax,2), %rbx
.LVL16:
	.loc 1 22 0
	leaq	22(,%rbx,8), %rax
.LVL17:
	andq	$-16, %rax
	subq	%rax, %rsp
	movq	%rsp, %r12
.LVL18:
	.loc 1 25 0
	leaq	7(%rbx,%rbx), %r8
	cmpq	$5, %r8
	jbe	.L8
	leaq	16(%rbp), %rdx
.LVL19:
	.loc 1 16 0
	movl	$0, %eax
	.loc 1 25 0
	movl	$5, %ecx
.LVL20:
.L9:
	.loc 1 27 0 discriminator 2
	movslq	%eax, %rsi
	movq	(%rdx), %rdi
	movq	%rdi, (%r12,%rsi,8)
.LVL21:
	leal	1(%rax), %esi
.LVL22:
	.loc 1 29 0 discriminator 2
	movslq	%esi, %rsi
	movq	16(%rdx), %rdi
	movq	%rdi, (%r12,%rsi,8)
.LVL23:
	leal	2(%rax), %esi
.LVL24:
	.loc 1 31 0 discriminator 2
	movslq	%esi, %rsi
	movq	8(%rdx), %rdi
	movq	%rdi, (%r12,%rsi,8)
	.loc 1 32 0 discriminator 2
	addl	$3, %eax
.LVL25:
	.loc 1 25 0 discriminator 2
	addq	$6, %rcx
.LVL26:
	addq	$48, %rdx
	cmpq	%r8, %rcx
	jb	.L9
.LVL27:
.L8:
	.loc 1 37 0
	subl	$1, %ebx
.LVL28:
	testl	%ebx, %ebx
	jle	.L7
.L11:
.LVL29:
.LBB22:
.LBB23:
	.file 3 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 3 104 0
	movl	$.LC0, %edi
	call	puts
.LVL30:
.LBE23:
.LBE22:
.LBB24:
.LBB25:
	movl	$.LC1, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk
.LVL31:
	leal	-2(%rbx), %eax
.LBE25:
.LBE24:
	.loc 1 41 0
	cltq
	movq	(%r12,%rax,8), %rdi
	call	print_value
.LVL32:
.LBB26:
.LBB27:
	.loc 3 104 0
	movl	$.LC2, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk
.LVL33:
	leal	-1(%rbx), %eax
.LBE27:
.LBE26:
	.loc 1 43 0
	cltq
	movq	(%r12,%rax,8), %rdi
	call	print_value
.LVL34:
.LBB28:
.LBB29:
	.loc 3 104 0
	movl	$.LC3, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk
.LVL35:
.LBE29:
.LBE28:
	.loc 1 45 0
	movslq	%ebx, %rax
	movq	(%r12,%rax,8), %rdi
	call	print_value
.LVL36:
.LBB30:
.LBB31:
	.loc 3 104 0
	movl	$.LC4, %edi
	call	puts
.LVL37:
.LBE31:
.LBE30:
	.loc 1 37 0
	subl	$3, %ebx
.LVL38:
	testl	%ebx, %ebx
	jg	.L11
.LVL39:
.L7:
	.loc 1 52 0
	leaq	-16(%rbp), %rsp
.LVL40:
	popq	%rbx
.LVL41:
	popq	%r12
.LVL42:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	recover, .-recover
.Letext0:
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 6 "/usr/include/libio.h"
	.file 7 "/usr/include/stdio.h"
	.file 8 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x659
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF63
	.byte	0x1
	.long	.LASF64
	.long	.LASF65
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
	.long	.LASF66
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
	.uleb128 0xd
	.long	.LASF41
	.byte	0x6
	.value	0x13b
	.long	0x9c
	.uleb128 0x6
	.byte	0x8
	.long	0x298
	.uleb128 0xe
	.long	0x95
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF46
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF47
	.uleb128 0xf
	.long	.LASF60
	.byte	0x2
	.byte	0x4f
	.long	0x62
	.byte	0x3
	.long	0x2c7
	.uleb128 0x10
	.string	"__c"
	.byte	0x2
	.byte	0x4f
	.long	0x62
	.byte	0
	.uleb128 0x11
	.long	.LASF52
	.byte	0x3
	.byte	0x66
	.long	0x62
	.byte	0x3
	.long	0x2e4
	.uleb128 0x12
	.long	.LASF48
	.byte	0x3
	.byte	0x66
	.long	0x292
	.uleb128 0x13
	.byte	0
	.uleb128 0x14
	.long	.LASF67
	.byte	0x1
	.byte	0x37
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x3ed
	.uleb128 0x15
	.string	"a"
	.byte	0x1
	.byte	0x37
	.long	0x69
	.long	.LLST0
	.uleb128 0x16
	.long	.LASF49
	.byte	0x1
	.byte	0x3a
	.long	0x38
	.long	.LLST1
	.uleb128 0x17
	.long	.LASF50
	.byte	0x1
	.byte	0x3b
	.long	0x38
	.byte	0xf
	.uleb128 0x16
	.long	.LASF51
	.byte	0x1
	.byte	0x3c
	.long	0x3f
	.long	.LLST2
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.byte	0x3d
	.long	0x62
	.long	.LLST3
	.uleb128 0x19
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.uleb128 0x18
	.string	"j"
	.byte	0x1
	.byte	0x42
	.long	0x62
	.long	.LLST4
	.uleb128 0x1a
	.long	0x2ab
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.byte	0x1
	.byte	0x46
	.long	0x3a9
	.uleb128 0x1b
	.long	0x2bb
	.long	.LLST5
	.uleb128 0x1c
	.quad	.LVL6
	.long	0x60b
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xf
	.byte	0x76
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x25
	.byte	0x3f
	.byte	0x1a
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x23
	.uleb128 0x30
	.byte	0
	.byte	0
	.uleb128 0x1e
	.long	0x2ab
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.byte	0x1
	.byte	0x48
	.uleb128 0x1b
	.long	0x2bb
	.long	.LLST6
	.uleb128 0x1c
	.quad	.LVL10
	.long	0x60b
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xf
	.byte	0x76
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x25
	.byte	0x3f
	.byte	0x1a
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x23
	.uleb128 0x57
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	.LASF53
	.byte	0x1
	.byte	0xd
	.quad	.LFB39
	.quad	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.long	0x5d7
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.byte	0xf
	.long	0x38
	.long	.LLST7
	.uleb128 0x18
	.string	"j"
	.byte	0x1
	.byte	0x10
	.long	0x62
	.long	.LLST8
	.uleb128 0x20
	.long	.LASF54
	.byte	0x1
	.byte	0x11
	.long	0x5d7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x16
	.long	.LASF55
	.byte	0x1
	.byte	0x14
	.long	0x38
	.long	.LLST9
	.uleb128 0x16
	.long	.LASF56
	.byte	0x1
	.byte	0x15
	.long	0x38
	.long	.LLST10
	.uleb128 0x21
	.long	0x5f0
	.long	.LLST11
	.uleb128 0x16
	.long	.LASF57
	.byte	0x1
	.byte	0x16
	.long	0x5dd
	.long	.LLST12
	.uleb128 0x1a
	.long	0x2c7
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.byte	0x1
	.byte	0x27
	.long	0x4a4
	.uleb128 0x22
	.long	0x2d7
	.uleb128 0x1c
	.quad	.LVL30
	.long	0x62c
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	0x2c7
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.byte	0x1
	.byte	0x28
	.long	0x4e9
	.uleb128 0x1b
	.long	0x2d7
	.long	.LLST14
	.uleb128 0x1c
	.quad	.LVL31
	.long	0x645
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	0x2c7
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.byte	0x1
	.byte	0x2a
	.long	0x52e
	.uleb128 0x1b
	.long	0x2d7
	.long	.LLST15
	.uleb128 0x1c
	.quad	.LVL33
	.long	0x645
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	0x2c7
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.byte	0x1
	.byte	0x2c
	.long	0x573
	.uleb128 0x1b
	.long	0x2d7
	.long	.LLST16
	.uleb128 0x1c
	.quad	.LVL35
	.long	0x645
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC3
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	0x2c7
	.quad	.LBB30
	.quad	.LBE30-.LBB30
	.byte	0x1
	.byte	0x2e
	.long	0x5af
	.uleb128 0x22
	.long	0x2d7
	.uleb128 0x1c
	.quad	.LVL37
	.long	0x62c
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC4
	.byte	0
	.byte	0
	.uleb128 0x23
	.quad	.LVL32
	.long	0x2e4
	.uleb128 0x23
	.quad	.LVL34
	.long	0x2e4
	.uleb128 0x23
	.quad	.LVL36
	.long	0x2e4
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x38
	.uleb128 0xb
	.long	0x69
	.long	0x5f0
	.uleb128 0x24
	.long	0x86
	.long	0x450
	.byte	0
	.uleb128 0xe
	.long	0x86
	.uleb128 0x25
	.long	.LASF58
	.byte	0x7
	.byte	0xa8
	.long	0x25a
	.uleb128 0x25
	.long	.LASF59
	.byte	0x7
	.byte	0xa9
	.long	0x25a
	.uleb128 0x26
	.long	.LASF61
	.byte	0x6
	.value	0x1b3
	.long	0x62
	.long	0x626
	.uleb128 0x27
	.long	0x62
	.uleb128 0x27
	.long	0x626
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x286
	.uleb128 0x28
	.long	.LASF62
	.byte	0x8
	.byte	0
	.long	.LASF68
	.long	0x62
	.long	0x645
	.uleb128 0x27
	.long	0x292
	.byte	0
	.uleb128 0x29
	.long	.LASF69
	.byte	0x3
	.byte	0x57
	.long	0x62
	.uleb128 0x27
	.long	0x62
	.uleb128 0x27
	.long	0x292
	.uleb128 0x13
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
	.uleb128 0x16
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
	.uleb128 0xe
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.quad	.LVL0-.Ltext0
	.quad	.LVL2-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL2-.Ltext0
	.quad	.LVL13-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL13-.Ltext0
	.quad	.LFE40-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST1:
	.quad	.LVL1-.Ltext0
	.quad	.LVL2-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL2-.Ltext0
	.quad	.LVL11-.Ltext0
	.value	0xc
	.byte	0x76
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x25
	.byte	0x9f
	.quad	.LVL11-.Ltext0
	.quad	.LVL12-.Ltext0
	.value	0xc
	.byte	0x76
	.sleb128 0
	.byte	0x73
	.sleb128 4
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x25
	.byte	0x9f
	.quad	0
	.quad	0
.LLST2:
	.quad	.LVL3-.Ltext0
	.quad	.LVL6-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL6-1-.Ltext0
	.quad	.LVL7-.Ltext0
	.value	0xb
	.byte	0x76
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x25
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.quad	.LVL7-.Ltext0
	.quad	.LVL8-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL8-.Ltext0
	.quad	.LVL10-1-.Ltext0
	.value	0xb
	.byte	0x76
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x25
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.quad	.LVL10-1-.Ltext0
	.quad	.LVL11-.Ltext0
	.value	0xb
	.byte	0x76
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x25
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.quad	0
	.quad	0
.LLST3:
	.quad	.LVL1-.Ltext0
	.quad	.LVL2-.Ltext0
	.value	0x2
	.byte	0x3f
	.byte	0x9f
	.quad	0
	.quad	0
.LLST4:
	.quad	.LVL2-.Ltext0
	.quad	.LVL11-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL11-.Ltext0
	.quad	.LVL12-.Ltext0
	.value	0x3
	.byte	0x73
	.sleb128 4
	.byte	0x9f
	.quad	0
	.quad	0
.LLST5:
	.quad	.LVL4-.Ltext0
	.quad	.LVL5-.Ltext0
	.value	0x8
	.byte	0x70
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x23
	.uleb128 0x30
	.byte	0x9f
	.quad	.LVL5-.Ltext0
	.quad	.LVL6-1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL6-1-.Ltext0
	.quad	.LVL7-.Ltext0
	.value	0x10
	.byte	0x76
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x25
	.byte	0x3f
	.byte	0x1a
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x23
	.uleb128 0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST6:
	.quad	.LVL7-.Ltext0
	.quad	.LVL8-.Ltext0
	.value	0x8
	.byte	0x70
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x23
	.uleb128 0x57
	.byte	0x9f
	.quad	.LVL8-.Ltext0
	.quad	.LVL9-.Ltext0
	.value	0x10
	.byte	0x76
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x25
	.byte	0x3f
	.byte	0x1a
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x23
	.uleb128 0x57
	.byte	0x9f
	.quad	.LVL9-.Ltext0
	.quad	.LVL10-1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL10-1-.Ltext0
	.quad	.LVL10-.Ltext0
	.value	0x10
	.byte	0x76
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x25
	.byte	0x3f
	.byte	0x1a
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x23
	.uleb128 0x57
	.byte	0x9f
	.quad	0
	.quad	0
.LLST7:
	.quad	.LVL14-.Ltext0
	.quad	.LVL18-.Ltext0
	.value	0x2
	.byte	0x37
	.byte	0x9f
	.quad	.LVL18-.Ltext0
	.quad	.LVL20-.Ltext0
	.value	0x2
	.byte	0x35
	.byte	0x9f
	.quad	.LVL20-.Ltext0
	.quad	.LVL27-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	0
	.quad	0
.LLST8:
	.quad	.LVL14-.Ltext0
	.quad	.LVL20-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL20-.Ltext0
	.quad	.LVL21-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL21-.Ltext0
	.quad	.LVL22-.Ltext0
	.value	0x3
	.byte	0x70
	.sleb128 1
	.byte	0x9f
	.quad	.LVL22-.Ltext0
	.quad	.LVL23-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL23-.Ltext0
	.quad	.LVL24-.Ltext0
	.value	0x3
	.byte	0x70
	.sleb128 2
	.byte	0x9f
	.quad	.LVL24-.Ltext0
	.quad	.LVL25-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL25-.Ltext0
	.quad	.LVL27-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL28-.Ltext0
	.quad	.LVL41-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST9:
	.quad	.LVL15-.Ltext0
	.quad	.LVL17-.Ltext0
	.value	0x5
	.byte	0x70
	.sleb128 1
	.byte	0x36
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL17-.Ltext0
	.quad	.LVL19-.Ltext0
	.value	0x8
	.byte	0x76
	.sleb128 48
	.byte	0x6
	.byte	0x23
	.uleb128 0x1
	.byte	0x36
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL19-.Ltext0
	.quad	.LVL20-.Ltext0
	.value	0x8
	.byte	0x71
	.sleb128 32
	.byte	0x6
	.byte	0x23
	.uleb128 0x1
	.byte	0x36
	.byte	0x1e
	.byte	0x9f
	.quad	0
	.quad	0
.LLST10:
	.quad	.LVL16-.Ltext0
	.quad	.LVL28-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST11:
	.quad	.LVL16-.Ltext0
	.quad	.LVL28-.Ltext0
	.value	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.quad	0
	.quad	0
.LLST12:
	.quad	.LVL18-.Ltext0
	.quad	.LVL40-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 0
	.quad	.LVL40-.Ltext0
	.quad	.LVL42-.Ltext0
	.value	0x2
	.byte	0x7c
	.sleb128 0
	.quad	0
	.quad	0
.LLST14:
	.quad	.LVL30-.Ltext0
	.quad	.LVL39-.Ltext0
	.value	0xa
	.byte	0x3
	.quad	.LC1
	.byte	0x9f
	.quad	0
	.quad	0
.LLST15:
	.quad	.LVL32-.Ltext0
	.quad	.LVL39-.Ltext0
	.value	0xa
	.byte	0x3
	.quad	.LC2
	.byte	0x9f
	.quad	0
	.quad	0
.LLST16:
	.quad	.LVL34-.Ltext0
	.quad	.LVL39-.Ltext0
	.value	0xa
	.byte	0x3
	.quad	.LC3
	.byte	0x9f
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
.LASF52:
	.string	"printf"
.LASF8:
	.string	"__off_t"
.LASF55:
	.string	"count"
.LASF13:
	.string	"_IO_read_ptr"
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
.LASF54:
	.string	"test"
.LASF46:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF26:
	.string	"_fileno"
.LASF14:
	.string	"_IO_read_end"
.LASF66:
	.string	"_IO_lock_t"
.LASF6:
	.string	"long int"
.LASF12:
	.string	"_flags"
.LASF20:
	.string	"_IO_buf_end"
.LASF29:
	.string	"_cur_column"
.LASF60:
	.string	"putchar"
.LASF69:
	.string	"__printf_chk"
.LASF28:
	.string	"_old_offset"
.LASF33:
	.string	"_offset"
.LASF50:
	.string	"mask"
.LASF49:
	.string	"temp"
.LASF61:
	.string	"_IO_putc"
.LASF42:
	.string	"_IO_marker"
.LASF58:
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
.LASF65:
	.string	"/u/lingel/Documents/CS201/HW4"
.LASF32:
	.string	"_lock"
.LASF27:
	.string	"_flags2"
.LASF39:
	.string	"_mode"
.LASF62:
	.string	"__builtin_puts"
.LASF59:
	.string	"stdout"
.LASF68:
	.string	"puts"
.LASF10:
	.string	"sizetype"
.LASF18:
	.string	"_IO_write_end"
.LASF64:
	.string	"hw4.c"
.LASF41:
	.string	"_IO_FILE"
.LASF63:
	.string	"GNU C 4.8.4 -m64 -mtune=generic -march=x86-64 -g -O1 -fstack-protector"
.LASF45:
	.string	"_pos"
.LASF24:
	.string	"_markers"
.LASF1:
	.string	"unsigned char"
.LASF5:
	.string	"short int"
.LASF30:
	.string	"_vtable_offset"
.LASF56:
	.string	"length"
.LASF11:
	.string	"char"
.LASF51:
	.string	"this_char"
.LASF53:
	.string	"recover"
.LASF43:
	.string	"_next"
.LASF9:
	.string	"__off64_t"
.LASF67:
	.string	"print_value"
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
.LASF22:
	.string	"_IO_backup_base"
.LASF57:
	.string	"list"
.LASF16:
	.string	"_IO_write_base"
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
