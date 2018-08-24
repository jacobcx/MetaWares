#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Os_Dispatch.c"
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
# LOCAL_INLINE FUNC(P2CONST(Os_ProcStatType, AUTOMATIC, OS_CONST), OS_CODE) Os_SchedulerGetNextProc(
	.section	.Os_TEXT,,c
	.align		1
	.section	.debug_line.Os_TEXT,,n
	.sectionlink	.debug_line
.L11524:
	.section	.Os_TEXT,,c
#$$ld
.L11520:
	.0byte		.L11518
	.d2_line_start	.debug_line.Os_TEXT
	.section	.Os_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_Scheduler.h"
        .d2line         132,75
#$$ld
.L11527:

#$$bf	Os_SchedulerGetNextProc,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,cr0,lr
	.d2_cfa_start __cie
Os_SchedulerGetNextProc:
.Llo1:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# coreSchedulerDyn=r3 coreSchedulerDyn=r3
	.d2prologue_end
#         CONSTP2CONST(Os_SchedulerDynType, AUTOMATIC, OS_VAR) coreSchedulerDyn)
# {
#     P2VAR(struct Os_SchedulerQueueElementType_s, TYPEDEF, OS_VAR) queueElement;
# 
#     for(queueElement = coreSchedulerDyn->Os_SchedulerHeadPivot.Os_QueueBackElement;
	.d2line		137
	lwz		r5,32(r3)		# coreSchedulerDyn=r3
.Llo3:
	mr		r5,r5		# queueElement=r5 queueElement=r5
.L11348:
	lwz		r0,44(r3)		# coreSchedulerDyn=r3
	se_cmpl		r0,r5		# queueElement=r5
	bc		1,2,.L11352	# eq
#         queueElement != coreSchedulerDyn->Os_SchedulerTailPivot.Os_QueueBackElement;
#         queueElement = queueElement->Os_QueueBackElement  )
#     {
#         if(queueElement->Os_QueueProc->Os_ProcDyn->Os_ProcEnabled == (uint8)0U)
	.d2line		141
	lwz		r4,0(r5)		# queueElement=r5
	lwz		r4,8(r4)
	lbz		r0,32(r4)
	se_cmpi		r0,0
	bc		1,2,.L11352	# eq
#         {
#             break;
#         }
#     }
	.d2line		145
	lwz		r5,8(r5)		# queueElement=r5 queueElement=r5
	mr		r5,r5		# queueElement=r5 queueElement=r5
	b		.L11348
.L11352:
# 
#     return queueElement->Os_QueueProc;
	.d2line		147
.Llo2:
	lwz		r3,0(r5)		# coreSchedulerDyn=r3 queueElement=r5
# }
	.d2line		148
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo4:
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11528:
	.type		Os_SchedulerGetNextProc,@function
	.size		Os_SchedulerGetNextProc,.-Os_SchedulerGetNextProc
# Number of nodes = 33

# Allocations for Os_SchedulerGetNextProc
#	?a4		coreSchedulerDyn
#	?a5		queueElement
# LOCAL_INLINE FUNC(void, OS_CODE) Os_SchedulerSwitchApp(CONSTP2CONST(Os_ApplicationStatType, AUTOMATIC, OS_CONST) app)
	.align		1
	.section	.Os_TEXT,,c
        .d2line         154,34
#$$ld
.L11547:

#$$bf	Os_SchedulerSwitchApp,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,lr
	.d2_cfa_start __cie
Os_SchedulerSwitchApp:
.Llo5:
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
.Llo7:
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
.Llo6:
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11548:
	.type		Os_SchedulerSwitchApp,@function
	.size		Os_SchedulerSwitchApp,.-Os_SchedulerSwitchApp
# Number of nodes = 20

# Allocations for Os_SchedulerSwitchApp
#	?a4		app
#	?a5		coreDynInit
# LOCAL_INLINE FUNC(void, OS_CODE) Os_SchedulerSchedule(void)
	.align		1
	.section	.Os_TEXT,,c
        .d2line         185,34
#$$ld
.L11564:

#$$bf	Os_SchedulerSchedule,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Os_SchedulerSchedule:
.Llo35:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr
	stmw		r27,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	27,31,1,1
	stw		r0,52(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     CONST      (CoreIdType,          AUTOMATIC)           coreID                 = OS_GETCOREID();
	.d2line		187
	mfspr		r31,286		# coreID=r31
.Llo8:
	mr		r31,r31		# coreID=r31 coreID=r31
#   #ifdef OS_MODULE_APPLICATION
#     CONSTP2VAR(Os_Core_DynInitType, AUTOMATIC, OS_VAR) coreDynInit = OS_GET_CORE_DYN_INIT ( OS_GETCOREID() );
	.d2line		189
	lis		r3,Os_Core_Stat@ha		# coreSchedulerDynInit=r3
.Llo20:
	e_add16i		r3,r3,Os_Core_Stat@l		# coreSchedulerDynInit=r3 coreSchedulerDynInit=r3
	mfspr		r0,286
	rlwinm		r0,r0,0,16,31
	e_mulli		r0,r0,20
	lwzx		r6,r3,r0		# coreSchedulerDynInit=r3
.Llo14:
	mr		r6,r6		# coreDynInit=r6 coreDynInit=r6
#   #endif /* OS_MODULE_APPLICATION */
#     CONSTP2VAR (Os_SchedulerDynType, AUTOMATIC, OS_VAR)   coreSchedulerDyn       = OS_GET_CORE_SCHEDULER_DYN(coreID);
	.d2line		191
	lis		r4,(Os_Core_Stat+4)@ha
	e_add16i		r4,r4,(Os_Core_Stat+4)@l
	rlwinm		r0,r31,0,16,31		# coreID=r31
	e_mulli		r0,r0,20
	lwzux		r30,r4,r0
.Llo18:
	mr		r30,r30		# coreSchedulerDyn=r30 coreSchedulerDyn=r30
#     CONSTP2VAR (Os_SchedulerDynInitType, AUTOMATIC, OS_VAR) coreSchedulerDynInit = OS_GET_CORE_SCHEDULER_DYN_INIT(coreID);
	.d2line		192
	lwzx		r3,r3,r0		# coreSchedulerDynInit=r3 coreSchedulerDynInit=r3
	addi		r29,r3,28		# coreSchedulerDynInit=r3
#     P2CONST    (Os_ProcStatType,     AUTOMATIC, OS_CONST) prevProc               = coreSchedulerDynInit->Os_SchedulerCurrentProc;
	.d2line		193
	lwz		r7,28(r3)		# coreSchedulerDynInit=r3
.Llo31:
	mr		r7,r7		# prevProc=r7 prevProc=r7
#     P2CONST    (Os_ProcStatType,     AUTOMATIC, OS_CONST) nextProc               = Os_SchedulerGetNextProc(coreSchedulerDyn);
	.d2line		194
	mr		r3,r30		# coreSchedulerDyn=r3 coreSchedulerDyn=r30
.Llo21:
	bl		Os_SchedulerGetNextProc
	.d2line		201
.Llo22:
	mr.		r27,r3		# nextProc=?a9 nextProc=r3
#   #if ( OS_POSTAPPHOOK == STD_ON ) || ( OS_PREAPPHOOK == STD_ON )
#     CONSTP2VAR (Os_HooksDynType,     AUTOMATIC, OS_VAR)   hookDyn                = OS_GET_CORE_HOOK_DYN(coreID);
#   #endif
# 
#     /* [OS001-276.v1]: prevProc != nextProc */
# 
#     if ( nextProc == NULL_PTR )
	bc		0,2,.L11357	# ne
#     {
#         /* Going to be IDLE state for sure */
#         if( ( prevProc != NULL_PTR) &&
	.d2line		204
.Llo23:
	se_cmpi		r7,0		# prevProc=r7
.Llo24:
	bc		1,2,.L11358	# eq
.Llo9:
	lwz		r3,8(r7)		# coreSchedulerDynInit=r3 prevProc=r7
.Llo25:
	lwz		r0,4(r3)		# coreSchedulerDynInit=r3
	se_cmpi		r0,1
	bc		0,2,.L11358	# ne
#             ( prevProc->Os_ProcDyn->Os_ProcContextState == Os_ProcContextActive))
#         {
#             coreSchedulerDyn->Os_SchedulerScheduleAction = Os_SaveAndIdle;
	.d2line		207
.Llo26:
	diab.li		r0,3
	stw		r0,8(r30)		# coreSchedulerDyn=r30
	b		.L11359
.L11358:
#         }
#         else
#         {
#             coreSchedulerDyn->Os_SchedulerScheduleAction = Os_Idle;
	.d2line		211
.Llo32:
	diab.li		r0,4
	stw		r0,8(r30)		# coreSchedulerDyn=r30
.L11359:
#         }
# 
#         /* Go back and save the context */
#         coreSchedulerDyn->Os_PreviousContext = coreSchedulerDyn->Os_CurrentContext;
	.d2line		215
.Llo33:
	lwz		r0,0(r30)		# coreSchedulerDyn=r30
	stw		r0,4(r30)		# coreSchedulerDyn=r30
#         coreSchedulerDyn->Os_CurrentContext  = NULL_PTR;
	.d2line		216
	diab.li		r0,0
	stw		r0,0(r30)		# coreSchedulerDyn=r30
	.d2line		219
	b		.L11356
.L11357:
# 
#         /* Can return here */
#         return;
#     }
#     else if ( (prevProc == nextProc) &&
	.d2line		221
.Llo10:
	se_cmpl		r7,r27		# prevProc=r7 nextProc=r27
	bc		0,2,.L11361	# ne
	lwz		r3,8(r27)		# coreSchedulerDynInit=r3 nextProc=r27
	lwz		r0,0(r3)		# coreSchedulerDynInit=r3
	se_cmpi		r0,0
	bc		0,2,.L11361	# ne
#          (nextProc->Os_ProcDyn->Os_ProcState == RUNNING)) /* TODO: is this necessary?! */
#     {
#         if(nextProc->Os_ProcDyn->Os_ProcContextState == Os_ProcContextActive)
	.d2line		224
	lwz		r3,8(r27)		# coreSchedulerDynInit=r3 nextProc=r27
	lwz		r0,4(r3)		# coreSchedulerDynInit=r3
	se_cmpi		r0,1
	bc		0,2,.L11362	# ne
#         {
#             coreSchedulerDyn->Os_SchedulerScheduleAction = Os_Return;
	.d2line		226
	diab.li		r0,0
	stw		r0,8(r30)		# coreSchedulerDyn=r30
	b		.L11364
.L11362:
#         }
#         else
#         {
#             coreSchedulerDyn->Os_SchedulerScheduleAction = Os_Load;
	.d2line		230
	diab.li		r0,1
	stw		r0,8(r30)		# coreSchedulerDyn=r30
	b		.L11364
.L11361:
#         }
#     }
#     else
#     {
#         if(prevProc != NULL_PTR)
	.d2line		235
	se_cmpi		r7,0		# prevProc=r7
	bc		1,2,.L11365	# eq
#         {
#             if(prevProc->Os_ProcDyn->Os_ProcContextState == Os_ProcContextActive)
	.d2line		237
	lwz		r3,8(r7)		# coreSchedulerDynInit=r3 prevProc=r7
	lwz		r0,4(r3)		# coreSchedulerDynInit=r3
	se_cmpi		r0,1
	bc		0,2,.L11366	# ne
#             {
#                 coreSchedulerDyn->Os_SchedulerScheduleAction = Os_SaveAndLoad;
	.d2line		239
	diab.li		r0,2
	stw		r0,8(r30)		# coreSchedulerDyn=r30
	b		.L11364
.L11366:
#             }
#             else
#             {
#                 coreSchedulerDyn->Os_SchedulerScheduleAction = Os_Load;
	.d2line		243
	diab.li		r0,1
	stw		r0,8(r30)		# coreSchedulerDyn=r30
	b		.L11364
.L11365:
#             }
#         }
#         else
#         {
#             coreSchedulerDyn->Os_SchedulerScheduleAction = Os_Load;
	.d2line		248
	diab.li		r0,1
	stw		r0,8(r30)		# coreSchedulerDyn=r30
.L11364:
#         }
#     }
# 
#     /* Switch-out and switch-in */
#     if(    ( prevProc != nextProc )
	.d2line		253
	se_cmpl		r7,r27		# prevProc=r7 nextProc=r27
	bc		0,2,.L11388	# ne
.Llo34:
	lwz		r3,8(r27)		# coreSchedulerDynInit=r3 nextProc=r27
	lwz		r0,4(r3)		# coreSchedulerDynInit=r3
	se_cmpi		r0,0
	bc		0,2,.L11379	# ne
.L11388:
	.section	.Os_TEXT,,c
.L11589:
#         || ( nextProc->Os_ProcDyn->Os_ProcContextState == Os_ProcContextInvalid ) )
#     {
#       #if defined(OS_MODULE_MEMORYPROTECTION) || defined(OS_MODULE_APPLICATION)
#         P2CONST(Os_ProcStatType, AUTOMATIC, OS_CONST) lastScheduledProc = coreSchedulerDyn->Os_SchedulerLastScheduledProc;
	.d2line		257
	lwz		r0,20(r30)		# switchAppNeeded=r0 coreSchedulerDyn=r30
.Llo36:
	mr		r0,r0		# lastScheduledProc=r0 lastScheduledProc=r0
#       #endif
# 
#       #ifdef OS_MODULE_APPLICATION
#         CONST(boolean, AUTOMATIC) switchAppNeeded = ( nextProc->Os_ProcDyn->Os_ProcCurrentApp != coreDynInit->Os_CurrentApp ) ? TRUE : FALSE;
	.d2line		261
.Llo37:
	lwz		r3,8(r27)		# coreSchedulerDynInit=r3 nextProc=r27
	lwz		r0,36(r3)		# switchAppNeeded=r0 coreSchedulerDynInit=r3
.Llo38:
	lwz		r3,32(r6)		# coreSchedulerDynInit=r3 coreDynInit=r6
	se_cmpl		r0,r3		# switchAppNeeded=r0 coreSchedulerDynInit=r3
	diab.li		r0,1		# switchAppNeeded=r0
	isel		r0,r3,r0,2		# switchAppNeeded=r0 switchAppNeeded=r3 switchAppNeeded=r0
.L11389:
.Llo15:
	isel		r28,0,r0,2		# switchAppNeeded=r28 switchAppNeeded=r0
.L11390:
# 
#       #endif /* OS_MODULE_APPLICATION */
# 
#         if (   ( Os_Proc_Task == nextProc->Os_ProcKind )
	.d2line		265
.Llo39:
	lwz		r0,16(r27)		# switchAppNeeded=r0 nextProc=r27
.Llo40:
	se_cmpi		r0,0		# switchAppNeeded=r0
	bc		0,2,.L11370	# ne
	lwz		r0,16(r30)		# switchAppNeeded=r0 coreSchedulerDyn=r30
	se_cmpi		r0,0		# switchAppNeeded=r0
	bc		1,2,.L11370	# eq
	lwz		r0,16(r30)		# switchAppNeeded=r0 coreSchedulerDyn=r30
	se_cmpl		r0,r27		# switchAppNeeded=r0 nextProc=r27
	bc		1,2,.L11370	# eq
#             && ( coreSchedulerDyn->Os_SchedulerCurrentTask != NULL_PTR )
#             && ( coreSchedulerDyn->Os_SchedulerCurrentTask != nextProc ) )
#         {
#             Os_Task_SwitchOut ( coreSchedulerDyn->Os_SchedulerCurrentTask );
	.d2line		269
	lwz		r3,16(r30)		# switchAppNeeded=r3 coreSchedulerDyn=r30
	bl		Os_Task_SwitchOut
.L11370:
#         }
#       #ifdef OS_MODULE_MEMORYPROTECTION
#         if ( lastScheduledProc != NULL_PTR )
#         {
#             /* Disable process' memory regions */
#             Os_MemoryProtectionDisableProc(lastScheduledProc); /* [OS355-01] [OS356-02] */
#         }
#       #endif /* OS_MODULE_MEMORYPROTECTION */
# 
#       #ifdef OS_MODULE_APPLICATION
#         /* [OS-MGC-0057] */
#         if ( FALSE != switchAppNeeded )
	.d2line		281
	rlwinm		r28,r28,0,24,31		# switchAppNeeded=r28 switchAppNeeded=r28
	se_cmpi		r28,0		# switchAppNeeded=r28
	bc		1,2,.L11371	# eq
#         {
#             if ( lastScheduledProc != NULL_PTR )
#             {
#             #if ( OS_POSTAPPHOOK == STD_ON )
# 
#                 Os_Isr_ServicesSwitchToHook ();
# 
#                 hookDyn->Os_HookID = OS_HOOKID_POSTAPPHOOK;
#                 PostAppHook(lastScheduledProc->Os_ProcOwnerApp->Os_AppId); /* [OS-MGC-0050-04] [OS-MGC-0050-02] */
#                 hookDyn->Os_HookID = OS_HOOKID_NONE;
# 
#                 Os_Isr_ServicesSwitchBackFromHook();
# 
#             #endif /* OS_POSTAPPHOOK == STD_ON */
# 
#             }
# 
#             Os_SchedulerSwitchApp(nextProc->Os_ProcDyn->Os_ProcCurrentApp);
	.d2line		299
.Llo41:
	lwz		r3,8(r27)		# switchAppNeeded=r3 nextProc=r27
.Llo42:
	lwz		r3,36(r3)		# switchAppNeeded=r3 switchAppNeeded=r3
.Llo43:
	bl		Os_SchedulerSwitchApp
.L11371:
# 
#           #if ( OS_PREAPPHOOK == STD_ON )
#             /* [OS-MGC-0058] */
#             Os_Isr_ServicesSwitchToHook();
# 
#             hookDyn->Os_HookID = OS_HOOKID_PREAPPHOOK;
#             PreAppHook(nextProc->Os_ProcOwnerApp->Os_AppId); /* [OS-MGC-0051-04] [OS-MGC-0051-02]*/
#             hookDyn->Os_HookID = OS_HOOKID_NONE;
# 
#             Os_Isr_ServicesSwitchBackFromHook();
#           #endif /* OS_PREAPPHOOK == STD_ON */
#         }
# 
#       #endif /* OS_MODULE_APPLICATION */
# 
#       #ifdef OS_MODULE_STACKSHARING
#         Os_StackSharing_NextTask(nextProc); /* Must be before setting Os_SchedulerCurrentProc */
#       #endif /* OS_MODULE_STACKSHARING */
# 
#         /* Set next proc as current proc */
#         coreSchedulerDynInit->Os_SchedulerCurrentProc = nextProc;
	.d2line		320
	stw		r27,0(r29)		# coreSchedulerDynInit=r29 nextProc=r27
# 
#       #ifdef OS_MODULE_MEMORYPROTECTION
#         /* Enable proc's memory regions */
#         Os_MemoryProtectionEnableProc(nextProc); /* [OS087-02] [OS196-02] */
#       #endif /* OS_MODULE_MEMORYPROTECTION */
# 
#       #if defined(OS_MODULE_STACKSHARING) && defined (OS_CONFIG_STACKMONITORING)
#         Os_StackSharing_WriteGuards(nextProc);
#       #endif /* defined(OS_MODULE_STACKSHARING) && defined (OS_CONFIG_STACKMONITORING) */
# 
#       #ifdef OS_MODULE_APPLICATION
#         if(OS_TRUSTED == nextProc->Os_ProcOwnerApp->Os_AppKind)
	.d2line		332
	lwz		r3,48(r27)		# switchAppNeeded=r3 nextProc=r27
.Llo44:
	lwz		r0,12(r3)		# switchAppNeeded=r0 switchAppNeeded=r3
	se_cmpi		r0,0		# switchAppNeeded=r0
	bc		0,2,.L11373	# ne
#         {
#             Os_Isr_ServicesSwitchToTrusted();
	.d2line		334
.Llo27:
	bl		Os_Isr_ServicesSwitchToTrusted
	b		.L11374
.L11373:
#         }
#         else
#         {
#             Os_Isr_ServicesSwitchToNonTrusted();
	.d2line		338
	bl		Os_Isr_ServicesSwitchToNonTrusted
.L11374:
#         }
#       #endif /* OS_MODULE_APPLICATION */
# 
#         if(Os_Proc_Task == nextProc->Os_ProcKind)
	.d2line		342
	lwz		r0,16(r27)		# switchAppNeeded=r0 nextProc=r27
.Llo45:
	se_cmpi		r0,0		# switchAppNeeded=r0
	bc		0,2,.L11375	# ne
#         {
#             Os_Task_SwitchIn(nextProc);
	.d2line		344
.Llo46:
	mr		r3,r27		# nextProc=r3 nextProc=r27
	bl		Os_Task_SwitchIn
	b		.L11376
.L11375:
#         }
# 
#       #ifdef OS_CONFIG_IOC_CROSSCORE_PULLCALLBACK
# 
#         else if ( Os_Proc_IocPullcallback == nextProc->Os_ProcKind )
#         {
#             Os_Ioc_Pullcallback_SwitchIn ( nextProc );
#         }
# 
#       #endif
# 
#         else /* if(Os_Proc_ISR_CAT2 == nextProc->Os_ProcKind) */
#         {
#             Os_Isr_SwitchIn(nextProc);
	.d2line		358
	mr		r3,r27		# nextProc=r3 nextProc=r27
	bl		Os_Isr_SwitchIn
.L11376:
#         }
# 
#         /* Switch to the selected context */
#         /*  [OS001-037.v1] */
#         coreSchedulerDyn->Os_PreviousContext = coreSchedulerDyn->Os_CurrentContext;
	.d2line		363
	lwz		r0,0(r30)		# switchAppNeeded=r0 coreSchedulerDyn=r30
.Llo47:
	stw		r0,4(r30)		# coreSchedulerDyn=r30 switchAppNeeded=r0
#         coreSchedulerDyn->Os_CurrentContext  = nextProc->Os_ProcContext;
	.d2line		364
	lwz		r0,44(r27)		# switchAppNeeded=r0 nextProc=r27
	stw		r0,0(r30)		# coreSchedulerDyn=r30 switchAppNeeded=r0
#         coreSchedulerDyn->Os_SchedulerLastScheduledProc = nextProc;
	.d2line		365
	stw		r27,20(r30)		# coreSchedulerDyn=r30 nextProc=r27
# 
#       #ifdef OS_CONFIG_INTERNAL_VALIDATIONS
#         if(Os_ProcContextInvalid == nextProc->Os_ProcDyn->Os_ProcContextState)
	.d2line		368
	lwz		r3,8(r27)		# nextProc=r3 nextProc=r27
	lwz		r0,4(r3)		# switchAppNeeded=r0 nextProc=r3
	se_cmpi		r0,0		# switchAppNeeded=r0
	bc		0,2,.L11379	# ne
#         {
#             OS_FATAL_ERROR(E_OS_SYS_SCHEDULER_ERROR);
	.d2line		370
.Llo48:
	diab.li		r4,42
	lis		r3,(Os_Core_DynShared+12)@ha		# nextProc=r3
	e_add16i		r3,r3,(Os_Core_DynShared+12)@l		# nextProc=r3 nextProc=r3
	mfspr		r0,286		# switchAppNeeded=r0
.Llo49:
	rlwinm		r0,r0,0,16,31		# switchAppNeeded=r0 switchAppNeeded=r0
	e_mulli		r0,r0,152		# switchAppNeeded=r0 switchAppNeeded=r0
.Llo50:
	stwx		r4,r3,r0		# nextProc=r3
	diab.li		r3,30		# nextProc=r3
	bl		Os_ShutdownAllCores
	.section	.Os_TEXT,,c
.L11590:
.L11379:
#         }
#       #endif /* OS_CONFIG_INTERNAL_VALIDATIONS */
#     }
#     else
#     {
#         /* Do nothing. */
#     }
# 
#     if(nextProc->Os_ProcRunPriority > nextProc->Os_ProcDyn->Os_ProcCurrentPriority)
	.d2line		379
.Llo16:
	lwz		r0,36(r27)		# switchAppNeeded=r0 nextProc=r27
.Llo51:
	lwz		r3,8(r27)		# coreSchedulerDynInit=r3 nextProc=r27
	lwz		r3,48(r3)		# coreSchedulerDynInit=r3 coreSchedulerDynInit=r3
	se_cmpl		r0,r3		# switchAppNeeded=r0 coreSchedulerDynInit=r3
	bc		0,1,.L11381	# le
#     {
#         /* [OS001-041.v1] [OS001-124.v1] [OS001-293.v1] [OS001-269.v1] [OS001-295.v1] */
#         Os_SchedulerChangeProcPriority(nextProc, nextProc->Os_ProcRunPriority, Os_true);
	.d2line		382
.Llo17:
	lwz		r4,36(r27)		# nextProc=r27
	mr		r3,r27		# nextProc=r3 nextProc=r27
	diab.li		r5,1
	bl		Os_SchedulerChangeProcPriority
.L11381:
	.section	.Os_TEXT,,c
.L11600:
#     }
#     else
#     {
#         /* Do nothing on purpose. */
#     }
# 
#     /* Updating the interrupt controller shall always be considered. */
#     {
#         CONST(Os_PriorityType, AUTOMATIC) currentPriority = nextProc->Os_ProcDyn->Os_ProcCurrentPriority;
	.d2line		391
	lwz		r3,8(r27)		# coreSchedulerDynInit=r3 nextProc=r27
.Llo28:
	lwz		r0,48(r3)		# switchAppNeeded=r0 coreSchedulerDynInit=r3
.Llo52:
	mr		r0,r0		# currentPriority=r0 currentPriority=r0
# 
#         if(currentPriority != coreSchedulerDyn->Os_SchedulerLastScheduledPriority)
	.d2line		393
	lwz		r3,12(r30)		# coreSchedulerDynInit=r3 coreSchedulerDyn=r30
	se_cmpl		r3,r0		# coreSchedulerDynInit=r3 currentPriority=r0
	bc		1,2,.L11356	# eq
	.section	.Os_TEXT,,c
.L11610:
#         {
#             CONSTP2CONST(Os_SchedulerQueueStructureType, AUTOMATIC, OS_CONST) coreSchedulerStruct = Os_GetCoreSchedulerStruct(coreID);
	.d2line		395
.Llo11:
	lis		r3,Os_SchedulerQueueStruct@ha		# coreSchedulerDynInit=r3
.Llo29:
	e_add16i		r3,r3,Os_SchedulerQueueStruct@l		# coreSchedulerDynInit=r3 coreSchedulerDynInit=r3
.Llo12:
	rlwinm		r31,r31,5,11,26		# coreID=r31 coreID=r31
	se_add		r3,r31		# coreSchedulerDynInit=r3 coreSchedulerDynInit=r3 coreID=r31
.Llo30:
	mr		r3,r3		# coreSchedulerStruct=r3 coreSchedulerStruct=r3
# 
#             /*set interrupt controller priority */
#             if(currentPriority <= (coreSchedulerStruct->Os_ProcMaxTaskPrio))
	.d2line		398
	lwz		r4,0(r3)		# coreSchedulerStruct=r3
	se_cmpl		r4,r0		# currentPriority=r0
	bc		1,0,.L11383	# lt
#             {
#                 Os_Isr_SetLevelUM(OS_TASK_ISR_LEVEL);
	.d2line		400
.Llo13:
	diab.li		r5,0
	lis		r3,Os_Core_Stat@ha		# coreSchedulerStruct=r3
.Llo53:
	e_add16i		r3,r3,Os_Core_Stat@l		# coreSchedulerStruct=r3 coreSchedulerStruct=r3
	mfspr		r4,286
	rlwinm		r4,r4,0,16,31
	e_mulli		r4,r4,20
	lwzx		r4,r3,r4		# coreSchedulerStruct=r3
	stw		r5,0(r4)
	diab.li		r5,1
	mfspr		r4,286
	rlwinm		r4,r4,0,16,31
	e_mulli		r4,r4,20
	lwzx		r3,r3,r4		# coreSchedulerStruct=r3 coreSchedulerStruct=r3
	stb		r5,4(r3)		# coreSchedulerStruct=r3
	b		.L11385
.L11383:
#             }
#             else
#             {
#                 Os_Isr_SetLevelUM(currentPriority - coreSchedulerStruct->Os_ProcMaxTaskPrio);
	.d2line		404
	lwz		r5,0(r3)		# coreSchedulerStruct=r3
	subf		r5,r5,r0		# currentPriority=r0
	lis		r3,Os_Core_Stat@ha		# coreSchedulerStruct=r3
	e_add16i		r3,r3,Os_Core_Stat@l		# coreSchedulerStruct=r3 coreSchedulerStruct=r3
	mfspr		r4,286
	rlwinm		r4,r4,0,16,31
	e_mulli		r4,r4,20
	lwzx		r4,r3,r4		# coreSchedulerStruct=r3
	stw		r5,0(r4)
	diab.li		r5,1
	mfspr		r4,286
	rlwinm		r4,r4,0,16,31
	e_mulli		r4,r4,20
	lwzx		r3,r3,r4		# coreSchedulerStruct=r3 coreSchedulerStruct=r3
	stb		r5,4(r3)		# coreSchedulerStruct=r3
.L11385:
#             }
# 
#             coreSchedulerDyn->Os_SchedulerLastScheduledPriority = currentPriority;
	.d2line		407
.Llo54:
	stw		r0,12(r30)		# coreSchedulerDyn=r30 currentPriority=r0
	.section	.Os_TEXT,,c
.L11611:
	.section	.Os_TEXT,,c
.L11601:
.L11356:
#         }
#         else
#         {
#             /* Do nothing on purpose. */
#         }
#     }
# }
	.d2line		414
	.d2epilogue_begin
.Llo19:
	lmw		r27,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,52(r1)		# currentPriority=r0
	mtspr		lr,r0		# currentPriority=lr
	diab.addi		r1,r1,48		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11565:
	.type		Os_SchedulerSchedule,@function
	.size		Os_SchedulerSchedule,.-Os_SchedulerSchedule
# Number of nodes = 444

# Allocations for Os_SchedulerSchedule
#	?a4		coreID
#	?a5		coreDynInit
#	?a6		coreSchedulerDyn
#	?a7		coreSchedulerDynInit
#	?a8		prevProc
#	?a9		nextProc
#	?a10		lastScheduledProc
#	?a11		switchAppNeeded
#	?a12		currentPriority
#	?a13		coreSchedulerStruct
# FUNC(void,OS_CODE) Os_Dispatch_Init(CONST(CoreIdType,AUTOMATIC) coreID)
	.align		2
	.section	.Os_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\dispatcher\\Os_Dispatch.c"
        .d2line         104,20
#$$ld
.L11623:

#$$bf	Os_Dispatch_Init,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,lr
	.globl		Os_Dispatch_Init
	.d2_cfa_start __cie
Os_Dispatch_Init:
.Llo55:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# coreID=r3 coreID=r3
	.d2prologue_end
# {
#   #if defined ( OS_MODULE_MULTICORE )
# 
#     OS_GET_CORE_DISPATCHER_DYN(coreID)->Os_DHead = (uint32)0U;
	.d2line		108
	diab.li		r4,0
	lis		r5,Os_Core_DynShared@ha
	e_add16i		r5,r5,Os_Core_DynShared@l
	rlwinm		r3,r3,0,16,31		# coreID=r3 coreID=r3
	e_mulli		r3,r3,152		# coreID=r3 coreID=r3
.Llo56:
	stwx		r4,r5,r3
#     OS_GET_CORE_DISPATCHER_DYN(coreID)->Os_DTail = (uint32)0U;
	.d2line		109
	lis		r5,(Os_Core_DynShared+4)@ha
	e_add16i		r5,r5,(Os_Core_DynShared+4)@l
	stwx		r4,r5,r3
# 
#   #endif
# }
	.d2line		112
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
.L11624:
	.type		Os_Dispatch_Init,@function
	.size		Os_Dispatch_Init,.-Os_Dispatch_Init
# Number of nodes = 22

# Allocations for Os_Dispatch_Init
#	?a4		coreID
# FUNC(void,OS_CODE) Os_Dispatch_Idle(void)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         120,20
#$$ld
.L11630:

#$$bf	Os_Dispatch_Idle,interprocedural,rasave,nostackparams
	.globl		Os_Dispatch_Idle
	.d2_cfa_start __cie
Os_Dispatch_Idle:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     Os_SchedulerIdle();
	.d2line		122
	bl		Os_SchedulerIdle
# }
	.d2line		123
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
.L11631:
	.type		Os_Dispatch_Idle,@function
	.size		Os_Dispatch_Idle,.-Os_Dispatch_Idle
# Number of nodes = 2

# Allocations for Os_Dispatch_Idle
# FUNC(void,OS_CODE) Os_Dispatch_LightSyscall( P2VAR(Os_APICallType, AUTOMATIC, OS_VAR) Os_APICall,
	.align		2
	.section	.Os_TEXT,,c
        .d2line         131,20
#$$ld
.L11635:

#$$bf	Os_Dispatch_LightSyscall,interprocedural,rasave,nostackparams
	.globl		Os_Dispatch_LightSyscall
	.d2_cfa_start __cie
Os_Dispatch_LightSyscall:
.Llo57:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r4,r4		# Os_APIEntryPoint=r4 Os_APIEntryPoint=r4
	.d2prologue_end
#                                              VAR(LightServiceFunctionType, AUTOMATIC) Os_APIEntryPoint )
# {
#     /* Keep interrupt controller level on the stack if Interruptible kernel context is enabled */
#     VAR   (CoreIdType,        AUTOMATIC) coreId = OS_GETCOREID();
	.d2line		135
	mfspr		r31,286
.Llo59:
	mr		r31,r31		# coreId=r31 coreId=r31
# 
# #if defined(OS_CONFIG_INTERRUPTIBLE_KERNEL_CONTEXT)
#     VAR   (Os_IsrRegister_t,  AUTOMATIC) currentPrio = OS_GETANDSET_ISR_LEVEL(OS_CAT0_ISR_LEVEL, coreId);
#     (void)OS_ENABLE_ALLINTR();
# #endif /* defined(OS_CONFIG_INTERRUPTIBLE_KERNEL_CONTEXT) */
# 
#     Os_APIEntryPoint(Os_APICall);
	.d2line		142
	mtspr		ctr,r4		# Os_APIEntryPoint=ctr Os_APIEntryPoint=r4
	mr		r0,r3		# Os_APICall=r0 Os_APICall=r3
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x8 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
# 
# #if defined(OS_CONFIG_INTERRUPTIBLE_KERNEL_CONTEXT)
#     (void)OS_DISABLE_ALLINTR();
# #endif /* defined(OS_CONFIG_INTERRUPTIBLE_KERNEL_CONTEXT) */
# 
#     if ( TRUE == OS_GET_CORE_ISR_DYN_INIT(coreId)->Os_UserModePriorityChanged )
	.d2line		148
.Llo58:
	lis		r3,Os_Core_Stat@ha
	e_add16i		r3,r3,Os_Core_Stat@l
	rlwinm		r0,r31,0,16,31		# coreId=r31
	e_mulli		r0,r0,20
	lwzx		r3,r3,r0
	lbz		r0,4(r3)
	se_cmpi		r0,1
	bc		0,2,.L11415	# ne
#     {
#         OS_SET_ISR_LEVEL( OS_GET_ISR_LEVEL_UM(coreId), coreId);
	.d2line		150
	lis		r4,Os_Core_Stat@ha
	e_add16i		r4,r4,Os_Core_Stat@l
	rlwinm		r0,r31,0,16,31		# coreId=r31
	e_mulli		r0,r0,20
	lwzux		r3,r4,r0
	lwz		r4,0(r3)
	lis		r3,Os_IsrLevel@ha
	e_add16i		r3,r3,Os_IsrLevel@l
	rlwinm		r31,r31,2,14,29		# coreId=r31 coreId=r31
.Llo60:
	stwx		r4,r3,r31
	lis		r3,Os_Core_Stat@ha
	e_add16i		r3,r3,Os_Core_Stat@l
	lwzx		r4,r3,r0
	lwz		r5,0(r4)
	diab.li		r4,16
	e_add2is		r4,-1020
	stwx		r5,r4,r31
#         OS_GET_CORE_ISR_DYN_INIT(coreId)->Os_UserModePriorityChanged = FALSE;
	.d2line		151
	diab.li		r4,0
	lwzx		r3,r3,r0
	stb		r4,4(r3)
.L11415:
#     }
# 
# #if defined(OS_CONFIG_INTERRUPTIBLE_KERNEL_CONTEXT)
#     else
#     {
#         OS_SET_ISR_LEVEL( currentPrio, coreId);
#     }
# #endif /* defined(OS_CONFIG_INTERRUPTIBLE_KERNEL_CONTEXT) */
# 
# }
	.d2line		161
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
	.section	.Os_TEXT,,c
#$$ld
.L11636:
	.type		Os_Dispatch_LightSyscall,@function
	.size		Os_Dispatch_LightSyscall,.-Os_Dispatch_LightSyscall
# Number of nodes = 74

# Allocations for Os_Dispatch_LightSyscall
#	?a4		Os_APICall
#	?a5		Os_APIEntryPoint
#	?a6		coreId
# LOCAL_INLINE FUNC(P2VAR(Os_DispatchElementType,AUTOMATIC,OS_VAR),OS_CODE) Os_Dispatch_DiscardAndGetNext(void)
	.align		1
	.section	.Os_TEXT,,c
        .d2line         539,75
#$$ld
.L11652:

#$$bf	Os_Dispatch_DiscardAndGetNext,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,cr0,lr
	.d2_cfa_start __cie
Os_Dispatch_DiscardAndGetNext:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     P2VAR (Os_DispatchElementType, AUTOMATIC, OS_VAR)  next   = NULL_PTR;
	.d2line		541
	diab.li		r3,0		# next=r3
#     CONST (CoreIdType,             AUTOMATIC)          coreId = OS_GETCOREID();
	.d2line		542
.Llo61:
	mfspr		r6,286		# coreId=r6
.Llo63:
	mr		r6,r6		# coreId=r6 coreId=r6
# 
#     if(OS_GET_CORE_DISPATCHER_DYN(coreId)->Os_DHead !=
	.d2line		544
	lis		r4,Os_Core_DynShared@ha
	e_add16i		r4,r4,Os_Core_DynShared@l
	rlwinm		r0,r6,0,16,31		# coreId=r6
	e_mulli		r0,r0,152
	lwzux		r5,r4,r0
	lis		r4,(Os_Core_DynShared+4)@ha
	e_add16i		r4,r4,(Os_Core_DynShared+4)@l
	lwzx		r0,r4,r0
	se_cmpl		r5,r0
	bc		1,2,.L11514	# eq
#             OS_GET_CORE_DISPATCHER_DYN(coreId)->Os_DTail)
#     {
#         next = &OS_GET_CORE_STAT(coreId)->Os_DispatchElement[OS_GET_CORE_DISPATCHER_DYN(coreId)->Os_DTail];
	.d2line		547
	lis		r3,(Os_Core_Stat+8)@ha		# next=r3
	e_add16i		r3,r3,(Os_Core_Stat+8)@l		# next=r3 next=r3
	rlwinm		r0,r6,0,16,31		# coreId=r6
	e_mulli		r4,r0,20
	lwzx		r5,r3,r4		# next=r3
	lis		r3,(Os_Core_DynShared+4)@ha		# next=r3
	e_add16i		r3,r3,(Os_Core_DynShared+4)@l		# next=r3 next=r3
	e_mulli		r0,r0,152
	lwzux		r4,r3,r0		# next=r3
	e_mulli		r4,r4,56
	add		r3,r5,r4		# next=r3
	mr		r3,r3		# next=r3 next=r3
# 
#         OS_GET_CORE_DISPATCHER_DYN(coreId)->Os_DTail++;
	.d2line		549
	lis		r4,(Os_Core_DynShared+4)@ha
	e_add16i		r4,r4,(Os_Core_DynShared+4)@l
	lwzx		r5,r4,r0
	se_addi		r5,1
	stwx		r5,r4,r0
#         if(OS_GET_CORE_DISPATCHER_DYN(coreId)->Os_DTail == Os_DispatcherElementsSize[coreId])
	.d2line		550
	lis		r4,Os_DispatcherElementsSize@ha
	e_add16i		r4,r4,Os_DispatcherElementsSize@l
	rlwinm		r0,r6,2,14,29		# coreId=r6
	lwzx		r0,r4,r0
	se_cmpl		r5,r0
	bc		0,2,.L11514	# ne
#         {
#             OS_GET_CORE_DISPATCHER_DYN(coreId)->Os_DTail = (uint32)0U;
	.d2line		552
.Llo64:
	diab.li		r0,0
	lis		r4,(Os_Core_DynShared+4)@ha
	e_add16i		r4,r4,(Os_Core_DynShared+4)@l
.Llo65:
	rlwinm		r6,r6,0,16,31		# coreId=r6 coreId=r6
	e_mulli		r6,r6,152		# coreId=r6 coreId=r6
.Llo66:
	stwx		r0,r4,r6
.L11514:
#         }
#     }
# 
#     return next;
	.d2line		556
	mr		r3,r3		# next=r3 next=r3
# }
	.d2line		557
	.d2epilogue_begin
.Llo62:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11653:
	.type		Os_Dispatch_DiscardAndGetNext,@function
	.size		Os_Dispatch_DiscardAndGetNext,.-Os_Dispatch_DiscardAndGetNext
# Number of nodes = 98

# Allocations for Os_Dispatch_DiscardAndGetNext
#	?a4		$$2355
#	?a5		next
#	?a6		coreId
# LOCAL_INLINE FUNC(Os_ScheduleType, OS_CODE) Os_Dispatch(P2VAR     (Os_DispatchElementType, AUTOMATIC, OS_VAR) nextDispatchElement
	.align		1
	.section	.Os_TEXT,,c
        .d2line         264,45
#$$ld
.L11665:

#$$bf	Os_Dispatch,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Os_Dispatch:
.Llo67:
	stwu		r1,-64(r1)		
	.d2_cfa_def_cfa_offset	64
	mfspr		r0,lr
	stmw		r23,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	23,31,1,1
	stw		r0,68(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# nextDispatchElement=r31 nextDispatchElement=r3
	.d2prologue_end
# #else
# LOCAL_INLINE FUNC(Os_ScheduleType, OS_CODE) Os_Dispatch(CONSTP2VAR(Os_DispatchElementType, AUTOMATIC, OS_VAR) nextDispatchElement
# #endif
# #if (   defined ( OS_CONFIG_INTERRUPTIBLE_KERNEL_CONTEXT )  \
#      && defined ( OS_MODULE_TIMINGPROTECTION )                  )
#                                                         ,CONST    (Os_BoolType,            AUTOMATIC)         nestAllowed
# #endif
# )
# {
#     CONST       (CoreIdType,          AUTOMATIC)         coreId           = OS_GETCOREID();
#     CONSTP2VAR  (Os_SchedulerDynType, AUTOMATIC, OS_VAR) coreSchedulerDyn = OS_GET_CORE_SCHEDULER_DYN(coreId);
#   #if defined ( OS_MODULE_MULTICORE )
#     P2CONST     (Os_ProcStatType, AUTOMATIC, OS_CONST) currentProc = OS_SCHEDULER_GET_CURRENT_PROC(coreId);
#   #else
#     CONSTP2CONST(Os_ProcStatType, AUTOMATIC, OS_CONST) currentProc = OS_SCHEDULER_GET_CURRENT_PROC(coreId);
#   #endif
# 
#   #ifdef OS_MODULE_MULTICORE
# 
#     VAR(Os_API_LockType, AUTOMATIC) lock = nextDispatchElement->Os_DispatchApiCall->Os_API_Lock;
#     VAR(CoreIdType,      AUTOMATIC) lockedOtherCoreId;
#     VAR(Os_BoolType,     AUTOMATIC) triggerCrosscore = Os_false;
	.d2line		286
.Llo68:
	diab.li		r26,0		# triggerCrosscore=r26
	.d2line		274
.Llo69:
	mfspr		r30,286		# coreId=r30
.Llo73:
	mr		r30,r30		# coreId=r30 coreId=r30
	.d2line		275
	lis		r3,(Os_Core_Stat+4)@ha
	e_add16i		r3,r3,(Os_Core_Stat+4)@l
	rlwinm		r0,r30,0,16,31		# coreId=r30
	e_mulli		r0,r0,20
	lwzux		r23,r3,r0
.Llo77:
	mr		r23,r23		# coreSchedulerDyn=r23 coreSchedulerDyn=r23
	.d2line		277
	lis		r3,Os_Core_Stat@ha
	e_add16i		r3,r3,Os_Core_Stat@l
	lwzx		r3,r3,r0
	lwz		r29,28(r3)
.Llo79:
	mr		r29,r29		# currentProc=r29 currentProc=r29
	.d2line		284
	lwz		r3,12(r31)		# nextDispatchElement=r31
	lwz		r0,8(r3)
	.d2line		305
	mr.		r28,r0		# lock=?a10 lock=?a15
# 
#   #endif
# 
# #ifdef OS_CONFIG_INTERRUPTIBLE_KERNEL_CONTEXT
#     VAR   (Os_IsrRegister_t,  AUTOMATIC) currentPrio;
#   #ifdef OS_MODULE_TIMINGPROTECTION
#     if(Os_true == nestAllowed)
#   #endif
#     {
#         /* [OS-MGC-0086] */
#         currentPrio = OS_GETANDSET_ISR_LEVEL(OS_CAT0_ISR_LEVEL, coreId);
#         OS_ENABLE_ALLINTR();
#     }
# #endif
# 
# #ifdef OS_MODULE_MULTICORE
# 
#   #ifdef OS_CONFIG_INTERNAL_VALIDATIONS
#     if ( OS_DISPATCH_SINGLE == lock )
.Llo93:
	bc		0,2,.L11435	# ne
#   #endif
#     {
#         Os_Core_LockCore(coreId);
	.d2line		308
	rlwinm		r3,r30,0,16,31		# coreId=r30
	bl		Os_Core_LockCore
	b		.L11436
.L11435:
#     }
#   #ifdef OS_CONFIG_INTERNAL_VALIDATIONS
#     else
#     {
#         OS_FATAL_ERROR(E_OS_SYS_WRONG_DISPATCHKIND4);
	.d2line		313
	diab.li		r4,12
	lis		r3,(Os_Core_DynShared+12)@ha
	e_add16i		r3,r3,(Os_Core_DynShared+12)@l
	mfspr		r0,286
	rlwinm		r0,r0,0,16,31
	e_mulli		r0,r0,152
	stwx		r4,r3,r0
	diab.li		r3,30
	bl		Os_ShutdownAllCores
.L11436:
#     }
#   #endif /* OS_CONFIG_INTERNAL_VALIDATIONS */
# 
# #endif /* OS_MODULE_MULTICORE */
# 
#   #ifdef OS_CONFIG_STACKMONITORING
#     if(FALSE != Os_StackMonitorCheckProc(currentProc))
	.d2line		320
	mr		r3,r29		# currentProc=r3 currentProc=r29
	bl		Os_StackMonitorCheckProc
	e_andi.		r3,r3,255
	bc		0,2,.L11439	# ne
.L11440:
#     {
#         /* Simply let the Os_SchedulerSchedule to run. */
#     }
#     else
#   #endif
#     {
#       #if defined ( OS_MODULE_MULTICORE )
#         for(;;) /* Loop until there is something to dispatch. */
#         {
#       #endif
#           #if defined(OS_CONFIG_STACKMONITORING) && defined(OS_CONFIG_INTERRUPTIBLE_KERNEL_CONTEXT)
#             Os_StackMonitorKernel();
#           #endif
# 
#             switch(nextDispatchElement->Os_DispatchKind)
	.d2line		335
.Llo96:
	lwz		r6,0(r31)		# nextDispatchElement=r31
	se_cmpi		r6,3
	bc		1,1,.L11687	# gt
.Llo97:
	bc		1,2,.L11446	# eq
	se_cmpi		r6,0
	bc		1,2,.L11444	# eq
	se_cmpi		r6,1
	bc		1,2,.L11445	# eq
	se_cmpi		r6,2
	bc		1,2,.L11443	# eq
.Llo80:
	b		.L11450
.L11687:
.Llo81:
	se_cmpi		r6,4
	bc		1,2,.L11448	# eq
.Llo82:
	se_cmpi		r6,5
	bc		1,2,.L11447	# eq
	b		.L11450
.L11443:
#             {
#                 case OS_DISPATCH_INTERRUPT:
#                     Os_DispatchISR(nextDispatchElement->Os_DispatchIsrId);
	.d2line		338
	lwz		r3,8(r31)		# nextDispatchElement=r31
	bl		Os_DispatchISR
	b		.L11444
.L11445:
#                     break;
# 
#                 case OS_DISPATCH_API:
#                     nextDispatchElement->Os_DispatchApiCall->Os_API_Func ( nextDispatchElement->Os_DispatchApiCall, currentProc);
	.d2line		342
.Llo83:
	lwz		r3,12(r31)		# nextDispatchElement=r31
	lwz		r0,12(r3)
	mtspr		ctr,r0
	mr		r4,r29		# currentProc=r4 currentProc=r29
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x18 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
.Llo84:
	b		.L11444
.L11446:
#                     break;
# 
#               #ifdef OS_MODULE_MULTICORE
# 
#                 case OS_DISPATCH_APIRE:
#                     nextDispatchElement->Os_DispatchApiCall->Os_API_Func ( nextDispatchElement->Os_DispatchApiCall, currentProc );
	.d2line		348
.Llo85:
	lwz		r3,12(r31)		# nextDispatchElement=r31
	lwz		r0,12(r3)
	mtspr		ctr,r0
	mr		r4,r29		# currentProc=r4 currentProc=r29
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x18 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
#                     triggerCrosscore = nextDispatchElement->Os_DispatchApiCall->Os_API_ReturnValue == E_OK ? Os_true : Os_false;
	.d2line		349
.Llo86:
	lwz		r3,12(r31)		# nextDispatchElement=r31
.Llo102:
	lbz		r0,4(r3)
	se_cmpi		r0,0
	diab.li		r3,1
	isel		r3,r3,r24,2
.L11473:
	diab.li		r0,0
	isel		r24,r3,r0,2
.L11474:
	mr		r26,r24		# triggerCrosscore=r26 triggerCrosscore=r24
	b		.L11444
.L11447:
#                     break;
# 
#                 case OS_DISPATCH_INTERNALCROSS:
#                     nextDispatchElement->Os_DispatchApiInternal.Os_API_Func ( &nextDispatchElement->Os_DispatchApiInternal, NULL_PTR);
	.d2line		353
.Llo103:
	lwz		r0,28(r31)		# nextDispatchElement=r31
.Llo104:
	mtspr		ctr,r0
	diab.addi		r3,r31,16		# nextDispatchElement=r31
	diab.li		r4,0		# lockedOtherCoreId=r4
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x18 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
#                     triggerCrosscore = nextDispatchElement->Os_DispatchApiCall->Os_API_ReturnValue == E_OK ? Os_true : Os_false;
	.d2line		354
.Llo105:
	lwz		r3,12(r31)		# nextDispatchElement=r31
.Llo106:
	lbz		r0,4(r3)
	se_cmpi		r0,0
	diab.li		r3,1
	isel		r3,r3,r25,2
.L11475:
.Llo107:
	diab.li		r0,0
.Llo108:
	isel		r25,r3,r0,2
.L11476:
.Llo109:
	mr		r26,r25		# triggerCrosscore=r26 triggerCrosscore=r25
.Llo110:
	b		.L11444
.L11448:
#                     break;
# 
#                 case OS_DISPATCH_INTERNAL:
#                     /* Internally executed dispatch is not connected to a process. */
#                     nextDispatchElement->Os_DispatchApiInternal.Os_API_Func ( &nextDispatchElement->Os_DispatchApiInternal, NULL_PTR);
	.d2line		359
.Llo111:
	lwz		r0,28(r31)		# nextDispatchElement=r31
.Llo112:
	mtspr		ctr,r0
	diab.addi		r3,r31,16		# nextDispatchElement=r31
	diab.li		r4,0		# lockedOtherCoreId=r4
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x18 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
	b		.L11444
.L11450:
#                     break;
# 
#               #endif /* OS_MODULE_MULTICORE */
# 
#                 case OS_DISPATCH_JUSTSCHEDULE:
#                     /* Empty on purpose - nothing to do */
#                     break;
# 
#                 default:
#                     OS_FATAL_ERROR(E_OS_SYS_WRONG_DISPATCHKIND3);
	.d2line		369
	diab.li		r4,11		# lockedOtherCoreId=r4
.Llo98:
	lis		r3,(Os_Core_DynShared+12)@ha
	e_add16i		r3,r3,(Os_Core_DynShared+12)@l
	mfspr		r0,286
	rlwinm		r0,r0,0,16,31
	e_mulli		r0,r0,152
	stwx		r4,r3,r0		# lockedOtherCoreId=r4
	diab.li		r3,30
	bl		Os_ShutdownAllCores
.L11444:
#                     break;
#             }
# 
#       #if defined ( OS_MODULE_MULTICORE )
#           #ifdef OS_MODULE_MULTICORE
#             lockedOtherCoreId = nextDispatchElement->Os_DispatcherLockCoreId;
	.d2line		375
.Llo87:
	lhz		r27,4(r31)		# lockedOtherCoreId=r27 nextDispatchElement=r31
.Llo99:
	mr		r27,r27		# lockedOtherCoreId=r27 lockedOtherCoreId=r27
#           #endif /* OS_MODULE_MULTICORE */
#             nextDispatchElement = Os_Dispatch_DiscardAndGetNext();
	.d2line		377
	bl		Os_Dispatch_DiscardAndGetNext
	.d2line		379
	mr.		r31,r3		# nextDispatchElement=?a4 nextDispatchElement=r3
# 
#             if(NULL_PTR != nextDispatchElement)
	bc		1,2,.L11452	# eq
#             {
#                 currentProc = Os_SchedulerGetNextProc(coreSchedulerDyn);
	.d2line		381
.Llo88:
	mr		r3,r23		# coreSchedulerDyn=r3 coreSchedulerDyn=r23
	bl		Os_SchedulerGetNextProc
.Llo89:
	mr		r29,r3		# currentProc=r29 currentProc=r3
# 
#             #ifdef OS_MODULE_MULTICORE
#                 /* Only possible changes:
#                  *    SINGLE --> SINGLE: nothing to do
#                  *    SINGLE --> MULTI: have to lock another core too
#                  *    MULTI --> SINGLE: have to unlock another core
#                  */
#               #ifdef OS_CONFIG_INTERNAL_VALIDATIONS
#                 if(   !(   (OS_DISPATCH_SINGLE == lock)
	.d2line		390
	se_cmpi		r28,0		# lock=r28
	bc		0,2,.L11477	# ne
.Llo90:
	lwz		r3,12(r31)		# nextDispatchElement=r31
.Llo91:
	lwz		r0,8(r3)
	se_cmpi		r0,0
	bc		1,2,.L11453	# eq
.L11477:
	se_cmpi		r28,0		# lock=r28
	bc		0,2,.L11478	# ne
	lwz		r3,12(r31)		# nextDispatchElement=r31
	lwz		r0,8(r3)
	se_cmpi		r0,1
	bc		1,2,.L11453	# eq
.L11478:
	se_cmpi		r28,1		# lock=r28
	bc		0,2,.L11479	# ne
	lwz		r3,12(r31)		# nextDispatchElement=r31
	lwz		r0,8(r3)
	se_cmpi		r0,0
	bc		1,2,.L11453	# eq
.L11479:
#                         && (OS_DISPATCH_SINGLE == nextDispatchElement->Os_DispatchApiCall->Os_API_Lock))
#                    && !(   (OS_DISPATCH_SINGLE == lock)
#                         && (OS_DISPATCH_MULTI == nextDispatchElement->Os_DispatchApiCall->Os_API_Lock))
#                    && !(   (OS_DISPATCH_MULTI == lock)
#                         && (OS_DISPATCH_SINGLE == nextDispatchElement->Os_DispatchApiCall->Os_API_Lock))
#                    )
#                 {
#                     OS_FATAL_ERROR(E_OS_SYS_WRONG_DISPATCHKIND5);
	.d2line		398
	diab.li		r4,13		# lockedOtherCoreId=r4
	lis		r3,(Os_Core_DynShared+12)@ha
	e_add16i		r3,r3,(Os_Core_DynShared+12)@l
	mfspr		r0,286
	rlwinm		r0,r0,0,16,31
	e_mulli		r0,r0,152
	stwx		r4,r3,r0		# lockedOtherCoreId=r4
	diab.li		r3,30
	bl		Os_ShutdownAllCores
	b		.L11440
.L11453:
#                 }
#                 else
#               #endif /* OS_CONFIG_INTERNAL_VALIDATIONS */
#                 if(lock != nextDispatchElement->Os_DispatchApiCall->Os_API_Lock)
	.d2line		402
	lwz		r3,12(r31)		# nextDispatchElement=r31
	lwz		r0,8(r3)
	se_cmp		r0,r28		# lock=r28
	bc		1,2,.L11440	# eq
#                 {
#                     if(OS_DISPATCH_SINGLE == lock)
	.d2line		404
	se_cmpi		r28,0		# lock=r28
	bc		0,2,.L11457	# ne
#                     {
#                         /* SINGLE --> MULTI */
#                         lockedOtherCoreId = nextDispatchElement->Os_DispatcherLockCoreId;
	.d2line		407
.Llo94:
	lhz		r4,4(r31)		# lockedOtherCoreId=r4 nextDispatchElement=r31
	mr		r4,r4		# lockedOtherCoreId=r4 lockedOtherCoreId=r4
#                         Os_Core_LockOtherCore(coreId, lockedOtherCoreId);
	.d2line		408
	rlwinm		r3,r30,0,16,31		# coreId=r30
	rlwinm		r4,r4,0,16,31		# lockedOtherCoreId=r4 lockedOtherCoreId=r4
	bl		Os_Core_LockOtherCore
	b		.L11458
.L11457:
#                     }
#                     else
#                     {
#                         /* MULTI --> SINGLE */
#                         if(Os_true == triggerCrosscore)
	.d2line		413
	se_cmpi		r26,1		# triggerCrosscore=r26
	bc		0,2,.L11460	# ne
#                         {
#                             Os_PlatformTriggerCore(lockedOtherCoreId);
	.d2line		415
	rlwinm		r3,r27,0,16,31		# lockedOtherCoreId=r27
	bl		Os_PlatformTriggerCore
.L11460:
#                         }
#                         else
#                         {
#                             /* Do nothing on purpose. */
#                         }
# 
#                         Os_Core_UnlockOtherCore(coreId, lockedOtherCoreId);
	.d2line		422
	rlwinm		r3,r30,0,16,31		# coreId=r30
	rlwinm		r4,r27,0,16,31		# lockedOtherCoreId=r4 lockedOtherCoreId=r27
	bl		Os_Core_UnlockOtherCore
.L11458:
#                     }
# 
#                     lock = nextDispatchElement->Os_DispatchApiCall->Os_API_Lock;
	.d2line		425
.Llo100:
	lwz		r3,12(r31)		# nextDispatchElement=r31
	lwz		r28,8(r3)		# lock=r28
.Llo95:
	mr		r28,r28		# lock=r28 lock=r28
	b		.L11440
.L11452:
#                 }
#                 else
#                 {
#                     /* The acquired locks are the same that would be required to be locked
#                      * for the next dispatch event.
#                      */
#                 }
#             #endif /* OS_MODULE_MULTICORE */
#             }
#             else
#             {
#               #ifdef OS_MODULE_MULTICORE
#                 /* Release previous lock(s). */
#                 if(OS_DISPATCH_SINGLE == lock)
	.d2line		439
.Llo92:
	se_cmpi		r28,0		# lock=r28
	bc		0,2,.L11463	# ne
#                 {
#                     Os_Core_UnlockCore(coreId);
	.d2line		441
.Llo70:
	rlwinm		r3,r30,0,16,31		# coreId=r30
	bl		Os_Core_UnlockCore
	b		.L11439
.L11463:
#                 }
#                 else
#                 {
#                     /* OS_DISPATCH_MULTI */
#                     if(Os_true == triggerCrosscore)
	.d2line		446
	se_cmpi		r26,1		# triggerCrosscore=r26
	bc		0,2,.L11466	# ne
#                     {
#                         Os_PlatformTriggerCore(lockedOtherCoreId);
	.d2line		448
.Llo113:
	rlwinm		r3,r27,0,16,31		# lockedOtherCoreId=r27
	bl		Os_PlatformTriggerCore
.L11466:
#                     }
#                     else
#                     {
#                         /* Do nothing on purpose. */
#                     }
#                     Os_Core_UnlockCores(coreId, lockedOtherCoreId);
	.d2line		454
	rlwinm		r3,r30,0,16,31		# coreId=r30
	rlwinm		r4,r27,0,16,31		# lockedOtherCoreId=r4 lockedOtherCoreId=r27
	bl		Os_Core_UnlockCores
.L11439:
#                 }
#               #endif /* OS_MODULE_MULTICORE */
# 
#                 /* There is nothing more to dispatch */
#                 break;
#             }
#         } /* for(;;) */
#       #endif
#     } /* Dispatching API calls. */
# 
#     Os_SchedulerSchedule();
	.d2line		465
.Llo71:
	bl		Os_SchedulerSchedule
# 
# #ifdef OS_CONFIG_INTERRUPTIBLE_KERNEL_CONTEXT
#   #ifdef OS_MODULE_TIMINGPROTECTION
#     if(Os_true == nestAllowed)
#   #endif
#     {
#         OS_DISABLE_ALLINTR();
#         if ( FALSE == OS_GET_CORE_ISR_DYN_INIT(coreId)->Os_UserModePriorityChanged )
#         {
#             OS_SET_ISR_LEVEL( currentPrio, coreId);
#         }
#     }
# #endif /* OS_CONFIG_INTERRUPTIBLE_KERNEL_CONTEXT */
# 
#     if ( TRUE == OS_GET_CORE_ISR_DYN_INIT(coreId)->Os_UserModePriorityChanged )
	.d2line		480
	lis		r3,Os_Core_Stat@ha
	e_add16i		r3,r3,Os_Core_Stat@l
	rlwinm		r0,r30,0,16,31		# coreId=r30
	e_mulli		r0,r0,20
	lwzx		r3,r3,r0
	lbz		r0,4(r3)
	se_cmpi		r0,1
	bc		0,2,.L11468	# ne
#     {
#         OS_SET_ISR_LEVEL( OS_GET_ISR_LEVEL_UM(coreId), coreId);
	.d2line		482
.Llo72:
	lis		r4,Os_Core_Stat@ha		# lockedOtherCoreId=r4
.Llo101:
	e_add16i		r4,r4,Os_Core_Stat@l		# lockedOtherCoreId=r4 lockedOtherCoreId=r4
	rlwinm		r5,r30,0,16,31		# coreId=r30
	e_mulli		r5,r5,20
	lwzux		r3,r4,r5		# lockedOtherCoreId=r4
	lwz		r4,0(r3)		# lockedOtherCoreId=r4
	lis		r3,Os_IsrLevel@ha
	e_add16i		r3,r3,Os_IsrLevel@l
	rlwinm		r0,r30,2,14,29		# coreId=r30
	stwx		r4,r3,r0		# lockedOtherCoreId=r4
	lis		r4,Os_Core_Stat@ha		# lockedOtherCoreId=r4
	e_add16i		r4,r4,Os_Core_Stat@l		# lockedOtherCoreId=r4 lockedOtherCoreId=r4
	lwzx		r3,r4,r5		# lockedOtherCoreId=r4
	lwz		r6,0(r3)
	diab.li		r3,16
	e_add2is		r3,-1020
	stwx		r6,r3,r0
#         OS_GET_CORE_ISR_DYN_INIT(coreId)->Os_UserModePriorityChanged = FALSE;
	.d2line		483
	diab.li		r0,0
	lwzx		r3,r4,r5		# lockedOtherCoreId=r4
	stb		r0,4(r3)
.L11468:
	.section	.Os_TEXT,,c
.L11688:
#     }
# 
#     {
#         CONSTP2VAR(Os_IsrDynType, AUTOMATIC, OS_VAR) coreIsrDyn = OS_GET_CORE_ISR_DYN(coreId);
	.d2line		487
.Llo74:
	lis		r3,(Os_Core_Stat+4)@ha		# coreIsrDyn=r3
.Llo114:
	e_add16i		r3,r3,(Os_Core_Stat+4)@l		# coreIsrDyn=r3 coreIsrDyn=r3
.Llo75:
	rlwinm		r30,r30,0,16,31		# coreId=r30 coreId=r30
	e_mulli		r30,r30,20		# coreId=r30 coreId=r30
.Llo76:
	lwzx		r3,r3,r30		# coreIsrDyn=r3 coreIsrDyn=r3
	diab.addi		r31,r3,48		# coreIsrDyn=r31 coreIsrDyn=r3
# 
#         if(NULL_PTR != coreIsrDyn->Os_IsrNeedToClear)
	.d2line		489
	lwz		r0,52(r3)		# coreIsrDyn=r3
	se_cmpi		r0,0
	bc		1,2,.L11472	# eq
#         {
#             Os_PlatformIsrEnd(coreIsrDyn->Os_IsrNeedToClear);
	.d2line		491
.Llo115:
	lwz		r3,4(r31)		# coreIsrDyn=r3 coreIsrDyn=r31
.Llo116:
	bl		Os_PlatformIsrEnd
#             coreIsrDyn->Os_IsrNeedToClear = NULL_PTR;
	.d2line		492
	diab.li		r0,0
	stw		r0,4(r31)		# coreIsrDyn=r31
.L11472:
	.section	.Os_TEXT,,c
.L11689:
#         }
#         else
#         {
#             /* Do nothing nothing on purpose. */
#         }
#     }
# 
#   #ifdef OS_CONFIG_STACKMONITORING
#     Os_StackMonitorKernel();
	.d2line		501
.Llo117:
	bl		Os_StackMonitorKernel
#   #endif
# 
#    return coreSchedulerDyn->Os_SchedulerScheduleAction;
	.d2line		504
	lwz		r3,8(r23)		# coreIsrDyn=r3 coreSchedulerDyn=r23
# }
	.d2line		505
	.d2epilogue_begin
	lmw		r23,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	2,10
.Llo78:
	lwz		r0,68(r1)
	mtspr		lr,r0
	diab.addi		r1,r1,64		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11666:
	.type		Os_Dispatch,@function
	.size		Os_Dispatch,.-Os_Dispatch
# Number of nodes = 469

# Allocations for Os_Dispatch
#	?a4		nextDispatchElement
#	?a5		$$2353
#	?a6		$$2352
#	?a7		coreId
#	?a8		coreSchedulerDyn
#	?a9		currentProc
#	?a10		lock
#	?a11		lockedOtherCoreId
#	?a12		triggerCrosscore
#	?a13		coreIsrDyn
# FUNC(Os_ScheduleType, OS_CODE) Os_Dispatch_Interrupt(VAR(ISRType, AUTOMATIC) ISRDispatchParam)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         169,32
#$$ld
.L11700:

#$$bf	Os_Dispatch_Interrupt,interprocedural,rasave,nostackparams
	.globl		Os_Dispatch_Interrupt
	.d2_cfa_start __cie
Os_Dispatch_Interrupt:
.Llo118:
	stwu		r1,-80(r1)		
	.d2_cfa_def_cfa_offset	80
	mfspr		r0,lr
	stmw		r30,72(r1)		# offset r1+72  0x48
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,84(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# ISRDispatchParam=r3 ISRDispatchParam=r3
	.d2prologue_end
# {
#     VAR   (Os_ScheduleType,        AUTOMATIC)  action;
#     VAR   (Os_DispatchElementType, AUTOMATIC)  dispatchelement;
# 
#   #if (   defined ( OS_CONFIG_INTERRUPTIBLE_KERNEL_CONTEXT) \
#        && defined ( OS_MODULE_TIMINGPROTECTION )                )
#     VAR   (Os_BoolType,            AUTOMATIC)  nestAllowed = Os_true;
#   #endif
#   #if defined(OS_MODULE_MULTICORE) || defined(OS_CONFIG_INTERNAL_VALIDATIONS)
#     CONST (CoreIdType,             AUTOMATIC)  coreId = OS_GETCOREID();
	.d2line		179
	mfspr		r31,286
.Llo129:
	mr		r31,r31		# coreId=r31 coreId=r31
#   #endif
# 
#   #ifdef OS_CONFIG_RTM_KERNEL
#    CONST   (RTMIsrType,        AUTOMATIC)  isrType = (RTMIsrType)OS_ISR_GETTYPE(ISRDispatchParam);
#    CONST   (ISRType,           AUTOMATIC)  isrId   = OS_ISR_GETID(ISRDispatchParam);
#    OS_CALL_RTM_KERNEL_MODE_INTERRUPT_ENTER(isrType, isrId, OS_GETCOREID());
#   #endif /* OS_CONFIG_RTM_KERNEL */
# 
#     dispatchelement.Os_DispatchIsrId = ISRDispatchParam;
	.d2line		188
	stw		r3,16(r1)		# ISRDispatchParam=r3
# 
#   #ifdef OS_MODULE_MULTICORE
#     if(OS_ISR_OSINTERNAL_CHECK(ISRDispatchParam))
	.d2line		191
	se_btsti		r3,16		# ISRDispatchParam=r3
	bc		1,2,.L11421	# eq
#     {
#         dispatchelement.Os_DispatchKind = OS_DISPATCH_JUSTSCHEDULE;
	.d2line		193
.Llo119:
	diab.li		r0,0
	stw		r0,8(r1)
# 
#         Os_PlatformTriggerClear ();
	.d2line		195
	bl		Os_PlatformTriggerClear
	b		.L11422
.L11421:
#     }
#     else
#   #endif /* OS_MODULE_MULTICORE */
# 
#   #if (   defined ( OS_CONFIG_INTERRUPTIBLE_KERNEL_CONTEXT ) \
#        && defined ( OS_MODULE_TIMINGPROTECTION )                )
#     if(OS_ISR_TIMER_CHECK(ISRDispatchParam))
#     {
#         CONST       (Os_TimerType,           AUTOMATIC)           timerId          = OS_ISR_TIMER_GET(ISRDispatchParam);
#         CONSTP2CONST(Os_TimerConfType,       AUTOMATIC, OS_CONST) timerCounterConf = &Os_TimerConf[timerId];
#         nestAllowed = timerCounterConf->Os_IsTPTimer == Os_true ? Os_false : Os_true;
# 
#         dispatchelement.Os_DispatchKind = OS_DISPATCH_INTERRUPT;
#     }
#     else
#   #endif
#     {
#         dispatchelement.Os_DispatchKind = OS_DISPATCH_INTERRUPT;
	.d2line		213
	diab.li		r0,2
	stw		r0,8(r1)
.L11422:
#     }
# 
#   #ifdef OS_MODULE_MULTICORE
#     dispatchelement.Os_DispatchApiCall = (Os_APICallType *) &InterruptCall;
	.d2line		217
	lis		r3,InterruptCall@ha		# ISRDispatchParam=r3
.Llo120:
	e_add16i		r3,r3,InterruptCall@l		# ISRDispatchParam=r3 ISRDispatchParam=r3
	stw		r3,20(r1)		# ISRDispatchParam=r3
#   #endif /* OS_MODULE_MULTICORE */
# 
#     action = OS_CALLDISPATCH (&dispatchelement, nestAllowed);
	.d2line		220
	diab.addi		r3,r1,8		# ISRDispatchParam=r3
.Llo121:
	bl		Os_Dispatch
.Llo126:
	mr		r30,r3		# action=r30 action=r3
# 
#   #ifdef OS_CONFIG_INTERNAL_VALIDATIONS
#     if( (action != Os_Idle) && (OS_GET_CORE_SCHEDULER_DYN(coreId)->Os_CurrentContext == NULL_PTR) )
	.d2line		223
	se_cmpi		r30,4		# action=r30
	bc		1,2,.L11423	# eq
.Llo127:
	lis		r3,(Os_Core_Stat+4)@ha		# ISRDispatchParam=r3
.Llo122:
	e_add16i		r3,r3,(Os_Core_Stat+4)@l		# ISRDispatchParam=r3 ISRDispatchParam=r3
.Llo130:
	rlwinm		r31,r31,0,16,31		# coreId=r31 coreId=r31
	e_mulli		r31,r31,20		# coreId=r31 coreId=r31
.Llo131:
	lwzx		r3,r3,r31		# ISRDispatchParam=r3 ISRDispatchParam=r3
	lwz		r0,0(r3)		# ISRDispatchParam=r3
	se_cmpi		r0,0
	bc		0,2,.L11423	# ne
#     {
#         OS_FATAL_ERROR(E_OS_SYS_SCHEDULER_ERROR);
	.d2line		225
.Llo123:
	diab.li		r4,42
	lis		r3,(Os_Core_DynShared+12)@ha		# ISRDispatchParam=r3
.Llo124:
	e_add16i		r3,r3,(Os_Core_DynShared+12)@l		# ISRDispatchParam=r3 ISRDispatchParam=r3
	mfspr		r0,286
	rlwinm		r0,r0,0,16,31
	e_mulli		r0,r0,152
	stwx		r4,r3,r0		# ISRDispatchParam=r3
	diab.li		r3,30		# ISRDispatchParam=r3
.Llo125:
	bl		Os_ShutdownAllCores
.L11423:
#     }
#   #endif /* OS_CONFIG_INTERNAL_VALIDATIONS */
# 
#     OS_CALL_RTM_KERNEL_MODE_INTERRUPT_EXIT(isrType, isrId, OS_GETCOREID());
# 
#     return action;
	.d2line		231
	mr		r3,r30		# action=r3 action=r30
# }
	.d2line		232
	.d2epilogue_begin
	lmw		r30,72(r1)		# offset r1+72  0x48
	.d2_cfa_restore_list	3,10
.Llo128:
	lwz		r0,84(r1)
	mtspr		lr,r0
	diab.addi		r1,r1,80		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11701:
	.type		Os_Dispatch_Interrupt,@function
	.size		Os_Dispatch_Interrupt,.-Os_Dispatch_Interrupt
# Number of nodes = 85

# Allocations for Os_Dispatch_Interrupt
#	?a4		ISRDispatchParam
#	?a5		action
#	SP,8		dispatchelement
#	?a6		coreId
# FUNC(Os_ScheduleType, OS_CODE) Os_Dispatch_APICall(P2VAR(Os_APICallType, AUTOMATIC, OS_VAR) Os_APICall)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         236,32
#$$ld
.L11714:

#$$bf	Os_Dispatch_APICall,interprocedural,rasave,nostackparams
	.globl		Os_Dispatch_APICall
	.d2_cfa_start __cie
Os_Dispatch_APICall:
.Llo132:
	stwu		r1,-64(r1)		
	.d2_cfa_def_cfa_offset	64
	mfspr		r0,lr
	stw		r0,68(r1)		# Os_APICall=r0
	.d2_cfa_offset    108,-1
	mr.		r0,r3		# Os_APICall=?a4 Os_APICall=r3
	.d2prologue_end
# {
#     VAR   (Os_ScheduleType,        AUTOMATIC)  action;
#     VAR   (Os_DispatchElementType, AUTOMATIC)  dispatchelement;
# 
#     OS_CALL_RTM_KERNEL_MODE_API_ENTER(OS_GETCOREID());
# 
#     dispatchelement.Os_DispatchApiCall = Os_APICall;
	.d2line		243
	stw		r0,20(r1)		# Os_APICall=r0
#     dispatchelement.Os_DispatchKind    = OS_DISPATCH_API;
	.d2line		244
	diab.li		r0,1		# Os_APICall=r0
	.d2line		248
	stw		r0,8(r1)		# Os_APICall=r0
# 
#   #ifdef OS_CONFIG_INTERNAL_VALIDATIONS
# 
#     if (    ( NULL_PTR == dispatchelement.Os_DispatchApiCall )
	bc		1,2,.L11431	# eq
	lwz		r3,20(r1)
.Llo133:
	lwz		r0,0(r3)		# Os_APICall=r0
.Llo134:
	e_lis		r3,4660
	e_or2i		r3,22136
	se_cmpl		r0,r3		# Os_APICall=r0
	bc		1,2,.L11429	# eq
.L11431:
#          || ( OS_API_MAGIC != dispatchelement.Os_DispatchApiCall->Os_API_Magic ) )
#     {
#         OS_FATAL_ERROR ( E_OS_SYS_WRONG_APIMAGIC );
	.d2line		251
.Llo135:
	diab.li		r4,8
.Llo136:
	lis		r3,(Os_Core_DynShared+12)@ha
.Llo137:
	e_add16i		r3,r3,(Os_Core_DynShared+12)@l
	mfspr		r0,286		# Os_APICall=r0
.Llo138:
	rlwinm		r0,r0,0,16,31		# Os_APICall=r0 Os_APICall=r0
	e_mulli		r0,r0,152		# Os_APICall=r0 Os_APICall=r0
.Llo139:
	stwx		r4,r3,r0
	diab.li		r3,30
	bl		Os_ShutdownAllCores
.L11429:
#     }
# 
#   #endif
# 
#     action = OS_CALLDISPATCH ( &dispatchelement, Os_true);
	.d2line		256
	diab.addi		r3,r1,8
	bl		Os_Dispatch
# 
#     OS_CALL_RTM_KERNEL_MODE_API_EXIT ( OS_GETCOREID() );
# 
#     return action;
	.d2line		260
.Llo140:
	mr		r4,r3		# action=r4 action=r3
# }
	.d2line		261
	.d2epilogue_begin
	lwz		r0,68(r1)		# Os_APICall=r0
	mtspr		lr,r0		# Os_APICall=lr
	diab.addi		r1,r1,64		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo141:
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11715:
	.type		Os_Dispatch_APICall,@function
	.size		Os_Dispatch_APICall,.-Os_Dispatch_APICall
# Number of nodes = 56

# Allocations for Os_Dispatch_APICall
#	?a4		Os_APICall
#	?a5		action
#	SP,8		dispatchelement
# FUNC (P2VAR(Os_DispatchElementType,AUTOMATIC,OS_VAR), OS_CODE) Os_Dispatcher_Alloc_Core(CONST(CoreIdType,AUTOMATIC) coreID)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         509,64
#$$ld
.L11723:

#$$bf	Os_Dispatcher_Alloc_Core,interprocedural,rasave,nostackparams
	.globl		Os_Dispatcher_Alloc_Core
	.d2_cfa_start __cie
Os_Dispatcher_Alloc_Core:
.Llo142:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)		# coreID=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# coreID=r0 coreID=r3
	.d2prologue_end
# {
#     P2VAR(Os_DispatchElementType,AUTOMATIC,OS_VAR) freeElement =
	.d2line		511
.Llo143:
	lis		r3,(Os_Core_Stat+8)@ha
.Llo144:
	e_add16i		r3,r3,(Os_Core_Stat+8)@l
	rlwinm		r5,r0,0,16,31		# coreID=r0
	e_mulli		r4,r5,20
	lwzx		r31,r3,r4
	lis		r3,Os_Core_DynShared@ha
	e_add16i		r3,r3,Os_Core_DynShared@l
	e_mulli		r5,r5,152
	lwzux		r4,r3,r5
	e_mulli		r4,r4,56
	se_add		r4,r31
.Llo150:
	mr		r31,r4		# freeElement=r31 freeElement=r4
#             &(OS_GET_CORE_STAT(coreID)->Os_DispatchElement[OS_GET_CORE_DISPATCHER_DYN(coreID)->Os_DHead]);
# 
#     OS_GET_CORE_DISPATCHER_DYN(coreID)->Os_DHead++;
	.d2line		514
	lis		r3,Os_Core_DynShared@ha
	e_add16i		r3,r3,Os_Core_DynShared@l
	lwzx		r4,r3,r5
.Llo151:
	se_addi		r4,1
	stwx		r4,r3,r5
# 
#     if(OS_GET_CORE_DISPATCHER_DYN(coreID)->Os_DHead == Os_DispatcherElementsSize[coreID])
	.d2line		516
	lwzx		r5,r3,r5
	lis		r3,Os_DispatcherElementsSize@ha
	e_add16i		r3,r3,Os_DispatcherElementsSize@l
	rlwinm		r4,r0,2,14,29		# coreID=r0
	lwzx		r3,r3,r4
	se_cmpl		r5,r3
	bc		0,2,.L11508	# ne
#     {
#         OS_GET_CORE_DISPATCHER_DYN(coreID)->Os_DHead = (uint32)0U;
	.d2line		518
.Llo152:
	diab.li		r5,0
	lis		r3,Os_Core_DynShared@ha
	e_add16i		r3,r3,Os_Core_DynShared@l
	rlwinm		r4,r0,0,16,31		# coreID=r0
	e_mulli		r4,r4,152
	stwx		r5,r3,r4
.L11508:
#     }
#     if(OS_GET_CORE_DISPATCHER_DYN(coreID)->Os_DTail ==
	.d2line		520
.Llo145:
	lis		r3,(Os_Core_DynShared+4)@ha
	e_add16i		r3,r3,(Os_Core_DynShared+4)@l
.Llo146:
	rlwinm		r0,r0,0,16,31		# coreID=r0 coreID=r0
	e_mulli		r0,r0,152		# coreID=r0 coreID=r0
	lwzux		r4,r3,r0
	lis		r3,Os_Core_DynShared@ha
	e_add16i		r3,r3,Os_Core_DynShared@l
	lwzx		r0,r3,r0		# coreID=r0
	se_cmpl		r4,r0		# coreID=r0
	bc		0,2,.L11509	# ne
#             OS_GET_CORE_DISPATCHER_DYN(coreID)->Os_DHead )
#     {
#        OS_FATAL_ERROR(E_OS_SYS_DISPATCHER_OVERFLOW);
	.d2line		523
.Llo147:
	diab.li		r4,14
	lis		r3,(Os_Core_DynShared+12)@ha
	e_add16i		r3,r3,(Os_Core_DynShared+12)@l
	mfspr		r0,286		# coreID=r0
.Llo148:
	rlwinm		r0,r0,0,16,31		# coreID=r0 coreID=r0
	e_mulli		r0,r0,152		# coreID=r0 coreID=r0
.Llo149:
	stwx		r4,r3,r0
	diab.li		r3,30
	bl		Os_ShutdownAllCores
.L11509:
#     }
#     return freeElement;
	.d2line		525
	mr		r3,r31		# freeElement=r3 freeElement=r31
# }
	.d2line		526
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo153:
	lwz		r0,36(r1)		# coreID=r0
	mtspr		lr,r0		# coreID=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11724:
	.type		Os_Dispatcher_Alloc_Core,@function
	.size		Os_Dispatcher_Alloc_Core,.-Os_Dispatcher_Alloc_Core
# Number of nodes = 100

# Allocations for Os_Dispatcher_Alloc_Core
#	?a4		coreID
#	?a5		$$2354
#	?a6		freeElement

# Allocations for module
	.section	.text_vle
	.0byte		.L11729
	.section	.text_vle
	.0byte		.L11733
	.section	.Os_BSS,,b
	.0byte		.L11740
	.section	.text_vle
	.0byte		.L11745
	.section	.Os_BSS,,b
	.0byte		.L11750
	.section	.Os_CONST,,r
	.0byte		.L11755
	.section	.Os_CONST,,r
	.type		InterruptCall,@object
	.size		InterruptCall,40
	.align		3
InterruptCall:
	.long		0
	.byte		0
	.space		3
	.long		0
	.long		0
	.long		0
	.space		20
	.section	.text_vle
#$$ld
.L5:
.L12213:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_Types.h"
.L12209:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ApplicationApiTypes.h"
.L12207:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ScheduleTableApiTypes.h"
.L12205:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_TaskApiTypes.h"
.L12203:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_SpinlockApiTypes.h"
.L12189:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\PowerPC\\WindRiver\\AUTOSAR\\ar422\\MemMap.h"
.L12187:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_InternalTypes.h"
.L12170:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ErrorApiTypes.h"
.L12150:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ExceptionApiTypes.h"
.L12105:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_ApplicationCfgTypes.h"
.L12059:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_TaskCfgTypes.h"
.L12056:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_HookApiTypes.h"
.L12031:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_TrustedFunctionCfgTypes.h"
.L11793:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_ApiDispatchCfgTypes.h"
.L11756:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\dispatcher\\Os_Dispatch.c"
.L11751:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\ssc\\inc\\Os_Arch_Intr.h"
.L11746:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_ApiDispatch.h"
.L11734:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_CoreCfgTypes.h"
.L11730:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_SchedulerCfgTypes.h"
	.d2_line_end
	.section	.Os_TEXT,,c
#$$ld
.L11521:
.L11625:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\dispatcher\\Os_Dispatch.c"
.L11529:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_Scheduler.h"
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
	.uleb128	8
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
	.uleb128	9
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
	.uleb128	10
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
	.uleb128	11
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
	.uleb128	12
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
	.uleb128	13
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
	.uleb128	14
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
	.uleb128	15
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
	.uleb128	16
	.uleb128	40
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	28
	.uleb128	13
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	17
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
	.uleb128	18
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	19
	.uleb128	38
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	20
	.uleb128	15
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	21
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
	.uleb128	22
	.uleb128	21
	.byte		0x1
	.uleb128	1
	.uleb128	16
	.uleb128	39
	.uleb128	12
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	23
	.uleb128	5
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	24
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	25
	.uleb128	33
	.byte		0x0
	.uleb128	47
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	26
	.uleb128	21
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	39
	.uleb128	12
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	27
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
	.uleb128	28
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\dispatcher\\Os_Dispatch.c"
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
.L11518:
	.4byte		.L11519-.L11517
.L11517:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L11523-.L11518
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\dispatcher\\Os_Dispatch.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L11520
	.4byte		.L11521
	.4byte		.L11524
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11534:
	.sleb128	2
	.4byte		.L11526-.L11518
	.byte		"Os_SchedulerGetNextProc"
	.byte		0
	.4byte		.L11529
	.uleb128	132
	.uleb128	75
	.4byte		.L11530
	.byte		0x1
	.4byte		.L11527
	.4byte		.L11528
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L11529
	.uleb128	132
	.uleb128	75
	.byte		"coreSchedulerDyn"
	.byte		0
	.4byte		.L11535
	.4byte		.L11540
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11541:
	.sleb128	4
	.4byte		.L11529
	.uleb128	135
	.uleb128	67
	.byte		"queueElement"
	.byte		0
	.4byte		.L11542
	.4byte		.L11544
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11526:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11549:
	.sleb128	5
	.4byte		.L11546-.L11518
	.byte		"Os_SchedulerSwitchApp"
	.byte		0
	.4byte		.L11529
	.uleb128	154
	.uleb128	34
	.byte		0x1
	.4byte		.L11547
	.4byte		.L11548
	.sleb128	3
	.4byte		.L11529
	.uleb128	154
	.uleb128	34
	.byte		"app"
	.byte		0
	.4byte		.L11550
	.4byte		.L11555
.L11556:
	.sleb128	4
	.4byte		.L11529
	.uleb128	156
	.uleb128	56
	.byte		"coreDynInit"
	.byte		0
	.4byte		.L11557
	.4byte		.L11561
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11546:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11566:
	.sleb128	5
	.4byte		.L11563-.L11518
	.byte		"Os_SchedulerSchedule"
	.byte		0
	.4byte		.L11529
	.uleb128	185
	.uleb128	34
	.byte		0x1
	.4byte		.L11564
	.4byte		.L11565
.L11567:
	.sleb128	4
	.4byte		.L11529
	.uleb128	187
	.uleb128	59
	.byte		"coreID"
	.byte		0
	.4byte		.L11568
	.4byte		.L11572
.L11573:
	.sleb128	4
	.4byte		.L11529
	.uleb128	189
	.uleb128	56
	.byte		"coreDynInit"
	.byte		0
	.4byte		.L11557
	.4byte		.L11574
.L11575:
	.sleb128	4
	.4byte		.L11529
	.uleb128	191
	.uleb128	59
	.byte		"coreSchedulerDyn"
	.byte		0
	.4byte		.L11576
	.4byte		.L11578
.L11579:
	.sleb128	4
	.4byte		.L11529
	.uleb128	192
	.uleb128	61
	.byte		"coreSchedulerDynInit"
	.byte		0
	.4byte		.L11580
	.4byte		.L11584
.L11585:
	.sleb128	4
	.4byte		.L11529
	.uleb128	193
	.uleb128	59
	.byte		"prevProc"
	.byte		0
	.4byte		.L11530
	.4byte		.L11586
.L11587:
	.sleb128	4
	.4byte		.L11529
	.uleb128	194
	.uleb128	59
	.byte		"nextProc"
	.byte		0
	.4byte		.L11530
	.4byte		.L11588
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	6
	.4byte		.L11592
	.4byte		.L11589
	.4byte		.L11590
.L11593:
	.sleb128	4
	.4byte		.L11529
	.uleb128	257
	.uleb128	55
	.byte		"lastScheduledProc"
	.byte		0
	.4byte		.L11530
	.4byte		.L11594
.L11595:
	.sleb128	4
	.4byte		.L11529
	.uleb128	261
	.uleb128	35
	.byte		"switchAppNeeded"
	.byte		0
	.4byte		.L11596
	.4byte		.L11599
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11592:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	6
	.4byte		.L11603
	.4byte		.L11600
	.4byte		.L11601
.L11604:
	.sleb128	4
	.4byte		.L11529
	.uleb128	391
	.uleb128	43
	.byte		"currentPriority"
	.byte		0
	.4byte		.L11605
	.4byte		.L11609
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	6
	.4byte		.L11613
	.4byte		.L11610
	.4byte		.L11611
.L11614:
	.sleb128	4
	.4byte		.L11529
	.uleb128	395
	.uleb128	79
	.byte		"coreSchedulerStruct"
	.byte		0
	.4byte		.L11615
	.4byte		.L11620
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11613:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11603:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11563:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11626:
	.sleb128	7
	.4byte		.L11622-.L11518
	.byte		"Os_Dispatch_Init"
	.byte		0
	.4byte		.L11625
	.uleb128	104
	.uleb128	20
	.byte		0x1
	.byte		0x1
	.4byte		.L11623
	.4byte		.L11624
	.sleb128	3
	.4byte		.L11625
	.uleb128	104
	.uleb128	20
	.byte		"coreID"
	.byte		0
	.4byte		.L11568
	.4byte		.L11627
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11622:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11632:
	.sleb128	7
	.4byte		.L11629-.L11518
	.byte		"Os_Dispatch_Idle"
	.byte		0
	.4byte		.L11625
	.uleb128	120
	.uleb128	20
	.byte		0x1
	.byte		0x1
	.4byte		.L11630
	.4byte		.L11631
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11629:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11637:
	.sleb128	7
	.4byte		.L11634-.L11518
	.byte		"Os_Dispatch_LightSyscall"
	.byte		0
	.4byte		.L11625
	.uleb128	131
	.uleb128	20
	.byte		0x1
	.byte		0x1
	.4byte		.L11635
	.4byte		.L11636
	.sleb128	3
	.4byte		.L11625
	.uleb128	131
	.uleb128	20
	.byte		"Os_APICall"
	.byte		0
	.4byte		.L11638
	.4byte		.L11641
	.sleb128	3
	.4byte		.L11625
	.uleb128	131
	.uleb128	20
	.byte		"Os_APIEntryPoint"
	.byte		0
	.4byte		.L11642
	.4byte		.L11647
.L11648:
	.sleb128	4
	.4byte		.L11625
	.uleb128	135
	.uleb128	42
	.byte		"coreId"
	.byte		0
	.4byte		.L11569
	.4byte		.L11649
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11634:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11657:
	.sleb128	2
	.4byte		.L11651-.L11518
	.byte		"Os_Dispatch_DiscardAndGetNext"
	.byte		0
	.4byte		.L11625
	.uleb128	539
	.uleb128	75
	.4byte		.L11654
	.byte		0x1
	.4byte		.L11652
	.4byte		.L11653
.L11658:
	.sleb128	4
	.4byte		.L11625
	.uleb128	541
	.uleb128	56
	.byte		"next"
	.byte		0
	.4byte		.L11654
	.4byte		.L11659
.L11660:
	.sleb128	4
	.4byte		.L11625
	.uleb128	542
	.uleb128	56
	.byte		"coreId"
	.byte		0
	.4byte		.L11568
	.4byte		.L11661
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11651:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11669:
	.sleb128	2
	.4byte		.L11664-.L11518
	.byte		"Os_Dispatch"
	.byte		0
	.4byte		.L11625
	.uleb128	264
	.uleb128	45
	.4byte		.L11667
	.byte		0x1
	.4byte		.L11665
	.4byte		.L11666
	.sleb128	3
	.4byte		.L11625
	.uleb128	264
	.uleb128	45
	.byte		"nextDispatchElement"
	.byte		0
	.4byte		.L11654
	.4byte		.L11670
.L11671:
	.sleb128	4
	.4byte		.L11625
	.uleb128	274
	.uleb128	58
	.byte		"coreId"
	.byte		0
	.4byte		.L11568
	.4byte		.L11672
.L11673:
	.sleb128	4
	.4byte		.L11625
	.uleb128	275
	.uleb128	58
	.byte		"coreSchedulerDyn"
	.byte		0
	.4byte		.L11576
	.4byte		.L11674
.L11675:
	.sleb128	4
	.4byte		.L11625
	.uleb128	277
	.uleb128	56
	.byte		"currentProc"
	.byte		0
	.4byte		.L11530
	.4byte		.L11676
.L11677:
	.sleb128	4
	.4byte		.L11625
	.uleb128	284
	.uleb128	37
	.byte		"lock"
	.byte		0
	.4byte		.L11678
	.4byte		.L11680
.L11681:
	.sleb128	4
	.4byte		.L11625
	.uleb128	285
	.uleb128	37
	.byte		"lockedOtherCoreId"
	.byte		0
	.4byte		.L11569
	.4byte		.L11682
.L11683:
	.sleb128	4
	.4byte		.L11625
	.uleb128	286
	.uleb128	37
	.byte		"triggerCrosscore"
	.byte		0
	.4byte		.L11684
	.4byte		.L11686
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	6
	.4byte		.L11691
	.4byte		.L11688
	.4byte		.L11689
.L11692:
	.sleb128	4
	.4byte		.L11625
	.uleb128	487
	.uleb128	54
	.byte		"coreIsrDyn"
	.byte		0
	.4byte		.L11693
	.4byte		.L11697
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11691:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11664:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11702:
	.sleb128	8
	.4byte		.L11699-.L11518
	.byte		"Os_Dispatch_Interrupt"
	.byte		0
	.4byte		.L11625
	.uleb128	169
	.uleb128	32
	.4byte		.L11667
	.byte		0x1
	.byte		0x1
	.4byte		.L11700
	.4byte		.L11701
	.sleb128	3
	.4byte		.L11625
	.uleb128	169
	.uleb128	32
	.byte		"ISRDispatchParam"
	.byte		0
	.4byte		.L11703
	.4byte		.L11706
.L11707:
	.sleb128	4
	.4byte		.L11625
	.uleb128	171
	.uleb128	48
	.byte		"action"
	.byte		0
	.4byte		.L11667
	.4byte		.L11708
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11709:
	.sleb128	9
	.4byte		.L11625
	.uleb128	172
	.uleb128	48
	.byte		"dispatchelement"
	.byte		0
	.4byte		.L11655
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
.L11710:
	.sleb128	4
	.4byte		.L11625
	.uleb128	179
	.uleb128	48
	.byte		"coreId"
	.byte		0
	.4byte		.L11568
	.4byte		.L11711
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11699:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11716:
	.sleb128	8
	.4byte		.L11713-.L11518
	.byte		"Os_Dispatch_APICall"
	.byte		0
	.4byte		.L11625
	.uleb128	236
	.uleb128	32
	.4byte		.L11667
	.byte		0x1
	.byte		0x1
	.4byte		.L11714
	.4byte		.L11715
	.sleb128	3
	.4byte		.L11625
	.uleb128	236
	.uleb128	32
	.byte		"Os_APICall"
	.byte		0
	.4byte		.L11638
	.4byte		.L11717
.L11718:
	.sleb128	4
	.4byte		.L11625
	.uleb128	238
	.uleb128	48
	.byte		"action"
	.byte		0
	.4byte		.L11667
	.4byte		.L11719
.L11720:
	.sleb128	9
	.4byte		.L11625
	.uleb128	239
	.uleb128	48
	.byte		"dispatchelement"
	.byte		0
	.4byte		.L11655
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11713:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11725:
	.sleb128	8
	.4byte		.L11722-.L11518
	.byte		"Os_Dispatcher_Alloc_Core"
	.byte		0
	.4byte		.L11625
	.uleb128	509
	.uleb128	64
	.4byte		.L11654
	.byte		0x1
	.byte		0x1
	.4byte		.L11723
	.4byte		.L11724
	.sleb128	3
	.4byte		.L11625
	.uleb128	509
	.uleb128	64
	.byte		"coreID"
	.byte		0
	.4byte		.L11568
	.4byte		.L11726
.L11727:
	.sleb128	4
	.4byte		.L11625
	.uleb128	511
	.uleb128	52
	.byte		"freeElement"
	.byte		0
	.4byte		.L11654
	.4byte		.L11728
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11722:
	.section	.debug_info,,n
.L11729:
	.sleb128	10
	.byte		0x1
	.byte		0x1
	.4byte		.L11730
	.uleb128	111
	.uleb128	56
	.byte		"Os_SchedulerQueueStruct"
	.byte		0
	.4byte		.L11731
	.section	.debug_info,,n
.L11733:
	.sleb128	10
	.byte		0x1
	.byte		0x1
	.4byte		.L11734
	.uleb128	169
	.uleb128	42
	.byte		"Os_Core_Stat"
	.byte		0
	.4byte		.L11735
	.section	.debug_info,,n
.L11740:
	.sleb128	10
	.byte		0x1
	.byte		0x1
	.4byte		.L11734
	.uleb128	181
	.uleb128	45
	.byte		"Os_Core_DynShared"
	.byte		0
	.4byte		.L11741
	.section	.debug_info,,n
.L11745:
	.sleb128	10
	.byte		0x1
	.byte		0x1
	.4byte		.L11746
	.uleb128	147
	.uleb128	32
	.byte		"Os_DispatcherElementsSize"
	.byte		0
	.4byte		.L11747
	.section	.debug_info,,n
.L11750:
	.sleb128	10
	.byte		0x1
	.byte		0x1
	.4byte		.L11751
	.uleb128	63
	.uleb128	40
	.byte		"Os_IsrLevel"
	.byte		0
	.4byte		.L11752
	.section	.debug_info,,n
.L11755:
	.sleb128	9
	.4byte		.L11756
	.uleb128	44
	.uleb128	41
	.byte		"InterruptCall"
	.byte		0
	.4byte		.L11757
	.sleb128	5
	.byte		0x3
	.4byte		InterruptCall
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11739:
	.sleb128	11
	.4byte		.L11730
	.uleb128	69
	.uleb128	1
	.4byte		.L11758-.L2
	.uleb128	20
	.section	.debug_info,,n
.L786:
	.sleb128	12
	.byte		"Os_Core_DynInit"
	.byte		0
	.4byte		.L11557
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L787:
	.sleb128	12
	.byte		"Os_Core_Dyn"
	.byte		0
	.4byte		.L11759
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L788:
	.sleb128	12
	.byte		"Os_DispatchElement"
	.byte		0
	.4byte		.L11763
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L789:
	.sleb128	12
	.byte		"Os_PrepareContextFunction"
	.byte		0
	.4byte		.L11764
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L790:
	.sleb128	12
	.byte		"Os_GetStackPointerFunction"
	.byte		0
	.4byte		.L11770
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11758:
.L11560:
	.sleb128	11
	.4byte		.L11730
	.uleb128	69
	.uleb128	1
	.4byte		.L11777-.L2
	.uleb128	36
.L783:
	.sleb128	12
	.byte		"Os_IsrDynInit"
	.byte		0
	.4byte		.L11778
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L784:
	.sleb128	12
	.byte		"Os_SchedulerDynInit"
	.byte		0
	.4byte		.L11582
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L785:
	.sleb128	12
	.byte		"Os_CurrentApp"
	.byte		0
	.4byte		.L11551
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
	.sleb128	0
.L11777:
.L11744:
	.sleb128	11
	.4byte		.L11730
	.uleb128	69
	.uleb128	1
	.4byte		.L11780-.L2
	.uleb128	152
.L776:
	.sleb128	12
	.byte		"Os_Dispatcher"
	.byte		0
	.4byte		.L11781
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L777:
	.sleb128	12
	.byte		"Os_PublicDataNoInit"
	.byte		0
	.4byte		.L11783
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11780:
.L11762:
	.sleb128	11
	.4byte		.L11730
	.uleb128	69
	.uleb128	1
	.4byte		.L11785-.L2
	.uleb128	104
.L773:
	.sleb128	12
	.byte		"Os_SchedulerDyn"
	.byte		0
	.4byte		.L11538
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L774:
	.sleb128	12
	.byte		"Os_IsrDyn"
	.byte		0
	.4byte		.L11695
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L775:
	.sleb128	12
	.byte		"Os_HooksDyn"
	.byte		0
	.4byte		.L11786
	.sleb128	2
	.byte		0x23
	.uleb128	100
	.byte		0x1
	.sleb128	0
.L11785:
.L11583:
	.sleb128	11
	.4byte		.L11730
	.uleb128	69
	.uleb128	1
	.4byte		.L11788-.L2
	.uleb128	4
.L772:
	.sleb128	12
	.byte		"Os_SchedulerCurrentProc"
	.byte		0
	.4byte		.L11789
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11788:
.L11539:
	.sleb128	11
	.4byte		.L11730
	.uleb128	69
	.uleb128	1
	.4byte		.L11791-.L2
	.uleb128	48
.L764:
	.sleb128	12
	.byte		"Os_CurrentContext"
	.byte		0
	.4byte		.L11775
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L765:
	.sleb128	12
	.byte		"Os_PreviousContext"
	.byte		0
	.4byte		.L11775
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L766:
	.sleb128	12
	.byte		"Os_SchedulerScheduleAction"
	.byte		0
	.4byte		.L11667
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L767:
	.sleb128	12
	.byte		"Os_SchedulerLastScheduledPriority"
	.byte		0
	.4byte		.L11606
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L768:
	.sleb128	12
	.byte		"Os_SchedulerCurrentTask"
	.byte		0
	.4byte		.L11789
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L769:
	.sleb128	12
	.byte		"Os_SchedulerLastScheduledProc"
	.byte		0
	.4byte		.L11789
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L770:
	.sleb128	12
	.byte		"Os_SchedulerHeadPivot"
	.byte		0
	.4byte		.L11792
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L771:
	.sleb128	12
	.byte		"Os_SchedulerTailPivot"
	.byte		0
	.4byte		.L11792
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
	.sleb128	0
.L11791:
.L11619:
	.sleb128	11
	.4byte		.L11793
	.uleb128	612
	.uleb128	1
	.4byte		.L11794-.L2
	.uleb128	32
.L756:
	.sleb128	12
	.byte		"Os_ProcMaxTaskPrio"
	.byte		0
	.4byte		.L11605
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L757:
	.sleb128	12
	.byte		"Os_ProcMaxCAT2Prio"
	.byte		0
	.4byte		.L11605
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L758:
	.sleb128	12
	.byte		"Os_ProcMaxCAT1Prio"
	.byte		0
	.4byte		.L11605
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L759:
	.sleb128	12
	.byte		"Os_IsrCAT0Prio"
	.byte		0
	.4byte		.L11605
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L760:
	.sleb128	12
	.byte		"Os_IsrCAT1Prio"
	.byte		0
	.4byte		.L11605
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L761:
	.sleb128	12
	.byte		"Os_IsrCAT2Prio"
	.byte		0
	.4byte		.L11605
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L762:
	.sleb128	12
	.byte		"Os_SchedulerQueueCount"
	.byte		0
	.4byte		.L11749
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L763:
	.sleb128	12
	.byte		"Os_SchedulerQueues"
	.byte		0
	.4byte		.L11795
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
	.sleb128	0
.L11794:
.L11798:
	.sleb128	11
	.4byte		.L11793
	.uleb128	612
	.uleb128	1
	.4byte		.L11799-.L2
	.uleb128	12
.L753:
	.sleb128	12
	.byte		"Os_QueueElements"
	.byte		0
	.4byte		.L11704
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L754:
	.sleb128	12
	.byte		"Os_QueueHead"
	.byte		0
	.4byte		.L11800
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L755:
	.sleb128	12
	.byte		"Os_QueueTail"
	.byte		0
	.4byte		.L11800
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11799:
	.section	.debug_info,,n
.L11543:
	.sleb128	13
	.4byte		.L11793
	.uleb128	612
	.uleb128	1
	.4byte		.L11801-.L2
	.byte		"Os_SchedulerQueueElementType_s"
	.byte		0
	.uleb128	12
.L750:
	.sleb128	12
	.byte		"Os_QueueProc"
	.byte		0
	.4byte		.L11789
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L751:
	.sleb128	12
	.byte		"Os_QueueFrontElement"
	.byte		0
	.4byte		.L11542
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L752:
	.sleb128	12
	.byte		"Os_QueueBackElement"
	.byte		0
	.4byte		.L11542
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11801:
.L11779:
	.sleb128	11
	.4byte		.L11793
	.uleb128	612
	.uleb128	1
	.4byte		.L11802-.L2
	.uleb128	28
.L743:
	.sleb128	12
	.byte		"Os_CurrentUserModePriority"
	.byte		0
	.4byte		.L11754
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L744:
	.sleb128	12
	.byte		"Os_UserModePriorityChanged"
	.byte		0
	.4byte		.L11597
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L745:
	.sleb128	12
	.byte		"Os_DisableAllCount"
	.byte		0
	.4byte		.L11607
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L746:
	.sleb128	12
	.byte		"Os_SuspendAllCount"
	.byte		0
	.4byte		.L11607
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L747:
	.sleb128	12
	.byte		"Os_SuspendOSCount"
	.byte		0
	.4byte		.L11607
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L748:
	.sleb128	12
	.byte		"Os_SavedIsrLevel"
	.byte		0
	.4byte		.L11754
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L749:
	.sleb128	12
	.byte		"Os_SavedOSIsrLevel"
	.byte		0
	.4byte		.L11754
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
	.sleb128	0
.L11802:
.L11696:
	.sleb128	11
	.4byte		.L11793
	.uleb128	612
	.uleb128	1
	.4byte		.L11803-.L2
	.uleb128	52
.L737:
	.sleb128	12
	.byte		"Os_IsrRunningIsr"
	.byte		0
	.4byte		.L11789
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L738:
	.sleb128	12
	.byte		"Os_IsrNeedToClear"
	.byte		0
	.4byte		.L11804
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L739:
	.sleb128	12
	.byte		"Os_Isr_NestLevel"
	.byte		0
	.4byte		.L11607
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L740:
	.sleb128	12
	.byte		"Os_Isr_ServicesBackup"
	.byte		0
	.4byte		.L11808
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L741:
	.sleb128	12
	.byte		"Os_SuspendAllPrevIsrState"
	.byte		0
	.4byte		.L11754
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L742:
	.sleb128	12
	.byte		"Os_SuspendCounterpartTrack"
	.byte		0
	.4byte		.L11812
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L11803:
.L11782:
	.sleb128	11
	.4byte		.L11793
	.uleb128	612
	.uleb128	1
	.4byte		.L11814-.L2
	.uleb128	8
.L735:
	.sleb128	12
	.byte		"Os_DHead"
	.byte		0
	.4byte		.L11607
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L736:
	.sleb128	12
	.byte		"Os_DTail"
	.byte		0
	.4byte		.L11607
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11814:
.L11656:
	.sleb128	13
	.4byte		.L11793
	.uleb128	612
	.uleb128	1
	.4byte		.L11815-.L2
	.byte		"Os_DispatchElementType_s"
	.byte		0
	.uleb128	56
.L730:
	.sleb128	12
	.byte		"Os_DispatchKind"
	.byte		0
	.4byte		.L11816
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L731:
	.sleb128	12
	.byte		"Os_DispatcherLockCoreId"
	.byte		0
	.4byte		.L11569
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L732:
	.sleb128	12
	.byte		"Os_DispatchIsrId"
	.byte		0
	.4byte		.L11703
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L733:
	.sleb128	12
	.byte		"Os_DispatchApiCall"
	.byte		0
	.4byte		.L11638
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L734:
	.sleb128	12
	.byte		"Os_DispatchApiInternal"
	.byte		0
	.4byte		.L11639
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11815:
.L11640:
	.sleb128	13
	.4byte		.L11793
	.uleb128	60
	.uleb128	1
	.4byte		.L11818-.L2
	.byte		"Os_APICallType_struct"
	.byte		0
	.uleb128	40
.L725:
	.sleb128	12
	.byte		"Os_API_Magic"
	.byte		0
	.4byte		.L11607
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L726:
	.sleb128	12
	.byte		"Os_API_ReturnValue"
	.byte		0
	.4byte		.L11819
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L727:
	.sleb128	12
	.byte		"Os_API_Lock"
	.byte		0
	.4byte		.L11678
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L728:
	.sleb128	12
	.byte		"Os_API_Func"
	.byte		0
	.4byte		.L11821
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L729:
	.sleb128	12
	.byte		"Os_API_Data"
	.byte		0
	.4byte		.L11826
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11818:
	.section	.debug_info,,n
.L11826:
	.sleb128	14
	.4byte		.L11793
	.uleb128	60
	.uleb128	1
	.4byte		.L11827-.L2
	.uleb128	24
.L677:
	.sleb128	12
	.byte		"Os_ApiStartOs"
	.byte		0
	.4byte		.L11828
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L678:
	.sleb128	12
	.byte		"Os_ApiShutdownOs"
	.byte		0
	.4byte		.L11830
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L679:
	.sleb128	12
	.byte		"Os_ApiShutdownOsInternal"
	.byte		0
	.4byte		.L11832
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L680:
	.sleb128	12
	.byte		"Os_ApiShutdownAllCores"
	.byte		0
	.4byte		.L11834
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L681:
	.sleb128	12
	.byte		"Os_ApiGetNumberOfActivatedCores"
	.byte		0
	.4byte		.L11836
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L682:
	.sleb128	12
	.byte		"Os_ApiStartCore"
	.byte		0
	.4byte		.L11838
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L683:
	.sleb128	12
	.byte		"Os_ApiStartNonAutosarCore"
	.byte		0
	.4byte		.L11840
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L684:
	.sleb128	12
	.byte		"Os_ApiGetCoreID"
	.byte		0
	.4byte		.L11842
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L685:
	.sleb128	12
	.byte		"Os_ApiActivateTask"
	.byte		0
	.4byte		.L11844
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L686:
	.sleb128	12
	.byte		"Os_ApiChainTask"
	.byte		0
	.4byte		.L11846
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L687:
	.sleb128	12
	.byte		"Os_ApiGetTaskID"
	.byte		0
	.4byte		.L11848
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L688:
	.sleb128	12
	.byte		"Os_ApiGetTaskState"
	.byte		0
	.4byte		.L11850
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L689:
	.sleb128	12
	.byte		"Os_ApiSetEvent"
	.byte		0
	.4byte		.L11852
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L690:
	.sleb128	12
	.byte		"Os_ApiClearEvent"
	.byte		0
	.4byte		.L11854
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L691:
	.sleb128	12
	.byte		"Os_ApiGetEvent"
	.byte		0
	.4byte		.L11856
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L692:
	.sleb128	12
	.byte		"Os_ApiWaitEvent"
	.byte		0
	.4byte		.L11858
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L693:
	.sleb128	12
	.byte		"Os_ApiGetResource"
	.byte		0
	.4byte		.L11860
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L694:
	.sleb128	12
	.byte		"Os_ApiReleaseResource"
	.byte		0
	.4byte		.L11862
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L695:
	.sleb128	12
	.byte		"Os_ApiGetAlarmBase"
	.byte		0
	.4byte		.L11864
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L696:
	.sleb128	12
	.byte		"Os_ApiGetAlarm"
	.byte		0
	.4byte		.L11866
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L697:
	.sleb128	12
	.byte		"Os_ApiSetRelAlarm"
	.byte		0
	.4byte		.L11868
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L698:
	.sleb128	12
	.byte		"Os_ApiSetAbsAlarm"
	.byte		0
	.4byte		.L11870
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L699:
	.sleb128	12
	.byte		"Os_ApiCancelAlarm"
	.byte		0
	.4byte		.L11872
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L700:
	.sleb128	12
	.byte		"Os_ApiGetApplicationState"
	.byte		0
	.4byte		.L11874
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L701:
	.sleb128	12
	.byte		"Os_ApiTerminateApplication"
	.byte		0
	.4byte		.L11876
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L702:
	.sleb128	12
	.byte		"Os_ApiGetApplicationID"
	.byte		0
	.4byte		.L11878
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L703:
	.sleb128	12
	.byte		"Os_ApiGetISRID"
	.byte		0
	.4byte		.L11880
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L704:
	.sleb128	12
	.byte		"Os_ApiGetActiveApplicationMode"
	.byte		0
	.4byte		.L11882
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L705:
	.sleb128	12
	.byte		"Os_ApiIncrementCounter"
	.byte		0
	.4byte		.L11884
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L706:
	.sleb128	12
	.byte		"Os_ApiGetCounterValue"
	.byte		0
	.4byte		.L11886
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L707:
	.sleb128	12
	.byte		"Os_ApiGetElapsedValue"
	.byte		0
	.4byte		.L11888
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L708:
	.sleb128	12
	.byte		"Os_ApiStartScheduleTableAbs"
	.byte		0
	.4byte		.L11890
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L709:
	.sleb128	12
	.byte		"Os_ApiStartScheduleTableRel"
	.byte		0
	.4byte		.L11892
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L710:
	.sleb128	12
	.byte		"Os_ApiStopScheduleTable"
	.byte		0
	.4byte		.L11894
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L711:
	.sleb128	12
	.byte		"Os_ApiGetScheduleTableStatus"
	.byte		0
	.4byte		.L11896
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L712:
	.sleb128	12
	.byte		"Os_ApiNextScheduleTable"
	.byte		0
	.4byte		.L11898
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L713:
	.sleb128	12
	.byte		"Os_ApiStartScheduleTableSynchron"
	.byte		0
	.4byte		.L11900
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L714:
	.sleb128	12
	.byte		"Os_ApiSyncScheduleTable"
	.byte		0
	.4byte		.L11902
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L715:
	.sleb128	12
	.byte		"Os_ApiSetScheduleTableAsync"
	.byte		0
	.4byte		.L11904
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L716:
	.sleb128	12
	.byte		"Os_ApiCheckObjectAccess"
	.byte		0
	.4byte		.L11906
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L717:
	.sleb128	12
	.byte		"Os_ApiCheckObjectOwnership"
	.byte		0
	.4byte		.L11908
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L718:
	.sleb128	12
	.byte		"Os_ApiCallTrustedFunction"
	.byte		0
	.4byte		.L11910
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L719:
	.sleb128	12
	.byte		"Os_ApiStackUsage"
	.byte		0
	.4byte		.L11912
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L720:
	.sleb128	12
	.byte		"Os_API_GetSpinlock"
	.byte		0
	.4byte		.L11914
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L721:
	.sleb128	12
	.byte		"Os_API_ReleaseSpinlock"
	.byte		0
	.4byte		.L11916
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L722:
	.sleb128	12
	.byte		"Os_API_TryToGetSpinlock"
	.byte		0
	.4byte		.L11918
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L723:
	.sleb128	12
	.byte		"Os_API_IOCTransfer"
	.byte		0
	.4byte		.L11920
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L724:
	.sleb128	12
	.byte		"Os_ApiControlIdle"
	.byte		0
	.4byte		.L11922
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11827:
.L11923:
	.sleb128	11
	.4byte		.L11793
	.uleb128	60
	.uleb128	1
	.4byte		.L11924-.L2
	.uleb128	8
.L675:
	.sleb128	12
	.byte		"CoreID"
	.byte		0
	.4byte		.L11569
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L676:
	.sleb128	12
	.byte		"IdleMode"
	.byte		0
	.4byte		.L11925
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11924:
.L11921:
	.sleb128	11
	.4byte		.L11793
	.uleb128	60
	.uleb128	1
	.4byte		.L11927-.L2
	.uleb128	8
.L673:
	.sleb128	12
	.byte		"Ioc_Channel"
	.byte		0
	.4byte		.L11928
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L674:
	.sleb128	12
	.byte		"Ioc_Data"
	.byte		0
	.4byte		.L11932
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11927:
.L11919:
	.sleb128	11
	.4byte		.L11793
	.uleb128	60
	.uleb128	1
	.4byte		.L11938-.L2
	.uleb128	8
.L671:
	.sleb128	12
	.byte		"SpinlockId"
	.byte		0
	.4byte		.L11939
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L672:
	.sleb128	12
	.byte		"Success"
	.byte		0
	.4byte		.L11940
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11938:
.L11917:
	.sleb128	11
	.4byte		.L11793
	.uleb128	60
	.uleb128	1
	.4byte		.L11943-.L2
	.uleb128	2
.L670:
	.sleb128	12
	.byte		"SpinlockId"
	.byte		0
	.4byte		.L11939
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11943:
.L11915:
	.sleb128	11
	.4byte		.L11793
	.uleb128	60
	.uleb128	1
	.4byte		.L11944-.L2
	.uleb128	2
.L669:
	.sleb128	12
	.byte		"SpinlockId"
	.byte		0
	.4byte		.L11939
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11944:
.L11913:
	.sleb128	11
	.4byte		.L11793
	.uleb128	60
	.uleb128	1
	.4byte		.L11945-.L2
	.uleb128	20
.L664:
	.sleb128	12
	.byte		"ProcId"
	.byte		0
	.4byte		.L11946
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L665:
	.sleb128	12
	.byte		"MaxUsage"
	.byte		0
	.4byte		.L11820
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L666:
	.sleb128	12
	.byte		"MaxUsageRef"
	.byte		0
	.4byte		.L11947
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L667:
	.sleb128	12
	.byte		"CurrentUsage"
	.byte		0
	.4byte		.L11820
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L668:
	.sleb128	12
	.byte		"CurrentUsageRef"
	.byte		0
	.4byte		.L11947
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11945:
.L11911:
	.sleb128	11
	.4byte		.L11793
	.uleb128	60
	.uleb128	1
	.4byte		.L11948-.L2
	.uleb128	12
.L661:
	.sleb128	12
	.byte		"FunctionIndex"
	.byte		0
	.4byte		.L11949
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L662:
	.sleb128	12
	.byte		"ParamRef"
	.byte		0
	.4byte		.L11950
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L663:
	.sleb128	12
	.byte		"ReturnValue"
	.byte		0
	.4byte		.L11951
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11948:
.L11909:
	.sleb128	11
	.4byte		.L11793
	.uleb128	60
	.uleb128	1
	.4byte		.L11953-.L2
	.uleb128	12
.L658:
	.sleb128	12
	.byte		"AppID"
	.byte		0
	.4byte		.L11954
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L659:
	.sleb128	12
	.byte		"ObjectType"
	.byte		0
	.4byte		.L11955
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L660:
	.sleb128	12
	.byte		"Object"
	.byte		0
	.4byte		.L11705
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11953:
.L11907:
	.sleb128	11
	.4byte		.L11793
	.uleb128	60
	.uleb128	1
	.4byte		.L11957-.L2
	.uleb128	12
.L655:
	.sleb128	12
	.byte		"AppID"
	.byte		0
	.4byte		.L11954
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L656:
	.sleb128	12
	.byte		"ObjectType"
	.byte		0
	.4byte		.L11955
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L657:
	.sleb128	12
	.byte		"Object"
	.byte		0
	.4byte		.L11705
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11957:
.L11873:
	.sleb128	11
	.4byte		.L11793
	.uleb128	60
	.uleb128	1
	.4byte		.L11958-.L2
	.uleb128	4
.L654:
	.sleb128	12
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11959
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11958:
.L11871:
	.sleb128	11
	.4byte		.L11793
	.uleb128	60
	.uleb128	1
	.4byte		.L11960-.L2
	.uleb128	12
.L651:
	.sleb128	12
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11959
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L652:
	.sleb128	12
	.byte		"Start"
	.byte		0
	.4byte		.L11961
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L653:
	.sleb128	12
	.byte		"Cycle"
	.byte		0
	.4byte		.L11961
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11960:
.L11869:
	.sleb128	11
	.4byte		.L11793
	.uleb128	60
	.uleb128	1
	.4byte		.L11962-.L2
	.uleb128	12
.L648:
	.sleb128	12
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11959
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L649:
	.sleb128	12
	.byte		"Increment"
	.byte		0
	.4byte		.L11961
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L650:
	.sleb128	12
	.byte		"Cycle"
	.byte		0
	.4byte		.L11961
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11962:
.L11867:
	.sleb128	11
	.4byte		.L11793
	.uleb128	60
	.uleb128	1
	.4byte		.L11963-.L2
	.uleb128	8
.L646:
	.sleb128	12
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11959
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L647:
	.sleb128	12
	.byte		"TickRef"
	.byte		0
	.4byte		.L11964
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11963:
.L11865:
	.sleb128	11
	.4byte		.L11793
	.uleb128	60
	.uleb128	1
	.4byte		.L11966-.L2
	.uleb128	8
.L644:
	.sleb128	12
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11959
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L645:
	.sleb128	12
	.byte		"AlarmBaseTypeRef"
	.byte		0
	.4byte		.L11967
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11966:
.L11905:
	.sleb128	11
	.4byte		.L11793
	.uleb128	60
	.uleb128	1
	.4byte		.L11971-.L2
	.uleb128	4
.L643:
	.sleb128	12
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11972
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11971:
.L11903:
	.sleb128	11
	.4byte		.L11793
	.uleb128	60
	.uleb128	1
	.4byte		.L11973-.L2
	.uleb128	8
.L641:
	.sleb128	12
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11972
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L642:
	.sleb128	12
	.byte		"SyncValue"
	.byte		0
	.4byte		.L11961
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11973:
.L11901:
	.sleb128	11
	.4byte		.L11793
	.uleb128	60
	.uleb128	1
	.4byte		.L11974-.L2
	.uleb128	4
.L640:
	.sleb128	12
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11972
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11974:
.L11899:
	.sleb128	11
	.4byte		.L11793
	.uleb128	60
	.uleb128	1
	.4byte		.L11975-.L2
	.uleb128	8
.L638:
	.sleb128	12
	.byte		"SchTblIdFrom"
	.byte		0
	.4byte		.L11972
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L639:
	.sleb128	12
	.byte		"SchTblIdTo"
	.byte		0
	.4byte		.L11972
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11975:
.L11897:
	.sleb128	11
	.4byte		.L11793
	.uleb128	60
	.uleb128	1
	.4byte		.L11976-.L2
	.uleb128	8
.L636:
	.sleb128	12
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11972
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L637:
	.sleb128	12
	.byte		"SchTblStatus"
	.byte		0
	.4byte		.L11977
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11976:
.L11895:
	.sleb128	11
	.4byte		.L11793
	.uleb128	60
	.uleb128	1
	.4byte		.L11981-.L2
	.uleb128	4
.L635:
	.sleb128	12
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11972
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11981:
.L11893:
	.sleb128	11
	.4byte		.L11793
	.uleb128	60
	.uleb128	1
	.4byte		.L11982-.L2
	.uleb128	8
.L633:
	.sleb128	12
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11972
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L634:
	.sleb128	12
	.byte		"Offset"
	.byte		0
	.4byte		.L11961
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11982:
.L11891:
	.sleb128	11
	.4byte		.L11793
	.uleb128	60
	.uleb128	1
	.4byte		.L11983-.L2
	.uleb128	8
.L631:
	.sleb128	12
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11972
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L632:
	.sleb128	12
	.byte		"Start"
	.byte		0
	.4byte		.L11961
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11983:
.L11889:
	.sleb128	11
	.4byte		.L11793
	.uleb128	60
	.uleb128	1
	.4byte		.L11984-.L2
	.uleb128	12
.L628:
	.sleb128	12
	.byte		"CounterId"
	.byte		0
	.4byte		.L11985
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L629:
	.sleb128	12
	.byte		"ValuePtr"
	.byte		0
	.4byte		.L11964
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L630:
	.sleb128	12
	.byte		"ElapsedValuePtr"
	.byte		0
	.4byte		.L11964
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11984:
.L11887:
	.sleb128	11
	.4byte		.L11793
	.uleb128	60
	.uleb128	1
	.4byte		.L11986-.L2
	.uleb128	12
.L625:
	.sleb128	12
	.byte		"CounterId"
	.byte		0
	.4byte		.L11985
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L626:
	.sleb128	12
	.byte		"ValuePtr"
	.byte		0
	.4byte		.L11964
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L627:
	.sleb128	12
	.byte		"LightServiceFunction"
	.byte		0
	.4byte		.L11642
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11986:
.L11885:
	.sleb128	11
	.4byte		.L11793
	.uleb128	60
	.uleb128	1
	.4byte		.L11987-.L2
	.uleb128	4
.L624:
	.sleb128	12
	.byte		"CounterId"
	.byte		0
	.4byte		.L11985
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11987:
.L11881:
	.sleb128	11
	.4byte		.L11793
	.uleb128	60
	.uleb128	1
	.4byte		.L11988-.L2
	.uleb128	4
.L623:
	.sleb128	12
	.byte		"ISRId"
	.byte		0
	.4byte		.L11703
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11988:
.L11877:
	.sleb128	11
	.4byte		.L11793
	.uleb128	60
	.uleb128	1
	.4byte		.L11989-.L2
	.uleb128	2
.L621:
	.sleb128	12
	.byte		"Application"
	.byte		0
	.4byte		.L11954
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L622:
	.sleb128	12
	.byte		"RestartOption"
	.byte		0
	.4byte		.L11990
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
	.sleb128	0
.L11989:
.L11879:
	.sleb128	11
	.4byte		.L11793
	.uleb128	60
	.uleb128	1
	.4byte		.L11991-.L2
	.uleb128	1
.L620:
	.sleb128	12
	.byte		"Application"
	.byte		0
	.4byte		.L11954
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11991:
.L11875:
	.sleb128	11
	.4byte		.L11793
	.uleb128	60
	.uleb128	1
	.4byte		.L11992-.L2
	.uleb128	8
.L618:
	.sleb128	12
	.byte		"Application"
	.byte		0
	.4byte		.L11954
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L619:
	.sleb128	12
	.byte		"AppStateRef"
	.byte		0
	.4byte		.L11993
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11992:
.L11859:
	.sleb128	11
	.4byte		.L11793
	.uleb128	60
	.uleb128	1
	.4byte		.L11996-.L2
	.uleb128	8
.L617:
	.sleb128	12
	.byte		"EventMask"
	.byte		0
	.4byte		.L11997
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11996:
.L11857:
	.sleb128	11
	.4byte		.L11793
	.uleb128	60
	.uleb128	1
	.4byte		.L12000-.L2
	.uleb128	24
.L614:
	.sleb128	12
	.byte		"TaskId"
	.byte		0
	.4byte		.L11946
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L615:
	.sleb128	12
	.byte		"EventMask"
	.byte		0
	.4byte		.L11997
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L616:
	.sleb128	12
	.byte		"EventMaskRef"
	.byte		0
	.4byte		.L12001
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L12000:
.L11855:
	.sleb128	11
	.4byte		.L11793
	.uleb128	60
	.uleb128	1
	.4byte		.L12003-.L2
	.uleb128	8
.L613:
	.sleb128	12
	.byte		"EventMask"
	.byte		0
	.4byte		.L11997
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12003:
.L11853:
	.sleb128	11
	.4byte		.L11793
	.uleb128	60
	.uleb128	1
	.4byte		.L12004-.L2
	.uleb128	16
.L611:
	.sleb128	12
	.byte		"TaskId"
	.byte		0
	.4byte		.L11946
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L612:
	.sleb128	12
	.byte		"EventMask"
	.byte		0
	.4byte		.L11997
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L12004:
.L11851:
	.sleb128	11
	.4byte		.L11793
	.uleb128	60
	.uleb128	1
	.4byte		.L12005-.L2
	.uleb128	8
.L609:
	.sleb128	12
	.byte		"TaskId"
	.byte		0
	.4byte		.L11946
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L610:
	.sleb128	12
	.byte		"TaskStateRef"
	.byte		0
	.4byte		.L12006
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12005:
.L11849:
	.sleb128	11
	.4byte		.L11793
	.uleb128	60
	.uleb128	1
	.4byte		.L12010-.L2
	.uleb128	4
.L608:
	.sleb128	12
	.byte		"TaskIdRef"
	.byte		0
	.4byte		.L12011
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12010:
.L11847:
	.sleb128	11
	.4byte		.L11793
	.uleb128	60
	.uleb128	1
	.4byte		.L12013-.L2
	.uleb128	4
.L607:
	.sleb128	12
	.byte		"TaskId"
	.byte		0
	.4byte		.L11946
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12013:
.L11845:
	.sleb128	11
	.4byte		.L11793
	.uleb128	60
	.uleb128	1
	.4byte		.L12014-.L2
	.uleb128	4
.L606:
	.sleb128	12
	.byte		"TaskId"
	.byte		0
	.4byte		.L11946
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12014:
.L11863:
	.sleb128	11
	.4byte		.L11793
	.uleb128	60
	.uleb128	1
	.4byte		.L12015-.L2
	.uleb128	4
.L605:
	.sleb128	12
	.byte		"ResourceId"
	.byte		0
	.4byte		.L12016
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12015:
.L11861:
	.sleb128	11
	.4byte		.L11793
	.uleb128	60
	.uleb128	1
	.4byte		.L12017-.L2
	.uleb128	4
.L604:
	.sleb128	12
	.byte		"ResourceId"
	.byte		0
	.4byte		.L12016
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12017:
.L11883:
	.sleb128	11
	.4byte		.L11793
	.uleb128	60
	.uleb128	1
	.4byte		.L12018-.L2
	.uleb128	4
.L603:
	.sleb128	12
	.byte		"AppMode"
	.byte		0
	.4byte		.L12019
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12018:
.L11843:
	.sleb128	11
	.4byte		.L11793
	.uleb128	60
	.uleb128	1
	.4byte		.L12020-.L2
	.uleb128	2
.L602:
	.sleb128	12
	.byte		"CoreID"
	.byte		0
	.4byte		.L11569
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12020:
.L11837:
	.sleb128	11
	.4byte		.L11793
	.uleb128	60
	.uleb128	1
	.4byte		.L12021-.L2
	.uleb128	2
.L601:
	.sleb128	12
	.byte		"NumberOfActivatedCores"
	.byte		0
	.4byte		.L11569
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12021:
.L11835:
	.sleb128	11
	.4byte		.L11793
	.uleb128	60
	.uleb128	1
	.4byte		.L12022-.L2
	.uleb128	1
.L600:
	.sleb128	12
	.byte		"Error"
	.byte		0
	.4byte		.L11819
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12022:
.L11833:
	.sleb128	11
	.4byte		.L11793
	.uleb128	60
	.uleb128	1
	.4byte		.L12023-.L2
	.uleb128	8
.L598:
	.sleb128	12
	.byte		"ShutdownType"
	.byte		0
	.4byte		.L12024
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L599:
	.sleb128	12
	.byte		"Error"
	.byte		0
	.4byte		.L11819
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12023:
.L11831:
	.sleb128	11
	.4byte		.L11793
	.uleb128	60
	.uleb128	1
	.4byte		.L12026-.L2
	.uleb128	1
.L597:
	.sleb128	12
	.byte		"Error"
	.byte		0
	.4byte		.L11819
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12026:
.L11841:
	.sleb128	11
	.4byte		.L11793
	.uleb128	60
	.uleb128	1
	.4byte		.L12027-.L2
	.uleb128	8
.L595:
	.sleb128	12
	.byte		"CoreID"
	.byte		0
	.4byte		.L11569
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L596:
	.sleb128	12
	.byte		"StatusRef"
	.byte		0
	.4byte		.L12028
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12027:
.L11839:
	.sleb128	11
	.4byte		.L11793
	.uleb128	60
	.uleb128	1
	.4byte		.L12029-.L2
	.uleb128	8
.L593:
	.sleb128	12
	.byte		"CoreID"
	.byte		0
	.4byte		.L11569
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L594:
	.sleb128	12
	.byte		"StatusRef"
	.byte		0
	.4byte		.L12028
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12029:
.L11829:
	.sleb128	11
	.4byte		.L11793
	.uleb128	60
	.uleb128	1
	.4byte		.L12030-.L2
	.uleb128	4
.L592:
	.sleb128	12
	.byte		"AppMode"
	.byte		0
	.4byte		.L12019
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12030:
.L11931:
	.sleb128	11
	.4byte		.L12031
	.uleb128	33
	.uleb128	14
	.4byte		.L12032-.L2
	.uleb128	24
.L585:
	.sleb128	12
	.byte		"Os_IOC_ChannelDyn"
	.byte		0
	.4byte		.L12033
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L586:
	.sleb128	12
	.byte		"Os_IOC_ChannelLength"
	.byte		0
	.4byte		.L12037
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L587:
	.sleb128	12
	.byte		"Os_IOC_ChannelBuffer"
	.byte		0
	.4byte		.L12038
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L588:
	.sleb128	12
	.byte		"Os_IOC_ChannelElementSize"
	.byte		0
	.4byte		.L12039
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L589:
	.sleb128	12
	.byte		"Os_IOC_DataCount"
	.byte		0
	.4byte		.L12040
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L590:
	.sleb128	12
	.byte		"Os_IOC_DataDescriptor"
	.byte		0
	.4byte		.L12042
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L591:
	.sleb128	12
	.byte		"Os_IOC_LockResourceAddress"
	.byte		0
	.4byte		.L12047
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L12032:
.L12046:
	.sleb128	11
	.4byte		.L12031
	.uleb128	33
	.uleb128	14
	.4byte		.L12050-.L2
	.uleb128	4
.L581:
	.sleb128	12
	.byte		"Os_IOC_DataLength"
	.byte		0
	.4byte		.L12051
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L582:
	.sleb128	12
	.byte		"Os_IOC_DataOffset"
	.byte		0
	.4byte		.L12053
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L12050:
.L12036:
	.sleb128	11
	.4byte		.L12031
	.uleb128	33
	.uleb128	14
	.4byte		.L12055-.L2
	.uleb128	6
.L578:
	.sleb128	12
	.byte		"Os_IOC_ChannelHead"
	.byte		0
	.4byte		.L12037
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L579:
	.sleb128	12
	.byte		"Os_IOC_ChannelMessageCount"
	.byte		0
	.4byte		.L12037
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L580:
	.sleb128	12
	.byte		"Os_IOC_Status"
	.byte		0
	.4byte		.L11819
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12055:
.L11787:
	.sleb128	11
	.4byte		.L12056
	.uleb128	34
	.uleb128	14
	.4byte		.L12057-.L2
	.uleb128	2
.L529:
	.sleb128	12
	.byte		"Os_HookID"
	.byte		0
	.4byte		.L12058
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12057:
.L11533:
	.sleb128	13
	.4byte		.L12059
	.uleb128	80
	.uleb128	13
	.4byte		.L12060-.L2
	.byte		"Os_ProcStatType_s"
	.byte		0
	.uleb128	80
.L511:
	.sleb128	12
	.byte		"Os_ProcId"
	.byte		0
	.4byte		.L12061
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L512:
	.sleb128	12
	.byte		"Os_ProcCoreID"
	.byte		0
	.4byte		.L11568
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L513:
	.sleb128	12
	.byte		"Os_ProcDyn"
	.byte		0
	.4byte		.L12062
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L514:
	.sleb128	12
	.byte		"Os_ProcStack"
	.byte		0
	.4byte		.L12066
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L515:
	.sleb128	12
	.byte		"Os_ProcKind"
	.byte		0
	.4byte		.L12071
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L516:
	.sleb128	12
	.byte		"Os_ProcEventRights"
	.byte		0
	.4byte		.L12074
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L517:
	.sleb128	12
	.byte		"Os_ProcPriority"
	.byte		0
	.4byte		.L11605
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L518:
	.sleb128	12
	.byte		"Os_ProcRunPriority"
	.byte		0
	.4byte		.L11605
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L519:
	.sleb128	12
	.byte		"Os_ProcMaxActivations"
	.byte		0
	.4byte		.L12075
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L520:
	.sleb128	12
	.byte		"Os_ProcContext"
	.byte		0
	.4byte		.L12077
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L521:
	.sleb128	12
	.byte		"Os_ProcOwnerApp"
	.byte		0
	.4byte		.L11550
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L522:
	.sleb128	12
	.byte		"Os_ProcAppAccess"
	.byte		0
	.4byte		.L12078
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L523:
	.sleb128	12
	.byte		"Os_ProcEntryPoint"
	.byte		0
	.4byte		.L12082
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L524:
	.sleb128	12
	.byte		"Os_ProcAutoStart"
	.byte		0
	.4byte		.L12078
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
.L525:
	.sleb128	12
	.byte		"Os_ProcResourceCount"
	.byte		0
	.4byte		.L12087
	.sleb128	2
	.byte		0x23
	.uleb128	64
	.byte		0x1
.L526:
	.sleb128	12
	.byte		"Os_ProcResourceStack"
	.byte		0
	.4byte		.L12088
	.sleb128	2
	.byte		0x23
	.uleb128	68
	.byte		0x1
.L527:
	.sleb128	12
	.byte		"Os_ProcQueueElements"
	.byte		0
	.4byte		.L12094
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.byte		0x1
.L528:
	.sleb128	12
	.byte		"Os_ProcIsrPlatformConfig"
	.byte		0
	.4byte		.L12095
	.sleb128	2
	.byte		0x23
	.uleb128	76
	.byte		0x1
	.sleb128	0
.L12060:
.L12070:
	.sleb128	13
	.4byte		.L12059
	.uleb128	80
	.uleb128	13
	.4byte		.L12096-.L2
	.byte		"Os_ProcStackStruct"
	.byte		0
	.uleb128	8
.L509:
	.sleb128	12
	.byte		"Os_ProcStackSize"
	.byte		0
	.4byte		.L12097
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L510:
	.sleb128	12
	.byte		"Os_ProcStackBase"
	.byte		0
	.4byte		.L12077
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12096:
.L12065:
	.sleb128	11
	.4byte		.L12059
	.uleb128	80
	.uleb128	13
	.4byte		.L12099-.L2
	.uleb128	56
.L496:
	.sleb128	12
	.byte		"Os_ProcState"
	.byte		0
	.4byte		.L12008
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L497:
	.sleb128	12
	.byte		"Os_ProcContextState"
	.byte		0
	.4byte		.L12100
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L498:
	.sleb128	12
	.byte		"Os_ProcEvents"
	.byte		0
	.4byte		.L11997
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L499:
	.sleb128	12
	.byte		"Os_ProcEventWaitingFor"
	.byte		0
	.4byte		.L11997
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L500:
	.sleb128	12
	.byte		"Os_ProcActivations"
	.byte		0
	.4byte		.L12076
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L501:
	.sleb128	12
	.byte		"Os_ProcResourcesAllocated"
	.byte		0
	.4byte		.L12016
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L502:
	.sleb128	12
	.byte		"Os_ProcEnabled"
	.byte		0
	.4byte		.L11820
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L503:
	.sleb128	12
	.byte		"Os_ProcCurrentApp"
	.byte		0
	.4byte		.L11551
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L504:
	.sleb128	12
	.byte		"Os_ProcSpinlock"
	.byte		0
	.4byte		.L12102
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L505:
	.sleb128	12
	.byte		"Os_ProcFreeQueueElements"
	.byte		0
	.4byte		.L11542
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L506:
	.sleb128	12
	.byte		"Os_ProcCurrentPriority"
	.byte		0
	.4byte		.L11606
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L507:
	.sleb128	12
	.byte		"Os_ProcTFCallCount"
	.byte		0
	.4byte		.L11820
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L508:
	.sleb128	12
	.byte		"Os_FatalErrorOccured"
	.byte		0
	.4byte		.L11819
	.sleb128	2
	.byte		0x23
	.uleb128	53
	.byte		0x1
	.sleb128	0
.L12099:
.L12104:
	.sleb128	13
	.4byte		.L12105
	.uleb128	52
	.uleb128	1
	.4byte		.L12106-.L2
	.byte		"Os_SpinlockStatType_s"
	.byte		0
	.uleb128	16
.L448:
	.sleb128	12
	.byte		"Os_SpinlockId"
	.byte		0
	.4byte		.L12107
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L449:
	.sleb128	12
	.byte		"Os_SpinlockChainId"
	.byte		0
	.4byte		.L12107
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L450:
	.sleb128	12
	.byte		"Os_SpinlockDyn"
	.byte		0
	.4byte		.L12108
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L451:
	.sleb128	12
	.byte		"Os_SpinlockAccess"
	.byte		0
	.4byte		.L12078
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L452:
	.sleb128	12
	.byte		"Os_SpinlockLockResourceAddress"
	.byte		0
	.4byte		.L12047
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L12106:
.L12111:
	.sleb128	11
	.4byte		.L12105
	.uleb128	52
	.uleb128	1
	.4byte		.L12112-.L2
	.uleb128	12
.L445:
	.sleb128	12
	.byte		"Os_SpinlockLockerProc"
	.byte		0
	.4byte		.L11789
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L446:
	.sleb128	12
	.byte		"Os_SpinlockSuperseded"
	.byte		0
	.4byte		.L12102
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L447:
	.sleb128	12
	.byte		"Os_ResourceDependency"
	.byte		0
	.4byte		.L12090
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L12112:
.L11554:
	.sleb128	13
	.4byte		.L12105
	.uleb128	52
	.uleb128	1
	.4byte		.L12113-.L2
	.byte		"Os_ApplicationStatType_s"
	.byte		0
	.uleb128	48
.L433:
	.sleb128	12
	.byte		"Os_AppDyn"
	.byte		0
	.4byte		.L12114
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L434:
	.sleb128	12
	.byte		"Os_AppId"
	.byte		0
	.4byte		.L12118
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L435:
	.sleb128	12
	.byte		"Os_AppRestartTask"
	.byte		0
	.4byte		.L12061
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L436:
	.sleb128	12
	.byte		"Os_AppKind"
	.byte		0
	.4byte		.L12119
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L437:
	.sleb128	12
	.byte		"Os_AppShutdownHook"
	.byte		0
	.4byte		.L12122
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L438:
	.sleb128	12
	.byte		"Os_AppStartupHook"
	.byte		0
	.4byte		.L12127
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L439:
	.sleb128	12
	.byte		"Os_AppErrorHook"
	.byte		0
	.4byte		.L12132
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L440:
	.sleb128	12
	.byte		"Os_AppProcIDs"
	.byte		0
	.4byte		.L12137
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L441:
	.sleb128	12
	.byte		"Os_AppCounterIDs"
	.byte		0
	.4byte		.L12140
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L442:
	.sleb128	12
	.byte		"Os_AppAlarmIDs"
	.byte		0
	.4byte		.L12143
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L443:
	.sleb128	12
	.byte		"Os_AppSchTblIDs"
	.byte		0
	.4byte		.L12146
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L444:
	.sleb128	12
	.byte		"Os_CoreAssigment"
	.byte		0
	.4byte		.L11568
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
	.sleb128	0
.L12113:
.L12117:
	.sleb128	11
	.4byte		.L12105
	.uleb128	52
	.uleb128	1
	.4byte		.L12149-.L2
	.uleb128	1
.L432:
	.sleb128	12
	.byte		"Os_AppState"
	.byte		0
	.4byte		.L11995
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12149:
.L12093:
	.sleb128	11
	.4byte		.L12150
	.uleb128	32
	.uleb128	1
	.4byte		.L12151-.L2
	.uleb128	12
.L429:
	.sleb128	12
	.byte		"Os_ResourcePriority"
	.byte		0
	.4byte		.L11605
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L430:
	.sleb128	12
	.byte		"Os_ResourceAccessRights"
	.byte		0
	.4byte		.L12079
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L431:
	.sleb128	12
	.byte		"Os_ResourceDyn"
	.byte		0
	.4byte		.L12152
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L12151:
.L12154:
	.sleb128	11
	.4byte		.L12150
	.uleb128	32
	.uleb128	1
	.4byte		.L12155-.L2
	.uleb128	4
.L428:
	.sleb128	12
	.byte		"Os_LockerProc"
	.byte		0
	.4byte		.L11789
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12155:
.L11784:
	.sleb128	11
	.4byte		.L12150
	.uleb128	32
	.uleb128	1
	.4byte		.L12156-.L2
	.uleb128	144
.L423:
	.sleb128	12
	.byte		"Os_Error"
	.byte		0
	.4byte		.L12157
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L424:
	.sleb128	12
	.byte		"Os_ExceptionStatus"
	.byte		0
	.4byte		.L12159
	.sleb128	2
	.byte		0x23
	.uleb128	120
	.byte		0x1
	.sleb128	0
.L12156:
.L11811:
	.sleb128	11
	.4byte		.L12150
	.uleb128	32
	.uleb128	1
	.4byte		.L12161-.L2
	.uleb128	24
.L417:
	.sleb128	12
	.byte		"Os_DisAllInt"
	.byte		0
	.4byte		.L12162
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L418:
	.sleb128	12
	.byte		"Os_EnAllInt"
	.byte		0
	.4byte		.L12162
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L419:
	.sleb128	12
	.byte		"Os_SusAllInt"
	.byte		0
	.4byte		.L12162
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L420:
	.sleb128	12
	.byte		"Os_ResAllInt"
	.byte		0
	.4byte		.L12162
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L421:
	.sleb128	12
	.byte		"Os_SusOsInt"
	.byte		0
	.4byte		.L12162
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L422:
	.sleb128	12
	.byte		"Os_ResOsInt"
	.byte		0
	.4byte		.L12162
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L12161:
.L12160:
	.sleb128	11
	.4byte		.L12150
	.uleb128	32
	.uleb128	1
	.4byte		.L12167-.L2
	.uleb128	20
.L412:
	.sleb128	12
	.byte		"Os_ExceptionType"
	.byte		0
	.4byte		.L12168
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L413:
	.sleb128	12
	.byte		"Os_ExceptionCause"
	.byte		0
	.4byte		.L11607
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L414:
	.sleb128	12
	.byte		"Os_ExceptionAuxiliaryCause"
	.byte		0
	.4byte		.L11607
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L415:
	.sleb128	12
	.byte		"Os_ExceptionExecutionAddress"
	.byte		0
	.4byte		.L11776
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L416:
	.sleb128	12
	.byte		"Os_ExceptionAccessAddress"
	.byte		0
	.4byte		.L11776
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L12167:
.L12158:
	.sleb128	11
	.4byte		.L12170
	.uleb128	174
	.uleb128	1
	.4byte		.L12171-.L2
	.uleb128	120
.L409:
	.sleb128	12
	.byte		"Os_ShutdownError"
	.byte		0
	.4byte		.L12172
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L410:
	.sleb128	12
	.byte		"Os_ParameterError"
	.byte		0
	.4byte		.L12174
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L411:
	.sleb128	12
	.byte		"Os_ServiceError"
	.byte		0
	.4byte		.L12176
	.sleb128	2
	.byte		0x23
	.uleb128	112
	.byte		0x1
	.sleb128	0
.L12171:
.L12177:
	.sleb128	11
	.4byte		.L12170
	.uleb128	174
	.uleb128	1
	.4byte		.L12178-.L2
	.uleb128	8
.L406:
	.sleb128	12
	.byte		"Os_ServiceTrace"
	.byte		0
	.4byte		.L12179
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L407:
	.sleb128	12
	.byte		"Os_LastError"
	.byte		0
	.4byte		.L11819
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L408:
	.sleb128	12
	.byte		"Os_FaultyServiceId"
	.byte		0
	.4byte		.L12180
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12178:
.L12175:
	.sleb128	11
	.4byte		.L12170
	.uleb128	174
	.uleb128	1
	.4byte		.L12182-.L2
	.uleb128	104
.L381:
	.sleb128	12
	.byte		"Os_Err_TaskID"
	.byte		0
	.4byte		.L11946
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L382:
	.sleb128	12
	.byte		"Os_Err_ResID"
	.byte		0
	.4byte		.L12016
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L383:
	.sleb128	12
	.byte		"Os_Err_MaskType_Mask"
	.byte		0
	.4byte		.L11997
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L384:
	.sleb128	12
	.byte		"Os_Err_AlarmID"
	.byte		0
	.4byte		.L11959
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L385:
	.sleb128	12
	.byte		"Os_Err_TicksStart"
	.byte		0
	.4byte		.L11961
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L386:
	.sleb128	12
	.byte		"Os_Err_TicksCycle"
	.byte		0
	.4byte		.L11961
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L387:
	.sleb128	12
	.byte		"Os_Err_FuncIndex"
	.byte		0
	.4byte		.L11949
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L388:
	.sleb128	12
	.byte		"Os_Err_FuncParamRefType"
	.byte		0
	.4byte		.L11950
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L389:
	.sleb128	12
	.byte		"Os_Err_ApplID"
	.byte		0
	.4byte		.L11954
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L390:
	.sleb128	12
	.byte		"Os_Err_ApplStateRefType"
	.byte		0
	.4byte		.L11993
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L391:
	.sleb128	12
	.byte		"Os_Err_ObjType"
	.byte		0
	.4byte		.L11955
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L392:
	.sleb128	12
	.byte		"Os_Err_SchedID"
	.byte		0
	.4byte		.L11972
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L393:
	.sleb128	12
	.byte		"Os_Err_SchedID_Next"
	.byte		0
	.4byte		.L11972
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L394:
	.sleb128	12
	.byte		"Os_Err_CntID"
	.byte		0
	.4byte		.L11985
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L395:
	.sleb128	12
	.byte		"Os_Err_RestartType"
	.byte		0
	.4byte		.L11990
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
.L396:
	.sleb128	12
	.byte		"Os_Err_MaskRefType"
	.byte		0
	.4byte		.L12001
	.sleb128	2
	.byte		0x23
	.uleb128	64
	.byte		0x1
.L397:
	.sleb128	12
	.byte		"Os_Err_TaskStateRef"
	.byte		0
	.4byte		.L12006
	.sleb128	2
	.byte		0x23
	.uleb128	68
	.byte		0x1
.L398:
	.sleb128	12
	.byte		"Os_Err_TickRef_Ticks"
	.byte		0
	.4byte		.L11964
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.byte		0x1
.L399:
	.sleb128	12
	.byte		"Os_Err_AlarmBaseRefType_Info"
	.byte		0
	.4byte		.L11967
	.sleb128	2
	.byte		0x23
	.uleb128	76
	.byte		0x1
.L400:
	.sleb128	12
	.byte		"Os_Err_TaskIDRef"
	.byte		0
	.4byte		.L12011
	.sleb128	2
	.byte		0x23
	.uleb128	80
	.byte		0x1
.L401:
	.sleb128	12
	.byte		"Os_Err_TblStatusRefType"
	.byte		0
	.4byte		.L11977
	.sleb128	2
	.byte		0x23
	.uleb128	84
	.byte		0x1
.L402:
	.sleb128	12
	.byte		"Os_Err_TickRef_ElapsedTicks"
	.byte		0
	.4byte		.L11964
	.sleb128	2
	.byte		0x23
	.uleb128	88
	.byte		0x1
.L403:
	.sleb128	12
	.byte		"Os_Err_ObjObj"
	.byte		0
	.4byte		.L11705
	.sleb128	2
	.byte		0x23
	.uleb128	92
	.byte		0x1
.L404:
	.sleb128	12
	.byte		"Os_Err_SpinlockID"
	.byte		0
	.4byte		.L11939
	.sleb128	2
	.byte		0x23
	.uleb128	96
	.byte		0x1
.L405:
	.sleb128	12
	.byte		"Os_Err_TryToGetSpinlockRef"
	.byte		0
	.4byte		.L12183
	.sleb128	2
	.byte		0x23
	.uleb128	100
	.byte		0x1
	.sleb128	0
.L12182:
.L12173:
	.sleb128	11
	.4byte		.L12170
	.uleb128	174
	.uleb128	1
	.4byte		.L12184-.L2
	.uleb128	8
.L379:
	.sleb128	12
	.byte		"Os_ShutdownErrorCode"
	.byte		0
	.4byte		.L11819
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L380:
	.sleb128	12
	.byte		"Os_ShutdownInternalErrorCode"
	.byte		0
	.4byte		.L12185
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12184:
.L11970:
	.sleb128	11
	.4byte		.L12187
	.uleb128	50
	.uleb128	1
	.4byte		.L12188-.L2
	.uleb128	12
.L376:
	.sleb128	12
	.byte		"maxallowedvalue"
	.byte		0
	.4byte		.L11961
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L377:
	.sleb128	12
	.byte		"ticksperbase"
	.byte		0
	.4byte		.L11961
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L378:
	.sleb128	12
	.byte		"mincycle"
	.byte		0
	.4byte		.L11961
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L12188:
.L11807:
	.sleb128	11
	.4byte		.L12189
	.uleb128	87
	.uleb128	7
	.4byte		.L12190-.L2
	.uleb128	8
.L364:
	.sleb128	12
	.byte		"Os_IsrPltId"
	.byte		0
	.4byte		.L11749
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L365:
	.sleb128	12
	.byte		"Os_IsrPltLevel"
	.byte		0
	.4byte		.L12191
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12190:
	.section	.debug_info,,n
.L11668:
	.sleb128	15
	.4byte		.L11730
	.uleb128	69
	.uleb128	1
	.4byte		.L12193-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	16
	.byte		"Os_Return"
	.byte		0
	.sleb128	0
	.sleb128	16
	.byte		"Os_Load"
	.byte		0
	.sleb128	1
	.sleb128	16
	.byte		"Os_SaveAndLoad"
	.byte		0
	.sleb128	2
	.sleb128	16
	.byte		"Os_SaveAndIdle"
	.byte		0
	.sleb128	3
	.sleb128	16
	.byte		"Os_Idle"
	.byte		0
	.sleb128	4
	.sleb128	0
.L12193:
.L11817:
	.sleb128	15
	.4byte		.L11793
	.uleb128	612
	.uleb128	1
	.4byte		.L12194-.L2
	.uleb128	4
	.sleb128	16
	.byte		"OS_DISPATCH_JUSTSCHEDULE"
	.byte		0
	.sleb128	0
	.sleb128	16
	.byte		"OS_DISPATCH_API"
	.byte		0
	.sleb128	1
	.sleb128	16
	.byte		"OS_DISPATCH_INTERRUPT"
	.byte		0
	.sleb128	2
	.sleb128	16
	.byte		"OS_DISPATCH_APIRE"
	.byte		0
	.sleb128	3
	.sleb128	16
	.byte		"OS_DISPATCH_INTERNAL"
	.byte		0
	.sleb128	4
	.sleb128	16
	.byte		"OS_DISPATCH_INTERNALCROSS"
	.byte		0
	.sleb128	5
	.sleb128	16
	.byte		"OS_DISPATCH_INVALID"
	.byte		0
	.sleb128	6
	.sleb128	0
.L12194:
.L11679:
	.sleb128	15
	.4byte		.L11793
	.uleb128	60
	.uleb128	1
	.4byte		.L12195-.L2
	.uleb128	4
	.sleb128	16
	.byte		"OS_DISPATCH_SINGLE"
	.byte		0
	.sleb128	0
	.sleb128	16
	.byte		"OS_DISPATCH_MULTI"
	.byte		0
	.sleb128	1
	.sleb128	16
	.byte		"OS_DISPATCH_ALL"
	.byte		0
	.sleb128	2
	.sleb128	0
.L12195:
	.section	.debug_info,,n
.L11952:
	.sleb128	17
	.4byte		.L12031
	.uleb128	33
	.uleb128	14
	.4byte		.L12196-.L2
	.byte		"TrustedFunctionReturnValueType_e"
	.byte		0
	.uleb128	4
	.sleb128	16
	.byte		"TRUSTEDFUNCTION_RETURN_VALUE_NONE"
	.byte		0
	.sleb128	0
	.sleb128	16
	.byte		"TRUSTEDFUNCTION_RETURN_VALUE_SCHEDULE"
	.byte		0
	.sleb128	1
	.sleb128	0
.L12196:
.L12101:
	.sleb128	15
	.4byte		.L12059
	.uleb128	80
	.uleb128	13
	.4byte		.L12197-.L2
	.uleb128	4
	.sleb128	16
	.byte		"Os_ProcContextInvalid"
	.byte		0
	.sleb128	0
	.sleb128	16
	.byte		"Os_ProcContextActive"
	.byte		0
	.sleb128	1
	.sleb128	16
	.byte		"Os_ProcContextPrepared"
	.byte		0
	.sleb128	2
	.sleb128	0
.L12197:
.L12073:
	.sleb128	15
	.4byte		.L12059
	.uleb128	61
	.uleb128	1
	.4byte		.L12198-.L2
	.uleb128	4
	.sleb128	16
	.byte		"Os_Proc_Task"
	.byte		0
	.sleb128	0
	.sleb128	16
	.byte		"Os_Proc_ISR_CAT2"
	.byte		0
	.sleb128	1
	.sleb128	0
.L12198:
.L12121:
	.sleb128	15
	.4byte		.L12105
	.uleb128	52
	.uleb128	1
	.4byte		.L12199-.L2
	.uleb128	4
	.sleb128	16
	.byte		"OS_TRUSTED"
	.byte		0
	.sleb128	0
	.sleb128	16
	.byte		"OS_NONTRUSTED"
	.byte		0
	.sleb128	1
	.sleb128	0
.L12199:
.L12169:
	.sleb128	15
	.4byte		.L12150
	.uleb128	32
	.uleb128	1
	.4byte		.L12200-.L2
	.uleb128	4
	.sleb128	16
	.byte		"OS_EXCEPTION_NONE"
	.byte		0
	.sleb128	0
	.sleb128	16
	.byte		"OS_EXCEPTION_CRITICAL_INPUT"
	.byte		0
	.sleb128	1
	.sleb128	16
	.byte		"OS_EXCEPTION_MACHINE_CHECK"
	.byte		0
	.sleb128	2
	.sleb128	16
	.byte		"OS_EXCEPTION_DATA_STORAGE"
	.byte		0
	.sleb128	3
	.sleb128	16
	.byte		"OS_EXCEPTION_INSTRUCTION_STORAGE"
	.byte		0
	.sleb128	4
	.sleb128	16
	.byte		"OS_EXCEPTION_EXTERNAL_INPUT"
	.byte		0
	.sleb128	5
	.sleb128	16
	.byte		"OS_EXCEPTION_ALIGNMENT"
	.byte		0
	.sleb128	6
	.sleb128	16
	.byte		"OS_EXCEPTION_PROGRAM"
	.byte		0
	.sleb128	7
	.sleb128	16
	.byte		"OS_EXCEPTION_FLOATINGPOINT_UNAVAILABLE"
	.byte		0
	.sleb128	8
	.sleb128	16
	.byte		"OS_EXCEPTION_AUX_PROC_UNAVAILABLE"
	.byte		0
	.sleb128	9
	.sleb128	16
	.byte		"OS_EXCEPTION_DECREMENTER"
	.byte		0
	.sleb128	10
	.sleb128	16
	.byte		"OS_EXCEPTION_FIXED_INTERVAL_TIMER"
	.byte		0
	.sleb128	11
	.sleb128	16
	.byte		"OS_EXCEPTION_WATCHDOG"
	.byte		0
	.sleb128	12
	.sleb128	16
	.byte		"OS_EXCEPTION_DATA_TLB_ERROR"
	.byte		0
	.sleb128	13
	.sleb128	16
	.byte		"OS_EXCEPTION_INSTRUCTION_TLB_ERROR"
	.byte		0
	.sleb128	14
	.sleb128	16
	.byte		"OS_EXCEPTION_DEBUG"
	.byte		0
	.sleb128	15
	.sleb128	16
	.byte		"OS_EXCEPTION_SPE_UNAVAILABLE"
	.byte		0
	.sleb128	16
	.sleb128	16
	.byte		"OS_EXCEPTION_SPE_DATA"
	.byte		0
	.sleb128	17
	.sleb128	16
	.byte		"OS_EXCEPTION_SPE_ROUND"
	.byte		0
	.sleb128	18
	.sleb128	16
	.byte		"OS_EXCEPTION_COUNT"
	.byte		0
	.sleb128	19
	.sleb128	0
.L12200:
.L12186:
	.sleb128	15
	.4byte		.L12170
	.uleb128	174
	.uleb128	1
	.4byte		.L12201-.L2
	.uleb128	4
	.sleb128	16
	.byte		"E_OS_SYS_OK"
	.byte		0
	.sleb128	0
	.sleb128	16
	.byte		"E_OS_SYS_UNKNOWN_API"
	.byte		0
	.sleb128	1
	.sleb128	16
	.byte		"E_OS_SYS_INVALID_STARTSTATE"
	.byte		0
	.sleb128	2
	.sleb128	16
	.byte		"E_OS_SYS_INVALID_MASTERAPPMODE"
	.byte		0
	.sleb128	3
	.sleb128	16
	.byte		"E_OS_SYS_INVALID_SLAVEAPPMODE"
	.byte		0
	.sleb128	4
	.sleb128	16
	.byte		"E_OS_SYS_COUNTERACTION_OVERFLOW"
	.byte		0
	.sleb128	5
	.sleb128	16
	.byte		"E_OS_SYS_COUNTEREP_OVERFLOW"
	.byte		0
	.sleb128	6
	.sleb128	16
	.byte		"E_OS_SYS_INVALID_COUNTEROWNER"
	.byte		0
	.sleb128	7
	.sleb128	16
	.byte		"E_OS_SYS_WRONG_APIMAGIC"
	.byte		0
	.sleb128	8
	.sleb128	16
	.byte		"E_OS_SYS_WRONG_DISPATCHKIND1"
	.byte		0
	.sleb128	9
	.sleb128	16
	.byte		"E_OS_SYS_WRONG_DISPATCHKIND2"
	.byte		0
	.sleb128	10
	.sleb128	16
	.byte		"E_OS_SYS_WRONG_DISPATCHKIND3"
	.byte		0
	.sleb128	11
	.sleb128	16
	.byte		"E_OS_SYS_WRONG_DISPATCHKIND4"
	.byte		0
	.sleb128	12
	.sleb128	16
	.byte		"E_OS_SYS_WRONG_DISPATCHKIND5"
	.byte		0
	.sleb128	13
	.sleb128	16
	.byte		"E_OS_SYS_DISPATCHER_OVERFLOW"
	.byte		0
	.sleb128	14
	.sleb128	16
	.byte		"E_OS_SYS_INVALID_ALARMACTION"
	.byte		0
	.sleb128	15
	.sleb128	16
	.byte		"E_OS_SYS_INVALID_SCHTBLSTARTKIND"
	.byte		0
	.sleb128	16
	.sleb128	16
	.byte		"E_OS_SYS_INVALID_ISRPROCKIND"
	.byte		0
	.sleb128	17
	.sleb128	16
	.byte		"E_OS_SYS_WRONG_TPSTATE1"
	.byte		0
	.sleb128	18
	.sleb128	16
	.byte		"E_OS_SYS_WRONG_TPSTATE2"
	.byte		0
	.sleb128	19
	.sleb128	16
	.byte		"E_OS_SYS_WRONG_TPSTATE3"
	.byte		0
	.sleb128	20
	.sleb128	16
	.byte		"E_OS_SYS_WRONG_TPSTATE4"
	.byte		0
	.sleb128	21
	.sleb128	16
	.byte		"E_OS_SYS_WRONG_TPSTATE5"
	.byte		0
	.sleb128	22
	.sleb128	16
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION0"
	.byte		0
	.sleb128	23
	.sleb128	16
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION1"
	.byte		0
	.sleb128	24
	.sleb128	16
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION2"
	.byte		0
	.sleb128	25
	.sleb128	16
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION3"
	.byte		0
	.sleb128	26
	.sleb128	16
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION4"
	.byte		0
	.sleb128	27
	.sleb128	16
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION5"
	.byte		0
	.sleb128	28
	.sleb128	16
	.byte		"E_OS_SYS_INVALID_QUEUEHEAD"
	.byte		0
	.sleb128	29
	.sleb128	16
	.byte		"E_OS_SYS_INVALID_QUEUEINDEX"
	.byte		0
	.sleb128	30
	.sleb128	16
	.byte		"E_OS_SYS_INVALID_PROCSTATE"
	.byte		0
	.sleb128	31
	.sleb128	16
	.byte		"E_OS_SYS_LINKTIMEGUARD_ERROR"
	.byte		0
	.sleb128	32
	.sleb128	16
	.byte		"E_OS_SYS_WRONG_CORESTATE"
	.byte		0
	.sleb128	33
	.sleb128	16
	.byte		"E_OS_SYS_COUNTERID"
	.byte		0
	.sleb128	34
	.sleb128	16
	.byte		"E_OS_SYS_COUNTER_CANCELEDNOTFOUND"
	.byte		0
	.sleb128	35
	.sleb128	16
	.byte		"E_OS_SYS_COUNTER_ACTIONCHAINISBROKEN"
	.byte		0
	.sleb128	36
	.sleb128	16
	.byte		"E_OS_SYS_COUNTER_ACTIONCHAINISBROKEN2"
	.byte		0
	.sleb128	37
	.sleb128	16
	.byte		"E_OS_SYS_COUNTER_EPCHAINISBROKEN"
	.byte		0
	.sleb128	38
	.sleb128	16
	.byte		"E_OS_SYS_ALARMID"
	.byte		0
	.sleb128	39
	.sleb128	16
	.byte		"E_OS_SYS_RESUMEPROC_MAXACTIVATION"
	.byte		0
	.sleb128	40
	.sleb128	16
	.byte		"E_OS_SYS_QUEUEELEMENT_OVERFLOW"
	.byte		0
	.sleb128	41
	.sleb128	16
	.byte		"E_OS_SYS_SCHEDULER_ERROR"
	.byte		0
	.sleb128	42
	.sleb128	16
	.byte		"E_OS_SYS_EVENTSTAT"
	.byte		0
	.sleb128	43
	.sleb128	16
	.byte		"E_OS_SYS_TASKID"
	.byte		0
	.sleb128	44
	.sleb128	16
	.byte		"E_OS_SYS_TASKMISSINGEND_PROCKIND"
	.byte		0
	.sleb128	45
	.sleb128	16
	.byte		"E_OS_SYS_TASKMISSINGEND_COREID"
	.byte		0
	.sleb128	46
	.sleb128	16
	.byte		"E_OS_SYS_INVALID_TIMINGPROTECTIONSTATE"
	.byte		0
	.sleb128	47
	.sleb128	16
	.byte		"E_OS_SYS_INVALID_EXCEPTION"
	.byte		0
	.sleb128	48
	.sleb128	16
	.byte		"E_OS_SYS_INVALID_PLATFORM_TIMER"
	.byte		0
	.sleb128	49
	.sleb128	16
	.byte		"E_OS_SYS_KERNELSTACK_OVERFLOW"
	.byte		0
	.sleb128	50
	.sleb128	16
	.byte		"E_OS_SYS_INVALID_SECTION_SIZE"
	.byte		0
	.sleb128	51
	.sleb128	16
	.byte		"E_OS_SYS_MEMPROT_INVALID_APP"
	.byte		0
	.sleb128	52
	.sleb128	16
	.byte		"E_OS_SYS_CALLEVEL"
	.byte		0
	.sleb128	53
	.sleb128	16
	.byte		"E_OS_SYS_TIMER_RUNNING"
	.byte		0
	.sleb128	54
	.sleb128	16
	.byte		"E_OS_SYS_TIMER_STOPPED"
	.byte		0
	.sleb128	55
	.sleb128	16
	.byte		"E_OS_SYS_TIMER_TOO_MUCH_JITTER"
	.byte		0
	.sleb128	56
	.sleb128	16
	.byte		"E_OS_SYS_SSG_NESTING"
	.byte		0
	.sleb128	57
	.sleb128	16
	.byte		"E_OS_SYS_SSG_OVERFLOW"
	.byte		0
	.sleb128	58
	.sleb128	16
	.byte		"E_OS_SYS_CORELOCK_LOCKED"
	.byte		0
	.sleb128	59
	.sleb128	16
	.byte		"E_OS_SYS_CORELOCK_UNLOCKED"
	.byte		0
	.sleb128	60
	.sleb128	16
	.byte		"E_OS_SYS_TFPROCAPPINCONSISTENCY"
	.byte		0
	.sleb128	61
	.sleb128	16
	.byte		"E_OS_SYS_PROCENABLEDALREADY"
	.byte		0
	.sleb128	62
	.sleb128	0
.L12201:
.L12181:
	.sleb128	15
	.4byte		.L12170
	.uleb128	86
	.uleb128	1
	.4byte		.L12202-.L2
	.uleb128	4
	.sleb128	16
	.byte		"OSServiceId_GetApplicationID"
	.byte		0
	.sleb128	0
	.sleb128	16
	.byte		"OSServiceId_GetISRID"
	.byte		0
	.sleb128	1
	.sleb128	16
	.byte		"OSServiceId_CallTrustedFunction"
	.byte		0
	.sleb128	2
	.sleb128	16
	.byte		"OSServiceId_CheckISRMemoryAccess"
	.byte		0
	.sleb128	3
	.sleb128	16
	.byte		"OSServiceId_CheckTaskMemoryAccess"
	.byte		0
	.sleb128	4
	.sleb128	16
	.byte		"OSServiceId_CheckObjectAccess"
	.byte		0
	.sleb128	5
	.sleb128	16
	.byte		"OSServiceId_CheckObjectOwnership"
	.byte		0
	.sleb128	6
	.sleb128	16
	.byte		"OSServiceId_StartScheduleTableRel"
	.byte		0
	.sleb128	7
	.sleb128	16
	.byte		"OSServiceId_StartScheduleTableAbs"
	.byte		0
	.sleb128	8
	.sleb128	16
	.byte		"OSServiceId_StopScheduleTable"
	.byte		0
	.sleb128	9
	.sleb128	16
	.byte		"OSServiceId_NextScheduleTable"
	.byte		0
	.sleb128	10
	.sleb128	16
	.byte		"OSServiceId_StartScheduleTableSynchron"
	.byte		0
	.sleb128	11
	.sleb128	16
	.byte		"OSServiceId_SyncScheduleTable"
	.byte		0
	.sleb128	12
	.sleb128	16
	.byte		"OSServiceId_SetScheduleTableAsync"
	.byte		0
	.sleb128	13
	.sleb128	16
	.byte		"OSServiceId_GetScheduleTableStatus"
	.byte		0
	.sleb128	14
	.sleb128	16
	.byte		"OSServiceId_IncrementCounter"
	.byte		0
	.sleb128	15
	.sleb128	16
	.byte		"OSServiceId_GetCounterValue"
	.byte		0
	.sleb128	16
	.sleb128	16
	.byte		"OSServiceId_GetElapsedValue"
	.byte		0
	.sleb128	17
	.sleb128	16
	.byte		"OSServiceId_TerminateApplication"
	.byte		0
	.sleb128	18
	.sleb128	16
	.byte		"OSServiceId_AllowAcess"
	.byte		0
	.sleb128	19
	.sleb128	16
	.byte		"OSServiceId_GetApplicationState"
	.byte		0
	.sleb128	20
	.sleb128	16
	.byte		"OSServiceId_GetNumberOfActivatedCores"
	.byte		0
	.sleb128	21
	.sleb128	16
	.byte		"OSServiceId_GetCoreID"
	.byte		0
	.sleb128	22
	.sleb128	16
	.byte		"OSServiceId_StartCore"
	.byte		0
	.sleb128	23
	.sleb128	16
	.byte		"OSServiceId_StartNonAutosarCore"
	.byte		0
	.sleb128	24
	.sleb128	16
	.byte		"OSServiceId_GetSpinlock"
	.byte		0
	.sleb128	25
	.sleb128	16
	.byte		"OSServiceId_ReleaseSpinlock"
	.byte		0
	.sleb128	26
	.sleb128	16
	.byte		"OSServiceId_TryToGetSpinlock"
	.byte		0
	.sleb128	27
	.sleb128	16
	.byte		"OSServiceId_ShutdownAllCores"
	.byte		0
	.sleb128	28
	.sleb128	16
	.byte		"OSServiceId_ControlIdle"
	.byte		0
	.sleb128	29
	.sleb128	16
	.byte		"OSServiceId_IOC_Send"
	.byte		0
	.sleb128	30
	.sleb128	16
	.byte		"OSServiceId_IOC_Write"
	.byte		0
	.sleb128	31
	.sleb128	16
	.byte		"OSServiceId_IOC_SendGroup"
	.byte		0
	.sleb128	32
	.sleb128	16
	.byte		"OSServiceId_IOC_WriteFGroup"
	.byte		0
	.sleb128	33
	.sleb128	16
	.byte		"OSServiceId_IOC_Receive"
	.byte		0
	.sleb128	34
	.sleb128	16
	.byte		"OSServiceId_IOC_Read"
	.byte		0
	.sleb128	35
	.sleb128	16
	.byte		"OSServiceId_IOC_ReceiveGroup"
	.byte		0
	.sleb128	36
	.sleb128	16
	.byte		"OSServiceId_IOC_ReadGroup"
	.byte		0
	.sleb128	37
	.sleb128	16
	.byte		"OSServiceId_IOC_EmptyQueue"
	.byte		0
	.sleb128	38
	.sleb128	16
	.byte		"OSServiceId_IOC_ReceiverPullCB"
	.byte		0
	.sleb128	39
	.sleb128	16
	.byte		"OSServiceId_ActivateTask"
	.byte		0
	.sleb128	128
	.sleb128	16
	.byte		"OSServiceId_TerminateTask"
	.byte		0
	.sleb128	129
	.sleb128	16
	.byte		"OSServiceId_ChainTask"
	.byte		0
	.sleb128	130
	.sleb128	16
	.byte		"OSServiceId_Schedule"
	.byte		0
	.sleb128	131
	.sleb128	16
	.byte		"OSServiceId_GetTaskID"
	.byte		0
	.sleb128	132
	.sleb128	16
	.byte		"OSServiceId_GetTaskState"
	.byte		0
	.sleb128	133
	.sleb128	16
	.byte		"OSServiceId_EnableAllInterrupts"
	.byte		0
	.sleb128	134
	.sleb128	16
	.byte		"OSServiceId_DisableAllInterrupts"
	.byte		0
	.sleb128	135
	.sleb128	16
	.byte		"OSServiceId_ResumeAllInterrupts"
	.byte		0
	.sleb128	136
	.sleb128	16
	.byte		"OSServiceId_SuspendAllInterrupts"
	.byte		0
	.sleb128	137
	.sleb128	16
	.byte		"OSServiceId_ResumeOSInterrupts"
	.byte		0
	.sleb128	138
	.sleb128	16
	.byte		"OSServiceId_SuspendOSInterrupts"
	.byte		0
	.sleb128	139
	.sleb128	16
	.byte		"OSServiceId_GetResource"
	.byte		0
	.sleb128	140
	.sleb128	16
	.byte		"OSServiceId_ReleaseResource"
	.byte		0
	.sleb128	141
	.sleb128	16
	.byte		"OSServiceId_SetEvent"
	.byte		0
	.sleb128	142
	.sleb128	16
	.byte		"OSServiceId_ClearEvent"
	.byte		0
	.sleb128	143
	.sleb128	16
	.byte		"OSServiceId_GetEvent"
	.byte		0
	.sleb128	144
	.sleb128	16
	.byte		"OSServiceId_WaitEvent"
	.byte		0
	.sleb128	145
	.sleb128	16
	.byte		"OSServiceId_GetAlarmBase"
	.byte		0
	.sleb128	146
	.sleb128	16
	.byte		"OSServiceId_GetAlarm"
	.byte		0
	.sleb128	147
	.sleb128	16
	.byte		"OSServiceId_SetRelAlarm"
	.byte		0
	.sleb128	148
	.sleb128	16
	.byte		"OSServiceId_SetAbsAlarm"
	.byte		0
	.sleb128	149
	.sleb128	16
	.byte		"OSServiceId_CancelAlarm"
	.byte		0
	.sleb128	150
	.sleb128	16
	.byte		"OSServiceId_GetActiveApplicationMode"
	.byte		0
	.sleb128	151
	.sleb128	16
	.byte		"OSServiceId_StartOS"
	.byte		0
	.sleb128	152
	.sleb128	16
	.byte		"OSServiceId_ShutdownOS"
	.byte		0
	.sleb128	153
	.sleb128	16
	.byte		"OSServiceId_INVALIDSERVICE"
	.byte		0
	.sleb128	255
	.sleb128	0
.L12202:
.L11942:
	.sleb128	15
	.4byte		.L12203
	.uleb128	43
	.uleb128	1
	.4byte		.L12204-.L2
	.uleb128	4
	.sleb128	16
	.byte		"TRYTOGETSPINLOCK_SUCCESS"
	.byte		0
	.sleb128	0
	.sleb128	16
	.byte		"TRYTOGETSPINLOCK_NOSUCCESS"
	.byte		0
	.sleb128	1
	.sleb128	0
.L12204:
.L12009:
	.sleb128	15
	.4byte		.L12205
	.uleb128	37
	.uleb128	1
	.4byte		.L12206-.L2
	.uleb128	4
	.sleb128	16
	.byte		"RUNNING"
	.byte		0
	.sleb128	0
	.sleb128	16
	.byte		"WAITING"
	.byte		0
	.sleb128	1
	.sleb128	16
	.byte		"READY"
	.byte		0
	.sleb128	2
	.sleb128	16
	.byte		"SUSPENDED"
	.byte		0
	.sleb128	3
	.sleb128	0
.L12206:
.L11980:
	.sleb128	15
	.4byte		.L12207
	.uleb128	40
	.uleb128	1
	.4byte		.L12208-.L2
	.uleb128	4
	.sleb128	16
	.byte		"SCHEDULETABLE_STOPPED"
	.byte		0
	.sleb128	0
	.sleb128	16
	.byte		"SCHEDULETABLE_NEXT"
	.byte		0
	.sleb128	1
	.sleb128	16
	.byte		"SCHEDULETABLE_WAITING"
	.byte		0
	.sleb128	2
	.sleb128	16
	.byte		"SCHEDULETABLE_RUNNING"
	.byte		0
	.sleb128	3
	.sleb128	16
	.byte		"SCHEDULETABLE_RUNNING_AND_SYNCHRONOUS"
	.byte		0
	.sleb128	4
	.sleb128	0
.L12208:
.L11956:
	.sleb128	15
	.4byte		.L12209
	.uleb128	47
	.uleb128	1
	.4byte		.L12210-.L2
	.uleb128	4
	.sleb128	16
	.byte		"OBJECT_TASK"
	.byte		0
	.sleb128	0
	.sleb128	16
	.byte		"OBJECT_ISR"
	.byte		0
	.sleb128	1
	.sleb128	16
	.byte		"OBJECT_ALARM"
	.byte		0
	.sleb128	2
	.sleb128	16
	.byte		"OBJECT_RESOURCE"
	.byte		0
	.sleb128	3
	.sleb128	16
	.byte		"OBJECT_COUNTER"
	.byte		0
	.sleb128	4
	.sleb128	16
	.byte		"OBJECT_SCHEDULETABLE"
	.byte		0
	.sleb128	5
	.sleb128	0
.L12210:
.L11685:
	.sleb128	15
	.4byte		.L12187
	.uleb128	50
	.uleb128	1
	.4byte		.L12211-.L2
	.uleb128	4
	.sleb128	16
	.byte		"Os_false"
	.byte		0
	.sleb128	0
	.sleb128	16
	.byte		"Os_true"
	.byte		0
	.sleb128	1
	.sleb128	0
.L12211:
.L12025:
	.sleb128	15
	.4byte		.L12187
	.uleb128	42
	.uleb128	13
	.4byte		.L12212-.L2
	.uleb128	4
	.sleb128	16
	.byte		"OS_SHUTDOWN_INDIVIDUAL"
	.byte		0
	.sleb128	0
	.sleb128	16
	.byte		"OS_SHUTDOWN_SYNCHRONIZED"
	.byte		0
	.sleb128	1
	.sleb128	0
.L12212:
.L11926:
	.sleb128	15
	.4byte		.L12213
	.uleb128	83
	.uleb128	14
	.4byte		.L12214-.L2
	.uleb128	4
	.sleb128	16
	.byte		"IDLE_NO_HALT"
	.byte		0
	.sleb128	0
	.sleb128	16
	.byte		"IDLE_WAIT"
	.byte		0
	.sleb128	1
	.sleb128	16
	.byte		"IDLE_NUMBEROFOPTIONS"
	.byte		0
	.sleb128	2
	.sleb128	0
.L12214:
	.section	.debug_info,,n
.L11532:
	.sleb128	18
	.byte		"Os_ProcStatType"
	.byte		0
	.4byte		.L11533
	.section	.debug_info,,n
.L11531:
	.sleb128	19
	.4byte		.L11532
	.section	.debug_info,,n
.L11530:
	.sleb128	20
	.4byte		.L11531
.L11538:
	.sleb128	18
	.byte		"Os_SchedulerDynType"
	.byte		0
	.4byte		.L11539
.L11537:
	.sleb128	19
	.4byte		.L11538
.L11536:
	.sleb128	20
	.4byte		.L11537
.L11535:
	.sleb128	19
	.4byte		.L11536
.L11542:
	.sleb128	20
	.4byte		.L11543
.L11553:
	.sleb128	18
	.byte		"Os_ApplicationStatType"
	.byte		0
	.4byte		.L11554
.L11552:
	.sleb128	19
	.4byte		.L11553
.L11551:
	.sleb128	20
	.4byte		.L11552
.L11550:
	.sleb128	19
	.4byte		.L11551
.L11559:
	.sleb128	18
	.byte		"Os_Core_DynInitType"
	.byte		0
	.4byte		.L11560
.L11558:
	.sleb128	20
	.4byte		.L11559
.L11557:
	.sleb128	19
	.4byte		.L11558
	.section	.debug_info,,n
.L11571:
	.sleb128	21
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L11570:
	.sleb128	18
	.byte		"uint16"
	.byte		0
	.4byte		.L11571
.L11569:
	.sleb128	18
	.byte		"CoreIdType"
	.byte		0
	.4byte		.L11570
.L11568:
	.sleb128	19
	.4byte		.L11569
.L11577:
	.sleb128	20
	.4byte		.L11538
.L11576:
	.sleb128	19
	.4byte		.L11577
.L11582:
	.sleb128	18
	.byte		"Os_SchedulerDynInitType"
	.byte		0
	.4byte		.L11583
.L11581:
	.sleb128	20
	.4byte		.L11582
.L11580:
	.sleb128	19
	.4byte		.L11581
.L11598:
	.sleb128	21
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L11597:
	.sleb128	18
	.byte		"boolean"
	.byte		0
	.4byte		.L11598
.L11596:
	.sleb128	19
	.4byte		.L11597
.L11608:
	.sleb128	21
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L11607:
	.sleb128	18
	.byte		"uint32"
	.byte		0
	.4byte		.L11608
.L11606:
	.sleb128	18
	.byte		"Os_PriorityType"
	.byte		0
	.4byte		.L11607
.L11605:
	.sleb128	19
	.4byte		.L11606
.L11618:
	.sleb128	18
	.byte		"Os_SchedulerQueueStructureType"
	.byte		0
	.4byte		.L11619
.L11617:
	.sleb128	19
	.4byte		.L11618
.L11616:
	.sleb128	20
	.4byte		.L11617
.L11615:
	.sleb128	19
	.4byte		.L11616
.L11639:
	.sleb128	18
	.byte		"Os_APICallType"
	.byte		0
	.4byte		.L11640
.L11638:
	.sleb128	20
	.4byte		.L11639
	.section	.debug_info,,n
.L11644:
	.sleb128	22
	.4byte		.L11645
	.byte		0x1
.L11646:
	.sleb128	20
	.4byte		.L11640
	.section	.debug_info,,n
	.sleb128	23
	.4byte		.L11646
	.sleb128	0
.L11645:
.L11643:
	.sleb128	20
	.4byte		.L11644
.L11642:
	.sleb128	18
	.byte		"LightServiceFunctionType"
	.byte		0
	.4byte		.L11643
.L11655:
	.sleb128	18
	.byte		"Os_DispatchElementType"
	.byte		0
	.4byte		.L11656
.L11654:
	.sleb128	20
	.4byte		.L11655
.L11667:
	.sleb128	18
	.byte		"Os_ScheduleType"
	.byte		0
	.4byte		.L11668
.L11678:
	.sleb128	18
	.byte		"Os_API_LockType"
	.byte		0
	.4byte		.L11679
.L11684:
	.sleb128	18
	.byte		"Os_BoolType"
	.byte		0
	.4byte		.L11685
.L11695:
	.sleb128	18
	.byte		"Os_IsrDynType"
	.byte		0
	.4byte		.L11696
.L11694:
	.sleb128	20
	.4byte		.L11695
.L11693:
	.sleb128	19
	.4byte		.L11694
.L11705:
	.sleb128	18
	.byte		"Os_ObjectType"
	.byte		0
	.4byte		.L11607
.L11704:
	.sleb128	18
	.byte		"ProcType"
	.byte		0
	.4byte		.L11705
.L11703:
	.sleb128	18
	.byte		"ISRType"
	.byte		0
	.4byte		.L11704
	.section	.debug_info,,n
.L11731:
	.sleb128	24
	.4byte		.L11732-.L2
	.4byte		.L11617
	.section	.debug_info,,n
	.sleb128	25
	.uleb128	1
	.sleb128	0
.L11732:
.L11738:
	.sleb128	18
	.byte		"Os_Core_StatType"
	.byte		0
	.4byte		.L11739
.L11737:
	.sleb128	19
	.4byte		.L11738
.L11735:
	.sleb128	24
	.4byte		.L11736-.L2
	.4byte		.L11737
	.sleb128	25
	.uleb128	1
	.sleb128	0
.L11736:
.L11743:
	.sleb128	18
	.byte		"Os_Core_DynSharedType"
	.byte		0
	.4byte		.L11744
.L11741:
	.sleb128	24
	.4byte		.L11742-.L2
	.4byte		.L11743
	.sleb128	25
	.uleb128	1
	.sleb128	0
.L11742:
.L11749:
	.sleb128	19
	.4byte		.L11607
.L11747:
	.sleb128	24
	.4byte		.L11748-.L2
	.4byte		.L11749
	.sleb128	25
	.uleb128	1
	.sleb128	0
.L11748:
.L11754:
	.sleb128	18
	.byte		"Os_IsrRegister_t"
	.byte		0
	.4byte		.L11607
.L11752:
	.sleb128	24
	.4byte		.L11753-.L2
	.4byte		.L11754
	.sleb128	25
	.uleb128	1
	.sleb128	0
.L11753:
.L11757:
	.sleb128	19
	.4byte		.L11639
.L11761:
	.sleb128	18
	.byte		"Os_Core_DynType"
	.byte		0
	.4byte		.L11762
.L11760:
	.sleb128	20
	.4byte		.L11761
.L11759:
	.sleb128	19
	.4byte		.L11760
.L11763:
	.sleb128	19
	.4byte		.L11654
	.section	.debug_info,,n
.L11767:
	.sleb128	26
	.4byte		.L11768-.L2
	.byte		0x1
.L11769:
	.sleb128	19
	.4byte		.L11530
	.sleb128	23
	.4byte		.L11769
	.sleb128	0
.L11768:
.L11766:
	.sleb128	20
	.4byte		.L11767
.L11765:
	.sleb128	18
	.byte		"Os_PrepareContextFunctionType"
	.byte		0
	.4byte		.L11766
.L11764:
	.sleb128	19
	.4byte		.L11765
.L11776:
	.sleb128	18
	.byte		"Os_StackType"
	.byte		0
	.4byte		.L11607
.L11775:
	.sleb128	20
	.4byte		.L11776
	.section	.debug_info,,n
.L11773:
	.sleb128	27
	.4byte		.L11774-.L2
	.4byte		.L11775
	.byte		0x1
	.sleb128	23
	.4byte		.L11530
	.sleb128	0
.L11774:
.L11772:
	.sleb128	20
	.4byte		.L11773
.L11771:
	.sleb128	18
	.byte		"Os_GetStackPointerFunctionType"
	.byte		0
	.4byte		.L11772
.L11770:
	.sleb128	19
	.4byte		.L11771
.L11778:
	.sleb128	18
	.byte		"Os_IsrDynInitType"
	.byte		0
	.4byte		.L11779
.L11781:
	.sleb128	18
	.byte		"Os_DispatcherType"
	.byte		0
	.4byte		.L11782
.L11783:
	.sleb128	18
	.byte		"Os_PublicData_NoInitType"
	.byte		0
	.4byte		.L11784
.L11786:
	.sleb128	18
	.byte		"Os_HooksDynType"
	.byte		0
	.4byte		.L11787
.L11790:
	.sleb128	19
	.4byte		.L11533
.L11789:
	.sleb128	20
	.4byte		.L11790
.L11792:
	.sleb128	18
	.byte		"Os_SchedulerQueueElementType"
	.byte		0
	.4byte		.L11543
.L11797:
	.sleb128	18
	.byte		"Os_SchedulerQueueType"
	.byte		0
	.4byte		.L11798
.L11796:
	.sleb128	20
	.4byte		.L11797
.L11795:
	.sleb128	19
	.4byte		.L11796
.L11800:
	.sleb128	20
	.4byte		.L11792
.L11806:
	.sleb128	18
	.byte		"Os_IsrPlatformConfigType"
	.byte		0
	.4byte		.L11807
.L11805:
	.sleb128	19
	.4byte		.L11806
.L11804:
	.sleb128	20
	.4byte		.L11805
.L11810:
	.sleb128	18
	.byte		"Os_IsrApiTable"
	.byte		0
	.4byte		.L11811
.L11809:
	.sleb128	19
	.4byte		.L11810
.L11808:
	.sleb128	20
	.4byte		.L11809
.L11812:
	.sleb128	24
	.4byte		.L11813-.L2
	.4byte		.L11607
	.sleb128	25
	.uleb128	7
	.sleb128	0
.L11813:
.L11816:
	.sleb128	18
	.byte		"Os_DispatchKindType"
	.byte		0
	.4byte		.L11817
.L11820:
	.sleb128	18
	.byte		"uint8"
	.byte		0
	.4byte		.L11598
.L11819:
	.sleb128	18
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L11820
.L11823:
	.sleb128	26
	.4byte		.L11824-.L2
	.byte		0x1
	.sleb128	23
	.4byte		.L11646
.L11825:
	.sleb128	19
	.4byte		.L11789
	.sleb128	23
	.4byte		.L11825
	.sleb128	0
.L11824:
.L11822:
	.sleb128	20
	.4byte		.L11823
.L11821:
	.sleb128	18
	.byte		"Os_API_Func_Type"
	.byte		0
	.4byte		.L11822
.L11828:
	.sleb128	18
	.byte		"Os_API_StartOsType"
	.byte		0
	.4byte		.L11829
.L11830:
	.sleb128	18
	.byte		"Os_API_ShutdownOsType"
	.byte		0
	.4byte		.L11831
.L11832:
	.sleb128	18
	.byte		"Os_API_ShutdownOsInternalType"
	.byte		0
	.4byte		.L11833
.L11834:
	.sleb128	18
	.byte		"Os_API_ShutdownAllCoresType"
	.byte		0
	.4byte		.L11835
.L11836:
	.sleb128	18
	.byte		"Os_API_GetNumberOfActivatedCoresType"
	.byte		0
	.4byte		.L11837
.L11838:
	.sleb128	18
	.byte		"Os_API_ApiStartCoreType"
	.byte		0
	.4byte		.L11839
.L11840:
	.sleb128	18
	.byte		"Os_API_StartNonAutosarCoreType"
	.byte		0
	.4byte		.L11841
.L11842:
	.sleb128	18
	.byte		"Os_API_GetCoreIDType"
	.byte		0
	.4byte		.L11843
.L11844:
	.sleb128	18
	.byte		"Os_API_ActivateTaskType"
	.byte		0
	.4byte		.L11845
.L11846:
	.sleb128	18
	.byte		"Os_API_ChainTaskType"
	.byte		0
	.4byte		.L11847
.L11848:
	.sleb128	18
	.byte		"Os_API_GetTaskIDType"
	.byte		0
	.4byte		.L11849
.L11850:
	.sleb128	18
	.byte		"Os_API_GetTaskStateType"
	.byte		0
	.4byte		.L11851
.L11852:
	.sleb128	18
	.byte		"Os_API_SetEventType"
	.byte		0
	.4byte		.L11853
.L11854:
	.sleb128	18
	.byte		"Os_API_ClearEventType"
	.byte		0
	.4byte		.L11855
.L11856:
	.sleb128	18
	.byte		"Os_API_GetEventType"
	.byte		0
	.4byte		.L11857
.L11858:
	.sleb128	18
	.byte		"Os_API_WaitEventType"
	.byte		0
	.4byte		.L11859
.L11860:
	.sleb128	18
	.byte		"Os_API_GetResourceType"
	.byte		0
	.4byte		.L11861
.L11862:
	.sleb128	18
	.byte		"Os_API_ReleaseResourceType"
	.byte		0
	.4byte		.L11863
.L11864:
	.sleb128	18
	.byte		"Os_API_GetAlarmBaseType"
	.byte		0
	.4byte		.L11865
.L11866:
	.sleb128	18
	.byte		"Os_API_GetAlarmType"
	.byte		0
	.4byte		.L11867
.L11868:
	.sleb128	18
	.byte		"Os_API_SetRelAlarmType"
	.byte		0
	.4byte		.L11869
.L11870:
	.sleb128	18
	.byte		"Os_API_SetAbsAlarmType"
	.byte		0
	.4byte		.L11871
.L11872:
	.sleb128	18
	.byte		"Os_API_CancelAlarmType"
	.byte		0
	.4byte		.L11873
.L11874:
	.sleb128	18
	.byte		"Os_API_GetApplicationStateType"
	.byte		0
	.4byte		.L11875
.L11876:
	.sleb128	18
	.byte		"Os_API_TerminateApplicationType"
	.byte		0
	.4byte		.L11877
.L11878:
	.sleb128	18
	.byte		"Os_API_GetApplicationIDType"
	.byte		0
	.4byte		.L11879
.L11880:
	.sleb128	18
	.byte		"Os_API_GetISRIDType"
	.byte		0
	.4byte		.L11881
.L11882:
	.sleb128	18
	.byte		"Os_API_GetActiveApplicationModeType"
	.byte		0
	.4byte		.L11883
.L11884:
	.sleb128	18
	.byte		"Os_API_IncrementCounterType"
	.byte		0
	.4byte		.L11885
.L11886:
	.sleb128	18
	.byte		"Os_API_GetCounterValueType"
	.byte		0
	.4byte		.L11887
.L11888:
	.sleb128	18
	.byte		"Os_API_GetElapsedValueType"
	.byte		0
	.4byte		.L11889
.L11890:
	.sleb128	18
	.byte		"Os_API_StartScheduleTableAbsType"
	.byte		0
	.4byte		.L11891
.L11892:
	.sleb128	18
	.byte		"Os_API_StartScheduleTableRelType"
	.byte		0
	.4byte		.L11893
.L11894:
	.sleb128	18
	.byte		"Os_API_StopScheduleTableType"
	.byte		0
	.4byte		.L11895
.L11896:
	.sleb128	18
	.byte		"Os_API_GetScheduleTableStatusType"
	.byte		0
	.4byte		.L11897
.L11898:
	.sleb128	18
	.byte		"Os_API_NextScheduleTableType"
	.byte		0
	.4byte		.L11899
.L11900:
	.sleb128	18
	.byte		"Os_API_StartScheduleTableSynchronType"
	.byte		0
	.4byte		.L11901
.L11902:
	.sleb128	18
	.byte		"Os_API_SyncScheduleTableType"
	.byte		0
	.4byte		.L11903
.L11904:
	.sleb128	18
	.byte		"Os_API_SetScheduleTableAsyncType"
	.byte		0
	.4byte		.L11905
.L11906:
	.sleb128	18
	.byte		"Os_API_CheckObjectAccessType"
	.byte		0
	.4byte		.L11907
.L11908:
	.sleb128	18
	.byte		"Os_API_CheckObjectOwnershipType"
	.byte		0
	.4byte		.L11909
.L11910:
	.sleb128	18
	.byte		"Os_API_CallTrustedFunctionType"
	.byte		0
	.4byte		.L11911
.L11912:
	.sleb128	18
	.byte		"Os_API_StackUsageType"
	.byte		0
	.4byte		.L11913
.L11914:
	.sleb128	18
	.byte		"Os_API_GetSpinlockType"
	.byte		0
	.4byte		.L11915
.L11916:
	.sleb128	18
	.byte		"Os_API_ReleaseSpinlockType"
	.byte		0
	.4byte		.L11917
.L11918:
	.sleb128	18
	.byte		"Os_API_TryToGetSpinlockType"
	.byte		0
	.4byte		.L11919
.L11920:
	.sleb128	18
	.byte		"Os_API_IocTransferType"
	.byte		0
	.4byte		.L11921
.L11922:
	.sleb128	18
	.byte		"Os_API_ControlIdleType"
	.byte		0
	.4byte		.L11923
.L11925:
	.sleb128	18
	.byte		"IdleModeType"
	.byte		0
	.4byte		.L11926
.L11930:
	.sleb128	18
	.byte		"Os_IOC_ChannelStatType"
	.byte		0
	.4byte		.L11931
.L11929:
	.sleb128	19
	.4byte		.L11930
.L11928:
	.sleb128	20
	.4byte		.L11929
	.section	.debug_info,,n
.L11937:
	.sleb128	28
	.byte		"void"
	.byte		0
	.byte		0x0
.L11936:
	.sleb128	20
	.4byte		.L11937
.L11934:
	.sleb128	24
	.4byte		.L11935-.L2
	.4byte		.L11936
	.sleb128	25
	.uleb128	1
	.sleb128	0
.L11935:
.L11933:
	.sleb128	18
	.byte		"Os_IOC_DataType"
	.byte		0
	.4byte		.L11934
.L11932:
	.sleb128	20
	.4byte		.L11933
.L11939:
	.sleb128	18
	.byte		"SpinlockIdType"
	.byte		0
	.4byte		.L11570
.L11941:
	.sleb128	18
	.byte		"TryToGetSpinlockType"
	.byte		0
	.4byte		.L11942
.L11940:
	.sleb128	20
	.4byte		.L11941
.L11946:
	.sleb128	18
	.byte		"TaskType"
	.byte		0
	.4byte		.L11704
.L11947:
	.sleb128	20
	.4byte		.L11820
.L11949:
	.sleb128	18
	.byte		"TrustedFunctionIndexType"
	.byte		0
	.4byte		.L11607
.L11950:
	.sleb128	18
	.byte		"TrustedFunctionParameterRefType"
	.byte		0
	.4byte		.L11936
.L11951:
	.sleb128	18
	.byte		"Os_TrustedFunctionReturnValueType"
	.byte		0
	.4byte		.L11952
.L11954:
	.sleb128	18
	.byte		"ApplicationType"
	.byte		0
	.4byte		.L11820
.L11955:
	.sleb128	18
	.byte		"ObjectTypeType"
	.byte		0
	.4byte		.L11956
.L11959:
	.sleb128	18
	.byte		"AlarmType"
	.byte		0
	.4byte		.L11705
.L11961:
	.sleb128	18
	.byte		"TickType"
	.byte		0
	.4byte		.L11607
.L11965:
	.sleb128	20
	.4byte		.L11961
.L11964:
	.sleb128	18
	.byte		"TickRefType"
	.byte		0
	.4byte		.L11965
.L11969:
	.sleb128	18
	.byte		"AlarmBaseType"
	.byte		0
	.4byte		.L11970
.L11968:
	.sleb128	20
	.4byte		.L11969
.L11967:
	.sleb128	18
	.byte		"AlarmBaseRefType"
	.byte		0
	.4byte		.L11968
.L11972:
	.sleb128	18
	.byte		"ScheduleTableType"
	.byte		0
	.4byte		.L11607
.L11979:
	.sleb128	18
	.byte		"ScheduleTableStatusType"
	.byte		0
	.4byte		.L11980
.L11978:
	.sleb128	20
	.4byte		.L11979
.L11977:
	.sleb128	18
	.byte		"ScheduleTableStatusRefType"
	.byte		0
	.4byte		.L11978
.L11985:
	.sleb128	18
	.byte		"CounterType"
	.byte		0
	.4byte		.L11607
.L11990:
	.sleb128	18
	.byte		"RestartType"
	.byte		0
	.4byte		.L11820
.L11995:
	.sleb128	18
	.byte		"ApplicationStateType"
	.byte		0
	.4byte		.L11820
.L11994:
	.sleb128	20
	.4byte		.L11995
.L11993:
	.sleb128	18
	.byte		"ApplicationStateRefType"
	.byte		0
	.4byte		.L11994
.L11999:
	.sleb128	21
	.byte		"unsigned long long"
	.byte		0
	.byte		0x7
	.byte		0x8
.L11998:
	.sleb128	18
	.byte		"uint64"
	.byte		0
	.4byte		.L11999
.L11997:
	.sleb128	18
	.byte		"EventMaskType"
	.byte		0
	.4byte		.L11998
.L12002:
	.sleb128	20
	.4byte		.L11997
.L12001:
	.sleb128	18
	.byte		"EventMaskRefType"
	.byte		0
	.4byte		.L12002
.L12008:
	.sleb128	18
	.byte		"TaskStateType"
	.byte		0
	.4byte		.L12009
.L12007:
	.sleb128	20
	.4byte		.L12008
.L12006:
	.sleb128	18
	.byte		"TaskStateRefType"
	.byte		0
	.4byte		.L12007
.L12012:
	.sleb128	20
	.4byte		.L11946
.L12011:
	.sleb128	18
	.byte		"TaskRefType"
	.byte		0
	.4byte		.L12012
.L12016:
	.sleb128	18
	.byte		"ResourceType"
	.byte		0
	.4byte		.L11607
.L12019:
	.sleb128	18
	.byte		"AppModeType"
	.byte		0
	.4byte		.L11607
.L12024:
	.sleb128	18
	.byte		"Os_CoreShutdownType"
	.byte		0
	.4byte		.L12025
.L12028:
	.sleb128	20
	.4byte		.L11819
.L12035:
	.sleb128	18
	.byte		"Os_IOC_ChannelDynType"
	.byte		0
	.4byte		.L12036
.L12034:
	.sleb128	20
	.4byte		.L12035
.L12033:
	.sleb128	19
	.4byte		.L12034
.L12037:
	.sleb128	18
	.byte		"Os_IOC_ChannelSizeType"
	.byte		0
	.4byte		.L11570
.L12038:
	.sleb128	19
	.4byte		.L11936
.L12039:
	.sleb128	19
	.4byte		.L11570
.L12041:
	.sleb128	18
	.byte		"Os_IOC_DataCountType"
	.byte		0
	.4byte		.L11820
.L12040:
	.sleb128	19
	.4byte		.L12041
.L12045:
	.sleb128	18
	.byte		"Os_IOC_DataDescriptorType"
	.byte		0
	.4byte		.L12046
.L12044:
	.sleb128	19
	.4byte		.L12045
.L12043:
	.sleb128	20
	.4byte		.L12044
.L12042:
	.sleb128	19
	.4byte		.L12043
.L12049:
	.sleb128	18
	.byte		"Os_LockResourceType"
	.byte		0
	.4byte		.L11820
.L12048:
	.sleb128	20
	.4byte		.L12049
.L12047:
	.sleb128	19
	.4byte		.L12048
.L12052:
	.sleb128	18
	.byte		"Os_IOC_DataLengthType"
	.byte		0
	.4byte		.L11570
.L12051:
	.sleb128	19
	.4byte		.L12052
.L12054:
	.sleb128	18
	.byte		"Os_IOC_DataOffsetType"
	.byte		0
	.4byte		.L11570
.L12053:
	.sleb128	19
	.4byte		.L12054
.L12058:
	.sleb128	18
	.byte		"Os_HookIDType"
	.byte		0
	.4byte		.L11570
.L12061:
	.sleb128	19
	.4byte		.L11946
.L12064:
	.sleb128	18
	.byte		"Os_ProcDynType"
	.byte		0
	.4byte		.L12065
.L12063:
	.sleb128	20
	.4byte		.L12064
.L12062:
	.sleb128	19
	.4byte		.L12063
.L12069:
	.sleb128	18
	.byte		"Os_ProcStackType"
	.byte		0
	.4byte		.L12070
.L12068:
	.sleb128	19
	.4byte		.L12069
.L12067:
	.sleb128	20
	.4byte		.L12068
.L12066:
	.sleb128	19
	.4byte		.L12067
.L12072:
	.sleb128	18
	.byte		"Os_ProcKindType"
	.byte		0
	.4byte		.L12073
.L12071:
	.sleb128	19
	.4byte		.L12072
.L12074:
	.sleb128	19
	.4byte		.L11997
.L12076:
	.sleb128	18
	.byte		"Os_ActivationCountType"
	.byte		0
	.4byte		.L11607
.L12075:
	.sleb128	19
	.4byte		.L12076
.L12077:
	.sleb128	19
	.4byte		.L11775
.L12081:
	.sleb128	18
	.byte		"Os_AccessStorageType"
	.byte		0
	.4byte		.L11607
.L12080:
	.sleb128	19
	.4byte		.L12081
.L12079:
	.sleb128	20
	.4byte		.L12080
.L12078:
	.sleb128	19
	.4byte		.L12079
.L12085:
	.sleb128	26
	.4byte		.L12086-.L2
	.byte		0x1
	.sleb128	0
.L12086:
.L12084:
	.sleb128	20
	.4byte		.L12085
.L12083:
	.sleb128	18
	.byte		"Os_ProcEntryPointType"
	.byte		0
	.4byte		.L12084
.L12082:
	.sleb128	19
	.4byte		.L12083
.L12087:
	.sleb128	19
	.4byte		.L12016
.L12092:
	.sleb128	18
	.byte		"Os_ResourceStatType"
	.byte		0
	.4byte		.L12093
.L12091:
	.sleb128	19
	.4byte		.L12092
.L12090:
	.sleb128	20
	.4byte		.L12091
.L12089:
	.sleb128	18
	.byte		"Os_ResourceStack"
	.byte		0
	.4byte		.L12090
.L12088:
	.sleb128	20
	.4byte		.L12089
.L12094:
	.sleb128	19
	.4byte		.L11542
.L12095:
	.sleb128	19
	.4byte		.L11804
.L12098:
	.sleb128	18
	.byte		"Os_StackSizeType"
	.byte		0
	.4byte		.L11607
.L12097:
	.sleb128	19
	.4byte		.L12098
.L12100:
	.sleb128	18
	.byte		"Os_ProcContexStateType"
	.byte		0
	.4byte		.L12101
.L12103:
	.sleb128	19
	.4byte		.L12104
.L12102:
	.sleb128	20
	.4byte		.L12103
.L12107:
	.sleb128	19
	.4byte		.L11939
.L12110:
	.sleb128	18
	.byte		"Os_SpinlockDynType"
	.byte		0
	.4byte		.L12111
.L12109:
	.sleb128	20
	.4byte		.L12110
.L12108:
	.sleb128	19
	.4byte		.L12109
.L12116:
	.sleb128	18
	.byte		"Os_ApplicationDynType"
	.byte		0
	.4byte		.L12117
.L12115:
	.sleb128	20
	.4byte		.L12116
.L12114:
	.sleb128	19
	.4byte		.L12115
.L12118:
	.sleb128	19
	.4byte		.L11954
.L12120:
	.sleb128	18
	.byte		"Os_ApplicationKindType"
	.byte		0
	.4byte		.L12121
.L12119:
	.sleb128	19
	.4byte		.L12120
.L12125:
	.sleb128	26
	.4byte		.L12126-.L2
	.byte		0x1
	.sleb128	23
	.4byte		.L11819
	.sleb128	0
.L12126:
.L12124:
	.sleb128	20
	.4byte		.L12125
.L12123:
	.sleb128	18
	.byte		"Os_ShutdownHookFuncType"
	.byte		0
	.4byte		.L12124
.L12122:
	.sleb128	19
	.4byte		.L12123
.L12130:
	.sleb128	26
	.4byte		.L12131-.L2
	.byte		0x1
	.sleb128	0
.L12131:
.L12129:
	.sleb128	20
	.4byte		.L12130
.L12128:
	.sleb128	18
	.byte		"Os_StartUpHookFuncType"
	.byte		0
	.4byte		.L12129
.L12127:
	.sleb128	19
	.4byte		.L12128
.L12135:
	.sleb128	26
	.4byte		.L12136-.L2
	.byte		0x1
	.sleb128	23
	.4byte		.L11819
	.sleb128	0
.L12136:
.L12134:
	.sleb128	20
	.4byte		.L12135
.L12133:
	.sleb128	18
	.byte		"Os_ErrorHookFuncType"
	.byte		0
	.4byte		.L12134
.L12132:
	.sleb128	19
	.4byte		.L12133
.L12139:
	.sleb128	19
	.4byte		.L11704
.L12138:
	.sleb128	20
	.4byte		.L12139
.L12137:
	.sleb128	19
	.4byte		.L12138
.L12142:
	.sleb128	19
	.4byte		.L11985
.L12141:
	.sleb128	20
	.4byte		.L12142
.L12140:
	.sleb128	19
	.4byte		.L12141
.L12145:
	.sleb128	19
	.4byte		.L11959
.L12144:
	.sleb128	20
	.4byte		.L12145
.L12143:
	.sleb128	19
	.4byte		.L12144
.L12148:
	.sleb128	19
	.4byte		.L11972
.L12147:
	.sleb128	20
	.4byte		.L12148
.L12146:
	.sleb128	19
	.4byte		.L12147
.L12153:
	.sleb128	18
	.byte		"Os_ResourceDynType"
	.byte		0
	.4byte		.L12154
.L12152:
	.sleb128	20
	.4byte		.L12153
.L12157:
	.sleb128	18
	.byte		"Os_ErrorType"
	.byte		0
	.4byte		.L12158
.L12159:
	.sleb128	18
	.byte		"Os_ExceptionStatusType"
	.byte		0
	.4byte		.L12160
.L12165:
	.sleb128	26
	.4byte		.L12166-.L2
	.byte		0x1
	.sleb128	0
.L12166:
.L12164:
	.sleb128	20
	.4byte		.L12165
.L12163:
	.sleb128	18
	.byte		"Os_IsrHandlerFuncType"
	.byte		0
	.4byte		.L12164
.L12162:
	.sleb128	19
	.4byte		.L12163
.L12168:
	.sleb128	18
	.byte		"Os_ExceptionTypeType"
	.byte		0
	.4byte		.L12169
.L12172:
	.sleb128	18
	.byte		"Os_ShudownErrorType"
	.byte		0
	.4byte		.L12173
.L12174:
	.sleb128	18
	.byte		"Os_ParameterErrorType"
	.byte		0
	.4byte		.L12175
.L12176:
	.sleb128	18
	.byte		"Os_ServiceErrorType"
	.byte		0
	.4byte		.L12177
.L12179:
	.sleb128	18
	.byte		"ServiceTraceType"
	.byte		0
	.4byte		.L11820
.L12180:
	.sleb128	18
	.byte		"OSServiceIdType"
	.byte		0
	.4byte		.L12181
.L12183:
	.sleb128	18
	.byte		"TryToGetSpinlockRefType"
	.byte		0
	.4byte		.L11940
.L12185:
	.sleb128	18
	.byte		"Os_SystemInternalErrorType"
	.byte		0
	.4byte		.L12186
.L12192:
	.sleb128	18
	.byte		"Os_IsrPlatformLevelType"
	.byte		0
	.4byte		.L11570
.L12191:
	.sleb128	19
	.4byte		.L12192
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11523:
	.sleb128	0
.L11519:

	.section	.debug_loc,,n
	.align	0
.L11540:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locend
.L11544:
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),5
	.d2locend
.L11555:
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),3
	.d2locend
.L11561:
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo6),4
	.d2locend
.L11572:
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo9),31
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo11),31
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo13),31
	.d2locend
.L11574:
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo9),6
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo15),6
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo17),6
	.d2locend
.L11578:
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo19),30
	.d2locend
.L11584:
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo21),3
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo23),3
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo9),29
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo26),3
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo27),29
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo17),29
	.d2locreg	%offsetof(.Llo28), %offsetof(.Llo11),3
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo30),3
	.d2locend
.L11586:
	.d2locreg	%offsetof(.Llo31), %offsetof(.Llo26),7
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo33),7
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo34),7
	.d2locend
.L11588:
	.d2locreg	%offsetof(.Llo35), %offsetof(.Llo9),27
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo11),27
	.d2locend
.L11594:
	.d2locreg	%offsetof(.Llo36), %offsetof(.Llo37),0
	.d2locend
.L11599:
	.d2locreg	%offsetof(.Llo38), %offsetof(.Llo39),0
	.d2locreg	%offsetof(.Llo40), %offsetof(.Llo41),28
	.d2locreg	%offsetof(.Llo42), %offsetof(.Llo43),3
	.d2locreg	%offsetof(.Llo44), %offsetof(.Llo27),3
	.d2locreg	%offsetof(.Llo45), %offsetof(.Llo46),0
	.d2locreg	%offsetof(.Llo47), %offsetof(.Llo48),0
	.d2locreg	%offsetof(.Llo49), %offsetof(.Llo50),0
	.d2locreg	%offsetof(.Llo51), %offsetof(.Llo17),0
	.d2locend
.L11609:
	.d2locreg	%offsetof(.Llo52), %offsetof(.Llo19),0
	.d2locend
.L11620:
	.d2locreg	%offsetof(.Llo30), %offsetof(.Llo13),3
	.d2locreg	%offsetof(.Llo53), %offsetof(.Llo54),3
	.d2locend
.L11627:
	.d2locreg	%offsetof(.Llo55), %offsetof(.Llo56),3
	.d2locend
.L11641:
	.d2locreg	%offsetof(.Llo57), %offsetof(.Llo58),3
	.d2locend
.L11647:
	.d2locreg	%offsetof(.Llo57), %offsetof(.Llo58),4
	.d2locend
.L11649:
	.d2locreg	%offsetof(.Llo59), %offsetof(.Llo60),31
	.d2locend
.L11659:
	.d2locreg	%offsetof(.Llo61), %offsetof(.Llo62),3
	.d2locend
.L11661:
	.d2locreg	%offsetof(.Llo63), %offsetof(.Llo64),6
	.d2locreg	%offsetof(.Llo65), %offsetof(.Llo66),6
	.d2locend
.L11670:
	.d2locreg	%offsetof(.Llo67), %offsetof(.Llo68),3
	.d2locreg	%offsetof(.Llo69), %offsetof(.Llo70),31
	.d2locreg	%offsetof(.Llo71), %offsetof(.Llo72),31
	.d2locend
.L11672:
	.d2locreg	%offsetof(.Llo73), %offsetof(.Llo74),30
	.d2locreg	%offsetof(.Llo75), %offsetof(.Llo76),30
	.d2locend
.L11674:
	.d2locreg	%offsetof(.Llo77), %offsetof(.Llo78),23
	.d2locend
.L11676:
	.d2locreg	%offsetof(.Llo79), %offsetof(.Llo80),29
	.d2locreg	%offsetof(.Llo81), %offsetof(.Llo82),29
	.d2locreg	%offsetof(.Llo83), %offsetof(.Llo84),29
	.d2locreg	%offsetof(.Llo85), %offsetof(.Llo86),29
	.d2locreg	%offsetof(.Llo87), %offsetof(.Llo88),29
	.d2locreg	%offsetof(.Llo89), %offsetof(.Llo90),3
	.d2locreg	%offsetof(.Llo91), %offsetof(.Llo92),29
	.d2locreg	%offsetof(.Llo71), %offsetof(.Llo72),29
	.d2locend
.L11680:
	.d2locreg	%offsetof(.Llo93), %offsetof(.Llo94),28
	.d2locreg	%offsetof(.Llo95), %offsetof(.Llo70),28
	.d2locreg	%offsetof(.Llo71), %offsetof(.Llo72),28
	.d2locend
.L11682:
	.d2locreg	%offsetof(.Llo96), %offsetof(.Llo97),27
	.d2locreg	%offsetof(.Llo98), %offsetof(.Llo87),4
	.d2locreg	%offsetof(.Llo99), %offsetof(.Llo100),27
	.d2locreg	%offsetof(.Llo92), %offsetof(.Llo71),27
	.d2locreg	%offsetof(.Llo101), %offsetof(.Llo74),4
	.d2locend
.L11686:
	.d2locreg	%offsetof(.Llo69), %offsetof(.Llo86),26
	.d2locreg	%offsetof(.Llo102), %offsetof(.Llo103),25
	.d2locreg	%offsetof(.Llo104), %offsetof(.Llo105),26
	.d2locreg	%offsetof(.Llo106), %offsetof(.Llo107),25
	.d2locreg	%offsetof(.Llo108), %offsetof(.Llo109),24
	.d2locreg	%offsetof(.Llo110), %offsetof(.Llo111),25
	.d2locreg	%offsetof(.Llo112), %offsetof(.Llo113),26
	.d2locreg	%offsetof(.Llo71), %offsetof(.Llo72),26
	.d2locend
.L11697:
	.d2locreg	%offsetof(.Llo114), %offsetof(.Llo115),3
	.d2locreg	%offsetof(.Llo116), %offsetof(.Llo117),31
	.d2locend
.L11706:
	.d2locreg	%offsetof(.Llo118), %offsetof(.Llo119),3
	.d2locreg	%offsetof(.Llo120), %offsetof(.Llo121),3
	.d2locreg	%offsetof(.Llo122), %offsetof(.Llo123),3
	.d2locreg	%offsetof(.Llo124), %offsetof(.Llo125),3
	.d2locend
.L11708:
	.d2locreg	%offsetof(.Llo126), %offsetof(.Llo127),3
	.d2locreg	%offsetof(.Llo122), %offsetof(.Llo128),30
	.d2locend
.L11711:
	.d2locreg	%offsetof(.Llo129), %offsetof(.Llo127),31
	.d2locreg	%offsetof(.Llo130), %offsetof(.Llo131),31
	.d2locend
.L11717:
	.d2locreg	%offsetof(.Llo132), %offsetof(.Llo133),3
	.d2locreg	%offsetof(.Llo134), %offsetof(.Llo135),0
	.d2locreg	%offsetof(.Llo136), %offsetof(.Llo137),3
	.d2locreg	%offsetof(.Llo138), %offsetof(.Llo139),0
	.d2locend
.L11719:
	.d2locreg	%offsetof(.Llo140), %offsetof(.Llo141),3
	.d2locend
.L11726:
	.d2locreg	%offsetof(.Llo142), %offsetof(.Llo143),3
	.d2locreg	%offsetof(.Llo144), %offsetof(.Llo145),0
	.d2locreg	%offsetof(.Llo146), %offsetof(.Llo147),0
	.d2locreg	%offsetof(.Llo148), %offsetof(.Llo149),0
	.d2locend
.L11728:
	.d2locreg	%offsetof(.Llo150), %offsetof(.Llo151),4
	.d2locreg	%offsetof(.Llo152), %offsetof(.Llo153),31
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "Os_Dispatcher_Alloc_Core"
	.wrcm.nstrlist "calls", "Os_ShutdownAllCores"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Os_Dispatch_APICall"
	.wrcm.nstrlist "calls", "Os_Dispatch","Os_ShutdownAllCores"
	.wrcm.nint32 "frameSize", 64
	.wrcm.end
	.wrcm.nelem "Os_Dispatch_Interrupt"
	.wrcm.nstrlist "calls", "Os_Dispatch","Os_PlatformTriggerClear","Os_ShutdownAllCores"
	.wrcm.nint32 "frameSize", 80
	.wrcm.end
	.wrcm.nelem "Os_Dispatch"
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nlist "calls"
	.wrcm.str "Os_Core_LockCore"
	.wrcm.str "Os_Core_LockOtherCore"
	.wrcm.str "Os_Core_UnlockCore"
	.wrcm.str "Os_Core_UnlockCores"
	.wrcm.str "Os_Core_UnlockOtherCore"
	.wrcm.str "Os_DispatchISR"
	.wrcm.str "Os_Dispatch_DiscardAndGetNext"
	.wrcm.str "Os_PlatformIsrEnd"
	.wrcm.str "Os_PlatformTriggerCore"
	.wrcm.str "Os_SchedulerGetNextProc"
	.wrcm.str "Os_SchedulerSchedule"
	.wrcm.str "Os_ShutdownAllCores"
	.wrcm.str "Os_StackMonitorCheckProc"
	.wrcm.str "Os_StackMonitorKernel"
	.wrcm.end
	.wrcm.nint32 "frameSize", 64
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Os_Dispatch_DiscardAndGetNext"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Os_Dispatch_LightSyscall"
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Os_Dispatch_Idle"
	.wrcm.nstrlist "calls", "Os_SchedulerIdle"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Os_Dispatch_Init"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Os_SchedulerSchedule"
	.wrcm.nstrlist "calls", "Os_Isr_ServicesSwitchToNonTrusted","Os_Isr_ServicesSwitchToTrusted","Os_Isr_SwitchIn","Os_SchedulerChangeProcPriority","Os_SchedulerGetNextProc","Os_SchedulerSwitchApp","Os_ShutdownAllCores","Os_Task_SwitchIn","Os_Task_SwitchOut"
	.wrcm.nint32 "frameSize", 48
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Os_SchedulerSwitchApp"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Os_SchedulerGetNextProc"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Os_Dispatch.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Os_Dispatch.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Os_Dispatch.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Os_Dispatch.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Os_Dispatch.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Os_Dispatch.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\Os\Os\core\ssc\make\..\src\dispatcher\Os_Dispatch.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
