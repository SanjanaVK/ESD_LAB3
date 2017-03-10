;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:10:17 2002

;--------------------------------------------------------
	.module _isxdigit
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _isxdigit
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
_isxdigit_c_1_1::
	.ds 1
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
;Allocation info for local variables in function 'isxdigit'
;------------------------------------------------------------
;c                         Allocated to in memory with name '_isxdigit_c_1_1'
;	_isxdigit.c 24
;	-----------------------------------------
;	 function isxdigit
;	-----------------------------------------
_isxdigit:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	_isxdigit.c 0
;	genReceive
	push	dpl
	mov	dptr,#_isxdigit_c_1_1
	pop	acc
	movx	@dptr,a
;	_isxdigit.c 27
;	genAssign
	mov	dptr,#_isxdigit_c_1_1
	movx	a,@dptr
	mov	r2,a
;	genCmpLt
;	genCmp
	cjne	r2,#0x30,00113$
00113$:
;	genIfxJump
; Peephole 132   changed ljmp to sjmp
; Peephole 160   removed sjmp by inverse jump logic
	jc   00105$
00114$:
;	genCmpGt
;	genCmp
	clr	c
	mov	a,#0x39
	subb	a,r2
;	genIfxJump
; Peephole 108   removed ljmp by inverse jump logic
	jnc  00101$
00115$:
00105$:
;	_isxdigit.c 28
;	genAssign
	mov	dptr,#_isxdigit_c_1_1
	movx	a,@dptr
	mov	r2,a
;	genCmpLt
;	genCmp
	cjne	r2,#0x61,00116$
00116$:
;	genIfxJump
; Peephole 132   changed ljmp to sjmp
; Peephole 160   removed sjmp by inverse jump logic
	jc   00107$
00117$:
;	genCmpGt
;	genCmp
	clr	c
	mov	a,#0x66
	subb	a,r2
;	genIfxJump
; Peephole 108   removed ljmp by inverse jump logic
	jnc  00101$
00118$:
00107$:
;	_isxdigit.c 29
;	genAssign
	mov	dptr,#_isxdigit_c_1_1
	movx	a,@dptr
	mov	r2,a
;	genCmpLt
;	genCmp
	cjne	r2,#0x41,00119$
00119$:
;	genIfxJump
; Peephole 132   changed ljmp to sjmp
; Peephole 160   removed sjmp by inverse jump logic
	jc   00102$
00120$:
;	genCmpGt
;	genCmp
	clr	c
	mov	a,#0x46
	subb	a,r2
;	genIfxJump
; Peephole 132   changed ljmp to sjmp
; Peephole 160   removed sjmp by inverse jump logic
	jc   00102$
00121$:
00101$:
;	_isxdigit.c 30
;	genRet
	mov	dpl,#0x01
; Peephole 132   changed ljmp to sjmp
	sjmp 00108$
00102$:
;	_isxdigit.c 31
;	genRet
	mov	dpl,#0x00
00108$:
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
