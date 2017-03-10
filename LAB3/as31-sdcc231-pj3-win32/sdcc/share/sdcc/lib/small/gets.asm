;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:10:03 2002

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
_gets_str_1_1::
	.ds 3
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
;Allocation info for local variables in function 'gets'
;------------------------------------------------------------
;str                       Allocated to in memory with name '_gets_str_1_1'
;s                         Allocated to registers r5 r6 r7 
;c                         Allocated to registers r2 
;count                     Allocated to registers r0 r1 
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
	mov	_gets_str_1_1,dpl
	mov	(_gets_str_1_1 + 1),dph
	mov	(_gets_str_1_1 + 2),b
;	gets.c 4
;	genAssign
	mov	r5,_gets_str_1_1
	mov	r6,(_gets_str_1_1 + 1)
	mov	r7,(_gets_str_1_1 + 2)
;	gets.c 6
;	genAssign
	mov	r0,#0x00
	mov	r1,#0x00
;	gets.c 8
00109$:
;	gets.c 9
;	genCall
	push	ar5
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	lcall	_getchar
	mov	a,dpl
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
	pop	ar5
;	genAssign
	mov	r2,a
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
;	genIfx
	mov	a,r0
	orl	a,r1
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00109$
00121$:
;	gets.c 13
;	genCall
	mov	dpl,#0x08
	push	ar2
	push	ar5
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	lcall	_putchar
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar2
;	gets.c 14
;	genCall
	mov	dpl,#0x20
	push	ar2
	push	ar5
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	lcall	_putchar
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar2
;	gets.c 15
;	genCall
	mov	dpl,#0x08
	push	ar2
	push	ar5
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	lcall	_putchar
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar2
;	gets.c 16
;	genMinus
;	genMinusDec
	dec	r5
	cjne	r5,#0xff,00122$
	dec	r6
00122$:
;	gets.c 17
;	genMinus
;	genMinusDec
	dec	r0
	cjne	r0,#0xff,00123$
	dec	r1
00123$:
;	gets.c 19
	ljmp	00109$
;	gets.c 22
00104$:
;	genCall
	mov	dpl,#0x0D
	push	ar2
	push	ar5
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	lcall	_putchar
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar2
;	gets.c 23
;	genCall
	mov	dpl,#0x0A
	push	ar2
	push	ar5
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	lcall	_putchar
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar2
;	gets.c 24
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
; Peephole 180   changed mov to clr
	clr  a
	lcall	__gptrput
;	gets.c 25
;	genRet
	mov	dpl,_gets_str_1_1
	mov	dph,(_gets_str_1_1 + 1)
	mov	b,(_gets_str_1_1 + 2)
;	gets.c 27
; Peephole 132   changed ljmp to sjmp
	sjmp 00111$
00106$:
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	gets.c 28
;	genPlus
;	genPlusIncr
	inc	r0
	cjne	r0,#0x00,00124$
	inc	r1
00124$:
;	gets.c 29
;	genCall
	mov	dpl,r2
	push	ar5
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	lcall	_putchar
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
	pop	ar5
;	gets.c 31
	ljmp	00109$
00111$:
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
