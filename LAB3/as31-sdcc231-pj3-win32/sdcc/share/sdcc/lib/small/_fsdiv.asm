;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:09:56 2002

;--------------------------------------------------------
	.module _fsdiv
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fsdiv_PARM_2
	.globl ___fsdiv
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
___fsdiv_PARM_2::
	.ds 4
___fsdiv_fl1_1_1::
	.ds 4
___fsdiv_fl2_1_1::
	.ds 4
___fsdiv_result_1_1::
	.ds 4
___fsdiv_mask_1_1::
	.ds 4
___fsdiv_mant1_1_1::
	.ds 4
___fsdiv_mant2_1_1::
	.ds 4
___fsdiv_exp_1_1::
	.ds 2
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
;Allocation info for local variables in function '__fsdiv'
;------------------------------------------------------------
;	_fsdiv.c 28
;	-----------------------------------------
;	 function __fsdiv
;	-----------------------------------------
___fsdiv:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	_fsdiv.c 93
;	genReceive
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	_fsdiv.c 37
;	genPointerSet
;	genNearPointerSet
;	genDataPointerSet
	mov	___fsdiv_fl1_1_1,r2
	mov	(___fsdiv_fl1_1_1 + 1),r3
	mov	(___fsdiv_fl1_1_1 + 2),r4
	mov	(___fsdiv_fl1_1_1 + 3),r5
;	_fsdiv.c 38
;	genPointerSet
;	genNearPointerSet
;	genDataPointerSet
	mov	___fsdiv_fl2_1_1,___fsdiv_PARM_2
	mov	(___fsdiv_fl2_1_1 + 1),(___fsdiv_PARM_2 + 1)
	mov	(___fsdiv_fl2_1_1 + 2),(___fsdiv_PARM_2 + 2)
	mov	(___fsdiv_fl2_1_1 + 3),(___fsdiv_PARM_2 + 3)
;	_fsdiv.c 41
;	genAssign
;	genRightShift
;	genSignedRightShift
;	genRightShiftLiteral
;	genrshFour
	mov	r2,(___fsdiv_fl1_1_1 + 2)
	mov	a,(___fsdiv_fl1_1_1 + 3)
	mov	c,acc.7
	xch	a,r2
	rlc	a
	xch	a,r2
	rlc	a
	xch	a,r2
	anl	a,#0x01
	jnb	acc.0,00123$
	orl	a,#0xfe
00123$:
	mov	r3,a
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	r5,a
;	genAnd
	mov	r3,#0x00
	mov	r4,#0x00
	mov	r5,#0x00
;	genCast
	mov	___fsdiv_exp_1_1,r2
	mov	(___fsdiv_exp_1_1 + 1),r3
;	_fsdiv.c 42
;	genAssign
;	genRightShift
;	genSignedRightShift
;	genRightShiftLiteral
;	genrshFour
	mov	r2,(___fsdiv_fl2_1_1 + 2)
	mov	a,(___fsdiv_fl2_1_1 + 3)
	mov	c,acc.7
	xch	a,r2
	rlc	a
	xch	a,r2
	rlc	a
	xch	a,r2
	anl	a,#0x01
	jnb	acc.0,00124$
	orl	a,#0xfe
00124$:
	mov	r3,a
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	r5,a
;	genAnd
	mov	r3,#0x00
	mov	r4,#0x00
	mov	r5,#0x00
;	genCast
	mov	r6,___fsdiv_exp_1_1
	mov	r7,(___fsdiv_exp_1_1 + 1)
	mov	a,(___fsdiv_exp_1_1 + 1)
	rlc	a
	subb	a,acc
	mov	r0,a
	mov	r1,a
;	genMinus
	clr	c
	mov	a,r6
	subb	a,r2
	mov	r2,a
	mov	a,r7
	subb	a,r3
	mov	r3,a
	mov	a,r0
	subb	a,r4
	mov	r4,a
	mov	a,r1
	subb	a,r5
	mov	r5,a
;	genCast
	mov	___fsdiv_exp_1_1,r2
	mov	(___fsdiv_exp_1_1 + 1),r3
;	_fsdiv.c 43
;	genPlus
	mov	a,#0x7E
	add	a,___fsdiv_exp_1_1
	mov	___fsdiv_exp_1_1,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,(___fsdiv_exp_1_1 + 1)
	mov	(___fsdiv_exp_1_1 + 1),a
;	_fsdiv.c 46
;	genAssign
;	genGetHbit
	mov	a,(___fsdiv_fl1_1_1 + 3)
	rl	a
	anl	a,#0x01
	mov	r2,a
;	genAssign
;	genGetHbit
	mov	a,(___fsdiv_fl2_1_1 + 3)
	rl	a
	anl	a,#0x01
;	genXor
; Peephole 105   removed redundant mov
	mov  r3,a
	xrl	ar2,a
;	_fsdiv.c 49
;	genAssign
;	genIfx
	mov	a,___fsdiv_fl2_1_1
	orl	a,(___fsdiv_fl2_1_1 + 1)
	orl	a,(___fsdiv_fl2_1_1 + 2)
	orl	a,(___fsdiv_fl2_1_1 + 3)
;	genIfxJump
; Peephole 109   removed ljmp by inverse jump logic
	jnz  00102$
00125$:
;	_fsdiv.c 51
;	genRet
; Peephole 181   used 16 bit load of dptr
	mov  dptr,#0x0000
	mov	b,#0x80
	mov	a,#0xBF
	ljmp	00112$
00102$:
;	_fsdiv.c 54
;	genAssign
;	genIfx
	mov	a,___fsdiv_fl1_1_1
	orl	a,(___fsdiv_fl1_1_1 + 1)
	orl	a,(___fsdiv_fl1_1_1 + 2)
	orl	a,(___fsdiv_fl1_1_1 + 3)
;	genIfxJump
; Peephole 109   removed ljmp by inverse jump logic
	jnz  00104$
00126$:
;	_fsdiv.c 55
;	genRet
; Peephole 3.a   changed mov to clr
; Peephole 3.b   changed mov to clr
; Peephole 3.b   changed mov to clr
	clr  a
	mov  dpl,a
	mov  dph,a
	mov  b,a
	ljmp	00112$
00104$:
;	_fsdiv.c 58
;	genAssign
;	genAnd
	mov	r3,___fsdiv_fl1_1_1
	mov	r4,(___fsdiv_fl1_1_1 + 1)
	mov	a,#0x7F
	anl	a,(___fsdiv_fl1_1_1 + 2)
	mov	r5,a
	mov	r6,#0x00
;	genOr
	mov	___fsdiv_mant1_1_1,r3
	mov	(___fsdiv_mant1_1_1 + 1),r4
	mov	a,#0x80
	orl	a,r5
	mov	(___fsdiv_mant1_1_1 + 2),a
	mov	(___fsdiv_mant1_1_1 + 3),r6
;	_fsdiv.c 59
;	genAssign
;	genAnd
	mov	r3,___fsdiv_fl2_1_1
	mov	r4,(___fsdiv_fl2_1_1 + 1)
	mov	a,#0x7F
	anl	a,(___fsdiv_fl2_1_1 + 2)
	mov	r5,a
	mov	r6,#0x00
;	genOr
	mov	___fsdiv_mant2_1_1,r3
	mov	(___fsdiv_mant2_1_1 + 1),r4
	mov	a,#0x80
	orl	a,r5
	mov	(___fsdiv_mant2_1_1 + 2),a
	mov	(___fsdiv_mant2_1_1 + 3),r6
;	_fsdiv.c 62
;	genCmpLt
;	genCmp
	clr	c
	mov	a,___fsdiv_mant1_1_1
	subb	a,___fsdiv_mant2_1_1
	mov	a,(___fsdiv_mant1_1_1 + 1)
	subb	a,(___fsdiv_mant2_1_1 + 1)
	mov	a,(___fsdiv_mant1_1_1 + 2)
	subb	a,(___fsdiv_mant2_1_1 + 2)
	mov	a,(___fsdiv_mant1_1_1 + 3)
	xrl	a,#0x80
	mov	b,(___fsdiv_mant2_1_1 + 3)
	xrl	b,#0x80
	subb	a,b
;	genIfxJump
; Peephole 108   removed ljmp by inverse jump logic
	jnc  00106$
00127$:
;	_fsdiv.c 64
;	genLeftShift
;	genLeftShiftLiteral
;	genlshFour
	mov	a,___fsdiv_mant1_1_1
	add	a,acc
	mov	___fsdiv_mant1_1_1,a
	mov	a,(___fsdiv_mant1_1_1 + 1)
	rlc	a
	mov	(___fsdiv_mant1_1_1 + 1),a
	mov	a,(___fsdiv_mant1_1_1 + 2)
	rlc	a
	mov	(___fsdiv_mant1_1_1 + 2),a
	mov	a,(___fsdiv_mant1_1_1 + 3)
	rlc	a
	mov	(___fsdiv_mant1_1_1 + 3),a
;	_fsdiv.c 65
;	genMinus
;	genMinusDec
	dec	___fsdiv_exp_1_1
	mov	a,#0xff
	cjne	a,___fsdiv_exp_1_1,00128$
	dec	(___fsdiv_exp_1_1 + 1)
00128$:
00106$:
;	_fsdiv.c 69
;	genAssign
	mov	___fsdiv_mask_1_1,#0x00
	mov	(___fsdiv_mask_1_1 + 1),#0x00
	mov	(___fsdiv_mask_1_1 + 2),#0x00
	mov	(___fsdiv_mask_1_1 + 3),#0x01
;	_fsdiv.c 70
;	genAssign
	clr	a
	mov	(___fsdiv_result_1_1 + 3),a
	mov	(___fsdiv_result_1_1 + 2),a
	mov	(___fsdiv_result_1_1 + 1),a
	mov	___fsdiv_result_1_1,a
;	_fsdiv.c 71
00109$:
;	genIfx
	mov	a,___fsdiv_mask_1_1
	orl	a,(___fsdiv_mask_1_1 + 1)
	orl	a,(___fsdiv_mask_1_1 + 2)
	orl	a,(___fsdiv_mask_1_1 + 3)
;	genIfxJump
	jnz	00129$
	ljmp	00111$
00129$:
;	_fsdiv.c 73
;	genCmpLt
;	genCmp
	clr	c
	mov	a,___fsdiv_mant1_1_1
	subb	a,___fsdiv_mant2_1_1
	mov	a,(___fsdiv_mant1_1_1 + 1)
	subb	a,(___fsdiv_mant2_1_1 + 1)
	mov	a,(___fsdiv_mant1_1_1 + 2)
	subb	a,(___fsdiv_mant2_1_1 + 2)
	mov	a,(___fsdiv_mant1_1_1 + 3)
	xrl	a,#0x80
	mov	b,(___fsdiv_mant2_1_1 + 3)
	xrl	b,#0x80
	subb	a,b
;	genIfxJump
; Peephole 132   changed ljmp to sjmp
; Peephole 160   removed sjmp by inverse jump logic
	jc   00108$
00130$:
;	_fsdiv.c 75
;	genAssign
	mov	r3,___fsdiv_result_1_1
	mov	r4,(___fsdiv_result_1_1 + 1)
	mov	r5,(___fsdiv_result_1_1 + 2)
	mov	r6,(___fsdiv_result_1_1 + 3)
;	genOr
	mov	a,___fsdiv_mask_1_1
	orl	a,r3
	mov	___fsdiv_result_1_1,a
	mov	a,(___fsdiv_mask_1_1 + 1)
	orl	a,r4
	mov	(___fsdiv_result_1_1 + 1),a
	mov	a,(___fsdiv_mask_1_1 + 2)
	orl	a,r5
	mov	(___fsdiv_result_1_1 + 2),a
	mov	a,(___fsdiv_mask_1_1 + 3)
	orl	a,r6
	mov	(___fsdiv_result_1_1 + 3),a
;	_fsdiv.c 76
;	genMinus
	clr	c
	mov	a,___fsdiv_mant1_1_1
	subb	a,___fsdiv_mant2_1_1
	mov	___fsdiv_mant1_1_1,a
	mov	a,(___fsdiv_mant1_1_1 + 1)
	subb	a,(___fsdiv_mant2_1_1 + 1)
	mov	(___fsdiv_mant1_1_1 + 1),a
	mov	a,(___fsdiv_mant1_1_1 + 2)
	subb	a,(___fsdiv_mant2_1_1 + 2)
	mov	(___fsdiv_mant1_1_1 + 2),a
	mov	a,(___fsdiv_mant1_1_1 + 3)
	subb	a,(___fsdiv_mant2_1_1 + 3)
	mov	(___fsdiv_mant1_1_1 + 3),a
00108$:
;	_fsdiv.c 78
;	genLeftShift
;	genLeftShiftLiteral
;	genlshFour
	mov	a,___fsdiv_mant1_1_1
	add	a,acc
	mov	___fsdiv_mant1_1_1,a
	mov	a,(___fsdiv_mant1_1_1 + 1)
	rlc	a
	mov	(___fsdiv_mant1_1_1 + 1),a
	mov	a,(___fsdiv_mant1_1_1 + 2)
	rlc	a
	mov	(___fsdiv_mant1_1_1 + 2),a
	mov	a,(___fsdiv_mant1_1_1 + 3)
	rlc	a
	mov	(___fsdiv_mant1_1_1 + 3),a
;	_fsdiv.c 79
;	genRightShift
;	genRightShiftLiteral
;	genrshFour
	mov	a,(___fsdiv_mask_1_1 + 3)
	clr	c
	rrc	a
	mov	(___fsdiv_mask_1_1 + 3),a
	mov	a,(___fsdiv_mask_1_1 + 2)
	rrc	a
	mov	(___fsdiv_mask_1_1 + 2),a
	mov	a,(___fsdiv_mask_1_1 + 1)
	rrc	a
	mov	(___fsdiv_mask_1_1 + 1),a
	mov	a,___fsdiv_mask_1_1
	rrc	a
	mov	___fsdiv_mask_1_1,a
	ljmp	00109$
00111$:
;	_fsdiv.c 83
;	genPlus
;	genPlusIncr
	inc	___fsdiv_result_1_1
	clr	a
	cjne	a,___fsdiv_result_1_1,00131$
	inc	(___fsdiv_result_1_1 + 1)
	cjne	a,(___fsdiv_result_1_1 + 1),00131$
	inc	(___fsdiv_result_1_1 + 2)
	cjne	a,(___fsdiv_result_1_1 + 2),00131$
	inc	(___fsdiv_result_1_1 + 3)
00131$:
;	_fsdiv.c 86
;	genPlus
;	genPlusIncr
	inc	___fsdiv_exp_1_1
	clr	a
	cjne	a,___fsdiv_exp_1_1,00132$
	inc	(___fsdiv_exp_1_1 + 1)
00132$:
;	_fsdiv.c 87
;	genRightShift
;	genSignedRightShift
;	genRightShiftLiteral
;	genrshFour
	mov	a,(___fsdiv_result_1_1 + 3)
	mov	c,acc.7
	rrc	a
	mov	(___fsdiv_result_1_1 + 3),a
	mov	a,(___fsdiv_result_1_1 + 2)
	rrc	a
	mov	(___fsdiv_result_1_1 + 2),a
	mov	a,(___fsdiv_result_1_1 + 1)
	rrc	a
	mov	(___fsdiv_result_1_1 + 1),a
	mov	a,___fsdiv_result_1_1
	rrc	a
	mov	___fsdiv_result_1_1,a
;	_fsdiv.c 89
;	genAnd
	anl	(___fsdiv_result_1_1 + 2),#0x7F
;	_fsdiv.c 92
;	genIfx
	mov	a,r2
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00114$
00133$:
;	genAssign
	mov	r2,#0x00
	mov	r3,#0x00
	mov	r4,#0x00
	mov	r5,#0x80
; Peephole 132   changed ljmp to sjmp
	sjmp 00115$
00114$:
;	genAssign
	mov	r2,#0x00
	mov	r3,#0x00
	mov	r4,#0x00
	mov	r5,#0x00
00115$:
;	genCast
	mov	r6,___fsdiv_exp_1_1
	mov	r7,(___fsdiv_exp_1_1 + 1)
	mov	a,(___fsdiv_exp_1_1 + 1)
	rlc	a
	subb	a,acc
	mov	r0,a
	mov	r1,a
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
;	genOr
; Peephole 3.c   changed mov to clr
	clr  a
	mov  r7,a
; Peephole 105   removed redundant mov
	mov  r6,a
	orl	ar2,a
	mov	a,r7
	orl	ar3,a
	mov	a,r0
	orl	ar4,a
	mov	a,r1
	orl	ar5,a
;	genAssign
	mov	r6,___fsdiv_result_1_1
	mov	r7,(___fsdiv_result_1_1 + 1)
	mov	r0,(___fsdiv_result_1_1 + 2)
	mov	r1,(___fsdiv_result_1_1 + 3)
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
	mov	___fsdiv_fl1_1_1,r2
	mov	(___fsdiv_fl1_1_1 + 1),r3
	mov	(___fsdiv_fl1_1_1 + 2),r4
	mov	(___fsdiv_fl1_1_1 + 3),r5
;	_fsdiv.c 93
;	genAssign
;	genRet
	mov	dpl,___fsdiv_fl1_1_1
	mov	dph,(___fsdiv_fl1_1_1 + 1)
	mov	b,(___fsdiv_fl1_1_1 + 2)
	mov	a,(___fsdiv_fl1_1_1 + 3)
00112$:
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
