;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:09:54 2002

;--------------------------------------------------------
	.module _divuint
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
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
;Allocation info for local variables in function '_divuint_dummy'
;------------------------------------------------------------
;	_divuint.c 45
;	-----------------------------------------
;	 function _divuint_dummy
;	-----------------------------------------
__divuint_dummy:
;	naked function: no prologue.
;	_divuint.c 105
;	genInline
	                .globl __divuint
        __divuint:
;	#line 84 "_divuint.c"
	                .area OSEG (OVR,DATA)
	                .globl __divuint_PARM_2
	                .globl __divsint_PARM_2
        __divuint_PARM_2:
        __divsint_PARM_2:
	                .ds 2
	                .area CSEG (CODE)
	                mov r2,#16
	                clr a
	                mov r3,a
	                mov r4,a
        loop:
	mov a,dpl ; a <<= 1
	                add a,acc
	                mov dpl,a
	                mov a,dph
	                rlc a
	                mov dph,a
	                mov a,r3 ; reste <<= 1
	                rlc a ; feed in carry
	                mov r3,a
	                mov a,r4
	                rlc a
	                mov r4,a
	                mov a,r3 ; reste - b
	                subb a,(__divuint_PARM_2) ; here carry is always clear, because
	                                        ; reste <<= 1 never overflows
	                mov b,a
	                mov a,r4
	                subb a,(__divuint_PARM_2 + 1)
	                jc smaller ; reste >= b?
	                mov r4,a ; -> yes; reste = reste - b;
	                mov r3,b
	                orl dpl,#1
        smaller:
; -> no
	                djnz r2,loop
	                ret
00101$:
;	naked function: no epilogue.
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
