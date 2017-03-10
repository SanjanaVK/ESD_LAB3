;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:09:55 2002

;--------------------------------------------------------
	.module _fs2ulong
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fs2ulong
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
___fs2ulong_fl1_1_1::
	.ds 4
___fs2ulong_exp_1_1::
	.ds 2
___fs2ulong_l_1_1::
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
;Allocation info for local variables in function '__fs2ulong'
;------------------------------------------------------------
;	_fs2ulong.c 29
;	-----------------------------------------
;	 function __fs2ulong
;	-----------------------------------------
___fs2ulong:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	_fs2ulong.c 0
;	genReceive
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	_fs2ulong.c 35
;	genPointerSet
;	genNearPointerSet
;	genDataPointerSet
	mov	___fs2ulong_fl1_1_1,r2
	mov	(___fs2ulong_fl1_1_1 + 1),r3
	mov	(___fs2ulong_fl1_1_1 + 2),r4
	mov	(___fs2ulong_fl1_1_1 + 3),r5
;	_fs2ulong.c 37
;	genAssign
;	genIfx
	mov	a,___fs2ulong_fl1_1_1
	orl	a,(___fs2ulong_fl1_1_1 + 1)
	orl	a,(___fs2ulong_fl1_1_1 + 2)
	orl	a,(___fs2ulong_fl1_1_1 + 3)
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00101$
00107$:
;	genAssign
;	genGetHbit
	mov	a,(___fs2ulong_fl1_1_1 + 3)
	rl	a
	anl	a,#0x01
;	genIfx
; Peephole 105   removed redundant mov
	mov  r2,a
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00102$
00108$:
00101$:
;	_fs2ulong.c 38
;	genRet
; Peephole 3.a   changed mov to clr
; Peephole 3.b   changed mov to clr
; Peephole 3.b   changed mov to clr
	clr  a
	mov  dpl,a
	mov  dph,a
	mov  b,a
	ljmp	00104$
00102$:
;	_fs2ulong.c 40
;	genAssign
;	genRightShift
;	genSignedRightShift
;	genRightShiftLiteral
;	genrshFour
	mov	r2,(___fs2ulong_fl1_1_1 + 2)
	mov	a,(___fs2ulong_fl1_1_1 + 3)
	mov	c,acc.7
	xch	a,r2
	rlc	a
	xch	a,r2
	rlc	a
	xch	a,r2
	anl	a,#0x01
	jnb	acc.0,00109$
	orl	a,#0xfe
00109$:
	mov	r3,a
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	r5,a
;	genAnd
;	genMinus
; Peephole 3.c   changed mov to clr
; Peephole 3.b   changed mov to clr
	clr  a
	mov  r3,a
	mov  r4,a
	mov  r5,a
	mov  a,r2
	add	a,#0x6a
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
	mov	___fs2ulong_exp_1_1,r2
	mov	(___fs2ulong_exp_1_1 + 1),r3
;	_fs2ulong.c 41
;	genAssign
;	genAnd
	mov	r2,___fs2ulong_fl1_1_1
	mov	r3,(___fs2ulong_fl1_1_1 + 1)
	mov	a,#0x7F
	anl	a,(___fs2ulong_fl1_1_1 + 2)
	mov	r4,a
	mov	r5,#0x00
;	genOr
	mov	___fs2ulong_l_1_1,r2
	mov	(___fs2ulong_l_1_1 + 1),r3
	mov	a,#0x80
	orl	a,r4
	mov	(___fs2ulong_l_1_1 + 2),a
	mov	(___fs2ulong_l_1_1 + 3),r5
;	_fs2ulong.c 43
;	genUminus
	clr	c
	clr	a
	subb	a,___fs2ulong_exp_1_1
	mov	r2,a
	clr	a
	subb	a,(___fs2ulong_exp_1_1 + 1)
	mov	r3,a
;	genRightShift
;	genSignedRightShift
	mov	b,r2
	inc	b
	mov	a,(___fs2ulong_l_1_1 + 3)
	rlc	a
	mov	ov,c
	sjmp	00111$
00110$:
	mov	c,ov
	mov	a,(___fs2ulong_l_1_1 + 3)
	rrc	a
	mov	(___fs2ulong_l_1_1 + 3),a
	mov	a,(___fs2ulong_l_1_1 + 2)
	rrc	a
	mov	(___fs2ulong_l_1_1 + 2),a
	mov	a,(___fs2ulong_l_1_1 + 1)
	rrc	a
	mov	(___fs2ulong_l_1_1 + 1),a
	mov	a,___fs2ulong_l_1_1
	rrc	a
	mov	___fs2ulong_l_1_1,a
00111$:
	djnz	b,00110$
;	_fs2ulong.c 45
;	genAssign
	mov	r2,___fs2ulong_l_1_1
	mov	r3,(___fs2ulong_l_1_1 + 1)
	mov	r4,(___fs2ulong_l_1_1 + 2)
	mov	r5,(___fs2ulong_l_1_1 + 3)
;	genRet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
00104$:
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
