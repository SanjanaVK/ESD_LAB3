;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:09:54 2002

;--------------------------------------------------------
	.module _divsint
	
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
;Allocation info for local variables in function '_divsint_dummy'
;------------------------------------------------------------
;	_divsint.c 53
;	-----------------------------------------
;	 function _divsint_dummy
;	-----------------------------------------
__divsint_dummy:
;	naked function: no prologue.
;	_divsint.c 118
;	genInline
	                .globl __divsint
        __divsint:
	                                        ; dph in dph
	                                        ; (__divsint_PARM_2 + 1) in (__divsint_PARM_2 + 1)
	                clr F0 ; Flag 0 in PSW
	                                        ; available to user for general purpose
	                mov a,dph
	                jnb acc.7,a_not_negative
	                setb F0
	                clr a
	                clr c
	                subb a,dpl
	                mov dpl,a
	                clr a
	                subb a,dph
	                mov dph,a
        a_not_negative:
	                mov a,(__divsint_PARM_2 + 1)
	                jnb acc.7,b_not_negative
	                cpl F0
	                clr a
	                clr c
	                subb a,(__divsint_PARM_2)
	                mov (__divsint_PARM_2),a
	                clr a
	                subb a,(__divsint_PARM_2 + 1)
	                mov (__divsint_PARM_2 + 1),a
        b_not_negative:
	                lcall __divuint
	                jnb F0,not_negative
	                clr a
	                clr c
	                subb a,dpl
	                mov dpl,a
	                clr a
	                subb a,dph
	                mov dph,a
        not_negative:
	                ret
00101$:
;	naked function: no epilogue.
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
