;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:10:01 2002

;--------------------------------------------------------
	.module _ulong2fs
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___ulong2fs
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
___ulong2fs_exp_1_1::
	.ds 2
___ulong2fs_fl_1_1::
	.ds 4
___ulong2fs_sloc0_1_0::
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
;Allocation info for local variables in function '__ulong2fs'
;------------------------------------------------------------
;	_ulong2fs.c 27
;	-----------------------------------------
;	 function __ulong2fs
;	-----------------------------------------
___ulong2fs:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	_ulong2fs.c 61
;	genReceive
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	_ulong2fs.c 32
;	genIfx
	mov	a,r2
	orl	a,r3
	orl	a,r4
	orl	a,r5
;	genIfxJump
; Peephole 109   removed ljmp by inverse jump logic
	jnz  00115$
00119$:
;	_ulong2fs.c 34
;	genRet
; Peephole 3.a   changed mov to clr
; Peephole 3.b   changed mov to clr
; Peephole 3.b   changed mov to clr
	clr  a
	mov  dpl,a
	mov  dph,a
	mov  b,a
	ljmp	00111$
;	_ulong2fs.c 37
00115$:
;	genAssign
	mov	r6,#0x96
	mov	r7,#0x00
00103$:
;	genAnd
	mov	a,r5
; Peephole 110   removed ljmp by inverse jump logic
	jz  00117$
00120$:
;	_ulong2fs.c 40
;	genRightShift
;	genRightShiftLiteral
;	genrshFour
	mov	a,r5
	clr	c
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
	mov	r2,a
;	_ulong2fs.c 41
;	genPlus
;	genPlusIncr
;	tail increment optimized
	inc	r6
	cjne	r6,#0x00,00103$
	inc	r7
;	_ulong2fs.c 44
; Peephole 132   changed ljmp to sjmp
	sjmp 00103$
00117$:
;	genAssign
	mov	___ulong2fs_exp_1_1,r6
	mov	(___ulong2fs_exp_1_1 + 1),r7
00106$:
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
	subb	a,#0x00
	clr	a
	rlc	a
	mov	r0,a
;	genAssign
	mov	___ulong2fs_sloc0_1_0,___ulong2fs_exp_1_1
	mov	(___ulong2fs_sloc0_1_0 + 1),(___ulong2fs_exp_1_1 + 1)
;	genIfx
	mov	a,r0
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00108$
00121$:
;	_ulong2fs.c 46
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
;	_ulong2fs.c 47
;	genMinus
;	genMinusDec
;	tail decrement optimized
	dec	___ulong2fs_exp_1_1
	mov	a,#0xff
	cjne	a,___ulong2fs_exp_1_1,00106$
	dec	(___ulong2fs_exp_1_1 + 1)
; Peephole 132   changed ljmp to sjmp
	sjmp 00106$
00108$:
;	_ulong2fs.c 51
;	genAnd
	mov	ar0,r2
	mov	ar1,r3
	mov	a,#0x7F
	anl	a,r4
	mov	r6,a
	mov	r7,#0x00
;	genCmpEq
; Peephole 132   changed ljmp to sjmp
; Peephole 194   optimized misc jump sequence
	cjne r0,#0xFF,00110$
	cjne r1,#0xFF,00110$
	cjne r6,#0x7F,00110$
	cjne r7,#0x00,00110$
;00122$:
; Peephole 200   removed redundant sjmp
00123$:
;	_ulong2fs.c 52
;	genAssign
;	_ulong2fs.c 53
;	genPlus
;	genPlusIncr
; Peephole 3.c   changed mov to clr
; Peephole 3.b   changed mov to clr
; Peephole 3.b   changed mov to clr
	clr  a
	mov  r2,a
	mov  r3,a
	mov  r4,a
	mov  r5,a
	mov  a,#0x01
	add	a,___ulong2fs_exp_1_1
	mov	___ulong2fs_sloc0_1_0,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,(___ulong2fs_exp_1_1 + 1)
	mov	(___ulong2fs_sloc0_1_0 + 1),a
00110$:
;	_ulong2fs.c 57
;	genAnd
	anl	ar4,#0x7F
;	_ulong2fs.c 59
;	genCast
	mov	r6,___ulong2fs_sloc0_1_0
	mov	r7,(___ulong2fs_sloc0_1_0 + 1)
	mov	a,(___ulong2fs_sloc0_1_0 + 1)
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
;	genPointerSet
;	genNearPointerSet
;	genDataPointerSet
	mov	___ulong2fs_fl_1_1,r2
	mov	(___ulong2fs_fl_1_1 + 1),r3
	mov	(___ulong2fs_fl_1_1 + 2),r4
	mov	(___ulong2fs_fl_1_1 + 3),r5
;	_ulong2fs.c 61
;	genAssign
;	genRet
	mov	dpl,___ulong2fs_fl_1_1
	mov	dph,(___ulong2fs_fl_1_1 + 1)
	mov	b,(___ulong2fs_fl_1_1 + 2)
	mov	a,(___ulong2fs_fl_1_1 + 3)
00111$:
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
