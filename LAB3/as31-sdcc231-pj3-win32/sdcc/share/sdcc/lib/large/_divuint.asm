;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:10:12 2002

;--------------------------------------------------------
	.module _divuint
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __divuint_PARM_2
	.globl __divuint
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
__divuint_PARM_2::
	.ds 2
__divuint_a_1_1::
	.ds 2
__divuint_reste_1_1::
	.ds 2
__divuint_count_1_1::
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
;Allocation info for local variables in function '_divuint'
;------------------------------------------------------------
;b                         Allocated to in memory with name '__divuint_PARM_2'
;a                         Allocated to in memory with name '__divuint_a_1_1'
;reste                     Allocated to in memory with name '__divuint_reste_1_1'
;count                     Allocated to in memory with name '__divuint_count_1_1'
;	_divuint.c 144
;	-----------------------------------------
;	 function _divuint
;	-----------------------------------------
__divuint:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	_divuint.c 171
;	genReceive
	push	dph
	push	dpl
	mov	dptr,#__divuint_a_1_1
	pop	acc
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
;	_divuint.c 146
;	genAssign
; Peephole 229   replaced inefficient 16 bit clear
	mov     dptr,#__divuint_reste_1_1
	clr     a
	movx    @dptr,a
	inc     dptr
	movx    @dptr,a
;	_divuint.c 147
;	genAssign
; Peephole 231   removed redundant mov to dptr
	mov     dptr,#__divuint_count_1_1
	mov	a,#0x10
	movx	@dptr,a
;	_divuint.c 154
;	genAssign
	mov	dptr,#__divuint_PARM_2
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
00105$:
;	_divuint.c 157
;	genAssign
	mov	dptr,#__divuint_a_1_1
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
;	genGetHbit
; Peephole 105   removed redundant mov
	mov  r5,a
	rl	a
	anl	a,#0x01
;	genCast
; Peephole 105   removed redundant mov
	mov  r6,a
	mov	r6,a
;	_divuint.c 158
;	genLeftShift
;	genLeftShiftLiteral
;	genlshTwo
	mov	a,r5
	xch	a,r4
	add	a,acc
	xch	a,r4
	rlc	a
	mov	r5,a
;	genAssign
	mov	dptr,#__divuint_a_1_1
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
;	_divuint.c 159
;	genAssign
	mov	dptr,#__divuint_reste_1_1
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
;	genLeftShift
;	genLeftShiftLiteral
;	genlshTwo
; Peephole 105   removed redundant mov
	mov  r0,a
	xch	a,r7
	add	a,acc
	xch	a,r7
	rlc	a
	mov	r0,a
;	genAssign
	mov	dptr,#__divuint_reste_1_1
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
;	_divuint.c 160
;	genIfx
	mov	a,r6
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00102$
00114$:
;	_divuint.c 161
;	genOr
	mov	dptr,#__divuint_reste_1_1
	mov	a,#0x01
	orl	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
00102$:
;	_divuint.c 163
;	genAssign
	mov	dptr,#__divuint_reste_1_1
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	genCmpLt
;	genCmp
	clr	c
	mov	a,r6
	subb	a,r2
	mov	a,r7
	subb	a,r3
;	genIfxJump
; Peephole 132   changed ljmp to sjmp
; Peephole 160   removed sjmp by inverse jump logic
	jc   00106$
00115$:
;	_divuint.c 165
;	genMinus
	mov	dptr,#__divuint_reste_1_1
	clr	c
	mov	a,r6
	subb	a,r2
	movx	@dptr,a
	mov	a,r7
	subb	a,r3
	inc	dptr
	movx	@dptr,a
;	_divuint.c 167
;	genOr
	mov	dptr,#__divuint_a_1_1
	mov	a,#0x01
	orl	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
00106$:
;	_divuint.c 170
;	genMinus
	mov	dptr,#__divuint_count_1_1
;	genMinusDec
	movx	a,@dptr
	dec	a
;	genAssign
; Peephole 100   removed redundant mov
	mov  r4,a
	mov  dptr,#__divuint_count_1_1
	movx @dptr,a
;	genIfx
	mov	a,r4
;	genIfxJump
	jz	00116$
	ljmp	00105$
00116$:
;	_divuint.c 171
;	genAssign
	mov	dptr,#__divuint_a_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;	genRet
	mov	dpl,r2
	mov	dph,r3
00108$:
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
