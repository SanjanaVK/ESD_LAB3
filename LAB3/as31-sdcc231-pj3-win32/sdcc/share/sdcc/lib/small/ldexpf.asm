;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:10:06 2002

;--------------------------------------------------------
	.module ldexpf
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ldexpf_PARM_2
	.globl _ldexpf
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
_ldexpf_PARM_2::
	.ds 2
_ldexpf_fl_1_1::
	.ds 4
_ldexpf_e_1_1::
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
;Allocation info for local variables in function 'ldexpf'
;------------------------------------------------------------
;	ldexpf.c 24
;	-----------------------------------------
;	 function ldexpf
;	-----------------------------------------
_ldexpf:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	ldexpf.c 35
;	genReceive
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	ldexpf.c 29
;	genPointerSet
;	genNearPointerSet
;	genDataPointerSet
	mov	_ldexpf_fl_1_1,r2
	mov	(_ldexpf_fl_1_1 + 1),r3
	mov	(_ldexpf_fl_1_1 + 2),r4
	mov	(_ldexpf_fl_1_1 + 3),r5
;	ldexpf.c 31
;	genRightShift
;	genSignedRightShift
;	genRightShiftLiteral
;	genrshFour
	mov	ar6,r4
	mov	a,r5
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
	mov	_ldexpf_e_1_1,r6
	mov	(_ldexpf_e_1_1 + 1),#0x00
	mov	(_ldexpf_e_1_1 + 2),#0x00
	mov	(_ldexpf_e_1_1 + 3),#0x00
;	ldexpf.c 32
;	genCast
	mov	r6,_ldexpf_PARM_2
	mov	r7,(_ldexpf_PARM_2 + 1)
	mov	a,(_ldexpf_PARM_2 + 1)
	rlc	a
	subb	a,acc
	mov	r0,a
	mov	r1,a
;	genPlus
	mov	a,r6
	add	a,_ldexpf_e_1_1
	mov	_ldexpf_e_1_1,a
	mov	a,r7
	addc	a,(_ldexpf_e_1_1 + 1)
	mov	(_ldexpf_e_1_1 + 1),a
	mov	a,r0
	addc	a,(_ldexpf_e_1_1 + 2)
	mov	(_ldexpf_e_1_1 + 2),a
	mov	a,r1
	addc	a,(_ldexpf_e_1_1 + 3)
	mov	(_ldexpf_e_1_1 + 3),a
;	ldexpf.c 33
;	genAnd
	mov	r6,_ldexpf_e_1_1
	mov	r7,#0x00
	mov	r0,#0x00
	mov	r1,#0x00
;	genLeftShift
;	genLeftShiftLiteral
;	genlshFour
	mov	ar0,r6
	mov	a,r7
	anl	a,#0x01
	mov	c,acc.0
	xch	a,r0
	rrc	a
	xch	a,r0
	rrc	a
	xch	a,r0
	mov	r1,a
	mov	r7,#0x00
	mov	r6,#0x00
;	genAnd
	anl	ar4,#0x7F
	anl	ar5,#0x80
;	genOr
	mov	a,r2
	orl	ar6,a
	mov	a,r3
	orl	ar7,a
	mov	a,r4
	orl	ar0,a
	mov	a,r5
	orl	ar1,a
;	genPointerSet
;	genNearPointerSet
;	genDataPointerSet
	mov	_ldexpf_fl_1_1,r6
	mov	(_ldexpf_fl_1_1 + 1),r7
	mov	(_ldexpf_fl_1_1 + 2),r0
	mov	(_ldexpf_fl_1_1 + 3),r1
;	ldexpf.c 35
;	genRet
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,r1
00101$:
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
