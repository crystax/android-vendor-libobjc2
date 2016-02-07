	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.file	"objc_msgSend.noimpl.c"
	.section	.text.objc_msgSend,"ax",@progbits
	.globl	objc_msgSend
	.align	2
	.type	objc_msgSend,@function
	.set	nomicromips
	.set	nomips16
	.ent	objc_msgSend
objc_msgSend:                           # @objc_msgSend
	.cfi_startproc
	.frame	$fp,64,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# BB#0:                                 # %entry
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -64
$tmp0:
	.cfi_def_cfa_offset 64
	sw	$ra, 60($sp)            # 4-byte Folded Spill
	sw	$fp, 56($sp)            # 4-byte Folded Spill
$tmp1:
	.cfi_offset 31, -4
$tmp2:
	.cfi_offset 30, -8
	move	 $fp, $sp
$tmp3:
	.cfi_def_cfa_register 30
	addu	$2, $2, $25
	sw	$7, 76($fp)
	sw	$6, 72($fp)
	sw	$4, 48($fp)
	sw	$5, 44($fp)
	lw	$6, %got(__stderrp)($2)
	lw	$6, 0($6)
	lw	$7, %got($.str)($2)
	addiu	$7, $7, %lo($.str)
	lw	$25, %got($__FUNCTION__.objc_msgSend)($2)
	addiu	$25, $25, %lo($__FUNCTION__.objc_msgSend)
	lw	$1, %call16(fprintf)($2)
	sw	$4, 40($fp)             # 4-byte Folded Spill
	move	 $4, $6
	sw	$5, 36($fp)             # 4-byte Folded Spill
	move	 $5, $7
	move	 $6, $25
	move	 $gp, $2
	move	 $25, $1
	sw	$2, 32($fp)             # 4-byte Folded Spill
	jalr	$25
	nop
	lw	$1, 32($fp)             # 4-byte Folded Reload
	lw	$25, %call16(abort)($1)
	move	 $gp, $1
	sw	$2, 28($fp)             # 4-byte Folded Spill
	jalr	$25
	nop
	lw	$1, 36($fp)             # 4-byte Folded Reload
	lw	$2, 40($fp)             # 4-byte Folded Reload
	sw	$1, 24($fp)             # 4-byte Folded Spill
	sw	$2, 20($fp)             # 4-byte Folded Spill
	.set	at
	.set	macro
	.set	reorder
	.end	objc_msgSend
$tmp4:
	.size	objc_msgSend, ($tmp4)-objc_msgSend
	.cfi_endproc

	.section	.text.objc_msgSend_fpret,"ax",@progbits
	.globl	objc_msgSend_fpret
	.align	2
	.type	objc_msgSend_fpret,@function
	.set	nomicromips
	.set	nomips16
	.ent	objc_msgSend_fpret
objc_msgSend_fpret:                     # @objc_msgSend_fpret
	.cfi_startproc
	.frame	$fp,64,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# BB#0:                                 # %entry
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -64
$tmp5:
	.cfi_def_cfa_offset 64
	sw	$ra, 60($sp)            # 4-byte Folded Spill
	sw	$fp, 56($sp)            # 4-byte Folded Spill
$tmp6:
	.cfi_offset 31, -4
$tmp7:
	.cfi_offset 30, -8
	move	 $fp, $sp
$tmp8:
	.cfi_def_cfa_register 30
	addu	$2, $2, $25
	sw	$7, 76($fp)
	sw	$6, 72($fp)
	sw	$4, 44($fp)
	sw	$5, 40($fp)
	lw	$6, %got(__stderrp)($2)
	lw	$6, 0($6)
	lw	$7, %got($.str)($2)
	addiu	$7, $7, %lo($.str)
	lw	$25, %got($__FUNCTION__.objc_msgSend_fpret)($2)
	addiu	$25, $25, %lo($__FUNCTION__.objc_msgSend_fpret)
	lw	$1, %call16(fprintf)($2)
	sw	$4, 36($fp)             # 4-byte Folded Spill
	move	 $4, $6
	sw	$5, 32($fp)             # 4-byte Folded Spill
	move	 $5, $7
	move	 $6, $25
	move	 $gp, $2
	move	 $25, $1
	sw	$2, 28($fp)             # 4-byte Folded Spill
	jalr	$25
	nop
	lw	$1, 28($fp)             # 4-byte Folded Reload
	lw	$25, %call16(abort)($1)
	move	 $gp, $1
	sw	$2, 24($fp)             # 4-byte Folded Spill
	jalr	$25
	nop
	lw	$1, 32($fp)             # 4-byte Folded Reload
	lw	$2, 36($fp)             # 4-byte Folded Reload
	sw	$1, 20($fp)             # 4-byte Folded Spill
	sw	$2, 16($fp)             # 4-byte Folded Spill
	.set	at
	.set	macro
	.set	reorder
	.end	objc_msgSend_fpret
$tmp9:
	.size	objc_msgSend_fpret, ($tmp9)-objc_msgSend_fpret
	.cfi_endproc

	.section	.text.objc_msgSend_stret,"ax",@progbits
	.globl	objc_msgSend_stret
	.align	2
	.type	objc_msgSend_stret,@function
	.set	nomicromips
	.set	nomips16
	.ent	objc_msgSend_stret
objc_msgSend_stret:                     # @objc_msgSend_stret
	.cfi_startproc
	.frame	$fp,56,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# BB#0:                                 # %entry
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -56
$tmp10:
	.cfi_def_cfa_offset 56
	sw	$ra, 52($sp)            # 4-byte Folded Spill
	sw	$fp, 48($sp)            # 4-byte Folded Spill
$tmp11:
	.cfi_offset 31, -4
$tmp12:
	.cfi_offset 30, -8
	move	 $fp, $sp
$tmp13:
	.cfi_def_cfa_register 30
	addu	$2, $2, $25
	sw	$7, 68($fp)
	sw	$6, 64($fp)
	sw	$4, 44($fp)
	sw	$5, 40($fp)
	lw	$6, %got(__stderrp)($2)
	lw	$6, 0($6)
	lw	$7, %got($.str)($2)
	addiu	$7, $7, %lo($.str)
	lw	$25, %got($__FUNCTION__.objc_msgSend_stret)($2)
	addiu	$25, $25, %lo($__FUNCTION__.objc_msgSend_stret)
	lw	$1, %call16(fprintf)($2)
	sw	$4, 36($fp)             # 4-byte Folded Spill
	move	 $4, $6
	sw	$5, 32($fp)             # 4-byte Folded Spill
	move	 $5, $7
	move	 $6, $25
	move	 $gp, $2
	move	 $25, $1
	sw	$2, 28($fp)             # 4-byte Folded Spill
	jalr	$25
	nop
	lw	$1, 28($fp)             # 4-byte Folded Reload
	lw	$25, %call16(abort)($1)
	move	 $gp, $1
	sw	$2, 24($fp)             # 4-byte Folded Spill
	jalr	$25
	nop
	lw	$1, 32($fp)             # 4-byte Folded Reload
	lw	$2, 36($fp)             # 4-byte Folded Reload
	sw	$1, 20($fp)             # 4-byte Folded Spill
	sw	$2, 16($fp)             # 4-byte Folded Spill
	.set	at
	.set	macro
	.set	reorder
	.end	objc_msgSend_stret
$tmp14:
	.size	objc_msgSend_stret, ($tmp14)-objc_msgSend_stret
	.cfi_endproc

	.type	$.str,@object           # @.str
	.section	".rodata.$.str","aMS",@progbits,1
$.str:
	.asciz	"%s is not implemented for this target!\n"
	.size	$.str, 40

	.type	$__FUNCTION__.objc_msgSend,@object # @__FUNCTION__.objc_msgSend
	.section	".rodata.$__FUNCTION__.objc_msgSend","aMS",@progbits,1
$__FUNCTION__.objc_msgSend:
	.asciz	"objc_msgSend"
	.size	$__FUNCTION__.objc_msgSend, 13

	.type	$__FUNCTION__.objc_msgSend_fpret,@object # @__FUNCTION__.objc_msgSend_fpret
	.section	".rodata.$__FUNCTION__.objc_msgSend_fpret","aMS",@progbits,1
$__FUNCTION__.objc_msgSend_fpret:
	.asciz	"objc_msgSend_fpret"
	.size	$__FUNCTION__.objc_msgSend_fpret, 19

	.type	$__FUNCTION__.objc_msgSend_stret,@object # @__FUNCTION__.objc_msgSend_stret
	.section	".rodata.$__FUNCTION__.objc_msgSend_stret","aMS",@progbits,1
$__FUNCTION__.objc_msgSend_stret:
	.asciz	"objc_msgSend_stret"
	.size	$__FUNCTION__.objc_msgSend_stret, 19


	.ident	"clang version 3.6 "
	.section	".note.GNU-stack","",@progbits
	.text
