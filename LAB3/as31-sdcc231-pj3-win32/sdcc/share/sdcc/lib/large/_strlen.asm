;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:10:19 2002

;--------------------------------------------------------
	.module _strlen
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strlen
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
_strlen_str_1_1::
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
;Allocation info for local variables in function 'strlen'
;------------------------------------------------------------
;str                       Allocated to in memory with name '_strlen_str_1_1'
;i                         Allocated to in memory with name '_strlen_i_1_1'
;	_strlen.c 27
;	-----------------------------------------
;	 function strlen
;	-----------------------------------------
_strlen:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	_strlen.c 34
;	genReceive
	push	b
	push	dph
	push	dpl
	mov	dptr,#_strlen_str_1_1
	pop	acc
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
;	_strlen.c 31
;	genAssign
	mov	r2,#0x00
	mov	r3,#0x00
;	genAssign
	mov	dptr,#_strlen_str_1_1
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
00101$:
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r7,a
;	genPlus
;	genPlusIncr
	inc	r4
	cjne	r4,#0x00,00108$
	inc	r5
00108$:
;	genAssign
	mov	dptr,#_strlen_str_1_1
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
;	genIfx
	mov	a,r7
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00103$
00109$:
;	_strlen.c 32
;	genPlus
;	genPlusIncr
;	tail increment optimized
	inc	r2
	cjne	r2,#0x00,00101$
	inc	r3
; Peephole 132   changed ljmp to sjmp
	sjmp 00101$
00103$:
;	_strlen.c 34
;	genRet
	mov	dpl,r2
	mov	dph,r3
00104$:
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
