;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:09:54 2002

;--------------------------------------------------------
	.module _atol
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _atol
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
_atol_s_1_1::
	.ds 3
_atol_rv_1_1::
	.ds 4
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
;Allocation info for local variables in function 'atol'
;------------------------------------------------------------
;s                         Allocated to in memory with name '_atol_s_1_1'
;rv                        Allocated to in memory with name '_atol_rv_1_1'
;sign                      Allocated to registers r6 
;	_atol.c 25
;	-----------------------------------------
;	 function atol
;	-----------------------------------------
_atol:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	_atol.c 47
;	genReceive
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	_atol.c 27
;	genAssign
	clr	a
	mov	(_atol_rv_1_1 + 3),a
	mov	(_atol_rv_1_1 + 2),a
	mov	(_atol_rv_1_1 + 1),a
	mov	_atol_rv_1_1,a
;	_atol.c 31
;	genAssign
	mov	ar1,r2
	mov	ar5,r3
	mov	ar6,r4
00107$:
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r1
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
;	genIfx
; Peephole 105   removed redundant mov
	mov  r7,a
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00109$
00133$:
;	_atol.c 32
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
	jc   00102$
00134$:
;	genCmpLt
;	genCmp
	clr	c
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0xb0
;	genIfxJump
; Peephole 108   removed ljmp by inverse jump logic
	jnc  00109$
00135$:
;	_atol.c 33
00102$:
;	_atol.c 34
;	genCmpEq
	cjne	r7,#0x2D,00136$
; Peephole 132   changed ljmp to sjmp
	sjmp 00109$
00136$:
;	genCmpEq
	cjne	r7,#0x2B,00137$
; Peephole 132   changed ljmp to sjmp
	sjmp 00109$
00137$:
;	_atol.c 36
;	genPlus
;	genPlusIncr
	inc	r1
	cjne	r1,#0x00,00138$
	inc	r5
00138$:
; Peephole 132   changed ljmp to sjmp
	sjmp 00107$
00109$:
;	_atol.c 39
;	genAssign
	mov	ar2,r1
	mov	ar3,r5
	mov	ar4,r6
;	genCmpEq
	cjne	r7,#0x2D,00139$
	mov	a,#0x01
	sjmp	00140$
00139$:
	clr	a
00140$:
;	genAssign
;	_atol.c 40
;	genIfx
; Peephole 166   removed redundant mov
	mov  r5,a
	mov  ar6,r5 
;	genIfxJump
; Peephole 109   removed ljmp by inverse jump logic
	jnz  00110$
00141$:
;	genCmpEq
; Peephole 132   changed ljmp to sjmp
; Peephole 199   optimized misc jump sequence
	cjne r7,#0x2B,00131$
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
;	_atol.c 42
00131$:
;	genAssign
	mov	_atol_s_1_1,r2
	mov	(_atol_s_1_1 + 1),r3
	mov	(_atol_s_1_1 + 2),r4
00115$:
;	genPointerGet
;	genGenPointerGet
	mov	dpl,_atol_s_1_1
	mov	dph,(_atol_s_1_1 + 1)
	mov	b,(_atol_s_1_1 + 2)
	lcall	__gptrget
;	genIfx
; Peephole 105   removed redundant mov
	mov  r5,a
;	genIfxJump
	jnz	00145$
	ljmp	00117$
00145$:
;	genCmpLt
;	genCmp
	clr	c
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0xb0
;	genIfxJump
	jnc	00146$
	ljmp	00117$
00146$:
;	genCmpGt
;	genCmp
	clr	c
; Peephole 159   avoided xrl during execution
	mov  a,#(0x39 ^ 0x80)
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
;	genIfxJump
	jnc	00147$
	ljmp	00117$
00147$:
;	_atol.c 43
;	genIpush
	push	ar6
;	genAssign
	clr	a
	mov	(__mulslong_PARM_2 + 3),a
	mov	(__mulslong_PARM_2 + 2),a
	mov	(__mulslong_PARM_2 + 1),a
	mov	__mulslong_PARM_2,#0x0A
;	genCall
	mov	dpl,_atol_rv_1_1
	mov	dph,(_atol_rv_1_1 + 1)
	mov	b,(_atol_rv_1_1 + 2)
	mov	a,(_atol_rv_1_1 + 3)
	push	ar5
	push	ar6
	lcall	__mulslong
	mov	r7,dpl
	mov	r0,dph
	mov	r1,b
	mov	r2,a
	pop	ar6
	pop	ar5
;	genMinus
	mov	a,r5
	add	a,#0xd0
;	genCast
; Peephole 166   removed redundant mov
	mov  r5,a
	mov  ar3,r5 
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	r5,a
	mov	r6,a
;	genPlus
	mov	a,r3
	add	a,r7
	mov	_atol_rv_1_1,a
	mov	a,r4
	addc	a,r0
	mov	(_atol_rv_1_1 + 1),a
	mov	a,r5
	addc	a,r1
	mov	(_atol_rv_1_1 + 2),a
	mov	a,r6
	addc	a,r2
	mov	(_atol_rv_1_1 + 3),a
;	_atol.c 44
;	genPlus
;	genPlusIncr
	inc	_atol_s_1_1
	clr	a
	cjne	a,_atol_s_1_1,00148$
	inc	(_atol_s_1_1 + 1)
00148$:
;	genIpop
	pop	ar6
	ljmp	00115$
00117$:
;	_atol.c 47
;	genIfx
	mov	a,r6
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00120$
00149$:
;	genUminus
	clr	c
	clr	a
	subb	a,_atol_rv_1_1
	mov	r2,a
	clr	a
	subb	a,(_atol_rv_1_1 + 1)
	mov	r3,a
	clr	a
	subb	a,(_atol_rv_1_1 + 2)
	mov	r4,a
	clr	a
	subb	a,(_atol_rv_1_1 + 3)
	mov	r5,a
; Peephole 132   changed ljmp to sjmp
	sjmp 00121$
00120$:
;	genAssign
	mov	r2,_atol_rv_1_1
	mov	r3,(_atol_rv_1_1 + 1)
	mov	r4,(_atol_rv_1_1 + 2)
	mov	r5,(_atol_rv_1_1 + 3)
00121$:
;	genRet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
00118$:
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
