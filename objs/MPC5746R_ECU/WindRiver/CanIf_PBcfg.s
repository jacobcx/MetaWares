#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"CanIf_PBcfg.c"
#$$dg 1
	.section	.PPC.EMB.apuinfo,,@note
	.4byte		8
	.4byte		8+4
	.4byte		2
	.byte		"APUinfo"
	.byte		0
	.align		2
	.4byte		0x01040001
	.4byte		0x00400001
	.4byte		0x01010001

	.section	.text_vle
	.section	.debug_line,,n
.L8:
	.section	.text_vle
#$$ld
.L4:
	.0byte		.L2
	.d2_line_start	.debug_line
	.section	.text_vle

# Allocations for module
	.section	.text_vle
	.0byte		.L193
	.section	.text_vle
	.type		CanIf_InitConfiguration0,@object
	.size		CanIf_InitConfiguration0,8
	.align		1
CanIf_InitConfiguration0:
	.short		59
	.short		9
	.short		0
	.byte		1
	.space		1
	.section	.text_vle
	.type		CanIfBufferCfg0,@object
	.size		CanIfBufferCfg0,144
	.align		2
CanIfBufferCfg0:
	.long		0
	.short		0
	.byte		0
	.space		1
	.long		0
	.byte		8
	.byte		0
	.space		2
	.long		0
	.short		1
	.byte		0
	.space		1
	.long		0
	.byte		8
	.byte		0
	.space		2
	.long		0
	.short		2
	.byte		0
	.space		1
	.long		0
	.byte		8
	.byte		0
	.space		2
	.long		0
	.short		3
	.byte		0
	.space		1
	.long		0
	.byte		8
	.byte		0
	.space		2
	.long		0
	.short		4
	.byte		0
	.space		1
	.long		0
	.byte		8
	.byte		0
	.space		2
	.long		0
	.short		5
	.byte		0
	.space		1
	.long		0
	.byte		8
	.byte		0
	.space		2
	.long		0
	.short		6
	.byte		0
	.space		1
	.long		0
	.byte		8
	.byte		0
	.space		2
	.long		0
	.short		7
	.byte		0
	.space		1
	.long		0
	.byte		8
	.byte		0
	.space		2
	.long		0
	.short		8
	.byte		0
	.space		1
	.long		0
	.byte		8
	.byte		0
	.space		2
	.section	.text_vle
	.type		CanIf_TxPduConfigInfo0_a,@object
	.size		CanIf_TxPduConfigInfo0_a,324
	.align		2
CanIf_TxPduConfigInfo0_a:
	.long		-2130743039
	.long		1
	.long		0
	.long		0
	.long		CanIfBufferCfg0
	.short		5
	.byte		8
	.byte		1
	.byte		0
	.space		3
	.long		0
	.byte		0
	.byte		0
	.space		2
	.long		-2130747391
	.long		1
	.long		0
	.long		0
	.long		CanIfBufferCfg0+16
	.short		4
	.byte		8
	.byte		1
	.byte		0
	.space		3
	.long		0
	.byte		0
	.byte		0
	.space		2
	.long		-2130747390
	.long		1
	.long		0
	.long		0
	.long		CanIfBufferCfg0+32
	.short		1
	.byte		8
	.byte		1
	.byte		0
	.space		3
	.long		0
	.byte		0
	.byte		0
	.space		2
	.long		-2130759423
	.long		1
	.long		0
	.long		0
	.long		CanIfBufferCfg0+48
	.short		6
	.byte		8
	.byte		1
	.byte		0
	.space		3
	.long		0
	.byte		0
	.byte		0
	.space		2
	.long		-2130767615
	.long		1
	.long		0
	.long		0
	.long		CanIfBufferCfg0+64
	.short		2
	.byte		8
	.byte		1
	.byte		0
	.space		3
	.long		0
	.byte		0
	.byte		0
	.space		2
	.long		-2130767614
	.long		1
	.long		0
	.long		0
	.long		CanIfBufferCfg0+80
	.short		3
	.byte		8
	.byte		1
	.byte		0
	.space		3
	.long		0
	.byte		0
	.byte		0
	.space		2
	.long		-2130763519
	.long		1
	.long		0
	.long		0
	.long		CanIfBufferCfg0+96
	.short		7
	.byte		8
	.byte		1
	.byte		0
	.space		3
	.long		0
	.byte		0
	.byte		0
	.space		2
	.long		-1929402819
	.long		1
	.long		0
	.long		0
	.long		CanIfBufferCfg0+112
	.short		0
	.byte		8
	.byte		1
	.byte		0
	.space		3
	.long		0
	.byte		0
	.byte		0
	.space		2
	.long		1800
	.long		1
	.long		1
	.long		0
	.long		CanIfBufferCfg0+128
	.short		0
	.byte		8
	.byte		0
	.byte		0
	.space		3
	.long		0
	.byte		0
	.byte		0
	.space		2
	.section	.text_vle
	.type		CanIf_RxPduConfigInfo0_a,@object
	.size		CanIf_RxPduConfigInfo0_a,1416
	.align		2
CanIf_RxPduConfigInfo0_a:
	.long		16724225
	.long		4
	.long		0
	.short		37
	.short		0
	.byte		8
	.byte		1
	.byte		0
	.byte		0
	.byte		0
	.byte		1
	.space		2
	.long		419393808
	.long		4
	.long		9
	.short		46
	.short		1
	.byte		8
	.byte		1
	.byte		0
	.byte		0
	.byte		0
	.byte		1
	.space		2
	.long		419392016
	.long		4
	.long		18
	.short		27
	.short		2
	.byte		8
	.byte		1
	.byte		0
	.byte		0
	.byte		0
	.byte		1
	.space		2
	.long		419392160
	.long		4
	.long		27
	.short		3
	.short		3
	.byte		8
	.byte		1
	.byte		0
	.byte		0
	.byte		0
	.byte		1
	.space		2
	.long		419392176
	.long		4
	.long		36
	.short		5
	.short		4
	.byte		8
	.byte		1
	.byte		0
	.byte		0
	.byte		0
	.byte		1
	.space		2
	.long		419392192
	.long		4
	.long		45
	.short		0
	.short		5
	.byte		8
	.byte		1
	.byte		0
	.byte		0
	.byte		0
	.byte		1
	.space		2
	.long		419392272
	.long		4
	.long		54
	.short		10
	.short		6
	.byte		8
	.byte		1
	.byte		0
	.byte		0
	.byte		0
	.byte		1
	.space		2
	.long		419392416
	.long		4
	.long		63
	.short		30
	.short		7
	.byte		8
	.byte		1
	.byte		0
	.byte		0
	.byte		0
	.byte		1
	.space		2
	.long		419392432
	.long		4
	.long		72
	.short		39
	.short		8
	.byte		8
	.byte		1
	.byte		0
	.byte		0
	.byte		0
	.byte		1
	.space		2
	.long		419392448
	.long		4
	.long		81
	.short		40
	.short		9
	.byte		8
	.byte		1
	.byte		0
	.byte		0
	.byte		0
	.byte		1
	.space		2
	.long		419392528
	.long		4
	.long		90
	.short		2
	.short		10
	.byte		8
	.byte		1
	.byte		0
	.byte		0
	.byte		0
	.byte		1
	.space		2
	.long		419392672
	.long		4
	.long		99
	.short		24
	.short		11
	.byte		8
	.byte		1
	.byte		0
	.byte		0
	.byte		0
	.byte		1
	.space		2
	.long		419392688
	.long		4
	.long		108
	.short		25
	.short		12
	.byte		8
	.byte		1
	.byte		0
	.byte		0
	.byte		0
	.byte		1
	.space		2
	.long		419392704
	.long		4
	.long		117
	.short		19
	.short		13
	.byte		8
	.byte		1
	.byte		0
	.byte		0
	.byte		0
	.byte		1
	.space		2
	.long		419389712
	.long		4
	.long		126
	.short		9
	.short		14
	.byte		8
	.byte		1
	.byte		0
	.byte		0
	.byte		0
	.byte		1
	.space		2
	.long		419389856
	.long		4
	.long		135
	.short		49
	.short		15
	.byte		8
	.byte		1
	.byte		0
	.byte		0
	.byte		0
	.byte		1
	.space		2
	.long		419389872
	.long		4
	.long		144
	.short		48
	.short		16
	.byte		8
	.byte		1
	.byte		0
	.byte		0
	.byte		0
	.byte		1
	.space		2
	.long		419389888
	.long		4
	.long		153
	.short		50
	.short		17
	.byte		8
	.byte		1
	.byte		0
	.byte		0
	.byte		0
	.byte		1
	.space		2
	.long		419389968
	.long		4
	.long		162
	.short		51
	.short		18
	.byte		8
	.byte		1
	.byte		0
	.byte		0
	.byte		0
	.byte		1
	.space		2
	.long		419390112
	.long		4
	.long		171
	.short		54
	.short		19
	.byte		8
	.byte		1
	.byte		0
	.byte		0
	.byte		0
	.byte		1
	.space		2
	.long		419390128
	.long		4
	.long		180
	.short		53
	.short		20
	.byte		8
	.byte		1
	.byte		0
	.byte		0
	.byte		0
	.byte		1
	.space		2
	.long		419390144
	.long		4
	.long		189
	.short		52
	.short		21
	.byte		8
	.byte		1
	.byte		0
	.byte		0
	.byte		0
	.byte		1
	.space		2
	.long		419390224
	.long		4
	.long		198
	.short		16
	.short		22
	.byte		8
	.byte		1
	.byte		0
	.byte		0
	.byte		0
	.byte		1
	.space		2
	.long		419390368
	.long		4
	.long		207
	.short		33
	.short		23
	.byte		8
	.byte		1
	.byte		0
	.byte		0
	.byte		0
	.byte		1
	.space		2
	.long		419390384
	.long		4
	.long		216
	.short		32
	.short		24
	.byte		8
	.byte		1
	.byte		0
	.byte		0
	.byte		0
	.byte		1
	.space		2
	.long		419390400
	.long		4
	.long		225
	.short		36
	.short		25
	.byte		8
	.byte		1
	.byte		0
	.byte		0
	.byte		0
	.byte		1
	.space		2
	.long		419390480
	.long		4
	.long		234
	.short		47
	.short		55
	.byte		8
	.byte		1
	.byte		0
	.byte		0
	.byte		0
	.byte		1
	.space		2
	.long		419390624
	.long		4
	.long		243
	.short		1
	.short		55
	.byte		8
	.byte		1
	.byte		0
	.byte		0
	.byte		0
	.byte		1
	.space		2
	.long		419390640
	.long		4
	.long		252
	.short		15
	.short		33
	.byte		8
	.byte		1
	.byte		0
	.byte		0
	.byte		0
	.byte		1
	.space		2
	.long		419390656
	.long		4
	.long		261
	.short		14
	.short		26
	.byte		8
	.byte		1
	.byte		0
	.byte		0
	.byte		0
	.byte		1
	.space		2
	.long		419390736
	.long		4
	.long		270
	.short		31
	.short		27
	.byte		8
	.byte		1
	.byte		0
	.byte		0
	.byte		0
	.byte		1
	.space		2
	.long		419390880
	.long		4
	.long		279
	.short		34
	.short		30
	.byte		8
	.byte		1
	.byte		0
	.byte		0
	.byte		0
	.byte		1
	.space		2
	.long		419390896
	.long		4
	.long		288
	.short		35
	.short		29
	.byte		8
	.byte		1
	.byte		0
	.byte		0
	.byte		0
	.byte		1
	.space		2
	.long		419390912
	.long		4
	.long		297
	.short		38
	.short		32
	.byte		8
	.byte		1
	.byte		0
	.byte		0
	.byte		0
	.byte		1
	.space		2
	.long		419390992
	.long		4
	.long		306
	.short		20
	.short		28
	.byte		8
	.byte		1
	.byte		0
	.byte		0
	.byte		0
	.byte		1
	.space		2
	.long		419391136
	.long		4
	.long		315
	.short		29
	.short		54
	.byte		8
	.byte		1
	.byte		0
	.byte		0
	.byte		0
	.byte		1
	.space		2
	.long		419391152
	.long		4
	.long		324
	.short		26
	.short		31
	.byte		8
	.byte		1
	.byte		0
	.byte		0
	.byte		0
	.byte		1
	.space		2
	.long		419391168
	.long		4
	.long		333
	.short		28
	.short		36
	.byte		8
	.byte		1
	.byte		0
	.byte		0
	.byte		0
	.byte		1
	.space		2
	.long		419391248
	.long		4
	.long		342
	.short		13
	.short		34
	.byte		8
	.byte		1
	.byte		0
	.byte		0
	.byte		0
	.byte		1
	.space		2
	.long		419391392
	.long		4
	.long		351
	.short		21
	.short		35
	.byte		8
	.byte		1
	.byte		0
	.byte		0
	.byte		0
	.byte		1
	.space		2
	.long		419391408
	.long		4
	.long		360
	.short		22
	.short		48
	.byte		8
	.byte		1
	.byte		0
	.byte		0
	.byte		0
	.byte		1
	.space		2
	.long		419391424
	.long		4
	.long		369
	.short		23
	.short		38
	.byte		8
	.byte		1
	.byte		0
	.byte		0
	.byte		0
	.byte		1
	.space		2
	.long		419391504
	.long		4
	.long		378
	.short		8
	.short		39
	.byte		8
	.byte		1
	.byte		0
	.byte		0
	.byte		0
	.byte		1
	.space		2
	.long		419391648
	.long		4
	.long		387
	.short		45
	.short		37
	.byte		8
	.byte		1
	.byte		0
	.byte		0
	.byte		0
	.byte		1
	.space		2
	.long		419391664
	.long		4
	.long		396
	.short		43
	.short		40
	.byte		8
	.byte		1
	.byte		0
	.byte		0
	.byte		0
	.byte		1
	.space		2
	.long		419391680
	.long		4
	.long		405
	.short		44
	.short		43
	.byte		8
	.byte		1
	.byte		0
	.byte		0
	.byte		0
	.byte		1
	.space		2
	.long		419391760
	.long		4
	.long		414
	.short		17
	.short		41
	.byte		8
	.byte		1
	.byte		0
	.byte		0
	.byte		0
	.byte		1
	.space		2
	.long		419391904
	.long		4
	.long		423
	.short		4
	.short		42
	.byte		8
	.byte		1
	.byte		0
	.byte		0
	.byte		0
	.byte		1
	.space		2
	.long		419391920
	.long		4
	.long		432
	.short		6
	.short		44
	.byte		8
	.byte		1
	.byte		0
	.byte		0
	.byte		0
	.byte		1
	.space		2
	.long		419391936
	.long		4
	.long		441
	.short		7
	.short		46
	.byte		8
	.byte		1
	.byte		0
	.byte		0
	.byte		0
	.byte		1
	.space		2
	.long		419377424
	.long		4
	.long		450
	.short		11
	.short		51
	.byte		8
	.byte		1
	.byte		0
	.byte		0
	.byte		0
	.byte		1
	.space		2
	.long		419377440
	.long		4
	.long		459
	.short		12
	.short		49
	.byte		8
	.byte		1
	.byte		0
	.byte		0
	.byte		0
	.byte		1
	.space		2
	.long		419369232
	.long		4
	.long		468
	.short		41
	.short		45
	.byte		8
	.byte		1
	.byte		0
	.byte		0
	.byte		0
	.byte		1
	.space		2
	.long		419369248
	.long		4
	.long		477
	.short		42
	.short		47
	.byte		8
	.byte		1
	.byte		0
	.byte		0
	.byte		0
	.byte		1
	.space		2
	.long		419373328
	.long		4
	.long		486
	.short		55
	.short		50
	.byte		8
	.byte		1
	.byte		0
	.byte		0
	.byte		0
	.byte		1
	.space		2
	.long		419373344
	.long		4
	.long		495
	.short		56
	.short		52
	.byte		8
	.byte		1
	.byte		0
	.byte		0
	.byte		0
	.byte		1
	.space		2
	.long		218081204
	.long		4
	.long		504
	.short		18
	.short		53
	.byte		8
	.byte		1
	.byte		0
	.byte		0
	.byte		0
	.byte		1
	.space		2
	.long		2015
	.long		1
	.long		0
	.short		0
	.short		56
	.byte		8
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.space		2
	.long		1792
	.long		1
	.long		0
	.short		1
	.short		57
	.byte		8
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.space		2
	.section	.text_vle
	.type		CanIf_RxPduList0Drv0Hrh0,@object
	.size		CanIf_RxPduList0Drv0Hrh0,2
	.align		1
CanIf_RxPduList0Drv0Hrh0:
	.short		0
	.section	.text_vle
	.type		CanIf_RxPduList0Drv0Hrh1,@object
	.size		CanIf_RxPduList0Drv0Hrh1,2
	.align		1
CanIf_RxPduList0Drv0Hrh1:
	.short		1
	.section	.text_vle
	.type		CanIf_RxPduList0Drv0Hrh2,@object
	.size		CanIf_RxPduList0Drv0Hrh2,2
	.align		1
CanIf_RxPduList0Drv0Hrh2:
	.short		2
	.section	.text_vle
	.type		CanIf_RxPduList0Drv0Hrh3,@object
	.size		CanIf_RxPduList0Drv0Hrh3,2
	.align		1
CanIf_RxPduList0Drv0Hrh3:
	.short		3
	.section	.text_vle
	.type		CanIf_RxPduList0Drv0Hrh4,@object
	.size		CanIf_RxPduList0Drv0Hrh4,2
	.align		1
CanIf_RxPduList0Drv0Hrh4:
	.short		4
	.section	.text_vle
	.type		CanIf_RxPduList0Drv0Hrh5,@object
	.size		CanIf_RxPduList0Drv0Hrh5,2
	.align		1
CanIf_RxPduList0Drv0Hrh5:
	.short		5
	.section	.text_vle
	.type		CanIf_RxPduList0Drv0Hrh6,@object
	.size		CanIf_RxPduList0Drv0Hrh6,2
	.align		1
CanIf_RxPduList0Drv0Hrh6:
	.short		6
	.section	.text_vle
	.type		CanIf_RxPduList0Drv0Hrh7,@object
	.size		CanIf_RxPduList0Drv0Hrh7,2
	.align		1
CanIf_RxPduList0Drv0Hrh7:
	.short		7
	.section	.text_vle
	.type		CanIf_RxPduList0Drv0Hrh8,@object
	.size		CanIf_RxPduList0Drv0Hrh8,2
	.align		1
CanIf_RxPduList0Drv0Hrh8:
	.short		8
	.section	.text_vle
	.type		CanIf_RxPduList0Drv0Hrh9,@object
	.size		CanIf_RxPduList0Drv0Hrh9,2
	.align		1
CanIf_RxPduList0Drv0Hrh9:
	.short		9
	.section	.text_vle
	.type		CanIf_RxPduList0Drv0Hrh10,@object
	.size		CanIf_RxPduList0Drv0Hrh10,2
	.align		1
CanIf_RxPduList0Drv0Hrh10:
	.short		10
	.section	.text_vle
	.type		CanIf_RxPduList0Drv0Hrh11,@object
	.size		CanIf_RxPduList0Drv0Hrh11,2
	.align		1
CanIf_RxPduList0Drv0Hrh11:
	.short		11
	.section	.text_vle
	.type		CanIf_RxPduList0Drv0Hrh12,@object
	.size		CanIf_RxPduList0Drv0Hrh12,2
	.align		1
CanIf_RxPduList0Drv0Hrh12:
	.short		12
	.section	.text_vle
	.type		CanIf_RxPduList0Drv0Hrh13,@object
	.size		CanIf_RxPduList0Drv0Hrh13,2
	.align		1
CanIf_RxPduList0Drv0Hrh13:
	.short		13
	.section	.text_vle
	.type		CanIf_RxPduList0Drv0Hrh14,@object
	.size		CanIf_RxPduList0Drv0Hrh14,2
	.align		1
CanIf_RxPduList0Drv0Hrh14:
	.short		14
	.section	.text_vle
	.type		CanIf_RxPduList0Drv0Hrh15,@object
	.size		CanIf_RxPduList0Drv0Hrh15,2
	.align		1
CanIf_RxPduList0Drv0Hrh15:
	.short		15
	.section	.text_vle
	.type		CanIf_RxPduList0Drv0Hrh16,@object
	.size		CanIf_RxPduList0Drv0Hrh16,2
	.align		1
CanIf_RxPduList0Drv0Hrh16:
	.short		16
	.section	.text_vle
	.type		CanIf_RxPduList0Drv0Hrh17,@object
	.size		CanIf_RxPduList0Drv0Hrh17,2
	.align		1
CanIf_RxPduList0Drv0Hrh17:
	.short		17
	.section	.text_vle
	.type		CanIf_RxPduList0Drv0Hrh18,@object
	.size		CanIf_RxPduList0Drv0Hrh18,2
	.align		1
CanIf_RxPduList0Drv0Hrh18:
	.short		18
	.section	.text_vle
	.type		CanIf_RxPduList0Drv0Hrh19,@object
	.size		CanIf_RxPduList0Drv0Hrh19,2
	.align		1
CanIf_RxPduList0Drv0Hrh19:
	.short		19
	.section	.text_vle
	.type		CanIf_RxPduList0Drv0Hrh20,@object
	.size		CanIf_RxPduList0Drv0Hrh20,2
	.align		1
CanIf_RxPduList0Drv0Hrh20:
	.short		20
	.section	.text_vle
	.type		CanIf_RxPduList0Drv0Hrh21,@object
	.size		CanIf_RxPduList0Drv0Hrh21,2
	.align		1
CanIf_RxPduList0Drv0Hrh21:
	.short		21
	.section	.text_vle
	.type		CanIf_RxPduList0Drv0Hrh22,@object
	.size		CanIf_RxPduList0Drv0Hrh22,2
	.align		1
CanIf_RxPduList0Drv0Hrh22:
	.short		22
	.section	.text_vle
	.type		CanIf_RxPduList0Drv0Hrh23,@object
	.size		CanIf_RxPduList0Drv0Hrh23,2
	.align		1
CanIf_RxPduList0Drv0Hrh23:
	.short		23
	.section	.text_vle
	.type		CanIf_RxPduList0Drv0Hrh24,@object
	.size		CanIf_RxPduList0Drv0Hrh24,2
	.align		1
CanIf_RxPduList0Drv0Hrh24:
	.short		24
	.section	.text_vle
	.type		CanIf_RxPduList0Drv0Hrh25,@object
	.size		CanIf_RxPduList0Drv0Hrh25,2
	.align		1
CanIf_RxPduList0Drv0Hrh25:
	.short		25
	.section	.text_vle
	.type		CanIf_RxPduList0Drv0Hrh26,@object
	.size		CanIf_RxPduList0Drv0Hrh26,2
	.align		1
CanIf_RxPduList0Drv0Hrh26:
	.short		29
	.section	.text_vle
	.type		CanIf_RxPduList0Drv0Hrh27,@object
	.size		CanIf_RxPduList0Drv0Hrh27,2
	.align		1
CanIf_RxPduList0Drv0Hrh27:
	.short		30
	.section	.text_vle
	.type		CanIf_RxPduList0Drv0Hrh28,@object
	.size		CanIf_RxPduList0Drv0Hrh28,2
	.align		1
CanIf_RxPduList0Drv0Hrh28:
	.short		34
	.section	.text_vle
	.type		CanIf_RxPduList0Drv0Hrh29,@object
	.size		CanIf_RxPduList0Drv0Hrh29,2
	.align		1
CanIf_RxPduList0Drv0Hrh29:
	.short		32
	.section	.text_vle
	.type		CanIf_RxPduList0Drv0Hrh30,@object
	.size		CanIf_RxPduList0Drv0Hrh30,2
	.align		1
CanIf_RxPduList0Drv0Hrh30:
	.short		31
	.section	.text_vle
	.type		CanIf_RxPduList0Drv0Hrh31,@object
	.size		CanIf_RxPduList0Drv0Hrh31,2
	.align		1
CanIf_RxPduList0Drv0Hrh31:
	.short		36
	.section	.text_vle
	.type		CanIf_RxPduList0Drv0Hrh32,@object
	.size		CanIf_RxPduList0Drv0Hrh32,2
	.align		1
CanIf_RxPduList0Drv0Hrh32:
	.short		33
	.section	.text_vle
	.type		CanIf_RxPduList0Drv0Hrh33,@object
	.size		CanIf_RxPduList0Drv0Hrh33,2
	.align		1
CanIf_RxPduList0Drv0Hrh33:
	.short		28
	.section	.text_vle
	.type		CanIf_RxPduList0Drv0Hrh34,@object
	.size		CanIf_RxPduList0Drv0Hrh34,2
	.align		1
CanIf_RxPduList0Drv0Hrh34:
	.short		38
	.section	.text_vle
	.type		CanIf_RxPduList0Drv0Hrh35,@object
	.size		CanIf_RxPduList0Drv0Hrh35,2
	.align		1
CanIf_RxPduList0Drv0Hrh35:
	.short		39
	.section	.text_vle
	.type		CanIf_RxPduList0Drv0Hrh36,@object
	.size		CanIf_RxPduList0Drv0Hrh36,2
	.align		1
CanIf_RxPduList0Drv0Hrh36:
	.short		37
	.section	.text_vle
	.type		CanIf_RxPduList0Drv0Hrh37,@object
	.size		CanIf_RxPduList0Drv0Hrh37,2
	.align		1
CanIf_RxPduList0Drv0Hrh37:
	.short		43
	.section	.text_vle
	.type		CanIf_RxPduList0Drv0Hrh38,@object
	.size		CanIf_RxPduList0Drv0Hrh38,2
	.align		1
CanIf_RxPduList0Drv0Hrh38:
	.short		41
	.section	.text_vle
	.type		CanIf_RxPduList0Drv0Hrh39,@object
	.size		CanIf_RxPduList0Drv0Hrh39,2
	.align		1
CanIf_RxPduList0Drv0Hrh39:
	.short		42
	.section	.text_vle
	.type		CanIf_RxPduList0Drv0Hrh40,@object
	.size		CanIf_RxPduList0Drv0Hrh40,2
	.align		1
CanIf_RxPduList0Drv0Hrh40:
	.short		44
	.section	.text_vle
	.type		CanIf_RxPduList0Drv0Hrh41,@object
	.size		CanIf_RxPduList0Drv0Hrh41,2
	.align		1
CanIf_RxPduList0Drv0Hrh41:
	.short		46
	.section	.text_vle
	.type		CanIf_RxPduList0Drv0Hrh42,@object
	.size		CanIf_RxPduList0Drv0Hrh42,2
	.align		1
CanIf_RxPduList0Drv0Hrh42:
	.short		47
	.section	.text_vle
	.type		CanIf_RxPduList0Drv0Hrh43,@object
	.size		CanIf_RxPduList0Drv0Hrh43,2
	.align		1
CanIf_RxPduList0Drv0Hrh43:
	.short		45
	.section	.text_vle
	.type		CanIf_RxPduList0Drv0Hrh44,@object
	.size		CanIf_RxPduList0Drv0Hrh44,2
	.align		1
CanIf_RxPduList0Drv0Hrh44:
	.short		48
	.section	.text_vle
	.type		CanIf_RxPduList0Drv0Hrh45,@object
	.size		CanIf_RxPduList0Drv0Hrh45,2
	.align		1
CanIf_RxPduList0Drv0Hrh45:
	.short		52
	.section	.text_vle
	.type		CanIf_RxPduList0Drv0Hrh46,@object
	.size		CanIf_RxPduList0Drv0Hrh46,2
	.align		1
CanIf_RxPduList0Drv0Hrh46:
	.short		49
	.section	.text_vle
	.type		CanIf_RxPduList0Drv0Hrh47,@object
	.size		CanIf_RxPduList0Drv0Hrh47,2
	.align		1
CanIf_RxPduList0Drv0Hrh47:
	.short		53
	.section	.text_vle
	.type		CanIf_RxPduList0Drv0Hrh48,@object
	.size		CanIf_RxPduList0Drv0Hrh48,2
	.align		1
CanIf_RxPduList0Drv0Hrh48:
	.short		40
	.section	.text_vle
	.type		CanIf_RxPduList0Drv0Hrh49,@object
	.size		CanIf_RxPduList0Drv0Hrh49,2
	.align		1
CanIf_RxPduList0Drv0Hrh49:
	.short		51
	.section	.text_vle
	.type		CanIf_RxPduList0Drv0Hrh50,@object
	.size		CanIf_RxPduList0Drv0Hrh50,2
	.align		1
CanIf_RxPduList0Drv0Hrh50:
	.short		54
	.section	.text_vle
	.type		CanIf_RxPduList0Drv0Hrh51,@object
	.size		CanIf_RxPduList0Drv0Hrh51,2
	.align		1
CanIf_RxPduList0Drv0Hrh51:
	.short		50
	.section	.text_vle
	.type		CanIf_RxPduList0Drv0Hrh52,@object
	.size		CanIf_RxPduList0Drv0Hrh52,2
	.align		1
CanIf_RxPduList0Drv0Hrh52:
	.short		55
	.section	.text_vle
	.type		CanIf_RxPduList0Drv0Hrh53,@object
	.size		CanIf_RxPduList0Drv0Hrh53,2
	.align		1
CanIf_RxPduList0Drv0Hrh53:
	.short		56
	.section	.text_vle
	.type		CanIf_RxPduList0Drv0Hrh54,@object
	.size		CanIf_RxPduList0Drv0Hrh54,2
	.align		1
CanIf_RxPduList0Drv0Hrh54:
	.short		35
	.section	.text_vle
	.type		CanIf_RxPduList0Drv0Hrh55,@object
	.size		CanIf_RxPduList0Drv0Hrh55,4
	.align		1
CanIf_RxPduList0Drv0Hrh55:
	.short		26
	.short		27
	.section	.text_vle
	.type		CanIf_RxPduList0Drv0Hrh56,@object
	.size		CanIf_RxPduList0Drv0Hrh56,2
	.align		1
CanIf_RxPduList0Drv0Hrh56:
	.short		57
	.section	.text_vle
	.type		CanIf_RxPduList0Drv0Hrh57,@object
	.size		CanIf_RxPduList0Drv0Hrh57,2
	.align		1
CanIf_RxPduList0Drv0Hrh57:
	.short		58
	.section	.text_vle
	.type		CanIf_HrhConfigInfo0Drv0_a,@object
	.size		CanIf_HrhConfigInfo0Drv0_a,1160
	.align		2
CanIf_HrhConfigInfo0Drv0_a:
	.long		1
	.long		0
	.long		CanIf_RxPduList0Drv0Hrh0
	.short		1
	.short		0
	.byte		0
	.byte		0
	.space		2
	.long		1
	.long		0
	.long		CanIf_RxPduList0Drv0Hrh1
	.short		1
	.short		1
	.byte		0
	.byte		0
	.space		2
	.long		1
	.long		0
	.long		CanIf_RxPduList0Drv0Hrh2
	.short		1
	.short		2
	.byte		0
	.byte		0
	.space		2
	.long		1
	.long		0
	.long		CanIf_RxPduList0Drv0Hrh3
	.short		1
	.short		3
	.byte		0
	.byte		0
	.space		2
	.long		1
	.long		0
	.long		CanIf_RxPduList0Drv0Hrh4
	.short		1
	.short		4
	.byte		0
	.byte		0
	.space		2
	.long		1
	.long		0
	.long		CanIf_RxPduList0Drv0Hrh5
	.short		1
	.short		5
	.byte		0
	.byte		0
	.space		2
	.long		1
	.long		0
	.long		CanIf_RxPduList0Drv0Hrh6
	.short		1
	.short		6
	.byte		0
	.byte		0
	.space		2
	.long		1
	.long		0
	.long		CanIf_RxPduList0Drv0Hrh7
	.short		1
	.short		7
	.byte		0
	.byte		0
	.space		2
	.long		1
	.long		0
	.long		CanIf_RxPduList0Drv0Hrh8
	.short		1
	.short		8
	.byte		0
	.byte		0
	.space		2
	.long		1
	.long		0
	.long		CanIf_RxPduList0Drv0Hrh9
	.short		1
	.short		9
	.byte		0
	.byte		0
	.space		2
	.long		1
	.long		0
	.long		CanIf_RxPduList0Drv0Hrh10
	.short		1
	.short		10
	.byte		0
	.byte		0
	.space		2
	.long		1
	.long		0
	.long		CanIf_RxPduList0Drv0Hrh11
	.short		1
	.short		11
	.byte		0
	.byte		0
	.space		2
	.long		1
	.long		0
	.long		CanIf_RxPduList0Drv0Hrh12
	.short		1
	.short		12
	.byte		0
	.byte		0
	.space		2
	.long		1
	.long		0
	.long		CanIf_RxPduList0Drv0Hrh13
	.short		1
	.short		13
	.byte		0
	.byte		0
	.space		2
	.long		1
	.long		0
	.long		CanIf_RxPduList0Drv0Hrh14
	.short		1
	.short		14
	.byte		0
	.byte		0
	.space		2
	.long		1
	.long		0
	.long		CanIf_RxPduList0Drv0Hrh15
	.short		1
	.short		15
	.byte		0
	.byte		0
	.space		2
	.long		1
	.long		0
	.long		CanIf_RxPduList0Drv0Hrh16
	.short		1
	.short		16
	.byte		0
	.byte		0
	.space		2
	.long		1
	.long		0
	.long		CanIf_RxPduList0Drv0Hrh17
	.short		1
	.short		17
	.byte		0
	.byte		0
	.space		2
	.long		1
	.long		0
	.long		CanIf_RxPduList0Drv0Hrh18
	.short		1
	.short		18
	.byte		0
	.byte		0
	.space		2
	.long		1
	.long		0
	.long		CanIf_RxPduList0Drv0Hrh19
	.short		1
	.short		19
	.byte		0
	.byte		0
	.space		2
	.long		1
	.long		0
	.long		CanIf_RxPduList0Drv0Hrh20
	.short		1
	.short		20
	.byte		0
	.byte		0
	.space		2
	.long		1
	.long		0
	.long		CanIf_RxPduList0Drv0Hrh21
	.short		1
	.short		21
	.byte		0
	.byte		0
	.space		2
	.long		1
	.long		0
	.long		CanIf_RxPduList0Drv0Hrh22
	.short		1
	.short		22
	.byte		0
	.byte		0
	.space		2
	.long		1
	.long		0
	.long		CanIf_RxPduList0Drv0Hrh23
	.short		1
	.short		23
	.byte		0
	.byte		0
	.space		2
	.long		1
	.long		0
	.long		CanIf_RxPduList0Drv0Hrh24
	.short		1
	.short		24
	.byte		0
	.byte		0
	.space		2
	.long		1
	.long		0
	.long		CanIf_RxPduList0Drv0Hrh25
	.short		1
	.short		25
	.byte		0
	.byte		0
	.space		2
	.long		1
	.long		0
	.long		CanIf_RxPduList0Drv0Hrh26
	.short		1
	.short		26
	.byte		0
	.byte		0
	.space		2
	.long		1
	.long		0
	.long		CanIf_RxPduList0Drv0Hrh27
	.short		1
	.short		27
	.byte		0
	.byte		0
	.space		2
	.long		1
	.long		0
	.long		CanIf_RxPduList0Drv0Hrh28
	.short		1
	.short		28
	.byte		0
	.byte		0
	.space		2
	.long		1
	.long		0
	.long		CanIf_RxPduList0Drv0Hrh29
	.short		1
	.short		29
	.byte		0
	.byte		0
	.space		2
	.long		1
	.long		0
	.long		CanIf_RxPduList0Drv0Hrh30
	.short		1
	.short		30
	.byte		0
	.byte		0
	.space		2
	.long		1
	.long		0
	.long		CanIf_RxPduList0Drv0Hrh31
	.short		1
	.short		31
	.byte		0
	.byte		0
	.space		2
	.long		1
	.long		0
	.long		CanIf_RxPduList0Drv0Hrh32
	.short		1
	.short		32
	.byte		0
	.byte		0
	.space		2
	.long		1
	.long		0
	.long		CanIf_RxPduList0Drv0Hrh33
	.short		1
	.short		33
	.byte		0
	.byte		0
	.space		2
	.long		1
	.long		0
	.long		CanIf_RxPduList0Drv0Hrh34
	.short		1
	.short		34
	.byte		0
	.byte		0
	.space		2
	.long		1
	.long		0
	.long		CanIf_RxPduList0Drv0Hrh35
	.short		1
	.short		35
	.byte		0
	.byte		0
	.space		2
	.long		1
	.long		0
	.long		CanIf_RxPduList0Drv0Hrh36
	.short		1
	.short		36
	.byte		0
	.byte		0
	.space		2
	.long		1
	.long		0
	.long		CanIf_RxPduList0Drv0Hrh37
	.short		1
	.short		37
	.byte		0
	.byte		0
	.space		2
	.long		1
	.long		0
	.long		CanIf_RxPduList0Drv0Hrh38
	.short		1
	.short		38
	.byte		0
	.byte		0
	.space		2
	.long		1
	.long		0
	.long		CanIf_RxPduList0Drv0Hrh39
	.short		1
	.short		39
	.byte		0
	.byte		0
	.space		2
	.long		1
	.long		0
	.long		CanIf_RxPduList0Drv0Hrh40
	.short		1
	.short		40
	.byte		0
	.byte		0
	.space		2
	.long		1
	.long		0
	.long		CanIf_RxPduList0Drv0Hrh41
	.short		1
	.short		41
	.byte		0
	.byte		0
	.space		2
	.long		1
	.long		0
	.long		CanIf_RxPduList0Drv0Hrh42
	.short		1
	.short		42
	.byte		0
	.byte		0
	.space		2
	.long		1
	.long		0
	.long		CanIf_RxPduList0Drv0Hrh43
	.short		1
	.short		43
	.byte		0
	.byte		0
	.space		2
	.long		1
	.long		0
	.long		CanIf_RxPduList0Drv0Hrh44
	.short		1
	.short		44
	.byte		0
	.byte		0
	.space		2
	.long		1
	.long		0
	.long		CanIf_RxPduList0Drv0Hrh45
	.short		1
	.short		45
	.byte		0
	.byte		0
	.space		2
	.long		1
	.long		0
	.long		CanIf_RxPduList0Drv0Hrh46
	.short		1
	.short		46
	.byte		0
	.byte		0
	.space		2
	.long		1
	.long		0
	.long		CanIf_RxPduList0Drv0Hrh47
	.short		1
	.short		47
	.byte		0
	.byte		0
	.space		2
	.long		1
	.long		0
	.long		CanIf_RxPduList0Drv0Hrh48
	.short		1
	.short		48
	.byte		0
	.byte		0
	.space		2
	.long		1
	.long		0
	.long		CanIf_RxPduList0Drv0Hrh49
	.short		1
	.short		49
	.byte		0
	.byte		0
	.space		2
	.long		1
	.long		0
	.long		CanIf_RxPduList0Drv0Hrh50
	.short		1
	.short		50
	.byte		0
	.byte		0
	.space		2
	.long		1
	.long		0
	.long		CanIf_RxPduList0Drv0Hrh51
	.short		1
	.short		51
	.byte		0
	.byte		0
	.space		2
	.long		1
	.long		0
	.long		CanIf_RxPduList0Drv0Hrh52
	.short		1
	.short		52
	.byte		0
	.byte		0
	.space		2
	.long		1
	.long		0
	.long		CanIf_RxPduList0Drv0Hrh53
	.short		1
	.short		53
	.byte		0
	.byte		0
	.space		2
	.long		1
	.long		0
	.long		CanIf_RxPduList0Drv0Hrh54
	.short		1
	.short		54
	.byte		0
	.byte		0
	.space		2
	.long		0
	.long		0
	.long		CanIf_RxPduList0Drv0Hrh55
	.short		2
	.short		55
	.byte		1
	.byte		0
	.space		2
	.long		1
	.long		0
	.long		CanIf_RxPduList0Drv0Hrh56
	.short		1
	.short		56
	.byte		0
	.byte		0
	.space		2
	.long		1
	.long		0
	.long		CanIf_RxPduList0Drv0Hrh57
	.short		1
	.short		57
	.byte		0
	.byte		0
	.space		2
	.section	.text_vle
	.type		CanIf_HrhConfigInfo0_a,@object
	.size		CanIf_HrhConfigInfo0_a,4
	.align		2
CanIf_HrhConfigInfo0_a:
	.long		CanIf_HrhConfigInfo0Drv0_a
	.section	.text_vle
	.type		CanIf_BufferInfo0,@object
	.size		CanIf_BufferInfo0,8
	.align		1
CanIf_BufferInfo0:
	.short		0
	.short		0
	.short		513
	.short		8
	.section	.text_vle
	.type		CanIf_PBtoPCHashValue,@object
	.size		CanIf_PBtoPCHashValue,4
	.align		2
CanIf_PBtoPCHashValue:
	.long		912334548
	.section	.text_vle
	.type		CanIf_PBtoLTHashValue,@object
	.size		CanIf_PBtoLTHashValue,4
	.align		2
CanIf_PBtoLTHashValue:
	.long		-829964965
	.section	.text_vle
	.type		CanIfInitCfg,@object
	.size		CanIfInitCfg,40
	.align		2
	.globl		CanIfInitCfg
CanIfInitCfg:
	.long		CanIf_InitConfiguration0
	.long		CanIf_TxPduConfigInfo0_a
	.long		CanIf_RxPduConfigInfo0_a
	.long		CanIf_HrhConfigInfo0_a
	.long		CanIf_BufferInfo0
	.long		CanIf_RxPduIntDecDataBuf0_au8
	.long		CanIf_RxPduIntDecNotifySt0_au8
	.long		0
	.long		CanIf_PBtoPCHashValue
	.long		CanIf_PBtoLTHashValue
	.section	.text_vle
#$$ld
.L5:
.L427:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanIf\\ssc\\make\\..\\inc\\CanIf_Types.h"
.L194:	.d2filenum "gen\\MPC5746R_ECU\\WindRiver\\CanIf_PBcfg.c"
	.d2_line_end


	.section	.debug_abbrev,,n
.L9:
	.section	.debug_abbrev,,n
	.uleb128	1
	.uleb128	17
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	3
	.uleb128	8
	.uleb128	37
	.uleb128	8
	.uleb128	27
	.uleb128	8
	.uleb128	19
	.uleb128	15
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	16
	.uleb128	6
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	2
	.uleb128	52
	.byte		0x0
	.uleb128	58
	.uleb128	6
	.uleb128	59
	.uleb128	15
	.uleb128	57
	.uleb128	15
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
	.uleb128	2
	.uleb128	9
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	3
	.uleb128	52
	.byte		0x0
	.uleb128	63
	.uleb128	12
	.uleb128	58
	.uleb128	6
	.uleb128	59
	.uleb128	15
	.uleb128	57
	.uleb128	15
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
	.uleb128	2
	.uleb128	9
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	4
	.uleb128	19
	.byte		0x1
	.uleb128	58
	.uleb128	6
	.uleb128	59
	.uleb128	15
	.uleb128	57
	.uleb128	15
	.uleb128	1
	.uleb128	19
	.uleb128	11
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	5
	.uleb128	13
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
	.uleb128	56
	.uleb128	9
	.uleb128	50
	.uleb128	11
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	6
	.uleb128	4
	.byte		0x1
	.uleb128	58
	.uleb128	6
	.uleb128	59
	.uleb128	15
	.uleb128	57
	.uleb128	15
	.uleb128	1
	.uleb128	19
	.uleb128	11
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	7
	.uleb128	40
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	28
	.uleb128	13
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	8
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	9
	.uleb128	38
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	10
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	11
	.uleb128	33
	.byte		0x0
	.uleb128	47
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	12
	.uleb128	36
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	62
	.uleb128	11
	.uleb128	11
	.uleb128	11
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	13
	.uleb128	15
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.sleb128	0


	.section	.debug_info,,n
.L2:
	.4byte		.L3-.L1
.L1:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.section	.debug_info,,n
	.sleb128	1
	.4byte		.L7-.L2
	.byte		"gen\\MPC5746R_ECU\\WindRiver\\CanIf_PBcfg.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L4
	.4byte		.L5
	.4byte		.L8
	.section	.debug_info,,n
.L193:
	.sleb128	2
	.4byte		.L194
	.uleb128	58
	.uleb128	1
	.byte		"CanIf_InitConfiguration0"
	.byte		0
	.4byte		.L195
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_InitConfiguration0
	.section	.debug_info,,n
	.section	.debug_info,,n
.L198:
	.sleb128	2
	.4byte		.L194
	.uleb128	79
	.uleb128	1
	.byte		"CanIfBufferCfg0"
	.byte		0
	.4byte		.L199
	.sleb128	5
	.byte		0x3
	.4byte		CanIfBufferCfg0
	.section	.debug_info,,n
.L204:
	.sleb128	2
	.4byte		.L194
	.uleb128	225
	.uleb128	1
	.byte		"CanIf_TxPduConfigInfo0_a"
	.byte		0
	.4byte		.L205
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_TxPduConfigInfo0_a
	.section	.debug_info,,n
.L210:
	.sleb128	2
	.4byte		.L194
	.uleb128	634
	.uleb128	1
	.byte		"CanIf_RxPduConfigInfo0_a"
	.byte		0
	.4byte		.L211
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_RxPduConfigInfo0_a
	.section	.debug_info,,n
.L216:
	.sleb128	2
	.4byte		.L194
	.uleb128	3890
	.uleb128	1
	.byte		"CanIf_RxPduList0Drv0Hrh0"
	.byte		0
	.4byte		.L217
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_RxPduList0Drv0Hrh0
	.section	.debug_info,,n
.L224:
	.sleb128	2
	.4byte		.L194
	.uleb128	3901
	.uleb128	1
	.byte		"CanIf_RxPduList0Drv0Hrh1"
	.byte		0
	.4byte		.L225
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_RxPduList0Drv0Hrh1
	.section	.debug_info,,n
.L227:
	.sleb128	2
	.4byte		.L194
	.uleb128	3912
	.uleb128	1
	.byte		"CanIf_RxPduList0Drv0Hrh2"
	.byte		0
	.4byte		.L228
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_RxPduList0Drv0Hrh2
	.section	.debug_info,,n
.L230:
	.sleb128	2
	.4byte		.L194
	.uleb128	3923
	.uleb128	1
	.byte		"CanIf_RxPduList0Drv0Hrh3"
	.byte		0
	.4byte		.L231
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_RxPduList0Drv0Hrh3
	.section	.debug_info,,n
.L233:
	.sleb128	2
	.4byte		.L194
	.uleb128	3934
	.uleb128	1
	.byte		"CanIf_RxPduList0Drv0Hrh4"
	.byte		0
	.4byte		.L234
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_RxPduList0Drv0Hrh4
	.section	.debug_info,,n
.L236:
	.sleb128	2
	.4byte		.L194
	.uleb128	3945
	.uleb128	1
	.byte		"CanIf_RxPduList0Drv0Hrh5"
	.byte		0
	.4byte		.L237
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_RxPduList0Drv0Hrh5
	.section	.debug_info,,n
.L239:
	.sleb128	2
	.4byte		.L194
	.uleb128	3956
	.uleb128	1
	.byte		"CanIf_RxPduList0Drv0Hrh6"
	.byte		0
	.4byte		.L240
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_RxPduList0Drv0Hrh6
	.section	.debug_info,,n
.L242:
	.sleb128	2
	.4byte		.L194
	.uleb128	3967
	.uleb128	1
	.byte		"CanIf_RxPduList0Drv0Hrh7"
	.byte		0
	.4byte		.L243
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_RxPduList0Drv0Hrh7
	.section	.debug_info,,n
.L245:
	.sleb128	2
	.4byte		.L194
	.uleb128	3978
	.uleb128	1
	.byte		"CanIf_RxPduList0Drv0Hrh8"
	.byte		0
	.4byte		.L246
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_RxPduList0Drv0Hrh8
	.section	.debug_info,,n
.L248:
	.sleb128	2
	.4byte		.L194
	.uleb128	3989
	.uleb128	1
	.byte		"CanIf_RxPduList0Drv0Hrh9"
	.byte		0
	.4byte		.L249
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_RxPduList0Drv0Hrh9
	.section	.debug_info,,n
.L251:
	.sleb128	2
	.4byte		.L194
	.uleb128	4000
	.uleb128	1
	.byte		"CanIf_RxPduList0Drv0Hrh10"
	.byte		0
	.4byte		.L252
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_RxPduList0Drv0Hrh10
	.section	.debug_info,,n
.L254:
	.sleb128	2
	.4byte		.L194
	.uleb128	4011
	.uleb128	1
	.byte		"CanIf_RxPduList0Drv0Hrh11"
	.byte		0
	.4byte		.L255
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_RxPduList0Drv0Hrh11
	.section	.debug_info,,n
.L257:
	.sleb128	2
	.4byte		.L194
	.uleb128	4022
	.uleb128	1
	.byte		"CanIf_RxPduList0Drv0Hrh12"
	.byte		0
	.4byte		.L258
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_RxPduList0Drv0Hrh12
	.section	.debug_info,,n
.L260:
	.sleb128	2
	.4byte		.L194
	.uleb128	4033
	.uleb128	1
	.byte		"CanIf_RxPduList0Drv0Hrh13"
	.byte		0
	.4byte		.L261
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_RxPduList0Drv0Hrh13
	.section	.debug_info,,n
.L263:
	.sleb128	2
	.4byte		.L194
	.uleb128	4044
	.uleb128	1
	.byte		"CanIf_RxPduList0Drv0Hrh14"
	.byte		0
	.4byte		.L264
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_RxPduList0Drv0Hrh14
	.section	.debug_info,,n
.L266:
	.sleb128	2
	.4byte		.L194
	.uleb128	4055
	.uleb128	1
	.byte		"CanIf_RxPduList0Drv0Hrh15"
	.byte		0
	.4byte		.L267
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_RxPduList0Drv0Hrh15
	.section	.debug_info,,n
.L269:
	.sleb128	2
	.4byte		.L194
	.uleb128	4066
	.uleb128	1
	.byte		"CanIf_RxPduList0Drv0Hrh16"
	.byte		0
	.4byte		.L270
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_RxPduList0Drv0Hrh16
	.section	.debug_info,,n
.L272:
	.sleb128	2
	.4byte		.L194
	.uleb128	4077
	.uleb128	1
	.byte		"CanIf_RxPduList0Drv0Hrh17"
	.byte		0
	.4byte		.L273
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_RxPduList0Drv0Hrh17
	.section	.debug_info,,n
.L275:
	.sleb128	2
	.4byte		.L194
	.uleb128	4088
	.uleb128	1
	.byte		"CanIf_RxPduList0Drv0Hrh18"
	.byte		0
	.4byte		.L276
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_RxPduList0Drv0Hrh18
	.section	.debug_info,,n
.L278:
	.sleb128	2
	.4byte		.L194
	.uleb128	4099
	.uleb128	1
	.byte		"CanIf_RxPduList0Drv0Hrh19"
	.byte		0
	.4byte		.L279
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_RxPduList0Drv0Hrh19
	.section	.debug_info,,n
.L281:
	.sleb128	2
	.4byte		.L194
	.uleb128	4110
	.uleb128	1
	.byte		"CanIf_RxPduList0Drv0Hrh20"
	.byte		0
	.4byte		.L282
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_RxPduList0Drv0Hrh20
	.section	.debug_info,,n
.L284:
	.sleb128	2
	.4byte		.L194
	.uleb128	4121
	.uleb128	1
	.byte		"CanIf_RxPduList0Drv0Hrh21"
	.byte		0
	.4byte		.L285
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_RxPduList0Drv0Hrh21
	.section	.debug_info,,n
.L287:
	.sleb128	2
	.4byte		.L194
	.uleb128	4132
	.uleb128	1
	.byte		"CanIf_RxPduList0Drv0Hrh22"
	.byte		0
	.4byte		.L288
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_RxPduList0Drv0Hrh22
	.section	.debug_info,,n
.L290:
	.sleb128	2
	.4byte		.L194
	.uleb128	4143
	.uleb128	1
	.byte		"CanIf_RxPduList0Drv0Hrh23"
	.byte		0
	.4byte		.L291
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_RxPduList0Drv0Hrh23
	.section	.debug_info,,n
.L293:
	.sleb128	2
	.4byte		.L194
	.uleb128	4154
	.uleb128	1
	.byte		"CanIf_RxPduList0Drv0Hrh24"
	.byte		0
	.4byte		.L294
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_RxPduList0Drv0Hrh24
	.section	.debug_info,,n
.L296:
	.sleb128	2
	.4byte		.L194
	.uleb128	4165
	.uleb128	1
	.byte		"CanIf_RxPduList0Drv0Hrh25"
	.byte		0
	.4byte		.L297
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_RxPduList0Drv0Hrh25
	.section	.debug_info,,n
.L299:
	.sleb128	2
	.4byte		.L194
	.uleb128	4176
	.uleb128	1
	.byte		"CanIf_RxPduList0Drv0Hrh26"
	.byte		0
	.4byte		.L300
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_RxPduList0Drv0Hrh26
	.section	.debug_info,,n
.L302:
	.sleb128	2
	.4byte		.L194
	.uleb128	4187
	.uleb128	1
	.byte		"CanIf_RxPduList0Drv0Hrh27"
	.byte		0
	.4byte		.L303
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_RxPduList0Drv0Hrh27
	.section	.debug_info,,n
.L305:
	.sleb128	2
	.4byte		.L194
	.uleb128	4198
	.uleb128	1
	.byte		"CanIf_RxPduList0Drv0Hrh28"
	.byte		0
	.4byte		.L306
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_RxPduList0Drv0Hrh28
	.section	.debug_info,,n
.L308:
	.sleb128	2
	.4byte		.L194
	.uleb128	4209
	.uleb128	1
	.byte		"CanIf_RxPduList0Drv0Hrh29"
	.byte		0
	.4byte		.L309
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_RxPduList0Drv0Hrh29
	.section	.debug_info,,n
.L311:
	.sleb128	2
	.4byte		.L194
	.uleb128	4220
	.uleb128	1
	.byte		"CanIf_RxPduList0Drv0Hrh30"
	.byte		0
	.4byte		.L312
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_RxPduList0Drv0Hrh30
	.section	.debug_info,,n
.L314:
	.sleb128	2
	.4byte		.L194
	.uleb128	4231
	.uleb128	1
	.byte		"CanIf_RxPduList0Drv0Hrh31"
	.byte		0
	.4byte		.L315
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_RxPduList0Drv0Hrh31
	.section	.debug_info,,n
.L317:
	.sleb128	2
	.4byte		.L194
	.uleb128	4242
	.uleb128	1
	.byte		"CanIf_RxPduList0Drv0Hrh32"
	.byte		0
	.4byte		.L318
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_RxPduList0Drv0Hrh32
	.section	.debug_info,,n
.L320:
	.sleb128	2
	.4byte		.L194
	.uleb128	4253
	.uleb128	1
	.byte		"CanIf_RxPduList0Drv0Hrh33"
	.byte		0
	.4byte		.L321
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_RxPduList0Drv0Hrh33
	.section	.debug_info,,n
.L323:
	.sleb128	2
	.4byte		.L194
	.uleb128	4264
	.uleb128	1
	.byte		"CanIf_RxPduList0Drv0Hrh34"
	.byte		0
	.4byte		.L324
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_RxPduList0Drv0Hrh34
	.section	.debug_info,,n
.L326:
	.sleb128	2
	.4byte		.L194
	.uleb128	4275
	.uleb128	1
	.byte		"CanIf_RxPduList0Drv0Hrh35"
	.byte		0
	.4byte		.L327
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_RxPduList0Drv0Hrh35
	.section	.debug_info,,n
.L329:
	.sleb128	2
	.4byte		.L194
	.uleb128	4286
	.uleb128	1
	.byte		"CanIf_RxPduList0Drv0Hrh36"
	.byte		0
	.4byte		.L330
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_RxPduList0Drv0Hrh36
	.section	.debug_info,,n
.L332:
	.sleb128	2
	.4byte		.L194
	.uleb128	4297
	.uleb128	1
	.byte		"CanIf_RxPduList0Drv0Hrh37"
	.byte		0
	.4byte		.L333
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_RxPduList0Drv0Hrh37
	.section	.debug_info,,n
.L335:
	.sleb128	2
	.4byte		.L194
	.uleb128	4308
	.uleb128	1
	.byte		"CanIf_RxPduList0Drv0Hrh38"
	.byte		0
	.4byte		.L336
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_RxPduList0Drv0Hrh38
	.section	.debug_info,,n
.L338:
	.sleb128	2
	.4byte		.L194
	.uleb128	4319
	.uleb128	1
	.byte		"CanIf_RxPduList0Drv0Hrh39"
	.byte		0
	.4byte		.L339
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_RxPduList0Drv0Hrh39
	.section	.debug_info,,n
.L341:
	.sleb128	2
	.4byte		.L194
	.uleb128	4330
	.uleb128	1
	.byte		"CanIf_RxPduList0Drv0Hrh40"
	.byte		0
	.4byte		.L342
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_RxPduList0Drv0Hrh40
	.section	.debug_info,,n
.L344:
	.sleb128	2
	.4byte		.L194
	.uleb128	4341
	.uleb128	1
	.byte		"CanIf_RxPduList0Drv0Hrh41"
	.byte		0
	.4byte		.L345
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_RxPduList0Drv0Hrh41
	.section	.debug_info,,n
.L347:
	.sleb128	2
	.4byte		.L194
	.uleb128	4352
	.uleb128	1
	.byte		"CanIf_RxPduList0Drv0Hrh42"
	.byte		0
	.4byte		.L348
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_RxPduList0Drv0Hrh42
	.section	.debug_info,,n
.L350:
	.sleb128	2
	.4byte		.L194
	.uleb128	4363
	.uleb128	1
	.byte		"CanIf_RxPduList0Drv0Hrh43"
	.byte		0
	.4byte		.L351
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_RxPduList0Drv0Hrh43
	.section	.debug_info,,n
.L353:
	.sleb128	2
	.4byte		.L194
	.uleb128	4374
	.uleb128	1
	.byte		"CanIf_RxPduList0Drv0Hrh44"
	.byte		0
	.4byte		.L354
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_RxPduList0Drv0Hrh44
	.section	.debug_info,,n
.L356:
	.sleb128	2
	.4byte		.L194
	.uleb128	4385
	.uleb128	1
	.byte		"CanIf_RxPduList0Drv0Hrh45"
	.byte		0
	.4byte		.L357
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_RxPduList0Drv0Hrh45
	.section	.debug_info,,n
.L359:
	.sleb128	2
	.4byte		.L194
	.uleb128	4396
	.uleb128	1
	.byte		"CanIf_RxPduList0Drv0Hrh46"
	.byte		0
	.4byte		.L360
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_RxPduList0Drv0Hrh46
	.section	.debug_info,,n
.L362:
	.sleb128	2
	.4byte		.L194
	.uleb128	4407
	.uleb128	1
	.byte		"CanIf_RxPduList0Drv0Hrh47"
	.byte		0
	.4byte		.L363
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_RxPduList0Drv0Hrh47
	.section	.debug_info,,n
.L365:
	.sleb128	2
	.4byte		.L194
	.uleb128	4418
	.uleb128	1
	.byte		"CanIf_RxPduList0Drv0Hrh48"
	.byte		0
	.4byte		.L366
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_RxPduList0Drv0Hrh48
	.section	.debug_info,,n
.L368:
	.sleb128	2
	.4byte		.L194
	.uleb128	4429
	.uleb128	1
	.byte		"CanIf_RxPduList0Drv0Hrh49"
	.byte		0
	.4byte		.L369
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_RxPduList0Drv0Hrh49
	.section	.debug_info,,n
.L371:
	.sleb128	2
	.4byte		.L194
	.uleb128	4440
	.uleb128	1
	.byte		"CanIf_RxPduList0Drv0Hrh50"
	.byte		0
	.4byte		.L372
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_RxPduList0Drv0Hrh50
	.section	.debug_info,,n
.L374:
	.sleb128	2
	.4byte		.L194
	.uleb128	4451
	.uleb128	1
	.byte		"CanIf_RxPduList0Drv0Hrh51"
	.byte		0
	.4byte		.L375
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_RxPduList0Drv0Hrh51
	.section	.debug_info,,n
.L377:
	.sleb128	2
	.4byte		.L194
	.uleb128	4462
	.uleb128	1
	.byte		"CanIf_RxPduList0Drv0Hrh52"
	.byte		0
	.4byte		.L378
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_RxPduList0Drv0Hrh52
	.section	.debug_info,,n
.L380:
	.sleb128	2
	.4byte		.L194
	.uleb128	4473
	.uleb128	1
	.byte		"CanIf_RxPduList0Drv0Hrh53"
	.byte		0
	.4byte		.L381
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_RxPduList0Drv0Hrh53
	.section	.debug_info,,n
.L383:
	.sleb128	2
	.4byte		.L194
	.uleb128	4484
	.uleb128	1
	.byte		"CanIf_RxPduList0Drv0Hrh54"
	.byte		0
	.4byte		.L384
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_RxPduList0Drv0Hrh54
	.section	.debug_info,,n
.L386:
	.sleb128	2
	.4byte		.L194
	.uleb128	4495
	.uleb128	1
	.byte		"CanIf_RxPduList0Drv0Hrh55"
	.byte		0
	.4byte		.L387
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_RxPduList0Drv0Hrh55
	.section	.debug_info,,n
.L389:
	.sleb128	2
	.4byte		.L194
	.uleb128	4508
	.uleb128	1
	.byte		"CanIf_RxPduList0Drv0Hrh56"
	.byte		0
	.4byte		.L390
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_RxPduList0Drv0Hrh56
	.section	.debug_info,,n
.L392:
	.sleb128	2
	.4byte		.L194
	.uleb128	4519
	.uleb128	1
	.byte		"CanIf_RxPduList0Drv0Hrh57"
	.byte		0
	.4byte		.L393
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_RxPduList0Drv0Hrh57
	.section	.debug_info,,n
.L395:
	.sleb128	2
	.4byte		.L194
	.uleb128	4537
	.uleb128	1
	.byte		"CanIf_HrhConfigInfo0Drv0_a"
	.byte		0
	.4byte		.L396
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_HrhConfigInfo0Drv0_a
	.section	.debug_info,,n
.L401:
	.sleb128	2
	.4byte		.L194
	.uleb128	5650
	.uleb128	1
	.byte		"CanIf_HrhConfigInfo0_a"
	.byte		0
	.4byte		.L402
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_HrhConfigInfo0_a
	.section	.debug_info,,n
.L406:
	.sleb128	2
	.4byte		.L194
	.uleb128	5665
	.uleb128	1
	.byte		"CanIf_BufferInfo0"
	.byte		0
	.4byte		.L407
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_BufferInfo0
	.section	.debug_info,,n
.L410:
	.sleb128	2
	.4byte		.L194
	.uleb128	5695
	.uleb128	33
	.byte		"CanIf_RxPduIntDecDataBuf0_au8"
	.byte		0
	.4byte		.L411
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_RxPduIntDecDataBuf0_au8
	.0byte		.L410
	.lcomm		CanIf_RxPduIntDecDataBuf0_au8,513,2
.L415:
	.sleb128	2
	.4byte		.L194
	.uleb128	5703
	.uleb128	33
	.byte		"CanIf_RxPduIntDecNotifySt0_au8"
	.byte		0
	.4byte		.L416
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_RxPduIntDecNotifySt0_au8
	.lcomm		CanIf_RxPduIntDecNotifySt0_au8,8,2
.L418:
	.sleb128	2
	.4byte		.L194
	.uleb128	5747
	.uleb128	38
	.byte		"CanIf_PBtoPCHashValue"
	.byte		0
	.4byte		.L419
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_PBtoPCHashValue
	.section	.debug_info,,n
.L422:
	.sleb128	2
	.4byte		.L194
	.uleb128	5748
	.uleb128	38
	.byte		"CanIf_PBtoLTHashValue"
	.byte		0
	.4byte		.L419
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_PBtoLTHashValue
	.section	.debug_info,,n
.L423:
	.sleb128	3
	.byte		0x1
	.4byte		.L194
	.uleb128	5756
	.uleb128	41
	.byte		"CanIfInitCfg"
	.byte		0
	.4byte		.L424
	.sleb128	5
	.byte		0x3
	.4byte		CanIfInitCfg
	.section	.debug_info,,n
.L426:
	.sleb128	4
	.4byte		.L427
	.uleb128	266
	.uleb128	1
	.4byte		.L428-.L2
	.uleb128	40
	.section	.debug_info,,n
.L179:
	.sleb128	5
	.byte		"InitConfiguration_pc"
	.byte		0
	.4byte		.L429
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L180:
	.sleb128	5
	.byte		"TxPduConfigInfo_pc"
	.byte		0
	.4byte		.L430
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L181:
	.sleb128	5
	.byte		"RxPduConfigInfo_pc"
	.byte		0
	.4byte		.L431
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L182:
	.sleb128	5
	.byte		"HrhConfigInfo_pc"
	.byte		0
	.4byte		.L432
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L183:
	.sleb128	5
	.byte		"CanIfBufferInfo_pc"
	.byte		0
	.4byte		.L433
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L184:
	.sleb128	5
	.byte		"RxPduIntDecDataBuf_pu8"
	.byte		0
	.4byte		.L434
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L185:
	.sleb128	5
	.byte		"RxPduIntDecNotifySt_pu8"
	.byte		0
	.4byte		.L434
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L186:
	.sleb128	5
	.byte		"TxBuffer_p"
	.byte		0
	.4byte		.L435
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L187:
	.sleb128	5
	.byte		"PBtoPCHashValue_P"
	.byte		0
	.4byte		.L436
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L188:
	.sleb128	5
	.byte		"PBtoLTHashValue_P"
	.byte		0
	.4byte		.L436
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
	.sleb128	0
.L428:
.L409:
	.sleb128	4
	.4byte		.L427
	.uleb128	266
	.uleb128	1
	.4byte		.L437-.L2
	.uleb128	8
.L175:
	.sleb128	5
	.byte		"CanIfNumberOfTxBuffers_u16"
	.byte		0
	.4byte		.L222
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L176:
	.sleb128	5
	.byte		"RxPduDataBufferSize_u16"
	.byte		0
	.4byte		.L222
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L177:
	.sleb128	5
	.byte		"RxPduIntDecDataBufferSize_u16"
	.byte		0
	.4byte		.L222
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L178:
	.sleb128	5
	.byte		"CanIfRxIndStBufferSize_u16"
	.byte		0
	.4byte		.L222
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
	.sleb128	0
.L437:
.L197:
	.sleb128	4
	.4byte		.L427
	.uleb128	266
	.uleb128	1
	.4byte		.L438-.L2
	.uleb128	8
.L171:
	.sleb128	5
	.byte		"CanIfNumberOfCanRxPduIds"
	.byte		0
	.4byte		.L220
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L172:
	.sleb128	5
	.byte		"CanIfNumberOfCanTxPduIds"
	.byte		0
	.4byte		.L220
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L173:
	.sleb128	5
	.byte		"CanIfNoOfDynamicCanTxPduIds"
	.byte		0
	.4byte		.L220
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L174:
	.sleb128	5
	.byte		"CanIfNumberOfCanDrivers"
	.byte		0
	.4byte		.L413
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
	.sleb128	0
.L438:
.L400:
	.sleb128	4
	.4byte		.L427
	.uleb128	266
	.uleb128	1
	.4byte		.L439-.L2
	.uleb128	20
.L138:
	.sleb128	5
	.byte		"CanIfHrhType"
	.byte		0
	.4byte		.L440
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L139:
	.sleb128	5
	.byte		"CanIfHrhRangeConfig_p"
	.byte		0
	.4byte		.L442
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L140:
	.sleb128	5
	.byte		"CanIfHrhRxPduIdList_p"
	.byte		0
	.4byte		.L446
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L141:
	.sleb128	5
	.byte		"CanIfHrhNoOfRxPduIds"
	.byte		0
	.4byte		.L220
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L142:
	.sleb128	5
	.byte		"CanIfHrhIdSymRef"
	.byte		0
	.4byte		.L447
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L143:
	.sleb128	5
	.byte		"CanIfSoftwareFilterHrh_b"
	.byte		0
	.4byte		.L448
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L144:
	.sleb128	5
	.byte		"CanIfNoOfHrhRange_u8"
	.byte		0
	.4byte		.L413
	.sleb128	2
	.byte		0x23
	.uleb128	17
	.byte		0x1
	.sleb128	0
.L439:
.L445:
	.sleb128	4
	.4byte		.L427
	.uleb128	266
	.uleb128	1
	.4byte		.L449-.L2
	.uleb128	20
.L133:
	.sleb128	5
	.byte		"CanIfRxPduLowerCanId"
	.byte		0
	.4byte		.L450
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L134:
	.sleb128	5
	.byte		"CanIfRxPduUpperCanId"
	.byte		0
	.4byte		.L450
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L135:
	.sleb128	5
	.byte		"CanIfRxPduRangeCanIdType"
	.byte		0
	.4byte		.L452
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L136:
	.sleb128	5
	.byte		"CanIfHrhRangeRxPduIdList_p"
	.byte		0
	.4byte		.L446
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L137:
	.sleb128	5
	.byte		"CanIfHrhRangeNoOfRxPduId"
	.byte		0
	.4byte		.L220
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L449:
.L215:
	.sleb128	4
	.4byte		.L427
	.uleb128	266
	.uleb128	1
	.4byte		.L454-.L2
	.uleb128	24
.L122:
	.sleb128	5
	.byte		"CanIfCanRxPduCanId"
	.byte		0
	.4byte		.L450
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L123:
	.sleb128	5
	.byte		"CanIfRxPduIdCanIdType"
	.byte		0
	.4byte		.L452
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L124:
	.sleb128	5
	.byte		"CanIfRxPduIntDecBufferInd"
	.byte		0
	.4byte		.L420
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L125:
	.sleb128	5
	.byte		"PduIdRef"
	.byte		0
	.4byte		.L221
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L126:
	.sleb128	5
	.byte		"CanIfCanRxPduHrhRef"
	.byte		0
	.4byte		.L455
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L127:
	.sleb128	5
	.byte		"CanIfCanRxPduIdDlc_u8"
	.byte		0
	.4byte		.L413
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L128:
	.sleb128	5
	.byte		"CanIfRxPduCallBackInd_u8"
	.byte		0
	.4byte		.L413
	.sleb128	2
	.byte		0x23
	.uleb128	17
	.byte		0x1
.L129:
	.sleb128	5
	.byte		"CanIfReadRxPduData_b"
	.byte		0
	.4byte		.L448
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L130:
	.sleb128	5
	.byte		"CanIfReadRxPduNotifyStatus_b"
	.byte		0
	.4byte		.L448
	.sleb128	2
	.byte		0x23
	.uleb128	19
	.byte		0x1
.L131:
	.sleb128	5
	.byte		"CanIfCanDriverRef_u8"
	.byte		0
	.4byte		.L413
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L132:
	.sleb128	5
	.byte		"CanIfRxPduIntDecoupling_b"
	.byte		0
	.4byte		.L448
	.sleb128	2
	.byte		0x23
	.uleb128	21
	.byte		0x1
	.sleb128	0
.L454:
.L209:
	.sleb128	4
	.4byte		.L427
	.uleb128	266
	.uleb128	1
	.4byte		.L456-.L2
	.uleb128	36
.L106:
	.sleb128	5
	.byte		"CanIfCanTxPduIdCanId"
	.byte		0
	.4byte		.L450
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L107:
	.sleb128	5
	.byte		"CanIfCanTxPduType"
	.byte		0
	.4byte		.L457
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L108:
	.sleb128	5
	.byte		"CanIfTxPduIdCanIdType"
	.byte		0
	.4byte		.L459
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L109:
	.sleb128	5
	.byte		"CanIfTxBufferType"
	.byte		0
	.4byte		.L461
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L110:
	.sleb128	5
	.byte		"CanIfBufferCfg"
	.byte		0
	.4byte		.L435
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L111:
	.sleb128	5
	.byte		"PduIdRef"
	.byte		0
	.4byte		.L221
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L112:
	.sleb128	5
	.byte		"CanIfCanTxPduIdDlc_u8"
	.byte		0
	.4byte		.L413
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L113:
	.sleb128	5
	.byte		"CanIfTxPduCallBackInd_u8"
	.byte		0
	.4byte		.L413
	.sleb128	2
	.byte		0x23
	.uleb128	23
	.byte		0x1
.L114:
	.sleb128	5
	.byte		"CanIfReadTxPduNotifyStatus_b"
	.byte		0
	.4byte		.L448
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L115:
	.sleb128	5
	.byte		"DataPtrPtr"
	.byte		0
	.4byte		.L463
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L116:
	.sleb128	5
	.byte		"TxBufferDataSize"
	.byte		0
	.4byte		.L413
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L117:
	.sleb128	5
	.byte		"IsDedicated"
	.byte		0
	.4byte		.L448
	.sleb128	2
	.byte		0x23
	.uleb128	33
	.byte		0x1
	.sleb128	0
.L456:
.L203:
	.sleb128	4
	.4byte		.L427
	.uleb128	266
	.uleb128	1
	.4byte		.L466-.L2
	.uleb128	16
.L98:
	.sleb128	5
	.byte		"CanIfBufferInfo"
	.byte		0
	.4byte		.L467
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L99:
	.sleb128	5
	.byte		"HthIndex"
	.byte		0
	.4byte		.L470
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L100:
	.sleb128	5
	.byte		"CanIfBufferSize"
	.byte		0
	.4byte		.L413
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L101:
	.sleb128	5
	.byte		"DataPtrList"
	.byte		0
	.4byte		.L463
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L102:
	.sleb128	5
	.byte		"MaxDataSize"
	.byte		0
	.4byte		.L413
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L103:
	.sleb128	5
	.byte		"IsDedicated"
	.byte		0
	.4byte		.L448
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
	.sleb128	0
.L466:
.L469:
	.sleb128	4
	.4byte		.L427
	.uleb128	266
	.uleb128	1
	.4byte		.L471-.L2
	.uleb128	16
.L93:
	.sleb128	5
	.byte		"BufferedCanId"
	.byte		0
	.4byte		.L450
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L94:
	.sleb128	5
	.byte		"SwLPduHandle"
	.byte		0
	.4byte		.L220
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L95:
	.sleb128	5
	.byte		"HthIndex"
	.byte		0
	.4byte		.L470
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L96:
	.sleb128	5
	.byte		"Data"
	.byte		0
	.4byte		.L465
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L97:
	.sleb128	5
	.byte		"DataLength_u8"
	.byte		0
	.4byte		.L413
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L471:
	.section	.debug_info,,n
.L441:
	.sleb128	6
	.4byte		.L427
	.uleb128	266
	.uleb128	1
	.4byte		.L472-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	7
	.byte		"CANIF_HOH_BASIC_CAN"
	.byte		0
	.sleb128	0
	.sleb128	7
	.byte		"CANIF_HOH_FULL_CAN"
	.byte		0
	.sleb128	1
	.sleb128	0
.L472:
.L462:
	.sleb128	6
	.4byte		.L427
	.uleb128	248
	.uleb128	1
	.4byte		.L473-.L2
	.uleb128	4
	.sleb128	7
	.byte		"CANIF_NO_BUFFER"
	.byte		0
	.sleb128	0
	.sleb128	7
	.byte		"CANIF_BUFFER"
	.byte		0
	.sleb128	1
	.sleb128	7
	.byte		"CANIF_BUFFER_POOL"
	.byte		0
	.sleb128	2
	.sleb128	0
.L473:
.L453:
	.sleb128	6
	.4byte		.L427
	.uleb128	185
	.uleb128	1
	.4byte		.L474-.L2
	.uleb128	4
	.sleb128	7
	.byte		"CANIF_RX_CANID_EXTENDED"
	.byte		0
	.sleb128	0
	.sleb128	7
	.byte		"CANIF_RX_CANID_STANDARD"
	.byte		0
	.sleb128	1
	.sleb128	7
	.byte		"CANIF_RX_CANID_EXTENDED_FD"
	.byte		0
	.sleb128	2
	.sleb128	7
	.byte		"CANIF_RX_CANID_STANDARD_FD"
	.byte		0
	.sleb128	3
	.sleb128	7
	.byte		"CANIF_RX_CANID_EXTENDED_NO_FD"
	.byte		0
	.sleb128	4
	.sleb128	7
	.byte		"CANIF_RX_CANID_STANDARD_NO_FD"
	.byte		0
	.sleb128	5
	.sleb128	0
.L474:
.L460:
	.sleb128	6
	.4byte		.L427
	.uleb128	163
	.uleb128	1
	.4byte		.L475-.L2
	.uleb128	4
	.sleb128	7
	.byte		"CANIF_TX_CANID_EXTENDED"
	.byte		0
	.sleb128	0
	.sleb128	7
	.byte		"CANIF_TX_CANID_STANDARD"
	.byte		0
	.sleb128	1
	.sleb128	7
	.byte		"CANIF_TX_CANID_EXTENDED_FD"
	.byte		0
	.sleb128	2
	.sleb128	7
	.byte		"CANIF_TX_CANID_STANDARD_FD"
	.byte		0
	.sleb128	3
	.sleb128	0
.L475:
.L458:
	.sleb128	6
	.4byte		.L427
	.uleb128	147
	.uleb128	1
	.4byte		.L476-.L2
	.uleb128	4
	.sleb128	7
	.byte		"CANIF_TXPDU_DYNAMIC"
	.byte		0
	.sleb128	0
	.sleb128	7
	.byte		"CANIF_TXPDU_STATIC"
	.byte		0
	.sleb128	1
	.sleb128	0
.L476:
	.section	.debug_info,,n
.L196:
	.sleb128	8
	.byte		"CanIfInitConfiguration_t"
	.byte		0
	.4byte		.L197
	.section	.debug_info,,n
.L195:
	.sleb128	9
	.4byte		.L196
.L202:
	.sleb128	8
	.byte		"CanIfBufferConfig_t"
	.byte		0
	.4byte		.L203
.L201:
	.sleb128	9
	.4byte		.L202
	.section	.debug_info,,n
.L199:
	.sleb128	10
	.4byte		.L200-.L2
	.4byte		.L201
	.section	.debug_info,,n
	.sleb128	11
	.uleb128	8
	.sleb128	0
.L200:
.L208:
	.sleb128	8
	.byte		"CanIfTxPduConfigInfo_t"
	.byte		0
	.4byte		.L209
.L207:
	.sleb128	9
	.4byte		.L208
.L205:
	.sleb128	10
	.4byte		.L206-.L2
	.4byte		.L207
	.sleb128	11
	.uleb128	8
	.sleb128	0
.L206:
.L214:
	.sleb128	8
	.byte		"CanIfRxPduConfigInfo_t"
	.byte		0
	.4byte		.L215
.L213:
	.sleb128	9
	.4byte		.L214
.L211:
	.sleb128	10
	.4byte		.L212-.L2
	.4byte		.L213
	.sleb128	11
	.uleb128	58
	.sleb128	0
.L212:
	.section	.debug_info,,n
.L223:
	.sleb128	12
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L222:
	.sleb128	8
	.byte		"uint16"
	.byte		0
	.4byte		.L223
.L221:
	.sleb128	8
	.byte		"PduIdType"
	.byte		0
	.4byte		.L222
.L220:
	.sleb128	8
	.byte		"CanIfLpduId_t"
	.byte		0
	.4byte		.L221
.L219:
	.sleb128	9
	.4byte		.L220
.L217:
	.sleb128	10
	.4byte		.L218-.L2
	.4byte		.L219
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L218:
.L225:
	.sleb128	10
	.4byte		.L226-.L2
	.4byte		.L219
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L226:
.L228:
	.sleb128	10
	.4byte		.L229-.L2
	.4byte		.L219
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L229:
.L231:
	.sleb128	10
	.4byte		.L232-.L2
	.4byte		.L219
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L232:
.L234:
	.sleb128	10
	.4byte		.L235-.L2
	.4byte		.L219
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L235:
.L237:
	.sleb128	10
	.4byte		.L238-.L2
	.4byte		.L219
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L238:
.L240:
	.sleb128	10
	.4byte		.L241-.L2
	.4byte		.L219
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L241:
.L243:
	.sleb128	10
	.4byte		.L244-.L2
	.4byte		.L219
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L244:
.L246:
	.sleb128	10
	.4byte		.L247-.L2
	.4byte		.L219
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L247:
.L249:
	.sleb128	10
	.4byte		.L250-.L2
	.4byte		.L219
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L250:
.L252:
	.sleb128	10
	.4byte		.L253-.L2
	.4byte		.L219
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L253:
.L255:
	.sleb128	10
	.4byte		.L256-.L2
	.4byte		.L219
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L256:
.L258:
	.sleb128	10
	.4byte		.L259-.L2
	.4byte		.L219
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L259:
.L261:
	.sleb128	10
	.4byte		.L262-.L2
	.4byte		.L219
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L262:
.L264:
	.sleb128	10
	.4byte		.L265-.L2
	.4byte		.L219
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L265:
.L267:
	.sleb128	10
	.4byte		.L268-.L2
	.4byte		.L219
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L268:
.L270:
	.sleb128	10
	.4byte		.L271-.L2
	.4byte		.L219
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L271:
.L273:
	.sleb128	10
	.4byte		.L274-.L2
	.4byte		.L219
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L274:
.L276:
	.sleb128	10
	.4byte		.L277-.L2
	.4byte		.L219
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L277:
.L279:
	.sleb128	10
	.4byte		.L280-.L2
	.4byte		.L219
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L280:
.L282:
	.sleb128	10
	.4byte		.L283-.L2
	.4byte		.L219
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L283:
.L285:
	.sleb128	10
	.4byte		.L286-.L2
	.4byte		.L219
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L286:
.L288:
	.sleb128	10
	.4byte		.L289-.L2
	.4byte		.L219
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L289:
.L291:
	.sleb128	10
	.4byte		.L292-.L2
	.4byte		.L219
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L292:
.L294:
	.sleb128	10
	.4byte		.L295-.L2
	.4byte		.L219
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L295:
.L297:
	.sleb128	10
	.4byte		.L298-.L2
	.4byte		.L219
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L298:
.L300:
	.sleb128	10
	.4byte		.L301-.L2
	.4byte		.L219
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L301:
.L303:
	.sleb128	10
	.4byte		.L304-.L2
	.4byte		.L219
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L304:
.L306:
	.sleb128	10
	.4byte		.L307-.L2
	.4byte		.L219
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L307:
.L309:
	.sleb128	10
	.4byte		.L310-.L2
	.4byte		.L219
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L310:
.L312:
	.sleb128	10
	.4byte		.L313-.L2
	.4byte		.L219
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L313:
.L315:
	.sleb128	10
	.4byte		.L316-.L2
	.4byte		.L219
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L316:
.L318:
	.sleb128	10
	.4byte		.L319-.L2
	.4byte		.L219
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L319:
.L321:
	.sleb128	10
	.4byte		.L322-.L2
	.4byte		.L219
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L322:
.L324:
	.sleb128	10
	.4byte		.L325-.L2
	.4byte		.L219
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L325:
.L327:
	.sleb128	10
	.4byte		.L328-.L2
	.4byte		.L219
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L328:
.L330:
	.sleb128	10
	.4byte		.L331-.L2
	.4byte		.L219
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L331:
.L333:
	.sleb128	10
	.4byte		.L334-.L2
	.4byte		.L219
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L334:
.L336:
	.sleb128	10
	.4byte		.L337-.L2
	.4byte		.L219
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L337:
.L339:
	.sleb128	10
	.4byte		.L340-.L2
	.4byte		.L219
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L340:
.L342:
	.sleb128	10
	.4byte		.L343-.L2
	.4byte		.L219
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L343:
.L345:
	.sleb128	10
	.4byte		.L346-.L2
	.4byte		.L219
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L346:
.L348:
	.sleb128	10
	.4byte		.L349-.L2
	.4byte		.L219
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L349:
.L351:
	.sleb128	10
	.4byte		.L352-.L2
	.4byte		.L219
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L352:
.L354:
	.sleb128	10
	.4byte		.L355-.L2
	.4byte		.L219
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L355:
.L357:
	.sleb128	10
	.4byte		.L358-.L2
	.4byte		.L219
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L358:
.L360:
	.sleb128	10
	.4byte		.L361-.L2
	.4byte		.L219
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L361:
.L363:
	.sleb128	10
	.4byte		.L364-.L2
	.4byte		.L219
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L364:
.L366:
	.sleb128	10
	.4byte		.L367-.L2
	.4byte		.L219
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L367:
.L369:
	.sleb128	10
	.4byte		.L370-.L2
	.4byte		.L219
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L370:
.L372:
	.sleb128	10
	.4byte		.L373-.L2
	.4byte		.L219
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L373:
.L375:
	.sleb128	10
	.4byte		.L376-.L2
	.4byte		.L219
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L376:
.L378:
	.sleb128	10
	.4byte		.L379-.L2
	.4byte		.L219
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L379:
.L381:
	.sleb128	10
	.4byte		.L382-.L2
	.4byte		.L219
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L382:
.L384:
	.sleb128	10
	.4byte		.L385-.L2
	.4byte		.L219
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L385:
.L387:
	.sleb128	10
	.4byte		.L388-.L2
	.4byte		.L219
	.sleb128	11
	.uleb128	1
	.sleb128	0
.L388:
.L390:
	.sleb128	10
	.4byte		.L391-.L2
	.4byte		.L219
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L391:
.L393:
	.sleb128	10
	.4byte		.L394-.L2
	.4byte		.L219
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L394:
.L399:
	.sleb128	8
	.byte		"CanIfHrhConfigInfo_t"
	.byte		0
	.4byte		.L400
.L398:
	.sleb128	9
	.4byte		.L399
.L396:
	.sleb128	10
	.4byte		.L397-.L2
	.4byte		.L398
	.sleb128	11
	.uleb128	57
	.sleb128	0
.L397:
	.section	.debug_info,,n
.L405:
	.sleb128	13
	.4byte		.L398
.L404:
	.sleb128	9
	.4byte		.L405
.L402:
	.sleb128	10
	.4byte		.L403-.L2
	.4byte		.L404
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L403:
.L408:
	.sleb128	8
	.byte		"CanIfBufferInfo_t"
	.byte		0
	.4byte		.L409
.L407:
	.sleb128	9
	.4byte		.L408
.L414:
	.sleb128	12
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L413:
	.sleb128	8
	.byte		"uint8"
	.byte		0
	.4byte		.L414
.L411:
	.sleb128	10
	.4byte		.L412-.L2
	.4byte		.L413
	.sleb128	11
	.uleb128	512
	.sleb128	0
.L412:
.L416:
	.sleb128	10
	.4byte		.L417-.L2
	.4byte		.L413
	.sleb128	11
	.uleb128	7
	.sleb128	0
.L417:
.L421:
	.sleb128	12
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L420:
	.sleb128	8
	.byte		"uint32"
	.byte		0
	.4byte		.L421
.L419:
	.sleb128	9
	.4byte		.L420
.L425:
	.sleb128	8
	.byte		"CanIf_ConfigType"
	.byte		0
	.4byte		.L426
.L424:
	.sleb128	9
	.4byte		.L425
.L429:
	.sleb128	13
	.4byte		.L195
.L430:
	.sleb128	13
	.4byte		.L207
.L431:
	.sleb128	13
	.4byte		.L213
.L432:
	.sleb128	13
	.4byte		.L404
.L433:
	.sleb128	13
	.4byte		.L407
.L434:
	.sleb128	13
	.4byte		.L413
.L435:
	.sleb128	13
	.4byte		.L201
.L436:
	.sleb128	13
	.4byte		.L419
.L440:
	.sleb128	8
	.byte		"CanIfHohType_t"
	.byte		0
	.4byte		.L441
.L444:
	.sleb128	8
	.byte		"CanIfHrhRangeConfig_t"
	.byte		0
	.4byte		.L445
.L443:
	.sleb128	9
	.4byte		.L444
.L442:
	.sleb128	13
	.4byte		.L443
.L446:
	.sleb128	13
	.4byte		.L219
.L447:
	.sleb128	8
	.byte		"Can_HwHandleType"
	.byte		0
	.4byte		.L222
.L448:
	.sleb128	8
	.byte		"boolean"
	.byte		0
	.4byte		.L414
.L451:
	.sleb128	8
	.byte		"Can_IdType"
	.byte		0
	.4byte		.L420
.L450:
	.sleb128	8
	.byte		"CanIfCanId_t"
	.byte		0
	.4byte		.L451
.L452:
	.sleb128	8
	.byte		"CanIfRxPduCanIdType_t"
	.byte		0
	.4byte		.L453
.L455:
	.sleb128	8
	.byte		"CanIf_HrhIndexType"
	.byte		0
	.4byte		.L222
.L457:
	.sleb128	8
	.byte		"CanIfCanTxPduType_t"
	.byte		0
	.4byte		.L458
.L459:
	.sleb128	8
	.byte		"CanIfTxPduCanIdType_t"
	.byte		0
	.4byte		.L460
.L461:
	.sleb128	8
	.byte		"CanIfTxBufferType_t"
	.byte		0
	.4byte		.L462
.L465:
	.sleb128	8
	.byte		"CanIf_P2VarUint8Type"
	.byte		0
	.4byte		.L434
.L464:
	.sleb128	9
	.4byte		.L465
.L463:
	.sleb128	13
	.4byte		.L464
.L468:
	.sleb128	8
	.byte		"CanIfTxBufferRAM_t"
	.byte		0
	.4byte		.L469
.L467:
	.sleb128	13
	.4byte		.L468
.L470:
	.sleb128	8
	.byte		"CanIf_HthIndexType"
	.byte		0
	.4byte		.L222
.L7:
	.sleb128	0
.L3:
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "tools"
	.wrcm.nelem "llopt"
	.wrcm.nelem "version"
	.wrcm.nstr "string", "5.9.6.4"
	.wrcm.nint32 "number", 5964
	.wrcm.nstr "path", "C:\WindRiver\compilers\diab-5.9.6.4\WIN32\bin\llopt.exe"
	.wrcm.nstr "label", "DIAB_5_9_6_4-FCS_20170817_111028"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "etoa"
	.wrcm.nelem "version"
	.wrcm.nstr "string", "5.9.6.4"
	.wrcm.nint32 "number", 5964
	.wrcm.nstr "path", "C:\WindRiver\compilers\diab-5.9.6.4\WIN32\lib\etoa.exe"
	.wrcm.nstr "label", "DIAB_5_9_6_4-FCS_20170817_111028"
	.wrcm.end
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanIf_PBcfg.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanIf_PBcfg.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanIf_PBcfg.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanIf_PBcfg.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanIf_PBcfg.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanIf_PBcfg.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "gen\MPC5746R_ECU\WindRiver\CanIf_PBcfg.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
