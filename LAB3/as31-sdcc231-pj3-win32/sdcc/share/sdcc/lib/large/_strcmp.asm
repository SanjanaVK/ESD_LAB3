;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:10:19 2002

;--------------------------------------------------------
	.module _strcmp
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strcmp_PARM_2
	.globl _strcmp
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
_strcmp_sloc0_1_0::
	.ds 2
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
_strcmp_PARM_2::
	.ds 3
_strcmp_asrc_1_1::
	.ds 3
_strcmp_ret_1_1::
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
;Allocation info for local variables in function 'strcmp'
;------------------------------------------------------------
;adst                      Allocated to in memory with name '_strcmp_PARM_2'
;asrc                      Allocated to in memory with name '_strcmp_asrc_1_1'
;ret                       Allocated to in memory with name '_strcmp_ret_1_1'
;	_strcmp.c 31
;	-----------------------------------------
;	 function strcmp
;	-----------------------------------------
_strcmp:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	_strcmp.c 58
;	genReceive
	push	b
	push	dph
	push	dpl
	mov	dptr,#_strcmp_asrc_1_1
	pop	acc
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
;	_strcmp.c 50
;	genAssign
	mov	dptr,#_strcmp_asrc_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
;	genAssign
	mov	dptr,#_strcmp_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
00102$:
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r1,a
;	genMinus
	clr	c
	mov	a,r0
	subb	a,r1
;	genCast
; Peephole 166   removed redundant mov
	mov  r0,a
	mov  _strcmp_sloc0_1_0,r0 
	rlc	a
	subb	a,acc
	mov	(_strcmp_sloc0_1_0 + 1),a
;	genAssign
	mov	dptr,#_strcmp_ret_1_1
	mov	a,_strcmp_sloc0_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(_strcmp_sloc0_1_0 + 1)
	movx	@dptr,a
;	genIfx
	mov	a,r0
;	genIfxJump
; Peephole 109   removed ljmp by inverse jump logic
	jnz  00104$
00117$:
;	genIfx
	mov	a,r1
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00104$
00118$:
;	_strcmp.c 51
;	genPlus
;	genPlusIncr
	inc	r2
	cjne	r2,#0x00,00119$
	inc	r3
00119$:
;	genAssign
	mov	dptr,#_strcmp_asrc_1_1
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
;	genPlus
;	genPlusIncr
;	tail increment optimized
	inc	r5
	cjne	r5,#0x00,00102$
	inc	r6
	ljmp	00102$
00104$:
;	_strcmp.c 53
;	genAssign
	mov	dptr,#_strcmp_asrc_1_1
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
;	genCmpLt
;	genCmp
	mov	a,(_strcmp_sloc0_1_0 + 1)
;	genIfxJump
; Peephole 111   removed ljmp by inverse jump logic
	jnb  acc.7,00108$
00120$:
;	_strcmp.c 54
;	genAssign
	mov	dptr,#_strcmp_ret_1_1
; Peephole 101   removed redundant mov
	mov  a,#0xFF
	movx @dptr,a
	inc  dptr
	movx @dptr,a
; Peephole 132   changed ljmp to sjmp
	sjmp 00109$
00108$:
;	_strcmp.c 55
;	genCmpGt
;	genCmp
	clr	c
; Peephole 180   changed mov to clr
	clr  a
	subb	a,_strcmp_sloc0_1_0
; Peephole 159   avoided xrl during execution
	mov  a,#(0x00 ^ 0x80)
	mov	b,(_strcmp_sloc0_1_0 + 1)
	xrl	b,#0x80
	subb	a,b
;	genIfxJump
; Peephole 108   removed ljmp by inverse jump logic
	jnc  00109$
00121$:
;	_strcmp.c 56
;	genAssign
; Peephole 230   replaced inefficient 16 constant
	mov     dptr,#_strcmp_ret_1_1
	mov     a,#0x01
	movx    @dptr,a
	inc     dptr
	clr     a
	movx    @dptr,a
	mov     dptr,#_strcmp_ret_1_1
00109$:
;	_strcmp.c 58
;	genAssign
	mov	dptr,#_strcmp_ret_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;	genRet
	mov	dpl,r2
	mov	dph,r3
00110$:
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
