#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Os_ShutdownOS.c"
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
# LOCAL_INLINE FUNC(void, OS_CODE) Os_SchedulerSwitchApp(CONSTP2CONST(Os_ApplicationStatType, AUTOMATIC, OS_CONST) app)
	.section	.Os_TEXT,,c
	.align		1
	.section	.debug_line.Os_TEXT,,n
	.sectionlink	.debug_line
.L11406:
	.section	.Os_TEXT,,c
#$$ld
.L11402:
	.0byte		.L11400
	.d2_line_start	.debug_line.Os_TEXT
	.section	.Os_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_Scheduler.h"
        .d2line         154,34
#$$ld
.L11409:

#$$bf	Os_SchedulerSwitchApp,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,lr
	.d2_cfa_start __cie
Os_SchedulerSwitchApp:
.Llo1:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# app=r3 app=r3
	.d2prologue_end
# {
#     CONSTP2VAR(Os_Core_DynInitType, AUTOMATIC, OS_VAR) coreDynInit = OS_GET_CORE_DYN_INIT ( OS_GETCOREID() );
	.d2line		156
	lis		r5,Os_Core_Stat@ha
	e_add16i		r5,r5,Os_Core_Stat@l
	mfspr		r4,286
	rlwinm		r4,r4,0,16,31
	e_mulli		r4,r4,20
	lwzx		r4,r5,r4
.Llo3:
	mr		r4,r4		# coreDynInit=r4 coreDynInit=r4
#   #ifdef OS_MODULE_MEMORYPROTECTION
#     /* [OS265-03-MGC] */
#     if(NULL_PTR != coreDynInit->Os_CurrentApp)
#     {
#         Os_MemoryProtectionDisableApp(coreDynInit->Os_CurrentApp);/* [OS207-02] */
#     }
#     if(NULL_PTR != app)
#     {
#         Os_MemoryProtectionEnableApp ( app ); /* [OS086-02]  */
#     }
#   #endif /* OS_MODULE_MEMORYPROTECTION */
# 
#     coreDynInit->Os_CurrentApp = app;
	.d2line		169
	stw		r3,32(r4)		# coreDynInit=r4 app=r3
# }
	.d2line		170
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo2:
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11410:
	.type		Os_SchedulerSwitchApp,@function
	.size		Os_SchedulerSwitchApp,.-Os_SchedulerSwitchApp
# Number of nodes = 20

# Allocations for Os_SchedulerSwitchApp
#	?a4		app
#	?a5		coreDynInit
# FUNC (void, OS_CODE) ShutdownOS(StatusType error)
	.section	.Os_PUBLIC_TEXT,,c
	.align		2
	.section	.debug_line.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_line
.L11432:
	.section	.Os_PUBLIC_TEXT,,c
#$$ld
.L11428:
	.0byte		.L11426
	.d2_line_start	.debug_line.Os_PUBLIC_TEXT
	.section	.Os_PUBLIC_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\core\\Os_ShutdownOS.c"
        .d2line         54,22
#$$ld
.L11435:

#$$bf	ShutdownOS,interprocedural,rasave,nostackparams
	.globl		ShutdownOS
	.d2_cfa_start __cie
ShutdownOS:
.Llo4:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr		# error=r0
	stw		r0,52(r1)		# error=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# error=r0 error=r3
	.d2prologue_end
# {
#     VAR(Os_APICallType, AUTOMATIC) Os_ShutDownOsAPI_Call;
# 
#     OS_API_ALLOC(Os_ShutDownOsAPI_Call,ShutdownOS);
	.d2line		58
	e_lis		r0,4660		# error=r0
	e_or2i		r0,22136		# error=r0
	stw		r0,8(r1)		# error=r0
	lis		r4,Os_API_ShutdownOS@ha
	e_add16i		r4,r4,Os_API_ShutdownOS@l
	stw		r4,20(r1)
	diab.li		r4,0
	stw		r4,16(r1)
#     Os_ShutDownOsAPI_Call.Os_API_Data.Os_ApiShutdownOs.Error = error;
	.d2line		59
	stb		r3,24(r1)		# error=r3
# 
#     OS_SYSCALL(Os_ShutDownOsAPI_Call);
	.d2line		61
	diab.addi		r3,r1,8		# error=r3
.Llo5:
	bl		OS_SYS_CALL
# }
	.d2line		62
	.d2epilogue_begin
	lwz		r0,52(r1)		# error=r0
	mtspr		lr,r0		# error=lr
	diab.addi		r1,r1,48		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_PUBLIC_TEXT,,c
#$$ld
.L11436:
	.type		ShutdownOS,@function
	.size		ShutdownOS,.-ShutdownOS
# Number of nodes = 34

# Allocations for ShutdownOS
#	?a4		error
#	SP,8		Os_ShutDownOsAPI_Call
# NORETURN_FUNC (void, OS_CODE) Os_ShutdownOS(CONST (Os_CoreShutdownType, AUTOMATIC) shutdownType, StatusType error)
	.section	.Os_TEXT,,c
	.align		2
	.section	.Os_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\core\\Os_ShutdownOS.c"
        .d2line         132,31
#$$ld
.L11448:

#$$bf	Os_ShutdownOS,interprocedural,rasave,nostackparams
	.globl		Os_ShutdownOS
	.d2_cfa_start __cie
Os_ShutdownOS:
.Llo6:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr
	stmw		r26,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	26,31,1,1
	stw		r0,52(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# shutdownType=r31 shutdownType=r3
	mr		r30,r4		# error=r30 error=r4
	.d2prologue_end
# {
#     /* [OS616][OS617-01][OS617-02][OS617-03] */
#     CONST      (CoreIdType,          AUTOMATIC)           coreID = OS_GETCOREID();
	.d2line		135
	mfspr		r29,286		# coreID=r29
.Llo14:
	mr		r29,r29		# coreID=r29 coreID=r29
#     CONSTP2VAR (Os_Core_DynInitSharedType, AUTOMATIC, OS_CONST) coreDynInitShared = OS_GET_CORE_DYN_INIT_SHARED(coreID);
	.d2line		136
	lis		r28,Os_Core_DynInitShared@ha		# coreDynInitShared=r28
.Llo15:
	e_add16i		r28,r28,Os_Core_DynInitShared@l		# coreDynInitShared=r28 coreDynInitShared=r28
	rlwinm		r5,r29,0,16,31		# coreID=r29
	e_mulli		r0,r5,20
	se_add		r28,r0		# coreDynInitShared=r28 coreDynInitShared=r28
	mr		r28,r28		# coreDynInitShared=r28 coreDynInitShared=r28
# 
#   #if ( (OS_SHUTDOWNHOOK == STD_ON) || (OS_APP_SHUTDOWNHOOK == STD_ON) )
#     CONSTP2VAR (Os_HooksDynType, AUTOMATIC, OS_VAR)   coreHookDyn = &OS_GET_CORE_DYN(coreID)->Os_HooksDyn;
	.d2line		139
	lis		r3,(Os_Core_Stat+4)@ha
.Llo7:
	e_add16i		r3,r3,(Os_Core_Stat+4)@l
	lwzx		r27,r3,r0		# coreHookDyn=r27
.Llo16:
	diab.addi		r27,r27,100		# coreHookDyn=r27 coreHookDyn=r27
# 
#     OS_GET_SHUTDOWN_ERRORCODE ( coreID ) = error;
	.d2line		141
	lis		r3,(Os_Core_DynShared+8)@ha
	e_add16i		r3,r3,(Os_Core_DynShared+8)@l
	e_mulli		r0,r5,152
	stbx		r4,r3,r0		# error=r4
#   #endif
# 
#   #ifdef OS_MODULE_SPINLOCK
#     Os_SpinlockFreeOnCore(coreID); /* [OS620] */
	.d2line		145
	mr		r3,r5
	bl		Os_SpinlockFreeOnCore
#   #endif /* OS_MODULE_SPINLOCK */
#     Os_Dispatch_Init(coreID);
	.d2line		147
.Llo12:
	rlwinm		r3,r29,0,16,31		# coreID=r29
	bl		Os_Dispatch_Init
#     Os_SchedulerShutdown(coreID);
	.d2line		148
	rlwinm		r3,r29,0,16,31		# coreID=r29
	bl		Os_SchedulerShutdown
# 
#   #if defined(OS_MODULE_MULTICORE) && defined(OS_CONFIG_INTERNAL_VALIDATIONS)
#     /* Coming from dispatcher so release locking. */
#     Os_Core_UnlockCore(coreID);
	.d2line		152
	rlwinm		r3,r29,0,16,31		# coreID=r29
	bl		Os_Core_UnlockCore
#   #endif /* defined(OS_MODULE_MULTICORE) && defined(OS_CONFIG_INTERNAL_VALIDATIONS) */
# 
#     /*********************************************
#      * Switch states
#      ********************************************/
# 
#     switch(coreDynInitShared->Os_CoreState)
	.d2line		159
	lwz		r6,4(r28)		# coreDynInitShared=r28
	e_lis		r7,4386
	e_or2i		r7,13124
	se_cmp		r6,r7
	bc		1,2,.L11371	# eq
.Llo8:
	e_lis		r7,17493
	e_or2i		r7,26231
	se_cmp		r6,r7
	bc		1,2,.L11370	# eq
	e_lis		r7,21862
	e_or2i		r7,30600
	se_cmp		r6,r7
	bc		1,2,.L11372	# eq
	b		.L11374
.L11370:
#     {
#       #if (OS_APP_SHUTDOWNHOOK == STD_ON)
#         case OS_CORE_SHUTDOWN_APPSHUTDOWNHOOK:
#             coreDynInitShared->Os_CoreState = OS_CORE_SHUTDOWN;
	.d2line		163
	e_lis		r0,4386
	e_or2i		r0,13124
	stw		r0,4(r28)		# coreDynInitShared=r28
	b		.L11371
.L11372:
#             break;
#       #endif /* (OS_APP_SHUTDOWNHOOK == STD_ON) */
# 
#       #ifdef OS_MODULE_MULTICORE
#         case OS_CORE_SHUTDOWN_SYNCPHASE:
#             coreDynInitShared->Os_CoreState = OS_CORE_SHUTDOWN;
	.d2line		169
	e_lis		r0,4386
	e_or2i		r0,13124
	stw		r0,4(r28)		# coreDynInitShared=r28
	b		.L11371
.L11374:
#             break;
#       #endif /* OS_MODULE_MULTICORE */
# 
#         case OS_CORE_SHUTDOWN:
#             /* Do nothing on purpose. */
#             break;
# 
#         default:
#           #ifdef OS_MODULE_MULTICORE
#             Os_CoreBeginShutdown(coreID);
	.d2line		179
	rlwinm		r3,r29,0,16,31		# coreID=r29
	bl		Os_CoreBeginShutdown
#           #endif /* OS_MODULE_MULTICORE */
# 
#           #if (OS_APP_SHUTDOWNHOOK == STD_ON)
#             coreDynInitShared->Os_CoreState = OS_CORE_SHUTDOWN_APPSHUTDOWNHOOK;
	.d2line		183
	e_lis		r0,17493
	e_or2i		r0,26231
	stw		r0,4(r28)		# coreDynInitShared=r28
.L11371:
#           #elif defined(OS_MODULE_MULTICORE)
#             coreDynInitShared->Os_CoreState = OS_CORE_SHUTDOWN_SYNCPHASE;
#           #else
#             coreDynInitShared->Os_CoreState = OS_CORE_SHUTDOWN;
#           #endif
#             break;
#     }
# 
#     /*********************************************
#      * Call Application-specific shutdown hooks
#      ********************************************/
# 
#     /* [OS071]: PostTaskHook shall not be called here */
# 
#     /* [OS545-01-MGC] */
#   #if (OS_APP_SHUTDOWNHOOK == STD_ON)
#     if(OS_CORE_SHUTDOWN_APPSHUTDOWNHOOK == coreDynInitShared->Os_CoreState)
	.d2line		200
	lwz		r0,4(r28)		# coreDynInitShared=r28
	e_lis		r3,17493
	e_or2i		r3,26231
	se_cmpl		r0,r3
	bc		0,2,.L11380	# ne
	.section	.Os_TEXT,,c
.L11475:
#     {
#         VAR(ApplicationType, AUTOMATIC) appId;
# 
#         coreHookDyn->Os_HookID = OS_HOOKID_APPSHUTDOWNHOOK;
	.d2line		204
	diab.li		r0,1024
	sth		r0,0(r27)		# coreHookDyn=r27
# 
#         /* [OS586-01] [OS586-02]*/
#         for ( appId =  (ApplicationType)Os_ApplicationRange[coreID].Os_ObjStartId;
	.d2line		207
	lis		r3,Os_ApplicationRange@ha
	e_add16i		r3,r3,Os_ApplicationRange@l
	rlwinm		r0,r29,3,13,28		# coreID=r29
	lwzx		r26,r3,r0
.Llo17:
	mr		r26,r26		# appId=r26 appId=r26
.L11376:
	rlwinm		r4,r26,0,24,31		# error=r4 appId=r26
	lis		r3,(Os_ApplicationRange+4)@ha
	e_add16i		r3,r3,(Os_ApplicationRange+4)@l
	rlwinm		r0,r29,3,13,28		# coreID=r29
	lwzx		r0,r3,r0
	rlwinm		r0,r0,0,24,31
	se_cmp		r4,r0		# error=r4
	bc		1,1,.L11378	# gt
#               appId <= (ApplicationType)Os_ApplicationRange[coreID].Os_ObjEndId;
#               appId++ )
#         {
#             Os_Applications_Stat[appId].Os_AppDyn->Os_AppState = APPLICATION_TERMINATED; /* [OS618] */
	.d2line		211
	rlwinm		r0,r26,0,24,31		# appId=r26
	diab.li		r4,2		# error=r4
	lis		r3,Os_Applications_Stat@ha
	e_add16i		r3,r3,Os_Applications_Stat@l
	rlwinm		r5,r0,6,0,25
	se_slwi		r0,4
	subf		r0,r0,r5
	lwzx		r3,r3,r0
	stb		r4,0(r3)		# error=r4
# 
#             if(Os_Applications_Stat[appId].Os_AppShutdownHook != NULL_PTR)
	.d2line		213
	lis		r3,(Os_Applications_Stat+16)@ha
	e_add16i		r3,r3,(Os_Applications_Stat+16)@l
	lwzx		r0,r3,r0
	se_cmpi		r0,0
	bc		1,2,.L11379	# eq
#             {
#                 Os_SchedulerSwitchApp(&Os_Applications_Stat[appId]); /* [OS225] */
	.d2line		215
	rlwinm		r0,r26,0,24,31		# appId=r26
	lis		r3,Os_Applications_Stat@ha
	e_add16i		r3,r3,Os_Applications_Stat@l
	rlwinm		r4,r0,6,0,25		# error=r4
	se_slwi		r0,4
	subf		r0,r0,r4		# error=r4
	se_add		r3,r0
	bl		Os_SchedulerSwitchApp
#                 Os_Applications_Stat[appId].Os_AppShutdownHook(error); /* [OS112] */
	.d2line		216
	rlwinm		r0,r26,0,24,31		# appId=r26
	lis		r3,(Os_Applications_Stat+16)@ha
	e_add16i		r3,r3,(Os_Applications_Stat+16)@l
	rlwinm		r4,r0,6,0,25		# error=r4
	se_slwi		r0,4
	subf		r0,r0,r4		# error=r4
	lwzx		r0,r3,r0
	mtspr		ctr,r0
	rlwinm		r3,r30,0,24,31		# error=r30
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x8 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
.L11379:
#             }
#         }
	.d2line		218
	diab.addi		r0,r26,1		# appId=r26
	se_addi		r26,1		# appId=r26 appId=r26
	b		.L11376
.L11378:
# 
#         Os_SchedulerSwitchApp(NULL_PTR);
	.d2line		220
	diab.li		r3,0
	bl		Os_SchedulerSwitchApp
# 
#       #ifdef OS_MODULE_MULTICORE
#         coreDynInitShared->Os_CoreState = OS_CORE_SHUTDOWN_SYNCPHASE;
	.d2line		223
	e_lis		r0,21862
	e_or2i		r0,30600
	stw		r0,4(r28)		# coreDynInitShared=r28
	.section	.Os_TEXT,,c
.L11476:
.L11380:
#       #endif
#     }
#     else
#     {
#         /* Skip application shutdown hooks as one of them has caused a fatal error resulting in immediate shutdown. */
#     }
#   #endif /* (OS_APP_SHUTDOWNHOOK == STD_ON) */
# 
#     /*********************************************
#      * Synchronization point
#      ********************************************/
# 
#   #ifdef OS_MODULE_MULTICORE
# 
#     if(OS_CORE_SHUTDOWN_SYNCPHASE == coreDynInitShared->Os_CoreState)
	.d2line		238
.Llo18:
	lwz		r0,4(r28)		# coreDynInitShared=r28
	e_lis		r3,21862
	e_or2i		r3,30600
	se_cmpl		r0,r3
	bc		0,2,.L11384	# ne
#     {
#         if (OS_SHUTDOWN_SYNCHRONIZED == shutdownType)
	.d2line		240
	se_cmpi		r31,1		# shutdownType=r31
	bc		0,2,.L11382	# ne
#         {
#             Os_CoreSyncShutdown(coreID);
	.d2line		242
.Llo9:
	rlwinm		r3,r29,0,16,31		# coreID=r29
	bl		Os_CoreSyncShutdown
	b		.L11384
.L11382:
#         }
#         else
#         {
#             /* [OS619-01] [OS619-02] */
#             Os_CoreIndividualShutdown(coreID);
	.d2line		247
	rlwinm		r3,r29,0,16,31		# coreID=r29
	bl		Os_CoreIndividualShutdown
.L11384:
#         }
#     }
#     else
#     {
#         /* Do not call either Os_CoreSyncShutdown or Os_CoreIndividualShutdown multiple times. */
#     }
# 
#   #endif /* OS_MODULE_MULTICORE */
# 
#     coreDynInitShared->Os_CoreState = OS_CORE_SHUTDOWN;
	.d2line		257
.Llo10:
	e_lis		r0,4386
	e_or2i		r0,13124
	stw		r0,4(r28)		# coreDynInitShared=r28
	.section	.Os_TEXT,,c
.L11482:
# 
#     /*********************************************
#      * Call Shutdown Hook
#      ********************************************/
# 
#   #if (OS_SHUTDOWNHOOK == STD_ON) || (OS_APP_SHUTDOWNHOOK == STD_ON)
#     #if defined(OS_MODULE_APPLICATION)
#     {
#         /* [OS262] */
#         CONSTP2VAR (Os_Core_DynInitType, AUTOMATIC, OS_CONST) coreDynInit = OS_GET_CORE_DYN_INIT(coreID);
	.d2line		267
.Llo11:
	lis		r3,Os_Core_Stat@ha		# coreDynInit=r3
.Llo19:
	e_add16i		r3,r3,Os_Core_Stat@l		# coreDynInit=r3 coreDynInit=r3
	rlwinm		r0,r29,0,16,31		# coreID=r29
	e_mulli		r0,r0,20
	lwzx		r3,r3,r0		# coreDynInit=r3 coreDynInit=r3
	mr		r3,r3		# coreDynInit=r3 coreDynInit=r3
#         coreDynInit->Os_CurrentApp = NULL_PTR;
	.d2line		268
	diab.li		r0,0
	stw		r0,32(r3)		# coreDynInit=r3
	.section	.Os_TEXT,,c
.L11483:
#     }
#     #endif
#   #endif
# 
#   #if (OS_SHUTDOWNHOOK == STD_ON)
#     coreHookDyn->Os_HookID = OS_HOOKID_SHUTDOWNHOOK;
	.d2line		274
.Llo20:
	diab.li		r0,4
	sth		r0,0(r27)		# coreHookDyn=r27
#     ShutdownHook(error); /* [OS001-174.v1] [OS237] */
	.d2line		275
	rlwinm		r3,r30,0,24,31		# coreDynInit=r3 error=r30
	bl		ShutdownHook
#     coreHookDyn->Os_HookID = OS_HOOKID_NONE;
	.d2line		276
	diab.li		r0,1
	sth		r0,0(r27)		# coreHookDyn=r27
#   #endif /* (OS_SHUTDOWNHOOK == STD_ON) */
# 
#     /* [OS425-01] [OS714-02]: Shutdown hook is called in supervisor mode so all interrupts shall be disabled */
# 
#     /*********************************************
#      * END OF EXECUTION
#      ********************************************/
# 
#     Os_Platform_Shutdown(coreID);
	.d2line		285
	rlwinm		r3,r29,0,16,31		# coreDynInit=r3 coreID=r29
	bl		Os_Platform_Shutdown
.L11385:
.Llo13:
	b		.L11385
# 
#     /* [OS425-02] [OS714-03] */
#     for(;;)
#     {
#         /* Endless loop on purpose */
#     }
# 
#     /* This line won't be reached */
# }
	.d2line		294
	.d2epilogue_begin
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11449:
	.type		Os_ShutdownOS,@function
	.size		Os_ShutdownOS,.-Os_ShutdownOS
# Number of nodes = 250

# Allocations for Os_ShutdownOS
#	?a4		shutdownType
#	?a5		error
#	?a6		$$2355
#	?a7		$$2354
#	?a8		$$2353
#	?a9		$$2352
#	?a10		coreID
#	?a11		coreDynInitShared
#	?a12		coreHookDyn
#	?a13		appId
#	?a14		coreDynInit
# OS_API(ShutdownOS)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         73,1
#$$ld
.L11490:

#$$bf	Os_API_ShutdownOS,interprocedural,rasave,nostackparams
	.globl		Os_API_ShutdownOS
	.d2_cfa_start __cie
Os_API_ShutdownOS:
.Llo21:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# Os_APICall=r31 Os_APICall=r3
	mr		r30,r4		# callerProc=r30 callerProc=r4
	.d2prologue_end
# {
#   #if defined (OS_CONFIG_HOOK) || defined(OS_MODULE_ORTISUPPORT)
#     CONST (CoreIdType, AUTOMATIC)  coreId = OS_GETCOREID();
	.d2line		76
	mfspr		r29,286		# coreId=r29
	mr		r29,r29		# coreId=r29 coreId=r29
#   #endif
# 
#     OS_TRACE(ShutdownOS_Entry , coreId);
	.d2line		79
	diab.li		r0,61
	lis		r3,(Os_Core_DynShared+120)@ha
.Llo22:
	e_add16i		r3,r3,(Os_Core_DynShared+120)@l
	rlwinm		r5,r29,0,16,31		# coreId=r29
	e_mulli		r4,r5,152
.Llo25:
	stbx		r0,r3,r4
# 
#   #ifdef OS_CONFIG_HOOK
# 
#     /* Validate API access and parameters */
#     if ( OS_HOOKISNOT( OS_HOOKID_NONE             /* [OS088-01-113] [OS088-01-114] */
	.d2line		84
	lis		r3,(Os_Core_Stat+4)@ha
	e_add16i		r3,r3,(Os_Core_Stat+4)@l
	e_mulli		r5,r5,20
	lwzx		r3,r3,r5
	lhz		r0,100(r3)
	e_and2i.		r0,803
	se_cmpi		r0,0
	bc		0,2,.L11360	# ne
#                      | OS_HOOKID_ERRORHOOK        /* [OS088-01-115] */
#                      | OS_HOOKID_STARTUPHOOK      /* [OS088-01-116] */
#                      | OS_HOOKID_APPERRORHOOK     /* [OS088-01-215] */
#                      | OS_HOOKID_APPSTARTUPHOOK   /* [OS088-01-239] */
#                      , coreId))
#     {
#         /* [OS088-03-140] [OS088-03-141] [OS088-03-142] [OS088-03-143] [OS088-03-144]
#          * [OS088-03-439] [OS-MGC-0056-15] [OS-MGC-0056-58]
#          */
#         OS_FATAL_ERROR ( E_OS_SYS_CALLEVEL );
	.d2line		94
.Llo23:
	diab.li		r4,53
	lis		r3,(Os_Core_DynShared+12)@ha
	e_add16i		r3,r3,(Os_Core_DynShared+12)@l
	mfspr		r0,286
	rlwinm		r0,r0,0,16,31
	e_mulli		r0,r0,152
	stwx		r4,r3,r0
	diab.li		r3,30
	bl		Os_ShutdownAllCores
.L11360:
#     }
# 
#   #endif
# 
#     /* Call API if validation was successful */
#   #ifdef OS_MODULE_APPLICATION
# 
#     if (    ( NULL_PTR == callerProc ) /* StartupHook */
	.d2line		102
	se_cmpi		r30,0		# callerProc=r30
	bc		1,2,.L11364	# eq
	lwz		r0,48(r30)		# callerProc=r30
	se_cmpi		r0,0
	bc		1,2,.L11362	# eq
	lwz		r3,48(r30)		# callerProc=r30
	lwz		r0,12(r3)
	se_cmpi		r0,0
	bc		0,2,.L11362	# ne
.L11364:
#          || (    ( NULL_PTR   != callerProc->Os_ProcOwnerApp )
#               && ( OS_TRUSTED == callerProc->Os_ProcOwnerApp->Os_AppKind ) /* [OS054] */
#             )
#        )
#   #endif /* OS_MODULE_APPLICATION */
#     {
#         Os_ShutdownOS ( OS_SHUTDOWN_INDIVIDUAL, Os_APICall->Os_API_Data.Os_ApiShutdownOs.Error );
	.d2line		109
	lbz		r4,16(r31)		# Os_APICall=r31
	diab.li		r3,0
	bl		Os_ShutdownOS
.L11362:
#     }
# 
#     OS_TRACE ( ShutdownOS_Exit , coreId);
	.d2line		112
.Llo24:
	diab.li		r3,60
	lis		r4,(Os_Core_DynShared+120)@ha
	e_add16i		r4,r4,(Os_Core_DynShared+120)@l
.Llo26:
	rlwinm		r29,r29,0,16,31		# coreId=r29 coreId=r29
	e_mulli		r29,r29,152		# coreId=r29 coreId=r29
.Llo27:
	stbx		r3,r4,r29
# }
	.d2line		113
	.d2epilogue_begin
	lmw		r29,20(r1)		# offset r1+20  0x14
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
.L11491:
	.type		Os_API_ShutdownOS,@function
	.size		Os_API_ShutdownOS,.-Os_API_ShutdownOS
# Number of nodes = 97

# Allocations for Os_API_ShutdownOS
#	?a4		Os_APICall
#	?a5		callerProc
#	?a6		coreId
# OS_API(ShutdownOSInternal)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         118,1
#$$ld
.L11504:

#$$bf	Os_API_ShutdownOSInternal,interprocedural,rasave,nostackparams
	.globl		Os_API_ShutdownOSInternal
	.d2_cfa_start __cie
Os_API_ShutdownOSInternal:
.Llo28:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r4,r3		# Os_APICall=r4 Os_APICall=r3
	.d2prologue_end
# {
#     Os_ShutdownOS ( Os_APICall->Os_API_Data.Os_ApiShutdownOsInternal.ShutdownType,
	.d2line		120
	lwz		r3,16(r4)		# Os_APICall=r4
.Llo29:
	lbz		r4,20(r4)		# Os_APICall=r4 Os_APICall=r4
	bl		Os_ShutdownOS
#                     Os_APICall->Os_API_Data.Os_ApiShutdownOsInternal.Error );
# }
	.d2line		122
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
.L11505:
	.type		Os_API_ShutdownOSInternal,@function
	.size		Os_API_ShutdownOSInternal,.-Os_API_ShutdownOSInternal
# Number of nodes = 13

# Allocations for Os_API_ShutdownOSInternal
#	?a4		Os_APICall
#	not allocated	callerProc

# Allocations for module
	.section	.text_vle
	.0byte		.L11508
	.section	.text_vle
	.0byte		.L11518
	.section	.Os_BSS,,b
	.0byte		.L11525
	.section	.text_vle
#$$ld
.L5:
.L12012:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_Types.h"
.L12009:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ApplicationApiTypes.h"
.L12007:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ScheduleTableApiTypes.h"
.L12005:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_TaskApiTypes.h"
.L12003:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_SpinlockApiTypes.h"
.L11988:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\PowerPC\\WindRiver\\AUTOSAR\\ar422\\MemMap.h"
.L11985:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_InternalTypes.h"
.L11968:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ErrorApiTypes.h"
.L11948:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ExceptionApiTypes.h"
.L11857:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_TaskCfgTypes.h"
.L11854:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_HookApiTypes.h"
.L11829:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_TrustedFunctionCfgTypes.h"
.L11594:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_ApiDispatchCfgTypes.h"
.L11533:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_SchedulerCfgTypes.h"
.L11519:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_CoreCfgTypes.h"
.L11509:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_ApplicationCfgTypes.h"
	.d2_line_end
	.section	.Os_TEXT,,c
#$$ld
.L11403:
.L11450:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\core\\Os_ShutdownOS.c"
.L11411:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_Scheduler.h"
	.d2_line_end
	.section	.Os_PUBLIC_TEXT,,c
#$$ld
.L11429:
.L11437:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\core\\Os_ShutdownOS.c"
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
	.uleb128	5
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
	.uleb128	6
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
	.uleb128	7
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
	.uleb128	8
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
	.uleb128	9
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
	.uleb128	11
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	11
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
	.uleb128	12
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
	.uleb128	13
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
	.uleb128	11
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	15
	.uleb128	40
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	28
	.uleb128	13
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	16
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
	.uleb128	17
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	18
	.uleb128	38
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	19
	.uleb128	15
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	20
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
	.uleb128	21
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	22
	.uleb128	33
	.byte		0x0
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	23
	.uleb128	33
	.byte		0x0
	.uleb128	47
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	24
	.uleb128	21
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	39
	.uleb128	12
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	25
	.uleb128	5
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	26
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
	.uleb128	27
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\core\\Os_ShutdownOS.c"
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
.L11400:
	.4byte		.L11401-.L11399
.L11399:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L11405-.L11400
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\core\\Os_ShutdownOS.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L11402
	.4byte		.L11403
	.4byte		.L11406
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11412:
	.sleb128	2
	.4byte		.L11408-.L11400
	.byte		"Os_SchedulerSwitchApp"
	.byte		0
	.4byte		.L11411
	.uleb128	154
	.uleb128	34
	.byte		0x1
	.4byte		.L11409
	.4byte		.L11410
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L11411
	.uleb128	154
	.uleb128	34
	.byte		"app"
	.byte		0
	.4byte		.L11413
	.4byte		.L11418
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11419:
	.sleb128	4
	.4byte		.L11411
	.uleb128	156
	.uleb128	56
	.byte		"coreDynInit"
	.byte		0
	.4byte		.L11420
	.4byte		.L11424
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11408:
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
.L11426:
	.4byte		.L11427-.L11425
.L11425:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L11431-.L11426
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\core\\Os_ShutdownOS.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L11428
	.4byte		.L11429
	.4byte		.L11432
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
.L11438:
	.sleb128	5
	.4byte		.L11434-.L11426
	.byte		"ShutdownOS"
	.byte		0
	.4byte		.L11437
	.uleb128	54
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L11435
	.4byte		.L11436
	.sleb128	3
	.4byte		.L11437
	.uleb128	54
	.uleb128	22
	.byte		"error"
	.byte		0
	.4byte		.L11439
	.4byte		.L11442
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
.L11443:
	.sleb128	6
	.4byte		.L11437
	.uleb128	56
	.uleb128	36
	.byte		"Os_ShutDownOsAPI_Call"
	.byte		0
	.4byte		.L11444
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11434:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11451:
	.sleb128	5
	.4byte		.L11447-.L11400
	.byte		"Os_ShutdownOS"
	.byte		0
	.4byte		.L11450
	.uleb128	132
	.uleb128	31
	.byte		0x1
	.byte		0x1
	.4byte		.L11448
	.4byte		.L11449
	.sleb128	3
	.4byte		.L11450
	.uleb128	132
	.uleb128	31
	.byte		"shutdownType"
	.byte		0
	.4byte		.L11452
	.4byte		.L11455
	.sleb128	3
	.4byte		.L11450
	.uleb128	132
	.uleb128	31
	.byte		"error"
	.byte		0
	.4byte		.L11439
	.4byte		.L11456
.L11457:
	.sleb128	4
	.4byte		.L11450
	.uleb128	135
	.uleb128	59
	.byte		"coreID"
	.byte		0
	.4byte		.L11458
	.4byte		.L11462
.L11463:
	.sleb128	4
	.4byte		.L11450
	.uleb128	136
	.uleb128	65
	.byte		"coreDynInitShared"
	.byte		0
	.4byte		.L11464
	.4byte		.L11468
.L11469:
	.sleb128	4
	.4byte		.L11450
	.uleb128	139
	.uleb128	55
	.byte		"coreHookDyn"
	.byte		0
	.4byte		.L11470
	.4byte		.L11474
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	7
	.4byte		.L11478
	.4byte		.L11475
	.4byte		.L11476
.L11479:
	.sleb128	4
	.4byte		.L11450
	.uleb128	202
	.uleb128	41
	.byte		"appId"
	.byte		0
	.4byte		.L11480
	.4byte		.L11481
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11478:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	7
	.4byte		.L11485
	.4byte		.L11482
	.4byte		.L11483
.L11486:
	.sleb128	4
	.4byte		.L11450
	.uleb128	267
	.uleb128	63
	.byte		"coreDynInit"
	.byte		0
	.4byte		.L11420
	.4byte		.L11487
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11485:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11447:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11492:
	.sleb128	5
	.4byte		.L11489-.L11400
	.byte		"Os_API_ShutdownOS"
	.byte		0
	.4byte		.L11450
	.uleb128	73
	.uleb128	1
	.byte		0x1
	.byte		0x1
	.4byte		.L11490
	.4byte		.L11491
	.sleb128	3
	.4byte		.L11450
	.uleb128	73
	.uleb128	1
	.byte		"Os_APICall"
	.byte		0
	.4byte		.L11493
	.4byte		.L11494
	.sleb128	3
	.4byte		.L11450
	.uleb128	73
	.uleb128	1
	.byte		"callerProc"
	.byte		0
	.4byte		.L11495
	.4byte		.L11499
.L11500:
	.sleb128	4
	.4byte		.L11450
	.uleb128	76
	.uleb128	36
	.byte		"coreId"
	.byte		0
	.4byte		.L11458
	.4byte		.L11501
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11489:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11506:
	.sleb128	5
	.4byte		.L11503-.L11400
	.byte		"Os_API_ShutdownOSInternal"
	.byte		0
	.4byte		.L11450
	.uleb128	118
	.uleb128	1
	.byte		0x1
	.byte		0x1
	.4byte		.L11504
	.4byte		.L11505
	.sleb128	3
	.4byte		.L11450
	.uleb128	118
	.uleb128	1
	.byte		"Os_APICall"
	.byte		0
	.4byte		.L11493
	.4byte		.L11507
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	8
	.4byte		.L11450
	.uleb128	118
	.uleb128	1
	.byte		"callerProc"
	.byte		0
	.4byte		.L11495
	.sleb128	2
	.byte		0x90
	.uleb128	4
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11503:
	.section	.debug_info,,n
.L11508:
	.sleb128	9
	.byte		0x1
	.byte		0x1
	.4byte		.L11509
	.uleb128	100
	.uleb128	48
	.byte		"Os_Applications_Stat"
	.byte		0
	.4byte		.L11510
	.section	.debug_info,,n
.L11512:
	.sleb128	9
	.byte		0x1
	.byte		0x1
	.4byte		.L11509
	.uleb128	102
	.uleb128	44
	.byte		"Os_ApplicationRange"
	.byte		0
	.4byte		.L11513
.L11518:
	.sleb128	9
	.byte		0x1
	.byte		0x1
	.4byte		.L11519
	.uleb128	169
	.uleb128	42
	.byte		"Os_Core_Stat"
	.byte		0
	.4byte		.L11520
	.section	.debug_info,,n
.L11525:
	.sleb128	9
	.byte		0x1
	.byte		0x1
	.4byte		.L11519
	.uleb128	181
	.uleb128	45
	.byte		"Os_Core_DynShared"
	.byte		0
	.4byte		.L11526
	.section	.debug_info,,n
.L11530:
	.sleb128	9
	.byte		0x1
	.byte		0x1
	.4byte		.L11519
	.uleb128	193
	.uleb128	47
	.byte		"Os_Core_DynInitShared"
	.byte		0
	.4byte		.L11531
	.0byte		.L11530
	.section	.debug_info,,n
.L11524:
	.sleb128	10
	.4byte		.L11533
	.uleb128	69
	.uleb128	1
	.4byte		.L11534-.L2
	.uleb128	20
	.section	.debug_info,,n
.L786:
	.sleb128	11
	.byte		"Os_Core_DynInit"
	.byte		0
	.4byte		.L11420
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L787:
	.sleb128	11
	.byte		"Os_Core_Dyn"
	.byte		0
	.4byte		.L11535
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L788:
	.sleb128	11
	.byte		"Os_DispatchElement"
	.byte		0
	.4byte		.L11539
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L789:
	.sleb128	11
	.byte		"Os_PrepareContextFunction"
	.byte		0
	.4byte		.L11543
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L790:
	.sleb128	11
	.byte		"Os_GetStackPointerFunction"
	.byte		0
	.4byte		.L11552
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11534:
.L11423:
	.sleb128	10
	.4byte		.L11533
	.uleb128	69
	.uleb128	1
	.4byte		.L11561-.L2
	.uleb128	36
.L783:
	.sleb128	11
	.byte		"Os_IsrDynInit"
	.byte		0
	.4byte		.L11562
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L784:
	.sleb128	11
	.byte		"Os_SchedulerDynInit"
	.byte		0
	.4byte		.L11564
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L785:
	.sleb128	11
	.byte		"Os_CurrentApp"
	.byte		0
	.4byte		.L11414
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
	.sleb128	0
.L11561:
.L11467:
	.sleb128	10
	.4byte		.L11533
	.uleb128	69
	.uleb128	1
	.4byte		.L11566-.L2
	.uleb128	20
.L778:
	.sleb128	11
	.byte		"Os_StartOsFunc"
	.byte		0
	.4byte		.L11567
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L779:
	.sleb128	11
	.byte		"Os_CoreState"
	.byte		0
	.4byte		.L11573
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L780:
	.sleb128	11
	.byte		"Os_CoreStarted"
	.byte		0
	.4byte		.L11574
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L781:
	.sleb128	11
	.byte		"Os_CoreAppMode"
	.byte		0
	.4byte		.L11572
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L782:
	.sleb128	11
	.byte		"Os_CoreIdleMode"
	.byte		0
	.4byte		.L11575
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11566:
.L11529:
	.sleb128	10
	.4byte		.L11533
	.uleb128	69
	.uleb128	1
	.4byte		.L11577-.L2
	.uleb128	152
.L776:
	.sleb128	11
	.byte		"Os_Dispatcher"
	.byte		0
	.4byte		.L11578
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L777:
	.sleb128	11
	.byte		"Os_PublicDataNoInit"
	.byte		0
	.4byte		.L11580
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11577:
.L11538:
	.sleb128	10
	.4byte		.L11533
	.uleb128	69
	.uleb128	1
	.4byte		.L11582-.L2
	.uleb128	104
.L773:
	.sleb128	11
	.byte		"Os_SchedulerDyn"
	.byte		0
	.4byte		.L11583
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L774:
	.sleb128	11
	.byte		"Os_IsrDyn"
	.byte		0
	.4byte		.L11585
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L775:
	.sleb128	11
	.byte		"Os_HooksDyn"
	.byte		0
	.4byte		.L11472
	.sleb128	2
	.byte		0x23
	.uleb128	100
	.byte		0x1
	.sleb128	0
.L11582:
.L11565:
	.sleb128	10
	.4byte		.L11533
	.uleb128	69
	.uleb128	1
	.4byte		.L11587-.L2
	.uleb128	4
.L772:
	.sleb128	11
	.byte		"Os_SchedulerCurrentProc"
	.byte		0
	.4byte		.L11496
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11587:
.L11584:
	.sleb128	10
	.4byte		.L11533
	.uleb128	69
	.uleb128	1
	.4byte		.L11588-.L2
	.uleb128	48
.L764:
	.sleb128	11
	.byte		"Os_CurrentContext"
	.byte		0
	.4byte		.L11557
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L765:
	.sleb128	11
	.byte		"Os_PreviousContext"
	.byte		0
	.4byte		.L11557
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L766:
	.sleb128	11
	.byte		"Os_SchedulerScheduleAction"
	.byte		0
	.4byte		.L11589
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L767:
	.sleb128	11
	.byte		"Os_SchedulerLastScheduledPriority"
	.byte		0
	.4byte		.L11591
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L768:
	.sleb128	11
	.byte		"Os_SchedulerCurrentTask"
	.byte		0
	.4byte		.L11496
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L769:
	.sleb128	11
	.byte		"Os_SchedulerLastScheduledProc"
	.byte		0
	.4byte		.L11496
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L770:
	.sleb128	11
	.byte		"Os_SchedulerHeadPivot"
	.byte		0
	.4byte		.L11592
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L771:
	.sleb128	11
	.byte		"Os_SchedulerTailPivot"
	.byte		0
	.4byte		.L11592
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
	.sleb128	0
.L11588:
	.section	.debug_info,,n
.L11593:
	.sleb128	12
	.4byte		.L11594
	.uleb128	612
	.uleb128	1
	.4byte		.L11595-.L2
	.byte		"Os_SchedulerQueueElementType_s"
	.byte		0
	.uleb128	12
.L750:
	.sleb128	11
	.byte		"Os_QueueProc"
	.byte		0
	.4byte		.L11496
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L751:
	.sleb128	11
	.byte		"Os_QueueFrontElement"
	.byte		0
	.4byte		.L11596
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L752:
	.sleb128	11
	.byte		"Os_QueueBackElement"
	.byte		0
	.4byte		.L11596
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11595:
.L11563:
	.sleb128	10
	.4byte		.L11594
	.uleb128	612
	.uleb128	1
	.4byte		.L11597-.L2
	.uleb128	28
.L743:
	.sleb128	11
	.byte		"Os_CurrentUserModePriority"
	.byte		0
	.4byte		.L11598
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L744:
	.sleb128	11
	.byte		"Os_UserModePriorityChanged"
	.byte		0
	.4byte		.L11599
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L745:
	.sleb128	11
	.byte		"Os_DisableAllCount"
	.byte		0
	.4byte		.L11559
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L746:
	.sleb128	11
	.byte		"Os_SuspendAllCount"
	.byte		0
	.4byte		.L11559
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L747:
	.sleb128	11
	.byte		"Os_SuspendOSCount"
	.byte		0
	.4byte		.L11559
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L748:
	.sleb128	11
	.byte		"Os_SavedIsrLevel"
	.byte		0
	.4byte		.L11598
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L749:
	.sleb128	11
	.byte		"Os_SavedOSIsrLevel"
	.byte		0
	.4byte		.L11598
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
	.sleb128	0
.L11597:
.L11586:
	.sleb128	10
	.4byte		.L11594
	.uleb128	612
	.uleb128	1
	.4byte		.L11600-.L2
	.uleb128	52
.L737:
	.sleb128	11
	.byte		"Os_IsrRunningIsr"
	.byte		0
	.4byte		.L11496
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L738:
	.sleb128	11
	.byte		"Os_IsrNeedToClear"
	.byte		0
	.4byte		.L11601
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L739:
	.sleb128	11
	.byte		"Os_Isr_NestLevel"
	.byte		0
	.4byte		.L11559
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L740:
	.sleb128	11
	.byte		"Os_Isr_ServicesBackup"
	.byte		0
	.4byte		.L11605
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L741:
	.sleb128	11
	.byte		"Os_SuspendAllPrevIsrState"
	.byte		0
	.4byte		.L11598
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L742:
	.sleb128	11
	.byte		"Os_SuspendCounterpartTrack"
	.byte		0
	.4byte		.L11609
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L11600:
.L11579:
	.sleb128	10
	.4byte		.L11594
	.uleb128	612
	.uleb128	1
	.4byte		.L11611-.L2
	.uleb128	8
.L735:
	.sleb128	11
	.byte		"Os_DHead"
	.byte		0
	.4byte		.L11559
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L736:
	.sleb128	11
	.byte		"Os_DTail"
	.byte		0
	.4byte		.L11559
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11611:
.L11542:
	.sleb128	12
	.4byte		.L11594
	.uleb128	612
	.uleb128	1
	.4byte		.L11612-.L2
	.byte		"Os_DispatchElementType_s"
	.byte		0
	.uleb128	56
.L730:
	.sleb128	11
	.byte		"Os_DispatchKind"
	.byte		0
	.4byte		.L11613
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L731:
	.sleb128	11
	.byte		"Os_DispatcherLockCoreId"
	.byte		0
	.4byte		.L11459
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L732:
	.sleb128	11
	.byte		"Os_DispatchIsrId"
	.byte		0
	.4byte		.L11615
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L733:
	.sleb128	11
	.byte		"Os_DispatchApiCall"
	.byte		0
	.4byte		.L11618
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L734:
	.sleb128	11
	.byte		"Os_DispatchApiInternal"
	.byte		0
	.4byte		.L11444
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11612:
.L11445:
	.sleb128	12
	.4byte		.L11594
	.uleb128	60
	.uleb128	1
	.4byte		.L11619-.L2
	.byte		"Os_APICallType_struct"
	.byte		0
	.uleb128	40
.L725:
	.sleb128	11
	.byte		"Os_API_Magic"
	.byte		0
	.4byte		.L11559
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L726:
	.sleb128	11
	.byte		"Os_API_ReturnValue"
	.byte		0
	.4byte		.L11439
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L727:
	.sleb128	11
	.byte		"Os_API_Lock"
	.byte		0
	.4byte		.L11620
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L728:
	.sleb128	11
	.byte		"Os_API_Func"
	.byte		0
	.4byte		.L11622
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L729:
	.sleb128	11
	.byte		"Os_API_Data"
	.byte		0
	.4byte		.L11626
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11619:
	.section	.debug_info,,n
.L11626:
	.sleb128	13
	.4byte		.L11594
	.uleb128	60
	.uleb128	1
	.4byte		.L11627-.L2
	.uleb128	24
.L677:
	.sleb128	11
	.byte		"Os_ApiStartOs"
	.byte		0
	.4byte		.L11628
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L678:
	.sleb128	11
	.byte		"Os_ApiShutdownOs"
	.byte		0
	.4byte		.L11630
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L679:
	.sleb128	11
	.byte		"Os_ApiShutdownOsInternal"
	.byte		0
	.4byte		.L11632
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L680:
	.sleb128	11
	.byte		"Os_ApiShutdownAllCores"
	.byte		0
	.4byte		.L11634
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L681:
	.sleb128	11
	.byte		"Os_ApiGetNumberOfActivatedCores"
	.byte		0
	.4byte		.L11636
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L682:
	.sleb128	11
	.byte		"Os_ApiStartCore"
	.byte		0
	.4byte		.L11638
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L683:
	.sleb128	11
	.byte		"Os_ApiStartNonAutosarCore"
	.byte		0
	.4byte		.L11640
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L684:
	.sleb128	11
	.byte		"Os_ApiGetCoreID"
	.byte		0
	.4byte		.L11642
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L685:
	.sleb128	11
	.byte		"Os_ApiActivateTask"
	.byte		0
	.4byte		.L11644
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L686:
	.sleb128	11
	.byte		"Os_ApiChainTask"
	.byte		0
	.4byte		.L11646
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L687:
	.sleb128	11
	.byte		"Os_ApiGetTaskID"
	.byte		0
	.4byte		.L11648
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L688:
	.sleb128	11
	.byte		"Os_ApiGetTaskState"
	.byte		0
	.4byte		.L11650
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L689:
	.sleb128	11
	.byte		"Os_ApiSetEvent"
	.byte		0
	.4byte		.L11652
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L690:
	.sleb128	11
	.byte		"Os_ApiClearEvent"
	.byte		0
	.4byte		.L11654
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L691:
	.sleb128	11
	.byte		"Os_ApiGetEvent"
	.byte		0
	.4byte		.L11656
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L692:
	.sleb128	11
	.byte		"Os_ApiWaitEvent"
	.byte		0
	.4byte		.L11658
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L693:
	.sleb128	11
	.byte		"Os_ApiGetResource"
	.byte		0
	.4byte		.L11660
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L694:
	.sleb128	11
	.byte		"Os_ApiReleaseResource"
	.byte		0
	.4byte		.L11662
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L695:
	.sleb128	11
	.byte		"Os_ApiGetAlarmBase"
	.byte		0
	.4byte		.L11664
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L696:
	.sleb128	11
	.byte		"Os_ApiGetAlarm"
	.byte		0
	.4byte		.L11666
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L697:
	.sleb128	11
	.byte		"Os_ApiSetRelAlarm"
	.byte		0
	.4byte		.L11668
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L698:
	.sleb128	11
	.byte		"Os_ApiSetAbsAlarm"
	.byte		0
	.4byte		.L11670
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L699:
	.sleb128	11
	.byte		"Os_ApiCancelAlarm"
	.byte		0
	.4byte		.L11672
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L700:
	.sleb128	11
	.byte		"Os_ApiGetApplicationState"
	.byte		0
	.4byte		.L11674
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L701:
	.sleb128	11
	.byte		"Os_ApiTerminateApplication"
	.byte		0
	.4byte		.L11676
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L702:
	.sleb128	11
	.byte		"Os_ApiGetApplicationID"
	.byte		0
	.4byte		.L11678
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L703:
	.sleb128	11
	.byte		"Os_ApiGetISRID"
	.byte		0
	.4byte		.L11680
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L704:
	.sleb128	11
	.byte		"Os_ApiGetActiveApplicationMode"
	.byte		0
	.4byte		.L11682
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L705:
	.sleb128	11
	.byte		"Os_ApiIncrementCounter"
	.byte		0
	.4byte		.L11684
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L706:
	.sleb128	11
	.byte		"Os_ApiGetCounterValue"
	.byte		0
	.4byte		.L11686
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L707:
	.sleb128	11
	.byte		"Os_ApiGetElapsedValue"
	.byte		0
	.4byte		.L11688
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L708:
	.sleb128	11
	.byte		"Os_ApiStartScheduleTableAbs"
	.byte		0
	.4byte		.L11690
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L709:
	.sleb128	11
	.byte		"Os_ApiStartScheduleTableRel"
	.byte		0
	.4byte		.L11692
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L710:
	.sleb128	11
	.byte		"Os_ApiStopScheduleTable"
	.byte		0
	.4byte		.L11694
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L711:
	.sleb128	11
	.byte		"Os_ApiGetScheduleTableStatus"
	.byte		0
	.4byte		.L11696
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L712:
	.sleb128	11
	.byte		"Os_ApiNextScheduleTable"
	.byte		0
	.4byte		.L11698
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L713:
	.sleb128	11
	.byte		"Os_ApiStartScheduleTableSynchron"
	.byte		0
	.4byte		.L11700
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L714:
	.sleb128	11
	.byte		"Os_ApiSyncScheduleTable"
	.byte		0
	.4byte		.L11702
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L715:
	.sleb128	11
	.byte		"Os_ApiSetScheduleTableAsync"
	.byte		0
	.4byte		.L11704
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L716:
	.sleb128	11
	.byte		"Os_ApiCheckObjectAccess"
	.byte		0
	.4byte		.L11706
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L717:
	.sleb128	11
	.byte		"Os_ApiCheckObjectOwnership"
	.byte		0
	.4byte		.L11708
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L718:
	.sleb128	11
	.byte		"Os_ApiCallTrustedFunction"
	.byte		0
	.4byte		.L11710
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L719:
	.sleb128	11
	.byte		"Os_ApiStackUsage"
	.byte		0
	.4byte		.L11712
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L720:
	.sleb128	11
	.byte		"Os_API_GetSpinlock"
	.byte		0
	.4byte		.L11714
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L721:
	.sleb128	11
	.byte		"Os_API_ReleaseSpinlock"
	.byte		0
	.4byte		.L11716
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L722:
	.sleb128	11
	.byte		"Os_API_TryToGetSpinlock"
	.byte		0
	.4byte		.L11718
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L723:
	.sleb128	11
	.byte		"Os_API_IOCTransfer"
	.byte		0
	.4byte		.L11720
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L724:
	.sleb128	11
	.byte		"Os_ApiControlIdle"
	.byte		0
	.4byte		.L11722
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11627:
.L11723:
	.sleb128	10
	.4byte		.L11594
	.uleb128	60
	.uleb128	1
	.4byte		.L11724-.L2
	.uleb128	8
.L675:
	.sleb128	11
	.byte		"CoreID"
	.byte		0
	.4byte		.L11459
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L676:
	.sleb128	11
	.byte		"IdleMode"
	.byte		0
	.4byte		.L11575
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11724:
.L11721:
	.sleb128	10
	.4byte		.L11594
	.uleb128	60
	.uleb128	1
	.4byte		.L11725-.L2
	.uleb128	8
.L673:
	.sleb128	11
	.byte		"Ioc_Channel"
	.byte		0
	.4byte		.L11726
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L674:
	.sleb128	11
	.byte		"Ioc_Data"
	.byte		0
	.4byte		.L11730
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11725:
.L11719:
	.sleb128	10
	.4byte		.L11594
	.uleb128	60
	.uleb128	1
	.4byte		.L11736-.L2
	.uleb128	8
.L671:
	.sleb128	11
	.byte		"SpinlockId"
	.byte		0
	.4byte		.L11737
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L672:
	.sleb128	11
	.byte		"Success"
	.byte		0
	.4byte		.L11738
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11736:
.L11717:
	.sleb128	10
	.4byte		.L11594
	.uleb128	60
	.uleb128	1
	.4byte		.L11741-.L2
	.uleb128	2
.L670:
	.sleb128	11
	.byte		"SpinlockId"
	.byte		0
	.4byte		.L11737
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11741:
.L11715:
	.sleb128	10
	.4byte		.L11594
	.uleb128	60
	.uleb128	1
	.4byte		.L11742-.L2
	.uleb128	2
.L669:
	.sleb128	11
	.byte		"SpinlockId"
	.byte		0
	.4byte		.L11737
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11742:
.L11713:
	.sleb128	10
	.4byte		.L11594
	.uleb128	60
	.uleb128	1
	.4byte		.L11743-.L2
	.uleb128	20
.L664:
	.sleb128	11
	.byte		"ProcId"
	.byte		0
	.4byte		.L11744
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L665:
	.sleb128	11
	.byte		"MaxUsage"
	.byte		0
	.4byte		.L11440
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L666:
	.sleb128	11
	.byte		"MaxUsageRef"
	.byte		0
	.4byte		.L11745
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L667:
	.sleb128	11
	.byte		"CurrentUsage"
	.byte		0
	.4byte		.L11440
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L668:
	.sleb128	11
	.byte		"CurrentUsageRef"
	.byte		0
	.4byte		.L11745
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11743:
.L11711:
	.sleb128	10
	.4byte		.L11594
	.uleb128	60
	.uleb128	1
	.4byte		.L11746-.L2
	.uleb128	12
.L661:
	.sleb128	11
	.byte		"FunctionIndex"
	.byte		0
	.4byte		.L11747
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L662:
	.sleb128	11
	.byte		"ParamRef"
	.byte		0
	.4byte		.L11748
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L663:
	.sleb128	11
	.byte		"ReturnValue"
	.byte		0
	.4byte		.L11749
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11746:
.L11709:
	.sleb128	10
	.4byte		.L11594
	.uleb128	60
	.uleb128	1
	.4byte		.L11751-.L2
	.uleb128	12
.L658:
	.sleb128	11
	.byte		"AppID"
	.byte		0
	.4byte		.L11480
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L659:
	.sleb128	11
	.byte		"ObjectType"
	.byte		0
	.4byte		.L11752
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L660:
	.sleb128	11
	.byte		"Object"
	.byte		0
	.4byte		.L11617
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11751:
.L11707:
	.sleb128	10
	.4byte		.L11594
	.uleb128	60
	.uleb128	1
	.4byte		.L11754-.L2
	.uleb128	12
.L655:
	.sleb128	11
	.byte		"AppID"
	.byte		0
	.4byte		.L11480
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L656:
	.sleb128	11
	.byte		"ObjectType"
	.byte		0
	.4byte		.L11752
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L657:
	.sleb128	11
	.byte		"Object"
	.byte		0
	.4byte		.L11617
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11754:
.L11673:
	.sleb128	10
	.4byte		.L11594
	.uleb128	60
	.uleb128	1
	.4byte		.L11755-.L2
	.uleb128	4
.L654:
	.sleb128	11
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11756
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11755:
.L11671:
	.sleb128	10
	.4byte		.L11594
	.uleb128	60
	.uleb128	1
	.4byte		.L11757-.L2
	.uleb128	12
.L651:
	.sleb128	11
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11756
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L652:
	.sleb128	11
	.byte		"Start"
	.byte		0
	.4byte		.L11758
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L653:
	.sleb128	11
	.byte		"Cycle"
	.byte		0
	.4byte		.L11758
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11757:
.L11669:
	.sleb128	10
	.4byte		.L11594
	.uleb128	60
	.uleb128	1
	.4byte		.L11759-.L2
	.uleb128	12
.L648:
	.sleb128	11
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11756
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L649:
	.sleb128	11
	.byte		"Increment"
	.byte		0
	.4byte		.L11758
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L650:
	.sleb128	11
	.byte		"Cycle"
	.byte		0
	.4byte		.L11758
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11759:
.L11667:
	.sleb128	10
	.4byte		.L11594
	.uleb128	60
	.uleb128	1
	.4byte		.L11760-.L2
	.uleb128	8
.L646:
	.sleb128	11
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11756
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L647:
	.sleb128	11
	.byte		"TickRef"
	.byte		0
	.4byte		.L11761
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11760:
.L11665:
	.sleb128	10
	.4byte		.L11594
	.uleb128	60
	.uleb128	1
	.4byte		.L11763-.L2
	.uleb128	8
.L644:
	.sleb128	11
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11756
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L645:
	.sleb128	11
	.byte		"AlarmBaseTypeRef"
	.byte		0
	.4byte		.L11764
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11763:
.L11705:
	.sleb128	10
	.4byte		.L11594
	.uleb128	60
	.uleb128	1
	.4byte		.L11768-.L2
	.uleb128	4
.L643:
	.sleb128	11
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11769
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11768:
.L11703:
	.sleb128	10
	.4byte		.L11594
	.uleb128	60
	.uleb128	1
	.4byte		.L11770-.L2
	.uleb128	8
.L641:
	.sleb128	11
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11769
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L642:
	.sleb128	11
	.byte		"SyncValue"
	.byte		0
	.4byte		.L11758
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11770:
.L11701:
	.sleb128	10
	.4byte		.L11594
	.uleb128	60
	.uleb128	1
	.4byte		.L11771-.L2
	.uleb128	4
.L640:
	.sleb128	11
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11769
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11771:
.L11699:
	.sleb128	10
	.4byte		.L11594
	.uleb128	60
	.uleb128	1
	.4byte		.L11772-.L2
	.uleb128	8
.L638:
	.sleb128	11
	.byte		"SchTblIdFrom"
	.byte		0
	.4byte		.L11769
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L639:
	.sleb128	11
	.byte		"SchTblIdTo"
	.byte		0
	.4byte		.L11769
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11772:
.L11697:
	.sleb128	10
	.4byte		.L11594
	.uleb128	60
	.uleb128	1
	.4byte		.L11773-.L2
	.uleb128	8
.L636:
	.sleb128	11
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11769
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L637:
	.sleb128	11
	.byte		"SchTblStatus"
	.byte		0
	.4byte		.L11774
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11773:
.L11695:
	.sleb128	10
	.4byte		.L11594
	.uleb128	60
	.uleb128	1
	.4byte		.L11778-.L2
	.uleb128	4
.L635:
	.sleb128	11
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11769
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11778:
.L11693:
	.sleb128	10
	.4byte		.L11594
	.uleb128	60
	.uleb128	1
	.4byte		.L11779-.L2
	.uleb128	8
.L633:
	.sleb128	11
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11769
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L634:
	.sleb128	11
	.byte		"Offset"
	.byte		0
	.4byte		.L11758
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11779:
.L11691:
	.sleb128	10
	.4byte		.L11594
	.uleb128	60
	.uleb128	1
	.4byte		.L11780-.L2
	.uleb128	8
.L631:
	.sleb128	11
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11769
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L632:
	.sleb128	11
	.byte		"Start"
	.byte		0
	.4byte		.L11758
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11780:
.L11689:
	.sleb128	10
	.4byte		.L11594
	.uleb128	60
	.uleb128	1
	.4byte		.L11781-.L2
	.uleb128	12
.L628:
	.sleb128	11
	.byte		"CounterId"
	.byte		0
	.4byte		.L11782
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L629:
	.sleb128	11
	.byte		"ValuePtr"
	.byte		0
	.4byte		.L11761
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L630:
	.sleb128	11
	.byte		"ElapsedValuePtr"
	.byte		0
	.4byte		.L11761
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11781:
.L11687:
	.sleb128	10
	.4byte		.L11594
	.uleb128	60
	.uleb128	1
	.4byte		.L11783-.L2
	.uleb128	12
.L625:
	.sleb128	11
	.byte		"CounterId"
	.byte		0
	.4byte		.L11782
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L626:
	.sleb128	11
	.byte		"ValuePtr"
	.byte		0
	.4byte		.L11761
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L627:
	.sleb128	11
	.byte		"LightServiceFunction"
	.byte		0
	.4byte		.L11784
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11783:
.L11685:
	.sleb128	10
	.4byte		.L11594
	.uleb128	60
	.uleb128	1
	.4byte		.L11788-.L2
	.uleb128	4
.L624:
	.sleb128	11
	.byte		"CounterId"
	.byte		0
	.4byte		.L11782
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11788:
.L11681:
	.sleb128	10
	.4byte		.L11594
	.uleb128	60
	.uleb128	1
	.4byte		.L11789-.L2
	.uleb128	4
.L623:
	.sleb128	11
	.byte		"ISRId"
	.byte		0
	.4byte		.L11615
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11789:
.L11677:
	.sleb128	10
	.4byte		.L11594
	.uleb128	60
	.uleb128	1
	.4byte		.L11790-.L2
	.uleb128	2
.L621:
	.sleb128	11
	.byte		"Application"
	.byte		0
	.4byte		.L11480
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L622:
	.sleb128	11
	.byte		"RestartOption"
	.byte		0
	.4byte		.L11791
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
	.sleb128	0
.L11790:
.L11679:
	.sleb128	10
	.4byte		.L11594
	.uleb128	60
	.uleb128	1
	.4byte		.L11792-.L2
	.uleb128	1
.L620:
	.sleb128	11
	.byte		"Application"
	.byte		0
	.4byte		.L11480
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11792:
.L11675:
	.sleb128	10
	.4byte		.L11594
	.uleb128	60
	.uleb128	1
	.4byte		.L11793-.L2
	.uleb128	8
.L618:
	.sleb128	11
	.byte		"Application"
	.byte		0
	.4byte		.L11480
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L619:
	.sleb128	11
	.byte		"AppStateRef"
	.byte		0
	.4byte		.L11794
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11793:
.L11659:
	.sleb128	10
	.4byte		.L11594
	.uleb128	60
	.uleb128	1
	.4byte		.L11797-.L2
	.uleb128	8
.L617:
	.sleb128	11
	.byte		"EventMask"
	.byte		0
	.4byte		.L11798
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11797:
.L11657:
	.sleb128	10
	.4byte		.L11594
	.uleb128	60
	.uleb128	1
	.4byte		.L11801-.L2
	.uleb128	24
.L614:
	.sleb128	11
	.byte		"TaskId"
	.byte		0
	.4byte		.L11744
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L615:
	.sleb128	11
	.byte		"EventMask"
	.byte		0
	.4byte		.L11798
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L616:
	.sleb128	11
	.byte		"EventMaskRef"
	.byte		0
	.4byte		.L11802
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11801:
.L11655:
	.sleb128	10
	.4byte		.L11594
	.uleb128	60
	.uleb128	1
	.4byte		.L11804-.L2
	.uleb128	8
.L613:
	.sleb128	11
	.byte		"EventMask"
	.byte		0
	.4byte		.L11798
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11804:
.L11653:
	.sleb128	10
	.4byte		.L11594
	.uleb128	60
	.uleb128	1
	.4byte		.L11805-.L2
	.uleb128	16
.L611:
	.sleb128	11
	.byte		"TaskId"
	.byte		0
	.4byte		.L11744
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L612:
	.sleb128	11
	.byte		"EventMask"
	.byte		0
	.4byte		.L11798
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11805:
.L11651:
	.sleb128	10
	.4byte		.L11594
	.uleb128	60
	.uleb128	1
	.4byte		.L11806-.L2
	.uleb128	8
.L609:
	.sleb128	11
	.byte		"TaskId"
	.byte		0
	.4byte		.L11744
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L610:
	.sleb128	11
	.byte		"TaskStateRef"
	.byte		0
	.4byte		.L11807
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11806:
.L11649:
	.sleb128	10
	.4byte		.L11594
	.uleb128	60
	.uleb128	1
	.4byte		.L11811-.L2
	.uleb128	4
.L608:
	.sleb128	11
	.byte		"TaskIdRef"
	.byte		0
	.4byte		.L11812
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11811:
.L11647:
	.sleb128	10
	.4byte		.L11594
	.uleb128	60
	.uleb128	1
	.4byte		.L11814-.L2
	.uleb128	4
.L607:
	.sleb128	11
	.byte		"TaskId"
	.byte		0
	.4byte		.L11744
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11814:
.L11645:
	.sleb128	10
	.4byte		.L11594
	.uleb128	60
	.uleb128	1
	.4byte		.L11815-.L2
	.uleb128	4
.L606:
	.sleb128	11
	.byte		"TaskId"
	.byte		0
	.4byte		.L11744
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11815:
.L11663:
	.sleb128	10
	.4byte		.L11594
	.uleb128	60
	.uleb128	1
	.4byte		.L11816-.L2
	.uleb128	4
.L605:
	.sleb128	11
	.byte		"ResourceId"
	.byte		0
	.4byte		.L11817
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11816:
.L11661:
	.sleb128	10
	.4byte		.L11594
	.uleb128	60
	.uleb128	1
	.4byte		.L11818-.L2
	.uleb128	4
.L604:
	.sleb128	11
	.byte		"ResourceId"
	.byte		0
	.4byte		.L11817
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11818:
.L11683:
	.sleb128	10
	.4byte		.L11594
	.uleb128	60
	.uleb128	1
	.4byte		.L11819-.L2
	.uleb128	4
.L603:
	.sleb128	11
	.byte		"AppMode"
	.byte		0
	.4byte		.L11572
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11819:
.L11643:
	.sleb128	10
	.4byte		.L11594
	.uleb128	60
	.uleb128	1
	.4byte		.L11820-.L2
	.uleb128	2
.L602:
	.sleb128	11
	.byte		"CoreID"
	.byte		0
	.4byte		.L11459
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11820:
.L11637:
	.sleb128	10
	.4byte		.L11594
	.uleb128	60
	.uleb128	1
	.4byte		.L11821-.L2
	.uleb128	2
.L601:
	.sleb128	11
	.byte		"NumberOfActivatedCores"
	.byte		0
	.4byte		.L11459
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11821:
.L11635:
	.sleb128	10
	.4byte		.L11594
	.uleb128	60
	.uleb128	1
	.4byte		.L11822-.L2
	.uleb128	1
.L600:
	.sleb128	11
	.byte		"Error"
	.byte		0
	.4byte		.L11439
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11822:
.L11633:
	.sleb128	10
	.4byte		.L11594
	.uleb128	60
	.uleb128	1
	.4byte		.L11823-.L2
	.uleb128	8
.L598:
	.sleb128	11
	.byte		"ShutdownType"
	.byte		0
	.4byte		.L11453
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L599:
	.sleb128	11
	.byte		"Error"
	.byte		0
	.4byte		.L11439
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11823:
.L11631:
	.sleb128	10
	.4byte		.L11594
	.uleb128	60
	.uleb128	1
	.4byte		.L11824-.L2
	.uleb128	1
.L597:
	.sleb128	11
	.byte		"Error"
	.byte		0
	.4byte		.L11439
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11824:
.L11641:
	.sleb128	10
	.4byte		.L11594
	.uleb128	60
	.uleb128	1
	.4byte		.L11825-.L2
	.uleb128	8
.L595:
	.sleb128	11
	.byte		"CoreID"
	.byte		0
	.4byte		.L11459
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L596:
	.sleb128	11
	.byte		"StatusRef"
	.byte		0
	.4byte		.L11826
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11825:
.L11639:
	.sleb128	10
	.4byte		.L11594
	.uleb128	60
	.uleb128	1
	.4byte		.L11827-.L2
	.uleb128	8
.L593:
	.sleb128	11
	.byte		"CoreID"
	.byte		0
	.4byte		.L11459
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L594:
	.sleb128	11
	.byte		"StatusRef"
	.byte		0
	.4byte		.L11826
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11827:
.L11629:
	.sleb128	10
	.4byte		.L11594
	.uleb128	60
	.uleb128	1
	.4byte		.L11828-.L2
	.uleb128	4
.L592:
	.sleb128	11
	.byte		"AppMode"
	.byte		0
	.4byte		.L11572
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11828:
.L11729:
	.sleb128	10
	.4byte		.L11829
	.uleb128	33
	.uleb128	14
	.4byte		.L11830-.L2
	.uleb128	24
.L585:
	.sleb128	11
	.byte		"Os_IOC_ChannelDyn"
	.byte		0
	.4byte		.L11831
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L586:
	.sleb128	11
	.byte		"Os_IOC_ChannelLength"
	.byte		0
	.4byte		.L11835
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L587:
	.sleb128	11
	.byte		"Os_IOC_ChannelBuffer"
	.byte		0
	.4byte		.L11836
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L588:
	.sleb128	11
	.byte		"Os_IOC_ChannelElementSize"
	.byte		0
	.4byte		.L11837
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L589:
	.sleb128	11
	.byte		"Os_IOC_DataCount"
	.byte		0
	.4byte		.L11838
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L590:
	.sleb128	11
	.byte		"Os_IOC_DataDescriptor"
	.byte		0
	.4byte		.L11840
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L591:
	.sleb128	11
	.byte		"Os_IOC_LockResourceAddress"
	.byte		0
	.4byte		.L11845
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L11830:
.L11844:
	.sleb128	10
	.4byte		.L11829
	.uleb128	33
	.uleb128	14
	.4byte		.L11848-.L2
	.uleb128	4
.L581:
	.sleb128	11
	.byte		"Os_IOC_DataLength"
	.byte		0
	.4byte		.L11849
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L582:
	.sleb128	11
	.byte		"Os_IOC_DataOffset"
	.byte		0
	.4byte		.L11851
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L11848:
.L11834:
	.sleb128	10
	.4byte		.L11829
	.uleb128	33
	.uleb128	14
	.4byte		.L11853-.L2
	.uleb128	6
.L578:
	.sleb128	11
	.byte		"Os_IOC_ChannelHead"
	.byte		0
	.4byte		.L11835
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L579:
	.sleb128	11
	.byte		"Os_IOC_ChannelMessageCount"
	.byte		0
	.4byte		.L11835
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L580:
	.sleb128	11
	.byte		"Os_IOC_Status"
	.byte		0
	.4byte		.L11439
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11853:
.L11473:
	.sleb128	10
	.4byte		.L11854
	.uleb128	34
	.uleb128	14
	.4byte		.L11855-.L2
	.uleb128	2
.L529:
	.sleb128	11
	.byte		"Os_HookID"
	.byte		0
	.4byte		.L11856
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11855:
.L11498:
	.sleb128	12
	.4byte		.L11857
	.uleb128	80
	.uleb128	13
	.4byte		.L11858-.L2
	.byte		"Os_ProcStatType_s"
	.byte		0
	.uleb128	80
.L511:
	.sleb128	11
	.byte		"Os_ProcId"
	.byte		0
	.4byte		.L11859
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L512:
	.sleb128	11
	.byte		"Os_ProcCoreID"
	.byte		0
	.4byte		.L11458
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L513:
	.sleb128	11
	.byte		"Os_ProcDyn"
	.byte		0
	.4byte		.L11860
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L514:
	.sleb128	11
	.byte		"Os_ProcStack"
	.byte		0
	.4byte		.L11864
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L515:
	.sleb128	11
	.byte		"Os_ProcKind"
	.byte		0
	.4byte		.L11869
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L516:
	.sleb128	11
	.byte		"Os_ProcEventRights"
	.byte		0
	.4byte		.L11872
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L517:
	.sleb128	11
	.byte		"Os_ProcPriority"
	.byte		0
	.4byte		.L11873
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L518:
	.sleb128	11
	.byte		"Os_ProcRunPriority"
	.byte		0
	.4byte		.L11873
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L519:
	.sleb128	11
	.byte		"Os_ProcMaxActivations"
	.byte		0
	.4byte		.L11874
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L520:
	.sleb128	11
	.byte		"Os_ProcContext"
	.byte		0
	.4byte		.L11876
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L521:
	.sleb128	11
	.byte		"Os_ProcOwnerApp"
	.byte		0
	.4byte		.L11413
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L522:
	.sleb128	11
	.byte		"Os_ProcAppAccess"
	.byte		0
	.4byte		.L11877
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L523:
	.sleb128	11
	.byte		"Os_ProcEntryPoint"
	.byte		0
	.4byte		.L11881
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L524:
	.sleb128	11
	.byte		"Os_ProcAutoStart"
	.byte		0
	.4byte		.L11877
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
.L525:
	.sleb128	11
	.byte		"Os_ProcResourceCount"
	.byte		0
	.4byte		.L11886
	.sleb128	2
	.byte		0x23
	.uleb128	64
	.byte		0x1
.L526:
	.sleb128	11
	.byte		"Os_ProcResourceStack"
	.byte		0
	.4byte		.L11887
	.sleb128	2
	.byte		0x23
	.uleb128	68
	.byte		0x1
.L527:
	.sleb128	11
	.byte		"Os_ProcQueueElements"
	.byte		0
	.4byte		.L11893
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.byte		0x1
.L528:
	.sleb128	11
	.byte		"Os_ProcIsrPlatformConfig"
	.byte		0
	.4byte		.L11894
	.sleb128	2
	.byte		0x23
	.uleb128	76
	.byte		0x1
	.sleb128	0
.L11858:
.L11868:
	.sleb128	12
	.4byte		.L11857
	.uleb128	80
	.uleb128	13
	.4byte		.L11895-.L2
	.byte		"Os_ProcStackStruct"
	.byte		0
	.uleb128	8
.L509:
	.sleb128	11
	.byte		"Os_ProcStackSize"
	.byte		0
	.4byte		.L11896
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L510:
	.sleb128	11
	.byte		"Os_ProcStackBase"
	.byte		0
	.4byte		.L11876
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11895:
.L11863:
	.sleb128	10
	.4byte		.L11857
	.uleb128	80
	.uleb128	13
	.4byte		.L11898-.L2
	.uleb128	56
.L496:
	.sleb128	11
	.byte		"Os_ProcState"
	.byte		0
	.4byte		.L11809
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L497:
	.sleb128	11
	.byte		"Os_ProcContextState"
	.byte		0
	.4byte		.L11899
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L498:
	.sleb128	11
	.byte		"Os_ProcEvents"
	.byte		0
	.4byte		.L11798
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L499:
	.sleb128	11
	.byte		"Os_ProcEventWaitingFor"
	.byte		0
	.4byte		.L11798
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L500:
	.sleb128	11
	.byte		"Os_ProcActivations"
	.byte		0
	.4byte		.L11875
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L501:
	.sleb128	11
	.byte		"Os_ProcResourcesAllocated"
	.byte		0
	.4byte		.L11817
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L502:
	.sleb128	11
	.byte		"Os_ProcEnabled"
	.byte		0
	.4byte		.L11440
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L503:
	.sleb128	11
	.byte		"Os_ProcCurrentApp"
	.byte		0
	.4byte		.L11414
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L504:
	.sleb128	11
	.byte		"Os_ProcSpinlock"
	.byte		0
	.4byte		.L11901
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L505:
	.sleb128	11
	.byte		"Os_ProcFreeQueueElements"
	.byte		0
	.4byte		.L11596
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L506:
	.sleb128	11
	.byte		"Os_ProcCurrentPriority"
	.byte		0
	.4byte		.L11591
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L507:
	.sleb128	11
	.byte		"Os_ProcTFCallCount"
	.byte		0
	.4byte		.L11440
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L508:
	.sleb128	11
	.byte		"Os_FatalErrorOccured"
	.byte		0
	.4byte		.L11439
	.sleb128	2
	.byte		0x23
	.uleb128	53
	.byte		0x1
	.sleb128	0
.L11898:
.L11903:
	.sleb128	12
	.4byte		.L11509
	.uleb128	52
	.uleb128	1
	.4byte		.L11904-.L2
	.byte		"Os_SpinlockStatType_s"
	.byte		0
	.uleb128	16
.L448:
	.sleb128	11
	.byte		"Os_SpinlockId"
	.byte		0
	.4byte		.L11905
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L449:
	.sleb128	11
	.byte		"Os_SpinlockChainId"
	.byte		0
	.4byte		.L11905
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L450:
	.sleb128	11
	.byte		"Os_SpinlockDyn"
	.byte		0
	.4byte		.L11906
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L451:
	.sleb128	11
	.byte		"Os_SpinlockAccess"
	.byte		0
	.4byte		.L11877
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L452:
	.sleb128	11
	.byte		"Os_SpinlockLockResourceAddress"
	.byte		0
	.4byte		.L11845
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L11904:
.L11909:
	.sleb128	10
	.4byte		.L11509
	.uleb128	52
	.uleb128	1
	.4byte		.L11910-.L2
	.uleb128	12
.L445:
	.sleb128	11
	.byte		"Os_SpinlockLockerProc"
	.byte		0
	.4byte		.L11496
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L446:
	.sleb128	11
	.byte		"Os_SpinlockSuperseded"
	.byte		0
	.4byte		.L11901
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L447:
	.sleb128	11
	.byte		"Os_ResourceDependency"
	.byte		0
	.4byte		.L11889
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11910:
.L11417:
	.sleb128	12
	.4byte		.L11509
	.uleb128	52
	.uleb128	1
	.4byte		.L11911-.L2
	.byte		"Os_ApplicationStatType_s"
	.byte		0
	.uleb128	48
.L433:
	.sleb128	11
	.byte		"Os_AppDyn"
	.byte		0
	.4byte		.L11912
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L434:
	.sleb128	11
	.byte		"Os_AppId"
	.byte		0
	.4byte		.L11916
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L435:
	.sleb128	11
	.byte		"Os_AppRestartTask"
	.byte		0
	.4byte		.L11859
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L436:
	.sleb128	11
	.byte		"Os_AppKind"
	.byte		0
	.4byte		.L11917
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L437:
	.sleb128	11
	.byte		"Os_AppShutdownHook"
	.byte		0
	.4byte		.L11920
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L438:
	.sleb128	11
	.byte		"Os_AppStartupHook"
	.byte		0
	.4byte		.L11925
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L439:
	.sleb128	11
	.byte		"Os_AppErrorHook"
	.byte		0
	.4byte		.L11930
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L440:
	.sleb128	11
	.byte		"Os_AppProcIDs"
	.byte		0
	.4byte		.L11935
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L441:
	.sleb128	11
	.byte		"Os_AppCounterIDs"
	.byte		0
	.4byte		.L11938
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L442:
	.sleb128	11
	.byte		"Os_AppAlarmIDs"
	.byte		0
	.4byte		.L11941
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L443:
	.sleb128	11
	.byte		"Os_AppSchTblIDs"
	.byte		0
	.4byte		.L11944
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L444:
	.sleb128	11
	.byte		"Os_CoreAssigment"
	.byte		0
	.4byte		.L11458
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
	.sleb128	0
.L11911:
.L11915:
	.sleb128	10
	.4byte		.L11509
	.uleb128	52
	.uleb128	1
	.4byte		.L11947-.L2
	.uleb128	1
.L432:
	.sleb128	11
	.byte		"Os_AppState"
	.byte		0
	.4byte		.L11796
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11947:
.L11892:
	.sleb128	10
	.4byte		.L11948
	.uleb128	32
	.uleb128	1
	.4byte		.L11949-.L2
	.uleb128	12
.L429:
	.sleb128	11
	.byte		"Os_ResourcePriority"
	.byte		0
	.4byte		.L11873
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L430:
	.sleb128	11
	.byte		"Os_ResourceAccessRights"
	.byte		0
	.4byte		.L11878
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L431:
	.sleb128	11
	.byte		"Os_ResourceDyn"
	.byte		0
	.4byte		.L11950
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11949:
.L11952:
	.sleb128	10
	.4byte		.L11948
	.uleb128	32
	.uleb128	1
	.4byte		.L11953-.L2
	.uleb128	4
.L428:
	.sleb128	11
	.byte		"Os_LockerProc"
	.byte		0
	.4byte		.L11496
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11953:
.L11581:
	.sleb128	10
	.4byte		.L11948
	.uleb128	32
	.uleb128	1
	.4byte		.L11954-.L2
	.uleb128	144
.L423:
	.sleb128	11
	.byte		"Os_Error"
	.byte		0
	.4byte		.L11955
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L424:
	.sleb128	11
	.byte		"Os_ExceptionStatus"
	.byte		0
	.4byte		.L11957
	.sleb128	2
	.byte		0x23
	.uleb128	120
	.byte		0x1
	.sleb128	0
.L11954:
.L11608:
	.sleb128	10
	.4byte		.L11948
	.uleb128	32
	.uleb128	1
	.4byte		.L11959-.L2
	.uleb128	24
.L417:
	.sleb128	11
	.byte		"Os_DisAllInt"
	.byte		0
	.4byte		.L11960
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L418:
	.sleb128	11
	.byte		"Os_EnAllInt"
	.byte		0
	.4byte		.L11960
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L419:
	.sleb128	11
	.byte		"Os_SusAllInt"
	.byte		0
	.4byte		.L11960
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L420:
	.sleb128	11
	.byte		"Os_ResAllInt"
	.byte		0
	.4byte		.L11960
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L421:
	.sleb128	11
	.byte		"Os_SusOsInt"
	.byte		0
	.4byte		.L11960
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L422:
	.sleb128	11
	.byte		"Os_ResOsInt"
	.byte		0
	.4byte		.L11960
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L11959:
.L11958:
	.sleb128	10
	.4byte		.L11948
	.uleb128	32
	.uleb128	1
	.4byte		.L11965-.L2
	.uleb128	20
.L412:
	.sleb128	11
	.byte		"Os_ExceptionType"
	.byte		0
	.4byte		.L11966
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L413:
	.sleb128	11
	.byte		"Os_ExceptionCause"
	.byte		0
	.4byte		.L11559
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L414:
	.sleb128	11
	.byte		"Os_ExceptionAuxiliaryCause"
	.byte		0
	.4byte		.L11559
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L415:
	.sleb128	11
	.byte		"Os_ExceptionExecutionAddress"
	.byte		0
	.4byte		.L11558
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L416:
	.sleb128	11
	.byte		"Os_ExceptionAccessAddress"
	.byte		0
	.4byte		.L11558
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11965:
.L11956:
	.sleb128	10
	.4byte		.L11968
	.uleb128	174
	.uleb128	1
	.4byte		.L11969-.L2
	.uleb128	120
.L409:
	.sleb128	11
	.byte		"Os_ShutdownError"
	.byte		0
	.4byte		.L11970
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L410:
	.sleb128	11
	.byte		"Os_ParameterError"
	.byte		0
	.4byte		.L11972
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L411:
	.sleb128	11
	.byte		"Os_ServiceError"
	.byte		0
	.4byte		.L11974
	.sleb128	2
	.byte		0x23
	.uleb128	112
	.byte		0x1
	.sleb128	0
.L11969:
.L11975:
	.sleb128	10
	.4byte		.L11968
	.uleb128	174
	.uleb128	1
	.4byte		.L11976-.L2
	.uleb128	8
.L406:
	.sleb128	11
	.byte		"Os_ServiceTrace"
	.byte		0
	.4byte		.L11977
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L407:
	.sleb128	11
	.byte		"Os_LastError"
	.byte		0
	.4byte		.L11439
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L408:
	.sleb128	11
	.byte		"Os_FaultyServiceId"
	.byte		0
	.4byte		.L11978
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11976:
.L11973:
	.sleb128	10
	.4byte		.L11968
	.uleb128	174
	.uleb128	1
	.4byte		.L11980-.L2
	.uleb128	104
.L381:
	.sleb128	11
	.byte		"Os_Err_TaskID"
	.byte		0
	.4byte		.L11744
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L382:
	.sleb128	11
	.byte		"Os_Err_ResID"
	.byte		0
	.4byte		.L11817
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L383:
	.sleb128	11
	.byte		"Os_Err_MaskType_Mask"
	.byte		0
	.4byte		.L11798
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L384:
	.sleb128	11
	.byte		"Os_Err_AlarmID"
	.byte		0
	.4byte		.L11756
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L385:
	.sleb128	11
	.byte		"Os_Err_TicksStart"
	.byte		0
	.4byte		.L11758
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L386:
	.sleb128	11
	.byte		"Os_Err_TicksCycle"
	.byte		0
	.4byte		.L11758
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L387:
	.sleb128	11
	.byte		"Os_Err_FuncIndex"
	.byte		0
	.4byte		.L11747
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L388:
	.sleb128	11
	.byte		"Os_Err_FuncParamRefType"
	.byte		0
	.4byte		.L11748
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L389:
	.sleb128	11
	.byte		"Os_Err_ApplID"
	.byte		0
	.4byte		.L11480
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L390:
	.sleb128	11
	.byte		"Os_Err_ApplStateRefType"
	.byte		0
	.4byte		.L11794
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L391:
	.sleb128	11
	.byte		"Os_Err_ObjType"
	.byte		0
	.4byte		.L11752
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L392:
	.sleb128	11
	.byte		"Os_Err_SchedID"
	.byte		0
	.4byte		.L11769
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L393:
	.sleb128	11
	.byte		"Os_Err_SchedID_Next"
	.byte		0
	.4byte		.L11769
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L394:
	.sleb128	11
	.byte		"Os_Err_CntID"
	.byte		0
	.4byte		.L11782
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L395:
	.sleb128	11
	.byte		"Os_Err_RestartType"
	.byte		0
	.4byte		.L11791
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
.L396:
	.sleb128	11
	.byte		"Os_Err_MaskRefType"
	.byte		0
	.4byte		.L11802
	.sleb128	2
	.byte		0x23
	.uleb128	64
	.byte		0x1
.L397:
	.sleb128	11
	.byte		"Os_Err_TaskStateRef"
	.byte		0
	.4byte		.L11807
	.sleb128	2
	.byte		0x23
	.uleb128	68
	.byte		0x1
.L398:
	.sleb128	11
	.byte		"Os_Err_TickRef_Ticks"
	.byte		0
	.4byte		.L11761
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.byte		0x1
.L399:
	.sleb128	11
	.byte		"Os_Err_AlarmBaseRefType_Info"
	.byte		0
	.4byte		.L11764
	.sleb128	2
	.byte		0x23
	.uleb128	76
	.byte		0x1
.L400:
	.sleb128	11
	.byte		"Os_Err_TaskIDRef"
	.byte		0
	.4byte		.L11812
	.sleb128	2
	.byte		0x23
	.uleb128	80
	.byte		0x1
.L401:
	.sleb128	11
	.byte		"Os_Err_TblStatusRefType"
	.byte		0
	.4byte		.L11774
	.sleb128	2
	.byte		0x23
	.uleb128	84
	.byte		0x1
.L402:
	.sleb128	11
	.byte		"Os_Err_TickRef_ElapsedTicks"
	.byte		0
	.4byte		.L11761
	.sleb128	2
	.byte		0x23
	.uleb128	88
	.byte		0x1
.L403:
	.sleb128	11
	.byte		"Os_Err_ObjObj"
	.byte		0
	.4byte		.L11617
	.sleb128	2
	.byte		0x23
	.uleb128	92
	.byte		0x1
.L404:
	.sleb128	11
	.byte		"Os_Err_SpinlockID"
	.byte		0
	.4byte		.L11737
	.sleb128	2
	.byte		0x23
	.uleb128	96
	.byte		0x1
.L405:
	.sleb128	11
	.byte		"Os_Err_TryToGetSpinlockRef"
	.byte		0
	.4byte		.L11981
	.sleb128	2
	.byte		0x23
	.uleb128	100
	.byte		0x1
	.sleb128	0
.L11980:
.L11971:
	.sleb128	10
	.4byte		.L11968
	.uleb128	174
	.uleb128	1
	.4byte		.L11982-.L2
	.uleb128	8
.L379:
	.sleb128	11
	.byte		"Os_ShutdownErrorCode"
	.byte		0
	.4byte		.L11439
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L380:
	.sleb128	11
	.byte		"Os_ShutdownInternalErrorCode"
	.byte		0
	.4byte		.L11983
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11982:
.L11767:
	.sleb128	10
	.4byte		.L11985
	.uleb128	50
	.uleb128	1
	.4byte		.L11986-.L2
	.uleb128	12
.L376:
	.sleb128	11
	.byte		"maxallowedvalue"
	.byte		0
	.4byte		.L11758
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L377:
	.sleb128	11
	.byte		"ticksperbase"
	.byte		0
	.4byte		.L11758
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L378:
	.sleb128	11
	.byte		"mincycle"
	.byte		0
	.4byte		.L11758
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11986:
.L11517:
	.sleb128	10
	.4byte		.L11985
	.uleb128	50
	.uleb128	1
	.4byte		.L11987-.L2
	.uleb128	8
.L374:
	.sleb128	11
	.byte		"Os_ObjStartId"
	.byte		0
	.4byte		.L11617
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L375:
	.sleb128	11
	.byte		"Os_ObjEndId"
	.byte		0
	.4byte		.L11617
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11987:
.L11604:
	.sleb128	10
	.4byte		.L11988
	.uleb128	87
	.uleb128	7
	.4byte		.L11989-.L2
	.uleb128	8
.L364:
	.sleb128	11
	.byte		"Os_IsrPltId"
	.byte		0
	.4byte		.L11990
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L365:
	.sleb128	11
	.byte		"Os_IsrPltLevel"
	.byte		0
	.4byte		.L11991
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11989:
	.section	.debug_info,,n
.L11590:
	.sleb128	14
	.4byte		.L11533
	.uleb128	69
	.uleb128	1
	.4byte		.L11993-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	15
	.byte		"Os_Return"
	.byte		0
	.sleb128	0
	.sleb128	15
	.byte		"Os_Load"
	.byte		0
	.sleb128	1
	.sleb128	15
	.byte		"Os_SaveAndLoad"
	.byte		0
	.sleb128	2
	.sleb128	15
	.byte		"Os_SaveAndIdle"
	.byte		0
	.sleb128	3
	.sleb128	15
	.byte		"Os_Idle"
	.byte		0
	.sleb128	4
	.sleb128	0
.L11993:
.L11614:
	.sleb128	14
	.4byte		.L11594
	.uleb128	612
	.uleb128	1
	.4byte		.L11994-.L2
	.uleb128	4
	.sleb128	15
	.byte		"OS_DISPATCH_JUSTSCHEDULE"
	.byte		0
	.sleb128	0
	.sleb128	15
	.byte		"OS_DISPATCH_API"
	.byte		0
	.sleb128	1
	.sleb128	15
	.byte		"OS_DISPATCH_INTERRUPT"
	.byte		0
	.sleb128	2
	.sleb128	15
	.byte		"OS_DISPATCH_APIRE"
	.byte		0
	.sleb128	3
	.sleb128	15
	.byte		"OS_DISPATCH_INTERNAL"
	.byte		0
	.sleb128	4
	.sleb128	15
	.byte		"OS_DISPATCH_INTERNALCROSS"
	.byte		0
	.sleb128	5
	.sleb128	15
	.byte		"OS_DISPATCH_INVALID"
	.byte		0
	.sleb128	6
	.sleb128	0
.L11994:
.L11621:
	.sleb128	14
	.4byte		.L11594
	.uleb128	60
	.uleb128	1
	.4byte		.L11995-.L2
	.uleb128	4
	.sleb128	15
	.byte		"OS_DISPATCH_SINGLE"
	.byte		0
	.sleb128	0
	.sleb128	15
	.byte		"OS_DISPATCH_MULTI"
	.byte		0
	.sleb128	1
	.sleb128	15
	.byte		"OS_DISPATCH_ALL"
	.byte		0
	.sleb128	2
	.sleb128	0
.L11995:
	.section	.debug_info,,n
.L11750:
	.sleb128	16
	.4byte		.L11829
	.uleb128	33
	.uleb128	14
	.4byte		.L11996-.L2
	.byte		"TrustedFunctionReturnValueType_e"
	.byte		0
	.uleb128	4
	.sleb128	15
	.byte		"TRUSTEDFUNCTION_RETURN_VALUE_NONE"
	.byte		0
	.sleb128	0
	.sleb128	15
	.byte		"TRUSTEDFUNCTION_RETURN_VALUE_SCHEDULE"
	.byte		0
	.sleb128	1
	.sleb128	0
.L11996:
.L11900:
	.sleb128	14
	.4byte		.L11857
	.uleb128	80
	.uleb128	13
	.4byte		.L11997-.L2
	.uleb128	4
	.sleb128	15
	.byte		"Os_ProcContextInvalid"
	.byte		0
	.sleb128	0
	.sleb128	15
	.byte		"Os_ProcContextActive"
	.byte		0
	.sleb128	1
	.sleb128	15
	.byte		"Os_ProcContextPrepared"
	.byte		0
	.sleb128	2
	.sleb128	0
.L11997:
.L11871:
	.sleb128	14
	.4byte		.L11857
	.uleb128	61
	.uleb128	1
	.4byte		.L11998-.L2
	.uleb128	4
	.sleb128	15
	.byte		"Os_Proc_Task"
	.byte		0
	.sleb128	0
	.sleb128	15
	.byte		"Os_Proc_ISR_CAT2"
	.byte		0
	.sleb128	1
	.sleb128	0
.L11998:
.L11919:
	.sleb128	14
	.4byte		.L11509
	.uleb128	52
	.uleb128	1
	.4byte		.L11999-.L2
	.uleb128	4
	.sleb128	15
	.byte		"OS_TRUSTED"
	.byte		0
	.sleb128	0
	.sleb128	15
	.byte		"OS_NONTRUSTED"
	.byte		0
	.sleb128	1
	.sleb128	0
.L11999:
.L11967:
	.sleb128	14
	.4byte		.L11948
	.uleb128	32
	.uleb128	1
	.4byte		.L12000-.L2
	.uleb128	4
	.sleb128	15
	.byte		"OS_EXCEPTION_NONE"
	.byte		0
	.sleb128	0
	.sleb128	15
	.byte		"OS_EXCEPTION_CRITICAL_INPUT"
	.byte		0
	.sleb128	1
	.sleb128	15
	.byte		"OS_EXCEPTION_MACHINE_CHECK"
	.byte		0
	.sleb128	2
	.sleb128	15
	.byte		"OS_EXCEPTION_DATA_STORAGE"
	.byte		0
	.sleb128	3
	.sleb128	15
	.byte		"OS_EXCEPTION_INSTRUCTION_STORAGE"
	.byte		0
	.sleb128	4
	.sleb128	15
	.byte		"OS_EXCEPTION_EXTERNAL_INPUT"
	.byte		0
	.sleb128	5
	.sleb128	15
	.byte		"OS_EXCEPTION_ALIGNMENT"
	.byte		0
	.sleb128	6
	.sleb128	15
	.byte		"OS_EXCEPTION_PROGRAM"
	.byte		0
	.sleb128	7
	.sleb128	15
	.byte		"OS_EXCEPTION_FLOATINGPOINT_UNAVAILABLE"
	.byte		0
	.sleb128	8
	.sleb128	15
	.byte		"OS_EXCEPTION_AUX_PROC_UNAVAILABLE"
	.byte		0
	.sleb128	9
	.sleb128	15
	.byte		"OS_EXCEPTION_DECREMENTER"
	.byte		0
	.sleb128	10
	.sleb128	15
	.byte		"OS_EXCEPTION_FIXED_INTERVAL_TIMER"
	.byte		0
	.sleb128	11
	.sleb128	15
	.byte		"OS_EXCEPTION_WATCHDOG"
	.byte		0
	.sleb128	12
	.sleb128	15
	.byte		"OS_EXCEPTION_DATA_TLB_ERROR"
	.byte		0
	.sleb128	13
	.sleb128	15
	.byte		"OS_EXCEPTION_INSTRUCTION_TLB_ERROR"
	.byte		0
	.sleb128	14
	.sleb128	15
	.byte		"OS_EXCEPTION_DEBUG"
	.byte		0
	.sleb128	15
	.sleb128	15
	.byte		"OS_EXCEPTION_SPE_UNAVAILABLE"
	.byte		0
	.sleb128	16
	.sleb128	15
	.byte		"OS_EXCEPTION_SPE_DATA"
	.byte		0
	.sleb128	17
	.sleb128	15
	.byte		"OS_EXCEPTION_SPE_ROUND"
	.byte		0
	.sleb128	18
	.sleb128	15
	.byte		"OS_EXCEPTION_COUNT"
	.byte		0
	.sleb128	19
	.sleb128	0
.L12000:
.L11984:
	.sleb128	14
	.4byte		.L11968
	.uleb128	174
	.uleb128	1
	.4byte		.L12001-.L2
	.uleb128	4
	.sleb128	15
	.byte		"E_OS_SYS_OK"
	.byte		0
	.sleb128	0
	.sleb128	15
	.byte		"E_OS_SYS_UNKNOWN_API"
	.byte		0
	.sleb128	1
	.sleb128	15
	.byte		"E_OS_SYS_INVALID_STARTSTATE"
	.byte		0
	.sleb128	2
	.sleb128	15
	.byte		"E_OS_SYS_INVALID_MASTERAPPMODE"
	.byte		0
	.sleb128	3
	.sleb128	15
	.byte		"E_OS_SYS_INVALID_SLAVEAPPMODE"
	.byte		0
	.sleb128	4
	.sleb128	15
	.byte		"E_OS_SYS_COUNTERACTION_OVERFLOW"
	.byte		0
	.sleb128	5
	.sleb128	15
	.byte		"E_OS_SYS_COUNTEREP_OVERFLOW"
	.byte		0
	.sleb128	6
	.sleb128	15
	.byte		"E_OS_SYS_INVALID_COUNTEROWNER"
	.byte		0
	.sleb128	7
	.sleb128	15
	.byte		"E_OS_SYS_WRONG_APIMAGIC"
	.byte		0
	.sleb128	8
	.sleb128	15
	.byte		"E_OS_SYS_WRONG_DISPATCHKIND1"
	.byte		0
	.sleb128	9
	.sleb128	15
	.byte		"E_OS_SYS_WRONG_DISPATCHKIND2"
	.byte		0
	.sleb128	10
	.sleb128	15
	.byte		"E_OS_SYS_WRONG_DISPATCHKIND3"
	.byte		0
	.sleb128	11
	.sleb128	15
	.byte		"E_OS_SYS_WRONG_DISPATCHKIND4"
	.byte		0
	.sleb128	12
	.sleb128	15
	.byte		"E_OS_SYS_WRONG_DISPATCHKIND5"
	.byte		0
	.sleb128	13
	.sleb128	15
	.byte		"E_OS_SYS_DISPATCHER_OVERFLOW"
	.byte		0
	.sleb128	14
	.sleb128	15
	.byte		"E_OS_SYS_INVALID_ALARMACTION"
	.byte		0
	.sleb128	15
	.sleb128	15
	.byte		"E_OS_SYS_INVALID_SCHTBLSTARTKIND"
	.byte		0
	.sleb128	16
	.sleb128	15
	.byte		"E_OS_SYS_INVALID_ISRPROCKIND"
	.byte		0
	.sleb128	17
	.sleb128	15
	.byte		"E_OS_SYS_WRONG_TPSTATE1"
	.byte		0
	.sleb128	18
	.sleb128	15
	.byte		"E_OS_SYS_WRONG_TPSTATE2"
	.byte		0
	.sleb128	19
	.sleb128	15
	.byte		"E_OS_SYS_WRONG_TPSTATE3"
	.byte		0
	.sleb128	20
	.sleb128	15
	.byte		"E_OS_SYS_WRONG_TPSTATE4"
	.byte		0
	.sleb128	21
	.sleb128	15
	.byte		"E_OS_SYS_WRONG_TPSTATE5"
	.byte		0
	.sleb128	22
	.sleb128	15
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION0"
	.byte		0
	.sleb128	23
	.sleb128	15
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION1"
	.byte		0
	.sleb128	24
	.sleb128	15
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION2"
	.byte		0
	.sleb128	25
	.sleb128	15
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION3"
	.byte		0
	.sleb128	26
	.sleb128	15
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION4"
	.byte		0
	.sleb128	27
	.sleb128	15
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION5"
	.byte		0
	.sleb128	28
	.sleb128	15
	.byte		"E_OS_SYS_INVALID_QUEUEHEAD"
	.byte		0
	.sleb128	29
	.sleb128	15
	.byte		"E_OS_SYS_INVALID_QUEUEINDEX"
	.byte		0
	.sleb128	30
	.sleb128	15
	.byte		"E_OS_SYS_INVALID_PROCSTATE"
	.byte		0
	.sleb128	31
	.sleb128	15
	.byte		"E_OS_SYS_LINKTIMEGUARD_ERROR"
	.byte		0
	.sleb128	32
	.sleb128	15
	.byte		"E_OS_SYS_WRONG_CORESTATE"
	.byte		0
	.sleb128	33
	.sleb128	15
	.byte		"E_OS_SYS_COUNTERID"
	.byte		0
	.sleb128	34
	.sleb128	15
	.byte		"E_OS_SYS_COUNTER_CANCELEDNOTFOUND"
	.byte		0
	.sleb128	35
	.sleb128	15
	.byte		"E_OS_SYS_COUNTER_ACTIONCHAINISBROKEN"
	.byte		0
	.sleb128	36
	.sleb128	15
	.byte		"E_OS_SYS_COUNTER_ACTIONCHAINISBROKEN2"
	.byte		0
	.sleb128	37
	.sleb128	15
	.byte		"E_OS_SYS_COUNTER_EPCHAINISBROKEN"
	.byte		0
	.sleb128	38
	.sleb128	15
	.byte		"E_OS_SYS_ALARMID"
	.byte		0
	.sleb128	39
	.sleb128	15
	.byte		"E_OS_SYS_RESUMEPROC_MAXACTIVATION"
	.byte		0
	.sleb128	40
	.sleb128	15
	.byte		"E_OS_SYS_QUEUEELEMENT_OVERFLOW"
	.byte		0
	.sleb128	41
	.sleb128	15
	.byte		"E_OS_SYS_SCHEDULER_ERROR"
	.byte		0
	.sleb128	42
	.sleb128	15
	.byte		"E_OS_SYS_EVENTSTAT"
	.byte		0
	.sleb128	43
	.sleb128	15
	.byte		"E_OS_SYS_TASKID"
	.byte		0
	.sleb128	44
	.sleb128	15
	.byte		"E_OS_SYS_TASKMISSINGEND_PROCKIND"
	.byte		0
	.sleb128	45
	.sleb128	15
	.byte		"E_OS_SYS_TASKMISSINGEND_COREID"
	.byte		0
	.sleb128	46
	.sleb128	15
	.byte		"E_OS_SYS_INVALID_TIMINGPROTECTIONSTATE"
	.byte		0
	.sleb128	47
	.sleb128	15
	.byte		"E_OS_SYS_INVALID_EXCEPTION"
	.byte		0
	.sleb128	48
	.sleb128	15
	.byte		"E_OS_SYS_INVALID_PLATFORM_TIMER"
	.byte		0
	.sleb128	49
	.sleb128	15
	.byte		"E_OS_SYS_KERNELSTACK_OVERFLOW"
	.byte		0
	.sleb128	50
	.sleb128	15
	.byte		"E_OS_SYS_INVALID_SECTION_SIZE"
	.byte		0
	.sleb128	51
	.sleb128	15
	.byte		"E_OS_SYS_MEMPROT_INVALID_APP"
	.byte		0
	.sleb128	52
	.sleb128	15
	.byte		"E_OS_SYS_CALLEVEL"
	.byte		0
	.sleb128	53
	.sleb128	15
	.byte		"E_OS_SYS_TIMER_RUNNING"
	.byte		0
	.sleb128	54
	.sleb128	15
	.byte		"E_OS_SYS_TIMER_STOPPED"
	.byte		0
	.sleb128	55
	.sleb128	15
	.byte		"E_OS_SYS_TIMER_TOO_MUCH_JITTER"
	.byte		0
	.sleb128	56
	.sleb128	15
	.byte		"E_OS_SYS_SSG_NESTING"
	.byte		0
	.sleb128	57
	.sleb128	15
	.byte		"E_OS_SYS_SSG_OVERFLOW"
	.byte		0
	.sleb128	58
	.sleb128	15
	.byte		"E_OS_SYS_CORELOCK_LOCKED"
	.byte		0
	.sleb128	59
	.sleb128	15
	.byte		"E_OS_SYS_CORELOCK_UNLOCKED"
	.byte		0
	.sleb128	60
	.sleb128	15
	.byte		"E_OS_SYS_TFPROCAPPINCONSISTENCY"
	.byte		0
	.sleb128	61
	.sleb128	15
	.byte		"E_OS_SYS_PROCENABLEDALREADY"
	.byte		0
	.sleb128	62
	.sleb128	0
.L12001:
.L11979:
	.sleb128	14
	.4byte		.L11968
	.uleb128	86
	.uleb128	1
	.4byte		.L12002-.L2
	.uleb128	4
	.sleb128	15
	.byte		"OSServiceId_GetApplicationID"
	.byte		0
	.sleb128	0
	.sleb128	15
	.byte		"OSServiceId_GetISRID"
	.byte		0
	.sleb128	1
	.sleb128	15
	.byte		"OSServiceId_CallTrustedFunction"
	.byte		0
	.sleb128	2
	.sleb128	15
	.byte		"OSServiceId_CheckISRMemoryAccess"
	.byte		0
	.sleb128	3
	.sleb128	15
	.byte		"OSServiceId_CheckTaskMemoryAccess"
	.byte		0
	.sleb128	4
	.sleb128	15
	.byte		"OSServiceId_CheckObjectAccess"
	.byte		0
	.sleb128	5
	.sleb128	15
	.byte		"OSServiceId_CheckObjectOwnership"
	.byte		0
	.sleb128	6
	.sleb128	15
	.byte		"OSServiceId_StartScheduleTableRel"
	.byte		0
	.sleb128	7
	.sleb128	15
	.byte		"OSServiceId_StartScheduleTableAbs"
	.byte		0
	.sleb128	8
	.sleb128	15
	.byte		"OSServiceId_StopScheduleTable"
	.byte		0
	.sleb128	9
	.sleb128	15
	.byte		"OSServiceId_NextScheduleTable"
	.byte		0
	.sleb128	10
	.sleb128	15
	.byte		"OSServiceId_StartScheduleTableSynchron"
	.byte		0
	.sleb128	11
	.sleb128	15
	.byte		"OSServiceId_SyncScheduleTable"
	.byte		0
	.sleb128	12
	.sleb128	15
	.byte		"OSServiceId_SetScheduleTableAsync"
	.byte		0
	.sleb128	13
	.sleb128	15
	.byte		"OSServiceId_GetScheduleTableStatus"
	.byte		0
	.sleb128	14
	.sleb128	15
	.byte		"OSServiceId_IncrementCounter"
	.byte		0
	.sleb128	15
	.sleb128	15
	.byte		"OSServiceId_GetCounterValue"
	.byte		0
	.sleb128	16
	.sleb128	15
	.byte		"OSServiceId_GetElapsedValue"
	.byte		0
	.sleb128	17
	.sleb128	15
	.byte		"OSServiceId_TerminateApplication"
	.byte		0
	.sleb128	18
	.sleb128	15
	.byte		"OSServiceId_AllowAcess"
	.byte		0
	.sleb128	19
	.sleb128	15
	.byte		"OSServiceId_GetApplicationState"
	.byte		0
	.sleb128	20
	.sleb128	15
	.byte		"OSServiceId_GetNumberOfActivatedCores"
	.byte		0
	.sleb128	21
	.sleb128	15
	.byte		"OSServiceId_GetCoreID"
	.byte		0
	.sleb128	22
	.sleb128	15
	.byte		"OSServiceId_StartCore"
	.byte		0
	.sleb128	23
	.sleb128	15
	.byte		"OSServiceId_StartNonAutosarCore"
	.byte		0
	.sleb128	24
	.sleb128	15
	.byte		"OSServiceId_GetSpinlock"
	.byte		0
	.sleb128	25
	.sleb128	15
	.byte		"OSServiceId_ReleaseSpinlock"
	.byte		0
	.sleb128	26
	.sleb128	15
	.byte		"OSServiceId_TryToGetSpinlock"
	.byte		0
	.sleb128	27
	.sleb128	15
	.byte		"OSServiceId_ShutdownAllCores"
	.byte		0
	.sleb128	28
	.sleb128	15
	.byte		"OSServiceId_ControlIdle"
	.byte		0
	.sleb128	29
	.sleb128	15
	.byte		"OSServiceId_IOC_Send"
	.byte		0
	.sleb128	30
	.sleb128	15
	.byte		"OSServiceId_IOC_Write"
	.byte		0
	.sleb128	31
	.sleb128	15
	.byte		"OSServiceId_IOC_SendGroup"
	.byte		0
	.sleb128	32
	.sleb128	15
	.byte		"OSServiceId_IOC_WriteFGroup"
	.byte		0
	.sleb128	33
	.sleb128	15
	.byte		"OSServiceId_IOC_Receive"
	.byte		0
	.sleb128	34
	.sleb128	15
	.byte		"OSServiceId_IOC_Read"
	.byte		0
	.sleb128	35
	.sleb128	15
	.byte		"OSServiceId_IOC_ReceiveGroup"
	.byte		0
	.sleb128	36
	.sleb128	15
	.byte		"OSServiceId_IOC_ReadGroup"
	.byte		0
	.sleb128	37
	.sleb128	15
	.byte		"OSServiceId_IOC_EmptyQueue"
	.byte		0
	.sleb128	38
	.sleb128	15
	.byte		"OSServiceId_IOC_ReceiverPullCB"
	.byte		0
	.sleb128	39
	.sleb128	15
	.byte		"OSServiceId_ActivateTask"
	.byte		0
	.sleb128	128
	.sleb128	15
	.byte		"OSServiceId_TerminateTask"
	.byte		0
	.sleb128	129
	.sleb128	15
	.byte		"OSServiceId_ChainTask"
	.byte		0
	.sleb128	130
	.sleb128	15
	.byte		"OSServiceId_Schedule"
	.byte		0
	.sleb128	131
	.sleb128	15
	.byte		"OSServiceId_GetTaskID"
	.byte		0
	.sleb128	132
	.sleb128	15
	.byte		"OSServiceId_GetTaskState"
	.byte		0
	.sleb128	133
	.sleb128	15
	.byte		"OSServiceId_EnableAllInterrupts"
	.byte		0
	.sleb128	134
	.sleb128	15
	.byte		"OSServiceId_DisableAllInterrupts"
	.byte		0
	.sleb128	135
	.sleb128	15
	.byte		"OSServiceId_ResumeAllInterrupts"
	.byte		0
	.sleb128	136
	.sleb128	15
	.byte		"OSServiceId_SuspendAllInterrupts"
	.byte		0
	.sleb128	137
	.sleb128	15
	.byte		"OSServiceId_ResumeOSInterrupts"
	.byte		0
	.sleb128	138
	.sleb128	15
	.byte		"OSServiceId_SuspendOSInterrupts"
	.byte		0
	.sleb128	139
	.sleb128	15
	.byte		"OSServiceId_GetResource"
	.byte		0
	.sleb128	140
	.sleb128	15
	.byte		"OSServiceId_ReleaseResource"
	.byte		0
	.sleb128	141
	.sleb128	15
	.byte		"OSServiceId_SetEvent"
	.byte		0
	.sleb128	142
	.sleb128	15
	.byte		"OSServiceId_ClearEvent"
	.byte		0
	.sleb128	143
	.sleb128	15
	.byte		"OSServiceId_GetEvent"
	.byte		0
	.sleb128	144
	.sleb128	15
	.byte		"OSServiceId_WaitEvent"
	.byte		0
	.sleb128	145
	.sleb128	15
	.byte		"OSServiceId_GetAlarmBase"
	.byte		0
	.sleb128	146
	.sleb128	15
	.byte		"OSServiceId_GetAlarm"
	.byte		0
	.sleb128	147
	.sleb128	15
	.byte		"OSServiceId_SetRelAlarm"
	.byte		0
	.sleb128	148
	.sleb128	15
	.byte		"OSServiceId_SetAbsAlarm"
	.byte		0
	.sleb128	149
	.sleb128	15
	.byte		"OSServiceId_CancelAlarm"
	.byte		0
	.sleb128	150
	.sleb128	15
	.byte		"OSServiceId_GetActiveApplicationMode"
	.byte		0
	.sleb128	151
	.sleb128	15
	.byte		"OSServiceId_StartOS"
	.byte		0
	.sleb128	152
	.sleb128	15
	.byte		"OSServiceId_ShutdownOS"
	.byte		0
	.sleb128	153
	.sleb128	15
	.byte		"OSServiceId_INVALIDSERVICE"
	.byte		0
	.sleb128	255
	.sleb128	0
.L12002:
.L11740:
	.sleb128	14
	.4byte		.L12003
	.uleb128	43
	.uleb128	1
	.4byte		.L12004-.L2
	.uleb128	4
	.sleb128	15
	.byte		"TRYTOGETSPINLOCK_SUCCESS"
	.byte		0
	.sleb128	0
	.sleb128	15
	.byte		"TRYTOGETSPINLOCK_NOSUCCESS"
	.byte		0
	.sleb128	1
	.sleb128	0
.L12004:
.L11810:
	.sleb128	14
	.4byte		.L12005
	.uleb128	37
	.uleb128	1
	.4byte		.L12006-.L2
	.uleb128	4
	.sleb128	15
	.byte		"RUNNING"
	.byte		0
	.sleb128	0
	.sleb128	15
	.byte		"WAITING"
	.byte		0
	.sleb128	1
	.sleb128	15
	.byte		"READY"
	.byte		0
	.sleb128	2
	.sleb128	15
	.byte		"SUSPENDED"
	.byte		0
	.sleb128	3
	.sleb128	0
.L12006:
.L11777:
	.sleb128	14
	.4byte		.L12007
	.uleb128	40
	.uleb128	1
	.4byte		.L12008-.L2
	.uleb128	4
	.sleb128	15
	.byte		"SCHEDULETABLE_STOPPED"
	.byte		0
	.sleb128	0
	.sleb128	15
	.byte		"SCHEDULETABLE_NEXT"
	.byte		0
	.sleb128	1
	.sleb128	15
	.byte		"SCHEDULETABLE_WAITING"
	.byte		0
	.sleb128	2
	.sleb128	15
	.byte		"SCHEDULETABLE_RUNNING"
	.byte		0
	.sleb128	3
	.sleb128	15
	.byte		"SCHEDULETABLE_RUNNING_AND_SYNCHRONOUS"
	.byte		0
	.sleb128	4
	.sleb128	0
.L12008:
.L11753:
	.sleb128	14
	.4byte		.L12009
	.uleb128	47
	.uleb128	1
	.4byte		.L12010-.L2
	.uleb128	4
	.sleb128	15
	.byte		"OBJECT_TASK"
	.byte		0
	.sleb128	0
	.sleb128	15
	.byte		"OBJECT_ISR"
	.byte		0
	.sleb128	1
	.sleb128	15
	.byte		"OBJECT_ALARM"
	.byte		0
	.sleb128	2
	.sleb128	15
	.byte		"OBJECT_RESOURCE"
	.byte		0
	.sleb128	3
	.sleb128	15
	.byte		"OBJECT_COUNTER"
	.byte		0
	.sleb128	4
	.sleb128	15
	.byte		"OBJECT_SCHEDULETABLE"
	.byte		0
	.sleb128	5
	.sleb128	0
.L12010:
.L11454:
	.sleb128	14
	.4byte		.L11985
	.uleb128	42
	.uleb128	13
	.4byte		.L12011-.L2
	.uleb128	4
	.sleb128	15
	.byte		"OS_SHUTDOWN_INDIVIDUAL"
	.byte		0
	.sleb128	0
	.sleb128	15
	.byte		"OS_SHUTDOWN_SYNCHRONIZED"
	.byte		0
	.sleb128	1
	.sleb128	0
.L12011:
.L11576:
	.sleb128	14
	.4byte		.L12012
	.uleb128	83
	.uleb128	14
	.4byte		.L12013-.L2
	.uleb128	4
	.sleb128	15
	.byte		"IDLE_NO_HALT"
	.byte		0
	.sleb128	0
	.sleb128	15
	.byte		"IDLE_WAIT"
	.byte		0
	.sleb128	1
	.sleb128	15
	.byte		"IDLE_NUMBEROFOPTIONS"
	.byte		0
	.sleb128	2
	.sleb128	0
.L12013:
	.section	.debug_info,,n
.L11416:
	.sleb128	17
	.byte		"Os_ApplicationStatType"
	.byte		0
	.4byte		.L11417
	.section	.debug_info,,n
.L11415:
	.sleb128	18
	.4byte		.L11416
	.section	.debug_info,,n
.L11414:
	.sleb128	19
	.4byte		.L11415
.L11413:
	.sleb128	18
	.4byte		.L11414
.L11422:
	.sleb128	17
	.byte		"Os_Core_DynInitType"
	.byte		0
	.4byte		.L11423
.L11421:
	.sleb128	19
	.4byte		.L11422
.L11420:
	.sleb128	18
	.4byte		.L11421
	.section	.debug_info,,n
.L11441:
	.sleb128	20
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L11440:
	.sleb128	17
	.byte		"uint8"
	.byte		0
	.4byte		.L11441
.L11439:
	.sleb128	17
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L11440
.L11444:
	.sleb128	17
	.byte		"Os_APICallType"
	.byte		0
	.4byte		.L11445
.L11453:
	.sleb128	17
	.byte		"Os_CoreShutdownType"
	.byte		0
	.4byte		.L11454
.L11452:
	.sleb128	18
	.4byte		.L11453
.L11461:
	.sleb128	20
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L11460:
	.sleb128	17
	.byte		"uint16"
	.byte		0
	.4byte		.L11461
.L11459:
	.sleb128	17
	.byte		"CoreIdType"
	.byte		0
	.4byte		.L11460
.L11458:
	.sleb128	18
	.4byte		.L11459
.L11466:
	.sleb128	17
	.byte		"Os_Core_DynInitSharedType"
	.byte		0
	.4byte		.L11467
.L11465:
	.sleb128	19
	.4byte		.L11466
.L11464:
	.sleb128	18
	.4byte		.L11465
.L11472:
	.sleb128	17
	.byte		"Os_HooksDynType"
	.byte		0
	.4byte		.L11473
.L11471:
	.sleb128	19
	.4byte		.L11472
.L11470:
	.sleb128	18
	.4byte		.L11471
.L11480:
	.sleb128	17
	.byte		"ApplicationType"
	.byte		0
	.4byte		.L11440
.L11493:
	.sleb128	19
	.4byte		.L11445
.L11497:
	.sleb128	18
	.4byte		.L11498
.L11496:
	.sleb128	19
	.4byte		.L11497
.L11495:
	.sleb128	18
	.4byte		.L11496
	.section	.debug_info,,n
.L11510:
	.sleb128	21
	.4byte		.L11511-.L2
	.4byte		.L11415
	.section	.debug_info,,n
	.sleb128	22
	.sleb128	0
.L11511:
.L11516:
	.sleb128	17
	.byte		"Os_ObjectRangeType"
	.byte		0
	.4byte		.L11517
.L11515:
	.sleb128	18
	.4byte		.L11516
.L11513:
	.sleb128	21
	.4byte		.L11514-.L2
	.4byte		.L11515
	.section	.debug_info,,n
	.sleb128	23
	.uleb128	1
	.sleb128	0
.L11514:
.L11523:
	.sleb128	17
	.byte		"Os_Core_StatType"
	.byte		0
	.4byte		.L11524
.L11522:
	.sleb128	18
	.4byte		.L11523
.L11520:
	.sleb128	21
	.4byte		.L11521-.L2
	.4byte		.L11522
	.sleb128	23
	.uleb128	1
	.sleb128	0
.L11521:
.L11528:
	.sleb128	17
	.byte		"Os_Core_DynSharedType"
	.byte		0
	.4byte		.L11529
.L11526:
	.sleb128	21
	.4byte		.L11527-.L2
	.4byte		.L11528
	.sleb128	23
	.uleb128	1
	.sleb128	0
.L11527:
.L11531:
	.sleb128	21
	.4byte		.L11532-.L2
	.4byte		.L11466
	.sleb128	23
	.uleb128	1
	.sleb128	0
.L11532:
.L11537:
	.sleb128	17
	.byte		"Os_Core_DynType"
	.byte		0
	.4byte		.L11538
.L11536:
	.sleb128	19
	.4byte		.L11537
.L11535:
	.sleb128	18
	.4byte		.L11536
.L11541:
	.sleb128	17
	.byte		"Os_DispatchElementType"
	.byte		0
	.4byte		.L11542
.L11540:
	.sleb128	19
	.4byte		.L11541
.L11539:
	.sleb128	18
	.4byte		.L11540
	.section	.debug_info,,n
.L11546:
	.sleb128	24
	.4byte		.L11547-.L2
	.byte		0x1
.L11551:
	.sleb128	17
	.byte		"Os_ProcStatType"
	.byte		0
	.4byte		.L11498
.L11550:
	.sleb128	18
	.4byte		.L11551
.L11549:
	.sleb128	19
	.4byte		.L11550
.L11548:
	.sleb128	18
	.4byte		.L11549
	.section	.debug_info,,n
	.sleb128	25
	.4byte		.L11548
	.sleb128	0
.L11547:
.L11545:
	.sleb128	19
	.4byte		.L11546
.L11544:
	.sleb128	17
	.byte		"Os_PrepareContextFunctionType"
	.byte		0
	.4byte		.L11545
.L11543:
	.sleb128	18
	.4byte		.L11544
.L11560:
	.sleb128	20
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L11559:
	.sleb128	17
	.byte		"uint32"
	.byte		0
	.4byte		.L11560
.L11558:
	.sleb128	17
	.byte		"Os_StackType"
	.byte		0
	.4byte		.L11559
.L11557:
	.sleb128	19
	.4byte		.L11558
	.section	.debug_info,,n
.L11555:
	.sleb128	26
	.4byte		.L11556-.L2
	.4byte		.L11557
	.byte		0x1
	.sleb128	25
	.4byte		.L11549
	.sleb128	0
.L11556:
.L11554:
	.sleb128	19
	.4byte		.L11555
.L11553:
	.sleb128	17
	.byte		"Os_GetStackPointerFunctionType"
	.byte		0
	.4byte		.L11554
.L11552:
	.sleb128	18
	.4byte		.L11553
.L11562:
	.sleb128	17
	.byte		"Os_IsrDynInitType"
	.byte		0
	.4byte		.L11563
.L11564:
	.sleb128	17
	.byte		"Os_SchedulerDynInitType"
	.byte		0
	.4byte		.L11565
.L11569:
	.sleb128	24
	.4byte		.L11570-.L2
	.byte		0x1
.L11572:
	.sleb128	17
	.byte		"AppModeType"
	.byte		0
	.4byte		.L11559
.L11571:
	.sleb128	18
	.4byte		.L11572
	.sleb128	25
	.4byte		.L11571
	.sleb128	0
.L11570:
.L11568:
	.sleb128	19
	.4byte		.L11569
.L11567:
	.sleb128	17
	.byte		"Os_StartOsFuncType"
	.byte		0
	.4byte		.L11568
.L11573:
	.sleb128	17
	.byte		"Os_CoreStateType"
	.byte		0
	.4byte		.L11559
.L11574:
	.sleb128	17
	.byte		"Os_CoreStartedType"
	.byte		0
	.4byte		.L11559
.L11575:
	.sleb128	17
	.byte		"IdleModeType"
	.byte		0
	.4byte		.L11576
.L11578:
	.sleb128	17
	.byte		"Os_DispatcherType"
	.byte		0
	.4byte		.L11579
.L11580:
	.sleb128	17
	.byte		"Os_PublicData_NoInitType"
	.byte		0
	.4byte		.L11581
.L11583:
	.sleb128	17
	.byte		"Os_SchedulerDynType"
	.byte		0
	.4byte		.L11584
.L11585:
	.sleb128	17
	.byte		"Os_IsrDynType"
	.byte		0
	.4byte		.L11586
.L11589:
	.sleb128	17
	.byte		"Os_ScheduleType"
	.byte		0
	.4byte		.L11590
.L11591:
	.sleb128	17
	.byte		"Os_PriorityType"
	.byte		0
	.4byte		.L11559
.L11592:
	.sleb128	17
	.byte		"Os_SchedulerQueueElementType"
	.byte		0
	.4byte		.L11593
.L11596:
	.sleb128	19
	.4byte		.L11593
.L11598:
	.sleb128	17
	.byte		"Os_IsrRegister_t"
	.byte		0
	.4byte		.L11559
.L11599:
	.sleb128	17
	.byte		"boolean"
	.byte		0
	.4byte		.L11441
.L11603:
	.sleb128	17
	.byte		"Os_IsrPlatformConfigType"
	.byte		0
	.4byte		.L11604
.L11602:
	.sleb128	18
	.4byte		.L11603
.L11601:
	.sleb128	19
	.4byte		.L11602
.L11607:
	.sleb128	17
	.byte		"Os_IsrApiTable"
	.byte		0
	.4byte		.L11608
.L11606:
	.sleb128	18
	.4byte		.L11607
.L11605:
	.sleb128	19
	.4byte		.L11606
.L11609:
	.sleb128	21
	.4byte		.L11610-.L2
	.4byte		.L11559
	.sleb128	23
	.uleb128	7
	.sleb128	0
.L11610:
.L11613:
	.sleb128	17
	.byte		"Os_DispatchKindType"
	.byte		0
	.4byte		.L11614
.L11617:
	.sleb128	17
	.byte		"Os_ObjectType"
	.byte		0
	.4byte		.L11559
.L11616:
	.sleb128	17
	.byte		"ProcType"
	.byte		0
	.4byte		.L11617
.L11615:
	.sleb128	17
	.byte		"ISRType"
	.byte		0
	.4byte		.L11616
.L11618:
	.sleb128	19
	.4byte		.L11444
.L11620:
	.sleb128	17
	.byte		"Os_API_LockType"
	.byte		0
	.4byte		.L11621
.L11624:
	.sleb128	24
	.4byte		.L11625-.L2
	.byte		0x1
	.sleb128	25
	.4byte		.L11493
	.sleb128	25
	.4byte		.L11495
	.sleb128	0
.L11625:
.L11623:
	.sleb128	19
	.4byte		.L11624
.L11622:
	.sleb128	17
	.byte		"Os_API_Func_Type"
	.byte		0
	.4byte		.L11623
.L11628:
	.sleb128	17
	.byte		"Os_API_StartOsType"
	.byte		0
	.4byte		.L11629
.L11630:
	.sleb128	17
	.byte		"Os_API_ShutdownOsType"
	.byte		0
	.4byte		.L11631
.L11632:
	.sleb128	17
	.byte		"Os_API_ShutdownOsInternalType"
	.byte		0
	.4byte		.L11633
.L11634:
	.sleb128	17
	.byte		"Os_API_ShutdownAllCoresType"
	.byte		0
	.4byte		.L11635
.L11636:
	.sleb128	17
	.byte		"Os_API_GetNumberOfActivatedCoresType"
	.byte		0
	.4byte		.L11637
.L11638:
	.sleb128	17
	.byte		"Os_API_ApiStartCoreType"
	.byte		0
	.4byte		.L11639
.L11640:
	.sleb128	17
	.byte		"Os_API_StartNonAutosarCoreType"
	.byte		0
	.4byte		.L11641
.L11642:
	.sleb128	17
	.byte		"Os_API_GetCoreIDType"
	.byte		0
	.4byte		.L11643
.L11644:
	.sleb128	17
	.byte		"Os_API_ActivateTaskType"
	.byte		0
	.4byte		.L11645
.L11646:
	.sleb128	17
	.byte		"Os_API_ChainTaskType"
	.byte		0
	.4byte		.L11647
.L11648:
	.sleb128	17
	.byte		"Os_API_GetTaskIDType"
	.byte		0
	.4byte		.L11649
.L11650:
	.sleb128	17
	.byte		"Os_API_GetTaskStateType"
	.byte		0
	.4byte		.L11651
.L11652:
	.sleb128	17
	.byte		"Os_API_SetEventType"
	.byte		0
	.4byte		.L11653
.L11654:
	.sleb128	17
	.byte		"Os_API_ClearEventType"
	.byte		0
	.4byte		.L11655
.L11656:
	.sleb128	17
	.byte		"Os_API_GetEventType"
	.byte		0
	.4byte		.L11657
.L11658:
	.sleb128	17
	.byte		"Os_API_WaitEventType"
	.byte		0
	.4byte		.L11659
.L11660:
	.sleb128	17
	.byte		"Os_API_GetResourceType"
	.byte		0
	.4byte		.L11661
.L11662:
	.sleb128	17
	.byte		"Os_API_ReleaseResourceType"
	.byte		0
	.4byte		.L11663
.L11664:
	.sleb128	17
	.byte		"Os_API_GetAlarmBaseType"
	.byte		0
	.4byte		.L11665
.L11666:
	.sleb128	17
	.byte		"Os_API_GetAlarmType"
	.byte		0
	.4byte		.L11667
.L11668:
	.sleb128	17
	.byte		"Os_API_SetRelAlarmType"
	.byte		0
	.4byte		.L11669
.L11670:
	.sleb128	17
	.byte		"Os_API_SetAbsAlarmType"
	.byte		0
	.4byte		.L11671
.L11672:
	.sleb128	17
	.byte		"Os_API_CancelAlarmType"
	.byte		0
	.4byte		.L11673
.L11674:
	.sleb128	17
	.byte		"Os_API_GetApplicationStateType"
	.byte		0
	.4byte		.L11675
.L11676:
	.sleb128	17
	.byte		"Os_API_TerminateApplicationType"
	.byte		0
	.4byte		.L11677
.L11678:
	.sleb128	17
	.byte		"Os_API_GetApplicationIDType"
	.byte		0
	.4byte		.L11679
.L11680:
	.sleb128	17
	.byte		"Os_API_GetISRIDType"
	.byte		0
	.4byte		.L11681
.L11682:
	.sleb128	17
	.byte		"Os_API_GetActiveApplicationModeType"
	.byte		0
	.4byte		.L11683
.L11684:
	.sleb128	17
	.byte		"Os_API_IncrementCounterType"
	.byte		0
	.4byte		.L11685
.L11686:
	.sleb128	17
	.byte		"Os_API_GetCounterValueType"
	.byte		0
	.4byte		.L11687
.L11688:
	.sleb128	17
	.byte		"Os_API_GetElapsedValueType"
	.byte		0
	.4byte		.L11689
.L11690:
	.sleb128	17
	.byte		"Os_API_StartScheduleTableAbsType"
	.byte		0
	.4byte		.L11691
.L11692:
	.sleb128	17
	.byte		"Os_API_StartScheduleTableRelType"
	.byte		0
	.4byte		.L11693
.L11694:
	.sleb128	17
	.byte		"Os_API_StopScheduleTableType"
	.byte		0
	.4byte		.L11695
.L11696:
	.sleb128	17
	.byte		"Os_API_GetScheduleTableStatusType"
	.byte		0
	.4byte		.L11697
.L11698:
	.sleb128	17
	.byte		"Os_API_NextScheduleTableType"
	.byte		0
	.4byte		.L11699
.L11700:
	.sleb128	17
	.byte		"Os_API_StartScheduleTableSynchronType"
	.byte		0
	.4byte		.L11701
.L11702:
	.sleb128	17
	.byte		"Os_API_SyncScheduleTableType"
	.byte		0
	.4byte		.L11703
.L11704:
	.sleb128	17
	.byte		"Os_API_SetScheduleTableAsyncType"
	.byte		0
	.4byte		.L11705
.L11706:
	.sleb128	17
	.byte		"Os_API_CheckObjectAccessType"
	.byte		0
	.4byte		.L11707
.L11708:
	.sleb128	17
	.byte		"Os_API_CheckObjectOwnershipType"
	.byte		0
	.4byte		.L11709
.L11710:
	.sleb128	17
	.byte		"Os_API_CallTrustedFunctionType"
	.byte		0
	.4byte		.L11711
.L11712:
	.sleb128	17
	.byte		"Os_API_StackUsageType"
	.byte		0
	.4byte		.L11713
.L11714:
	.sleb128	17
	.byte		"Os_API_GetSpinlockType"
	.byte		0
	.4byte		.L11715
.L11716:
	.sleb128	17
	.byte		"Os_API_ReleaseSpinlockType"
	.byte		0
	.4byte		.L11717
.L11718:
	.sleb128	17
	.byte		"Os_API_TryToGetSpinlockType"
	.byte		0
	.4byte		.L11719
.L11720:
	.sleb128	17
	.byte		"Os_API_IocTransferType"
	.byte		0
	.4byte		.L11721
.L11722:
	.sleb128	17
	.byte		"Os_API_ControlIdleType"
	.byte		0
	.4byte		.L11723
.L11728:
	.sleb128	17
	.byte		"Os_IOC_ChannelStatType"
	.byte		0
	.4byte		.L11729
.L11727:
	.sleb128	18
	.4byte		.L11728
.L11726:
	.sleb128	19
	.4byte		.L11727
	.section	.debug_info,,n
.L11735:
	.sleb128	27
	.byte		"void"
	.byte		0
	.byte		0x0
.L11734:
	.sleb128	19
	.4byte		.L11735
.L11732:
	.sleb128	21
	.4byte		.L11733-.L2
	.4byte		.L11734
	.sleb128	23
	.uleb128	1
	.sleb128	0
.L11733:
.L11731:
	.sleb128	17
	.byte		"Os_IOC_DataType"
	.byte		0
	.4byte		.L11732
.L11730:
	.sleb128	19
	.4byte		.L11731
.L11737:
	.sleb128	17
	.byte		"SpinlockIdType"
	.byte		0
	.4byte		.L11460
.L11739:
	.sleb128	17
	.byte		"TryToGetSpinlockType"
	.byte		0
	.4byte		.L11740
.L11738:
	.sleb128	19
	.4byte		.L11739
.L11744:
	.sleb128	17
	.byte		"TaskType"
	.byte		0
	.4byte		.L11616
.L11745:
	.sleb128	19
	.4byte		.L11440
.L11747:
	.sleb128	17
	.byte		"TrustedFunctionIndexType"
	.byte		0
	.4byte		.L11559
.L11748:
	.sleb128	17
	.byte		"TrustedFunctionParameterRefType"
	.byte		0
	.4byte		.L11734
.L11749:
	.sleb128	17
	.byte		"Os_TrustedFunctionReturnValueType"
	.byte		0
	.4byte		.L11750
.L11752:
	.sleb128	17
	.byte		"ObjectTypeType"
	.byte		0
	.4byte		.L11753
.L11756:
	.sleb128	17
	.byte		"AlarmType"
	.byte		0
	.4byte		.L11617
.L11758:
	.sleb128	17
	.byte		"TickType"
	.byte		0
	.4byte		.L11559
.L11762:
	.sleb128	19
	.4byte		.L11758
.L11761:
	.sleb128	17
	.byte		"TickRefType"
	.byte		0
	.4byte		.L11762
.L11766:
	.sleb128	17
	.byte		"AlarmBaseType"
	.byte		0
	.4byte		.L11767
.L11765:
	.sleb128	19
	.4byte		.L11766
.L11764:
	.sleb128	17
	.byte		"AlarmBaseRefType"
	.byte		0
	.4byte		.L11765
.L11769:
	.sleb128	17
	.byte		"ScheduleTableType"
	.byte		0
	.4byte		.L11559
.L11776:
	.sleb128	17
	.byte		"ScheduleTableStatusType"
	.byte		0
	.4byte		.L11777
.L11775:
	.sleb128	19
	.4byte		.L11776
.L11774:
	.sleb128	17
	.byte		"ScheduleTableStatusRefType"
	.byte		0
	.4byte		.L11775
.L11782:
	.sleb128	17
	.byte		"CounterType"
	.byte		0
	.4byte		.L11559
.L11786:
	.sleb128	24
	.4byte		.L11787-.L2
	.byte		0x1
	.sleb128	25
	.4byte		.L11493
	.sleb128	0
.L11787:
.L11785:
	.sleb128	19
	.4byte		.L11786
.L11784:
	.sleb128	17
	.byte		"LightServiceFunctionType"
	.byte		0
	.4byte		.L11785
.L11791:
	.sleb128	17
	.byte		"RestartType"
	.byte		0
	.4byte		.L11440
.L11796:
	.sleb128	17
	.byte		"ApplicationStateType"
	.byte		0
	.4byte		.L11440
.L11795:
	.sleb128	19
	.4byte		.L11796
.L11794:
	.sleb128	17
	.byte		"ApplicationStateRefType"
	.byte		0
	.4byte		.L11795
.L11800:
	.sleb128	20
	.byte		"unsigned long long"
	.byte		0
	.byte		0x7
	.byte		0x8
.L11799:
	.sleb128	17
	.byte		"uint64"
	.byte		0
	.4byte		.L11800
.L11798:
	.sleb128	17
	.byte		"EventMaskType"
	.byte		0
	.4byte		.L11799
.L11803:
	.sleb128	19
	.4byte		.L11798
.L11802:
	.sleb128	17
	.byte		"EventMaskRefType"
	.byte		0
	.4byte		.L11803
.L11809:
	.sleb128	17
	.byte		"TaskStateType"
	.byte		0
	.4byte		.L11810
.L11808:
	.sleb128	19
	.4byte		.L11809
.L11807:
	.sleb128	17
	.byte		"TaskStateRefType"
	.byte		0
	.4byte		.L11808
.L11813:
	.sleb128	19
	.4byte		.L11744
.L11812:
	.sleb128	17
	.byte		"TaskRefType"
	.byte		0
	.4byte		.L11813
.L11817:
	.sleb128	17
	.byte		"ResourceType"
	.byte		0
	.4byte		.L11559
.L11826:
	.sleb128	19
	.4byte		.L11439
.L11833:
	.sleb128	17
	.byte		"Os_IOC_ChannelDynType"
	.byte		0
	.4byte		.L11834
.L11832:
	.sleb128	19
	.4byte		.L11833
.L11831:
	.sleb128	18
	.4byte		.L11832
.L11835:
	.sleb128	17
	.byte		"Os_IOC_ChannelSizeType"
	.byte		0
	.4byte		.L11460
.L11836:
	.sleb128	18
	.4byte		.L11734
.L11837:
	.sleb128	18
	.4byte		.L11460
.L11839:
	.sleb128	17
	.byte		"Os_IOC_DataCountType"
	.byte		0
	.4byte		.L11440
.L11838:
	.sleb128	18
	.4byte		.L11839
.L11843:
	.sleb128	17
	.byte		"Os_IOC_DataDescriptorType"
	.byte		0
	.4byte		.L11844
.L11842:
	.sleb128	18
	.4byte		.L11843
.L11841:
	.sleb128	19
	.4byte		.L11842
.L11840:
	.sleb128	18
	.4byte		.L11841
.L11847:
	.sleb128	17
	.byte		"Os_LockResourceType"
	.byte		0
	.4byte		.L11440
.L11846:
	.sleb128	19
	.4byte		.L11847
.L11845:
	.sleb128	18
	.4byte		.L11846
.L11850:
	.sleb128	17
	.byte		"Os_IOC_DataLengthType"
	.byte		0
	.4byte		.L11460
.L11849:
	.sleb128	18
	.4byte		.L11850
.L11852:
	.sleb128	17
	.byte		"Os_IOC_DataOffsetType"
	.byte		0
	.4byte		.L11460
.L11851:
	.sleb128	18
	.4byte		.L11852
.L11856:
	.sleb128	17
	.byte		"Os_HookIDType"
	.byte		0
	.4byte		.L11460
.L11859:
	.sleb128	18
	.4byte		.L11744
.L11862:
	.sleb128	17
	.byte		"Os_ProcDynType"
	.byte		0
	.4byte		.L11863
.L11861:
	.sleb128	19
	.4byte		.L11862
.L11860:
	.sleb128	18
	.4byte		.L11861
.L11867:
	.sleb128	17
	.byte		"Os_ProcStackType"
	.byte		0
	.4byte		.L11868
.L11866:
	.sleb128	18
	.4byte		.L11867
.L11865:
	.sleb128	19
	.4byte		.L11866
.L11864:
	.sleb128	18
	.4byte		.L11865
.L11870:
	.sleb128	17
	.byte		"Os_ProcKindType"
	.byte		0
	.4byte		.L11871
.L11869:
	.sleb128	18
	.4byte		.L11870
.L11872:
	.sleb128	18
	.4byte		.L11798
.L11873:
	.sleb128	18
	.4byte		.L11591
.L11875:
	.sleb128	17
	.byte		"Os_ActivationCountType"
	.byte		0
	.4byte		.L11559
.L11874:
	.sleb128	18
	.4byte		.L11875
.L11876:
	.sleb128	18
	.4byte		.L11557
.L11880:
	.sleb128	17
	.byte		"Os_AccessStorageType"
	.byte		0
	.4byte		.L11559
.L11879:
	.sleb128	18
	.4byte		.L11880
.L11878:
	.sleb128	19
	.4byte		.L11879
.L11877:
	.sleb128	18
	.4byte		.L11878
.L11884:
	.sleb128	24
	.4byte		.L11885-.L2
	.byte		0x1
	.sleb128	0
.L11885:
.L11883:
	.sleb128	19
	.4byte		.L11884
.L11882:
	.sleb128	17
	.byte		"Os_ProcEntryPointType"
	.byte		0
	.4byte		.L11883
.L11881:
	.sleb128	18
	.4byte		.L11882
.L11886:
	.sleb128	18
	.4byte		.L11817
.L11891:
	.sleb128	17
	.byte		"Os_ResourceStatType"
	.byte		0
	.4byte		.L11892
.L11890:
	.sleb128	18
	.4byte		.L11891
.L11889:
	.sleb128	19
	.4byte		.L11890
.L11888:
	.sleb128	17
	.byte		"Os_ResourceStack"
	.byte		0
	.4byte		.L11889
.L11887:
	.sleb128	19
	.4byte		.L11888
.L11893:
	.sleb128	18
	.4byte		.L11596
.L11894:
	.sleb128	18
	.4byte		.L11601
.L11897:
	.sleb128	17
	.byte		"Os_StackSizeType"
	.byte		0
	.4byte		.L11559
.L11896:
	.sleb128	18
	.4byte		.L11897
.L11899:
	.sleb128	17
	.byte		"Os_ProcContexStateType"
	.byte		0
	.4byte		.L11900
.L11902:
	.sleb128	18
	.4byte		.L11903
.L11901:
	.sleb128	19
	.4byte		.L11902
.L11905:
	.sleb128	18
	.4byte		.L11737
.L11908:
	.sleb128	17
	.byte		"Os_SpinlockDynType"
	.byte		0
	.4byte		.L11909
.L11907:
	.sleb128	19
	.4byte		.L11908
.L11906:
	.sleb128	18
	.4byte		.L11907
.L11914:
	.sleb128	17
	.byte		"Os_ApplicationDynType"
	.byte		0
	.4byte		.L11915
.L11913:
	.sleb128	19
	.4byte		.L11914
.L11912:
	.sleb128	18
	.4byte		.L11913
.L11916:
	.sleb128	18
	.4byte		.L11480
.L11918:
	.sleb128	17
	.byte		"Os_ApplicationKindType"
	.byte		0
	.4byte		.L11919
.L11917:
	.sleb128	18
	.4byte		.L11918
.L11923:
	.sleb128	24
	.4byte		.L11924-.L2
	.byte		0x1
	.sleb128	25
	.4byte		.L11439
	.sleb128	0
.L11924:
.L11922:
	.sleb128	19
	.4byte		.L11923
.L11921:
	.sleb128	17
	.byte		"Os_ShutdownHookFuncType"
	.byte		0
	.4byte		.L11922
.L11920:
	.sleb128	18
	.4byte		.L11921
.L11928:
	.sleb128	24
	.4byte		.L11929-.L2
	.byte		0x1
	.sleb128	0
.L11929:
.L11927:
	.sleb128	19
	.4byte		.L11928
.L11926:
	.sleb128	17
	.byte		"Os_StartUpHookFuncType"
	.byte		0
	.4byte		.L11927
.L11925:
	.sleb128	18
	.4byte		.L11926
.L11933:
	.sleb128	24
	.4byte		.L11934-.L2
	.byte		0x1
	.sleb128	25
	.4byte		.L11439
	.sleb128	0
.L11934:
.L11932:
	.sleb128	19
	.4byte		.L11933
.L11931:
	.sleb128	17
	.byte		"Os_ErrorHookFuncType"
	.byte		0
	.4byte		.L11932
.L11930:
	.sleb128	18
	.4byte		.L11931
.L11937:
	.sleb128	18
	.4byte		.L11616
.L11936:
	.sleb128	19
	.4byte		.L11937
.L11935:
	.sleb128	18
	.4byte		.L11936
.L11940:
	.sleb128	18
	.4byte		.L11782
.L11939:
	.sleb128	19
	.4byte		.L11940
.L11938:
	.sleb128	18
	.4byte		.L11939
.L11943:
	.sleb128	18
	.4byte		.L11756
.L11942:
	.sleb128	19
	.4byte		.L11943
.L11941:
	.sleb128	18
	.4byte		.L11942
.L11946:
	.sleb128	18
	.4byte		.L11769
.L11945:
	.sleb128	19
	.4byte		.L11946
.L11944:
	.sleb128	18
	.4byte		.L11945
.L11951:
	.sleb128	17
	.byte		"Os_ResourceDynType"
	.byte		0
	.4byte		.L11952
.L11950:
	.sleb128	19
	.4byte		.L11951
.L11955:
	.sleb128	17
	.byte		"Os_ErrorType"
	.byte		0
	.4byte		.L11956
.L11957:
	.sleb128	17
	.byte		"Os_ExceptionStatusType"
	.byte		0
	.4byte		.L11958
.L11963:
	.sleb128	24
	.4byte		.L11964-.L2
	.byte		0x1
	.sleb128	0
.L11964:
.L11962:
	.sleb128	19
	.4byte		.L11963
.L11961:
	.sleb128	17
	.byte		"Os_IsrHandlerFuncType"
	.byte		0
	.4byte		.L11962
.L11960:
	.sleb128	18
	.4byte		.L11961
.L11966:
	.sleb128	17
	.byte		"Os_ExceptionTypeType"
	.byte		0
	.4byte		.L11967
.L11970:
	.sleb128	17
	.byte		"Os_ShudownErrorType"
	.byte		0
	.4byte		.L11971
.L11972:
	.sleb128	17
	.byte		"Os_ParameterErrorType"
	.byte		0
	.4byte		.L11973
.L11974:
	.sleb128	17
	.byte		"Os_ServiceErrorType"
	.byte		0
	.4byte		.L11975
.L11977:
	.sleb128	17
	.byte		"ServiceTraceType"
	.byte		0
	.4byte		.L11440
.L11978:
	.sleb128	17
	.byte		"OSServiceIdType"
	.byte		0
	.4byte		.L11979
.L11981:
	.sleb128	17
	.byte		"TryToGetSpinlockRefType"
	.byte		0
	.4byte		.L11738
.L11983:
	.sleb128	17
	.byte		"Os_SystemInternalErrorType"
	.byte		0
	.4byte		.L11984
.L11990:
	.sleb128	18
	.4byte		.L11559
.L11992:
	.sleb128	17
	.byte		"Os_IsrPlatformLevelType"
	.byte		0
	.4byte		.L11460
.L11991:
	.sleb128	18
	.4byte		.L11992
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11405:
	.sleb128	0
.L11401:
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
.L11431:
	.sleb128	0
.L11427:

	.section	.debug_loc,,n
	.align	0
.L11418:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locend
.L11424:
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo2),4
	.d2locend
.L11442:
	.d2locreg	%offsetof(.Llo4), %offsetof(.Llo5),3
	.d2locend
.L11455:
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo7),3
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo9),31
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo11),31
	.d2locend
.L11456:
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo12),4
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo13),30
	.d2locend
.L11462:
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo13),29
	.d2locend
.L11468:
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo11),28
	.d2locend
.L11474:
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo13),27
	.d2locend
.L11481:
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo18),26
	.d2locend
.L11487:
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo20),3
	.d2locend
.L11494:
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo22),3
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo24),31
	.d2locend
.L11499:
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo25),4
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo24),30
	.d2locend
.L11501:
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo24),29
	.d2locreg	%offsetof(.Llo26), %offsetof(.Llo27),29
	.d2locend
.L11507:
	.d2locreg	%offsetof(.Llo28), %offsetof(.Llo29),3
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "Os_API_ShutdownOSInternal"
	.wrcm.nstrlist "calls", "Os_ShutdownOS"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Os_API_ShutdownOS"
	.wrcm.nstrlist "calls", "Os_ShutdownAllCores","Os_ShutdownOS"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Os_ShutdownOS"
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nstrlist "calls", "Os_CoreBeginShutdown","Os_CoreIndividualShutdown","Os_CoreSyncShutdown","Os_Core_UnlockCore","Os_Dispatch_Init","Os_Platform_Shutdown","Os_SchedulerShutdown","Os_SchedulerSwitchApp","Os_SpinlockFreeOnCore","ShutdownHook"
	.wrcm.nint32 "frameSize", 48
	.wrcm.end
	.wrcm.nelem "ShutdownOS"
	.wrcm.nstrlist "calls", "OS_SYS_CALL"
	.wrcm.nint32 "frameSize", 48
	.wrcm.end
	.wrcm.nelem "Os_SchedulerSwitchApp"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Os_ShutdownOS.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Os_ShutdownOS.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Os_ShutdownOS.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Os_ShutdownOS.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Os_ShutdownOS.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Os_ShutdownOS.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\Os\Os\core\ssc\make\..\src\core\Os_ShutdownOS.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
