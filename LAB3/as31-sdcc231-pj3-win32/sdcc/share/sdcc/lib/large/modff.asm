;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:10:30 2002

;--------------------------------------------------------
	.module modff
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _modff_PARM_2
	.globl _modff
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
_modff_sloc0_1_0::
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
_modff_PARM_2::
	.ds 3
_modff_x_1_1::
	.ds 4
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
;Allocation info for local variables in function 'modff'
;------------------------------------------------------------
;sloc0                     Allocated to in memory with name '_modff_sloc0_1_0'
;y                         Allocated to in memory with name '_modff_PARM_2'
;x                         Allocated to in memory with name '_modff_x_1_1'
;	modff.c 23
;	-----------------------------------------
;	 function modff
;	-----------------------------------------
_modff:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	modff.c 26
;	genReceive
	push	acc
	push	b
	push	dph
	push	dpl
	mov	dptr,#_modff_x_1_1
	pop	acc
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
;	modff.c 25
;	genAssign
	mov	dptr,#_modff_PARM_2
	movx	a,@dptr
	mov	_modff_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_modff_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_modff_sloc0_1_0 + 2),a
;	genAssign
	mov	dptr,#_modff_x_1_1
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
;	genCall
; Peephole 191   removed redundant mov
	mov  r0,a
	mov  dpl,r5
	mov  dph,r6
	mov  b,r7
	push	ar5
	push	ar6
	push	ar7
	push	ar0
	lcall	___fs2sint
	mov	r1,dpl
	mov	r2,dph
	pop	ar0
	pop	ar7
	pop	ar6
	pop	ar5
;	genCall
	mov	dpl,r1
	mov	dph,r2
	push	ar5
	push	ar6
	push	ar7
	push	ar0
	lcall	___sint2fs
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r1,a
	pop	ar0
	pop	ar7
	pop	ar6
	pop	ar5
;	genPointerSet
;	genGenPointerSet
	mov	dpl,_modff_sloc0_1_0
	mov	dph,(_modff_sloc0_1_0 + 1)
	mov	b,(_modff_sloc0_1_0 + 2)
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r1
	lcall	__gptrput
;	modff.c 26
;	genAssign
	mov	dptr,#___fssub_PARM_2
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
;	genCall
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r0
	lcall	___fssub
;	genRet
; Peephole 156   removed misc moves via dph, dpl, b, a before return
00101$:
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
