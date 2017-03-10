;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:10:03 2002

;--------------------------------------------------------
	.module puts
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _puts
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
;Allocation info for local variables in function 'puts'
;------------------------------------------------------------
;s                         Allocated to registers r2 r3 r4 
;i                         Allocated to registers 
;	puts.c 27
;	-----------------------------------------
;	 function puts
;	-----------------------------------------
_puts:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	puts.c 35
;	genReceive
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	puts.c 30
;	genAssign
;	genAssign
	mov	r5,#0x00
	mov	r6,#0x00
00101$:
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
; Peephole 110   removed ljmp by inverse jump logic
	jz  00103$
00108$:
;	puts.c 31
;	genPlus
;	genPlusIncr
	inc	r2
	cjne	r2,#0x00,00109$
	inc	r3
00109$:
;	genCall
	mov	dpl,r7
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	lcall	_putchar
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	puts.c 32
;	genPlus
;	genPlusIncr
;	tail increment optimized
	inc	r5
	cjne	r5,#0x00,00101$
	inc	r6
; Peephole 132   changed ljmp to sjmp
	sjmp 00101$
00103$:
;	puts.c 34
;	genCall
	mov	dpl,#0x0A
	push	ar5
	push	ar6
	lcall	_putchar
	pop	ar6
	pop	ar5
;	puts.c 35
;	genPlus
;	genPlusIncr
	mov	a,#0x01
	add	a,r5
	mov	dpl,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,r6
	mov	dph,a
;	genRet
00104$:
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
