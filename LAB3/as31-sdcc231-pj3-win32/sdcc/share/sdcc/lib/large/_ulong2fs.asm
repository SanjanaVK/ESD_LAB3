;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:10:20 2002

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
___ulong2fs_a_1_1::
	.ds 4
___ulong2fs_exp_1_1::
	.ds 2
___ulong2fs_fl_1_1::
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
;Allocation info for local variables in function '__ulong2fs'
;------------------------------------------------------------
;a                         Allocated to in memory with name '___ulong2fs_a_1_1'
;exp                       Allocated to in memory with name '___ulong2fs_exp_1_1'
;fl                        Allocated to in memory with name '___ulong2fs_fl_1_1'
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
	push	acc
	push	b
	push	dph
	push	dpl
	mov	dptr,#___ulong2fs_a_1_1
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
;	_ulong2fs.c 32
;	genAssign
	mov	dptr,#___ulong2fs_a_1_1
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
	mov	r2,#0x96
	mov	r3,#0x00
00103$:
;	genAssign
	mov	dptr,#___ulong2fs_a_1_1
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
;	genAnd
; Peephole 105   removed redundant mov
	mov  r7,a
; Peephole 110   removed ljmp by inverse jump logic
	jz  00117$
00120$:
;	_ulong2fs.c 40
;	genRightShift
;	genRightShiftLiteral
;	genrshFour
	mov	a,r7
	clr	c
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
;	genAssign
; Peephole 100   removed redundant mov
	mov  r4,a
	mov  dptr,#___ulong2fs_a_1_1
	movx @dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	_ulong2fs.c 41
;	genPlus
;	genPlusIncr
;	tail increment optimized
	inc	r2
	cjne	r2,#0x00,00103$
	inc	r3
;	_ulong2fs.c 44
; Peephole 132   changed ljmp to sjmp
	sjmp 00103$
00117$:
;	genAssign
	mov	___ulong2fs_sloc0_1_0,r2
	mov	(___ulong2fs_sloc0_1_0 + 1),r3
00106$:
;	genAssign
	mov	dptr,#___ulong2fs_a_1_1
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
;	genCmpLt
;	genCmp
	clr	c
	mov	a,r4
	subb	a,#0x00
	mov	a,r5
	subb	a,#0x00
	mov	a,r6
	subb	a,#0x80
	mov	a,r7
	subb	a,#0x00
	clr	a
	rlc	a
	mov	r0,a
;	genAssign
	mov	dptr,#___ulong2fs_exp_1_1
	mov	a,___ulong2fs_sloc0_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(___ulong2fs_sloc0_1_0 + 1)
	movx	@dptr,a
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
	mov	a,r4
	add	a,acc
	mov	r0,a
	mov	a,r5
	rlc	a
	mov	r1,a
	mov	a,r6
	rlc	a
	mov	r2,a
	mov	a,r7
	rlc	a
	mov	r3,a
;	genAssign
	mov	dptr,#___ulong2fs_a_1_1
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
;	_ulong2fs.c 47
;	genMinus
;	genMinusDec
;	tail decrement optimized
	dec	___ulong2fs_sloc0_1_0
	mov	a,#0xff
	cjne	a,___ulong2fs_sloc0_1_0,00106$
	dec	(___ulong2fs_sloc0_1_0 + 1)
	ljmp	00106$
00108$:
;	_ulong2fs.c 51
;	genAnd
	anl	ar6,#0x7F
	mov	r7,#0x00
;	genCmpEq
; Peephole 132   changed ljmp to sjmp
; Peephole 194   optimized misc jump sequence
	cjne r4,#0xFF,00110$
	cjne r5,#0xFF,00110$
	cjne r6,#0x7F,00110$
	cjne r7,#0x00,00110$
;00122$:
; Peephole 200   removed redundant sjmp
00123$:
;	_ulong2fs.c 52
;	genAssign
; Peephole 227   replaced inefficient 32 bit clear
	mov     dptr,#___ulong2fs_a_1_1
	clr     a
	movx    @dptr,a
	inc     dptr
	movx    @dptr,a
	inc     dptr
	movx    @dptr,a
	inc     dptr
	movx    @dptr,a
;	_ulong2fs.c 53
;	genPlus
; Peephole 231   removed redundant mov to dptr
	mov     dptr,#___ulong2fs_exp_1_1
;	genPlusIncr
	mov	a,#0x01
	add	a,___ulong2fs_sloc0_1_0
	movx	@dptr,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,(___ulong2fs_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
00110$:
;	_ulong2fs.c 57
;	genAssign
	mov	dptr,#___ulong2fs_a_1_1
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
;	genAssign
	mov	dptr,#___ulong2fs_a_1_1
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
;	_ulong2fs.c 59
;	genAssign
	mov	dptr,#___ulong2fs_exp_1_1
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
;	genFarPointerSet
	mov	dptr,#___ulong2fs_fl_1_1
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
;	_ulong2fs.c 61
;	genPointerGet
;	genFarPointerGet
	mov	dptr,#___ulong2fs_fl_1_1
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
00111$:
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
