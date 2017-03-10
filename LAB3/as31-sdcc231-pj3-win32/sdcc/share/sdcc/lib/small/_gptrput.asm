;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:09:57 2002

;--------------------------------------------------------
	.module _gptrput
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __gptrput
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
;Allocation info for local variables in function '_gptrput'
;------------------------------------------------------------
;	_gptrput.c 26
;	-----------------------------------------
;	 function _gptrput
;	-----------------------------------------
__gptrput:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	_gptrput.c 75
;	genInline
	        xch a,r0
	        push acc
	        xch a,r0
	        push acc
	    ;
	    ; depending on the pointer type acc. to SDCCsymt.h
	    ;
	        mov a,b
	        jz 00001$ ; 0 near
	        dec a
	        jz 00002$ ; 1 far
	        dec a
	        jz 00003$ ; 2 code
	        dec a
	        jz 00004$
	        dec a ; 4 skip generic pointer
	        dec a
	        jz 00001$ ; 5 idata
	        pop acc
	        sjmp 00005$
;
; store into near space
;
 00001$:
	        pop acc
	        mov r0,dpl
	        mov @r0,a
	        sjmp 00005$
 00002$:
	        pop acc
	        movx @dptr,a
	        sjmp 00005$
 00003$:
	        pop acc ; do nothing
	        sjmp 00005$
 00004$:
	        pop acc
	        mov r0,dpl
	        movx @r0,a
 00005$:
	        xch a,r0
	        pop acc
	        xch a,r0
00101$:
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
