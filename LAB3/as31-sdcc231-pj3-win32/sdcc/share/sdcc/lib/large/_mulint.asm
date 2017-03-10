;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:10:18 2002

;--------------------------------------------------------
	.module _mulint
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __mulsint_PARM_2
	.globl __muluint_PARM_2
	.globl __muluint
	.globl __mulsint
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
__muluint_PARM_2::
	.ds 2
__mulsint_PARM_2::
	.ds 2
__mulsint_a_1_1::
	.ds 2
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
;Allocation info for local variables in function '_muluint'
;------------------------------------------------------------
;b                         Allocated to in memory with name '__muluint_PARM_2'
;a                         Allocated to in memory with name '__muluint_a_1_1'
;	_mulint.c 62
;	-----------------------------------------
;	 function _muluint
;	-----------------------------------------
__muluint:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	_mulint.c 98
;	genInline
	    mov r2,dph ; msb_a
	    mov r3,dpl ; lsb_a
	    mov b,r3 ; lsb_a
	    mov dptr,#__muluint_PARM_2
	    movx a,@dptr ; lsb_b
	    mul ab ; lsb_a*lsb_b
	    mov r0,a
	    mov r1,b
	    mov b,r2 ; msb_a
	    movx a,@dptr ; lsb_b
	    mul ab ; msb_a*lsb_b
	    add a,r1
	    mov r1,a
	    mov b,r3 ; lsb_a
	    inc dptr
	    movx a,@dptr ; msb_b
	    mul ab ; lsb_a*msb_b
	    add a,r1
	    mov dph,a
	    mov dpl,r0
	    ret
00101$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_mulsint'
;------------------------------------------------------------
;b                         Allocated to in memory with name '__mulsint_PARM_2'
;a                         Allocated to in memory with name '__mulsint_a_1_1'
;	_mulint.c 102
;	-----------------------------------------
;	 function _mulsint
;	-----------------------------------------
__mulsint:
;	_mulint.c 0
;	genReceive
	push	dph
	push	dpl
	mov	dptr,#__mulsint_a_1_1
	pop	acc
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
;	_mulint.c 104
;	genAssign
	mov	dptr,#__mulsint_a_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;	genAssign
	mov	dptr,#__mulsint_PARM_2
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;	genAssign
	mov	dptr,#__muluint_PARM_2
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
;	genCall
	mov	dpl,r2
	mov	dph,r3
	lcall	__muluint
;	genRet
; Peephole 151   removed misc moves via dph, dpl before return
00101$:
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
