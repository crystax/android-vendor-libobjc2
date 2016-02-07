	.text
	.abicalls
	.section	.mdebug.abi64,"",@progbits
	.nan	2008
	.file	"objc_msgSend.noimpl.c"
	.section	.text.objc_msgSend,"ax",@progbits
	.globl	objc_msgSend
	.align	3
	.type	objc_msgSend,@function
	.set	nomicromips
	.set	nomips16
	.ent	objc_msgSend
objc_msgSend:                           # @objc_msgSend
	.cfi_startproc
	.frame	$fp,144,$ra
	.mask 	0x00000000,0
	.fmask	0xd0000000,-4
	.set	noreorder
	.set	nomacro
	.set	noat
# BB#0:                                 # %entry
	daddiu	$sp, $sp, -144
$tmp0:
	.cfi_def_cfa_offset 144
	sd	$ra, 88($sp)            # 8-byte Folded Spill
	sd	$fp, 80($sp)            # 8-byte Folded Spill
	sd	$gp, 72($sp)            # 8-byte Folded Spill
$tmp1:
	.cfi_offset 31, -56
$tmp2:
	.cfi_offset 30, -64
$tmp3:
	.cfi_offset 28, -72
	move	 $fp, $sp
$tmp4:
	.cfi_def_cfa_register 30
	lui	$1, %hi(%neg(%gp_rel(objc_msgSend)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(objc_msgSend)))
	sd	$11, 136($fp)
	sd	$10, 128($fp)
	sd	$9, 120($fp)
	sd	$8, 112($fp)
	sd	$7, 104($fp)
	sd	$6, 96($fp)
	sd	$4, 56($fp)
	sd	$5, 48($fp)
	ld	$6, %got_disp(__stderrp)($1)
	ld	$6, 0($6)
	ld	$7, %got_page($.str)($1)
	daddiu	$7, $7, %got_ofst($.str)
	ld	$8, %got_page($__FUNCTION__.objc_msgSend)($1)
	daddiu	$8, $8, %got_ofst($__FUNCTION__.objc_msgSend)
	ld	$25, %call16(fprintf)($1)
	sd	$4, 40($fp)             # 8-byte Folded Spill
	move	 $4, $6
	sd	$5, 32($fp)             # 8-byte Folded Spill
	move	 $5, $7
	move	 $6, $8
	move	 $gp, $1
	sd	$1, 24($fp)             # 8-byte Folded Spill
	jalr	$25
	nop
	ld	$1, 24($fp)             # 8-byte Folded Reload
	ld	$25, %call16(abort)($1)
	move	 $gp, $1
	sw	$2, 20($fp)             # 4-byte Folded Spill
	jalr	$25
	nop
	ld	$1, 32($fp)             # 8-byte Folded Reload
	ld	$4, 40($fp)             # 8-byte Folded Reload
	sd	$1, 8($fp)              # 8-byte Folded Spill
	sd	$4, 0($fp)              # 8-byte Folded Spill
	.set	at
	.set	macro
	.set	reorder
	.end	objc_msgSend
$tmp5:
	.size	objc_msgSend, ($tmp5)-objc_msgSend
	.cfi_endproc

	.section	.text.objc_msgSend_fpret,"ax",@progbits
	.globl	objc_msgSend_fpret
	.align	3
	.type	objc_msgSend_fpret,@function
	.set	nomicromips
	.set	nomips16
	.ent	objc_msgSend_fpret
objc_msgSend_fpret:                     # @objc_msgSend_fpret
	.cfi_startproc
	.frame	$fp,160,$ra
	.mask 	0x00000000,0
	.fmask	0xd0000000,-4
	.set	noreorder
	.set	nomacro
	.set	noat
# BB#0:                                 # %entry
	daddiu	$sp, $sp, -160
$tmp6:
	.cfi_def_cfa_offset 160
	sd	$ra, 104($sp)           # 8-byte Folded Spill
	sd	$fp, 96($sp)            # 8-byte Folded Spill
	sd	$gp, 88($sp)            # 8-byte Folded Spill
$tmp7:
	.cfi_offset 31, -56
$tmp8:
	.cfi_offset 30, -64
$tmp9:
	.cfi_offset 28, -72
	move	 $fp, $sp
$tmp10:
	.cfi_def_cfa_register 30
	lui	$1, %hi(%neg(%gp_rel(objc_msgSend_fpret)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(objc_msgSend_fpret)))
	sd	$11, 152($fp)
	sd	$10, 144($fp)
	sd	$9, 136($fp)
	sd	$8, 128($fp)
	sd	$7, 120($fp)
	sd	$6, 112($fp)
	sd	$4, 56($fp)
	sd	$5, 48($fp)
	ld	$6, %got_disp(__stderrp)($1)
	ld	$6, 0($6)
	ld	$7, %got_page($.str)($1)
	daddiu	$7, $7, %got_ofst($.str)
	ld	$8, %got_page($__FUNCTION__.objc_msgSend_fpret)($1)
	daddiu	$8, $8, %got_ofst($__FUNCTION__.objc_msgSend_fpret)
	ld	$25, %call16(fprintf)($1)
	sd	$4, 40($fp)             # 8-byte Folded Spill
	move	 $4, $6
	sd	$5, 32($fp)             # 8-byte Folded Spill
	move	 $5, $7
	move	 $6, $8
	move	 $gp, $1
	sd	$1, 24($fp)             # 8-byte Folded Spill
	jalr	$25
	nop
	ld	$1, 24($fp)             # 8-byte Folded Reload
	ld	$25, %call16(abort)($1)
	move	 $gp, $1
	sw	$2, 20($fp)             # 4-byte Folded Spill
	jalr	$25
	nop
	ld	$1, 32($fp)             # 8-byte Folded Reload
	ld	$4, 40($fp)             # 8-byte Folded Reload
	sd	$1, 8($fp)              # 8-byte Folded Spill
	sd	$4, 0($fp)              # 8-byte Folded Spill
	.set	at
	.set	macro
	.set	reorder
	.end	objc_msgSend_fpret
$tmp11:
	.size	objc_msgSend_fpret, ($tmp11)-objc_msgSend_fpret
	.cfi_endproc

	.section	.text.objc_msgSend_stret,"ax",@progbits
	.globl	objc_msgSend_stret
	.align	3
	.type	objc_msgSend_stret,@function
	.set	nomicromips
	.set	nomips16
	.ent	objc_msgSend_stret
objc_msgSend_stret:                     # @objc_msgSend_stret
	.cfi_startproc
	.frame	$fp,144,$ra
	.mask 	0x00000000,0
	.fmask	0xd0000000,-4
	.set	noreorder
	.set	nomacro
	.set	noat
# BB#0:                                 # %entry
	daddiu	$sp, $sp, -144
$tmp12:
	.cfi_def_cfa_offset 144
	sd	$ra, 88($sp)            # 8-byte Folded Spill
	sd	$fp, 80($sp)            # 8-byte Folded Spill
	sd	$gp, 72($sp)            # 8-byte Folded Spill
$tmp13:
	.cfi_offset 31, -56
$tmp14:
	.cfi_offset 30, -64
$tmp15:
	.cfi_offset 28, -72
	move	 $fp, $sp
$tmp16:
	.cfi_def_cfa_register 30
	lui	$1, %hi(%neg(%gp_rel(objc_msgSend_stret)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(objc_msgSend_stret)))
	sd	$11, 136($fp)
	sd	$10, 128($fp)
	sd	$9, 120($fp)
	sd	$8, 112($fp)
	sd	$7, 104($fp)
	sd	$6, 96($fp)
	sd	$4, 64($fp)
	sd	$5, 56($fp)
	ld	$6, %got_disp(__stderrp)($1)
	ld	$6, 0($6)
	ld	$7, %got_page($.str)($1)
	daddiu	$7, $7, %got_ofst($.str)
	ld	$8, %got_page($__FUNCTION__.objc_msgSend_stret)($1)
	daddiu	$8, $8, %got_ofst($__FUNCTION__.objc_msgSend_stret)
	ld	$25, %call16(fprintf)($1)
	sd	$4, 48($fp)             # 8-byte Folded Spill
	move	 $4, $6
	sd	$5, 40($fp)             # 8-byte Folded Spill
	move	 $5, $7
	move	 $6, $8
	move	 $gp, $1
	sd	$1, 32($fp)             # 8-byte Folded Spill
	jalr	$25
	nop
	ld	$1, 32($fp)             # 8-byte Folded Reload
	ld	$25, %call16(abort)($1)
	move	 $gp, $1
	sw	$2, 28($fp)             # 4-byte Folded Spill
	jalr	$25
	nop
	ld	$1, 40($fp)             # 8-byte Folded Reload
	ld	$4, 48($fp)             # 8-byte Folded Reload
	sd	$1, 16($fp)             # 8-byte Folded Spill
	sd	$4, 8($fp)              # 8-byte Folded Spill
	.set	at
	.set	macro
	.set	reorder
	.end	objc_msgSend_stret
$tmp17:
	.size	objc_msgSend_stret, ($tmp17)-objc_msgSend_stret
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
