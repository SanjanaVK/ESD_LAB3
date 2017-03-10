;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:09:58 2002

;--------------------------------------------------------
	.module _modslong
	
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
;Allocation info for local variables in function '_modslong_dummy'
;------------------------------------------------------------
;	_modslong.c 51
;	-----------------------------------------
;	 function _modslong_dummy
;	-----------------------------------------
__modslong_dummy:
;	naked function: no prologue.
;	_modslong.c 133
;	genInline
	                .globl __modslong
;	#line 69 "_modslong.c"
        __modslong:
	                                        ; r1 in acc
	                                        ; (__modslong_PARM_2 + 3) in (__modslong_PARM_2 + 3)
	                mov r1,a ; save r1
	                clr F0 ; Flag 0 in PSW
	                                        ; available to user for general purpose
	                jnb acc.7,a_not_negative
	                setb F0
	                clr a ; a = -a;
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
	                subb a,r1
	                mov r1,a
        a_not_negative:
	                mov a,(__modslong_PARM_2 + 3)
	                jnb acc.7,b_not_negative
	                cpl F0
	                clr a ; b = -b;
	                clr c
	                subb a,(__modslong_PARM_2)
	                mov (__modslong_PARM_2),a
	                clr a
	                subb a,(__modslong_PARM_2 + 1)
	                mov (__modslong_PARM_2 + 1),a
	                clr a
	                subb a,(__modslong_PARM_2 + 2)
	                mov (__modslong_PARM_2 + 2),a
	                clr a
	                subb a,(__modslong_PARM_2 + 3)
	                mov (__modslong_PARM_2 + 3),a
        b_not_negative:
	                mov a,r1 ; restore r1 in acc
	                lcall __modulong
	                jnb F0,not_negative
	                                ; result in (a == r1), b, dph, dpl
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
	                subb a,r1
	                                ; result in a, b, dph, dpl
        not_negative:
	                ret
00101$:
;	naked function: no epilogue.
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
