;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:10:21 2002

;--------------------------------------------------------
	.module printf_large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _printf
	.globl _sprintf
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
;Allocation info for local variables in function 'printf'
;------------------------------------------------------------
;format                    Allocated to stack - offset -5
;arg                       Allocated to registers 
;done                      Allocated to registers r2 r3 
;	printf_large.c 28
;	-----------------------------------------
;	 function printf
;	-----------------------------------------
_printf:
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
;	printf_large.c 33
;	genAddrOf
	mov	dptr,#_vprintf_PARM_2
	mov	a,_bp
	add	a,#0xfb
	movx	@dptr,a
;	printf_large.c 34
;	genCall
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_vprintf
;	genAssign
;	printf_large.c 37
;	genRet
; Peephole 223   removed redundant dph/dpl moves
	mov     r2,dpl
	mov     r3,dph
00101$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sprintf'
;------------------------------------------------------------
;buf                       Allocated to stack - offset -5
;format                    Allocated to stack - offset -8
;arg                       Allocated to registers r2 
;done                      Allocated to registers r2 r3 
;	printf_large.c 40
;	-----------------------------------------
;	 function sprintf
;	-----------------------------------------
_sprintf:
	push	_bp
	mov	_bp,sp
;	printf_large.c 45
;	genAddrOf
	mov	a,_bp
	add	a,#0xf8
	mov	r2,a
;	genAssign
;	printf_large.c 46
;	genAssign
	mov	a,_bp
	add	a,#0xf8
	mov	r0,a
	mov	dptr,#_vsprintf_PARM_2
	mov	a,@r0
	movx	@dptr,a
	inc	r0
	inc	dptr
	mov	a,@r0
	movx	@dptr,a
	inc	r0
	inc	dptr
	mov	a,@r0
	movx	@dptr,a
;	genAssign
	mov	dptr,#_vsprintf_PARM_3
	mov	a,r2
	movx	@dptr,a
;	genCall
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_vsprintf
;	genAssign
;	printf_large.c 49
;	genRet
; Peephole 223   removed redundant dph/dpl moves
	mov     r2,dpl
	mov     r3,dph
00101$:
	mov	sp,_bp
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
