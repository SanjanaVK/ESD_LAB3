;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:10:24 2002

;--------------------------------------------------------
	.module time
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___day
	.globl ___month
	.globl _RtcRead
	.globl _time
	.globl _asctime
	.globl _ctime
	.globl _localtime
	.globl _gmtime
	.globl _mktime
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
_asctime_sloc0_1_0::
	.ds 2
_asctime_sloc1_1_0::
	.ds 2
_asctime_sloc2_1_0::
	.ds 2
_asctime_sloc3_1_0::
	.ds 2
_gmtime_sloc1_1_0::
	.ds 4
_gmtime_sloc2_1_0::
	.ds 4
_mktime_sloc0_1_0::
	.ds 2
_mktime_sloc1_1_0::
	.ds 2
_mktime_sloc2_1_0::
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
_time_timeptr_1_1::
	.ds 3
_time_now_1_1::
	.ds 12
_time_t_1_1::
	.ds 4
_ascTimeBuffer:
	.ds 32
_CheckTime_timeptr_1_1:
	.ds 3
_asctime_timeptr_1_1::
	.ds 3
_ctime_timep_1_1::
	.ds 3
_lastTime:
	.ds 12
_localtime_timep_1_1::
	.ds 3
_gmtime_timep_1_1::
	.ds 3
_gmtime_epoch_1_1::
	.ds 4
_gmtime_monthLength_1_1::
	.ds 1
_gmtime_days_1_1::
	.ds 4
_mktime_timeptr_1_1::
	.ds 3
_mktime_seconds_1_1::
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
;Allocation info for local variables in function 'RtcRead'
;------------------------------------------------------------
;timeptr                   Allocated to in memory with name '_RtcRead_timeptr_1_1'
;	time.c 40
;	-----------------------------------------
;	 function RtcRead
;	-----------------------------------------
_RtcRead:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	time.c 43
;	genRet
	mov	dpl,#0x00
00101$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'time'
;------------------------------------------------------------
;timeptr                   Allocated to in memory with name '_time_timeptr_1_1'
;now                       Allocated to in memory with name '_time_now_1_1'
;t                         Allocated to in memory with name '_time_t_1_1'
;	time.c 48
;	-----------------------------------------
;	 function time
;	-----------------------------------------
_time:
;	time.c 58
;	genReceive
	push	b
	push	dph
	push	dpl
	mov	dptr,#_time_timeptr_1_1
	pop	acc
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
;	time.c 50
;	genAssign
	mov	dptr,#_time_t_1_1
; Peephole 101   removed redundant mov
	mov  a,#0xFF
	movx @dptr,a
	inc  dptr
	movx @dptr,a
	inc	dptr
; Peephole 101   removed redundant mov
	mov  a,#0xFF
	movx @dptr,a
	inc  dptr
	movx @dptr,a
;	time.c 52
;	genCall
; Peephole 182a use 16 bit load of DPTR
	mov dptr,#_time_now_1_1
	mov	b,#0x01
	lcall	_RtcRead
	mov	a,dpl
;	genIfx
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00102$
00109$:
;	time.c 53
;	genCall
; Peephole 182a use 16 bit load of DPTR
	mov dptr,#_time_now_1_1
	mov	b,#0x01
	lcall	_mktime
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	genAssign
	mov	dptr,#_time_t_1_1
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
00102$:
;	time.c 55
;	genAssign
	mov	dptr,#_time_timeptr_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
;	genIfx
	mov	a,r2
	orl	a,r3
	orl	a,r4
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00104$
00110$:
;	time.c 56
;	genAssign
	mov	dptr,#_time_t_1_1
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
	mov	r0,a
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	inc	dptr
	mov	a,r0
	lcall	__gptrput
00104$:
;	time.c 58
;	genAssign
	mov	dptr,#_time_t_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
;	genRet
; Peephole 191   removed redundant mov
	mov  r5,a
	mov  dpl,r2
	mov  dph,r3
	mov  b,r4
00105$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'CheckTime'
;------------------------------------------------------------
;timeptr                   Allocated to in memory with name '_CheckTime_timeptr_1_1'
;	time.c 71
;	-----------------------------------------
;	 function CheckTime
;	-----------------------------------------
_CheckTime:
;	time.c 0
;	genReceive
	push	b
	push	dph
	push	dpl
	mov	dptr,#_CheckTime_timeptr_1_1
	pop	acc
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
;	time.c 75
;	genAssign
	mov	dptr,#_CheckTime_timeptr_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
;	genCmpGt
;	genCmp
	clr	c
	mov	a,#0x3B
	subb	a,r5
;	genIfxJump
; Peephole 108   removed ljmp by inverse jump logic
	jnc  00109$
00143$:
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x3B
	lcall	__gptrput
;	time.c 76
00109$:
;	time.c 77
;	genAssign
	mov	dptr,#_CheckTime_timeptr_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
;	genPlus
;	genPlusIncr
	inc	r2
	cjne	r2,#0x00,00144$
	inc	r3
00144$:
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
;	genCmpGt
;	genCmp
	clr	c
	mov	a,#0x3B
	subb	a,r5
;	genIfxJump
; Peephole 108   removed ljmp by inverse jump logic
	jnc  00114$
00145$:
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x3B
	lcall	__gptrput
;	time.c 78
00114$:
;	time.c 79
;	genAssign
	mov	dptr,#_CheckTime_timeptr_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
;	genPlus
;	genPlusIncr
	mov	a,#0x02
	add	a,r2
	mov	r2,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,r3
	mov	r3,a
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
;	genCmpGt
;	genCmp
	clr	c
	mov	a,#0x17
	subb	a,r5
;	genIfxJump
; Peephole 108   removed ljmp by inverse jump logic
	jnc  00119$
00146$:
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x17
	lcall	__gptrput
;	time.c 80
00119$:
;	time.c 81
;	genAssign
	mov	dptr,#_CheckTime_timeptr_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
;	genPlus
	mov	a,#0x07
	add	a,r2
	mov	r2,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,r3
	mov	r3,a
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
;	genCmpGt
;	genCmp
	clr	c
	mov	a,#0x06
	subb	a,r5
;	genIfxJump
; Peephole 108   removed ljmp by inverse jump logic
	jnc  00120$
00147$:
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x06
	lcall	__gptrput
00120$:
;	time.c 82
;	genAssign
	mov	dptr,#_CheckTime_timeptr_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
;	genPlus
;	genPlusIncr
	mov	a,#0x03
	add	a,r2
	mov	r2,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,r3
	mov	r3,a
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
;	genCmpLt
;	genCmp
	cjne	r5,#0x01,00148$
00148$:
;	genIfxJump
; Peephole 108   removed ljmp by inverse jump logic
	jnc  00124$
00149$:
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x01
	lcall	__gptrput
; Peephole 132   changed ljmp to sjmp
	sjmp 00129$
00124$:
;	time.c 83
;	genCmpGt
;	genCmp
	clr	c
	mov	a,#0x1F
	subb	a,r5
;	genIfxJump
; Peephole 108   removed ljmp by inverse jump logic
	jnc  00129$
00150$:
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x1F
	lcall	__gptrput
;	time.c 84
00129$:
;	time.c 85
;	genAssign
	mov	dptr,#_CheckTime_timeptr_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
;	genPlus
;	genPlusIncr
	mov	a,#0x04
	add	a,r2
	mov	r2,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,r3
	mov	r3,a
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
;	genCmpGt
;	genCmp
	clr	c
	mov	a,#0x0B
	subb	a,r5
;	genIfxJump
; Peephole 108   removed ljmp by inverse jump logic
	jnc  00130$
00151$:
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x0B
	lcall	__gptrput
00130$:
;	time.c 86
;	genAssign
	mov	dptr,#_CheckTime_timeptr_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
;	genPlus
	mov	a,#0x05
	add	a,r2
	mov	r2,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,r3
	mov	r3,a
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
;	genCmpLt
;	genCmp
; Peephole 105   removed redundant mov
	mov  r6,a
;	genIfxJump
; Peephole 111   removed ljmp by inverse jump logic
	jnb  acc.7,00133$
00152$:
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
; Peephole 180   changed mov to clr
	clr  a
	lcall	__gptrput
	inc	dptr
; Peephole 180   changed mov to clr
	clr  a
	lcall	__gptrput
00133$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'asctime'
;------------------------------------------------------------
;sloc0                     Allocated to in memory with name '_asctime_sloc0_1_0'
;sloc1                     Allocated to in memory with name '_asctime_sloc1_1_0'
;sloc2                     Allocated to in memory with name '_asctime_sloc2_1_0'
;sloc3                     Allocated to in memory with name '_asctime_sloc3_1_0'
;timeptr                   Allocated to in memory with name '_asctime_timeptr_1_1'
;	time.c 90
;	-----------------------------------------
;	 function asctime
;	-----------------------------------------
_asctime:
;	time.c 0
;	genReceive
	push	b
	push	dph
	push	dpl
	mov	dptr,#_asctime_timeptr_1_1
	pop	acc
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
;	time.c 91
;	genAssign
	mov	dptr,#_asctime_timeptr_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
;	genCall
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar2
	push	ar3
	push	ar4
	lcall	_CheckTime
	pop	ar4
	pop	ar3
	pop	ar2
;	time.c 95
;	genPlus
	mov	a,#0x05
	add	a,r2
	mov	r5,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
;	genPlus
	mov	a,#0x6C
	add	a,r5
	mov	r5,a
	mov	a,#0x07
	addc	a,r6
	mov	r6,a
;	time.c 94
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r7,a
;	genCast
	mov	_asctime_sloc0_1_0,r7
	mov	(_asctime_sloc0_1_0 + 1),#0x00
;	genPlus
;	genPlusIncr
	mov	a,#0x01
	add	a,r2
	mov	r1,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,r3
	mov	r7,a
	mov	ar0,r4
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r1
	mov	dph,r7
	mov	b,r0
	lcall	__gptrget
	mov	r1,a
;	genCast
	mov	_asctime_sloc1_1_0,r1
	mov	(_asctime_sloc1_1_0 + 1),#0x00
;	genPlus
;	genPlusIncr
	mov	a,#0x02
	add	a,r2
	mov	r0,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,r3
	mov	r7,a
	mov	ar1,r4
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r0
	mov	dph,r7
	mov	b,r1
	lcall	__gptrget
	mov	r0,a
;	genCast
	mov	_asctime_sloc2_1_0,r0
	mov	(_asctime_sloc2_1_0 + 1),#0x00
;	time.c 93
;	genPlus
;	genPlusIncr
	mov	a,#0x03
	add	a,r2
	mov	r1,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,r3
	mov	r7,a
	mov	ar0,r4
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r1
	mov	dph,r7
	mov	b,r0
	lcall	__gptrget
	mov	r1,a
;	genCast
	mov	_asctime_sloc3_1_0,r1
	mov	(_asctime_sloc3_1_0 + 1),#0x00
;	genPlus
;	genPlusIncr
	mov	a,#0x04
	add	a,r2
	mov	r0,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,r3
	mov	r7,a
	mov	ar1,r4
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r0
	mov	dph,r7
	mov	b,r1
	lcall	__gptrget
	mov	r0,a
;	genMult
;	genMultOneByte
	mov	b,#0x02
	mov	a,r0
	mul	ab
	mov	r0,a
	mov	r7,b
;	genPlus
	mov	a,r0
	add	a,#___month
	mov	dpl,a
	mov	a,r7
	addc	a,#(___month >> 8)
	mov	dph,a
;	genPointerGet
;	genCodePointerGet
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r0,a
;	genCast
	mov	r1,#0x02
;	genPlus
	mov	a,#0x07
	add	a,r2
	mov	r2,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,r3
	mov	r3,a
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
;	genMult
;	genMultOneByte
	mov	b,#0x02
	mov	a,r2
	mul	ab
	mov	r2,a
	mov	r3,b
;	genPlus
	mov	a,r2
	add	a,#___day
	mov	dpl,a
	mov	a,r3
	addc	a,#(___day >> 8)
	mov	dph,a
;	genPointerGet
;	genCodePointerGet
	clr	a
	movc	a,@a+dptr
	mov	r2,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r3,a
;	genCast
	mov	r4,#0x02
;	time.c 92
;	genIpush
	push	ar5
	push	ar6
;	genIpush
	push	_asctime_sloc0_1_0
	push	(_asctime_sloc0_1_0 + 1)
;	genIpush
	push	_asctime_sloc1_1_0
	push	(_asctime_sloc1_1_0 + 1)
;	genIpush
	push	_asctime_sloc2_1_0
	push	(_asctime_sloc2_1_0 + 1)
;	genIpush
	push	_asctime_sloc3_1_0
	push	(_asctime_sloc3_1_0 + 1)
;	genIpush
	push	ar7
	push	ar0
	push	ar1
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
;	genIpush
	mov	a,#_ascTimeBuffer
	push	acc
	mov	a,#(_ascTimeBuffer >> 8)
	push	acc
	mov	a,#0x01
	push	acc
;	genCall
	lcall	_sprintf
	mov	a,sp
	add	a,#0xea
	mov	sp,a
;	time.c 96
;	genRet
; Peephole 182a use 16 bit load of DPTR
	mov dptr,#_ascTimeBuffer
	mov	b,#0x01
00101$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ctime'
;------------------------------------------------------------
;timep                     Allocated to in memory with name '_ctime_timep_1_1'
;	time.c 99
;	-----------------------------------------
;	 function ctime
;	-----------------------------------------
_ctime:
;	time.c 100
;	genReceive
	push	b
	push	dph
	push	dpl
	mov	dptr,#_ctime_timep_1_1
	pop	acc
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
;	genAssign
	mov	dptr,#_ctime_timep_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
;	genCall
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_localtime
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	genCall
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_asctime
;	genRet
; Peephole 153   removed misc moves via dph, dpl, b before return
00101$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'localtime'
;------------------------------------------------------------
;timep                     Allocated to in memory with name '_localtime_timep_1_1'
;	time.c 116
;	-----------------------------------------
;	 function localtime
;	-----------------------------------------
_localtime:
;	time.c 117
;	genReceive
	push	b
	push	dph
	push	dpl
	mov	dptr,#_localtime_timep_1_1
	pop	acc
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
;	genAssign
	mov	dptr,#_localtime_timep_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
;	genCall
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_gmtime
;	genRet
; Peephole 153   removed misc moves via dph, dpl, b before return
00101$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'gmtime'
;------------------------------------------------------------
;sloc0                     Allocated to in memory with name '_gmtime_sloc0_1_0'
;sloc1                     Allocated to in memory with name '_gmtime_sloc1_1_0'
;sloc2                     Allocated to in memory with name '_gmtime_sloc2_1_0'
;timep                     Allocated to in memory with name '_gmtime_timep_1_1'
;epoch                     Allocated to in memory with name '_gmtime_epoch_1_1'
;year                      Allocated to in memory with name '_gmtime_year_1_1'
;month                     Allocated to in memory with name '_gmtime_month_1_1'
;monthLength               Allocated to in memory with name '_gmtime_monthLength_1_1'
;days                      Allocated to in memory with name '_gmtime_days_1_1'
;	time.c 120
;	-----------------------------------------
;	 function gmtime
;	-----------------------------------------
_gmtime:
;	time.c 0
;	genReceive
	push	b
	push	dph
	push	dpl
	mov	dptr,#_gmtime_timep_1_1
	pop	acc
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
;	time.c 121
;	genAssign
	mov	dptr,#_gmtime_timep_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
;	time.c 126
;	genAssign
; Peephole 228   replaced inefficient 32 constant
	mov     dptr,#__modulong_PARM_2
	mov     a, #0x3C
	movx    @dptr,a
	inc     dptr
	clr     a
	movx    @dptr,a
	inc     dptr
	movx    @dptr,a
	inc     dptr
	movx    @dptr,a
	mov     dptr,#__modulong_PARM_2
;	genCall
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	__modulong
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genCast
;	genPointerSet
;	genFarPointerSet
	mov	dptr,#_lastTime
	mov	a,r6
	movx	@dptr,a
;	time.c 127
;	genAssign
; Peephole 228   replaced inefficient 32 constant
	mov     dptr,#__divulong_PARM_2
	mov     a, #0x3C
	movx    @dptr,a
	inc     dptr
	clr     a
	movx    @dptr,a
	inc     dptr
	movx    @dptr,a
	inc     dptr
	movx    @dptr,a
	mov     dptr,#__divulong_PARM_2
;	time.c 128
;	genCall
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__divulong
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	genAssign
; Peephole 228   replaced inefficient 32 constant
	mov     dptr,#__modulong_PARM_2
	mov     a, #0x3C
	movx    @dptr,a
	inc     dptr
	clr     a
	movx    @dptr,a
	inc     dptr
	movx    @dptr,a
	inc     dptr
	movx    @dptr,a
	mov     dptr,#__modulong_PARM_2
;	genCall
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	__modulong
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genCast
;	genPointerSet
;	genFarPointerSet
	mov	dptr,#(_lastTime + 0x0001)
	mov	a,r6
	movx	@dptr,a
;	time.c 129
;	genAssign
; Peephole 228   replaced inefficient 32 constant
	mov     dptr,#__divulong_PARM_2
	mov     a, #0x3C
	movx    @dptr,a
	inc     dptr
	clr     a
	movx    @dptr,a
	inc     dptr
	movx    @dptr,a
	inc     dptr
	movx    @dptr,a
	mov     dptr,#__divulong_PARM_2
;	time.c 130
;	genCall
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__divulong
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	genAssign
; Peephole 228   replaced inefficient 32 constant
	mov     dptr,#__modulong_PARM_2
	mov     a, #0x18
	movx    @dptr,a
	inc     dptr
	clr     a
	movx    @dptr,a
	inc     dptr
	movx    @dptr,a
	inc     dptr
	movx    @dptr,a
	mov     dptr,#__modulong_PARM_2
;	genCall
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	__modulong
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genCast
;	genPointerSet
;	genFarPointerSet
	mov	dptr,#(_lastTime + 0x0002)
	mov	a,r6
	movx	@dptr,a
;	time.c 131
;	genAssign
; Peephole 228   replaced inefficient 32 constant
	mov     dptr,#__divulong_PARM_2
	mov     a, #0x18
	movx    @dptr,a
	inc     dptr
	clr     a
	movx    @dptr,a
	inc     dptr
	movx    @dptr,a
	inc     dptr
	movx    @dptr,a
	mov     dptr,#__divulong_PARM_2
;	time.c 132
;	genCall
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__divulong
	mov	_gmtime_sloc1_1_0,dpl
	mov	(_gmtime_sloc1_1_0 + 1),dph
	mov	(_gmtime_sloc1_1_0 + 2),b
	mov	(_gmtime_sloc1_1_0 + 3),a
;	genPlus
;	genPlusIncr
	mov	a,#0x04
	add	a,_gmtime_sloc1_1_0
	mov	r6,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,(_gmtime_sloc1_1_0 + 1)
	mov	r7,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,(_gmtime_sloc1_1_0 + 2)
	mov	r0,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,(_gmtime_sloc1_1_0 + 3)
	mov	r1,a
;	genAssign
; Peephole 228   replaced inefficient 32 constant
	mov     dptr,#__modulong_PARM_2
	mov     a, #0x07
	movx    @dptr,a
	inc     dptr
	clr     a
	movx    @dptr,a
	inc     dptr
	movx    @dptr,a
	inc     dptr
	movx    @dptr,a
	mov     dptr,#__modulong_PARM_2
;	genCall
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,r1
	lcall	__modulong
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
;	genCast
;	genPointerSet
;	genFarPointerSet
	mov	dptr,#(_lastTime + 0x0007)
	mov	a,r6
	movx	@dptr,a
;	time.c 135
;	genAssign
; Peephole 227   replaced inefficient 32 bit clear
	mov     dptr,#_gmtime_days_1_1
	clr     a
	movx    @dptr,a
	inc     dptr
	movx    @dptr,a
	inc     dptr
	movx    @dptr,a
	inc     dptr
	movx    @dptr,a
	mov     dptr,#_gmtime_days_1_1
;	time.c 136
;	genAssign
	mov	r6,#0xB2
	mov	r7,#0x07
00101$:
;	genAssign
; Peephole 230   replaced inefficient 16 constant
	mov     dptr,#__moduint_PARM_2
	mov     a,#0x04
	movx    @dptr,a
	inc     dptr
	clr     a
	movx    @dptr,a
	mov     dptr,#__moduint_PARM_2
;	genCall
	mov	dpl,r6
	mov	dph,r7
	push	ar6
	push	ar7
	lcall	__moduint
	mov	r0,dpl
	mov	r1,dph
	pop	ar7
	pop	ar6
;	genCmpEq
	cjne	r0,#0x00,00132$
	cjne	r1,#0x00,00132$
	mov	a,#0x01
	sjmp	00133$
00132$:
	clr	a
00133$:
;	genIfx
; Peephole 105   removed redundant mov
	mov  r0,a
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00119$
00134$:
;	genAssign
	mov	r2,#0x6E
	mov	r3,#0x01
; Peephole 132   changed ljmp to sjmp
	sjmp 00120$
00119$:
;	genAssign
	mov	r2,#0x6D
	mov	r3,#0x01
00120$:
;	genIpush
	push	ar0
;	genAssign
	mov	dptr,#_gmtime_days_1_1
	movx	a,@dptr
	mov	_gmtime_sloc2_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_gmtime_sloc2_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_gmtime_sloc2_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_gmtime_sloc2_1_0 + 3),a
;	genCast
	mov	ar4,r2
	mov	ar5,r3
	mov	a,r3
	rlc	a
	subb	a,acc
	mov	r2,a
	mov	r3,a
;	genPlus
	mov	a,r4
	add	a,_gmtime_sloc2_1_0
	mov	_gmtime_sloc2_1_0,a
	mov	a,r5
	addc	a,(_gmtime_sloc2_1_0 + 1)
	mov	(_gmtime_sloc2_1_0 + 1),a
	mov	a,r2
	addc	a,(_gmtime_sloc2_1_0 + 2)
	mov	(_gmtime_sloc2_1_0 + 2),a
	mov	a,r3
	addc	a,(_gmtime_sloc2_1_0 + 3)
	mov	(_gmtime_sloc2_1_0 + 3),a
;	genAssign
	mov	dptr,#_gmtime_days_1_1
	mov	a,_gmtime_sloc2_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(_gmtime_sloc2_1_0 + 1)
	movx	@dptr,a
	inc	dptr
	mov	a,(_gmtime_sloc2_1_0 + 2)
	movx	@dptr,a
	inc	dptr
	mov	a,(_gmtime_sloc2_1_0 + 3)
	movx	@dptr,a
;	genCmpGt
;	genCmp
	clr	c
	mov	a,_gmtime_sloc1_1_0
	subb	a,_gmtime_sloc2_1_0
	mov	a,(_gmtime_sloc1_1_0 + 1)
	subb	a,(_gmtime_sloc2_1_0 + 1)
	mov	a,(_gmtime_sloc1_1_0 + 2)
	subb	a,(_gmtime_sloc2_1_0 + 2)
	mov	a,(_gmtime_sloc1_1_0 + 3)
	subb	a,(_gmtime_sloc2_1_0 + 3)
	clr	a
	rlc	a
;	genIpop
	pop	ar0
;	genIfx
;	genIfxJump
; Peephole 109   removed ljmp by inverse jump logic
	jnz  00103$
00135$:
;	time.c 137
;	genPlus
;	genPlusIncr
	inc	r6
	cjne	r6,#0x00,00136$
	inc	r7
00136$:
	ljmp	00101$
00103$:
;	time.c 139
;	genMinus
	mov	a,r6
	add	a,#0x94
	mov	r6,a
	mov	a,r7
	addc	a,#0xf8
	mov	r7,a
;	genPointerSet
;	genFarPointerSet
	mov	dptr,#(_lastTime + 0x0005)
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	time.c 141
;	genIfx
	mov	a,r0
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00121$
00137$:
;	genAssign
	mov	r2,#0x6E
	mov	r3,#0x01
; Peephole 132   changed ljmp to sjmp
	sjmp 00122$
00121$:
;	genAssign
	mov	r2,#0x6D
	mov	r3,#0x01
00122$:
;	genCast
	mov	a,r3
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	r5,a
;	genMinus
	clr	c
	mov	a,_gmtime_sloc2_1_0
	subb	a,r2
	mov	r2,a
	mov	a,(_gmtime_sloc2_1_0 + 1)
	subb	a,r3
	mov	r3,a
	mov	a,(_gmtime_sloc2_1_0 + 2)
	subb	a,r4
	mov	r4,a
	mov	a,(_gmtime_sloc2_1_0 + 3)
	subb	a,r5
	mov	r5,a
;	time.c 142
;	genMinus
	clr	c
	mov	a,_gmtime_sloc1_1_0
	subb	a,r2
	mov	r2,a
	mov	a,(_gmtime_sloc1_1_0 + 1)
	subb	a,r3
	mov	r3,a
	mov	a,(_gmtime_sloc1_1_0 + 2)
	subb	a,r4
	mov	r4,a
	mov	a,(_gmtime_sloc1_1_0 + 3)
	subb	a,r5
	mov	r5,a
;	genAssign
	mov	dptr,#_gmtime_epoch_1_1
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
;	time.c 143
;	genCast
;	genPointerSet
;	genFarPointerSet
	mov	dptr,#(_lastTime + 0x0008)
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
;	time.c 148
;	genAssign
	mov	r2,#0x00
00113$:
;	genCmpLt
;	genCmp
	cjne	r2,#0x0C,00138$
00138$:
;	genIfxJump
	jc	00139$
	ljmp	00116$
00139$:
;	time.c 149
;	genCmpEq
; Peephole 132   changed ljmp to sjmp
; Peephole 199   optimized misc jump sequence
	cjne r2,#0x01,00108$
;00140$:
; Peephole 200   removed redundant sjmp
00141$:
;	time.c 150
;	genIfx
	mov	a,r0
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00105$
00142$:
;	time.c 151
;	genAssign
	mov	dptr,#_gmtime_monthLength_1_1
	mov	a,#0x1D
	movx	@dptr,a
; Peephole 132   changed ljmp to sjmp
	sjmp 00109$
00105$:
;	time.c 153
;	genAssign
	mov	dptr,#_gmtime_monthLength_1_1
	mov	a,#0x1C
	movx	@dptr,a
; Peephole 132   changed ljmp to sjmp
	sjmp 00109$
00108$:
;	time.c 156
;	genPlus
	mov	a,r2
; Peephole 180   changed mov to clr
;	genPointerGet
;	genCodePointerGet
; Peephole 186   optimized movc sequence
	mov  dptr,#_monthDays
	movc a,@a+dptr
;	genAssign
; Peephole 100   removed redundant mov
	mov  r3,a
	mov  dptr,#_gmtime_monthLength_1_1
	movx @dptr,a
00109$:
;	time.c 159
;	genAssign
	mov	dptr,#_gmtime_monthLength_1_1
	movx	a,@dptr
	mov	r3,a
;	genAssign
	mov	dptr,#_gmtime_epoch_1_1
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	genCast
	mov	_gmtime_sloc2_1_0,r3
	mov	(_gmtime_sloc2_1_0 + 1),#0x00
	mov	(_gmtime_sloc2_1_0 + 2),#0x00
	mov	(_gmtime_sloc2_1_0 + 3),#0x00
;	genCmpLt
;	genCmp
	clr	c
	mov	a,r4
	subb	a,_gmtime_sloc2_1_0
	mov	a,r5
	subb	a,(_gmtime_sloc2_1_0 + 1)
	mov	a,r6
	subb	a,(_gmtime_sloc2_1_0 + 2)
	mov	a,r7
	subb	a,(_gmtime_sloc2_1_0 + 3)
;	genIfxJump
; Peephole 132   changed ljmp to sjmp
; Peephole 160   removed sjmp by inverse jump logic
	jc   00116$
00143$:
;	time.c 160
;	genMinus
	mov	dptr,#_gmtime_epoch_1_1
	clr	c
	mov	a,r4
	subb	a,_gmtime_sloc2_1_0
	movx	@dptr,a
	mov	a,r5
	subb	a,(_gmtime_sloc2_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	subb	a,(_gmtime_sloc2_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	subb	a,(_gmtime_sloc2_1_0 + 3)
	inc	dptr
	movx	@dptr,a
;	time.c 148
;	genPlus
;	genPlusIncr
	inc	r2
	ljmp	00113$
00116$:
;	time.c 165
;	genPointerSet
;	genFarPointerSet
	mov	dptr,#(_lastTime + 0x0004)
	mov	a,r2
	movx	@dptr,a
;	time.c 166
;	genAssign
	mov	dptr,#_gmtime_epoch_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;	genPlus
;	genPlusIncr
	inc	r2
	cjne	r2,#0x00,00144$
	inc	r3
	cjne	r3,#0x00,00144$
	inc	r4
	cjne	r4,#0x00,00144$
	inc	r5
00144$:
;	genCast
;	genPointerSet
;	genFarPointerSet
	mov	dptr,#(_lastTime + 0x0003)
	mov	a,r2
	movx	@dptr,a
;	time.c 168
;	genPointerSet
;	genFarPointerSet
	mov	dptr,#(_lastTime + 0x000a)
; Peephole 180   changed mov to clr
	clr  a
	movx	@dptr,a
;	time.c 170
;	genRet
; Peephole 182a use 16 bit load of DPTR
	mov dptr,#_lastTime
	mov	b,#0x01
00117$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'mktime'
;------------------------------------------------------------
;sloc0                     Allocated to in memory with name '_mktime_sloc0_1_0'
;sloc1                     Allocated to in memory with name '_mktime_sloc1_1_0'
;sloc2                     Allocated to in memory with name '_mktime_sloc2_1_0'
;timeptr                   Allocated to in memory with name '_mktime_timeptr_1_1'
;year                      Allocated to in memory with name '_mktime_year_1_1'
;month                     Allocated to in memory with name '_mktime_month_1_1'
;i                         Allocated to in memory with name '_mktime_i_1_1'
;seconds                   Allocated to in memory with name '_mktime_seconds_1_1'
;	time.c 174
;	-----------------------------------------
;	 function mktime
;	-----------------------------------------
_mktime:
;	time.c 0
;	genReceive
	push	b
	push	dph
	push	dpl
	mov	dptr,#_mktime_timeptr_1_1
	pop	acc
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
;	time.c 175
;	genAssign
	mov	dptr,#_mktime_timeptr_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
;	genPlus
	mov	a,#0x05
	add	a,r2
	mov	r5,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
;	genPlus
	mov	a,#0x6C
	add	a,r5
	mov	r5,a
	mov	a,#0x07
	addc	a,r6
	mov	r6,a
;	genPlus
;	genPlusIncr
	mov	a,#0x04
	add	a,r2
	mov	r7,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,r3
	mov	r0,a
	mov	ar1,r4
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r7
	mov	dph,r0
	mov	b,r1
	lcall	__gptrget
	mov	r7,a
;	genCast
	mov	_mktime_sloc1_1_0,r7
	mov	(_mktime_sloc1_1_0 + 1),#0x00
;	time.c 178
;	genCall
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar5
	push	ar6
	lcall	_CheckTime
	pop	ar6
	pop	ar5
;	time.c 181
;	genMinus
	mov	a,r5
	add	a,#0x4e
	mov	r2,a
	mov	a,r6
	addc	a,#0xf8
;	genCast
; Peephole 105   removed redundant mov
	mov  r3,a
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	r1,a
;	genAssign
; Peephole 228   replaced inefficient 32 constant
	mov     dptr,#__mulslong_PARM_2
	mov     a, #0x3C
	movx    @dptr,a
	inc     dptr
	clr     a
	movx    @dptr,a
	inc     dptr
	movx    @dptr,a
	inc     dptr
	movx    @dptr,a
	mov     dptr,#__mulslong_PARM_2
;	genCall
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r1
	push	ar5
	push	ar6
	lcall	__mulslong
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r1,a
	pop	ar6
	pop	ar5
;	genAssign
; Peephole 228   replaced inefficient 32 constant
	mov     dptr,#__mulslong_PARM_2
	mov     a, #0x3C
	movx    @dptr,a
	inc     dptr
	clr     a
	movx    @dptr,a
	inc     dptr
	movx    @dptr,a
	inc     dptr
	movx    @dptr,a
	mov     dptr,#__mulslong_PARM_2
;	genCall
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r1
	push	ar5
	push	ar6
	lcall	__mulslong
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r1,a
	pop	ar6
	pop	ar5
;	genAssign
; Peephole 228   replaced inefficient 32 constant
	mov     dptr,#__mulslong_PARM_2
	mov     a, #0x18
	movx    @dptr,a
	inc     dptr
	clr     a
	movx    @dptr,a
	inc     dptr
	movx    @dptr,a
	inc     dptr
	movx    @dptr,a
	mov     dptr,#__mulslong_PARM_2
;	genCall
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r1
	push	ar5
	push	ar6
	lcall	__mulslong
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r1,a
	pop	ar6
	pop	ar5
;	genAssign
	mov	dptr,#__mulslong_PARM_2
	mov	a,#0x6D
	movx	@dptr,a
	inc	dptr
	mov	a,#0x01
	movx	@dptr,a
	inc	dptr
; Peephole 101   removed redundant mov
; Peephole 180   changed mov to clr
	clr  a
	movx @dptr,a
	inc  dptr
	movx @dptr,a
;	genCall
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r1
	push	ar5
	push	ar6
	lcall	__mulslong
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r1,a
	pop	ar6
	pop	ar5
;	time.c 184
;	genAssign
;	genAssign
	mov	_mktime_sloc0_1_0,#0xB2
	mov	(_mktime_sloc0_1_0 + 1),#0x07
00107$:
;	genCmpLt
;	genCmp
	clr	c
	mov	a,_mktime_sloc0_1_0
	subb	a,r5
	mov	a,(_mktime_sloc0_1_0 + 1)
	xrl	a,#0x80
	mov	b,r6
	xrl	b,#0x80
	subb	a,b
	clr	a
	rlc	a
	mov	r7,a
;	genAssign
	mov	dptr,#_mktime_seconds_1_1
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
;	genIfx
	mov	a,r7
;	genIfxJump
	jnz	00124$
	ljmp	00123$
00124$:
;	time.c 185
;	genAssign
; Peephole 230   replaced inefficient 16 constant
	mov     dptr,#__modsint_PARM_2
	mov     a,#0x04
	movx    @dptr,a
	inc     dptr
	clr     a
	movx    @dptr,a
	mov     dptr,#__modsint_PARM_2
;	genCall
	mov	dpl,_mktime_sloc0_1_0
	mov	dph,(_mktime_sloc0_1_0 + 1)
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar1
	lcall	__modsint
	mov	r7,dpl
	mov	r0,dph
	pop	ar1
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genCmpEq
; Peephole 132   changed ljmp to sjmp
; Peephole 198   optimized misc jump sequence
	cjne r7,#0x00,00109$
	cjne r0,#0x00,00109$
;00125$:
; Peephole 200   removed redundant sjmp
00126$:
;	time.c 186
;	genPlus
	mov	a,#0x80
	add	a,r2
	mov	r2,a
	mov	a,#0x51
	addc	a,r3
	mov	r3,a
	mov	a,#0x01
	addc	a,r4
	mov	r4,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,r1
	mov	r1,a
00109$:
;	time.c 184
;	genPlus
;	genPlusIncr
	inc	_mktime_sloc0_1_0
	clr	a
	cjne	a,_mktime_sloc0_1_0,00127$
	inc	(_mktime_sloc0_1_0 + 1)
00127$:
	ljmp	00107$
;	time.c 191
00123$:
;	genAssign
; Peephole 230   replaced inefficient 16 constant
	mov     dptr,#__modsint_PARM_2
	mov     a,#0x04
	movx    @dptr,a
	inc     dptr
	clr     a
	movx    @dptr,a
	mov     dptr,#__modsint_PARM_2
;	genCall
	mov	dpl,r5
	mov	dph,r6
	lcall	__modsint
	mov	r2,dpl
	mov	r3,dph
;	genCmpEq
	cjne	r2,#0x00,00128$
	cjne	r3,#0x00,00128$
	mov	a,#0x01
	sjmp	00129$
00128$:
	clr	a
00129$:
	mov	r2,a
;	genAssign
	mov	r3,#0x00
	mov	r4,#0x00
00111$:
;	genCmpLt
;	genCmp
	clr	c
	mov	a,r3
	subb	a,_mktime_sloc1_1_0
	mov	a,r4
	xrl	a,#0x80
	mov	b,(_mktime_sloc1_1_0 + 1)
	xrl	b,#0x80
	subb	a,b
;	genIfxJump
	jc	00130$
	ljmp	00114$
00130$:
;	time.c 192
;	genCmpEq
; Peephole 132   changed ljmp to sjmp
; Peephole 198   optimized misc jump sequence
	cjne r3,#0x01,00104$
	cjne r4,#0x00,00104$
;00131$:
; Peephole 200   removed redundant sjmp
00132$:
;	genIfx
	mov	a,r2
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00104$
00133$:
;	time.c 193
;	genAssign
	mov	dptr,#_mktime_seconds_1_1
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
	mov	r0,a
;	genPlus
	mov	dptr,#_mktime_seconds_1_1
	mov	a,#0x80
	add	a,r5
	movx	@dptr,a
	mov	a,#0x3B
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,#0x26
	addc	a,r7
	inc	dptr
	movx	@dptr,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,r0
	inc	dptr
	movx	@dptr,a
	ljmp	00113$
00104$:
;	time.c 195
;	genIpush
	push	ar2
;	genPlus
	mov	a,r3
	add	a,#_monthDays
	mov	dpl,a
	mov	a,r4
	addc	a,#(_monthDays >> 8)
	mov	dph,a
;	genPointerGet
;	genCodePointerGet
	clr	a
	movc	a,@a+dptr
;	genCast
; Peephole 105   removed redundant mov
	mov  r5,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	r7,a
	mov	r0,a
;	genAssign
	mov	dptr,#__mulslong_PARM_2
	mov	a,#0x80
	movx	@dptr,a
	inc	dptr
	mov	a,#0x51
	movx	@dptr,a
	inc	dptr
	mov	a,#0x01
	movx	@dptr,a
	inc	dptr
; Peephole 180   changed mov to clr
	clr  a
	movx	@dptr,a
;	genCall
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r0
	push	ar2
	push	ar3
	push	ar4
	lcall	__mulslong
	mov	_mktime_sloc2_1_0,dpl
	mov	(_mktime_sloc2_1_0 + 1),dph
	mov	(_mktime_sloc2_1_0 + 2),b
	mov	(_mktime_sloc2_1_0 + 3),a
	pop	ar4
	pop	ar3
	pop	ar2
;	genAssign
	mov	dptr,#_mktime_seconds_1_1
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
;	genPlus
	mov	dptr,#_mktime_seconds_1_1
	mov	a,_mktime_sloc2_1_0
	add	a,r1
	movx	@dptr,a
	mov	a,(_mktime_sloc2_1_0 + 1)
	addc	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,(_mktime_sloc2_1_0 + 2)
	addc	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,(_mktime_sloc2_1_0 + 3)
	addc	a,r6
	inc	dptr
	movx	@dptr,a
;	time.c 203
;	genIpop
	pop	ar2
;	time.c 195
00113$:
;	time.c 191
;	genPlus
;	genPlusIncr
	inc	r3
	cjne	r3,#0x00,00134$
	inc	r4
00134$:
	ljmp	00111$
00114$:
;	time.c 199
;	genAssign
	mov	dptr,#_mktime_timeptr_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
;	genPlus
;	genPlusIncr
	mov	a,#0x03
	add	a,r2
	mov	r5,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
;	genMinus
;	genMinusDec
	dec	r5
;	genCast
	mov	r6,#0x00
	mov	r7,#0x00
	mov	r0,#0x00
;	genAssign
; Peephole 228   replaced inefficient 32 constant
	mov     dptr,#__mulslong_PARM_2
	mov     a, #0x3C
	movx    @dptr,a
	inc     dptr
	clr     a
	movx    @dptr,a
	inc     dptr
	movx    @dptr,a
	inc     dptr
	movx    @dptr,a
	mov     dptr,#__mulslong_PARM_2
;	genCall
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r0
	push	ar2
	push	ar3
	push	ar4
	lcall	__mulslong
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	r0,a
	pop	ar4
	pop	ar3
	pop	ar2
;	genAssign
; Peephole 228   replaced inefficient 32 constant
	mov     dptr,#__mulslong_PARM_2
	mov     a, #0x3C
	movx    @dptr,a
	inc     dptr
	clr     a
	movx    @dptr,a
	inc     dptr
	movx    @dptr,a
	inc     dptr
	movx    @dptr,a
	mov     dptr,#__mulslong_PARM_2
;	genCall
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r0
	push	ar2
	push	ar3
	push	ar4
	lcall	__mulslong
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	r0,a
	pop	ar4
	pop	ar3
	pop	ar2
;	genAssign
; Peephole 228   replaced inefficient 32 constant
	mov     dptr,#__mulslong_PARM_2
	mov     a, #0x18
	movx    @dptr,a
	inc     dptr
	clr     a
	movx    @dptr,a
	inc     dptr
	movx    @dptr,a
	inc     dptr
	movx    @dptr,a
	mov     dptr,#__mulslong_PARM_2
;	genCall
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r0
	push	ar2
	push	ar3
	push	ar4
	lcall	__mulslong
	mov	_mktime_sloc2_1_0,dpl
	mov	(_mktime_sloc2_1_0 + 1),dph
	mov	(_mktime_sloc2_1_0 + 2),b
	mov	(_mktime_sloc2_1_0 + 3),a
	pop	ar4
	pop	ar3
	pop	ar2
;	genAssign
	mov	dptr,#_mktime_seconds_1_1
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	genPlus
	mov	a,_mktime_sloc2_1_0
	add	a,r1
	mov	_mktime_sloc2_1_0,a
	mov	a,(_mktime_sloc2_1_0 + 1)
	addc	a,r5
	mov	(_mktime_sloc2_1_0 + 1),a
	mov	a,(_mktime_sloc2_1_0 + 2)
	addc	a,r6
	mov	(_mktime_sloc2_1_0 + 2),a
	mov	a,(_mktime_sloc2_1_0 + 3)
	addc	a,r7
	mov	(_mktime_sloc2_1_0 + 3),a
;	time.c 200
;	genPlus
;	genPlusIncr
	mov	a,#0x02
	add	a,r2
	mov	r0,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,r3
	mov	r5,a
	mov	ar6,r4
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r0
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r0,a
;	genCast
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
;	genAssign
; Peephole 228   replaced inefficient 32 constant
	mov     dptr,#__mulslong_PARM_2
	mov     a, #0x3C
	movx    @dptr,a
	inc     dptr
	clr     a
	movx    @dptr,a
	inc     dptr
	movx    @dptr,a
	inc     dptr
	movx    @dptr,a
	mov     dptr,#__mulslong_PARM_2
;	genCall
	mov	dpl,r0
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	push	ar2
	push	ar3
	push	ar4
	lcall	__mulslong
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	r0,a
	pop	ar4
	pop	ar3
	pop	ar2
;	genAssign
; Peephole 228   replaced inefficient 32 constant
	mov     dptr,#__mulslong_PARM_2
	mov     a, #0x3C
	movx    @dptr,a
	inc     dptr
	clr     a
	movx    @dptr,a
	inc     dptr
	movx    @dptr,a
	inc     dptr
	movx    @dptr,a
	mov     dptr,#__mulslong_PARM_2
;	genCall
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r0
	push	ar2
	push	ar3
	push	ar4
	lcall	__mulslong
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	r0,a
	pop	ar4
	pop	ar3
	pop	ar2
;	genPlus
	mov	a,r5
	add	a,_mktime_sloc2_1_0
	mov	_mktime_sloc2_1_0,a
	mov	a,r6
	addc	a,(_mktime_sloc2_1_0 + 1)
	mov	(_mktime_sloc2_1_0 + 1),a
	mov	a,r7
	addc	a,(_mktime_sloc2_1_0 + 2)
	mov	(_mktime_sloc2_1_0 + 2),a
	mov	a,r0
	addc	a,(_mktime_sloc2_1_0 + 3)
	mov	(_mktime_sloc2_1_0 + 3),a
;	time.c 201
;	genPlus
;	genPlusIncr
	mov	a,#0x01
	add	a,r2
	mov	r1,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,r3
	mov	r5,a
	mov	ar6,r4
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r1
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r1,a
;	genCast
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
;	genAssign
; Peephole 228   replaced inefficient 32 constant
	mov     dptr,#__mulslong_PARM_2
	mov     a, #0x3C
	movx    @dptr,a
	inc     dptr
	clr     a
	movx    @dptr,a
	inc     dptr
	movx    @dptr,a
	inc     dptr
	movx    @dptr,a
	mov     dptr,#__mulslong_PARM_2
;	genCall
	mov	dpl,r1
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	push	ar2
	push	ar3
	push	ar4
	lcall	__mulslong
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	r0,a
	pop	ar4
	pop	ar3
	pop	ar2
;	genPlus
	mov	a,r5
	add	a,_mktime_sloc2_1_0
	mov	r5,a
	mov	a,r6
	addc	a,(_mktime_sloc2_1_0 + 1)
	mov	r6,a
	mov	a,r7
	addc	a,(_mktime_sloc2_1_0 + 2)
	mov	r7,a
	mov	a,r0
	addc	a,(_mktime_sloc2_1_0 + 3)
	mov	r0,a
;	time.c 202
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
;	genCast
;	genPlus
; Peephole 3.c   changed mov to clr
; Peephole 3.b   changed mov to clr
	clr  a
	mov  r3,a
	mov  r4,a
	mov  r1,a
	mov  a,r2
	add	a,r5
	mov	r5,a
	mov	a,r3
	addc	a,r6
	mov	r6,a
	mov	a,r4
	addc	a,r7
	mov	r7,a
	mov	a,r1
	addc	a,r0
;	time.c 203
;	genRet
; Peephole 191   removed redundant mov
	mov  r0,a
	mov  dpl,r5
	mov  dph,r6
	mov  b,r7
00115$:
	ret
	.area CSEG    (CODE)
_monthDays:
	.db #0x1F
	.db #0x1C
	.db #0x1F
	.db #0x1E
	.db #0x1F
	.db #0x1E
	.db #0x1F
	.db #0x1F
	.db #0x1E
	.db #0x1F
	.db #0x1E
	.db #0x1F
___month:
	.byte _str_1,(_str_1 >> 8)
	.byte _str_2,(_str_2 >> 8)
	.byte _str_3,(_str_3 >> 8)
	.byte _str_4,(_str_4 >> 8)
	.byte _str_5,(_str_5 >> 8)
	.byte _str_6,(_str_6 >> 8)
	.byte _str_7,(_str_7 >> 8)
	.byte _str_8,(_str_8 >> 8)
	.byte _str_9,(_str_9 >> 8)
	.byte _str_10,(_str_10 >> 8)
	.byte _str_11,(_str_11 >> 8)
	.byte _str_12,(_str_12 >> 8)
___day:
	.byte _str_13,(_str_13 >> 8)
	.byte _str_14,(_str_14 >> 8)
	.byte _str_15,(_str_15 >> 8)
	.byte _str_16,(_str_16 >> 8)
	.byte _str_17,(_str_17 >> 8)
	.byte _str_18,(_str_18 >> 8)
	.byte _str_19,(_str_19 >> 8)
__str_0:
	.ascii "%s %s %2d %02d:%02d:%02d %04d"
	.db 0x0A
	.db 0x00
_str_1:
	.ascii "Jan"
	.db 0x00
_str_2:
	.ascii "Feb"
	.db 0x00
_str_3:
	.ascii "Mar"
	.db 0x00
_str_4:
	.ascii "Apr"
	.db 0x00
_str_5:
	.ascii "May"
	.db 0x00
_str_6:
	.ascii "Jun"
	.db 0x00
_str_7:
	.ascii "Jul"
	.db 0x00
_str_8:
	.ascii "Aug"
	.db 0x00
_str_9:
	.ascii "Sep"
	.db 0x00
_str_10:
	.ascii "Oct"
	.db 0x00
_str_11:
	.ascii "Nov"
	.db 0x00
_str_12:
	.ascii "Dec"
	.db 0x00
_str_13:
	.ascii "Sun"
	.db 0x00
_str_14:
	.ascii "Mon"
	.db 0x00
_str_15:
	.ascii "Tue"
	.db 0x00
_str_16:
	.ascii "Wed"
	.db 0x00
_str_17:
	.ascii "Thu"
	.db 0x00
_str_18:
	.ascii "Fri"
	.db 0x00
_str_19:
	.ascii "Sat"
	.db 0x00
	.area	XINIT   (CODE)
