;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:10:11 2002

;--------------------------------------------------------
	.module _atoi
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _atoi
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
_atoi_s_1_1::
	.ds 3
_atoi_rv_1_1::
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
;Allocation info for local variables in function 'atoi'
;------------------------------------------------------------
;s                         Allocated to in memory with name '_atoi_s_1_1'
;rv                        Allocated to in memory with name '_atoi_rv_1_1'
;sign                      Allocated to in memory with name '_atoi_sign_1_1'
;	_atoi.c 25
;	-----------------------------------------
;	 function atoi
;	-----------------------------------------
_atoi:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	_atoi.c 47
;	genReceive
	push	b
	push	dph
	push	dpl
	mov	dptr,#_atoi_s_1_1
	pop	acc
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
;	_atoi.c 27
;	genAssign
; Peephole 229   replaced inefficient 16 bit clear
	mov     dptr,#_atoi_rv_1_1
	clr     a
	movx    @dptr,a
	inc     dptr
	movx    @dptr,a
;	_atoi.c 31
;	genAssign
; Peephole 231   removed redundant mov to dptr
	mov     dptr,#_atoi_s_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
00107$:
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
;	genIfx
; Peephole 105   removed redundant mov
	mov  r5,a
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00109$
00133$:
;	_atoi.c 32
;	genCmpGt
;	genCmp
	clr	c
; Peephole 159   avoided xrl during execution
	mov  a,#(0x39 ^ 0x80)
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
;	genIfxJump
; Peephole 132   changed ljmp to sjmp
; Peephole 160   removed sjmp by inverse jump logic
	jc   00102$
00134$:
;	genCmpLt
;	genCmp
	clr	c
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0xb0
;	genIfxJump
; Peephole 108   removed ljmp by inverse jump logic
	jnc  00109$
00135$:
;	_atoi.c 33
00102$:
;	_atoi.c 34
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
;	genCmpEq
	cjne	r5,#0x2D,00136$
; Peephole 132   changed ljmp to sjmp
	sjmp 00109$
00136$:
;	genCmpEq
	cjne	r5,#0x2B,00137$
; Peephole 132   changed ljmp to sjmp
	sjmp 00109$
00137$:
;	_atoi.c 36
;	genPlus
;	genPlusIncr
	inc	r2
	cjne	r2,#0x00,00138$
	inc	r3
00138$:
;	genAssign
	mov	dptr,#_atoi_s_1_1
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
; Peephole 132   changed ljmp to sjmp
	sjmp 00107$
00109$:
;	_atoi.c 39
;	genAssign
	mov	dptr,#_atoi_s_1_1
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
;	genCmpEq
	cjne	r5,#0x2D,00139$
	mov	a,#0x01
	sjmp	00140$
00139$:
	clr	a
00140$:
;	_atoi.c 40
;	genIfx
; Peephole 105   removed redundant mov
	mov  r6,a
;	genIfxJump
; Peephole 109   removed ljmp by inverse jump logic
	jnz  00110$
00141$:
;	genCmpEq
; Peephole 132   changed ljmp to sjmp
; Peephole 199   optimized misc jump sequence
	cjne r5,#0x2B,00131$
;00142$:
; Peephole 200   removed redundant sjmp
00143$:
00110$:
;	genPlus
	mov	dptr,#_atoi_s_1_1
;	genPlusIncr
	mov	a,#0x01
	add	a,r2
	movx	@dptr,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,r3
	inc	dptr
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
;	_atoi.c 42
00131$:
;	genAssign
	mov	dptr,#_atoi_s_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
00115$:
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
;	genIfx
; Peephole 105   removed redundant mov
	mov  r5,a
;	genIfxJump
	jnz	00144$
	ljmp	00117$
00144$:
;	genCmpLt
;	genCmp
	clr	c
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0xb0
;	genIfxJump
	jnc	00145$
	ljmp	00117$
00145$:
;	genCmpGt
;	genCmp
	clr	c
; Peephole 159   avoided xrl during execution
	mov  a,#(0x39 ^ 0x80)
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
;	genIfxJump
	jnc	00146$
	ljmp	00117$
00146$:
;	_atoi.c 43
;	genAssign
	mov	dptr,#_atoi_rv_1_1
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
;	genAssign
; Peephole 230   replaced inefficient 16 constant
	mov     dptr,#__mulsint_PARM_2
	mov     a,#0x0A
	movx    @dptr,a
	inc     dptr
	clr     a
	movx    @dptr,a
	mov     dptr,#__mulsint_PARM_2
;	genCall
	mov	dpl,r7
	mov	dph,r0
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	lcall	__mulsint
	mov	r7,dpl
	mov	r0,dph
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genMinus
	mov	a,r5
	add	a,#0xd0
;	genCast
; Peephole 105   removed redundant mov
	mov  r5,a
	rlc	a
	subb	a,acc
	mov	r1,a
;	genPlus
	mov	dptr,#_atoi_rv_1_1
	mov	a,r5
	add	a,r7
	movx	@dptr,a
	mov	a,r1
	addc	a,r0
	inc	dptr
	movx	@dptr,a
;	_atoi.c 44
;	genPlus
;	genPlusIncr
	inc	r2
	cjne	r2,#0x00,00147$
	inc	r3
00147$:
;	genAssign
	mov	dptr,#_atoi_s_1_1
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	ljmp	00115$
00117$:
;	_atoi.c 47
;	genAssign
	mov	dptr,#_atoi_s_1_1
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
;	genIfx
	mov	a,r6
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00120$
00148$:
;	genAssign
	mov	dptr,#_atoi_rv_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;	genUminus
	clr	c
	clr	a
	subb	a,r2
	mov	r2,a
	clr	a
	subb	a,r3
	mov	r3,a
; Peephole 132   changed ljmp to sjmp
	sjmp 00121$
00120$:
;	genAssign
	mov	dptr,#_atoi_rv_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
00121$:
;	genRet
	mov	dpl,r2
	mov	dph,r3
00118$:
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
