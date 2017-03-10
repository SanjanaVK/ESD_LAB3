;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:09:54 2002

;--------------------------------------------------------
	.module _divulong
	
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
;Allocation info for local variables in function '_divlong_dummy'
;------------------------------------------------------------
;	_divulong.c 45
;	-----------------------------------------
;	 function _divlong_dummy
;	-----------------------------------------
__divlong_dummy:
;	naked function: no prologue.
;	_divulong.c 159
;	genInline
	                .globl __divulong
        __divulong:
;	#line 68 "_divulong.c"
	                .area OSEG (OVR,DATA)
	                .globl __divulong_PARM_2
	                .globl __divslong_PARM_2
        __divulong_PARM_2:
        __divslong_PARM_2:
	                .ds 4
	                .area CSEG (CODE)
	                                        ; parameter a comes in a, b, dph, dpl
	                mov r3,a ; save parameter r3
	                mov r2,#32
	                clr a
	                mov r4,a
	                mov r5,a
	                mov r6,a
	                mov r7,a
	        ; optimization loop in lp0 until the first bit is shifted into rest
        lp0:
	mov a,dpl ; a <<= 1
	                add a,dpl
	                mov dpl,a
	                mov a,dph
	                rlc a
	                mov dph,a
	                mov a,b
	                rlc a
	                mov b,a
	                mov a,r3
	                rlc a
	                mov r3,a
	                jc in_lp
	                djnz r2,lp0
	                sjmp exit
        loop:
	mov a,dpl ; a <<= 1
	                add a,dpl
	                mov dpl,a
	                mov a,dph
	                rlc a
	                mov dph,a
	                mov a,b
	                rlc a
	                mov b,a
	                mov a,r3
	                rlc a
	                mov r3,a
        in_lp:
	mov a,r4 ; reste <<= 1
	                rlc a ; feed in carry
	                mov r4,a
	                mov a,r5
	                rlc a
	                mov r5,a
	                mov a,r6
	                rlc a
	                mov r6,a
	                mov a,r7
	                rlc a
	                mov r7,a
	                mov a,r4 ; reste - b
	                subb a,(__divulong_PARM_2) ; carry is always clear here, because
	                                        ; reste <<= 1 never overflows
	                mov a,r5
	                subb a,(__divulong_PARM_2 + 1)
	                mov a,r6
	                subb a,(__divulong_PARM_2 + 2)
	                mov a,r7
	                subb a,(__divulong_PARM_2 + 3)
	                jc minus ; reste >= b?
	                                        ; -> yes; reste -= b;
	                mov a,r4
	                subb a,(__divulong_PARM_2) ; carry is always clear here (jc)
	                mov r4,a
	                mov a,r5
	                subb a,(__divulong_PARM_2 + 1)
	                mov r5,a
	                mov a,r6
	                subb a,(__divulong_PARM_2 + 2)
	                mov r6,a
	                mov a,r7
	                subb a,(__divulong_PARM_2 + 3)
	                mov r7,a
	                orl dpl,#1
        minus:
	djnz r2,loop ; -> no
        exit:
	mov a,r3 ; prepare the return value
	                ret
00101$:
;	naked function: no epilogue.
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
