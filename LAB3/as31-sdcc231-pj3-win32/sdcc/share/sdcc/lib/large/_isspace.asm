;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:10:17 2002

;--------------------------------------------------------
	.module _isspace
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _isspace
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
_isspace_c_1_1::
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
;Allocation info for local variables in function 'isspace'
;------------------------------------------------------------
;c                         Allocated to in memory with name '_isspace_c_1_1'
;	_isspace.c 24
;	-----------------------------------------
;	 function isspace
;	-----------------------------------------
_isspace:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	_isspace.c 0
;	genReceive
	push	dpl
	mov	dptr,#_isspace_c_1_1
	pop	acc
	movx	@dptr,a
;	_isspace.c 27
;	genAssign
	mov	dptr,#_isspace_c_1_1
	movx	a,@dptr
	mov	r2,a
;	genCmpEq
	cjne	r2,#0x20,00115$
; Peephole 132   changed ljmp to sjmp
	sjmp 00101$
00115$:
;	_isspace.c 28
;	genCmpEq
	cjne	r2,#0x0C,00116$
; Peephole 132   changed ljmp to sjmp
	sjmp 00101$
00116$:
;	_isspace.c 29
;	genCmpEq
	cjne	r2,#0x0A,00117$
; Peephole 132   changed ljmp to sjmp
	sjmp 00101$
00117$:
;	_isspace.c 30
;	genCmpEq
	cjne	r2,#0x0D,00118$
; Peephole 132   changed ljmp to sjmp
	sjmp 00101$
00118$:
;	_isspace.c 31
;	genCmpEq
	cjne	r2,#0x09,00119$
; Peephole 132   changed ljmp to sjmp
	sjmp 00101$
00119$:
;	_isspace.c 32
;	genCmpEq
; Peephole 132   changed ljmp to sjmp
; Peephole 199   optimized misc jump sequence
	cjne r2,#0x0B,00102$
;00120$:
; Peephole 200   removed redundant sjmp
00121$:
00101$:
;	_isspace.c 33
;	genRet
	mov	dpl,#0x01
; Peephole 132   changed ljmp to sjmp
	sjmp 00108$
00102$:
;	_isspace.c 34
;	genRet
	mov	dpl,#0x00
00108$:
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
