#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Os_Event.c"
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
# LOCAL_INLINE FUNC(Os_IsrStateType, OS_CODE) Os_Isr_GetState(CONST(CoreIdType, AUTOMATIC) coreId)
	.section	.Os_TEXT,,c
	.align		1
	.section	.debug_line.Os_TEXT,,n
	.sectionlink	.debug_line
.L11371:
	.section	.Os_TEXT,,c
#$$ld
.L11367:
	.0byte		.L11365
	.d2_line_start	.debug_line.Os_TEXT
	.section	.Os_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_Isr.h"
        .d2line         227,45
#$$ld
.L11374:

#$$bf	Os_Isr_GetState,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6
	.d2_cfa_start __cie
Os_Isr_GetState:
.Llo1:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# coreId=r3 coreId=r3
	.d2prologue_end
# {
#     return (Os_IsrStateType)(OS_GET_CORE_ISR_DYN_INIT(coreId)->Os_DisableAllCount +
	.d2line		229
	lis		r5,Os_Core_Stat@ha
	e_add16i		r5,r5,Os_Core_Stat@l
	rlwinm		r3,r3,0,16,31		# coreId=r3 coreId=r3
	e_mulli		r4,r3,20		# coreId=r3
	lwzux		r3,r5,r4		# coreId=r3
	lwz		r6,8(r3)		# coreId=r3
	lis		r3,Os_Core_Stat@ha		# coreId=r3
	e_add16i		r3,r3,Os_Core_Stat@l		# coreId=r3 coreId=r3
	lwzux		r5,r3,r4		# coreId=r3
	lwz		r3,12(r5)		# coreId=r3
	se_add		r6,r3		# coreId=r3
	lis		r5,Os_Core_Stat@ha
	e_add16i		r5,r5,Os_Core_Stat@l
	lwzx		r4,r5,r4
	lwz		r4,16(r4)
	add		r3,r6,r4		# coreId=r3
#                              OS_GET_CORE_ISR_DYN_INIT(coreId)->Os_SuspendAllCount +
#                              OS_GET_CORE_ISR_DYN_INIT(coreId)->Os_SuspendOSCount);
# }
	.d2line		232
	.d2epilogue_begin
.Llo2:
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11375:
	.type		Os_Isr_GetState,@function
	.size		Os_Isr_GetState,.-Os_Isr_GetState
# Number of nodes = 36

# Allocations for Os_Isr_GetState
#	?a4		coreId
# FUNC (StatusType, OS_CODE) Os_Event_Err(
	.align		2
	.section	.Os_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\task\\events\\Os_Event.c"
        .d2line         53,28
#$$ld
.L11387:

#$$bf	Os_Event_Err,interprocedural,rasave,nostackparams
	.globl		Os_Event_Err
	.d2_cfa_start __cie
Os_Event_Err:
.Llo3:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# callerTask=r31 callerTask=r3
	mr		r30,r4		# taskId=r30 taskId=r4
	.d2prologue_end
#                                 P2CONST ( Os_ProcStatType, AUTOMATIC, OS_CONST )   callerTask,
#                                 VAR     ( TaskType,        AUTOMATIC )             taskId
#                     )
# {
#     VAR (StatusType, AUTOMATIC) retVal;
# 
#     if (Os_Isr_Enabled != Os_Isr_GetState(OS_GETCOREID()))
	.d2line		60
	mfspr		r3,286
.Llo4:
	bl		Os_Isr_GetState
.Llo7:
	se_cmpi		r3,0
	bc		1,2,.L11351	# eq
#     {
#         /* [OS093-01-10] [OS093-01-11] [OS093-01-12] [OS093-02-10] [OS093-02-11] [OS093-02-12] */
#         retVal = OS_GET_ERRORCODE(E_OS_SYS_ERROR,E_OS_DISABLEDINT);
	.d2line		63
.Llo5:
	diab.li		r3,10		# retVal=r3
.Llo12:
	b		.L11352
.L11351:
#     }
#     else if(0U == Os_Proc_Stat[taskId].Os_ProcEventRights)
	.d2line		65
.Llo13:
	lis		r3,(Os_Proc_Stat+24)@ha
	e_add16i		r3,r3,(Os_Proc_Stat+24)@l
	e_mulli		r4,r30,80		# taskId=r30
	lwzux		r0,r3,r4
	lwz		r3,4(r3)
	or.		r0,r0,r3
	bc		0,2,.L11353	# ne
#     {
#         /* [OS001-101.v1] [OS001-116.v1] [OS001-109.v1] */
#         retVal = OS_GET_ERRORCODE(E_OS_SYS_ERROR, E_OS_ACCESS);
	.d2line		68
	diab.li		r3,1		# retVal=r3
.Llo14:
	b		.L11352
.L11353:
#     }
# 
#   #ifdef OS_MODULE_APPLICATION
# 
#     else if( Os_Access_Denied == Os_Access_Check( Os_Proc_Stat[taskId].Os_ProcAppAccess,
	.d2line		73
.Llo15:
	lis		r3,(Os_Proc_Stat+52)@ha
	e_add16i		r3,r3,(Os_Proc_Stat+52)@l
	e_mulli		r4,r30,80		# taskId=r30
	lwzx		r3,r3,r4
	lwz		r4,48(r31)		# callerTask=r31
	lbz		r4,4(r4)
	bl		Os_Access_Check
	se_cmpi		r3,1
	bc		0,2,.L11355	# ne
#                                                   (ProcType)callerTask->Os_ProcOwnerApp->Os_AppId ) )
#     {
#         retVal = OS_GET_ERRORCODE(E_OS_SYS_ERROR, E_OS_ACCESS);  /* [OS448-01-07] */
	.d2line		76
	diab.li		r3,1		# retVal=r3
.Llo16:
	b		.L11352
.L11355:
#     }
#     else if( (Os_Proc_Stat[taskId].Os_ProcOwnerApp != callerTask->Os_ProcOwnerApp) &&
	.d2line		78
.Llo17:
	lis		r3,(Os_Proc_Stat+48)@ha
	e_add16i		r3,r3,(Os_Proc_Stat+48)@l
	e_mulli		r4,r30,80		# taskId=r30
	lwzx		r0,r3,r4
	lwz		r3,48(r31)		# callerTask=r31
	se_cmpl		r0,r3
	bc		1,2,.L11357	# eq
.Llo6:
	lis		r3,(Os_Proc_Stat+48)@ha
	e_add16i		r3,r3,(Os_Proc_Stat+48)@l
.Llo8:
	e_mulli		r30,r30,80		# taskId=r30 taskId=r30
.Llo9:
	lwzx		r3,r3,r30
	lwz		r3,0(r3)
	lbz		r0,0(r3)
	se_cmpi		r0,0
	bc		1,2,.L11357	# eq
#              ((uint8)APPLICATION_ACCESSIBLE != Os_Proc_Stat[taskId].Os_ProcOwnerApp->Os_AppDyn->Os_AppState))
#     {
#         retVal = OS_GET_ERRORCODE(E_OS_SYS_ERROR, E_OS_ACCESS);  /* [OS509-01-07] */
	.d2line		81
	diab.li		r3,1		# retVal=r3
.Llo18:
	b		.L11352
.L11357:
#     }
# 
#   #endif    /* OS_MODULE_APPLICATION */
# 
#     else
#     {
#         /* List of requirements that are not checked (automatically satisfied):
#          * [OS001-100.v1] [OS001-103.v1] [OS001-115.v1] [OS001-119.v1]
#          */
#         retVal = E_OK;
	.d2line		91
.Llo10:
	diab.li		r3,0		# retVal=r3
.L11352:
#     }
# 
# 
#     return retVal;
	.d2line		95
.Llo11:
	rlwinm		r3,r3,0,24,31		# retVal=r3 retVal=r3
# }
	.d2line		96
	.d2epilogue_begin
.Llo19:
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11388:
	.type		Os_Event_Err,@function
	.size		Os_Event_Err,.-Os_Event_Err
# Number of nodes = 94

# Allocations for Os_Event_Err
#	?a4		callerTask
#	?a5		taskId
#	?a6		retVal

# Allocations for module
	.section	.text_vle
	.0byte		.L11407
	.section	.text_vle
	.0byte		.L11411
	.section	.text_vle
#$$ld
.L5:
.L11868:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_Types.h"
.L11865:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ApplicationApiTypes.h"
.L11863:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ScheduleTableApiTypes.h"
.L11861:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_TaskApiTypes.h"
.L11859:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_SpinlockApiTypes.h"
.L11850:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_Isr.h"
.L11845:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\PowerPC\\WindRiver\\AUTOSAR\\ar422\\MemMap.h"
.L11843:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_InternalTypes.h"
.L11831:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ExceptionApiTypes.h"
.L11786:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_ApplicationCfgTypes.h"
.L11736:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_HookApiTypes.h"
.L11711:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_TrustedFunctionCfgTypes.h"
.L11470:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_ApiDispatchCfgTypes.h"
.L11418:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_SchedulerCfgTypes.h"
.L11412:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_CoreCfgTypes.h"
.L11408:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_TaskCfgTypes.h"
	.d2_line_end
	.section	.Os_TEXT,,c
#$$ld
.L11368:
.L11389:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\task\\events\\Os_Event.c"
.L11376:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_Isr.h"
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
	.uleb128	73
	.uleb128	16
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
	.uleb128	6
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	4
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
	.uleb128	73
	.uleb128	16
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
	.uleb128	6
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	6
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
	.uleb128	7
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
	.uleb128	8
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
	.uleb128	9
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
	.uleb128	10
	.uleb128	23
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
	.uleb128	11
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
	.uleb128	12
	.uleb128	40
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	28
	.uleb128	13
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	13
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
	.uleb128	3
	.uleb128	8
	.uleb128	11
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	14
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	15
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
	.uleb128	16
	.uleb128	38
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	17
	.uleb128	15
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	18
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	19
	.uleb128	33
	.byte		0x0
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	20
	.uleb128	33
	.byte		0x0
	.uleb128	47
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	21
	.uleb128	21
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	39
	.uleb128	12
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	22
	.uleb128	5
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	23
	.uleb128	21
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	39
	.uleb128	12
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	24
	.uleb128	36
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	11
	.uleb128	11
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\task\\events\\Os_Event.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L4
	.4byte		.L5
	.4byte		.L8
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11365:
	.4byte		.L11366-.L11364
.L11364:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L11370-.L11365
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\task\\events\\Os_Event.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L11367
	.4byte		.L11368
	.4byte		.L11371
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11379:
	.sleb128	2
	.4byte		.L11373-.L11365
	.byte		"Os_Isr_GetState"
	.byte		0
	.4byte		.L11376
	.uleb128	227
	.uleb128	45
	.4byte		.L11377
	.byte		0x1
	.4byte		.L11374
	.4byte		.L11375
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L11376
	.uleb128	227
	.uleb128	45
	.byte		"coreId"
	.byte		0
	.4byte		.L11380
	.4byte		.L11384
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11373:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11393:
	.sleb128	4
	.4byte		.L11386-.L11365
	.byte		"Os_Event_Err"
	.byte		0
	.4byte		.L11389
	.uleb128	53
	.uleb128	28
	.4byte		.L11390
	.byte		0x1
	.byte		0x1
	.4byte		.L11387
	.4byte		.L11388
	.sleb128	3
	.4byte		.L11389
	.uleb128	53
	.uleb128	28
	.byte		"callerTask"
	.byte		0
	.4byte		.L11394
	.4byte		.L11398
	.sleb128	3
	.4byte		.L11389
	.uleb128	53
	.uleb128	28
	.byte		"taskId"
	.byte		0
	.4byte		.L11399
	.4byte		.L11404
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11405:
	.sleb128	5
	.4byte		.L11389
	.uleb128	58
	.uleb128	33
	.byte		"retVal"
	.byte		0
	.4byte		.L11390
	.4byte		.L11406
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11386:
	.section	.debug_info,,n
.L11407:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L11408
	.uleb128	211
	.uleb128	45
	.byte		"Os_Proc_Stat"
	.byte		0
	.4byte		.L11409
	.section	.debug_info,,n
.L11411:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L11412
	.uleb128	169
	.uleb128	42
	.byte		"Os_Core_Stat"
	.byte		0
	.4byte		.L11413
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11417:
	.sleb128	7
	.4byte		.L11418
	.uleb128	69
	.uleb128	1
	.4byte		.L11419-.L2
	.uleb128	20
	.section	.debug_info,,n
.L788:
	.sleb128	8
	.byte		"Os_Core_DynInit"
	.byte		0
	.4byte		.L11420
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L789:
	.sleb128	8
	.byte		"Os_Core_Dyn"
	.byte		0
	.4byte		.L11424
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L790:
	.sleb128	8
	.byte		"Os_DispatchElement"
	.byte		0
	.4byte		.L11428
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L791:
	.sleb128	8
	.byte		"Os_PrepareContextFunction"
	.byte		0
	.4byte		.L11432
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L792:
	.sleb128	8
	.byte		"Os_GetStackPointerFunction"
	.byte		0
	.4byte		.L11438
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11419:
.L11423:
	.sleb128	7
	.4byte		.L11418
	.uleb128	69
	.uleb128	1
	.4byte		.L11445-.L2
	.uleb128	36
.L785:
	.sleb128	8
	.byte		"Os_IsrDynInit"
	.byte		0
	.4byte		.L11446
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L786:
	.sleb128	8
	.byte		"Os_SchedulerDynInit"
	.byte		0
	.4byte		.L11448
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L787:
	.sleb128	8
	.byte		"Os_CurrentApp"
	.byte		0
	.4byte		.L11450
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
	.sleb128	0
.L11445:
.L11427:
	.sleb128	7
	.4byte		.L11418
	.uleb128	69
	.uleb128	1
	.4byte		.L11454-.L2
	.uleb128	104
.L775:
	.sleb128	8
	.byte		"Os_SchedulerDyn"
	.byte		0
	.4byte		.L11455
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L776:
	.sleb128	8
	.byte		"Os_IsrDyn"
	.byte		0
	.4byte		.L11457
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L777:
	.sleb128	8
	.byte		"Os_HooksDyn"
	.byte		0
	.4byte		.L11459
	.sleb128	2
	.byte		0x23
	.uleb128	100
	.byte		0x1
	.sleb128	0
.L11454:
.L11449:
	.sleb128	7
	.4byte		.L11418
	.uleb128	69
	.uleb128	1
	.4byte		.L11461-.L2
	.uleb128	4
.L774:
	.sleb128	8
	.byte		"Os_SchedulerCurrentProc"
	.byte		0
	.4byte		.L11462
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11461:
.L11456:
	.sleb128	7
	.4byte		.L11418
	.uleb128	69
	.uleb128	1
	.4byte		.L11464-.L2
	.uleb128	48
.L766:
	.sleb128	8
	.byte		"Os_CurrentContext"
	.byte		0
	.4byte		.L11443
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L767:
	.sleb128	8
	.byte		"Os_PreviousContext"
	.byte		0
	.4byte		.L11443
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L768:
	.sleb128	8
	.byte		"Os_SchedulerScheduleAction"
	.byte		0
	.4byte		.L11465
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L769:
	.sleb128	8
	.byte		"Os_SchedulerLastScheduledPriority"
	.byte		0
	.4byte		.L11467
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L770:
	.sleb128	8
	.byte		"Os_SchedulerCurrentTask"
	.byte		0
	.4byte		.L11462
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L771:
	.sleb128	8
	.byte		"Os_SchedulerLastScheduledProc"
	.byte		0
	.4byte		.L11462
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L772:
	.sleb128	8
	.byte		"Os_SchedulerHeadPivot"
	.byte		0
	.4byte		.L11468
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L773:
	.sleb128	8
	.byte		"Os_SchedulerTailPivot"
	.byte		0
	.4byte		.L11468
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
	.sleb128	0
.L11464:
	.section	.debug_info,,n
.L11469:
	.sleb128	9
	.4byte		.L11470
	.uleb128	612
	.uleb128	1
	.4byte		.L11471-.L2
	.byte		"Os_SchedulerQueueElementType_s"
	.byte		0
	.uleb128	12
.L752:
	.sleb128	8
	.byte		"Os_QueueProc"
	.byte		0
	.4byte		.L11462
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L753:
	.sleb128	8
	.byte		"Os_QueueFrontElement"
	.byte		0
	.4byte		.L11472
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L754:
	.sleb128	8
	.byte		"Os_QueueBackElement"
	.byte		0
	.4byte		.L11472
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11471:
.L11447:
	.sleb128	7
	.4byte		.L11470
	.uleb128	612
	.uleb128	1
	.4byte		.L11473-.L2
	.uleb128	28
.L745:
	.sleb128	8
	.byte		"Os_CurrentUserModePriority"
	.byte		0
	.4byte		.L11474
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L746:
	.sleb128	8
	.byte		"Os_UserModePriorityChanged"
	.byte		0
	.4byte		.L11475
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L747:
	.sleb128	8
	.byte		"Os_DisableAllCount"
	.byte		0
	.4byte		.L11402
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L748:
	.sleb128	8
	.byte		"Os_SuspendAllCount"
	.byte		0
	.4byte		.L11402
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L749:
	.sleb128	8
	.byte		"Os_SuspendOSCount"
	.byte		0
	.4byte		.L11402
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L750:
	.sleb128	8
	.byte		"Os_SavedIsrLevel"
	.byte		0
	.4byte		.L11474
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L751:
	.sleb128	8
	.byte		"Os_SavedOSIsrLevel"
	.byte		0
	.4byte		.L11474
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
	.sleb128	0
.L11473:
.L11458:
	.sleb128	7
	.4byte		.L11470
	.uleb128	612
	.uleb128	1
	.4byte		.L11476-.L2
	.uleb128	52
.L739:
	.sleb128	8
	.byte		"Os_IsrRunningIsr"
	.byte		0
	.4byte		.L11462
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L740:
	.sleb128	8
	.byte		"Os_IsrNeedToClear"
	.byte		0
	.4byte		.L11477
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L741:
	.sleb128	8
	.byte		"Os_Isr_NestLevel"
	.byte		0
	.4byte		.L11402
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L742:
	.sleb128	8
	.byte		"Os_Isr_ServicesBackup"
	.byte		0
	.4byte		.L11481
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L743:
	.sleb128	8
	.byte		"Os_SuspendAllPrevIsrState"
	.byte		0
	.4byte		.L11474
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L744:
	.sleb128	8
	.byte		"Os_SuspendCounterpartTrack"
	.byte		0
	.4byte		.L11485
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L11476:
.L11431:
	.sleb128	9
	.4byte		.L11470
	.uleb128	612
	.uleb128	1
	.4byte		.L11487-.L2
	.byte		"Os_DispatchElementType_s"
	.byte		0
	.uleb128	56
.L732:
	.sleb128	8
	.byte		"Os_DispatchKind"
	.byte		0
	.4byte		.L11488
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L733:
	.sleb128	8
	.byte		"Os_DispatcherLockCoreId"
	.byte		0
	.4byte		.L11381
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L734:
	.sleb128	8
	.byte		"Os_DispatchIsrId"
	.byte		0
	.4byte		.L11490
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L735:
	.sleb128	8
	.byte		"Os_DispatchApiCall"
	.byte		0
	.4byte		.L11491
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L736:
	.sleb128	8
	.byte		"Os_DispatchApiInternal"
	.byte		0
	.4byte		.L11492
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11487:
.L11493:
	.sleb128	9
	.4byte		.L11470
	.uleb128	60
	.uleb128	1
	.4byte		.L11494-.L2
	.byte		"Os_APICallType_struct"
	.byte		0
	.uleb128	40
.L727:
	.sleb128	8
	.byte		"Os_API_Magic"
	.byte		0
	.4byte		.L11402
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L728:
	.sleb128	8
	.byte		"Os_API_ReturnValue"
	.byte		0
	.4byte		.L11390
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L729:
	.sleb128	8
	.byte		"Os_API_Lock"
	.byte		0
	.4byte		.L11495
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L730:
	.sleb128	8
	.byte		"Os_API_Func"
	.byte		0
	.4byte		.L11497
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L731:
	.sleb128	8
	.byte		"Os_API_Data"
	.byte		0
	.4byte		.L11503
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11494:
	.section	.debug_info,,n
.L11503:
	.sleb128	10
	.4byte		.L11470
	.uleb128	60
	.uleb128	1
	.4byte		.L11504-.L2
	.uleb128	24
.L679:
	.sleb128	8
	.byte		"Os_ApiStartOs"
	.byte		0
	.4byte		.L11505
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L680:
	.sleb128	8
	.byte		"Os_ApiShutdownOs"
	.byte		0
	.4byte		.L11507
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L681:
	.sleb128	8
	.byte		"Os_ApiShutdownOsInternal"
	.byte		0
	.4byte		.L11509
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L682:
	.sleb128	8
	.byte		"Os_ApiShutdownAllCores"
	.byte		0
	.4byte		.L11511
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L683:
	.sleb128	8
	.byte		"Os_ApiGetNumberOfActivatedCores"
	.byte		0
	.4byte		.L11513
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L684:
	.sleb128	8
	.byte		"Os_ApiStartCore"
	.byte		0
	.4byte		.L11515
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L685:
	.sleb128	8
	.byte		"Os_ApiStartNonAutosarCore"
	.byte		0
	.4byte		.L11517
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L686:
	.sleb128	8
	.byte		"Os_ApiGetCoreID"
	.byte		0
	.4byte		.L11519
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L687:
	.sleb128	8
	.byte		"Os_ApiActivateTask"
	.byte		0
	.4byte		.L11521
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L688:
	.sleb128	8
	.byte		"Os_ApiChainTask"
	.byte		0
	.4byte		.L11523
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L689:
	.sleb128	8
	.byte		"Os_ApiGetTaskID"
	.byte		0
	.4byte		.L11525
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L690:
	.sleb128	8
	.byte		"Os_ApiGetTaskState"
	.byte		0
	.4byte		.L11527
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L691:
	.sleb128	8
	.byte		"Os_ApiSetEvent"
	.byte		0
	.4byte		.L11529
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L692:
	.sleb128	8
	.byte		"Os_ApiClearEvent"
	.byte		0
	.4byte		.L11531
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L693:
	.sleb128	8
	.byte		"Os_ApiGetEvent"
	.byte		0
	.4byte		.L11533
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L694:
	.sleb128	8
	.byte		"Os_ApiWaitEvent"
	.byte		0
	.4byte		.L11535
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L695:
	.sleb128	8
	.byte		"Os_ApiGetResource"
	.byte		0
	.4byte		.L11537
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L696:
	.sleb128	8
	.byte		"Os_ApiReleaseResource"
	.byte		0
	.4byte		.L11539
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L697:
	.sleb128	8
	.byte		"Os_ApiGetAlarmBase"
	.byte		0
	.4byte		.L11541
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L698:
	.sleb128	8
	.byte		"Os_ApiGetAlarm"
	.byte		0
	.4byte		.L11543
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L699:
	.sleb128	8
	.byte		"Os_ApiSetRelAlarm"
	.byte		0
	.4byte		.L11545
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L700:
	.sleb128	8
	.byte		"Os_ApiSetAbsAlarm"
	.byte		0
	.4byte		.L11547
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L701:
	.sleb128	8
	.byte		"Os_ApiCancelAlarm"
	.byte		0
	.4byte		.L11549
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L702:
	.sleb128	8
	.byte		"Os_ApiGetApplicationState"
	.byte		0
	.4byte		.L11551
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L703:
	.sleb128	8
	.byte		"Os_ApiTerminateApplication"
	.byte		0
	.4byte		.L11553
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L704:
	.sleb128	8
	.byte		"Os_ApiGetApplicationID"
	.byte		0
	.4byte		.L11555
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L705:
	.sleb128	8
	.byte		"Os_ApiGetISRID"
	.byte		0
	.4byte		.L11557
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L706:
	.sleb128	8
	.byte		"Os_ApiGetActiveApplicationMode"
	.byte		0
	.4byte		.L11559
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L707:
	.sleb128	8
	.byte		"Os_ApiIncrementCounter"
	.byte		0
	.4byte		.L11561
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L708:
	.sleb128	8
	.byte		"Os_ApiGetCounterValue"
	.byte		0
	.4byte		.L11563
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L709:
	.sleb128	8
	.byte		"Os_ApiGetElapsedValue"
	.byte		0
	.4byte		.L11565
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L710:
	.sleb128	8
	.byte		"Os_ApiStartScheduleTableAbs"
	.byte		0
	.4byte		.L11567
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L711:
	.sleb128	8
	.byte		"Os_ApiStartScheduleTableRel"
	.byte		0
	.4byte		.L11569
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L712:
	.sleb128	8
	.byte		"Os_ApiStopScheduleTable"
	.byte		0
	.4byte		.L11571
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L713:
	.sleb128	8
	.byte		"Os_ApiGetScheduleTableStatus"
	.byte		0
	.4byte		.L11573
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L714:
	.sleb128	8
	.byte		"Os_ApiNextScheduleTable"
	.byte		0
	.4byte		.L11575
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L715:
	.sleb128	8
	.byte		"Os_ApiStartScheduleTableSynchron"
	.byte		0
	.4byte		.L11577
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L716:
	.sleb128	8
	.byte		"Os_ApiSyncScheduleTable"
	.byte		0
	.4byte		.L11579
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L717:
	.sleb128	8
	.byte		"Os_ApiSetScheduleTableAsync"
	.byte		0
	.4byte		.L11581
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L718:
	.sleb128	8
	.byte		"Os_ApiCheckObjectAccess"
	.byte		0
	.4byte		.L11583
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L719:
	.sleb128	8
	.byte		"Os_ApiCheckObjectOwnership"
	.byte		0
	.4byte		.L11585
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L720:
	.sleb128	8
	.byte		"Os_ApiCallTrustedFunction"
	.byte		0
	.4byte		.L11587
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L721:
	.sleb128	8
	.byte		"Os_ApiStackUsage"
	.byte		0
	.4byte		.L11589
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L722:
	.sleb128	8
	.byte		"Os_API_GetSpinlock"
	.byte		0
	.4byte		.L11591
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L723:
	.sleb128	8
	.byte		"Os_API_ReleaseSpinlock"
	.byte		0
	.4byte		.L11593
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L724:
	.sleb128	8
	.byte		"Os_API_TryToGetSpinlock"
	.byte		0
	.4byte		.L11595
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L725:
	.sleb128	8
	.byte		"Os_API_IOCTransfer"
	.byte		0
	.4byte		.L11597
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L726:
	.sleb128	8
	.byte		"Os_ApiControlIdle"
	.byte		0
	.4byte		.L11599
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11504:
.L11600:
	.sleb128	7
	.4byte		.L11470
	.uleb128	60
	.uleb128	1
	.4byte		.L11601-.L2
	.uleb128	8
.L677:
	.sleb128	8
	.byte		"CoreID"
	.byte		0
	.4byte		.L11381
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L678:
	.sleb128	8
	.byte		"IdleMode"
	.byte		0
	.4byte		.L11602
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11601:
.L11598:
	.sleb128	7
	.4byte		.L11470
	.uleb128	60
	.uleb128	1
	.4byte		.L11604-.L2
	.uleb128	8
.L675:
	.sleb128	8
	.byte		"Ioc_Channel"
	.byte		0
	.4byte		.L11605
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L676:
	.sleb128	8
	.byte		"Ioc_Data"
	.byte		0
	.4byte		.L11609
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11604:
.L11596:
	.sleb128	7
	.4byte		.L11470
	.uleb128	60
	.uleb128	1
	.4byte		.L11615-.L2
	.uleb128	8
.L673:
	.sleb128	8
	.byte		"SpinlockId"
	.byte		0
	.4byte		.L11616
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L674:
	.sleb128	8
	.byte		"Success"
	.byte		0
	.4byte		.L11617
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11615:
.L11594:
	.sleb128	7
	.4byte		.L11470
	.uleb128	60
	.uleb128	1
	.4byte		.L11620-.L2
	.uleb128	2
.L672:
	.sleb128	8
	.byte		"SpinlockId"
	.byte		0
	.4byte		.L11616
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11620:
.L11592:
	.sleb128	7
	.4byte		.L11470
	.uleb128	60
	.uleb128	1
	.4byte		.L11621-.L2
	.uleb128	2
.L671:
	.sleb128	8
	.byte		"SpinlockId"
	.byte		0
	.4byte		.L11616
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11621:
.L11590:
	.sleb128	7
	.4byte		.L11470
	.uleb128	60
	.uleb128	1
	.4byte		.L11622-.L2
	.uleb128	20
.L666:
	.sleb128	8
	.byte		"ProcId"
	.byte		0
	.4byte		.L11399
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L667:
	.sleb128	8
	.byte		"MaxUsage"
	.byte		0
	.4byte		.L11391
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L668:
	.sleb128	8
	.byte		"MaxUsageRef"
	.byte		0
	.4byte		.L11623
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L669:
	.sleb128	8
	.byte		"CurrentUsage"
	.byte		0
	.4byte		.L11391
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L670:
	.sleb128	8
	.byte		"CurrentUsageRef"
	.byte		0
	.4byte		.L11623
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11622:
.L11588:
	.sleb128	7
	.4byte		.L11470
	.uleb128	60
	.uleb128	1
	.4byte		.L11624-.L2
	.uleb128	12
.L663:
	.sleb128	8
	.byte		"FunctionIndex"
	.byte		0
	.4byte		.L11625
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L664:
	.sleb128	8
	.byte		"ParamRef"
	.byte		0
	.4byte		.L11626
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L665:
	.sleb128	8
	.byte		"ReturnValue"
	.byte		0
	.4byte		.L11627
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11624:
.L11586:
	.sleb128	7
	.4byte		.L11470
	.uleb128	60
	.uleb128	1
	.4byte		.L11629-.L2
	.uleb128	12
.L660:
	.sleb128	8
	.byte		"AppID"
	.byte		0
	.4byte		.L11630
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L661:
	.sleb128	8
	.byte		"ObjectType"
	.byte		0
	.4byte		.L11631
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L662:
	.sleb128	8
	.byte		"Object"
	.byte		0
	.4byte		.L11401
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11629:
.L11584:
	.sleb128	7
	.4byte		.L11470
	.uleb128	60
	.uleb128	1
	.4byte		.L11633-.L2
	.uleb128	12
.L657:
	.sleb128	8
	.byte		"AppID"
	.byte		0
	.4byte		.L11630
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L658:
	.sleb128	8
	.byte		"ObjectType"
	.byte		0
	.4byte		.L11631
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L659:
	.sleb128	8
	.byte		"Object"
	.byte		0
	.4byte		.L11401
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11633:
.L11550:
	.sleb128	7
	.4byte		.L11470
	.uleb128	60
	.uleb128	1
	.4byte		.L11634-.L2
	.uleb128	4
.L656:
	.sleb128	8
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11635
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11634:
.L11548:
	.sleb128	7
	.4byte		.L11470
	.uleb128	60
	.uleb128	1
	.4byte		.L11636-.L2
	.uleb128	12
.L653:
	.sleb128	8
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11635
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L654:
	.sleb128	8
	.byte		"Start"
	.byte		0
	.4byte		.L11637
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L655:
	.sleb128	8
	.byte		"Cycle"
	.byte		0
	.4byte		.L11637
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11636:
.L11546:
	.sleb128	7
	.4byte		.L11470
	.uleb128	60
	.uleb128	1
	.4byte		.L11638-.L2
	.uleb128	12
.L650:
	.sleb128	8
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11635
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L651:
	.sleb128	8
	.byte		"Increment"
	.byte		0
	.4byte		.L11637
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L652:
	.sleb128	8
	.byte		"Cycle"
	.byte		0
	.4byte		.L11637
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11638:
.L11544:
	.sleb128	7
	.4byte		.L11470
	.uleb128	60
	.uleb128	1
	.4byte		.L11639-.L2
	.uleb128	8
.L648:
	.sleb128	8
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11635
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L649:
	.sleb128	8
	.byte		"TickRef"
	.byte		0
	.4byte		.L11640
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11639:
.L11542:
	.sleb128	7
	.4byte		.L11470
	.uleb128	60
	.uleb128	1
	.4byte		.L11642-.L2
	.uleb128	8
.L646:
	.sleb128	8
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11635
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L647:
	.sleb128	8
	.byte		"AlarmBaseTypeRef"
	.byte		0
	.4byte		.L11643
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11642:
.L11582:
	.sleb128	7
	.4byte		.L11470
	.uleb128	60
	.uleb128	1
	.4byte		.L11647-.L2
	.uleb128	4
.L645:
	.sleb128	8
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11648
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11647:
.L11580:
	.sleb128	7
	.4byte		.L11470
	.uleb128	60
	.uleb128	1
	.4byte		.L11649-.L2
	.uleb128	8
.L643:
	.sleb128	8
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11648
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L644:
	.sleb128	8
	.byte		"SyncValue"
	.byte		0
	.4byte		.L11637
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11649:
.L11578:
	.sleb128	7
	.4byte		.L11470
	.uleb128	60
	.uleb128	1
	.4byte		.L11650-.L2
	.uleb128	4
.L642:
	.sleb128	8
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11648
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11650:
.L11576:
	.sleb128	7
	.4byte		.L11470
	.uleb128	60
	.uleb128	1
	.4byte		.L11651-.L2
	.uleb128	8
.L640:
	.sleb128	8
	.byte		"SchTblIdFrom"
	.byte		0
	.4byte		.L11648
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L641:
	.sleb128	8
	.byte		"SchTblIdTo"
	.byte		0
	.4byte		.L11648
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11651:
.L11574:
	.sleb128	7
	.4byte		.L11470
	.uleb128	60
	.uleb128	1
	.4byte		.L11652-.L2
	.uleb128	8
.L638:
	.sleb128	8
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11648
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L639:
	.sleb128	8
	.byte		"SchTblStatus"
	.byte		0
	.4byte		.L11653
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11652:
.L11572:
	.sleb128	7
	.4byte		.L11470
	.uleb128	60
	.uleb128	1
	.4byte		.L11657-.L2
	.uleb128	4
.L637:
	.sleb128	8
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11648
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11657:
.L11570:
	.sleb128	7
	.4byte		.L11470
	.uleb128	60
	.uleb128	1
	.4byte		.L11658-.L2
	.uleb128	8
.L635:
	.sleb128	8
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11648
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L636:
	.sleb128	8
	.byte		"Offset"
	.byte		0
	.4byte		.L11637
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11658:
.L11568:
	.sleb128	7
	.4byte		.L11470
	.uleb128	60
	.uleb128	1
	.4byte		.L11659-.L2
	.uleb128	8
.L633:
	.sleb128	8
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11648
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L634:
	.sleb128	8
	.byte		"Start"
	.byte		0
	.4byte		.L11637
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11659:
.L11566:
	.sleb128	7
	.4byte		.L11470
	.uleb128	60
	.uleb128	1
	.4byte		.L11660-.L2
	.uleb128	12
.L630:
	.sleb128	8
	.byte		"CounterId"
	.byte		0
	.4byte		.L11661
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L631:
	.sleb128	8
	.byte		"ValuePtr"
	.byte		0
	.4byte		.L11640
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L632:
	.sleb128	8
	.byte		"ElapsedValuePtr"
	.byte		0
	.4byte		.L11640
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11660:
.L11564:
	.sleb128	7
	.4byte		.L11470
	.uleb128	60
	.uleb128	1
	.4byte		.L11662-.L2
	.uleb128	12
.L627:
	.sleb128	8
	.byte		"CounterId"
	.byte		0
	.4byte		.L11661
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L628:
	.sleb128	8
	.byte		"ValuePtr"
	.byte		0
	.4byte		.L11640
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L629:
	.sleb128	8
	.byte		"LightServiceFunction"
	.byte		0
	.4byte		.L11663
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11662:
.L11562:
	.sleb128	7
	.4byte		.L11470
	.uleb128	60
	.uleb128	1
	.4byte		.L11667-.L2
	.uleb128	4
.L626:
	.sleb128	8
	.byte		"CounterId"
	.byte		0
	.4byte		.L11661
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11667:
.L11558:
	.sleb128	7
	.4byte		.L11470
	.uleb128	60
	.uleb128	1
	.4byte		.L11668-.L2
	.uleb128	4
.L625:
	.sleb128	8
	.byte		"ISRId"
	.byte		0
	.4byte		.L11490
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11668:
.L11554:
	.sleb128	7
	.4byte		.L11470
	.uleb128	60
	.uleb128	1
	.4byte		.L11669-.L2
	.uleb128	2
.L623:
	.sleb128	8
	.byte		"Application"
	.byte		0
	.4byte		.L11630
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L624:
	.sleb128	8
	.byte		"RestartOption"
	.byte		0
	.4byte		.L11670
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
	.sleb128	0
.L11669:
.L11556:
	.sleb128	7
	.4byte		.L11470
	.uleb128	60
	.uleb128	1
	.4byte		.L11671-.L2
	.uleb128	1
.L622:
	.sleb128	8
	.byte		"Application"
	.byte		0
	.4byte		.L11630
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11671:
.L11552:
	.sleb128	7
	.4byte		.L11470
	.uleb128	60
	.uleb128	1
	.4byte		.L11672-.L2
	.uleb128	8
.L620:
	.sleb128	8
	.byte		"Application"
	.byte		0
	.4byte		.L11630
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L621:
	.sleb128	8
	.byte		"AppStateRef"
	.byte		0
	.4byte		.L11673
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11672:
.L11536:
	.sleb128	7
	.4byte		.L11470
	.uleb128	60
	.uleb128	1
	.4byte		.L11676-.L2
	.uleb128	8
.L619:
	.sleb128	8
	.byte		"EventMask"
	.byte		0
	.4byte		.L11677
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11676:
.L11534:
	.sleb128	7
	.4byte		.L11470
	.uleb128	60
	.uleb128	1
	.4byte		.L11680-.L2
	.uleb128	24
.L616:
	.sleb128	8
	.byte		"TaskId"
	.byte		0
	.4byte		.L11399
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L617:
	.sleb128	8
	.byte		"EventMask"
	.byte		0
	.4byte		.L11677
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L618:
	.sleb128	8
	.byte		"EventMaskRef"
	.byte		0
	.4byte		.L11681
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11680:
.L11532:
	.sleb128	7
	.4byte		.L11470
	.uleb128	60
	.uleb128	1
	.4byte		.L11683-.L2
	.uleb128	8
.L615:
	.sleb128	8
	.byte		"EventMask"
	.byte		0
	.4byte		.L11677
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11683:
.L11530:
	.sleb128	7
	.4byte		.L11470
	.uleb128	60
	.uleb128	1
	.4byte		.L11684-.L2
	.uleb128	16
.L613:
	.sleb128	8
	.byte		"TaskId"
	.byte		0
	.4byte		.L11399
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L614:
	.sleb128	8
	.byte		"EventMask"
	.byte		0
	.4byte		.L11677
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11684:
.L11528:
	.sleb128	7
	.4byte		.L11470
	.uleb128	60
	.uleb128	1
	.4byte		.L11685-.L2
	.uleb128	8
.L611:
	.sleb128	8
	.byte		"TaskId"
	.byte		0
	.4byte		.L11399
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L612:
	.sleb128	8
	.byte		"TaskStateRef"
	.byte		0
	.4byte		.L11686
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11685:
.L11526:
	.sleb128	7
	.4byte		.L11470
	.uleb128	60
	.uleb128	1
	.4byte		.L11690-.L2
	.uleb128	4
.L610:
	.sleb128	8
	.byte		"TaskIdRef"
	.byte		0
	.4byte		.L11691
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11690:
.L11524:
	.sleb128	7
	.4byte		.L11470
	.uleb128	60
	.uleb128	1
	.4byte		.L11693-.L2
	.uleb128	4
.L609:
	.sleb128	8
	.byte		"TaskId"
	.byte		0
	.4byte		.L11399
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11693:
.L11522:
	.sleb128	7
	.4byte		.L11470
	.uleb128	60
	.uleb128	1
	.4byte		.L11694-.L2
	.uleb128	4
.L608:
	.sleb128	8
	.byte		"TaskId"
	.byte		0
	.4byte		.L11399
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11694:
.L11540:
	.sleb128	7
	.4byte		.L11470
	.uleb128	60
	.uleb128	1
	.4byte		.L11695-.L2
	.uleb128	4
.L607:
	.sleb128	8
	.byte		"ResourceId"
	.byte		0
	.4byte		.L11696
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11695:
.L11538:
	.sleb128	7
	.4byte		.L11470
	.uleb128	60
	.uleb128	1
	.4byte		.L11697-.L2
	.uleb128	4
.L606:
	.sleb128	8
	.byte		"ResourceId"
	.byte		0
	.4byte		.L11696
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11697:
.L11560:
	.sleb128	7
	.4byte		.L11470
	.uleb128	60
	.uleb128	1
	.4byte		.L11698-.L2
	.uleb128	4
.L605:
	.sleb128	8
	.byte		"AppMode"
	.byte		0
	.4byte		.L11699
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11698:
.L11520:
	.sleb128	7
	.4byte		.L11470
	.uleb128	60
	.uleb128	1
	.4byte		.L11700-.L2
	.uleb128	2
.L604:
	.sleb128	8
	.byte		"CoreID"
	.byte		0
	.4byte		.L11381
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11700:
.L11514:
	.sleb128	7
	.4byte		.L11470
	.uleb128	60
	.uleb128	1
	.4byte		.L11701-.L2
	.uleb128	2
.L603:
	.sleb128	8
	.byte		"NumberOfActivatedCores"
	.byte		0
	.4byte		.L11381
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11701:
.L11512:
	.sleb128	7
	.4byte		.L11470
	.uleb128	60
	.uleb128	1
	.4byte		.L11702-.L2
	.uleb128	1
.L602:
	.sleb128	8
	.byte		"Error"
	.byte		0
	.4byte		.L11390
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11702:
.L11510:
	.sleb128	7
	.4byte		.L11470
	.uleb128	60
	.uleb128	1
	.4byte		.L11703-.L2
	.uleb128	8
.L600:
	.sleb128	8
	.byte		"ShutdownType"
	.byte		0
	.4byte		.L11704
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L601:
	.sleb128	8
	.byte		"Error"
	.byte		0
	.4byte		.L11390
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11703:
.L11508:
	.sleb128	7
	.4byte		.L11470
	.uleb128	60
	.uleb128	1
	.4byte		.L11706-.L2
	.uleb128	1
.L599:
	.sleb128	8
	.byte		"Error"
	.byte		0
	.4byte		.L11390
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11706:
.L11518:
	.sleb128	7
	.4byte		.L11470
	.uleb128	60
	.uleb128	1
	.4byte		.L11707-.L2
	.uleb128	8
.L597:
	.sleb128	8
	.byte		"CoreID"
	.byte		0
	.4byte		.L11381
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L598:
	.sleb128	8
	.byte		"StatusRef"
	.byte		0
	.4byte		.L11708
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11707:
.L11516:
	.sleb128	7
	.4byte		.L11470
	.uleb128	60
	.uleb128	1
	.4byte		.L11709-.L2
	.uleb128	8
.L595:
	.sleb128	8
	.byte		"CoreID"
	.byte		0
	.4byte		.L11381
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L596:
	.sleb128	8
	.byte		"StatusRef"
	.byte		0
	.4byte		.L11708
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11709:
.L11506:
	.sleb128	7
	.4byte		.L11470
	.uleb128	60
	.uleb128	1
	.4byte		.L11710-.L2
	.uleb128	4
.L594:
	.sleb128	8
	.byte		"AppMode"
	.byte		0
	.4byte		.L11699
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11710:
.L11608:
	.sleb128	7
	.4byte		.L11711
	.uleb128	33
	.uleb128	14
	.4byte		.L11712-.L2
	.uleb128	24
.L587:
	.sleb128	8
	.byte		"Os_IOC_ChannelDyn"
	.byte		0
	.4byte		.L11713
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L588:
	.sleb128	8
	.byte		"Os_IOC_ChannelLength"
	.byte		0
	.4byte		.L11717
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L589:
	.sleb128	8
	.byte		"Os_IOC_ChannelBuffer"
	.byte		0
	.4byte		.L11718
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L590:
	.sleb128	8
	.byte		"Os_IOC_ChannelElementSize"
	.byte		0
	.4byte		.L11719
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L591:
	.sleb128	8
	.byte		"Os_IOC_DataCount"
	.byte		0
	.4byte		.L11720
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L592:
	.sleb128	8
	.byte		"Os_IOC_DataDescriptor"
	.byte		0
	.4byte		.L11722
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L593:
	.sleb128	8
	.byte		"Os_IOC_LockResourceAddress"
	.byte		0
	.4byte		.L11727
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L11712:
.L11726:
	.sleb128	7
	.4byte		.L11711
	.uleb128	33
	.uleb128	14
	.4byte		.L11730-.L2
	.uleb128	4
.L583:
	.sleb128	8
	.byte		"Os_IOC_DataLength"
	.byte		0
	.4byte		.L11731
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L584:
	.sleb128	8
	.byte		"Os_IOC_DataOffset"
	.byte		0
	.4byte		.L11733
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L11730:
.L11716:
	.sleb128	7
	.4byte		.L11711
	.uleb128	33
	.uleb128	14
	.4byte		.L11735-.L2
	.uleb128	6
.L580:
	.sleb128	8
	.byte		"Os_IOC_ChannelHead"
	.byte		0
	.4byte		.L11717
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L581:
	.sleb128	8
	.byte		"Os_IOC_ChannelMessageCount"
	.byte		0
	.4byte		.L11717
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L582:
	.sleb128	8
	.byte		"Os_IOC_Status"
	.byte		0
	.4byte		.L11390
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11735:
.L11460:
	.sleb128	7
	.4byte		.L11736
	.uleb128	34
	.uleb128	14
	.4byte		.L11737-.L2
	.uleb128	2
.L531:
	.sleb128	8
	.byte		"Os_HookID"
	.byte		0
	.4byte		.L11738
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11737:
.L11397:
	.sleb128	9
	.4byte		.L11408
	.uleb128	80
	.uleb128	13
	.4byte		.L11739-.L2
	.byte		"Os_ProcStatType_s"
	.byte		0
	.uleb128	80
.L513:
	.sleb128	8
	.byte		"Os_ProcId"
	.byte		0
	.4byte		.L11740
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L514:
	.sleb128	8
	.byte		"Os_ProcCoreID"
	.byte		0
	.4byte		.L11380
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L515:
	.sleb128	8
	.byte		"Os_ProcDyn"
	.byte		0
	.4byte		.L11741
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L516:
	.sleb128	8
	.byte		"Os_ProcStack"
	.byte		0
	.4byte		.L11745
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L517:
	.sleb128	8
	.byte		"Os_ProcKind"
	.byte		0
	.4byte		.L11750
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L518:
	.sleb128	8
	.byte		"Os_ProcEventRights"
	.byte		0
	.4byte		.L11753
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L519:
	.sleb128	8
	.byte		"Os_ProcPriority"
	.byte		0
	.4byte		.L11754
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L520:
	.sleb128	8
	.byte		"Os_ProcRunPriority"
	.byte		0
	.4byte		.L11754
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L521:
	.sleb128	8
	.byte		"Os_ProcMaxActivations"
	.byte		0
	.4byte		.L11755
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L522:
	.sleb128	8
	.byte		"Os_ProcContext"
	.byte		0
	.4byte		.L11757
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L523:
	.sleb128	8
	.byte		"Os_ProcOwnerApp"
	.byte		0
	.4byte		.L11758
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L524:
	.sleb128	8
	.byte		"Os_ProcAppAccess"
	.byte		0
	.4byte		.L11759
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L525:
	.sleb128	8
	.byte		"Os_ProcEntryPoint"
	.byte		0
	.4byte		.L11763
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L526:
	.sleb128	8
	.byte		"Os_ProcAutoStart"
	.byte		0
	.4byte		.L11759
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
.L527:
	.sleb128	8
	.byte		"Os_ProcResourceCount"
	.byte		0
	.4byte		.L11768
	.sleb128	2
	.byte		0x23
	.uleb128	64
	.byte		0x1
.L528:
	.sleb128	8
	.byte		"Os_ProcResourceStack"
	.byte		0
	.4byte		.L11769
	.sleb128	2
	.byte		0x23
	.uleb128	68
	.byte		0x1
.L529:
	.sleb128	8
	.byte		"Os_ProcQueueElements"
	.byte		0
	.4byte		.L11775
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.byte		0x1
.L530:
	.sleb128	8
	.byte		"Os_ProcIsrPlatformConfig"
	.byte		0
	.4byte		.L11776
	.sleb128	2
	.byte		0x23
	.uleb128	76
	.byte		0x1
	.sleb128	0
.L11739:
.L11749:
	.sleb128	9
	.4byte		.L11408
	.uleb128	80
	.uleb128	13
	.4byte		.L11777-.L2
	.byte		"Os_ProcStackStruct"
	.byte		0
	.uleb128	8
.L511:
	.sleb128	8
	.byte		"Os_ProcStackSize"
	.byte		0
	.4byte		.L11778
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L512:
	.sleb128	8
	.byte		"Os_ProcStackBase"
	.byte		0
	.4byte		.L11757
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11777:
.L11744:
	.sleb128	7
	.4byte		.L11408
	.uleb128	80
	.uleb128	13
	.4byte		.L11780-.L2
	.uleb128	56
.L498:
	.sleb128	8
	.byte		"Os_ProcState"
	.byte		0
	.4byte		.L11688
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L499:
	.sleb128	8
	.byte		"Os_ProcContextState"
	.byte		0
	.4byte		.L11781
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L500:
	.sleb128	8
	.byte		"Os_ProcEvents"
	.byte		0
	.4byte		.L11677
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L501:
	.sleb128	8
	.byte		"Os_ProcEventWaitingFor"
	.byte		0
	.4byte		.L11677
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L502:
	.sleb128	8
	.byte		"Os_ProcActivations"
	.byte		0
	.4byte		.L11756
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L503:
	.sleb128	8
	.byte		"Os_ProcResourcesAllocated"
	.byte		0
	.4byte		.L11696
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L504:
	.sleb128	8
	.byte		"Os_ProcEnabled"
	.byte		0
	.4byte		.L11391
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L505:
	.sleb128	8
	.byte		"Os_ProcCurrentApp"
	.byte		0
	.4byte		.L11450
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L506:
	.sleb128	8
	.byte		"Os_ProcSpinlock"
	.byte		0
	.4byte		.L11783
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L507:
	.sleb128	8
	.byte		"Os_ProcFreeQueueElements"
	.byte		0
	.4byte		.L11472
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L508:
	.sleb128	8
	.byte		"Os_ProcCurrentPriority"
	.byte		0
	.4byte		.L11467
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L509:
	.sleb128	8
	.byte		"Os_ProcTFCallCount"
	.byte		0
	.4byte		.L11391
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L510:
	.sleb128	8
	.byte		"Os_FatalErrorOccured"
	.byte		0
	.4byte		.L11390
	.sleb128	2
	.byte		0x23
	.uleb128	53
	.byte		0x1
	.sleb128	0
.L11780:
.L11785:
	.sleb128	9
	.4byte		.L11786
	.uleb128	52
	.uleb128	1
	.4byte		.L11787-.L2
	.byte		"Os_SpinlockStatType_s"
	.byte		0
	.uleb128	16
.L450:
	.sleb128	8
	.byte		"Os_SpinlockId"
	.byte		0
	.4byte		.L11788
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L451:
	.sleb128	8
	.byte		"Os_SpinlockChainId"
	.byte		0
	.4byte		.L11788
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L452:
	.sleb128	8
	.byte		"Os_SpinlockDyn"
	.byte		0
	.4byte		.L11789
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L453:
	.sleb128	8
	.byte		"Os_SpinlockAccess"
	.byte		0
	.4byte		.L11759
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L454:
	.sleb128	8
	.byte		"Os_SpinlockLockResourceAddress"
	.byte		0
	.4byte		.L11727
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L11787:
.L11792:
	.sleb128	7
	.4byte		.L11786
	.uleb128	52
	.uleb128	1
	.4byte		.L11793-.L2
	.uleb128	12
.L447:
	.sleb128	8
	.byte		"Os_SpinlockLockerProc"
	.byte		0
	.4byte		.L11462
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L448:
	.sleb128	8
	.byte		"Os_SpinlockSuperseded"
	.byte		0
	.4byte		.L11783
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L449:
	.sleb128	8
	.byte		"Os_ResourceDependency"
	.byte		0
	.4byte		.L11771
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11793:
.L11453:
	.sleb128	9
	.4byte		.L11786
	.uleb128	52
	.uleb128	1
	.4byte		.L11794-.L2
	.byte		"Os_ApplicationStatType_s"
	.byte		0
	.uleb128	48
.L435:
	.sleb128	8
	.byte		"Os_AppDyn"
	.byte		0
	.4byte		.L11795
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L436:
	.sleb128	8
	.byte		"Os_AppId"
	.byte		0
	.4byte		.L11799
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L437:
	.sleb128	8
	.byte		"Os_AppRestartTask"
	.byte		0
	.4byte		.L11740
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L438:
	.sleb128	8
	.byte		"Os_AppKind"
	.byte		0
	.4byte		.L11800
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L439:
	.sleb128	8
	.byte		"Os_AppShutdownHook"
	.byte		0
	.4byte		.L11803
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L440:
	.sleb128	8
	.byte		"Os_AppStartupHook"
	.byte		0
	.4byte		.L11808
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L441:
	.sleb128	8
	.byte		"Os_AppErrorHook"
	.byte		0
	.4byte		.L11813
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L442:
	.sleb128	8
	.byte		"Os_AppProcIDs"
	.byte		0
	.4byte		.L11818
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L443:
	.sleb128	8
	.byte		"Os_AppCounterIDs"
	.byte		0
	.4byte		.L11821
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L444:
	.sleb128	8
	.byte		"Os_AppAlarmIDs"
	.byte		0
	.4byte		.L11824
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L445:
	.sleb128	8
	.byte		"Os_AppSchTblIDs"
	.byte		0
	.4byte		.L11827
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L446:
	.sleb128	8
	.byte		"Os_CoreAssigment"
	.byte		0
	.4byte		.L11380
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
	.sleb128	0
.L11794:
.L11798:
	.sleb128	7
	.4byte		.L11786
	.uleb128	52
	.uleb128	1
	.4byte		.L11830-.L2
	.uleb128	1
.L434:
	.sleb128	8
	.byte		"Os_AppState"
	.byte		0
	.4byte		.L11675
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11830:
.L11774:
	.sleb128	7
	.4byte		.L11831
	.uleb128	32
	.uleb128	1
	.4byte		.L11832-.L2
	.uleb128	12
.L431:
	.sleb128	8
	.byte		"Os_ResourcePriority"
	.byte		0
	.4byte		.L11754
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L432:
	.sleb128	8
	.byte		"Os_ResourceAccessRights"
	.byte		0
	.4byte		.L11760
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L433:
	.sleb128	8
	.byte		"Os_ResourceDyn"
	.byte		0
	.4byte		.L11833
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11832:
.L11835:
	.sleb128	7
	.4byte		.L11831
	.uleb128	32
	.uleb128	1
	.4byte		.L11836-.L2
	.uleb128	4
.L430:
	.sleb128	8
	.byte		"Os_LockerProc"
	.byte		0
	.4byte		.L11462
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11836:
.L11484:
	.sleb128	7
	.4byte		.L11831
	.uleb128	32
	.uleb128	1
	.4byte		.L11837-.L2
	.uleb128	24
.L419:
	.sleb128	8
	.byte		"Os_DisAllInt"
	.byte		0
	.4byte		.L11838
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L420:
	.sleb128	8
	.byte		"Os_EnAllInt"
	.byte		0
	.4byte		.L11838
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L421:
	.sleb128	8
	.byte		"Os_SusAllInt"
	.byte		0
	.4byte		.L11838
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L422:
	.sleb128	8
	.byte		"Os_ResAllInt"
	.byte		0
	.4byte		.L11838
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L423:
	.sleb128	8
	.byte		"Os_SusOsInt"
	.byte		0
	.4byte		.L11838
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L424:
	.sleb128	8
	.byte		"Os_ResOsInt"
	.byte		0
	.4byte		.L11838
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L11837:
.L11646:
	.sleb128	7
	.4byte		.L11843
	.uleb128	50
	.uleb128	1
	.4byte		.L11844-.L2
	.uleb128	12
.L378:
	.sleb128	8
	.byte		"maxallowedvalue"
	.byte		0
	.4byte		.L11637
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L379:
	.sleb128	8
	.byte		"ticksperbase"
	.byte		0
	.4byte		.L11637
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L380:
	.sleb128	8
	.byte		"mincycle"
	.byte		0
	.4byte		.L11637
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11844:
.L11480:
	.sleb128	7
	.4byte		.L11845
	.uleb128	87
	.uleb128	7
	.4byte		.L11846-.L2
	.uleb128	8
.L366:
	.sleb128	8
	.byte		"Os_IsrPltId"
	.byte		0
	.4byte		.L11847
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L367:
	.sleb128	8
	.byte		"Os_IsrPltLevel"
	.byte		0
	.4byte		.L11848
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11846:
	.section	.debug_info,,n
.L11378:
	.sleb128	11
	.4byte		.L11850
	.uleb128	155
	.uleb128	1
	.4byte		.L11851-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	12
	.byte		"Os_Isr_Enabled"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"Os_Isr_Disabled"
	.byte		0
	.sleb128	1
	.sleb128	0
.L11851:
.L11466:
	.sleb128	11
	.4byte		.L11418
	.uleb128	69
	.uleb128	1
	.4byte		.L11852-.L2
	.uleb128	4
	.sleb128	12
	.byte		"Os_Return"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"Os_Load"
	.byte		0
	.sleb128	1
	.sleb128	12
	.byte		"Os_SaveAndLoad"
	.byte		0
	.sleb128	2
	.sleb128	12
	.byte		"Os_SaveAndIdle"
	.byte		0
	.sleb128	3
	.sleb128	12
	.byte		"Os_Idle"
	.byte		0
	.sleb128	4
	.sleb128	0
.L11852:
.L11489:
	.sleb128	11
	.4byte		.L11470
	.uleb128	612
	.uleb128	1
	.4byte		.L11853-.L2
	.uleb128	4
	.sleb128	12
	.byte		"OS_DISPATCH_JUSTSCHEDULE"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"OS_DISPATCH_API"
	.byte		0
	.sleb128	1
	.sleb128	12
	.byte		"OS_DISPATCH_INTERRUPT"
	.byte		0
	.sleb128	2
	.sleb128	12
	.byte		"OS_DISPATCH_APIRE"
	.byte		0
	.sleb128	3
	.sleb128	12
	.byte		"OS_DISPATCH_INTERNAL"
	.byte		0
	.sleb128	4
	.sleb128	12
	.byte		"OS_DISPATCH_INTERNALCROSS"
	.byte		0
	.sleb128	5
	.sleb128	12
	.byte		"OS_DISPATCH_INVALID"
	.byte		0
	.sleb128	6
	.sleb128	0
.L11853:
.L11496:
	.sleb128	11
	.4byte		.L11470
	.uleb128	60
	.uleb128	1
	.4byte		.L11854-.L2
	.uleb128	4
	.sleb128	12
	.byte		"OS_DISPATCH_SINGLE"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"OS_DISPATCH_MULTI"
	.byte		0
	.sleb128	1
	.sleb128	12
	.byte		"OS_DISPATCH_ALL"
	.byte		0
	.sleb128	2
	.sleb128	0
.L11854:
	.section	.debug_info,,n
.L11628:
	.sleb128	13
	.4byte		.L11711
	.uleb128	33
	.uleb128	14
	.4byte		.L11855-.L2
	.byte		"TrustedFunctionReturnValueType_e"
	.byte		0
	.uleb128	4
	.sleb128	12
	.byte		"TRUSTEDFUNCTION_RETURN_VALUE_NONE"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"TRUSTEDFUNCTION_RETURN_VALUE_SCHEDULE"
	.byte		0
	.sleb128	1
	.sleb128	0
.L11855:
.L11782:
	.sleb128	11
	.4byte		.L11408
	.uleb128	80
	.uleb128	13
	.4byte		.L11856-.L2
	.uleb128	4
	.sleb128	12
	.byte		"Os_ProcContextInvalid"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"Os_ProcContextActive"
	.byte		0
	.sleb128	1
	.sleb128	12
	.byte		"Os_ProcContextPrepared"
	.byte		0
	.sleb128	2
	.sleb128	0
.L11856:
.L11752:
	.sleb128	11
	.4byte		.L11408
	.uleb128	61
	.uleb128	1
	.4byte		.L11857-.L2
	.uleb128	4
	.sleb128	12
	.byte		"Os_Proc_Task"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"Os_Proc_ISR_CAT2"
	.byte		0
	.sleb128	1
	.sleb128	0
.L11857:
.L11802:
	.sleb128	11
	.4byte		.L11786
	.uleb128	52
	.uleb128	1
	.4byte		.L11858-.L2
	.uleb128	4
	.sleb128	12
	.byte		"OS_TRUSTED"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"OS_NONTRUSTED"
	.byte		0
	.sleb128	1
	.sleb128	0
.L11858:
.L11619:
	.sleb128	11
	.4byte		.L11859
	.uleb128	43
	.uleb128	1
	.4byte		.L11860-.L2
	.uleb128	4
	.sleb128	12
	.byte		"TRYTOGETSPINLOCK_SUCCESS"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"TRYTOGETSPINLOCK_NOSUCCESS"
	.byte		0
	.sleb128	1
	.sleb128	0
.L11860:
.L11689:
	.sleb128	11
	.4byte		.L11861
	.uleb128	37
	.uleb128	1
	.4byte		.L11862-.L2
	.uleb128	4
	.sleb128	12
	.byte		"RUNNING"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"WAITING"
	.byte		0
	.sleb128	1
	.sleb128	12
	.byte		"READY"
	.byte		0
	.sleb128	2
	.sleb128	12
	.byte		"SUSPENDED"
	.byte		0
	.sleb128	3
	.sleb128	0
.L11862:
.L11656:
	.sleb128	11
	.4byte		.L11863
	.uleb128	40
	.uleb128	1
	.4byte		.L11864-.L2
	.uleb128	4
	.sleb128	12
	.byte		"SCHEDULETABLE_STOPPED"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"SCHEDULETABLE_NEXT"
	.byte		0
	.sleb128	1
	.sleb128	12
	.byte		"SCHEDULETABLE_WAITING"
	.byte		0
	.sleb128	2
	.sleb128	12
	.byte		"SCHEDULETABLE_RUNNING"
	.byte		0
	.sleb128	3
	.sleb128	12
	.byte		"SCHEDULETABLE_RUNNING_AND_SYNCHRONOUS"
	.byte		0
	.sleb128	4
	.sleb128	0
.L11864:
.L11632:
	.sleb128	11
	.4byte		.L11865
	.uleb128	47
	.uleb128	1
	.4byte		.L11866-.L2
	.uleb128	4
	.sleb128	12
	.byte		"OBJECT_TASK"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"OBJECT_ISR"
	.byte		0
	.sleb128	1
	.sleb128	12
	.byte		"OBJECT_ALARM"
	.byte		0
	.sleb128	2
	.sleb128	12
	.byte		"OBJECT_RESOURCE"
	.byte		0
	.sleb128	3
	.sleb128	12
	.byte		"OBJECT_COUNTER"
	.byte		0
	.sleb128	4
	.sleb128	12
	.byte		"OBJECT_SCHEDULETABLE"
	.byte		0
	.sleb128	5
	.sleb128	0
.L11866:
.L11705:
	.sleb128	11
	.4byte		.L11843
	.uleb128	42
	.uleb128	13
	.4byte		.L11867-.L2
	.uleb128	4
	.sleb128	12
	.byte		"OS_SHUTDOWN_INDIVIDUAL"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"OS_SHUTDOWN_SYNCHRONIZED"
	.byte		0
	.sleb128	1
	.sleb128	0
.L11867:
.L11603:
	.sleb128	11
	.4byte		.L11868
	.uleb128	83
	.uleb128	14
	.4byte		.L11869-.L2
	.uleb128	4
	.sleb128	12
	.byte		"IDLE_NO_HALT"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"IDLE_WAIT"
	.byte		0
	.sleb128	1
	.sleb128	12
	.byte		"IDLE_NUMBEROFOPTIONS"
	.byte		0
	.sleb128	2
	.sleb128	0
.L11869:
	.section	.debug_info,,n
.L11377:
	.sleb128	14
	.byte		"Os_IsrStateType"
	.byte		0
	.4byte		.L11378
	.section	.debug_info,,n
.L11383:
	.sleb128	15
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L11382:
	.sleb128	14
	.byte		"uint16"
	.byte		0
	.4byte		.L11383
.L11381:
	.sleb128	14
	.byte		"CoreIdType"
	.byte		0
	.4byte		.L11382
	.section	.debug_info,,n
.L11380:
	.sleb128	16
	.4byte		.L11381
.L11392:
	.sleb128	15
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L11391:
	.sleb128	14
	.byte		"uint8"
	.byte		0
	.4byte		.L11392
.L11390:
	.sleb128	14
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L11391
.L11396:
	.sleb128	14
	.byte		"Os_ProcStatType"
	.byte		0
	.4byte		.L11397
.L11395:
	.sleb128	16
	.4byte		.L11396
	.section	.debug_info,,n
.L11394:
	.sleb128	17
	.4byte		.L11395
.L11403:
	.sleb128	15
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L11402:
	.sleb128	14
	.byte		"uint32"
	.byte		0
	.4byte		.L11403
.L11401:
	.sleb128	14
	.byte		"Os_ObjectType"
	.byte		0
	.4byte		.L11402
.L11400:
	.sleb128	14
	.byte		"ProcType"
	.byte		0
	.4byte		.L11401
.L11399:
	.sleb128	14
	.byte		"TaskType"
	.byte		0
	.4byte		.L11400
	.section	.debug_info,,n
.L11409:
	.sleb128	18
	.4byte		.L11410-.L2
	.4byte		.L11395
	.section	.debug_info,,n
	.sleb128	19
	.sleb128	0
.L11410:
.L11416:
	.sleb128	14
	.byte		"Os_Core_StatType"
	.byte		0
	.4byte		.L11417
.L11415:
	.sleb128	16
	.4byte		.L11416
.L11413:
	.sleb128	18
	.4byte		.L11414-.L2
	.4byte		.L11415
	.section	.debug_info,,n
	.sleb128	20
	.uleb128	1
	.sleb128	0
.L11414:
.L11422:
	.sleb128	14
	.byte		"Os_Core_DynInitType"
	.byte		0
	.4byte		.L11423
.L11421:
	.sleb128	17
	.4byte		.L11422
.L11420:
	.sleb128	16
	.4byte		.L11421
.L11426:
	.sleb128	14
	.byte		"Os_Core_DynType"
	.byte		0
	.4byte		.L11427
.L11425:
	.sleb128	17
	.4byte		.L11426
.L11424:
	.sleb128	16
	.4byte		.L11425
.L11430:
	.sleb128	14
	.byte		"Os_DispatchElementType"
	.byte		0
	.4byte		.L11431
.L11429:
	.sleb128	17
	.4byte		.L11430
.L11428:
	.sleb128	16
	.4byte		.L11429
	.section	.debug_info,,n
.L11435:
	.sleb128	21
	.4byte		.L11436-.L2
	.byte		0x1
.L11437:
	.sleb128	16
	.4byte		.L11394
	.section	.debug_info,,n
	.sleb128	22
	.4byte		.L11437
	.sleb128	0
.L11436:
.L11434:
	.sleb128	17
	.4byte		.L11435
.L11433:
	.sleb128	14
	.byte		"Os_PrepareContextFunctionType"
	.byte		0
	.4byte		.L11434
.L11432:
	.sleb128	16
	.4byte		.L11433
.L11444:
	.sleb128	14
	.byte		"Os_StackType"
	.byte		0
	.4byte		.L11402
.L11443:
	.sleb128	17
	.4byte		.L11444
	.section	.debug_info,,n
.L11441:
	.sleb128	23
	.4byte		.L11442-.L2
	.4byte		.L11443
	.byte		0x1
	.sleb128	22
	.4byte		.L11394
	.sleb128	0
.L11442:
.L11440:
	.sleb128	17
	.4byte		.L11441
.L11439:
	.sleb128	14
	.byte		"Os_GetStackPointerFunctionType"
	.byte		0
	.4byte		.L11440
.L11438:
	.sleb128	16
	.4byte		.L11439
.L11446:
	.sleb128	14
	.byte		"Os_IsrDynInitType"
	.byte		0
	.4byte		.L11447
.L11448:
	.sleb128	14
	.byte		"Os_SchedulerDynInitType"
	.byte		0
	.4byte		.L11449
.L11452:
	.sleb128	14
	.byte		"Os_ApplicationStatType"
	.byte		0
	.4byte		.L11453
.L11451:
	.sleb128	16
	.4byte		.L11452
.L11450:
	.sleb128	17
	.4byte		.L11451
.L11455:
	.sleb128	14
	.byte		"Os_SchedulerDynType"
	.byte		0
	.4byte		.L11456
.L11457:
	.sleb128	14
	.byte		"Os_IsrDynType"
	.byte		0
	.4byte		.L11458
.L11459:
	.sleb128	14
	.byte		"Os_HooksDynType"
	.byte		0
	.4byte		.L11460
.L11463:
	.sleb128	16
	.4byte		.L11397
.L11462:
	.sleb128	17
	.4byte		.L11463
.L11465:
	.sleb128	14
	.byte		"Os_ScheduleType"
	.byte		0
	.4byte		.L11466
.L11467:
	.sleb128	14
	.byte		"Os_PriorityType"
	.byte		0
	.4byte		.L11402
.L11468:
	.sleb128	14
	.byte		"Os_SchedulerQueueElementType"
	.byte		0
	.4byte		.L11469
.L11472:
	.sleb128	17
	.4byte		.L11469
.L11474:
	.sleb128	14
	.byte		"Os_IsrRegister_t"
	.byte		0
	.4byte		.L11402
.L11475:
	.sleb128	14
	.byte		"boolean"
	.byte		0
	.4byte		.L11392
.L11479:
	.sleb128	14
	.byte		"Os_IsrPlatformConfigType"
	.byte		0
	.4byte		.L11480
.L11478:
	.sleb128	16
	.4byte		.L11479
.L11477:
	.sleb128	17
	.4byte		.L11478
.L11483:
	.sleb128	14
	.byte		"Os_IsrApiTable"
	.byte		0
	.4byte		.L11484
.L11482:
	.sleb128	16
	.4byte		.L11483
.L11481:
	.sleb128	17
	.4byte		.L11482
.L11485:
	.sleb128	18
	.4byte		.L11486-.L2
	.4byte		.L11402
	.sleb128	20
	.uleb128	7
	.sleb128	0
.L11486:
.L11488:
	.sleb128	14
	.byte		"Os_DispatchKindType"
	.byte		0
	.4byte		.L11489
.L11490:
	.sleb128	14
	.byte		"ISRType"
	.byte		0
	.4byte		.L11400
.L11492:
	.sleb128	14
	.byte		"Os_APICallType"
	.byte		0
	.4byte		.L11493
.L11491:
	.sleb128	17
	.4byte		.L11492
.L11495:
	.sleb128	14
	.byte		"Os_API_LockType"
	.byte		0
	.4byte		.L11496
.L11499:
	.sleb128	21
	.4byte		.L11500-.L2
	.byte		0x1
.L11501:
	.sleb128	17
	.4byte		.L11493
	.sleb128	22
	.4byte		.L11501
.L11502:
	.sleb128	16
	.4byte		.L11462
	.sleb128	22
	.4byte		.L11502
	.sleb128	0
.L11500:
.L11498:
	.sleb128	17
	.4byte		.L11499
.L11497:
	.sleb128	14
	.byte		"Os_API_Func_Type"
	.byte		0
	.4byte		.L11498
.L11505:
	.sleb128	14
	.byte		"Os_API_StartOsType"
	.byte		0
	.4byte		.L11506
.L11507:
	.sleb128	14
	.byte		"Os_API_ShutdownOsType"
	.byte		0
	.4byte		.L11508
.L11509:
	.sleb128	14
	.byte		"Os_API_ShutdownOsInternalType"
	.byte		0
	.4byte		.L11510
.L11511:
	.sleb128	14
	.byte		"Os_API_ShutdownAllCoresType"
	.byte		0
	.4byte		.L11512
.L11513:
	.sleb128	14
	.byte		"Os_API_GetNumberOfActivatedCoresType"
	.byte		0
	.4byte		.L11514
.L11515:
	.sleb128	14
	.byte		"Os_API_ApiStartCoreType"
	.byte		0
	.4byte		.L11516
.L11517:
	.sleb128	14
	.byte		"Os_API_StartNonAutosarCoreType"
	.byte		0
	.4byte		.L11518
.L11519:
	.sleb128	14
	.byte		"Os_API_GetCoreIDType"
	.byte		0
	.4byte		.L11520
.L11521:
	.sleb128	14
	.byte		"Os_API_ActivateTaskType"
	.byte		0
	.4byte		.L11522
.L11523:
	.sleb128	14
	.byte		"Os_API_ChainTaskType"
	.byte		0
	.4byte		.L11524
.L11525:
	.sleb128	14
	.byte		"Os_API_GetTaskIDType"
	.byte		0
	.4byte		.L11526
.L11527:
	.sleb128	14
	.byte		"Os_API_GetTaskStateType"
	.byte		0
	.4byte		.L11528
.L11529:
	.sleb128	14
	.byte		"Os_API_SetEventType"
	.byte		0
	.4byte		.L11530
.L11531:
	.sleb128	14
	.byte		"Os_API_ClearEventType"
	.byte		0
	.4byte		.L11532
.L11533:
	.sleb128	14
	.byte		"Os_API_GetEventType"
	.byte		0
	.4byte		.L11534
.L11535:
	.sleb128	14
	.byte		"Os_API_WaitEventType"
	.byte		0
	.4byte		.L11536
.L11537:
	.sleb128	14
	.byte		"Os_API_GetResourceType"
	.byte		0
	.4byte		.L11538
.L11539:
	.sleb128	14
	.byte		"Os_API_ReleaseResourceType"
	.byte		0
	.4byte		.L11540
.L11541:
	.sleb128	14
	.byte		"Os_API_GetAlarmBaseType"
	.byte		0
	.4byte		.L11542
.L11543:
	.sleb128	14
	.byte		"Os_API_GetAlarmType"
	.byte		0
	.4byte		.L11544
.L11545:
	.sleb128	14
	.byte		"Os_API_SetRelAlarmType"
	.byte		0
	.4byte		.L11546
.L11547:
	.sleb128	14
	.byte		"Os_API_SetAbsAlarmType"
	.byte		0
	.4byte		.L11548
.L11549:
	.sleb128	14
	.byte		"Os_API_CancelAlarmType"
	.byte		0
	.4byte		.L11550
.L11551:
	.sleb128	14
	.byte		"Os_API_GetApplicationStateType"
	.byte		0
	.4byte		.L11552
.L11553:
	.sleb128	14
	.byte		"Os_API_TerminateApplicationType"
	.byte		0
	.4byte		.L11554
.L11555:
	.sleb128	14
	.byte		"Os_API_GetApplicationIDType"
	.byte		0
	.4byte		.L11556
.L11557:
	.sleb128	14
	.byte		"Os_API_GetISRIDType"
	.byte		0
	.4byte		.L11558
.L11559:
	.sleb128	14
	.byte		"Os_API_GetActiveApplicationModeType"
	.byte		0
	.4byte		.L11560
.L11561:
	.sleb128	14
	.byte		"Os_API_IncrementCounterType"
	.byte		0
	.4byte		.L11562
.L11563:
	.sleb128	14
	.byte		"Os_API_GetCounterValueType"
	.byte		0
	.4byte		.L11564
.L11565:
	.sleb128	14
	.byte		"Os_API_GetElapsedValueType"
	.byte		0
	.4byte		.L11566
.L11567:
	.sleb128	14
	.byte		"Os_API_StartScheduleTableAbsType"
	.byte		0
	.4byte		.L11568
.L11569:
	.sleb128	14
	.byte		"Os_API_StartScheduleTableRelType"
	.byte		0
	.4byte		.L11570
.L11571:
	.sleb128	14
	.byte		"Os_API_StopScheduleTableType"
	.byte		0
	.4byte		.L11572
.L11573:
	.sleb128	14
	.byte		"Os_API_GetScheduleTableStatusType"
	.byte		0
	.4byte		.L11574
.L11575:
	.sleb128	14
	.byte		"Os_API_NextScheduleTableType"
	.byte		0
	.4byte		.L11576
.L11577:
	.sleb128	14
	.byte		"Os_API_StartScheduleTableSynchronType"
	.byte		0
	.4byte		.L11578
.L11579:
	.sleb128	14
	.byte		"Os_API_SyncScheduleTableType"
	.byte		0
	.4byte		.L11580
.L11581:
	.sleb128	14
	.byte		"Os_API_SetScheduleTableAsyncType"
	.byte		0
	.4byte		.L11582
.L11583:
	.sleb128	14
	.byte		"Os_API_CheckObjectAccessType"
	.byte		0
	.4byte		.L11584
.L11585:
	.sleb128	14
	.byte		"Os_API_CheckObjectOwnershipType"
	.byte		0
	.4byte		.L11586
.L11587:
	.sleb128	14
	.byte		"Os_API_CallTrustedFunctionType"
	.byte		0
	.4byte		.L11588
.L11589:
	.sleb128	14
	.byte		"Os_API_StackUsageType"
	.byte		0
	.4byte		.L11590
.L11591:
	.sleb128	14
	.byte		"Os_API_GetSpinlockType"
	.byte		0
	.4byte		.L11592
.L11593:
	.sleb128	14
	.byte		"Os_API_ReleaseSpinlockType"
	.byte		0
	.4byte		.L11594
.L11595:
	.sleb128	14
	.byte		"Os_API_TryToGetSpinlockType"
	.byte		0
	.4byte		.L11596
.L11597:
	.sleb128	14
	.byte		"Os_API_IocTransferType"
	.byte		0
	.4byte		.L11598
.L11599:
	.sleb128	14
	.byte		"Os_API_ControlIdleType"
	.byte		0
	.4byte		.L11600
.L11602:
	.sleb128	14
	.byte		"IdleModeType"
	.byte		0
	.4byte		.L11603
.L11607:
	.sleb128	14
	.byte		"Os_IOC_ChannelStatType"
	.byte		0
	.4byte		.L11608
.L11606:
	.sleb128	16
	.4byte		.L11607
.L11605:
	.sleb128	17
	.4byte		.L11606
	.section	.debug_info,,n
.L11614:
	.sleb128	24
	.byte		"void"
	.byte		0
	.byte		0x0
.L11613:
	.sleb128	17
	.4byte		.L11614
.L11611:
	.sleb128	18
	.4byte		.L11612-.L2
	.4byte		.L11613
	.sleb128	20
	.uleb128	1
	.sleb128	0
.L11612:
.L11610:
	.sleb128	14
	.byte		"Os_IOC_DataType"
	.byte		0
	.4byte		.L11611
.L11609:
	.sleb128	17
	.4byte		.L11610
.L11616:
	.sleb128	14
	.byte		"SpinlockIdType"
	.byte		0
	.4byte		.L11382
.L11618:
	.sleb128	14
	.byte		"TryToGetSpinlockType"
	.byte		0
	.4byte		.L11619
.L11617:
	.sleb128	17
	.4byte		.L11618
.L11623:
	.sleb128	17
	.4byte		.L11391
.L11625:
	.sleb128	14
	.byte		"TrustedFunctionIndexType"
	.byte		0
	.4byte		.L11402
.L11626:
	.sleb128	14
	.byte		"TrustedFunctionParameterRefType"
	.byte		0
	.4byte		.L11613
.L11627:
	.sleb128	14
	.byte		"Os_TrustedFunctionReturnValueType"
	.byte		0
	.4byte		.L11628
.L11630:
	.sleb128	14
	.byte		"ApplicationType"
	.byte		0
	.4byte		.L11391
.L11631:
	.sleb128	14
	.byte		"ObjectTypeType"
	.byte		0
	.4byte		.L11632
.L11635:
	.sleb128	14
	.byte		"AlarmType"
	.byte		0
	.4byte		.L11401
.L11637:
	.sleb128	14
	.byte		"TickType"
	.byte		0
	.4byte		.L11402
.L11641:
	.sleb128	17
	.4byte		.L11637
.L11640:
	.sleb128	14
	.byte		"TickRefType"
	.byte		0
	.4byte		.L11641
.L11645:
	.sleb128	14
	.byte		"AlarmBaseType"
	.byte		0
	.4byte		.L11646
.L11644:
	.sleb128	17
	.4byte		.L11645
.L11643:
	.sleb128	14
	.byte		"AlarmBaseRefType"
	.byte		0
	.4byte		.L11644
.L11648:
	.sleb128	14
	.byte		"ScheduleTableType"
	.byte		0
	.4byte		.L11402
.L11655:
	.sleb128	14
	.byte		"ScheduleTableStatusType"
	.byte		0
	.4byte		.L11656
.L11654:
	.sleb128	17
	.4byte		.L11655
.L11653:
	.sleb128	14
	.byte		"ScheduleTableStatusRefType"
	.byte		0
	.4byte		.L11654
.L11661:
	.sleb128	14
	.byte		"CounterType"
	.byte		0
	.4byte		.L11402
.L11665:
	.sleb128	21
	.4byte		.L11666-.L2
	.byte		0x1
	.sleb128	22
	.4byte		.L11501
	.sleb128	0
.L11666:
.L11664:
	.sleb128	17
	.4byte		.L11665
.L11663:
	.sleb128	14
	.byte		"LightServiceFunctionType"
	.byte		0
	.4byte		.L11664
.L11670:
	.sleb128	14
	.byte		"RestartType"
	.byte		0
	.4byte		.L11391
.L11675:
	.sleb128	14
	.byte		"ApplicationStateType"
	.byte		0
	.4byte		.L11391
.L11674:
	.sleb128	17
	.4byte		.L11675
.L11673:
	.sleb128	14
	.byte		"ApplicationStateRefType"
	.byte		0
	.4byte		.L11674
.L11679:
	.sleb128	15
	.byte		"unsigned long long"
	.byte		0
	.byte		0x7
	.byte		0x8
.L11678:
	.sleb128	14
	.byte		"uint64"
	.byte		0
	.4byte		.L11679
.L11677:
	.sleb128	14
	.byte		"EventMaskType"
	.byte		0
	.4byte		.L11678
.L11682:
	.sleb128	17
	.4byte		.L11677
.L11681:
	.sleb128	14
	.byte		"EventMaskRefType"
	.byte		0
	.4byte		.L11682
.L11688:
	.sleb128	14
	.byte		"TaskStateType"
	.byte		0
	.4byte		.L11689
.L11687:
	.sleb128	17
	.4byte		.L11688
.L11686:
	.sleb128	14
	.byte		"TaskStateRefType"
	.byte		0
	.4byte		.L11687
.L11692:
	.sleb128	17
	.4byte		.L11399
.L11691:
	.sleb128	14
	.byte		"TaskRefType"
	.byte		0
	.4byte		.L11692
.L11696:
	.sleb128	14
	.byte		"ResourceType"
	.byte		0
	.4byte		.L11402
.L11699:
	.sleb128	14
	.byte		"AppModeType"
	.byte		0
	.4byte		.L11402
.L11704:
	.sleb128	14
	.byte		"Os_CoreShutdownType"
	.byte		0
	.4byte		.L11705
.L11708:
	.sleb128	17
	.4byte		.L11390
.L11715:
	.sleb128	14
	.byte		"Os_IOC_ChannelDynType"
	.byte		0
	.4byte		.L11716
.L11714:
	.sleb128	17
	.4byte		.L11715
.L11713:
	.sleb128	16
	.4byte		.L11714
.L11717:
	.sleb128	14
	.byte		"Os_IOC_ChannelSizeType"
	.byte		0
	.4byte		.L11382
.L11718:
	.sleb128	16
	.4byte		.L11613
.L11719:
	.sleb128	16
	.4byte		.L11382
.L11721:
	.sleb128	14
	.byte		"Os_IOC_DataCountType"
	.byte		0
	.4byte		.L11391
.L11720:
	.sleb128	16
	.4byte		.L11721
.L11725:
	.sleb128	14
	.byte		"Os_IOC_DataDescriptorType"
	.byte		0
	.4byte		.L11726
.L11724:
	.sleb128	16
	.4byte		.L11725
.L11723:
	.sleb128	17
	.4byte		.L11724
.L11722:
	.sleb128	16
	.4byte		.L11723
.L11729:
	.sleb128	14
	.byte		"Os_LockResourceType"
	.byte		0
	.4byte		.L11391
.L11728:
	.sleb128	17
	.4byte		.L11729
.L11727:
	.sleb128	16
	.4byte		.L11728
.L11732:
	.sleb128	14
	.byte		"Os_IOC_DataLengthType"
	.byte		0
	.4byte		.L11382
.L11731:
	.sleb128	16
	.4byte		.L11732
.L11734:
	.sleb128	14
	.byte		"Os_IOC_DataOffsetType"
	.byte		0
	.4byte		.L11382
.L11733:
	.sleb128	16
	.4byte		.L11734
.L11738:
	.sleb128	14
	.byte		"Os_HookIDType"
	.byte		0
	.4byte		.L11382
.L11740:
	.sleb128	16
	.4byte		.L11399
.L11743:
	.sleb128	14
	.byte		"Os_ProcDynType"
	.byte		0
	.4byte		.L11744
.L11742:
	.sleb128	17
	.4byte		.L11743
.L11741:
	.sleb128	16
	.4byte		.L11742
.L11748:
	.sleb128	14
	.byte		"Os_ProcStackType"
	.byte		0
	.4byte		.L11749
.L11747:
	.sleb128	16
	.4byte		.L11748
.L11746:
	.sleb128	17
	.4byte		.L11747
.L11745:
	.sleb128	16
	.4byte		.L11746
.L11751:
	.sleb128	14
	.byte		"Os_ProcKindType"
	.byte		0
	.4byte		.L11752
.L11750:
	.sleb128	16
	.4byte		.L11751
.L11753:
	.sleb128	16
	.4byte		.L11677
.L11754:
	.sleb128	16
	.4byte		.L11467
.L11756:
	.sleb128	14
	.byte		"Os_ActivationCountType"
	.byte		0
	.4byte		.L11402
.L11755:
	.sleb128	16
	.4byte		.L11756
.L11757:
	.sleb128	16
	.4byte		.L11443
.L11758:
	.sleb128	16
	.4byte		.L11450
.L11762:
	.sleb128	14
	.byte		"Os_AccessStorageType"
	.byte		0
	.4byte		.L11402
.L11761:
	.sleb128	16
	.4byte		.L11762
.L11760:
	.sleb128	17
	.4byte		.L11761
.L11759:
	.sleb128	16
	.4byte		.L11760
.L11766:
	.sleb128	21
	.4byte		.L11767-.L2
	.byte		0x1
	.sleb128	0
.L11767:
.L11765:
	.sleb128	17
	.4byte		.L11766
.L11764:
	.sleb128	14
	.byte		"Os_ProcEntryPointType"
	.byte		0
	.4byte		.L11765
.L11763:
	.sleb128	16
	.4byte		.L11764
.L11768:
	.sleb128	16
	.4byte		.L11696
.L11773:
	.sleb128	14
	.byte		"Os_ResourceStatType"
	.byte		0
	.4byte		.L11774
.L11772:
	.sleb128	16
	.4byte		.L11773
.L11771:
	.sleb128	17
	.4byte		.L11772
.L11770:
	.sleb128	14
	.byte		"Os_ResourceStack"
	.byte		0
	.4byte		.L11771
.L11769:
	.sleb128	17
	.4byte		.L11770
.L11775:
	.sleb128	16
	.4byte		.L11472
.L11776:
	.sleb128	16
	.4byte		.L11477
.L11779:
	.sleb128	14
	.byte		"Os_StackSizeType"
	.byte		0
	.4byte		.L11402
.L11778:
	.sleb128	16
	.4byte		.L11779
.L11781:
	.sleb128	14
	.byte		"Os_ProcContexStateType"
	.byte		0
	.4byte		.L11782
.L11784:
	.sleb128	16
	.4byte		.L11785
.L11783:
	.sleb128	17
	.4byte		.L11784
.L11788:
	.sleb128	16
	.4byte		.L11616
.L11791:
	.sleb128	14
	.byte		"Os_SpinlockDynType"
	.byte		0
	.4byte		.L11792
.L11790:
	.sleb128	17
	.4byte		.L11791
.L11789:
	.sleb128	16
	.4byte		.L11790
.L11797:
	.sleb128	14
	.byte		"Os_ApplicationDynType"
	.byte		0
	.4byte		.L11798
.L11796:
	.sleb128	17
	.4byte		.L11797
.L11795:
	.sleb128	16
	.4byte		.L11796
.L11799:
	.sleb128	16
	.4byte		.L11630
.L11801:
	.sleb128	14
	.byte		"Os_ApplicationKindType"
	.byte		0
	.4byte		.L11802
.L11800:
	.sleb128	16
	.4byte		.L11801
.L11806:
	.sleb128	21
	.4byte		.L11807-.L2
	.byte		0x1
	.sleb128	22
	.4byte		.L11390
	.sleb128	0
.L11807:
.L11805:
	.sleb128	17
	.4byte		.L11806
.L11804:
	.sleb128	14
	.byte		"Os_ShutdownHookFuncType"
	.byte		0
	.4byte		.L11805
.L11803:
	.sleb128	16
	.4byte		.L11804
.L11811:
	.sleb128	21
	.4byte		.L11812-.L2
	.byte		0x1
	.sleb128	0
.L11812:
.L11810:
	.sleb128	17
	.4byte		.L11811
.L11809:
	.sleb128	14
	.byte		"Os_StartUpHookFuncType"
	.byte		0
	.4byte		.L11810
.L11808:
	.sleb128	16
	.4byte		.L11809
.L11816:
	.sleb128	21
	.4byte		.L11817-.L2
	.byte		0x1
	.sleb128	22
	.4byte		.L11390
	.sleb128	0
.L11817:
.L11815:
	.sleb128	17
	.4byte		.L11816
.L11814:
	.sleb128	14
	.byte		"Os_ErrorHookFuncType"
	.byte		0
	.4byte		.L11815
.L11813:
	.sleb128	16
	.4byte		.L11814
.L11820:
	.sleb128	16
	.4byte		.L11400
.L11819:
	.sleb128	17
	.4byte		.L11820
.L11818:
	.sleb128	16
	.4byte		.L11819
.L11823:
	.sleb128	16
	.4byte		.L11661
.L11822:
	.sleb128	17
	.4byte		.L11823
.L11821:
	.sleb128	16
	.4byte		.L11822
.L11826:
	.sleb128	16
	.4byte		.L11635
.L11825:
	.sleb128	17
	.4byte		.L11826
.L11824:
	.sleb128	16
	.4byte		.L11825
.L11829:
	.sleb128	16
	.4byte		.L11648
.L11828:
	.sleb128	17
	.4byte		.L11829
.L11827:
	.sleb128	16
	.4byte		.L11828
.L11834:
	.sleb128	14
	.byte		"Os_ResourceDynType"
	.byte		0
	.4byte		.L11835
.L11833:
	.sleb128	17
	.4byte		.L11834
.L11841:
	.sleb128	21
	.4byte		.L11842-.L2
	.byte		0x1
	.sleb128	0
.L11842:
.L11840:
	.sleb128	17
	.4byte		.L11841
.L11839:
	.sleb128	14
	.byte		"Os_IsrHandlerFuncType"
	.byte		0
	.4byte		.L11840
.L11838:
	.sleb128	16
	.4byte		.L11839
.L11847:
	.sleb128	16
	.4byte		.L11402
.L11849:
	.sleb128	14
	.byte		"Os_IsrPlatformLevelType"
	.byte		0
	.4byte		.L11382
.L11848:
	.sleb128	16
	.4byte		.L11849
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11370:
	.sleb128	0
.L11366:

	.section	.debug_loc,,n
	.align	0
.L11384:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locend
.L11398:
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),3
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),31
	.d2locend
.L11404:
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo7),4
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),30
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo9),30
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo11),30
	.d2locend
.L11406:
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo13),3
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo15),3
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo17),3
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo10),3
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo19),3
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "Os_Event_Err"
	.wrcm.nstrlist "calls", "Os_Access_Check","Os_Isr_GetState"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Os_Isr_GetState"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Os_Event.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Os_Event.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Os_Event.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Os_Event.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Os_Event.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Os_Event.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\Os\Os\core\ssc\make\..\src\task\events\Os_Event.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
