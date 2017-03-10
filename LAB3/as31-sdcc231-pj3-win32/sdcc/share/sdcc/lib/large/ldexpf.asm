;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:10:24 2002

;--------------------------------------------------------
	.module ldexpf
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ldexpf_PARM_2
	.globl _ldexpf
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
_ldexpf_sloc0_1_0::
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
_ldexpf_PARM_2::
	.ds 2
_ldexpf_x_1_1::
	.ds 4
_ldexpf_fl_1_1::
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
;Allocation info for local variables in function 'ldexpf'
;------------------------------------------------------------
;pw2                       Allocated to in memory with name '_ldexpf_PARM_2'
;x                         Allocated to in memory with name '_ldexpf_x_1_1'
;fl                        Allocated to in memory with name '_ldexpf_fl_1_1'
;e                         Allocated to in memory with name '_ldexpf_e_1_1'
;	ldexpf.c 24
;	-----------------------------------------
;	 function ldexpf
;	-----------------------------------------
_ldexpf:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	ldexpf.c 35
;	genReceive
	push	acc
	push	b
	push	dph
	push	dpl
	mov	dptr,#_ldexpf_x_1_1
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
;	ldexpf.c 29
;	genAssign
	mov	dptr,#_ldexpf_x_1_1
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
	mov	dptr,#_ldexpf_fl_1_1
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
;	ldexpf.c 31
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
	mov	_ldexpf_sloc0_1_0,r6
	mov	(_ldexpf_sloc0_1_0 + 1),#0x00
	mov	(_ldexpf_sloc0_1_0 + 2),#0x00
	mov	(_ldexpf_sloc0_1_0 + 3),#0x00
;	ldexpf.c 32
;	genAssign
	mov	dptr,#_ldexpf_PARM_2
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
	mov	a,r6
	add	a,_ldexpf_sloc0_1_0
	mov	r6,a
	mov	a,r7
	addc	a,(_ldexpf_sloc0_1_0 + 1)
	mov	r7,a
	mov	a,r0
	addc	a,(_ldexpf_sloc0_1_0 + 2)
	mov	r0,a
	mov	a,r1
	addc	a,(_ldexpf_sloc0_1_0 + 3)
	mov	r1,a
;	ldexpf.c 33
;	genAnd
	mov	r7,#0x00
	mov	r0,#0x00
	mov	r1,#0x00
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
	mov	r7,#0x00
	mov	r6,#0x00
;	genAnd
	anl	ar4,#0x7F
	anl	ar5,#0x80
;	genOr
	mov	a,r2
	orl	ar6,a
	mov	a,r3
	orl	ar7,a
	mov	a,r4
	orl	ar0,a
	mov	a,r5
	orl	ar1,a
;	genPointerSet
;	genFarPointerSet
	mov	dptr,#_ldexpf_fl_1_1
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
	inc	dptr
;	ldexpf.c 35
;	genRet
; Peephole 225   removed redundant move to acc
	mov     a,r1
	movx    @dptr,a
	mov     dpl,r6
	mov     dph,r7
	mov     b,r0
00101$:
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
