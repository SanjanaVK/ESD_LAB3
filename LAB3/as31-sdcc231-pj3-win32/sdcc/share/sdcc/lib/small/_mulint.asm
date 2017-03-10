;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:09:59 2002

;--------------------------------------------------------
	.module _mulint
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __mulint_dummy
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
;Allocation info for local variables in function '_mulint_dummy'
;------------------------------------------------------------
;	_mulint.c 110
;	-----------------------------------------
;	 function _mulint_dummy
;	-----------------------------------------
__mulint_dummy:
;	naked function: no prologue.
;	_mulint.c 163
;	genInline
        __mulint:
        __muluint:
; obsolete
        __mulsint:
; obsolete
	                .globl __mulint
	                .globl __muluint ; obsolete
	                .globl __mulsint ; obsolete
	                .area OSEG (OVR,DATA)
        __mulint_PARM_2:
        __muluint_PARM_2:
; obsolete
        __mulsint_PARM_2:
; obsolete
	                .globl __mulint_PARM_2
	                .globl __muluint_PARM_2 ; obsolete
	                .globl __mulsint_PARM_2 ; obsolete
	                .ds 2
	                .area CSEG (CODE)
	                ; globbered registers none
	                mov a,dpl ; 1 al
	                mov b,__mulint_PARM_2 ; 2 bl
	                mul ab ; 4 al * bl
	                xch a,dpl ; 1 store low-byte of return value, fetch al
	                push b ; 2
	                mov b,__mulint_PARM_2 + 1 ; 2 bh
	                mul ab ; 4 al * bh
	                pop b ; 2
	                add a,b ; 1
	                xch a,dph ; 1 ah -> acc
	                mov b,__mulint_PARM_2 ; 2 bl
	                mul ab ; 4 ah * bl
	                add a,dph ; 1
	                mov dph,a ; 1
	                ret ; 2
	                                                ; 30
;	#line 196 "_mulint.c"
00101$:
;	naked function: no epilogue.
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
