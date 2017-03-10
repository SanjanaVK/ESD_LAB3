;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:10:17 2002

;--------------------------------------------------------
	.module _slong2fs
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___slong2fs
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
___slong2fs_sl_1_1::
	.ds 4
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
;Allocation info for local variables in function '__slong2fs'
;------------------------------------------------------------
;sl                        Allocated to in memory with name '___slong2fs_sl_1_1'
;	_slong2fs.c 4
;	-----------------------------------------
;	 function __slong2fs
;	-----------------------------------------
___slong2fs:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	_slong2fs.c 0
;	genReceive
	push	acc
	push	b
	push	dph
	push	dpl
	mov	dptr,#___slong2fs_sl_1_1
	pop	acc
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
;	_slong2fs.c 5
;	genAssign
	mov	dptr,#___slong2fs_sl_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
;	genCmpLt
;	genCmp
; Peephole 105   removed redundant mov
	mov  r5,a
;	genIfxJump
; Peephole 111   removed ljmp by inverse jump logic
	jnb  acc.7,00102$
00107$:
;	_slong2fs.c 6
;	genUminus
	clr	c
	clr	a
	subb	a,r2
	mov	r6,a
	clr	a
	subb	a,r3
	mov	r7,a
	clr	a
	subb	a,r4
	mov	r0,a
	clr	a
	subb	a,r5
;	genCall
; Peephole 191   removed redundant mov
	mov  r1,a
	mov  dpl,r6
	mov  dph,r7
	mov  b,r0
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	___ulong2fs
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genUminus
;	genUminusFloat
	mov	a,r1
	cpl	acc.7
;	genRet
; Peephole 191   removed redundant mov
	mov  r1,a
	mov  dpl,r6
	mov  dph,r7
	mov  b,r0
; Peephole 132   changed ljmp to sjmp
	sjmp 00104$
00102$:
;	_slong2fs.c 8
;	genCall
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___ulong2fs
;	genRet
; Peephole 156   removed misc moves via dph, dpl, b, a before return
00104$:
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
