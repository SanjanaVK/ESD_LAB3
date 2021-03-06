;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:09:54 2002

;--------------------------------------------------------
	.module _divslong
	
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
;Allocation info for local variables in function '_divslong_dummy'
;------------------------------------------------------------
;	_divslong.c 52
;	-----------------------------------------
;	 function _divslong_dummy
;	-----------------------------------------
__divslong_dummy:
;	naked function: no prologue.
;	_divslong.c 136
;	genInline
	                .globl __divslong
;	#line 70 "_divslong.c"
        __divslong:
	                                        ; r3 in acc
	                                        ; (__divslong_PARM_2 + 3) in (__divslong_PARM_2 + 3)
	                mov r3,a ; save r3
	                clr F0 ; Flag 0 in PSW
	                                        ; available to user for general purpose
	                jnb acc.7,a_not_negative
	                setb F0
	                clr a
	                clr c
	                subb a,dpl
	                mov dpl,a
	                clr a
	                subb a,dph
	                mov dph,a
	                clr a
	                subb a,b
	                mov b,a
	                clr a
	                subb a,r3
	                mov r3,a
        a_not_negative:
	                mov a,(__divslong_PARM_2 + 3)
	                jnb acc.7,b_not_negative
	                cpl F0
	                clr a
	                clr c
	                subb a,(__divslong_PARM_2)
	                mov (__divslong_PARM_2),a
	                clr a
	                subb a,(__divslong_PARM_2 + 1)
	                mov (__divslong_PARM_2 + 1),a
	                clr a
	                subb a,(__divslong_PARM_2 + 2)
	                mov (__divslong_PARM_2 + 2),a
	                clr a
	                subb a,(__divslong_PARM_2 + 3)
	                mov (__divslong_PARM_2 + 3),a
        b_not_negative:
	                mov a,r3 ; restore r3 in acc
	                lcall __divulong
	                jnb F0,not_negative
	                mov r3,a ; save r3
	                clr a
	                clr c
	                subb a,dpl
	                mov dpl,a
	                clr a
	                subb a,dph
	                mov dph,a
	                clr a
	                subb a,b
	                mov b,a
	                clr a
	                subb a,r3
	                mov r3,a
        not_negative:
	                ret
00101$:
;	naked function: no epilogue.
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
