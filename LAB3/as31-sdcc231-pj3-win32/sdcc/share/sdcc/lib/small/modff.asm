;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:10:11 2002

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
_modff_PARM_2::
	.ds 3
_modff_x_1_1::
	.ds 4
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
;Allocation info for local variables in function 'modff'
;------------------------------------------------------------
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
	mov	_modff_x_1_1,dpl
	mov	(_modff_x_1_1 + 1),dph
	mov	(_modff_x_1_1 + 2),b
	mov	(_modff_x_1_1 + 3),a
;	modff.c 25
;	genAssign
	mov	r6,_modff_PARM_2
	mov	r7,(_modff_PARM_2 + 1)
	mov	r0,(_modff_PARM_2 + 2)
;	genCall
	mov	dpl,_modff_x_1_1
	mov	dph,(_modff_x_1_1 + 1)
	mov	b,(_modff_x_1_1 + 2)
	mov	a,(_modff_x_1_1 + 3)
	push	ar6
	push	ar7
	push	ar0
	lcall	___fs2sint
	mov	r1,dpl
	mov	r2,dph
	pop	ar0
	pop	ar7
	pop	ar6
;	genCall
	mov	dpl,r1
	mov	dph,r2
	push	ar6
	push	ar7
	push	ar0
	lcall	___sint2fs
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	pop	ar0
	pop	ar7
	pop	ar6
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
;	modff.c 26
;	genAssign
	mov	___fssub_PARM_2,r2
	mov	(___fssub_PARM_2 + 1),r3
	mov	(___fssub_PARM_2 + 2),r4
	mov	(___fssub_PARM_2 + 3),r5
;	genCall
	mov	dpl,_modff_x_1_1
	mov	dph,(_modff_x_1_1 + 1)
	mov	b,(_modff_x_1_1 + 2)
	mov	a,(_modff_x_1_1 + 3)
	lcall	___fssub
;	genRet
; Peephole 156   removed misc moves via dph, dpl, b, a before return
00101$:
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
