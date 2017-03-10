;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:10:00 2002

;--------------------------------------------------------
	.module _strncmp
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strncmp_PARM_3
	.globl _strncmp_PARM_2
	.globl _strncmp
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
_strncmp_PARM_2::
	.ds 3
_strncmp_PARM_3::
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
;Allocation info for local variables in function 'strncmp'
;------------------------------------------------------------
;	_strncmp.c 27
;	-----------------------------------------
;	 function strncmp
;	-----------------------------------------
_strncmp:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	_strncmp.c 0
;	genReceive
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	_strncmp.c 33
;	genIfx
	mov	a,_strncmp_PARM_3
	orl	a,(_strncmp_PARM_3 + 1)
;	genIfxJump
; Peephole 109   removed ljmp by inverse jump logic
	jnz  00114$
00115$:
;	_strncmp.c 34
;	genRet
; Peephole 181   used 16 bit load of dptr
	mov  dptr,#0x0000
	ljmp	00108$
;	_strncmp.c 36
00114$:
;	genAssign
;	genAssign
	mov	r5,_strncmp_PARM_2
	mov	r6,(_strncmp_PARM_2 + 1)
	mov	r7,(_strncmp_PARM_2 + 2)
00105$:
;	genMinus
;	genMinusDec
	mov	a,_strncmp_PARM_3
	add	a,#0xff
	mov	r0,a
	mov	a,(_strncmp_PARM_3 + 1)
	addc	a,#0xff
	mov	r1,a
;	genAssign
	mov	_strncmp_PARM_3,r0
	mov	(_strncmp_PARM_3 + 1),r1
;	genIfx
	mov	a,r0
	orl	a,r1
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00107$
00116$:
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
;	genIfx
; Peephole 105   removed redundant mov
	mov  r0,a
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00107$
00117$:
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r1,a
;	genCmpEq
	mov	a,r0
; Peephole 132   changed ljmp to sjmp
; Peephole 199   optimized misc jump sequence
	cjne a,ar1,00107$
;00118$:
; Peephole 200   removed redundant sjmp
00119$:
;	_strncmp.c 37
;	genPlus
;	genPlusIncr
	inc	r2
	cjne	r2,#0x00,00120$
	inc	r3
00120$:
;	_strncmp.c 38
;	genPlus
;	genPlusIncr
;	tail increment optimized
	inc	r5
	cjne	r5,#0x00,00105$
	inc	r6
; Peephole 132   changed ljmp to sjmp
	sjmp 00105$
00107$:
;	_strncmp.c 41
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
;	genMinus
	clr	c
	mov	a,r2
	subb	a,r5
;	genCast
; Peephole 105   removed redundant mov
	mov  r2,a
	rlc	a
	subb	a,acc
	mov	r3,a
;	genRet
	mov	dpl,r2
	mov	dph,r3
00108$:
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
