;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:10:15 2002

;--------------------------------------------------------
	.module _fsgt
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fsgt_PARM_2
	.globl ___fsgt
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
___fsgt_PARM_2::
	.ds 4
___fsgt_a1_1_1::
	.ds 4
___fsgt_fl1_1_1::
	.ds 4
___fsgt_fl2_1_1::
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
;Allocation info for local variables in function '__fsgt'
;------------------------------------------------------------
;a2                        Allocated to in memory with name '___fsgt_PARM_2'
;a1                        Allocated to in memory with name '___fsgt_a1_1_1'
;fl1                       Allocated to in memory with name '___fsgt_fl1_1_1'
;fl2                       Allocated to in memory with name '___fsgt_fl2_1_1'
;	_fsgt.c 28
;	-----------------------------------------
;	 function __fsgt
;	-----------------------------------------
___fsgt:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	_fsgt.c 0
;	genReceive
	push	acc
	push	b
	push	dph
	push	dpl
	mov	dptr,#___fsgt_a1_1_1
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
;	_fsgt.c 32
;	genAssign
	mov	dptr,#___fsgt_a1_1_1
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
	mov	dptr,#___fsgt_fl1_1_1
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
;	_fsgt.c 33
;	genAssign
	mov	dptr,#___fsgt_PARM_2
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
	mov	dptr,#___fsgt_fl2_1_1
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
;	_fsgt.c 35
;	genPointerGet
;	genFarPointerGet
	mov	dptr,#___fsgt_fl1_1_1
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
;	genCmpLt
;	genCmp
; Peephole 105   removed redundant mov
	mov  r5,a
;	genIfxJump
	jb	acc.7,00114$
	ljmp	00104$
00114$:
;	genPointerGet
;	genFarPointerGet
	mov	dptr,#___fsgt_fl2_1_1
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
;	genCmpLt
;	genCmp
; Peephole 105   removed redundant mov
	mov  r5,a
;	genIfxJump
; Peephole 111   removed ljmp by inverse jump logic
	jnb  acc.7,00104$
00115$:
;	_fsgt.c 36
;	genPointerGet
;	genFarPointerGet
	mov	dptr,#___fsgt_fl2_1_1
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
;	genPointerGet
;	genFarPointerGet
	mov	dptr,#___fsgt_fl1_1_1
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
;	genCmpGt
;	genCmp
	clr	c
	mov	a,r6
	subb	a,r2
	mov	a,r7
	subb	a,r3
	mov	a,r0
	subb	a,r4
	mov	a,r1
	xrl	a,#0x80
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
;	genIfxJump
; Peephole 108   removed ljmp by inverse jump logic
	jnc  00102$
00116$:
;	_fsgt.c 37
;	genRet
	mov	dpl,#0x01
; Peephole 132   changed ljmp to sjmp
	sjmp 00108$
00102$:
;	_fsgt.c 38
;	genRet
	mov	dpl,#0x00
; Peephole 132   changed ljmp to sjmp
	sjmp 00108$
00104$:
;	_fsgt.c 41
;	genPointerGet
;	genFarPointerGet
	mov	dptr,#___fsgt_fl1_1_1
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
;	genPointerGet
;	genFarPointerGet
	mov	dptr,#___fsgt_fl2_1_1
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
;	genCmpGt
;	genCmp
	clr	c
	mov	a,r6
	subb	a,r2
	mov	a,r7
	subb	a,r3
	mov	a,r0
	subb	a,r4
	mov	a,r1
	xrl	a,#0x80
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
;	genIfxJump
; Peephole 108   removed ljmp by inverse jump logic
	jnc  00107$
00117$:
;	_fsgt.c 42
;	genRet
	mov	dpl,#0x01
; Peephole 132   changed ljmp to sjmp
	sjmp 00108$
00107$:
;	_fsgt.c 43
;	genRet
	mov	dpl,#0x00
00108$:
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
