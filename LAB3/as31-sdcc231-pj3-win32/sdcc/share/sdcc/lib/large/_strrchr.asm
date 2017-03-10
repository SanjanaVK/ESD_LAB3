;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:10:20 2002

;--------------------------------------------------------
	.module _strrchr
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strrchr_PARM_2
	.globl _strrchr
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
_strrchr_PARM_2::
	.ds 1
_strrchr_string_1_1::
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
;Allocation info for local variables in function 'strrchr'
;------------------------------------------------------------
;ch                        Allocated to in memory with name '_strrchr_PARM_2'
;string                    Allocated to in memory with name '_strrchr_string_1_1'
;start                     Allocated to in memory with name '_strrchr_start_1_1'
;	_strrchr.c 27
;	-----------------------------------------
;	 function strrchr
;	-----------------------------------------
_strrchr:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	_strrchr.c 0
;	genReceive
	push	b
	push	dph
	push	dpl
	mov	dptr,#_strrchr_string_1_1
	pop	acc
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
;	_strrchr.c 32
;	genAssign
	mov	dptr,#_strrchr_string_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
;	_strrchr.c 34
;	genAssign
	mov	ar5,r2
	mov	ar6,r3
	mov	ar7,r4
00101$:
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
	cjne	r5,#0x00,00116$
	inc	r6
00116$:
;	genAssign
	mov	dptr,#_strrchr_string_1_1
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	genIfx
	mov	a,r0
;	genIfxJump
; Peephole 109   removed ljmp by inverse jump logic
	jnz  00101$
00117$:
;	_strrchr.c 37
;	genAssign
	mov	dptr,#_strrchr_PARM_2
	movx	a,@dptr
	mov	r5,a
00105$:
;	genMinus
	mov	dptr,#_strrchr_string_1_1
;	genMinusDec
	movx	a,@dptr
	add	a,#0xff
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0xff
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
;	genAssign
	mov	dptr,#_strrchr_string_1_1
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
;	genCmpEq
	mov	a,r6
	cjne	a,ar2,00118$
	mov	a,r7
	cjne	a,ar3,00118$
	mov	a,r0
	cjne	a,ar4,00118$
; Peephole 132   changed ljmp to sjmp
	sjmp 00107$
00118$:
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	lcall	__gptrget
;	genCmpEq
; Peephole 105   removed redundant mov
	mov  r1,a
; Peephole 132   changed ljmp to sjmp
; Peephole 199   optimized misc jump sequence
	cjne a,ar5,00105$
;00119$:
; Peephole 200   removed redundant sjmp
00120$:
00107$:
;	_strrchr.c 40
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	lcall	__gptrget
;	genCmpEq
; Peephole 105   removed redundant mov
	mov  r2,a
; Peephole 132   changed ljmp to sjmp
; Peephole 199   optimized misc jump sequence
	cjne a,ar5,00109$
;00121$:
; Peephole 200   removed redundant sjmp
00122$:
;	_strrchr.c 41
;	genRet
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
; Peephole 132   changed ljmp to sjmp
	sjmp 00110$
00109$:
;	_strrchr.c 43
;	genRet
; Peephole 181   used 16 bit load of dptr
	mov  dptr,#0x0000
	mov	b,#0x00
00110$:
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
