;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:10:22 2002

;--------------------------------------------------------
	.module gets
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _gets
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
_gets_str_1_1::
	.ds 3
_gets_s_1_1::
	.ds 3
_gets_count_1_1::
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
;Allocation info for local variables in function 'gets'
;------------------------------------------------------------
;str                       Allocated to in memory with name '_gets_str_1_1'
;s                         Allocated to in memory with name '_gets_s_1_1'
;c                         Allocated to in memory with name '_gets_c_1_1'
;count                     Allocated to in memory with name '_gets_count_1_1'
;	gets.c 3
;	-----------------------------------------
;	 function gets
;	-----------------------------------------
_gets:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	gets.c 0
;	genReceive
	push	b
	push	dph
	push	dpl
	mov	dptr,#_gets_str_1_1
	pop	acc
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
;	gets.c 4
;	genAssign
	mov	dptr,#_gets_str_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
;	genAssign
	mov	dptr,#_gets_s_1_1
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
;	gets.c 6
;	genAssign
; Peephole 229   replaced inefficient 16 bit clear
	mov     dptr,#_gets_count_1_1
	clr     a
	movx    @dptr,a
	inc     dptr
	movx    @dptr,a
	mov     dptr,#_gets_count_1_1
;	gets.c 8
00109$:
;	gets.c 9
;	genCall
	lcall	_getchar
	mov	r2,dpl
;	gets.c 10
;	genCmpEq
	cjne	r2,#0x08,00118$
; Peephole 132   changed ljmp to sjmp
	sjmp 00103$
00118$:
;	genCmpEq
	cjne	r2,#0x0A,00119$
	ljmp	00104$
00119$:
;	genCmpEq
	cjne	r2,#0x0D,00120$
	ljmp	00104$
00120$:
	ljmp	00106$
;	gets.c 19
00103$:
;	gets.c 12
;	genAssign
	mov	dptr,#_gets_count_1_1
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
;	genIfx
; Peephole 135   removed redundant mov
	mov  r4,a
	orl  a,r3
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00109$
00121$:
;	gets.c 13
;	genCall
	mov	dpl,#0x08
	push	ar2
	push	ar3
	push	ar4
	lcall	_putchar
	pop	ar4
	pop	ar3
	pop	ar2
;	gets.c 14
;	genCall
	mov	dpl,#0x20
	push	ar2
	push	ar3
	push	ar4
	lcall	_putchar
	pop	ar4
	pop	ar3
	pop	ar2
;	gets.c 15
;	genCall
	mov	dpl,#0x08
	push	ar2
	push	ar3
	push	ar4
	lcall	_putchar
	pop	ar4
	pop	ar3
	pop	ar2
;	gets.c 16
;	genAssign
	mov	dptr,#_gets_s_1_1
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	genMinus
;	genMinusDec
	dec	r5
	cjne	r5,#0xff,00122$
	dec	r6
00122$:
;	genAssign
	mov	dptr,#_gets_s_1_1
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	gets.c 17
;	genMinus
;	genMinusDec
	dec	r3
	cjne	r3,#0xff,00123$
	dec	r4
00123$:
;	genAssign
	mov	dptr,#_gets_count_1_1
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
;	gets.c 19
	ljmp	00109$
;	gets.c 22
00104$:
;	genCall
	mov	dpl,#0x0D
	push	ar2
	lcall	_putchar
	pop	ar2
;	gets.c 23
;	genCall
	mov	dpl,#0x0A
	push	ar2
	lcall	_putchar
	pop	ar2
;	gets.c 24
;	genAssign
	mov	dptr,#_gets_s_1_1
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
; Peephole 180   changed mov to clr
	clr  a
	lcall	__gptrput
;	gets.c 25
;	genAssign
	mov	dptr,#_gets_str_1_1
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;	genRet
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
;	gets.c 27
; Peephole 132   changed ljmp to sjmp
	sjmp 00111$
00106$:
;	genAssign
	mov	dptr,#_gets_s_1_1
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r2
	lcall	__gptrput
;	genPlus
	mov	dptr,#_gets_s_1_1
;	genPlusIncr
	mov	a,#0x01
	add	a,r3
	movx	@dptr,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,r4
	inc	dptr
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
;	gets.c 28
;	genAssign
	mov	dptr,#_gets_count_1_1
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
;	genPlus
	mov	dptr,#_gets_count_1_1
;	genPlusIncr
	mov	a,#0x01
	add	a,r3
	movx	@dptr,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,r4
	inc	dptr
	movx	@dptr,a
;	gets.c 29
;	genCall
	mov	dpl,r2
	lcall	_putchar
;	gets.c 31
	ljmp	00109$
00111$:
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
