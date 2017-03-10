;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:10:18 2002

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
;	_mullong.c 321
;	-----------------------------------------
;	 function _mullong_dummy
;	-----------------------------------------
__mullong_dummy:
;	naked function: no prologue.
;	_mullong.c 463
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
	                .area XSEG (XDATA)
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
	                mov r0,dpl ; save parameter a
	                mov r1,dph
	                mov r2,b
	                mov r3,a
	                                        ; Byte 0
	                mov b,r0
	                mov dptr,#__mullong_PARM_2
	                movx a,@dptr ; b0
	                mul ab ; r0 * b0
	                mov r4,a
	                mov r5,b
	                                        ; Byte 1
	                mov b,r1
	                movx a,@dptr ; b0
	                mul ab ; r1 * b0
	                add a,r5
	                mov r5,a
	                clr a
	                addc a,b
	                mov r6,a
	                mov b,r0
	                inc dptr ; b1
	                movx a,@dptr
	                mul ab ; r0 * b1
	                add a,r5
	                mov r5,a
	                mov a,b
	                addc a,r6
	                mov r6,a
	                clr a
	                rlc a
	                mov r7,a
	                                        ; Byte 2
	                mov b,r1
	                movx a,@dptr ; b1
	                mul ab ; r1 * b1
	                add a,r6
	                mov r6,a
	                mov a,b
	                addc a,r7
	                mov r7,a
	                mov b,r0
	                inc dptr ; b2
	                movx a,@dptr
	                mul ab ; r0 * b2
	                add a,r6
	                mov r6,a
	                mov a,b
	                addc a,r7
	                mov r7,a
	                mov b,r2
	                mov dptr,#__mullong_PARM_2
	                movx a,@dptr ; b0
	                mul ab ; r2 * b0
	                add a,r6
	                mov r6,a
	                mov a,b
	                addc a,r7
	                mov r7,a
	                                        ; Byte 3
	                mov b,r3
	                movx a,@dptr ; b0
	                mul ab ; r3 * b0
	                add a,r7
	                mov r7,a
	                mov b,r2
	                inc dptr ; b1
	                movx a,@dptr
	                mul ab ; r2 * b1
	                add a,r7
	                mov r7,a
	                mov b,r1
	                inc dptr ; b2
	                movx a,@dptr
	                mul ab ; r1 * b2
	                add a,r7
	                mov r7,a
	                mov b,r0
	                inc dptr ; b3
	                movx a,@dptr
	                mul ab ; r0 * b3
	                add a,r7
	                mov b,r6
	                mov dph,r5
	                mov dpl,r4
	                ret
00101$:
;	naked function: no epilogue.
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
