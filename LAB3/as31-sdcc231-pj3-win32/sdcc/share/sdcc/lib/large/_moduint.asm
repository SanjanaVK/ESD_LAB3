;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:10:18 2002

;--------------------------------------------------------
	.module _moduint
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __moduint_PARM_2
	.globl __moduint
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
__moduint_PARM_2::
	.ds 2
__moduint_a_1_1::
	.ds 2
__moduint_count_1_1::
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
;Allocation info for local variables in function '_moduint'
;------------------------------------------------------------
;b                         Allocated to in memory with name '__moduint_PARM_2'
;a                         Allocated to in memory with name '__moduint_a_1_1'
;count                     Allocated to in memory with name '__moduint_count_1_1'
;	_moduint.c 168
;	-----------------------------------------
;	 function _moduint
;	-----------------------------------------
__moduint:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	_moduint.c 190
;	genReceive
	push	dph
	push	dpl
	mov	dptr,#__moduint_a_1_1
	pop	acc
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
;	_moduint.c 170
;	genAssign
	mov	dptr,#__moduint_count_1_1
; Peephole 180   changed mov to clr
	clr  a
	movx	@dptr,a
;	_moduint.c 173
;	genAssign
	mov	dptr,#__moduint_a_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;	genAssign
	mov	r4,#0x00
00103$:
;	genAssign
	mov	dptr,#__moduint_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
;	genGetHbit
; Peephole 105   removed redundant mov
	mov  r6,a
	rl	a
	anl	a,#0x01
;	genIfx
; Peephole 105   removed redundant mov
	mov  r7,a
;	genIfxJump
; Peephole 109   removed ljmp by inverse jump logic
	jnz  00117$
00119$:
;	_moduint.c 175
;	genLeftShift
;	genLeftShiftLiteral
;	genlshTwo
	mov	a,r6
	xch	a,r5
	add	a,acc
	xch	a,r5
	rlc	a
	mov	r6,a
;	genAssign
	mov	dptr,#__moduint_PARM_2
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
;	_moduint.c 176
;	genCmpGt
;	genCmp
	clr	c
	mov	a,r2
	subb	a,r5
	mov	a,r3
	subb	a,r6
;	genIfxJump
; Peephole 108   removed ljmp by inverse jump logic
	jnc  00102$
00120$:
;	_moduint.c 178
;	genRightShift
;	genRightShiftLiteral
;	genrshTwo
	mov	a,r6
	clr	c
	rrc	a
	xch	a,r5
	rrc	a
	xch	a,r5
	mov	r6,a
;	genAssign
	mov	dptr,#__moduint_PARM_2
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
;	_moduint.c 179
; Peephole 132   changed ljmp to sjmp
	sjmp 00117$
00102$:
;	_moduint.c 181
;	genPlus
;	genPlusIncr
	inc	r4
;	genAssign
	mov	dptr,#__moduint_count_1_1
	mov	a,r4
	movx	@dptr,a
	ljmp	00103$
;	_moduint.c 183
00117$:
;	genAssign
	mov	dptr,#__moduint_count_1_1
	movx	a,@dptr
	mov	r2,a
00108$:
;	_moduint.c 185
;	genAssign
	mov	dptr,#__moduint_PARM_2
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
;	genAssign
	mov	dptr,#__moduint_a_1_1
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
;	genCmpLt
;	genCmp
	clr	c
	mov	a,r5
	subb	a,r3
	mov	a,r6
	subb	a,r4
;	genIfxJump
; Peephole 132   changed ljmp to sjmp
; Peephole 160   removed sjmp by inverse jump logic
	jc   00107$
00121$:
;	_moduint.c 186
;	genMinus
	mov	dptr,#__moduint_a_1_1
	clr	c
	mov	a,r5
	subb	a,r3
	movx	@dptr,a
	mov	a,r6
	subb	a,r4
	inc	dptr
	movx	@dptr,a
00107$:
;	_moduint.c 187
;	genAssign
	mov	dptr,#__moduint_PARM_2
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
;	genRightShift
;	genRightShiftLiteral
;	genrshTwo
; Peephole 105   removed redundant mov
	mov  r4,a
	clr	c
	rrc	a
	xch	a,r3
	rrc	a
	xch	a,r3
	mov	r4,a
;	genAssign
	mov	dptr,#__moduint_PARM_2
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
;	_moduint.c 189
;	genAssign
	mov	ar3,r2
;	genMinus
;	genMinusDec
	dec	r2
;	genIfx
	mov	a,r3
;	genIfxJump
	jz	00122$
	ljmp	00108$
00122$:
;	_moduint.c 190
;	genAssign
	mov	dptr,#__moduint_a_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;	genRet
	mov	dpl,r2
	mov	dph,r3
00111$:
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
