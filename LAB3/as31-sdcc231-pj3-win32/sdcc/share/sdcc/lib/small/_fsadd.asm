;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:09:55 2002

;--------------------------------------------------------
	.module _fsadd
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fsadd_PARM_2
	.globl ___fsadd
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
___fsadd_PARM_2::
	.ds 4
___fsadd_mant1_1_1::
	.ds 4
___fsadd_mant2_1_1::
	.ds 4
___fsadd_fl1_1_1::
	.ds 4
___fsadd_fl2_1_1::
	.ds 4
___fsadd_exp1_1_1::
	.ds 2
___fsadd_exp2_1_1::
	.ds 2
___fsadd_sign_1_1::
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
;Allocation info for local variables in function '__fsadd'
;------------------------------------------------------------
;	_fsadd.c 28
;	-----------------------------------------
;	 function __fsadd
;	-----------------------------------------
___fsadd:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	_fsadd.c 101
;	genReceive
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	_fsadd.c 33
;	genAssign
	clr	a
	mov	(___fsadd_sign_1_1 + 3),a
	mov	(___fsadd_sign_1_1 + 2),a
	mov	(___fsadd_sign_1_1 + 1),a
	mov	___fsadd_sign_1_1,a
;	_fsadd.c 35
;	genPointerSet
;	genNearPointerSet
;	genDataPointerSet
	mov	___fsadd_fl1_1_1,r2
	mov	(___fsadd_fl1_1_1 + 1),r3
	mov	(___fsadd_fl1_1_1 + 2),r4
	mov	(___fsadd_fl1_1_1 + 3),r5
;	_fsadd.c 36
;	genPointerSet
;	genNearPointerSet
;	genDataPointerSet
	mov	___fsadd_fl2_1_1,___fsadd_PARM_2
	mov	(___fsadd_fl2_1_1 + 1),(___fsadd_PARM_2 + 1)
	mov	(___fsadd_fl2_1_1 + 2),(___fsadd_PARM_2 + 2)
	mov	(___fsadd_fl2_1_1 + 3),(___fsadd_PARM_2 + 3)
;	_fsadd.c 39
;	genAssign
;	genIfx
	mov	a,___fsadd_fl1_1_1
	orl	a,(___fsadd_fl1_1_1 + 1)
	orl	a,(___fsadd_fl1_1_1 + 2)
	orl	a,(___fsadd_fl1_1_1 + 3)
;	genIfxJump
; Peephole 109   removed ljmp by inverse jump logic
	jnz  00102$
00145$:
;	_fsadd.c 40
;	genAssign
;	genRet
	mov	dpl,___fsadd_fl2_1_1
	mov	dph,(___fsadd_fl2_1_1 + 1)
	mov	b,(___fsadd_fl2_1_1 + 2)
	mov	a,(___fsadd_fl2_1_1 + 3)
	ljmp	00129$
00102$:
;	_fsadd.c 41
;	genAssign
;	genIfx
	mov	a,___fsadd_fl2_1_1
	orl	a,(___fsadd_fl2_1_1 + 1)
	orl	a,(___fsadd_fl2_1_1 + 2)
	orl	a,(___fsadd_fl2_1_1 + 3)
;	genIfxJump
; Peephole 109   removed ljmp by inverse jump logic
	jnz  00104$
00146$:
;	_fsadd.c 42
;	genAssign
;	genRet
	mov	dpl,___fsadd_fl1_1_1
	mov	dph,(___fsadd_fl1_1_1 + 1)
	mov	b,(___fsadd_fl1_1_1 + 2)
	mov	a,(___fsadd_fl1_1_1 + 3)
	ljmp	00129$
00104$:
;	_fsadd.c 44
;	genAssign
;	genRightShift
;	genRightShiftLiteral
;	genrshFour
	mov	r2,(___fsadd_fl1_1_1 + 2)
	mov	a,(___fsadd_fl1_1_1 + 3)
	mov	c,acc.7
	xch	a,r2
	rlc	a
	xch	a,r2
	rlc	a
	xch	a,r2
	anl	a,#0x01
	mov	r3,a
	mov	r4,#0x00
	mov	r5,#0x00
;	genAnd
	mov	r3,#0x00
	mov	r4,#0x00
	mov	r5,#0x00
;	genCast
	mov	___fsadd_exp1_1_1,r2
	mov	(___fsadd_exp1_1_1 + 1),r3
;	_fsadd.c 45
;	genAssign
;	genRightShift
;	genRightShiftLiteral
;	genrshFour
	mov	r2,(___fsadd_fl2_1_1 + 2)
	mov	a,(___fsadd_fl2_1_1 + 3)
	mov	c,acc.7
	xch	a,r2
	rlc	a
	xch	a,r2
	rlc	a
	xch	a,r2
	anl	a,#0x01
	mov	r3,a
	mov	r4,#0x00
	mov	r5,#0x00
;	genAnd
	mov	r3,#0x00
	mov	r4,#0x00
	mov	r5,#0x00
;	genCast
	mov	___fsadd_exp2_1_1,r2
	mov	(___fsadd_exp2_1_1 + 1),r3
;	_fsadd.c 47
;	genPlus
	mov	a,#0x19
	add	a,___fsadd_exp2_1_1
	mov	r2,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,(___fsadd_exp2_1_1 + 1)
	mov	r3,a
;	genCmpGt
;	genCmp
	clr	c
	mov	a,r2
	subb	a,___fsadd_exp1_1_1
	mov	a,r3
	xrl	a,#0x80
	mov	b,(___fsadd_exp1_1_1 + 1)
	xrl	b,#0x80
	subb	a,b
;	genIfxJump
; Peephole 108   removed ljmp by inverse jump logic
	jnc  00106$
00147$:
;	_fsadd.c 48
;	genAssign
;	genRet
	mov	dpl,___fsadd_fl1_1_1
	mov	dph,(___fsadd_fl1_1_1 + 1)
	mov	b,(___fsadd_fl1_1_1 + 2)
	mov	a,(___fsadd_fl1_1_1 + 3)
	ljmp	00129$
00106$:
;	_fsadd.c 49
;	genPlus
	mov	a,#0x19
	add	a,___fsadd_exp1_1_1
	mov	r2,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,(___fsadd_exp1_1_1 + 1)
	mov	r3,a
;	genCmpGt
;	genCmp
	clr	c
	mov	a,r2
	subb	a,___fsadd_exp2_1_1
	mov	a,r3
	xrl	a,#0x80
	mov	b,(___fsadd_exp2_1_1 + 1)
	xrl	b,#0x80
	subb	a,b
;	genIfxJump
; Peephole 108   removed ljmp by inverse jump logic
	jnc  00108$
00148$:
;	_fsadd.c 50
;	genAssign
;	genRet
	mov	dpl,___fsadd_fl2_1_1
	mov	dph,(___fsadd_fl2_1_1 + 1)
	mov	b,(___fsadd_fl2_1_1 + 2)
	mov	a,(___fsadd_fl2_1_1 + 3)
	ljmp	00129$
00108$:
;	_fsadd.c 52
;	genAssign
;	genAnd
	mov	r2,___fsadd_fl1_1_1
	mov	r3,(___fsadd_fl1_1_1 + 1)
	mov	a,#0x7F
	anl	a,(___fsadd_fl1_1_1 + 2)
	mov	r4,a
	mov	r5,#0x00
;	genOr
	mov	___fsadd_mant1_1_1,r2
	mov	(___fsadd_mant1_1_1 + 1),r3
	mov	a,#0x80
	orl	a,r4
	mov	(___fsadd_mant1_1_1 + 2),a
	mov	(___fsadd_mant1_1_1 + 3),r5
;	_fsadd.c 53
;	genAssign
;	genAnd
	mov	r2,___fsadd_fl2_1_1
	mov	r3,(___fsadd_fl2_1_1 + 1)
	mov	a,#0x7F
	anl	a,(___fsadd_fl2_1_1 + 2)
	mov	r4,a
	mov	r5,#0x00
;	genOr
	mov	___fsadd_mant2_1_1,r2
	mov	(___fsadd_mant2_1_1 + 1),r3
	mov	a,#0x80
	orl	a,r4
	mov	(___fsadd_mant2_1_1 + 2),a
	mov	(___fsadd_mant2_1_1 + 3),r5
;	_fsadd.c 55
;	genAssign
;	genGetHbit
	mov	a,(___fsadd_fl1_1_1 + 3)
	rl	a
	anl	a,#0x01
;	genIfx
; Peephole 105   removed redundant mov
	mov  r2,a
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00110$
00149$:
;	_fsadd.c 56
;	genUminus
	clr	c
	clr	a
	subb	a,___fsadd_mant1_1_1
	mov	___fsadd_mant1_1_1,a
	clr	a
	subb	a,(___fsadd_mant1_1_1 + 1)
	mov	(___fsadd_mant1_1_1 + 1),a
	clr	a
	subb	a,(___fsadd_mant1_1_1 + 2)
	mov	(___fsadd_mant1_1_1 + 2),a
	clr	a
	subb	a,(___fsadd_mant1_1_1 + 3)
	mov	(___fsadd_mant1_1_1 + 3),a
00110$:
;	_fsadd.c 57
;	genAssign
;	genGetHbit
	mov	a,(___fsadd_fl2_1_1 + 3)
	rl	a
	anl	a,#0x01
;	genIfx
; Peephole 105   removed redundant mov
	mov  r2,a
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00112$
00150$:
;	_fsadd.c 58
;	genUminus
	clr	c
	clr	a
	subb	a,___fsadd_mant2_1_1
	mov	___fsadd_mant2_1_1,a
	clr	a
	subb	a,(___fsadd_mant2_1_1 + 1)
	mov	(___fsadd_mant2_1_1 + 1),a
	clr	a
	subb	a,(___fsadd_mant2_1_1 + 2)
	mov	(___fsadd_mant2_1_1 + 2),a
	clr	a
	subb	a,(___fsadd_mant2_1_1 + 3)
	mov	(___fsadd_mant2_1_1 + 3),a
00112$:
;	_fsadd.c 60
;	genCmpGt
;	genCmp
	clr	c
	mov	a,___fsadd_exp2_1_1
	subb	a,___fsadd_exp1_1_1
	mov	a,(___fsadd_exp2_1_1 + 1)
	xrl	a,#0x80
	mov	b,(___fsadd_exp1_1_1 + 1)
	xrl	b,#0x80
	subb	a,b
;	genIfxJump
; Peephole 108   removed ljmp by inverse jump logic
	jnc  00114$
00151$:
;	_fsadd.c 62
;	genMinus
	clr	c
	mov	a,___fsadd_exp1_1_1
	subb	a,___fsadd_exp2_1_1
	mov	r2,a
	mov	a,(___fsadd_exp1_1_1 + 1)
	subb	a,(___fsadd_exp2_1_1 + 1)
	mov	r3,a
;	genRightShift
;	genSignedRightShift
	mov	b,r2
	inc	b
	mov	a,(___fsadd_mant2_1_1 + 3)
	rlc	a
	mov	ov,c
	sjmp	00153$
00152$:
	mov	c,ov
	mov	a,(___fsadd_mant2_1_1 + 3)
	rrc	a
	mov	(___fsadd_mant2_1_1 + 3),a
	mov	a,(___fsadd_mant2_1_1 + 2)
	rrc	a
	mov	(___fsadd_mant2_1_1 + 2),a
	mov	a,(___fsadd_mant2_1_1 + 1)
	rrc	a
	mov	(___fsadd_mant2_1_1 + 1),a
	mov	a,___fsadd_mant2_1_1
	rrc	a
	mov	___fsadd_mant2_1_1,a
00153$:
	djnz	b,00152$
; Peephole 132   changed ljmp to sjmp
	sjmp 00115$
00114$:
;	_fsadd.c 66
;	genMinus
	clr	c
	mov	a,___fsadd_exp2_1_1
	subb	a,___fsadd_exp1_1_1
	mov	r2,a
	mov	a,(___fsadd_exp2_1_1 + 1)
	subb	a,(___fsadd_exp1_1_1 + 1)
	mov	r3,a
;	genRightShift
;	genSignedRightShift
	mov	b,r2
	inc	b
	mov	a,(___fsadd_mant1_1_1 + 3)
	rlc	a
	mov	ov,c
	sjmp	00155$
00154$:
	mov	c,ov
	mov	a,(___fsadd_mant1_1_1 + 3)
	rrc	a
	mov	(___fsadd_mant1_1_1 + 3),a
	mov	a,(___fsadd_mant1_1_1 + 2)
	rrc	a
	mov	(___fsadd_mant1_1_1 + 2),a
	mov	a,(___fsadd_mant1_1_1 + 1)
	rrc	a
	mov	(___fsadd_mant1_1_1 + 1),a
	mov	a,___fsadd_mant1_1_1
	rrc	a
	mov	___fsadd_mant1_1_1,a
00155$:
	djnz	b,00154$
;	_fsadd.c 67
;	genAssign
	mov	___fsadd_exp1_1_1,___fsadd_exp2_1_1
	mov	(___fsadd_exp1_1_1 + 1),(___fsadd_exp2_1_1 + 1)
00115$:
;	_fsadd.c 69
;	genPlus
	mov	a,___fsadd_mant2_1_1
	add	a,___fsadd_mant1_1_1
	mov	___fsadd_mant1_1_1,a
	mov	a,(___fsadd_mant2_1_1 + 1)
	addc	a,(___fsadd_mant1_1_1 + 1)
	mov	(___fsadd_mant1_1_1 + 1),a
	mov	a,(___fsadd_mant2_1_1 + 2)
	addc	a,(___fsadd_mant1_1_1 + 2)
	mov	(___fsadd_mant1_1_1 + 2),a
	mov	a,(___fsadd_mant2_1_1 + 3)
	addc	a,(___fsadd_mant1_1_1 + 3)
	mov	(___fsadd_mant1_1_1 + 3),a
;	_fsadd.c 71
;	genCmpLt
;	genCmp
	mov	a,(___fsadd_mant1_1_1 + 3)
;	genIfxJump
; Peephole 111   removed ljmp by inverse jump logic
	jnb  acc.7,00119$
00156$:
;	_fsadd.c 73
;	genUminus
	clr	c
	clr	a
	subb	a,___fsadd_mant1_1_1
	mov	___fsadd_mant1_1_1,a
	clr	a
	subb	a,(___fsadd_mant1_1_1 + 1)
	mov	(___fsadd_mant1_1_1 + 1),a
	clr	a
	subb	a,(___fsadd_mant1_1_1 + 2)
	mov	(___fsadd_mant1_1_1 + 2),a
	clr	a
	subb	a,(___fsadd_mant1_1_1 + 3)
	mov	(___fsadd_mant1_1_1 + 3),a
;	_fsadd.c 74
;	genAssign
	mov	___fsadd_sign_1_1,#0x00
	mov	(___fsadd_sign_1_1 + 1),#0x00
	mov	(___fsadd_sign_1_1 + 2),#0x00
	mov	(___fsadd_sign_1_1 + 3),#0x80
; Peephole 132   changed ljmp to sjmp
	sjmp 00121$
00119$:
;	_fsadd.c 76
;	genIfx
	mov	a,___fsadd_mant1_1_1
	orl	a,(___fsadd_mant1_1_1 + 1)
	orl	a,(___fsadd_mant1_1_1 + 2)
	orl	a,(___fsadd_mant1_1_1 + 3)
;	genIfxJump
; Peephole 109   removed ljmp by inverse jump logic
	jnz  00121$
00157$:
;	_fsadd.c 77
;	genRet
; Peephole 3.a   changed mov to clr
; Peephole 3.b   changed mov to clr
; Peephole 3.b   changed mov to clr
	clr  a
	mov  dpl,a
	mov  dph,a
	mov  b,a
	ljmp	00129$
;	_fsadd.c 82
00121$:
;	genCmpLt
;	genCmp
	clr	c
	mov	a,___fsadd_mant1_1_1
	subb	a,#0x00
	mov	a,(___fsadd_mant1_1_1 + 1)
	subb	a,#0x00
	mov	a,(___fsadd_mant1_1_1 + 2)
	subb	a,#0x80
	mov	a,(___fsadd_mant1_1_1 + 3)
	xrl	a,#0x80
	subb	a,#0x80
;	genIfxJump
; Peephole 108   removed ljmp by inverse jump logic
	jnc  00126$
00158$:
;	_fsadd.c 83
;	genLeftShift
;	genLeftShiftLiteral
;	genlshFour
	mov	a,___fsadd_mant1_1_1
	add	a,acc
	mov	___fsadd_mant1_1_1,a
	mov	a,(___fsadd_mant1_1_1 + 1)
	rlc	a
	mov	(___fsadd_mant1_1_1 + 1),a
	mov	a,(___fsadd_mant1_1_1 + 2)
	rlc	a
	mov	(___fsadd_mant1_1_1 + 2),a
	mov	a,(___fsadd_mant1_1_1 + 3)
	rlc	a
	mov	(___fsadd_mant1_1_1 + 3),a
;	_fsadd.c 84
;	genMinus
;	genMinusDec
;	tail decrement optimized
	dec	___fsadd_exp1_1_1
	mov	a,#0xff
	cjne	a,___fsadd_exp1_1_1,00121$
	dec	(___fsadd_exp1_1_1 + 1)
;	_fsadd.c 87
; Peephole 132   changed ljmp to sjmp
	sjmp 00121$
00126$:
;	genAnd
	mov	a,(___fsadd_mant1_1_1 + 3)
; Peephole 110   removed ljmp by inverse jump logic
	jz  00128$
00159$:
;	_fsadd.c 89
;	genAnd
	mov	a,___fsadd_mant1_1_1
;	genIfxJump
; Peephole 111   removed ljmp by inverse jump logic
	jnb  acc.0,00125$
00160$:
;	_fsadd.c 90
;	genPlus
;	genPlusIncr
	mov	a,#0x02
	add	a,___fsadd_mant1_1_1
	mov	___fsadd_mant1_1_1,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,(___fsadd_mant1_1_1 + 1)
	mov	(___fsadd_mant1_1_1 + 1),a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,(___fsadd_mant1_1_1 + 2)
	mov	(___fsadd_mant1_1_1 + 2),a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,(___fsadd_mant1_1_1 + 3)
	mov	(___fsadd_mant1_1_1 + 3),a
00125$:
;	_fsadd.c 91
;	genRightShift
;	genSignedRightShift
;	genRightShiftLiteral
;	genrshFour
	mov	a,(___fsadd_mant1_1_1 + 3)
	mov	c,acc.7
	rrc	a
	mov	(___fsadd_mant1_1_1 + 3),a
	mov	a,(___fsadd_mant1_1_1 + 2)
	rrc	a
	mov	(___fsadd_mant1_1_1 + 2),a
	mov	a,(___fsadd_mant1_1_1 + 1)
	rrc	a
	mov	(___fsadd_mant1_1_1 + 1),a
	mov	a,___fsadd_mant1_1_1
	rrc	a
	mov	___fsadd_mant1_1_1,a
;	_fsadd.c 92
;	genPlus
;	genPlusIncr
;	tail increment optimized
	inc	___fsadd_exp1_1_1
	clr	a
	cjne	a,___fsadd_exp1_1_1,00126$
	inc	(___fsadd_exp1_1_1 + 1)
; Peephole 132   changed ljmp to sjmp
	sjmp 00126$
00128$:
;	_fsadd.c 96
;	genAnd
	anl	(___fsadd_mant1_1_1 + 2),#0x7F
;	_fsadd.c 99
;	genCast
	mov	r2,___fsadd_exp1_1_1
	mov	r3,(___fsadd_exp1_1_1 + 1)
	mov	a,(___fsadd_exp1_1_1 + 1)
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	r5,a
;	genLeftShift
;	genLeftShiftLiteral
;	genlshFour
	mov	ar4,r2
	mov	a,r3
	anl	a,#0x01
	mov	c,acc.0
	xch	a,r4
	rrc	a
	xch	a,r4
	rrc	a
	xch	a,r4
	mov	r5,a
;	genOr
; Peephole 3.c   changed mov to clr
	clr  a
	mov  r3,a
	mov  r2,a
	mov  a,___fsadd_sign_1_1
	orl	ar2,a
	mov	a,(___fsadd_sign_1_1 + 1)
	orl	ar3,a
	mov	a,(___fsadd_sign_1_1 + 2)
	orl	ar4,a
	mov	a,(___fsadd_sign_1_1 + 3)
	orl	ar5,a
;	genAssign
	mov	r6,___fsadd_mant1_1_1
	mov	r7,(___fsadd_mant1_1_1 + 1)
	mov	r0,(___fsadd_mant1_1_1 + 2)
	mov	r1,(___fsadd_mant1_1_1 + 3)
;	genOr
	mov	a,r6
	orl	ar2,a
	mov	a,r7
	orl	ar3,a
	mov	a,r0
	orl	ar4,a
	mov	a,r1
	orl	ar5,a
;	genPointerSet
;	genNearPointerSet
;	genDataPointerSet
	mov	___fsadd_fl1_1_1,r2
	mov	(___fsadd_fl1_1_1 + 1),r3
	mov	(___fsadd_fl1_1_1 + 2),r4
	mov	(___fsadd_fl1_1_1 + 3),r5
;	_fsadd.c 101
;	genAssign
;	genRet
	mov	dpl,___fsadd_fl1_1_1
	mov	dph,(___fsadd_fl1_1_1 + 1)
	mov	b,(___fsadd_fl1_1_1 + 2)
	mov	a,(___fsadd_fl1_1_1 + 3)
00129$:
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
