	.file	1 "objc_msgSend.noimpl.c"
	.section .mdebug.abi64
	.previous
	.nan	2008
	.module	fp=64
	.module	oddspreg
	.abicalls
	.rdata
	.align	3
.LC0:
	.ascii	"%s is not implemented for this target!\012\000"
	.text
	.align	2
	.globl	objc_msgSend
	.set	nomips16
	.set	nomicromips
	.ent	objc_msgSend
	.type	objc_msgSend, @function
objc_msgSend:
	.frame	$fp,96,$31		# vars= 16, regs= 3/0, args= 0, gp= 0
	.mask	0xd0000000,-56
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-96
	sd	$31,40($sp)
	sd	$fp,32($sp)
	sd	$28,24($sp)
	move	$fp,$sp
	lui	$28,%hi(%neg(%gp_rel(objc_msgSend)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(objc_msgSend)))
	sd	$4,0($fp)
	sd	$5,8($fp)
	sd	$6,48($fp)
	sd	$7,56($fp)
	sd	$8,64($fp)
	sd	$9,72($fp)
	sd	$10,80($fp)
	sd	$11,88($fp)
	ld	$2,%got_disp(__stderrp)($28)
	ld	$3,0($2)
	ld	$2,%got_page(__FUNCTION__.3570)($28)
	daddiu	$6,$2,%got_ofst(__FUNCTION__.3570)
	ld	$2,%got_page(.LC0)($28)
	daddiu	$5,$2,%got_ofst(.LC0)
	move	$4,$3
	ld	$2,%call16(fprintf)($28)
	move	$25,$2
	jalr	$25
	nop

	ld	$2,%call16(abort)($28)
	move	$25,$2
	jalr	$25
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
	.frame	$fp,96,$31		# vars= 16, regs= 3/0, args= 0, gp= 0
	.mask	0xd0000000,-56
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-96
	sd	$31,40($sp)
	sd	$fp,32($sp)
	sd	$28,24($sp)
	move	$fp,$sp
	lui	$28,%hi(%neg(%gp_rel(objc_msgSend_fpret)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(objc_msgSend_fpret)))
	sd	$4,0($fp)
	sd	$5,8($fp)
	sd	$6,48($fp)
	sd	$7,56($fp)
	sd	$8,64($fp)
	sd	$9,72($fp)
	sd	$10,80($fp)
	sd	$11,88($fp)
	ld	$2,%got_disp(__stderrp)($28)
	ld	$3,0($2)
	ld	$2,%got_page(__FUNCTION__.3575)($28)
	daddiu	$6,$2,%got_ofst(__FUNCTION__.3575)
	ld	$2,%got_page(.LC0)($28)
	daddiu	$5,$2,%got_ofst(.LC0)
	move	$4,$3
	ld	$2,%call16(fprintf)($28)
	move	$25,$2
	jalr	$25
	nop

	ld	$2,%call16(abort)($28)
	move	$25,$2
	jalr	$25
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
	.frame	$fp,96,$31		# vars= 16, regs= 3/0, args= 0, gp= 0
	.mask	0xd0000000,-56
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-96
	sd	$31,40($sp)
	sd	$fp,32($sp)
	sd	$28,24($sp)
	move	$fp,$sp
	lui	$28,%hi(%neg(%gp_rel(objc_msgSend_stret)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(objc_msgSend_stret)))
	sd	$4,0($fp)
	sd	$5,8($fp)
	sd	$6,48($fp)
	sd	$7,56($fp)
	sd	$8,64($fp)
	sd	$9,72($fp)
	sd	$10,80($fp)
	sd	$11,88($fp)
	ld	$2,%got_disp(__stderrp)($28)
	ld	$3,0($2)
	ld	$2,%got_page(__FUNCTION__.3580)($28)
	daddiu	$6,$2,%got_ofst(__FUNCTION__.3580)
	ld	$2,%got_page(.LC0)($28)
	daddiu	$5,$2,%got_ofst(.LC0)
	move	$4,$3
	ld	$2,%call16(fprintf)($28)
	move	$25,$2
	jalr	$25
	nop

	ld	$2,%call16(abort)($28)
	move	$25,$2
	jalr	$25
	nop

	.set	macro
	.set	reorder
	.end	objc_msgSend_stret
	.size	objc_msgSend_stret, .-objc_msgSend_stret
	.rdata
	.align	3
	.type	__FUNCTION__.3570, @object
	.size	__FUNCTION__.3570, 13
__FUNCTION__.3570:
	.ascii	"objc_msgSend\000"
	.align	3
	.type	__FUNCTION__.3575, @object
	.size	__FUNCTION__.3575, 19
__FUNCTION__.3575:
	.ascii	"objc_msgSend_fpret\000"
	.align	3
	.type	__FUNCTION__.3580, @object
	.size	__FUNCTION__.3580, 19
__FUNCTION__.3580:
	.ascii	"objc_msgSend_stret\000"
	.ident	"GCC: (GNU) 5.3 20151204"
