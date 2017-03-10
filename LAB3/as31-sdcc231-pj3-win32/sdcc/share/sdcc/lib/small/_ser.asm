;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:09:59 2002

;--------------------------------------------------------
	.module _ser
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ser_rxBuffer
	.globl _ser_txBuffer
	.globl _ser_rxIndexOut
	.globl _ser_rxIndexIn
	.globl _ser_txIndexOut
	.globl _ser_txIndexIn
	.globl _ser_init
	.globl _ser_interrupt_handler
	.globl _ser_putc
	.globl _ser_getc
	.globl _ser_printString
	.globl _ser_charAvail
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
_T2CON	=	0x00c8
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
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
_ET2	=	0x00ad
_T2CON_0	=	0x00c8
_T2CON_1	=	0x00c9
_T2CON_2	=	0x00ca
_T2CON_3	=	0x00cb
_T2CON_4	=	0x00cc
_T2CON_5	=	0x00cd
_T2CON_6	=	0x00ce
_T2CON_7	=	0x00cf
_CP_RL2	=	0x00c8
_C_T2	=	0x00c9
_TR2	=	0x00ca
_EXEN2	=	0x00cb
_TCLK	=	0x00cc
_RCLK	=	0x00cd
_EXF2	=	0x00ce
_TF2	=	0x00cf
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
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
_ser_txBusy:
	.ds 1
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_ser_txIndexIn::
	.ds 1
_ser_txIndexOut::
	.ds 1
_ser_rxIndexIn::
	.ds 1
_ser_rxIndexOut::
	.ds 1
_ser_txBuffer::
	.ds 256
_ser_rxBuffer::
	.ds 256
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
;	_ser.c 49
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
;	_ser.c 51
;	genAssign
	clr	_ES
;	_ser.c 53
;	genAssign
	clr	_ser_txBusy
;	_ser.c 55
;	genAssign
	mov	dptr,#_ser_txIndexIn
; Peephole 180   changed mov to clr
;	_ser.c 56
;	genAssign
; Peephole 180   changed mov to clr
; Peephole 219 removed redundant clear
;	_ser.c 57
;	genAssign
; Peephole 180   changed mov to clr
;	_ser.c 58
;	genAssign
; Peephole 180   changed mov to clr
; Peephole 219 removed redundant clear
; Peephole 219a removed redundant clear
	clr   a
	movx  @dptr,a
	mov   dptr,#_ser_txIndexOut
	movx  @dptr,a
	mov   dptr,#_ser_rxIndexIn
	movx  @dptr,a
	mov   dptr,#_ser_rxIndexOut
	movx  @dptr,a
;	_ser.c 60
;	genAssign
	mov	_T2CON,#0x30
;	_ser.c 63
;	genAssign
	mov	_RCAP2H,#0xFF
;	_ser.c 64
;	genAssign
	mov	_RCAP2L,#0xDD
;	_ser.c 67
;	genAssign
	mov	_T2CON,#0x34
;	_ser.c 69
;	genAssign
	mov	_SCON,#0x50
;	_ser.c 71
;	genIfx
;	genIfxJump
; Peephole 111   removed ljmp by inverse jump logic
	jnb  _TI,00102$
00109$:
;	_ser.c 72
;	genAssign
	clr	_TI
00102$:
;	_ser.c 74
;	genIfx
;	genIfxJump
; Peephole 111   removed ljmp by inverse jump logic
	jnb  _RI,00104$
00110$:
;	_ser.c 75
;	genAssign
	clr	_RI
00104$:
;	_ser.c 78
;	genAssign
	setb	_ES
00105$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ser_interrupt_handler'
;------------------------------------------------------------
;	_ser.c 82
;	-----------------------------------------
;	 function ser_interrupt_handler
;	-----------------------------------------
_ser_interrupt_handler:
	ar2 = 0x0a
	ar3 = 0x0b
	ar4 = 0x0c
	ar5 = 0x0d
	ar6 = 0x0e
	ar7 = 0x0f
	ar0 = 0x08
	ar1 = 0x09
	push	acc
	push	b
	push	dpl
	push	dph
	push	psw
	mov	psw,#0x08
;	_ser.c 84
;	genAssign
	clr	_ES
;	_ser.c 86
;	genIfx
;	genIfxJump
; Peephole 111   removed ljmp by inverse jump logic
	jnb  _TI,00105$
00113$:
;	_ser.c 87
;	genAssign
	clr	_TI
;	_ser.c 88
;	genAssign
	mov	dptr,#_ser_txIndexOut
	movx	a,@dptr
	mov	r2,a
;	genAssign
	mov	dptr,#_ser_txIndexIn
	movx	a,@dptr
;	genCmpEq
; Peephole 105   removed redundant mov
	mov  r3,a
; Peephole 132   changed ljmp to sjmp
; Peephole 199   optimized misc jump sequence
	cjne a,ar2,00102$
;00114$:
; Peephole 200   removed redundant sjmp
00115$:
;	_ser.c 89
;	genAssign
	clr	_ser_txBusy
; Peephole 132   changed ljmp to sjmp
	sjmp 00105$
00102$:
;	_ser.c 92
;	genPlus
	mov	dptr,#_ser_txIndexOut
;	genPlusIncr
	mov	a,#0x01
	add	a,r2
	movx	@dptr,a
;	genPlus
	mov	a,r2
	add	a,#_ser_txBuffer
	mov	dpl,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,#(_ser_txBuffer >> 8)
	mov	dph,a
;	genPointerGet
;	genFarPointerGet
	movx	a,@dptr
	mov	_SBUF,a
00105$:
;	_ser.c 96
;	genIfx
;	genIfxJump
; Peephole 111   removed ljmp by inverse jump logic
	jnb  _RI,00107$
00116$:
;	_ser.c 97
;	genAssign
	clr	_RI
;	_ser.c 98
;	genAssign
	mov	dptr,#_ser_rxIndexIn
	movx	a,@dptr
	mov	r2,a
;	genPlus
	mov	dptr,#_ser_rxIndexIn
;	genPlusIncr
	mov	a,#0x01
	add	a,r2
	movx	@dptr,a
;	genPlus
	mov	a,r2
	add	a,#_ser_rxBuffer
	mov	dpl,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,#(_ser_rxBuffer >> 8)
	mov	dph,a
;	genPointerSet
;	genFarPointerSet
	mov	a,_SBUF
	movx	@dptr,a
00107$:
;	_ser.c 101
;	genAssign
	setb	_ES
00108$:
	pop	psw
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'ser_putc'
;------------------------------------------------------------
;	_ser.c 105
;	-----------------------------------------
;	 function ser_putc
;	-----------------------------------------
_ser_putc:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	_ser.c 117
;	genReceive
	mov	r2,dpl
;	_ser.c 107
;	genAssign
	clr	_ES
;	_ser.c 109
;	genIfx
;	genIfxJump
; Peephole 111   removed ljmp by inverse jump logic
	jnb  _ser_txBusy,00102$
00107$:
;	_ser.c 110
;	genAssign
	mov	dptr,#_ser_txIndexIn
	movx	a,@dptr
	mov	r3,a
;	genPlus
	mov	dptr,#_ser_txIndexIn
;	genPlusIncr
	mov	a,#0x01
	add	a,r3
	movx	@dptr,a
;	genPlus
	mov	a,r3
	add	a,#_ser_txBuffer
	mov	dpl,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,#(_ser_txBuffer >> 8)
	mov	dph,a
;	genPointerSet
;	genFarPointerSet
	mov	a,r2
	movx	@dptr,a
; Peephole 132   changed ljmp to sjmp
	sjmp 00103$
00102$:
;	_ser.c 113
;	genAssign
	setb	_ser_txBusy
;	_ser.c 114
;	genAssign
	mov	_SBUF,r2
00103$:
;	_ser.c 117
;	genAssign
	setb	_ES
00104$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ser_getc'
;------------------------------------------------------------
;	_ser.c 121
;	-----------------------------------------
;	 function ser_getc
;	-----------------------------------------
_ser_getc:
;	_ser.c 126
;	genAssign
	mov	dptr,#_ser_rxIndexOut
	movx	a,@dptr
	mov	r2,a
;	genAssign
	mov	dptr,#_ser_rxIndexIn
	movx	a,@dptr
;	genCmpEq
; Peephole 105   removed redundant mov
	mov  r3,a
	cjne	a,ar2,00107$
; Peephole 132   changed ljmp to sjmp
	sjmp 00102$
00107$:
;	_ser.c 127
;	genPlus
	mov	dptr,#_ser_rxIndexOut
;	genPlusIncr
	mov	a,#0x01
	add	a,r2
	movx	@dptr,a
;	genPlus
	mov	a,r2
	add	a,#_ser_rxBuffer
	mov	dpl,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,#(_ser_rxBuffer >> 8)
	mov	dph,a
;	genPointerGet
;	genFarPointerGet
	movx	a,@dptr
	mov	r2,a
; Peephole 132   changed ljmp to sjmp
	sjmp 00103$
00102$:
;	_ser.c 130
;	genAssign
	mov	r2,#0x00
00103$:
;	_ser.c 134
;	genRet
	mov	dpl,r2
00104$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ser_printString'
;------------------------------------------------------------
;String                    Allocated to registers r2 r3 r4 
;	_ser.c 138
;	-----------------------------------------
;	 function ser_printString
;	-----------------------------------------
_ser_printString:
;	_ser.c 0
;	genReceive
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	_ser.c 140
;	genAssign
00101$:
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
;	genIfx
; Peephole 105   removed redundant mov
	mov  r5,a
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00104$
00108$:
;	_ser.c 141
;	genPlus
;	genPlusIncr
	inc	r2
	cjne	r2,#0x00,00109$
	inc	r3
00109$:
;	genCall
	mov	dpl,r5
	push	ar2
	push	ar3
	push	ar4
	lcall	_ser_putc
	pop	ar4
	pop	ar3
	pop	ar2
; Peephole 132   changed ljmp to sjmp
	sjmp 00101$
00104$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ser_charAvail'
;------------------------------------------------------------
;	_ser.c 146
;	-----------------------------------------
;	 function ser_charAvail
;	-----------------------------------------
_ser_charAvail:
;	_ser.c 148
;	genAssign
	mov	r2,#0x00
;	_ser.c 150
;	genAssign
	mov	dptr,#_ser_rxIndexOut
	movx	a,@dptr
	mov	r3,a
;	genAssign
	mov	dptr,#_ser_rxIndexIn
	movx	a,@dptr
;	genCmpEq
; Peephole 105   removed redundant mov
	mov  r4,a
	cjne	a,ar3,00106$
; Peephole 132   changed ljmp to sjmp
	sjmp 00102$
00106$:
;	_ser.c 151
;	genAssign
	mov	r2,#0x01
00102$:
;	_ser.c 154
;	genRet
	mov	dpl,r2
00103$:
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
