	.cpu generic+fp+simd
	.file	"objc_msgSend.noimpl.c"
	.section	.rodata
	.align	3
.LC0:
	.string	"%s is not implemented for this target!\n"
	.text
	.align	2
	.global	objc_msgSend
	.type	objc_msgSend, %function
objc_msgSend:
	stp	x29, x30, [sp, -208]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	str	x2, [x29, 160]
	str	x3, [x29, 168]
	str	x4, [x29, 176]
	str	x5, [x29, 184]
	str	x6, [x29, 192]
	str	x7, [x29, 200]
	str	q0, [x29, 32]
	str	q1, [x29, 48]
	str	q2, [x29, 64]
	str	q3, [x29, 80]
	str	q4, [x29, 96]
	str	q5, [x29, 112]
	str	q6, [x29, 128]
	str	q7, [x29, 144]
	adrp	x0, :got:__stderrp
	ldr	x0, [x0, #:got_lo12:__stderrp]
	ldr	x3, [x0]
	adrp	x0, __FUNCTION__.4752
	add	x1, x0, :lo12:__FUNCTION__.4752
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	mov	x2, x1
	mov	x1, x0
	mov	x0, x3
	bl	fprintf
	bl	abort
	.size	objc_msgSend, .-objc_msgSend
	.align	2
	.global	objc_msgSend_fpret
	.type	objc_msgSend_fpret, %function
objc_msgSend_fpret:
	stp	x29, x30, [sp, -208]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	str	x2, [x29, 160]
	str	x3, [x29, 168]
	str	x4, [x29, 176]
	str	x5, [x29, 184]
	str	x6, [x29, 192]
	str	x7, [x29, 200]
	str	q0, [x29, 32]
	str	q1, [x29, 48]
	str	q2, [x29, 64]
	str	q3, [x29, 80]
	str	q4, [x29, 96]
	str	q5, [x29, 112]
	str	q6, [x29, 128]
	str	q7, [x29, 144]
	adrp	x0, :got:__stderrp
	ldr	x0, [x0, #:got_lo12:__stderrp]
	ldr	x3, [x0]
	adrp	x0, __FUNCTION__.4757
	add	x1, x0, :lo12:__FUNCTION__.4757
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	mov	x2, x1
	mov	x1, x0
	mov	x0, x3
	bl	fprintf
	bl	abort
	.size	objc_msgSend_fpret, .-objc_msgSend_fpret
	.align	2
	.global	objc_msgSend_stret
	.type	objc_msgSend_stret, %function
objc_msgSend_stret:
	stp	x29, x30, [sp, -208]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	str	x2, [x29, 160]
	str	x3, [x29, 168]
	str	x4, [x29, 176]
	str	x5, [x29, 184]
	str	x6, [x29, 192]
	str	x7, [x29, 200]
	str	q0, [x29, 32]
	str	q1, [x29, 48]
	str	q2, [x29, 64]
	str	q3, [x29, 80]
	str	q4, [x29, 96]
	str	q5, [x29, 112]
	str	q6, [x29, 128]
	str	q7, [x29, 144]
	adrp	x0, :got:__stderrp
	ldr	x0, [x0, #:got_lo12:__stderrp]
	ldr	x3, [x0]
	adrp	x0, __FUNCTION__.4762
	add	x1, x0, :lo12:__FUNCTION__.4762
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	mov	x2, x1
	mov	x1, x0
	mov	x0, x3
	bl	fprintf
	bl	abort
	.size	objc_msgSend_stret, .-objc_msgSend_stret
	.section	.rodata
	.align	3
	.type	__FUNCTION__.4752, %object
	.size	__FUNCTION__.4752, 13
__FUNCTION__.4752:
	.string	"objc_msgSend"
	.align	3
	.type	__FUNCTION__.4757, %object
	.size	__FUNCTION__.4757, 19
__FUNCTION__.4757:
	.string	"objc_msgSend_fpret"
	.align	3
	.type	__FUNCTION__.4762, %object
	.size	__FUNCTION__.4762, 19
__FUNCTION__.4762:
	.string	"objc_msgSend_stret"
	.ident	"GCC: (GNU) 5.3 20151204"
	.section	.note.GNU-stack,"",%progbits
