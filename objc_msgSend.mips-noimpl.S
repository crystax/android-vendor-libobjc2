	.file	1 "objc_msgSend.noimpl.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.abicalls
	.rdata
	.align	2
$LC0:
	.ascii	"%s is not implemented for this target!\012\000"
	.text
	.align	2
	.globl	objc_msgSend
	.set	nomips16
	.set	nomicromips
	.ent	objc_msgSend
	.type	objc_msgSend, @function
objc_msgSend:
	.frame	$fp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	move	$fp,$sp
	.cprestore	16
	sw	$4,32($fp)
	sw	$5,36($fp)
	sw	$6,40($fp)
	sw	$7,44($fp)
	lw	$2,%got(__stderrp)($28)
	lw	$3,0($2)
	lw	$2,%got(__FUNCTION__.3576)($28)
	addiu	$6,$2,%lo(__FUNCTION__.3576)
	lw	$2,%got($LC0)($28)
	addiu	$5,$2,%lo($LC0)
	move	$4,$3
	lw	$2,%call16(fprintf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fprintf
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$2,%call16(abort)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,abort
1:	jalr	$25
	nop

	.set	macro
	.set	reorder
	.end	objc_msgSend
	.size	objc_msgSend, .-objc_msgSend
	.align	2
	.globl	objc_msgSend_fpret
	.set	nomips16
	.set	nomicromips
	.ent	objc_msgSend_fpret
	.type	objc_msgSend_fpret, @function
objc_msgSend_fpret:
	.frame	$fp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	move	$fp,$sp
	.cprestore	16
	sw	$4,32($fp)
	sw	$5,36($fp)
	sw	$6,40($fp)
	sw	$7,44($fp)
	lw	$2,%got(__stderrp)($28)
	lw	$3,0($2)
	lw	$2,%got(__FUNCTION__.3581)($28)
	addiu	$6,$2,%lo(__FUNCTION__.3581)
	lw	$2,%got($LC0)($28)
	addiu	$5,$2,%lo($LC0)
	move	$4,$3
	lw	$2,%call16(fprintf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fprintf
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$2,%call16(abort)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,abort
1:	jalr	$25
	nop

	.set	macro
	.set	reorder
	.end	objc_msgSend_fpret
	.size	objc_msgSend_fpret, .-objc_msgSend_fpret
	.align	2
	.globl	objc_msgSend_stret
	.set	nomips16
	.set	nomicromips
	.ent	objc_msgSend_stret
	.type	objc_msgSend_stret, @function
objc_msgSend_stret:
	.frame	$fp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	move	$fp,$sp
	.cprestore	16
	sw	$4,32($fp)
	sw	$5,36($fp)
	sw	$6,40($fp)
	sw	$7,44($fp)
	lw	$2,%got(__stderrp)($28)
	lw	$3,0($2)
	lw	$2,%got(__FUNCTION__.3586)($28)
	addiu	$6,$2,%lo(__FUNCTION__.3586)
	lw	$2,%got($LC0)($28)
	addiu	$5,$2,%lo($LC0)
	move	$4,$3
	lw	$2,%call16(fprintf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fprintf
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$2,%call16(abort)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,abort
1:	jalr	$25
	nop

	.set	macro
	.set	reorder
	.end	objc_msgSend_stret
	.size	objc_msgSend_stret, .-objc_msgSend_stret
	.rdata
	.align	2
	.type	__FUNCTION__.3576, @object
	.size	__FUNCTION__.3576, 13
__FUNCTION__.3576:
	.ascii	"objc_msgSend\000"
	.align	2
	.type	__FUNCTION__.3581, @object
	.size	__FUNCTION__.3581, 19
__FUNCTION__.3581:
	.ascii	"objc_msgSend_fpret\000"
	.align	2
	.type	__FUNCTION__.3586, @object
	.size	__FUNCTION__.3586, 19
__FUNCTION__.3586:
	.ascii	"objc_msgSend_stret\000"
	.ident	"GCC: (GNU) 5.3 20151204"
