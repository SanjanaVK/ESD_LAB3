;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:10:18 2002

;--------------------------------------------------------
	.module _setjmp
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _setjmp
	.globl _longjmp
	.globl _longjmp_PARM_2
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits 
;--------------------------------------------------------
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
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
_longjmp_PARM_2::
	.ds 2
_longjmp_bp_1_1::
	.ds 3
_setjmp_bp_1_1::
	.ds 3
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
;Allocation info for local variables in function 'longjmp'
;------------------------------------------------------------
;rv                        Allocated to in memory with name '_longjmp_PARM_2'
;bp                        Allocated to in memory with name '_longjmp_bp_1_1'
;lsp                       Allocated to in memory with name '_longjmp_lsp_1_1'
;	_setjmp.c 28
;	-----------------------------------------
;	 function longjmp
;	-----------------------------------------
_longjmp:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	_setjmp.c 35
;	genReceive
	push	b
	push	dph
	push	dpl
	mov	dptr,#_longjmp_bp_1_1
	pop	acc
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
;	_setjmp.c 31
;	genAssign
	mov	dptr,#_longjmp_bp_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
;	genPlus
;	genPlusIncr
	mov	a,#0x02
	add	a,r2
	mov	r5,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
;	_setjmp.c 32
;	genCast
	mov	ar0,r5
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r6,a
;	genPlus
;	genPlusIncr
	inc	r2
	cjne	r2,#0x00,00103$
	inc	r3
00103$:
;	genAssign
	mov	dptr,#_longjmp_bp_1_1
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
;	genPointerSet
;	genNearPointerSet
	mov	@r0,ar6
;	_setjmp.c 33
;	genMinus
;	genMinusDec
	dec	r0
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
;	genPointerSet
;	genNearPointerSet
; Peephole 192   used a instead of ar2 as source
	mov  r2,a
	mov  @r0,a
;	_setjmp.c 34
;	genAssign
	mov	_SP,r5
;	_setjmp.c 35
;	genAssign
	mov	dptr,#_longjmp_PARM_2
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;	genRet
	mov	dpl,r2
	mov	dph,r3
00101$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'setjmp'
;------------------------------------------------------------
;bp                        Allocated to in memory with name '_setjmp_bp_1_1'
;	_setjmp.c 38
;	-----------------------------------------
;	 function setjmp
;	-----------------------------------------
_setjmp:
;	_setjmp.c 0
;	genReceive
	push	b
	push	dph
	push	dpl
	mov	dptr,#_setjmp_bp_1_1
	pop	acc
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
;	_setjmp.c 43
;	genAssign
	mov	dptr,#_setjmp_bp_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
;	genCast
	mov	r0,_SP
;	genPointerGet
;	genNearPointerGet
	mov	ar5,@r0
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__gptrput
;	genPlus
;	genPlusIncr
	inc	r2
	cjne	r2,#0x00,00103$
	inc	r3
00103$:
;	_setjmp.c 44
;	genCast
	mov	r5,_SP
;	genMinus
;	genMinusDec
	mov	a,r5
	dec	a
	mov	r0,a
;	genPointerGet
;	genNearPointerGet
	mov	ar5,@r0
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__gptrput
;	genPlus
;	genPlusIncr
	inc	r2
	cjne	r2,#0x00,00104$
	inc	r3
00104$:
;	genAssign
	mov	dptr,#_setjmp_bp_1_1
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
;	_setjmp.c 45
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,_SP
	lcall	__gptrput
;	_setjmp.c 46
;	genRet
; Peephole 181   used 16 bit load of dptr
	mov  dptr,#0x0000
00101$:
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
