;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:09:58 2002

;--------------------------------------------------------
	.module _moduint
	
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
;Allocation info for local variables in function '_moduint_dummy'
;------------------------------------------------------------
;	_moduint.c 47
;	-----------------------------------------
;	 function _moduint_dummy
;	-----------------------------------------
__moduint_dummy:
;	naked function: no prologue.
;	_moduint.c 131
;	genInline
	                .globl __moduint
        __moduint:
;	#line 84 "_moduint.c"
	                .area OSEG (OVR,DATA)
	                .globl __moduint_PARM_2
	                .globl __modsint_PARM_2
        __moduint_PARM_2:
        __modsint_PARM_2:
	                .ds 2
	                .area CSEG (CODE)
	                mov a,(__moduint_PARM_2) ; avoid endless loop
	                orl a,(__moduint_PARM_2 + 1)
	                jz div_by_0
	                mov r2,#1
        loop1:
	mov a,(__moduint_PARM_2) ; b <<= 1
	                add a,acc
	                mov (__moduint_PARM_2),a
	                mov a,(__moduint_PARM_2 + 1)
	                rlc a
	                jc msbset
	                mov (__moduint_PARM_2 + 1),a
	                mov a,dpl ; a - b
	                subb a,(__moduint_PARM_2) ; here carry is always clear
	                mov a,dph
	                subb a,(__moduint_PARM_2 + 1)
	                jc start
	                inc r2
	                sjmp loop1
        start:
	clr c
	                mov a,(__moduint_PARM_2 + 1) ; b >>= 1;
        msbset:
	rrc a
	                mov (__moduint_PARM_2 + 1),a
	                mov a,(__moduint_PARM_2)
	                rrc a
	                mov (__moduint_PARM_2),a
        loop2:
	clr c
	                mov a,dpl ; a - b
	                subb a,(__moduint_PARM_2)
	                mov b,a
	                mov a,dph
	                subb a,(__moduint_PARM_2 + 1)
	                jc smaller ; a >= b?
	                mov dph,a ; -> yes; a = a - b;
	                mov dpl,b
        smaller:
; -> no
	                clr c
	                mov a,(__moduint_PARM_2 + 1) ; b >>= 1;
	                rrc a
	                mov (__moduint_PARM_2 + 1),a
	                mov a,(__moduint_PARM_2)
	                rrc a
	                mov (__moduint_PARM_2),a
	                djnz r2,loop2
        div_by_0:
	                ret
00101$:
;	naked function: no epilogue.
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
