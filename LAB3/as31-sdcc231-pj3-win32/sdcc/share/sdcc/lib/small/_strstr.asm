;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:10:00 2002

;--------------------------------------------------------
	.module _strstr
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strstr_PARM_2
	.globl _strstr
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
_strstr_PARM_2::
	.ds 3
_strstr_s1_1_1::
	.ds 3
_strstr_sloc0_1_0::
	.ds 3
_strstr_sloc1_1_0::
	.ds 3
_strstr_sloc2_1_0::
	.ds 3
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
;Allocation info for local variables in function 'strstr'
;------------------------------------------------------------
;	_strstr.c 27
;	-----------------------------------------
;	 function strstr
;	-----------------------------------------
_strstr:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	_strstr.c 0
;	genReceive
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	_strstr.c 32
;	genAssign
	mov	_strstr_sloc2_1_0,r2
	mov	(_strstr_sloc2_1_0 + 1),r3
	mov	(_strstr_sloc2_1_0 + 2),r4
;	_strstr.c 36
;	genAssign
	mov	_strstr_sloc0_1_0,_strstr_PARM_2
	mov	(_strstr_sloc0_1_0 + 1),(_strstr_PARM_2 + 1)
	mov	(_strstr_sloc0_1_0 + 2),(_strstr_PARM_2 + 2)
;	genPointerGet
;	genGenPointerGet
	mov	dpl,_strstr_sloc0_1_0
	mov	dph,(_strstr_sloc0_1_0 + 1)
	mov	b,(_strstr_sloc0_1_0 + 2)
	lcall	__gptrget
;	genIfx
; Peephole 105   removed redundant mov
	mov  r0,a
;	genIfxJump
; Peephole 109   removed ljmp by inverse jump logic
	jnz  00122$
00123$:
;	_strstr.c 37
;	genRet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	ljmp	00113$
;	_strstr.c 39
00122$:
;	genAssign
00110$:
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
	jnz	00124$
	ljmp	00112$
00124$:
;	_strstr.c 42
;	genAssign
	mov	_strstr_sloc1_1_0,_strstr_sloc0_1_0
	mov	(_strstr_sloc1_1_0 + 1),(_strstr_sloc0_1_0 + 1)
	mov	(_strstr_sloc1_1_0 + 2),(_strstr_sloc0_1_0 + 2)
;	_strstr.c 44
;	genAssign
	mov	_strstr_s1_1_1,r2
	mov	(_strstr_s1_1_1 + 1),r3
	mov	(_strstr_s1_1_1 + 2),r4
;	genAssign
	mov	r6,_strstr_sloc1_1_0
	mov	r7,(_strstr_sloc1_1_0 + 1)
	mov	r5,(_strstr_sloc1_1_0 + 2)
00105$:
;	genPointerGet
;	genGenPointerGet
	mov	dpl,_strstr_s1_1_1
	mov	dph,(_strstr_s1_1_1 + 1)
	mov	b,(_strstr_s1_1_1 + 2)
	lcall	__gptrget
;	genIfx
; Peephole 105   removed redundant mov
	mov  r0,a
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00107$
00125$:
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	lcall	__gptrget
;	genIfx
; Peephole 105   removed redundant mov
	mov  r1,a
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00107$
00126$:
;	genMinus
	clr	c
	mov	a,r0
	subb	a,r1
;	genIfx
;	genIfxJump
; Peephole 109   removed ljmp by inverse jump logic
	jnz  00107$
00127$:
;	_strstr.c 45
;	genPlus
;	genPlusIncr
	inc	_strstr_s1_1_1
	clr	a
	cjne	a,_strstr_s1_1_1,00128$
	inc	(_strstr_s1_1_1 + 1)
00128$:
;	genPlus
;	genPlusIncr
;	tail increment optimized
	inc	r6
	cjne	r6,#0x00,00105$
	inc	r7
; Peephole 132   changed ljmp to sjmp
	sjmp 00105$
00107$:
;	_strstr.c 47
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	lcall	__gptrget
;	genIfx
; Peephole 105   removed redundant mov
	mov  r6,a
;	genIfxJump
; Peephole 109   removed ljmp by inverse jump logic
	jnz  00109$
00129$:
;	_strstr.c 48
;	genRet
	mov	dpl,_strstr_sloc2_1_0
	mov	dph,(_strstr_sloc2_1_0 + 1)
	mov	b,(_strstr_sloc2_1_0 + 2)
; Peephole 132   changed ljmp to sjmp
	sjmp 00113$
00109$:
;	_strstr.c 50
;	genPlus
;	genPlusIncr
	inc	r2
	cjne	r2,#0x00,00130$
	inc	r3
00130$:
;	genAssign
	mov	_strstr_sloc2_1_0,r2
	mov	(_strstr_sloc2_1_0 + 1),r3
	mov	(_strstr_sloc2_1_0 + 2),r4
	ljmp	00110$
00112$:
;	_strstr.c 53
;	genRet
; Peephole 181   used 16 bit load of dptr
	mov  dptr,#0x0000
	mov	b,#0x00
00113$:
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
