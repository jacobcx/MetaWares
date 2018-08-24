#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Os_Call_ProtectionHook.c"
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
# FUNC (void, OS_CODE) Os_Call_ProtectionHook(
	.section	.Os_TEXT,,c
	.align		2
	.section	.debug_line.Os_TEXT,,n
	.sectionlink	.debug_line
.L11355:
	.section	.Os_TEXT,,c
#$$ld
.L11351:
	.0byte		.L11349
	.d2_line_start	.debug_line.Os_TEXT
	.section	.Os_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\protection\\Os_Call_ProtectionHook.c"
        .d2line         47,22
#$$ld
.L11358:

#$$bf	Os_Call_ProtectionHook,interprocedural,rasave,nostackparams
	.globl		Os_Call_ProtectionHook
	.d2_cfa_start __cie
Os_Call_ProtectionHook:
.Llo1:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r4,r3		# fatalError=r4 fatalError=r3
	.d2prologue_end
#                                  CONST        ( StatusType,      AUTOMATIC )            fatalError,
#                                  CONSTP2CONST ( Os_ProcStatType, AUTOMATIC, OS_CONST )  proc
#                 )
# {
# #ifdef OS_MODULE_PROTECTION_HOOK
# 
#     VAR (ProtectionReturnType, AUTOMATIC) retVal;
#     VAR (Os_HookIDType,        AUTOMATIC) prevHookID;
#     CONSTP2VAR  (Os_HooksDynType, AUTOMATIC, OS_VAR)  coreHookDyn = OS_GET_CORE_HOOK_DYN(OS_GETCOREID());
# 
#     coreHookDyn->Os_ProtectionFatalError = fatalError;
#     coreHookDyn->Os_ProtectionCausedBy   = proc;
# 
#     Os_Isr_ServicesSwitchToHook ();
# 
#     prevHookID              = coreHookDyn->Os_HookID;
#     coreHookDyn->Os_HookID  = OS_HOOKID_PROTECTIONHOOK;
#     retVal                  = ProtectionHook ( fatalError );
#     coreHookDyn->Os_HookID  = OS_HOOKID_NONE;
# 
#     Os_Isr_ServicesSwitchBackFromHook ();
# 
#     if ( E_OS_PROTECTION_ARRIVAL == fatalError )
#     {
#         if ( retVal == PRO_IGNORE )
#         {
#             /* Simply return */
#             /* [OS106] */
#         }
#         else
#         {
#             Os_ShutdownOS ( OS_SHUTDOWN_INDIVIDUAL, fatalError ); /* [OS506-01-MGC]*/
#         }
#     }
# 
#   #ifdef OS_MODULE_APPLICATION
# 
#     else if (    E_OS_PROTECTION_EXCEPTION == fatalError
#               && OS_TRUSTED == proc->Os_ProcDyn->Os_ProcCurrentApp->Os_AppKind )
#     {
#         Os_ShutdownOS ( OS_SHUTDOWN_INDIVIDUAL, fatalError );
#     }
# 
#   #endif
# 
#     else
#     {
#         switch ( retVal )
#         {
#             case PRO_IGNORE:
#                 Os_ShutdownOS ( OS_SHUTDOWN_INDIVIDUAL, fatalError ); /* [OS475-01-MGC]*/
#                 break;
# 
#             case PRO_TERMINATETASKISR:
#                 if ( NULL_PTR == coreHookDyn->Os_ProtectionCausedBy )
#                 {
#                     Os_ShutdownOS ( OS_SHUTDOWN_INDIVIDUAL, fatalError );
#                 }
#                 else if ( OS_HOOKID_NONE == prevHookID )
#                 {
#                     Os_TaskKill ( coreHookDyn->Os_ProtectionCausedBy ); /* [OS553] */
#                 }
#               #ifdef OS_MODULE_APPLICATION
#                 else if (    (     ( OS_HOOKID_NONE            == prevHookID )
#                                 || ( OS_HOOKID_APPERRORHOOK    == prevHookID )
#                                 || ( OS_HOOKID_APPSTARTUPHOOK  == prevHookID )
#                                 || ( OS_HOOKID_APPSHUTDOWNHOOK == prevHookID ) )
#                           && ( coreHookDyn->Os_ProtectionCausedBy->Os_ProcOwnerApp != NULL_PTR ) )
#                 {
#                     /* [OS243-01] */
#                     Os_TerminateApplication ( coreHookDyn->Os_ProtectionCausedBy->Os_ProcOwnerApp->Os_AppId, NO_RESTART );
#                 }
#               #endif /* OS_MODULE_APPLICATION */
#                 else
#                 {
#                     Os_ShutdownOS ( OS_SHUTDOWN_INDIVIDUAL, fatalError ); /* [OS243-02-MGC] */
#                 }
#                 break;
# 
#           #ifdef OS_MODULE_APPLICATION
#             case PRO_TERMINATEAPPL:
#                 if ( NULL_PTR == coreHookDyn->Os_ProtectionCausedBy )
#                 {
#                     Os_ShutdownOS ( OS_SHUTDOWN_INDIVIDUAL, fatalError );
#                 }
#                 else if (    ( coreHookDyn->Os_ProtectionCausedBy->Os_ProcOwnerApp              !=  NULL_PTR )
#                      && ( coreHookDyn->Os_ProtectionCausedBy->Os_ProcOwnerApp->Os_AppKind  ==  OS_NONTRUSTED ) )
#                 {
#                     /* [OS554] */
#                     Os_TerminateApplication ( coreHookDyn->Os_ProtectionCausedBy->Os_ProcOwnerApp->Os_AppId, NO_RESTART );
#                 }
#                 else
#                 {
#                     /* [OS244-01-MGC] */
#                     Os_ShutdownOS ( OS_SHUTDOWN_INDIVIDUAL, fatalError );
#                 }
#                 break;
# 
#             case PRO_TERMINATEAPPL_RESTART:
#                 /* [OS557-01-MGC] */
#                 if ( NULL_PTR == coreHookDyn->Os_ProtectionCausedBy )
#                 {
#                     Os_ShutdownOS ( OS_SHUTDOWN_INDIVIDUAL, fatalError );
#                 }
#                 else if (    ( coreHookDyn->Os_ProtectionCausedBy->Os_ProcOwnerApp                     !=  NULL_PTR      )
#                           && ( coreHookDyn->Os_ProtectionCausedBy->Os_ProcOwnerApp->Os_AppKind         ==  OS_NONTRUSTED )
#                           && ( coreHookDyn->Os_ProtectionCausedBy->Os_ProcOwnerApp->Os_AppRestartTask  !=  INVALID_TASK  ) )
#                 {
#                     /* [OS555-01] [OS555-02] */
#                     Os_TerminateApplication ( coreHookDyn->Os_ProtectionCausedBy->Os_ProcOwnerApp->Os_AppId, RESTART );
#                 }
#                 else
#                 {
#                     /* [OS244-02-MGC] */
#                     Os_ShutdownOS ( OS_SHUTDOWN_INDIVIDUAL, fatalError );
#                 }
#                 break;
#           #endif    /* OS_MODULE_APPLICATION */
# 
#             case PRO_SHUTDOWN:
#                 Os_ShutdownOS ( OS_SHUTDOWN_INDIVIDUAL, fatalError ); /* [OS556-01-MGC] */
#                 break;
# 
#             default: /* [OS308] [OS068-01] */
#                 Os_ShutdownOS ( OS_SHUTDOWN_INDIVIDUAL, fatalError );
# 
#         } /* End switch */
#     }
# 
# #else /* OS_MODULE_PROTECTION_HOOK */
# 
#     /* [OS107-01-MGC]  [OS068-01] */
#     Os_ShutdownOS ( OS_SHUTDOWN_INDIVIDUAL, fatalError );
	.d2line		180
	rlwinm		r4,r4,0,24,31		# fatalError=r4 fatalError=r4
	diab.li		r3,0
.Llo2:
	bl		Os_ShutdownOS
# 
# #endif /* OS_MODULE_PROTECTION_HOOK */
# }
	.d2line		183
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11359:
	.type		Os_Call_ProtectionHook,@function
	.size		Os_Call_ProtectionHook,.-Os_Call_ProtectionHook
# Number of nodes = 7

# Allocations for Os_Call_ProtectionHook
#	?a4		fatalError
#	not allocated	proc

# Allocations for module
	.section	.text_vle
#$$ld
.L5:
.L11520:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_TaskApiTypes.h"
.L11512:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\PowerPC\\WindRiver\\AUTOSAR\\ar422\\MemMap.h"
.L11506:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ExceptionApiTypes.h"
.L11452:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_ApplicationCfgTypes.h"
.L11437:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_ApiDispatchCfgTypes.h"
.L11372:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_TaskCfgTypes.h"
	.d2_line_end
	.section	.Os_TEXT,,c
#$$ld
.L11352:
.L11360:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\protection\\Os_Call_ProtectionHook.c"
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
	.uleb128	6
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
	.uleb128	9
	.uleb128	40
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	28
	.uleb128	13
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	10
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
	.uleb128	11
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	12
	.uleb128	38
	.byte		0x0
	.uleb128	73
	.uleb128	16
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
	.uleb128	14
	.uleb128	21
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	39
	.uleb128	12
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	15
	.uleb128	5
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\protection\\Os_Call_ProtectionHook.c"
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
.L11349:
	.4byte		.L11350-.L11348
.L11348:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L11354-.L11349
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\protection\\Os_Call_ProtectionHook.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L11351
	.4byte		.L11352
	.4byte		.L11355
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11361:
	.sleb128	2
	.4byte		.L11357-.L11349
	.byte		"Os_Call_ProtectionHook"
	.byte		0
	.4byte		.L11360
	.uleb128	47
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L11358
	.4byte		.L11359
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L11360
	.uleb128	47
	.uleb128	22
	.byte		"fatalError"
	.byte		0
	.4byte		.L11362
	.4byte		.L11366
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	4
	.4byte		.L11360
	.uleb128	47
	.uleb128	22
	.byte		"proc"
	.byte		0
	.4byte		.L11367
	.sleb128	2
	.byte		0x90
	.uleb128	4
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11357:
	.section	.debug_info,,n
.L11371:
	.sleb128	5
	.4byte		.L11372
	.uleb128	80
	.uleb128	13
	.4byte		.L11373-.L2
	.byte		"Os_ProcStatType_s"
	.byte		0
	.uleb128	80
	.section	.debug_info,,n
.L511:
	.sleb128	6
	.byte		"Os_ProcId"
	.byte		0
	.4byte		.L11374
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L512:
	.sleb128	6
	.byte		"Os_ProcCoreID"
	.byte		0
	.4byte		.L11380
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L513:
	.sleb128	6
	.byte		"Os_ProcDyn"
	.byte		0
	.4byte		.L11384
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L514:
	.sleb128	6
	.byte		"Os_ProcStack"
	.byte		0
	.4byte		.L11388
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L515:
	.sleb128	6
	.byte		"Os_ProcKind"
	.byte		0
	.4byte		.L11393
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L516:
	.sleb128	6
	.byte		"Os_ProcEventRights"
	.byte		0
	.4byte		.L11396
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L517:
	.sleb128	6
	.byte		"Os_ProcPriority"
	.byte		0
	.4byte		.L11400
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L518:
	.sleb128	6
	.byte		"Os_ProcRunPriority"
	.byte		0
	.4byte		.L11400
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L519:
	.sleb128	6
	.byte		"Os_ProcMaxActivations"
	.byte		0
	.4byte		.L11402
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L520:
	.sleb128	6
	.byte		"Os_ProcContext"
	.byte		0
	.4byte		.L11404
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L521:
	.sleb128	6
	.byte		"Os_ProcOwnerApp"
	.byte		0
	.4byte		.L11407
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L522:
	.sleb128	6
	.byte		"Os_ProcAppAccess"
	.byte		0
	.4byte		.L11412
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L523:
	.sleb128	6
	.byte		"Os_ProcEntryPoint"
	.byte		0
	.4byte		.L11416
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L524:
	.sleb128	6
	.byte		"Os_ProcAutoStart"
	.byte		0
	.4byte		.L11412
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
.L525:
	.sleb128	6
	.byte		"Os_ProcResourceCount"
	.byte		0
	.4byte		.L11421
	.sleb128	2
	.byte		0x23
	.uleb128	64
	.byte		0x1
.L526:
	.sleb128	6
	.byte		"Os_ProcResourceStack"
	.byte		0
	.4byte		.L11423
	.sleb128	2
	.byte		0x23
	.uleb128	68
	.byte		0x1
.L527:
	.sleb128	6
	.byte		"Os_ProcQueueElements"
	.byte		0
	.4byte		.L11429
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.byte		0x1
.L528:
	.sleb128	6
	.byte		"Os_ProcIsrPlatformConfig"
	.byte		0
	.4byte		.L11432
	.sleb128	2
	.byte		0x23
	.uleb128	76
	.byte		0x1
	.sleb128	0
.L11373:
.L11431:
	.sleb128	5
	.4byte		.L11437
	.uleb128	612
	.uleb128	1
	.4byte		.L11438-.L2
	.byte		"Os_SchedulerQueueElementType_s"
	.byte		0
	.uleb128	12
.L750:
	.sleb128	6
	.byte		"Os_QueueProc"
	.byte		0
	.4byte		.L11439
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L751:
	.sleb128	6
	.byte		"Os_QueueFrontElement"
	.byte		0
	.4byte		.L11430
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L752:
	.sleb128	6
	.byte		"Os_QueueBackElement"
	.byte		0
	.4byte		.L11430
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11438:
.L11392:
	.sleb128	5
	.4byte		.L11372
	.uleb128	80
	.uleb128	13
	.4byte		.L11441-.L2
	.byte		"Os_ProcStackStruct"
	.byte		0
	.uleb128	8
.L509:
	.sleb128	6
	.byte		"Os_ProcStackSize"
	.byte		0
	.4byte		.L11442
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L510:
	.sleb128	6
	.byte		"Os_ProcStackBase"
	.byte		0
	.4byte		.L11404
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11441:
	.section	.debug_info,,n
.L11387:
	.sleb128	7
	.4byte		.L11372
	.uleb128	80
	.uleb128	13
	.4byte		.L11444-.L2
	.uleb128	56
.L496:
	.sleb128	6
	.byte		"Os_ProcState"
	.byte		0
	.4byte		.L11445
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L497:
	.sleb128	6
	.byte		"Os_ProcContextState"
	.byte		0
	.4byte		.L11447
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L498:
	.sleb128	6
	.byte		"Os_ProcEvents"
	.byte		0
	.4byte		.L11397
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L499:
	.sleb128	6
	.byte		"Os_ProcEventWaitingFor"
	.byte		0
	.4byte		.L11397
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L500:
	.sleb128	6
	.byte		"Os_ProcActivations"
	.byte		0
	.4byte		.L11403
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L501:
	.sleb128	6
	.byte		"Os_ProcResourcesAllocated"
	.byte		0
	.4byte		.L11422
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L502:
	.sleb128	6
	.byte		"Os_ProcEnabled"
	.byte		0
	.4byte		.L11364
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L503:
	.sleb128	6
	.byte		"Os_ProcCurrentApp"
	.byte		0
	.4byte		.L11408
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L504:
	.sleb128	6
	.byte		"Os_ProcSpinlock"
	.byte		0
	.4byte		.L11449
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L505:
	.sleb128	6
	.byte		"Os_ProcFreeQueueElements"
	.byte		0
	.4byte		.L11430
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L506:
	.sleb128	6
	.byte		"Os_ProcCurrentPriority"
	.byte		0
	.4byte		.L11401
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L507:
	.sleb128	6
	.byte		"Os_ProcTFCallCount"
	.byte		0
	.4byte		.L11364
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L508:
	.sleb128	6
	.byte		"Os_FatalErrorOccured"
	.byte		0
	.4byte		.L11363
	.sleb128	2
	.byte		0x23
	.uleb128	53
	.byte		0x1
	.sleb128	0
.L11444:
.L11451:
	.sleb128	5
	.4byte		.L11452
	.uleb128	52
	.uleb128	1
	.4byte		.L11453-.L2
	.byte		"Os_SpinlockStatType_s"
	.byte		0
	.uleb128	16
.L448:
	.sleb128	6
	.byte		"Os_SpinlockId"
	.byte		0
	.4byte		.L11454
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L449:
	.sleb128	6
	.byte		"Os_SpinlockChainId"
	.byte		0
	.4byte		.L11454
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L450:
	.sleb128	6
	.byte		"Os_SpinlockDyn"
	.byte		0
	.4byte		.L11456
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L451:
	.sleb128	6
	.byte		"Os_SpinlockAccess"
	.byte		0
	.4byte		.L11412
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L452:
	.sleb128	6
	.byte		"Os_SpinlockLockResourceAddress"
	.byte		0
	.4byte		.L11460
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L11453:
.L11459:
	.sleb128	7
	.4byte		.L11452
	.uleb128	52
	.uleb128	1
	.4byte		.L11463-.L2
	.uleb128	12
.L445:
	.sleb128	6
	.byte		"Os_SpinlockLockerProc"
	.byte		0
	.4byte		.L11439
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L446:
	.sleb128	6
	.byte		"Os_SpinlockSuperseded"
	.byte		0
	.4byte		.L11449
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L447:
	.sleb128	6
	.byte		"Os_ResourceDependency"
	.byte		0
	.4byte		.L11425
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11463:
.L11411:
	.sleb128	5
	.4byte		.L11452
	.uleb128	52
	.uleb128	1
	.4byte		.L11464-.L2
	.byte		"Os_ApplicationStatType_s"
	.byte		0
	.uleb128	48
.L433:
	.sleb128	6
	.byte		"Os_AppDyn"
	.byte		0
	.4byte		.L11465
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L434:
	.sleb128	6
	.byte		"Os_AppId"
	.byte		0
	.4byte		.L11469
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L435:
	.sleb128	6
	.byte		"Os_AppRestartTask"
	.byte		0
	.4byte		.L11374
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L436:
	.sleb128	6
	.byte		"Os_AppKind"
	.byte		0
	.4byte		.L11471
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L437:
	.sleb128	6
	.byte		"Os_AppShutdownHook"
	.byte		0
	.4byte		.L11474
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L438:
	.sleb128	6
	.byte		"Os_AppStartupHook"
	.byte		0
	.4byte		.L11479
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L439:
	.sleb128	6
	.byte		"Os_AppErrorHook"
	.byte		0
	.4byte		.L11484
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L440:
	.sleb128	6
	.byte		"Os_AppProcIDs"
	.byte		0
	.4byte		.L11489
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L441:
	.sleb128	6
	.byte		"Os_AppCounterIDs"
	.byte		0
	.4byte		.L11492
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L442:
	.sleb128	6
	.byte		"Os_AppAlarmIDs"
	.byte		0
	.4byte		.L11496
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L443:
	.sleb128	6
	.byte		"Os_AppSchTblIDs"
	.byte		0
	.4byte		.L11500
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L444:
	.sleb128	6
	.byte		"Os_CoreAssigment"
	.byte		0
	.4byte		.L11380
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
	.sleb128	0
.L11464:
.L11468:
	.sleb128	7
	.4byte		.L11452
	.uleb128	52
	.uleb128	1
	.4byte		.L11504-.L2
	.uleb128	1
.L432:
	.sleb128	6
	.byte		"Os_AppState"
	.byte		0
	.4byte		.L11505
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11504:
.L11428:
	.sleb128	7
	.4byte		.L11506
	.uleb128	32
	.uleb128	1
	.4byte		.L11507-.L2
	.uleb128	12
.L429:
	.sleb128	6
	.byte		"Os_ResourcePriority"
	.byte		0
	.4byte		.L11400
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L430:
	.sleb128	6
	.byte		"Os_ResourceAccessRights"
	.byte		0
	.4byte		.L11413
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L431:
	.sleb128	6
	.byte		"Os_ResourceDyn"
	.byte		0
	.4byte		.L11508
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11507:
.L11510:
	.sleb128	7
	.4byte		.L11506
	.uleb128	32
	.uleb128	1
	.4byte		.L11511-.L2
	.uleb128	4
.L428:
	.sleb128	6
	.byte		"Os_LockerProc"
	.byte		0
	.4byte		.L11439
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11511:
.L11436:
	.sleb128	7
	.4byte		.L11512
	.uleb128	87
	.uleb128	7
	.4byte		.L11513-.L2
	.uleb128	8
.L364:
	.sleb128	6
	.byte		"Os_IsrPltId"
	.byte		0
	.4byte		.L11514
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L365:
	.sleb128	6
	.byte		"Os_IsrPltLevel"
	.byte		0
	.4byte		.L11515
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11513:
	.section	.debug_info,,n
.L11448:
	.sleb128	8
	.4byte		.L11372
	.uleb128	80
	.uleb128	13
	.4byte		.L11517-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	9
	.byte		"Os_ProcContextInvalid"
	.byte		0
	.sleb128	0
	.sleb128	9
	.byte		"Os_ProcContextActive"
	.byte		0
	.sleb128	1
	.sleb128	9
	.byte		"Os_ProcContextPrepared"
	.byte		0
	.sleb128	2
	.sleb128	0
.L11517:
.L11395:
	.sleb128	8
	.4byte		.L11372
	.uleb128	61
	.uleb128	1
	.4byte		.L11518-.L2
	.uleb128	4
	.sleb128	9
	.byte		"Os_Proc_Task"
	.byte		0
	.sleb128	0
	.sleb128	9
	.byte		"Os_Proc_ISR_CAT2"
	.byte		0
	.sleb128	1
	.sleb128	0
.L11518:
.L11473:
	.sleb128	8
	.4byte		.L11452
	.uleb128	52
	.uleb128	1
	.4byte		.L11519-.L2
	.uleb128	4
	.sleb128	9
	.byte		"OS_TRUSTED"
	.byte		0
	.sleb128	0
	.sleb128	9
	.byte		"OS_NONTRUSTED"
	.byte		0
	.sleb128	1
	.sleb128	0
.L11519:
.L11446:
	.sleb128	8
	.4byte		.L11520
	.uleb128	37
	.uleb128	1
	.4byte		.L11521-.L2
	.uleb128	4
	.sleb128	9
	.byte		"RUNNING"
	.byte		0
	.sleb128	0
	.sleb128	9
	.byte		"WAITING"
	.byte		0
	.sleb128	1
	.sleb128	9
	.byte		"READY"
	.byte		0
	.sleb128	2
	.sleb128	9
	.byte		"SUSPENDED"
	.byte		0
	.sleb128	3
	.sleb128	0
.L11521:
	.section	.debug_info,,n
.L11365:
	.sleb128	10
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L11364:
	.sleb128	11
	.byte		"uint8"
	.byte		0
	.4byte		.L11365
.L11363:
	.sleb128	11
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L11364
	.section	.debug_info,,n
.L11362:
	.sleb128	12
	.4byte		.L11363
.L11370:
	.sleb128	11
	.byte		"Os_ProcStatType"
	.byte		0
	.4byte		.L11371
.L11369:
	.sleb128	12
	.4byte		.L11370
	.section	.debug_info,,n
.L11368:
	.sleb128	13
	.4byte		.L11369
.L11367:
	.sleb128	12
	.4byte		.L11368
.L11379:
	.sleb128	10
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L11378:
	.sleb128	11
	.byte		"uint32"
	.byte		0
	.4byte		.L11379
.L11377:
	.sleb128	11
	.byte		"Os_ObjectType"
	.byte		0
	.4byte		.L11378
.L11376:
	.sleb128	11
	.byte		"ProcType"
	.byte		0
	.4byte		.L11377
.L11375:
	.sleb128	11
	.byte		"TaskType"
	.byte		0
	.4byte		.L11376
.L11374:
	.sleb128	12
	.4byte		.L11375
.L11383:
	.sleb128	10
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L11382:
	.sleb128	11
	.byte		"uint16"
	.byte		0
	.4byte		.L11383
.L11381:
	.sleb128	11
	.byte		"CoreIdType"
	.byte		0
	.4byte		.L11382
.L11380:
	.sleb128	12
	.4byte		.L11381
.L11386:
	.sleb128	11
	.byte		"Os_ProcDynType"
	.byte		0
	.4byte		.L11387
.L11385:
	.sleb128	13
	.4byte		.L11386
.L11384:
	.sleb128	12
	.4byte		.L11385
.L11391:
	.sleb128	11
	.byte		"Os_ProcStackType"
	.byte		0
	.4byte		.L11392
.L11390:
	.sleb128	12
	.4byte		.L11391
.L11389:
	.sleb128	13
	.4byte		.L11390
.L11388:
	.sleb128	12
	.4byte		.L11389
.L11394:
	.sleb128	11
	.byte		"Os_ProcKindType"
	.byte		0
	.4byte		.L11395
.L11393:
	.sleb128	12
	.4byte		.L11394
.L11399:
	.sleb128	10
	.byte		"unsigned long long"
	.byte		0
	.byte		0x7
	.byte		0x8
.L11398:
	.sleb128	11
	.byte		"uint64"
	.byte		0
	.4byte		.L11399
.L11397:
	.sleb128	11
	.byte		"EventMaskType"
	.byte		0
	.4byte		.L11398
.L11396:
	.sleb128	12
	.4byte		.L11397
.L11401:
	.sleb128	11
	.byte		"Os_PriorityType"
	.byte		0
	.4byte		.L11378
.L11400:
	.sleb128	12
	.4byte		.L11401
.L11403:
	.sleb128	11
	.byte		"Os_ActivationCountType"
	.byte		0
	.4byte		.L11378
.L11402:
	.sleb128	12
	.4byte		.L11403
.L11406:
	.sleb128	11
	.byte		"Os_StackType"
	.byte		0
	.4byte		.L11378
.L11405:
	.sleb128	13
	.4byte		.L11406
.L11404:
	.sleb128	12
	.4byte		.L11405
.L11410:
	.sleb128	11
	.byte		"Os_ApplicationStatType"
	.byte		0
	.4byte		.L11411
.L11409:
	.sleb128	12
	.4byte		.L11410
.L11408:
	.sleb128	13
	.4byte		.L11409
.L11407:
	.sleb128	12
	.4byte		.L11408
.L11415:
	.sleb128	11
	.byte		"Os_AccessStorageType"
	.byte		0
	.4byte		.L11378
.L11414:
	.sleb128	12
	.4byte		.L11415
.L11413:
	.sleb128	13
	.4byte		.L11414
.L11412:
	.sleb128	12
	.4byte		.L11413
	.section	.debug_info,,n
.L11419:
	.sleb128	14
	.4byte		.L11420-.L2
	.byte		0x1
	.sleb128	0
.L11420:
.L11418:
	.sleb128	13
	.4byte		.L11419
.L11417:
	.sleb128	11
	.byte		"Os_ProcEntryPointType"
	.byte		0
	.4byte		.L11418
.L11416:
	.sleb128	12
	.4byte		.L11417
.L11422:
	.sleb128	11
	.byte		"ResourceType"
	.byte		0
	.4byte		.L11378
.L11421:
	.sleb128	12
	.4byte		.L11422
.L11427:
	.sleb128	11
	.byte		"Os_ResourceStatType"
	.byte		0
	.4byte		.L11428
.L11426:
	.sleb128	12
	.4byte		.L11427
.L11425:
	.sleb128	13
	.4byte		.L11426
.L11424:
	.sleb128	11
	.byte		"Os_ResourceStack"
	.byte		0
	.4byte		.L11425
.L11423:
	.sleb128	13
	.4byte		.L11424
.L11430:
	.sleb128	13
	.4byte		.L11431
.L11429:
	.sleb128	12
	.4byte		.L11430
.L11435:
	.sleb128	11
	.byte		"Os_IsrPlatformConfigType"
	.byte		0
	.4byte		.L11436
.L11434:
	.sleb128	12
	.4byte		.L11435
.L11433:
	.sleb128	13
	.4byte		.L11434
.L11432:
	.sleb128	12
	.4byte		.L11433
.L11440:
	.sleb128	12
	.4byte		.L11371
.L11439:
	.sleb128	13
	.4byte		.L11440
.L11443:
	.sleb128	11
	.byte		"Os_StackSizeType"
	.byte		0
	.4byte		.L11378
.L11442:
	.sleb128	12
	.4byte		.L11443
.L11445:
	.sleb128	11
	.byte		"TaskStateType"
	.byte		0
	.4byte		.L11446
.L11447:
	.sleb128	11
	.byte		"Os_ProcContexStateType"
	.byte		0
	.4byte		.L11448
.L11450:
	.sleb128	12
	.4byte		.L11451
.L11449:
	.sleb128	13
	.4byte		.L11450
.L11455:
	.sleb128	11
	.byte		"SpinlockIdType"
	.byte		0
	.4byte		.L11382
.L11454:
	.sleb128	12
	.4byte		.L11455
.L11458:
	.sleb128	11
	.byte		"Os_SpinlockDynType"
	.byte		0
	.4byte		.L11459
.L11457:
	.sleb128	13
	.4byte		.L11458
.L11456:
	.sleb128	12
	.4byte		.L11457
.L11462:
	.sleb128	11
	.byte		"Os_LockResourceType"
	.byte		0
	.4byte		.L11364
.L11461:
	.sleb128	13
	.4byte		.L11462
.L11460:
	.sleb128	12
	.4byte		.L11461
.L11467:
	.sleb128	11
	.byte		"Os_ApplicationDynType"
	.byte		0
	.4byte		.L11468
.L11466:
	.sleb128	13
	.4byte		.L11467
.L11465:
	.sleb128	12
	.4byte		.L11466
.L11470:
	.sleb128	11
	.byte		"ApplicationType"
	.byte		0
	.4byte		.L11364
.L11469:
	.sleb128	12
	.4byte		.L11470
.L11472:
	.sleb128	11
	.byte		"Os_ApplicationKindType"
	.byte		0
	.4byte		.L11473
.L11471:
	.sleb128	12
	.4byte		.L11472
.L11477:
	.sleb128	14
	.4byte		.L11478-.L2
	.byte		0x1
	.section	.debug_info,,n
	.sleb128	15
	.4byte		.L11363
	.sleb128	0
.L11478:
.L11476:
	.sleb128	13
	.4byte		.L11477
.L11475:
	.sleb128	11
	.byte		"Os_ShutdownHookFuncType"
	.byte		0
	.4byte		.L11476
.L11474:
	.sleb128	12
	.4byte		.L11475
.L11482:
	.sleb128	14
	.4byte		.L11483-.L2
	.byte		0x1
	.sleb128	0
.L11483:
.L11481:
	.sleb128	13
	.4byte		.L11482
.L11480:
	.sleb128	11
	.byte		"Os_StartUpHookFuncType"
	.byte		0
	.4byte		.L11481
.L11479:
	.sleb128	12
	.4byte		.L11480
.L11487:
	.sleb128	14
	.4byte		.L11488-.L2
	.byte		0x1
	.sleb128	15
	.4byte		.L11363
	.sleb128	0
.L11488:
.L11486:
	.sleb128	13
	.4byte		.L11487
.L11485:
	.sleb128	11
	.byte		"Os_ErrorHookFuncType"
	.byte		0
	.4byte		.L11486
.L11484:
	.sleb128	12
	.4byte		.L11485
.L11491:
	.sleb128	12
	.4byte		.L11376
.L11490:
	.sleb128	13
	.4byte		.L11491
.L11489:
	.sleb128	12
	.4byte		.L11490
.L11495:
	.sleb128	11
	.byte		"CounterType"
	.byte		0
	.4byte		.L11378
.L11494:
	.sleb128	12
	.4byte		.L11495
.L11493:
	.sleb128	13
	.4byte		.L11494
.L11492:
	.sleb128	12
	.4byte		.L11493
.L11499:
	.sleb128	11
	.byte		"AlarmType"
	.byte		0
	.4byte		.L11377
.L11498:
	.sleb128	12
	.4byte		.L11499
.L11497:
	.sleb128	13
	.4byte		.L11498
.L11496:
	.sleb128	12
	.4byte		.L11497
.L11503:
	.sleb128	11
	.byte		"ScheduleTableType"
	.byte		0
	.4byte		.L11378
.L11502:
	.sleb128	12
	.4byte		.L11503
.L11501:
	.sleb128	13
	.4byte		.L11502
.L11500:
	.sleb128	12
	.4byte		.L11501
.L11505:
	.sleb128	11
	.byte		"ApplicationStateType"
	.byte		0
	.4byte		.L11364
.L11509:
	.sleb128	11
	.byte		"Os_ResourceDynType"
	.byte		0
	.4byte		.L11510
.L11508:
	.sleb128	13
	.4byte		.L11509
.L11514:
	.sleb128	12
	.4byte		.L11378
.L11516:
	.sleb128	11
	.byte		"Os_IsrPlatformLevelType"
	.byte		0
	.4byte		.L11382
.L11515:
	.sleb128	12
	.4byte		.L11516
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11354:
	.sleb128	0
.L11350:

	.section	.debug_loc,,n
	.align	0
.L11366:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "Os_Call_ProtectionHook"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Os_ShutdownOS"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Os_Call_ProtectionHook.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Os_Call_ProtectionHook.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Os_Call_ProtectionHook.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Os_Call_ProtectionHook.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Os_Call_ProtectionHook.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Os_Call_ProtectionHook.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\Os\Os\core\ssc\make\..\src\protection\Os_Call_ProtectionHook.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
