;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:10:18 2002

;--------------------------------------------------------
	.module _modulong
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __modulong_PARM_2
	.globl __modulong
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
__modulong_sloc0_1_0::
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
__modulong_PARM_2::
	.ds 4
__modulong_a_1_1::
	.ds 4
__modulong_count_1_1::
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
;Allocation info for local variables in function '_modulong'
;------------------------------------------------------------
;b                         Allocated to in memory with name '__modulong_PARM_2'
;a                         Allocated to in memory with name '__modulong_a_1_1'
;count                     Allocated to in memory with name '__modulong_count_1_1'
;	_modulong.c 335
;	-----------------------------------------
;	 function _modulong
;	-----------------------------------------
__modulong:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	_modulong.c 357
;	genReceive
	push	acc
	push	b
	push	dph
	push	dpl
	mov	dptr,#__modulong_a_1_1
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
;	_modulong.c 337
;	genAssign
	mov	dptr,#__modulong_count_1_1
; Peephole 180   changed mov to clr
	clr  a
	movx	@dptr,a
;	_modulong.c 339
;	genAssign
	mov	dptr,#__modulong_a_1_1
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
;	genAssign
	mov	r6,#0x00
00103$:
;	genAssign
	mov	dptr,#__modulong_PARM_2
	movx	a,@dptr
	mov	__modulong_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(__modulong_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(__modulong_sloc0_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(__modulong_sloc0_1_0 + 3),a
;	genGetHbit
	mov	a,(__modulong_sloc0_1_0 + 3)
	rl	a
	anl	a,#0x01
;	genIfx
; Peephole 105   removed redundant mov
	mov  r7,a
;	genIfxJump
	jz	00119$
	ljmp	00117$
00119$:
;	_modulong.c 341
;	genLeftShift
;	genLeftShiftLiteral
;	genlshFour
	mov	a,__modulong_sloc0_1_0
	add	a,acc
	mov	__modulong_sloc0_1_0,a
	mov	a,(__modulong_sloc0_1_0 + 1)
	rlc	a
	mov	(__modulong_sloc0_1_0 + 1),a
	mov	a,(__modulong_sloc0_1_0 + 2)
	rlc	a
	mov	(__modulong_sloc0_1_0 + 2),a
	mov	a,(__modulong_sloc0_1_0 + 3)
	rlc	a
	mov	(__modulong_sloc0_1_0 + 3),a
;	genAssign
	mov	dptr,#__modulong_PARM_2
	mov	a,__modulong_sloc0_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(__modulong_sloc0_1_0 + 1)
	movx	@dptr,a
	inc	dptr
	mov	a,(__modulong_sloc0_1_0 + 2)
	movx	@dptr,a
	inc	dptr
	mov	a,(__modulong_sloc0_1_0 + 3)
	movx	@dptr,a
;	_modulong.c 342
;	genCmpGt
;	genCmp
	clr	c
	mov	a,r2
	subb	a,__modulong_sloc0_1_0
	mov	a,r3
	subb	a,(__modulong_sloc0_1_0 + 1)
	mov	a,r4
	subb	a,(__modulong_sloc0_1_0 + 2)
	mov	a,r5
	subb	a,(__modulong_sloc0_1_0 + 3)
;	genIfxJump
; Peephole 108   removed ljmp by inverse jump logic
	jnc  00102$
00120$:
;	_modulong.c 344
;	genRightShift
;	genRightShiftLiteral
;	genrshFour
	mov	a,(__modulong_sloc0_1_0 + 3)
	clr	c
	rrc	a
	mov	r5,a
	mov	a,(__modulong_sloc0_1_0 + 2)
	rrc	a
	mov	r4,a
	mov	a,(__modulong_sloc0_1_0 + 1)
	rrc	a
	mov	r3,a
	mov	a,__modulong_sloc0_1_0
	rrc	a
;	genAssign
; Peephole 100   removed redundant mov
	mov  r2,a
	mov  dptr,#__modulong_PARM_2
	movx @dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
;	_modulong.c 345
; Peephole 132   changed ljmp to sjmp
	sjmp 00117$
00102$:
;	_modulong.c 347
;	genPlus
;	genPlusIncr
	inc	r6
;	genAssign
	mov	dptr,#__modulong_count_1_1
	mov	a,r6
	movx	@dptr,a
	ljmp	00103$
;	_modulong.c 349
00117$:
;	genAssign
	mov	dptr,#__modulong_count_1_1
	movx	a,@dptr
	mov	r2,a
00108$:
;	_modulong.c 351
;	genAssign
	mov	dptr,#__modulong_PARM_2
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
;	genAssign
	mov	dptr,#__modulong_a_1_1
	movx	a,@dptr
	mov	__modulong_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(__modulong_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(__modulong_sloc0_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(__modulong_sloc0_1_0 + 3),a
;	genCmpLt
;	genCmp
	clr	c
	mov	a,__modulong_sloc0_1_0
	subb	a,r3
	mov	a,(__modulong_sloc0_1_0 + 1)
	subb	a,r4
	mov	a,(__modulong_sloc0_1_0 + 2)
	subb	a,r5
	mov	a,(__modulong_sloc0_1_0 + 3)
	subb	a,r6
;	genIfxJump
; Peephole 132   changed ljmp to sjmp
; Peephole 160   removed sjmp by inverse jump logic
	jc   00107$
00121$:
;	_modulong.c 352
;	genMinus
	mov	dptr,#__modulong_a_1_1
	clr	c
	mov	a,__modulong_sloc0_1_0
	subb	a,r3
	movx	@dptr,a
	mov	a,(__modulong_sloc0_1_0 + 1)
	subb	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,(__modulong_sloc0_1_0 + 2)
	subb	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,(__modulong_sloc0_1_0 + 3)
	subb	a,r6
	inc	dptr
	movx	@dptr,a
00107$:
;	_modulong.c 353
;	genAssign
	mov	dptr,#__modulong_PARM_2
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
;	genRightShift
;	genRightShiftLiteral
;	genrshFour
; Peephole 105   removed redundant mov
	mov  r6,a
	clr	c
	rrc	a
	mov	r6,a
	mov	a,r5
	rrc	a
	mov	r5,a
	mov	a,r4
	rrc	a
	mov	r4,a
	mov	a,r3
	rrc	a
;	genAssign
; Peephole 100   removed redundant mov
	mov  r3,a
	mov  dptr,#__modulong_PARM_2
	movx @dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
;	_modulong.c 355
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
;	_modulong.c 357
;	genAssign
	mov	dptr,#__modulong_a_1_1
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
