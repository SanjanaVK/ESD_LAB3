;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:10:05 2002

;--------------------------------------------------------
	.module frexpf
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _frexpf_PARM_2
	.globl _frexpf
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; special function bits 
;--------------------------------------------------------
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_frexpf_PARM_2::
	.ds 3
_frexpf_x_1_1::
	.ds 4
_frexpf_fl_1_1::
	.ds 4
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'frexpf'
;------------------------------------------------------------
;	frexpf.c 24
;	-----------------------------------------
;	 function frexpf
;	-----------------------------------------
_frexpf:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	frexpf.c 36
;	genReceive
	mov	_frexpf_x_1_1,dpl
	mov	(_frexpf_x_1_1 + 1),dph
	mov	(_frexpf_x_1_1 + 2),b
	mov	(_frexpf_x_1_1 + 3),a
;	frexpf.c 29
;	genPointerSet
;	genNearPointerSet
;	genDataPointerSet
	mov	_frexpf_fl_1_1,_frexpf_x_1_1
	mov	(_frexpf_fl_1_1 + 1),(_frexpf_x_1_1 + 1)
	mov	(_frexpf_fl_1_1 + 2),(_frexpf_x_1_1 + 2)
	mov	(_frexpf_fl_1_1 + 3),(_frexpf_x_1_1 + 3)
;	frexpf.c 31
;	genRightShift
;	genSignedRightShift
;	genRightShiftLiteral
;	genrshFour
	mov	r6,(_frexpf_x_1_1 + 2)
	mov	a,(_frexpf_x_1_1 + 3)
	mov	c,acc.7
	xch	a,r6
	rlc	a
	xch	a,r6
	rlc	a
	xch	a,r6
	anl	a,#0x01
	jnb	acc.0,00103$
	orl	a,#0xfe
00103$:
	mov	r7,a
	rlc	a
	subb	a,acc
	mov	r0,a
	mov	r1,a
;	genAnd
	mov	ar2,r6
;	frexpf.c 32
;	genMinus
; Peephole 3.c   changed mov to clr
; Peephole 3.b   changed mov to clr
	clr  a
	mov  r3,a
	mov  r4,a
	mov  r5,a
	mov  a,r2
	add	a,#0x82
	mov	r2,a
	mov	a,r3
	addc	a,#0xff
	mov	r3,a
	mov	a,r4
	addc	a,#0xff
	mov	r4,a
	mov	a,r5
	addc	a,#0xff
	mov	r5,a
;	frexpf.c 33
;	genAssign
	mov	r6,_frexpf_PARM_2
	mov	r7,(_frexpf_PARM_2 + 1)
	mov	r0,(_frexpf_PARM_2 + 2)
;	genCast
	mov	ar1,r2
	mov	ar2,r3
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	a,r2
	lcall	__gptrput
;	frexpf.c 34
;	genAnd
	mov	r2,_frexpf_x_1_1
	mov	r3,(_frexpf_x_1_1 + 1)
	mov	a,#0x7F
	anl	a,(_frexpf_x_1_1 + 2)
	mov	r4,a
	mov	a,#0x80
	anl	a,(_frexpf_x_1_1 + 3)
	mov	r5,a
;	genPointerSet
;	genNearPointerSet
;	genDataPointerSet
	mov	_frexpf_fl_1_1,r2
	mov	(_frexpf_fl_1_1 + 1),r3
	mov	(_frexpf_fl_1_1 + 2),r4
	mov	(_frexpf_fl_1_1 + 3),r5
;	frexpf.c 35
;	genOr
	orl	ar5,#0x3F
;	genPointerSet
;	genNearPointerSet
;	genDataPointerSet
	mov	_frexpf_fl_1_1,r2
	mov	(_frexpf_fl_1_1 + 1),r3
	mov	(_frexpf_fl_1_1 + 2),r4
	mov	(_frexpf_fl_1_1 + 3),r5
;	frexpf.c 36
;	genRet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
00101$:
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
