;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:10:02 2002

;--------------------------------------------------------
	.module ser_ir
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ser_gets_PARM_2
	.globl _ser_init
	.globl _ser_handler
	.globl _ser_putc
	.globl _ser_getc
	.globl _ser_puts
	.globl _ser_gets
	.globl _ser_can_xmt
	.globl _ser_can_rcv
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
_rbuf:
	.ds 10
_xbuf:
	.ds 10
_rcnt:
	.ds 1
_xcnt:
	.ds 1
_rpos:
	.ds 1
_xpos:
	.ds 1
_busy:
	.ds 1
_ser_gets_PARM_2::
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
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
;Allocation info for local variables in function 'ser_init'
;------------------------------------------------------------
;	ser_ir.c 49
;	-----------------------------------------
;	 function ser_init
;	-----------------------------------------
_ser_init:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	ser_ir.c 51
;	genAssign
	clr	_ES
;	ser_ir.c 52
;	genAssign
	mov	_xpos,#0x00
;	genAssign
	mov	_rpos,#0x00
;	genAssign
	mov	_xcnt,#0x00
;	genAssign
	mov	_rcnt,#0x00
;	ser_ir.c 53
;	genAssign
	mov	_busy,#0x00
;	ser_ir.c 54
;	genAssign
	mov	_SCON,#0x50
;	ser_ir.c 55
;	genOr
	orl	_PCON,#0x80
;	ser_ir.c 56
;	genAnd
	anl	_TMOD,#0x0F
;	ser_ir.c 57
;	genOr
	orl	_TMOD,#0x20
;	ser_ir.c 58
;	genAssign
	mov	_TL1,#0xFD
;	genAssign
	mov	_TH1,#0xFD
;	genAssign
	setb	_TR1
;	ser_ir.c 59
;	genAssign
	setb	_ES
00101$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ser_handler'
;------------------------------------------------------------
;	ser_ir.c 62
;	-----------------------------------------
;	 function ser_handler
;	-----------------------------------------
_ser_handler:
	push	acc
	push	b
	push	dpl
	push	dph
	push	ar2
	push	ar0
	push	psw
	mov	psw,#0x00
;	ser_ir.c 64
;	genIfx
;	genIfxJump
; Peephole 111   removed ljmp by inverse jump logic
	jnb  _RI,00104$
00118$:
;	ser_ir.c 65
;	genAssign
	clr	_RI
;	ser_ir.c 67
;	genCmpLt
;	genCmp
	clr	c
	mov	a,_rcnt
	subb	a,#0x0A
;	genIfxJump
; Peephole 108   removed ljmp by inverse jump logic
	jnc  00104$
00119$:
;	ser_ir.c 68
;	genAssign
	mov	r2,_rcnt
;	genPlus
;	genPlusIncr
	inc	_rcnt
;	genPlus
	mov	a,r2
	add	a,_rpos
	mov	r2,a
;	genMod
;	genModOneByte
	mov	b,#0x0A
	mov	a,r2
	div	ab
	mov	r2,b
;	genPlus
	mov	a,r2
	add	a,#_rbuf
;	genPointerSet
;	genNearPointerSet
	mov	r0,acc
	mov	@r0,_SBUF
00104$:
;	ser_ir.c 70
;	genIfx
;	genIfxJump
; Peephole 111   removed ljmp by inverse jump logic
	jnb  _TI,00111$
00120$:
;	ser_ir.c 71
;	genAssign
	clr	_TI
;	ser_ir.c 72
;	genAssign
	mov	_busy,_xcnt
;	genIfx
	mov	a,_xcnt
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00111$
00121$:
;	ser_ir.c 73
;	genMinus
;	genMinusDec
	dec	_xcnt
;	ser_ir.c 74
;	genAssign
	mov	r2,_xpos
;	genPlus
;	genPlusIncr
	inc	_xpos
;	genPlus
	mov	a,r2
	add	a,#_xbuf
	mov	r0,a
;	genPointerGet
;	genNearPointerGet
	mov	_SBUF,@r0
;	ser_ir.c 75
;	genCmpLt
;	genCmp
	clr	c
	mov	a,_xpos
	subb	a,#0x0A
;	genIfxJump
; Peephole 132   changed ljmp to sjmp
; Peephole 160   removed sjmp by inverse jump logic
	jc   00111$
00122$:
;	ser_ir.c 76
;	genAssign
	mov	_xpos,#0x00
00111$:
	pop	psw
	pop	ar0
	pop	ar2
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'ser_putc'
;------------------------------------------------------------
;	ser_ir.c 81
;	-----------------------------------------
;	 function ser_putc
;	-----------------------------------------
_ser_putc:
;	ser_ir.c 92
;	genReceive
	mov	r2,dpl
;	ser_ir.c 83
00101$:
;	genCmpLt
;	genCmp
	clr	c
	mov	a,_xcnt
	subb	a,#0x0A
;	genIfxJump
; Peephole 108   removed ljmp by inverse jump logic
	jnc  00101$
00112$:
;	ser_ir.c 85
;	genAssign
	clr	_ES
;	ser_ir.c 86
;	genIfx
	mov	a,_busy
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00105$
00113$:
;	ser_ir.c 87
;	genAssign
	mov	r3,_xcnt
;	genPlus
;	genPlusIncr
	inc	_xcnt
;	genPlus
	mov	a,r3
	add	a,_xpos
	mov	r3,a
;	genMod
;	genModOneByte
	mov	b,#0x0A
	mov	a,r3
	div	ab
	mov	r3,b
;	genPlus
	mov	a,r3
	add	a,#_xbuf
;	genPointerSet
;	genNearPointerSet
	mov	r0,acc
	mov	@r0,ar2
; Peephole 132   changed ljmp to sjmp
	sjmp 00106$
00105$:
;	ser_ir.c 89
;	genAssign
	mov	_SBUF,r2
;	ser_ir.c 90
;	genAssign
	mov	_busy,#0x01
00106$:
;	ser_ir.c 92
;	genAssign
	setb	_ES
00107$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ser_getc'
;------------------------------------------------------------
;	ser_ir.c 95
;	-----------------------------------------
;	 function ser_getc
;	-----------------------------------------
_ser_getc:
;	ser_ir.c 98
00101$:
;	genIfx
	mov	a,_rcnt
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00101$
00111$:
;	ser_ir.c 100
;	genAssign
	clr	_ES
;	ser_ir.c 101
;	genMinus
;	genMinusDec
	dec	_rcnt
;	ser_ir.c 102
;	genAssign
	mov	r2,_rpos
;	genPlus
;	genPlusIncr
	inc	_rpos
;	genPlus
	mov	a,r2
	add	a,#_rbuf
	mov	r0,a
;	genPointerGet
;	genNearPointerGet
	mov	ar2,@r0
;	ser_ir.c 103
;	genCmpLt
;	genCmp
	clr	c
	mov	a,_rpos
	subb	a,#0x0A
;	genIfxJump
; Peephole 132   changed ljmp to sjmp
; Peephole 160   removed sjmp by inverse jump logic
	jc   00105$
00112$:
;	ser_ir.c 104
;	genAssign
	mov	_rpos,#0x00
00105$:
;	ser_ir.c 105
;	genAssign
	setb	_ES
;	ser_ir.c 106
;	genRet
	mov	dpl,r2
00106$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ser_puts'
;------------------------------------------------------------
;s                         Allocated to registers r2 r3 r4 
;c                         Allocated to registers r6 
;	ser_ir.c 110
;	-----------------------------------------
;	 function ser_puts
;	-----------------------------------------
_ser_puts:
;	ser_ir.c 0
;	genReceive
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	ser_ir.c 113
00103$:
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
;	genPlus
;	genPlusIncr
	inc	r2
	cjne	r2,#0x00,00111$
	inc	r3
00111$:
;	genAssign
	mov	ar6,r5
;	genIfx
	mov	a,r5
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00106$
00112$:
;	ser_ir.c 114
;	genCmpEq
; Peephole 132   changed ljmp to sjmp
; Peephole 199   optimized misc jump sequence
	cjne r6,#0x0A,00102$
;00113$:
; Peephole 200   removed redundant sjmp
00114$:
;	genCall
	mov	dpl,#0x0D
	push	ar2
	push	ar3
	push	ar4
	push	ar6
	lcall	_ser_putc
	pop	ar6
	pop	ar4
	pop	ar3
	pop	ar2
00102$:
;	ser_ir.c 115
;	genCall
	mov	dpl,r6
	push	ar2
	push	ar3
	push	ar4
	lcall	_ser_putc
	pop	ar4
	pop	ar3
	pop	ar2
; Peephole 132   changed ljmp to sjmp
	sjmp 00103$
00106$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ser_gets'
;------------------------------------------------------------
;len                       Allocated to in memory with name '_ser_gets_PARM_2'
;s                         Allocated to registers r2 r3 r4 
;pos                       Allocated to registers 
;c                         Allocated to registers r6 
;	ser_ir.c 119
;	-----------------------------------------
;	 function ser_gets
;	-----------------------------------------
_ser_gets:
;	ser_ir.c 130
;	genReceive
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	ser_ir.c 124
;	genAssign
	mov	r5,#0x00
00105$:
;	genCmpGt
;	genCmp
	clr	c
	mov	a,_ser_gets_PARM_2
	subb	a,r5
;	genIfxJump
; Peephole 132   changed ljmp to sjmp
; Peephole 160   removed sjmp by inverse jump logic
	jc   00107$
00113$:
;	ser_ir.c 125
;	genCall
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	_ser_getc
	mov	a,dpl
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genAssign
	mov	r6,a
;	ser_ir.c 126
;	genCmpEq
	cjne	r6,#0x0D,00114$
; Peephole 132   changed ljmp to sjmp
	sjmp 00105$
00114$:
;	ser_ir.c 127
;	genAssign
	mov	ar7,r5
;	genPlus
;	genPlusIncr
	inc	r5
;	genPlus
	mov	a,r7
	add	a,r2
	mov	r7,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,r3
	mov	r0,a
	mov	ar1,r4
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r7
	mov	dph,r0
	mov	b,r1
	mov	a,r6
	lcall	__gptrput
;	ser_ir.c 128
;	genCmpEq
; Peephole 132   changed ljmp to sjmp
; Peephole 199   optimized misc jump sequence
	cjne r6,#0x0A,00105$
;00115$:
; Peephole 200   removed redundant sjmp
00116$:
00107$:
;	ser_ir.c 130
;	genPlus
	mov	a,r5
	add	a,r2
	mov	r2,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,r3
	mov	r3,a
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
; Peephole 180   changed mov to clr
	clr  a
	lcall	__gptrput
00108$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ser_can_xmt'
;------------------------------------------------------------
;	ser_ir.c 133
;	-----------------------------------------
;	 function ser_can_xmt
;	-----------------------------------------
_ser_can_xmt:
;	ser_ir.c 135
;	genMinus
	clr	c
	mov	a,#0x0A
	subb	a,_xcnt
	mov	dpl,a
;	genRet
00101$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ser_can_rcv'
;------------------------------------------------------------
;	ser_ir.c 138
;	-----------------------------------------
;	 function ser_can_rcv
;	-----------------------------------------
_ser_can_rcv:
;	ser_ir.c 140
;	genRet
	mov	dpl,_rcnt
00101$:
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
