;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:09:58 2002

;--------------------------------------------------------
	.module _modsint
	
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
;Allocation info for local variables in function '_modsint_dummy'
;------------------------------------------------------------
;	_modsint.c 52
;	-----------------------------------------
;	 function _modsint_dummy
;	-----------------------------------------
__modsint_dummy:
;	naked function: no prologue.
;	_modsint.c 117
;	genInline
	                .globl __modsint
        __modsint:
	                                        ; dph in dph
	                                        ; (__modsint_PARM_2 + 1) in (__modsint_PARM_2 + 1)
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
	                mov a,(__modsint_PARM_2 + 1)
	                jnb acc.7,b_not_negative
	                cpl F0
	                clr a
	                clr c
	                subb a,(__modsint_PARM_2)
	                mov (__modsint_PARM_2),a
	                clr a
	                subb a,(__modsint_PARM_2 + 1)
	                mov (__modsint_PARM_2 + 1),a
        b_not_negative:
	                lcall __moduint
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
