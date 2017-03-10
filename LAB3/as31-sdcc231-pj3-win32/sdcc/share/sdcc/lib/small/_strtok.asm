;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:10:01 2002

;--------------------------------------------------------
	.module _strtok
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strtok_PARM_2
	.globl _strtok
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
_strtok_s_1_1:
	.ds 3
_strtok_PARM_2::
	.ds 3
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
;Allocation info for local variables in function 'strtok'
;------------------------------------------------------------
;s                         Allocated to in memory with name '_strtok_s_1_1'
;control                   Allocated to in memory with name '_strtok_PARM_2'
;str                       Allocated to registers r2 r3 r4 
;s1                        Allocated to registers r2 r3 r4 
;	_strtok.c 32
;	-----------------------------------------
;	 function strtok
;	-----------------------------------------
_strtok:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	_strtok.c 0
;	genReceive
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	_strtok.c 39
;	genIfx
	mov	a,r2
	orl	a,r3
	orl	a,r4
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00102$
00114$:
;	_strtok.c 40
;	genAssign
	mov	_strtok_s_1_1,r2
	mov	(_strtok_s_1_1 + 1),r3
	mov	(_strtok_s_1_1 + 2),r4
00102$:
;	_strtok.c 42
;	genAssign
	mov	r2,_strtok_s_1_1
	mov	r3,(_strtok_s_1_1 + 1)
	mov	r4,(_strtok_s_1_1 + 2)
;	_strtok.c 44
00105$:
;	genAssign
	mov	r5,_strtok_s_1_1
	mov	r6,(_strtok_s_1_1 + 1)
	mov	r7,(_strtok_s_1_1 + 2)
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
;	genIfx
; Peephole 105   removed redundant mov
	mov  r5,a
;	genIfxJump
	jnz	00115$
	ljmp	00107$
00115$:
;	_strtok.c 45
;	genAssign
	mov	r5,_strtok_s_1_1
	mov	r6,(_strtok_s_1_1 + 1)
	mov	r7,(_strtok_s_1_1 + 2)
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	_strchr_PARM_2,a
;	genCall
	mov	dpl,_strtok_PARM_2
	mov	dph,(_strtok_PARM_2 + 1)
	mov	b,(_strtok_PARM_2 + 2)
	push	ar2
	push	ar3
	push	ar4
	lcall	_strchr
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	pop	ar4
	pop	ar3
	pop	ar2
;	genIfx
	mov	a,r5
	orl	a,r6
	orl	a,r7
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00104$
00116$:
;	_strtok.c 46
;	genAssign
	mov	r5,_strtok_s_1_1
	mov	r6,(_strtok_s_1_1 + 1)
	mov	r7,(_strtok_s_1_1 + 2)
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
; Peephole 180   changed mov to clr
	clr  a
	lcall	__gptrput
;	genPlus
;	genPlusIncr
	inc	_strtok_s_1_1
	clr	a
	cjne	a,_strtok_s_1_1,00117$
	inc	(_strtok_s_1_1 + 1)
00117$:
;	_strtok.c 47
;	genRet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
; Peephole 132   changed ljmp to sjmp
	sjmp 00108$
00104$:
;	_strtok.c 49
;	genPlus
;	genPlusIncr
	inc	_strtok_s_1_1
	clr	a
	cjne	a,_strtok_s_1_1,00118$
	inc	(_strtok_s_1_1 + 1)
00118$:
	ljmp	00105$
00107$:
;	_strtok.c 51
;	genRet
; Peephole 181   used 16 bit load of dptr
	mov  dptr,#0x0000
	mov	b,#0x00
00108$:
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
