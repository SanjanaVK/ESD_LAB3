;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:10:20 2002

;--------------------------------------------------------
	.module _strpbrk
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strpbrk_PARM_2
	.globl _strpbrk
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
_strpbrk_sloc0_1_0::
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
_strpbrk_PARM_2::
	.ds 3
_strpbrk_string_1_1::
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
;Allocation info for local variables in function 'strpbrk'
;------------------------------------------------------------
;sloc0                     Allocated to in memory with name '_strpbrk_sloc0_1_0'
;control                   Allocated to in memory with name '_strpbrk_PARM_2'
;string                    Allocated to in memory with name '_strpbrk_string_1_1'
;ch                        Allocated to in memory with name '_strpbrk_ch_1_1'
;	_strpbrk.c 27
;	-----------------------------------------
;	 function strpbrk
;	-----------------------------------------
_strpbrk:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	_strpbrk.c 0
;	genReceive
	push	b
	push	dph
	push	dpl
	mov	dptr,#_strpbrk_string_1_1
	pop	acc
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
;	_strpbrk.c 34
;	genAssign
	mov	dptr,#_strpbrk_PARM_2
	movx	a,@dptr
	mov	_strpbrk_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_strpbrk_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_strpbrk_sloc0_1_0 + 2),a
;	genAssign
	mov	dptr,#_strpbrk_string_1_1
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
00103$:
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
;	genIfx
; Peephole 105   removed redundant mov
	mov  r0,a
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00105$
00111$:
;	_strpbrk.c 35
;	genAssign
	mov	dptr,#_strchr_PARM_2
	mov	a,r0
	movx	@dptr,a
;	genCall
	mov	dpl,_strpbrk_sloc0_1_0
	mov	dph,(_strpbrk_sloc0_1_0 + 1)
	mov	b,(_strpbrk_sloc0_1_0 + 2)
	push	ar5
	push	ar6
	push	ar7
	lcall	_strchr
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	pop	ar7
	pop	ar6
	pop	ar5
;	genIfx
	mov	a,r0
	orl	a,r1
	orl	a,r2
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00103$
00112$:
;	_strpbrk.c 36
;	genRet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
; Peephole 132   changed ljmp to sjmp
	sjmp 00106$
00105$:
;	_strpbrk.c 39
;	genRet
; Peephole 181   used 16 bit load of dptr
	mov  dptr,#0x0000
	mov	b,#0x00
00106$:
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
