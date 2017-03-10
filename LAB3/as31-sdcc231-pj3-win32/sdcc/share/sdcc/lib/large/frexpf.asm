;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:10:24 2002

;--------------------------------------------------------
	.module frexpf
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _frexpf_PARM_2
	.globl _frexpf
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
_frexpf_sloc1_1_0::
	.ds 3
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
_frexpf_PARM_2::
	.ds 3
_frexpf_x_1_1::
	.ds 4
_frexpf_fl_1_1::
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
;Allocation info for local variables in function 'frexpf'
;------------------------------------------------------------
;pw2                       Allocated to in memory with name '_frexpf_PARM_2'
;x                         Allocated to in memory with name '_frexpf_x_1_1'
;fl                        Allocated to in memory with name '_frexpf_fl_1_1'
;i                         Allocated to in memory with name '_frexpf_i_1_1'
;	frexpf.c 24
;	-----------------------------------------
;	 function frexpf
;	-----------------------------------------
_frexpf:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	frexpf.c 36
;	genReceive
	push	acc
	push	b
	push	dph
	push	dpl
	mov	dptr,#_frexpf_x_1_1
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
;	frexpf.c 29
;	genAssign
	mov	dptr,#_frexpf_x_1_1
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
	mov	dptr,#_frexpf_fl_1_1
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
;	frexpf.c 31
;	genRightShift
;	genSignedRightShift
;	genRightShiftLiteral
;	genrshFour
	mov	ar6,r4
	mov	a,r5
	mov	c,acc.7
	xch	a,r6
	rlc	a
	xch	a,r6
	rlc	a
	xch	a,r6
	anl	a,#0x01
	jnb	acc.0,00103$
	orl	a,#0xfe
00103$:
	mov	r7,a
	rlc	a
	subb	a,acc
	mov	r0,a
	mov	r1,a
;	genAnd
;	frexpf.c 32
;	genMinus
; Peephole 3.c   changed mov to clr
; Peephole 3.b   changed mov to clr
	clr  a
	mov  r7,a
	mov  r0,a
	mov  r1,a
	mov  a,r6
	add	a,#0x82
	mov	r6,a
	mov	a,r7
	addc	a,#0xff
	mov	r7,a
	mov	a,r0
	addc	a,#0xff
	mov	r0,a
	mov	a,r1
	addc	a,#0xff
	mov	r1,a
;	frexpf.c 33
;	genAssign
	mov	dptr,#_frexpf_PARM_2
	movx	a,@dptr
	mov	_frexpf_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_frexpf_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_frexpf_sloc1_1_0 + 2),a
;	genCast
	mov	ar1,r6
	mov	ar6,r7
;	genPointerSet
;	genGenPointerSet
	mov	dpl,_frexpf_sloc1_1_0
	mov	dph,(_frexpf_sloc1_1_0 + 1)
	mov	b,(_frexpf_sloc1_1_0 + 2)
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
;	frexpf.c 34
;	genAnd
	anl	ar4,#0x7F
	anl	ar5,#0x80
;	genPointerSet
;	genFarPointerSet
	mov	dptr,#_frexpf_fl_1_1
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
;	frexpf.c 35
;	genOr
	orl	ar5,#0x3F
;	genPointerSet
;	genFarPointerSet
	mov	dptr,#_frexpf_fl_1_1
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
;	frexpf.c 36
;	genRet
; Peephole 225   removed redundant move to acc
	mov     a,r5
	movx    @dptr,a
	mov     dpl,r2
	mov     dph,r3
	mov     b,r4
00101$:
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
