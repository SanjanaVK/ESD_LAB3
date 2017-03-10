;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:10:12 2002

;--------------------------------------------------------
	.module _fs2schar
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fs2schar
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
___fs2schar_f_1_1::
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
;Allocation info for local variables in function '__fs2schar'
;------------------------------------------------------------
;f                         Allocated to in memory with name '___fs2schar_f_1_1'
;sl                        Allocated to in memory with name '___fs2schar_sl_1_1'
;	_fs2schar.c 4
;	-----------------------------------------
;	 function __fs2schar
;	-----------------------------------------
___fs2schar:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	_fs2schar.c 0
;	genReceive
	push	acc
	push	b
	push	dph
	push	dpl
	mov	dptr,#___fs2schar_f_1_1
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
;	_fs2schar.c 5
;	genAssign
	mov	dptr,#___fs2schar_f_1_1
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
;	genCall
; Peephole 191   removed redundant mov
	mov  r5,a
	mov  dpl,r2
	mov  dph,r3
	mov  b,r4
	lcall	___fs2slong
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	_fs2schar.c 6
;	genCmpLt
;	genCmp
	clr	c
	mov	a,r2
	subb	a,#0x7F
	mov	a,r3
	subb	a,#0x00
	mov	a,r4
	subb	a,#0x00
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0x80
;	genIfxJump
; Peephole 132   changed ljmp to sjmp
; Peephole 160   removed sjmp by inverse jump logic
	jc   00102$
00109$:
;	_fs2schar.c 7
;	genRet
	mov	dpl,#0x7F
; Peephole 132   changed ljmp to sjmp
	sjmp 00105$
00102$:
;	_fs2schar.c 8
;	genCmpGt
;	genCmp
	clr	c
	mov	a,#0x80
	subb	a,r2
	mov	a,#0xFF
	subb	a,r3
	mov	a,#0xFF
	subb	a,r4
; Peephole 159   avoided xrl during execution
	mov  a,#(0xFF ^ 0x80)
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
;	genIfxJump
; Peephole 132   changed ljmp to sjmp
; Peephole 160   removed sjmp by inverse jump logic
	jc   00104$
00110$:
;	_fs2schar.c 9
;	genRet
	mov	dpl,#0x80
; Peephole 132   changed ljmp to sjmp
	sjmp 00105$
00104$:
;	_fs2schar.c 10
;	genCast
;	genRet
	mov	dpl,r2
00105$:
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
