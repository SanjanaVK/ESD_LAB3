;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:10:19 2002

;--------------------------------------------------------
	.module _strchr
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strchr_PARM_2
	.globl _strchr
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
_strchr_PARM_2::
	.ds 1
_strchr_string_1_1::
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
;Allocation info for local variables in function 'strchr'
;------------------------------------------------------------
;ch                        Allocated to in memory with name '_strchr_PARM_2'
;string                    Allocated to in memory with name '_strchr_string_1_1'
;	_strchr.c 27
;	-----------------------------------------
;	 function strchr
;	-----------------------------------------
_strchr:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	_strchr.c 0
;	genReceive
	push	b
	push	dph
	push	dpl
	mov	dptr,#_strchr_string_1_1
	pop	acc
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
;	_strchr.c 32
;	genAssign
	mov	dptr,#_strchr_PARM_2
	movx	a,@dptr
	mov	r2,a
;	genAssign
	mov	dptr,#_strchr_string_1_1
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
00102$:
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
;	genIfx
; Peephole 105   removed redundant mov
	mov  r6,a
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00104$
00113$:
;	genCmpEq
	mov	a,r6
	cjne	a,ar2,00114$
; Peephole 132   changed ljmp to sjmp
	sjmp 00104$
00114$:
;	_strchr.c 33
;	genPlus
;	genPlusIncr
	inc	r3
	cjne	r3,#0x00,00115$
	inc	r4
00115$:
;	genAssign
	mov	dptr,#_strchr_string_1_1
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
; Peephole 132   changed ljmp to sjmp
	sjmp 00102$
00104$:
;	_strchr.c 35
;	genAssign
	mov	dptr,#_strchr_string_1_1
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
;	genCmpEq
; Peephole 105   removed redundant mov
	mov  r6,a
; Peephole 132   changed ljmp to sjmp
; Peephole 199   optimized misc jump sequence
	cjne a,ar2,00106$
;00116$:
; Peephole 200   removed redundant sjmp
00117$:
;	_strchr.c 36
;	genRet
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
; Peephole 132   changed ljmp to sjmp
	sjmp 00107$
00106$:
;	_strchr.c 37
;	genRet
; Peephole 181   used 16 bit load of dptr
	mov  dptr,#0x0000
	mov	b,#0x00
00107$:
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
