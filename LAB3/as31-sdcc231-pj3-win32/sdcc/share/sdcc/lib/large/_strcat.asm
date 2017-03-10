;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:10:23 2002

;--------------------------------------------------------
	.module _strcat
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strcat_PARM_2
	.globl _strcat
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
_strcat_PARM_2::
	.ds 3
_strcat_dst_1_1::
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
;Allocation info for local variables in function 'strcat'
;------------------------------------------------------------
;src                       Allocated to in memory with name '_strcat_PARM_2'
;dst                       Allocated to in memory with name '_strcat_dst_1_1'
;cp                        Allocated to in memory with name '_strcat_cp_1_1'
;	_strcat.c 26
;	-----------------------------------------
;	 function strcat
;	-----------------------------------------
_strcat:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	_strcat.c 38
;	genReceive
	push	b
	push	dph
	push	dpl
	mov	dptr,#_strcat_dst_1_1
	pop	acc
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
;	_strcat.c 31
;	genAssign
	mov	dptr,#_strcat_dst_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
;	_strcat.c 33
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
	jz  00111$
00113$:
;	_strcat.c 34
;	genPlus
;	genPlusIncr
;	tail increment optimized
	inc	r2
	cjne	r2,#0x00,00101$
	inc	r3
;	_strcat.c 36
; Peephole 132   changed ljmp to sjmp
	sjmp 00101$
00111$:
;	genAssign
	mov	dptr,#_strcat_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	genAssign
00104$:
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
;	genPlus
;	genPlusIncr
	inc	r5
	cjne	r5,#0x00,00114$
	inc	r6
00114$:
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r0
	lcall	__gptrput
	inc	dptr
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	genIfx
	mov	a,r0
;	genIfxJump
; Peephole 109   removed ljmp by inverse jump logic
	jnz  00104$
00115$:
;	_strcat.c 38
;	genAssign
	mov	dptr,#_strcat_dst_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
;	genRet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
00107$:
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
