	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 12, 0	sdk_version 12, 0
	.p2align	2                               ; -- Begin function -[sampleClass sampleMethod1]
"-[sampleClass sampleMethod1]":         ; @"\01-[sampleClass sampleMethod1]"
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32                     ; =32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16                    ; =16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	adrp	x0, l__unnamed_cfstring_@PAGE
	add	x0, x0, l__unnamed_cfstring_@PAGEOFF
	bl	_NSLog
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32                     ; =32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function -[sampleClass sampleMethod2:arg2:]
"-[sampleClass sampleMethod2:arg2:]":   ; @"\01-[sampleClass sampleMethod2:arg2:]"
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64                     ; =64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48                    ; =48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	w2, [x29, #-20]
	str	x3, [sp, #16]
	ldur	w8, [x29, #-20]
                                        ; implicit-def: $x10
	mov	x10, x8
	ldr	x8, [sp, #16]
	adrp	x0, l__unnamed_cfstring_.2@PAGE
	add	x0, x0, l__unnamed_cfstring_.2@PAGEOFF
	mov	x9, sp
	str	x10, [x9]
	str	x8, [x9, #8]
	bl	_NSLog
	mov	w0, #0
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64                     ; =64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function -[sampleClass member1]
"-[sampleClass member1]":               ; @"\01-[sampleClass member1]"
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16                     ; =16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #8]
	add	sp, sp, #16                     ; =16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function -[sampleClass setMember1:]
"-[sampleClass setMember1:]":           ; @"\01-[sampleClass setMember1:]"
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48                     ; =48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32                    ; =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	ldr	x2, [sp, #8]
	mov	x3, #8
	bl	_objc_setProperty_nonatomic
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48                     ; =48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function -[sampleClass member2]
"-[sampleClass member2]":               ; @"\01-[sampleClass member2]"
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16                     ; =16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #16]
	add	sp, sp, #16                     ; =16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function -[sampleClass setMember2:]
"-[sampleClass setMember2:]":           ; @"\01-[sampleClass setMember2:]"
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48                     ; =48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32                    ; =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	ldr	x2, [sp, #8]
	mov	x3, #16
	bl	_objc_setProperty_nonatomic
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48                     ; =48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48                     ; =48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32                    ; =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	w8, #0
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	stur	wzr, [x29, #-4]
	stur	w0, [x29, #-8]
	str	x1, [sp, #16]
	adrp	x8, _OBJC_CLASSLIST_REFERENCES_$_@PAGE
	ldr	x0, [x8, _OBJC_CLASSLIST_REFERENCES_$_@PAGEOFF]
	bl	_objc_opt_new
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	adrp	x8, _OBJC_SELECTOR_REFERENCES_@PAGE
	ldr	x1, [x8, _OBJC_SELECTOR_REFERENCES_@PAGEOFF]
	bl	_objc_msgSend
	ldr	x0, [sp, #8]
	adrp	x8, _OBJC_SELECTOR_REFERENCES_.19@PAGE
	ldr	x1, [x8, _OBJC_SELECTOR_REFERENCES_.19@PAGEOFF]
	mov	w2, #99
	adrp	x3, l__unnamed_cfstring_.18@PAGE
	add	x3, x3, l__unnamed_cfstring_.18@PAGEOFF
	bl	_objc_msgSend
	ldr	x0, [sp, #8]
	bl	_objc_release
	ldr	w0, [sp, #4]                    ; 4-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48                     ; =48
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"sampleMethod1 was called."

	.section	__DATA,__cfstring
	.p2align	3                               ; @_unnamed_cfstring_
l__unnamed_cfstring_:
	.quad	___CFConstantStringClassReference
	.long	1992                            ; 0x7c8
	.space	4
	.quad	l_.str
	.quad	25                              ; 0x19

	.section	__TEXT,__cstring,cstring_literals
l_.str.1:                               ; @.str.1
	.asciz	"sampleMethod2: arg1=%d arg2=%@"

	.section	__DATA,__cfstring
	.p2align	3                               ; @_unnamed_cfstring_.2
l__unnamed_cfstring_.2:
	.quad	___CFConstantStringClassReference
	.long	1992                            ; 0x7c8
	.space	4
	.quad	l_.str.1
	.quad	30                              ; 0x1e

	.section	__TEXT,__objc_classname,cstring_literals
l_OBJC_CLASS_NAME_:                     ; @OBJC_CLASS_NAME_
	.asciz	"sampleClass"

	.section	__DATA,__objc_const
	.p2align	3                               ; @"_OBJC_METACLASS_RO_$_sampleClass"
__OBJC_METACLASS_RO_$_sampleClass:
	.long	1                               ; 0x1
	.long	40                              ; 0x28
	.long	40                              ; 0x28
	.space	4
	.quad	0
	.quad	l_OBJC_CLASS_NAME_
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0

	.section	__DATA,__objc_data
	.globl	_OBJC_METACLASS_$_sampleClass   ; @"OBJC_METACLASS_$_sampleClass"
	.p2align	3
_OBJC_METACLASS_$_sampleClass:
	.quad	_OBJC_METACLASS_$_NSObject
	.quad	_OBJC_METACLASS_$_NSObject
	.quad	__objc_empty_cache
	.quad	0
	.quad	__OBJC_METACLASS_RO_$_sampleClass

	.section	__TEXT,__objc_methname,cstring_literals
l_OBJC_METH_VAR_NAME_:                  ; @OBJC_METH_VAR_NAME_
	.asciz	"sampleMethod1"

	.section	__TEXT,__objc_methtype,cstring_literals
l_OBJC_METH_VAR_TYPE_:                  ; @OBJC_METH_VAR_TYPE_
	.asciz	"v16@0:8"

	.section	__TEXT,__objc_methname,cstring_literals
l_OBJC_METH_VAR_NAME_.3:                ; @OBJC_METH_VAR_NAME_.3
	.asciz	"sampleMethod2:arg2:"

	.section	__TEXT,__objc_methtype,cstring_literals
l_OBJC_METH_VAR_TYPE_.4:                ; @OBJC_METH_VAR_TYPE_.4
	.asciz	"i28@0:8i16@20"

	.section	__TEXT,__objc_methname,cstring_literals
l_OBJC_METH_VAR_NAME_.5:                ; @OBJC_METH_VAR_NAME_.5
	.asciz	"member1"

	.section	__TEXT,__objc_methtype,cstring_literals
l_OBJC_METH_VAR_TYPE_.6:                ; @OBJC_METH_VAR_TYPE_.6
	.asciz	"@16@0:8"

	.section	__TEXT,__objc_methname,cstring_literals
l_OBJC_METH_VAR_NAME_.7:                ; @OBJC_METH_VAR_NAME_.7
	.asciz	"setMember1:"

	.section	__TEXT,__objc_methtype,cstring_literals
l_OBJC_METH_VAR_TYPE_.8:                ; @OBJC_METH_VAR_TYPE_.8
	.asciz	"v24@0:8@16"

	.section	__TEXT,__objc_methname,cstring_literals
l_OBJC_METH_VAR_NAME_.9:                ; @OBJC_METH_VAR_NAME_.9
	.asciz	"member2"

l_OBJC_METH_VAR_NAME_.10:               ; @OBJC_METH_VAR_NAME_.10
	.asciz	"setMember2:"

	.section	__DATA,__objc_const
	.p2align	3                               ; @"_OBJC_$_INSTANCE_METHODS_sampleClass"
__OBJC_$_INSTANCE_METHODS_sampleClass:
	.long	24                              ; 0x18
	.long	6                               ; 0x6
	.quad	l_OBJC_METH_VAR_NAME_
	.quad	l_OBJC_METH_VAR_TYPE_
	.quad	"-[sampleClass sampleMethod1]"
	.quad	l_OBJC_METH_VAR_NAME_.3
	.quad	l_OBJC_METH_VAR_TYPE_.4
	.quad	"-[sampleClass sampleMethod2:arg2:]"
	.quad	l_OBJC_METH_VAR_NAME_.5
	.quad	l_OBJC_METH_VAR_TYPE_.6
	.quad	"-[sampleClass member1]"
	.quad	l_OBJC_METH_VAR_NAME_.7
	.quad	l_OBJC_METH_VAR_TYPE_.8
	.quad	"-[sampleClass setMember1:]"
	.quad	l_OBJC_METH_VAR_NAME_.9
	.quad	l_OBJC_METH_VAR_TYPE_.6
	.quad	"-[sampleClass member2]"
	.quad	l_OBJC_METH_VAR_NAME_.10
	.quad	l_OBJC_METH_VAR_TYPE_.8
	.quad	"-[sampleClass setMember2:]"

	.private_extern	_OBJC_IVAR_$_sampleClass._member1 ; @"OBJC_IVAR_$_sampleClass._member1"
	.section	__DATA,__objc_ivar
	.globl	_OBJC_IVAR_$_sampleClass._member1
	.p2align	2
_OBJC_IVAR_$_sampleClass._member1:
	.long	8                               ; 0x8

	.section	__TEXT,__objc_methname,cstring_literals
l_OBJC_METH_VAR_NAME_.11:               ; @OBJC_METH_VAR_NAME_.11
	.asciz	"_member1"

	.section	__TEXT,__objc_methtype,cstring_literals
l_OBJC_METH_VAR_TYPE_.12:               ; @OBJC_METH_VAR_TYPE_.12
	.asciz	"@\"NSString\""

	.private_extern	_OBJC_IVAR_$_sampleClass._member2 ; @"OBJC_IVAR_$_sampleClass._member2"
	.section	__DATA,__objc_ivar
	.globl	_OBJC_IVAR_$_sampleClass._member2
	.p2align	2
_OBJC_IVAR_$_sampleClass._member2:
	.long	16                              ; 0x10

	.section	__TEXT,__objc_methname,cstring_literals
l_OBJC_METH_VAR_NAME_.13:               ; @OBJC_METH_VAR_NAME_.13
	.asciz	"_member2"

	.section	__DATA,__objc_const
	.p2align	3                               ; @"_OBJC_$_INSTANCE_VARIABLES_sampleClass"
__OBJC_$_INSTANCE_VARIABLES_sampleClass:
	.long	32                              ; 0x20
	.long	2                               ; 0x2
	.quad	_OBJC_IVAR_$_sampleClass._member1
	.quad	l_OBJC_METH_VAR_NAME_.11
	.quad	l_OBJC_METH_VAR_TYPE_.12
	.long	3                               ; 0x3
	.long	8                               ; 0x8
	.quad	_OBJC_IVAR_$_sampleClass._member2
	.quad	l_OBJC_METH_VAR_NAME_.13
	.quad	l_OBJC_METH_VAR_TYPE_.12
	.long	3                               ; 0x3
	.long	8                               ; 0x8

	.section	__TEXT,__objc_methname,cstring_literals
l_OBJC_PROP_NAME_ATTR_:                 ; @OBJC_PROP_NAME_ATTR_
	.asciz	"member1"

l_OBJC_PROP_NAME_ATTR_.14:              ; @OBJC_PROP_NAME_ATTR_.14
	.asciz	"T@\"NSString\",&,N,V_member1"

l_OBJC_PROP_NAME_ATTR_.15:              ; @OBJC_PROP_NAME_ATTR_.15
	.asciz	"member2"

l_OBJC_PROP_NAME_ATTR_.16:              ; @OBJC_PROP_NAME_ATTR_.16
	.asciz	"T@\"NSString\",&,N,V_member2"

	.section	__DATA,__objc_const
	.p2align	3                               ; @"_OBJC_$_PROP_LIST_sampleClass"
__OBJC_$_PROP_LIST_sampleClass:
	.long	16                              ; 0x10
	.long	2                               ; 0x2
	.quad	l_OBJC_PROP_NAME_ATTR_
	.quad	l_OBJC_PROP_NAME_ATTR_.14
	.quad	l_OBJC_PROP_NAME_ATTR_.15
	.quad	l_OBJC_PROP_NAME_ATTR_.16

	.p2align	3                               ; @"_OBJC_CLASS_RO_$_sampleClass"
__OBJC_CLASS_RO_$_sampleClass:
	.long	0                               ; 0x0
	.long	8                               ; 0x8
	.long	24                              ; 0x18
	.space	4
	.quad	0
	.quad	l_OBJC_CLASS_NAME_
	.quad	__OBJC_$_INSTANCE_METHODS_sampleClass
	.quad	0
	.quad	__OBJC_$_INSTANCE_VARIABLES_sampleClass
	.quad	0
	.quad	__OBJC_$_PROP_LIST_sampleClass

	.section	__DATA,__objc_data
	.globl	_OBJC_CLASS_$_sampleClass       ; @"OBJC_CLASS_$_sampleClass"
	.p2align	3
_OBJC_CLASS_$_sampleClass:
	.quad	_OBJC_METACLASS_$_sampleClass
	.quad	_OBJC_CLASS_$_NSObject
	.quad	__objc_empty_cache
	.quad	0
	.quad	__OBJC_CLASS_RO_$_sampleClass

	.section	__DATA,__objc_classrefs,regular,no_dead_strip
	.p2align	3                               ; @"OBJC_CLASSLIST_REFERENCES_$_"
_OBJC_CLASSLIST_REFERENCES_$_:
	.quad	_OBJC_CLASS_$_sampleClass

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3                               ; @OBJC_SELECTOR_REFERENCES_
_OBJC_SELECTOR_REFERENCES_:
	.quad	l_OBJC_METH_VAR_NAME_

	.section	__TEXT,__cstring,cstring_literals
l_.str.17:                              ; @.str.17
	.asciz	"Yappy"

	.section	__DATA,__cfstring
	.p2align	3                               ; @_unnamed_cfstring_.18
l__unnamed_cfstring_.18:
	.quad	___CFConstantStringClassReference
	.long	1992                            ; 0x7c8
	.space	4
	.quad	l_.str.17
	.quad	5                               ; 0x5

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3                               ; @OBJC_SELECTOR_REFERENCES_.19
_OBJC_SELECTOR_REFERENCES_.19:
	.quad	l_OBJC_METH_VAR_NAME_.3

	.section	__DATA,__objc_classlist,regular,no_dead_strip
	.p2align	3                               ; @"OBJC_LABEL_CLASS_$"
l_OBJC_LABEL_CLASS_$:
	.quad	_OBJC_CLASS_$_sampleClass

	.section	__DATA,__objc_imageinfo,regular,no_dead_strip
L_OBJC_IMAGE_INFO:
	.long	0
	.long	64

.subsections_via_symbols
