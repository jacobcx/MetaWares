#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Os_Call_ErrorHook.c"
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
# FUNC (void, OS_CODE) Os_Call_ErrorHook( VAR     ( StatusType,AUTOMATIC)                     error,
	.section	.Os_TEXT,,c
	.align		2
	.section	.debug_line.Os_TEXT,,n
	.sectionlink	.debug_line
.L11359:
	.section	.Os_TEXT,,c
#$$ld
.L11355:
	.0byte		.L11353
	.d2_line_start	.debug_line.Os_TEXT
	.section	.Os_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\misc\\Os_Call_ErrorHook.c"
        .d2line         53,22
#$$ld
.L11362:

#$$bf	Os_Call_ErrorHook,interprocedural,rasave,nostackparams
	.globl		Os_Call_ErrorHook
	.d2_cfa_start __cie
Os_Call_ErrorHook:
.Llo1:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr
	stmw		r27,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	27,31,1,1
	stw		r0,52(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# error=r31 error=r3
	mr		r5,r4		# serviceId=r5 serviceId=r4
	.d2prologue_end
#                                         VAR     ( OSServiceIdType, AUTOMATIC)               serviceId,
#                                         /*Parameter only used in some configurations*/
#                                         P2CONST ( Os_ProcStatType, AUTOMATIC, OS_CONST )    callerTask
#                 )
# #else
# FUNC (void, OS_CODE) Os_Call_ErrorHook( VAR     ( StatusType,AUTOMATIC)                     error,
#                                         /*Parameter only used in some configurations*/
#                                         P2CONST ( Os_ProcStatType, AUTOMATIC, OS_CONST )    callerTask
#                 )
# #endif
# {
#     CONST (CoreIdType,    AUTOMATIC)                    coreId    = OS_GETCOREID();
	.d2line		65
	mfspr		r30,286		# coreId=r30
.Llo9:
	mr		r30,r30		# coreId=r30 coreId=r30
#     CONSTP2VAR  (Os_HooksDynType, AUTOMATIC, OS_VAR)  coreHookDyn = &OS_GET_CORE_DYN( coreId )->Os_HooksDyn;
	.d2line		66
	lis		r3,(Os_Core_Stat+4)@ha		# coreHookDyn=r3
.Llo2:
	e_add16i		r3,r3,(Os_Core_Stat+4)@l		# coreHookDyn=r3 coreHookDyn=r3
	rlwinm		r0,r30,0,16,31		# coreId=r30
	e_mulli		r0,r0,20
	lwzx		r3,r3,r0		# coreHookDyn=r3 coreHookDyn=r3
	diab.addi		r27,r3,100		# coreHookDyn=r27 coreHookDyn=r3
#   #ifdef OS_MODULE_MULTICORE
#     VAR(Os_CoreLockStatusType, AUTOMATIC) coreLockStatus;
#   #endif /* OS_MODULE_MULTICORE */
# 
#     /* Nesting of error hooks is not supported. */
#     if(OS_HOOKID_ERRORHOOK == coreHookDyn->Os_HookID)
	.d2line		72
.Llo10:
	lhz		r0,100(r3)		# coreHookDyn=r3
.Llo11:
	cmpi		0,0,r0,32
	bc		1,2,.L11347	# eq
#     {
#         return; /* [OS001-319.v1] */
#     }
# 
#   #ifdef OS_CONFIG_USESERVICEID
# 
#     /* [OS001-333.v1] */
#     OS_GET_FAULTYSERVICEID ( coreId ) = serviceId;
	.d2line		80
.Llo3:
	lis		r3,(Os_Core_DynShared+124)@ha		# coreHookDyn=r3
.Llo5:
	e_add16i		r3,r3,(Os_Core_DynShared+124)@l		# coreHookDyn=r3 coreHookDyn=r3
	rlwinm		r0,r30,0,16,31		# coreId=r30
	e_mulli		r4,r0,152
	stwux		r5,r3,r4		# coreHookDyn=r3 serviceId=r5
# 
#   #endif
# 
#   #ifdef OS_MODULE_ORTISUPPORT
# 
#     OS_GET_LASTERROR ( coreId ) =  error;
	.d2line		86
	lis		r3,(Os_Core_DynShared+121)@ha		# coreHookDyn=r3
	e_add16i		r3,r3,(Os_Core_DynShared+121)@l		# coreHookDyn=r3 coreHookDyn=r3
	stbx		r31,r3,r4		# coreHookDyn=r3 error=r31
# 
#   #endif
# 
#   #ifdef OS_MODULE_MULTICORE
#     /* Coming from dispatcher. Core shall not be locked in a kernel callout. */
#     coreLockStatus = Os_Core_UnlockCoreConditionally(coreId);
	.d2line		92
	mr		r3,r0
	bl		Os_Core_UnlockCoreConditionally
.Llo6:
	mr		r29,r3		# coreLockStatus=r29 coreLockStatus=r3
#   #endif /* OS_MODULE_MULTICORE */
# 
#   #if OS_ERRORHOOK == STD_ON
#     Os_Isr_ServicesSwitchToHook ();
	.d2line		96
	bl		Os_Isr_ServicesSwitchToHook
	.section	.Os_TEXT,,c
.L11393:
#     {
#         VAR (Os_HookIDType, AUTOMATIC) prevHookID;
# 
#         prevHookID = coreHookDyn->Os_HookID;
	.d2line		100
.Llo12:
	lhz		r28,0(r27)		# prevHookID=r28 coreHookDyn=r27
.Llo13:
	mr		r0,r28		# prevHookID=r0 prevHookID=r28
#         coreHookDyn->Os_HookID = OS_HOOKID_ERRORHOOK;
	.d2line		101
	diab.li		r0,32		# prevHookID=r0
	sth		r0,0(r27)		# coreHookDyn=r27 prevHookID=r0
#         ErrorHook(error);
	.d2line		102
	rlwinm		r3,r31,0,24,31		# coreHookDyn=r3 error=r31
	bl		ErrorHook
#         coreHookDyn->Os_HookID = prevHookID;
	.d2line		103
	sth		r28,0(r27)		# coreHookDyn=r27 prevHookID=r28
	.section	.Os_TEXT,,c
.L11394:
#     }
#     Os_Isr_ServicesSwitchBackFromHook ();
	.d2line		105
.Llo4:
	bl		Os_Isr_ServicesSwitchBackFromHook
#   #endif
# 
#   #if (OS_APP_ERRORHOOK == STD_ON)                /* [OS544-01-MGC] */
#     {
#         VAR(Os_ErrorHookFuncType, AUTOMATIC) appErrorHookPtr;
#         CONSTP2VAR (Os_Core_DynInitType, AUTOMATIC, OS_CONST) coreDynInit = OS_GET_CORE_DYN_INIT ( coreId );
# 
#         if((OS_HOOKID_NONE == coreHookDyn->Os_HookID)
#                 && (NULL_PTR != callerTask) )
#         {
#             appErrorHookPtr = callerTask->Os_ProcOwnerApp->Os_AppErrorHook;
#         }
#         else if(OS_HOOKID_APPSTARTUPHOOK == coreHookDyn->Os_HookID)
#         {
#             appErrorHookPtr = coreDynInit->Os_CurrentApp->Os_AppErrorHook;
#         }
#         else
#         {
#             appErrorHookPtr = NULL_PTR;
#         }
# 
#         if(appErrorHookPtr != NULL_PTR )
#         {
#             VAR (Os_HookIDType, AUTOMATIC) prevHookID;
#             Os_Isr_ServicesSwitchToHook ();
# 
#             prevHookID = coreHookDyn->Os_HookID;
#             coreHookDyn->Os_HookID = OS_HOOKID_APPERRORHOOK;
#             appErrorHookPtr(error); /* [OS246] */
#             coreHookDyn->Os_HookID = prevHookID;
# 
#             Os_Isr_ServicesSwitchBackFromHook ();
#         }
#     }
#   #endif  /* (OS_APP_ERRORHOOK == STD_ON) */
# 
# 
#   #ifdef OS_MODULE_MULTICORE
#     if(OS_CORE_LOCK_STATUS_LOCKED == coreLockStatus)
	.d2line		144
	se_cmpi		r29,1		# coreLockStatus=r29
	bc		0,2,.L11347	# ne
#     {
#         /* Going back to dispatcher. Core shall be locked there during API dispatch. */
#         Os_Core_LockCore(coreId);
	.d2line		147
.Llo14:
	rlwinm		r3,r30,0,16,31		# coreHookDyn=r3 coreId=r30
	bl		Os_Core_LockCore
.L11347:
#     }
#     else
#     {
#         /* Do nothing on purpose. */
#     }
#   #endif /* OS_MODULE_MULTICORE */
# }
	.d2line		154
	.d2epilogue_begin
.Llo7:
	lmw		r27,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,52(r1)		# prevHookID=r0
	mtspr		lr,r0		# prevHookID=lr
	diab.addi		r1,r1,48		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo8:
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11363:
	.type		Os_Call_ErrorHook,@function
	.size		Os_Call_ErrorHook,.-Os_Call_ErrorHook
# Number of nodes = 87

# Allocations for Os_Call_ErrorHook
#	?a4		error
#	?a5		serviceId
#	not allocated	callerTask
#	?a6		coreId
#	?a7		coreHookDyn
#	?a8		coreLockStatus
#	?a9		prevHookID

# Allocations for module
	.section	.text_vle
	.0byte		.L11400
	.section	.Os_BSS,,b
	.0byte		.L11407
	.section	.text_vle
#$$ld
.L5:
.L11897:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_Types.h"
.L11894:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ApplicationApiTypes.h"
.L11892:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ScheduleTableApiTypes.h"
.L11890:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_TaskApiTypes.h"
.L11888:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_SpinlockApiTypes.h"
.L11876:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_Core.h"
.L11871:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\PowerPC\\WindRiver\\AUTOSAR\\ar422\\MemMap.h"
.L11869:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_InternalTypes.h"
.L11854:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ErrorApiTypes.h"
.L11834:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ExceptionApiTypes.h"
.L11789:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_ApplicationCfgTypes.h"
.L11741:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_TaskCfgTypes.h"
.L11739:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_HookApiTypes.h"
.L11714:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_TrustedFunctionCfgTypes.h"
.L11469:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_ApiDispatchCfgTypes.h"
.L11412:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_SchedulerCfgTypes.h"
.L11401:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_CoreCfgTypes.h"
	.d2_line_end
	.section	.Os_TEXT,,c
#$$ld
.L11356:
.L11364:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\misc\\Os_Call_ErrorHook.c"
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
	.uleb128	6
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	4
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
	.uleb128	11
	.byte		0x1
	.uleb128	1
	.uleb128	16
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	7
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
	.uleb128	10
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
	.uleb128	11
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
	.uleb128	12
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
	.uleb128	13
	.uleb128	40
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	28
	.uleb128	13
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	14
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
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	17
	.uleb128	38
	.byte		0x0
	.uleb128	73
	.uleb128	16
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
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\misc\\Os_Call_ErrorHook.c"
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
.L11353:
	.4byte		.L11354-.L11352
.L11352:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L11358-.L11353
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\misc\\Os_Call_ErrorHook.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L11355
	.4byte		.L11356
	.4byte		.L11359
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11365:
	.sleb128	2
	.4byte		.L11361-.L11353
	.byte		"Os_Call_ErrorHook"
	.byte		0
	.4byte		.L11364
	.uleb128	53
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L11362
	.4byte		.L11363
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L11364
	.uleb128	53
	.uleb128	22
	.byte		"error"
	.byte		0
	.4byte		.L11366
	.4byte		.L11369
	.sleb128	3
	.4byte		.L11364
	.uleb128	53
	.uleb128	22
	.byte		"serviceId"
	.byte		0
	.4byte		.L11370
	.4byte		.L11372
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	4
	.4byte		.L11364
	.uleb128	53
	.uleb128	22
	.byte		"callerTask"
	.byte		0
	.4byte		.L11373
	.sleb128	2
	.byte		0x90
	.uleb128	5
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11377:
	.sleb128	5
	.4byte		.L11364
	.uleb128	65
	.uleb128	57
	.byte		"coreId"
	.byte		0
	.4byte		.L11378
	.4byte		.L11382
.L11383:
	.sleb128	5
	.4byte		.L11364
	.uleb128	66
	.uleb128	55
	.byte		"coreHookDyn"
	.byte		0
	.4byte		.L11384
	.4byte		.L11388
.L11389:
	.sleb128	5
	.4byte		.L11364
	.uleb128	68
	.uleb128	43
	.byte		"coreLockStatus"
	.byte		0
	.4byte		.L11390
	.4byte		.L11392
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	6
	.4byte		.L11396
	.4byte		.L11393
	.4byte		.L11394
.L11397:
	.sleb128	5
	.4byte		.L11364
	.uleb128	98
	.uleb128	40
	.byte		"prevHookID"
	.byte		0
	.4byte		.L11398
	.4byte		.L11399
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11396:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11361:
	.section	.debug_info,,n
.L11400:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L11401
	.uleb128	169
	.uleb128	42
	.byte		"Os_Core_Stat"
	.byte		0
	.4byte		.L11402
	.section	.debug_info,,n
.L11407:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L11401
	.uleb128	181
	.uleb128	45
	.byte		"Os_Core_DynShared"
	.byte		0
	.4byte		.L11408
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11406:
	.sleb128	8
	.4byte		.L11412
	.uleb128	69
	.uleb128	1
	.4byte		.L11413-.L2
	.uleb128	20
	.section	.debug_info,,n
.L786:
	.sleb128	9
	.byte		"Os_Core_DynInit"
	.byte		0
	.4byte		.L11414
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L787:
	.sleb128	9
	.byte		"Os_Core_Dyn"
	.byte		0
	.4byte		.L11418
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L788:
	.sleb128	9
	.byte		"Os_DispatchElement"
	.byte		0
	.4byte		.L11422
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L789:
	.sleb128	9
	.byte		"Os_PrepareContextFunction"
	.byte		0
	.4byte		.L11426
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L790:
	.sleb128	9
	.byte		"Os_GetStackPointerFunction"
	.byte		0
	.4byte		.L11432
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11413:
.L11417:
	.sleb128	8
	.4byte		.L11412
	.uleb128	69
	.uleb128	1
	.4byte		.L11441-.L2
	.uleb128	36
.L783:
	.sleb128	9
	.byte		"Os_IsrDynInit"
	.byte		0
	.4byte		.L11442
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L784:
	.sleb128	9
	.byte		"Os_SchedulerDynInit"
	.byte		0
	.4byte		.L11444
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L785:
	.sleb128	9
	.byte		"Os_CurrentApp"
	.byte		0
	.4byte		.L11446
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
	.sleb128	0
.L11441:
.L11411:
	.sleb128	8
	.4byte		.L11412
	.uleb128	69
	.uleb128	1
	.4byte		.L11450-.L2
	.uleb128	152
.L776:
	.sleb128	9
	.byte		"Os_Dispatcher"
	.byte		0
	.4byte		.L11451
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L777:
	.sleb128	9
	.byte		"Os_PublicDataNoInit"
	.byte		0
	.4byte		.L11453
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11450:
.L11421:
	.sleb128	8
	.4byte		.L11412
	.uleb128	69
	.uleb128	1
	.4byte		.L11455-.L2
	.uleb128	104
.L773:
	.sleb128	9
	.byte		"Os_SchedulerDyn"
	.byte		0
	.4byte		.L11456
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L774:
	.sleb128	9
	.byte		"Os_IsrDyn"
	.byte		0
	.4byte		.L11458
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L775:
	.sleb128	9
	.byte		"Os_HooksDyn"
	.byte		0
	.4byte		.L11386
	.sleb128	2
	.byte		0x23
	.uleb128	100
	.byte		0x1
	.sleb128	0
.L11455:
.L11445:
	.sleb128	8
	.4byte		.L11412
	.uleb128	69
	.uleb128	1
	.4byte		.L11460-.L2
	.uleb128	4
.L772:
	.sleb128	9
	.byte		"Os_SchedulerCurrentProc"
	.byte		0
	.4byte		.L11461
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11460:
.L11457:
	.sleb128	8
	.4byte		.L11412
	.uleb128	69
	.uleb128	1
	.4byte		.L11463-.L2
	.uleb128	48
.L764:
	.sleb128	9
	.byte		"Os_CurrentContext"
	.byte		0
	.4byte		.L11437
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L765:
	.sleb128	9
	.byte		"Os_PreviousContext"
	.byte		0
	.4byte		.L11437
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L766:
	.sleb128	9
	.byte		"Os_SchedulerScheduleAction"
	.byte		0
	.4byte		.L11464
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L767:
	.sleb128	9
	.byte		"Os_SchedulerLastScheduledPriority"
	.byte		0
	.4byte		.L11466
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L768:
	.sleb128	9
	.byte		"Os_SchedulerCurrentTask"
	.byte		0
	.4byte		.L11461
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L769:
	.sleb128	9
	.byte		"Os_SchedulerLastScheduledProc"
	.byte		0
	.4byte		.L11461
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L770:
	.sleb128	9
	.byte		"Os_SchedulerHeadPivot"
	.byte		0
	.4byte		.L11467
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L771:
	.sleb128	9
	.byte		"Os_SchedulerTailPivot"
	.byte		0
	.4byte		.L11467
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
	.sleb128	0
.L11463:
	.section	.debug_info,,n
.L11468:
	.sleb128	10
	.4byte		.L11469
	.uleb128	612
	.uleb128	1
	.4byte		.L11470-.L2
	.byte		"Os_SchedulerQueueElementType_s"
	.byte		0
	.uleb128	12
.L750:
	.sleb128	9
	.byte		"Os_QueueProc"
	.byte		0
	.4byte		.L11461
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L751:
	.sleb128	9
	.byte		"Os_QueueFrontElement"
	.byte		0
	.4byte		.L11471
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L752:
	.sleb128	9
	.byte		"Os_QueueBackElement"
	.byte		0
	.4byte		.L11471
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11470:
.L11443:
	.sleb128	8
	.4byte		.L11469
	.uleb128	612
	.uleb128	1
	.4byte		.L11472-.L2
	.uleb128	28
.L743:
	.sleb128	9
	.byte		"Os_CurrentUserModePriority"
	.byte		0
	.4byte		.L11473
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L744:
	.sleb128	9
	.byte		"Os_UserModePriorityChanged"
	.byte		0
	.4byte		.L11474
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L745:
	.sleb128	9
	.byte		"Os_DisableAllCount"
	.byte		0
	.4byte		.L11439
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L746:
	.sleb128	9
	.byte		"Os_SuspendAllCount"
	.byte		0
	.4byte		.L11439
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L747:
	.sleb128	9
	.byte		"Os_SuspendOSCount"
	.byte		0
	.4byte		.L11439
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L748:
	.sleb128	9
	.byte		"Os_SavedIsrLevel"
	.byte		0
	.4byte		.L11473
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L749:
	.sleb128	9
	.byte		"Os_SavedOSIsrLevel"
	.byte		0
	.4byte		.L11473
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
	.sleb128	0
.L11472:
.L11459:
	.sleb128	8
	.4byte		.L11469
	.uleb128	612
	.uleb128	1
	.4byte		.L11475-.L2
	.uleb128	52
.L737:
	.sleb128	9
	.byte		"Os_IsrRunningIsr"
	.byte		0
	.4byte		.L11461
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L738:
	.sleb128	9
	.byte		"Os_IsrNeedToClear"
	.byte		0
	.4byte		.L11476
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L739:
	.sleb128	9
	.byte		"Os_Isr_NestLevel"
	.byte		0
	.4byte		.L11439
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L740:
	.sleb128	9
	.byte		"Os_Isr_ServicesBackup"
	.byte		0
	.4byte		.L11480
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L741:
	.sleb128	9
	.byte		"Os_SuspendAllPrevIsrState"
	.byte		0
	.4byte		.L11473
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L742:
	.sleb128	9
	.byte		"Os_SuspendCounterpartTrack"
	.byte		0
	.4byte		.L11484
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L11475:
.L11452:
	.sleb128	8
	.4byte		.L11469
	.uleb128	612
	.uleb128	1
	.4byte		.L11486-.L2
	.uleb128	8
.L735:
	.sleb128	9
	.byte		"Os_DHead"
	.byte		0
	.4byte		.L11439
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L736:
	.sleb128	9
	.byte		"Os_DTail"
	.byte		0
	.4byte		.L11439
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11486:
.L11425:
	.sleb128	10
	.4byte		.L11469
	.uleb128	612
	.uleb128	1
	.4byte		.L11487-.L2
	.byte		"Os_DispatchElementType_s"
	.byte		0
	.uleb128	56
.L730:
	.sleb128	9
	.byte		"Os_DispatchKind"
	.byte		0
	.4byte		.L11488
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L731:
	.sleb128	9
	.byte		"Os_DispatcherLockCoreId"
	.byte		0
	.4byte		.L11379
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L732:
	.sleb128	9
	.byte		"Os_DispatchIsrId"
	.byte		0
	.4byte		.L11490
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L733:
	.sleb128	9
	.byte		"Os_DispatchApiCall"
	.byte		0
	.4byte		.L11493
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L734:
	.sleb128	9
	.byte		"Os_DispatchApiInternal"
	.byte		0
	.4byte		.L11494
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11487:
.L11495:
	.sleb128	10
	.4byte		.L11469
	.uleb128	60
	.uleb128	1
	.4byte		.L11496-.L2
	.byte		"Os_APICallType_struct"
	.byte		0
	.uleb128	40
.L725:
	.sleb128	9
	.byte		"Os_API_Magic"
	.byte		0
	.4byte		.L11439
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L726:
	.sleb128	9
	.byte		"Os_API_ReturnValue"
	.byte		0
	.4byte		.L11366
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L727:
	.sleb128	9
	.byte		"Os_API_Lock"
	.byte		0
	.4byte		.L11497
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L728:
	.sleb128	9
	.byte		"Os_API_Func"
	.byte		0
	.4byte		.L11499
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L729:
	.sleb128	9
	.byte		"Os_API_Data"
	.byte		0
	.4byte		.L11505
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11496:
	.section	.debug_info,,n
.L11505:
	.sleb128	11
	.4byte		.L11469
	.uleb128	60
	.uleb128	1
	.4byte		.L11506-.L2
	.uleb128	24
.L677:
	.sleb128	9
	.byte		"Os_ApiStartOs"
	.byte		0
	.4byte		.L11507
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L678:
	.sleb128	9
	.byte		"Os_ApiShutdownOs"
	.byte		0
	.4byte		.L11509
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L679:
	.sleb128	9
	.byte		"Os_ApiShutdownOsInternal"
	.byte		0
	.4byte		.L11511
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L680:
	.sleb128	9
	.byte		"Os_ApiShutdownAllCores"
	.byte		0
	.4byte		.L11513
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L681:
	.sleb128	9
	.byte		"Os_ApiGetNumberOfActivatedCores"
	.byte		0
	.4byte		.L11515
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L682:
	.sleb128	9
	.byte		"Os_ApiStartCore"
	.byte		0
	.4byte		.L11517
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L683:
	.sleb128	9
	.byte		"Os_ApiStartNonAutosarCore"
	.byte		0
	.4byte		.L11519
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L684:
	.sleb128	9
	.byte		"Os_ApiGetCoreID"
	.byte		0
	.4byte		.L11521
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L685:
	.sleb128	9
	.byte		"Os_ApiActivateTask"
	.byte		0
	.4byte		.L11523
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L686:
	.sleb128	9
	.byte		"Os_ApiChainTask"
	.byte		0
	.4byte		.L11525
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L687:
	.sleb128	9
	.byte		"Os_ApiGetTaskID"
	.byte		0
	.4byte		.L11527
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L688:
	.sleb128	9
	.byte		"Os_ApiGetTaskState"
	.byte		0
	.4byte		.L11529
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L689:
	.sleb128	9
	.byte		"Os_ApiSetEvent"
	.byte		0
	.4byte		.L11531
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L690:
	.sleb128	9
	.byte		"Os_ApiClearEvent"
	.byte		0
	.4byte		.L11533
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L691:
	.sleb128	9
	.byte		"Os_ApiGetEvent"
	.byte		0
	.4byte		.L11535
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L692:
	.sleb128	9
	.byte		"Os_ApiWaitEvent"
	.byte		0
	.4byte		.L11537
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L693:
	.sleb128	9
	.byte		"Os_ApiGetResource"
	.byte		0
	.4byte		.L11539
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L694:
	.sleb128	9
	.byte		"Os_ApiReleaseResource"
	.byte		0
	.4byte		.L11541
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L695:
	.sleb128	9
	.byte		"Os_ApiGetAlarmBase"
	.byte		0
	.4byte		.L11543
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L696:
	.sleb128	9
	.byte		"Os_ApiGetAlarm"
	.byte		0
	.4byte		.L11545
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L697:
	.sleb128	9
	.byte		"Os_ApiSetRelAlarm"
	.byte		0
	.4byte		.L11547
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L698:
	.sleb128	9
	.byte		"Os_ApiSetAbsAlarm"
	.byte		0
	.4byte		.L11549
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L699:
	.sleb128	9
	.byte		"Os_ApiCancelAlarm"
	.byte		0
	.4byte		.L11551
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L700:
	.sleb128	9
	.byte		"Os_ApiGetApplicationState"
	.byte		0
	.4byte		.L11553
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L701:
	.sleb128	9
	.byte		"Os_ApiTerminateApplication"
	.byte		0
	.4byte		.L11555
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L702:
	.sleb128	9
	.byte		"Os_ApiGetApplicationID"
	.byte		0
	.4byte		.L11557
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L703:
	.sleb128	9
	.byte		"Os_ApiGetISRID"
	.byte		0
	.4byte		.L11559
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L704:
	.sleb128	9
	.byte		"Os_ApiGetActiveApplicationMode"
	.byte		0
	.4byte		.L11561
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L705:
	.sleb128	9
	.byte		"Os_ApiIncrementCounter"
	.byte		0
	.4byte		.L11563
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L706:
	.sleb128	9
	.byte		"Os_ApiGetCounterValue"
	.byte		0
	.4byte		.L11565
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L707:
	.sleb128	9
	.byte		"Os_ApiGetElapsedValue"
	.byte		0
	.4byte		.L11567
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L708:
	.sleb128	9
	.byte		"Os_ApiStartScheduleTableAbs"
	.byte		0
	.4byte		.L11569
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L709:
	.sleb128	9
	.byte		"Os_ApiStartScheduleTableRel"
	.byte		0
	.4byte		.L11571
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L710:
	.sleb128	9
	.byte		"Os_ApiStopScheduleTable"
	.byte		0
	.4byte		.L11573
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L711:
	.sleb128	9
	.byte		"Os_ApiGetScheduleTableStatus"
	.byte		0
	.4byte		.L11575
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L712:
	.sleb128	9
	.byte		"Os_ApiNextScheduleTable"
	.byte		0
	.4byte		.L11577
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L713:
	.sleb128	9
	.byte		"Os_ApiStartScheduleTableSynchron"
	.byte		0
	.4byte		.L11579
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L714:
	.sleb128	9
	.byte		"Os_ApiSyncScheduleTable"
	.byte		0
	.4byte		.L11581
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L715:
	.sleb128	9
	.byte		"Os_ApiSetScheduleTableAsync"
	.byte		0
	.4byte		.L11583
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L716:
	.sleb128	9
	.byte		"Os_ApiCheckObjectAccess"
	.byte		0
	.4byte		.L11585
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L717:
	.sleb128	9
	.byte		"Os_ApiCheckObjectOwnership"
	.byte		0
	.4byte		.L11587
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L718:
	.sleb128	9
	.byte		"Os_ApiCallTrustedFunction"
	.byte		0
	.4byte		.L11589
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L719:
	.sleb128	9
	.byte		"Os_ApiStackUsage"
	.byte		0
	.4byte		.L11591
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L720:
	.sleb128	9
	.byte		"Os_API_GetSpinlock"
	.byte		0
	.4byte		.L11593
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L721:
	.sleb128	9
	.byte		"Os_API_ReleaseSpinlock"
	.byte		0
	.4byte		.L11595
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L722:
	.sleb128	9
	.byte		"Os_API_TryToGetSpinlock"
	.byte		0
	.4byte		.L11597
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L723:
	.sleb128	9
	.byte		"Os_API_IOCTransfer"
	.byte		0
	.4byte		.L11599
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L724:
	.sleb128	9
	.byte		"Os_ApiControlIdle"
	.byte		0
	.4byte		.L11601
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11506:
.L11602:
	.sleb128	8
	.4byte		.L11469
	.uleb128	60
	.uleb128	1
	.4byte		.L11603-.L2
	.uleb128	8
.L675:
	.sleb128	9
	.byte		"CoreID"
	.byte		0
	.4byte		.L11379
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L676:
	.sleb128	9
	.byte		"IdleMode"
	.byte		0
	.4byte		.L11604
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11603:
.L11600:
	.sleb128	8
	.4byte		.L11469
	.uleb128	60
	.uleb128	1
	.4byte		.L11606-.L2
	.uleb128	8
.L673:
	.sleb128	9
	.byte		"Ioc_Channel"
	.byte		0
	.4byte		.L11607
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L674:
	.sleb128	9
	.byte		"Ioc_Data"
	.byte		0
	.4byte		.L11611
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11606:
.L11598:
	.sleb128	8
	.4byte		.L11469
	.uleb128	60
	.uleb128	1
	.4byte		.L11617-.L2
	.uleb128	8
.L671:
	.sleb128	9
	.byte		"SpinlockId"
	.byte		0
	.4byte		.L11618
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L672:
	.sleb128	9
	.byte		"Success"
	.byte		0
	.4byte		.L11619
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11617:
.L11596:
	.sleb128	8
	.4byte		.L11469
	.uleb128	60
	.uleb128	1
	.4byte		.L11622-.L2
	.uleb128	2
.L670:
	.sleb128	9
	.byte		"SpinlockId"
	.byte		0
	.4byte		.L11618
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11622:
.L11594:
	.sleb128	8
	.4byte		.L11469
	.uleb128	60
	.uleb128	1
	.4byte		.L11623-.L2
	.uleb128	2
.L669:
	.sleb128	9
	.byte		"SpinlockId"
	.byte		0
	.4byte		.L11618
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11623:
.L11592:
	.sleb128	8
	.4byte		.L11469
	.uleb128	60
	.uleb128	1
	.4byte		.L11624-.L2
	.uleb128	20
.L664:
	.sleb128	9
	.byte		"ProcId"
	.byte		0
	.4byte		.L11625
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L665:
	.sleb128	9
	.byte		"MaxUsage"
	.byte		0
	.4byte		.L11367
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L666:
	.sleb128	9
	.byte		"MaxUsageRef"
	.byte		0
	.4byte		.L11626
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L667:
	.sleb128	9
	.byte		"CurrentUsage"
	.byte		0
	.4byte		.L11367
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L668:
	.sleb128	9
	.byte		"CurrentUsageRef"
	.byte		0
	.4byte		.L11626
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11624:
.L11590:
	.sleb128	8
	.4byte		.L11469
	.uleb128	60
	.uleb128	1
	.4byte		.L11627-.L2
	.uleb128	12
.L661:
	.sleb128	9
	.byte		"FunctionIndex"
	.byte		0
	.4byte		.L11628
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L662:
	.sleb128	9
	.byte		"ParamRef"
	.byte		0
	.4byte		.L11629
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L663:
	.sleb128	9
	.byte		"ReturnValue"
	.byte		0
	.4byte		.L11630
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11627:
.L11588:
	.sleb128	8
	.4byte		.L11469
	.uleb128	60
	.uleb128	1
	.4byte		.L11632-.L2
	.uleb128	12
.L658:
	.sleb128	9
	.byte		"AppID"
	.byte		0
	.4byte		.L11633
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L659:
	.sleb128	9
	.byte		"ObjectType"
	.byte		0
	.4byte		.L11634
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L660:
	.sleb128	9
	.byte		"Object"
	.byte		0
	.4byte		.L11492
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11632:
.L11586:
	.sleb128	8
	.4byte		.L11469
	.uleb128	60
	.uleb128	1
	.4byte		.L11636-.L2
	.uleb128	12
.L655:
	.sleb128	9
	.byte		"AppID"
	.byte		0
	.4byte		.L11633
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L656:
	.sleb128	9
	.byte		"ObjectType"
	.byte		0
	.4byte		.L11634
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L657:
	.sleb128	9
	.byte		"Object"
	.byte		0
	.4byte		.L11492
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11636:
.L11552:
	.sleb128	8
	.4byte		.L11469
	.uleb128	60
	.uleb128	1
	.4byte		.L11637-.L2
	.uleb128	4
.L654:
	.sleb128	9
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11638
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11637:
.L11550:
	.sleb128	8
	.4byte		.L11469
	.uleb128	60
	.uleb128	1
	.4byte		.L11639-.L2
	.uleb128	12
.L651:
	.sleb128	9
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11638
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L652:
	.sleb128	9
	.byte		"Start"
	.byte		0
	.4byte		.L11640
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L653:
	.sleb128	9
	.byte		"Cycle"
	.byte		0
	.4byte		.L11640
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11639:
.L11548:
	.sleb128	8
	.4byte		.L11469
	.uleb128	60
	.uleb128	1
	.4byte		.L11641-.L2
	.uleb128	12
.L648:
	.sleb128	9
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11638
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L649:
	.sleb128	9
	.byte		"Increment"
	.byte		0
	.4byte		.L11640
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L650:
	.sleb128	9
	.byte		"Cycle"
	.byte		0
	.4byte		.L11640
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11641:
.L11546:
	.sleb128	8
	.4byte		.L11469
	.uleb128	60
	.uleb128	1
	.4byte		.L11642-.L2
	.uleb128	8
.L646:
	.sleb128	9
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11638
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L647:
	.sleb128	9
	.byte		"TickRef"
	.byte		0
	.4byte		.L11643
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11642:
.L11544:
	.sleb128	8
	.4byte		.L11469
	.uleb128	60
	.uleb128	1
	.4byte		.L11645-.L2
	.uleb128	8
.L644:
	.sleb128	9
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11638
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L645:
	.sleb128	9
	.byte		"AlarmBaseTypeRef"
	.byte		0
	.4byte		.L11646
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11645:
.L11584:
	.sleb128	8
	.4byte		.L11469
	.uleb128	60
	.uleb128	1
	.4byte		.L11650-.L2
	.uleb128	4
.L643:
	.sleb128	9
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11651
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11650:
.L11582:
	.sleb128	8
	.4byte		.L11469
	.uleb128	60
	.uleb128	1
	.4byte		.L11652-.L2
	.uleb128	8
.L641:
	.sleb128	9
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11651
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L642:
	.sleb128	9
	.byte		"SyncValue"
	.byte		0
	.4byte		.L11640
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11652:
.L11580:
	.sleb128	8
	.4byte		.L11469
	.uleb128	60
	.uleb128	1
	.4byte		.L11653-.L2
	.uleb128	4
.L640:
	.sleb128	9
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11651
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11653:
.L11578:
	.sleb128	8
	.4byte		.L11469
	.uleb128	60
	.uleb128	1
	.4byte		.L11654-.L2
	.uleb128	8
.L638:
	.sleb128	9
	.byte		"SchTblIdFrom"
	.byte		0
	.4byte		.L11651
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L639:
	.sleb128	9
	.byte		"SchTblIdTo"
	.byte		0
	.4byte		.L11651
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11654:
.L11576:
	.sleb128	8
	.4byte		.L11469
	.uleb128	60
	.uleb128	1
	.4byte		.L11655-.L2
	.uleb128	8
.L636:
	.sleb128	9
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11651
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L637:
	.sleb128	9
	.byte		"SchTblStatus"
	.byte		0
	.4byte		.L11656
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11655:
.L11574:
	.sleb128	8
	.4byte		.L11469
	.uleb128	60
	.uleb128	1
	.4byte		.L11660-.L2
	.uleb128	4
.L635:
	.sleb128	9
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11651
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11660:
.L11572:
	.sleb128	8
	.4byte		.L11469
	.uleb128	60
	.uleb128	1
	.4byte		.L11661-.L2
	.uleb128	8
.L633:
	.sleb128	9
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11651
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L634:
	.sleb128	9
	.byte		"Offset"
	.byte		0
	.4byte		.L11640
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11661:
.L11570:
	.sleb128	8
	.4byte		.L11469
	.uleb128	60
	.uleb128	1
	.4byte		.L11662-.L2
	.uleb128	8
.L631:
	.sleb128	9
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11651
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L632:
	.sleb128	9
	.byte		"Start"
	.byte		0
	.4byte		.L11640
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11662:
.L11568:
	.sleb128	8
	.4byte		.L11469
	.uleb128	60
	.uleb128	1
	.4byte		.L11663-.L2
	.uleb128	12
.L628:
	.sleb128	9
	.byte		"CounterId"
	.byte		0
	.4byte		.L11664
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L629:
	.sleb128	9
	.byte		"ValuePtr"
	.byte		0
	.4byte		.L11643
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L630:
	.sleb128	9
	.byte		"ElapsedValuePtr"
	.byte		0
	.4byte		.L11643
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11663:
.L11566:
	.sleb128	8
	.4byte		.L11469
	.uleb128	60
	.uleb128	1
	.4byte		.L11665-.L2
	.uleb128	12
.L625:
	.sleb128	9
	.byte		"CounterId"
	.byte		0
	.4byte		.L11664
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L626:
	.sleb128	9
	.byte		"ValuePtr"
	.byte		0
	.4byte		.L11643
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L627:
	.sleb128	9
	.byte		"LightServiceFunction"
	.byte		0
	.4byte		.L11666
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11665:
.L11564:
	.sleb128	8
	.4byte		.L11469
	.uleb128	60
	.uleb128	1
	.4byte		.L11670-.L2
	.uleb128	4
.L624:
	.sleb128	9
	.byte		"CounterId"
	.byte		0
	.4byte		.L11664
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11670:
.L11560:
	.sleb128	8
	.4byte		.L11469
	.uleb128	60
	.uleb128	1
	.4byte		.L11671-.L2
	.uleb128	4
.L623:
	.sleb128	9
	.byte		"ISRId"
	.byte		0
	.4byte		.L11490
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11671:
.L11556:
	.sleb128	8
	.4byte		.L11469
	.uleb128	60
	.uleb128	1
	.4byte		.L11672-.L2
	.uleb128	2
.L621:
	.sleb128	9
	.byte		"Application"
	.byte		0
	.4byte		.L11633
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L622:
	.sleb128	9
	.byte		"RestartOption"
	.byte		0
	.4byte		.L11673
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
	.sleb128	0
.L11672:
.L11558:
	.sleb128	8
	.4byte		.L11469
	.uleb128	60
	.uleb128	1
	.4byte		.L11674-.L2
	.uleb128	1
.L620:
	.sleb128	9
	.byte		"Application"
	.byte		0
	.4byte		.L11633
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11674:
.L11554:
	.sleb128	8
	.4byte		.L11469
	.uleb128	60
	.uleb128	1
	.4byte		.L11675-.L2
	.uleb128	8
.L618:
	.sleb128	9
	.byte		"Application"
	.byte		0
	.4byte		.L11633
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L619:
	.sleb128	9
	.byte		"AppStateRef"
	.byte		0
	.4byte		.L11676
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11675:
.L11538:
	.sleb128	8
	.4byte		.L11469
	.uleb128	60
	.uleb128	1
	.4byte		.L11679-.L2
	.uleb128	8
.L617:
	.sleb128	9
	.byte		"EventMask"
	.byte		0
	.4byte		.L11680
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11679:
.L11536:
	.sleb128	8
	.4byte		.L11469
	.uleb128	60
	.uleb128	1
	.4byte		.L11683-.L2
	.uleb128	24
.L614:
	.sleb128	9
	.byte		"TaskId"
	.byte		0
	.4byte		.L11625
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L615:
	.sleb128	9
	.byte		"EventMask"
	.byte		0
	.4byte		.L11680
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L616:
	.sleb128	9
	.byte		"EventMaskRef"
	.byte		0
	.4byte		.L11684
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11683:
.L11534:
	.sleb128	8
	.4byte		.L11469
	.uleb128	60
	.uleb128	1
	.4byte		.L11686-.L2
	.uleb128	8
.L613:
	.sleb128	9
	.byte		"EventMask"
	.byte		0
	.4byte		.L11680
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11686:
.L11532:
	.sleb128	8
	.4byte		.L11469
	.uleb128	60
	.uleb128	1
	.4byte		.L11687-.L2
	.uleb128	16
.L611:
	.sleb128	9
	.byte		"TaskId"
	.byte		0
	.4byte		.L11625
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L612:
	.sleb128	9
	.byte		"EventMask"
	.byte		0
	.4byte		.L11680
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11687:
.L11530:
	.sleb128	8
	.4byte		.L11469
	.uleb128	60
	.uleb128	1
	.4byte		.L11688-.L2
	.uleb128	8
.L609:
	.sleb128	9
	.byte		"TaskId"
	.byte		0
	.4byte		.L11625
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L610:
	.sleb128	9
	.byte		"TaskStateRef"
	.byte		0
	.4byte		.L11689
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11688:
.L11528:
	.sleb128	8
	.4byte		.L11469
	.uleb128	60
	.uleb128	1
	.4byte		.L11693-.L2
	.uleb128	4
.L608:
	.sleb128	9
	.byte		"TaskIdRef"
	.byte		0
	.4byte		.L11694
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11693:
.L11526:
	.sleb128	8
	.4byte		.L11469
	.uleb128	60
	.uleb128	1
	.4byte		.L11696-.L2
	.uleb128	4
.L607:
	.sleb128	9
	.byte		"TaskId"
	.byte		0
	.4byte		.L11625
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11696:
.L11524:
	.sleb128	8
	.4byte		.L11469
	.uleb128	60
	.uleb128	1
	.4byte		.L11697-.L2
	.uleb128	4
.L606:
	.sleb128	9
	.byte		"TaskId"
	.byte		0
	.4byte		.L11625
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11697:
.L11542:
	.sleb128	8
	.4byte		.L11469
	.uleb128	60
	.uleb128	1
	.4byte		.L11698-.L2
	.uleb128	4
.L605:
	.sleb128	9
	.byte		"ResourceId"
	.byte		0
	.4byte		.L11699
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11698:
.L11540:
	.sleb128	8
	.4byte		.L11469
	.uleb128	60
	.uleb128	1
	.4byte		.L11700-.L2
	.uleb128	4
.L604:
	.sleb128	9
	.byte		"ResourceId"
	.byte		0
	.4byte		.L11699
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11700:
.L11562:
	.sleb128	8
	.4byte		.L11469
	.uleb128	60
	.uleb128	1
	.4byte		.L11701-.L2
	.uleb128	4
.L603:
	.sleb128	9
	.byte		"AppMode"
	.byte		0
	.4byte		.L11702
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11701:
.L11522:
	.sleb128	8
	.4byte		.L11469
	.uleb128	60
	.uleb128	1
	.4byte		.L11703-.L2
	.uleb128	2
.L602:
	.sleb128	9
	.byte		"CoreID"
	.byte		0
	.4byte		.L11379
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11703:
.L11516:
	.sleb128	8
	.4byte		.L11469
	.uleb128	60
	.uleb128	1
	.4byte		.L11704-.L2
	.uleb128	2
.L601:
	.sleb128	9
	.byte		"NumberOfActivatedCores"
	.byte		0
	.4byte		.L11379
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11704:
.L11514:
	.sleb128	8
	.4byte		.L11469
	.uleb128	60
	.uleb128	1
	.4byte		.L11705-.L2
	.uleb128	1
.L600:
	.sleb128	9
	.byte		"Error"
	.byte		0
	.4byte		.L11366
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11705:
.L11512:
	.sleb128	8
	.4byte		.L11469
	.uleb128	60
	.uleb128	1
	.4byte		.L11706-.L2
	.uleb128	8
.L598:
	.sleb128	9
	.byte		"ShutdownType"
	.byte		0
	.4byte		.L11707
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L599:
	.sleb128	9
	.byte		"Error"
	.byte		0
	.4byte		.L11366
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11706:
.L11510:
	.sleb128	8
	.4byte		.L11469
	.uleb128	60
	.uleb128	1
	.4byte		.L11709-.L2
	.uleb128	1
.L597:
	.sleb128	9
	.byte		"Error"
	.byte		0
	.4byte		.L11366
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11709:
.L11520:
	.sleb128	8
	.4byte		.L11469
	.uleb128	60
	.uleb128	1
	.4byte		.L11710-.L2
	.uleb128	8
.L595:
	.sleb128	9
	.byte		"CoreID"
	.byte		0
	.4byte		.L11379
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L596:
	.sleb128	9
	.byte		"StatusRef"
	.byte		0
	.4byte		.L11711
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11710:
.L11518:
	.sleb128	8
	.4byte		.L11469
	.uleb128	60
	.uleb128	1
	.4byte		.L11712-.L2
	.uleb128	8
.L593:
	.sleb128	9
	.byte		"CoreID"
	.byte		0
	.4byte		.L11379
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L594:
	.sleb128	9
	.byte		"StatusRef"
	.byte		0
	.4byte		.L11711
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11712:
.L11508:
	.sleb128	8
	.4byte		.L11469
	.uleb128	60
	.uleb128	1
	.4byte		.L11713-.L2
	.uleb128	4
.L592:
	.sleb128	9
	.byte		"AppMode"
	.byte		0
	.4byte		.L11702
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11713:
.L11610:
	.sleb128	8
	.4byte		.L11714
	.uleb128	33
	.uleb128	14
	.4byte		.L11715-.L2
	.uleb128	24
.L585:
	.sleb128	9
	.byte		"Os_IOC_ChannelDyn"
	.byte		0
	.4byte		.L11716
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L586:
	.sleb128	9
	.byte		"Os_IOC_ChannelLength"
	.byte		0
	.4byte		.L11720
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L587:
	.sleb128	9
	.byte		"Os_IOC_ChannelBuffer"
	.byte		0
	.4byte		.L11721
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L588:
	.sleb128	9
	.byte		"Os_IOC_ChannelElementSize"
	.byte		0
	.4byte		.L11722
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L589:
	.sleb128	9
	.byte		"Os_IOC_DataCount"
	.byte		0
	.4byte		.L11723
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L590:
	.sleb128	9
	.byte		"Os_IOC_DataDescriptor"
	.byte		0
	.4byte		.L11725
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L591:
	.sleb128	9
	.byte		"Os_IOC_LockResourceAddress"
	.byte		0
	.4byte		.L11730
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L11715:
.L11729:
	.sleb128	8
	.4byte		.L11714
	.uleb128	33
	.uleb128	14
	.4byte		.L11733-.L2
	.uleb128	4
.L581:
	.sleb128	9
	.byte		"Os_IOC_DataLength"
	.byte		0
	.4byte		.L11734
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L582:
	.sleb128	9
	.byte		"Os_IOC_DataOffset"
	.byte		0
	.4byte		.L11736
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L11733:
.L11719:
	.sleb128	8
	.4byte		.L11714
	.uleb128	33
	.uleb128	14
	.4byte		.L11738-.L2
	.uleb128	6
.L578:
	.sleb128	9
	.byte		"Os_IOC_ChannelHead"
	.byte		0
	.4byte		.L11720
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L579:
	.sleb128	9
	.byte		"Os_IOC_ChannelMessageCount"
	.byte		0
	.4byte		.L11720
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L580:
	.sleb128	9
	.byte		"Os_IOC_Status"
	.byte		0
	.4byte		.L11366
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11738:
.L11387:
	.sleb128	8
	.4byte		.L11739
	.uleb128	34
	.uleb128	14
	.4byte		.L11740-.L2
	.uleb128	2
.L529:
	.sleb128	9
	.byte		"Os_HookID"
	.byte		0
	.4byte		.L11398
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11740:
.L11376:
	.sleb128	10
	.4byte		.L11741
	.uleb128	80
	.uleb128	13
	.4byte		.L11742-.L2
	.byte		"Os_ProcStatType_s"
	.byte		0
	.uleb128	80
.L511:
	.sleb128	9
	.byte		"Os_ProcId"
	.byte		0
	.4byte		.L11743
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L512:
	.sleb128	9
	.byte		"Os_ProcCoreID"
	.byte		0
	.4byte		.L11378
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L513:
	.sleb128	9
	.byte		"Os_ProcDyn"
	.byte		0
	.4byte		.L11744
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L514:
	.sleb128	9
	.byte		"Os_ProcStack"
	.byte		0
	.4byte		.L11748
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L515:
	.sleb128	9
	.byte		"Os_ProcKind"
	.byte		0
	.4byte		.L11753
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L516:
	.sleb128	9
	.byte		"Os_ProcEventRights"
	.byte		0
	.4byte		.L11756
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L517:
	.sleb128	9
	.byte		"Os_ProcPriority"
	.byte		0
	.4byte		.L11757
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L518:
	.sleb128	9
	.byte		"Os_ProcRunPriority"
	.byte		0
	.4byte		.L11757
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L519:
	.sleb128	9
	.byte		"Os_ProcMaxActivations"
	.byte		0
	.4byte		.L11758
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L520:
	.sleb128	9
	.byte		"Os_ProcContext"
	.byte		0
	.4byte		.L11760
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L521:
	.sleb128	9
	.byte		"Os_ProcOwnerApp"
	.byte		0
	.4byte		.L11761
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L522:
	.sleb128	9
	.byte		"Os_ProcAppAccess"
	.byte		0
	.4byte		.L11762
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L523:
	.sleb128	9
	.byte		"Os_ProcEntryPoint"
	.byte		0
	.4byte		.L11766
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L524:
	.sleb128	9
	.byte		"Os_ProcAutoStart"
	.byte		0
	.4byte		.L11762
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
.L525:
	.sleb128	9
	.byte		"Os_ProcResourceCount"
	.byte		0
	.4byte		.L11771
	.sleb128	2
	.byte		0x23
	.uleb128	64
	.byte		0x1
.L526:
	.sleb128	9
	.byte		"Os_ProcResourceStack"
	.byte		0
	.4byte		.L11772
	.sleb128	2
	.byte		0x23
	.uleb128	68
	.byte		0x1
.L527:
	.sleb128	9
	.byte		"Os_ProcQueueElements"
	.byte		0
	.4byte		.L11778
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.byte		0x1
.L528:
	.sleb128	9
	.byte		"Os_ProcIsrPlatformConfig"
	.byte		0
	.4byte		.L11779
	.sleb128	2
	.byte		0x23
	.uleb128	76
	.byte		0x1
	.sleb128	0
.L11742:
.L11752:
	.sleb128	10
	.4byte		.L11741
	.uleb128	80
	.uleb128	13
	.4byte		.L11780-.L2
	.byte		"Os_ProcStackStruct"
	.byte		0
	.uleb128	8
.L509:
	.sleb128	9
	.byte		"Os_ProcStackSize"
	.byte		0
	.4byte		.L11781
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L510:
	.sleb128	9
	.byte		"Os_ProcStackBase"
	.byte		0
	.4byte		.L11760
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11780:
.L11747:
	.sleb128	8
	.4byte		.L11741
	.uleb128	80
	.uleb128	13
	.4byte		.L11783-.L2
	.uleb128	56
.L496:
	.sleb128	9
	.byte		"Os_ProcState"
	.byte		0
	.4byte		.L11691
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L497:
	.sleb128	9
	.byte		"Os_ProcContextState"
	.byte		0
	.4byte		.L11784
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L498:
	.sleb128	9
	.byte		"Os_ProcEvents"
	.byte		0
	.4byte		.L11680
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L499:
	.sleb128	9
	.byte		"Os_ProcEventWaitingFor"
	.byte		0
	.4byte		.L11680
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L500:
	.sleb128	9
	.byte		"Os_ProcActivations"
	.byte		0
	.4byte		.L11759
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L501:
	.sleb128	9
	.byte		"Os_ProcResourcesAllocated"
	.byte		0
	.4byte		.L11699
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L502:
	.sleb128	9
	.byte		"Os_ProcEnabled"
	.byte		0
	.4byte		.L11367
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L503:
	.sleb128	9
	.byte		"Os_ProcCurrentApp"
	.byte		0
	.4byte		.L11446
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L504:
	.sleb128	9
	.byte		"Os_ProcSpinlock"
	.byte		0
	.4byte		.L11786
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L505:
	.sleb128	9
	.byte		"Os_ProcFreeQueueElements"
	.byte		0
	.4byte		.L11471
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L506:
	.sleb128	9
	.byte		"Os_ProcCurrentPriority"
	.byte		0
	.4byte		.L11466
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L507:
	.sleb128	9
	.byte		"Os_ProcTFCallCount"
	.byte		0
	.4byte		.L11367
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L508:
	.sleb128	9
	.byte		"Os_FatalErrorOccured"
	.byte		0
	.4byte		.L11366
	.sleb128	2
	.byte		0x23
	.uleb128	53
	.byte		0x1
	.sleb128	0
.L11783:
.L11788:
	.sleb128	10
	.4byte		.L11789
	.uleb128	52
	.uleb128	1
	.4byte		.L11790-.L2
	.byte		"Os_SpinlockStatType_s"
	.byte		0
	.uleb128	16
.L448:
	.sleb128	9
	.byte		"Os_SpinlockId"
	.byte		0
	.4byte		.L11791
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L449:
	.sleb128	9
	.byte		"Os_SpinlockChainId"
	.byte		0
	.4byte		.L11791
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L450:
	.sleb128	9
	.byte		"Os_SpinlockDyn"
	.byte		0
	.4byte		.L11792
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L451:
	.sleb128	9
	.byte		"Os_SpinlockAccess"
	.byte		0
	.4byte		.L11762
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L452:
	.sleb128	9
	.byte		"Os_SpinlockLockResourceAddress"
	.byte		0
	.4byte		.L11730
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L11790:
.L11795:
	.sleb128	8
	.4byte		.L11789
	.uleb128	52
	.uleb128	1
	.4byte		.L11796-.L2
	.uleb128	12
.L445:
	.sleb128	9
	.byte		"Os_SpinlockLockerProc"
	.byte		0
	.4byte		.L11461
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L446:
	.sleb128	9
	.byte		"Os_SpinlockSuperseded"
	.byte		0
	.4byte		.L11786
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L447:
	.sleb128	9
	.byte		"Os_ResourceDependency"
	.byte		0
	.4byte		.L11774
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11796:
.L11449:
	.sleb128	10
	.4byte		.L11789
	.uleb128	52
	.uleb128	1
	.4byte		.L11797-.L2
	.byte		"Os_ApplicationStatType_s"
	.byte		0
	.uleb128	48
.L433:
	.sleb128	9
	.byte		"Os_AppDyn"
	.byte		0
	.4byte		.L11798
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L434:
	.sleb128	9
	.byte		"Os_AppId"
	.byte		0
	.4byte		.L11802
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L435:
	.sleb128	9
	.byte		"Os_AppRestartTask"
	.byte		0
	.4byte		.L11743
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L436:
	.sleb128	9
	.byte		"Os_AppKind"
	.byte		0
	.4byte		.L11803
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L437:
	.sleb128	9
	.byte		"Os_AppShutdownHook"
	.byte		0
	.4byte		.L11806
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L438:
	.sleb128	9
	.byte		"Os_AppStartupHook"
	.byte		0
	.4byte		.L11811
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L439:
	.sleb128	9
	.byte		"Os_AppErrorHook"
	.byte		0
	.4byte		.L11816
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L440:
	.sleb128	9
	.byte		"Os_AppProcIDs"
	.byte		0
	.4byte		.L11821
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L441:
	.sleb128	9
	.byte		"Os_AppCounterIDs"
	.byte		0
	.4byte		.L11824
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L442:
	.sleb128	9
	.byte		"Os_AppAlarmIDs"
	.byte		0
	.4byte		.L11827
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L443:
	.sleb128	9
	.byte		"Os_AppSchTblIDs"
	.byte		0
	.4byte		.L11830
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L444:
	.sleb128	9
	.byte		"Os_CoreAssigment"
	.byte		0
	.4byte		.L11378
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
	.sleb128	0
.L11797:
.L11801:
	.sleb128	8
	.4byte		.L11789
	.uleb128	52
	.uleb128	1
	.4byte		.L11833-.L2
	.uleb128	1
.L432:
	.sleb128	9
	.byte		"Os_AppState"
	.byte		0
	.4byte		.L11678
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11833:
.L11777:
	.sleb128	8
	.4byte		.L11834
	.uleb128	32
	.uleb128	1
	.4byte		.L11835-.L2
	.uleb128	12
.L429:
	.sleb128	9
	.byte		"Os_ResourcePriority"
	.byte		0
	.4byte		.L11757
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L430:
	.sleb128	9
	.byte		"Os_ResourceAccessRights"
	.byte		0
	.4byte		.L11763
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L431:
	.sleb128	9
	.byte		"Os_ResourceDyn"
	.byte		0
	.4byte		.L11836
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11835:
.L11838:
	.sleb128	8
	.4byte		.L11834
	.uleb128	32
	.uleb128	1
	.4byte		.L11839-.L2
	.uleb128	4
.L428:
	.sleb128	9
	.byte		"Os_LockerProc"
	.byte		0
	.4byte		.L11461
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11839:
.L11454:
	.sleb128	8
	.4byte		.L11834
	.uleb128	32
	.uleb128	1
	.4byte		.L11840-.L2
	.uleb128	144
.L423:
	.sleb128	9
	.byte		"Os_Error"
	.byte		0
	.4byte		.L11841
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L424:
	.sleb128	9
	.byte		"Os_ExceptionStatus"
	.byte		0
	.4byte		.L11843
	.sleb128	2
	.byte		0x23
	.uleb128	120
	.byte		0x1
	.sleb128	0
.L11840:
.L11483:
	.sleb128	8
	.4byte		.L11834
	.uleb128	32
	.uleb128	1
	.4byte		.L11845-.L2
	.uleb128	24
.L417:
	.sleb128	9
	.byte		"Os_DisAllInt"
	.byte		0
	.4byte		.L11846
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L418:
	.sleb128	9
	.byte		"Os_EnAllInt"
	.byte		0
	.4byte		.L11846
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L419:
	.sleb128	9
	.byte		"Os_SusAllInt"
	.byte		0
	.4byte		.L11846
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L420:
	.sleb128	9
	.byte		"Os_ResAllInt"
	.byte		0
	.4byte		.L11846
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L421:
	.sleb128	9
	.byte		"Os_SusOsInt"
	.byte		0
	.4byte		.L11846
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L422:
	.sleb128	9
	.byte		"Os_ResOsInt"
	.byte		0
	.4byte		.L11846
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L11845:
.L11844:
	.sleb128	8
	.4byte		.L11834
	.uleb128	32
	.uleb128	1
	.4byte		.L11851-.L2
	.uleb128	20
.L412:
	.sleb128	9
	.byte		"Os_ExceptionType"
	.byte		0
	.4byte		.L11852
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L413:
	.sleb128	9
	.byte		"Os_ExceptionCause"
	.byte		0
	.4byte		.L11439
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L414:
	.sleb128	9
	.byte		"Os_ExceptionAuxiliaryCause"
	.byte		0
	.4byte		.L11439
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L415:
	.sleb128	9
	.byte		"Os_ExceptionExecutionAddress"
	.byte		0
	.4byte		.L11438
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L416:
	.sleb128	9
	.byte		"Os_ExceptionAccessAddress"
	.byte		0
	.4byte		.L11438
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11851:
.L11842:
	.sleb128	8
	.4byte		.L11854
	.uleb128	174
	.uleb128	1
	.4byte		.L11855-.L2
	.uleb128	120
.L409:
	.sleb128	9
	.byte		"Os_ShutdownError"
	.byte		0
	.4byte		.L11856
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L410:
	.sleb128	9
	.byte		"Os_ParameterError"
	.byte		0
	.4byte		.L11858
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L411:
	.sleb128	9
	.byte		"Os_ServiceError"
	.byte		0
	.4byte		.L11860
	.sleb128	2
	.byte		0x23
	.uleb128	112
	.byte		0x1
	.sleb128	0
.L11855:
.L11861:
	.sleb128	8
	.4byte		.L11854
	.uleb128	174
	.uleb128	1
	.4byte		.L11862-.L2
	.uleb128	8
.L406:
	.sleb128	9
	.byte		"Os_ServiceTrace"
	.byte		0
	.4byte		.L11863
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L407:
	.sleb128	9
	.byte		"Os_LastError"
	.byte		0
	.4byte		.L11366
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L408:
	.sleb128	9
	.byte		"Os_FaultyServiceId"
	.byte		0
	.4byte		.L11370
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11862:
.L11859:
	.sleb128	8
	.4byte		.L11854
	.uleb128	174
	.uleb128	1
	.4byte		.L11864-.L2
	.uleb128	104
.L381:
	.sleb128	9
	.byte		"Os_Err_TaskID"
	.byte		0
	.4byte		.L11625
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L382:
	.sleb128	9
	.byte		"Os_Err_ResID"
	.byte		0
	.4byte		.L11699
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L383:
	.sleb128	9
	.byte		"Os_Err_MaskType_Mask"
	.byte		0
	.4byte		.L11680
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L384:
	.sleb128	9
	.byte		"Os_Err_AlarmID"
	.byte		0
	.4byte		.L11638
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L385:
	.sleb128	9
	.byte		"Os_Err_TicksStart"
	.byte		0
	.4byte		.L11640
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L386:
	.sleb128	9
	.byte		"Os_Err_TicksCycle"
	.byte		0
	.4byte		.L11640
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L387:
	.sleb128	9
	.byte		"Os_Err_FuncIndex"
	.byte		0
	.4byte		.L11628
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L388:
	.sleb128	9
	.byte		"Os_Err_FuncParamRefType"
	.byte		0
	.4byte		.L11629
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L389:
	.sleb128	9
	.byte		"Os_Err_ApplID"
	.byte		0
	.4byte		.L11633
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L390:
	.sleb128	9
	.byte		"Os_Err_ApplStateRefType"
	.byte		0
	.4byte		.L11676
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L391:
	.sleb128	9
	.byte		"Os_Err_ObjType"
	.byte		0
	.4byte		.L11634
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L392:
	.sleb128	9
	.byte		"Os_Err_SchedID"
	.byte		0
	.4byte		.L11651
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L393:
	.sleb128	9
	.byte		"Os_Err_SchedID_Next"
	.byte		0
	.4byte		.L11651
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L394:
	.sleb128	9
	.byte		"Os_Err_CntID"
	.byte		0
	.4byte		.L11664
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L395:
	.sleb128	9
	.byte		"Os_Err_RestartType"
	.byte		0
	.4byte		.L11673
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
.L396:
	.sleb128	9
	.byte		"Os_Err_MaskRefType"
	.byte		0
	.4byte		.L11684
	.sleb128	2
	.byte		0x23
	.uleb128	64
	.byte		0x1
.L397:
	.sleb128	9
	.byte		"Os_Err_TaskStateRef"
	.byte		0
	.4byte		.L11689
	.sleb128	2
	.byte		0x23
	.uleb128	68
	.byte		0x1
.L398:
	.sleb128	9
	.byte		"Os_Err_TickRef_Ticks"
	.byte		0
	.4byte		.L11643
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.byte		0x1
.L399:
	.sleb128	9
	.byte		"Os_Err_AlarmBaseRefType_Info"
	.byte		0
	.4byte		.L11646
	.sleb128	2
	.byte		0x23
	.uleb128	76
	.byte		0x1
.L400:
	.sleb128	9
	.byte		"Os_Err_TaskIDRef"
	.byte		0
	.4byte		.L11694
	.sleb128	2
	.byte		0x23
	.uleb128	80
	.byte		0x1
.L401:
	.sleb128	9
	.byte		"Os_Err_TblStatusRefType"
	.byte		0
	.4byte		.L11656
	.sleb128	2
	.byte		0x23
	.uleb128	84
	.byte		0x1
.L402:
	.sleb128	9
	.byte		"Os_Err_TickRef_ElapsedTicks"
	.byte		0
	.4byte		.L11643
	.sleb128	2
	.byte		0x23
	.uleb128	88
	.byte		0x1
.L403:
	.sleb128	9
	.byte		"Os_Err_ObjObj"
	.byte		0
	.4byte		.L11492
	.sleb128	2
	.byte		0x23
	.uleb128	92
	.byte		0x1
.L404:
	.sleb128	9
	.byte		"Os_Err_SpinlockID"
	.byte		0
	.4byte		.L11618
	.sleb128	2
	.byte		0x23
	.uleb128	96
	.byte		0x1
.L405:
	.sleb128	9
	.byte		"Os_Err_TryToGetSpinlockRef"
	.byte		0
	.4byte		.L11865
	.sleb128	2
	.byte		0x23
	.uleb128	100
	.byte		0x1
	.sleb128	0
.L11864:
.L11857:
	.sleb128	8
	.4byte		.L11854
	.uleb128	174
	.uleb128	1
	.4byte		.L11866-.L2
	.uleb128	8
.L379:
	.sleb128	9
	.byte		"Os_ShutdownErrorCode"
	.byte		0
	.4byte		.L11366
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L380:
	.sleb128	9
	.byte		"Os_ShutdownInternalErrorCode"
	.byte		0
	.4byte		.L11867
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11866:
.L11649:
	.sleb128	8
	.4byte		.L11869
	.uleb128	50
	.uleb128	1
	.4byte		.L11870-.L2
	.uleb128	12
.L376:
	.sleb128	9
	.byte		"maxallowedvalue"
	.byte		0
	.4byte		.L11640
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L377:
	.sleb128	9
	.byte		"ticksperbase"
	.byte		0
	.4byte		.L11640
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L378:
	.sleb128	9
	.byte		"mincycle"
	.byte		0
	.4byte		.L11640
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11870:
.L11479:
	.sleb128	8
	.4byte		.L11871
	.uleb128	87
	.uleb128	7
	.4byte		.L11872-.L2
	.uleb128	8
.L364:
	.sleb128	9
	.byte		"Os_IsrPltId"
	.byte		0
	.4byte		.L11873
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L365:
	.sleb128	9
	.byte		"Os_IsrPltLevel"
	.byte		0
	.4byte		.L11874
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11872:
	.section	.debug_info,,n
.L11391:
	.sleb128	12
	.4byte		.L11876
	.uleb128	80
	.uleb128	1
	.4byte		.L11877-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	13
	.byte		"OS_CORE_LOCK_STATUS_UNLOCKED"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"OS_CORE_LOCK_STATUS_LOCKED"
	.byte		0
	.sleb128	1
	.sleb128	0
.L11877:
.L11465:
	.sleb128	12
	.4byte		.L11412
	.uleb128	69
	.uleb128	1
	.4byte		.L11878-.L2
	.uleb128	4
	.sleb128	13
	.byte		"Os_Return"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"Os_Load"
	.byte		0
	.sleb128	1
	.sleb128	13
	.byte		"Os_SaveAndLoad"
	.byte		0
	.sleb128	2
	.sleb128	13
	.byte		"Os_SaveAndIdle"
	.byte		0
	.sleb128	3
	.sleb128	13
	.byte		"Os_Idle"
	.byte		0
	.sleb128	4
	.sleb128	0
.L11878:
.L11489:
	.sleb128	12
	.4byte		.L11469
	.uleb128	612
	.uleb128	1
	.4byte		.L11879-.L2
	.uleb128	4
	.sleb128	13
	.byte		"OS_DISPATCH_JUSTSCHEDULE"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"OS_DISPATCH_API"
	.byte		0
	.sleb128	1
	.sleb128	13
	.byte		"OS_DISPATCH_INTERRUPT"
	.byte		0
	.sleb128	2
	.sleb128	13
	.byte		"OS_DISPATCH_APIRE"
	.byte		0
	.sleb128	3
	.sleb128	13
	.byte		"OS_DISPATCH_INTERNAL"
	.byte		0
	.sleb128	4
	.sleb128	13
	.byte		"OS_DISPATCH_INTERNALCROSS"
	.byte		0
	.sleb128	5
	.sleb128	13
	.byte		"OS_DISPATCH_INVALID"
	.byte		0
	.sleb128	6
	.sleb128	0
.L11879:
.L11498:
	.sleb128	12
	.4byte		.L11469
	.uleb128	60
	.uleb128	1
	.4byte		.L11880-.L2
	.uleb128	4
	.sleb128	13
	.byte		"OS_DISPATCH_SINGLE"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"OS_DISPATCH_MULTI"
	.byte		0
	.sleb128	1
	.sleb128	13
	.byte		"OS_DISPATCH_ALL"
	.byte		0
	.sleb128	2
	.sleb128	0
.L11880:
	.section	.debug_info,,n
.L11631:
	.sleb128	14
	.4byte		.L11714
	.uleb128	33
	.uleb128	14
	.4byte		.L11881-.L2
	.byte		"TrustedFunctionReturnValueType_e"
	.byte		0
	.uleb128	4
	.sleb128	13
	.byte		"TRUSTEDFUNCTION_RETURN_VALUE_NONE"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"TRUSTEDFUNCTION_RETURN_VALUE_SCHEDULE"
	.byte		0
	.sleb128	1
	.sleb128	0
.L11881:
.L11785:
	.sleb128	12
	.4byte		.L11741
	.uleb128	80
	.uleb128	13
	.4byte		.L11882-.L2
	.uleb128	4
	.sleb128	13
	.byte		"Os_ProcContextInvalid"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"Os_ProcContextActive"
	.byte		0
	.sleb128	1
	.sleb128	13
	.byte		"Os_ProcContextPrepared"
	.byte		0
	.sleb128	2
	.sleb128	0
.L11882:
.L11755:
	.sleb128	12
	.4byte		.L11741
	.uleb128	61
	.uleb128	1
	.4byte		.L11883-.L2
	.uleb128	4
	.sleb128	13
	.byte		"Os_Proc_Task"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"Os_Proc_ISR_CAT2"
	.byte		0
	.sleb128	1
	.sleb128	0
.L11883:
.L11805:
	.sleb128	12
	.4byte		.L11789
	.uleb128	52
	.uleb128	1
	.4byte		.L11884-.L2
	.uleb128	4
	.sleb128	13
	.byte		"OS_TRUSTED"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"OS_NONTRUSTED"
	.byte		0
	.sleb128	1
	.sleb128	0
.L11884:
.L11853:
	.sleb128	12
	.4byte		.L11834
	.uleb128	32
	.uleb128	1
	.4byte		.L11885-.L2
	.uleb128	4
	.sleb128	13
	.byte		"OS_EXCEPTION_NONE"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"OS_EXCEPTION_CRITICAL_INPUT"
	.byte		0
	.sleb128	1
	.sleb128	13
	.byte		"OS_EXCEPTION_MACHINE_CHECK"
	.byte		0
	.sleb128	2
	.sleb128	13
	.byte		"OS_EXCEPTION_DATA_STORAGE"
	.byte		0
	.sleb128	3
	.sleb128	13
	.byte		"OS_EXCEPTION_INSTRUCTION_STORAGE"
	.byte		0
	.sleb128	4
	.sleb128	13
	.byte		"OS_EXCEPTION_EXTERNAL_INPUT"
	.byte		0
	.sleb128	5
	.sleb128	13
	.byte		"OS_EXCEPTION_ALIGNMENT"
	.byte		0
	.sleb128	6
	.sleb128	13
	.byte		"OS_EXCEPTION_PROGRAM"
	.byte		0
	.sleb128	7
	.sleb128	13
	.byte		"OS_EXCEPTION_FLOATINGPOINT_UNAVAILABLE"
	.byte		0
	.sleb128	8
	.sleb128	13
	.byte		"OS_EXCEPTION_AUX_PROC_UNAVAILABLE"
	.byte		0
	.sleb128	9
	.sleb128	13
	.byte		"OS_EXCEPTION_DECREMENTER"
	.byte		0
	.sleb128	10
	.sleb128	13
	.byte		"OS_EXCEPTION_FIXED_INTERVAL_TIMER"
	.byte		0
	.sleb128	11
	.sleb128	13
	.byte		"OS_EXCEPTION_WATCHDOG"
	.byte		0
	.sleb128	12
	.sleb128	13
	.byte		"OS_EXCEPTION_DATA_TLB_ERROR"
	.byte		0
	.sleb128	13
	.sleb128	13
	.byte		"OS_EXCEPTION_INSTRUCTION_TLB_ERROR"
	.byte		0
	.sleb128	14
	.sleb128	13
	.byte		"OS_EXCEPTION_DEBUG"
	.byte		0
	.sleb128	15
	.sleb128	13
	.byte		"OS_EXCEPTION_SPE_UNAVAILABLE"
	.byte		0
	.sleb128	16
	.sleb128	13
	.byte		"OS_EXCEPTION_SPE_DATA"
	.byte		0
	.sleb128	17
	.sleb128	13
	.byte		"OS_EXCEPTION_SPE_ROUND"
	.byte		0
	.sleb128	18
	.sleb128	13
	.byte		"OS_EXCEPTION_COUNT"
	.byte		0
	.sleb128	19
	.sleb128	0
.L11885:
.L11868:
	.sleb128	12
	.4byte		.L11854
	.uleb128	174
	.uleb128	1
	.4byte		.L11886-.L2
	.uleb128	4
	.sleb128	13
	.byte		"E_OS_SYS_OK"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"E_OS_SYS_UNKNOWN_API"
	.byte		0
	.sleb128	1
	.sleb128	13
	.byte		"E_OS_SYS_INVALID_STARTSTATE"
	.byte		0
	.sleb128	2
	.sleb128	13
	.byte		"E_OS_SYS_INVALID_MASTERAPPMODE"
	.byte		0
	.sleb128	3
	.sleb128	13
	.byte		"E_OS_SYS_INVALID_SLAVEAPPMODE"
	.byte		0
	.sleb128	4
	.sleb128	13
	.byte		"E_OS_SYS_COUNTERACTION_OVERFLOW"
	.byte		0
	.sleb128	5
	.sleb128	13
	.byte		"E_OS_SYS_COUNTEREP_OVERFLOW"
	.byte		0
	.sleb128	6
	.sleb128	13
	.byte		"E_OS_SYS_INVALID_COUNTEROWNER"
	.byte		0
	.sleb128	7
	.sleb128	13
	.byte		"E_OS_SYS_WRONG_APIMAGIC"
	.byte		0
	.sleb128	8
	.sleb128	13
	.byte		"E_OS_SYS_WRONG_DISPATCHKIND1"
	.byte		0
	.sleb128	9
	.sleb128	13
	.byte		"E_OS_SYS_WRONG_DISPATCHKIND2"
	.byte		0
	.sleb128	10
	.sleb128	13
	.byte		"E_OS_SYS_WRONG_DISPATCHKIND3"
	.byte		0
	.sleb128	11
	.sleb128	13
	.byte		"E_OS_SYS_WRONG_DISPATCHKIND4"
	.byte		0
	.sleb128	12
	.sleb128	13
	.byte		"E_OS_SYS_WRONG_DISPATCHKIND5"
	.byte		0
	.sleb128	13
	.sleb128	13
	.byte		"E_OS_SYS_DISPATCHER_OVERFLOW"
	.byte		0
	.sleb128	14
	.sleb128	13
	.byte		"E_OS_SYS_INVALID_ALARMACTION"
	.byte		0
	.sleb128	15
	.sleb128	13
	.byte		"E_OS_SYS_INVALID_SCHTBLSTARTKIND"
	.byte		0
	.sleb128	16
	.sleb128	13
	.byte		"E_OS_SYS_INVALID_ISRPROCKIND"
	.byte		0
	.sleb128	17
	.sleb128	13
	.byte		"E_OS_SYS_WRONG_TPSTATE1"
	.byte		0
	.sleb128	18
	.sleb128	13
	.byte		"E_OS_SYS_WRONG_TPSTATE2"
	.byte		0
	.sleb128	19
	.sleb128	13
	.byte		"E_OS_SYS_WRONG_TPSTATE3"
	.byte		0
	.sleb128	20
	.sleb128	13
	.byte		"E_OS_SYS_WRONG_TPSTATE4"
	.byte		0
	.sleb128	21
	.sleb128	13
	.byte		"E_OS_SYS_WRONG_TPSTATE5"
	.byte		0
	.sleb128	22
	.sleb128	13
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION0"
	.byte		0
	.sleb128	23
	.sleb128	13
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION1"
	.byte		0
	.sleb128	24
	.sleb128	13
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION2"
	.byte		0
	.sleb128	25
	.sleb128	13
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION3"
	.byte		0
	.sleb128	26
	.sleb128	13
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION4"
	.byte		0
	.sleb128	27
	.sleb128	13
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION5"
	.byte		0
	.sleb128	28
	.sleb128	13
	.byte		"E_OS_SYS_INVALID_QUEUEHEAD"
	.byte		0
	.sleb128	29
	.sleb128	13
	.byte		"E_OS_SYS_INVALID_QUEUEINDEX"
	.byte		0
	.sleb128	30
	.sleb128	13
	.byte		"E_OS_SYS_INVALID_PROCSTATE"
	.byte		0
	.sleb128	31
	.sleb128	13
	.byte		"E_OS_SYS_LINKTIMEGUARD_ERROR"
	.byte		0
	.sleb128	32
	.sleb128	13
	.byte		"E_OS_SYS_WRONG_CORESTATE"
	.byte		0
	.sleb128	33
	.sleb128	13
	.byte		"E_OS_SYS_COUNTERID"
	.byte		0
	.sleb128	34
	.sleb128	13
	.byte		"E_OS_SYS_COUNTER_CANCELEDNOTFOUND"
	.byte		0
	.sleb128	35
	.sleb128	13
	.byte		"E_OS_SYS_COUNTER_ACTIONCHAINISBROKEN"
	.byte		0
	.sleb128	36
	.sleb128	13
	.byte		"E_OS_SYS_COUNTER_ACTIONCHAINISBROKEN2"
	.byte		0
	.sleb128	37
	.sleb128	13
	.byte		"E_OS_SYS_COUNTER_EPCHAINISBROKEN"
	.byte		0
	.sleb128	38
	.sleb128	13
	.byte		"E_OS_SYS_ALARMID"
	.byte		0
	.sleb128	39
	.sleb128	13
	.byte		"E_OS_SYS_RESUMEPROC_MAXACTIVATION"
	.byte		0
	.sleb128	40
	.sleb128	13
	.byte		"E_OS_SYS_QUEUEELEMENT_OVERFLOW"
	.byte		0
	.sleb128	41
	.sleb128	13
	.byte		"E_OS_SYS_SCHEDULER_ERROR"
	.byte		0
	.sleb128	42
	.sleb128	13
	.byte		"E_OS_SYS_EVENTSTAT"
	.byte		0
	.sleb128	43
	.sleb128	13
	.byte		"E_OS_SYS_TASKID"
	.byte		0
	.sleb128	44
	.sleb128	13
	.byte		"E_OS_SYS_TASKMISSINGEND_PROCKIND"
	.byte		0
	.sleb128	45
	.sleb128	13
	.byte		"E_OS_SYS_TASKMISSINGEND_COREID"
	.byte		0
	.sleb128	46
	.sleb128	13
	.byte		"E_OS_SYS_INVALID_TIMINGPROTECTIONSTATE"
	.byte		0
	.sleb128	47
	.sleb128	13
	.byte		"E_OS_SYS_INVALID_EXCEPTION"
	.byte		0
	.sleb128	48
	.sleb128	13
	.byte		"E_OS_SYS_INVALID_PLATFORM_TIMER"
	.byte		0
	.sleb128	49
	.sleb128	13
	.byte		"E_OS_SYS_KERNELSTACK_OVERFLOW"
	.byte		0
	.sleb128	50
	.sleb128	13
	.byte		"E_OS_SYS_INVALID_SECTION_SIZE"
	.byte		0
	.sleb128	51
	.sleb128	13
	.byte		"E_OS_SYS_MEMPROT_INVALID_APP"
	.byte		0
	.sleb128	52
	.sleb128	13
	.byte		"E_OS_SYS_CALLEVEL"
	.byte		0
	.sleb128	53
	.sleb128	13
	.byte		"E_OS_SYS_TIMER_RUNNING"
	.byte		0
	.sleb128	54
	.sleb128	13
	.byte		"E_OS_SYS_TIMER_STOPPED"
	.byte		0
	.sleb128	55
	.sleb128	13
	.byte		"E_OS_SYS_TIMER_TOO_MUCH_JITTER"
	.byte		0
	.sleb128	56
	.sleb128	13
	.byte		"E_OS_SYS_SSG_NESTING"
	.byte		0
	.sleb128	57
	.sleb128	13
	.byte		"E_OS_SYS_SSG_OVERFLOW"
	.byte		0
	.sleb128	58
	.sleb128	13
	.byte		"E_OS_SYS_CORELOCK_LOCKED"
	.byte		0
	.sleb128	59
	.sleb128	13
	.byte		"E_OS_SYS_CORELOCK_UNLOCKED"
	.byte		0
	.sleb128	60
	.sleb128	13
	.byte		"E_OS_SYS_TFPROCAPPINCONSISTENCY"
	.byte		0
	.sleb128	61
	.sleb128	13
	.byte		"E_OS_SYS_PROCENABLEDALREADY"
	.byte		0
	.sleb128	62
	.sleb128	0
.L11886:
.L11371:
	.sleb128	12
	.4byte		.L11854
	.uleb128	86
	.uleb128	1
	.4byte		.L11887-.L2
	.uleb128	4
	.sleb128	13
	.byte		"OSServiceId_GetApplicationID"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"OSServiceId_GetISRID"
	.byte		0
	.sleb128	1
	.sleb128	13
	.byte		"OSServiceId_CallTrustedFunction"
	.byte		0
	.sleb128	2
	.sleb128	13
	.byte		"OSServiceId_CheckISRMemoryAccess"
	.byte		0
	.sleb128	3
	.sleb128	13
	.byte		"OSServiceId_CheckTaskMemoryAccess"
	.byte		0
	.sleb128	4
	.sleb128	13
	.byte		"OSServiceId_CheckObjectAccess"
	.byte		0
	.sleb128	5
	.sleb128	13
	.byte		"OSServiceId_CheckObjectOwnership"
	.byte		0
	.sleb128	6
	.sleb128	13
	.byte		"OSServiceId_StartScheduleTableRel"
	.byte		0
	.sleb128	7
	.sleb128	13
	.byte		"OSServiceId_StartScheduleTableAbs"
	.byte		0
	.sleb128	8
	.sleb128	13
	.byte		"OSServiceId_StopScheduleTable"
	.byte		0
	.sleb128	9
	.sleb128	13
	.byte		"OSServiceId_NextScheduleTable"
	.byte		0
	.sleb128	10
	.sleb128	13
	.byte		"OSServiceId_StartScheduleTableSynchron"
	.byte		0
	.sleb128	11
	.sleb128	13
	.byte		"OSServiceId_SyncScheduleTable"
	.byte		0
	.sleb128	12
	.sleb128	13
	.byte		"OSServiceId_SetScheduleTableAsync"
	.byte		0
	.sleb128	13
	.sleb128	13
	.byte		"OSServiceId_GetScheduleTableStatus"
	.byte		0
	.sleb128	14
	.sleb128	13
	.byte		"OSServiceId_IncrementCounter"
	.byte		0
	.sleb128	15
	.sleb128	13
	.byte		"OSServiceId_GetCounterValue"
	.byte		0
	.sleb128	16
	.sleb128	13
	.byte		"OSServiceId_GetElapsedValue"
	.byte		0
	.sleb128	17
	.sleb128	13
	.byte		"OSServiceId_TerminateApplication"
	.byte		0
	.sleb128	18
	.sleb128	13
	.byte		"OSServiceId_AllowAcess"
	.byte		0
	.sleb128	19
	.sleb128	13
	.byte		"OSServiceId_GetApplicationState"
	.byte		0
	.sleb128	20
	.sleb128	13
	.byte		"OSServiceId_GetNumberOfActivatedCores"
	.byte		0
	.sleb128	21
	.sleb128	13
	.byte		"OSServiceId_GetCoreID"
	.byte		0
	.sleb128	22
	.sleb128	13
	.byte		"OSServiceId_StartCore"
	.byte		0
	.sleb128	23
	.sleb128	13
	.byte		"OSServiceId_StartNonAutosarCore"
	.byte		0
	.sleb128	24
	.sleb128	13
	.byte		"OSServiceId_GetSpinlock"
	.byte		0
	.sleb128	25
	.sleb128	13
	.byte		"OSServiceId_ReleaseSpinlock"
	.byte		0
	.sleb128	26
	.sleb128	13
	.byte		"OSServiceId_TryToGetSpinlock"
	.byte		0
	.sleb128	27
	.sleb128	13
	.byte		"OSServiceId_ShutdownAllCores"
	.byte		0
	.sleb128	28
	.sleb128	13
	.byte		"OSServiceId_ControlIdle"
	.byte		0
	.sleb128	29
	.sleb128	13
	.byte		"OSServiceId_IOC_Send"
	.byte		0
	.sleb128	30
	.sleb128	13
	.byte		"OSServiceId_IOC_Write"
	.byte		0
	.sleb128	31
	.sleb128	13
	.byte		"OSServiceId_IOC_SendGroup"
	.byte		0
	.sleb128	32
	.sleb128	13
	.byte		"OSServiceId_IOC_WriteFGroup"
	.byte		0
	.sleb128	33
	.sleb128	13
	.byte		"OSServiceId_IOC_Receive"
	.byte		0
	.sleb128	34
	.sleb128	13
	.byte		"OSServiceId_IOC_Read"
	.byte		0
	.sleb128	35
	.sleb128	13
	.byte		"OSServiceId_IOC_ReceiveGroup"
	.byte		0
	.sleb128	36
	.sleb128	13
	.byte		"OSServiceId_IOC_ReadGroup"
	.byte		0
	.sleb128	37
	.sleb128	13
	.byte		"OSServiceId_IOC_EmptyQueue"
	.byte		0
	.sleb128	38
	.sleb128	13
	.byte		"OSServiceId_IOC_ReceiverPullCB"
	.byte		0
	.sleb128	39
	.sleb128	13
	.byte		"OSServiceId_ActivateTask"
	.byte		0
	.sleb128	128
	.sleb128	13
	.byte		"OSServiceId_TerminateTask"
	.byte		0
	.sleb128	129
	.sleb128	13
	.byte		"OSServiceId_ChainTask"
	.byte		0
	.sleb128	130
	.sleb128	13
	.byte		"OSServiceId_Schedule"
	.byte		0
	.sleb128	131
	.sleb128	13
	.byte		"OSServiceId_GetTaskID"
	.byte		0
	.sleb128	132
	.sleb128	13
	.byte		"OSServiceId_GetTaskState"
	.byte		0
	.sleb128	133
	.sleb128	13
	.byte		"OSServiceId_EnableAllInterrupts"
	.byte		0
	.sleb128	134
	.sleb128	13
	.byte		"OSServiceId_DisableAllInterrupts"
	.byte		0
	.sleb128	135
	.sleb128	13
	.byte		"OSServiceId_ResumeAllInterrupts"
	.byte		0
	.sleb128	136
	.sleb128	13
	.byte		"OSServiceId_SuspendAllInterrupts"
	.byte		0
	.sleb128	137
	.sleb128	13
	.byte		"OSServiceId_ResumeOSInterrupts"
	.byte		0
	.sleb128	138
	.sleb128	13
	.byte		"OSServiceId_SuspendOSInterrupts"
	.byte		0
	.sleb128	139
	.sleb128	13
	.byte		"OSServiceId_GetResource"
	.byte		0
	.sleb128	140
	.sleb128	13
	.byte		"OSServiceId_ReleaseResource"
	.byte		0
	.sleb128	141
	.sleb128	13
	.byte		"OSServiceId_SetEvent"
	.byte		0
	.sleb128	142
	.sleb128	13
	.byte		"OSServiceId_ClearEvent"
	.byte		0
	.sleb128	143
	.sleb128	13
	.byte		"OSServiceId_GetEvent"
	.byte		0
	.sleb128	144
	.sleb128	13
	.byte		"OSServiceId_WaitEvent"
	.byte		0
	.sleb128	145
	.sleb128	13
	.byte		"OSServiceId_GetAlarmBase"
	.byte		0
	.sleb128	146
	.sleb128	13
	.byte		"OSServiceId_GetAlarm"
	.byte		0
	.sleb128	147
	.sleb128	13
	.byte		"OSServiceId_SetRelAlarm"
	.byte		0
	.sleb128	148
	.sleb128	13
	.byte		"OSServiceId_SetAbsAlarm"
	.byte		0
	.sleb128	149
	.sleb128	13
	.byte		"OSServiceId_CancelAlarm"
	.byte		0
	.sleb128	150
	.sleb128	13
	.byte		"OSServiceId_GetActiveApplicationMode"
	.byte		0
	.sleb128	151
	.sleb128	13
	.byte		"OSServiceId_StartOS"
	.byte		0
	.sleb128	152
	.sleb128	13
	.byte		"OSServiceId_ShutdownOS"
	.byte		0
	.sleb128	153
	.sleb128	13
	.byte		"OSServiceId_INVALIDSERVICE"
	.byte		0
	.sleb128	255
	.sleb128	0
.L11887:
.L11621:
	.sleb128	12
	.4byte		.L11888
	.uleb128	43
	.uleb128	1
	.4byte		.L11889-.L2
	.uleb128	4
	.sleb128	13
	.byte		"TRYTOGETSPINLOCK_SUCCESS"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"TRYTOGETSPINLOCK_NOSUCCESS"
	.byte		0
	.sleb128	1
	.sleb128	0
.L11889:
.L11692:
	.sleb128	12
	.4byte		.L11890
	.uleb128	37
	.uleb128	1
	.4byte		.L11891-.L2
	.uleb128	4
	.sleb128	13
	.byte		"RUNNING"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"WAITING"
	.byte		0
	.sleb128	1
	.sleb128	13
	.byte		"READY"
	.byte		0
	.sleb128	2
	.sleb128	13
	.byte		"SUSPENDED"
	.byte		0
	.sleb128	3
	.sleb128	0
.L11891:
.L11659:
	.sleb128	12
	.4byte		.L11892
	.uleb128	40
	.uleb128	1
	.4byte		.L11893-.L2
	.uleb128	4
	.sleb128	13
	.byte		"SCHEDULETABLE_STOPPED"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"SCHEDULETABLE_NEXT"
	.byte		0
	.sleb128	1
	.sleb128	13
	.byte		"SCHEDULETABLE_WAITING"
	.byte		0
	.sleb128	2
	.sleb128	13
	.byte		"SCHEDULETABLE_RUNNING"
	.byte		0
	.sleb128	3
	.sleb128	13
	.byte		"SCHEDULETABLE_RUNNING_AND_SYNCHRONOUS"
	.byte		0
	.sleb128	4
	.sleb128	0
.L11893:
.L11635:
	.sleb128	12
	.4byte		.L11894
	.uleb128	47
	.uleb128	1
	.4byte		.L11895-.L2
	.uleb128	4
	.sleb128	13
	.byte		"OBJECT_TASK"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"OBJECT_ISR"
	.byte		0
	.sleb128	1
	.sleb128	13
	.byte		"OBJECT_ALARM"
	.byte		0
	.sleb128	2
	.sleb128	13
	.byte		"OBJECT_RESOURCE"
	.byte		0
	.sleb128	3
	.sleb128	13
	.byte		"OBJECT_COUNTER"
	.byte		0
	.sleb128	4
	.sleb128	13
	.byte		"OBJECT_SCHEDULETABLE"
	.byte		0
	.sleb128	5
	.sleb128	0
.L11895:
.L11708:
	.sleb128	12
	.4byte		.L11869
	.uleb128	42
	.uleb128	13
	.4byte		.L11896-.L2
	.uleb128	4
	.sleb128	13
	.byte		"OS_SHUTDOWN_INDIVIDUAL"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"OS_SHUTDOWN_SYNCHRONIZED"
	.byte		0
	.sleb128	1
	.sleb128	0
.L11896:
.L11605:
	.sleb128	12
	.4byte		.L11897
	.uleb128	83
	.uleb128	14
	.4byte		.L11898-.L2
	.uleb128	4
	.sleb128	13
	.byte		"IDLE_NO_HALT"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"IDLE_WAIT"
	.byte		0
	.sleb128	1
	.sleb128	13
	.byte		"IDLE_NUMBEROFOPTIONS"
	.byte		0
	.sleb128	2
	.sleb128	0
.L11898:
	.section	.debug_info,,n
.L11368:
	.sleb128	15
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L11367:
	.sleb128	16
	.byte		"uint8"
	.byte		0
	.4byte		.L11368
.L11366:
	.sleb128	16
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L11367
.L11370:
	.sleb128	16
	.byte		"OSServiceIdType"
	.byte		0
	.4byte		.L11371
.L11375:
	.sleb128	16
	.byte		"Os_ProcStatType"
	.byte		0
	.4byte		.L11376
	.section	.debug_info,,n
.L11374:
	.sleb128	17
	.4byte		.L11375
	.section	.debug_info,,n
.L11373:
	.sleb128	18
	.4byte		.L11374
.L11381:
	.sleb128	15
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L11380:
	.sleb128	16
	.byte		"uint16"
	.byte		0
	.4byte		.L11381
.L11379:
	.sleb128	16
	.byte		"CoreIdType"
	.byte		0
	.4byte		.L11380
.L11378:
	.sleb128	17
	.4byte		.L11379
.L11386:
	.sleb128	16
	.byte		"Os_HooksDynType"
	.byte		0
	.4byte		.L11387
.L11385:
	.sleb128	18
	.4byte		.L11386
.L11384:
	.sleb128	17
	.4byte		.L11385
.L11390:
	.sleb128	16
	.byte		"Os_CoreLockStatusType"
	.byte		0
	.4byte		.L11391
.L11398:
	.sleb128	16
	.byte		"Os_HookIDType"
	.byte		0
	.4byte		.L11380
.L11405:
	.sleb128	16
	.byte		"Os_Core_StatType"
	.byte		0
	.4byte		.L11406
.L11404:
	.sleb128	17
	.4byte		.L11405
	.section	.debug_info,,n
.L11402:
	.sleb128	19
	.4byte		.L11403-.L2
	.4byte		.L11404
	.section	.debug_info,,n
	.sleb128	20
	.uleb128	1
	.sleb128	0
.L11403:
.L11410:
	.sleb128	16
	.byte		"Os_Core_DynSharedType"
	.byte		0
	.4byte		.L11411
.L11408:
	.sleb128	19
	.4byte		.L11409-.L2
	.4byte		.L11410
	.sleb128	20
	.uleb128	1
	.sleb128	0
.L11409:
.L11416:
	.sleb128	16
	.byte		"Os_Core_DynInitType"
	.byte		0
	.4byte		.L11417
.L11415:
	.sleb128	18
	.4byte		.L11416
.L11414:
	.sleb128	17
	.4byte		.L11415
.L11420:
	.sleb128	16
	.byte		"Os_Core_DynType"
	.byte		0
	.4byte		.L11421
.L11419:
	.sleb128	18
	.4byte		.L11420
.L11418:
	.sleb128	17
	.4byte		.L11419
.L11424:
	.sleb128	16
	.byte		"Os_DispatchElementType"
	.byte		0
	.4byte		.L11425
.L11423:
	.sleb128	18
	.4byte		.L11424
.L11422:
	.sleb128	17
	.4byte		.L11423
	.section	.debug_info,,n
.L11429:
	.sleb128	21
	.4byte		.L11430-.L2
	.byte		0x1
.L11431:
	.sleb128	17
	.4byte		.L11373
	.section	.debug_info,,n
	.sleb128	22
	.4byte		.L11431
	.sleb128	0
.L11430:
.L11428:
	.sleb128	18
	.4byte		.L11429
.L11427:
	.sleb128	16
	.byte		"Os_PrepareContextFunctionType"
	.byte		0
	.4byte		.L11428
.L11426:
	.sleb128	17
	.4byte		.L11427
.L11440:
	.sleb128	15
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L11439:
	.sleb128	16
	.byte		"uint32"
	.byte		0
	.4byte		.L11440
.L11438:
	.sleb128	16
	.byte		"Os_StackType"
	.byte		0
	.4byte		.L11439
.L11437:
	.sleb128	18
	.4byte		.L11438
	.section	.debug_info,,n
.L11435:
	.sleb128	23
	.4byte		.L11436-.L2
	.4byte		.L11437
	.byte		0x1
	.sleb128	22
	.4byte		.L11373
	.sleb128	0
.L11436:
.L11434:
	.sleb128	18
	.4byte		.L11435
.L11433:
	.sleb128	16
	.byte		"Os_GetStackPointerFunctionType"
	.byte		0
	.4byte		.L11434
.L11432:
	.sleb128	17
	.4byte		.L11433
.L11442:
	.sleb128	16
	.byte		"Os_IsrDynInitType"
	.byte		0
	.4byte		.L11443
.L11444:
	.sleb128	16
	.byte		"Os_SchedulerDynInitType"
	.byte		0
	.4byte		.L11445
.L11448:
	.sleb128	16
	.byte		"Os_ApplicationStatType"
	.byte		0
	.4byte		.L11449
.L11447:
	.sleb128	17
	.4byte		.L11448
.L11446:
	.sleb128	18
	.4byte		.L11447
.L11451:
	.sleb128	16
	.byte		"Os_DispatcherType"
	.byte		0
	.4byte		.L11452
.L11453:
	.sleb128	16
	.byte		"Os_PublicData_NoInitType"
	.byte		0
	.4byte		.L11454
.L11456:
	.sleb128	16
	.byte		"Os_SchedulerDynType"
	.byte		0
	.4byte		.L11457
.L11458:
	.sleb128	16
	.byte		"Os_IsrDynType"
	.byte		0
	.4byte		.L11459
.L11462:
	.sleb128	17
	.4byte		.L11376
.L11461:
	.sleb128	18
	.4byte		.L11462
.L11464:
	.sleb128	16
	.byte		"Os_ScheduleType"
	.byte		0
	.4byte		.L11465
.L11466:
	.sleb128	16
	.byte		"Os_PriorityType"
	.byte		0
	.4byte		.L11439
.L11467:
	.sleb128	16
	.byte		"Os_SchedulerQueueElementType"
	.byte		0
	.4byte		.L11468
.L11471:
	.sleb128	18
	.4byte		.L11468
.L11473:
	.sleb128	16
	.byte		"Os_IsrRegister_t"
	.byte		0
	.4byte		.L11439
.L11474:
	.sleb128	16
	.byte		"boolean"
	.byte		0
	.4byte		.L11368
.L11478:
	.sleb128	16
	.byte		"Os_IsrPlatformConfigType"
	.byte		0
	.4byte		.L11479
.L11477:
	.sleb128	17
	.4byte		.L11478
.L11476:
	.sleb128	18
	.4byte		.L11477
.L11482:
	.sleb128	16
	.byte		"Os_IsrApiTable"
	.byte		0
	.4byte		.L11483
.L11481:
	.sleb128	17
	.4byte		.L11482
.L11480:
	.sleb128	18
	.4byte		.L11481
.L11484:
	.sleb128	19
	.4byte		.L11485-.L2
	.4byte		.L11439
	.sleb128	20
	.uleb128	7
	.sleb128	0
.L11485:
.L11488:
	.sleb128	16
	.byte		"Os_DispatchKindType"
	.byte		0
	.4byte		.L11489
.L11492:
	.sleb128	16
	.byte		"Os_ObjectType"
	.byte		0
	.4byte		.L11439
.L11491:
	.sleb128	16
	.byte		"ProcType"
	.byte		0
	.4byte		.L11492
.L11490:
	.sleb128	16
	.byte		"ISRType"
	.byte		0
	.4byte		.L11491
.L11494:
	.sleb128	16
	.byte		"Os_APICallType"
	.byte		0
	.4byte		.L11495
.L11493:
	.sleb128	18
	.4byte		.L11494
.L11497:
	.sleb128	16
	.byte		"Os_API_LockType"
	.byte		0
	.4byte		.L11498
.L11501:
	.sleb128	21
	.4byte		.L11502-.L2
	.byte		0x1
.L11503:
	.sleb128	18
	.4byte		.L11495
	.sleb128	22
	.4byte		.L11503
.L11504:
	.sleb128	17
	.4byte		.L11461
	.sleb128	22
	.4byte		.L11504
	.sleb128	0
.L11502:
.L11500:
	.sleb128	18
	.4byte		.L11501
.L11499:
	.sleb128	16
	.byte		"Os_API_Func_Type"
	.byte		0
	.4byte		.L11500
.L11507:
	.sleb128	16
	.byte		"Os_API_StartOsType"
	.byte		0
	.4byte		.L11508
.L11509:
	.sleb128	16
	.byte		"Os_API_ShutdownOsType"
	.byte		0
	.4byte		.L11510
.L11511:
	.sleb128	16
	.byte		"Os_API_ShutdownOsInternalType"
	.byte		0
	.4byte		.L11512
.L11513:
	.sleb128	16
	.byte		"Os_API_ShutdownAllCoresType"
	.byte		0
	.4byte		.L11514
.L11515:
	.sleb128	16
	.byte		"Os_API_GetNumberOfActivatedCoresType"
	.byte		0
	.4byte		.L11516
.L11517:
	.sleb128	16
	.byte		"Os_API_ApiStartCoreType"
	.byte		0
	.4byte		.L11518
.L11519:
	.sleb128	16
	.byte		"Os_API_StartNonAutosarCoreType"
	.byte		0
	.4byte		.L11520
.L11521:
	.sleb128	16
	.byte		"Os_API_GetCoreIDType"
	.byte		0
	.4byte		.L11522
.L11523:
	.sleb128	16
	.byte		"Os_API_ActivateTaskType"
	.byte		0
	.4byte		.L11524
.L11525:
	.sleb128	16
	.byte		"Os_API_ChainTaskType"
	.byte		0
	.4byte		.L11526
.L11527:
	.sleb128	16
	.byte		"Os_API_GetTaskIDType"
	.byte		0
	.4byte		.L11528
.L11529:
	.sleb128	16
	.byte		"Os_API_GetTaskStateType"
	.byte		0
	.4byte		.L11530
.L11531:
	.sleb128	16
	.byte		"Os_API_SetEventType"
	.byte		0
	.4byte		.L11532
.L11533:
	.sleb128	16
	.byte		"Os_API_ClearEventType"
	.byte		0
	.4byte		.L11534
.L11535:
	.sleb128	16
	.byte		"Os_API_GetEventType"
	.byte		0
	.4byte		.L11536
.L11537:
	.sleb128	16
	.byte		"Os_API_WaitEventType"
	.byte		0
	.4byte		.L11538
.L11539:
	.sleb128	16
	.byte		"Os_API_GetResourceType"
	.byte		0
	.4byte		.L11540
.L11541:
	.sleb128	16
	.byte		"Os_API_ReleaseResourceType"
	.byte		0
	.4byte		.L11542
.L11543:
	.sleb128	16
	.byte		"Os_API_GetAlarmBaseType"
	.byte		0
	.4byte		.L11544
.L11545:
	.sleb128	16
	.byte		"Os_API_GetAlarmType"
	.byte		0
	.4byte		.L11546
.L11547:
	.sleb128	16
	.byte		"Os_API_SetRelAlarmType"
	.byte		0
	.4byte		.L11548
.L11549:
	.sleb128	16
	.byte		"Os_API_SetAbsAlarmType"
	.byte		0
	.4byte		.L11550
.L11551:
	.sleb128	16
	.byte		"Os_API_CancelAlarmType"
	.byte		0
	.4byte		.L11552
.L11553:
	.sleb128	16
	.byte		"Os_API_GetApplicationStateType"
	.byte		0
	.4byte		.L11554
.L11555:
	.sleb128	16
	.byte		"Os_API_TerminateApplicationType"
	.byte		0
	.4byte		.L11556
.L11557:
	.sleb128	16
	.byte		"Os_API_GetApplicationIDType"
	.byte		0
	.4byte		.L11558
.L11559:
	.sleb128	16
	.byte		"Os_API_GetISRIDType"
	.byte		0
	.4byte		.L11560
.L11561:
	.sleb128	16
	.byte		"Os_API_GetActiveApplicationModeType"
	.byte		0
	.4byte		.L11562
.L11563:
	.sleb128	16
	.byte		"Os_API_IncrementCounterType"
	.byte		0
	.4byte		.L11564
.L11565:
	.sleb128	16
	.byte		"Os_API_GetCounterValueType"
	.byte		0
	.4byte		.L11566
.L11567:
	.sleb128	16
	.byte		"Os_API_GetElapsedValueType"
	.byte		0
	.4byte		.L11568
.L11569:
	.sleb128	16
	.byte		"Os_API_StartScheduleTableAbsType"
	.byte		0
	.4byte		.L11570
.L11571:
	.sleb128	16
	.byte		"Os_API_StartScheduleTableRelType"
	.byte		0
	.4byte		.L11572
.L11573:
	.sleb128	16
	.byte		"Os_API_StopScheduleTableType"
	.byte		0
	.4byte		.L11574
.L11575:
	.sleb128	16
	.byte		"Os_API_GetScheduleTableStatusType"
	.byte		0
	.4byte		.L11576
.L11577:
	.sleb128	16
	.byte		"Os_API_NextScheduleTableType"
	.byte		0
	.4byte		.L11578
.L11579:
	.sleb128	16
	.byte		"Os_API_StartScheduleTableSynchronType"
	.byte		0
	.4byte		.L11580
.L11581:
	.sleb128	16
	.byte		"Os_API_SyncScheduleTableType"
	.byte		0
	.4byte		.L11582
.L11583:
	.sleb128	16
	.byte		"Os_API_SetScheduleTableAsyncType"
	.byte		0
	.4byte		.L11584
.L11585:
	.sleb128	16
	.byte		"Os_API_CheckObjectAccessType"
	.byte		0
	.4byte		.L11586
.L11587:
	.sleb128	16
	.byte		"Os_API_CheckObjectOwnershipType"
	.byte		0
	.4byte		.L11588
.L11589:
	.sleb128	16
	.byte		"Os_API_CallTrustedFunctionType"
	.byte		0
	.4byte		.L11590
.L11591:
	.sleb128	16
	.byte		"Os_API_StackUsageType"
	.byte		0
	.4byte		.L11592
.L11593:
	.sleb128	16
	.byte		"Os_API_GetSpinlockType"
	.byte		0
	.4byte		.L11594
.L11595:
	.sleb128	16
	.byte		"Os_API_ReleaseSpinlockType"
	.byte		0
	.4byte		.L11596
.L11597:
	.sleb128	16
	.byte		"Os_API_TryToGetSpinlockType"
	.byte		0
	.4byte		.L11598
.L11599:
	.sleb128	16
	.byte		"Os_API_IocTransferType"
	.byte		0
	.4byte		.L11600
.L11601:
	.sleb128	16
	.byte		"Os_API_ControlIdleType"
	.byte		0
	.4byte		.L11602
.L11604:
	.sleb128	16
	.byte		"IdleModeType"
	.byte		0
	.4byte		.L11605
.L11609:
	.sleb128	16
	.byte		"Os_IOC_ChannelStatType"
	.byte		0
	.4byte		.L11610
.L11608:
	.sleb128	17
	.4byte		.L11609
.L11607:
	.sleb128	18
	.4byte		.L11608
	.section	.debug_info,,n
.L11616:
	.sleb128	24
	.byte		"void"
	.byte		0
	.byte		0x0
.L11615:
	.sleb128	18
	.4byte		.L11616
.L11613:
	.sleb128	19
	.4byte		.L11614-.L2
	.4byte		.L11615
	.sleb128	20
	.uleb128	1
	.sleb128	0
.L11614:
.L11612:
	.sleb128	16
	.byte		"Os_IOC_DataType"
	.byte		0
	.4byte		.L11613
.L11611:
	.sleb128	18
	.4byte		.L11612
.L11618:
	.sleb128	16
	.byte		"SpinlockIdType"
	.byte		0
	.4byte		.L11380
.L11620:
	.sleb128	16
	.byte		"TryToGetSpinlockType"
	.byte		0
	.4byte		.L11621
.L11619:
	.sleb128	18
	.4byte		.L11620
.L11625:
	.sleb128	16
	.byte		"TaskType"
	.byte		0
	.4byte		.L11491
.L11626:
	.sleb128	18
	.4byte		.L11367
.L11628:
	.sleb128	16
	.byte		"TrustedFunctionIndexType"
	.byte		0
	.4byte		.L11439
.L11629:
	.sleb128	16
	.byte		"TrustedFunctionParameterRefType"
	.byte		0
	.4byte		.L11615
.L11630:
	.sleb128	16
	.byte		"Os_TrustedFunctionReturnValueType"
	.byte		0
	.4byte		.L11631
.L11633:
	.sleb128	16
	.byte		"ApplicationType"
	.byte		0
	.4byte		.L11367
.L11634:
	.sleb128	16
	.byte		"ObjectTypeType"
	.byte		0
	.4byte		.L11635
.L11638:
	.sleb128	16
	.byte		"AlarmType"
	.byte		0
	.4byte		.L11492
.L11640:
	.sleb128	16
	.byte		"TickType"
	.byte		0
	.4byte		.L11439
.L11644:
	.sleb128	18
	.4byte		.L11640
.L11643:
	.sleb128	16
	.byte		"TickRefType"
	.byte		0
	.4byte		.L11644
.L11648:
	.sleb128	16
	.byte		"AlarmBaseType"
	.byte		0
	.4byte		.L11649
.L11647:
	.sleb128	18
	.4byte		.L11648
.L11646:
	.sleb128	16
	.byte		"AlarmBaseRefType"
	.byte		0
	.4byte		.L11647
.L11651:
	.sleb128	16
	.byte		"ScheduleTableType"
	.byte		0
	.4byte		.L11439
.L11658:
	.sleb128	16
	.byte		"ScheduleTableStatusType"
	.byte		0
	.4byte		.L11659
.L11657:
	.sleb128	18
	.4byte		.L11658
.L11656:
	.sleb128	16
	.byte		"ScheduleTableStatusRefType"
	.byte		0
	.4byte		.L11657
.L11664:
	.sleb128	16
	.byte		"CounterType"
	.byte		0
	.4byte		.L11439
.L11668:
	.sleb128	21
	.4byte		.L11669-.L2
	.byte		0x1
	.sleb128	22
	.4byte		.L11503
	.sleb128	0
.L11669:
.L11667:
	.sleb128	18
	.4byte		.L11668
.L11666:
	.sleb128	16
	.byte		"LightServiceFunctionType"
	.byte		0
	.4byte		.L11667
.L11673:
	.sleb128	16
	.byte		"RestartType"
	.byte		0
	.4byte		.L11367
.L11678:
	.sleb128	16
	.byte		"ApplicationStateType"
	.byte		0
	.4byte		.L11367
.L11677:
	.sleb128	18
	.4byte		.L11678
.L11676:
	.sleb128	16
	.byte		"ApplicationStateRefType"
	.byte		0
	.4byte		.L11677
.L11682:
	.sleb128	15
	.byte		"unsigned long long"
	.byte		0
	.byte		0x7
	.byte		0x8
.L11681:
	.sleb128	16
	.byte		"uint64"
	.byte		0
	.4byte		.L11682
.L11680:
	.sleb128	16
	.byte		"EventMaskType"
	.byte		0
	.4byte		.L11681
.L11685:
	.sleb128	18
	.4byte		.L11680
.L11684:
	.sleb128	16
	.byte		"EventMaskRefType"
	.byte		0
	.4byte		.L11685
.L11691:
	.sleb128	16
	.byte		"TaskStateType"
	.byte		0
	.4byte		.L11692
.L11690:
	.sleb128	18
	.4byte		.L11691
.L11689:
	.sleb128	16
	.byte		"TaskStateRefType"
	.byte		0
	.4byte		.L11690
.L11695:
	.sleb128	18
	.4byte		.L11625
.L11694:
	.sleb128	16
	.byte		"TaskRefType"
	.byte		0
	.4byte		.L11695
.L11699:
	.sleb128	16
	.byte		"ResourceType"
	.byte		0
	.4byte		.L11439
.L11702:
	.sleb128	16
	.byte		"AppModeType"
	.byte		0
	.4byte		.L11439
.L11707:
	.sleb128	16
	.byte		"Os_CoreShutdownType"
	.byte		0
	.4byte		.L11708
.L11711:
	.sleb128	18
	.4byte		.L11366
.L11718:
	.sleb128	16
	.byte		"Os_IOC_ChannelDynType"
	.byte		0
	.4byte		.L11719
.L11717:
	.sleb128	18
	.4byte		.L11718
.L11716:
	.sleb128	17
	.4byte		.L11717
.L11720:
	.sleb128	16
	.byte		"Os_IOC_ChannelSizeType"
	.byte		0
	.4byte		.L11380
.L11721:
	.sleb128	17
	.4byte		.L11615
.L11722:
	.sleb128	17
	.4byte		.L11380
.L11724:
	.sleb128	16
	.byte		"Os_IOC_DataCountType"
	.byte		0
	.4byte		.L11367
.L11723:
	.sleb128	17
	.4byte		.L11724
.L11728:
	.sleb128	16
	.byte		"Os_IOC_DataDescriptorType"
	.byte		0
	.4byte		.L11729
.L11727:
	.sleb128	17
	.4byte		.L11728
.L11726:
	.sleb128	18
	.4byte		.L11727
.L11725:
	.sleb128	17
	.4byte		.L11726
.L11732:
	.sleb128	16
	.byte		"Os_LockResourceType"
	.byte		0
	.4byte		.L11367
.L11731:
	.sleb128	18
	.4byte		.L11732
.L11730:
	.sleb128	17
	.4byte		.L11731
.L11735:
	.sleb128	16
	.byte		"Os_IOC_DataLengthType"
	.byte		0
	.4byte		.L11380
.L11734:
	.sleb128	17
	.4byte		.L11735
.L11737:
	.sleb128	16
	.byte		"Os_IOC_DataOffsetType"
	.byte		0
	.4byte		.L11380
.L11736:
	.sleb128	17
	.4byte		.L11737
.L11743:
	.sleb128	17
	.4byte		.L11625
.L11746:
	.sleb128	16
	.byte		"Os_ProcDynType"
	.byte		0
	.4byte		.L11747
.L11745:
	.sleb128	18
	.4byte		.L11746
.L11744:
	.sleb128	17
	.4byte		.L11745
.L11751:
	.sleb128	16
	.byte		"Os_ProcStackType"
	.byte		0
	.4byte		.L11752
.L11750:
	.sleb128	17
	.4byte		.L11751
.L11749:
	.sleb128	18
	.4byte		.L11750
.L11748:
	.sleb128	17
	.4byte		.L11749
.L11754:
	.sleb128	16
	.byte		"Os_ProcKindType"
	.byte		0
	.4byte		.L11755
.L11753:
	.sleb128	17
	.4byte		.L11754
.L11756:
	.sleb128	17
	.4byte		.L11680
.L11757:
	.sleb128	17
	.4byte		.L11466
.L11759:
	.sleb128	16
	.byte		"Os_ActivationCountType"
	.byte		0
	.4byte		.L11439
.L11758:
	.sleb128	17
	.4byte		.L11759
.L11760:
	.sleb128	17
	.4byte		.L11437
.L11761:
	.sleb128	17
	.4byte		.L11446
.L11765:
	.sleb128	16
	.byte		"Os_AccessStorageType"
	.byte		0
	.4byte		.L11439
.L11764:
	.sleb128	17
	.4byte		.L11765
.L11763:
	.sleb128	18
	.4byte		.L11764
.L11762:
	.sleb128	17
	.4byte		.L11763
.L11769:
	.sleb128	21
	.4byte		.L11770-.L2
	.byte		0x1
	.sleb128	0
.L11770:
.L11768:
	.sleb128	18
	.4byte		.L11769
.L11767:
	.sleb128	16
	.byte		"Os_ProcEntryPointType"
	.byte		0
	.4byte		.L11768
.L11766:
	.sleb128	17
	.4byte		.L11767
.L11771:
	.sleb128	17
	.4byte		.L11699
.L11776:
	.sleb128	16
	.byte		"Os_ResourceStatType"
	.byte		0
	.4byte		.L11777
.L11775:
	.sleb128	17
	.4byte		.L11776
.L11774:
	.sleb128	18
	.4byte		.L11775
.L11773:
	.sleb128	16
	.byte		"Os_ResourceStack"
	.byte		0
	.4byte		.L11774
.L11772:
	.sleb128	18
	.4byte		.L11773
.L11778:
	.sleb128	17
	.4byte		.L11471
.L11779:
	.sleb128	17
	.4byte		.L11476
.L11782:
	.sleb128	16
	.byte		"Os_StackSizeType"
	.byte		0
	.4byte		.L11439
.L11781:
	.sleb128	17
	.4byte		.L11782
.L11784:
	.sleb128	16
	.byte		"Os_ProcContexStateType"
	.byte		0
	.4byte		.L11785
.L11787:
	.sleb128	17
	.4byte		.L11788
.L11786:
	.sleb128	18
	.4byte		.L11787
.L11791:
	.sleb128	17
	.4byte		.L11618
.L11794:
	.sleb128	16
	.byte		"Os_SpinlockDynType"
	.byte		0
	.4byte		.L11795
.L11793:
	.sleb128	18
	.4byte		.L11794
.L11792:
	.sleb128	17
	.4byte		.L11793
.L11800:
	.sleb128	16
	.byte		"Os_ApplicationDynType"
	.byte		0
	.4byte		.L11801
.L11799:
	.sleb128	18
	.4byte		.L11800
.L11798:
	.sleb128	17
	.4byte		.L11799
.L11802:
	.sleb128	17
	.4byte		.L11633
.L11804:
	.sleb128	16
	.byte		"Os_ApplicationKindType"
	.byte		0
	.4byte		.L11805
.L11803:
	.sleb128	17
	.4byte		.L11804
.L11809:
	.sleb128	21
	.4byte		.L11810-.L2
	.byte		0x1
	.sleb128	22
	.4byte		.L11366
	.sleb128	0
.L11810:
.L11808:
	.sleb128	18
	.4byte		.L11809
.L11807:
	.sleb128	16
	.byte		"Os_ShutdownHookFuncType"
	.byte		0
	.4byte		.L11808
.L11806:
	.sleb128	17
	.4byte		.L11807
.L11814:
	.sleb128	21
	.4byte		.L11815-.L2
	.byte		0x1
	.sleb128	0
.L11815:
.L11813:
	.sleb128	18
	.4byte		.L11814
.L11812:
	.sleb128	16
	.byte		"Os_StartUpHookFuncType"
	.byte		0
	.4byte		.L11813
.L11811:
	.sleb128	17
	.4byte		.L11812
.L11819:
	.sleb128	21
	.4byte		.L11820-.L2
	.byte		0x1
	.sleb128	22
	.4byte		.L11366
	.sleb128	0
.L11820:
.L11818:
	.sleb128	18
	.4byte		.L11819
.L11817:
	.sleb128	16
	.byte		"Os_ErrorHookFuncType"
	.byte		0
	.4byte		.L11818
.L11816:
	.sleb128	17
	.4byte		.L11817
.L11823:
	.sleb128	17
	.4byte		.L11491
.L11822:
	.sleb128	18
	.4byte		.L11823
.L11821:
	.sleb128	17
	.4byte		.L11822
.L11826:
	.sleb128	17
	.4byte		.L11664
.L11825:
	.sleb128	18
	.4byte		.L11826
.L11824:
	.sleb128	17
	.4byte		.L11825
.L11829:
	.sleb128	17
	.4byte		.L11638
.L11828:
	.sleb128	18
	.4byte		.L11829
.L11827:
	.sleb128	17
	.4byte		.L11828
.L11832:
	.sleb128	17
	.4byte		.L11651
.L11831:
	.sleb128	18
	.4byte		.L11832
.L11830:
	.sleb128	17
	.4byte		.L11831
.L11837:
	.sleb128	16
	.byte		"Os_ResourceDynType"
	.byte		0
	.4byte		.L11838
.L11836:
	.sleb128	18
	.4byte		.L11837
.L11841:
	.sleb128	16
	.byte		"Os_ErrorType"
	.byte		0
	.4byte		.L11842
.L11843:
	.sleb128	16
	.byte		"Os_ExceptionStatusType"
	.byte		0
	.4byte		.L11844
.L11849:
	.sleb128	21
	.4byte		.L11850-.L2
	.byte		0x1
	.sleb128	0
.L11850:
.L11848:
	.sleb128	18
	.4byte		.L11849
.L11847:
	.sleb128	16
	.byte		"Os_IsrHandlerFuncType"
	.byte		0
	.4byte		.L11848
.L11846:
	.sleb128	17
	.4byte		.L11847
.L11852:
	.sleb128	16
	.byte		"Os_ExceptionTypeType"
	.byte		0
	.4byte		.L11853
.L11856:
	.sleb128	16
	.byte		"Os_ShudownErrorType"
	.byte		0
	.4byte		.L11857
.L11858:
	.sleb128	16
	.byte		"Os_ParameterErrorType"
	.byte		0
	.4byte		.L11859
.L11860:
	.sleb128	16
	.byte		"Os_ServiceErrorType"
	.byte		0
	.4byte		.L11861
.L11863:
	.sleb128	16
	.byte		"ServiceTraceType"
	.byte		0
	.4byte		.L11367
.L11865:
	.sleb128	16
	.byte		"TryToGetSpinlockRefType"
	.byte		0
	.4byte		.L11619
.L11867:
	.sleb128	16
	.byte		"Os_SystemInternalErrorType"
	.byte		0
	.4byte		.L11868
.L11873:
	.sleb128	17
	.4byte		.L11439
.L11875:
	.sleb128	16
	.byte		"Os_IsrPlatformLevelType"
	.byte		0
	.4byte		.L11380
.L11874:
	.sleb128	17
	.4byte		.L11875
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11358:
	.sleb128	0
.L11354:

	.section	.debug_loc,,n
	.align	0
.L11369:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),31
	.d2locend
.L11372:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo3),4
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),5
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),4
	.d2locend
.L11382:
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo7),30
	.d2locend
.L11388:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo10),27
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo3),3
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo4),27
	.d2locend
.L11392:
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo12),3
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo14),29
	.d2locend
.L11399:
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo4),28
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "Os_Call_ErrorHook"
	.wrcm.nint32 "frameSize", 48
	.wrcm.nstrlist "calls", "ErrorHook","Os_Core_LockCore","Os_Core_UnlockCoreConditionally","Os_Isr_ServicesSwitchBackFromHook","Os_Isr_ServicesSwitchToHook"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Os_Call_ErrorHook.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Os_Call_ErrorHook.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Os_Call_ErrorHook.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Os_Call_ErrorHook.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Os_Call_ErrorHook.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Os_Call_ErrorHook.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\Os\Os\core\ssc\make\..\src\misc\Os_Call_ErrorHook.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
