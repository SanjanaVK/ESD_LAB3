;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:10:17 2002

;--------------------------------------------------------
	.module _memcmp
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _memcmp_PARM_3
	.globl _memcmp_PARM_2
	.globl _memcmp
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
_memcmp_PARM_2::
	.ds 3
_memcmp_PARM_3::
	.ds 2
_memcmp_buf1_1_1::
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
;Allocation info for local variables in function 'memcmp'
;------------------------------------------------------------
;buf2                      Allocated to in memory with name '_memcmp_PARM_2'
;count                     Allocated to in memory with name '_memcmp_PARM_3'
;buf1                      Allocated to in memory with name '_memcmp_buf1_1_1'
;	_memcmp.c 26
;	-----------------------------------------
;	 function memcmp
;	-----------------------------------------
_memcmp:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	_memcmp.c 0
;	genReceive
	push	b
	push	dph
	push	dpl
	mov	dptr,#_memcmp_buf1_1_1
	pop	acc
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
;	_memcmp.c 32
;	genAssign
	mov	dptr,#_memcmp_PARM_3
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
	jnz  00112$
00113$:
;	_memcmp.c 33
;	genRet
; Peephole 181   used 16 bit load of dptr
	mov  dptr,#0x0000
	ljmp	00107$
;	_memcmp.c 35
00112$:
;	genAssign
	mov	dptr,#_memcmp_buf1_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
;	genAssign
	mov	dptr,#_memcmp_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
00104$:
;	genMinus
	mov	dptr,#_memcmp_PARM_3
;	genMinusDec
	movx	a,@dptr
	add	a,#0xff
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0xff
	mov	r1,a
;	genAssign
	mov	dptr,#_memcmp_PARM_3
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
	jz  00106$
00114$:
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
;	genCmpEq
	mov	a,r0
; Peephole 132   changed ljmp to sjmp
; Peephole 199   optimized misc jump sequence
	cjne a,ar1,00106$
;00115$:
; Peephole 200   removed redundant sjmp
00116$:
;	_memcmp.c 36
;	genPlus
;	genPlusIncr
	inc	r2
	cjne	r2,#0x00,00117$
	inc	r3
00117$:
;	genAssign
	mov	dptr,#_memcmp_buf1_1_1
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
;	_memcmp.c 37
;	genPlus
;	genPlusIncr
;	tail increment optimized
	inc	r5
	cjne	r5,#0x00,00104$
	inc	r6
	ljmp	00104$
00106$:
;	_memcmp.c 40
;	genAssign
	mov	dptr,#_memcmp_buf1_1_1
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
	mov	r2,a
;	genCast
	mov	r3,#0x00
;	genRet
	mov	dpl,r2
	mov	dph,r3
00107$:
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
