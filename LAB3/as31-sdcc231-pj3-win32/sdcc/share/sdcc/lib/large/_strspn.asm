;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:10:20 2002

;--------------------------------------------------------
	.module _strspn
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strspn_PARM_2
	.globl _strspn
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
_strspn_sloc1_1_0::
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
_strspn_PARM_2::
	.ds 3
_strspn_string_1_1::
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
;Allocation info for local variables in function 'strspn'
;------------------------------------------------------------
;sloc0                     Allocated to in memory with name '_strspn_sloc0_1_0'
;sloc1                     Allocated to in memory with name '_strspn_sloc1_1_0'
;control                   Allocated to in memory with name '_strspn_PARM_2'
;string                    Allocated to in memory with name '_strspn_string_1_1'
;count                     Allocated to in memory with name '_strspn_count_1_1'
;ch                        Allocated to in memory with name '_strspn_ch_1_1'
;	_strspn.c 27
;	-----------------------------------------
;	 function strspn
;	-----------------------------------------
_strspn:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	_strspn.c 43
;	genReceive
	push	b
	push	dph
	push	dpl
	mov	dptr,#_strspn_string_1_1
	pop	acc
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
;	_strspn.c 35
;	genAssign
	mov	dptr,#_strspn_PARM_2
	movx	a,@dptr
	mov	_strspn_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_strspn_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_strspn_sloc1_1_0 + 2),a
;	genAssign
	mov	r5,#0x00
	mov	r6,#0x00
;	genAssign
	mov	dptr,#_strspn_string_1_1
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
00104$:
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r7
	mov	dph,r0
	mov	b,r1
	lcall	__gptrget
;	genIfx
; Peephole 105   removed redundant mov
	mov  r2,a
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00106$
00112$:
;	_strspn.c 36
;	genAssign
	mov	dptr,#_strchr_PARM_2
	mov	a,r2
	movx	@dptr,a
;	genCall
	mov	dpl,_strspn_sloc1_1_0
	mov	dph,(_strspn_sloc1_1_0 + 1)
	mov	b,(_strspn_sloc1_1_0 + 2)
	push	ar5
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	lcall	_strchr
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
	pop	ar5
;	genIfx
	mov	a,r2
	orl	a,r3
	orl	a,r4
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00106$
00113$:
;	_strspn.c 37
;	genPlus
;	genPlusIncr
	inc	r5
	cjne	r5,#0x00,00114$
	inc	r6
00114$:
;	_strspn.c 40
;	genPlus
;	genPlusIncr
	inc	r7
	cjne	r7,#0x00,00115$
	inc	r0
00115$:
;	genAssign
	mov	dptr,#_strspn_string_1_1
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
	ljmp	00104$
00106$:
;	_strspn.c 43
;	genAssign
	mov	dptr,#_strspn_string_1_1
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
;	genRet
	mov	dpl,r5
	mov	dph,r6
00107$:
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
