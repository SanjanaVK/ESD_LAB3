;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:09:58 2002

;--------------------------------------------------------
	.module _memcmp
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _memcmp_PARM_3
	.globl _memcmp_PARM_2
	.globl _memcmp
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
	.area	OSEG    (OVR,DATA)
_memcmp_PARM_2::
	.ds 3
_memcmp_PARM_3::
	.ds 2
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
;Allocation info for local variables in function 'memcmp'
;------------------------------------------------------------
;	_memcmp.c 26
;	-----------------------------------------
;	 function memcmp
;	-----------------------------------------
_memcmp:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	_memcmp.c 0
;	genReceive
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	_memcmp.c 32
;	genIfx
	mov	a,_memcmp_PARM_3
	orl	a,(_memcmp_PARM_3 + 1)
;	genIfxJump
; Peephole 109   removed ljmp by inverse jump logic
	jnz  00104$
00113$:
;	_memcmp.c 33
;	genRet
; Peephole 181   used 16 bit load of dptr
	mov  dptr,#0x0000
	ljmp	00107$
;	_memcmp.c 35
00104$:
;	genMinus
;	genMinusDec
	mov	a,_memcmp_PARM_3
	add	a,#0xff
	mov	r5,a
	mov	a,(_memcmp_PARM_3 + 1)
	addc	a,#0xff
	mov	r6,a
;	genAssign
	mov	_memcmp_PARM_3,r5
	mov	(_memcmp_PARM_3 + 1),r6
;	genIfx
	mov	a,r5
	orl	a,r6
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00106$
00114$:
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
;	genAssign
	mov	r6,_memcmp_PARM_2
	mov	r7,(_memcmp_PARM_2 + 1)
	mov	r0,(_memcmp_PARM_2 + 2)
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	lcall	__gptrget
	mov	r1,a
;	genCmpEq
	mov	a,r5
; Peephole 132   changed ljmp to sjmp
; Peephole 199   optimized misc jump sequence
	cjne a,ar1,00106$
;00115$:
; Peephole 200   removed redundant sjmp
00116$:
;	_memcmp.c 36
;	genPlus
;	genPlusIncr
	inc	r2
	cjne	r2,#0x00,00117$
	inc	r3
00117$:
;	_memcmp.c 37
;	genPlus
;	genPlusIncr
	mov	a,#0x01
	add	a,r6
	mov	_memcmp_PARM_2,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,r7
	mov	(_memcmp_PARM_2 + 1),a
	mov	(_memcmp_PARM_2 + 2),r0
; Peephole 132   changed ljmp to sjmp
	sjmp 00104$
00106$:
;	_memcmp.c 40
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
;	genAssign
	mov	r3,_memcmp_PARM_2
	mov	r4,(_memcmp_PARM_2 + 1)
	mov	r5,(_memcmp_PARM_2 + 2)
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
;	genMinus
	clr	c
	mov	a,r2
	subb	a,r3
	mov	r2,a
;	genCast
	mov	r3,#0x00
;	genRet
	mov	dpl,r2
	mov	dph,r3
00107$:
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
