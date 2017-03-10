;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:10:19 2002

;--------------------------------------------------------
	.module _strncmp
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strncmp_PARM_3
	.globl _strncmp_PARM_2
	.globl _strncmp
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
_strncmp_PARM_2::
	.ds 3
_strncmp_PARM_3::
	.ds 2
_strncmp_first_1_1::
	.ds 3
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
;Allocation info for local variables in function 'strncmp'
;------------------------------------------------------------
;last                      Allocated to in memory with name '_strncmp_PARM_2'
;count                     Allocated to in memory with name '_strncmp_PARM_3'
;first                     Allocated to in memory with name '_strncmp_first_1_1'
;	_strncmp.c 27
;	-----------------------------------------
;	 function strncmp
;	-----------------------------------------
_strncmp:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	_strncmp.c 0
;	genReceive
	push	b
	push	dph
	push	dpl
	mov	dptr,#_strncmp_first_1_1
	pop	acc
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
;	_strncmp.c 33
;	genAssign
	mov	dptr,#_strncmp_PARM_3
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
;	genIfx
; Peephole 135   removed redundant mov
	mov  r3,a
	orl  a,r2
;	genIfxJump
; Peephole 109   removed ljmp by inverse jump logic
	jnz  00114$
00115$:
;	_strncmp.c 34
;	genRet
; Peephole 181   used 16 bit load of dptr
	mov  dptr,#0x0000
	ljmp	00108$
;	_strncmp.c 36
00114$:
;	genAssign
	mov	dptr,#_strncmp_first_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
;	genAssign
	mov	dptr,#_strncmp_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
00105$:
;	genMinus
	mov	dptr,#_strncmp_PARM_3
;	genMinusDec
	movx	a,@dptr
	add	a,#0xff
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0xff
	mov	r1,a
;	genAssign
	mov	dptr,#_strncmp_PARM_3
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
;	genIfx
	mov	a,r0
	orl	a,r1
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00107$
00116$:
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
;	genIfx
; Peephole 105   removed redundant mov
	mov  r0,a
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00107$
00117$:
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r1,a
;	genCmpEq
	mov	a,r0
; Peephole 132   changed ljmp to sjmp
; Peephole 199   optimized misc jump sequence
	cjne a,ar1,00107$
;00118$:
; Peephole 200   removed redundant sjmp
00119$:
;	_strncmp.c 37
;	genPlus
;	genPlusIncr
	inc	r2
	cjne	r2,#0x00,00120$
	inc	r3
00120$:
;	genAssign
	mov	dptr,#_strncmp_first_1_1
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
;	_strncmp.c 38
;	genPlus
;	genPlusIncr
	inc	r5
	cjne	r5,#0x00,00121$
	inc	r6
00121$:
	ljmp	00105$
00107$:
;	_strncmp.c 41
;	genAssign
	mov	dptr,#_strncmp_first_1_1
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
	mov	r2,a
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
;	genMinus
	clr	c
	mov	a,r2
	subb	a,r5
;	genCast
; Peephole 105   removed redundant mov
	mov  r2,a
	rlc	a
	subb	a,acc
	mov	r3,a
;	genRet
	mov	dpl,r2
	mov	dph,r3
00108$:
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
