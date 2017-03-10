;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:10:01 2002

;--------------------------------------------------------
	.module _uint2fs
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___uint2fs
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
;Allocation info for local variables in function '__uint2fs'
;------------------------------------------------------------
;ui                        Allocated to registers r2 r3 
;	_uint2fs.c 4
;	-----------------------------------------
;	 function __uint2fs
;	-----------------------------------------
___uint2fs:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	_uint2fs.c 5
;	genReceive
	mov	r2,dpl
	mov	r3,dph
;	genCast
	mov	r4,#0x00
	mov	r5,#0x00
;	genCall
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___ulong2fs
;	genRet
; Peephole 156   removed misc moves via dph, dpl, b, a before return
00101$:
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)