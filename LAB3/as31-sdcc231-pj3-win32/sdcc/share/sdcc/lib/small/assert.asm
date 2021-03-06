;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:10:04 2002

;--------------------------------------------------------
	.module assert
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __assert
	.globl __assert_PARM_3
	.globl __assert_PARM_2
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
__assert_PARM_2::
	.ds 3
__assert_PARM_3::
	.ds 2
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
;Allocation info for local variables in function '_assert'
;------------------------------------------------------------
;filename                  Allocated to in memory with name '__assert_PARM_2'
;linenumber                Allocated to in memory with name '__assert_PARM_3'
;expr                      Allocated to registers r2 r3 r4 
;	assert.c 4
;	-----------------------------------------
;	 function _assert
;	-----------------------------------------
__assert:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	assert.c 0
;	genReceive
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	assert.c 6
;	genIpush
	push	__assert_PARM_2
	push	(__assert_PARM_2 + 1)
	push	(__assert_PARM_2 + 2)
;	genIpush
	push	__assert_PARM_3
	push	(__assert_PARM_3 + 1)
;	genIpush
	push	ar2
	push	ar3
	push	ar4
;	genIpush
	mov	a,#__str_0
	push	acc
	mov	a,#(__str_0 >> 8)
	push	acc
	mov	a,#0x02
	push	acc
;	genCall
	lcall	_printf
	mov	a,sp
	add	a,#0xf5
	mov	sp,a
;	assert.c 8
00102$:
; Peephole 132   changed ljmp to sjmp
	sjmp 00102$
00104$:
	ret
	.area CSEG    (CODE)
__str_0:
	.ascii "Assert(%s) failed at line %u in file %s."
	.db 0x0A
	.db 0x00
	.area	XINIT   (CODE)
