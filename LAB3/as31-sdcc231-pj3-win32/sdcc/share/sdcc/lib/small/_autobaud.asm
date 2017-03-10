;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:09:54 2002

;--------------------------------------------------------
	.module _autobaud
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _autobaud
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
;Allocation info for local variables in function 'autobaud'
;------------------------------------------------------------
;	_autobaud.c 52
;	-----------------------------------------
;	 function autobaud
;	-----------------------------------------
_autobaud:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	_autobaud.c 56
;	genAssign
	mov	_TMOD,#0x11
;	_autobaud.c 57
;	genAssign
	mov	_TCON,#0x00
;	_autobaud.c 58
;	genAssign
	mov	_TL1,#0x00
;	genAssign
	mov	_TH1,#0x00
;	_autobaud.c 62
00102$:
;	genIfx
;	genIfxJump
; Peephole 112   removed ljmp by inverse jump logic
	jb   _RXD,00102$
00142$:
;	_autobaud.c 66
;	genIfx
;	genIfxJump
; Peephole 112   removed ljmp by inverse jump logic
	jb   _RXD,00102$
00143$:
;	_autobaud.c 67
;	genIfx
;	genIfxJump
; Peephole 112   removed ljmp by inverse jump logic
	jb   _RXD,00102$
00144$:
;	_autobaud.c 68
;	genIfx
;	genIfxJump
; Peephole 112   removed ljmp by inverse jump logic
	jb   _RXD,00102$
00145$:
;	_autobaud.c 69
;	genIfx
;	genIfxJump
; Peephole 112   removed ljmp by inverse jump logic
	jb   _RXD,00102$
00146$:
;	_autobaud.c 72
00113$:
;	genIfx
;	genIfxJump
; Peephole 111   removed ljmp by inverse jump logic
	jnb  _RXD,00113$
00147$:
;	_autobaud.c 73
;	genAssign
	setb	_TR1
;	_autobaud.c 74
00116$:
;	genIfx
;	genIfxJump
; Peephole 112   removed ljmp by inverse jump logic
	jb   _RXD,00116$
00148$:
;	_autobaud.c 75
00119$:
;	genIfx
;	genIfxJump
; Peephole 111   removed ljmp by inverse jump logic
	jnb  _RXD,00119$
00149$:
;	_autobaud.c 76
00122$:
;	genIfx
;	genIfxJump
; Peephole 112   removed ljmp by inverse jump logic
	jb   _RXD,00122$
00150$:
;	_autobaud.c 77
00125$:
;	genIfx
;	genIfxJump
; Peephole 111   removed ljmp by inverse jump logic
	jnb  _RXD,00125$
00151$:
;	_autobaud.c 78
;	genAssign
	clr	_TR1
;	_autobaud.c 81
;	genLeftShift
;	genLeftShiftLiteral
;	genlshOne
	mov	a,_TH1
	add	a,acc
	mov	r2,a
;	genRightShift
;	genRightShiftLiteral
;	genrshOne
	mov	a,_TL1
	rl	a
	anl	a,#0x01
;	genOr
; Peephole 105   removed redundant mov
	mov  r3,a
	orl	a,r2
;	_autobaud.c 84
;	genLeftShift
;	genLeftShiftLiteral
;	genlshOne
; Peephole 105   removed redundant mov
	mov  _TH1,a
	add	a,acc
	mov	r2,a
;	genRightShift
;	genRightShiftLiteral
;	genrshOne
	mov	a,_TL1
	rl	a
	rl	a
;	genAnd
;	genOr
; Peephole 139   removed redundant mov
; Peephole 183   avoided anl during execution
	anl  a,#(0x03 & 0x01)
	mov  r3,a
	orl	a,r2
;	_autobaud.c 87
;	genCpl
; Peephole 105   removed redundant mov
; Peephole 184   removed redundant mov
	cpl  a
;	_autobaud.c 90
;	genPlus
;	genPlusIncr
; Peephole 185   changed order of increment (acc incremented also!)
	inc  a
	mov  _TH1,a
;	_autobaud.c 92
;	genAssign
	mov	_TL1,_TH1
;	_autobaud.c 93
;	genAssign
	mov	_TMOD,#0x21
;	_autobaud.c 94
;	genAssign
	mov	_PCON,#0x80
;	_autobaud.c 95
;	genAssign
	mov	_SCON,#0x52
00128$:
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
