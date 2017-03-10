;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:10:12 2002

;--------------------------------------------------------
	.module _divulong
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __divulong_PARM_2
	.globl __divulong
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
__divulong_sloc0_1_0::
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
__divulong_PARM_2::
	.ds 4
__divulong_a_1_1::
	.ds 4
__divulong_reste_1_1::
	.ds 4
__divulong_count_1_1::
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
;Allocation info for local variables in function '_divulong'
;------------------------------------------------------------
;b                         Allocated to in memory with name '__divulong_PARM_2'
;a                         Allocated to in memory with name '__divulong_a_1_1'
;reste                     Allocated to in memory with name '__divulong_reste_1_1'
;count                     Allocated to in memory with name '__divulong_count_1_1'
;	_divulong.c 321
;	-----------------------------------------
;	 function _divulong
;	-----------------------------------------
__divulong:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	_divulong.c 348
;	genReceive
	push	acc
	push	b
	push	dph
	push	dpl
	mov	dptr,#__divulong_a_1_1
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
;	_divulong.c 323
;	genAssign
; Peephole 227   replaced inefficient 32 bit clear
	mov     dptr,#__divulong_reste_1_1
	clr     a
	movx    @dptr,a
	inc     dptr
	movx    @dptr,a
	inc     dptr
	movx    @dptr,a
	inc     dptr
	movx    @dptr,a
;	_divulong.c 324
;	genAssign
; Peephole 231   removed redundant mov to dptr
	mov     dptr,#__divulong_count_1_1
	mov	a,#0x20
	movx	@dptr,a
;	_divulong.c 331
;	genAssign
	mov	dptr,#__divulong_PARM_2
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
00105$:
;	_divulong.c 334
;	genIpush
	push	ar2
	push	ar3
	push	ar4
	push	ar5
;	genAssign
	mov	dptr,#__divulong_a_1_1
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
;	genGetHbit
; Peephole 105   removed redundant mov
	mov  r1,a
	rl	a
	anl	a,#0x01
;	genCast
; Peephole 105   removed redundant mov
	mov  r2,a
	mov	r2,a
;	_divulong.c 335
;	genLeftShift
;	genLeftShiftLiteral
;	genlshFour
	mov	a,r6
	add	a,acc
	mov	__divulong_sloc0_1_0,a
	mov	a,r7
	rlc	a
	mov	(__divulong_sloc0_1_0 + 1),a
	mov	a,r0
	rlc	a
	mov	(__divulong_sloc0_1_0 + 2),a
	mov	a,r1
	rlc	a
	mov	(__divulong_sloc0_1_0 + 3),a
;	genAssign
	mov	dptr,#__divulong_a_1_1
	mov	a,__divulong_sloc0_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(__divulong_sloc0_1_0 + 1)
	movx	@dptr,a
	inc	dptr
	mov	a,(__divulong_sloc0_1_0 + 2)
	movx	@dptr,a
	inc	dptr
	mov	a,(__divulong_sloc0_1_0 + 3)
	movx	@dptr,a
;	_divulong.c 336
;	genAssign
	mov	dptr,#__divulong_reste_1_1
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
	mov	r1,a
	mov	a,r4
	rlc	a
	mov	r7,a
	mov	a,r5
	rlc	a
	mov	r0,a
	mov	a,r6
	rlc	a
	mov	r6,a
;	genAssign
	mov	dptr,#__divulong_reste_1_1
	mov	a,r1
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
;	_divulong.c 337
;	genIfx
	mov	a,r2
;	genIpop
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00102$
00114$:
;	_divulong.c 338
;	genOr
	mov	dptr,#__divulong_reste_1_1
	mov	a,#0x01
	orl	a,r1
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
00102$:
;	_divulong.c 340
;	genAssign
	mov	dptr,#__divulong_reste_1_1
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
;	genCmpLt
;	genCmp
	clr	c
	mov	a,r6
	subb	a,r2
	mov	a,r7
	subb	a,r3
	mov	a,r0
	subb	a,r4
	mov	a,r1
	subb	a,r5
;	genIfxJump
; Peephole 132   changed ljmp to sjmp
; Peephole 160   removed sjmp by inverse jump logic
	jc   00106$
00115$:
;	_divulong.c 342
;	genMinus
	mov	dptr,#__divulong_reste_1_1
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
;	_divulong.c 344
;	genOr
	mov	dptr,#__divulong_a_1_1
	mov	a,#0x01
	orl	a,__divulong_sloc0_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(__divulong_sloc0_1_0 + 1)
	movx	@dptr,a
	inc	dptr
	mov	a,(__divulong_sloc0_1_0 + 2)
	movx	@dptr,a
	inc	dptr
	mov	a,(__divulong_sloc0_1_0 + 3)
	movx	@dptr,a
00106$:
;	_divulong.c 347
;	genMinus
	mov	dptr,#__divulong_count_1_1
;	genMinusDec
	movx	a,@dptr
	dec	a
;	genAssign
; Peephole 100   removed redundant mov
	mov  r6,a
	mov  dptr,#__divulong_count_1_1
	movx @dptr,a
;	genIfx
	mov	a,r6
;	genIfxJump
	jz	00116$
	ljmp	00105$
00116$:
;	_divulong.c 348
;	genAssign
	mov	dptr,#__divulong_a_1_1
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
00108$:
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
