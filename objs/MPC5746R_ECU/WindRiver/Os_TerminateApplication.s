#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Os_TerminateApplication.c"
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
.L11455:
	.section	.Os_TEXT,,c
#$$ld
.L11451:
	.0byte		.L11449
	.d2_line_start	.debug_line.Os_TEXT
	.section	.Os_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_Isr.h"
        .d2line         227,45
#$$ld
.L11458:

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
.L11459:
	.type		Os_Isr_GetState,@function
	.size		Os_Isr_GetState,.-Os_Isr_GetState
# Number of nodes = 36

# Allocations for Os_Isr_GetState
#	?a4		coreId
# FUNC (StatusType, OS_CODE) TerminateApplication ( VAR ( ApplicationType,AUTOMATIC)  application,
	.section	.Os_PUBLIC_TEXT,,c
	.align		2
	.section	.debug_line.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_line
.L11476:
	.section	.Os_PUBLIC_TEXT,,c
#$$ld
.L11472:
	.0byte		.L11470
	.d2_line_start	.debug_line.Os_PUBLIC_TEXT
	.section	.Os_PUBLIC_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\application\\Os_TerminateApplication.c"
        .d2line         82,28
#$$ld
.L11479:

#$$bf	TerminateApplication,interprocedural,rasave,nostackparams
	.globl		TerminateApplication
	.d2_cfa_start __cie
TerminateApplication:
.Llo3:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr		# restartOption=r0
	stw		r0,52(r1)		# restartOption=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# application=r0 application=r3
	mr		r0,r4		# restartOption=r0 restartOption=r4
	.d2prologue_end
#                                                   VAR ( RestartType,AUTOMATIC )     restartOption)
# {
#     VAR(Os_APICallType,AUTOMATIC) Os_TerminateAppCall;
# 
#     OS_API_ALLOC(Os_TerminateAppCall, TerminateApplication);
	.d2line		87
.Llo5:
	e_lis		r4,4660
.Llo6:
	e_or2i		r4,22136
	stw		r4,8(r1)
	lis		r4,Os_API_TerminateApplication@ha
	e_add16i		r4,r4,Os_API_TerminateApplication@l
	stw		r4,20(r1)
	diab.li		r4,0
	stw		r4,16(r1)
# 
#     Os_TerminateAppCall.Os_API_Data.Os_ApiTerminateApplication.Application   = application;
	.d2line		89
	stb		r3,24(r1)		# application=r3
#     Os_TerminateAppCall.Os_API_Data.Os_ApiTerminateApplication.RestartOption = restartOption;
	.d2line		90
	stb		r0,25(r1)		# restartOption=r0
# 
#     OS_SYSCALL(Os_TerminateAppCall);
	.d2line		92
	diab.addi		r3,r1,8		# application=r3
.Llo4:
	bl		OS_SYS_CALL
# 
#     return Os_TerminateAppCall.Os_API_ReturnValue;
	.d2line		94
.Llo7:
	lbz		r3,12(r1)		# application=r3
# }
	.d2line		95
	.d2epilogue_begin
	lwz		r0,52(r1)		# restartOption=r0
	mtspr		lr,r0		# restartOption=lr
	diab.addi		r1,r1,48		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_PUBLIC_TEXT,,c
#$$ld
.L11480:
	.type		TerminateApplication,@function
	.size		TerminateApplication,.-TerminateApplication
# Number of nodes = 47

# Allocations for TerminateApplication
#	?a4		application
#	?a5		restartOption
#	SP,8		Os_TerminateAppCall
# FUNC (void, OS_CODE) Os_TerminateApplication (VAR ( ApplicationType,AUTOMATIC) application,
	.section	.Os_TEXT,,c
	.align		2
	.section	.Os_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\application\\Os_TerminateApplication.c"
        .d2line         243,22
#$$ld
.L11495:

#$$bf	Os_TerminateApplication,interprocedural,rasave,nostackparams
	.globl		Os_TerminateApplication
	.d2_cfa_start __cie
Os_TerminateApplication:
.Llo8:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# application=r3 application=r3
	mr		r31,r4		# restartOption=r31 restartOption=r4
	.d2prologue_end
#                                               VAR ( RestartType,AUTOMATIC )    restartOption)
# {
#     CONSTP2CONST(Os_ApplicationStatType, AUTOMATIC, OS_CONST) app = &Os_Applications_Stat[application];
	.d2line		246
	rlwinm		r3,r3,0,24,31		# application=r3 application=r3
	lis		r28,Os_Applications_Stat@ha		# app=r28
	e_add16i		r28,r28,Os_Applications_Stat@l		# app=r28 app=r28
	rlwinm		r0,r3,6,0,25		# application=r3
	se_slwi		r3,4		# application=r3 application=r3
	subf		r3,r3,r0		# application=r3 application=r3
	se_add		r3,r28		# application=r3 application=r3 app=r28
.Llo9:
	mr		r28,r3		# app=r28 app=r3
# 
#     /* Free up all resources of the application */
# 
#     /* [OS287-05]: Since all of the associated objects (tasks, ISRs etc.) are terminated, after returning from syscall,
#      *             there is no chance that the execution will be returned to the caller.
#      */
# 
#     if(app->Os_AppProcIDs != NULL_PTR)
	.d2line		254
.Llo35:
	lwz		r0,28(r28)		# app=r28
.Llo36:
	se_cmpi		r0,0
	bc		1,2,.L11387	# eq
	.section	.Os_TEXT,,c
.L11508:
#     {
#         VAR(TaskType, AUTOMATIC) procIdx;
# 
#         for(procIdx = (TaskType)0U; app->Os_AppProcIDs[procIdx] != OS_INVALID_PROC; procIdx++)
	.d2line		258
.Llo28:
	diab.li		r30,0		# procIdx=r30
.L11388:
.Llo29:
	lwz		r3,28(r28)		# application=r3 app=r28
.Llo10:
	rlwinm		r0,r30,2,0,29		# procIdx=r30
	lwzx		r0,r3,r0		# application=r3
	cmpi		0,0,r0,-1
	bc		1,2,.L11387	# eq
	.section	.Os_TEXT,,c
.L11519:
#         {
#             CONSTP2CONST(struct Os_ProcStatType_s,AUTOMATIC ,AUTOMATIC) proc = &Os_Proc_Stat[app->Os_AppProcIDs[procIdx]];
	.d2line		260
.Llo11:
	lis		r29,Os_Proc_Stat@ha		# proc=r29
.Llo38:
	e_add16i		r29,r29,Os_Proc_Stat@l		# proc=r29 proc=r29
	lwz		r3,28(r28)		# application=r3 app=r28
.Llo12:
	rlwinm		r0,r30,2,0,29		# procIdx=r30
	lwzx		r0,r3,r0		# application=r3
	e_mulli		r0,r0,80
	se_add		r0,r29		# proc=r29
	mr		r29,r0		# proc=r29 proc=r0
# 
#             if( Os_Proc_ISR_CAT2 == proc->Os_ProcKind )/* [OS287-01] */
	.d2line		262
.Llo39:
	lwz		r0,16(r29)		# proc=r29
	se_cmpi		r0,1
	bc		0,2,.L11391	# ne
#             {
#                 Os_Isr_Platform_DisableChannel(proc->Os_ProcIsrPlatformConfig); /* [OS563-02] [OS110-04] [OS447-02] */
	.d2line		264
.Llo13:
	lwz		r3,76(r29)		# application=r3 proc=r29
	bl		Os_Isr_Platform_DisableChannel
.L11391:
#             }
#           #ifdef OS_MODULE_STACKSHARING
#             /* Due to all task will be killed in the application the shared stack will be also completely
#              * destroyed here in one step instead of figuring out the order.
#              */
#             Os_StackSharing_CleanUp(proc);
#            #endif /* OS_MODULE_STACKSHARING */
# 
#             Os_TaskKill(proc); /* [OS110-01] [OS447-01] [OS447-02] */
	.d2line		273
	mr		r3,r29		# proc=r3 proc=r29
	bl		Os_TaskKill
#             proc->Os_ProcDyn->Os_ProcEnabled = (uint8)1U;
	.d2line		274
	diab.li		r0,1
	lwz		r3,8(r29)		# proc=r3 proc=r29
	stb		r0,32(r3)		# proc=r3
	.section	.Os_TEXT,,c
.L11520:
#         }
	.d2line		275
.Llo40:
	diab.addi		r0,r30,1		# procIdx=r30
	se_addi		r30,1		# procIdx=r30 procIdx=r30
	b		.L11388
	.section	.Os_TEXT,,c
.L11509:
.L11387:
#     }
# 
#     if(app->Os_AppAlarmIDs != NULL_PTR)
	.d2line		278
	lwz		r0,36(r28)		# app=r28
	se_cmpi		r0,0
	bc		1,2,.L11392	# eq
	.section	.Os_TEXT,,c
.L11529:
#     {
#         VAR(AlarmType, AUTOMATIC) alarmId;
# 
#         for(alarmId = (AlarmType)0U; app->Os_AppAlarmIDs[alarmId] != OS_INVALID_ALARM; alarmId++)
	.d2line		282
.Llo37:
	diab.li		r30,0		# alarmId=r30
.L11393:
.Llo41:
	lwz		r3,36(r28)		# application=r3 app=r28
.Llo14:
	rlwinm		r0,r30,2,0,29		# alarmId=r30
	lwzx		r0,r3,r0		# application=r3
	cmpi		0,0,r0,-1
	bc		1,2,.L11392	# eq
#         {
#             Os_AlarmKill(app->Os_AppAlarmIDs[alarmId]); /* [OS110-02] [OS447-03] */
	.d2line		284
.Llo15:
	lwz		r3,36(r28)		# application=r3 app=r28
.Llo16:
	rlwinm		r0,r30,2,0,29		# alarmId=r30
	lwzx		r3,r3,r0		# application=r3 application=r3
.Llo17:
	bl		Os_AlarmKill
#         }
	.d2line		285
	diab.addi		r0,r30,1		# alarmId=r30
	se_addi		r30,1		# alarmId=r30 alarmId=r30
	b		.L11393
	.section	.Os_TEXT,,c
.L11530:
.L11392:
#     }
# 
#     if(app->Os_AppSchTblIDs != NULL_PTR)
	.d2line		288
	lwz		r0,40(r28)		# app=r28
	se_cmpi		r0,0
	bc		1,2,.L11396	# eq
	.section	.Os_TEXT,,c
.L11536:
#     {
#         VAR(ScheduleTableType, AUTOMATIC) schTblId;
# 
#         for(schTblId = (ScheduleTableType)0U; app->Os_AppSchTblIDs[schTblId] != OS_INVALID_SCHTBL; schTblId++)
	.d2line		292
.Llo42:
	diab.li		r30,0		# schTblId=r30
.L11397:
.Llo43:
	lwz		r3,40(r28)		# application=r3 app=r28
.Llo18:
	rlwinm		r0,r30,2,0,29		# schTblId=r30
	lwzx		r0,r3,r0		# application=r3
	cmpi		0,0,r0,-1
	bc		1,2,.L11396	# eq
#         {
#             Os_SchTblKill(app->Os_AppSchTblIDs[schTblId]); /* [OS110-03] [OS447-04] */
	.d2line		294
.Llo19:
	lwz		r3,40(r28)		# application=r3 app=r28
.Llo20:
	rlwinm		r0,r30,2,0,29		# schTblId=r30
	lwzx		r3,r3,r0		# application=r3 application=r3
.Llo21:
	bl		Os_SchTblKill
#         }
	.d2line		295
	diab.addi		r0,r30,1		# schTblId=r30
	se_addi		r30,1		# schTblId=r30 schTblId=r30
	b		.L11397
	.section	.Os_TEXT,,c
.L11537:
.L11396:
#     }
# 
#     if(app->Os_AppCounterIDs != NULL_PTR)
	.d2line		298
	lwz		r0,32(r28)		# app=r28
	se_cmpi		r0,0
	bc		1,2,.L11400	# eq
	.section	.Os_TEXT,,c
.L11543:
#     {
#         VAR(CounterType, AUTOMATIC) cntrId;
# 
#         for(cntrId = (CounterType)0U; app->Os_AppCounterIDs[cntrId] != OS_INVALID_COUNTER; cntrId++)
	.d2line		302
.Llo44:
	diab.li		r30,0		# cntrId=r30
.L11401:
.Llo45:
	lwz		r3,32(r28)		# application=r3 app=r28
.Llo22:
	rlwinm		r0,r30,2,0,29		# cntrId=r30
	lwzx		r0,r3,r0		# application=r3
	cmpi		0,0,r0,-1
	bc		1,2,.L11400	# eq
#         {
#             Os_CounterKill(app->Os_AppCounterIDs[cntrId]);
	.d2line		304
.Llo23:
	lwz		r3,32(r28)		# application=r3 app=r28
.Llo24:
	rlwinm		r0,r30,2,0,29		# cntrId=r30
	lwzx		r3,r3,r0		# application=r3 application=r3
.Llo25:
	bl		Os_CounterKill
#         }
	.d2line		305
	diab.addi		r0,r30,1		# cntrId=r30
	se_addi		r30,1		# cntrId=r30 cntrId=r30
	b		.L11401
	.section	.Os_TEXT,,c
.L11544:
.L11400:
#     }
# 
#     if(RESTART == restartOption)
	.d2line		308
.Llo30:
	rlwinm		r31,r31,0,24,31		# restartOption=r31 restartOption=r31
.Llo31:
	se_cmpi		r31,0		# restartOption=r31
	bc		0,2,.L11386	# ne
#     {
#         OS_CALL_RTM_APPLICATION_STATE_CHANGE(AccessibleToRestating, app->Os_AppId, OS_GETCOREID());
# 
#         if(INVALID_TASK != app->Os_AppRestartTask)
	.d2line		312
.Llo46:
	lwz		r0,8(r28)		# app=r28
	cmpi		0,0,r0,-1
	bc		1,2,.L11386	# eq
#         {
#             /* Enable the application restart task. */
#             Os_Proc_Stat[app->Os_AppRestartTask].Os_ProcDyn->Os_ProcEnabled = (uint8)0U;
	.d2line		315
	diab.li		r4,0
.Llo32:
	lis		r3,(Os_Proc_Stat+8)@ha		# application=r3
.Llo26:
	e_add16i		r3,r3,(Os_Proc_Stat+8)@l		# application=r3 application=r3
	lwz		r0,8(r28)		# app=r28
	e_mulli		r0,r0,80
	lwzx		r3,r3,r0		# application=r3 application=r3
	stb		r4,32(r3)		# application=r3
#             Os_DispatchActivateTask(app->Os_AppRestartTask);    /* [OS111] [OS287-02] */
	.d2line		316
	lwz		r3,8(r28)		# application=r3 app=r28
.Llo27:
	bl		Os_DispatchActivateTask
.L11386:
#         }
#     }
#     else
#     {
#         /* Do nothing special here. */
#       #ifdef OS_CONFIG_RTM_APPLICATIONS
#         if(app->Os_AppDyn->Os_PrevAppState == APPLICATION_RESTARTING)
#         {
#             OS_CALL_RTM_APPLICATION_STATE_CHANGE(RestartingToTerminated, app->Os_AppId, OS_GETCOREID());
#         }
#         else
#         {
#             OS_CALL_RTM_APPLICATION_STATE_CHANGE(AccessibleToTerminated, app->Os_AppId, OS_GETCOREID());
#         }
#       #endif /* OS_CONFIG_RTM_APPLICATIONS */
#     }
# }
	.d2line		333
	.d2epilogue_begin
.Llo33:
	lmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo34:
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11496:
	.type		Os_TerminateApplication,@function
	.size		Os_TerminateApplication,.-Os_TerminateApplication
# Number of nodes = 214

# Allocations for Os_TerminateApplication
#	?a4		application
#	?a5		restartOption
#	?a6		$$2352
#	?a7		app
#	?a8		procIdx
#	?a9		proc
#	?a10		alarmId
#	?a11		schTblId
#	?a12		cntrId
# LOCAL_INLINE FUNC (StatusType, OS_CODE) TerminateApplication_Err_Dyn (
	.align		1
	.section	.Os_TEXT,,c
        .d2line         401,41
#$$ld
.L11552:

#$$bf	TerminateApplication_Err_Dyn,interprocedural,rasave,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r29,r30,r31,cr0,lr
	.d2_cfa_start __cie
TerminateApplication_Err_Dyn:
.Llo47:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r7,r3		# callerProc=r7 callerProc=r3
	mr		r31,r4		# application=r31 application=r4
	mr		r30,r5		# restartOption=r30 restartOption=r5
	.d2prologue_end
#                                                         P2CONST( Os_ProcStatType, AUTOMATIC, OS_CONST )  callerProc,
#                                                         VAR    ( ApplicationType, AUTOMATIC )            application,
#                                                         VAR    ( RestartType,     AUTOMATIC )            restartOption )
# {
#     VAR(StatusType,AUTOMATIC) retVal;
# 
#     CONSTP2CONST(Os_ApplicationStatType,AUTOMATIC,OS_CONST) app = &Os_Applications_Stat[application];
	.d2line		408
	rlwinm		r4,r4,0,24,31		# application=r4 application=r4
	lis		r29,Os_Applications_Stat@ha		# application=r29
	e_add16i		r29,r29,Os_Applications_Stat@l		# application=r29 application=r29
	rlwinm		r0,r4,6,0,25		# application=r4
	se_slwi		r4,4		# application=r4 application=r4
	subf		r4,r4,r0		# application=r4 application=r4
	se_add		r4,r29		# application=r4 application=r4 application=r29
.Llo53:
	mr		r29,r4		# app=r29 app=r4
# 
#     if (Os_Isr_Enabled != Os_Isr_GetState(OS_GETCOREID()))
	.d2line		410
	mfspr		r3,286
.Llo48:
	bl		Os_Isr_GetState
.Llo56:
	se_cmpi		r3,0
	bc		1,2,.L11435	# eq
#     {
#         retVal = OS_GET_ERRORCODE(E_OS_SYS_ERROR, E_OS_DISABLEDINT);    /* [OS093-01-39] [OS093-02-30] */
	.d2line		412
.Llo49:
	diab.li		r3,10		# retVal=r3
.Llo58:
	b		.L11436
.L11435:
#     }
#     else if(APPLICATION_TERMINATED == app->Os_AppDyn->Os_AppState)      /* [OS507-01] */
	.d2line		414
.Llo59:
	lwz		r3,0(r29)		# app=r29
	lbz		r0,0(r3)
	se_cmpi		r0,2
	bc		0,2,.L11437	# ne
#     {
#         retVal = OS_GET_ERRORCODE(E_OS_SYS_ERROR,E_OS_STATE);
	.d2line		416
	diab.li		r3,7		# retVal=r3
.Llo60:
	b		.L11436
.L11437:
#     }
#     else if((APPLICATION_RESTARTING == app->Os_AppDyn->Os_AppState) &&  /* [OS508-01] */
	.d2line		418
.Llo61:
	lwz		r3,0(r29)		# app=r29
	lbz		r0,0(r3)
	se_cmpi		r0,1
	bc		0,2,.L11439	# ne
	lwz		r3,48(r7)		# callerProc=r7
	lbz		r0,4(r3)
	rlwinm		r4,r31,0,24,31		# application=r4 application=r31
	se_cmp		r0,r4		# application=r4
	bc		1,2,.L11439	# eq
#             (callerProc->Os_ProcOwnerApp->Os_AppId != application ))
#     {
#         retVal = OS_GET_ERRORCODE(E_OS_SYS_ERROR,E_OS_STATE);
	.d2line		421
	diab.li		r3,7		# retVal=r3
.Llo62:
	b		.L11436
.L11439:
#     }
#     else if((APPLICATION_RESTARTING == app->Os_AppDyn->Os_AppState) &&  /* [OS548-01] */
	.d2line		423
.Llo63:
	lwz		r3,0(r29)		# app=r29
	lbz		r0,0(r3)
	se_cmpi		r0,1
	bc		0,2,.L11441	# ne
.Llo54:
	lwz		r3,48(r7)		# callerProc=r7
	lbz		r0,4(r3)
.Llo55:
	rlwinm		r31,r31,0,24,31		# application=r31 application=r31
	se_cmp		r0,r31		# application=r31
	bc		0,2,.L11441	# ne
.Llo50:
	rlwinm		r30,r30,0,24,31		# restartOption=r30 restartOption=r30
	se_cmpi		r30,0		# restartOption=r30
	bc		0,2,.L11441	# ne
#             (callerProc->Os_ProcOwnerApp->Os_AppId == application) &&
#             (RESTART == restartOption))
#     {
#         retVal = OS_GET_ERRORCODE(E_OS_SYS_ERROR,E_OS_STATE);
	.d2line		427
.Llo57:
	diab.li		r3,7		# retVal=r3
.Llo64:
	b		.L11436
.L11441:
#     }
#     else
#     {
#         retVal = E_OK;
	.d2line		431
.Llo51:
	diab.li		r3,0		# retVal=r3
.L11436:
#     }
# 
#     return retVal;
	.d2line		434
.Llo52:
	rlwinm		r3,r3,0,24,31		# retVal=r3 retVal=r3
# }
	.d2line		435
	.d2epilogue_begin
.Llo65:
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
.L11553:
	.type		TerminateApplication_Err_Dyn,@function
	.size		TerminateApplication_Err_Dyn,.-TerminateApplication_Err_Dyn
# Number of nodes = 85

# Allocations for TerminateApplication_Err_Dyn
#	?a4		callerProc
#	?a5		application
#	?a6		restartOption
#	?a7		$$2353
#	?a8		retVal
#	?a9		app
# LOCAL_INLINE FUNC (void, OS_CODE) Os_TerminateApplicationAPI (
	.align		1
	.section	.Os_TEXT,,c
        .d2line         181,35
#$$ld
.L11567:

#$$bf	Os_TerminateApplicationAPI,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Os_TerminateApplicationAPI:
.Llo66:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# Os_API_ReturnValuePtr=r31 Os_API_ReturnValuePtr=r3
	mr		r8,r4		# currentProc=r8 currentProc=r4
	mr		r30,r5		# application=r30 application=r5
	mr		r29,r6		# restartOption=r29 restartOption=r6
	.d2prologue_end
#                                             P2VAR       ( StatusType,      AUTOMATIC ,OS_VAR)   Os_API_ReturnValuePtr,
#                                             CONSTP2CONST( Os_ProcStatType, AUTOMATIC ,OS_CONST) currentProc,
#                                             VAR         ( ApplicationType, AUTOMATIC )          application,
#                                             VAR         ( RestartType,     AUTOMATIC )          restartOption )
# {
#     CONST (StatusType, AUTOMATIC)  retVal = TerminateApplication_Err_Dyn(currentProc,application,restartOption);
	.d2line		187
	mr		r3,r8		# currentProc=r3 currentProc=r8
.Llo67:
	mr		r4,r30		# application=r4 application=r30
.Llo70:
	mr		r5,r29		# restartOption=r5 restartOption=r29
.Llo74:
	bl		TerminateApplication_Err_Dyn
.Llo78:
	mr		r28,r3		# retVal=r28 retVal=r3
# 
#   #if defined ( OS_CONFIG_USEPARAMETERACCESS )
# 
#     CONST (CoreIdType, AUTOMATIC)  coreId = OS_GETCOREID();
	.d2line		191
.Llo79:
	mfspr		r0,286
.Llo80:
	mr		r0,r0		# coreId=r0 coreId=r0
# 
#   #endif
# 
#     if( E_OK == retVal)
	.d2line		195
	rlwinm		r3,r3,0,24,31		# retVal=r3 retVal=r3
	se_cmpi		r3,0		# retVal=r3
	bc		0,2,.L11373	# ne
#     {
#       #ifdef OS_CONFIG_RTM_APPLICATIONS
#         Os_Applications_Stat[application].Os_AppDyn->Os_PrevAppState = Os_Applications_Stat[application].Os_AppDyn->Os_AppState;
#       #endif
# 
#         if(RESTART == restartOption)
	.d2line		201
.Llo68:
	rlwinm		r4,r29,0,24,31		# restartOption=r29
.Llo81:
	se_cmpi		r4,0
	bc		0,2,.L11374	# ne
#         {
#             Os_Applications_Stat[application].Os_AppDyn->Os_AppState = APPLICATION_RESTARTING; /* [OS503] [OS287-03] [OS-MGC-0004] */
	.d2line		203
.Llo71:
	rlwinm		r4,r30,0,24,31		# application=r30
	diab.li		r0,1
	lis		r3,Os_Applications_Stat@ha		# retVal=r3
.Llo82:
	e_add16i		r3,r3,Os_Applications_Stat@l		# retVal=r3 retVal=r3
	rlwinm		r5,r4,6,0,25
	se_slwi		r4,4
	subf		r4,r4,r5
	lwzx		r3,r3,r4		# retVal=r3 retVal=r3
	stb		r0,0(r3)		# retVal=r3
	b		.L11375
.L11374:
#         }
#         else
#         {
#             Os_Applications_Stat[application].Os_AppDyn->Os_AppState = APPLICATION_TERMINATED; /* [OS502] [OS287-04] [OS-MGC-0004] */
	.d2line		207
.Llo83:
	rlwinm		r4,r30,0,24,31		# application=r30
	diab.li		r0,2
	lis		r3,Os_Applications_Stat@ha		# retVal=r3
.Llo84:
	e_add16i		r3,r3,Os_Applications_Stat@l		# retVal=r3 retVal=r3
	rlwinm		r5,r4,6,0,25
	se_slwi		r4,4
	subf		r4,r4,r5
	lwzx		r3,r3,r4		# retVal=r3 retVal=r3
	stb		r0,0(r3)		# retVal=r3
.L11375:
#         }
# 
#       #ifdef OS_MODULE_MULTICORE
#         if (Os_true == Os_ApplicationOnOtherCore(application))
	.d2line		211
.Llo85:
	rlwinm		r3,r30,0,24,31		# retVal=r3 application=r30
	bl		Os_ApplicationOnOtherCore
.Llo86:
	se_cmpi		r3,1		# retVal=r3
	bc		0,2,.L11376	# ne
	.section	.Os_TEXT,,c
.L11581:
#         {
#             CONSTP2VAR(Os_DispatchElementType, AUTOMATIC, OS_CONST) disp = Os_Dispatcher_Alloc_Core(Os_Applications_Stat[application].Os_CoreAssigment);
	.d2line		213
.Llo87:
	rlwinm		r4,r30,0,24,31		# disp=r4 application=r30
.Llo93:
	lis		r3,(Os_Applications_Stat+44)@ha		# retVal=r3
.Llo88:
	e_add16i		r3,r3,(Os_Applications_Stat+44)@l		# retVal=r3 retVal=r3
	rlwinm		r0,r4,6,0,25		# disp=r4
	se_slwi		r4,4		# disp=r4 disp=r4
	subf		r4,r4,r0		# disp=r4 disp=r4
.Llo94:
	lhzx		r3,r3,r4		# retVal=r3 retVal=r3
.Llo89:
	bl		Os_Dispatcher_Alloc_Core
.Llo95:
	mr		r4,r3		# disp=r4 disp=r3
#             OS_API_ALLOCINTERNAL(disp, disp->Os_DispatchApiInternal, TerminateApplicationCrossCore);
	.d2line		214
.Llo96:
	e_lis		r0,4660
.Llo97:
	e_or2i		r0,22136
	stw		r0,16(r4)		# disp=r4
	lis		r3,Os_API_TerminateApplicationCrossCore@ha		# retVal=r3
.Llo90:
	e_add16i		r3,r3,Os_API_TerminateApplicationCrossCore@l		# retVal=r3 retVal=r3
	stw		r3,28(r4)		# disp=r4 retVal=r3
	diab.li		r0,0
	stw		r0,24(r4)		# disp=r4
	diab.addi		r3,r4,16		# retVal=r3 disp=r4
	stw		r3,12(r4)		# disp=r4 retVal=r3
	diab.li		r0,4
	stw		r0,0(r4)		# disp=r4
#             disp->Os_DispatchApiInternal.Os_API_Data.Os_ApiTerminateApplication.Application   = application;
	.d2line		215
	stb		r30,32(r4)		# disp=r4 application=r30
#             disp->Os_DispatchApiInternal.Os_API_Data.Os_ApiTerminateApplication.RestartOption = restartOption;
	.d2line		216
	stb		r29,33(r4)		# disp=r4 restartOption=r29
	.section	.Os_TEXT,,c
.L11582:
.Llo75:
	b		.L11378
.L11376:
#         }
#         else
#       #endif
#         {
#             Os_TerminateApplication(application, restartOption);
	.d2line		221
.Llo76:
	mr		r3,r30		# application=r3 application=r30
	mr		r4,r29		# restartOption=r4 restartOption=r29
	bl		Os_TerminateApplication
.L11378:
#         }
# 
#         *Os_API_ReturnValuePtr = E_OK; /* [OS287-06] */
	.d2line		224
.Llo77:
	diab.li		r0,0
	stb		r0,0(r31)		# Os_API_ReturnValuePtr=r31
	b		.L11372
.L11373:
#     }
#     else
#     {
#       #ifdef OS_CONFIG_USEPARAMETERACCESS
# 
#         /* Setting global error variables */
#         OS_GET_PARAMETER_ERRORCODE ( coreId ).Os_Err_ApplID       =  application;
	.d2line		231
.Llo72:
	lis		r3,(Os_Core_DynShared+52)@ha		# retVal=r3
	e_add16i		r3,r3,(Os_Core_DynShared+52)@l		# retVal=r3 retVal=r3
.Llo91:
	rlwinm		r0,r0,0,16,31		# coreId=r0 coreId=r0
	e_mulli		r0,r0,152		# coreId=r0 coreId=r0
.Llo92:
	stbux		r30,r3,r0		# retVal=r3 application=r30
#         OS_GET_PARAMETER_ERRORCODE ( coreId ).Os_Err_RestartType  =  restartOption;
	.d2line		232
	lis		r3,(Os_Core_DynShared+76)@ha		# retVal=r3
	e_add16i		r3,r3,(Os_Core_DynShared+76)@l		# retVal=r3 retVal=r3
	stbx		r29,r3,r0		# retVal=r3 restartOption=r29
# 
#       #endif
# 
#         OS_CALL_ERRORHOOK (retVal,OSServiceId_TerminateApplication,currentProc); /* [OS001-302.v1-31] */
	.d2line		236
	rlwinm		r3,r28,0,24,31		# retVal=r3 retVal=r28
	mr		r5,r8		# currentProc=r5 currentProc=r8
	diab.li		r4,18
	bl		Os_Call_ErrorHook
#         /* This write back is valid because the API call does nothing */
#         *Os_API_ReturnValuePtr = retVal;
	.d2line		238
.Llo73:
	stb		r28,0(r31)		# Os_API_ReturnValuePtr=r31 retVal=r28
.L11372:
#     }
# }
	.d2line		240
	.d2epilogue_begin
.Llo69:
	lmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# coreId=r0
	mtspr		lr,r0		# coreId=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11568:
	.type		Os_TerminateApplicationAPI,@function
	.size		Os_TerminateApplicationAPI,.-Os_TerminateApplicationAPI
# Number of nodes = 167

# Allocations for Os_TerminateApplicationAPI
#	?a4		Os_API_ReturnValuePtr
#	?a5		currentProc
#	?a6		application
#	?a7		restartOption
#	?a8		$$2356
#	?a9		$$2355
#	?a10		$$2354
#	?a11		retVal
#	?a12		coreId
#	?a13		disp
# LOCAL_INLINE FUNC (StatusType, OS_CODE) TerminateApplication_Err_Stat (
	.align		1
	.section	.Os_TEXT,,c
        .d2line         336,41
#$$ld
.L11593:

#$$bf	TerminateApplication_Err_Stat,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
TerminateApplication_Err_Stat:
.Llo98:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
.Llo110:
	stmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,36(r1)		# retVal=r0
	.d2_cfa_offset    108,-1
	mr		r31,r3		# callerProc=r31 callerProc=r3
	mr		r30,r4		# application=r30 application=r4
	mr		r29,r5		# restartOption=r29 restartOption=r5
	.d2prologue_end
#         P2CONST (Os_ProcStatType, AUTOMATIC, OS_CONST)  callerProc,
#         VAR     (ApplicationType, AUTOMATIC)            application,
#         VAR     (RestartType,     AUTOMATIC)            restartOption )
# {
#     VAR   (StatusType, AUTOMATIC)  retVal = E_NOT_OK;
	.d2line		341
	diab.li		r0,1		# retVal=r0
# 
#   #ifdef OS_CONFIG_HOOK
#     CONST (CoreIdType, AUTOMATIC)  coreId = OS_GETCOREID();
	.d2line		344
.Llo111:
	mfspr		r28,286		# coreId=r28
	mr		r28,r28		# coreId=r28 coreId=r28
#   #endif
# 
#   #if OS_ERRORHOOK == STD_ON
# 
#     /* From error hook just the self termination allowed */
#     if( ( OS_HOOKIS( OS_HOOKID_ERRORHOOK    |
	.d2line		350
	lis		r3,(Os_Core_Stat+4)@ha
.Llo99:
	e_add16i		r3,r3,(Os_Core_Stat+4)@l
	rlwinm		r0,r28,0,16,31		# retVal=r0 coreId=r28
.Llo112:
	e_mulli		r0,r0,20		# retVal=r0 retVal=r0
.Llo113:
	lwzx		r3,r3,r0
	lhz		r0,100(r3)		# retVal=r0
.Llo114:
	e_and2i.		r0,288		# retVal=r0
	se_cmpi		r0,0		# retVal=r0
	bc		1,2,.L11418	# eq
.Llo100:
	lwz		r3,48(r31)		# callerProc=r31
.Llo104:
	lbz		r0,4(r3)		# retVal=r0
.Llo115:
	rlwinm		r4,r30,0,24,31		# application=r30
	se_cmp		r0,r4		# retVal=r0
	bc		1,2,.L11418	# eq
#                      OS_HOOKID_APPERRORHOOK
#                      , coreId)) /* [OS088-02] [OS088-07-MGC] */
#         && ( callerProc->Os_ProcOwnerApp->Os_AppId != application ) )
#     {
#         /* [OS088-03-275] [OS088-03-276] [OS088-03-277] [OS088-03-278] [OS-MGC-0056-76]
#          * [OS088-03-279] [OS088-03-280] [OS088-03-413] [OS088-03-457] [OS-MGC-0056-33]
#          */
#         OS_FATAL_ERROR ( E_OS_SYS_CALLEVEL );
	.d2line		358
.Llo116:
	diab.li		r4,53
	lis		r3,(Os_Core_DynShared+12)@ha
	e_add16i		r3,r3,(Os_Core_DynShared+12)@l
	mfspr		r0,286		# retVal=r0
.Llo117:
	rlwinm		r0,r0,0,16,31		# retVal=r0 retVal=r0
	e_mulli		r0,r0,152		# retVal=r0 retVal=r0
.Llo118:
	stwx		r4,r3,r0
	diab.li		r3,30
	bl		Os_ShutdownAllCores
.L11418:
#     }
# 
#   #endif
# 
#   #ifdef OS_CONFIG_HOOK
# 
#     if ( OS_HOOKISNOT( OS_HOOKID_NONE         |
	.d2line		365
.Llo131:
	lis		r3,(Os_Core_Stat+4)@ha
	e_add16i		r3,r3,(Os_Core_Stat+4)@l
.Llo132:
	rlwinm		r28,r28,0,16,31		# coreId=r28 coreId=r28
	e_mulli		r28,r28,20		# coreId=r28 coreId=r28
.Llo133:
	lwzx		r3,r3,r28
	lhz		r0,100(r3)		# retVal=r0
.Llo119:
	e_and2i.		r0,289		# retVal=r0
	se_cmpi		r0,0		# retVal=r0
	bc		0,2,.L11420	# ne
#                        OS_HOOKID_ERRORHOOK    |
#                        OS_HOOKID_APPERRORHOOK
#                        , coreId))
#     {
#         OS_FATAL_ERROR ( E_OS_SYS_CALLEVEL );
	.d2line		370
.Llo120:
	diab.li		r4,53
	lis		r3,(Os_Core_DynShared+12)@ha
	e_add16i		r3,r3,(Os_Core_DynShared+12)@l
	mfspr		r0,286		# retVal=r0
.Llo121:
	rlwinm		r0,r0,0,16,31		# retVal=r0 retVal=r0
	e_mulli		r0,r0,152		# retVal=r0 retVal=r0
.Llo122:
	stwx		r4,r3,r0
	diab.li		r3,30
	bl		Os_ShutdownAllCores
.L11420:
#     }
# 
#   #endif
# 
#     if((Os_ObjectType)application > Os_ApplicationRange[OS_CORE_NO - 1U].Os_ObjEndId)
	.d2line		375
	rlwinm		r4,r30,0,24,31		# application=r30
	lis		r3,(Os_ApplicationRange+12)@ha
	lwz		r0,(Os_ApplicationRange+12)@l(r3)		# retVal=r0
.Llo123:
	se_cmpl		r4,r0		# retVal=r0
	bc		0,1,.L11422	# le
#     {
#         retVal = OS_GET_ERRORCODE ( E_OS_SYS_ERROR, E_OS_ID ); /* [OS493-01] */
	.d2line		377
.Llo124:
	diab.li		r3,3		# retVal=r3
.Llo125:
	b		.L11423
.L11422:
#     }
#     else if (    ( RESTART    != restartOption )
	.d2line		379
.Llo126:
	rlwinm		r5,r29,0,24,31		# restartOption=r29
	se_cmpi		r5,0
	bc		1,2,.L11424	# eq
	rlwinm		r29,r29,0,24,31		# restartOption=r29 restartOption=r29
	se_cmpi		r29,1		# restartOption=r29
	bc		1,2,.L11424	# eq
#               && ( NO_RESTART != restartOption ) )
#     {
#         retVal = OS_GET_ERRORCODE ( E_OS_SYS_ERROR, E_OS_VALUE ); /* [OS459-01] */
	.d2line		382
.Llo107:
	diab.li		r3,8		# retVal=r3
.Llo127:
	b		.L11423
.L11424:
#     }
#     else if (    ( OS_NONTRUSTED == callerProc->Os_ProcOwnerApp->Os_AppKind )    /* [OS494-01] */
	.d2line		384
.Llo108:
	lwz		r3,48(r31)		# callerProc=r31
	lwz		r0,12(r3)		# retVal=r0
.Llo128:
	se_cmpi		r0,1		# retVal=r0
	bc		0,2,.L11426	# ne
.Llo105:
	lwz		r3,48(r31)		# callerProc=r31
	lbz		r0,4(r3)		# retVal=r0
.Llo106:
	rlwinm		r30,r30,0,24,31		# application=r30 application=r30
	se_cmp		r0,r30		# retVal=r0 application=r30
	bc		1,2,.L11426	# eq
#               && ( callerProc->Os_ProcOwnerApp->Os_AppId != application ) )
#     {
#         retVal = OS_GET_ERRORCODE ( E_OS_SYS_ERROR, E_OS_ACCESS );
	.d2line		387
.Llo101:
	diab.li		r3,1		# retVal=r3
.Llo129:
	b		.L11423
.L11426:
#     }
#     else
#     {
#         /* List of requirements that are not checked (automatically satisfied):
#          * [OS088-01-169] [OS088-01-170] [OS088-01-247] [OS088-01-253]
#          */
#         retVal = E_OK;
	.d2line		394
.Llo102:
	diab.li		r3,0		# retVal=r3
.L11423:
#     }
# 
#     return retVal;
	.d2line		397
.Llo103:
	rlwinm		r3,r3,0,24,31		# retVal=r3 retVal=r3
# }
	.d2line		398
	.d2epilogue_begin
.Llo130:
	lmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# retVal=r0
	mtspr		lr,r0		# retVal=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo109:
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11594:
	.type		TerminateApplication_Err_Stat,@function
	.size		TerminateApplication_Err_Stat,.-TerminateApplication_Err_Stat
# Number of nodes = 150

# Allocations for TerminateApplication_Err_Stat
#	?a4		callerProc
#	?a5		application
#	?a6		restartOption
#	?a7		retVal
#	?a8		coreId
# OS_API(TerminateApplication)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         107,1
#$$ld
.L11605:

#$$bf	Os_API_TerminateApplication,interprocedural,rasave,nostackparams
	.globl		Os_API_TerminateApplication
	.d2_cfa_start __cie
Os_API_TerminateApplication:
.Llo134:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr
	stmw		r26,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	26,31,1,1
	stw		r0,52(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# Os_APICall=r31 Os_APICall=r3
	mr		r30,r4		# callerProc=r30 callerProc=r4
	.d2prologue_end
# {
#     VAR   (StatusType,      AUTOMATIC) retVal;
#     CONST (ApplicationType, AUTOMATIC) application   = Os_APICall->Os_API_Data.Os_ApiTerminateApplication.Application;
	.d2line		110
.Llo140:
	lbz		r28,16(r31)		# Os_APICall=r31
.Llo141:
	mr		r28,r28		# application=r28 application=r28
#     CONST (RestartType,     AUTOMATIC) restartOption = Os_APICall->Os_API_Data.Os_ApiTerminateApplication.RestartOption;
	.d2line		111
	lbz		r27,17(r31)		# Os_APICall=r31
.Llo154:
	mr		r27,r27		# restartOption=r27 restartOption=r27
#   #if defined(OS_CONFIG_USEPARAMETERACCESS) || defined(OS_MODULE_ORTISUPPORT)
#     CONST (CoreIdType,      AUTOMATIC) coreId = OS_GETCOREID();
	.d2line		113
	mfspr		r26,286		# coreId=r26
	mr		r26,r26		# coreId=r26 coreId=r26
#   #endif
# 
#     OS_TRACE(TerminateApplication_Entry, coreId);
	.d2line		116
	diab.li		r4,5
	lis		r3,(Os_Core_DynShared+120)@ha		# retVal=r3
.Llo135:
	e_add16i		r3,r3,(Os_Core_DynShared+120)@l		# retVal=r3 retVal=r3
	rlwinm		r0,r26,0,16,31		# coreId=r26
	e_mulli		r0,r0,152
	stbx		r4,r3,r0		# retVal=r3
# 
#     /* Validate API access and parameters */
#     retVal = TerminateApplication_Err_Stat(callerProc,application,restartOption);
	.d2line		119
	mr		r3,r30		# callerProc=r3 callerProc=r30
.Llo143:
	mr		r4,r28		# application=r4 application=r28
	mr		r5,r27		# restartOption=r5 restartOption=r27
	bl		TerminateApplication_Err_Stat
.Llo144:
	mr		r29,r3		# retVal=r29 retVal=r3
# 
#     /*[OS615-01][OS615-02][OS615-03][OS615-04]*/
#     /* Call API if validation was successful */
#     if( E_OK == retVal )
	.d2line		123
	rlwinm		r3,r3,0,24,31		# retVal=r3 retVal=r3
	se_cmpi		r3,0		# retVal=r3
	bc		0,2,.L11361	# ne
#     {
#       #ifdef OS_MODULE_MULTICORE
#         /* the cross core action must be executed by the dispatcher */
#         if (Os_true == Os_ApplicationOnOtherCore(application))
	.d2line		127
.Llo136:
	rlwinm		r3,r28,0,24,31		# retVal=r3 application=r28
.Llo145:
	bl		Os_ApplicationOnOtherCore
	se_cmpi		r3,1		# retVal=r3
	bc		0,2,.L11362	# ne
	.section	.Os_TEXT,,c
.L11621:
#         {
#             OS_API_ALLOCAPIREMULTI(TerminateApplication, OS_GETCOREID(), Os_Applications_Stat[application].Os_CoreAssigment);
	.d2line		129
.Llo142:
	mfspr		r3,286		# retVal=r3
.Llo146:
	rlwinm		r3,r3,0,16,31		# retVal=r3 retVal=r3
.Llo147:
	bl		Os_Dispatcher_Alloc_Core
.Llo157:
	mr		r4,r3		# _disp=r4 _disp=r3
.Llo158:
	lis		r3,Os_API_MC_TerminateApplication@ha		# retVal=r3
.Llo148:
	e_add16i		r3,r3,Os_API_MC_TerminateApplication@l		# retVal=r3 retVal=r3
	stw		r3,12(r31)		# Os_APICall=r31 retVal=r3
	diab.li		r0,1
	stw		r0,8(r31)		# Os_APICall=r31
.Llo152:
	rlwinm		r28,r28,0,24,31		# application=r28 application=r28
	lis		r3,(Os_Applications_Stat+44)@ha		# retVal=r3
	e_add16i		r3,r3,(Os_Applications_Stat+44)@l		# retVal=r3 retVal=r3
	rlwinm		r0,r28,6,0,25		# application=r28
	se_slwi		r28,4		# application=r28 application=r28
	subf		r28,r28,r0		# application=r28 application=r28
.Llo153:
	lhzx		r0,r3,r28		# retVal=r3
	sth		r0,4(r4)		# _disp=r4
	diab.li		r0,3
	stw		r0,0(r4)		# _disp=r4
	stw		r31,12(r4)		# _disp=r4 Os_APICall=r31
	.section	.Os_TEXT,,c
.L11622:
.Llo137:
	b		.L11365
.L11362:
#         }
#         else
#       #endif
#         {
#             Os_TerminateApplicationAPI(&Os_APICall->Os_API_ReturnValue, callerProc, application, restartOption);
	.d2line		134
.Llo138:
	diab.addi		r3,r31,4		# retVal=r3 Os_APICall=r31
	mr		r4,r30		# callerProc=r4 callerProc=r30
	mr		r5,r28		# application=r5 application=r28
	mr		r6,r27		# restartOption=r6 restartOption=r27
	bl		Os_TerminateApplicationAPI
	b		.L11365
.L11361:
#         }
#     }
#     else
#     {
#       #ifdef OS_CONFIG_USEPARAMETERACCESS
# 
#         /* Setting global error variables */
#         OS_GET_PARAMETER_ERRORCODE ( coreId ).Os_Err_ApplID       =  application;
	.d2line		142
.Llo149:
	lis		r3,(Os_Core_DynShared+52)@ha		# retVal=r3
	e_add16i		r3,r3,(Os_Core_DynShared+52)@l		# retVal=r3 retVal=r3
	rlwinm		r0,r26,0,16,31		# coreId=r26
	e_mulli		r0,r0,152
	stbux		r28,r3,r0		# retVal=r3 application=r28
#         OS_GET_PARAMETER_ERRORCODE ( coreId ).Os_Err_RestartType  =  restartOption;
	.d2line		143
	lis		r3,(Os_Core_DynShared+76)@ha		# retVal=r3
	e_add16i		r3,r3,(Os_Core_DynShared+76)@l		# retVal=r3 retVal=r3
	stbx		r27,r3,r0		# retVal=r3 restartOption=r27
# 
#       #endif
# 
#         OS_CALL_ERRORHOOK (retVal,OSServiceId_TerminateApplication,callerProc); /* [OS001-302.v1-31] */
	.d2line		147
	rlwinm		r3,r29,0,24,31		# retVal=r3 retVal=r29
	mr		r5,r30		# callerProc=r5 callerProc=r30
	diab.li		r4,18
	bl		Os_Call_ErrorHook
# 
#         /* This write back is valid because the API call does nothing */
#         Os_APICall->Os_API_ReturnValue = retVal;
	.d2line		150
	stb		r29,4(r31)		# Os_APICall=r31 retVal=r29
.L11365:
# 
#     }
#     /* If the caller task restarted its own application then in this point it is already terminated, so
#      * do not write to the APIcall pointer because its area is cleared! */
#     OS_TRACE(TerminateApplication_Exit, coreId);
	.d2line		155
.Llo139:
	diab.li		r3,4		# retVal=r3
.Llo150:
	lis		r4,(Os_Core_DynShared+120)@ha		# _disp=r4
.Llo159:
	e_add16i		r4,r4,(Os_Core_DynShared+120)@l		# _disp=r4 _disp=r4
.Llo155:
	rlwinm		r26,r26,0,16,31		# coreId=r26 coreId=r26
	e_mulli		r26,r26,152		# coreId=r26 coreId=r26
.Llo156:
	stbx		r3,r4,r26		# _disp=r4 retVal=r3
# 
# } /* TerminateApplication () */
	.d2line		157
	.d2epilogue_begin
	lmw		r26,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	2,10
	lwz		r0,52(r1)
	mtspr		lr,r0
	diab.addi		r1,r1,48		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo151:
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11606:
	.type		Os_API_TerminateApplication,@function
	.size		Os_API_TerminateApplication,.-Os_API_TerminateApplication
# Number of nodes = 170

# Allocations for Os_API_TerminateApplication
#	?a4		Os_APICall
#	?a5		callerProc
#	?a6		$$2357
#	?a7		retVal
#	?a8		application
#	?a9		restartOption
#	?a10		coreId
#	?a11		_disp
# OS_API(TerminateApplicationCrossCore)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         163,1
#$$ld
.L11629:

#$$bf	Os_API_TerminateApplicationCrossCore,interprocedural,rasave,nostackparams
	.globl		Os_API_TerminateApplicationCrossCore
	.d2_cfa_start __cie
Os_API_TerminateApplicationCrossCore:
.Llo160:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r4,r3		# Os_APICall=r4 Os_APICall=r3
	.d2prologue_end
# {
#     Os_TerminateApplication(Os_APICall->Os_API_Data.Os_ApiTerminateApplication.Application,
	.d2line		165
	lbz		r3,16(r4)		# Os_APICall=r4
.Llo161:
	lbz		r4,17(r4)		# Os_APICall=r4 Os_APICall=r4
	bl		Os_TerminateApplication
#                             Os_APICall->Os_API_Data.Os_ApiTerminateApplication.RestartOption );
# }
	.d2line		167
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
.L11630:
	.type		Os_API_TerminateApplicationCrossCore,@function
	.size		Os_API_TerminateApplicationCrossCore,.-Os_API_TerminateApplicationCrossCore
# Number of nodes = 14

# Allocations for Os_API_TerminateApplicationCrossCore
#	?a4		Os_APICall
#	not allocated	callerProc
# OS_APIMC(TerminateApplication)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         171,1
#$$ld
.L11635:

#$$bf	Os_API_MC_TerminateApplication,interprocedural,rasave,nostackparams
	.globl		Os_API_MC_TerminateApplication
	.d2_cfa_start __cie
Os_API_MC_TerminateApplication:
.Llo162:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r6,r3		# Os_APICall=r6 Os_APICall=r3
	.d2prologue_end
# {
#      Os_TerminateApplicationAPI( &Os_APICall->Os_API_ReturnValue,
	.d2line		173
	lbz		r5,16(r6)		# Os_APICall=r6
	lbz		r6,17(r6)		# Os_APICall=r6 Os_APICall=r6
	se_addi		r3,4		# Os_APICall=r3 Os_APICall=r3
.Llo163:
	mr		r0,r4		# callerProc=r0 callerProc=r4
	bl		Os_TerminateApplicationAPI
#                                  callerProc,
#                                  Os_APICall->Os_API_Data.Os_ApiTerminateApplication.Application,
#                                  Os_APICall->Os_API_Data.Os_ApiTerminateApplication.RestartOption );
# }
	.d2line		177
	.d2epilogue_begin
.Llo164:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11636:
	.type		Os_API_MC_TerminateApplication,@function
	.size		Os_API_MC_TerminateApplication,.-Os_API_MC_TerminateApplication
# Number of nodes = 20

# Allocations for Os_API_MC_TerminateApplication
#	?a4		Os_APICall
#	?a5		callerProc

# Allocations for module
	.section	.text_vle
	.0byte		.L11640
	.section	.text_vle
	.0byte		.L11650
	.section	.text_vle
	.0byte		.L11654
	.section	.Os_BSS,,b
	.0byte		.L11661
	.section	.text_vle
#$$ld
.L5:
.L12127:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_Types.h"
.L12124:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ApplicationApiTypes.h"
.L12122:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ScheduleTableApiTypes.h"
.L12120:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_TaskApiTypes.h"
.L12118:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_SpinlockApiTypes.h"
.L12106:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_Isr.h"
.L12101:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\PowerPC\\WindRiver\\AUTOSAR\\ar422\\MemMap.h"
.L12098:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_InternalTypes.h"
.L12081:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ErrorApiTypes.h"
.L12061:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ExceptionApiTypes.h"
.L11969:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_HookApiTypes.h"
.L11944:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_TrustedFunctionCfgTypes.h"
.L11712:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_ApiDispatchCfgTypes.h"
.L11666:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_SchedulerCfgTypes.h"
.L11655:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_CoreCfgTypes.h"
.L11651:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_TaskCfgTypes.h"
.L11641:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_ApplicationCfgTypes.h"
	.d2_line_end
	.section	.Os_TEXT,,c
#$$ld
.L11452:
.L11497:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\application\\Os_TerminateApplication.c"
.L11460:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_Isr.h"
	.d2_line_end
	.section	.Os_PUBLIC_TEXT,,c
#$$ld
.L11473:
.L11481:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\application\\Os_TerminateApplication.c"
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
	.uleb128	9
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	6
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
	.uleb128	7
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
	.uleb128	8
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
	.uleb128	9
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
	.uleb128	10
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
	.uleb128	11
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
	.uleb128	11
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	13
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
	.uleb128	14
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
	.uleb128	15
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
	.uleb128	11
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	17
	.uleb128	40
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	28
	.uleb128	13
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	18
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
	.uleb128	19
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
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
	.uleb128	38
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	22
	.uleb128	15
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	23
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	24
	.uleb128	33
	.byte		0x0
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
	.uleb128	5
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	28
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
	.uleb128	29
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\application\\Os_TerminateApplication.c"
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
.L11449:
	.4byte		.L11450-.L11448
.L11448:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L11454-.L11449
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\application\\Os_TerminateApplication.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L11451
	.4byte		.L11452
	.4byte		.L11455
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11463:
	.sleb128	2
	.4byte		.L11457-.L11449
	.byte		"Os_Isr_GetState"
	.byte		0
	.4byte		.L11460
	.uleb128	227
	.uleb128	45
	.4byte		.L11461
	.byte		0x1
	.4byte		.L11458
	.4byte		.L11459
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L11460
	.uleb128	227
	.uleb128	45
	.byte		"coreId"
	.byte		0
	.4byte		.L11464
	.4byte		.L11468
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11457:
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
.L11470:
	.4byte		.L11471-.L11469
.L11469:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L11475-.L11470
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\application\\Os_TerminateApplication.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L11472
	.4byte		.L11473
	.4byte		.L11476
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
.L11485:
	.sleb128	4
	.4byte		.L11478-.L11470
	.byte		"TerminateApplication"
	.byte		0
	.4byte		.L11481
	.uleb128	82
	.uleb128	28
	.4byte		.L11482
	.byte		0x1
	.byte		0x1
	.4byte		.L11479
	.4byte		.L11480
	.sleb128	3
	.4byte		.L11481
	.uleb128	82
	.uleb128	28
	.byte		"application"
	.byte		0
	.4byte		.L11486
	.4byte		.L11487
	.sleb128	3
	.4byte		.L11481
	.uleb128	82
	.uleb128	28
	.byte		"restartOption"
	.byte		0
	.4byte		.L11488
	.4byte		.L11489
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
.L11490:
	.sleb128	5
	.4byte		.L11481
	.uleb128	85
	.uleb128	35
	.byte		"Os_TerminateAppCall"
	.byte		0
	.4byte		.L11491
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11478:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11498:
	.sleb128	6
	.4byte		.L11494-.L11449
	.byte		"Os_TerminateApplication"
	.byte		0
	.4byte		.L11497
	.uleb128	243
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L11495
	.4byte		.L11496
	.sleb128	3
	.4byte		.L11497
	.uleb128	243
	.uleb128	22
	.byte		"application"
	.byte		0
	.4byte		.L11486
	.4byte		.L11499
	.sleb128	3
	.4byte		.L11497
	.uleb128	243
	.uleb128	22
	.byte		"restartOption"
	.byte		0
	.4byte		.L11488
	.4byte		.L11500
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11501:
	.sleb128	7
	.4byte		.L11497
	.uleb128	246
	.uleb128	63
	.byte		"app"
	.byte		0
	.4byte		.L11502
	.4byte		.L11507
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	8
	.4byte		.L11511
	.4byte		.L11508
	.4byte		.L11509
.L11512:
	.sleb128	7
	.4byte		.L11497
	.uleb128	256
	.uleb128	34
	.byte		"procIdx"
	.byte		0
	.4byte		.L11513
	.4byte		.L11518
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	8
	.4byte		.L11522
	.4byte		.L11519
	.4byte		.L11520
.L11523:
	.sleb128	7
	.4byte		.L11497
	.uleb128	260
	.uleb128	73
	.byte		"proc"
	.byte		0
	.4byte		.L11524
	.4byte		.L11528
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11522:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11511:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	8
	.4byte		.L11532
	.4byte		.L11529
	.4byte		.L11530
.L11533:
	.sleb128	7
	.4byte		.L11497
	.uleb128	280
	.uleb128	35
	.byte		"alarmId"
	.byte		0
	.4byte		.L11534
	.4byte		.L11535
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11532:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	8
	.4byte		.L11539
	.4byte		.L11536
	.4byte		.L11537
.L11540:
	.sleb128	7
	.4byte		.L11497
	.uleb128	290
	.uleb128	43
	.byte		"schTblId"
	.byte		0
	.4byte		.L11541
	.4byte		.L11542
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11539:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	8
	.4byte		.L11546
	.4byte		.L11543
	.4byte		.L11544
.L11547:
	.sleb128	7
	.4byte		.L11497
	.uleb128	300
	.uleb128	37
	.byte		"cntrId"
	.byte		0
	.4byte		.L11548
	.4byte		.L11549
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11546:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11494:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11554:
	.sleb128	2
	.4byte		.L11551-.L11449
	.byte		"TerminateApplication_Err_Dyn"
	.byte		0
	.4byte		.L11497
	.uleb128	401
	.uleb128	41
	.4byte		.L11482
	.byte		0x1
	.4byte		.L11552
	.4byte		.L11553
	.sleb128	3
	.4byte		.L11497
	.uleb128	401
	.uleb128	41
	.byte		"callerProc"
	.byte		0
	.4byte		.L11555
	.4byte		.L11558
	.sleb128	3
	.4byte		.L11497
	.uleb128	401
	.uleb128	41
	.byte		"application"
	.byte		0
	.4byte		.L11486
	.4byte		.L11559
	.sleb128	3
	.4byte		.L11497
	.uleb128	401
	.uleb128	41
	.byte		"restartOption"
	.byte		0
	.4byte		.L11488
	.4byte		.L11560
.L11561:
	.sleb128	7
	.4byte		.L11497
	.uleb128	406
	.uleb128	31
	.byte		"retVal"
	.byte		0
	.4byte		.L11482
	.4byte		.L11562
.L11563:
	.sleb128	7
	.4byte		.L11497
	.uleb128	408
	.uleb128	61
	.byte		"app"
	.byte		0
	.4byte		.L11502
	.4byte		.L11564
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11551:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11569:
	.sleb128	9
	.4byte		.L11566-.L11449
	.byte		"Os_TerminateApplicationAPI"
	.byte		0
	.4byte		.L11497
	.uleb128	181
	.uleb128	35
	.byte		0x1
	.4byte		.L11567
	.4byte		.L11568
	.sleb128	3
	.4byte		.L11497
	.uleb128	181
	.uleb128	35
	.byte		"Os_API_ReturnValuePtr"
	.byte		0
	.4byte		.L11570
	.4byte		.L11571
	.sleb128	3
	.4byte		.L11497
	.uleb128	181
	.uleb128	35
	.byte		"currentProc"
	.byte		0
	.4byte		.L11572
	.4byte		.L11573
	.sleb128	3
	.4byte		.L11497
	.uleb128	181
	.uleb128	35
	.byte		"application"
	.byte		0
	.4byte		.L11486
	.4byte		.L11574
	.sleb128	3
	.4byte		.L11497
	.uleb128	181
	.uleb128	35
	.byte		"restartOption"
	.byte		0
	.4byte		.L11488
	.4byte		.L11575
.L11576:
	.sleb128	7
	.4byte		.L11497
	.uleb128	187
	.uleb128	36
	.byte		"retVal"
	.byte		0
	.4byte		.L11577
	.4byte		.L11578
.L11579:
	.sleb128	7
	.4byte		.L11497
	.uleb128	191
	.uleb128	36
	.byte		"coreId"
	.byte		0
	.4byte		.L11464
	.4byte		.L11580
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	8
	.4byte		.L11584
	.4byte		.L11581
	.4byte		.L11582
.L11585:
	.sleb128	7
	.4byte		.L11497
	.uleb128	213
	.uleb128	69
	.byte		"disp"
	.byte		0
	.4byte		.L11586
	.4byte		.L11590
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11584:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11566:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11595:
	.sleb128	2
	.4byte		.L11592-.L11449
	.byte		"TerminateApplication_Err_Stat"
	.byte		0
	.4byte		.L11497
	.uleb128	336
	.uleb128	41
	.4byte		.L11482
	.byte		0x1
	.4byte		.L11593
	.4byte		.L11594
	.sleb128	3
	.4byte		.L11497
	.uleb128	336
	.uleb128	41
	.byte		"callerProc"
	.byte		0
	.4byte		.L11555
	.4byte		.L11596
	.sleb128	3
	.4byte		.L11497
	.uleb128	336
	.uleb128	41
	.byte		"application"
	.byte		0
	.4byte		.L11486
	.4byte		.L11597
	.sleb128	3
	.4byte		.L11497
	.uleb128	336
	.uleb128	41
	.byte		"restartOption"
	.byte		0
	.4byte		.L11488
	.4byte		.L11598
.L11599:
	.sleb128	7
	.4byte		.L11497
	.uleb128	341
	.uleb128	36
	.byte		"retVal"
	.byte		0
	.4byte		.L11482
	.4byte		.L11600
.L11601:
	.sleb128	7
	.4byte		.L11497
	.uleb128	344
	.uleb128	36
	.byte		"coreId"
	.byte		0
	.4byte		.L11464
	.4byte		.L11602
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11592:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11607:
	.sleb128	6
	.4byte		.L11604-.L11449
	.byte		"Os_API_TerminateApplication"
	.byte		0
	.4byte		.L11497
	.uleb128	107
	.uleb128	1
	.byte		0x1
	.byte		0x1
	.4byte		.L11605
	.4byte		.L11606
	.sleb128	3
	.4byte		.L11497
	.uleb128	107
	.uleb128	1
	.byte		"Os_APICall"
	.byte		0
	.4byte		.L11608
	.4byte		.L11609
	.sleb128	3
	.4byte		.L11497
	.uleb128	107
	.uleb128	1
	.byte		"callerProc"
	.byte		0
	.4byte		.L11524
	.4byte		.L11610
.L11611:
	.sleb128	7
	.4byte		.L11497
	.uleb128	109
	.uleb128	40
	.byte		"retVal"
	.byte		0
	.4byte		.L11482
	.4byte		.L11612
.L11613:
	.sleb128	7
	.4byte		.L11497
	.uleb128	110
	.uleb128	40
	.byte		"application"
	.byte		0
	.4byte		.L11614
	.4byte		.L11615
.L11616:
	.sleb128	7
	.4byte		.L11497
	.uleb128	111
	.uleb128	40
	.byte		"restartOption"
	.byte		0
	.4byte		.L11617
	.4byte		.L11618
.L11619:
	.sleb128	7
	.4byte		.L11497
	.uleb128	113
	.uleb128	40
	.byte		"coreId"
	.byte		0
	.4byte		.L11464
	.4byte		.L11620
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	8
	.4byte		.L11624
	.4byte		.L11621
	.4byte		.L11622
.L11625:
	.sleb128	7
	.4byte		.L11497
	.uleb128	129
	.uleb128	13
	.byte		"_disp"
	.byte		0
	.4byte		.L11587
	.4byte		.L11626
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11624:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11604:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11631:
	.sleb128	6
	.4byte		.L11628-.L11449
	.byte		"Os_API_TerminateApplicationCrossCore"
	.byte		0
	.4byte		.L11497
	.uleb128	163
	.uleb128	1
	.byte		0x1
	.byte		0x1
	.4byte		.L11629
	.4byte		.L11630
	.sleb128	3
	.4byte		.L11497
	.uleb128	163
	.uleb128	1
	.byte		"Os_APICall"
	.byte		0
	.4byte		.L11608
	.4byte		.L11632
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	10
	.4byte		.L11497
	.uleb128	163
	.uleb128	1
	.byte		"callerProc"
	.byte		0
	.4byte		.L11524
	.sleb128	2
	.byte		0x90
	.uleb128	4
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11628:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11637:
	.sleb128	6
	.4byte		.L11634-.L11449
	.byte		"Os_API_MC_TerminateApplication"
	.byte		0
	.4byte		.L11497
	.uleb128	171
	.uleb128	1
	.byte		0x1
	.byte		0x1
	.4byte		.L11635
	.4byte		.L11636
	.sleb128	3
	.4byte		.L11497
	.uleb128	171
	.uleb128	1
	.byte		"Os_APICall"
	.byte		0
	.4byte		.L11608
	.4byte		.L11638
	.sleb128	3
	.4byte		.L11497
	.uleb128	171
	.uleb128	1
	.byte		"callerProc"
	.byte		0
	.4byte		.L11524
	.4byte		.L11639
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11634:
	.section	.debug_info,,n
.L11640:
	.sleb128	11
	.byte		0x1
	.byte		0x1
	.4byte		.L11641
	.uleb128	100
	.uleb128	48
	.byte		"Os_Applications_Stat"
	.byte		0
	.4byte		.L11642
	.section	.debug_info,,n
.L11644:
	.sleb128	11
	.byte		0x1
	.byte		0x1
	.4byte		.L11641
	.uleb128	102
	.uleb128	44
	.byte		"Os_ApplicationRange"
	.byte		0
	.4byte		.L11645
.L11650:
	.sleb128	11
	.byte		0x1
	.byte		0x1
	.4byte		.L11651
	.uleb128	211
	.uleb128	45
	.byte		"Os_Proc_Stat"
	.byte		0
	.4byte		.L11652
	.section	.debug_info,,n
.L11654:
	.sleb128	11
	.byte		0x1
	.byte		0x1
	.4byte		.L11655
	.uleb128	169
	.uleb128	42
	.byte		"Os_Core_Stat"
	.byte		0
	.4byte		.L11656
	.section	.debug_info,,n
.L11661:
	.sleb128	11
	.byte		0x1
	.byte		0x1
	.4byte		.L11655
	.uleb128	181
	.uleb128	45
	.byte		"Os_Core_DynShared"
	.byte		0
	.4byte		.L11662
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11660:
	.sleb128	12
	.4byte		.L11666
	.uleb128	69
	.uleb128	1
	.4byte		.L11667-.L2
	.uleb128	20
	.section	.debug_info,,n
.L786:
	.sleb128	13
	.byte		"Os_Core_DynInit"
	.byte		0
	.4byte		.L11668
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L787:
	.sleb128	13
	.byte		"Os_Core_Dyn"
	.byte		0
	.4byte		.L11672
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L788:
	.sleb128	13
	.byte		"Os_DispatchElement"
	.byte		0
	.4byte		.L11586
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L789:
	.sleb128	13
	.byte		"Os_PrepareContextFunction"
	.byte		0
	.4byte		.L11676
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L790:
	.sleb128	13
	.byte		"Os_GetStackPointerFunction"
	.byte		0
	.4byte		.L11681
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11667:
.L11671:
	.sleb128	12
	.4byte		.L11666
	.uleb128	69
	.uleb128	1
	.4byte		.L11688-.L2
	.uleb128	36
.L783:
	.sleb128	13
	.byte		"Os_IsrDynInit"
	.byte		0
	.4byte		.L11689
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L784:
	.sleb128	13
	.byte		"Os_SchedulerDynInit"
	.byte		0
	.4byte		.L11691
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L785:
	.sleb128	13
	.byte		"Os_CurrentApp"
	.byte		0
	.4byte		.L11503
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
	.sleb128	0
.L11688:
.L11665:
	.sleb128	12
	.4byte		.L11666
	.uleb128	69
	.uleb128	1
	.4byte		.L11693-.L2
	.uleb128	152
.L776:
	.sleb128	13
	.byte		"Os_Dispatcher"
	.byte		0
	.4byte		.L11694
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L777:
	.sleb128	13
	.byte		"Os_PublicDataNoInit"
	.byte		0
	.4byte		.L11696
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11693:
.L11675:
	.sleb128	12
	.4byte		.L11666
	.uleb128	69
	.uleb128	1
	.4byte		.L11698-.L2
	.uleb128	104
.L773:
	.sleb128	13
	.byte		"Os_SchedulerDyn"
	.byte		0
	.4byte		.L11699
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L774:
	.sleb128	13
	.byte		"Os_IsrDyn"
	.byte		0
	.4byte		.L11701
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L775:
	.sleb128	13
	.byte		"Os_HooksDyn"
	.byte		0
	.4byte		.L11703
	.sleb128	2
	.byte		0x23
	.uleb128	100
	.byte		0x1
	.sleb128	0
.L11698:
.L11692:
	.sleb128	12
	.4byte		.L11666
	.uleb128	69
	.uleb128	1
	.4byte		.L11705-.L2
	.uleb128	4
.L772:
	.sleb128	13
	.byte		"Os_SchedulerCurrentProc"
	.byte		0
	.4byte		.L11525
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11705:
.L11700:
	.sleb128	12
	.4byte		.L11666
	.uleb128	69
	.uleb128	1
	.4byte		.L11706-.L2
	.uleb128	48
.L764:
	.sleb128	13
	.byte		"Os_CurrentContext"
	.byte		0
	.4byte		.L11686
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L765:
	.sleb128	13
	.byte		"Os_PreviousContext"
	.byte		0
	.4byte		.L11686
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L766:
	.sleb128	13
	.byte		"Os_SchedulerScheduleAction"
	.byte		0
	.4byte		.L11707
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L767:
	.sleb128	13
	.byte		"Os_SchedulerLastScheduledPriority"
	.byte		0
	.4byte		.L11709
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L768:
	.sleb128	13
	.byte		"Os_SchedulerCurrentTask"
	.byte		0
	.4byte		.L11525
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L769:
	.sleb128	13
	.byte		"Os_SchedulerLastScheduledProc"
	.byte		0
	.4byte		.L11525
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L770:
	.sleb128	13
	.byte		"Os_SchedulerHeadPivot"
	.byte		0
	.4byte		.L11710
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L771:
	.sleb128	13
	.byte		"Os_SchedulerTailPivot"
	.byte		0
	.4byte		.L11710
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
	.sleb128	0
.L11706:
	.section	.debug_info,,n
.L11711:
	.sleb128	14
	.4byte		.L11712
	.uleb128	612
	.uleb128	1
	.4byte		.L11713-.L2
	.byte		"Os_SchedulerQueueElementType_s"
	.byte		0
	.uleb128	12
.L750:
	.sleb128	13
	.byte		"Os_QueueProc"
	.byte		0
	.4byte		.L11525
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L751:
	.sleb128	13
	.byte		"Os_QueueFrontElement"
	.byte		0
	.4byte		.L11714
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L752:
	.sleb128	13
	.byte		"Os_QueueBackElement"
	.byte		0
	.4byte		.L11714
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11713:
.L11690:
	.sleb128	12
	.4byte		.L11712
	.uleb128	612
	.uleb128	1
	.4byte		.L11715-.L2
	.uleb128	28
.L743:
	.sleb128	13
	.byte		"Os_CurrentUserModePriority"
	.byte		0
	.4byte		.L11716
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L744:
	.sleb128	13
	.byte		"Os_UserModePriorityChanged"
	.byte		0
	.4byte		.L11717
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L745:
	.sleb128	13
	.byte		"Os_DisableAllCount"
	.byte		0
	.4byte		.L11516
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L746:
	.sleb128	13
	.byte		"Os_SuspendAllCount"
	.byte		0
	.4byte		.L11516
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L747:
	.sleb128	13
	.byte		"Os_SuspendOSCount"
	.byte		0
	.4byte		.L11516
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L748:
	.sleb128	13
	.byte		"Os_SavedIsrLevel"
	.byte		0
	.4byte		.L11716
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L749:
	.sleb128	13
	.byte		"Os_SavedOSIsrLevel"
	.byte		0
	.4byte		.L11716
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
	.sleb128	0
.L11715:
.L11702:
	.sleb128	12
	.4byte		.L11712
	.uleb128	612
	.uleb128	1
	.4byte		.L11718-.L2
	.uleb128	52
.L737:
	.sleb128	13
	.byte		"Os_IsrRunningIsr"
	.byte		0
	.4byte		.L11525
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L738:
	.sleb128	13
	.byte		"Os_IsrNeedToClear"
	.byte		0
	.4byte		.L11719
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L739:
	.sleb128	13
	.byte		"Os_Isr_NestLevel"
	.byte		0
	.4byte		.L11516
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L740:
	.sleb128	13
	.byte		"Os_Isr_ServicesBackup"
	.byte		0
	.4byte		.L11723
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L741:
	.sleb128	13
	.byte		"Os_SuspendAllPrevIsrState"
	.byte		0
	.4byte		.L11716
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L742:
	.sleb128	13
	.byte		"Os_SuspendCounterpartTrack"
	.byte		0
	.4byte		.L11727
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L11718:
.L11695:
	.sleb128	12
	.4byte		.L11712
	.uleb128	612
	.uleb128	1
	.4byte		.L11729-.L2
	.uleb128	8
.L735:
	.sleb128	13
	.byte		"Os_DHead"
	.byte		0
	.4byte		.L11516
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L736:
	.sleb128	13
	.byte		"Os_DTail"
	.byte		0
	.4byte		.L11516
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11729:
.L11589:
	.sleb128	14
	.4byte		.L11712
	.uleb128	612
	.uleb128	1
	.4byte		.L11730-.L2
	.byte		"Os_DispatchElementType_s"
	.byte		0
	.uleb128	56
.L730:
	.sleb128	13
	.byte		"Os_DispatchKind"
	.byte		0
	.4byte		.L11731
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L731:
	.sleb128	13
	.byte		"Os_DispatcherLockCoreId"
	.byte		0
	.4byte		.L11465
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L732:
	.sleb128	13
	.byte		"Os_DispatchIsrId"
	.byte		0
	.4byte		.L11733
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L733:
	.sleb128	13
	.byte		"Os_DispatchApiCall"
	.byte		0
	.4byte		.L11734
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L734:
	.sleb128	13
	.byte		"Os_DispatchApiInternal"
	.byte		0
	.4byte		.L11491
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11730:
.L11492:
	.sleb128	14
	.4byte		.L11712
	.uleb128	60
	.uleb128	1
	.4byte		.L11735-.L2
	.byte		"Os_APICallType_struct"
	.byte		0
	.uleb128	40
.L725:
	.sleb128	13
	.byte		"Os_API_Magic"
	.byte		0
	.4byte		.L11516
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L726:
	.sleb128	13
	.byte		"Os_API_ReturnValue"
	.byte		0
	.4byte		.L11482
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L727:
	.sleb128	13
	.byte		"Os_API_Lock"
	.byte		0
	.4byte		.L11736
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L728:
	.sleb128	13
	.byte		"Os_API_Func"
	.byte		0
	.4byte		.L11738
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L729:
	.sleb128	13
	.byte		"Os_API_Data"
	.byte		0
	.4byte		.L11742
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11735:
	.section	.debug_info,,n
.L11742:
	.sleb128	15
	.4byte		.L11712
	.uleb128	60
	.uleb128	1
	.4byte		.L11743-.L2
	.uleb128	24
.L677:
	.sleb128	13
	.byte		"Os_ApiStartOs"
	.byte		0
	.4byte		.L11744
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L678:
	.sleb128	13
	.byte		"Os_ApiShutdownOs"
	.byte		0
	.4byte		.L11746
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L679:
	.sleb128	13
	.byte		"Os_ApiShutdownOsInternal"
	.byte		0
	.4byte		.L11748
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L680:
	.sleb128	13
	.byte		"Os_ApiShutdownAllCores"
	.byte		0
	.4byte		.L11750
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L681:
	.sleb128	13
	.byte		"Os_ApiGetNumberOfActivatedCores"
	.byte		0
	.4byte		.L11752
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L682:
	.sleb128	13
	.byte		"Os_ApiStartCore"
	.byte		0
	.4byte		.L11754
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L683:
	.sleb128	13
	.byte		"Os_ApiStartNonAutosarCore"
	.byte		0
	.4byte		.L11756
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L684:
	.sleb128	13
	.byte		"Os_ApiGetCoreID"
	.byte		0
	.4byte		.L11758
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L685:
	.sleb128	13
	.byte		"Os_ApiActivateTask"
	.byte		0
	.4byte		.L11760
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L686:
	.sleb128	13
	.byte		"Os_ApiChainTask"
	.byte		0
	.4byte		.L11762
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L687:
	.sleb128	13
	.byte		"Os_ApiGetTaskID"
	.byte		0
	.4byte		.L11764
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L688:
	.sleb128	13
	.byte		"Os_ApiGetTaskState"
	.byte		0
	.4byte		.L11766
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L689:
	.sleb128	13
	.byte		"Os_ApiSetEvent"
	.byte		0
	.4byte		.L11768
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L690:
	.sleb128	13
	.byte		"Os_ApiClearEvent"
	.byte		0
	.4byte		.L11770
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L691:
	.sleb128	13
	.byte		"Os_ApiGetEvent"
	.byte		0
	.4byte		.L11772
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L692:
	.sleb128	13
	.byte		"Os_ApiWaitEvent"
	.byte		0
	.4byte		.L11774
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L693:
	.sleb128	13
	.byte		"Os_ApiGetResource"
	.byte		0
	.4byte		.L11776
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L694:
	.sleb128	13
	.byte		"Os_ApiReleaseResource"
	.byte		0
	.4byte		.L11778
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L695:
	.sleb128	13
	.byte		"Os_ApiGetAlarmBase"
	.byte		0
	.4byte		.L11780
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L696:
	.sleb128	13
	.byte		"Os_ApiGetAlarm"
	.byte		0
	.4byte		.L11782
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L697:
	.sleb128	13
	.byte		"Os_ApiSetRelAlarm"
	.byte		0
	.4byte		.L11784
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L698:
	.sleb128	13
	.byte		"Os_ApiSetAbsAlarm"
	.byte		0
	.4byte		.L11786
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L699:
	.sleb128	13
	.byte		"Os_ApiCancelAlarm"
	.byte		0
	.4byte		.L11788
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L700:
	.sleb128	13
	.byte		"Os_ApiGetApplicationState"
	.byte		0
	.4byte		.L11790
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L701:
	.sleb128	13
	.byte		"Os_ApiTerminateApplication"
	.byte		0
	.4byte		.L11792
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L702:
	.sleb128	13
	.byte		"Os_ApiGetApplicationID"
	.byte		0
	.4byte		.L11794
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L703:
	.sleb128	13
	.byte		"Os_ApiGetISRID"
	.byte		0
	.4byte		.L11796
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L704:
	.sleb128	13
	.byte		"Os_ApiGetActiveApplicationMode"
	.byte		0
	.4byte		.L11798
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L705:
	.sleb128	13
	.byte		"Os_ApiIncrementCounter"
	.byte		0
	.4byte		.L11800
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L706:
	.sleb128	13
	.byte		"Os_ApiGetCounterValue"
	.byte		0
	.4byte		.L11802
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L707:
	.sleb128	13
	.byte		"Os_ApiGetElapsedValue"
	.byte		0
	.4byte		.L11804
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L708:
	.sleb128	13
	.byte		"Os_ApiStartScheduleTableAbs"
	.byte		0
	.4byte		.L11806
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L709:
	.sleb128	13
	.byte		"Os_ApiStartScheduleTableRel"
	.byte		0
	.4byte		.L11808
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L710:
	.sleb128	13
	.byte		"Os_ApiStopScheduleTable"
	.byte		0
	.4byte		.L11810
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L711:
	.sleb128	13
	.byte		"Os_ApiGetScheduleTableStatus"
	.byte		0
	.4byte		.L11812
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L712:
	.sleb128	13
	.byte		"Os_ApiNextScheduleTable"
	.byte		0
	.4byte		.L11814
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L713:
	.sleb128	13
	.byte		"Os_ApiStartScheduleTableSynchron"
	.byte		0
	.4byte		.L11816
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L714:
	.sleb128	13
	.byte		"Os_ApiSyncScheduleTable"
	.byte		0
	.4byte		.L11818
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L715:
	.sleb128	13
	.byte		"Os_ApiSetScheduleTableAsync"
	.byte		0
	.4byte		.L11820
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L716:
	.sleb128	13
	.byte		"Os_ApiCheckObjectAccess"
	.byte		0
	.4byte		.L11822
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L717:
	.sleb128	13
	.byte		"Os_ApiCheckObjectOwnership"
	.byte		0
	.4byte		.L11824
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L718:
	.sleb128	13
	.byte		"Os_ApiCallTrustedFunction"
	.byte		0
	.4byte		.L11826
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L719:
	.sleb128	13
	.byte		"Os_ApiStackUsage"
	.byte		0
	.4byte		.L11828
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L720:
	.sleb128	13
	.byte		"Os_API_GetSpinlock"
	.byte		0
	.4byte		.L11830
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L721:
	.sleb128	13
	.byte		"Os_API_ReleaseSpinlock"
	.byte		0
	.4byte		.L11832
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L722:
	.sleb128	13
	.byte		"Os_API_TryToGetSpinlock"
	.byte		0
	.4byte		.L11834
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L723:
	.sleb128	13
	.byte		"Os_API_IOCTransfer"
	.byte		0
	.4byte		.L11836
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L724:
	.sleb128	13
	.byte		"Os_ApiControlIdle"
	.byte		0
	.4byte		.L11838
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11743:
.L11839:
	.sleb128	12
	.4byte		.L11712
	.uleb128	60
	.uleb128	1
	.4byte		.L11840-.L2
	.uleb128	8
.L675:
	.sleb128	13
	.byte		"CoreID"
	.byte		0
	.4byte		.L11465
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L676:
	.sleb128	13
	.byte		"IdleMode"
	.byte		0
	.4byte		.L11841
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11840:
.L11837:
	.sleb128	12
	.4byte		.L11712
	.uleb128	60
	.uleb128	1
	.4byte		.L11843-.L2
	.uleb128	8
.L673:
	.sleb128	13
	.byte		"Ioc_Channel"
	.byte		0
	.4byte		.L11844
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L674:
	.sleb128	13
	.byte		"Ioc_Data"
	.byte		0
	.4byte		.L11848
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11843:
.L11835:
	.sleb128	12
	.4byte		.L11712
	.uleb128	60
	.uleb128	1
	.4byte		.L11854-.L2
	.uleb128	8
.L671:
	.sleb128	13
	.byte		"SpinlockId"
	.byte		0
	.4byte		.L11855
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L672:
	.sleb128	13
	.byte		"Success"
	.byte		0
	.4byte		.L11856
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11854:
.L11833:
	.sleb128	12
	.4byte		.L11712
	.uleb128	60
	.uleb128	1
	.4byte		.L11859-.L2
	.uleb128	2
.L670:
	.sleb128	13
	.byte		"SpinlockId"
	.byte		0
	.4byte		.L11855
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11859:
.L11831:
	.sleb128	12
	.4byte		.L11712
	.uleb128	60
	.uleb128	1
	.4byte		.L11860-.L2
	.uleb128	2
.L669:
	.sleb128	13
	.byte		"SpinlockId"
	.byte		0
	.4byte		.L11855
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11860:
.L11829:
	.sleb128	12
	.4byte		.L11712
	.uleb128	60
	.uleb128	1
	.4byte		.L11861-.L2
	.uleb128	20
.L664:
	.sleb128	13
	.byte		"ProcId"
	.byte		0
	.4byte		.L11513
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L665:
	.sleb128	13
	.byte		"MaxUsage"
	.byte		0
	.4byte		.L11483
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L666:
	.sleb128	13
	.byte		"MaxUsageRef"
	.byte		0
	.4byte		.L11862
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L667:
	.sleb128	13
	.byte		"CurrentUsage"
	.byte		0
	.4byte		.L11483
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L668:
	.sleb128	13
	.byte		"CurrentUsageRef"
	.byte		0
	.4byte		.L11862
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11861:
.L11827:
	.sleb128	12
	.4byte		.L11712
	.uleb128	60
	.uleb128	1
	.4byte		.L11863-.L2
	.uleb128	12
.L661:
	.sleb128	13
	.byte		"FunctionIndex"
	.byte		0
	.4byte		.L11864
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L662:
	.sleb128	13
	.byte		"ParamRef"
	.byte		0
	.4byte		.L11865
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L663:
	.sleb128	13
	.byte		"ReturnValue"
	.byte		0
	.4byte		.L11866
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11863:
.L11825:
	.sleb128	12
	.4byte		.L11712
	.uleb128	60
	.uleb128	1
	.4byte		.L11868-.L2
	.uleb128	12
.L658:
	.sleb128	13
	.byte		"AppID"
	.byte		0
	.4byte		.L11486
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L659:
	.sleb128	13
	.byte		"ObjectType"
	.byte		0
	.4byte		.L11869
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L660:
	.sleb128	13
	.byte		"Object"
	.byte		0
	.4byte		.L11515
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11868:
.L11823:
	.sleb128	12
	.4byte		.L11712
	.uleb128	60
	.uleb128	1
	.4byte		.L11871-.L2
	.uleb128	12
.L655:
	.sleb128	13
	.byte		"AppID"
	.byte		0
	.4byte		.L11486
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L656:
	.sleb128	13
	.byte		"ObjectType"
	.byte		0
	.4byte		.L11869
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L657:
	.sleb128	13
	.byte		"Object"
	.byte		0
	.4byte		.L11515
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11871:
.L11789:
	.sleb128	12
	.4byte		.L11712
	.uleb128	60
	.uleb128	1
	.4byte		.L11872-.L2
	.uleb128	4
.L654:
	.sleb128	13
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11534
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11872:
.L11787:
	.sleb128	12
	.4byte		.L11712
	.uleb128	60
	.uleb128	1
	.4byte		.L11873-.L2
	.uleb128	12
.L651:
	.sleb128	13
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11534
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L652:
	.sleb128	13
	.byte		"Start"
	.byte		0
	.4byte		.L11874
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L653:
	.sleb128	13
	.byte		"Cycle"
	.byte		0
	.4byte		.L11874
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11873:
.L11785:
	.sleb128	12
	.4byte		.L11712
	.uleb128	60
	.uleb128	1
	.4byte		.L11875-.L2
	.uleb128	12
.L648:
	.sleb128	13
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11534
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L649:
	.sleb128	13
	.byte		"Increment"
	.byte		0
	.4byte		.L11874
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L650:
	.sleb128	13
	.byte		"Cycle"
	.byte		0
	.4byte		.L11874
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11875:
.L11783:
	.sleb128	12
	.4byte		.L11712
	.uleb128	60
	.uleb128	1
	.4byte		.L11876-.L2
	.uleb128	8
.L646:
	.sleb128	13
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11534
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L647:
	.sleb128	13
	.byte		"TickRef"
	.byte		0
	.4byte		.L11877
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11876:
.L11781:
	.sleb128	12
	.4byte		.L11712
	.uleb128	60
	.uleb128	1
	.4byte		.L11879-.L2
	.uleb128	8
.L644:
	.sleb128	13
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11534
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L645:
	.sleb128	13
	.byte		"AlarmBaseTypeRef"
	.byte		0
	.4byte		.L11880
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11879:
.L11821:
	.sleb128	12
	.4byte		.L11712
	.uleb128	60
	.uleb128	1
	.4byte		.L11884-.L2
	.uleb128	4
.L643:
	.sleb128	13
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11541
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11884:
.L11819:
	.sleb128	12
	.4byte		.L11712
	.uleb128	60
	.uleb128	1
	.4byte		.L11885-.L2
	.uleb128	8
.L641:
	.sleb128	13
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11541
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L642:
	.sleb128	13
	.byte		"SyncValue"
	.byte		0
	.4byte		.L11874
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11885:
.L11817:
	.sleb128	12
	.4byte		.L11712
	.uleb128	60
	.uleb128	1
	.4byte		.L11886-.L2
	.uleb128	4
.L640:
	.sleb128	13
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11541
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11886:
.L11815:
	.sleb128	12
	.4byte		.L11712
	.uleb128	60
	.uleb128	1
	.4byte		.L11887-.L2
	.uleb128	8
.L638:
	.sleb128	13
	.byte		"SchTblIdFrom"
	.byte		0
	.4byte		.L11541
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L639:
	.sleb128	13
	.byte		"SchTblIdTo"
	.byte		0
	.4byte		.L11541
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11887:
.L11813:
	.sleb128	12
	.4byte		.L11712
	.uleb128	60
	.uleb128	1
	.4byte		.L11888-.L2
	.uleb128	8
.L636:
	.sleb128	13
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11541
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L637:
	.sleb128	13
	.byte		"SchTblStatus"
	.byte		0
	.4byte		.L11889
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11888:
.L11811:
	.sleb128	12
	.4byte		.L11712
	.uleb128	60
	.uleb128	1
	.4byte		.L11893-.L2
	.uleb128	4
.L635:
	.sleb128	13
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11541
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11893:
.L11809:
	.sleb128	12
	.4byte		.L11712
	.uleb128	60
	.uleb128	1
	.4byte		.L11894-.L2
	.uleb128	8
.L633:
	.sleb128	13
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11541
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L634:
	.sleb128	13
	.byte		"Offset"
	.byte		0
	.4byte		.L11874
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11894:
.L11807:
	.sleb128	12
	.4byte		.L11712
	.uleb128	60
	.uleb128	1
	.4byte		.L11895-.L2
	.uleb128	8
.L631:
	.sleb128	13
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11541
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L632:
	.sleb128	13
	.byte		"Start"
	.byte		0
	.4byte		.L11874
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11895:
.L11805:
	.sleb128	12
	.4byte		.L11712
	.uleb128	60
	.uleb128	1
	.4byte		.L11896-.L2
	.uleb128	12
.L628:
	.sleb128	13
	.byte		"CounterId"
	.byte		0
	.4byte		.L11548
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L629:
	.sleb128	13
	.byte		"ValuePtr"
	.byte		0
	.4byte		.L11877
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L630:
	.sleb128	13
	.byte		"ElapsedValuePtr"
	.byte		0
	.4byte		.L11877
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11896:
.L11803:
	.sleb128	12
	.4byte		.L11712
	.uleb128	60
	.uleb128	1
	.4byte		.L11897-.L2
	.uleb128	12
.L625:
	.sleb128	13
	.byte		"CounterId"
	.byte		0
	.4byte		.L11548
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L626:
	.sleb128	13
	.byte		"ValuePtr"
	.byte		0
	.4byte		.L11877
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L627:
	.sleb128	13
	.byte		"LightServiceFunction"
	.byte		0
	.4byte		.L11898
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11897:
.L11801:
	.sleb128	12
	.4byte		.L11712
	.uleb128	60
	.uleb128	1
	.4byte		.L11902-.L2
	.uleb128	4
.L624:
	.sleb128	13
	.byte		"CounterId"
	.byte		0
	.4byte		.L11548
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11902:
.L11797:
	.sleb128	12
	.4byte		.L11712
	.uleb128	60
	.uleb128	1
	.4byte		.L11903-.L2
	.uleb128	4
.L623:
	.sleb128	13
	.byte		"ISRId"
	.byte		0
	.4byte		.L11733
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11903:
.L11793:
	.sleb128	12
	.4byte		.L11712
	.uleb128	60
	.uleb128	1
	.4byte		.L11904-.L2
	.uleb128	2
.L621:
	.sleb128	13
	.byte		"Application"
	.byte		0
	.4byte		.L11486
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L622:
	.sleb128	13
	.byte		"RestartOption"
	.byte		0
	.4byte		.L11488
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
	.sleb128	0
.L11904:
.L11795:
	.sleb128	12
	.4byte		.L11712
	.uleb128	60
	.uleb128	1
	.4byte		.L11905-.L2
	.uleb128	1
.L620:
	.sleb128	13
	.byte		"Application"
	.byte		0
	.4byte		.L11486
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11905:
.L11791:
	.sleb128	12
	.4byte		.L11712
	.uleb128	60
	.uleb128	1
	.4byte		.L11906-.L2
	.uleb128	8
.L618:
	.sleb128	13
	.byte		"Application"
	.byte		0
	.4byte		.L11486
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L619:
	.sleb128	13
	.byte		"AppStateRef"
	.byte		0
	.4byte		.L11907
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11906:
.L11775:
	.sleb128	12
	.4byte		.L11712
	.uleb128	60
	.uleb128	1
	.4byte		.L11910-.L2
	.uleb128	8
.L617:
	.sleb128	13
	.byte		"EventMask"
	.byte		0
	.4byte		.L11911
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11910:
.L11773:
	.sleb128	12
	.4byte		.L11712
	.uleb128	60
	.uleb128	1
	.4byte		.L11914-.L2
	.uleb128	24
.L614:
	.sleb128	13
	.byte		"TaskId"
	.byte		0
	.4byte		.L11513
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L615:
	.sleb128	13
	.byte		"EventMask"
	.byte		0
	.4byte		.L11911
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L616:
	.sleb128	13
	.byte		"EventMaskRef"
	.byte		0
	.4byte		.L11915
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11914:
.L11771:
	.sleb128	12
	.4byte		.L11712
	.uleb128	60
	.uleb128	1
	.4byte		.L11917-.L2
	.uleb128	8
.L613:
	.sleb128	13
	.byte		"EventMask"
	.byte		0
	.4byte		.L11911
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11917:
.L11769:
	.sleb128	12
	.4byte		.L11712
	.uleb128	60
	.uleb128	1
	.4byte		.L11918-.L2
	.uleb128	16
.L611:
	.sleb128	13
	.byte		"TaskId"
	.byte		0
	.4byte		.L11513
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L612:
	.sleb128	13
	.byte		"EventMask"
	.byte		0
	.4byte		.L11911
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11918:
.L11767:
	.sleb128	12
	.4byte		.L11712
	.uleb128	60
	.uleb128	1
	.4byte		.L11919-.L2
	.uleb128	8
.L609:
	.sleb128	13
	.byte		"TaskId"
	.byte		0
	.4byte		.L11513
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L610:
	.sleb128	13
	.byte		"TaskStateRef"
	.byte		0
	.4byte		.L11920
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11919:
.L11765:
	.sleb128	12
	.4byte		.L11712
	.uleb128	60
	.uleb128	1
	.4byte		.L11924-.L2
	.uleb128	4
.L608:
	.sleb128	13
	.byte		"TaskIdRef"
	.byte		0
	.4byte		.L11925
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11924:
.L11763:
	.sleb128	12
	.4byte		.L11712
	.uleb128	60
	.uleb128	1
	.4byte		.L11927-.L2
	.uleb128	4
.L607:
	.sleb128	13
	.byte		"TaskId"
	.byte		0
	.4byte		.L11513
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11927:
.L11761:
	.sleb128	12
	.4byte		.L11712
	.uleb128	60
	.uleb128	1
	.4byte		.L11928-.L2
	.uleb128	4
.L606:
	.sleb128	13
	.byte		"TaskId"
	.byte		0
	.4byte		.L11513
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11928:
.L11779:
	.sleb128	12
	.4byte		.L11712
	.uleb128	60
	.uleb128	1
	.4byte		.L11929-.L2
	.uleb128	4
.L605:
	.sleb128	13
	.byte		"ResourceId"
	.byte		0
	.4byte		.L11930
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11929:
.L11777:
	.sleb128	12
	.4byte		.L11712
	.uleb128	60
	.uleb128	1
	.4byte		.L11931-.L2
	.uleb128	4
.L604:
	.sleb128	13
	.byte		"ResourceId"
	.byte		0
	.4byte		.L11930
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11931:
.L11799:
	.sleb128	12
	.4byte		.L11712
	.uleb128	60
	.uleb128	1
	.4byte		.L11932-.L2
	.uleb128	4
.L603:
	.sleb128	13
	.byte		"AppMode"
	.byte		0
	.4byte		.L11933
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11932:
.L11759:
	.sleb128	12
	.4byte		.L11712
	.uleb128	60
	.uleb128	1
	.4byte		.L11934-.L2
	.uleb128	2
.L602:
	.sleb128	13
	.byte		"CoreID"
	.byte		0
	.4byte		.L11465
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11934:
.L11753:
	.sleb128	12
	.4byte		.L11712
	.uleb128	60
	.uleb128	1
	.4byte		.L11935-.L2
	.uleb128	2
.L601:
	.sleb128	13
	.byte		"NumberOfActivatedCores"
	.byte		0
	.4byte		.L11465
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11935:
.L11751:
	.sleb128	12
	.4byte		.L11712
	.uleb128	60
	.uleb128	1
	.4byte		.L11936-.L2
	.uleb128	1
.L600:
	.sleb128	13
	.byte		"Error"
	.byte		0
	.4byte		.L11482
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11936:
.L11749:
	.sleb128	12
	.4byte		.L11712
	.uleb128	60
	.uleb128	1
	.4byte		.L11937-.L2
	.uleb128	8
.L598:
	.sleb128	13
	.byte		"ShutdownType"
	.byte		0
	.4byte		.L11938
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L599:
	.sleb128	13
	.byte		"Error"
	.byte		0
	.4byte		.L11482
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11937:
.L11747:
	.sleb128	12
	.4byte		.L11712
	.uleb128	60
	.uleb128	1
	.4byte		.L11940-.L2
	.uleb128	1
.L597:
	.sleb128	13
	.byte		"Error"
	.byte		0
	.4byte		.L11482
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11940:
.L11757:
	.sleb128	12
	.4byte		.L11712
	.uleb128	60
	.uleb128	1
	.4byte		.L11941-.L2
	.uleb128	8
.L595:
	.sleb128	13
	.byte		"CoreID"
	.byte		0
	.4byte		.L11465
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L596:
	.sleb128	13
	.byte		"StatusRef"
	.byte		0
	.4byte		.L11570
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11941:
.L11755:
	.sleb128	12
	.4byte		.L11712
	.uleb128	60
	.uleb128	1
	.4byte		.L11942-.L2
	.uleb128	8
.L593:
	.sleb128	13
	.byte		"CoreID"
	.byte		0
	.4byte		.L11465
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L594:
	.sleb128	13
	.byte		"StatusRef"
	.byte		0
	.4byte		.L11570
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11942:
.L11745:
	.sleb128	12
	.4byte		.L11712
	.uleb128	60
	.uleb128	1
	.4byte		.L11943-.L2
	.uleb128	4
.L592:
	.sleb128	13
	.byte		"AppMode"
	.byte		0
	.4byte		.L11933
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11943:
.L11847:
	.sleb128	12
	.4byte		.L11944
	.uleb128	33
	.uleb128	14
	.4byte		.L11945-.L2
	.uleb128	24
.L585:
	.sleb128	13
	.byte		"Os_IOC_ChannelDyn"
	.byte		0
	.4byte		.L11946
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L586:
	.sleb128	13
	.byte		"Os_IOC_ChannelLength"
	.byte		0
	.4byte		.L11950
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L587:
	.sleb128	13
	.byte		"Os_IOC_ChannelBuffer"
	.byte		0
	.4byte		.L11951
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L588:
	.sleb128	13
	.byte		"Os_IOC_ChannelElementSize"
	.byte		0
	.4byte		.L11952
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L589:
	.sleb128	13
	.byte		"Os_IOC_DataCount"
	.byte		0
	.4byte		.L11953
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L590:
	.sleb128	13
	.byte		"Os_IOC_DataDescriptor"
	.byte		0
	.4byte		.L11955
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L591:
	.sleb128	13
	.byte		"Os_IOC_LockResourceAddress"
	.byte		0
	.4byte		.L11960
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L11945:
.L11959:
	.sleb128	12
	.4byte		.L11944
	.uleb128	33
	.uleb128	14
	.4byte		.L11963-.L2
	.uleb128	4
.L581:
	.sleb128	13
	.byte		"Os_IOC_DataLength"
	.byte		0
	.4byte		.L11964
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L582:
	.sleb128	13
	.byte		"Os_IOC_DataOffset"
	.byte		0
	.4byte		.L11966
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L11963:
.L11949:
	.sleb128	12
	.4byte		.L11944
	.uleb128	33
	.uleb128	14
	.4byte		.L11968-.L2
	.uleb128	6
.L578:
	.sleb128	13
	.byte		"Os_IOC_ChannelHead"
	.byte		0
	.4byte		.L11950
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L579:
	.sleb128	13
	.byte		"Os_IOC_ChannelMessageCount"
	.byte		0
	.4byte		.L11950
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L580:
	.sleb128	13
	.byte		"Os_IOC_Status"
	.byte		0
	.4byte		.L11482
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11968:
.L11704:
	.sleb128	12
	.4byte		.L11969
	.uleb128	34
	.uleb128	14
	.4byte		.L11970-.L2
	.uleb128	2
.L529:
	.sleb128	13
	.byte		"Os_HookID"
	.byte		0
	.4byte		.L11971
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11970:
.L11527:
	.sleb128	14
	.4byte		.L11651
	.uleb128	80
	.uleb128	13
	.4byte		.L11972-.L2
	.byte		"Os_ProcStatType_s"
	.byte		0
	.uleb128	80
.L511:
	.sleb128	13
	.byte		"Os_ProcId"
	.byte		0
	.4byte		.L11973
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L512:
	.sleb128	13
	.byte		"Os_ProcCoreID"
	.byte		0
	.4byte		.L11464
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L513:
	.sleb128	13
	.byte		"Os_ProcDyn"
	.byte		0
	.4byte		.L11974
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L514:
	.sleb128	13
	.byte		"Os_ProcStack"
	.byte		0
	.4byte		.L11978
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L515:
	.sleb128	13
	.byte		"Os_ProcKind"
	.byte		0
	.4byte		.L11983
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L516:
	.sleb128	13
	.byte		"Os_ProcEventRights"
	.byte		0
	.4byte		.L11986
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L517:
	.sleb128	13
	.byte		"Os_ProcPriority"
	.byte		0
	.4byte		.L11987
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L518:
	.sleb128	13
	.byte		"Os_ProcRunPriority"
	.byte		0
	.4byte		.L11987
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L519:
	.sleb128	13
	.byte		"Os_ProcMaxActivations"
	.byte		0
	.4byte		.L11988
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L520:
	.sleb128	13
	.byte		"Os_ProcContext"
	.byte		0
	.4byte		.L11990
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L521:
	.sleb128	13
	.byte		"Os_ProcOwnerApp"
	.byte		0
	.4byte		.L11502
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L522:
	.sleb128	13
	.byte		"Os_ProcAppAccess"
	.byte		0
	.4byte		.L11991
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L523:
	.sleb128	13
	.byte		"Os_ProcEntryPoint"
	.byte		0
	.4byte		.L11995
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L524:
	.sleb128	13
	.byte		"Os_ProcAutoStart"
	.byte		0
	.4byte		.L11991
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
.L525:
	.sleb128	13
	.byte		"Os_ProcResourceCount"
	.byte		0
	.4byte		.L12000
	.sleb128	2
	.byte		0x23
	.uleb128	64
	.byte		0x1
.L526:
	.sleb128	13
	.byte		"Os_ProcResourceStack"
	.byte		0
	.4byte		.L12001
	.sleb128	2
	.byte		0x23
	.uleb128	68
	.byte		0x1
.L527:
	.sleb128	13
	.byte		"Os_ProcQueueElements"
	.byte		0
	.4byte		.L12007
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.byte		0x1
.L528:
	.sleb128	13
	.byte		"Os_ProcIsrPlatformConfig"
	.byte		0
	.4byte		.L12008
	.sleb128	2
	.byte		0x23
	.uleb128	76
	.byte		0x1
	.sleb128	0
.L11972:
.L11982:
	.sleb128	14
	.4byte		.L11651
	.uleb128	80
	.uleb128	13
	.4byte		.L12009-.L2
	.byte		"Os_ProcStackStruct"
	.byte		0
	.uleb128	8
.L509:
	.sleb128	13
	.byte		"Os_ProcStackSize"
	.byte		0
	.4byte		.L12010
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L510:
	.sleb128	13
	.byte		"Os_ProcStackBase"
	.byte		0
	.4byte		.L11990
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12009:
.L11977:
	.sleb128	12
	.4byte		.L11651
	.uleb128	80
	.uleb128	13
	.4byte		.L12012-.L2
	.uleb128	56
.L496:
	.sleb128	13
	.byte		"Os_ProcState"
	.byte		0
	.4byte		.L11922
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L497:
	.sleb128	13
	.byte		"Os_ProcContextState"
	.byte		0
	.4byte		.L12013
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L498:
	.sleb128	13
	.byte		"Os_ProcEvents"
	.byte		0
	.4byte		.L11911
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L499:
	.sleb128	13
	.byte		"Os_ProcEventWaitingFor"
	.byte		0
	.4byte		.L11911
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L500:
	.sleb128	13
	.byte		"Os_ProcActivations"
	.byte		0
	.4byte		.L11989
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L501:
	.sleb128	13
	.byte		"Os_ProcResourcesAllocated"
	.byte		0
	.4byte		.L11930
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L502:
	.sleb128	13
	.byte		"Os_ProcEnabled"
	.byte		0
	.4byte		.L11483
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L503:
	.sleb128	13
	.byte		"Os_ProcCurrentApp"
	.byte		0
	.4byte		.L11503
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L504:
	.sleb128	13
	.byte		"Os_ProcSpinlock"
	.byte		0
	.4byte		.L12015
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L505:
	.sleb128	13
	.byte		"Os_ProcFreeQueueElements"
	.byte		0
	.4byte		.L11714
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L506:
	.sleb128	13
	.byte		"Os_ProcCurrentPriority"
	.byte		0
	.4byte		.L11709
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L507:
	.sleb128	13
	.byte		"Os_ProcTFCallCount"
	.byte		0
	.4byte		.L11483
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L508:
	.sleb128	13
	.byte		"Os_FatalErrorOccured"
	.byte		0
	.4byte		.L11482
	.sleb128	2
	.byte		0x23
	.uleb128	53
	.byte		0x1
	.sleb128	0
.L12012:
.L12017:
	.sleb128	14
	.4byte		.L11641
	.uleb128	52
	.uleb128	1
	.4byte		.L12018-.L2
	.byte		"Os_SpinlockStatType_s"
	.byte		0
	.uleb128	16
.L448:
	.sleb128	13
	.byte		"Os_SpinlockId"
	.byte		0
	.4byte		.L12019
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L449:
	.sleb128	13
	.byte		"Os_SpinlockChainId"
	.byte		0
	.4byte		.L12019
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L450:
	.sleb128	13
	.byte		"Os_SpinlockDyn"
	.byte		0
	.4byte		.L12020
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L451:
	.sleb128	13
	.byte		"Os_SpinlockAccess"
	.byte		0
	.4byte		.L11991
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L452:
	.sleb128	13
	.byte		"Os_SpinlockLockResourceAddress"
	.byte		0
	.4byte		.L11960
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L12018:
.L12023:
	.sleb128	12
	.4byte		.L11641
	.uleb128	52
	.uleb128	1
	.4byte		.L12024-.L2
	.uleb128	12
.L445:
	.sleb128	13
	.byte		"Os_SpinlockLockerProc"
	.byte		0
	.4byte		.L11525
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L446:
	.sleb128	13
	.byte		"Os_SpinlockSuperseded"
	.byte		0
	.4byte		.L12015
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L447:
	.sleb128	13
	.byte		"Os_ResourceDependency"
	.byte		0
	.4byte		.L12003
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L12024:
.L11506:
	.sleb128	14
	.4byte		.L11641
	.uleb128	52
	.uleb128	1
	.4byte		.L12025-.L2
	.byte		"Os_ApplicationStatType_s"
	.byte		0
	.uleb128	48
.L433:
	.sleb128	13
	.byte		"Os_AppDyn"
	.byte		0
	.4byte		.L12026
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L434:
	.sleb128	13
	.byte		"Os_AppId"
	.byte		0
	.4byte		.L11614
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L435:
	.sleb128	13
	.byte		"Os_AppRestartTask"
	.byte		0
	.4byte		.L11973
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L436:
	.sleb128	13
	.byte		"Os_AppKind"
	.byte		0
	.4byte		.L12030
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L437:
	.sleb128	13
	.byte		"Os_AppShutdownHook"
	.byte		0
	.4byte		.L12033
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L438:
	.sleb128	13
	.byte		"Os_AppStartupHook"
	.byte		0
	.4byte		.L12038
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L439:
	.sleb128	13
	.byte		"Os_AppErrorHook"
	.byte		0
	.4byte		.L12043
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L440:
	.sleb128	13
	.byte		"Os_AppProcIDs"
	.byte		0
	.4byte		.L12048
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L441:
	.sleb128	13
	.byte		"Os_AppCounterIDs"
	.byte		0
	.4byte		.L12051
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L442:
	.sleb128	13
	.byte		"Os_AppAlarmIDs"
	.byte		0
	.4byte		.L12054
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L443:
	.sleb128	13
	.byte		"Os_AppSchTblIDs"
	.byte		0
	.4byte		.L12057
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L444:
	.sleb128	13
	.byte		"Os_CoreAssigment"
	.byte		0
	.4byte		.L11464
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
	.sleb128	0
.L12025:
.L12029:
	.sleb128	12
	.4byte		.L11641
	.uleb128	52
	.uleb128	1
	.4byte		.L12060-.L2
	.uleb128	1
.L432:
	.sleb128	13
	.byte		"Os_AppState"
	.byte		0
	.4byte		.L11909
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12060:
.L12006:
	.sleb128	12
	.4byte		.L12061
	.uleb128	32
	.uleb128	1
	.4byte		.L12062-.L2
	.uleb128	12
.L429:
	.sleb128	13
	.byte		"Os_ResourcePriority"
	.byte		0
	.4byte		.L11987
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L430:
	.sleb128	13
	.byte		"Os_ResourceAccessRights"
	.byte		0
	.4byte		.L11992
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L431:
	.sleb128	13
	.byte		"Os_ResourceDyn"
	.byte		0
	.4byte		.L12063
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L12062:
.L12065:
	.sleb128	12
	.4byte		.L12061
	.uleb128	32
	.uleb128	1
	.4byte		.L12066-.L2
	.uleb128	4
.L428:
	.sleb128	13
	.byte		"Os_LockerProc"
	.byte		0
	.4byte		.L11525
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12066:
.L11697:
	.sleb128	12
	.4byte		.L12061
	.uleb128	32
	.uleb128	1
	.4byte		.L12067-.L2
	.uleb128	144
.L423:
	.sleb128	13
	.byte		"Os_Error"
	.byte		0
	.4byte		.L12068
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L424:
	.sleb128	13
	.byte		"Os_ExceptionStatus"
	.byte		0
	.4byte		.L12070
	.sleb128	2
	.byte		0x23
	.uleb128	120
	.byte		0x1
	.sleb128	0
.L12067:
.L11726:
	.sleb128	12
	.4byte		.L12061
	.uleb128	32
	.uleb128	1
	.4byte		.L12072-.L2
	.uleb128	24
.L417:
	.sleb128	13
	.byte		"Os_DisAllInt"
	.byte		0
	.4byte		.L12073
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L418:
	.sleb128	13
	.byte		"Os_EnAllInt"
	.byte		0
	.4byte		.L12073
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L419:
	.sleb128	13
	.byte		"Os_SusAllInt"
	.byte		0
	.4byte		.L12073
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L420:
	.sleb128	13
	.byte		"Os_ResAllInt"
	.byte		0
	.4byte		.L12073
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L421:
	.sleb128	13
	.byte		"Os_SusOsInt"
	.byte		0
	.4byte		.L12073
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L422:
	.sleb128	13
	.byte		"Os_ResOsInt"
	.byte		0
	.4byte		.L12073
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L12072:
.L12071:
	.sleb128	12
	.4byte		.L12061
	.uleb128	32
	.uleb128	1
	.4byte		.L12078-.L2
	.uleb128	20
.L412:
	.sleb128	13
	.byte		"Os_ExceptionType"
	.byte		0
	.4byte		.L12079
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L413:
	.sleb128	13
	.byte		"Os_ExceptionCause"
	.byte		0
	.4byte		.L11516
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L414:
	.sleb128	13
	.byte		"Os_ExceptionAuxiliaryCause"
	.byte		0
	.4byte		.L11516
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L415:
	.sleb128	13
	.byte		"Os_ExceptionExecutionAddress"
	.byte		0
	.4byte		.L11687
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L416:
	.sleb128	13
	.byte		"Os_ExceptionAccessAddress"
	.byte		0
	.4byte		.L11687
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L12078:
.L12069:
	.sleb128	12
	.4byte		.L12081
	.uleb128	174
	.uleb128	1
	.4byte		.L12082-.L2
	.uleb128	120
.L409:
	.sleb128	13
	.byte		"Os_ShutdownError"
	.byte		0
	.4byte		.L12083
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L410:
	.sleb128	13
	.byte		"Os_ParameterError"
	.byte		0
	.4byte		.L12085
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L411:
	.sleb128	13
	.byte		"Os_ServiceError"
	.byte		0
	.4byte		.L12087
	.sleb128	2
	.byte		0x23
	.uleb128	112
	.byte		0x1
	.sleb128	0
.L12082:
.L12088:
	.sleb128	12
	.4byte		.L12081
	.uleb128	174
	.uleb128	1
	.4byte		.L12089-.L2
	.uleb128	8
.L406:
	.sleb128	13
	.byte		"Os_ServiceTrace"
	.byte		0
	.4byte		.L12090
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L407:
	.sleb128	13
	.byte		"Os_LastError"
	.byte		0
	.4byte		.L11482
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L408:
	.sleb128	13
	.byte		"Os_FaultyServiceId"
	.byte		0
	.4byte		.L12091
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12089:
.L12086:
	.sleb128	12
	.4byte		.L12081
	.uleb128	174
	.uleb128	1
	.4byte		.L12093-.L2
	.uleb128	104
.L381:
	.sleb128	13
	.byte		"Os_Err_TaskID"
	.byte		0
	.4byte		.L11513
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L382:
	.sleb128	13
	.byte		"Os_Err_ResID"
	.byte		0
	.4byte		.L11930
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L383:
	.sleb128	13
	.byte		"Os_Err_MaskType_Mask"
	.byte		0
	.4byte		.L11911
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L384:
	.sleb128	13
	.byte		"Os_Err_AlarmID"
	.byte		0
	.4byte		.L11534
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L385:
	.sleb128	13
	.byte		"Os_Err_TicksStart"
	.byte		0
	.4byte		.L11874
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L386:
	.sleb128	13
	.byte		"Os_Err_TicksCycle"
	.byte		0
	.4byte		.L11874
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L387:
	.sleb128	13
	.byte		"Os_Err_FuncIndex"
	.byte		0
	.4byte		.L11864
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L388:
	.sleb128	13
	.byte		"Os_Err_FuncParamRefType"
	.byte		0
	.4byte		.L11865
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L389:
	.sleb128	13
	.byte		"Os_Err_ApplID"
	.byte		0
	.4byte		.L11486
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L390:
	.sleb128	13
	.byte		"Os_Err_ApplStateRefType"
	.byte		0
	.4byte		.L11907
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L391:
	.sleb128	13
	.byte		"Os_Err_ObjType"
	.byte		0
	.4byte		.L11869
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L392:
	.sleb128	13
	.byte		"Os_Err_SchedID"
	.byte		0
	.4byte		.L11541
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L393:
	.sleb128	13
	.byte		"Os_Err_SchedID_Next"
	.byte		0
	.4byte		.L11541
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L394:
	.sleb128	13
	.byte		"Os_Err_CntID"
	.byte		0
	.4byte		.L11548
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L395:
	.sleb128	13
	.byte		"Os_Err_RestartType"
	.byte		0
	.4byte		.L11488
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
.L396:
	.sleb128	13
	.byte		"Os_Err_MaskRefType"
	.byte		0
	.4byte		.L11915
	.sleb128	2
	.byte		0x23
	.uleb128	64
	.byte		0x1
.L397:
	.sleb128	13
	.byte		"Os_Err_TaskStateRef"
	.byte		0
	.4byte		.L11920
	.sleb128	2
	.byte		0x23
	.uleb128	68
	.byte		0x1
.L398:
	.sleb128	13
	.byte		"Os_Err_TickRef_Ticks"
	.byte		0
	.4byte		.L11877
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.byte		0x1
.L399:
	.sleb128	13
	.byte		"Os_Err_AlarmBaseRefType_Info"
	.byte		0
	.4byte		.L11880
	.sleb128	2
	.byte		0x23
	.uleb128	76
	.byte		0x1
.L400:
	.sleb128	13
	.byte		"Os_Err_TaskIDRef"
	.byte		0
	.4byte		.L11925
	.sleb128	2
	.byte		0x23
	.uleb128	80
	.byte		0x1
.L401:
	.sleb128	13
	.byte		"Os_Err_TblStatusRefType"
	.byte		0
	.4byte		.L11889
	.sleb128	2
	.byte		0x23
	.uleb128	84
	.byte		0x1
.L402:
	.sleb128	13
	.byte		"Os_Err_TickRef_ElapsedTicks"
	.byte		0
	.4byte		.L11877
	.sleb128	2
	.byte		0x23
	.uleb128	88
	.byte		0x1
.L403:
	.sleb128	13
	.byte		"Os_Err_ObjObj"
	.byte		0
	.4byte		.L11515
	.sleb128	2
	.byte		0x23
	.uleb128	92
	.byte		0x1
.L404:
	.sleb128	13
	.byte		"Os_Err_SpinlockID"
	.byte		0
	.4byte		.L11855
	.sleb128	2
	.byte		0x23
	.uleb128	96
	.byte		0x1
.L405:
	.sleb128	13
	.byte		"Os_Err_TryToGetSpinlockRef"
	.byte		0
	.4byte		.L12094
	.sleb128	2
	.byte		0x23
	.uleb128	100
	.byte		0x1
	.sleb128	0
.L12093:
.L12084:
	.sleb128	12
	.4byte		.L12081
	.uleb128	174
	.uleb128	1
	.4byte		.L12095-.L2
	.uleb128	8
.L379:
	.sleb128	13
	.byte		"Os_ShutdownErrorCode"
	.byte		0
	.4byte		.L11482
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L380:
	.sleb128	13
	.byte		"Os_ShutdownInternalErrorCode"
	.byte		0
	.4byte		.L12096
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12095:
.L11883:
	.sleb128	12
	.4byte		.L12098
	.uleb128	50
	.uleb128	1
	.4byte		.L12099-.L2
	.uleb128	12
.L376:
	.sleb128	13
	.byte		"maxallowedvalue"
	.byte		0
	.4byte		.L11874
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L377:
	.sleb128	13
	.byte		"ticksperbase"
	.byte		0
	.4byte		.L11874
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L378:
	.sleb128	13
	.byte		"mincycle"
	.byte		0
	.4byte		.L11874
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L12099:
.L11649:
	.sleb128	12
	.4byte		.L12098
	.uleb128	50
	.uleb128	1
	.4byte		.L12100-.L2
	.uleb128	8
.L374:
	.sleb128	13
	.byte		"Os_ObjStartId"
	.byte		0
	.4byte		.L11515
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L375:
	.sleb128	13
	.byte		"Os_ObjEndId"
	.byte		0
	.4byte		.L11515
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12100:
.L11722:
	.sleb128	12
	.4byte		.L12101
	.uleb128	87
	.uleb128	7
	.4byte		.L12102-.L2
	.uleb128	8
.L364:
	.sleb128	13
	.byte		"Os_IsrPltId"
	.byte		0
	.4byte		.L12103
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L365:
	.sleb128	13
	.byte		"Os_IsrPltLevel"
	.byte		0
	.4byte		.L12104
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12102:
	.section	.debug_info,,n
.L11462:
	.sleb128	16
	.4byte		.L12106
	.uleb128	155
	.uleb128	1
	.4byte		.L12107-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	17
	.byte		"Os_Isr_Enabled"
	.byte		0
	.sleb128	0
	.sleb128	17
	.byte		"Os_Isr_Disabled"
	.byte		0
	.sleb128	1
	.sleb128	0
.L12107:
.L11708:
	.sleb128	16
	.4byte		.L11666
	.uleb128	69
	.uleb128	1
	.4byte		.L12108-.L2
	.uleb128	4
	.sleb128	17
	.byte		"Os_Return"
	.byte		0
	.sleb128	0
	.sleb128	17
	.byte		"Os_Load"
	.byte		0
	.sleb128	1
	.sleb128	17
	.byte		"Os_SaveAndLoad"
	.byte		0
	.sleb128	2
	.sleb128	17
	.byte		"Os_SaveAndIdle"
	.byte		0
	.sleb128	3
	.sleb128	17
	.byte		"Os_Idle"
	.byte		0
	.sleb128	4
	.sleb128	0
.L12108:
.L11732:
	.sleb128	16
	.4byte		.L11712
	.uleb128	612
	.uleb128	1
	.4byte		.L12109-.L2
	.uleb128	4
	.sleb128	17
	.byte		"OS_DISPATCH_JUSTSCHEDULE"
	.byte		0
	.sleb128	0
	.sleb128	17
	.byte		"OS_DISPATCH_API"
	.byte		0
	.sleb128	1
	.sleb128	17
	.byte		"OS_DISPATCH_INTERRUPT"
	.byte		0
	.sleb128	2
	.sleb128	17
	.byte		"OS_DISPATCH_APIRE"
	.byte		0
	.sleb128	3
	.sleb128	17
	.byte		"OS_DISPATCH_INTERNAL"
	.byte		0
	.sleb128	4
	.sleb128	17
	.byte		"OS_DISPATCH_INTERNALCROSS"
	.byte		0
	.sleb128	5
	.sleb128	17
	.byte		"OS_DISPATCH_INVALID"
	.byte		0
	.sleb128	6
	.sleb128	0
.L12109:
.L11737:
	.sleb128	16
	.4byte		.L11712
	.uleb128	60
	.uleb128	1
	.4byte		.L12110-.L2
	.uleb128	4
	.sleb128	17
	.byte		"OS_DISPATCH_SINGLE"
	.byte		0
	.sleb128	0
	.sleb128	17
	.byte		"OS_DISPATCH_MULTI"
	.byte		0
	.sleb128	1
	.sleb128	17
	.byte		"OS_DISPATCH_ALL"
	.byte		0
	.sleb128	2
	.sleb128	0
.L12110:
	.section	.debug_info,,n
.L11867:
	.sleb128	18
	.4byte		.L11944
	.uleb128	33
	.uleb128	14
	.4byte		.L12111-.L2
	.byte		"TrustedFunctionReturnValueType_e"
	.byte		0
	.uleb128	4
	.sleb128	17
	.byte		"TRUSTEDFUNCTION_RETURN_VALUE_NONE"
	.byte		0
	.sleb128	0
	.sleb128	17
	.byte		"TRUSTEDFUNCTION_RETURN_VALUE_SCHEDULE"
	.byte		0
	.sleb128	1
	.sleb128	0
.L12111:
.L12014:
	.sleb128	16
	.4byte		.L11651
	.uleb128	80
	.uleb128	13
	.4byte		.L12112-.L2
	.uleb128	4
	.sleb128	17
	.byte		"Os_ProcContextInvalid"
	.byte		0
	.sleb128	0
	.sleb128	17
	.byte		"Os_ProcContextActive"
	.byte		0
	.sleb128	1
	.sleb128	17
	.byte		"Os_ProcContextPrepared"
	.byte		0
	.sleb128	2
	.sleb128	0
.L12112:
.L11985:
	.sleb128	16
	.4byte		.L11651
	.uleb128	61
	.uleb128	1
	.4byte		.L12113-.L2
	.uleb128	4
	.sleb128	17
	.byte		"Os_Proc_Task"
	.byte		0
	.sleb128	0
	.sleb128	17
	.byte		"Os_Proc_ISR_CAT2"
	.byte		0
	.sleb128	1
	.sleb128	0
.L12113:
.L12032:
	.sleb128	16
	.4byte		.L11641
	.uleb128	52
	.uleb128	1
	.4byte		.L12114-.L2
	.uleb128	4
	.sleb128	17
	.byte		"OS_TRUSTED"
	.byte		0
	.sleb128	0
	.sleb128	17
	.byte		"OS_NONTRUSTED"
	.byte		0
	.sleb128	1
	.sleb128	0
.L12114:
.L12080:
	.sleb128	16
	.4byte		.L12061
	.uleb128	32
	.uleb128	1
	.4byte		.L12115-.L2
	.uleb128	4
	.sleb128	17
	.byte		"OS_EXCEPTION_NONE"
	.byte		0
	.sleb128	0
	.sleb128	17
	.byte		"OS_EXCEPTION_CRITICAL_INPUT"
	.byte		0
	.sleb128	1
	.sleb128	17
	.byte		"OS_EXCEPTION_MACHINE_CHECK"
	.byte		0
	.sleb128	2
	.sleb128	17
	.byte		"OS_EXCEPTION_DATA_STORAGE"
	.byte		0
	.sleb128	3
	.sleb128	17
	.byte		"OS_EXCEPTION_INSTRUCTION_STORAGE"
	.byte		0
	.sleb128	4
	.sleb128	17
	.byte		"OS_EXCEPTION_EXTERNAL_INPUT"
	.byte		0
	.sleb128	5
	.sleb128	17
	.byte		"OS_EXCEPTION_ALIGNMENT"
	.byte		0
	.sleb128	6
	.sleb128	17
	.byte		"OS_EXCEPTION_PROGRAM"
	.byte		0
	.sleb128	7
	.sleb128	17
	.byte		"OS_EXCEPTION_FLOATINGPOINT_UNAVAILABLE"
	.byte		0
	.sleb128	8
	.sleb128	17
	.byte		"OS_EXCEPTION_AUX_PROC_UNAVAILABLE"
	.byte		0
	.sleb128	9
	.sleb128	17
	.byte		"OS_EXCEPTION_DECREMENTER"
	.byte		0
	.sleb128	10
	.sleb128	17
	.byte		"OS_EXCEPTION_FIXED_INTERVAL_TIMER"
	.byte		0
	.sleb128	11
	.sleb128	17
	.byte		"OS_EXCEPTION_WATCHDOG"
	.byte		0
	.sleb128	12
	.sleb128	17
	.byte		"OS_EXCEPTION_DATA_TLB_ERROR"
	.byte		0
	.sleb128	13
	.sleb128	17
	.byte		"OS_EXCEPTION_INSTRUCTION_TLB_ERROR"
	.byte		0
	.sleb128	14
	.sleb128	17
	.byte		"OS_EXCEPTION_DEBUG"
	.byte		0
	.sleb128	15
	.sleb128	17
	.byte		"OS_EXCEPTION_SPE_UNAVAILABLE"
	.byte		0
	.sleb128	16
	.sleb128	17
	.byte		"OS_EXCEPTION_SPE_DATA"
	.byte		0
	.sleb128	17
	.sleb128	17
	.byte		"OS_EXCEPTION_SPE_ROUND"
	.byte		0
	.sleb128	18
	.sleb128	17
	.byte		"OS_EXCEPTION_COUNT"
	.byte		0
	.sleb128	19
	.sleb128	0
.L12115:
.L12097:
	.sleb128	16
	.4byte		.L12081
	.uleb128	174
	.uleb128	1
	.4byte		.L12116-.L2
	.uleb128	4
	.sleb128	17
	.byte		"E_OS_SYS_OK"
	.byte		0
	.sleb128	0
	.sleb128	17
	.byte		"E_OS_SYS_UNKNOWN_API"
	.byte		0
	.sleb128	1
	.sleb128	17
	.byte		"E_OS_SYS_INVALID_STARTSTATE"
	.byte		0
	.sleb128	2
	.sleb128	17
	.byte		"E_OS_SYS_INVALID_MASTERAPPMODE"
	.byte		0
	.sleb128	3
	.sleb128	17
	.byte		"E_OS_SYS_INVALID_SLAVEAPPMODE"
	.byte		0
	.sleb128	4
	.sleb128	17
	.byte		"E_OS_SYS_COUNTERACTION_OVERFLOW"
	.byte		0
	.sleb128	5
	.sleb128	17
	.byte		"E_OS_SYS_COUNTEREP_OVERFLOW"
	.byte		0
	.sleb128	6
	.sleb128	17
	.byte		"E_OS_SYS_INVALID_COUNTEROWNER"
	.byte		0
	.sleb128	7
	.sleb128	17
	.byte		"E_OS_SYS_WRONG_APIMAGIC"
	.byte		0
	.sleb128	8
	.sleb128	17
	.byte		"E_OS_SYS_WRONG_DISPATCHKIND1"
	.byte		0
	.sleb128	9
	.sleb128	17
	.byte		"E_OS_SYS_WRONG_DISPATCHKIND2"
	.byte		0
	.sleb128	10
	.sleb128	17
	.byte		"E_OS_SYS_WRONG_DISPATCHKIND3"
	.byte		0
	.sleb128	11
	.sleb128	17
	.byte		"E_OS_SYS_WRONG_DISPATCHKIND4"
	.byte		0
	.sleb128	12
	.sleb128	17
	.byte		"E_OS_SYS_WRONG_DISPATCHKIND5"
	.byte		0
	.sleb128	13
	.sleb128	17
	.byte		"E_OS_SYS_DISPATCHER_OVERFLOW"
	.byte		0
	.sleb128	14
	.sleb128	17
	.byte		"E_OS_SYS_INVALID_ALARMACTION"
	.byte		0
	.sleb128	15
	.sleb128	17
	.byte		"E_OS_SYS_INVALID_SCHTBLSTARTKIND"
	.byte		0
	.sleb128	16
	.sleb128	17
	.byte		"E_OS_SYS_INVALID_ISRPROCKIND"
	.byte		0
	.sleb128	17
	.sleb128	17
	.byte		"E_OS_SYS_WRONG_TPSTATE1"
	.byte		0
	.sleb128	18
	.sleb128	17
	.byte		"E_OS_SYS_WRONG_TPSTATE2"
	.byte		0
	.sleb128	19
	.sleb128	17
	.byte		"E_OS_SYS_WRONG_TPSTATE3"
	.byte		0
	.sleb128	20
	.sleb128	17
	.byte		"E_OS_SYS_WRONG_TPSTATE4"
	.byte		0
	.sleb128	21
	.sleb128	17
	.byte		"E_OS_SYS_WRONG_TPSTATE5"
	.byte		0
	.sleb128	22
	.sleb128	17
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION0"
	.byte		0
	.sleb128	23
	.sleb128	17
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION1"
	.byte		0
	.sleb128	24
	.sleb128	17
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION2"
	.byte		0
	.sleb128	25
	.sleb128	17
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION3"
	.byte		0
	.sleb128	26
	.sleb128	17
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION4"
	.byte		0
	.sleb128	27
	.sleb128	17
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION5"
	.byte		0
	.sleb128	28
	.sleb128	17
	.byte		"E_OS_SYS_INVALID_QUEUEHEAD"
	.byte		0
	.sleb128	29
	.sleb128	17
	.byte		"E_OS_SYS_INVALID_QUEUEINDEX"
	.byte		0
	.sleb128	30
	.sleb128	17
	.byte		"E_OS_SYS_INVALID_PROCSTATE"
	.byte		0
	.sleb128	31
	.sleb128	17
	.byte		"E_OS_SYS_LINKTIMEGUARD_ERROR"
	.byte		0
	.sleb128	32
	.sleb128	17
	.byte		"E_OS_SYS_WRONG_CORESTATE"
	.byte		0
	.sleb128	33
	.sleb128	17
	.byte		"E_OS_SYS_COUNTERID"
	.byte		0
	.sleb128	34
	.sleb128	17
	.byte		"E_OS_SYS_COUNTER_CANCELEDNOTFOUND"
	.byte		0
	.sleb128	35
	.sleb128	17
	.byte		"E_OS_SYS_COUNTER_ACTIONCHAINISBROKEN"
	.byte		0
	.sleb128	36
	.sleb128	17
	.byte		"E_OS_SYS_COUNTER_ACTIONCHAINISBROKEN2"
	.byte		0
	.sleb128	37
	.sleb128	17
	.byte		"E_OS_SYS_COUNTER_EPCHAINISBROKEN"
	.byte		0
	.sleb128	38
	.sleb128	17
	.byte		"E_OS_SYS_ALARMID"
	.byte		0
	.sleb128	39
	.sleb128	17
	.byte		"E_OS_SYS_RESUMEPROC_MAXACTIVATION"
	.byte		0
	.sleb128	40
	.sleb128	17
	.byte		"E_OS_SYS_QUEUEELEMENT_OVERFLOW"
	.byte		0
	.sleb128	41
	.sleb128	17
	.byte		"E_OS_SYS_SCHEDULER_ERROR"
	.byte		0
	.sleb128	42
	.sleb128	17
	.byte		"E_OS_SYS_EVENTSTAT"
	.byte		0
	.sleb128	43
	.sleb128	17
	.byte		"E_OS_SYS_TASKID"
	.byte		0
	.sleb128	44
	.sleb128	17
	.byte		"E_OS_SYS_TASKMISSINGEND_PROCKIND"
	.byte		0
	.sleb128	45
	.sleb128	17
	.byte		"E_OS_SYS_TASKMISSINGEND_COREID"
	.byte		0
	.sleb128	46
	.sleb128	17
	.byte		"E_OS_SYS_INVALID_TIMINGPROTECTIONSTATE"
	.byte		0
	.sleb128	47
	.sleb128	17
	.byte		"E_OS_SYS_INVALID_EXCEPTION"
	.byte		0
	.sleb128	48
	.sleb128	17
	.byte		"E_OS_SYS_INVALID_PLATFORM_TIMER"
	.byte		0
	.sleb128	49
	.sleb128	17
	.byte		"E_OS_SYS_KERNELSTACK_OVERFLOW"
	.byte		0
	.sleb128	50
	.sleb128	17
	.byte		"E_OS_SYS_INVALID_SECTION_SIZE"
	.byte		0
	.sleb128	51
	.sleb128	17
	.byte		"E_OS_SYS_MEMPROT_INVALID_APP"
	.byte		0
	.sleb128	52
	.sleb128	17
	.byte		"E_OS_SYS_CALLEVEL"
	.byte		0
	.sleb128	53
	.sleb128	17
	.byte		"E_OS_SYS_TIMER_RUNNING"
	.byte		0
	.sleb128	54
	.sleb128	17
	.byte		"E_OS_SYS_TIMER_STOPPED"
	.byte		0
	.sleb128	55
	.sleb128	17
	.byte		"E_OS_SYS_TIMER_TOO_MUCH_JITTER"
	.byte		0
	.sleb128	56
	.sleb128	17
	.byte		"E_OS_SYS_SSG_NESTING"
	.byte		0
	.sleb128	57
	.sleb128	17
	.byte		"E_OS_SYS_SSG_OVERFLOW"
	.byte		0
	.sleb128	58
	.sleb128	17
	.byte		"E_OS_SYS_CORELOCK_LOCKED"
	.byte		0
	.sleb128	59
	.sleb128	17
	.byte		"E_OS_SYS_CORELOCK_UNLOCKED"
	.byte		0
	.sleb128	60
	.sleb128	17
	.byte		"E_OS_SYS_TFPROCAPPINCONSISTENCY"
	.byte		0
	.sleb128	61
	.sleb128	17
	.byte		"E_OS_SYS_PROCENABLEDALREADY"
	.byte		0
	.sleb128	62
	.sleb128	0
.L12116:
.L12092:
	.sleb128	16
	.4byte		.L12081
	.uleb128	86
	.uleb128	1
	.4byte		.L12117-.L2
	.uleb128	4
	.sleb128	17
	.byte		"OSServiceId_GetApplicationID"
	.byte		0
	.sleb128	0
	.sleb128	17
	.byte		"OSServiceId_GetISRID"
	.byte		0
	.sleb128	1
	.sleb128	17
	.byte		"OSServiceId_CallTrustedFunction"
	.byte		0
	.sleb128	2
	.sleb128	17
	.byte		"OSServiceId_CheckISRMemoryAccess"
	.byte		0
	.sleb128	3
	.sleb128	17
	.byte		"OSServiceId_CheckTaskMemoryAccess"
	.byte		0
	.sleb128	4
	.sleb128	17
	.byte		"OSServiceId_CheckObjectAccess"
	.byte		0
	.sleb128	5
	.sleb128	17
	.byte		"OSServiceId_CheckObjectOwnership"
	.byte		0
	.sleb128	6
	.sleb128	17
	.byte		"OSServiceId_StartScheduleTableRel"
	.byte		0
	.sleb128	7
	.sleb128	17
	.byte		"OSServiceId_StartScheduleTableAbs"
	.byte		0
	.sleb128	8
	.sleb128	17
	.byte		"OSServiceId_StopScheduleTable"
	.byte		0
	.sleb128	9
	.sleb128	17
	.byte		"OSServiceId_NextScheduleTable"
	.byte		0
	.sleb128	10
	.sleb128	17
	.byte		"OSServiceId_StartScheduleTableSynchron"
	.byte		0
	.sleb128	11
	.sleb128	17
	.byte		"OSServiceId_SyncScheduleTable"
	.byte		0
	.sleb128	12
	.sleb128	17
	.byte		"OSServiceId_SetScheduleTableAsync"
	.byte		0
	.sleb128	13
	.sleb128	17
	.byte		"OSServiceId_GetScheduleTableStatus"
	.byte		0
	.sleb128	14
	.sleb128	17
	.byte		"OSServiceId_IncrementCounter"
	.byte		0
	.sleb128	15
	.sleb128	17
	.byte		"OSServiceId_GetCounterValue"
	.byte		0
	.sleb128	16
	.sleb128	17
	.byte		"OSServiceId_GetElapsedValue"
	.byte		0
	.sleb128	17
	.sleb128	17
	.byte		"OSServiceId_TerminateApplication"
	.byte		0
	.sleb128	18
	.sleb128	17
	.byte		"OSServiceId_AllowAcess"
	.byte		0
	.sleb128	19
	.sleb128	17
	.byte		"OSServiceId_GetApplicationState"
	.byte		0
	.sleb128	20
	.sleb128	17
	.byte		"OSServiceId_GetNumberOfActivatedCores"
	.byte		0
	.sleb128	21
	.sleb128	17
	.byte		"OSServiceId_GetCoreID"
	.byte		0
	.sleb128	22
	.sleb128	17
	.byte		"OSServiceId_StartCore"
	.byte		0
	.sleb128	23
	.sleb128	17
	.byte		"OSServiceId_StartNonAutosarCore"
	.byte		0
	.sleb128	24
	.sleb128	17
	.byte		"OSServiceId_GetSpinlock"
	.byte		0
	.sleb128	25
	.sleb128	17
	.byte		"OSServiceId_ReleaseSpinlock"
	.byte		0
	.sleb128	26
	.sleb128	17
	.byte		"OSServiceId_TryToGetSpinlock"
	.byte		0
	.sleb128	27
	.sleb128	17
	.byte		"OSServiceId_ShutdownAllCores"
	.byte		0
	.sleb128	28
	.sleb128	17
	.byte		"OSServiceId_ControlIdle"
	.byte		0
	.sleb128	29
	.sleb128	17
	.byte		"OSServiceId_IOC_Send"
	.byte		0
	.sleb128	30
	.sleb128	17
	.byte		"OSServiceId_IOC_Write"
	.byte		0
	.sleb128	31
	.sleb128	17
	.byte		"OSServiceId_IOC_SendGroup"
	.byte		0
	.sleb128	32
	.sleb128	17
	.byte		"OSServiceId_IOC_WriteFGroup"
	.byte		0
	.sleb128	33
	.sleb128	17
	.byte		"OSServiceId_IOC_Receive"
	.byte		0
	.sleb128	34
	.sleb128	17
	.byte		"OSServiceId_IOC_Read"
	.byte		0
	.sleb128	35
	.sleb128	17
	.byte		"OSServiceId_IOC_ReceiveGroup"
	.byte		0
	.sleb128	36
	.sleb128	17
	.byte		"OSServiceId_IOC_ReadGroup"
	.byte		0
	.sleb128	37
	.sleb128	17
	.byte		"OSServiceId_IOC_EmptyQueue"
	.byte		0
	.sleb128	38
	.sleb128	17
	.byte		"OSServiceId_IOC_ReceiverPullCB"
	.byte		0
	.sleb128	39
	.sleb128	17
	.byte		"OSServiceId_ActivateTask"
	.byte		0
	.sleb128	128
	.sleb128	17
	.byte		"OSServiceId_TerminateTask"
	.byte		0
	.sleb128	129
	.sleb128	17
	.byte		"OSServiceId_ChainTask"
	.byte		0
	.sleb128	130
	.sleb128	17
	.byte		"OSServiceId_Schedule"
	.byte		0
	.sleb128	131
	.sleb128	17
	.byte		"OSServiceId_GetTaskID"
	.byte		0
	.sleb128	132
	.sleb128	17
	.byte		"OSServiceId_GetTaskState"
	.byte		0
	.sleb128	133
	.sleb128	17
	.byte		"OSServiceId_EnableAllInterrupts"
	.byte		0
	.sleb128	134
	.sleb128	17
	.byte		"OSServiceId_DisableAllInterrupts"
	.byte		0
	.sleb128	135
	.sleb128	17
	.byte		"OSServiceId_ResumeAllInterrupts"
	.byte		0
	.sleb128	136
	.sleb128	17
	.byte		"OSServiceId_SuspendAllInterrupts"
	.byte		0
	.sleb128	137
	.sleb128	17
	.byte		"OSServiceId_ResumeOSInterrupts"
	.byte		0
	.sleb128	138
	.sleb128	17
	.byte		"OSServiceId_SuspendOSInterrupts"
	.byte		0
	.sleb128	139
	.sleb128	17
	.byte		"OSServiceId_GetResource"
	.byte		0
	.sleb128	140
	.sleb128	17
	.byte		"OSServiceId_ReleaseResource"
	.byte		0
	.sleb128	141
	.sleb128	17
	.byte		"OSServiceId_SetEvent"
	.byte		0
	.sleb128	142
	.sleb128	17
	.byte		"OSServiceId_ClearEvent"
	.byte		0
	.sleb128	143
	.sleb128	17
	.byte		"OSServiceId_GetEvent"
	.byte		0
	.sleb128	144
	.sleb128	17
	.byte		"OSServiceId_WaitEvent"
	.byte		0
	.sleb128	145
	.sleb128	17
	.byte		"OSServiceId_GetAlarmBase"
	.byte		0
	.sleb128	146
	.sleb128	17
	.byte		"OSServiceId_GetAlarm"
	.byte		0
	.sleb128	147
	.sleb128	17
	.byte		"OSServiceId_SetRelAlarm"
	.byte		0
	.sleb128	148
	.sleb128	17
	.byte		"OSServiceId_SetAbsAlarm"
	.byte		0
	.sleb128	149
	.sleb128	17
	.byte		"OSServiceId_CancelAlarm"
	.byte		0
	.sleb128	150
	.sleb128	17
	.byte		"OSServiceId_GetActiveApplicationMode"
	.byte		0
	.sleb128	151
	.sleb128	17
	.byte		"OSServiceId_StartOS"
	.byte		0
	.sleb128	152
	.sleb128	17
	.byte		"OSServiceId_ShutdownOS"
	.byte		0
	.sleb128	153
	.sleb128	17
	.byte		"OSServiceId_INVALIDSERVICE"
	.byte		0
	.sleb128	255
	.sleb128	0
.L12117:
.L11858:
	.sleb128	16
	.4byte		.L12118
	.uleb128	43
	.uleb128	1
	.4byte		.L12119-.L2
	.uleb128	4
	.sleb128	17
	.byte		"TRYTOGETSPINLOCK_SUCCESS"
	.byte		0
	.sleb128	0
	.sleb128	17
	.byte		"TRYTOGETSPINLOCK_NOSUCCESS"
	.byte		0
	.sleb128	1
	.sleb128	0
.L12119:
.L11923:
	.sleb128	16
	.4byte		.L12120
	.uleb128	37
	.uleb128	1
	.4byte		.L12121-.L2
	.uleb128	4
	.sleb128	17
	.byte		"RUNNING"
	.byte		0
	.sleb128	0
	.sleb128	17
	.byte		"WAITING"
	.byte		0
	.sleb128	1
	.sleb128	17
	.byte		"READY"
	.byte		0
	.sleb128	2
	.sleb128	17
	.byte		"SUSPENDED"
	.byte		0
	.sleb128	3
	.sleb128	0
.L12121:
.L11892:
	.sleb128	16
	.4byte		.L12122
	.uleb128	40
	.uleb128	1
	.4byte		.L12123-.L2
	.uleb128	4
	.sleb128	17
	.byte		"SCHEDULETABLE_STOPPED"
	.byte		0
	.sleb128	0
	.sleb128	17
	.byte		"SCHEDULETABLE_NEXT"
	.byte		0
	.sleb128	1
	.sleb128	17
	.byte		"SCHEDULETABLE_WAITING"
	.byte		0
	.sleb128	2
	.sleb128	17
	.byte		"SCHEDULETABLE_RUNNING"
	.byte		0
	.sleb128	3
	.sleb128	17
	.byte		"SCHEDULETABLE_RUNNING_AND_SYNCHRONOUS"
	.byte		0
	.sleb128	4
	.sleb128	0
.L12123:
.L11870:
	.sleb128	16
	.4byte		.L12124
	.uleb128	47
	.uleb128	1
	.4byte		.L12125-.L2
	.uleb128	4
	.sleb128	17
	.byte		"OBJECT_TASK"
	.byte		0
	.sleb128	0
	.sleb128	17
	.byte		"OBJECT_ISR"
	.byte		0
	.sleb128	1
	.sleb128	17
	.byte		"OBJECT_ALARM"
	.byte		0
	.sleb128	2
	.sleb128	17
	.byte		"OBJECT_RESOURCE"
	.byte		0
	.sleb128	3
	.sleb128	17
	.byte		"OBJECT_COUNTER"
	.byte		0
	.sleb128	4
	.sleb128	17
	.byte		"OBJECT_SCHEDULETABLE"
	.byte		0
	.sleb128	5
	.sleb128	0
.L12125:
.L11939:
	.sleb128	16
	.4byte		.L12098
	.uleb128	42
	.uleb128	13
	.4byte		.L12126-.L2
	.uleb128	4
	.sleb128	17
	.byte		"OS_SHUTDOWN_INDIVIDUAL"
	.byte		0
	.sleb128	0
	.sleb128	17
	.byte		"OS_SHUTDOWN_SYNCHRONIZED"
	.byte		0
	.sleb128	1
	.sleb128	0
.L12126:
.L11842:
	.sleb128	16
	.4byte		.L12127
	.uleb128	83
	.uleb128	14
	.4byte		.L12128-.L2
	.uleb128	4
	.sleb128	17
	.byte		"IDLE_NO_HALT"
	.byte		0
	.sleb128	0
	.sleb128	17
	.byte		"IDLE_WAIT"
	.byte		0
	.sleb128	1
	.sleb128	17
	.byte		"IDLE_NUMBEROFOPTIONS"
	.byte		0
	.sleb128	2
	.sleb128	0
.L12128:
	.section	.debug_info,,n
.L11461:
	.sleb128	19
	.byte		"Os_IsrStateType"
	.byte		0
	.4byte		.L11462
	.section	.debug_info,,n
.L11467:
	.sleb128	20
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L11466:
	.sleb128	19
	.byte		"uint16"
	.byte		0
	.4byte		.L11467
.L11465:
	.sleb128	19
	.byte		"CoreIdType"
	.byte		0
	.4byte		.L11466
	.section	.debug_info,,n
.L11464:
	.sleb128	21
	.4byte		.L11465
.L11484:
	.sleb128	20
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L11483:
	.sleb128	19
	.byte		"uint8"
	.byte		0
	.4byte		.L11484
.L11482:
	.sleb128	19
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L11483
.L11486:
	.sleb128	19
	.byte		"ApplicationType"
	.byte		0
	.4byte		.L11483
.L11488:
	.sleb128	19
	.byte		"RestartType"
	.byte		0
	.4byte		.L11483
.L11491:
	.sleb128	19
	.byte		"Os_APICallType"
	.byte		0
	.4byte		.L11492
.L11505:
	.sleb128	19
	.byte		"Os_ApplicationStatType"
	.byte		0
	.4byte		.L11506
.L11504:
	.sleb128	21
	.4byte		.L11505
	.section	.debug_info,,n
.L11503:
	.sleb128	22
	.4byte		.L11504
.L11502:
	.sleb128	21
	.4byte		.L11503
.L11517:
	.sleb128	20
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L11516:
	.sleb128	19
	.byte		"uint32"
	.byte		0
	.4byte		.L11517
.L11515:
	.sleb128	19
	.byte		"Os_ObjectType"
	.byte		0
	.4byte		.L11516
.L11514:
	.sleb128	19
	.byte		"ProcType"
	.byte		0
	.4byte		.L11515
.L11513:
	.sleb128	19
	.byte		"TaskType"
	.byte		0
	.4byte		.L11514
.L11526:
	.sleb128	21
	.4byte		.L11527
.L11525:
	.sleb128	22
	.4byte		.L11526
.L11524:
	.sleb128	21
	.4byte		.L11525
.L11534:
	.sleb128	19
	.byte		"AlarmType"
	.byte		0
	.4byte		.L11515
.L11541:
	.sleb128	19
	.byte		"ScheduleTableType"
	.byte		0
	.4byte		.L11516
.L11548:
	.sleb128	19
	.byte		"CounterType"
	.byte		0
	.4byte		.L11516
.L11557:
	.sleb128	19
	.byte		"Os_ProcStatType"
	.byte		0
	.4byte		.L11527
.L11556:
	.sleb128	21
	.4byte		.L11557
.L11555:
	.sleb128	22
	.4byte		.L11556
.L11570:
	.sleb128	22
	.4byte		.L11482
.L11572:
	.sleb128	21
	.4byte		.L11555
.L11577:
	.sleb128	21
	.4byte		.L11482
.L11588:
	.sleb128	19
	.byte		"Os_DispatchElementType"
	.byte		0
	.4byte		.L11589
.L11587:
	.sleb128	22
	.4byte		.L11588
.L11586:
	.sleb128	21
	.4byte		.L11587
.L11608:
	.sleb128	22
	.4byte		.L11492
.L11614:
	.sleb128	21
	.4byte		.L11486
.L11617:
	.sleb128	21
	.4byte		.L11488
	.section	.debug_info,,n
.L11642:
	.sleb128	23
	.4byte		.L11643-.L2
	.4byte		.L11504
	.section	.debug_info,,n
	.sleb128	24
	.sleb128	0
.L11643:
.L11648:
	.sleb128	19
	.byte		"Os_ObjectRangeType"
	.byte		0
	.4byte		.L11649
.L11647:
	.sleb128	21
	.4byte		.L11648
.L11645:
	.sleb128	23
	.4byte		.L11646-.L2
	.4byte		.L11647
	.section	.debug_info,,n
	.sleb128	25
	.uleb128	1
	.sleb128	0
.L11646:
.L11652:
	.sleb128	23
	.4byte		.L11653-.L2
	.4byte		.L11556
	.sleb128	24
	.sleb128	0
.L11653:
.L11659:
	.sleb128	19
	.byte		"Os_Core_StatType"
	.byte		0
	.4byte		.L11660
.L11658:
	.sleb128	21
	.4byte		.L11659
.L11656:
	.sleb128	23
	.4byte		.L11657-.L2
	.4byte		.L11658
	.sleb128	25
	.uleb128	1
	.sleb128	0
.L11657:
.L11664:
	.sleb128	19
	.byte		"Os_Core_DynSharedType"
	.byte		0
	.4byte		.L11665
.L11662:
	.sleb128	23
	.4byte		.L11663-.L2
	.4byte		.L11664
	.sleb128	25
	.uleb128	1
	.sleb128	0
.L11663:
.L11670:
	.sleb128	19
	.byte		"Os_Core_DynInitType"
	.byte		0
	.4byte		.L11671
.L11669:
	.sleb128	22
	.4byte		.L11670
.L11668:
	.sleb128	21
	.4byte		.L11669
.L11674:
	.sleb128	19
	.byte		"Os_Core_DynType"
	.byte		0
	.4byte		.L11675
.L11673:
	.sleb128	22
	.4byte		.L11674
.L11672:
	.sleb128	21
	.4byte		.L11673
	.section	.debug_info,,n
.L11679:
	.sleb128	26
	.4byte		.L11680-.L2
	.byte		0x1
	.section	.debug_info,,n
	.sleb128	27
	.4byte		.L11572
	.sleb128	0
.L11680:
.L11678:
	.sleb128	22
	.4byte		.L11679
.L11677:
	.sleb128	19
	.byte		"Os_PrepareContextFunctionType"
	.byte		0
	.4byte		.L11678
.L11676:
	.sleb128	21
	.4byte		.L11677
.L11687:
	.sleb128	19
	.byte		"Os_StackType"
	.byte		0
	.4byte		.L11516
.L11686:
	.sleb128	22
	.4byte		.L11687
	.section	.debug_info,,n
.L11684:
	.sleb128	28
	.4byte		.L11685-.L2
	.4byte		.L11686
	.byte		0x1
	.sleb128	27
	.4byte		.L11555
	.sleb128	0
.L11685:
.L11683:
	.sleb128	22
	.4byte		.L11684
.L11682:
	.sleb128	19
	.byte		"Os_GetStackPointerFunctionType"
	.byte		0
	.4byte		.L11683
.L11681:
	.sleb128	21
	.4byte		.L11682
.L11689:
	.sleb128	19
	.byte		"Os_IsrDynInitType"
	.byte		0
	.4byte		.L11690
.L11691:
	.sleb128	19
	.byte		"Os_SchedulerDynInitType"
	.byte		0
	.4byte		.L11692
.L11694:
	.sleb128	19
	.byte		"Os_DispatcherType"
	.byte		0
	.4byte		.L11695
.L11696:
	.sleb128	19
	.byte		"Os_PublicData_NoInitType"
	.byte		0
	.4byte		.L11697
.L11699:
	.sleb128	19
	.byte		"Os_SchedulerDynType"
	.byte		0
	.4byte		.L11700
.L11701:
	.sleb128	19
	.byte		"Os_IsrDynType"
	.byte		0
	.4byte		.L11702
.L11703:
	.sleb128	19
	.byte		"Os_HooksDynType"
	.byte		0
	.4byte		.L11704
.L11707:
	.sleb128	19
	.byte		"Os_ScheduleType"
	.byte		0
	.4byte		.L11708
.L11709:
	.sleb128	19
	.byte		"Os_PriorityType"
	.byte		0
	.4byte		.L11516
.L11710:
	.sleb128	19
	.byte		"Os_SchedulerQueueElementType"
	.byte		0
	.4byte		.L11711
.L11714:
	.sleb128	22
	.4byte		.L11711
.L11716:
	.sleb128	19
	.byte		"Os_IsrRegister_t"
	.byte		0
	.4byte		.L11516
.L11717:
	.sleb128	19
	.byte		"boolean"
	.byte		0
	.4byte		.L11484
.L11721:
	.sleb128	19
	.byte		"Os_IsrPlatformConfigType"
	.byte		0
	.4byte		.L11722
.L11720:
	.sleb128	21
	.4byte		.L11721
.L11719:
	.sleb128	22
	.4byte		.L11720
.L11725:
	.sleb128	19
	.byte		"Os_IsrApiTable"
	.byte		0
	.4byte		.L11726
.L11724:
	.sleb128	21
	.4byte		.L11725
.L11723:
	.sleb128	22
	.4byte		.L11724
.L11727:
	.sleb128	23
	.4byte		.L11728-.L2
	.4byte		.L11516
	.sleb128	25
	.uleb128	7
	.sleb128	0
.L11728:
.L11731:
	.sleb128	19
	.byte		"Os_DispatchKindType"
	.byte		0
	.4byte		.L11732
.L11733:
	.sleb128	19
	.byte		"ISRType"
	.byte		0
	.4byte		.L11514
.L11734:
	.sleb128	22
	.4byte		.L11491
.L11736:
	.sleb128	19
	.byte		"Os_API_LockType"
	.byte		0
	.4byte		.L11737
.L11740:
	.sleb128	26
	.4byte		.L11741-.L2
	.byte		0x1
	.sleb128	27
	.4byte		.L11608
	.sleb128	27
	.4byte		.L11524
	.sleb128	0
.L11741:
.L11739:
	.sleb128	22
	.4byte		.L11740
.L11738:
	.sleb128	19
	.byte		"Os_API_Func_Type"
	.byte		0
	.4byte		.L11739
.L11744:
	.sleb128	19
	.byte		"Os_API_StartOsType"
	.byte		0
	.4byte		.L11745
.L11746:
	.sleb128	19
	.byte		"Os_API_ShutdownOsType"
	.byte		0
	.4byte		.L11747
.L11748:
	.sleb128	19
	.byte		"Os_API_ShutdownOsInternalType"
	.byte		0
	.4byte		.L11749
.L11750:
	.sleb128	19
	.byte		"Os_API_ShutdownAllCoresType"
	.byte		0
	.4byte		.L11751
.L11752:
	.sleb128	19
	.byte		"Os_API_GetNumberOfActivatedCoresType"
	.byte		0
	.4byte		.L11753
.L11754:
	.sleb128	19
	.byte		"Os_API_ApiStartCoreType"
	.byte		0
	.4byte		.L11755
.L11756:
	.sleb128	19
	.byte		"Os_API_StartNonAutosarCoreType"
	.byte		0
	.4byte		.L11757
.L11758:
	.sleb128	19
	.byte		"Os_API_GetCoreIDType"
	.byte		0
	.4byte		.L11759
.L11760:
	.sleb128	19
	.byte		"Os_API_ActivateTaskType"
	.byte		0
	.4byte		.L11761
.L11762:
	.sleb128	19
	.byte		"Os_API_ChainTaskType"
	.byte		0
	.4byte		.L11763
.L11764:
	.sleb128	19
	.byte		"Os_API_GetTaskIDType"
	.byte		0
	.4byte		.L11765
.L11766:
	.sleb128	19
	.byte		"Os_API_GetTaskStateType"
	.byte		0
	.4byte		.L11767
.L11768:
	.sleb128	19
	.byte		"Os_API_SetEventType"
	.byte		0
	.4byte		.L11769
.L11770:
	.sleb128	19
	.byte		"Os_API_ClearEventType"
	.byte		0
	.4byte		.L11771
.L11772:
	.sleb128	19
	.byte		"Os_API_GetEventType"
	.byte		0
	.4byte		.L11773
.L11774:
	.sleb128	19
	.byte		"Os_API_WaitEventType"
	.byte		0
	.4byte		.L11775
.L11776:
	.sleb128	19
	.byte		"Os_API_GetResourceType"
	.byte		0
	.4byte		.L11777
.L11778:
	.sleb128	19
	.byte		"Os_API_ReleaseResourceType"
	.byte		0
	.4byte		.L11779
.L11780:
	.sleb128	19
	.byte		"Os_API_GetAlarmBaseType"
	.byte		0
	.4byte		.L11781
.L11782:
	.sleb128	19
	.byte		"Os_API_GetAlarmType"
	.byte		0
	.4byte		.L11783
.L11784:
	.sleb128	19
	.byte		"Os_API_SetRelAlarmType"
	.byte		0
	.4byte		.L11785
.L11786:
	.sleb128	19
	.byte		"Os_API_SetAbsAlarmType"
	.byte		0
	.4byte		.L11787
.L11788:
	.sleb128	19
	.byte		"Os_API_CancelAlarmType"
	.byte		0
	.4byte		.L11789
.L11790:
	.sleb128	19
	.byte		"Os_API_GetApplicationStateType"
	.byte		0
	.4byte		.L11791
.L11792:
	.sleb128	19
	.byte		"Os_API_TerminateApplicationType"
	.byte		0
	.4byte		.L11793
.L11794:
	.sleb128	19
	.byte		"Os_API_GetApplicationIDType"
	.byte		0
	.4byte		.L11795
.L11796:
	.sleb128	19
	.byte		"Os_API_GetISRIDType"
	.byte		0
	.4byte		.L11797
.L11798:
	.sleb128	19
	.byte		"Os_API_GetActiveApplicationModeType"
	.byte		0
	.4byte		.L11799
.L11800:
	.sleb128	19
	.byte		"Os_API_IncrementCounterType"
	.byte		0
	.4byte		.L11801
.L11802:
	.sleb128	19
	.byte		"Os_API_GetCounterValueType"
	.byte		0
	.4byte		.L11803
.L11804:
	.sleb128	19
	.byte		"Os_API_GetElapsedValueType"
	.byte		0
	.4byte		.L11805
.L11806:
	.sleb128	19
	.byte		"Os_API_StartScheduleTableAbsType"
	.byte		0
	.4byte		.L11807
.L11808:
	.sleb128	19
	.byte		"Os_API_StartScheduleTableRelType"
	.byte		0
	.4byte		.L11809
.L11810:
	.sleb128	19
	.byte		"Os_API_StopScheduleTableType"
	.byte		0
	.4byte		.L11811
.L11812:
	.sleb128	19
	.byte		"Os_API_GetScheduleTableStatusType"
	.byte		0
	.4byte		.L11813
.L11814:
	.sleb128	19
	.byte		"Os_API_NextScheduleTableType"
	.byte		0
	.4byte		.L11815
.L11816:
	.sleb128	19
	.byte		"Os_API_StartScheduleTableSynchronType"
	.byte		0
	.4byte		.L11817
.L11818:
	.sleb128	19
	.byte		"Os_API_SyncScheduleTableType"
	.byte		0
	.4byte		.L11819
.L11820:
	.sleb128	19
	.byte		"Os_API_SetScheduleTableAsyncType"
	.byte		0
	.4byte		.L11821
.L11822:
	.sleb128	19
	.byte		"Os_API_CheckObjectAccessType"
	.byte		0
	.4byte		.L11823
.L11824:
	.sleb128	19
	.byte		"Os_API_CheckObjectOwnershipType"
	.byte		0
	.4byte		.L11825
.L11826:
	.sleb128	19
	.byte		"Os_API_CallTrustedFunctionType"
	.byte		0
	.4byte		.L11827
.L11828:
	.sleb128	19
	.byte		"Os_API_StackUsageType"
	.byte		0
	.4byte		.L11829
.L11830:
	.sleb128	19
	.byte		"Os_API_GetSpinlockType"
	.byte		0
	.4byte		.L11831
.L11832:
	.sleb128	19
	.byte		"Os_API_ReleaseSpinlockType"
	.byte		0
	.4byte		.L11833
.L11834:
	.sleb128	19
	.byte		"Os_API_TryToGetSpinlockType"
	.byte		0
	.4byte		.L11835
.L11836:
	.sleb128	19
	.byte		"Os_API_IocTransferType"
	.byte		0
	.4byte		.L11837
.L11838:
	.sleb128	19
	.byte		"Os_API_ControlIdleType"
	.byte		0
	.4byte		.L11839
.L11841:
	.sleb128	19
	.byte		"IdleModeType"
	.byte		0
	.4byte		.L11842
.L11846:
	.sleb128	19
	.byte		"Os_IOC_ChannelStatType"
	.byte		0
	.4byte		.L11847
.L11845:
	.sleb128	21
	.4byte		.L11846
.L11844:
	.sleb128	22
	.4byte		.L11845
	.section	.debug_info,,n
.L11853:
	.sleb128	29
	.byte		"void"
	.byte		0
	.byte		0x0
.L11852:
	.sleb128	22
	.4byte		.L11853
.L11850:
	.sleb128	23
	.4byte		.L11851-.L2
	.4byte		.L11852
	.sleb128	25
	.uleb128	1
	.sleb128	0
.L11851:
.L11849:
	.sleb128	19
	.byte		"Os_IOC_DataType"
	.byte		0
	.4byte		.L11850
.L11848:
	.sleb128	22
	.4byte		.L11849
.L11855:
	.sleb128	19
	.byte		"SpinlockIdType"
	.byte		0
	.4byte		.L11466
.L11857:
	.sleb128	19
	.byte		"TryToGetSpinlockType"
	.byte		0
	.4byte		.L11858
.L11856:
	.sleb128	22
	.4byte		.L11857
.L11862:
	.sleb128	22
	.4byte		.L11483
.L11864:
	.sleb128	19
	.byte		"TrustedFunctionIndexType"
	.byte		0
	.4byte		.L11516
.L11865:
	.sleb128	19
	.byte		"TrustedFunctionParameterRefType"
	.byte		0
	.4byte		.L11852
.L11866:
	.sleb128	19
	.byte		"Os_TrustedFunctionReturnValueType"
	.byte		0
	.4byte		.L11867
.L11869:
	.sleb128	19
	.byte		"ObjectTypeType"
	.byte		0
	.4byte		.L11870
.L11874:
	.sleb128	19
	.byte		"TickType"
	.byte		0
	.4byte		.L11516
.L11878:
	.sleb128	22
	.4byte		.L11874
.L11877:
	.sleb128	19
	.byte		"TickRefType"
	.byte		0
	.4byte		.L11878
.L11882:
	.sleb128	19
	.byte		"AlarmBaseType"
	.byte		0
	.4byte		.L11883
.L11881:
	.sleb128	22
	.4byte		.L11882
.L11880:
	.sleb128	19
	.byte		"AlarmBaseRefType"
	.byte		0
	.4byte		.L11881
.L11891:
	.sleb128	19
	.byte		"ScheduleTableStatusType"
	.byte		0
	.4byte		.L11892
.L11890:
	.sleb128	22
	.4byte		.L11891
.L11889:
	.sleb128	19
	.byte		"ScheduleTableStatusRefType"
	.byte		0
	.4byte		.L11890
.L11900:
	.sleb128	26
	.4byte		.L11901-.L2
	.byte		0x1
	.sleb128	27
	.4byte		.L11608
	.sleb128	0
.L11901:
.L11899:
	.sleb128	22
	.4byte		.L11900
.L11898:
	.sleb128	19
	.byte		"LightServiceFunctionType"
	.byte		0
	.4byte		.L11899
.L11909:
	.sleb128	19
	.byte		"ApplicationStateType"
	.byte		0
	.4byte		.L11483
.L11908:
	.sleb128	22
	.4byte		.L11909
.L11907:
	.sleb128	19
	.byte		"ApplicationStateRefType"
	.byte		0
	.4byte		.L11908
.L11913:
	.sleb128	20
	.byte		"unsigned long long"
	.byte		0
	.byte		0x7
	.byte		0x8
.L11912:
	.sleb128	19
	.byte		"uint64"
	.byte		0
	.4byte		.L11913
.L11911:
	.sleb128	19
	.byte		"EventMaskType"
	.byte		0
	.4byte		.L11912
.L11916:
	.sleb128	22
	.4byte		.L11911
.L11915:
	.sleb128	19
	.byte		"EventMaskRefType"
	.byte		0
	.4byte		.L11916
.L11922:
	.sleb128	19
	.byte		"TaskStateType"
	.byte		0
	.4byte		.L11923
.L11921:
	.sleb128	22
	.4byte		.L11922
.L11920:
	.sleb128	19
	.byte		"TaskStateRefType"
	.byte		0
	.4byte		.L11921
.L11926:
	.sleb128	22
	.4byte		.L11513
.L11925:
	.sleb128	19
	.byte		"TaskRefType"
	.byte		0
	.4byte		.L11926
.L11930:
	.sleb128	19
	.byte		"ResourceType"
	.byte		0
	.4byte		.L11516
.L11933:
	.sleb128	19
	.byte		"AppModeType"
	.byte		0
	.4byte		.L11516
.L11938:
	.sleb128	19
	.byte		"Os_CoreShutdownType"
	.byte		0
	.4byte		.L11939
.L11948:
	.sleb128	19
	.byte		"Os_IOC_ChannelDynType"
	.byte		0
	.4byte		.L11949
.L11947:
	.sleb128	22
	.4byte		.L11948
.L11946:
	.sleb128	21
	.4byte		.L11947
.L11950:
	.sleb128	19
	.byte		"Os_IOC_ChannelSizeType"
	.byte		0
	.4byte		.L11466
.L11951:
	.sleb128	21
	.4byte		.L11852
.L11952:
	.sleb128	21
	.4byte		.L11466
.L11954:
	.sleb128	19
	.byte		"Os_IOC_DataCountType"
	.byte		0
	.4byte		.L11483
.L11953:
	.sleb128	21
	.4byte		.L11954
.L11958:
	.sleb128	19
	.byte		"Os_IOC_DataDescriptorType"
	.byte		0
	.4byte		.L11959
.L11957:
	.sleb128	21
	.4byte		.L11958
.L11956:
	.sleb128	22
	.4byte		.L11957
.L11955:
	.sleb128	21
	.4byte		.L11956
.L11962:
	.sleb128	19
	.byte		"Os_LockResourceType"
	.byte		0
	.4byte		.L11483
.L11961:
	.sleb128	22
	.4byte		.L11962
.L11960:
	.sleb128	21
	.4byte		.L11961
.L11965:
	.sleb128	19
	.byte		"Os_IOC_DataLengthType"
	.byte		0
	.4byte		.L11466
.L11964:
	.sleb128	21
	.4byte		.L11965
.L11967:
	.sleb128	19
	.byte		"Os_IOC_DataOffsetType"
	.byte		0
	.4byte		.L11466
.L11966:
	.sleb128	21
	.4byte		.L11967
.L11971:
	.sleb128	19
	.byte		"Os_HookIDType"
	.byte		0
	.4byte		.L11466
.L11973:
	.sleb128	21
	.4byte		.L11513
.L11976:
	.sleb128	19
	.byte		"Os_ProcDynType"
	.byte		0
	.4byte		.L11977
.L11975:
	.sleb128	22
	.4byte		.L11976
.L11974:
	.sleb128	21
	.4byte		.L11975
.L11981:
	.sleb128	19
	.byte		"Os_ProcStackType"
	.byte		0
	.4byte		.L11982
.L11980:
	.sleb128	21
	.4byte		.L11981
.L11979:
	.sleb128	22
	.4byte		.L11980
.L11978:
	.sleb128	21
	.4byte		.L11979
.L11984:
	.sleb128	19
	.byte		"Os_ProcKindType"
	.byte		0
	.4byte		.L11985
.L11983:
	.sleb128	21
	.4byte		.L11984
.L11986:
	.sleb128	21
	.4byte		.L11911
.L11987:
	.sleb128	21
	.4byte		.L11709
.L11989:
	.sleb128	19
	.byte		"Os_ActivationCountType"
	.byte		0
	.4byte		.L11516
.L11988:
	.sleb128	21
	.4byte		.L11989
.L11990:
	.sleb128	21
	.4byte		.L11686
.L11994:
	.sleb128	19
	.byte		"Os_AccessStorageType"
	.byte		0
	.4byte		.L11516
.L11993:
	.sleb128	21
	.4byte		.L11994
.L11992:
	.sleb128	22
	.4byte		.L11993
.L11991:
	.sleb128	21
	.4byte		.L11992
.L11998:
	.sleb128	26
	.4byte		.L11999-.L2
	.byte		0x1
	.sleb128	0
.L11999:
.L11997:
	.sleb128	22
	.4byte		.L11998
.L11996:
	.sleb128	19
	.byte		"Os_ProcEntryPointType"
	.byte		0
	.4byte		.L11997
.L11995:
	.sleb128	21
	.4byte		.L11996
.L12000:
	.sleb128	21
	.4byte		.L11930
.L12005:
	.sleb128	19
	.byte		"Os_ResourceStatType"
	.byte		0
	.4byte		.L12006
.L12004:
	.sleb128	21
	.4byte		.L12005
.L12003:
	.sleb128	22
	.4byte		.L12004
.L12002:
	.sleb128	19
	.byte		"Os_ResourceStack"
	.byte		0
	.4byte		.L12003
.L12001:
	.sleb128	22
	.4byte		.L12002
.L12007:
	.sleb128	21
	.4byte		.L11714
.L12008:
	.sleb128	21
	.4byte		.L11719
.L12011:
	.sleb128	19
	.byte		"Os_StackSizeType"
	.byte		0
	.4byte		.L11516
.L12010:
	.sleb128	21
	.4byte		.L12011
.L12013:
	.sleb128	19
	.byte		"Os_ProcContexStateType"
	.byte		0
	.4byte		.L12014
.L12016:
	.sleb128	21
	.4byte		.L12017
.L12015:
	.sleb128	22
	.4byte		.L12016
.L12019:
	.sleb128	21
	.4byte		.L11855
.L12022:
	.sleb128	19
	.byte		"Os_SpinlockDynType"
	.byte		0
	.4byte		.L12023
.L12021:
	.sleb128	22
	.4byte		.L12022
.L12020:
	.sleb128	21
	.4byte		.L12021
.L12028:
	.sleb128	19
	.byte		"Os_ApplicationDynType"
	.byte		0
	.4byte		.L12029
.L12027:
	.sleb128	22
	.4byte		.L12028
.L12026:
	.sleb128	21
	.4byte		.L12027
.L12031:
	.sleb128	19
	.byte		"Os_ApplicationKindType"
	.byte		0
	.4byte		.L12032
.L12030:
	.sleb128	21
	.4byte		.L12031
.L12036:
	.sleb128	26
	.4byte		.L12037-.L2
	.byte		0x1
	.sleb128	27
	.4byte		.L11482
	.sleb128	0
.L12037:
.L12035:
	.sleb128	22
	.4byte		.L12036
.L12034:
	.sleb128	19
	.byte		"Os_ShutdownHookFuncType"
	.byte		0
	.4byte		.L12035
.L12033:
	.sleb128	21
	.4byte		.L12034
.L12041:
	.sleb128	26
	.4byte		.L12042-.L2
	.byte		0x1
	.sleb128	0
.L12042:
.L12040:
	.sleb128	22
	.4byte		.L12041
.L12039:
	.sleb128	19
	.byte		"Os_StartUpHookFuncType"
	.byte		0
	.4byte		.L12040
.L12038:
	.sleb128	21
	.4byte		.L12039
.L12046:
	.sleb128	26
	.4byte		.L12047-.L2
	.byte		0x1
	.sleb128	27
	.4byte		.L11482
	.sleb128	0
.L12047:
.L12045:
	.sleb128	22
	.4byte		.L12046
.L12044:
	.sleb128	19
	.byte		"Os_ErrorHookFuncType"
	.byte		0
	.4byte		.L12045
.L12043:
	.sleb128	21
	.4byte		.L12044
.L12050:
	.sleb128	21
	.4byte		.L11514
.L12049:
	.sleb128	22
	.4byte		.L12050
.L12048:
	.sleb128	21
	.4byte		.L12049
.L12053:
	.sleb128	21
	.4byte		.L11548
.L12052:
	.sleb128	22
	.4byte		.L12053
.L12051:
	.sleb128	21
	.4byte		.L12052
.L12056:
	.sleb128	21
	.4byte		.L11534
.L12055:
	.sleb128	22
	.4byte		.L12056
.L12054:
	.sleb128	21
	.4byte		.L12055
.L12059:
	.sleb128	21
	.4byte		.L11541
.L12058:
	.sleb128	22
	.4byte		.L12059
.L12057:
	.sleb128	21
	.4byte		.L12058
.L12064:
	.sleb128	19
	.byte		"Os_ResourceDynType"
	.byte		0
	.4byte		.L12065
.L12063:
	.sleb128	22
	.4byte		.L12064
.L12068:
	.sleb128	19
	.byte		"Os_ErrorType"
	.byte		0
	.4byte		.L12069
.L12070:
	.sleb128	19
	.byte		"Os_ExceptionStatusType"
	.byte		0
	.4byte		.L12071
.L12076:
	.sleb128	26
	.4byte		.L12077-.L2
	.byte		0x1
	.sleb128	0
.L12077:
.L12075:
	.sleb128	22
	.4byte		.L12076
.L12074:
	.sleb128	19
	.byte		"Os_IsrHandlerFuncType"
	.byte		0
	.4byte		.L12075
.L12073:
	.sleb128	21
	.4byte		.L12074
.L12079:
	.sleb128	19
	.byte		"Os_ExceptionTypeType"
	.byte		0
	.4byte		.L12080
.L12083:
	.sleb128	19
	.byte		"Os_ShudownErrorType"
	.byte		0
	.4byte		.L12084
.L12085:
	.sleb128	19
	.byte		"Os_ParameterErrorType"
	.byte		0
	.4byte		.L12086
.L12087:
	.sleb128	19
	.byte		"Os_ServiceErrorType"
	.byte		0
	.4byte		.L12088
.L12090:
	.sleb128	19
	.byte		"ServiceTraceType"
	.byte		0
	.4byte		.L11483
.L12091:
	.sleb128	19
	.byte		"OSServiceIdType"
	.byte		0
	.4byte		.L12092
.L12094:
	.sleb128	19
	.byte		"TryToGetSpinlockRefType"
	.byte		0
	.4byte		.L11856
.L12096:
	.sleb128	19
	.byte		"Os_SystemInternalErrorType"
	.byte		0
	.4byte		.L12097
.L12103:
	.sleb128	21
	.4byte		.L11516
.L12105:
	.sleb128	19
	.byte		"Os_IsrPlatformLevelType"
	.byte		0
	.4byte		.L11466
.L12104:
	.sleb128	21
	.4byte		.L12105
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11454:
	.sleb128	0
.L11450:
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
.L11475:
	.sleb128	0
.L11471:

	.section	.debug_loc,,n
	.align	0
.L11468:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locend
.L11487:
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),3
	.d2locend
.L11489:
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo5),4
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo7),0
	.d2locend
.L11499:
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo9),3
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo11),3
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo13),3
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo15),3
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo17),3
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo19),3
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo21),3
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo23),3
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo25),3
	.d2locreg	%offsetof(.Llo26), %offsetof(.Llo27),3
	.d2locend
.L11500:
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo28),4
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo30),31
	.d2locreg	%offsetof(.Llo31), %offsetof(.Llo32),4
	.d2locreg	%offsetof(.Llo33), %offsetof(.Llo34),4
	.d2locend
.L11507:
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo35),28
	.d2locreg	%offsetof(.Llo36), %offsetof(.Llo28),3
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo33),28
	.d2locend
.L11518:
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo37),30
	.d2locend
.L11528:
	.d2locreg	%offsetof(.Llo38), %offsetof(.Llo39),29
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo40),29
	.d2locend
.L11535:
	.d2locreg	%offsetof(.Llo41), %offsetof(.Llo42),30
	.d2locend
.L11542:
	.d2locreg	%offsetof(.Llo43), %offsetof(.Llo44),30
	.d2locend
.L11549:
	.d2locreg	%offsetof(.Llo45), %offsetof(.Llo46),30
	.d2locend
.L11558:
	.d2locreg	%offsetof(.Llo47), %offsetof(.Llo48),3
	.d2locreg	%offsetof(.Llo49), %offsetof(.Llo50),7
	.d2locreg	%offsetof(.Llo51), %offsetof(.Llo52),7
	.d2locend
.L11559:
	.d2locreg	%offsetof(.Llo47), %offsetof(.Llo53),4
	.d2locreg	%offsetof(.Llo49), %offsetof(.Llo54),31
	.d2locreg	%offsetof(.Llo55), %offsetof(.Llo50),31
	.d2locreg	%offsetof(.Llo51), %offsetof(.Llo52),31
	.d2locend
.L11560:
	.d2locreg	%offsetof(.Llo47), %offsetof(.Llo56),5
	.d2locreg	%offsetof(.Llo49), %offsetof(.Llo57),30
	.d2locreg	%offsetof(.Llo51), %offsetof(.Llo52),30
	.d2locend
.L11562:
	.d2locreg	%offsetof(.Llo58), %offsetof(.Llo59),3
	.d2locreg	%offsetof(.Llo60), %offsetof(.Llo61),3
	.d2locreg	%offsetof(.Llo62), %offsetof(.Llo63),3
	.d2locreg	%offsetof(.Llo64), %offsetof(.Llo51),3
	.d2locreg	%offsetof(.Llo52), %offsetof(.Llo65),3
	.d2locend
.L11564:
	.d2locreg	%offsetof(.Llo53), %offsetof(.Llo56),4
	.d2locreg	%offsetof(.Llo49), %offsetof(.Llo54),29
	.d2locend
.L11571:
	.d2locreg	%offsetof(.Llo66), %offsetof(.Llo67),3
	.d2locreg	%offsetof(.Llo68), %offsetof(.Llo69),31
	.d2locend
.L11573:
	.d2locreg	%offsetof(.Llo66), %offsetof(.Llo70),4
	.d2locreg	%offsetof(.Llo68), %offsetof(.Llo71),8
	.d2locreg	%offsetof(.Llo72), %offsetof(.Llo73),8
	.d2locend
.L11574:
	.d2locreg	%offsetof(.Llo66), %offsetof(.Llo74),5
	.d2locreg	%offsetof(.Llo68), %offsetof(.Llo75),30
	.d2locreg	%offsetof(.Llo76), %offsetof(.Llo77),30
	.d2locreg	%offsetof(.Llo72), %offsetof(.Llo69),30
	.d2locend
.L11575:
	.d2locreg	%offsetof(.Llo66), %offsetof(.Llo78),6
	.d2locreg	%offsetof(.Llo68), %offsetof(.Llo75),29
	.d2locreg	%offsetof(.Llo76), %offsetof(.Llo77),29
	.d2locreg	%offsetof(.Llo72), %offsetof(.Llo69),29
	.d2locend
.L11578:
	.d2locreg	%offsetof(.Llo66), %offsetof(.Llo79),28
	.d2locreg	%offsetof(.Llo80), %offsetof(.Llo68),3
	.d2locreg	%offsetof(.Llo81), %offsetof(.Llo71),28
	.d2locreg	%offsetof(.Llo82), %offsetof(.Llo83),3
	.d2locreg	%offsetof(.Llo84), %offsetof(.Llo85),3
	.d2locreg	%offsetof(.Llo86), %offsetof(.Llo87),3
	.d2locreg	%offsetof(.Llo88), %offsetof(.Llo89),3
	.d2locreg	%offsetof(.Llo90), %offsetof(.Llo75),3
	.d2locreg	%offsetof(.Llo72), %offsetof(.Llo69),28
	.d2locend
.L11580:
	.d2locreg	%offsetof(.Llo80), %offsetof(.Llo71),0
	.d2locreg	%offsetof(.Llo91), %offsetof(.Llo92),0
	.d2locend
.L11590:
	.d2locreg	%offsetof(.Llo93), %offsetof(.Llo94),4
	.d2locreg	%offsetof(.Llo95), %offsetof(.Llo96),3
	.d2locreg	%offsetof(.Llo97), %offsetof(.Llo75),4
	.d2locend
.L11596:
	.d2locreg	%offsetof(.Llo98), %offsetof(.Llo99),3
	.d2locreg	%offsetof(.Llo100), %offsetof(.Llo101),31
	.d2locreg	%offsetof(.Llo102), %offsetof(.Llo103),31
	.d2locend
.L11597:
	.d2locreg	%offsetof(.Llo98), %offsetof(.Llo100),4
	.d2locreg	%offsetof(.Llo104), %offsetof(.Llo105),30
	.d2locreg	%offsetof(.Llo106), %offsetof(.Llo101),30
	.d2locreg	%offsetof(.Llo102), %offsetof(.Llo103),30
	.d2locend
.L11598:
	.d2locreg	%offsetof(.Llo98), %offsetof(.Llo100),5
	.d2locreg	%offsetof(.Llo104), %offsetof(.Llo107),29
	.d2locreg	%offsetof(.Llo108), %offsetof(.Llo105),29
	.d2locreg	%offsetof(.Llo103), %offsetof(.Llo109),5
	.d2locend
.L11600:
	.d2locreg	%offsetof(.Llo110), %offsetof(.Llo111),0
	.d2locreg	%offsetof(.Llo112), %offsetof(.Llo113),0
	.d2locreg	%offsetof(.Llo114), %offsetof(.Llo100),0
	.d2locreg	%offsetof(.Llo115), %offsetof(.Llo116),0
	.d2locreg	%offsetof(.Llo117), %offsetof(.Llo118),0
	.d2locreg	%offsetof(.Llo119), %offsetof(.Llo120),0
	.d2locreg	%offsetof(.Llo121), %offsetof(.Llo122),0
	.d2locreg	%offsetof(.Llo123), %offsetof(.Llo124),0
	.d2locreg	%offsetof(.Llo125), %offsetof(.Llo126),3
	.d2locreg	%offsetof(.Llo127), %offsetof(.Llo108),3
	.d2locreg	%offsetof(.Llo128), %offsetof(.Llo105),0
	.d2locreg	%offsetof(.Llo106), %offsetof(.Llo101),0
	.d2locreg	%offsetof(.Llo129), %offsetof(.Llo102),3
	.d2locreg	%offsetof(.Llo103), %offsetof(.Llo130),3
	.d2locend
.L11602:
	.d2locreg	%offsetof(.Llo98), %offsetof(.Llo131),28
	.d2locreg	%offsetof(.Llo132), %offsetof(.Llo133),28
	.d2locend
.L11609:
	.d2locreg	%offsetof(.Llo134), %offsetof(.Llo135),3
	.d2locreg	%offsetof(.Llo136), %offsetof(.Llo137),31
	.d2locreg	%offsetof(.Llo138), %offsetof(.Llo139),31
	.d2locend
.L11610:
	.d2locreg	%offsetof(.Llo134), %offsetof(.Llo140),4
	.d2locreg	%offsetof(.Llo141), %offsetof(.Llo142),30
	.d2locreg	%offsetof(.Llo138), %offsetof(.Llo139),30
	.d2locend
.L11612:
	.d2locreg	%offsetof(.Llo135), %offsetof(.Llo143),3
	.d2locreg	%offsetof(.Llo144), %offsetof(.Llo136),3
	.d2locreg	%offsetof(.Llo145), %offsetof(.Llo142),29
	.d2locreg	%offsetof(.Llo146), %offsetof(.Llo147),3
	.d2locreg	%offsetof(.Llo148), %offsetof(.Llo137),3
	.d2locreg	%offsetof(.Llo149), %offsetof(.Llo139),29
	.d2locreg	%offsetof(.Llo150), %offsetof(.Llo151),3
	.d2locend
.L11615:
	.d2locreg	%offsetof(.Llo141), %offsetof(.Llo142),28
	.d2locreg	%offsetof(.Llo152), %offsetof(.Llo153),28
	.d2locreg	%offsetof(.Llo138), %offsetof(.Llo139),28
	.d2locend
.L11618:
	.d2locreg	%offsetof(.Llo154), %offsetof(.Llo142),27
	.d2locreg	%offsetof(.Llo138), %offsetof(.Llo139),27
	.d2locend
.L11620:
	.d2locreg	%offsetof(.Llo134), %offsetof(.Llo139),26
	.d2locreg	%offsetof(.Llo155), %offsetof(.Llo156),26
	.d2locend
.L11626:
	.d2locreg	%offsetof(.Llo157), %offsetof(.Llo158),3
	.d2locreg	%offsetof(.Llo148), %offsetof(.Llo137),4
	.d2locreg	%offsetof(.Llo159), %offsetof(.Llo151),4
	.d2locend
.L11632:
	.d2locreg	%offsetof(.Llo160), %offsetof(.Llo161),3
	.d2locend
.L11638:
	.d2locreg	%offsetof(.Llo162), %offsetof(.Llo163),3
	.d2locend
.L11639:
	.d2locreg	%offsetof(.Llo162), %offsetof(.Llo164),4
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "Os_API_MC_TerminateApplication"
	.wrcm.nstrlist "calls", "Os_TerminateApplicationAPI"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Os_API_TerminateApplicationCrossCore"
	.wrcm.nstrlist "calls", "Os_TerminateApplication"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Os_API_TerminateApplication"
	.wrcm.nstrlist "calls", "Os_ApplicationOnOtherCore","Os_Call_ErrorHook","Os_Dispatcher_Alloc_Core","Os_TerminateApplicationAPI","TerminateApplication_Err_Stat"
	.wrcm.nint32 "frameSize", 48
	.wrcm.end
	.wrcm.nelem "TerminateApplication_Err_Stat"
	.wrcm.nstrlist "calls", "Os_ShutdownAllCores"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Os_TerminateApplicationAPI"
	.wrcm.nstrlist "calls", "Os_ApplicationOnOtherCore","Os_Call_ErrorHook","Os_Dispatcher_Alloc_Core","Os_TerminateApplication","TerminateApplication_Err_Dyn"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "TerminateApplication_Err_Dyn"
	.wrcm.nstrlist "calls", "Os_Isr_GetState"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Os_TerminateApplication"
	.wrcm.nstrlist "calls", "Os_AlarmKill","Os_CounterKill","Os_DispatchActivateTask","Os_Isr_Platform_DisableChannel","Os_SchTblKill","Os_TaskKill"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "TerminateApplication"
	.wrcm.nstrlist "calls", "OS_SYS_CALL"
	.wrcm.nint32 "frameSize", 48
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Os_TerminateApplication.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Os_TerminateApplication.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Os_TerminateApplication.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Os_TerminateApplication.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Os_TerminateApplication.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Os_TerminateApplication.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\Os\Os\core\ssc\make\..\src\application\Os_TerminateApplication.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
