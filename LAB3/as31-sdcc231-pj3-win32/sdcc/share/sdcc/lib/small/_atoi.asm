;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:09:54 2002

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
_atoi_rv_1_1::
	.ds 2
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
;s                         Allocated to registers r2 r3 r4 
;rv                        Allocated to in memory with name '_atoi_rv_1_1'
;sign                      Allocated to registers r0 
;sloc0                     Allocated to in memory with name '_atoi_sloc0_1_0'
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
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	_atoi.c 27
;	genAssign
	clr	a
	mov	(_atoi_rv_1_1 + 1),a
	mov	_atoi_rv_1_1,a
;	_atoi.c 31
;	genAssign
	mov	ar7,r2
	mov	ar0,r3
	mov	ar1,r4
00107$:
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r7
	mov	dph,r0
	mov	b,r1
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
	inc	r7
	cjne	r7,#0x00,00138$
	inc	r0
00138$:
; Peephole 132   changed ljmp to sjmp
	sjmp 00107$
00109$:
;	_atoi.c 39
;	genAssign
	mov	ar2,r7
	mov	ar3,r0
	mov	ar4,r1
;	genCmpEq
	cjne	r5,#0x2D,00139$
	mov	a,#0x01
	sjmp	00140$
00139$:
	clr	a
00140$:
;	genAssign
;	_atoi.c 40
;	genIfx
; Peephole 166   removed redundant mov
	mov  r7,a
	mov  ar0,r7 
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
;	genPlusIncr
	inc	r2
	cjne	r2,#0x00,00144$
	inc	r3
00144$:
;	_atoi.c 42
00131$:
;	genAssign
00115$:
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
;	genIfx
; Peephole 105   removed redundant mov
	mov  r7,a
;	genIfxJump
	jnz	00145$
	ljmp	00117$
00145$:
;	genCmpLt
;	genCmp
	clr	c
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0xb0
;	genIfxJump
; Peephole 132   changed ljmp to sjmp
; Peephole 160   removed sjmp by inverse jump logic
	jc   00117$
00146$:
;	genCmpGt
;	genCmp
	clr	c
; Peephole 159   avoided xrl during execution
	mov  a,#(0x39 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
;	genIfxJump
; Peephole 132   changed ljmp to sjmp
; Peephole 160   removed sjmp by inverse jump logic
	jc   00117$
00147$:
;	_atoi.c 43
;	genAssign
	clr	a
	mov	(__mulsint_PARM_2 + 1),a
	mov	__mulsint_PARM_2,#0x0A
;	genCall
	mov	dpl,_atoi_rv_1_1
	mov	dph,(_atoi_rv_1_1 + 1)
	push	ar2
	push	ar3
	push	ar4
	push	ar7
	push	ar0
	lcall	__mulsint
	mov	r1,dpl
	mov	r5,dph
	pop	ar0
	pop	ar7
	pop	ar4
	pop	ar3
	pop	ar2
;	genMinus
	mov	a,r7
	add	a,#0xd0
;	genCast
; Peephole 105   removed redundant mov
	mov  r7,a
	rlc	a
	subb	a,acc
	mov	r6,a
;	genPlus
	mov	a,r7
	add	a,r1
	mov	_atoi_rv_1_1,a
	mov	a,r6
	addc	a,r5
	mov	(_atoi_rv_1_1 + 1),a
;	_atoi.c 44
;	genPlus
;	genPlusIncr
	inc	r2
	cjne	r2,#0x00,00148$
	inc	r3
00148$:
	ljmp	00115$
00117$:
;	_atoi.c 47
;	genIfx
	mov	a,r0
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00120$
00149$:
;	genUminus
	clr	c
	clr	a
	subb	a,_atoi_rv_1_1
	mov	r2,a
	clr	a
	subb	a,(_atoi_rv_1_1 + 1)
	mov	r3,a
; Peephole 132   changed ljmp to sjmp
	sjmp 00121$
00120$:
;	genAssign
	mov	r2,_atoi_rv_1_1
	mov	r3,(_atoi_rv_1_1 + 1)
00121$:
;	genRet
	mov	dpl,r2
	mov	dph,r3
00118$:
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
