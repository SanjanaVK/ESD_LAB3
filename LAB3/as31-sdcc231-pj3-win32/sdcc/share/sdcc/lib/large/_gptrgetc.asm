;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:10:16 2002

;--------------------------------------------------------
	.module _gptrgetc
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __gptrgetc
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
;Allocation info for local variables in function '_gptrgetc'
;------------------------------------------------------------
;	_gptrgetc.c 26
;	-----------------------------------------
;	 function _gptrgetc
;	-----------------------------------------
__gptrgetc:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	_gptrgetc.c 79
;	genInline
	    ; save values passed
	        xch a,r0
	        push acc
	    ;
	    ; depending on the pointer type acc. to SDCCsymt.h
	    ;
	        mov a,b
	        jz 00001$ ; 0 near
	        dec a
	        jz 00003$ ; 1 far
	        dec a
	        jz 00003$ ; 2 code
	        dec a
	        jz 00004$
	        dec a ; 4 skip generic pointer
	        dec a
	        jz 00001$ ; 5 idata
	    ;
	    ; any other value for type
	    ; return xFF
	        mov a,#0xff
	        sjmp 00005$
	    ;
	    ; Pointer to data space
	    ;
 00001$:
	        mov r0,dpl ; use only low order address
	        mov a,@r0
	        sjmp 00005$
;
; pointer to xternal data
; pointer to code area
;
 00003$:
	        ; clr a is already 0
	        movc a,@a+dptr
	        sjmp 00005$
;
; pointer to xternal stack
;
 00004$:
	        mov r0,dpl
	        movx a,@r0
;
; restore and return
;
 00005$:
	        mov r0,a
	        pop acc
	        xch a,r0
00101$:
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
