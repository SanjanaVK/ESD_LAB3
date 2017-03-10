;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:09:56 2002

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
___fsmul_PARM_2::
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
;a1                        Allocated to registers r2 r3 r4 r5 
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
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	_fsmul.c 34
;	genPointerSet
;	genNearPointerSet
;	genDataPointerSet
	mov	___fsmul_fl1_1_1,r2
	mov	(___fsmul_fl1_1_1 + 1),r3
	mov	(___fsmul_fl1_1_1 + 2),r4
	mov	(___fsmul_fl1_1_1 + 3),r5
;	_fsmul.c 35
;	genPointerSet
;	genNearPointerSet
;	genDataPointerSet
	mov	___fsmul_fl2_1_1,___fsmul_PARM_2
	mov	(___fsmul_fl2_1_1 + 1),(___fsmul_PARM_2 + 1)
	mov	(___fsmul_fl2_1_1 + 2),(___fsmul_PARM_2 + 2)
	mov	(___fsmul_fl2_1_1 + 3),(___fsmul_PARM_2 + 3)
;	_fsmul.c 37
;	genAssign
;	genIfx
	mov	a,___fsmul_fl1_1_1
	orl	a,(___fsmul_fl1_1_1 + 1)
	orl	a,(___fsmul_fl1_1_1 + 2)
	orl	a,(___fsmul_fl1_1_1 + 3)
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00101$
00114$:
;	genAssign
;	genIfx
	mov	a,___fsmul_fl2_1_1
	orl	a,(___fsmul_fl2_1_1 + 1)
	orl	a,(___fsmul_fl2_1_1 + 2)
	orl	a,(___fsmul_fl2_1_1 + 3)
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
;	genAssign
;	genGetHbit
	mov	a,(___fsmul_fl1_1_1 + 3)
	rl	a
	anl	a,#0x01
	mov	r2,a
;	genAssign
;	genGetHbit
	mov	a,(___fsmul_fl2_1_1 + 3)
	rl	a
	anl	a,#0x01
;	genXor
; Peephole 105   removed redundant mov
	mov  r3,a
	xrl	a,ar2
	mov	___fsmul_sign_1_1,a
;	_fsmul.c 42
;	genAssign
;	genRightShift
;	genRightShiftLiteral
;	genrshFour
	mov	r3,(___fsmul_fl1_1_1 + 2)
	mov	a,(___fsmul_fl1_1_1 + 3)
	mov	c,acc.7
	xch	a,r3
	rlc	a
	xch	a,r3
	rlc	a
	xch	a,r3
	anl	a,#0x01
	mov	r4,a
;	genAnd
;	genMinus
; Peephole 3.c   changed mov to clr
; Peephole 3.b   changed mov to clr
; Peephole 3.b   changed mov to clr
; Peephole 3.b   changed mov to clr
	clr  a
	mov  r5,a
	mov  r6,a
	mov  r4,a
	mov  r5,a
	mov  r6,a
	mov  a,r3
	add	a,#0x82
	mov	r3,a
	mov	a,r4
	addc	a,#0xff
	mov	r4,a
	mov	a,r5
	addc	a,#0xff
	mov	r5,a
	mov	a,r6
	addc	a,#0xff
	mov	r6,a
;	genCast
	mov	___fsmul_exp_1_1,r3
	mov	(___fsmul_exp_1_1 + 1),r4
;	_fsmul.c 43
;	genAssign
;	genRightShift
;	genRightShiftLiteral
;	genrshFour
	mov	r3,(___fsmul_fl2_1_1 + 2)
	mov	a,(___fsmul_fl2_1_1 + 3)
	mov	c,acc.7
	xch	a,r3
	rlc	a
	xch	a,r3
	rlc	a
	xch	a,r3
	anl	a,#0x01
	mov	r4,a
	mov	r5,#0x00
	mov	r6,#0x00
;	genAnd
	mov	r4,#0x00
	mov	r5,#0x00
	mov	r6,#0x00
;	genCast
	mov	r7,___fsmul_exp_1_1
	mov	r0,(___fsmul_exp_1_1 + 1)
	mov	a,(___fsmul_exp_1_1 + 1)
	rlc	a
	subb	a,acc
	mov	r1,a
	mov	r2,a
;	genPlus
	mov	a,r3
	add	a,r7
	mov	r3,a
	mov	a,r4
	addc	a,r0
	mov	r4,a
	mov	a,r5
	addc	a,r1
	mov	r5,a
	mov	a,r6
	addc	a,r2
	mov	r6,a
;	genCast
	mov	___fsmul_exp_1_1,r3
	mov	(___fsmul_exp_1_1 + 1),r4
;	_fsmul.c 45
;	genAssign
;	genAnd
	mov	r2,___fsmul_fl1_1_1
	mov	r3,(___fsmul_fl1_1_1 + 1)
	mov	a,#0x7F
	anl	a,(___fsmul_fl1_1_1 + 2)
	mov	r4,a
	mov	r5,#0x00
;	genOr
	orl	ar4,#0x80
;	genPointerSet
;	genNearPointerSet
;	genDataPointerSet
	mov	___fsmul_fl1_1_1,r2
	mov	(___fsmul_fl1_1_1 + 1),r3
	mov	(___fsmul_fl1_1_1 + 2),r4
	mov	(___fsmul_fl1_1_1 + 3),r5
;	_fsmul.c 46
;	genAssign
;	genAnd
	mov	r2,___fsmul_fl2_1_1
	mov	r3,(___fsmul_fl2_1_1 + 1)
	mov	a,#0x7F
	anl	a,(___fsmul_fl2_1_1 + 2)
	mov	r4,a
	mov	r5,#0x00
;	genOr
	orl	ar4,#0x80
;	genPointerSet
;	genNearPointerSet
;	genDataPointerSet
	mov	___fsmul_fl2_1_1,r2
	mov	(___fsmul_fl2_1_1 + 1),r3
	mov	(___fsmul_fl2_1_1 + 2),r4
	mov	(___fsmul_fl2_1_1 + 3),r5
;	_fsmul.c 49
;	genAssign
;	genRightShift
;	genRightShiftLiteral
;	genrshFour
	mov	r2,(___fsmul_fl1_1_1 + 1)
	mov	r3,(___fsmul_fl1_1_1 + 2)
	mov	r4,(___fsmul_fl1_1_1 + 3)
	mov	r5,#0x00
;	genAssign
;	genRightShift
;	genRightShiftLiteral
;	genrshFour
	mov	__mululong_PARM_2,(___fsmul_fl2_1_1 + 1)
	mov	(__mululong_PARM_2 + 1),(___fsmul_fl2_1_1 + 2)
	mov	(__mululong_PARM_2 + 2),(___fsmul_fl2_1_1 + 3)
	mov	(__mululong_PARM_2 + 3),#0x00
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
	mov	___fsmul_result_1_1,r2
	mov	(___fsmul_result_1_1 + 1),r3
	mov	(___fsmul_result_1_1 + 2),r4
	mov	(___fsmul_result_1_1 + 3),r5
;	_fsmul.c 50
;	genAssign
;	genAnd
	mov	r2,___fsmul_fl1_1_1
	mov	r3,#0x00
	mov	r4,#0x00
	mov	r5,#0x00
;	genAssign
;	genRightShift
;	genRightShiftLiteral
;	genrshFour
	mov	__mululong_PARM_2,(___fsmul_fl2_1_1 + 1)
	mov	(__mululong_PARM_2 + 1),(___fsmul_fl2_1_1 + 2)
	mov	(__mululong_PARM_2 + 2),(___fsmul_fl2_1_1 + 3)
	mov	(__mululong_PARM_2 + 3),#0x00
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
;	genPlus
	mov	a,r2
	add	a,___fsmul_result_1_1
	mov	___fsmul_result_1_1,a
	mov	a,r3
	addc	a,(___fsmul_result_1_1 + 1)
	mov	(___fsmul_result_1_1 + 1),a
	mov	a,r4
	addc	a,(___fsmul_result_1_1 + 2)
	mov	(___fsmul_result_1_1 + 2),a
	mov	a,r5
	addc	a,(___fsmul_result_1_1 + 3)
	mov	(___fsmul_result_1_1 + 3),a
;	_fsmul.c 51
;	genAssign
;	genAnd
	mov	r2,___fsmul_fl2_1_1
	mov	r3,#0x00
	mov	r4,#0x00
	mov	r5,#0x00
;	genAssign
;	genRightShift
;	genRightShiftLiteral
;	genrshFour
	mov	__mululong_PARM_2,(___fsmul_fl1_1_1 + 1)
	mov	(__mululong_PARM_2 + 1),(___fsmul_fl1_1_1 + 2)
	mov	(__mululong_PARM_2 + 2),(___fsmul_fl1_1_1 + 3)
	mov	(__mululong_PARM_2 + 3),#0x00
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
;	genPlus
	mov	a,r2
	add	a,___fsmul_result_1_1
	mov	___fsmul_result_1_1,a
	mov	a,r3
	addc	a,(___fsmul_result_1_1 + 1)
	mov	(___fsmul_result_1_1 + 1),a
	mov	a,r4
	addc	a,(___fsmul_result_1_1 + 2)
	mov	(___fsmul_result_1_1 + 2),a
	mov	a,r5
	addc	a,(___fsmul_result_1_1 + 3)
	mov	(___fsmul_result_1_1 + 3),a
;	_fsmul.c 53
;	genAnd
	mov	a,(___fsmul_result_1_1 + 3)
;	genIfxJump
; Peephole 111   removed ljmp by inverse jump logic
	jnb  acc.7,00105$
00116$:
;	_fsmul.c 56
;	genPlus
	mov	a,#0x80
	add	a,___fsmul_result_1_1
	mov	___fsmul_result_1_1,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,(___fsmul_result_1_1 + 1)
	mov	(___fsmul_result_1_1 + 1),a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,(___fsmul_result_1_1 + 2)
	mov	(___fsmul_result_1_1 + 2),a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,(___fsmul_result_1_1 + 3)
	mov	(___fsmul_result_1_1 + 3),a
;	_fsmul.c 57
;	genRightShift
;	genRightShiftLiteral
;	genrshFour
	mov	___fsmul_result_1_1,(___fsmul_result_1_1 + 1)
	mov	(___fsmul_result_1_1 + 1),(___fsmul_result_1_1 + 2)
	mov	(___fsmul_result_1_1 + 2),(___fsmul_result_1_1 + 3)
	mov	(___fsmul_result_1_1 + 3),#0x00
; Peephole 132   changed ljmp to sjmp
	sjmp 00106$
00105$:
;	_fsmul.c 62
;	genPlus
	mov	a,#0x40
	add	a,___fsmul_result_1_1
	mov	___fsmul_result_1_1,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,(___fsmul_result_1_1 + 1)
	mov	(___fsmul_result_1_1 + 1),a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,(___fsmul_result_1_1 + 2)
	mov	(___fsmul_result_1_1 + 2),a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,(___fsmul_result_1_1 + 3)
	mov	(___fsmul_result_1_1 + 3),a
;	_fsmul.c 63
;	genRightShift
;	genRightShiftLiteral
;	genrshFour
	mov	a,(___fsmul_result_1_1 + 1)
	mov	c,acc.7
	xch	a,___fsmul_result_1_1
	rlc	a
	xch	a,___fsmul_result_1_1
	rlc	a
	xch	a,___fsmul_result_1_1
	anl	a,#0x01
	mov	(___fsmul_result_1_1 + 1),a
	mov	a,(___fsmul_result_1_1 + 2)
	add	a,acc
	orl	a,(___fsmul_result_1_1 + 1)
	mov	(___fsmul_result_1_1 + 1),a
	mov	a,(___fsmul_result_1_1 + 3)
	mov	c,acc.7
	xch	a,(___fsmul_result_1_1 + 2)
	rlc	a
	xch	a,(___fsmul_result_1_1 + 2)
	rlc	a
	xch	a,(___fsmul_result_1_1 + 2)
	anl	a,#0x01
	mov	(___fsmul_result_1_1 + 3),a
;	_fsmul.c 64
;	genMinus
;	genMinusDec
	dec	___fsmul_exp_1_1
	mov	a,#0xff
	cjne	a,___fsmul_exp_1_1,00117$
	dec	(___fsmul_exp_1_1 + 1)
00117$:
00106$:
;	_fsmul.c 67
;	genAnd
	anl	(___fsmul_result_1_1 + 2),#0x7F
;	_fsmul.c 70
;	genIfx
	mov	a,___fsmul_sign_1_1
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00109$
00118$:
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
;	genCast
	mov	r6,___fsmul_exp_1_1
	mov	r7,(___fsmul_exp_1_1 + 1)
	mov	a,(___fsmul_exp_1_1 + 1)
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
;	genOr
	mov	a,___fsmul_result_1_1
	orl	ar2,a
	mov	a,(___fsmul_result_1_1 + 1)
	orl	ar3,a
	mov	a,(___fsmul_result_1_1 + 2)
	orl	ar4,a
	mov	a,(___fsmul_result_1_1 + 3)
	orl	ar5,a
;	genPointerSet
;	genNearPointerSet
;	genDataPointerSet
	mov	___fsmul_fl1_1_1,r2
	mov	(___fsmul_fl1_1_1 + 1),r3
	mov	(___fsmul_fl1_1_1 + 2),r4
	mov	(___fsmul_fl1_1_1 + 3),r5
;	_fsmul.c 71
;	genAssign
;	genRet
	mov	dpl,___fsmul_fl1_1_1
	mov	dph,(___fsmul_fl1_1_1 + 1)
	mov	b,(___fsmul_fl1_1_1 + 2)
	mov	a,(___fsmul_fl1_1_1 + 3)
00107$:
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
