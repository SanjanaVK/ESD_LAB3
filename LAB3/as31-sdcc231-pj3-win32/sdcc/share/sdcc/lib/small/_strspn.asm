;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:10:00 2002

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
_strspn_PARM_2::
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
;control                   Allocated to in memory with name '_strspn_PARM_2'
;string                    Allocated to registers r2 r3 r4 
;count                     Allocated to registers 
;ch                        Allocated to registers r0 
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
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	_strspn.c 35
;	genAssign
	mov	r5,#0x00
	mov	r6,#0x00
;	genAssign
00104$:
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
;	genAssign
;	genIfx
; Peephole 166   removed redundant mov
	mov  r7,a
	mov  ar0,r7 
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00106$
00112$:
;	_strspn.c 36
;	genAssign
	mov	_strchr_PARM_2,r0
;	genCall
	mov	dpl,_strspn_PARM_2
	mov	dph,(_strspn_PARM_2 + 1)
	mov	b,(_strspn_PARM_2 + 2)
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	lcall	_strchr
	mov	r7,dpl
	mov	r0,dph
	mov	r1,b
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genIfx
	mov	a,r7
	orl	a,r0
	orl	a,r1
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
;	tail increment optimized
	inc	r2
	cjne	r2,#0x00,00104$
	inc	r3
; Peephole 132   changed ljmp to sjmp
	sjmp 00104$
00106$:
;	_strspn.c 43
;	genRet
	mov	dpl,r5
	mov	dph,r6
00107$:
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
