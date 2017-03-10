;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:10:14 2002

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
___fsdiv_PARM_2::
	.ds 4
___fsdiv_a1_1_1::
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
;a2                        Allocated to in memory with name '___fsdiv_PARM_2'
;a1                        Allocated to in memory with name '___fsdiv_a1_1_1'
;fl1                       Allocated to in memory with name '___fsdiv_fl1_1_1'
;fl2                       Allocated to in memory with name '___fsdiv_fl2_1_1'
;result                    Allocated to in memory with name '___fsdiv_result_1_1'
;mask                      Allocated to in memory with name '___fsdiv_mask_1_1'
;mant1                     Allocated to in memory with name '___fsdiv_mant1_1_1'
;mant2                     Allocated to in memory with name '___fsdiv_mant2_1_1'
;exp                       Allocated to in memory with name '___fsdiv_exp_1_1'
;sign                      Allocated to in memory with name '___fsdiv_sign_1_1'
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
	push	acc
	push	b
	push	dph
	push	dpl
	mov	dptr,#___fsdiv_a1_1_1
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
;	_fsdiv.c 37
;	genAssign
	mov	dptr,#___fsdiv_a1_1_1
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
	mov	dptr,#___fsdiv_fl1_1_1
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
;	_fsdiv.c 38
;	genAssign
	mov	dptr,#___fsdiv_PARM_2
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
	mov	dptr,#___fsdiv_fl2_1_1
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
;	_fsdiv.c 41
;	genPointerGet
;	genFarPointerGet
	mov	dptr,#___fsdiv_fl1_1_1
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
;	genSignedRightShift
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
	mov	dptr,#___fsdiv_exp_1_1
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
;	_fsdiv.c 42
;	genPointerGet
;	genFarPointerGet
	mov	dptr,#___fsdiv_fl2_1_1
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
;	genSignedRightShift
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
;	genAssign
	mov	dptr,#___fsdiv_exp_1_1
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
;	genCast
; Peephole 105   removed redundant mov
	mov  r7,a
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
	mov	dptr,#___fsdiv_exp_1_1
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
;	_fsdiv.c 43
;	genAssign
	mov	dptr,#___fsdiv_exp_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;	genPlus
	mov	dptr,#___fsdiv_exp_1_1
	mov	a,#0x7E
	add	a,r2
	movx	@dptr,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,r3
	inc	dptr
	movx	@dptr,a
;	_fsdiv.c 46
;	genPointerGet
;	genFarPointerGet
	mov	dptr,#___fsdiv_fl1_1_1
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
	mov	r2,a
;	genPointerGet
;	genFarPointerGet
	mov	dptr,#___fsdiv_fl2_1_1
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
;	genGetHbit
; Peephole 105   removed redundant mov
	mov  r6,a
	rl	a
	anl	a,#0x01
;	genXor
; Peephole 105   removed redundant mov
	mov  r3,a
	xrl	ar2,a
;	_fsdiv.c 49
;	genPointerGet
;	genFarPointerGet
	mov	dptr,#___fsdiv_fl2_1_1
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
;	genIfx
	mov	a,r3
	orl	a,r4
	orl	a,r5
	orl	a,r6
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
;	genPointerGet
;	genFarPointerGet
	mov	dptr,#___fsdiv_fl1_1_1
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
;	genIfx
	mov	a,r3
	orl	a,r4
	orl	a,r5
	orl	a,r6
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
;	genIpush
	push	ar2
;	genPointerGet
;	genFarPointerGet
	mov	dptr,#___fsdiv_fl1_1_1
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
;	genAnd
	anl	ar5,#0x7F
	mov	r6,#0x00
;	genOr
	mov	dptr,#___fsdiv_mant1_1_1
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	mov	a,#0x80
	orl	a,r5
	inc	dptr
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
;	_fsdiv.c 59
;	genPointerGet
;	genFarPointerGet
	mov	dptr,#___fsdiv_fl2_1_1
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
;	genAnd
	anl	ar5,#0x7F
	mov	r6,#0x00
;	genOr
	mov	dptr,#___fsdiv_mant2_1_1
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	mov	a,#0x80
	orl	a,r5
	inc	dptr
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
;	_fsdiv.c 62
;	genAssign
	mov	dptr,#___fsdiv_mant2_1_1
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
;	genAssign
	mov	dptr,#___fsdiv_mant1_1_1
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
;	genCmpLt
;	genCmp
	clr	c
	mov	a,r7
	subb	a,r3
	mov	a,r0
	subb	a,r4
	mov	a,r1
	subb	a,r5
	mov	a,r2
	xrl	a,#0x80
	mov	b,r6
	xrl	b,#0x80
	subb	a,b
	clr	a
	rlc	a
;	genIpop
	pop	ar2
;	genIfx
;	genIfxJump
	jnz	00127$
	ljmp	00106$
00127$:
;	_fsdiv.c 64
;	genAssign
	mov	dptr,#___fsdiv_mant1_1_1
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
;	genLeftShift
;	genLeftShiftLiteral
;	genlshFour
	mov	a,r3
	add	a,acc
	mov	r3,a
	mov	a,r4
	rlc	a
	mov	r4,a
	mov	a,r5
	rlc	a
	mov	r5,a
	mov	a,r6
	rlc	a
	mov	r6,a
;	genAssign
	mov	dptr,#___fsdiv_mant1_1_1
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
;	_fsdiv.c 65
;	genMinus
	mov	dptr,#___fsdiv_exp_1_1
;	genMinusDec
	movx	a,@dptr
	add	a,#0xff
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0xff
	mov	r4,a
;	genAssign
	mov	dptr,#___fsdiv_exp_1_1
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
00106$:
;	_fsdiv.c 69
;	genAssign
	mov	dptr,#___fsdiv_mask_1_1
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
	mov	a,#0x01
	movx	@dptr,a
;	_fsdiv.c 70
;	genAssign
; Peephole 227   replaced inefficient 32 bit clear
	mov     dptr,#___fsdiv_result_1_1
	clr     a
	movx    @dptr,a
	inc     dptr
	movx    @dptr,a
	inc     dptr
	movx    @dptr,a
	inc     dptr
	movx    @dptr,a
	mov     dptr,#___fsdiv_result_1_1
;	_fsdiv.c 71
00109$:
;	genAssign
	mov	dptr,#___fsdiv_mask_1_1
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
;	genIfx
	mov	a,r3
	orl	a,r4
	orl	a,r5
	orl	a,r6
;	genIfxJump
	jnz	00128$
	ljmp	00111$
00128$:
;	_fsdiv.c 73
;	genIpush
	push	ar2
;	genAssign
	mov	dptr,#___fsdiv_mant2_1_1
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
;	genAssign
	mov	dptr,#___fsdiv_mant1_1_1
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
;	genCmpLt
;	genCmp
	clr	c
	mov	a,r7
	subb	a,r3
	mov	a,r0
	subb	a,r4
	mov	a,r1
	subb	a,r5
	mov	a,r2
	xrl	a,#0x80
	mov	b,r6
	xrl	b,#0x80
	subb	a,b
	clr	a
	rlc	a
;	genIpop
	pop	ar2
;	genIfx
;	genIfxJump
	jz	00129$
	ljmp	00108$
00129$:
;	_fsdiv.c 75
;	genIpush
	push	ar2
;	genAssign
	mov	dptr,#___fsdiv_mask_1_1
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
;	genAssign
	mov	dptr,#___fsdiv_result_1_1
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
;	genOr
	mov	dptr,#___fsdiv_result_1_1
	mov	a,r3
	orl	a,r7
	movx	@dptr,a
	mov	a,r4
	orl	a,r0
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	orl	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	orl	a,r2
	inc	dptr
	movx	@dptr,a
;	_fsdiv.c 76
;	genAssign
	mov	dptr,#___fsdiv_mant2_1_1
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
	mov	dptr,#___fsdiv_mant1_1_1
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
;	genMinus
	mov	dptr,#___fsdiv_mant1_1_1
	clr	c
	mov	a,r6
	subb	a,r2
	movx	@dptr,a
	mov	a,r7
	subb	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r0
	subb	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r1
	subb	a,r5
	inc	dptr
	movx	@dptr,a
;	_fsdiv.c 93
;	genIpop
	pop	ar2
;	_fsdiv.c 76
00108$:
;	_fsdiv.c 78
;	genAssign
	mov	dptr,#___fsdiv_mant1_1_1
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
;	genLeftShift
;	genLeftShiftLiteral
;	genlshFour
	mov	a,r3
	add	a,acc
	mov	r3,a
	mov	a,r4
	rlc	a
	mov	r4,a
	mov	a,r5
	rlc	a
	mov	r5,a
	mov	a,r6
	rlc	a
	mov	r6,a
;	genAssign
	mov	dptr,#___fsdiv_mant1_1_1
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
;	_fsdiv.c 79
;	genAssign
	mov	dptr,#___fsdiv_mask_1_1
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
;	genRightShift
;	genRightShiftLiteral
;	genrshFour
; Peephole 105   removed redundant mov
	mov  r6,a
	clr	c
	rrc	a
	mov	r6,a
	mov	a,r5
	rrc	a
	mov	r5,a
	mov	a,r4
	rrc	a
	mov	r4,a
	mov	a,r3
	rrc	a
;	genAssign
; Peephole 100   removed redundant mov
	mov  r3,a
	mov  dptr,#___fsdiv_mask_1_1
	movx @dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	ljmp	00109$
00111$:
;	_fsdiv.c 83
;	genAssign
	mov	dptr,#___fsdiv_result_1_1
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
;	genPlus
	mov	dptr,#___fsdiv_result_1_1
;	genPlusIncr
	mov	a,#0x01
	add	a,r3
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
; Peephole 180   changed mov to clr
	clr  a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
;	_fsdiv.c 86
;	genPlus
	mov	dptr,#___fsdiv_exp_1_1
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
;	_fsdiv.c 87
;	genAssign
	mov	dptr,#___fsdiv_result_1_1
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
;	genRightShift
;	genSignedRightShift
;	genRightShiftLiteral
;	genrshFour
; Peephole 105   removed redundant mov
	mov  r6,a
	mov	c,acc.7
	rrc	a
	mov	r6,a
	mov	a,r5
	rrc	a
	mov	r5,a
	mov	a,r4
	rrc	a
	mov	r4,a
	mov	a,r3
	rrc	a
;	genAssign
; Peephole 100   removed redundant mov
	mov  r3,a
	mov  dptr,#___fsdiv_result_1_1
	movx @dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
;	_fsdiv.c 89
;	genAssign
	mov	dptr,#___fsdiv_result_1_1
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
;	genAnd
	mov	dptr,#___fsdiv_result_1_1
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	mov	a,#0x7F
	anl	a,r5
	inc	dptr
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
;	_fsdiv.c 92
;	genIfx
	mov	a,r2
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00114$
00130$:
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
;	genAssign
	mov	dptr,#___fsdiv_exp_1_1
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
;	genCast
; Peephole 105   removed redundant mov
	mov  r7,a
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
	mov	dptr,#___fsdiv_result_1_1
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
	mov	dptr,#___fsdiv_fl1_1_1
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
;	_fsdiv.c 93
;	genPointerGet
;	genFarPointerGet
	mov	dptr,#___fsdiv_fl1_1_1
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
00112$:
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
