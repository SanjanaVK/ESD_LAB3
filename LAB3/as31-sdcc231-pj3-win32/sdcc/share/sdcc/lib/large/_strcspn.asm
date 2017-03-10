;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:10:19 2002

;--------------------------------------------------------
	.module _strcspn
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strcspn_PARM_2
	.globl _strcspn
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
_strcspn_sloc1_1_0::
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
_strcspn_PARM_2::
	.ds 3
_strcspn_string_1_1::
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
;Allocation info for local variables in function 'strcspn'
;------------------------------------------------------------
;sloc0                     Allocated to in memory with name '_strcspn_sloc0_1_0'
;sloc1                     Allocated to in memory with name '_strcspn_sloc1_1_0'
;control                   Allocated to in memory with name '_strcspn_PARM_2'
;string                    Allocated to in memory with name '_strcspn_string_1_1'
;count                     Allocated to in memory with name '_strcspn_count_1_1'
;ch                        Allocated to in memory with name '_strcspn_ch_1_1'
;	_strcspn.c 27
;	-----------------------------------------
;	 function strcspn
;	-----------------------------------------
_strcspn:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	_strcspn.c 42
;	genReceive
	push	b
	push	dph
	push	dpl
	mov	dptr,#_strcspn_string_1_1
	pop	acc
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
;	_strcspn.c 35
;	genAssign
	mov	dptr,#_strcspn_PARM_2
	movx	a,@dptr
	mov	_strcspn_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_strcspn_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_strcspn_sloc1_1_0 + 2),a
;	genAssign
	mov	dptr,#_strcspn_string_1_1
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	genAssign
	mov	r0,#0x00
	mov	r1,#0x00
00104$:
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
;	genIfx
; Peephole 105   removed redundant mov
	mov  r2,a
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00106$
00112$:
;	_strcspn.c 36
;	genAssign
	mov	dptr,#_strchr_PARM_2
	mov	a,r2
	movx	@dptr,a
;	genCall
	mov	dpl,_strcspn_sloc1_1_0
	mov	dph,(_strcspn_sloc1_1_0 + 1)
	mov	b,(_strcspn_sloc1_1_0 + 2)
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
; Peephole 109   removed ljmp by inverse jump logic
	jnz  00106$
00113$:
;	_strcspn.c 39
;	genPlus
;	genPlusIncr
;	tail increment optimized
	inc	r0
	cjne	r0,#0x00,00104$
	inc	r1
; Peephole 132   changed ljmp to sjmp
	sjmp 00104$
00106$:
;	_strcspn.c 42
;	genRet
	mov	dpl,r0
	mov	dph,r1
00107$:
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
