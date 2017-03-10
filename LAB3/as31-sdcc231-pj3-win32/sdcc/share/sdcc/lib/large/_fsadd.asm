;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:10:14 2002

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
	.area OSEG    (OVR,DATA)
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
___fsadd_PARM_2::
	.ds 4
___fsadd_a1_1_1::
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
;a2                        Allocated to in memory with name '___fsadd_PARM_2'
;a1                        Allocated to in memory with name '___fsadd_a1_1_1'
;mant1                     Allocated to in memory with name '___fsadd_mant1_1_1'
;mant2                     Allocated to in memory with name '___fsadd_mant2_1_1'
;fl1                       Allocated to in memory with name '___fsadd_fl1_1_1'
;fl2                       Allocated to in memory with name '___fsadd_fl2_1_1'
;exp1                      Allocated to in memory with name '___fsadd_exp1_1_1'
;exp2                      Allocated to in memory with name '___fsadd_exp2_1_1'
;sign                      Allocated to in memory with name '___fsadd_sign_1_1'
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
	push	acc
	push	b
	push	dph
	push	dpl
	mov	dptr,#___fsadd_a1_1_1
	pop	acc
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
;	_fsadd.c 33
;	genAssign
; Peephole 227   replaced inefficient 32 bit clear
	mov     dptr,#___fsadd_sign_1_1
	clr     a
	movx    @dptr,a
	inc     dptr
	movx    @dptr,a
	inc     dptr
	movx    @dptr,a
	inc     dptr
	movx    @dptr,a
;	_fsadd.c 35
;	genAssign
; Peephole 231   removed redundant mov to dptr
	mov     dptr,#___fsadd_a1_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;	genPointerSet
;	genFarPointerSet
	mov	dptr,#___fsadd_fl1_1_1
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
;	_fsadd.c 36
;	genAssign
	mov	dptr,#___fsadd_PARM_2
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;	genPointerSet
;	genFarPointerSet
	mov	dptr,#___fsadd_fl2_1_1
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
;	_fsadd.c 39
;	genPointerGet
;	genFarPointerGet
	mov	dptr,#___fsadd_fl1_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;	genIfx
	mov	a,r2
	orl	a,r3
	orl	a,r4
	orl	a,r5
;	genIfxJump
; Peephole 109   removed ljmp by inverse jump logic
	jnz  00102$
00145$:
;	_fsadd.c 40
;	genPointerGet
;	genFarPointerGet
	mov	dptr,#___fsadd_fl2_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
;	genRet
; Peephole 191   removed redundant mov
	mov  r5,a
	mov  dpl,r2
	mov  dph,r3
	mov  b,r4
	ljmp	00129$
00102$:
;	_fsadd.c 41
;	genPointerGet
;	genFarPointerGet
	mov	dptr,#___fsadd_fl2_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;	genIfx
	mov	a,r2
	orl	a,r3
	orl	a,r4
	orl	a,r5
;	genIfxJump
; Peephole 109   removed ljmp by inverse jump logic
	jnz  00104$
00146$:
;	_fsadd.c 42
;	genPointerGet
;	genFarPointerGet
	mov	dptr,#___fsadd_fl1_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
;	genRet
; Peephole 191   removed redundant mov
	mov  r5,a
	mov  dpl,r2
	mov  dph,r3
	mov  b,r4
	ljmp	00129$
00104$:
;	_fsadd.c 44
;	genPointerGet
;	genFarPointerGet
	mov	dptr,#___fsadd_fl1_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;	genRightShift
;	genRightShiftLiteral
;	genrshFour
	mov	ar2,r4
	mov	a,r5
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
	mov	dptr,#___fsadd_exp1_1_1
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
;	_fsadd.c 45
;	genPointerGet
;	genFarPointerGet
	mov	dptr,#___fsadd_fl2_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;	genRightShift
;	genRightShiftLiteral
;	genrshFour
	mov	ar2,r4
	mov	a,r5
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
	mov	dptr,#___fsadd_exp2_1_1
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
;	_fsadd.c 47
;	genAssign
	mov	dptr,#___fsadd_exp2_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;	genPlus
	mov	a,#0x19
	add	a,r2
	mov	r2,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,r3
	mov	r3,a
;	genAssign
	mov	dptr,#___fsadd_exp1_1_1
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;	genCmpGt
;	genCmp
	clr	c
	mov	a,r2
	subb	a,r4
	mov	a,r3
	xrl	a,#0x80
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
;	genIfxJump
; Peephole 108   removed ljmp by inverse jump logic
	jnc  00106$
00147$:
;	_fsadd.c 48
;	genPointerGet
;	genFarPointerGet
	mov	dptr,#___fsadd_fl1_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
;	genRet
; Peephole 191   removed redundant mov
	mov  r5,a
	mov  dpl,r2
	mov  dph,r3
	mov  b,r4
	ljmp	00129$
00106$:
;	_fsadd.c 49
;	genAssign
	mov	dptr,#___fsadd_exp1_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;	genPlus
	mov	a,#0x19
	add	a,r2
	mov	r2,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,r3
	mov	r3,a
;	genAssign
	mov	dptr,#___fsadd_exp2_1_1
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;	genCmpGt
;	genCmp
	clr	c
	mov	a,r2
	subb	a,r4
	mov	a,r3
	xrl	a,#0x80
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
;	genIfxJump
; Peephole 108   removed ljmp by inverse jump logic
	jnc  00108$
00148$:
;	_fsadd.c 50
;	genPointerGet
;	genFarPointerGet
	mov	dptr,#___fsadd_fl2_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
;	genRet
; Peephole 191   removed redundant mov
	mov  r5,a
	mov  dpl,r2
	mov  dph,r3
	mov  b,r4
	ljmp	00129$
00108$:
;	_fsadd.c 52
;	genPointerGet
;	genFarPointerGet
	mov	dptr,#___fsadd_fl1_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;	genAnd
	anl	ar4,#0x7F
	mov	r5,#0x00
;	genOr
	mov	dptr,#___fsadd_mant1_1_1
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	mov	a,#0x80
	orl	a,r4
	inc	dptr
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
;	_fsadd.c 53
;	genPointerGet
;	genFarPointerGet
	mov	dptr,#___fsadd_fl2_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;	genAnd
	anl	ar4,#0x7F
	mov	r5,#0x00
;	genOr
	mov	dptr,#___fsadd_mant2_1_1
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	mov	a,#0x80
	orl	a,r4
	inc	dptr
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
;	_fsadd.c 55
;	genPointerGet
;	genFarPointerGet
	mov	dptr,#___fsadd_fl1_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
;	genGetHbit
; Peephole 105   removed redundant mov
	mov  r5,a
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
;	genAssign
	mov	dptr,#___fsadd_mant1_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;	genUminus
	mov	dptr,#___fsadd_mant1_1_1
	clr	c
	clr	a
	subb	a,r2
	movx	@dptr,a
	clr	a
	subb	a,r3
	inc	dptr
	movx	@dptr,a
	clr	a
	subb	a,r4
	inc	dptr
	movx	@dptr,a
	clr	a
	subb	a,r5
	inc	dptr
	movx	@dptr,a
00110$:
;	_fsadd.c 57
;	genPointerGet
;	genFarPointerGet
	mov	dptr,#___fsadd_fl2_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
;	genGetHbit
; Peephole 105   removed redundant mov
	mov  r5,a
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
;	genAssign
	mov	dptr,#___fsadd_mant2_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;	genUminus
	mov	dptr,#___fsadd_mant2_1_1
	clr	c
	clr	a
	subb	a,r2
	movx	@dptr,a
	clr	a
	subb	a,r3
	inc	dptr
	movx	@dptr,a
	clr	a
	subb	a,r4
	inc	dptr
	movx	@dptr,a
	clr	a
	subb	a,r5
	inc	dptr
	movx	@dptr,a
00112$:
;	_fsadd.c 60
;	genAssign
	mov	dptr,#___fsadd_exp2_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;	genAssign
	mov	dptr,#___fsadd_exp1_1_1
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;	genCmpGt
;	genCmp
	clr	c
	mov	a,r2
	subb	a,r4
	mov	a,r3
	xrl	a,#0x80
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
;	genIfxJump
	jc	00151$
	ljmp	00114$
00151$:
;	_fsadd.c 62
;	genAssign
	mov	dptr,#___fsadd_exp2_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;	genAssign
	mov	dptr,#___fsadd_exp1_1_1
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;	genMinus
	clr	c
	mov	a,r4
	subb	a,r2
	mov	r2,a
	mov	a,r5
	subb	a,r3
	mov	r3,a
;	genAssign
	mov	dptr,#___fsadd_mant2_1_1
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	genRightShift
;	genSignedRightShift
	mov	b,r2
	inc	b
	mov	a,r7
	rlc	a
	mov	ov,c
	sjmp	00153$
00152$:
	mov	c,ov
	mov	a,r7
	rrc	a
	mov	r7,a
	mov	a,r6
	rrc	a
	mov	r6,a
	mov	a,r5
	rrc	a
	mov	r5,a
	mov	a,r4
	rrc	a
	mov	r4,a
00153$:
	djnz	b,00152$
;	genAssign
	mov	dptr,#___fsadd_mant2_1_1
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	ljmp	00115$
00114$:
;	_fsadd.c 66
;	genAssign
	mov	dptr,#___fsadd_exp1_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;	genAssign
	mov	dptr,#___fsadd_exp2_1_1
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;	genMinus
	clr	c
	mov	a,r4
	subb	a,r2
	mov	r2,a
	mov	a,r5
	subb	a,r3
	mov	r3,a
;	genAssign
	mov	dptr,#___fsadd_mant1_1_1
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	genRightShift
;	genSignedRightShift
	mov	b,r2
	inc	b
	mov	a,r7
	rlc	a
	mov	ov,c
	sjmp	00155$
00154$:
	mov	c,ov
	mov	a,r7
	rrc	a
	mov	r7,a
	mov	a,r6
	rrc	a
	mov	r6,a
	mov	a,r5
	rrc	a
	mov	r5,a
	mov	a,r4
	rrc	a
	mov	r4,a
00155$:
	djnz	b,00154$
;	genAssign
	mov	dptr,#___fsadd_mant1_1_1
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	_fsadd.c 67
;	genAssign
	mov	dptr,#___fsadd_exp2_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;	genAssign
	mov	dptr,#___fsadd_exp1_1_1
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
00115$:
;	_fsadd.c 69
;	genAssign
	mov	dptr,#___fsadd_mant2_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;	genAssign
	mov	dptr,#___fsadd_mant1_1_1
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
;	genPlus
	mov	dptr,#___fsadd_mant1_1_1
	mov	a,r2
	add	a,r6
	movx	@dptr,a
	mov	a,r3
	addc	a,r7
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	addc	a,r0
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	addc	a,r1
	inc	dptr
	movx	@dptr,a
;	_fsadd.c 71
;	genAssign
	mov	dptr,#___fsadd_mant1_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
;	genCmpLt
;	genCmp
; Peephole 105   removed redundant mov
	mov  r5,a
;	genIfxJump
; Peephole 111   removed ljmp by inverse jump logic
	jnb  acc.7,00119$
00156$:
;	_fsadd.c 73
;	genAssign
	mov	dptr,#___fsadd_mant1_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;	genUminus
	mov	dptr,#___fsadd_mant1_1_1
	clr	c
	clr	a
	subb	a,r2
	movx	@dptr,a
	clr	a
	subb	a,r3
	inc	dptr
	movx	@dptr,a
	clr	a
	subb	a,r4
	inc	dptr
	movx	@dptr,a
	clr	a
	subb	a,r5
	inc	dptr
	movx	@dptr,a
;	_fsadd.c 74
;	genAssign
	mov	dptr,#___fsadd_sign_1_1
; Peephole 101   removed redundant mov
; Peephole 180   changed mov to clr
; Peephole 180   changed mov to clr
; Peephole 226   removed unnecessary clr
	clr     a
	movx    @dptr,a
	inc     dptr
	movx    @dptr,a
	inc     dptr
	movx	@dptr,a
	inc	dptr
	mov	a,#0x80
	movx	@dptr,a
; Peephole 132   changed ljmp to sjmp
	sjmp 00121$
00119$:
;	_fsadd.c 76
;	genAssign
	mov	dptr,#___fsadd_mant1_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;	genIfx
	mov	a,r2
	orl	a,r3
	orl	a,r4
	orl	a,r5
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
;	genAssign
	mov	dptr,#___fsadd_mant1_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;	genCmpLt
;	genCmp
	clr	c
	mov	a,r2
	subb	a,#0x00
	mov	a,r3
	subb	a,#0x00
	mov	a,r4
	subb	a,#0x80
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0x80
;	genIfxJump
	jc	00158$
	ljmp	00126$
00158$:
;	_fsadd.c 83
;	genAssign
	mov	dptr,#___fsadd_mant1_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;	genLeftShift
;	genLeftShiftLiteral
;	genlshFour
	mov	a,r2
	add	a,acc
	mov	r2,a
	mov	a,r3
	rlc	a
	mov	r3,a
	mov	a,r4
	rlc	a
	mov	r4,a
	mov	a,r5
	rlc	a
	mov	r5,a
;	genAssign
	mov	dptr,#___fsadd_mant1_1_1
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
;	_fsadd.c 84
;	genMinus
	mov	dptr,#___fsadd_exp1_1_1
;	genMinusDec
	movx	a,@dptr
	add	a,#0xff
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0xff
	mov	r3,a
;	genAssign
	mov	dptr,#___fsadd_exp1_1_1
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	ljmp	00121$
;	_fsadd.c 87
00126$:
;	genAssign
	mov	dptr,#___fsadd_mant1_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
;	genAnd
; Peephole 105   removed redundant mov
	mov  r5,a
	jnz	00159$
	ljmp	00128$
00159$:
;	_fsadd.c 89
;	genAssign
	mov	dptr,#___fsadd_mant1_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;	genAnd
	mov	a,r2
;	genIfxJump
; Peephole 111   removed ljmp by inverse jump logic
	jnb  acc.0,00125$
00160$:
;	_fsadd.c 90
;	genAssign
	mov	dptr,#___fsadd_mant1_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;	genPlus
	mov	dptr,#___fsadd_mant1_1_1
;	genPlusIncr
	mov	a,#0x02
	add	a,r2
	movx	@dptr,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,r3
	inc	dptr
	movx	@dptr,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,r4
	inc	dptr
	movx	@dptr,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,r5
	inc	dptr
	movx	@dptr,a
00125$:
;	_fsadd.c 91
;	genAssign
	mov	dptr,#___fsadd_mant1_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
;	genRightShift
;	genSignedRightShift
;	genRightShiftLiteral
;	genrshFour
; Peephole 105   removed redundant mov
	mov  r5,a
	mov	c,acc.7
	rrc	a
	mov	r5,a
	mov	a,r4
	rrc	a
	mov	r4,a
	mov	a,r3
	rrc	a
	mov	r3,a
	mov	a,r2
	rrc	a
;	genAssign
; Peephole 100   removed redundant mov
	mov  r2,a
	mov  dptr,#___fsadd_mant1_1_1
	movx @dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
;	_fsadd.c 92
;	genPlus
	mov	dptr,#___fsadd_exp1_1_1
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	ljmp	00126$
00128$:
;	_fsadd.c 96
;	genAssign
	mov	dptr,#___fsadd_mant1_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;	genAnd
	mov	dptr,#___fsadd_mant1_1_1
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	mov	a,#0x7F
	anl	a,r4
	inc	dptr
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
;	_fsadd.c 99
;	genAssign
	mov	dptr,#___fsadd_exp1_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
;	genCast
; Peephole 105   removed redundant mov
	mov  r3,a
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
	mov	r3,#0x00
	mov	r2,#0x00
;	genAssign
	mov	dptr,#___fsadd_sign_1_1
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
;	genOr
	mov	a,r6
	orl	ar2,a
	mov	a,r7
	orl	ar3,a
	mov	a,r0
	orl	ar4,a
	mov	a,r1
	orl	ar5,a
;	genAssign
	mov	dptr,#___fsadd_mant1_1_1
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
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
;	genFarPointerSet
	mov	dptr,#___fsadd_fl1_1_1
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
;	_fsadd.c 101
;	genPointerGet
;	genFarPointerGet
	mov	dptr,#___fsadd_fl1_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
;	genRet
; Peephole 191   removed redundant mov
	mov  r5,a
	mov  dpl,r2
	mov  dph,r3
	mov  b,r4
00129$:
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
