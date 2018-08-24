#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Os_ChainTask.c"
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
.L11420:
	.section	.Os_TEXT,,c
#$$ld
.L11416:
	.0byte		.L11414
	.d2_line_start	.debug_line.Os_TEXT
	.section	.Os_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_Isr.h"
        .d2line         227,45
#$$ld
.L11423:

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
.L11424:
	.type		Os_Isr_GetState,@function
	.size		Os_Isr_GetState,.-Os_Isr_GetState
# Number of nodes = 36

# Allocations for Os_Isr_GetState
#	?a4		coreId
# FUNC (StatusType, OS_CODE) ChainTask(VAR (TaskType, AUTOMATIC) taskId)
	.section	.Os_PUBLIC_TEXT,,c
	.align		2
	.section	.debug_line.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_line
.L11441:
	.section	.Os_PUBLIC_TEXT,,c
#$$ld
.L11437:
	.0byte		.L11435
	.d2_line_start	.debug_line.Os_PUBLIC_TEXT
	.section	.Os_PUBLIC_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\task\\Os_ChainTask.c"
        .d2line         72,28
#$$ld
.L11444:

#$$bf	ChainTask,interprocedural,rasave,nostackparams
	.globl		ChainTask
	.d2_cfa_start __cie
ChainTask:
.Llo3:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr		# taskId=r0
	stw		r0,52(r1)		# taskId=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# taskId=r0 taskId=r3
	.d2prologue_end
# {
#     VAR(Os_APICallType,AUTOMATIC) Os_ChainTaskCall;
# 
#     OS_API_ALLOC(Os_ChainTaskCall,ChainTask);
	.d2line		76
.Llo4:
	e_lis		r3,4660
.Llo5:
	e_or2i		r3,22136
	stw		r3,8(r1)
	lis		r3,Os_API_ChainTask@ha
	e_add16i		r3,r3,Os_API_ChainTask@l
	stw		r3,20(r1)
	diab.li		r4,0
	stw		r4,16(r1)
#     Os_ChainTaskCall.Os_API_Data.Os_ApiChainTask.TaskId = taskId;
	.d2line		77
	stw		r0,24(r1)		# taskId=r0
# 
#     OS_SYSCALL(Os_ChainTaskCall);
	.d2line		79
	diab.addi		r3,r1,8
	bl		OS_SYS_CALL
# 
#     return  Os_ChainTaskCall.Os_API_ReturnValue;
	.d2line		81
.Llo6:
	lbz		r3,12(r1)
# }
	.d2line		82
	.d2epilogue_begin
	lwz		r0,52(r1)		# taskId=r0
	mtspr		lr,r0		# taskId=lr
	diab.addi		r1,r1,48		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_PUBLIC_TEXT,,c
#$$ld
.L11445:
	.type		ChainTask,@function
	.size		ChainTask,.-ChainTask
# Number of nodes = 40

# Allocations for ChainTask
#	?a4		taskId
#	SP,8		Os_ChainTaskCall
# LOCAL_INLINE FUNC (StatusType, OS_CODE) Os_ChainTask_Err_Dyn(VAR (TaskType, AUTOMATIC)          taskId,
	.section	.Os_TEXT,,c
	.align		1
	.section	.Os_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\task\\Os_ChainTask.c"
        .d2line         259,41
#$$ld
.L11462:

#$$bf	Os_ChainTask_Err_Dyn,interprocedural,rasave,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r31,cr0,lr
	.d2_cfa_start __cie
Os_ChainTask_Err_Dyn:
.Llo7:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r7,r3		# taskId=r7 taskId=r3
	mr		r31,r4		# callerProc=r31 callerProc=r4
	.d2prologue_end
#                                                    P2CONST(Os_ProcStatType,AUTOMATIC,OS_CONST)  callerProc)
# {
#     VAR (StatusType, AUTOMATIC) retVal;
#     /* The API should not return error if the following conditions satisfies
#      * If calling level is task level
#      * If the parameter is a valid taskId
#      * If the current application can access the taskId
#      * If the number of the task activation is not exceeded
#      *      if the newly activated task and current task are not the same
#      * This activation will not result in the overflow of priority queue of scheduler.
#      * The current task has released all resources that it had acquired */
# 
#     if (Os_Isr_Enabled != Os_Isr_GetState(OS_GETCOREID()))
	.d2line		272
	mfspr		r3,286
.Llo8:
	bl		Os_Isr_GetState
.Llo15:
	se_cmpi		r3,0
	bc		1,2,.L11397	# eq
#     {
#         retVal = OS_GET_ERRORCODE(E_OS_SYS_ERROR, E_OS_DISABLEDINT);  /* [OS093-01-03] [OS093-02-03] */
	.d2line		274
.Llo9:
	diab.li		r3,10		# retVal=r3
	b		.L11398
.L11397:
#     }
# 
#   #ifdef OS_CONFIG_STATUS_EXTENDED
# 
#     else if (0 != callerProc->Os_ProcDyn->Os_ProcResourcesAllocated)
	.d2line		279
	lwz		r3,8(r31)		# callerProc=r31
	lwz		r0,28(r3)
	se_cmpi		r0,0
	bc		1,2,.L11399	# eq
#     {
#         retVal = E_OS_RESOURCE; /* [OS001-025.v1] */
	.d2line		281
	diab.li		r3,6		# retVal=r3
	b		.L11398
.L11399:
#     }
# 
#   #else
# 
#     /* [OS001-031-MGC.v1] */
# 
#   #endif /* OS_CONFIG_STATUS_EXTENDED */
# 
#   #ifdef OS_MODULE_APPLICATION
# 
#     else if( (Os_Proc_Stat[taskId].Os_ProcOwnerApp != callerProc->Os_ProcOwnerApp) &&
	.d2line		292
	lis		r3,(Os_Proc_Stat+48)@ha
	e_add16i		r3,r3,(Os_Proc_Stat+48)@l
	e_mulli		r0,r7,80		# taskId=r7
	lwzx		r0,r3,r0
	lwz		r3,48(r31)		# callerProc=r31
	se_cmpl		r0,r3
	bc		1,2,.L11401	# eq
	lis		r3,(Os_Proc_Stat+48)@ha
	e_add16i		r3,r3,(Os_Proc_Stat+48)@l
	e_mulli		r0,r7,80		# taskId=r7
	lwzx		r3,r3,r0
	lwz		r3,0(r3)
	lbz		r0,0(r3)
	se_cmpi		r0,0
	bc		1,2,.L11401	# eq
#              ((uint8)APPLICATION_ACCESSIBLE != Os_Proc_Stat[taskId].Os_ProcOwnerApp->Os_AppDyn->Os_AppState))
#     {
#         retVal = OS_GET_ERRORCODE(E_OS_SYS_ERROR, E_OS_ACCESS);  /* [OS509-01-02] */
	.d2line		295
	diab.li		r3,1		# retVal=r3
	b		.L11398
.L11401:
#     }
# 
#   #endif  /* OS_MODULE_APPLICATION */
# 
#     else if((taskId != callerProc->Os_ProcId) &&
	.d2line		300
	lwz		r0,0(r31)		# callerProc=r31
	se_cmpl		r0,r7		# taskId=r7
	bc		1,2,.L11403	# eq
.Llo10:
	lis		r3,(Os_Proc_Stat+40)@ha
	e_add16i		r3,r3,(Os_Proc_Stat+40)@l
.Llo11:
	e_mulli		r7,r7,80		# taskId=r7 taskId=r7
.Llo12:
	lwzux		r0,r3,r7
	lis		r3,(Os_Proc_Stat+8)@ha
	e_add16i		r3,r3,(Os_Proc_Stat+8)@l
	lwzx		r3,r3,r7
	lwz		r3,24(r3)
	se_cmpl		r0,r3
	bc		1,1,.L11403	# gt
#             (Os_Proc_Stat[taskId].Os_ProcMaxActivations <= Os_Proc_Stat[taskId].Os_ProcDyn->Os_ProcActivations))
#     {
#             retVal = OS_GET_ERRORCODE( E_OS_LIMIT, E_OS_LIMIT); /* [OS001-028.v1] [OS001-030.v1] */
	.d2line		303
	diab.li		r3,4		# retVal=r3
	b		.L11398
.L11403:
#     }
# 
#   #ifdef OS_MODULE_SPINLOCK
# 
#     else if(callerProc->Os_ProcDyn->Os_ProcSpinlock != NULL_PTR)
	.d2line		308
.Llo13:
	lwz		r3,8(r31)		# callerProc=r31
	lwz		r0,40(r3)		# retVal=r0
	se_cmpi		r0,0		# retVal=r0
#     {
#         retVal = E_OS_SPINLOCK; /*[OS612-02]*/
	.d2line		310
	diab.li		r0,29		# retVal=r0
	isel		r0,r4,r0,2		# retVal=r0 retVal=r4 retVal=r0
.L11405:
#     }
# 
#   #endif    /* OS_MODULE_SPINLOCK */
# 
#     else
#     {
#         retVal = E_OK;
	.d2line		317
.Llo14:
	isel		r3,0,r0,2		# retVal=r3 retVal=r0
.L11398:
#     }
# 
#     return retVal;
	.d2line		320
.Llo16:
	rlwinm		r3,r3,0,24,31		# retVal=r3 retVal=r3
# }
	.d2line		321
	.d2epilogue_begin
.Llo17:
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# retVal=r0
	mtspr		lr,r0		# retVal=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11463:
	.type		Os_ChainTask_Err_Dyn,@function
	.size		Os_ChainTask_Err_Dyn,.-Os_ChainTask_Err_Dyn
# Number of nodes = 108

# Allocations for Os_ChainTask_Err_Dyn
#	?a4		taskId
#	?a5		callerProc
#	?a6		retVal
# LOCAL_INLINE FUNC (StatusType, OS_CODE) Os_ChainTask(VAR (TaskType, AUTOMATIC)              taskId,
	.align		1
	.section	.Os_TEXT,,c
        .d2line         161,41
#$$ld
.L11476:

#$$bf	Os_ChainTask,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Os_ChainTask:
.Llo18:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# taskId=r31 taskId=r3
	mr		r30,r4		# callerProc=r30 callerProc=r4
	.d2prologue_end
#                                                P2CONST(Os_ProcStatType,AUTOMATIC,OS_CONST)  callerProc)
# {
#     CONST (StatusType, AUTOMATIC) retVal = Os_ChainTask_Err_Dyn(taskId,callerProc);
	.d2line		164
	mr		r3,r31		# taskId=r3 taskId=r31
.Llo19:
	mr		r4,r30		# callerProc=r4 callerProc=r30
.Llo28:
	bl		Os_ChainTask_Err_Dyn
.Llo29:
	mr		r29,r3		# retVal=r29 retVal=r3
#     P2CONST(Os_ProcStatType, AUTOMATIC, OS_CONST) requestedTask = &Os_Proc_Stat[taskId];
	.d2line		165
.Llo30:
	lis		r28,Os_Proc_Stat@ha		# taskId=r28
.Llo20:
	e_add16i		r28,r28,Os_Proc_Stat@l		# taskId=r28 taskId=r28
	e_mulli		r3,r31,80		# taskId=r3 taskId=r31
	se_add		r3,r28		# taskId=r3 taskId=r3 taskId=r28
.Llo32:
	mr		r28,r3		# requestedTask=r28 requestedTask=r3
# 
#     if(E_OK == retVal)
	.d2line		167
.Llo21:
	rlwinm		r3,r29,0,24,31		# taskId=r3 retVal=r29
.Llo22:
	se_cmpi		r3,0		# taskId=r3
	bc		0,2,.L11377	# ne
#     {
#       #ifdef OS_MODULE_MULTICORE
#         /* the cross core action must be executed by the dispatcher */
#         if(Os_true == Os_TaskOnOtherCore(taskId)) /* [OS602-01] [OS602-02] */
	.d2line		171
.Llo23:
	mr		r3,r31		# taskId=r3 taskId=r31
.Llo24:
	bl		Os_TaskOnOtherCore
	se_cmpi		r3,1		# taskId=r3
	bc		0,2,.L11378	# ne
	.section	.Os_TEXT,,c
.L11486:
#         {
#             CONSTP2VAR(Os_DispatchElementType, AUTOMATIC, OS_CONST) disp = Os_Dispatcher_Alloc_Core(requestedTask->Os_ProcCoreID);
	.d2line		173
	lhz		r3,4(r28)		# taskId=r3 requestedTask=r28
	bl		Os_Dispatcher_Alloc_Core
.Llo34:
	mr		r4,r3		# disp=r4 disp=r3
#             OS_API_ALLOCINTERNAL(disp, disp->Os_DispatchApiInternal, ActivateTaskCrossCore);
	.d2line		174
.Llo35:
	e_lis		r0,4660
.Llo36:
	e_or2i		r0,22136
	stw		r0,16(r4)		# disp=r4
	lis		r3,Os_API_ActivateTaskCrossCore@ha		# taskId=r3
	e_add16i		r3,r3,Os_API_ActivateTaskCrossCore@l		# taskId=r3 taskId=r3
	stw		r3,28(r4)		# disp=r4 taskId=r3
	diab.li		r0,0
	stw		r0,24(r4)		# disp=r4
	diab.addi		r3,r4,16		# taskId=r3 disp=r4
	stw		r3,12(r4)		# disp=r4 taskId=r3
	diab.li		r0,4
	stw		r0,0(r4)		# disp=r4
#             disp->Os_DispatchApiInternal.Os_API_Data.Os_ApiActivateTask.TaskId = taskId;
	.d2line		175
	stw		r31,32(r4)		# disp=r4 taskId=r31
# 
#             requestedTask->Os_ProcDyn->Os_ProcActivations++;
	.d2line		177
	lwz		r4,8(r28)		# disp=r4 requestedTask=r28
	lwz		r3,24(r4)		# taskId=r3 disp=r4
	se_addi		r3,1		# taskId=r3 taskId=r3
	stw		r3,24(r4)		# disp=r4 taskId=r3
#             Os_Task_Terminate(callerProc); /* [OS001-032.v1] */
	.d2line		178
	mr		r3,r30		# callerProc=r3 callerProc=r30
	bl		Os_Task_Terminate
	.section	.Os_TEXT,,c
.L11487:
.Llo25:
	b		.L11381
.L11378:
#         }
#         else
#       #endif /* OS_MODULE_MULTICORE */
#         {
#             /* [OS001-023.v1] [OS001-032.v1] */
#             Os_Task_Terminate ( callerProc );
	.d2line		184
.Llo26:
	mr		r3,r30		# callerProc=r3 callerProc=r30
	bl		Os_Task_Terminate
#             requestedTask->Os_ProcDyn->Os_ProcActivations++;
	.d2line		185
	lwz		r4,8(r28)		# requestedTask=r28
	lwz		r3,24(r4)		# taskId=r3
	se_addi		r3,1		# taskId=r3 taskId=r3
	stw		r3,24(r4)		# taskId=r3
#             /* [OS001-271.v1] [OS001-021.v2] */
#             Os_Task_Activate ( requestedTask );
	.d2line		187
	mr		r3,r28		# requestedTask=r3 requestedTask=r28
	bl		Os_Task_Activate
	b		.L11381
.L11377:
	.section	.Os_TEXT,,c
.L11496:
#         }
#     }
#     else
#     {
#       #ifdef OS_CONFIG_USEPARAMETERACCESS
# 
#         CONST (CoreIdType, AUTOMATIC)  coreId = OS_GETCOREID();
	.d2line		194
.Llo33:
	mfspr		r0,286		# coreId=r0
.Llo37:
	mr		r0,r0		# coreId=r0 coreId=r0
# 
#         OS_GET_PARAMETER_ERRORCODE ( coreId ).Os_Err_TaskID = taskId;
	.d2line		196
	lis		r3,(Os_Core_DynShared+16)@ha		# taskId=r3
	e_add16i		r3,r3,(Os_Core_DynShared+16)@l		# taskId=r3 taskId=r3
	rlwinm		r0,r0,0,16,31		# coreId=r0 coreId=r0
	e_mulli		r0,r0,152		# coreId=r0 coreId=r0
.Llo38:
	stwx		r31,r3,r0		# taskId=r3 taskId=r31
# 
#       #endif /* OS_CONFIG_USEPARAMETERACCESS */
# 
#         OS_CALL_ERRORHOOK(retVal, OSServiceId_ChainTask, callerProc); /* [OS001-302.v1-03] */
	.d2line		200
	rlwinm		r3,r29,0,24,31		# taskId=r3 retVal=r29
	mr		r5,r30		# callerProc=r5 callerProc=r30
	diab.li		r4,130
	bl		Os_Call_ErrorHook
	.section	.Os_TEXT,,c
.L11497:
.L11381:
#     }
# 
#     return retVal;
	.d2line		203
.Llo27:
	rlwinm		r3,r29,0,24,31		# taskId=r3 retVal=r29
# 
# } /* End ChainTask () */
	.d2line		205
	.d2epilogue_begin
	lmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_restore_list	3,10
.Llo31:
	lwz		r0,36(r1)		# coreId=r0
	mtspr		lr,r0		# coreId=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11477:
	.type		Os_ChainTask,@function
	.size		Os_ChainTask,.-Os_ChainTask
# Number of nodes = 133

# Allocations for Os_ChainTask
#	?a4		taskId
#	?a5		callerProc
#	?a6		$$2355
#	?a7		$$2354
#	?a8		retVal
#	?a9		requestedTask
#	?a10		disp
#	?a11		coreId
# LOCAL_INLINE FUNC (StatusType, OS_CODE) Os_ChainTask_Err_Stat(VAR (TaskType, AUTOMATIC)         taskId,
	.align		1
	.section	.Os_TEXT,,c
        .d2line         214,41
#$$ld
.L11504:

#$$bf	Os_ChainTask_Err_Stat,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Os_ChainTask_Err_Stat:
.Llo39:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# taskId=r31 taskId=r3
	mr		r30,r4		# callerProc=r30 callerProc=r4
	.d2prologue_end
#                                                    P2CONST(Os_ProcStatType,AUTOMATIC,OS_CONST)  callerProc)
# {
#     VAR (StatusType, AUTOMATIC) retVal;
#     /* The API should not return error if the following conditions satisfies
#      * If calling level is task level
#      * If the parameter is a valid taskId
#      * If the current application can access the taskId
#      * If the number of the task activation is not exceeded
#      *      if the newly activated task and current task are not the same
#      * This activation will not result in the overflow of priority queue of scheduler.
#      * The current task has released all resources that it had acquired */
# 
#     if(Os_Proc_Task != callerProc->Os_ProcKind) /* [OS088-01-004] */
	.d2line		227
	lwz		r0,16(r30)		# callerProc=r30
	se_cmpi		r0,0
	bc		1,2,.L11386	# eq
#     {
#         retVal = OS_GET_ERRORCODE(E_OS_SYS_ERROR, E_OS_CALLEVEL); /* [OS088-03-019] [OS001-026.v1] */
	.d2line		229
.Llo40:
	diab.li		r3,2		# retVal=r3
.Llo41:
	b		.L11387
.L11386:
#     }
#     else if(Os_false == Os_Task_CheckId(taskId))
	.d2line		231
.Llo48:
	mr		r3,r31		# taskId=r3 taskId=r31
	bl		Os_Task_CheckId
	se_cmpi		r3,0
	bc		0,2,.L11388	# ne
#     {
#         retVal = OS_GET_ERRORCODE(E_OS_SYS_ERROR, E_OS_ID); /* [OS001-027.v1] */
	.d2line		233
	diab.li		r3,3		# retVal=r3
.Llo49:
	b		.L11387
.L11388:
#     }
#   #ifdef OS_MODULE_APPLICATION
#     else if( Os_Access_Denied == Os_Access_Check( Os_Proc_Stat[taskId].Os_ProcAppAccess,
	.d2line		236
.Llo42:
	lis		r3,(Os_Proc_Stat+52)@ha		# retVal=r3
.Llo50:
	e_add16i		r3,r3,(Os_Proc_Stat+52)@l		# retVal=r3 retVal=r3
.Llo43:
	e_mulli		r31,r31,80		# taskId=r31 taskId=r31
.Llo44:
	lwzx		r3,r3,r31		# retVal=r3 retVal=r3
.Llo51:
	lwz		r4,48(r30)		# callerProc=r30
	lbz		r4,4(r4)
	bl		Os_Access_Check
.Llo52:
	se_cmpi		r3,1		# retVal=r3
#                                                   (ProcType)callerProc->Os_ProcOwnerApp->Os_AppId ) )
#     {
#         retVal = OS_GET_ERRORCODE(E_OS_SYS_ERROR, E_OS_ACCESS); /* [OS448-01-02]  */
	.d2line		239
	diab.li		r3,1		# retVal=r3
	isel		r3,r3,r29,2		# retVal=r3 retVal=r3 retVal=r29
.L11390:
#     }
#   #endif /* OS_MODULE_APPLICATION */
#     else
#     {
#         /* List of requirements that are not checked (automatically satisfied):
#          * [OS088-01-004]
#          */
#         retVal = E_OK;
	.d2line		247
.Llo45:
	diab.li		r0,0
	isel		r3,r3,r0,2		# retVal=r3 retVal=r3
.L11387:
#     }
# 
#     return retVal;
	.d2line		250
.Llo46:
	rlwinm		r3,r3,0,24,31		# retVal=r3 retVal=r3
# }
	.d2line		251
	.d2epilogue_begin
.Llo53:
	lmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo47:
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11505:
	.type		Os_ChainTask_Err_Stat,@function
	.size		Os_ChainTask_Err_Stat,.-Os_ChainTask_Err_Stat
# Number of nodes = 52

# Allocations for Os_ChainTask_Err_Stat
#	?a4		taskId
#	?a5		callerProc
#	?a6		retVal
# OS_API(ChainTask)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         94,1
#$$ld
.L11513:

#$$bf	Os_API_ChainTask,interprocedural,rasave,nostackparams
	.globl		Os_API_ChainTask
	.d2_cfa_start __cie
Os_API_ChainTask:
.Llo54:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr
	stmw		r27,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	27,31,1,1
	stw		r0,52(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# Os_APICall=r31 Os_APICall=r3
	mr		r30,r4		# callerProc=r30 callerProc=r4
	.d2prologue_end
# {
#     VAR (StatusType, AUTOMATIC) retVal;
#     CONST(TaskType,AUTOMATIC)   taskId = Os_APICall->Os_API_Data.Os_ApiChainTask.TaskId;
	.d2line		97
	lwz		r28,16(r31)		# Os_APICall=r31
.Llo73:
	mr		r28,r28		# taskId=r28 taskId=r28
#   #if defined (OS_CONFIG_HOOK) || defined(OS_MODULE_ORTISUPPORT) || defined(OS_CONFIG_USEPARAMETERACCESS)
#     CONST      (CoreIdType,      AUTOMATIC)          coreId      = OS_GETCOREID();
	.d2line		99
	mfspr		r27,286		# coreId=r27
	mr		r27,r27		# coreId=r27 coreId=r27
#   #endif /* OS_CONFIG_HOOK || OS_MODULE_ORTISUPPORT || OS_CONFIG_USEPARAMETERACCESS*/
# 
#     OS_TRACE(ChainTask_Entry , coreId);
	.d2line		102
	diab.li		r0,55
	lis		r3,(Os_Core_DynShared+120)@ha
.Llo55:
	e_add16i		r3,r3,(Os_Core_DynShared+120)@l
	rlwinm		r5,r27,0,16,31		# coreId=r27
	e_mulli		r4,r5,152
.Llo60:
	stbx		r0,r3,r4
# 
#   #ifdef OS_CONFIG_HOOK
# 
#     /* Validate API access and parameters */
#     if(OS_HOOKID_NONE != OS_GET_CORE_HOOK_DYN ( coreId )->Os_HookID)
	.d2line		107
	lis		r3,(Os_Core_Stat+4)@ha
	e_add16i		r3,r3,(Os_Core_Stat+4)@l
	e_mulli		r5,r5,20
	lwzx		r3,r3,r5
	lhz		r0,100(r3)
	se_cmpi		r0,1
	bc		1,2,.L11363	# eq
#     {
#         /* [OS088-03-020] [OS088-03-021] [OS088-03-022] [OS088-03-023] [OS088-03-024]
#          * [OS088-03-025] [OS088-03-026] [OS088-03-347] [OS088-03-347] [OS088-03-380]
#          * [OS088-03-423] [OS-MGC-0056-03] [OS-MGC-0056-46]
#          */
#         OS_FATAL_ERROR(E_OS_SYS_CALLEVEL);
	.d2line		113
.Llo56:
	diab.li		r4,53
	lis		r3,(Os_Core_DynShared+12)@ha
	e_add16i		r3,r3,(Os_Core_DynShared+12)@l
	mfspr		r0,286
	rlwinm		r0,r0,0,16,31
	e_mulli		r0,r0,152
	stwx		r4,r3,r0
	diab.li		r3,30
	bl		Os_ShutdownAllCores
.L11363:
#     }
# 
#   #endif
# 
#     retVal = Os_ChainTask_Err_Stat(taskId, callerProc);
	.d2line		118
	mr		r3,r28		# taskId=r3 taskId=r28
	mr		r4,r30		# callerProc=r4 callerProc=r30
	bl		Os_ChainTask_Err_Stat
.Llo62:
	mr		r29,r3		# retVal=r29 retVal=r3
# 
#     /* Call API if validation was successful */
#     if( E_OK == retVal )
	.d2line		121
	rlwinm		r3,r3,0,24,31		# retVal=r3 retVal=r3
	se_cmpi		r3,0		# retVal=r3
	bc		0,2,.L11365	# ne
#     {
#       #ifdef OS_MODULE_MULTICORE
#         /* The cross-core action must be executed by the dispatcher */
#         if(Os_true == Os_TaskOnOtherCore(taskId)) /*[OS600]*/
	.d2line		125
.Llo63:
	mr		r3,r28		# taskId=r3 taskId=r28
.Llo64:
	bl		Os_TaskOnOtherCore
	se_cmpi		r3,1		# retVal=r3
	bc		0,2,.L11366	# ne
	.section	.Os_TEXT,,c
.L11529:
#         {
#             OS_API_ALLOCAPIREMULTI(ChainTask, OS_GETCOREID(), Os_Proc_Stat[taskId].Os_ProcCoreID);
	.d2line		127
.Llo61:
	mfspr		r3,286		# retVal=r3
.Llo65:
	rlwinm		r3,r3,0,16,31		# retVal=r3 retVal=r3
.Llo66:
	bl		Os_Dispatcher_Alloc_Core
.Llo78:
	mr		r4,r3		# _disp=r4 _disp=r3
.Llo79:
	lis		r3,Os_API_MC_ChainTask@ha		# retVal=r3
.Llo67:
	e_add16i		r3,r3,Os_API_MC_ChainTask@l		# retVal=r3 retVal=r3
	stw		r3,12(r31)		# Os_APICall=r31 retVal=r3
	diab.li		r0,1
	stw		r0,8(r31)		# Os_APICall=r31
	lis		r3,(Os_Proc_Stat+4)@ha		# retVal=r3
	e_add16i		r3,r3,(Os_Proc_Stat+4)@l		# retVal=r3 retVal=r3
.Llo74:
	e_mulli		r28,r28,80		# taskId=r28 taskId=r28
.Llo75:
	lhzx		r0,r3,r28		# retVal=r3
	sth		r0,4(r4)		# _disp=r4
	diab.li		r0,3
	stw		r0,0(r4)		# _disp=r4
	stw		r31,12(r4)		# _disp=r4 Os_APICall=r31
	.section	.Os_TEXT,,c
.L11530:
.Llo57:
	b		.L11369
.L11366:
#         }
#         else
#       #endif /* OS_MODULE_MULTICORE */
#         {
#             Os_APICall->Os_API_ReturnValue = Os_ChainTask(taskId,callerProc);
	.d2line		132
.Llo58:
	mr		r3,r28		# taskId=r3 taskId=r28
	mr		r4,r30		# callerProc=r4 callerProc=r30
	bl		Os_ChainTask
.Llo68:
	stb		r3,4(r31)		# Os_APICall=r31 retVal=r3
	b		.L11369
.L11365:
#         }
#     }
#     else
#     {
#       #ifdef OS_CONFIG_USEPARAMETERACCESS
# 
#         OS_GET_PARAMETER_ERRORCODE ( coreId ).Os_Err_TaskID = taskId;
	.d2line		139
.Llo69:
	lis		r3,(Os_Core_DynShared+16)@ha		# retVal=r3
.Llo70:
	e_add16i		r3,r3,(Os_Core_DynShared+16)@l		# retVal=r3 retVal=r3
	rlwinm		r5,r27,0,16,31		# coreId=r27
	e_mulli		r5,r5,152
	stwx		r28,r3,r5		# retVal=r3 taskId=r28
# 
#       #endif /* OS_CONFIG_USEPARAMETERACCESS */
# 
#         OS_CALL_ERRORHOOK(retVal, OSServiceId_ChainTask,callerProc); /* [OS001-302.v1-03] */
	.d2line		143
	rlwinm		r3,r29,0,24,31		# retVal=r3 retVal=r29
	mr		r5,r30		# callerProc=r5 callerProc=r30
	diab.li		r4,130
	bl		Os_Call_ErrorHook
#         Os_APICall->Os_API_ReturnValue = retVal;
	.d2line		144
	stb		r29,4(r31)		# Os_APICall=r31 retVal=r29
.L11369:
#     }
# 
#     OS_TRACE(ChainTask_Exit , coreId);
	.d2line		147
.Llo59:
	diab.li		r3,54		# retVal=r3
.Llo71:
	lis		r4,(Os_Core_DynShared+120)@ha		# _disp=r4
.Llo80:
	e_add16i		r4,r4,(Os_Core_DynShared+120)@l		# _disp=r4 _disp=r4
.Llo76:
	rlwinm		r27,r27,0,16,31		# coreId=r27 coreId=r27
	e_mulli		r27,r27,152		# coreId=r27 coreId=r27
.Llo77:
	stbx		r3,r4,r27		# _disp=r4 retVal=r3
# }
	.d2line		148
	.d2epilogue_begin
	lmw		r27,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,52(r1)
	mtspr		lr,r0
	diab.addi		r1,r1,48		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo72:
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11514:
	.type		Os_API_ChainTask,@function
	.size		Os_API_ChainTask,.-Os_API_ChainTask
# Number of nodes = 179

# Allocations for Os_API_ChainTask
#	?a4		Os_APICall
#	?a5		callerProc
#	?a6		retVal
#	?a7		taskId
#	?a8		coreId
#	?a9		_disp
# OS_APIMC(ChainTask)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         154,1
#$$ld
.L11537:

#$$bf	Os_API_MC_ChainTask,interprocedural,rasave,nostackparams
	.globl		Os_API_MC_ChainTask
	.d2_cfa_start __cie
Os_API_MC_ChainTask:
.Llo81:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# Os_APICall=r31 Os_APICall=r3
	.d2prologue_end
# {
#     Os_APICall->Os_API_ReturnValue = Os_ChainTask(Os_APICall->Os_API_Data.Os_ApiChainTask.TaskId, callerProc);
	.d2line		156
.Llo82:
	lwz		r3,16(r31)		# Os_APICall=r31
.Llo83:
	mr		r0,r4		# callerProc=r0 callerProc=r4
	bl		Os_ChainTask
.Llo85:
	stb		r3,4(r31)		# Os_APICall=r31
# }
	.d2line		157
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo84:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11538:
	.type		Os_API_MC_ChainTask,@function
	.size		Os_API_MC_ChainTask,.-Os_API_MC_ChainTask
# Number of nodes = 14

# Allocations for Os_API_MC_ChainTask
#	?a4		Os_APICall
#	?a5		callerProc

# Allocations for module
	.section	.text_vle
	.0byte		.L11542
	.section	.text_vle
	.0byte		.L11546
	.section	.Os_BSS,,b
	.0byte		.L11553
	.section	.text_vle
#$$ld
.L5:
.L12031:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_Types.h"
.L12028:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ApplicationApiTypes.h"
.L12026:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ScheduleTableApiTypes.h"
.L12024:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_TaskApiTypes.h"
.L12022:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_SpinlockApiTypes.h"
.L12010:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_Isr.h"
.L12005:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\PowerPC\\WindRiver\\AUTOSAR\\ar422\\MemMap.h"
.L12003:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_InternalTypes.h"
.L11986:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ErrorApiTypes.h"
.L11966:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ExceptionApiTypes.h"
.L11921:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_ApplicationCfgTypes.h"
.L11872:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_HookApiTypes.h"
.L11847:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_TrustedFunctionCfgTypes.h"
.L11609:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_ApiDispatchCfgTypes.h"
.L11558:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_SchedulerCfgTypes.h"
.L11547:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_CoreCfgTypes.h"
.L11543:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_TaskCfgTypes.h"
	.d2_line_end
	.section	.Os_TEXT,,c
#$$ld
.L11417:
.L11464:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\task\\Os_ChainTask.c"
.L11425:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_Isr.h"
	.d2_line_end
	.section	.Os_PUBLIC_TEXT,,c
#$$ld
.L11438:
.L11446:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\task\\Os_ChainTask.c"
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\task\\Os_ChainTask.c"
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
.L11414:
	.4byte		.L11415-.L11413
.L11413:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L11419-.L11414
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\task\\Os_ChainTask.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L11416
	.4byte		.L11417
	.4byte		.L11420
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11428:
	.sleb128	2
	.4byte		.L11422-.L11414
	.byte		"Os_Isr_GetState"
	.byte		0
	.4byte		.L11425
	.uleb128	227
	.uleb128	45
	.4byte		.L11426
	.byte		0x1
	.4byte		.L11423
	.4byte		.L11424
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L11425
	.uleb128	227
	.uleb128	45
	.byte		"coreId"
	.byte		0
	.4byte		.L11429
	.4byte		.L11433
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11422:
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
.L11435:
	.4byte		.L11436-.L11434
.L11434:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L11440-.L11435
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\task\\Os_ChainTask.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L11437
	.4byte		.L11438
	.4byte		.L11441
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
.L11450:
	.sleb128	4
	.4byte		.L11443-.L11435
	.byte		"ChainTask"
	.byte		0
	.4byte		.L11446
	.uleb128	72
	.uleb128	28
	.4byte		.L11447
	.byte		0x1
	.byte		0x1
	.4byte		.L11444
	.4byte		.L11445
	.sleb128	3
	.4byte		.L11446
	.uleb128	72
	.uleb128	28
	.byte		"taskId"
	.byte		0
	.4byte		.L11451
	.4byte		.L11456
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
.L11457:
	.sleb128	5
	.4byte		.L11446
	.uleb128	74
	.uleb128	35
	.byte		"Os_ChainTaskCall"
	.byte		0
	.4byte		.L11458
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11443:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11465:
	.sleb128	2
	.4byte		.L11461-.L11414
	.byte		"Os_ChainTask_Err_Dyn"
	.byte		0
	.4byte		.L11464
	.uleb128	259
	.uleb128	41
	.4byte		.L11447
	.byte		0x1
	.4byte		.L11462
	.4byte		.L11463
	.sleb128	3
	.4byte		.L11464
	.uleb128	259
	.uleb128	41
	.byte		"taskId"
	.byte		0
	.4byte		.L11451
	.4byte		.L11466
	.sleb128	3
	.4byte		.L11464
	.uleb128	259
	.uleb128	41
	.byte		"callerProc"
	.byte		0
	.4byte		.L11467
	.4byte		.L11471
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11472:
	.sleb128	6
	.4byte		.L11464
	.uleb128	262
	.uleb128	33
	.byte		"retVal"
	.byte		0
	.4byte		.L11447
	.4byte		.L11473
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11461:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11478:
	.sleb128	2
	.4byte		.L11475-.L11414
	.byte		"Os_ChainTask"
	.byte		0
	.4byte		.L11464
	.uleb128	161
	.uleb128	41
	.4byte		.L11447
	.byte		0x1
	.4byte		.L11476
	.4byte		.L11477
	.sleb128	3
	.4byte		.L11464
	.uleb128	161
	.uleb128	41
	.byte		"taskId"
	.byte		0
	.4byte		.L11451
	.4byte		.L11479
	.sleb128	3
	.4byte		.L11464
	.uleb128	161
	.uleb128	41
	.byte		"callerProc"
	.byte		0
	.4byte		.L11467
	.4byte		.L11480
.L11481:
	.sleb128	6
	.4byte		.L11464
	.uleb128	164
	.uleb128	35
	.byte		"retVal"
	.byte		0
	.4byte		.L11482
	.4byte		.L11483
.L11484:
	.sleb128	6
	.4byte		.L11464
	.uleb128	165
	.uleb128	51
	.byte		"requestedTask"
	.byte		0
	.4byte		.L11467
	.4byte		.L11485
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	7
	.4byte		.L11489
	.4byte		.L11486
	.4byte		.L11487
.L11490:
	.sleb128	6
	.4byte		.L11464
	.uleb128	173
	.uleb128	69
	.byte		"disp"
	.byte		0
	.4byte		.L11491
	.4byte		.L11495
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11489:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	7
	.4byte		.L11499
	.4byte		.L11496
	.4byte		.L11497
.L11500:
	.sleb128	6
	.4byte		.L11464
	.uleb128	194
	.uleb128	40
	.byte		"coreId"
	.byte		0
	.4byte		.L11429
	.4byte		.L11501
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11499:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11475:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11506:
	.sleb128	2
	.4byte		.L11503-.L11414
	.byte		"Os_ChainTask_Err_Stat"
	.byte		0
	.4byte		.L11464
	.uleb128	214
	.uleb128	41
	.4byte		.L11447
	.byte		0x1
	.4byte		.L11504
	.4byte		.L11505
	.sleb128	3
	.4byte		.L11464
	.uleb128	214
	.uleb128	41
	.byte		"taskId"
	.byte		0
	.4byte		.L11451
	.4byte		.L11507
	.sleb128	3
	.4byte		.L11464
	.uleb128	214
	.uleb128	41
	.byte		"callerProc"
	.byte		0
	.4byte		.L11467
	.4byte		.L11508
.L11509:
	.sleb128	6
	.4byte		.L11464
	.uleb128	217
	.uleb128	33
	.byte		"retVal"
	.byte		0
	.4byte		.L11447
	.4byte		.L11510
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11503:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11515:
	.sleb128	8
	.4byte		.L11512-.L11414
	.byte		"Os_API_ChainTask"
	.byte		0
	.4byte		.L11464
	.uleb128	94
	.uleb128	1
	.byte		0x1
	.byte		0x1
	.4byte		.L11513
	.4byte		.L11514
	.sleb128	3
	.4byte		.L11464
	.uleb128	94
	.uleb128	1
	.byte		"Os_APICall"
	.byte		0
	.4byte		.L11516
	.4byte		.L11517
	.sleb128	3
	.4byte		.L11464
	.uleb128	94
	.uleb128	1
	.byte		"callerProc"
	.byte		0
	.4byte		.L11518
	.4byte		.L11521
.L11522:
	.sleb128	6
	.4byte		.L11464
	.uleb128	96
	.uleb128	33
	.byte		"retVal"
	.byte		0
	.4byte		.L11447
	.4byte		.L11523
.L11524:
	.sleb128	6
	.4byte		.L11464
	.uleb128	97
	.uleb128	33
	.byte		"taskId"
	.byte		0
	.4byte		.L11525
	.4byte		.L11526
.L11527:
	.sleb128	6
	.4byte		.L11464
	.uleb128	99
	.uleb128	54
	.byte		"coreId"
	.byte		0
	.4byte		.L11429
	.4byte		.L11528
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	7
	.4byte		.L11532
	.4byte		.L11529
	.4byte		.L11530
.L11533:
	.sleb128	6
	.4byte		.L11464
	.uleb128	127
	.uleb128	13
	.byte		"_disp"
	.byte		0
	.4byte		.L11492
	.4byte		.L11534
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11532:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11512:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11539:
	.sleb128	8
	.4byte		.L11536-.L11414
	.byte		"Os_API_MC_ChainTask"
	.byte		0
	.4byte		.L11464
	.uleb128	154
	.uleb128	1
	.byte		0x1
	.byte		0x1
	.4byte		.L11537
	.4byte		.L11538
	.sleb128	3
	.4byte		.L11464
	.uleb128	154
	.uleb128	1
	.byte		"Os_APICall"
	.byte		0
	.4byte		.L11516
	.4byte		.L11540
	.sleb128	3
	.4byte		.L11464
	.uleb128	154
	.uleb128	1
	.byte		"callerProc"
	.byte		0
	.4byte		.L11518
	.4byte		.L11541
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11536:
	.section	.debug_info,,n
.L11542:
	.sleb128	9
	.byte		0x1
	.byte		0x1
	.4byte		.L11543
	.uleb128	211
	.uleb128	45
	.byte		"Os_Proc_Stat"
	.byte		0
	.4byte		.L11544
	.section	.debug_info,,n
.L11546:
	.sleb128	9
	.byte		0x1
	.byte		0x1
	.4byte		.L11547
	.uleb128	169
	.uleb128	42
	.byte		"Os_Core_Stat"
	.byte		0
	.4byte		.L11548
	.section	.debug_info,,n
.L11553:
	.sleb128	9
	.byte		0x1
	.byte		0x1
	.4byte		.L11547
	.uleb128	181
	.uleb128	45
	.byte		"Os_Core_DynShared"
	.byte		0
	.4byte		.L11554
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11552:
	.sleb128	10
	.4byte		.L11558
	.uleb128	69
	.uleb128	1
	.4byte		.L11559-.L2
	.uleb128	20
	.section	.debug_info,,n
.L788:
	.sleb128	11
	.byte		"Os_Core_DynInit"
	.byte		0
	.4byte		.L11560
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L789:
	.sleb128	11
	.byte		"Os_Core_Dyn"
	.byte		0
	.4byte		.L11564
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L790:
	.sleb128	11
	.byte		"Os_DispatchElement"
	.byte		0
	.4byte		.L11491
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L791:
	.sleb128	11
	.byte		"Os_PrepareContextFunction"
	.byte		0
	.4byte		.L11568
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L792:
	.sleb128	11
	.byte		"Os_GetStackPointerFunction"
	.byte		0
	.4byte		.L11574
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11559:
.L11563:
	.sleb128	10
	.4byte		.L11558
	.uleb128	69
	.uleb128	1
	.4byte		.L11581-.L2
	.uleb128	36
.L785:
	.sleb128	11
	.byte		"Os_IsrDynInit"
	.byte		0
	.4byte		.L11582
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L786:
	.sleb128	11
	.byte		"Os_SchedulerDynInit"
	.byte		0
	.4byte		.L11584
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L787:
	.sleb128	11
	.byte		"Os_CurrentApp"
	.byte		0
	.4byte		.L11586
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
	.sleb128	0
.L11581:
.L11557:
	.sleb128	10
	.4byte		.L11558
	.uleb128	69
	.uleb128	1
	.4byte		.L11590-.L2
	.uleb128	152
.L778:
	.sleb128	11
	.byte		"Os_Dispatcher"
	.byte		0
	.4byte		.L11591
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L779:
	.sleb128	11
	.byte		"Os_PublicDataNoInit"
	.byte		0
	.4byte		.L11593
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11590:
.L11567:
	.sleb128	10
	.4byte		.L11558
	.uleb128	69
	.uleb128	1
	.4byte		.L11595-.L2
	.uleb128	104
.L775:
	.sleb128	11
	.byte		"Os_SchedulerDyn"
	.byte		0
	.4byte		.L11596
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L776:
	.sleb128	11
	.byte		"Os_IsrDyn"
	.byte		0
	.4byte		.L11598
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L777:
	.sleb128	11
	.byte		"Os_HooksDyn"
	.byte		0
	.4byte		.L11600
	.sleb128	2
	.byte		0x23
	.uleb128	100
	.byte		0x1
	.sleb128	0
.L11595:
.L11585:
	.sleb128	10
	.4byte		.L11558
	.uleb128	69
	.uleb128	1
	.4byte		.L11602-.L2
	.uleb128	4
.L774:
	.sleb128	11
	.byte		"Os_SchedulerCurrentProc"
	.byte		0
	.4byte		.L11519
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11602:
.L11597:
	.sleb128	10
	.4byte		.L11558
	.uleb128	69
	.uleb128	1
	.4byte		.L11603-.L2
	.uleb128	48
.L766:
	.sleb128	11
	.byte		"Os_CurrentContext"
	.byte		0
	.4byte		.L11579
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L767:
	.sleb128	11
	.byte		"Os_PreviousContext"
	.byte		0
	.4byte		.L11579
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L768:
	.sleb128	11
	.byte		"Os_SchedulerScheduleAction"
	.byte		0
	.4byte		.L11604
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L769:
	.sleb128	11
	.byte		"Os_SchedulerLastScheduledPriority"
	.byte		0
	.4byte		.L11606
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L770:
	.sleb128	11
	.byte		"Os_SchedulerCurrentTask"
	.byte		0
	.4byte		.L11519
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L771:
	.sleb128	11
	.byte		"Os_SchedulerLastScheduledProc"
	.byte		0
	.4byte		.L11519
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L772:
	.sleb128	11
	.byte		"Os_SchedulerHeadPivot"
	.byte		0
	.4byte		.L11607
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L773:
	.sleb128	11
	.byte		"Os_SchedulerTailPivot"
	.byte		0
	.4byte		.L11607
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
	.sleb128	0
.L11603:
	.section	.debug_info,,n
.L11608:
	.sleb128	12
	.4byte		.L11609
	.uleb128	612
	.uleb128	1
	.4byte		.L11610-.L2
	.byte		"Os_SchedulerQueueElementType_s"
	.byte		0
	.uleb128	12
.L752:
	.sleb128	11
	.byte		"Os_QueueProc"
	.byte		0
	.4byte		.L11519
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L753:
	.sleb128	11
	.byte		"Os_QueueFrontElement"
	.byte		0
	.4byte		.L11611
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L754:
	.sleb128	11
	.byte		"Os_QueueBackElement"
	.byte		0
	.4byte		.L11611
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11610:
.L11583:
	.sleb128	10
	.4byte		.L11609
	.uleb128	612
	.uleb128	1
	.4byte		.L11612-.L2
	.uleb128	28
.L745:
	.sleb128	11
	.byte		"Os_CurrentUserModePriority"
	.byte		0
	.4byte		.L11613
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L746:
	.sleb128	11
	.byte		"Os_UserModePriorityChanged"
	.byte		0
	.4byte		.L11614
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L747:
	.sleb128	11
	.byte		"Os_DisableAllCount"
	.byte		0
	.4byte		.L11454
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L748:
	.sleb128	11
	.byte		"Os_SuspendAllCount"
	.byte		0
	.4byte		.L11454
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L749:
	.sleb128	11
	.byte		"Os_SuspendOSCount"
	.byte		0
	.4byte		.L11454
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L750:
	.sleb128	11
	.byte		"Os_SavedIsrLevel"
	.byte		0
	.4byte		.L11613
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L751:
	.sleb128	11
	.byte		"Os_SavedOSIsrLevel"
	.byte		0
	.4byte		.L11613
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
	.sleb128	0
.L11612:
.L11599:
	.sleb128	10
	.4byte		.L11609
	.uleb128	612
	.uleb128	1
	.4byte		.L11615-.L2
	.uleb128	52
.L739:
	.sleb128	11
	.byte		"Os_IsrRunningIsr"
	.byte		0
	.4byte		.L11519
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L740:
	.sleb128	11
	.byte		"Os_IsrNeedToClear"
	.byte		0
	.4byte		.L11616
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L741:
	.sleb128	11
	.byte		"Os_Isr_NestLevel"
	.byte		0
	.4byte		.L11454
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L742:
	.sleb128	11
	.byte		"Os_Isr_ServicesBackup"
	.byte		0
	.4byte		.L11620
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L743:
	.sleb128	11
	.byte		"Os_SuspendAllPrevIsrState"
	.byte		0
	.4byte		.L11613
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L744:
	.sleb128	11
	.byte		"Os_SuspendCounterpartTrack"
	.byte		0
	.4byte		.L11624
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L11615:
.L11592:
	.sleb128	10
	.4byte		.L11609
	.uleb128	612
	.uleb128	1
	.4byte		.L11626-.L2
	.uleb128	8
.L737:
	.sleb128	11
	.byte		"Os_DHead"
	.byte		0
	.4byte		.L11454
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L738:
	.sleb128	11
	.byte		"Os_DTail"
	.byte		0
	.4byte		.L11454
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11626:
.L11494:
	.sleb128	12
	.4byte		.L11609
	.uleb128	612
	.uleb128	1
	.4byte		.L11627-.L2
	.byte		"Os_DispatchElementType_s"
	.byte		0
	.uleb128	56
.L732:
	.sleb128	11
	.byte		"Os_DispatchKind"
	.byte		0
	.4byte		.L11628
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L733:
	.sleb128	11
	.byte		"Os_DispatcherLockCoreId"
	.byte		0
	.4byte		.L11430
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L734:
	.sleb128	11
	.byte		"Os_DispatchIsrId"
	.byte		0
	.4byte		.L11630
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L735:
	.sleb128	11
	.byte		"Os_DispatchApiCall"
	.byte		0
	.4byte		.L11631
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L736:
	.sleb128	11
	.byte		"Os_DispatchApiInternal"
	.byte		0
	.4byte		.L11458
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11627:
.L11459:
	.sleb128	12
	.4byte		.L11609
	.uleb128	60
	.uleb128	1
	.4byte		.L11632-.L2
	.byte		"Os_APICallType_struct"
	.byte		0
	.uleb128	40
.L727:
	.sleb128	11
	.byte		"Os_API_Magic"
	.byte		0
	.4byte		.L11454
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L728:
	.sleb128	11
	.byte		"Os_API_ReturnValue"
	.byte		0
	.4byte		.L11447
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L729:
	.sleb128	11
	.byte		"Os_API_Lock"
	.byte		0
	.4byte		.L11633
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L730:
	.sleb128	11
	.byte		"Os_API_Func"
	.byte		0
	.4byte		.L11635
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L731:
	.sleb128	11
	.byte		"Os_API_Data"
	.byte		0
	.4byte		.L11639
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11632:
	.section	.debug_info,,n
.L11639:
	.sleb128	13
	.4byte		.L11609
	.uleb128	60
	.uleb128	1
	.4byte		.L11640-.L2
	.uleb128	24
.L679:
	.sleb128	11
	.byte		"Os_ApiStartOs"
	.byte		0
	.4byte		.L11641
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L680:
	.sleb128	11
	.byte		"Os_ApiShutdownOs"
	.byte		0
	.4byte		.L11643
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L681:
	.sleb128	11
	.byte		"Os_ApiShutdownOsInternal"
	.byte		0
	.4byte		.L11645
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L682:
	.sleb128	11
	.byte		"Os_ApiShutdownAllCores"
	.byte		0
	.4byte		.L11647
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L683:
	.sleb128	11
	.byte		"Os_ApiGetNumberOfActivatedCores"
	.byte		0
	.4byte		.L11649
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L684:
	.sleb128	11
	.byte		"Os_ApiStartCore"
	.byte		0
	.4byte		.L11651
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L685:
	.sleb128	11
	.byte		"Os_ApiStartNonAutosarCore"
	.byte		0
	.4byte		.L11653
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L686:
	.sleb128	11
	.byte		"Os_ApiGetCoreID"
	.byte		0
	.4byte		.L11655
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L687:
	.sleb128	11
	.byte		"Os_ApiActivateTask"
	.byte		0
	.4byte		.L11657
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L688:
	.sleb128	11
	.byte		"Os_ApiChainTask"
	.byte		0
	.4byte		.L11659
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L689:
	.sleb128	11
	.byte		"Os_ApiGetTaskID"
	.byte		0
	.4byte		.L11661
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L690:
	.sleb128	11
	.byte		"Os_ApiGetTaskState"
	.byte		0
	.4byte		.L11663
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L691:
	.sleb128	11
	.byte		"Os_ApiSetEvent"
	.byte		0
	.4byte		.L11665
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L692:
	.sleb128	11
	.byte		"Os_ApiClearEvent"
	.byte		0
	.4byte		.L11667
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L693:
	.sleb128	11
	.byte		"Os_ApiGetEvent"
	.byte		0
	.4byte		.L11669
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L694:
	.sleb128	11
	.byte		"Os_ApiWaitEvent"
	.byte		0
	.4byte		.L11671
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L695:
	.sleb128	11
	.byte		"Os_ApiGetResource"
	.byte		0
	.4byte		.L11673
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L696:
	.sleb128	11
	.byte		"Os_ApiReleaseResource"
	.byte		0
	.4byte		.L11675
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L697:
	.sleb128	11
	.byte		"Os_ApiGetAlarmBase"
	.byte		0
	.4byte		.L11677
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L698:
	.sleb128	11
	.byte		"Os_ApiGetAlarm"
	.byte		0
	.4byte		.L11679
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L699:
	.sleb128	11
	.byte		"Os_ApiSetRelAlarm"
	.byte		0
	.4byte		.L11681
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L700:
	.sleb128	11
	.byte		"Os_ApiSetAbsAlarm"
	.byte		0
	.4byte		.L11683
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L701:
	.sleb128	11
	.byte		"Os_ApiCancelAlarm"
	.byte		0
	.4byte		.L11685
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L702:
	.sleb128	11
	.byte		"Os_ApiGetApplicationState"
	.byte		0
	.4byte		.L11687
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L703:
	.sleb128	11
	.byte		"Os_ApiTerminateApplication"
	.byte		0
	.4byte		.L11689
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L704:
	.sleb128	11
	.byte		"Os_ApiGetApplicationID"
	.byte		0
	.4byte		.L11691
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L705:
	.sleb128	11
	.byte		"Os_ApiGetISRID"
	.byte		0
	.4byte		.L11693
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L706:
	.sleb128	11
	.byte		"Os_ApiGetActiveApplicationMode"
	.byte		0
	.4byte		.L11695
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L707:
	.sleb128	11
	.byte		"Os_ApiIncrementCounter"
	.byte		0
	.4byte		.L11697
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L708:
	.sleb128	11
	.byte		"Os_ApiGetCounterValue"
	.byte		0
	.4byte		.L11699
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L709:
	.sleb128	11
	.byte		"Os_ApiGetElapsedValue"
	.byte		0
	.4byte		.L11701
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L710:
	.sleb128	11
	.byte		"Os_ApiStartScheduleTableAbs"
	.byte		0
	.4byte		.L11703
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L711:
	.sleb128	11
	.byte		"Os_ApiStartScheduleTableRel"
	.byte		0
	.4byte		.L11705
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L712:
	.sleb128	11
	.byte		"Os_ApiStopScheduleTable"
	.byte		0
	.4byte		.L11707
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L713:
	.sleb128	11
	.byte		"Os_ApiGetScheduleTableStatus"
	.byte		0
	.4byte		.L11709
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L714:
	.sleb128	11
	.byte		"Os_ApiNextScheduleTable"
	.byte		0
	.4byte		.L11711
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L715:
	.sleb128	11
	.byte		"Os_ApiStartScheduleTableSynchron"
	.byte		0
	.4byte		.L11713
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L716:
	.sleb128	11
	.byte		"Os_ApiSyncScheduleTable"
	.byte		0
	.4byte		.L11715
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L717:
	.sleb128	11
	.byte		"Os_ApiSetScheduleTableAsync"
	.byte		0
	.4byte		.L11717
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L718:
	.sleb128	11
	.byte		"Os_ApiCheckObjectAccess"
	.byte		0
	.4byte		.L11719
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L719:
	.sleb128	11
	.byte		"Os_ApiCheckObjectOwnership"
	.byte		0
	.4byte		.L11721
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L720:
	.sleb128	11
	.byte		"Os_ApiCallTrustedFunction"
	.byte		0
	.4byte		.L11723
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L721:
	.sleb128	11
	.byte		"Os_ApiStackUsage"
	.byte		0
	.4byte		.L11725
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L722:
	.sleb128	11
	.byte		"Os_API_GetSpinlock"
	.byte		0
	.4byte		.L11727
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L723:
	.sleb128	11
	.byte		"Os_API_ReleaseSpinlock"
	.byte		0
	.4byte		.L11729
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L724:
	.sleb128	11
	.byte		"Os_API_TryToGetSpinlock"
	.byte		0
	.4byte		.L11731
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L725:
	.sleb128	11
	.byte		"Os_API_IOCTransfer"
	.byte		0
	.4byte		.L11733
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L726:
	.sleb128	11
	.byte		"Os_ApiControlIdle"
	.byte		0
	.4byte		.L11735
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11640:
.L11736:
	.sleb128	10
	.4byte		.L11609
	.uleb128	60
	.uleb128	1
	.4byte		.L11737-.L2
	.uleb128	8
.L677:
	.sleb128	11
	.byte		"CoreID"
	.byte		0
	.4byte		.L11430
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L678:
	.sleb128	11
	.byte		"IdleMode"
	.byte		0
	.4byte		.L11738
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11737:
.L11734:
	.sleb128	10
	.4byte		.L11609
	.uleb128	60
	.uleb128	1
	.4byte		.L11740-.L2
	.uleb128	8
.L675:
	.sleb128	11
	.byte		"Ioc_Channel"
	.byte		0
	.4byte		.L11741
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L676:
	.sleb128	11
	.byte		"Ioc_Data"
	.byte		0
	.4byte		.L11745
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11740:
.L11732:
	.sleb128	10
	.4byte		.L11609
	.uleb128	60
	.uleb128	1
	.4byte		.L11751-.L2
	.uleb128	8
.L673:
	.sleb128	11
	.byte		"SpinlockId"
	.byte		0
	.4byte		.L11752
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L674:
	.sleb128	11
	.byte		"Success"
	.byte		0
	.4byte		.L11753
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11751:
.L11730:
	.sleb128	10
	.4byte		.L11609
	.uleb128	60
	.uleb128	1
	.4byte		.L11756-.L2
	.uleb128	2
.L672:
	.sleb128	11
	.byte		"SpinlockId"
	.byte		0
	.4byte		.L11752
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11756:
.L11728:
	.sleb128	10
	.4byte		.L11609
	.uleb128	60
	.uleb128	1
	.4byte		.L11757-.L2
	.uleb128	2
.L671:
	.sleb128	11
	.byte		"SpinlockId"
	.byte		0
	.4byte		.L11752
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11757:
.L11726:
	.sleb128	10
	.4byte		.L11609
	.uleb128	60
	.uleb128	1
	.4byte		.L11758-.L2
	.uleb128	20
.L666:
	.sleb128	11
	.byte		"ProcId"
	.byte		0
	.4byte		.L11451
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L667:
	.sleb128	11
	.byte		"MaxUsage"
	.byte		0
	.4byte		.L11448
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L668:
	.sleb128	11
	.byte		"MaxUsageRef"
	.byte		0
	.4byte		.L11759
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L669:
	.sleb128	11
	.byte		"CurrentUsage"
	.byte		0
	.4byte		.L11448
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L670:
	.sleb128	11
	.byte		"CurrentUsageRef"
	.byte		0
	.4byte		.L11759
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11758:
.L11724:
	.sleb128	10
	.4byte		.L11609
	.uleb128	60
	.uleb128	1
	.4byte		.L11760-.L2
	.uleb128	12
.L663:
	.sleb128	11
	.byte		"FunctionIndex"
	.byte		0
	.4byte		.L11761
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L664:
	.sleb128	11
	.byte		"ParamRef"
	.byte		0
	.4byte		.L11762
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L665:
	.sleb128	11
	.byte		"ReturnValue"
	.byte		0
	.4byte		.L11763
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11760:
.L11722:
	.sleb128	10
	.4byte		.L11609
	.uleb128	60
	.uleb128	1
	.4byte		.L11765-.L2
	.uleb128	12
.L660:
	.sleb128	11
	.byte		"AppID"
	.byte		0
	.4byte		.L11766
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L661:
	.sleb128	11
	.byte		"ObjectType"
	.byte		0
	.4byte		.L11767
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L662:
	.sleb128	11
	.byte		"Object"
	.byte		0
	.4byte		.L11453
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11765:
.L11720:
	.sleb128	10
	.4byte		.L11609
	.uleb128	60
	.uleb128	1
	.4byte		.L11769-.L2
	.uleb128	12
.L657:
	.sleb128	11
	.byte		"AppID"
	.byte		0
	.4byte		.L11766
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L658:
	.sleb128	11
	.byte		"ObjectType"
	.byte		0
	.4byte		.L11767
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L659:
	.sleb128	11
	.byte		"Object"
	.byte		0
	.4byte		.L11453
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11769:
.L11686:
	.sleb128	10
	.4byte		.L11609
	.uleb128	60
	.uleb128	1
	.4byte		.L11770-.L2
	.uleb128	4
.L656:
	.sleb128	11
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11771
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11770:
.L11684:
	.sleb128	10
	.4byte		.L11609
	.uleb128	60
	.uleb128	1
	.4byte		.L11772-.L2
	.uleb128	12
.L653:
	.sleb128	11
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11771
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L654:
	.sleb128	11
	.byte		"Start"
	.byte		0
	.4byte		.L11773
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L655:
	.sleb128	11
	.byte		"Cycle"
	.byte		0
	.4byte		.L11773
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11772:
.L11682:
	.sleb128	10
	.4byte		.L11609
	.uleb128	60
	.uleb128	1
	.4byte		.L11774-.L2
	.uleb128	12
.L650:
	.sleb128	11
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11771
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L651:
	.sleb128	11
	.byte		"Increment"
	.byte		0
	.4byte		.L11773
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L652:
	.sleb128	11
	.byte		"Cycle"
	.byte		0
	.4byte		.L11773
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11774:
.L11680:
	.sleb128	10
	.4byte		.L11609
	.uleb128	60
	.uleb128	1
	.4byte		.L11775-.L2
	.uleb128	8
.L648:
	.sleb128	11
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11771
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L649:
	.sleb128	11
	.byte		"TickRef"
	.byte		0
	.4byte		.L11776
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11775:
.L11678:
	.sleb128	10
	.4byte		.L11609
	.uleb128	60
	.uleb128	1
	.4byte		.L11778-.L2
	.uleb128	8
.L646:
	.sleb128	11
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11771
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L647:
	.sleb128	11
	.byte		"AlarmBaseTypeRef"
	.byte		0
	.4byte		.L11779
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11778:
.L11718:
	.sleb128	10
	.4byte		.L11609
	.uleb128	60
	.uleb128	1
	.4byte		.L11783-.L2
	.uleb128	4
.L645:
	.sleb128	11
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11784
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11783:
.L11716:
	.sleb128	10
	.4byte		.L11609
	.uleb128	60
	.uleb128	1
	.4byte		.L11785-.L2
	.uleb128	8
.L643:
	.sleb128	11
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11784
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L644:
	.sleb128	11
	.byte		"SyncValue"
	.byte		0
	.4byte		.L11773
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11785:
.L11714:
	.sleb128	10
	.4byte		.L11609
	.uleb128	60
	.uleb128	1
	.4byte		.L11786-.L2
	.uleb128	4
.L642:
	.sleb128	11
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11784
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11786:
.L11712:
	.sleb128	10
	.4byte		.L11609
	.uleb128	60
	.uleb128	1
	.4byte		.L11787-.L2
	.uleb128	8
.L640:
	.sleb128	11
	.byte		"SchTblIdFrom"
	.byte		0
	.4byte		.L11784
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L641:
	.sleb128	11
	.byte		"SchTblIdTo"
	.byte		0
	.4byte		.L11784
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11787:
.L11710:
	.sleb128	10
	.4byte		.L11609
	.uleb128	60
	.uleb128	1
	.4byte		.L11788-.L2
	.uleb128	8
.L638:
	.sleb128	11
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11784
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L639:
	.sleb128	11
	.byte		"SchTblStatus"
	.byte		0
	.4byte		.L11789
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11788:
.L11708:
	.sleb128	10
	.4byte		.L11609
	.uleb128	60
	.uleb128	1
	.4byte		.L11793-.L2
	.uleb128	4
.L637:
	.sleb128	11
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11784
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11793:
.L11706:
	.sleb128	10
	.4byte		.L11609
	.uleb128	60
	.uleb128	1
	.4byte		.L11794-.L2
	.uleb128	8
.L635:
	.sleb128	11
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11784
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L636:
	.sleb128	11
	.byte		"Offset"
	.byte		0
	.4byte		.L11773
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11794:
.L11704:
	.sleb128	10
	.4byte		.L11609
	.uleb128	60
	.uleb128	1
	.4byte		.L11795-.L2
	.uleb128	8
.L633:
	.sleb128	11
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11784
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L634:
	.sleb128	11
	.byte		"Start"
	.byte		0
	.4byte		.L11773
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11795:
.L11702:
	.sleb128	10
	.4byte		.L11609
	.uleb128	60
	.uleb128	1
	.4byte		.L11796-.L2
	.uleb128	12
.L630:
	.sleb128	11
	.byte		"CounterId"
	.byte		0
	.4byte		.L11797
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L631:
	.sleb128	11
	.byte		"ValuePtr"
	.byte		0
	.4byte		.L11776
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L632:
	.sleb128	11
	.byte		"ElapsedValuePtr"
	.byte		0
	.4byte		.L11776
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11796:
.L11700:
	.sleb128	10
	.4byte		.L11609
	.uleb128	60
	.uleb128	1
	.4byte		.L11798-.L2
	.uleb128	12
.L627:
	.sleb128	11
	.byte		"CounterId"
	.byte		0
	.4byte		.L11797
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L628:
	.sleb128	11
	.byte		"ValuePtr"
	.byte		0
	.4byte		.L11776
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L629:
	.sleb128	11
	.byte		"LightServiceFunction"
	.byte		0
	.4byte		.L11799
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11798:
.L11698:
	.sleb128	10
	.4byte		.L11609
	.uleb128	60
	.uleb128	1
	.4byte		.L11803-.L2
	.uleb128	4
.L626:
	.sleb128	11
	.byte		"CounterId"
	.byte		0
	.4byte		.L11797
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11803:
.L11694:
	.sleb128	10
	.4byte		.L11609
	.uleb128	60
	.uleb128	1
	.4byte		.L11804-.L2
	.uleb128	4
.L625:
	.sleb128	11
	.byte		"ISRId"
	.byte		0
	.4byte		.L11630
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11804:
.L11690:
	.sleb128	10
	.4byte		.L11609
	.uleb128	60
	.uleb128	1
	.4byte		.L11805-.L2
	.uleb128	2
.L623:
	.sleb128	11
	.byte		"Application"
	.byte		0
	.4byte		.L11766
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L624:
	.sleb128	11
	.byte		"RestartOption"
	.byte		0
	.4byte		.L11806
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
	.sleb128	0
.L11805:
.L11692:
	.sleb128	10
	.4byte		.L11609
	.uleb128	60
	.uleb128	1
	.4byte		.L11807-.L2
	.uleb128	1
.L622:
	.sleb128	11
	.byte		"Application"
	.byte		0
	.4byte		.L11766
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11807:
.L11688:
	.sleb128	10
	.4byte		.L11609
	.uleb128	60
	.uleb128	1
	.4byte		.L11808-.L2
	.uleb128	8
.L620:
	.sleb128	11
	.byte		"Application"
	.byte		0
	.4byte		.L11766
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L621:
	.sleb128	11
	.byte		"AppStateRef"
	.byte		0
	.4byte		.L11809
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11808:
.L11672:
	.sleb128	10
	.4byte		.L11609
	.uleb128	60
	.uleb128	1
	.4byte		.L11812-.L2
	.uleb128	8
.L619:
	.sleb128	11
	.byte		"EventMask"
	.byte		0
	.4byte		.L11813
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11812:
.L11670:
	.sleb128	10
	.4byte		.L11609
	.uleb128	60
	.uleb128	1
	.4byte		.L11816-.L2
	.uleb128	24
.L616:
	.sleb128	11
	.byte		"TaskId"
	.byte		0
	.4byte		.L11451
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L617:
	.sleb128	11
	.byte		"EventMask"
	.byte		0
	.4byte		.L11813
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L618:
	.sleb128	11
	.byte		"EventMaskRef"
	.byte		0
	.4byte		.L11817
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11816:
.L11668:
	.sleb128	10
	.4byte		.L11609
	.uleb128	60
	.uleb128	1
	.4byte		.L11819-.L2
	.uleb128	8
.L615:
	.sleb128	11
	.byte		"EventMask"
	.byte		0
	.4byte		.L11813
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11819:
.L11666:
	.sleb128	10
	.4byte		.L11609
	.uleb128	60
	.uleb128	1
	.4byte		.L11820-.L2
	.uleb128	16
.L613:
	.sleb128	11
	.byte		"TaskId"
	.byte		0
	.4byte		.L11451
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L614:
	.sleb128	11
	.byte		"EventMask"
	.byte		0
	.4byte		.L11813
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11820:
.L11664:
	.sleb128	10
	.4byte		.L11609
	.uleb128	60
	.uleb128	1
	.4byte		.L11821-.L2
	.uleb128	8
.L611:
	.sleb128	11
	.byte		"TaskId"
	.byte		0
	.4byte		.L11451
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L612:
	.sleb128	11
	.byte		"TaskStateRef"
	.byte		0
	.4byte		.L11822
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11821:
.L11662:
	.sleb128	10
	.4byte		.L11609
	.uleb128	60
	.uleb128	1
	.4byte		.L11826-.L2
	.uleb128	4
.L610:
	.sleb128	11
	.byte		"TaskIdRef"
	.byte		0
	.4byte		.L11827
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11826:
.L11660:
	.sleb128	10
	.4byte		.L11609
	.uleb128	60
	.uleb128	1
	.4byte		.L11829-.L2
	.uleb128	4
.L609:
	.sleb128	11
	.byte		"TaskId"
	.byte		0
	.4byte		.L11451
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11829:
.L11658:
	.sleb128	10
	.4byte		.L11609
	.uleb128	60
	.uleb128	1
	.4byte		.L11830-.L2
	.uleb128	4
.L608:
	.sleb128	11
	.byte		"TaskId"
	.byte		0
	.4byte		.L11451
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11830:
.L11676:
	.sleb128	10
	.4byte		.L11609
	.uleb128	60
	.uleb128	1
	.4byte		.L11831-.L2
	.uleb128	4
.L607:
	.sleb128	11
	.byte		"ResourceId"
	.byte		0
	.4byte		.L11832
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11831:
.L11674:
	.sleb128	10
	.4byte		.L11609
	.uleb128	60
	.uleb128	1
	.4byte		.L11833-.L2
	.uleb128	4
.L606:
	.sleb128	11
	.byte		"ResourceId"
	.byte		0
	.4byte		.L11832
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11833:
.L11696:
	.sleb128	10
	.4byte		.L11609
	.uleb128	60
	.uleb128	1
	.4byte		.L11834-.L2
	.uleb128	4
.L605:
	.sleb128	11
	.byte		"AppMode"
	.byte		0
	.4byte		.L11835
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11834:
.L11656:
	.sleb128	10
	.4byte		.L11609
	.uleb128	60
	.uleb128	1
	.4byte		.L11836-.L2
	.uleb128	2
.L604:
	.sleb128	11
	.byte		"CoreID"
	.byte		0
	.4byte		.L11430
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11836:
.L11650:
	.sleb128	10
	.4byte		.L11609
	.uleb128	60
	.uleb128	1
	.4byte		.L11837-.L2
	.uleb128	2
.L603:
	.sleb128	11
	.byte		"NumberOfActivatedCores"
	.byte		0
	.4byte		.L11430
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11837:
.L11648:
	.sleb128	10
	.4byte		.L11609
	.uleb128	60
	.uleb128	1
	.4byte		.L11838-.L2
	.uleb128	1
.L602:
	.sleb128	11
	.byte		"Error"
	.byte		0
	.4byte		.L11447
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11838:
.L11646:
	.sleb128	10
	.4byte		.L11609
	.uleb128	60
	.uleb128	1
	.4byte		.L11839-.L2
	.uleb128	8
.L600:
	.sleb128	11
	.byte		"ShutdownType"
	.byte		0
	.4byte		.L11840
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L601:
	.sleb128	11
	.byte		"Error"
	.byte		0
	.4byte		.L11447
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11839:
.L11644:
	.sleb128	10
	.4byte		.L11609
	.uleb128	60
	.uleb128	1
	.4byte		.L11842-.L2
	.uleb128	1
.L599:
	.sleb128	11
	.byte		"Error"
	.byte		0
	.4byte		.L11447
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11842:
.L11654:
	.sleb128	10
	.4byte		.L11609
	.uleb128	60
	.uleb128	1
	.4byte		.L11843-.L2
	.uleb128	8
.L597:
	.sleb128	11
	.byte		"CoreID"
	.byte		0
	.4byte		.L11430
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L598:
	.sleb128	11
	.byte		"StatusRef"
	.byte		0
	.4byte		.L11844
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11843:
.L11652:
	.sleb128	10
	.4byte		.L11609
	.uleb128	60
	.uleb128	1
	.4byte		.L11845-.L2
	.uleb128	8
.L595:
	.sleb128	11
	.byte		"CoreID"
	.byte		0
	.4byte		.L11430
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L596:
	.sleb128	11
	.byte		"StatusRef"
	.byte		0
	.4byte		.L11844
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11845:
.L11642:
	.sleb128	10
	.4byte		.L11609
	.uleb128	60
	.uleb128	1
	.4byte		.L11846-.L2
	.uleb128	4
.L594:
	.sleb128	11
	.byte		"AppMode"
	.byte		0
	.4byte		.L11835
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11846:
.L11744:
	.sleb128	10
	.4byte		.L11847
	.uleb128	33
	.uleb128	14
	.4byte		.L11848-.L2
	.uleb128	24
.L587:
	.sleb128	11
	.byte		"Os_IOC_ChannelDyn"
	.byte		0
	.4byte		.L11849
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L588:
	.sleb128	11
	.byte		"Os_IOC_ChannelLength"
	.byte		0
	.4byte		.L11853
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L589:
	.sleb128	11
	.byte		"Os_IOC_ChannelBuffer"
	.byte		0
	.4byte		.L11854
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L590:
	.sleb128	11
	.byte		"Os_IOC_ChannelElementSize"
	.byte		0
	.4byte		.L11855
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L591:
	.sleb128	11
	.byte		"Os_IOC_DataCount"
	.byte		0
	.4byte		.L11856
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L592:
	.sleb128	11
	.byte		"Os_IOC_DataDescriptor"
	.byte		0
	.4byte		.L11858
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L593:
	.sleb128	11
	.byte		"Os_IOC_LockResourceAddress"
	.byte		0
	.4byte		.L11863
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L11848:
.L11862:
	.sleb128	10
	.4byte		.L11847
	.uleb128	33
	.uleb128	14
	.4byte		.L11866-.L2
	.uleb128	4
.L583:
	.sleb128	11
	.byte		"Os_IOC_DataLength"
	.byte		0
	.4byte		.L11867
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L584:
	.sleb128	11
	.byte		"Os_IOC_DataOffset"
	.byte		0
	.4byte		.L11869
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L11866:
.L11852:
	.sleb128	10
	.4byte		.L11847
	.uleb128	33
	.uleb128	14
	.4byte		.L11871-.L2
	.uleb128	6
.L580:
	.sleb128	11
	.byte		"Os_IOC_ChannelHead"
	.byte		0
	.4byte		.L11853
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L581:
	.sleb128	11
	.byte		"Os_IOC_ChannelMessageCount"
	.byte		0
	.4byte		.L11853
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L582:
	.sleb128	11
	.byte		"Os_IOC_Status"
	.byte		0
	.4byte		.L11447
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11871:
.L11601:
	.sleb128	10
	.4byte		.L11872
	.uleb128	34
	.uleb128	14
	.4byte		.L11873-.L2
	.uleb128	2
.L531:
	.sleb128	11
	.byte		"Os_HookID"
	.byte		0
	.4byte		.L11874
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11873:
.L11470:
	.sleb128	12
	.4byte		.L11543
	.uleb128	80
	.uleb128	13
	.4byte		.L11875-.L2
	.byte		"Os_ProcStatType_s"
	.byte		0
	.uleb128	80
.L513:
	.sleb128	11
	.byte		"Os_ProcId"
	.byte		0
	.4byte		.L11525
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L514:
	.sleb128	11
	.byte		"Os_ProcCoreID"
	.byte		0
	.4byte		.L11429
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L515:
	.sleb128	11
	.byte		"Os_ProcDyn"
	.byte		0
	.4byte		.L11876
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L516:
	.sleb128	11
	.byte		"Os_ProcStack"
	.byte		0
	.4byte		.L11880
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L517:
	.sleb128	11
	.byte		"Os_ProcKind"
	.byte		0
	.4byte		.L11885
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L518:
	.sleb128	11
	.byte		"Os_ProcEventRights"
	.byte		0
	.4byte		.L11888
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L519:
	.sleb128	11
	.byte		"Os_ProcPriority"
	.byte		0
	.4byte		.L11889
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L520:
	.sleb128	11
	.byte		"Os_ProcRunPriority"
	.byte		0
	.4byte		.L11889
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L521:
	.sleb128	11
	.byte		"Os_ProcMaxActivations"
	.byte		0
	.4byte		.L11890
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L522:
	.sleb128	11
	.byte		"Os_ProcContext"
	.byte		0
	.4byte		.L11892
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L523:
	.sleb128	11
	.byte		"Os_ProcOwnerApp"
	.byte		0
	.4byte		.L11893
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L524:
	.sleb128	11
	.byte		"Os_ProcAppAccess"
	.byte		0
	.4byte		.L11894
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L525:
	.sleb128	11
	.byte		"Os_ProcEntryPoint"
	.byte		0
	.4byte		.L11898
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L526:
	.sleb128	11
	.byte		"Os_ProcAutoStart"
	.byte		0
	.4byte		.L11894
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
.L527:
	.sleb128	11
	.byte		"Os_ProcResourceCount"
	.byte		0
	.4byte		.L11903
	.sleb128	2
	.byte		0x23
	.uleb128	64
	.byte		0x1
.L528:
	.sleb128	11
	.byte		"Os_ProcResourceStack"
	.byte		0
	.4byte		.L11904
	.sleb128	2
	.byte		0x23
	.uleb128	68
	.byte		0x1
.L529:
	.sleb128	11
	.byte		"Os_ProcQueueElements"
	.byte		0
	.4byte		.L11910
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.byte		0x1
.L530:
	.sleb128	11
	.byte		"Os_ProcIsrPlatformConfig"
	.byte		0
	.4byte		.L11911
	.sleb128	2
	.byte		0x23
	.uleb128	76
	.byte		0x1
	.sleb128	0
.L11875:
.L11884:
	.sleb128	12
	.4byte		.L11543
	.uleb128	80
	.uleb128	13
	.4byte		.L11912-.L2
	.byte		"Os_ProcStackStruct"
	.byte		0
	.uleb128	8
.L511:
	.sleb128	11
	.byte		"Os_ProcStackSize"
	.byte		0
	.4byte		.L11913
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L512:
	.sleb128	11
	.byte		"Os_ProcStackBase"
	.byte		0
	.4byte		.L11892
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11912:
.L11879:
	.sleb128	10
	.4byte		.L11543
	.uleb128	80
	.uleb128	13
	.4byte		.L11915-.L2
	.uleb128	56
.L498:
	.sleb128	11
	.byte		"Os_ProcState"
	.byte		0
	.4byte		.L11824
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L499:
	.sleb128	11
	.byte		"Os_ProcContextState"
	.byte		0
	.4byte		.L11916
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L500:
	.sleb128	11
	.byte		"Os_ProcEvents"
	.byte		0
	.4byte		.L11813
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L501:
	.sleb128	11
	.byte		"Os_ProcEventWaitingFor"
	.byte		0
	.4byte		.L11813
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L502:
	.sleb128	11
	.byte		"Os_ProcActivations"
	.byte		0
	.4byte		.L11891
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L503:
	.sleb128	11
	.byte		"Os_ProcResourcesAllocated"
	.byte		0
	.4byte		.L11832
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L504:
	.sleb128	11
	.byte		"Os_ProcEnabled"
	.byte		0
	.4byte		.L11448
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L505:
	.sleb128	11
	.byte		"Os_ProcCurrentApp"
	.byte		0
	.4byte		.L11586
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L506:
	.sleb128	11
	.byte		"Os_ProcSpinlock"
	.byte		0
	.4byte		.L11918
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L507:
	.sleb128	11
	.byte		"Os_ProcFreeQueueElements"
	.byte		0
	.4byte		.L11611
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L508:
	.sleb128	11
	.byte		"Os_ProcCurrentPriority"
	.byte		0
	.4byte		.L11606
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L509:
	.sleb128	11
	.byte		"Os_ProcTFCallCount"
	.byte		0
	.4byte		.L11448
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L510:
	.sleb128	11
	.byte		"Os_FatalErrorOccured"
	.byte		0
	.4byte		.L11447
	.sleb128	2
	.byte		0x23
	.uleb128	53
	.byte		0x1
	.sleb128	0
.L11915:
.L11920:
	.sleb128	12
	.4byte		.L11921
	.uleb128	52
	.uleb128	1
	.4byte		.L11922-.L2
	.byte		"Os_SpinlockStatType_s"
	.byte		0
	.uleb128	16
.L450:
	.sleb128	11
	.byte		"Os_SpinlockId"
	.byte		0
	.4byte		.L11923
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L451:
	.sleb128	11
	.byte		"Os_SpinlockChainId"
	.byte		0
	.4byte		.L11923
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L452:
	.sleb128	11
	.byte		"Os_SpinlockDyn"
	.byte		0
	.4byte		.L11924
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L453:
	.sleb128	11
	.byte		"Os_SpinlockAccess"
	.byte		0
	.4byte		.L11894
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L454:
	.sleb128	11
	.byte		"Os_SpinlockLockResourceAddress"
	.byte		0
	.4byte		.L11863
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L11922:
.L11927:
	.sleb128	10
	.4byte		.L11921
	.uleb128	52
	.uleb128	1
	.4byte		.L11928-.L2
	.uleb128	12
.L447:
	.sleb128	11
	.byte		"Os_SpinlockLockerProc"
	.byte		0
	.4byte		.L11519
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L448:
	.sleb128	11
	.byte		"Os_SpinlockSuperseded"
	.byte		0
	.4byte		.L11918
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L449:
	.sleb128	11
	.byte		"Os_ResourceDependency"
	.byte		0
	.4byte		.L11906
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11928:
.L11589:
	.sleb128	12
	.4byte		.L11921
	.uleb128	52
	.uleb128	1
	.4byte		.L11929-.L2
	.byte		"Os_ApplicationStatType_s"
	.byte		0
	.uleb128	48
.L435:
	.sleb128	11
	.byte		"Os_AppDyn"
	.byte		0
	.4byte		.L11930
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L436:
	.sleb128	11
	.byte		"Os_AppId"
	.byte		0
	.4byte		.L11934
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L437:
	.sleb128	11
	.byte		"Os_AppRestartTask"
	.byte		0
	.4byte		.L11525
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L438:
	.sleb128	11
	.byte		"Os_AppKind"
	.byte		0
	.4byte		.L11935
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L439:
	.sleb128	11
	.byte		"Os_AppShutdownHook"
	.byte		0
	.4byte		.L11938
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L440:
	.sleb128	11
	.byte		"Os_AppStartupHook"
	.byte		0
	.4byte		.L11943
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L441:
	.sleb128	11
	.byte		"Os_AppErrorHook"
	.byte		0
	.4byte		.L11948
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L442:
	.sleb128	11
	.byte		"Os_AppProcIDs"
	.byte		0
	.4byte		.L11953
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L443:
	.sleb128	11
	.byte		"Os_AppCounterIDs"
	.byte		0
	.4byte		.L11956
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L444:
	.sleb128	11
	.byte		"Os_AppAlarmIDs"
	.byte		0
	.4byte		.L11959
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L445:
	.sleb128	11
	.byte		"Os_AppSchTblIDs"
	.byte		0
	.4byte		.L11962
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L446:
	.sleb128	11
	.byte		"Os_CoreAssigment"
	.byte		0
	.4byte		.L11429
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
	.sleb128	0
.L11929:
.L11933:
	.sleb128	10
	.4byte		.L11921
	.uleb128	52
	.uleb128	1
	.4byte		.L11965-.L2
	.uleb128	1
.L434:
	.sleb128	11
	.byte		"Os_AppState"
	.byte		0
	.4byte		.L11811
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11965:
.L11909:
	.sleb128	10
	.4byte		.L11966
	.uleb128	32
	.uleb128	1
	.4byte		.L11967-.L2
	.uleb128	12
.L431:
	.sleb128	11
	.byte		"Os_ResourcePriority"
	.byte		0
	.4byte		.L11889
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L432:
	.sleb128	11
	.byte		"Os_ResourceAccessRights"
	.byte		0
	.4byte		.L11895
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L433:
	.sleb128	11
	.byte		"Os_ResourceDyn"
	.byte		0
	.4byte		.L11968
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11967:
.L11970:
	.sleb128	10
	.4byte		.L11966
	.uleb128	32
	.uleb128	1
	.4byte		.L11971-.L2
	.uleb128	4
.L430:
	.sleb128	11
	.byte		"Os_LockerProc"
	.byte		0
	.4byte		.L11519
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11971:
.L11594:
	.sleb128	10
	.4byte		.L11966
	.uleb128	32
	.uleb128	1
	.4byte		.L11972-.L2
	.uleb128	144
.L425:
	.sleb128	11
	.byte		"Os_Error"
	.byte		0
	.4byte		.L11973
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L426:
	.sleb128	11
	.byte		"Os_ExceptionStatus"
	.byte		0
	.4byte		.L11975
	.sleb128	2
	.byte		0x23
	.uleb128	120
	.byte		0x1
	.sleb128	0
.L11972:
.L11623:
	.sleb128	10
	.4byte		.L11966
	.uleb128	32
	.uleb128	1
	.4byte		.L11977-.L2
	.uleb128	24
.L419:
	.sleb128	11
	.byte		"Os_DisAllInt"
	.byte		0
	.4byte		.L11978
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L420:
	.sleb128	11
	.byte		"Os_EnAllInt"
	.byte		0
	.4byte		.L11978
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L421:
	.sleb128	11
	.byte		"Os_SusAllInt"
	.byte		0
	.4byte		.L11978
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L422:
	.sleb128	11
	.byte		"Os_ResAllInt"
	.byte		0
	.4byte		.L11978
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L423:
	.sleb128	11
	.byte		"Os_SusOsInt"
	.byte		0
	.4byte		.L11978
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L424:
	.sleb128	11
	.byte		"Os_ResOsInt"
	.byte		0
	.4byte		.L11978
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L11977:
.L11976:
	.sleb128	10
	.4byte		.L11966
	.uleb128	32
	.uleb128	1
	.4byte		.L11983-.L2
	.uleb128	20
.L414:
	.sleb128	11
	.byte		"Os_ExceptionType"
	.byte		0
	.4byte		.L11984
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L415:
	.sleb128	11
	.byte		"Os_ExceptionCause"
	.byte		0
	.4byte		.L11454
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L416:
	.sleb128	11
	.byte		"Os_ExceptionAuxiliaryCause"
	.byte		0
	.4byte		.L11454
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L417:
	.sleb128	11
	.byte		"Os_ExceptionExecutionAddress"
	.byte		0
	.4byte		.L11580
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L418:
	.sleb128	11
	.byte		"Os_ExceptionAccessAddress"
	.byte		0
	.4byte		.L11580
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11983:
.L11974:
	.sleb128	10
	.4byte		.L11986
	.uleb128	174
	.uleb128	1
	.4byte		.L11987-.L2
	.uleb128	120
.L411:
	.sleb128	11
	.byte		"Os_ShutdownError"
	.byte		0
	.4byte		.L11988
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L412:
	.sleb128	11
	.byte		"Os_ParameterError"
	.byte		0
	.4byte		.L11990
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L413:
	.sleb128	11
	.byte		"Os_ServiceError"
	.byte		0
	.4byte		.L11992
	.sleb128	2
	.byte		0x23
	.uleb128	112
	.byte		0x1
	.sleb128	0
.L11987:
.L11993:
	.sleb128	10
	.4byte		.L11986
	.uleb128	174
	.uleb128	1
	.4byte		.L11994-.L2
	.uleb128	8
.L408:
	.sleb128	11
	.byte		"Os_ServiceTrace"
	.byte		0
	.4byte		.L11995
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L409:
	.sleb128	11
	.byte		"Os_LastError"
	.byte		0
	.4byte		.L11447
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L410:
	.sleb128	11
	.byte		"Os_FaultyServiceId"
	.byte		0
	.4byte		.L11996
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11994:
.L11991:
	.sleb128	10
	.4byte		.L11986
	.uleb128	174
	.uleb128	1
	.4byte		.L11998-.L2
	.uleb128	104
.L383:
	.sleb128	11
	.byte		"Os_Err_TaskID"
	.byte		0
	.4byte		.L11451
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L384:
	.sleb128	11
	.byte		"Os_Err_ResID"
	.byte		0
	.4byte		.L11832
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L385:
	.sleb128	11
	.byte		"Os_Err_MaskType_Mask"
	.byte		0
	.4byte		.L11813
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L386:
	.sleb128	11
	.byte		"Os_Err_AlarmID"
	.byte		0
	.4byte		.L11771
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L387:
	.sleb128	11
	.byte		"Os_Err_TicksStart"
	.byte		0
	.4byte		.L11773
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L388:
	.sleb128	11
	.byte		"Os_Err_TicksCycle"
	.byte		0
	.4byte		.L11773
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L389:
	.sleb128	11
	.byte		"Os_Err_FuncIndex"
	.byte		0
	.4byte		.L11761
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L390:
	.sleb128	11
	.byte		"Os_Err_FuncParamRefType"
	.byte		0
	.4byte		.L11762
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L391:
	.sleb128	11
	.byte		"Os_Err_ApplID"
	.byte		0
	.4byte		.L11766
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L392:
	.sleb128	11
	.byte		"Os_Err_ApplStateRefType"
	.byte		0
	.4byte		.L11809
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L393:
	.sleb128	11
	.byte		"Os_Err_ObjType"
	.byte		0
	.4byte		.L11767
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L394:
	.sleb128	11
	.byte		"Os_Err_SchedID"
	.byte		0
	.4byte		.L11784
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L395:
	.sleb128	11
	.byte		"Os_Err_SchedID_Next"
	.byte		0
	.4byte		.L11784
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L396:
	.sleb128	11
	.byte		"Os_Err_CntID"
	.byte		0
	.4byte		.L11797
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L397:
	.sleb128	11
	.byte		"Os_Err_RestartType"
	.byte		0
	.4byte		.L11806
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
.L398:
	.sleb128	11
	.byte		"Os_Err_MaskRefType"
	.byte		0
	.4byte		.L11817
	.sleb128	2
	.byte		0x23
	.uleb128	64
	.byte		0x1
.L399:
	.sleb128	11
	.byte		"Os_Err_TaskStateRef"
	.byte		0
	.4byte		.L11822
	.sleb128	2
	.byte		0x23
	.uleb128	68
	.byte		0x1
.L400:
	.sleb128	11
	.byte		"Os_Err_TickRef_Ticks"
	.byte		0
	.4byte		.L11776
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.byte		0x1
.L401:
	.sleb128	11
	.byte		"Os_Err_AlarmBaseRefType_Info"
	.byte		0
	.4byte		.L11779
	.sleb128	2
	.byte		0x23
	.uleb128	76
	.byte		0x1
.L402:
	.sleb128	11
	.byte		"Os_Err_TaskIDRef"
	.byte		0
	.4byte		.L11827
	.sleb128	2
	.byte		0x23
	.uleb128	80
	.byte		0x1
.L403:
	.sleb128	11
	.byte		"Os_Err_TblStatusRefType"
	.byte		0
	.4byte		.L11789
	.sleb128	2
	.byte		0x23
	.uleb128	84
	.byte		0x1
.L404:
	.sleb128	11
	.byte		"Os_Err_TickRef_ElapsedTicks"
	.byte		0
	.4byte		.L11776
	.sleb128	2
	.byte		0x23
	.uleb128	88
	.byte		0x1
.L405:
	.sleb128	11
	.byte		"Os_Err_ObjObj"
	.byte		0
	.4byte		.L11453
	.sleb128	2
	.byte		0x23
	.uleb128	92
	.byte		0x1
.L406:
	.sleb128	11
	.byte		"Os_Err_SpinlockID"
	.byte		0
	.4byte		.L11752
	.sleb128	2
	.byte		0x23
	.uleb128	96
	.byte		0x1
.L407:
	.sleb128	11
	.byte		"Os_Err_TryToGetSpinlockRef"
	.byte		0
	.4byte		.L11999
	.sleb128	2
	.byte		0x23
	.uleb128	100
	.byte		0x1
	.sleb128	0
.L11998:
.L11989:
	.sleb128	10
	.4byte		.L11986
	.uleb128	174
	.uleb128	1
	.4byte		.L12000-.L2
	.uleb128	8
.L381:
	.sleb128	11
	.byte		"Os_ShutdownErrorCode"
	.byte		0
	.4byte		.L11447
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L382:
	.sleb128	11
	.byte		"Os_ShutdownInternalErrorCode"
	.byte		0
	.4byte		.L12001
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12000:
.L11782:
	.sleb128	10
	.4byte		.L12003
	.uleb128	50
	.uleb128	1
	.4byte		.L12004-.L2
	.uleb128	12
.L378:
	.sleb128	11
	.byte		"maxallowedvalue"
	.byte		0
	.4byte		.L11773
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L379:
	.sleb128	11
	.byte		"ticksperbase"
	.byte		0
	.4byte		.L11773
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L380:
	.sleb128	11
	.byte		"mincycle"
	.byte		0
	.4byte		.L11773
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L12004:
.L11619:
	.sleb128	10
	.4byte		.L12005
	.uleb128	87
	.uleb128	7
	.4byte		.L12006-.L2
	.uleb128	8
.L366:
	.sleb128	11
	.byte		"Os_IsrPltId"
	.byte		0
	.4byte		.L12007
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L367:
	.sleb128	11
	.byte		"Os_IsrPltLevel"
	.byte		0
	.4byte		.L12008
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12006:
	.section	.debug_info,,n
.L11427:
	.sleb128	14
	.4byte		.L12010
	.uleb128	155
	.uleb128	1
	.4byte		.L12011-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	15
	.byte		"Os_Isr_Enabled"
	.byte		0
	.sleb128	0
	.sleb128	15
	.byte		"Os_Isr_Disabled"
	.byte		0
	.sleb128	1
	.sleb128	0
.L12011:
.L11605:
	.sleb128	14
	.4byte		.L11558
	.uleb128	69
	.uleb128	1
	.4byte		.L12012-.L2
	.uleb128	4
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
.L12012:
.L11629:
	.sleb128	14
	.4byte		.L11609
	.uleb128	612
	.uleb128	1
	.4byte		.L12013-.L2
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
.L12013:
.L11634:
	.sleb128	14
	.4byte		.L11609
	.uleb128	60
	.uleb128	1
	.4byte		.L12014-.L2
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
.L12014:
	.section	.debug_info,,n
.L11764:
	.sleb128	16
	.4byte		.L11847
	.uleb128	33
	.uleb128	14
	.4byte		.L12015-.L2
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
.L12015:
.L11917:
	.sleb128	14
	.4byte		.L11543
	.uleb128	80
	.uleb128	13
	.4byte		.L12016-.L2
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
.L12016:
.L11887:
	.sleb128	14
	.4byte		.L11543
	.uleb128	61
	.uleb128	1
	.4byte		.L12017-.L2
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
.L12017:
.L11937:
	.sleb128	14
	.4byte		.L11921
	.uleb128	52
	.uleb128	1
	.4byte		.L12018-.L2
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
.L12018:
.L11985:
	.sleb128	14
	.4byte		.L11966
	.uleb128	32
	.uleb128	1
	.4byte		.L12019-.L2
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
.L12019:
.L12002:
	.sleb128	14
	.4byte		.L11986
	.uleb128	174
	.uleb128	1
	.4byte		.L12020-.L2
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
.L12020:
.L11997:
	.sleb128	14
	.4byte		.L11986
	.uleb128	86
	.uleb128	1
	.4byte		.L12021-.L2
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
.L12021:
.L11755:
	.sleb128	14
	.4byte		.L12022
	.uleb128	43
	.uleb128	1
	.4byte		.L12023-.L2
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
.L12023:
.L11825:
	.sleb128	14
	.4byte		.L12024
	.uleb128	37
	.uleb128	1
	.4byte		.L12025-.L2
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
.L12025:
.L11792:
	.sleb128	14
	.4byte		.L12026
	.uleb128	40
	.uleb128	1
	.4byte		.L12027-.L2
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
.L12027:
.L11768:
	.sleb128	14
	.4byte		.L12028
	.uleb128	47
	.uleb128	1
	.4byte		.L12029-.L2
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
.L12029:
.L11841:
	.sleb128	14
	.4byte		.L12003
	.uleb128	42
	.uleb128	13
	.4byte		.L12030-.L2
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
.L12030:
.L11739:
	.sleb128	14
	.4byte		.L12031
	.uleb128	83
	.uleb128	14
	.4byte		.L12032-.L2
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
.L12032:
	.section	.debug_info,,n
.L11426:
	.sleb128	17
	.byte		"Os_IsrStateType"
	.byte		0
	.4byte		.L11427
	.section	.debug_info,,n
.L11432:
	.sleb128	18
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L11431:
	.sleb128	17
	.byte		"uint16"
	.byte		0
	.4byte		.L11432
.L11430:
	.sleb128	17
	.byte		"CoreIdType"
	.byte		0
	.4byte		.L11431
	.section	.debug_info,,n
.L11429:
	.sleb128	19
	.4byte		.L11430
.L11449:
	.sleb128	18
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L11448:
	.sleb128	17
	.byte		"uint8"
	.byte		0
	.4byte		.L11449
.L11447:
	.sleb128	17
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L11448
.L11455:
	.sleb128	18
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L11454:
	.sleb128	17
	.byte		"uint32"
	.byte		0
	.4byte		.L11455
.L11453:
	.sleb128	17
	.byte		"Os_ObjectType"
	.byte		0
	.4byte		.L11454
.L11452:
	.sleb128	17
	.byte		"ProcType"
	.byte		0
	.4byte		.L11453
.L11451:
	.sleb128	17
	.byte		"TaskType"
	.byte		0
	.4byte		.L11452
.L11458:
	.sleb128	17
	.byte		"Os_APICallType"
	.byte		0
	.4byte		.L11459
.L11469:
	.sleb128	17
	.byte		"Os_ProcStatType"
	.byte		0
	.4byte		.L11470
.L11468:
	.sleb128	19
	.4byte		.L11469
	.section	.debug_info,,n
.L11467:
	.sleb128	20
	.4byte		.L11468
.L11482:
	.sleb128	19
	.4byte		.L11447
.L11493:
	.sleb128	17
	.byte		"Os_DispatchElementType"
	.byte		0
	.4byte		.L11494
.L11492:
	.sleb128	20
	.4byte		.L11493
.L11491:
	.sleb128	19
	.4byte		.L11492
.L11516:
	.sleb128	20
	.4byte		.L11459
.L11520:
	.sleb128	19
	.4byte		.L11470
.L11519:
	.sleb128	20
	.4byte		.L11520
.L11518:
	.sleb128	19
	.4byte		.L11519
.L11525:
	.sleb128	19
	.4byte		.L11451
	.section	.debug_info,,n
.L11544:
	.sleb128	21
	.4byte		.L11545-.L2
	.4byte		.L11468
	.section	.debug_info,,n
	.sleb128	22
	.sleb128	0
.L11545:
.L11551:
	.sleb128	17
	.byte		"Os_Core_StatType"
	.byte		0
	.4byte		.L11552
.L11550:
	.sleb128	19
	.4byte		.L11551
.L11548:
	.sleb128	21
	.4byte		.L11549-.L2
	.4byte		.L11550
	.section	.debug_info,,n
	.sleb128	23
	.uleb128	1
	.sleb128	0
.L11549:
.L11556:
	.sleb128	17
	.byte		"Os_Core_DynSharedType"
	.byte		0
	.4byte		.L11557
.L11554:
	.sleb128	21
	.4byte		.L11555-.L2
	.4byte		.L11556
	.sleb128	23
	.uleb128	1
	.sleb128	0
.L11555:
.L11562:
	.sleb128	17
	.byte		"Os_Core_DynInitType"
	.byte		0
	.4byte		.L11563
.L11561:
	.sleb128	20
	.4byte		.L11562
.L11560:
	.sleb128	19
	.4byte		.L11561
.L11566:
	.sleb128	17
	.byte		"Os_Core_DynType"
	.byte		0
	.4byte		.L11567
.L11565:
	.sleb128	20
	.4byte		.L11566
.L11564:
	.sleb128	19
	.4byte		.L11565
	.section	.debug_info,,n
.L11571:
	.sleb128	24
	.4byte		.L11572-.L2
	.byte		0x1
.L11573:
	.sleb128	19
	.4byte		.L11467
	.section	.debug_info,,n
	.sleb128	25
	.4byte		.L11573
	.sleb128	0
.L11572:
.L11570:
	.sleb128	20
	.4byte		.L11571
.L11569:
	.sleb128	17
	.byte		"Os_PrepareContextFunctionType"
	.byte		0
	.4byte		.L11570
.L11568:
	.sleb128	19
	.4byte		.L11569
.L11580:
	.sleb128	17
	.byte		"Os_StackType"
	.byte		0
	.4byte		.L11454
.L11579:
	.sleb128	20
	.4byte		.L11580
	.section	.debug_info,,n
.L11577:
	.sleb128	26
	.4byte		.L11578-.L2
	.4byte		.L11579
	.byte		0x1
	.sleb128	25
	.4byte		.L11467
	.sleb128	0
.L11578:
.L11576:
	.sleb128	20
	.4byte		.L11577
.L11575:
	.sleb128	17
	.byte		"Os_GetStackPointerFunctionType"
	.byte		0
	.4byte		.L11576
.L11574:
	.sleb128	19
	.4byte		.L11575
.L11582:
	.sleb128	17
	.byte		"Os_IsrDynInitType"
	.byte		0
	.4byte		.L11583
.L11584:
	.sleb128	17
	.byte		"Os_SchedulerDynInitType"
	.byte		0
	.4byte		.L11585
.L11588:
	.sleb128	17
	.byte		"Os_ApplicationStatType"
	.byte		0
	.4byte		.L11589
.L11587:
	.sleb128	19
	.4byte		.L11588
.L11586:
	.sleb128	20
	.4byte		.L11587
.L11591:
	.sleb128	17
	.byte		"Os_DispatcherType"
	.byte		0
	.4byte		.L11592
.L11593:
	.sleb128	17
	.byte		"Os_PublicData_NoInitType"
	.byte		0
	.4byte		.L11594
.L11596:
	.sleb128	17
	.byte		"Os_SchedulerDynType"
	.byte		0
	.4byte		.L11597
.L11598:
	.sleb128	17
	.byte		"Os_IsrDynType"
	.byte		0
	.4byte		.L11599
.L11600:
	.sleb128	17
	.byte		"Os_HooksDynType"
	.byte		0
	.4byte		.L11601
.L11604:
	.sleb128	17
	.byte		"Os_ScheduleType"
	.byte		0
	.4byte		.L11605
.L11606:
	.sleb128	17
	.byte		"Os_PriorityType"
	.byte		0
	.4byte		.L11454
.L11607:
	.sleb128	17
	.byte		"Os_SchedulerQueueElementType"
	.byte		0
	.4byte		.L11608
.L11611:
	.sleb128	20
	.4byte		.L11608
.L11613:
	.sleb128	17
	.byte		"Os_IsrRegister_t"
	.byte		0
	.4byte		.L11454
.L11614:
	.sleb128	17
	.byte		"boolean"
	.byte		0
	.4byte		.L11449
.L11618:
	.sleb128	17
	.byte		"Os_IsrPlatformConfigType"
	.byte		0
	.4byte		.L11619
.L11617:
	.sleb128	19
	.4byte		.L11618
.L11616:
	.sleb128	20
	.4byte		.L11617
.L11622:
	.sleb128	17
	.byte		"Os_IsrApiTable"
	.byte		0
	.4byte		.L11623
.L11621:
	.sleb128	19
	.4byte		.L11622
.L11620:
	.sleb128	20
	.4byte		.L11621
.L11624:
	.sleb128	21
	.4byte		.L11625-.L2
	.4byte		.L11454
	.sleb128	23
	.uleb128	7
	.sleb128	0
.L11625:
.L11628:
	.sleb128	17
	.byte		"Os_DispatchKindType"
	.byte		0
	.4byte		.L11629
.L11630:
	.sleb128	17
	.byte		"ISRType"
	.byte		0
	.4byte		.L11452
.L11631:
	.sleb128	20
	.4byte		.L11458
.L11633:
	.sleb128	17
	.byte		"Os_API_LockType"
	.byte		0
	.4byte		.L11634
.L11637:
	.sleb128	24
	.4byte		.L11638-.L2
	.byte		0x1
	.sleb128	25
	.4byte		.L11516
	.sleb128	25
	.4byte		.L11518
	.sleb128	0
.L11638:
.L11636:
	.sleb128	20
	.4byte		.L11637
.L11635:
	.sleb128	17
	.byte		"Os_API_Func_Type"
	.byte		0
	.4byte		.L11636
.L11641:
	.sleb128	17
	.byte		"Os_API_StartOsType"
	.byte		0
	.4byte		.L11642
.L11643:
	.sleb128	17
	.byte		"Os_API_ShutdownOsType"
	.byte		0
	.4byte		.L11644
.L11645:
	.sleb128	17
	.byte		"Os_API_ShutdownOsInternalType"
	.byte		0
	.4byte		.L11646
.L11647:
	.sleb128	17
	.byte		"Os_API_ShutdownAllCoresType"
	.byte		0
	.4byte		.L11648
.L11649:
	.sleb128	17
	.byte		"Os_API_GetNumberOfActivatedCoresType"
	.byte		0
	.4byte		.L11650
.L11651:
	.sleb128	17
	.byte		"Os_API_ApiStartCoreType"
	.byte		0
	.4byte		.L11652
.L11653:
	.sleb128	17
	.byte		"Os_API_StartNonAutosarCoreType"
	.byte		0
	.4byte		.L11654
.L11655:
	.sleb128	17
	.byte		"Os_API_GetCoreIDType"
	.byte		0
	.4byte		.L11656
.L11657:
	.sleb128	17
	.byte		"Os_API_ActivateTaskType"
	.byte		0
	.4byte		.L11658
.L11659:
	.sleb128	17
	.byte		"Os_API_ChainTaskType"
	.byte		0
	.4byte		.L11660
.L11661:
	.sleb128	17
	.byte		"Os_API_GetTaskIDType"
	.byte		0
	.4byte		.L11662
.L11663:
	.sleb128	17
	.byte		"Os_API_GetTaskStateType"
	.byte		0
	.4byte		.L11664
.L11665:
	.sleb128	17
	.byte		"Os_API_SetEventType"
	.byte		0
	.4byte		.L11666
.L11667:
	.sleb128	17
	.byte		"Os_API_ClearEventType"
	.byte		0
	.4byte		.L11668
.L11669:
	.sleb128	17
	.byte		"Os_API_GetEventType"
	.byte		0
	.4byte		.L11670
.L11671:
	.sleb128	17
	.byte		"Os_API_WaitEventType"
	.byte		0
	.4byte		.L11672
.L11673:
	.sleb128	17
	.byte		"Os_API_GetResourceType"
	.byte		0
	.4byte		.L11674
.L11675:
	.sleb128	17
	.byte		"Os_API_ReleaseResourceType"
	.byte		0
	.4byte		.L11676
.L11677:
	.sleb128	17
	.byte		"Os_API_GetAlarmBaseType"
	.byte		0
	.4byte		.L11678
.L11679:
	.sleb128	17
	.byte		"Os_API_GetAlarmType"
	.byte		0
	.4byte		.L11680
.L11681:
	.sleb128	17
	.byte		"Os_API_SetRelAlarmType"
	.byte		0
	.4byte		.L11682
.L11683:
	.sleb128	17
	.byte		"Os_API_SetAbsAlarmType"
	.byte		0
	.4byte		.L11684
.L11685:
	.sleb128	17
	.byte		"Os_API_CancelAlarmType"
	.byte		0
	.4byte		.L11686
.L11687:
	.sleb128	17
	.byte		"Os_API_GetApplicationStateType"
	.byte		0
	.4byte		.L11688
.L11689:
	.sleb128	17
	.byte		"Os_API_TerminateApplicationType"
	.byte		0
	.4byte		.L11690
.L11691:
	.sleb128	17
	.byte		"Os_API_GetApplicationIDType"
	.byte		0
	.4byte		.L11692
.L11693:
	.sleb128	17
	.byte		"Os_API_GetISRIDType"
	.byte		0
	.4byte		.L11694
.L11695:
	.sleb128	17
	.byte		"Os_API_GetActiveApplicationModeType"
	.byte		0
	.4byte		.L11696
.L11697:
	.sleb128	17
	.byte		"Os_API_IncrementCounterType"
	.byte		0
	.4byte		.L11698
.L11699:
	.sleb128	17
	.byte		"Os_API_GetCounterValueType"
	.byte		0
	.4byte		.L11700
.L11701:
	.sleb128	17
	.byte		"Os_API_GetElapsedValueType"
	.byte		0
	.4byte		.L11702
.L11703:
	.sleb128	17
	.byte		"Os_API_StartScheduleTableAbsType"
	.byte		0
	.4byte		.L11704
.L11705:
	.sleb128	17
	.byte		"Os_API_StartScheduleTableRelType"
	.byte		0
	.4byte		.L11706
.L11707:
	.sleb128	17
	.byte		"Os_API_StopScheduleTableType"
	.byte		0
	.4byte		.L11708
.L11709:
	.sleb128	17
	.byte		"Os_API_GetScheduleTableStatusType"
	.byte		0
	.4byte		.L11710
.L11711:
	.sleb128	17
	.byte		"Os_API_NextScheduleTableType"
	.byte		0
	.4byte		.L11712
.L11713:
	.sleb128	17
	.byte		"Os_API_StartScheduleTableSynchronType"
	.byte		0
	.4byte		.L11714
.L11715:
	.sleb128	17
	.byte		"Os_API_SyncScheduleTableType"
	.byte		0
	.4byte		.L11716
.L11717:
	.sleb128	17
	.byte		"Os_API_SetScheduleTableAsyncType"
	.byte		0
	.4byte		.L11718
.L11719:
	.sleb128	17
	.byte		"Os_API_CheckObjectAccessType"
	.byte		0
	.4byte		.L11720
.L11721:
	.sleb128	17
	.byte		"Os_API_CheckObjectOwnershipType"
	.byte		0
	.4byte		.L11722
.L11723:
	.sleb128	17
	.byte		"Os_API_CallTrustedFunctionType"
	.byte		0
	.4byte		.L11724
.L11725:
	.sleb128	17
	.byte		"Os_API_StackUsageType"
	.byte		0
	.4byte		.L11726
.L11727:
	.sleb128	17
	.byte		"Os_API_GetSpinlockType"
	.byte		0
	.4byte		.L11728
.L11729:
	.sleb128	17
	.byte		"Os_API_ReleaseSpinlockType"
	.byte		0
	.4byte		.L11730
.L11731:
	.sleb128	17
	.byte		"Os_API_TryToGetSpinlockType"
	.byte		0
	.4byte		.L11732
.L11733:
	.sleb128	17
	.byte		"Os_API_IocTransferType"
	.byte		0
	.4byte		.L11734
.L11735:
	.sleb128	17
	.byte		"Os_API_ControlIdleType"
	.byte		0
	.4byte		.L11736
.L11738:
	.sleb128	17
	.byte		"IdleModeType"
	.byte		0
	.4byte		.L11739
.L11743:
	.sleb128	17
	.byte		"Os_IOC_ChannelStatType"
	.byte		0
	.4byte		.L11744
.L11742:
	.sleb128	19
	.4byte		.L11743
.L11741:
	.sleb128	20
	.4byte		.L11742
	.section	.debug_info,,n
.L11750:
	.sleb128	27
	.byte		"void"
	.byte		0
	.byte		0x0
.L11749:
	.sleb128	20
	.4byte		.L11750
.L11747:
	.sleb128	21
	.4byte		.L11748-.L2
	.4byte		.L11749
	.sleb128	23
	.uleb128	1
	.sleb128	0
.L11748:
.L11746:
	.sleb128	17
	.byte		"Os_IOC_DataType"
	.byte		0
	.4byte		.L11747
.L11745:
	.sleb128	20
	.4byte		.L11746
.L11752:
	.sleb128	17
	.byte		"SpinlockIdType"
	.byte		0
	.4byte		.L11431
.L11754:
	.sleb128	17
	.byte		"TryToGetSpinlockType"
	.byte		0
	.4byte		.L11755
.L11753:
	.sleb128	20
	.4byte		.L11754
.L11759:
	.sleb128	20
	.4byte		.L11448
.L11761:
	.sleb128	17
	.byte		"TrustedFunctionIndexType"
	.byte		0
	.4byte		.L11454
.L11762:
	.sleb128	17
	.byte		"TrustedFunctionParameterRefType"
	.byte		0
	.4byte		.L11749
.L11763:
	.sleb128	17
	.byte		"Os_TrustedFunctionReturnValueType"
	.byte		0
	.4byte		.L11764
.L11766:
	.sleb128	17
	.byte		"ApplicationType"
	.byte		0
	.4byte		.L11448
.L11767:
	.sleb128	17
	.byte		"ObjectTypeType"
	.byte		0
	.4byte		.L11768
.L11771:
	.sleb128	17
	.byte		"AlarmType"
	.byte		0
	.4byte		.L11453
.L11773:
	.sleb128	17
	.byte		"TickType"
	.byte		0
	.4byte		.L11454
.L11777:
	.sleb128	20
	.4byte		.L11773
.L11776:
	.sleb128	17
	.byte		"TickRefType"
	.byte		0
	.4byte		.L11777
.L11781:
	.sleb128	17
	.byte		"AlarmBaseType"
	.byte		0
	.4byte		.L11782
.L11780:
	.sleb128	20
	.4byte		.L11781
.L11779:
	.sleb128	17
	.byte		"AlarmBaseRefType"
	.byte		0
	.4byte		.L11780
.L11784:
	.sleb128	17
	.byte		"ScheduleTableType"
	.byte		0
	.4byte		.L11454
.L11791:
	.sleb128	17
	.byte		"ScheduleTableStatusType"
	.byte		0
	.4byte		.L11792
.L11790:
	.sleb128	20
	.4byte		.L11791
.L11789:
	.sleb128	17
	.byte		"ScheduleTableStatusRefType"
	.byte		0
	.4byte		.L11790
.L11797:
	.sleb128	17
	.byte		"CounterType"
	.byte		0
	.4byte		.L11454
.L11801:
	.sleb128	24
	.4byte		.L11802-.L2
	.byte		0x1
	.sleb128	25
	.4byte		.L11516
	.sleb128	0
.L11802:
.L11800:
	.sleb128	20
	.4byte		.L11801
.L11799:
	.sleb128	17
	.byte		"LightServiceFunctionType"
	.byte		0
	.4byte		.L11800
.L11806:
	.sleb128	17
	.byte		"RestartType"
	.byte		0
	.4byte		.L11448
.L11811:
	.sleb128	17
	.byte		"ApplicationStateType"
	.byte		0
	.4byte		.L11448
.L11810:
	.sleb128	20
	.4byte		.L11811
.L11809:
	.sleb128	17
	.byte		"ApplicationStateRefType"
	.byte		0
	.4byte		.L11810
.L11815:
	.sleb128	18
	.byte		"unsigned long long"
	.byte		0
	.byte		0x7
	.byte		0x8
.L11814:
	.sleb128	17
	.byte		"uint64"
	.byte		0
	.4byte		.L11815
.L11813:
	.sleb128	17
	.byte		"EventMaskType"
	.byte		0
	.4byte		.L11814
.L11818:
	.sleb128	20
	.4byte		.L11813
.L11817:
	.sleb128	17
	.byte		"EventMaskRefType"
	.byte		0
	.4byte		.L11818
.L11824:
	.sleb128	17
	.byte		"TaskStateType"
	.byte		0
	.4byte		.L11825
.L11823:
	.sleb128	20
	.4byte		.L11824
.L11822:
	.sleb128	17
	.byte		"TaskStateRefType"
	.byte		0
	.4byte		.L11823
.L11828:
	.sleb128	20
	.4byte		.L11451
.L11827:
	.sleb128	17
	.byte		"TaskRefType"
	.byte		0
	.4byte		.L11828
.L11832:
	.sleb128	17
	.byte		"ResourceType"
	.byte		0
	.4byte		.L11454
.L11835:
	.sleb128	17
	.byte		"AppModeType"
	.byte		0
	.4byte		.L11454
.L11840:
	.sleb128	17
	.byte		"Os_CoreShutdownType"
	.byte		0
	.4byte		.L11841
.L11844:
	.sleb128	20
	.4byte		.L11447
.L11851:
	.sleb128	17
	.byte		"Os_IOC_ChannelDynType"
	.byte		0
	.4byte		.L11852
.L11850:
	.sleb128	20
	.4byte		.L11851
.L11849:
	.sleb128	19
	.4byte		.L11850
.L11853:
	.sleb128	17
	.byte		"Os_IOC_ChannelSizeType"
	.byte		0
	.4byte		.L11431
.L11854:
	.sleb128	19
	.4byte		.L11749
.L11855:
	.sleb128	19
	.4byte		.L11431
.L11857:
	.sleb128	17
	.byte		"Os_IOC_DataCountType"
	.byte		0
	.4byte		.L11448
.L11856:
	.sleb128	19
	.4byte		.L11857
.L11861:
	.sleb128	17
	.byte		"Os_IOC_DataDescriptorType"
	.byte		0
	.4byte		.L11862
.L11860:
	.sleb128	19
	.4byte		.L11861
.L11859:
	.sleb128	20
	.4byte		.L11860
.L11858:
	.sleb128	19
	.4byte		.L11859
.L11865:
	.sleb128	17
	.byte		"Os_LockResourceType"
	.byte		0
	.4byte		.L11448
.L11864:
	.sleb128	20
	.4byte		.L11865
.L11863:
	.sleb128	19
	.4byte		.L11864
.L11868:
	.sleb128	17
	.byte		"Os_IOC_DataLengthType"
	.byte		0
	.4byte		.L11431
.L11867:
	.sleb128	19
	.4byte		.L11868
.L11870:
	.sleb128	17
	.byte		"Os_IOC_DataOffsetType"
	.byte		0
	.4byte		.L11431
.L11869:
	.sleb128	19
	.4byte		.L11870
.L11874:
	.sleb128	17
	.byte		"Os_HookIDType"
	.byte		0
	.4byte		.L11431
.L11878:
	.sleb128	17
	.byte		"Os_ProcDynType"
	.byte		0
	.4byte		.L11879
.L11877:
	.sleb128	20
	.4byte		.L11878
.L11876:
	.sleb128	19
	.4byte		.L11877
.L11883:
	.sleb128	17
	.byte		"Os_ProcStackType"
	.byte		0
	.4byte		.L11884
.L11882:
	.sleb128	19
	.4byte		.L11883
.L11881:
	.sleb128	20
	.4byte		.L11882
.L11880:
	.sleb128	19
	.4byte		.L11881
.L11886:
	.sleb128	17
	.byte		"Os_ProcKindType"
	.byte		0
	.4byte		.L11887
.L11885:
	.sleb128	19
	.4byte		.L11886
.L11888:
	.sleb128	19
	.4byte		.L11813
.L11889:
	.sleb128	19
	.4byte		.L11606
.L11891:
	.sleb128	17
	.byte		"Os_ActivationCountType"
	.byte		0
	.4byte		.L11454
.L11890:
	.sleb128	19
	.4byte		.L11891
.L11892:
	.sleb128	19
	.4byte		.L11579
.L11893:
	.sleb128	19
	.4byte		.L11586
.L11897:
	.sleb128	17
	.byte		"Os_AccessStorageType"
	.byte		0
	.4byte		.L11454
.L11896:
	.sleb128	19
	.4byte		.L11897
.L11895:
	.sleb128	20
	.4byte		.L11896
.L11894:
	.sleb128	19
	.4byte		.L11895
.L11901:
	.sleb128	24
	.4byte		.L11902-.L2
	.byte		0x1
	.sleb128	0
.L11902:
.L11900:
	.sleb128	20
	.4byte		.L11901
.L11899:
	.sleb128	17
	.byte		"Os_ProcEntryPointType"
	.byte		0
	.4byte		.L11900
.L11898:
	.sleb128	19
	.4byte		.L11899
.L11903:
	.sleb128	19
	.4byte		.L11832
.L11908:
	.sleb128	17
	.byte		"Os_ResourceStatType"
	.byte		0
	.4byte		.L11909
.L11907:
	.sleb128	19
	.4byte		.L11908
.L11906:
	.sleb128	20
	.4byte		.L11907
.L11905:
	.sleb128	17
	.byte		"Os_ResourceStack"
	.byte		0
	.4byte		.L11906
.L11904:
	.sleb128	20
	.4byte		.L11905
.L11910:
	.sleb128	19
	.4byte		.L11611
.L11911:
	.sleb128	19
	.4byte		.L11616
.L11914:
	.sleb128	17
	.byte		"Os_StackSizeType"
	.byte		0
	.4byte		.L11454
.L11913:
	.sleb128	19
	.4byte		.L11914
.L11916:
	.sleb128	17
	.byte		"Os_ProcContexStateType"
	.byte		0
	.4byte		.L11917
.L11919:
	.sleb128	19
	.4byte		.L11920
.L11918:
	.sleb128	20
	.4byte		.L11919
.L11923:
	.sleb128	19
	.4byte		.L11752
.L11926:
	.sleb128	17
	.byte		"Os_SpinlockDynType"
	.byte		0
	.4byte		.L11927
.L11925:
	.sleb128	20
	.4byte		.L11926
.L11924:
	.sleb128	19
	.4byte		.L11925
.L11932:
	.sleb128	17
	.byte		"Os_ApplicationDynType"
	.byte		0
	.4byte		.L11933
.L11931:
	.sleb128	20
	.4byte		.L11932
.L11930:
	.sleb128	19
	.4byte		.L11931
.L11934:
	.sleb128	19
	.4byte		.L11766
.L11936:
	.sleb128	17
	.byte		"Os_ApplicationKindType"
	.byte		0
	.4byte		.L11937
.L11935:
	.sleb128	19
	.4byte		.L11936
.L11941:
	.sleb128	24
	.4byte		.L11942-.L2
	.byte		0x1
	.sleb128	25
	.4byte		.L11447
	.sleb128	0
.L11942:
.L11940:
	.sleb128	20
	.4byte		.L11941
.L11939:
	.sleb128	17
	.byte		"Os_ShutdownHookFuncType"
	.byte		0
	.4byte		.L11940
.L11938:
	.sleb128	19
	.4byte		.L11939
.L11946:
	.sleb128	24
	.4byte		.L11947-.L2
	.byte		0x1
	.sleb128	0
.L11947:
.L11945:
	.sleb128	20
	.4byte		.L11946
.L11944:
	.sleb128	17
	.byte		"Os_StartUpHookFuncType"
	.byte		0
	.4byte		.L11945
.L11943:
	.sleb128	19
	.4byte		.L11944
.L11951:
	.sleb128	24
	.4byte		.L11952-.L2
	.byte		0x1
	.sleb128	25
	.4byte		.L11447
	.sleb128	0
.L11952:
.L11950:
	.sleb128	20
	.4byte		.L11951
.L11949:
	.sleb128	17
	.byte		"Os_ErrorHookFuncType"
	.byte		0
	.4byte		.L11950
.L11948:
	.sleb128	19
	.4byte		.L11949
.L11955:
	.sleb128	19
	.4byte		.L11452
.L11954:
	.sleb128	20
	.4byte		.L11955
.L11953:
	.sleb128	19
	.4byte		.L11954
.L11958:
	.sleb128	19
	.4byte		.L11797
.L11957:
	.sleb128	20
	.4byte		.L11958
.L11956:
	.sleb128	19
	.4byte		.L11957
.L11961:
	.sleb128	19
	.4byte		.L11771
.L11960:
	.sleb128	20
	.4byte		.L11961
.L11959:
	.sleb128	19
	.4byte		.L11960
.L11964:
	.sleb128	19
	.4byte		.L11784
.L11963:
	.sleb128	20
	.4byte		.L11964
.L11962:
	.sleb128	19
	.4byte		.L11963
.L11969:
	.sleb128	17
	.byte		"Os_ResourceDynType"
	.byte		0
	.4byte		.L11970
.L11968:
	.sleb128	20
	.4byte		.L11969
.L11973:
	.sleb128	17
	.byte		"Os_ErrorType"
	.byte		0
	.4byte		.L11974
.L11975:
	.sleb128	17
	.byte		"Os_ExceptionStatusType"
	.byte		0
	.4byte		.L11976
.L11981:
	.sleb128	24
	.4byte		.L11982-.L2
	.byte		0x1
	.sleb128	0
.L11982:
.L11980:
	.sleb128	20
	.4byte		.L11981
.L11979:
	.sleb128	17
	.byte		"Os_IsrHandlerFuncType"
	.byte		0
	.4byte		.L11980
.L11978:
	.sleb128	19
	.4byte		.L11979
.L11984:
	.sleb128	17
	.byte		"Os_ExceptionTypeType"
	.byte		0
	.4byte		.L11985
.L11988:
	.sleb128	17
	.byte		"Os_ShudownErrorType"
	.byte		0
	.4byte		.L11989
.L11990:
	.sleb128	17
	.byte		"Os_ParameterErrorType"
	.byte		0
	.4byte		.L11991
.L11992:
	.sleb128	17
	.byte		"Os_ServiceErrorType"
	.byte		0
	.4byte		.L11993
.L11995:
	.sleb128	17
	.byte		"ServiceTraceType"
	.byte		0
	.4byte		.L11448
.L11996:
	.sleb128	17
	.byte		"OSServiceIdType"
	.byte		0
	.4byte		.L11997
.L11999:
	.sleb128	17
	.byte		"TryToGetSpinlockRefType"
	.byte		0
	.4byte		.L11753
.L12001:
	.sleb128	17
	.byte		"Os_SystemInternalErrorType"
	.byte		0
	.4byte		.L12002
.L12007:
	.sleb128	19
	.4byte		.L11454
.L12009:
	.sleb128	17
	.byte		"Os_IsrPlatformLevelType"
	.byte		0
	.4byte		.L11431
.L12008:
	.sleb128	19
	.4byte		.L12009
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11419:
	.sleb128	0
.L11415:
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
.L11440:
	.sleb128	0
.L11436:

	.section	.debug_loc,,n
	.align	0
.L11433:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locend
.L11456:
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),3
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),0
	.d2locend
.L11466:
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),3
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),7
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo12),7
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo14),7
	.d2locend
.L11471:
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo15),4
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo14),31
	.d2locend
.L11473:
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo14),4
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo17),3
	.d2locend
.L11479:
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo19),3
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo21),28
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo23),3
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo25),31
	.d2locreg	%offsetof(.Llo26), %offsetof(.Llo27),31
	.d2locend
.L11480:
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo28),4
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo25),30
	.d2locreg	%offsetof(.Llo26), %offsetof(.Llo27),30
	.d2locend
.L11483:
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo30),3
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo31),29
	.d2locend
.L11485:
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo22),3
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo25),28
	.d2locreg	%offsetof(.Llo26), %offsetof(.Llo33),28
	.d2locend
.L11495:
	.d2locreg	%offsetof(.Llo34), %offsetof(.Llo35),3
	.d2locreg	%offsetof(.Llo36), %offsetof(.Llo25),4
	.d2locend
.L11501:
	.d2locreg	%offsetof(.Llo37), %offsetof(.Llo38),0
	.d2locend
.L11507:
	.d2locreg	%offsetof(.Llo39), %offsetof(.Llo40),3
	.d2locreg	%offsetof(.Llo41), %offsetof(.Llo42),31
	.d2locreg	%offsetof(.Llo43), %offsetof(.Llo44),31
	.d2locend
.L11508:
	.d2locreg	%offsetof(.Llo39), %offsetof(.Llo40),4
	.d2locreg	%offsetof(.Llo41), %offsetof(.Llo45),30
	.d2locreg	%offsetof(.Llo46), %offsetof(.Llo47),4
	.d2locend
.L11510:
	.d2locreg	%offsetof(.Llo41), %offsetof(.Llo48),3
	.d2locreg	%offsetof(.Llo49), %offsetof(.Llo42),3
	.d2locreg	%offsetof(.Llo50), %offsetof(.Llo51),3
	.d2locreg	%offsetof(.Llo52), %offsetof(.Llo53),3
	.d2locend
.L11517:
	.d2locreg	%offsetof(.Llo54), %offsetof(.Llo55),3
	.d2locreg	%offsetof(.Llo56), %offsetof(.Llo57),31
	.d2locreg	%offsetof(.Llo58), %offsetof(.Llo59),31
	.d2locend
.L11521:
	.d2locreg	%offsetof(.Llo54), %offsetof(.Llo60),4
	.d2locreg	%offsetof(.Llo56), %offsetof(.Llo61),30
	.d2locreg	%offsetof(.Llo58), %offsetof(.Llo59),30
	.d2locend
.L11523:
	.d2locreg	%offsetof(.Llo62), %offsetof(.Llo63),3
	.d2locreg	%offsetof(.Llo64), %offsetof(.Llo61),29
	.d2locreg	%offsetof(.Llo65), %offsetof(.Llo66),3
	.d2locreg	%offsetof(.Llo67), %offsetof(.Llo57),3
	.d2locreg	%offsetof(.Llo68), %offsetof(.Llo69),3
	.d2locreg	%offsetof(.Llo70), %offsetof(.Llo59),29
	.d2locreg	%offsetof(.Llo71), %offsetof(.Llo72),3
	.d2locend
.L11526:
	.d2locreg	%offsetof(.Llo73), %offsetof(.Llo61),28
	.d2locreg	%offsetof(.Llo74), %offsetof(.Llo75),28
	.d2locreg	%offsetof(.Llo58), %offsetof(.Llo59),28
	.d2locend
.L11528:
	.d2locreg	%offsetof(.Llo54), %offsetof(.Llo59),27
	.d2locreg	%offsetof(.Llo76), %offsetof(.Llo77),27
	.d2locend
.L11534:
	.d2locreg	%offsetof(.Llo78), %offsetof(.Llo79),3
	.d2locreg	%offsetof(.Llo67), %offsetof(.Llo57),4
	.d2locreg	%offsetof(.Llo80), %offsetof(.Llo72),4
	.d2locend
.L11540:
	.d2locreg	%offsetof(.Llo81), %offsetof(.Llo82),3
	.d2locreg	%offsetof(.Llo83), %offsetof(.Llo84),31
	.d2locend
.L11541:
	.d2locreg	%offsetof(.Llo81), %offsetof(.Llo85),4
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "Os_API_MC_ChainTask"
	.wrcm.nstrlist "calls", "Os_ChainTask"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Os_API_ChainTask"
	.wrcm.nstrlist "calls", "Os_Call_ErrorHook","Os_ChainTask","Os_ChainTask_Err_Stat","Os_Dispatcher_Alloc_Core","Os_ShutdownAllCores","Os_TaskOnOtherCore"
	.wrcm.nint32 "frameSize", 48
	.wrcm.end
	.wrcm.nelem "Os_ChainTask_Err_Stat"
	.wrcm.nstrlist "calls", "Os_Access_Check","Os_Task_CheckId"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Os_ChainTask"
	.wrcm.nstrlist "calls", "Os_Call_ErrorHook","Os_ChainTask_Err_Dyn","Os_Dispatcher_Alloc_Core","Os_TaskOnOtherCore","Os_Task_Activate","Os_Task_Terminate"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Os_ChainTask_Err_Dyn"
	.wrcm.nstrlist "calls", "Os_Isr_GetState"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "ChainTask"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Os_ChainTask.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Os_ChainTask.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Os_ChainTask.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Os_ChainTask.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Os_ChainTask.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Os_ChainTask.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\Os\Os\core\ssc\make\..\src\task\Os_ChainTask.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
