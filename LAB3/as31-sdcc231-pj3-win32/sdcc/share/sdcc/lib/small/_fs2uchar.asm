;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:09:55 2002

;--------------------------------------------------------
	.module _fs2uchar
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fs2uchar
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
;Allocation info for local variables in function '__fs2uchar'
;------------------------------------------------------------
;f                         Allocated to registers r2 r3 r4 r5 
;ul                        Allocated to registers r2 r3 r4 r5 
;	_fs2uchar.c 4
;	-----------------------------------------
;	 function __fs2uchar
;	-----------------------------------------
___fs2uchar:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	_fs2uchar.c 0
;	genReceive
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	_fs2uchar.c 5
;	genCall
; Peephole 191   removed redundant mov
	mov  r5,a
	mov  dpl,r2
	mov  dph,r3
	mov  b,r4
	lcall	___fs2ulong
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	genAssign
;	_fs2uchar.c 6
;	genCmpLt
;	genCmp
	clr	c
	mov	a,r2
	subb	a,#0xFF
	mov	a,r3
	subb	a,#0x00
	mov	a,r4
	subb	a,#0x00
	mov	a,r5
	subb	a,#0x00
;	genIfxJump
; Peephole 132   changed ljmp to sjmp
; Peephole 160   removed sjmp by inverse jump logic
	jc   00102$
00106$:
;	genRet
	mov	dpl,#0xFF
; Peephole 132   changed ljmp to sjmp
	sjmp 00103$
00102$:
;	_fs2uchar.c 7
;	genCast
	mov	dpl,r2
;	genRet
00103$:
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
