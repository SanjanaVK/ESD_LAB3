;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:10:16 2002

;--------------------------------------------------------
	.module _fsmul
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fsmul_PARM_2
	.globl ___fsmul
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
___fsmul_PARM_2::
	.ds 4
___fsmul_a1_1_1::
	.ds 4
___fsmul_fl1_1_1::
	.ds 4
___fsmul_fl2_1_1::
	.ds 4
___fsmul_result_1_1::
	.ds 4
___fsmul_exp_1_1::
	.ds 2
___fsmul_sign_1_1::
	.ds 1
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
;Allocation info for local variables in function '__fsmul'
;------------------------------------------------------------
;a2                        Allocated to in memory with name '___fsmul_PARM_2'
;a1                        Allocated to in memory with name '___fsmul_a1_1_1'
;fl1                       Allocated to in memory with name '___fsmul_fl1_1_1'
;fl2                       Allocated to in memory with name '___fsmul_fl2_1_1'
;result                    Allocated to in memory with name '___fsmul_result_1_1'
;exp                       Allocated to in memory with name '___fsmul_exp_1_1'
;sign                      Allocated to in memory with name '___fsmul_sign_1_1'
;	_fsmul.c 28
;	-----------------------------------------
;	 function __fsmul
;	-----------------------------------------
___fsmul:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	_fsmul.c 71
;	genReceive
	push	acc
	push	b
	push	dph
	push	dpl
	mov	dptr,#___fsmul_a1_1_1
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
;	_fsmul.c 34
;	genAssign
	mov	dptr,#___fsmul_a1_1_1
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
	mov	dptr,#___fsmul_fl1_1_1
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
;	_fsmul.c 35
;	genAssign
	mov	dptr,#___fsmul_PARM_2
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
	mov	dptr,#___fsmul_fl2_1_1
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
;	_fsmul.c 37
;	genPointerGet
;	genFarPointerGet
	mov	dptr,#___fsmul_fl1_1_1
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
; Peephole 110   removed ljmp by inverse jump logic
	jz  00101$
00114$:
;	genPointerGet
;	genFarPointerGet
	mov	dptr,#___fsmul_fl2_1_1
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
00115$:
00101$:
;	_fsmul.c 38
;	genRet
; Peephole 3.a   changed mov to clr
; Peephole 3.b   changed mov to clr
; Peephole 3.b   changed mov to clr
	clr  a
	mov  dpl,a
	mov  dph,a
	mov  b,a
	ljmp	00107$
00102$:
;	_fsmul.c 41
;	genPointerGet
;	genFarPointerGet
	mov	dptr,#___fsmul_fl1_1_1
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
	mov	dptr,#___fsmul_fl2_1_1
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
	mov	r3,a
;	genXor
	mov	dptr,#___fsmul_sign_1_1
	mov	a,r3
	xrl	a,ar2
	movx	@dptr,a
;	_fsmul.c 42
;	genPointerGet
;	genFarPointerGet
	mov	dptr,#___fsmul_fl1_1_1
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
;	genAnd
;	genMinus
; Peephole 3.c   changed mov to clr
; Peephole 3.b   changed mov to clr
; Peephole 3.b   changed mov to clr
; Peephole 3.b   changed mov to clr
	clr  a
	mov  r4,a
	mov  r5,a
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
;	genCast
	mov	dptr,#___fsmul_exp_1_1
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
;	_fsmul.c 43
;	genPointerGet
;	genFarPointerGet
	mov	dptr,#___fsmul_fl2_1_1
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
;	genAssign
	mov	dptr,#___fsmul_exp_1_1
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
;	genPlus
	mov	a,r2
	add	a,r6
	mov	r2,a
	mov	a,r3
	addc	a,r7
	mov	r3,a
	mov	a,r4
	addc	a,r0
	mov	r4,a
	mov	a,r5
	addc	a,r1
	mov	r5,a
;	genCast
	mov	dptr,#___fsmul_exp_1_1
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
;	_fsmul.c 45
;	genPointerGet
;	genFarPointerGet
	mov	dptr,#___fsmul_fl1_1_1
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
	orl	ar4,#0x80
;	genPointerSet
;	genFarPointerSet
	mov	dptr,#___fsmul_fl1_1_1
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
;	_fsmul.c 46
;	genPointerGet
;	genFarPointerGet
	mov	dptr,#___fsmul_fl2_1_1
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
	orl	ar4,#0x80
;	genPointerSet
;	genFarPointerSet
	mov	dptr,#___fsmul_fl2_1_1
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
;	_fsmul.c 49
;	genPointerGet
;	genFarPointerGet
	mov	dptr,#___fsmul_fl1_1_1
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
	mov	ar2,r3
	mov	ar3,r4
	mov	ar4,r5
	mov	r5,#0x00
;	genPointerGet
;	genFarPointerGet
	mov	dptr,#___fsmul_fl2_1_1
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
;	genRightShift
;	genRightShiftLiteral
;	genrshFour
	mov	ar6,r7
	mov	ar7,r0
	mov	ar0,r1
	mov	r1,#0x00
;	genAssign
	mov	dptr,#__mululong_PARM_2
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
;	genCall
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__mululong
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	genAssign
	mov	dptr,#___fsmul_result_1_1
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
;	_fsmul.c 50
;	genPointerGet
;	genFarPointerGet
	mov	dptr,#___fsmul_fl1_1_1
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
	mov	r3,#0x00
	mov	r4,#0x00
	mov	r5,#0x00
;	genPointerGet
;	genFarPointerGet
	mov	dptr,#___fsmul_fl2_1_1
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
;	genRightShift
;	genRightShiftLiteral
;	genrshFour
	mov	ar6,r7
	mov	ar7,r0
	mov	ar0,r1
	mov	r1,#0x00
;	genAssign
	mov	dptr,#__mululong_PARM_2
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
;	genCall
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__mululong
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	genRightShift
;	genRightShiftLiteral
;	genrshFour
	mov	ar2,r3
	mov	ar3,r4
	mov	ar4,r5
	mov	r5,#0x00
;	genAssign
	mov	dptr,#___fsmul_result_1_1
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
	mov	dptr,#___fsmul_result_1_1
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
;	_fsmul.c 51
;	genPointerGet
;	genFarPointerGet
	mov	dptr,#___fsmul_fl2_1_1
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
	mov	r3,#0x00
	mov	r4,#0x00
	mov	r5,#0x00
;	genPointerGet
;	genFarPointerGet
	mov	dptr,#___fsmul_fl1_1_1
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
;	genRightShift
;	genRightShiftLiteral
;	genrshFour
	mov	ar6,r7
	mov	ar7,r0
	mov	ar0,r1
	mov	r1,#0x00
;	genAssign
	mov	dptr,#__mululong_PARM_2
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
;	genCall
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__mululong
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	genRightShift
;	genRightShiftLiteral
;	genrshFour
	mov	ar2,r3
	mov	ar3,r4
	mov	ar4,r5
	mov	r5,#0x00
;	genAssign
	mov	dptr,#___fsmul_result_1_1
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
	mov	dptr,#___fsmul_result_1_1
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
;	_fsmul.c 53
;	genAssign
	mov	dptr,#___fsmul_result_1_1
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
;	genIfxJump
	jb	acc.7,00116$
	ljmp	00105$
00116$:
;	_fsmul.c 56
;	genAssign
	mov	dptr,#___fsmul_result_1_1
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
	mov	dptr,#___fsmul_result_1_1
	mov	a,#0x80
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
;	_fsmul.c 57
;	genAssign
	mov	dptr,#___fsmul_result_1_1
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
	mov	ar2,r3
	mov	ar3,r4
	mov	ar4,r5
	mov	r5,#0x00
;	genAssign
	mov	dptr,#___fsmul_result_1_1
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
	ljmp	00106$
00105$:
;	_fsmul.c 62
;	genAssign
	mov	dptr,#___fsmul_result_1_1
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
	mov	dptr,#___fsmul_result_1_1
	mov	a,#0x40
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
;	_fsmul.c 63
;	genAssign
	mov	dptr,#___fsmul_result_1_1
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
	mov	a,r3
	mov	c,acc.7
	xch	a,r2
	rlc	a
	xch	a,r2
	rlc	a
	xch	a,r2
	anl	a,#0x01
	mov	r3,a
	mov	a,r4
	add	a,acc
	orl	a,r3
	mov	r3,a
	mov	a,r5
	mov	c,acc.7
	xch	a,r4
	rlc	a
	xch	a,r4
	rlc	a
	xch	a,r4
	anl	a,#0x01
	mov	r5,a
;	genAssign
	mov	dptr,#___fsmul_result_1_1
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
;	_fsmul.c 64
;	genMinus
	mov	dptr,#___fsmul_exp_1_1
;	genMinusDec
	movx	a,@dptr
	add	a,#0xff
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0xff
	mov	r3,a
;	genAssign
	mov	dptr,#___fsmul_exp_1_1
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
00106$:
;	_fsmul.c 67
;	genAssign
	mov	dptr,#___fsmul_result_1_1
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
	mov	dptr,#___fsmul_result_1_1
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
;	_fsmul.c 70
;	genAssign
	mov	dptr,#___fsmul_sign_1_1
	movx	a,@dptr
;	genIfx
; Peephole 105   removed redundant mov
	mov  r2,a
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00109$
00117$:
;	genAssign
	mov	r2,#0x00
	mov	r3,#0x00
	mov	r4,#0x00
	mov	r5,#0x80
; Peephole 132   changed ljmp to sjmp
	sjmp 00110$
00109$:
;	genAssign
	mov	r2,#0x00
	mov	r3,#0x00
	mov	r4,#0x00
	mov	r5,#0x00
00110$:
;	genAssign
	mov	dptr,#___fsmul_exp_1_1
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
	mov	dptr,#___fsmul_result_1_1
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
	mov	dptr,#___fsmul_fl1_1_1
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
;	_fsmul.c 71
;	genPointerGet
;	genFarPointerGet
	mov	dptr,#___fsmul_fl1_1_1
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
00107$:
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
