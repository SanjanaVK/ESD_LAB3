;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:10:02 2002

;--------------------------------------------------------
	.module serial
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _serial_getc
	.globl _serial_putc
	.globl _serial_interrupt_handler
	.globl _serial_init
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
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
_work_flag_byte_arrived:
	.ds 1
_work_flag_buffer_transfered:
	.ds 1
_tx_serial_buffer_empty:
	.ds 1
_rx_serial_buffer_empty:
	.ds 1
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_stx_index_in:
	.ds 1
_srx_index_in:
	.ds 1
_stx_index_out:
	.ds 1
_srx_index_out:
	.ds 1
_stx_buffer:
	.ds 256
_srx_buffer:
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
;Allocation info for local variables in function 'serial_init'
;------------------------------------------------------------
;	serial.c 25
;	-----------------------------------------
;	 function serial_init
;	-----------------------------------------
_serial_init:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	serial.c 27
;	genAssign
	mov	_SCON,#0x50
;	serial.c 28
;	genAssign
	mov	_T2CON,#0x34
;	serial.c 29
;	genAssign
	setb	_PS
;	serial.c 30
;	genAssign
	mov	_T2CON,#0x34
;	serial.c 31
;	genAssign
	mov	_RCAP2H,#0xFF
;	serial.c 32
;	genAssign
	mov	_RCAP2L,#0xDA
;	serial.c 34
;	genAssign
	clr	_RI
;	serial.c 35
;	genAssign
	clr	_TI
;	serial.c 37
;	genAssign
	mov	dptr,#_srx_index_out
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
	mov   dptr,#_stx_index_out
	movx  @dptr,a
	mov   dptr,#_srx_index_in
	movx  @dptr,a
	mov   dptr,#_stx_index_in
	movx  @dptr,a
;	serial.c 38
;	genAssign
	setb	_tx_serial_buffer_empty
;	genAssign
	setb	_rx_serial_buffer_empty
;	serial.c 39
;	genAssign
	clr	_work_flag_buffer_transfered
;	serial.c 40
;	genAssign
	clr	_work_flag_byte_arrived
;	serial.c 41
;	genAssign
	setb	_ES
00101$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'serial_interrupt_handler'
;------------------------------------------------------------
;	serial.c 44
;	-----------------------------------------
;	 function serial_interrupt_handler
;	-----------------------------------------
_serial_interrupt_handler:
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
;	serial.c 46
;	genAssign
	clr	_ES
;	serial.c 47
;	genIfx
;	genIfxJump
; Peephole 111   removed ljmp by inverse jump logic
	jnb  _TI,00105$
00113$:
;	serial.c 49
;	genAssign
	clr	_TI
;	serial.c 50
;	genAssign
	mov	dptr,#_stx_index_in
	movx	a,@dptr
	mov	r2,a
;	genAssign
	mov	dptr,#_stx_index_out
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
;	serial.c 52
;	genAssign
	setb	_tx_serial_buffer_empty
;	serial.c 53
;	genAssign
	setb	_work_flag_buffer_transfered
; Peephole 132   changed ljmp to sjmp
	sjmp 00105$
00102$:
;	serial.c 55
;	genPlus
	mov	dptr,#_stx_index_out
;	genPlusIncr
	mov	a,#0x01
	add	a,r3
	movx	@dptr,a
;	genPlus
	mov	a,r3
	add	a,#_stx_buffer
	mov	dpl,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,#(_stx_buffer >> 8)
	mov	dph,a
;	genPointerGet
;	genFarPointerGet
	movx	a,@dptr
	mov	_SBUF,a
00105$:
;	serial.c 57
;	genIfx
;	genIfxJump
; Peephole 111   removed ljmp by inverse jump logic
	jnb  _RI,00107$
00116$:
;	serial.c 59
;	genAssign
	clr	_RI
;	serial.c 60
;	genAssign
	mov	dptr,#_srx_index_in
	movx	a,@dptr
	mov	r2,a
;	genPlus
	mov	dptr,#_srx_index_in
;	genPlusIncr
	mov	a,#0x01
	add	a,r2
	movx	@dptr,a
;	genPlus
	mov	a,r2
	add	a,#_srx_buffer
	mov	dpl,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,#(_srx_buffer >> 8)
	mov	dph,a
;	genPointerSet
;	genFarPointerSet
	mov	a,_SBUF
	movx	@dptr,a
;	serial.c 61
;	genAssign
	setb	_work_flag_byte_arrived
;	serial.c 62
;	genAssign
	clr	_rx_serial_buffer_empty
00107$:
;	serial.c 64
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
;Allocation info for local variables in function 'serial_putc'
;------------------------------------------------------------
;	serial.c 69
;	-----------------------------------------
;	 function serial_putc
;	-----------------------------------------
_serial_putc:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	serial.c 78
;	genReceive
	mov	r2,dpl
;	serial.c 71
;	genAssign
	mov	dptr,#_stx_index_in
	movx	a,@dptr
	mov	r3,a
;	genPlus
	mov	dptr,#_stx_index_in
;	genPlusIncr
	mov	a,#0x01
	add	a,r3
	movx	@dptr,a
;	genPlus
	mov	a,r3
	add	a,#_stx_buffer
	mov	dpl,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,#(_stx_buffer >> 8)
	mov	dph,a
;	genPointerSet
;	genFarPointerSet
	mov	a,r2
	movx	@dptr,a
;	serial.c 72
;	genAssign
	clr	_ES
;	serial.c 73
;	genIfx
;	genIfxJump
; Peephole 111   removed ljmp by inverse jump logic
	jnb  _tx_serial_buffer_empty,00102$
00106$:
;	serial.c 75
;	genAssign
	clr	_tx_serial_buffer_empty
;	serial.c 76
;	genAssign
	setb	_TI
00102$:
;	serial.c 78
;	genAssign
	setb	_ES
00103$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'serial_getc'
;------------------------------------------------------------
;	serial.c 81
;	-----------------------------------------
;	 function serial_getc
;	-----------------------------------------
_serial_getc:
;	serial.c 83
;	genAssign
	mov	dptr,#_srx_index_out
	movx	a,@dptr
;	genPlus
;	genPlusIncr
; Peephole 214 reduced some extra movs
	mov  r2,a
	add  a,#0x01	
;	genAssign
; Peephole 100   removed redundant mov
	mov  r3,a
	mov  dptr,#_srx_index_out
	movx @dptr,a
;	genPlus
	mov	a,r2
	add	a,#_srx_buffer
	mov	dpl,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,#(_srx_buffer >> 8)
	mov	dph,a
;	genPointerGet
;	genFarPointerGet
	movx	a,@dptr
	mov	r2,a
;	serial.c 84
;	genAssign
	clr	_ES
;	serial.c 85
;	genAssign
	mov	dptr,#_srx_index_in
	movx	a,@dptr
	mov	r4,a
;	genCmpEq
	mov	a,r3
; Peephole 132   changed ljmp to sjmp
; Peephole 199   optimized misc jump sequence
	cjne a,ar4,00102$
;00106$:
; Peephole 200   removed redundant sjmp
00107$:
;	genAssign
	setb	_rx_serial_buffer_empty
00102$:
;	serial.c 86
;	genAssign
	setb	_ES
;	serial.c 87
;	genRet
	mov	dpl,r2
00103$:
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
