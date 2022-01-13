	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 12, 0	sdk_version 12, 1
	.globl	_compare                        ; -- Begin function compare
	.p2align	2
_compare:                               ; @compare
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16                     ; =16
	.cfi_def_cfa_offset 16
	str	w0, [sp, #8]
	str	w1, [sp, #4]
	ldr	w8, [sp, #8]
	ldr	w9, [sp, #4]
	subs	w8, w8, w9
	b.le	LBB0_2
; %bb.1:
	mov	w8, #1
	str	w8, [sp, #12]
	b	LBB0_3
LBB0_2:
	mov	w8, #-1
	str	w8, [sp, #12]
LBB0_3:
	ldr	w0, [sp, #12]
	add	sp, sp, #16                     ; =16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_absolute_compare               ; -- Begin function absolute_compare
	.p2align	2
_absolute_compare:                      ; @absolute_compare
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32                     ; =32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16                    ; =16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	w0, [sp, #8]
	str	w1, [sp, #4]
	ldr	w0, [sp, #8]
	bl	_abs
	str	w0, [sp]                        ; 4-byte Folded Spill
	ldr	w0, [sp, #4]
	bl	_abs
	mov	x8, x0
	ldr	w0, [sp]                        ; 4-byte Folded Reload
	subs	w8, w0, w8
	b.le	LBB1_2
; %bb.1:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	LBB1_3
LBB1_2:
	mov	w8, #-1
	stur	w8, [x29, #-4]
LBB1_3:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32                     ; =32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_bubble_sort                    ; -- Begin function bubble_sort
	.p2align	2
_bubble_sort:                           ; @bubble_sort
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64                     ; =64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48                    ; =48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	str	x2, [sp, #24]
	str	wzr, [sp, #16]
LBB2_1:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB2_3 Depth 2
	ldr	w8, [sp, #16]
	ldur	w9, [x29, #-12]
	subs	w8, w8, w9
	b.ge	LBB2_10
; %bb.2:                                ;   in Loop: Header=BB2_1 Depth=1
	str	wzr, [sp, #12]
LBB2_3:                                 ;   Parent Loop BB2_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #12]
	ldur	w9, [x29, #-12]
	subs	w9, w9, #1                      ; =1
	subs	w8, w8, w9
	b.ge	LBB2_8
; %bb.4:                                ;   in Loop: Header=BB2_3 Depth=2
	ldr	x8, [sp, #24]
	ldur	x9, [x29, #-8]
	ldrsw	x10, [sp, #12]
	ldr	w0, [x9, x10, lsl #2]
	ldur	x9, [x29, #-8]
	ldr	w10, [sp, #12]
	add	w10, w10, #1                    ; =1
	ldr	w1, [x9, w10, sxtw #2]
	blr	x8
	subs	w8, w0, #0                      ; =0
	b.le	LBB2_6
; %bb.5:                                ;   in Loop: Header=BB2_3 Depth=2
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #12]
	ldr	w8, [x8, x9, lsl #2]
	str	w8, [sp, #20]
	ldur	x8, [x29, #-8]
	ldr	w9, [sp, #12]
	add	w9, w9, #1                      ; =1
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-8]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	ldr	w8, [sp, #20]
	ldur	x9, [x29, #-8]
	ldr	w10, [sp, #12]
	add	w10, w10, #1                    ; =1
	str	w8, [x9, w10, sxtw #2]
LBB2_6:                                 ;   in Loop: Header=BB2_3 Depth=2
; %bb.7:                                ;   in Loop: Header=BB2_3 Depth=2
	ldr	w8, [sp, #12]
	add	w8, w8, #1                      ; =1
	str	w8, [sp, #12]
	b	LBB2_3
LBB2_8:                                 ;   in Loop: Header=BB2_1 Depth=1
; %bb.9:                                ;   in Loop: Header=BB2_1 Depth=1
	ldr	w8, [sp, #16]
	add	w8, w8, #1                      ; =1
	str	w8, [sp, #16]
	b	LBB2_1
LBB2_10:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64                     ; =64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80                     ; =80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64                    ; =64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	str	wzr, [sp, #28]
	adrp	x8, l___const.main.a@PAGE
	add	x8, x8, l___const.main.a@PAGEOFF
	ldr	q0, [x8]
	add	x0, sp, #32                     ; =32
	str	q0, [sp, #32]
	ldr	x8, [x8, #16]
	str	x8, [sp, #48]
	mov	w1, #6
	adrp	x2, _absolute_compare@PAGE
	add	x2, x2, _absolute_compare@PAGEOFF
	bl	_bubble_sort
	str	wzr, [sp, #24]
LBB3_1:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #24]
	subs	w8, w8, #6                      ; =6
	b.ge	LBB3_4
; %bb.2:                                ;   in Loop: Header=BB3_1 Depth=1
	ldr	w8, [sp, #24]
                                        ; implicit-def: $x10
	mov	x10, x8
	ldrsw	x9, [sp, #24]
	add	x8, sp, #32                     ; =32
	ldr	w9, [x8, x9, lsl #2]
                                        ; implicit-def: $x8
	mov	x8, x9
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	mov	x9, sp
	str	x10, [x9]
	str	x8, [x9, #8]
	bl	_printf
; %bb.3:                                ;   in Loop: Header=BB3_1 Depth=1
	ldr	w8, [sp, #24]
	add	w8, w8, #1                      ; =1
	str	w8, [sp, #24]
	b	LBB3_1
LBB3_4:
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	b.ne	LBB3_6
; %bb.5:
	mov	w0, #0
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80                     ; =80
	ret
LBB3_6:
	bl	___stack_chk_fail
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__const
	.p2align	2                               ; @__const.main.a
l___const.main.a:
	.long	4294967265                      ; 0xffffffe1
	.long	22                              ; 0x16
	.long	4294967295                      ; 0xffffffff
	.long	50                              ; 0x32
	.long	4294967290                      ; 0xfffffffa
	.long	4                               ; 0x4

	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"a[%d] = %d\n"

.subsections_via_symbols
