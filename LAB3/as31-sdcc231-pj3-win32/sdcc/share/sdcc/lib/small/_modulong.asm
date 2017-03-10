;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:09:58 2002

;--------------------------------------------------------
	.module _modulong
	
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
;Allocation info for local variables in function '_modlong_dummy'
;------------------------------------------------------------
;	_modulong.c 47
;	-----------------------------------------
;	 function _modlong_dummy
;	-----------------------------------------
__modlong_dummy:
;	naked function: no prologue.
;	_modulong.c 166
;	genInline
	                .globl __modulong
        __modulong:
	                .area OSEG (OVR,DATA)
	                .globl __modulong_PARM_2
	                .globl __modslong_PARM_2
        __modulong_PARM_2:
        __modslong_PARM_2:
	                .ds 4
	                .area CSEG (CODE)
;	#line 82 "_modulong.c"
	                                        ; parameter a comes in a, b, dph, dpl
	                mov r1,a ; save parameter r1
	                mov a,(__modulong_PARM_2) ; b == 0? avoid endless loop
	                orl a,(__modulong_PARM_2 + 1)
	                orl a,(__modulong_PARM_2 + 2)
	                orl a,(__modulong_PARM_2 + 3)
	                jz div_by_0
	                mov r0,#0
	                clr c ; when loop1 jumps immediately to loop2
        loop1:
	inc r0
	                mov a,(__modulong_PARM_2 + 3) ; if (!MSB_SET(b))
	                jb acc.7,loop2
	                mov a,(__modulong_PARM_2) ; b <<= 1
	                add a,acc
	                mov (__modulong_PARM_2),a
	                mov a,(__modulong_PARM_2 + 1)
	                rlc a
	                mov (__modulong_PARM_2 + 1),a
	                mov a,(__modulong_PARM_2 + 2)
	                rlc a
	                mov (__modulong_PARM_2 + 2),a
	                mov a,(__modulong_PARM_2 + 3)
	                rlc a
	                mov (__modulong_PARM_2 + 3),a
	                mov a,dpl ; a - b
	                subb a,(__modulong_PARM_2) ; here carry is always clear
	                mov a,dph
	                subb a,(__modulong_PARM_2 + 1)
	                mov a,b
	                subb a,(__modulong_PARM_2 + 2)
	                mov a,r1
	                subb a,(__modulong_PARM_2 + 3)
	                jnc loop1
	                clr c
	                mov a,(__modulong_PARM_2 + 3) ; b >>= 1;
	                rrc a
	                mov (__modulong_PARM_2 + 3),a
	                mov a,(__modulong_PARM_2 + 2)
	                rrc a
	                mov (__modulong_PARM_2 + 2),a
	                mov a,(__modulong_PARM_2 + 1)
	                rrc a
	                mov (__modulong_PARM_2 + 1),a
	                mov a,(__modulong_PARM_2)
	                rrc a
	                mov (__modulong_PARM_2),a
        loop2:
; clr c never set
	                mov a,dpl ; a - b
	                subb a,(__modulong_PARM_2)
	                mov r4,a
	                mov a,dph
	                subb a,(__modulong_PARM_2 + 1)
	                mov r5,a
	                mov a,b
	                subb a,(__modulong_PARM_2 + 2)
	                mov r6,a
	                mov a,r1
	                subb a,(__modulong_PARM_2 + 3)
	                jc smaller ; a >= b?
	                mov r1,a ; -> yes; a = a - b;
	                mov b,r6
	                mov dph,r5
	                mov dpl,r4
        smaller:
; -> no
	                clr c
	                mov a,(__modulong_PARM_2 + 3) ; b >>= 1;
	                rrc a
	                mov (__modulong_PARM_2 + 3),a
	                mov a,(__modulong_PARM_2 + 2)
	                rrc a
	                mov (__modulong_PARM_2 + 2),a
	                mov a,(__modulong_PARM_2 + 1)
	                rrc a
	                mov (__modulong_PARM_2 + 1),a
	                mov a,(__modulong_PARM_2)
	                rrc a
	                mov (__modulong_PARM_2),a
	                djnz r0,loop2
	                mov a,r1 ; prepare the return value
        div_by_0:
	                ret
00101$:
;	naked function: no epilogue.
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
