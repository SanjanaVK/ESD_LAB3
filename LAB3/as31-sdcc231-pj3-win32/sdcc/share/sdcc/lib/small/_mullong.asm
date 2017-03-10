;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:09:59 2002

;--------------------------------------------------------
	.module _mullong
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __mullong_dummy
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
;Allocation info for local variables in function '_mullong_dummy'
;------------------------------------------------------------
;	_mullong.c 57
;	-----------------------------------------
;	 function _mullong_dummy
;	-----------------------------------------
__mullong_dummy:
;	naked function: no prologue.
;	_mullong.c 201
;	genInline
        __mullong:
        __mululong:
; obsolete
        __mulslong:
; obsolete
	                .globl __mullong
	                .globl __mululong ; obsolete
	                .globl __mulslong ; obsolete
	                                        ; the result c will be stored in r4...r7
	        ; r4 a0 * b0
	        ; r5 a1 * b0 + a0 * b1
	        ; r6 a2 * b0 + a1 * b1 + a0 * b2
	        ; r7 a3 * b0 + a2 * b1 + a1 * b2 + a0 * b3
	                .area OSEG (OVR,DATA)
        __mullong_PARM_2:
        __mululong_PARM_2:
; obsolete
        __mulslong_PARM_2:
; obsolete
	                .globl __mullong_PARM_2
	                .globl __mululong_PARM_2 ; obsolete
	                .globl __mulslong_PARM_2 ; obsolete
	                .ds 4
	                .area CSEG (CODE)
	                                        ; parameter a comes in a, b, dph, dpl
	                mov r2,b ; save parameter a
	                mov r3,a
	                b0 = __mullong_PARM_2
	                b1 = (__mullong_PARM_2+1)
	                b2 = (__mullong_PARM_2+2)
	                b3 = (__mullong_PARM_2+3)
	                                        ; Byte 0
	                mov a,dpl
	                mov b,b0
	                mul ab ; dpl * b0
	                mov r4,a
	                mov r5,b
	                                        ; Byte 1
	                mov a,dph
	                mov b,b0
	                mul ab ; dph * b0
	                add a,r5
	                mov r5,a
	                clr a
	                addc a,b
	                mov r6,a
	                mov a,dpl
	                mov b,b1
	                mul ab ; dpl * b1
	                add a,r5
	                mov r5,a
	                mov a,b
	                addc a,r6
	                mov r6,a
	                clr a
	                rlc a
	                mov r7,a
	                                        ; Byte 2
	                mov a,r2
	                mov b,b0
	                mul ab ; r2 * b0
	                add a,r6
	                mov r6,a
	                mov a,b
	                addc a,r7
	                mov r7,a
	                mov a,dph
	                mov b,b1
	                mul ab ; dph * b1
	                add a,r6
	                mov r6,a
	                mov a,b
	                addc a,r7
	                mov r7,a
	                mov a,dpl
	                mov b,b2
	                mul ab ; dpl * b2
	                add a,r6
	                mov r6,a
	                mov a,b
	                addc a,r7
	                mov r7,a
	                                        ; Byte 3
	                mov a,r3
	                mov b,b0
	                mul ab ; r3 * b0
	                add a,r7
	                mov r7,a
	                mov a,r2
	                mov b,b1
	                mul ab ; r2 * b1
	                add a,r7
	                mov r7,a
	                mov a,dph
	                mov b,b2
	                mul ab ; dph * b2
	                add a,r7
	                mov r7,a
	                mov a,dpl
	                mov b,b3
	                mul ab ; dpl * b3
	                add a,r7
	                mov b,r6
	                mov dph,r5
	                mov dpl,r4
	                ret
;	#line 314 "_mullong.c"
00101$:
;	naked function: no epilogue.
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
