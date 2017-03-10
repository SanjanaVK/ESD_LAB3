;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:10:12 2002

;--------------------------------------------------------
	.module _divsint
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __divsint_PARM_2
	.globl __divsint
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
__divsint_PARM_2::
	.ds 2
__divsint_a_1_1::
	.ds 2
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
;Allocation info for local variables in function '_divsint'
;------------------------------------------------------------
;b                         Allocated to in memory with name '__divsint_PARM_2'
;a                         Allocated to in memory with name '__divsint_a_1_1'
;r                         Allocated to in memory with name '__divsint_r_1_1'
;	_divsint.c 202
;	-----------------------------------------
;	 function _divsint
;	-----------------------------------------
__divsint:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	_divsint.c 0
;	genReceive
	push	dph
	push	dpl
	mov	dptr,#__divsint_a_1_1
	pop	acc
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
;	_divsint.c 206
;	genAssign
	mov	dptr,#__divsint_a_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
;	genCmpLt
;	genCmp
; Peephole 105   removed redundant mov
	mov  r3,a
;	genIfxJump
; Peephole 111   removed ljmp by inverse jump logic
	jnb  acc.7,00106$
00113$:
;	genUminus
	clr	c
	clr	a
	subb	a,r2
	mov	r4,a
	clr	a
	subb	a,r3
	mov	r5,a
; Peephole 132   changed ljmp to sjmp
	sjmp 00107$
00106$:
;	genAssign
	mov	ar4,r2
	mov	ar5,r3
00107$:
;	genAssign
	mov	ar2,r4
	mov	ar3,r5
;	_divsint.c 207
;	genAssign
	mov	dptr,#__divsint_PARM_2
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
;	genCmpLt
;	genCmp
; Peephole 105   removed redundant mov
	mov  r5,a
	rlc	a
	clr	a
	rlc	a
;	genIfx
; Peephole 105   removed redundant mov
	mov  r6,a
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00108$
00114$:
;	genUminus
	clr	c
	clr	a
	subb	a,r4
	mov	r7,a
	clr	a
	subb	a,r5
	mov	r0,a
; Peephole 132   changed ljmp to sjmp
	sjmp 00109$
00108$:
;	genAssign
	mov	ar7,r4
	mov	ar0,r5
00109$:
;	genAssign
	mov	dptr,#__divuint_PARM_2
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
;	genCall
	mov	dpl,r2
	mov	dph,r3
	push	ar6
	lcall	__divuint
	mov	r2,dpl
	mov	r3,dph
	pop	ar6
;	_divsint.c 208
;	genAssign
	mov	dptr,#__divsint_a_1_1
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
;	genCmpLt
;	genCmp
; Peephole 105   removed redundant mov
	mov  r5,a
	rlc	a
	clr	a
	rlc	a
;	genXor
	xrl	a,r6
;	genIfx
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00102$
00115$:
;	_divsint.c 209
;	genUminus
	clr	c
	clr	a
	subb	a,r2
	mov	r4,a
	clr	a
	subb	a,r3
	mov	r5,a
;	genRet
	mov	dpl,r4
	mov	dph,r5
; Peephole 132   changed ljmp to sjmp
	sjmp 00104$
00102$:
;	_divsint.c 211
;	genRet
	mov	dpl,r2
	mov	dph,r3
00104$:
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
