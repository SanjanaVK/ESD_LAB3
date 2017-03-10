;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:10:09 2002

;--------------------------------------------------------
	.module cotf
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _cotf
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
;Allocation info for local variables in function 'cotf'
;------------------------------------------------------------
;x                         Allocated to registers r2 r3 r4 r5 
;y                         Allocated to stack - offset 1
;	cotf.c 26
;	-----------------------------------------
;	 function cotf
;	-----------------------------------------
_cotf:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	push	_bp
	mov	_bp,sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
;	cotf.c 39
;	genReceive
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	cotf.c 30
;	genCall
; Peephole 191   removed redundant mov
	mov  r5,a
	mov  dpl,r2
	mov  dph,r3
	mov  b,r4
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	_fabsf
	push	acc
; Peephole 212  reduced add sequence to inc
	mov  r0,_bp
	inc  r0
	pop	acc
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	inc	r0
	mov	@r0,b
	inc	r0
	mov	@r0,a
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genAssign
; Peephole 212  reduced add sequence to inc
	mov  r0,_bp
	inc  r0
;	cotf.c 31
;	genAssign
	mov	___fslt_PARM_2,#0x60
	mov	(___fslt_PARM_2 + 1),#0x42
	mov	(___fslt_PARM_2 + 2),#0xA2
	mov	(___fslt_PARM_2 + 3),#0x0D
;	genCall
; Peephole 212  reduced add sequence to inc
	mov  r0,_bp
	inc  r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	___fslt
	mov	a,dpl
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genIfx
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00105$
00110$:
;	cotf.c 33
;	genAssign
	clr	a
	mov	(_errno + 1),a
	mov	_errno,#0x22
;	cotf.c 34
;	genAssign
	mov	___fslt_PARM_2,#0x00
	mov	(___fslt_PARM_2 + 1),#0x00
	mov	(___fslt_PARM_2 + 2),#0x00
	mov	(___fslt_PARM_2 + 3),#0x00
;	genCall
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	___fslt
	mov	a,dpl
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genIfx
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00102$
00111$:
;	cotf.c 35
;	genRet
; Peephole 182   used 16 bit load of dptr
	mov  dptr,#(((0xFF)<<8) + 0xFF)
	mov	b,#0x7F
	mov	a,#0xFF
; Peephole 132   changed ljmp to sjmp
	sjmp 00106$
00102$:
;	cotf.c 37
;	genRet
; Peephole 182   used 16 bit load of dptr
	mov  dptr,#(((0xFF)<<8) + 0xFF)
	mov	b,#0x7F
	mov	a,#0x7F
; Peephole 132   changed ljmp to sjmp
	sjmp 00106$
00105$:
;	cotf.c 39
;	genAssign
	clr	a
	mov	(_tancotf_PARM_2 + 1),a
	mov	_tancotf_PARM_2,#0x01
;	genCall
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	_tancotf
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	genRet
; Peephole 191   removed redundant mov
	mov  r5,a
	mov  dpl,r2
	mov  dph,r3
	mov  b,r4
00106$:
	mov	sp,_bp
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
