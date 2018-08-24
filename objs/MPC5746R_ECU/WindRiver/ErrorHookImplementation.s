#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"ErrorHookImplementation.c"
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
# void ErrorHook(StatusType Error) 
	.section	.Os_PUBLIC_TEXT,,c
	.align		2
	.section	.debug_line.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_line
.L418:
	.section	.Os_PUBLIC_TEXT,,c
#$$ld
.L414:
	.0byte		.L412
	.d2_line_start	.debug_line.Os_PUBLIC_TEXT
	.section	.Os_PUBLIC_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares\\make\\..\\src\\ErrorHookImplementation.c"
        .d2line         59,6
#$$ld
.L421:

#$$bf	ErrorHook,interprocedural,rasave,nostackparams
	.globl		ErrorHook
	.d2_cfa_start __cie
ErrorHook:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     Os_ErrorInfo.Os_FaultyServiceId = OSErrorGetServiceId();
	.d2line		61
	lis		r31,Os_PublicData@ha
	e_add16i		r31,r31,Os_PublicData@l
	bl		GetCoreID
	rlwinm		r3,r3,3,13,28
	lwzx		r3,r31,r3
	lwz		r3,116(r3)
	lis		r4,Os_ErrorInfo@ha
	e_add16i		r4,r4,Os_ErrorInfo@l
	stw		r3,0(r4)
# }
	.d2line		62
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_PUBLIC_TEXT,,c
#$$ld
.L422:
	.type		ErrorHook,@function
	.size		ErrorHook,.-ErrorHook
# Number of nodes = 16

# Allocations for ErrorHook
#	not allocated	Error

# Allocations for module
	.section	.text_vle
	.0byte		.L428
	.section	.invalid_BSS,,b
	.0byte		.L435
	.section	.invalid_BSS,,b
	.type		Os_ErrorInfo,@object
	.size		Os_ErrorInfo,112
	.align		3
Os_ErrorInfo:
	.space		112
	.section	.text_vle
#$$ld
.L5:
.L550:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_TaskApiTypes.h"
.L547:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ScheduleTableApiTypes.h"
.L545:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_SpinlockApiTypes.h"
.L540:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ApplicationApiTypes.h"
.L519:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ErrorApiTypes.h"
.L488:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ExceptionApiTypes.h"
.L439:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_HookApiTypes.h"
.L436:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares\\make\\..\\src\\ErrorHookImplementation.c"
.L429:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_PublicDataTypes.h"
	.d2_line_end
	.section	.Os_PUBLIC_TEXT,,c
#$$ld
.L415:
.L423:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares\\make\\..\\src\\ErrorHookImplementation.c"
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
	.uleb128	46
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	3
	.uleb128	8
	.uleb128	58
	.uleb128	6
	.uleb128	59
	.uleb128	15
	.uleb128	57
	.uleb128	15
	.uleb128	63
	.uleb128	12
	.uleb128	39
	.uleb128	12
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	3
	.uleb128	5
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
	.uleb128	4
	.uleb128	52
	.byte		0x0
	.uleb128	63
	.uleb128	12
	.uleb128	60
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
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	5
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
	.uleb128	6
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
	.uleb128	3
	.uleb128	8
	.uleb128	11
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	7
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
	.uleb128	8
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
	.uleb128	9
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
	.uleb128	10
	.uleb128	40
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	28
	.uleb128	13
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	11
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
	.uleb128	12
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	13
	.uleb128	38
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	14
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	15
	.uleb128	33
	.byte		0x0
	.uleb128	47
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	16
	.uleb128	53
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	17
	.uleb128	36
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	11
	.uleb128	11
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	18
	.uleb128	15
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	19
	.uleb128	21
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	39
	.uleb128	12
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares\\make\\..\\src\\ErrorHookImplementation.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L4
	.4byte		.L5
	.4byte		.L8
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
.L412:
	.4byte		.L413-.L411
.L411:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L417-.L412
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares\\make\\..\\src\\ErrorHookImplementation.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L414
	.4byte		.L415
	.4byte		.L418
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
.L424:
	.sleb128	2
	.4byte		.L420-.L412
	.byte		"ErrorHook"
	.byte		0
	.4byte		.L423
	.uleb128	59
	.uleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L421
	.4byte		.L422
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L423
	.uleb128	59
	.uleb128	6
	.byte		"Error"
	.byte		0
	.4byte		.L425
	.sleb128	2
	.byte		0x90
	.uleb128	3
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L420:
	.section	.debug_info,,n
.L428:
	.sleb128	4
	.byte		0x1
	.byte		0x1
	.4byte		.L429
	.uleb128	120
	.uleb128	45
	.byte		"Os_PublicData"
	.byte		0
	.4byte		.L430
	.section	.debug_info,,n
	.section	.debug_info,,n
.L435:
	.sleb128	5
	.4byte		.L436
	.uleb128	57
	.uleb128	3
	.byte		"Os_ErrorInfo"
	.byte		0
	.4byte		.L437
	.sleb128	5
	.byte		0x3
	.4byte		Os_ErrorInfo
	.section	.debug_info,,n
	.section	.debug_info,,n
.L438:
	.sleb128	6
	.4byte		.L439
	.uleb128	34
	.uleb128	14
	.4byte		.L440-.L2
	.byte		"Os_ErrorInfoType"
	.byte		0
	.uleb128	112
	.section	.debug_info,,n
.L383:
	.sleb128	7
	.byte		"Os_FaultyServiceId"
	.byte		0
	.4byte		.L441
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L384:
	.sleb128	7
	.byte		"Os_Err_TaskID"
	.byte		0
	.4byte		.L443
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L385:
	.sleb128	7
	.byte		"Os_Err_ResID"
	.byte		0
	.4byte		.L448
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L386:
	.sleb128	7
	.byte		"Os_Err_MaskType_Mask"
	.byte		0
	.4byte		.L449
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L387:
	.sleb128	7
	.byte		"Os_Err_AlarmID"
	.byte		0
	.4byte		.L452
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L388:
	.sleb128	7
	.byte		"Os_Err_TicksStart"
	.byte		0
	.4byte		.L453
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L389:
	.sleb128	7
	.byte		"Os_Err_TicksCycle"
	.byte		0
	.4byte		.L453
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L390:
	.sleb128	7
	.byte		"Os_Err_FuncIndex"
	.byte		0
	.4byte		.L454
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L391:
	.sleb128	7
	.byte		"Os_Err_FuncParamRefType"
	.byte		0
	.4byte		.L455
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L392:
	.sleb128	7
	.byte		"Os_Err_ApplID"
	.byte		0
	.4byte		.L458
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L393:
	.sleb128	7
	.byte		"Os_Err_ApplStateType"
	.byte		0
	.4byte		.L459
	.sleb128	2
	.byte		0x23
	.uleb128	45
	.byte		0x1
.L394:
	.sleb128	7
	.byte		"Os_Err_ApplStateRefType"
	.byte		0
	.4byte		.L460
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L395:
	.sleb128	7
	.byte		"Os_Err_ISRID"
	.byte		0
	.4byte		.L462
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L396:
	.sleb128	7
	.byte		"Os_Err_Size"
	.byte		0
	.4byte		.L463
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L397:
	.sleb128	7
	.byte		"Os_Err_ObjType"
	.byte		0
	.4byte		.L465
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
.L398:
	.sleb128	7
	.byte		"Os_Err_SchedID"
	.byte		0
	.4byte		.L467
	.sleb128	2
	.byte		0x23
	.uleb128	64
	.byte		0x1
.L399:
	.sleb128	7
	.byte		"Os_Err_SchedID_Next"
	.byte		0
	.4byte		.L467
	.sleb128	2
	.byte		0x23
	.uleb128	68
	.byte		0x1
.L400:
	.sleb128	7
	.byte		"Os_Err_CntID"
	.byte		0
	.4byte		.L468
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.byte		0x1
.L401:
	.sleb128	7
	.byte		"Os_Err_RestartType"
	.byte		0
	.4byte		.L469
	.sleb128	2
	.byte		0x23
	.uleb128	76
	.byte		0x1
.L402:
	.sleb128	7
	.byte		"Os_Err_MaskRefType"
	.byte		0
	.4byte		.L470
	.sleb128	2
	.byte		0x23
	.uleb128	80
	.byte		0x1
.L403:
	.sleb128	7
	.byte		"Os_Err_TaskStateRef"
	.byte		0
	.4byte		.L472
	.sleb128	2
	.byte		0x23
	.uleb128	84
	.byte		0x1
.L404:
	.sleb128	7
	.byte		"Os_Err_TickRef_Ticks"
	.byte		0
	.4byte		.L476
	.sleb128	2
	.byte		0x23
	.uleb128	88
	.byte		0x1
.L405:
	.sleb128	7
	.byte		"Os_Err_AlarmBaseRefType_Info"
	.byte		0
	.4byte		.L478
	.sleb128	2
	.byte		0x23
	.uleb128	92
	.byte		0x1
.L406:
	.sleb128	7
	.byte		"Os_Err_TaskIDRef"
	.byte		0
	.4byte		.L482
	.sleb128	2
	.byte		0x23
	.uleb128	96
	.byte		0x1
.L407:
	.sleb128	7
	.byte		"Os_Err_TblStatusRefType"
	.byte		0
	.4byte		.L484
	.sleb128	2
	.byte		0x23
	.uleb128	100
	.byte		0x1
.L408:
	.sleb128	7
	.byte		"Os_Err_TickRef_ElapsedTicks"
	.byte		0
	.4byte		.L476
	.sleb128	2
	.byte		0x23
	.uleb128	104
	.byte		0x1
.L409:
	.sleb128	7
	.byte		"Os_Err_ObjObj"
	.byte		0
	.4byte		.L445
	.sleb128	2
	.byte		0x23
	.uleb128	108
	.byte		0x1
	.sleb128	0
.L440:
	.section	.debug_info,,n
.L434:
	.sleb128	8
	.4byte		.L488
	.uleb128	32
	.uleb128	1
	.4byte		.L489-.L2
	.uleb128	8
.L381:
	.sleb128	7
	.byte		"Os_PublicDataNoInitRef"
	.byte		0
	.4byte		.L490
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L382:
	.sleb128	7
	.byte		"Os_PublicDataVarInitRef"
	.byte		0
	.4byte		.L495
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L489:
.L498:
	.sleb128	8
	.4byte		.L488
	.uleb128	32
	.uleb128	1
	.4byte		.L499-.L2
	.uleb128	4
.L380:
	.sleb128	7
	.byte		"Os_ISRServices"
	.byte		0
	.4byte		.L500
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L499:
.L494:
	.sleb128	8
	.4byte		.L488
	.uleb128	32
	.uleb128	1
	.4byte		.L504-.L2
	.uleb128	144
.L378:
	.sleb128	7
	.byte		"Os_Error"
	.byte		0
	.4byte		.L505
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L379:
	.sleb128	7
	.byte		"Os_ExceptionStatus"
	.byte		0
	.4byte		.L507
	.sleb128	2
	.byte		0x23
	.uleb128	120
	.byte		0x1
	.sleb128	0
.L504:
.L503:
	.sleb128	8
	.4byte		.L488
	.uleb128	32
	.uleb128	1
	.4byte		.L509-.L2
	.uleb128	24
.L372:
	.sleb128	7
	.byte		"Os_DisAllInt"
	.byte		0
	.4byte		.L510
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L373:
	.sleb128	7
	.byte		"Os_EnAllInt"
	.byte		0
	.4byte		.L510
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L374:
	.sleb128	7
	.byte		"Os_SusAllInt"
	.byte		0
	.4byte		.L510
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L375:
	.sleb128	7
	.byte		"Os_ResAllInt"
	.byte		0
	.4byte		.L510
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L376:
	.sleb128	7
	.byte		"Os_SusOsInt"
	.byte		0
	.4byte		.L510
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L377:
	.sleb128	7
	.byte		"Os_ResOsInt"
	.byte		0
	.4byte		.L510
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L509:
.L508:
	.sleb128	8
	.4byte		.L488
	.uleb128	32
	.uleb128	1
	.4byte		.L515-.L2
	.uleb128	20
.L367:
	.sleb128	7
	.byte		"Os_ExceptionType"
	.byte		0
	.4byte		.L516
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L368:
	.sleb128	7
	.byte		"Os_ExceptionCause"
	.byte		0
	.4byte		.L446
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L369:
	.sleb128	7
	.byte		"Os_ExceptionAuxiliaryCause"
	.byte		0
	.4byte		.L446
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L370:
	.sleb128	7
	.byte		"Os_ExceptionExecutionAddress"
	.byte		0
	.4byte		.L518
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L371:
	.sleb128	7
	.byte		"Os_ExceptionAccessAddress"
	.byte		0
	.4byte		.L518
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L515:
.L506:
	.sleb128	8
	.4byte		.L519
	.uleb128	174
	.uleb128	1
	.4byte		.L520-.L2
	.uleb128	120
.L364:
	.sleb128	7
	.byte		"Os_ShutdownError"
	.byte		0
	.4byte		.L521
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L365:
	.sleb128	7
	.byte		"Os_ParameterError"
	.byte		0
	.4byte		.L523
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L366:
	.sleb128	7
	.byte		"Os_ServiceError"
	.byte		0
	.4byte		.L525
	.sleb128	2
	.byte		0x23
	.uleb128	112
	.byte		0x1
	.sleb128	0
.L520:
.L526:
	.sleb128	8
	.4byte		.L519
	.uleb128	174
	.uleb128	1
	.4byte		.L527-.L2
	.uleb128	8
.L361:
	.sleb128	7
	.byte		"Os_ServiceTrace"
	.byte		0
	.4byte		.L528
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L362:
	.sleb128	7
	.byte		"Os_LastError"
	.byte		0
	.4byte		.L425
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L363:
	.sleb128	7
	.byte		"Os_FaultyServiceId"
	.byte		0
	.4byte		.L441
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L527:
.L524:
	.sleb128	8
	.4byte		.L519
	.uleb128	174
	.uleb128	1
	.4byte		.L529-.L2
	.uleb128	104
.L336:
	.sleb128	7
	.byte		"Os_Err_TaskID"
	.byte		0
	.4byte		.L443
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L337:
	.sleb128	7
	.byte		"Os_Err_ResID"
	.byte		0
	.4byte		.L448
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L338:
	.sleb128	7
	.byte		"Os_Err_MaskType_Mask"
	.byte		0
	.4byte		.L449
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L339:
	.sleb128	7
	.byte		"Os_Err_AlarmID"
	.byte		0
	.4byte		.L452
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L340:
	.sleb128	7
	.byte		"Os_Err_TicksStart"
	.byte		0
	.4byte		.L453
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L341:
	.sleb128	7
	.byte		"Os_Err_TicksCycle"
	.byte		0
	.4byte		.L453
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L342:
	.sleb128	7
	.byte		"Os_Err_FuncIndex"
	.byte		0
	.4byte		.L454
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L343:
	.sleb128	7
	.byte		"Os_Err_FuncParamRefType"
	.byte		0
	.4byte		.L455
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L344:
	.sleb128	7
	.byte		"Os_Err_ApplID"
	.byte		0
	.4byte		.L458
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L345:
	.sleb128	7
	.byte		"Os_Err_ApplStateRefType"
	.byte		0
	.4byte		.L460
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L346:
	.sleb128	7
	.byte		"Os_Err_ObjType"
	.byte		0
	.4byte		.L465
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L347:
	.sleb128	7
	.byte		"Os_Err_SchedID"
	.byte		0
	.4byte		.L467
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L348:
	.sleb128	7
	.byte		"Os_Err_SchedID_Next"
	.byte		0
	.4byte		.L467
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L349:
	.sleb128	7
	.byte		"Os_Err_CntID"
	.byte		0
	.4byte		.L468
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L350:
	.sleb128	7
	.byte		"Os_Err_RestartType"
	.byte		0
	.4byte		.L469
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
.L351:
	.sleb128	7
	.byte		"Os_Err_MaskRefType"
	.byte		0
	.4byte		.L470
	.sleb128	2
	.byte		0x23
	.uleb128	64
	.byte		0x1
.L352:
	.sleb128	7
	.byte		"Os_Err_TaskStateRef"
	.byte		0
	.4byte		.L472
	.sleb128	2
	.byte		0x23
	.uleb128	68
	.byte		0x1
.L353:
	.sleb128	7
	.byte		"Os_Err_TickRef_Ticks"
	.byte		0
	.4byte		.L476
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.byte		0x1
.L354:
	.sleb128	7
	.byte		"Os_Err_AlarmBaseRefType_Info"
	.byte		0
	.4byte		.L478
	.sleb128	2
	.byte		0x23
	.uleb128	76
	.byte		0x1
.L355:
	.sleb128	7
	.byte		"Os_Err_TaskIDRef"
	.byte		0
	.4byte		.L482
	.sleb128	2
	.byte		0x23
	.uleb128	80
	.byte		0x1
.L356:
	.sleb128	7
	.byte		"Os_Err_TblStatusRefType"
	.byte		0
	.4byte		.L484
	.sleb128	2
	.byte		0x23
	.uleb128	84
	.byte		0x1
.L357:
	.sleb128	7
	.byte		"Os_Err_TickRef_ElapsedTicks"
	.byte		0
	.4byte		.L476
	.sleb128	2
	.byte		0x23
	.uleb128	88
	.byte		0x1
.L358:
	.sleb128	7
	.byte		"Os_Err_ObjObj"
	.byte		0
	.4byte		.L445
	.sleb128	2
	.byte		0x23
	.uleb128	92
	.byte		0x1
.L359:
	.sleb128	7
	.byte		"Os_Err_SpinlockID"
	.byte		0
	.4byte		.L530
	.sleb128	2
	.byte		0x23
	.uleb128	96
	.byte		0x1
.L360:
	.sleb128	7
	.byte		"Os_Err_TryToGetSpinlockRef"
	.byte		0
	.4byte		.L533
	.sleb128	2
	.byte		0x23
	.uleb128	100
	.byte		0x1
	.sleb128	0
.L529:
.L522:
	.sleb128	8
	.4byte		.L519
	.uleb128	174
	.uleb128	1
	.4byte		.L537-.L2
	.uleb128	8
.L334:
	.sleb128	7
	.byte		"Os_ShutdownErrorCode"
	.byte		0
	.4byte		.L425
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L335:
	.sleb128	7
	.byte		"Os_ShutdownInternalErrorCode"
	.byte		0
	.4byte		.L538
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L537:
.L481:
	.sleb128	8
	.4byte		.L540
	.uleb128	59
	.uleb128	14
	.4byte		.L541-.L2
	.uleb128	12
.L234:
	.sleb128	7
	.byte		"maxallowedvalue"
	.byte		0
	.4byte		.L453
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L235:
	.sleb128	7
	.byte		"ticksperbase"
	.byte		0
	.4byte		.L453
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L236:
	.sleb128	7
	.byte		"mincycle"
	.byte		0
	.4byte		.L453
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L541:
	.section	.debug_info,,n
.L517:
	.sleb128	9
	.4byte		.L488
	.uleb128	32
	.uleb128	1
	.4byte		.L542-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	10
	.byte		"OS_EXCEPTION_NONE"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"OS_EXCEPTION_CRITICAL_INPUT"
	.byte		0
	.sleb128	1
	.sleb128	10
	.byte		"OS_EXCEPTION_MACHINE_CHECK"
	.byte		0
	.sleb128	2
	.sleb128	10
	.byte		"OS_EXCEPTION_DATA_STORAGE"
	.byte		0
	.sleb128	3
	.sleb128	10
	.byte		"OS_EXCEPTION_INSTRUCTION_STORAGE"
	.byte		0
	.sleb128	4
	.sleb128	10
	.byte		"OS_EXCEPTION_EXTERNAL_INPUT"
	.byte		0
	.sleb128	5
	.sleb128	10
	.byte		"OS_EXCEPTION_ALIGNMENT"
	.byte		0
	.sleb128	6
	.sleb128	10
	.byte		"OS_EXCEPTION_PROGRAM"
	.byte		0
	.sleb128	7
	.sleb128	10
	.byte		"OS_EXCEPTION_FLOATINGPOINT_UNAVAILABLE"
	.byte		0
	.sleb128	8
	.sleb128	10
	.byte		"OS_EXCEPTION_AUX_PROC_UNAVAILABLE"
	.byte		0
	.sleb128	9
	.sleb128	10
	.byte		"OS_EXCEPTION_DECREMENTER"
	.byte		0
	.sleb128	10
	.sleb128	10
	.byte		"OS_EXCEPTION_FIXED_INTERVAL_TIMER"
	.byte		0
	.sleb128	11
	.sleb128	10
	.byte		"OS_EXCEPTION_WATCHDOG"
	.byte		0
	.sleb128	12
	.sleb128	10
	.byte		"OS_EXCEPTION_DATA_TLB_ERROR"
	.byte		0
	.sleb128	13
	.sleb128	10
	.byte		"OS_EXCEPTION_INSTRUCTION_TLB_ERROR"
	.byte		0
	.sleb128	14
	.sleb128	10
	.byte		"OS_EXCEPTION_DEBUG"
	.byte		0
	.sleb128	15
	.sleb128	10
	.byte		"OS_EXCEPTION_SPE_UNAVAILABLE"
	.byte		0
	.sleb128	16
	.sleb128	10
	.byte		"OS_EXCEPTION_SPE_DATA"
	.byte		0
	.sleb128	17
	.sleb128	10
	.byte		"OS_EXCEPTION_SPE_ROUND"
	.byte		0
	.sleb128	18
	.sleb128	10
	.byte		"OS_EXCEPTION_COUNT"
	.byte		0
	.sleb128	19
	.sleb128	0
.L542:
.L539:
	.sleb128	9
	.4byte		.L519
	.uleb128	174
	.uleb128	1
	.4byte		.L543-.L2
	.uleb128	4
	.sleb128	10
	.byte		"E_OS_SYS_OK"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"E_OS_SYS_UNKNOWN_API"
	.byte		0
	.sleb128	1
	.sleb128	10
	.byte		"E_OS_SYS_INVALID_STARTSTATE"
	.byte		0
	.sleb128	2
	.sleb128	10
	.byte		"E_OS_SYS_INVALID_MASTERAPPMODE"
	.byte		0
	.sleb128	3
	.sleb128	10
	.byte		"E_OS_SYS_INVALID_SLAVEAPPMODE"
	.byte		0
	.sleb128	4
	.sleb128	10
	.byte		"E_OS_SYS_COUNTERACTION_OVERFLOW"
	.byte		0
	.sleb128	5
	.sleb128	10
	.byte		"E_OS_SYS_COUNTEREP_OVERFLOW"
	.byte		0
	.sleb128	6
	.sleb128	10
	.byte		"E_OS_SYS_INVALID_COUNTEROWNER"
	.byte		0
	.sleb128	7
	.sleb128	10
	.byte		"E_OS_SYS_WRONG_APIMAGIC"
	.byte		0
	.sleb128	8
	.sleb128	10
	.byte		"E_OS_SYS_WRONG_DISPATCHKIND1"
	.byte		0
	.sleb128	9
	.sleb128	10
	.byte		"E_OS_SYS_WRONG_DISPATCHKIND2"
	.byte		0
	.sleb128	10
	.sleb128	10
	.byte		"E_OS_SYS_WRONG_DISPATCHKIND3"
	.byte		0
	.sleb128	11
	.sleb128	10
	.byte		"E_OS_SYS_WRONG_DISPATCHKIND4"
	.byte		0
	.sleb128	12
	.sleb128	10
	.byte		"E_OS_SYS_WRONG_DISPATCHKIND5"
	.byte		0
	.sleb128	13
	.sleb128	10
	.byte		"E_OS_SYS_DISPATCHER_OVERFLOW"
	.byte		0
	.sleb128	14
	.sleb128	10
	.byte		"E_OS_SYS_INVALID_ALARMACTION"
	.byte		0
	.sleb128	15
	.sleb128	10
	.byte		"E_OS_SYS_INVALID_SCHTBLSTARTKIND"
	.byte		0
	.sleb128	16
	.sleb128	10
	.byte		"E_OS_SYS_INVALID_ISRPROCKIND"
	.byte		0
	.sleb128	17
	.sleb128	10
	.byte		"E_OS_SYS_WRONG_TPSTATE1"
	.byte		0
	.sleb128	18
	.sleb128	10
	.byte		"E_OS_SYS_WRONG_TPSTATE2"
	.byte		0
	.sleb128	19
	.sleb128	10
	.byte		"E_OS_SYS_WRONG_TPSTATE3"
	.byte		0
	.sleb128	20
	.sleb128	10
	.byte		"E_OS_SYS_WRONG_TPSTATE4"
	.byte		0
	.sleb128	21
	.sleb128	10
	.byte		"E_OS_SYS_WRONG_TPSTATE5"
	.byte		0
	.sleb128	22
	.sleb128	10
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION0"
	.byte		0
	.sleb128	23
	.sleb128	10
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION1"
	.byte		0
	.sleb128	24
	.sleb128	10
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION2"
	.byte		0
	.sleb128	25
	.sleb128	10
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION3"
	.byte		0
	.sleb128	26
	.sleb128	10
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION4"
	.byte		0
	.sleb128	27
	.sleb128	10
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION5"
	.byte		0
	.sleb128	28
	.sleb128	10
	.byte		"E_OS_SYS_INVALID_QUEUEHEAD"
	.byte		0
	.sleb128	29
	.sleb128	10
	.byte		"E_OS_SYS_INVALID_QUEUEINDEX"
	.byte		0
	.sleb128	30
	.sleb128	10
	.byte		"E_OS_SYS_INVALID_PROCSTATE"
	.byte		0
	.sleb128	31
	.sleb128	10
	.byte		"E_OS_SYS_LINKTIMEGUARD_ERROR"
	.byte		0
	.sleb128	32
	.sleb128	10
	.byte		"E_OS_SYS_WRONG_CORESTATE"
	.byte		0
	.sleb128	33
	.sleb128	10
	.byte		"E_OS_SYS_COUNTERID"
	.byte		0
	.sleb128	34
	.sleb128	10
	.byte		"E_OS_SYS_COUNTER_CANCELEDNOTFOUND"
	.byte		0
	.sleb128	35
	.sleb128	10
	.byte		"E_OS_SYS_COUNTER_ACTIONCHAINISBROKEN"
	.byte		0
	.sleb128	36
	.sleb128	10
	.byte		"E_OS_SYS_COUNTER_ACTIONCHAINISBROKEN2"
	.byte		0
	.sleb128	37
	.sleb128	10
	.byte		"E_OS_SYS_COUNTER_EPCHAINISBROKEN"
	.byte		0
	.sleb128	38
	.sleb128	10
	.byte		"E_OS_SYS_ALARMID"
	.byte		0
	.sleb128	39
	.sleb128	10
	.byte		"E_OS_SYS_RESUMEPROC_MAXACTIVATION"
	.byte		0
	.sleb128	40
	.sleb128	10
	.byte		"E_OS_SYS_QUEUEELEMENT_OVERFLOW"
	.byte		0
	.sleb128	41
	.sleb128	10
	.byte		"E_OS_SYS_SCHEDULER_ERROR"
	.byte		0
	.sleb128	42
	.sleb128	10
	.byte		"E_OS_SYS_EVENTSTAT"
	.byte		0
	.sleb128	43
	.sleb128	10
	.byte		"E_OS_SYS_TASKID"
	.byte		0
	.sleb128	44
	.sleb128	10
	.byte		"E_OS_SYS_TASKMISSINGEND_PROCKIND"
	.byte		0
	.sleb128	45
	.sleb128	10
	.byte		"E_OS_SYS_TASKMISSINGEND_COREID"
	.byte		0
	.sleb128	46
	.sleb128	10
	.byte		"E_OS_SYS_INVALID_TIMINGPROTECTIONSTATE"
	.byte		0
	.sleb128	47
	.sleb128	10
	.byte		"E_OS_SYS_INVALID_EXCEPTION"
	.byte		0
	.sleb128	48
	.sleb128	10
	.byte		"E_OS_SYS_INVALID_PLATFORM_TIMER"
	.byte		0
	.sleb128	49
	.sleb128	10
	.byte		"E_OS_SYS_KERNELSTACK_OVERFLOW"
	.byte		0
	.sleb128	50
	.sleb128	10
	.byte		"E_OS_SYS_INVALID_SECTION_SIZE"
	.byte		0
	.sleb128	51
	.sleb128	10
	.byte		"E_OS_SYS_MEMPROT_INVALID_APP"
	.byte		0
	.sleb128	52
	.sleb128	10
	.byte		"E_OS_SYS_CALLEVEL"
	.byte		0
	.sleb128	53
	.sleb128	10
	.byte		"E_OS_SYS_TIMER_RUNNING"
	.byte		0
	.sleb128	54
	.sleb128	10
	.byte		"E_OS_SYS_TIMER_STOPPED"
	.byte		0
	.sleb128	55
	.sleb128	10
	.byte		"E_OS_SYS_TIMER_TOO_MUCH_JITTER"
	.byte		0
	.sleb128	56
	.sleb128	10
	.byte		"E_OS_SYS_SSG_NESTING"
	.byte		0
	.sleb128	57
	.sleb128	10
	.byte		"E_OS_SYS_SSG_OVERFLOW"
	.byte		0
	.sleb128	58
	.sleb128	10
	.byte		"E_OS_SYS_CORELOCK_LOCKED"
	.byte		0
	.sleb128	59
	.sleb128	10
	.byte		"E_OS_SYS_CORELOCK_UNLOCKED"
	.byte		0
	.sleb128	60
	.sleb128	10
	.byte		"E_OS_SYS_TFPROCAPPINCONSISTENCY"
	.byte		0
	.sleb128	61
	.sleb128	10
	.byte		"E_OS_SYS_PROCENABLEDALREADY"
	.byte		0
	.sleb128	62
	.sleb128	0
.L543:
.L442:
	.sleb128	9
	.4byte		.L519
	.uleb128	86
	.uleb128	1
	.4byte		.L544-.L2
	.uleb128	4
	.sleb128	10
	.byte		"OSServiceId_GetApplicationID"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"OSServiceId_GetISRID"
	.byte		0
	.sleb128	1
	.sleb128	10
	.byte		"OSServiceId_CallTrustedFunction"
	.byte		0
	.sleb128	2
	.sleb128	10
	.byte		"OSServiceId_CheckISRMemoryAccess"
	.byte		0
	.sleb128	3
	.sleb128	10
	.byte		"OSServiceId_CheckTaskMemoryAccess"
	.byte		0
	.sleb128	4
	.sleb128	10
	.byte		"OSServiceId_CheckObjectAccess"
	.byte		0
	.sleb128	5
	.sleb128	10
	.byte		"OSServiceId_CheckObjectOwnership"
	.byte		0
	.sleb128	6
	.sleb128	10
	.byte		"OSServiceId_StartScheduleTableRel"
	.byte		0
	.sleb128	7
	.sleb128	10
	.byte		"OSServiceId_StartScheduleTableAbs"
	.byte		0
	.sleb128	8
	.sleb128	10
	.byte		"OSServiceId_StopScheduleTable"
	.byte		0
	.sleb128	9
	.sleb128	10
	.byte		"OSServiceId_NextScheduleTable"
	.byte		0
	.sleb128	10
	.sleb128	10
	.byte		"OSServiceId_StartScheduleTableSynchron"
	.byte		0
	.sleb128	11
	.sleb128	10
	.byte		"OSServiceId_SyncScheduleTable"
	.byte		0
	.sleb128	12
	.sleb128	10
	.byte		"OSServiceId_SetScheduleTableAsync"
	.byte		0
	.sleb128	13
	.sleb128	10
	.byte		"OSServiceId_GetScheduleTableStatus"
	.byte		0
	.sleb128	14
	.sleb128	10
	.byte		"OSServiceId_IncrementCounter"
	.byte		0
	.sleb128	15
	.sleb128	10
	.byte		"OSServiceId_GetCounterValue"
	.byte		0
	.sleb128	16
	.sleb128	10
	.byte		"OSServiceId_GetElapsedValue"
	.byte		0
	.sleb128	17
	.sleb128	10
	.byte		"OSServiceId_TerminateApplication"
	.byte		0
	.sleb128	18
	.sleb128	10
	.byte		"OSServiceId_AllowAcess"
	.byte		0
	.sleb128	19
	.sleb128	10
	.byte		"OSServiceId_GetApplicationState"
	.byte		0
	.sleb128	20
	.sleb128	10
	.byte		"OSServiceId_GetNumberOfActivatedCores"
	.byte		0
	.sleb128	21
	.sleb128	10
	.byte		"OSServiceId_GetCoreID"
	.byte		0
	.sleb128	22
	.sleb128	10
	.byte		"OSServiceId_StartCore"
	.byte		0
	.sleb128	23
	.sleb128	10
	.byte		"OSServiceId_StartNonAutosarCore"
	.byte		0
	.sleb128	24
	.sleb128	10
	.byte		"OSServiceId_GetSpinlock"
	.byte		0
	.sleb128	25
	.sleb128	10
	.byte		"OSServiceId_ReleaseSpinlock"
	.byte		0
	.sleb128	26
	.sleb128	10
	.byte		"OSServiceId_TryToGetSpinlock"
	.byte		0
	.sleb128	27
	.sleb128	10
	.byte		"OSServiceId_ShutdownAllCores"
	.byte		0
	.sleb128	28
	.sleb128	10
	.byte		"OSServiceId_ControlIdle"
	.byte		0
	.sleb128	29
	.sleb128	10
	.byte		"OSServiceId_IOC_Send"
	.byte		0
	.sleb128	30
	.sleb128	10
	.byte		"OSServiceId_IOC_Write"
	.byte		0
	.sleb128	31
	.sleb128	10
	.byte		"OSServiceId_IOC_SendGroup"
	.byte		0
	.sleb128	32
	.sleb128	10
	.byte		"OSServiceId_IOC_WriteFGroup"
	.byte		0
	.sleb128	33
	.sleb128	10
	.byte		"OSServiceId_IOC_Receive"
	.byte		0
	.sleb128	34
	.sleb128	10
	.byte		"OSServiceId_IOC_Read"
	.byte		0
	.sleb128	35
	.sleb128	10
	.byte		"OSServiceId_IOC_ReceiveGroup"
	.byte		0
	.sleb128	36
	.sleb128	10
	.byte		"OSServiceId_IOC_ReadGroup"
	.byte		0
	.sleb128	37
	.sleb128	10
	.byte		"OSServiceId_IOC_EmptyQueue"
	.byte		0
	.sleb128	38
	.sleb128	10
	.byte		"OSServiceId_IOC_ReceiverPullCB"
	.byte		0
	.sleb128	39
	.sleb128	10
	.byte		"OSServiceId_ActivateTask"
	.byte		0
	.sleb128	128
	.sleb128	10
	.byte		"OSServiceId_TerminateTask"
	.byte		0
	.sleb128	129
	.sleb128	10
	.byte		"OSServiceId_ChainTask"
	.byte		0
	.sleb128	130
	.sleb128	10
	.byte		"OSServiceId_Schedule"
	.byte		0
	.sleb128	131
	.sleb128	10
	.byte		"OSServiceId_GetTaskID"
	.byte		0
	.sleb128	132
	.sleb128	10
	.byte		"OSServiceId_GetTaskState"
	.byte		0
	.sleb128	133
	.sleb128	10
	.byte		"OSServiceId_EnableAllInterrupts"
	.byte		0
	.sleb128	134
	.sleb128	10
	.byte		"OSServiceId_DisableAllInterrupts"
	.byte		0
	.sleb128	135
	.sleb128	10
	.byte		"OSServiceId_ResumeAllInterrupts"
	.byte		0
	.sleb128	136
	.sleb128	10
	.byte		"OSServiceId_SuspendAllInterrupts"
	.byte		0
	.sleb128	137
	.sleb128	10
	.byte		"OSServiceId_ResumeOSInterrupts"
	.byte		0
	.sleb128	138
	.sleb128	10
	.byte		"OSServiceId_SuspendOSInterrupts"
	.byte		0
	.sleb128	139
	.sleb128	10
	.byte		"OSServiceId_GetResource"
	.byte		0
	.sleb128	140
	.sleb128	10
	.byte		"OSServiceId_ReleaseResource"
	.byte		0
	.sleb128	141
	.sleb128	10
	.byte		"OSServiceId_SetEvent"
	.byte		0
	.sleb128	142
	.sleb128	10
	.byte		"OSServiceId_ClearEvent"
	.byte		0
	.sleb128	143
	.sleb128	10
	.byte		"OSServiceId_GetEvent"
	.byte		0
	.sleb128	144
	.sleb128	10
	.byte		"OSServiceId_WaitEvent"
	.byte		0
	.sleb128	145
	.sleb128	10
	.byte		"OSServiceId_GetAlarmBase"
	.byte		0
	.sleb128	146
	.sleb128	10
	.byte		"OSServiceId_GetAlarm"
	.byte		0
	.sleb128	147
	.sleb128	10
	.byte		"OSServiceId_SetRelAlarm"
	.byte		0
	.sleb128	148
	.sleb128	10
	.byte		"OSServiceId_SetAbsAlarm"
	.byte		0
	.sleb128	149
	.sleb128	10
	.byte		"OSServiceId_CancelAlarm"
	.byte		0
	.sleb128	150
	.sleb128	10
	.byte		"OSServiceId_GetActiveApplicationMode"
	.byte		0
	.sleb128	151
	.sleb128	10
	.byte		"OSServiceId_StartOS"
	.byte		0
	.sleb128	152
	.sleb128	10
	.byte		"OSServiceId_ShutdownOS"
	.byte		0
	.sleb128	153
	.sleb128	10
	.byte		"OSServiceId_INVALIDSERVICE"
	.byte		0
	.sleb128	255
	.sleb128	0
.L544:
.L536:
	.sleb128	9
	.4byte		.L545
	.uleb128	43
	.uleb128	1
	.4byte		.L546-.L2
	.uleb128	4
	.sleb128	10
	.byte		"TRYTOGETSPINLOCK_SUCCESS"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"TRYTOGETSPINLOCK_NOSUCCESS"
	.byte		0
	.sleb128	1
	.sleb128	0
.L546:
.L487:
	.sleb128	9
	.4byte		.L547
	.uleb128	40
	.uleb128	1
	.4byte		.L548-.L2
	.uleb128	4
	.sleb128	10
	.byte		"SCHEDULETABLE_STOPPED"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"SCHEDULETABLE_NEXT"
	.byte		0
	.sleb128	1
	.sleb128	10
	.byte		"SCHEDULETABLE_WAITING"
	.byte		0
	.sleb128	2
	.sleb128	10
	.byte		"SCHEDULETABLE_RUNNING"
	.byte		0
	.sleb128	3
	.sleb128	10
	.byte		"SCHEDULETABLE_RUNNING_AND_SYNCHRONOUS"
	.byte		0
	.sleb128	4
	.sleb128	0
.L548:
.L466:
	.sleb128	9
	.4byte		.L540
	.uleb128	47
	.uleb128	1
	.4byte		.L549-.L2
	.uleb128	4
	.sleb128	10
	.byte		"OBJECT_TASK"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"OBJECT_ISR"
	.byte		0
	.sleb128	1
	.sleb128	10
	.byte		"OBJECT_ALARM"
	.byte		0
	.sleb128	2
	.sleb128	10
	.byte		"OBJECT_RESOURCE"
	.byte		0
	.sleb128	3
	.sleb128	10
	.byte		"OBJECT_COUNTER"
	.byte		0
	.sleb128	4
	.sleb128	10
	.byte		"OBJECT_SCHEDULETABLE"
	.byte		0
	.sleb128	5
	.sleb128	0
.L549:
.L475:
	.sleb128	9
	.4byte		.L550
	.uleb128	37
	.uleb128	1
	.4byte		.L551-.L2
	.uleb128	4
	.sleb128	10
	.byte		"RUNNING"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"WAITING"
	.byte		0
	.sleb128	1
	.sleb128	10
	.byte		"READY"
	.byte		0
	.sleb128	2
	.sleb128	10
	.byte		"SUSPENDED"
	.byte		0
	.sleb128	3
	.sleb128	0
.L551:
	.section	.debug_info,,n
.L427:
	.sleb128	11
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L426:
	.sleb128	12
	.byte		"uint8"
	.byte		0
	.4byte		.L427
.L425:
	.sleb128	12
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L426
.L433:
	.sleb128	12
	.byte		"Os_PublicDataType"
	.byte		0
	.4byte		.L434
	.section	.debug_info,,n
.L432:
	.sleb128	13
	.4byte		.L433
	.section	.debug_info,,n
.L430:
	.sleb128	14
	.4byte		.L431-.L2
	.4byte		.L432
	.section	.debug_info,,n
	.sleb128	15
	.uleb128	1
	.sleb128	0
.L431:
	.section	.debug_info,,n
.L437:
	.sleb128	16
	.4byte		.L438
.L441:
	.sleb128	12
	.byte		"OSServiceIdType"
	.byte		0
	.4byte		.L442
.L447:
	.sleb128	11
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L446:
	.sleb128	12
	.byte		"uint32"
	.byte		0
	.4byte		.L447
.L445:
	.sleb128	12
	.byte		"Os_ObjectType"
	.byte		0
	.4byte		.L446
.L444:
	.sleb128	12
	.byte		"ProcType"
	.byte		0
	.4byte		.L445
.L443:
	.sleb128	12
	.byte		"TaskType"
	.byte		0
	.4byte		.L444
.L448:
	.sleb128	12
	.byte		"ResourceType"
	.byte		0
	.4byte		.L446
.L451:
	.sleb128	11
	.byte		"unsigned long long"
	.byte		0
	.byte		0x7
	.byte		0x8
.L450:
	.sleb128	12
	.byte		"uint64"
	.byte		0
	.4byte		.L451
.L449:
	.sleb128	12
	.byte		"EventMaskType"
	.byte		0
	.4byte		.L450
.L452:
	.sleb128	12
	.byte		"AlarmType"
	.byte		0
	.4byte		.L445
.L453:
	.sleb128	12
	.byte		"TickType"
	.byte		0
	.4byte		.L446
.L454:
	.sleb128	12
	.byte		"TrustedFunctionIndexType"
	.byte		0
	.4byte		.L446
	.section	.debug_info,,n
.L457:
	.sleb128	17
	.byte		"void"
	.byte		0
	.byte		0x0
	.section	.debug_info,,n
.L456:
	.sleb128	18
	.4byte		.L457
.L455:
	.sleb128	12
	.byte		"TrustedFunctionParameterRefType"
	.byte		0
	.4byte		.L456
.L458:
	.sleb128	12
	.byte		"ApplicationType"
	.byte		0
	.4byte		.L426
.L459:
	.sleb128	12
	.byte		"ApplicationStateType"
	.byte		0
	.4byte		.L426
.L461:
	.sleb128	18
	.4byte		.L459
.L460:
	.sleb128	12
	.byte		"ApplicationStateRefType"
	.byte		0
	.4byte		.L461
.L462:
	.sleb128	12
	.byte		"ISRType"
	.byte		0
	.4byte		.L444
.L464:
	.sleb128	12
	.byte		"uintptr"
	.byte		0
	.4byte		.L446
.L463:
	.sleb128	12
	.byte		"MemorySizeType"
	.byte		0
	.4byte		.L464
.L465:
	.sleb128	12
	.byte		"ObjectTypeType"
	.byte		0
	.4byte		.L466
.L467:
	.sleb128	12
	.byte		"ScheduleTableType"
	.byte		0
	.4byte		.L446
.L468:
	.sleb128	12
	.byte		"CounterType"
	.byte		0
	.4byte		.L446
.L469:
	.sleb128	12
	.byte		"RestartType"
	.byte		0
	.4byte		.L426
.L471:
	.sleb128	18
	.4byte		.L449
.L470:
	.sleb128	12
	.byte		"EventMaskRefType"
	.byte		0
	.4byte		.L471
.L474:
	.sleb128	12
	.byte		"TaskStateType"
	.byte		0
	.4byte		.L475
.L473:
	.sleb128	18
	.4byte		.L474
.L472:
	.sleb128	12
	.byte		"TaskStateRefType"
	.byte		0
	.4byte		.L473
.L477:
	.sleb128	18
	.4byte		.L453
.L476:
	.sleb128	12
	.byte		"TickRefType"
	.byte		0
	.4byte		.L477
.L480:
	.sleb128	12
	.byte		"AlarmBaseType"
	.byte		0
	.4byte		.L481
.L479:
	.sleb128	18
	.4byte		.L480
.L478:
	.sleb128	12
	.byte		"AlarmBaseRefType"
	.byte		0
	.4byte		.L479
.L483:
	.sleb128	18
	.4byte		.L443
.L482:
	.sleb128	12
	.byte		"TaskRefType"
	.byte		0
	.4byte		.L483
.L486:
	.sleb128	12
	.byte		"ScheduleTableStatusType"
	.byte		0
	.4byte		.L487
.L485:
	.sleb128	18
	.4byte		.L486
.L484:
	.sleb128	12
	.byte		"ScheduleTableStatusRefType"
	.byte		0
	.4byte		.L485
.L493:
	.sleb128	12
	.byte		"Os_PublicData_NoInitType"
	.byte		0
	.4byte		.L494
.L492:
	.sleb128	13
	.4byte		.L493
.L491:
	.sleb128	18
	.4byte		.L492
.L490:
	.sleb128	13
	.4byte		.L491
.L497:
	.sleb128	12
	.byte		"Os_PublicData_VarInitType"
	.byte		0
	.4byte		.L498
.L496:
	.sleb128	18
	.4byte		.L497
.L495:
	.sleb128	13
	.4byte		.L496
.L502:
	.sleb128	12
	.byte		"Os_IsrApiTable"
	.byte		0
	.4byte		.L503
.L501:
	.sleb128	13
	.4byte		.L502
.L500:
	.sleb128	18
	.4byte		.L501
.L505:
	.sleb128	12
	.byte		"Os_ErrorType"
	.byte		0
	.4byte		.L506
.L507:
	.sleb128	12
	.byte		"Os_ExceptionStatusType"
	.byte		0
	.4byte		.L508
	.section	.debug_info,,n
.L513:
	.sleb128	19
	.4byte		.L514-.L2
	.byte		0x1
	.sleb128	0
.L514:
.L512:
	.sleb128	18
	.4byte		.L513
.L511:
	.sleb128	12
	.byte		"Os_IsrHandlerFuncType"
	.byte		0
	.4byte		.L512
.L510:
	.sleb128	13
	.4byte		.L511
.L516:
	.sleb128	12
	.byte		"Os_ExceptionTypeType"
	.byte		0
	.4byte		.L517
.L518:
	.sleb128	12
	.byte		"Os_StackType"
	.byte		0
	.4byte		.L446
.L521:
	.sleb128	12
	.byte		"Os_ShudownErrorType"
	.byte		0
	.4byte		.L522
.L523:
	.sleb128	12
	.byte		"Os_ParameterErrorType"
	.byte		0
	.4byte		.L524
.L525:
	.sleb128	12
	.byte		"Os_ServiceErrorType"
	.byte		0
	.4byte		.L526
.L528:
	.sleb128	12
	.byte		"ServiceTraceType"
	.byte		0
	.4byte		.L426
.L532:
	.sleb128	11
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L531:
	.sleb128	12
	.byte		"uint16"
	.byte		0
	.4byte		.L532
.L530:
	.sleb128	12
	.byte		"SpinlockIdType"
	.byte		0
	.4byte		.L531
.L535:
	.sleb128	12
	.byte		"TryToGetSpinlockType"
	.byte		0
	.4byte		.L536
.L534:
	.sleb128	18
	.4byte		.L535
.L533:
	.sleb128	12
	.byte		"TryToGetSpinlockRefType"
	.byte		0
	.4byte		.L534
.L538:
	.sleb128	12
	.byte		"Os_SystemInternalErrorType"
	.byte		0
	.4byte		.L539
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
.L417:
	.sleb128	0
.L413:
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "ErrorHook"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "GetCoreID"
	.wrcm.end
	.wrcm.end
	.wrcm.end
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\ErrorHookImplementation.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\ErrorHookImplementation.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\ErrorHookImplementation.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\ErrorHookImplementation.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\ErrorHookImplementation.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\ErrorHookImplementation.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\Application\MetaWares\make\..\src\ErrorHookImplementation.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
