;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:10:21 2002

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
_ser_putc_c_1_1::
	.ds 1
_ser_puts_s_1_1::
	.ds 3
_ser_gets_PARM_2::
	.ds 1
_ser_gets_s_1_1::
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
	mov	dptr,#_xpos
; Peephole 180   changed mov to clr
;	genAssign
; Peephole 180   changed mov to clr
; Peephole 219 removed redundant clear
;	genAssign
; Peephole 180   changed mov to clr
;	genAssign
; Peephole 180   changed mov to clr
; Peephole 219 removed redundant clear
; Peephole 219a removed redundant clear
	clr   a
	movx  @dptr,a
	mov   dptr,#_rpos
	movx  @dptr,a
	mov   dptr,#_xcnt
	movx  @dptr,a
	mov   dptr,#_rcnt
	movx  @dptr,a
;	ser_ir.c 53
;	genAssign
	mov	dptr,#_busy
; Peephole 180   changed mov to clr
	clr  a
	movx	@dptr,a
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
	push	ar3
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
;	genAssign
	mov	dptr,#_rcnt
	movx	a,@dptr
	mov	r2,a
;	genCmpLt
;	genCmp
	cjne	r2,#0x0A,00119$
00119$:
;	genIfxJump
; Peephole 108   removed ljmp by inverse jump logic
	jnc  00104$
00120$:
;	ser_ir.c 68
;	genPlus
	mov	dptr,#_rcnt
;	genPlusIncr
	mov	a,#0x01
	add	a,r2
	movx	@dptr,a
;	genAssign
	mov	dptr,#_rpos
	movx	a,@dptr
;	genPlus
; Peephole 214 reduced some extra movs
	mov  r3,a
	add  a,r2	
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
	mov	dpl,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,#(_rbuf >> 8)
	mov	dph,a
;	genPointerSet
;	genFarPointerSet
	mov	a,_SBUF
	movx	@dptr,a
00104$:
;	ser_ir.c 70
;	genIfx
;	genIfxJump
; Peephole 111   removed ljmp by inverse jump logic
	jnb  _TI,00111$
00121$:
;	ser_ir.c 71
;	genAssign
	clr	_TI
;	ser_ir.c 72
;	genAssign
	mov	dptr,#_xcnt
	movx	a,@dptr
;	genAssign
; Peephole 100   removed redundant mov
	mov  r2,a
	mov  dptr,#_busy
	movx @dptr,a
;	genIfx
	mov	a,r2
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00111$
00122$:
;	ser_ir.c 73
;	genMinus
;	genMinusDec
	mov	a,r2
	dec	a
;	genAssign
	mov	dptr,#_xcnt
	movx	@dptr,a
;	ser_ir.c 74
;	genAssign
	mov	dptr,#_xpos
	movx	a,@dptr
;	genPlus
;	genPlusIncr
; Peephole 214 reduced some extra movs
	mov  r2,a
	add  a,#0x01	
;	genAssign
; Peephole 100   removed redundant mov
	mov  r3,a
	mov  dptr,#_xpos
	movx @dptr,a
;	genPlus
	mov	a,r2
	add	a,#_xbuf
	mov	dpl,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,#(_xbuf >> 8)
	mov	dph,a
;	genPointerGet
;	genFarPointerGet
	movx	a,@dptr
	mov	_SBUF,a
;	ser_ir.c 75
;	genCmpLt
;	genCmp
	cjne	r3,#0x0A,00123$
00123$:
;	genIfxJump
; Peephole 132   changed ljmp to sjmp
; Peephole 160   removed sjmp by inverse jump logic
	jc   00111$
00124$:
;	ser_ir.c 76
;	genAssign
	mov	dptr,#_xpos
; Peephole 180   changed mov to clr
	clr  a
	movx	@dptr,a
00111$:
	pop	psw
	pop	ar3
	pop	ar2
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'ser_putc'
;------------------------------------------------------------
;c                         Allocated to in memory with name '_ser_putc_c_1_1'
;	ser_ir.c 81
;	-----------------------------------------
;	 function ser_putc
;	-----------------------------------------
_ser_putc:
;	ser_ir.c 92
;	genReceive
	push	dpl
	mov	dptr,#_ser_putc_c_1_1
	pop	acc
	movx	@dptr,a
;	ser_ir.c 83
00101$:
;	genAssign
	mov	dptr,#_xcnt
	movx	a,@dptr
	mov	r2,a
;	genCmpLt
;	genCmp
	cjne	r2,#0x0A,00112$
00112$:
;	genIfxJump
; Peephole 108   removed ljmp by inverse jump logic
	jnc  00101$
00113$:
;	ser_ir.c 85
;	genAssign
	clr	_ES
;	ser_ir.c 86
;	genAssign
	mov	dptr,#_busy
	movx	a,@dptr
;	genIfx
; Peephole 105   removed redundant mov
	mov  r3,a
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00105$
00114$:
;	ser_ir.c 87
;	genPlus
	mov	dptr,#_xcnt
;	genPlusIncr
	mov	a,#0x01
	add	a,r2
	movx	@dptr,a
;	genAssign
	mov	dptr,#_xpos
	movx	a,@dptr
;	genPlus
; Peephole 214 reduced some extra movs
	mov  r3,a
	add  a,r2	
	mov	r2,a
;	genMod
;	genModOneByte
	mov	b,#0x0A
	mov	a,r2
	div	ab
	mov	r2,b
;	genPlus
	mov	a,r2
	add	a,#_xbuf
	mov	r2,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,#(_xbuf >> 8)
	mov	r3,a
;	genAssign
	mov	dptr,#_ser_putc_c_1_1
	movx	a,@dptr
;	genPointerSet
;	genFarPointerSet
; Peephole 136   removed redundant moves
	mov  r4,a
	mov  dpl,r2
	mov  dph,r3
	movx	@dptr,a
; Peephole 132   changed ljmp to sjmp
	sjmp 00106$
00105$:
;	ser_ir.c 89
;	genAssign
	mov	dptr,#_ser_putc_c_1_1
	movx	a,@dptr
	mov	_SBUF,a
;	ser_ir.c 90
;	genAssign
	mov	dptr,#_busy
	mov	a,#0x01
	movx	@dptr,a
00106$:
;	ser_ir.c 92
;	genAssign
	setb	_ES
00107$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ser_getc'
;------------------------------------------------------------
;c                         Allocated to in memory with name '_ser_getc_c_1_1'
;	ser_ir.c 95
;	-----------------------------------------
;	 function ser_getc
;	-----------------------------------------
_ser_getc:
;	ser_ir.c 98
00101$:
;	genAssign
	mov	dptr,#_rcnt
	movx	a,@dptr
;	genIfx
; Peephole 105   removed redundant mov
	mov  r2,a
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
	mov	a,r2
	dec	a
;	genAssign
	mov	dptr,#_rcnt
	movx	@dptr,a
;	ser_ir.c 102
;	genAssign
	mov	dptr,#_rpos
	movx	a,@dptr
;	genPlus
;	genPlusIncr
; Peephole 214 reduced some extra movs
	mov  r2,a
	add  a,#0x01	
;	genAssign
; Peephole 100   removed redundant mov
	mov  r3,a
	mov  dptr,#_rpos
	movx @dptr,a
;	genPlus
	mov	a,r2
	add	a,#_rbuf
	mov	dpl,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,#(_rbuf >> 8)
	mov	dph,a
;	genPointerGet
;	genFarPointerGet
	movx	a,@dptr
	mov	r2,a
;	ser_ir.c 103
;	genCmpLt
;	genCmp
	cjne	r3,#0x0A,00112$
00112$:
;	genIfxJump
; Peephole 132   changed ljmp to sjmp
; Peephole 160   removed sjmp by inverse jump logic
	jc   00105$
00113$:
;	ser_ir.c 104
;	genAssign
	mov	dptr,#_rpos
; Peephole 180   changed mov to clr
	clr  a
	movx	@dptr,a
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
;s                         Allocated to in memory with name '_ser_puts_s_1_1'
;c                         Allocated to in memory with name '_ser_puts_c_1_1'
;	ser_ir.c 110
;	-----------------------------------------
;	 function ser_puts
;	-----------------------------------------
_ser_puts:
;	ser_ir.c 0
;	genReceive
	push	b
	push	dph
	push	dpl
	mov	dptr,#_ser_puts_s_1_1
	pop	acc
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
;	ser_ir.c 113
00103$:
;	genAssign
	mov	dptr,#_ser_puts_s_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
;	genPlus
	mov	dptr,#_ser_puts_s_1_1
;	genPlusIncr
	mov	a,#0x01
	add	a,r2
	movx	@dptr,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,r3
	inc	dptr
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
;	genIfx
	mov	a,r5
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00106$
00111$:
;	ser_ir.c 114
;	genCmpEq
; Peephole 132   changed ljmp to sjmp
; Peephole 199   optimized misc jump sequence
	cjne r5,#0x0A,00102$
;00112$:
; Peephole 200   removed redundant sjmp
00113$:
;	genCall
	mov	dpl,#0x0D
	push	ar5
	lcall	_ser_putc
	pop	ar5
00102$:
;	ser_ir.c 115
;	genCall
	mov	dpl,r5
	lcall	_ser_putc
; Peephole 132   changed ljmp to sjmp
	sjmp 00103$
00106$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ser_gets'
;------------------------------------------------------------
;len                       Allocated to in memory with name '_ser_gets_PARM_2'
;s                         Allocated to in memory with name '_ser_gets_s_1_1'
;pos                       Allocated to in memory with name '_ser_gets_pos_1_1'
;c                         Allocated to in memory with name '_ser_gets_c_1_1'
;	ser_ir.c 119
;	-----------------------------------------
;	 function ser_gets
;	-----------------------------------------
_ser_gets:
;	ser_ir.c 130
;	genReceive
	push	b
	push	dph
	push	dpl
	mov	dptr,#_ser_gets_s_1_1
	pop	acc
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
;	ser_ir.c 124
;	genAssign
	mov	dptr,#_ser_gets_PARM_2
	movx	a,@dptr
	mov	r2,a
;	genAssign
	mov	dptr,#_ser_gets_s_1_1
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;	genAssign
	mov	r6,#0x00
00105$:
;	genAssign
	mov	ar7,r6
;	genCmpGt
;	genCmp
	clr	c
	mov	a,r2
	subb	a,r6
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
	push	ar6
	push	ar7
	lcall	_ser_getc
	mov	r0,dpl
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	ser_ir.c 126
;	genCmpEq
	cjne	r0,#0x0D,00114$
; Peephole 132   changed ljmp to sjmp
	sjmp 00105$
00114$:
;	ser_ir.c 127
;	genIpush
	push	ar2
;	genPlus
;	genPlusIncr
	inc	r6
;	genPlus
	mov	a,r7
	add	a,r3
	mov	r7,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,r4
	mov	r1,a
	mov	ar2,r5
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r7
	mov	dph,r1
	mov	b,r2
	mov	a,r0
	lcall	__gptrput
;	ser_ir.c 128
;	genCmpEq
	cjne	r0,#0x0A,00115$
	mov	a,#0x01
	sjmp	00116$
00115$:
	clr	a
00116$:
;	genIpop
	pop	ar2
;	genIfx
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00105$
00117$:
00107$:
;	ser_ir.c 130
;	genAssign
	mov	dptr,#_ser_gets_s_1_1
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;	genPlus
	mov	a,r6
	add	a,r3
	mov	r3,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,r4
	mov	r4,a
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
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
;	genAssign
	mov	dptr,#_xcnt
	movx	a,@dptr
	mov	r2,a
;	genMinus
	clr	c
	mov	a,#0x0A
	subb	a,r2
	mov	r2,a
;	genRet
	mov	dpl,r2
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
;	genAssign
	mov	dptr,#_rcnt
	movx	a,@dptr
	mov	r2,a
;	genRet
	mov	dpl,r2
00101$:
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
