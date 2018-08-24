#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Os_SetEvent.c"
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
.L11427:
	.section	.Os_TEXT,,c
#$$ld
.L11423:
	.0byte		.L11421
	.d2_line_start	.debug_line.Os_TEXT
	.section	.Os_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_Isr.h"
        .d2line         227,45
#$$ld
.L11430:

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
.L11431:
	.type		Os_Isr_GetState,@function
	.size		Os_Isr_GetState,.-Os_Isr_GetState
# Number of nodes = 36

# Allocations for Os_Isr_GetState
#	?a4		coreId
# FUNC (StatusType, OS_CODE) SetEvent(CONST (TaskType, AUTOMATIC)       taskId,
	.section	.Os_PUBLIC_TEXT,,c
	.align		2
	.section	.debug_line.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_line
.L11448:
	.section	.Os_PUBLIC_TEXT,,c
#$$ld
.L11444:
	.0byte		.L11442
	.d2_line_start	.debug_line.Os_PUBLIC_TEXT
	.section	.Os_PUBLIC_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\task\\events\\Os_SetEvent.c"
        .d2line         76,28
#$$ld
.L11451:

#$$bf	SetEvent,interprocedural,rasave,nostackparams
	.globl		SetEvent
	.d2_cfa_start __cie
SetEvent:
.Llo3:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr
	stw		r0,52(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# taskId=r3 taskId=r3
	mr		r5,r5		# mask.msb=r5 mask.msb=r5
	mr		r6,r6		# mask.lsb=r6 mask.lsb=r6
	.d2prologue_end
#                                     CONST (EventMaskType, AUTOMATIC)  mask)
# {
#     VAR(Os_APICallType,AUTOMATIC) Os_SetEventCall;
# 
#     OS_API_ALLOC(Os_SetEventCall,SetEvent);
	.d2line		81
	e_lis		r0,4660
	e_or2i		r0,22136
	stw		r0,8(r1)
	lis		r4,Os_API_SetEvent@ha
	e_add16i		r4,r4,Os_API_SetEvent@l
	stw		r4,20(r1)
	diab.li		r4,0
	stw		r4,16(r1)
#     Os_SetEventCall.Os_API_Data.Os_ApiSetEvent.TaskId     =  taskId;
	.d2line		82
	stw		r3,24(r1)		# taskId=r3
#     Os_SetEventCall.Os_API_Data.Os_ApiSetEvent.EventMask  =  mask;
	.d2line		83
	stw		r5,32(r1)		# mask.msb=r5
	stw		r6,36(r1)		# mask.lsb=r6
# 
#     OS_SYSCALL(Os_SetEventCall);
	.d2line		85
	diab.addi		r3,r1,8		# taskId=r3
.Llo4:
	bl		OS_SYS_CALL
# 
#     return Os_SetEventCall.Os_API_ReturnValue;
	.d2line		87
.Llo5:
	lbz		r3,12(r1)		# taskId=r3
# }
	.d2line		88
	.d2epilogue_begin
	lwz		r0,52(r1)
	mtspr		lr,r0
	diab.addi		r1,r1,48		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_PUBLIC_TEXT,,c
#$$ld
.L11452:
	.type		SetEvent,@function
	.size		SetEvent,.-SetEvent
# Number of nodes = 47

# Allocations for SetEvent
#	?a4		taskId
#	?a5		mask
#	SP,8		Os_SetEventCall
# LOCAL_INLINE FUNC (StatusType, OS_CODE) Os_SetEvent_Err_Dyn(
	.section	.Os_TEXT,,c
	.align		1
	.section	.Os_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\task\\events\\Os_SetEvent.c"
        .d2line         329,41
#$$ld
.L11478:

#$$bf	Os_SetEvent_Err_Dyn,interprocedural,rasave,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r31,cr0,lr
	.d2_cfa_start __cie
Os_SetEvent_Err_Dyn:
.Llo6:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r7,r3		# task=r7 task=r3
	mr		r31,r4		# callerTask=r31 callerTask=r4
	.d2prologue_end
#         CONSTP2CONST(Os_ProcStatType,AUTOMATIC,OS_CONST)  task,
#         CONSTP2CONST(Os_ProcStatType,AUTOMATIC,OS_CONST)  callerTask)
# {
#     VAR (StatusType, AUTOMATIC) retVal;
# 
#     /* The API should not return error if the following conditions satisfies
#      * If calling level is task level or Cat 2 interrupt level
#      * If TaskID is valid
#      * If Task is extended
#      * If current application has got access to the TaskID
#      * State of the task is not suspended and Task is an EXTENDED task */
# 
#     if (Os_Isr_Enabled != Os_Isr_GetState(OS_GETCOREID()))
	.d2line		342
	mfspr		r3,286
.Llo7:
	bl		Os_Isr_GetState
.Llo12:
	se_cmpi		r3,0
	bc		1,2,.L11410	# eq
#     {
#         retVal = OS_GET_ERRORCODE(E_OS_SYS_ERROR, E_OS_DISABLEDINT);  /* [OS093-01-09] [OS093-02-09] */
	.d2line		344
.Llo8:
	diab.li		r3,10		# retVal=r3
.Llo14:
	b		.L11411
.L11410:
#     }
#     else if(SUSPENDED == task->Os_ProcDyn->Os_ProcState )
	.d2line		346
.Llo15:
	lwz		r3,8(r7)		# task=r7
	lwz		r0,0(r3)
	se_cmpi		r0,3
	bc		0,2,.L11412	# ne
#     {
#         retVal = OS_GET_ERRORCODE(E_OS_SYS_ERROR, E_OS_STATE ); /* [OS001-094.v1] */
	.d2line		348
	diab.li		r3,7		# retVal=r3
.Llo16:
	b		.L11411
.L11412:
#     }
# #ifdef OS_MODULE_APPLICATION
#     else if( (callerTask != NULL_PTR) &&
	.d2line		351
.Llo17:
	se_cmpi		r31,0		# callerTask=r31
	bc		1,2,.L11414	# eq
	lwz		r0,48(r7)		# task=r7
	lwz		r3,48(r31)		# callerTask=r31
	se_cmpl		r0,r3
	bc		1,2,.L11414	# eq
.Llo13:
	lwz		r3,48(r7)		# task=r7
	lwz		r3,0(r3)
	lbz		r0,0(r3)
	se_cmpi		r0,0
	bc		1,2,.L11414	# eq
#              (task->Os_ProcOwnerApp != callerTask->Os_ProcOwnerApp) &&
#              ((uint8)APPLICATION_ACCESSIBLE != task->Os_ProcOwnerApp->Os_AppDyn->Os_AppState))
#     {
#         retVal = OS_GET_ERRORCODE(E_OS_SYS_ERROR, E_OS_ACCESS);  /* [OS509-01-06] */
	.d2line		355
.Llo9:
	diab.li		r3,1		# retVal=r3
.Llo18:
	b		.L11411
.L11414:
#     }
# #endif
#     else
#     {
#         /* List of requirements that are not checked (automatically satisfied):
#          * [OS088-01-081] [OS088-01-082] [OS001-091.v1] [OS001-095.v1]
#          */
#         retVal = E_OK;
	.d2line		363
.Llo10:
	diab.li		r3,0		# retVal=r3
.L11411:
#     }
# 
#     return retVal;
	.d2line		366
.Llo11:
	rlwinm		r3,r3,0,24,31		# retVal=r3 retVal=r3
# }
	.d2line		367
	.d2epilogue_begin
.Llo19:
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
.L11479:
	.type		Os_SetEvent_Err_Dyn,@function
	.size		Os_SetEvent_Err_Dyn,.-Os_SetEvent_Err_Dyn
# Number of nodes = 56

# Allocations for Os_SetEvent_Err_Dyn
#	?a4		task
#	?a5		callerTask
#	?a6		retVal
# LOCAL_INLINE FUNC (StatusType, OS_CODE) Os_SetEvent(VAR(TaskType,AUTOMATIC)          taskId,
	.align		1
	.section	.Os_TEXT,,c
        .d2line         213,41
#$$ld
.L11493:

#$$bf	Os_SetEvent,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Os_SetEvent:
.Llo20:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr
	stmw		r27,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	27,31,1,1
	stw		r0,52(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# taskId=r31 taskId=r3
	mr		r28,r5		# mask.msb=r28 mask.msb=r5
	mr		r27,r6		# mask.lsb=r27 mask.lsb=r6
	mr		r8,r7		# callerTask=r8 callerTask=r7
	.d2prologue_end
#                                        VAR (EventMaskType, AUTOMATIC)                mask,
#                                        P2CONST(Os_ProcStatType,AUTOMATIC,OS_CONST)   callerTask)
# {
# 
#     P2CONST(Os_ProcStatType, AUTOMATIC, OS_CONST) task = &Os_Proc_Stat[taskId];
	.d2line		218
	lis		r30,Os_Proc_Stat@ha		# taskId=r30
	e_add16i		r30,r30,Os_Proc_Stat@l		# taskId=r30 taskId=r30
	e_mulli		r3,r3,80		# taskId=r3 taskId=r3
	se_add		r3,r30		# taskId=r3 taskId=r3 taskId=r30
.Llo21:
	mr		r30,r3		# task=r30 task=r3
#     CONST(StatusType,AUTOMATIC) retVal = Os_SetEvent_Err_Dyn(task,callerTask);
	.d2line		219
	mr		r3,r30		# task=r3 task=r30
.Llo29:
	mr		r4,r8		# callerTask=r4 callerTask=r8
	bl		Os_SetEvent_Err_Dyn
.Llo26:
	mr		r29,r3		# retVal=r29 retVal=r3
# 
#     if( E_OK == retVal )
	.d2line		221
	rlwinm		r3,r3,0,24,31		# retVal=r3 retVal=r3
	se_cmpi		r3,0		# retVal=r3
	bc		0,2,.L11390	# ne
#     {
#         /* Updating set of events */
#         /* [OS467-03] [OS001-097.v1] */
#         task->Os_ProcDyn->Os_ProcEvents |= (EventMaskType)(task->Os_ProcEventRights & mask);
	.d2line		225
.Llo22:
	lwz		r3,8(r30)		# retVal=r3 task=r30
.Llo30:
	lwz		r0,8(r3)		# retVal=r3
	lwz		r4,12(r3)		# retVal=r3
	lwz		r6,24(r30)		# mask.msb=r6 task=r30
	lwz		r5,28(r30)		# mask.lsb=r5 task=r30
	and		r5,r5,r27		# mask.lsb=r5 mask.lsb=r5
	and		r6,r6,r28		# mask.msb=r6 mask.msb=r6
	or		r4,r4,r5		# mask.lsb=r5
	or		r0,r0,r6		# mask.msb=r6
	stw		r0,8(r3)		# retVal=r3
	stw		r4,12(r3)		# retVal=r3
# 
#         /* Checking whether at least one of the events the task was
#          * Waiting for has occurred */
#         if((task->Os_ProcDyn->Os_ProcEvents & task->Os_ProcDyn->Os_ProcEventWaitingFor) != 0U )
	.d2line		229
	lwz		r3,8(r30)		# retVal=r3 task=r30
	lwz		r0,8(r3)		# retVal=r3
	lwz		r4,12(r3)		# retVal=r3
	lwz		r5,16(r3)		# mask.lsb=r5 retVal=r3
	lwz		r3,20(r3)		# retVal=r3 retVal=r3
	and		r3,r3,r4		# retVal=r3 retVal=r3
	and		r0,r0,r5		# mask.lsb=r5
	or.		r0,r0,r3		# retVal=r3
	bc		1,2,.L11395	# eq
#         {
#             /* At least one event specified in waitMask is set in the Mask  */
#             /* Moving to ready state */
#             task->Os_ProcDyn->Os_ProcEventWaitingFor = (EventMaskType)0U; /* [OS001-096.v1] */
	.d2line		233
.Llo27:
	lwz		r3,8(r30)		# retVal=r3 task=r30
	diab.li		r0,0
	stw		r0,16(r3)		# retVal=r3
	stw		r0,20(r3)		# retVal=r3
# 
#           #ifdef OS_MODULE_MULTICORE
#             /* the cross core action must be executed by the dispatcher */
#             if(Os_true == Os_TaskOnOtherCore(taskId)) /* [OS602-01] [OS602-02] */
	.d2line		237
	mr		r3,r31		# taskId=r3 taskId=r31
	bl		Os_TaskOnOtherCore
	se_cmpi		r3,1		# taskId=r3
	bc		0,2,.L11392	# ne
	.section	.Os_TEXT,,c
.L11507:
#             {
#                 CONSTP2VAR(Os_DispatchElementType, AUTOMATIC, OS_CONST) disp = Os_Dispatcher_Alloc_Core(task->Os_ProcCoreID);
	.d2line		239
	lhz		r3,4(r30)		# taskId=r3 task=r30
	bl		Os_Dispatcher_Alloc_Core
.Llo32:
	mr		r4,r3		# disp=r4 disp=r3
#                 OS_API_ALLOCINTERNAL(disp, disp->Os_DispatchApiInternal, SetEventCrossCore);
	.d2line		240
.Llo33:
	e_lis		r0,4660
.Llo34:
	e_or2i		r0,22136
	stw		r0,16(r4)		# disp=r4
	lis		r3,Os_API_SetEventCrossCore@ha		# taskId=r3
	e_add16i		r3,r3,Os_API_SetEventCrossCore@l		# taskId=r3 taskId=r3
	stw		r3,28(r4)		# disp=r4 taskId=r3
	diab.li		r0,0
	stw		r0,24(r4)		# disp=r4
	diab.addi		r3,r4,16		# taskId=r3 disp=r4
	stw		r3,12(r4)		# disp=r4 taskId=r3
	diab.li		r0,4
	stw		r0,0(r4)		# disp=r4
#                 disp->Os_DispatchApiInternal.Os_API_Data.Os_ApiSetEvent.TaskId = taskId;
	.d2line		241
	stw		r31,32(r4)		# disp=r4 taskId=r31
	.section	.Os_TEXT,,c
.L11508:
.Llo23:
	b		.L11395
.L11392:
#             }
#             else
#           #endif /* OS_MODULE_MULTICORE */
#             {
#                 Os_Task_Release(task);
	.d2line		246
.Llo24:
	mr		r3,r30		# task=r3 task=r30
	bl		Os_Task_Release
	b		.L11395
.L11390:
	.section	.Os_TEXT,,c
.L11517:
#             }
#         }
#     }
#     else
#     {
#       #ifdef OS_CONFIG_USEPARAMETERACCESS
# 
#         CONST (CoreIdType, AUTOMATIC)  coreId = OS_GETCOREID();
	.d2line		254
.Llo28:
	mfspr		r0,286		# coreId=r0
.Llo35:
	mr		r0,r0		# coreId=r0 coreId=r0
# 
#         OS_GET_PARAMETER_ERRORCODE ( coreId ).Os_Err_MaskType_Mask = mask;
	.d2line		256
	lis		r3,(Os_Core_DynShared+24)@ha		# retVal=r3
	e_add16i		r3,r3,(Os_Core_DynShared+24)@l		# retVal=r3 retVal=r3
	rlwinm		r0,r0,0,16,31		# coreId=r0 coreId=r0
	e_mulli		r0,r0,152		# coreId=r0 coreId=r0
.Llo36:
	stwux		r28,r3,r0		# retVal=r3 mask.msb=r28
	stw		r27,4(r3)		# retVal=r3 mask.lsb=r27
#         OS_GET_PARAMETER_ERRORCODE ( coreId ).Os_Err_TaskID        = taskId;
	.d2line		257
	lis		r3,(Os_Core_DynShared+16)@ha		# retVal=r3
	e_add16i		r3,r3,(Os_Core_DynShared+16)@l		# retVal=r3 retVal=r3
	stwx		r31,r3,r0		# retVal=r3 taskId=r31
# 
#       #endif
# 
#         OS_CALL_ERRORHOOK(retVal, OSServiceId_SetEvent,callerTask); /*[OS605]*/  /* [OS001-302.v1-10] */
	.d2line		261
	rlwinm		r3,r29,0,24,31		# retVal=r3 retVal=r29
	diab.li		r4,142
	mr		r5,r8		# callerTask=r5 callerTask=r8
	bl		Os_Call_ErrorHook
	.section	.Os_TEXT,,c
.L11518:
.L11395:
#     }
# 
#     return retVal;
	.d2line		264
.Llo25:
	rlwinm		r3,r29,0,24,31		# retVal=r3 retVal=r29
# }
	.d2line		265
	.d2epilogue_begin
	lmw		r27,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo31:
	lwz		r0,52(r1)		# coreId=r0
	mtspr		lr,r0		# coreId=lr
	diab.addi		r1,r1,48		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11494:
	.type		Os_SetEvent,@function
	.size		Os_SetEvent,.-Os_SetEvent
# Number of nodes = 161

# Allocations for Os_SetEvent
#	?a4		taskId
#	?a5		mask
#	?a7		callerTask
#	?a8		$$2354
#	?a9		task
#	?a10		retVal
#	?a11		disp
#	?a12		coreId
# LOCAL_INLINE FUNC (StatusType, OS_CODE) Os_SetEvent_Err_Stat(
	.align		1
	.section	.Os_TEXT,,c
        .d2line         273,41
#$$ld
.L11525:

#$$bf	Os_SetEvent_Err_Stat,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Os_SetEvent_Err_Stat:
.Llo37:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# taskId=r31 taskId=r3
	mr		r30,r4		# callerTask=r30 callerTask=r4
	.d2prologue_end
#                                             VAR     ( TaskType,        AUTOMATIC )           taskId,
#                                             /*Parameter only used in some configurations*/
#                                             P2CONST ( Os_ProcStatType, AUTOMATIC, OS_CONST ) callerTask
#                                 )
# {
#     VAR (StatusType, AUTOMATIC) retVal = E_OK;
	.d2line		279
	diab.li		r29,0		# retVal=r29
# 
#     /* The API should not return error if the following conditions satisfies
#      * If calling level is task level or Cat 2 interrupt level
#      * If TaskID is valid
#      * If Task is extended
#      * If current application has got access to the TaskID
#      * State of the task is not suspended and Task is an EXTENDED task */
# 
#     if(Os_false == Os_Task_CheckId(taskId))
	.d2line		288
	mr		r3,r31		# taskId=r3 taskId=r31
.Llo38:
	bl		Os_Task_CheckId
.Llo43:
	se_cmpi		r3,0
	bc		0,2,.L11400	# ne
#     {
#         retVal = OS_GET_ERRORCODE(E_OS_SYS_ERROR, E_OS_ID); /* [OS001-092.v1] */
	.d2line		290
.Llo39:
	diab.li		r29,3		# retVal=r29
	b		.L11401
.L11400:
#     }
# 
#     else if(0U == Os_Proc_Stat[taskId].Os_ProcEventRights)
	.d2line		293
	lis		r3,(Os_Proc_Stat+24)@ha
	e_add16i		r3,r3,(Os_Proc_Stat+24)@l
	e_mulli		r0,r31,80		# taskId=r31
	lwzux		r0,r3,r0
	lwz		r3,4(r3)
	or.		r0,r0,r3
	bc		0,2,.L11402	# ne
#     {
#         retVal = OS_GET_ERRORCODE(E_OS_SYS_ERROR, E_OS_ACCESS); /* [OS001-093.v1] */
	.d2line		295
	diab.li		r29,1		# retVal=r29
	b		.L11401
.L11402:
#     }
# #ifdef OS_MODULE_APPLICATION
#     else
#     {
#         if(callerTask != NULL_PTR)
	.d2line		300
	se_cmpi		r30,0		# callerTask=r30
	bc		1,2,.L11401	# eq
	.section	.Os_TEXT,,c
.L11532:
#         {
#             VAR (Os_AccessType, AUTOMATIC) accessCheck;
# 
#             accessCheck = Os_Access_Check( Os_Proc_Stat[taskId].Os_ProcAppAccess,
	.d2line		304
.Llo40:
	lis		r3,(Os_Proc_Stat+52)@ha		# accessCheck=r3
.Llo46:
	e_add16i		r3,r3,(Os_Proc_Stat+52)@l		# accessCheck=r3 accessCheck=r3
.Llo41:
	e_mulli		r31,r31,80		# taskId=r31 taskId=r31
.Llo42:
	lwzx		r3,r3,r31		# accessCheck=r3 accessCheck=r3
.Llo47:
	lwz		r4,48(r30)		# callerTask=r30
	lbz		r4,4(r4)
	bl		Os_Access_Check
.Llo48:
	mr		r3,r3		# accessCheck=r3 accessCheck=r3
#                                            (ProcType)callerTask->Os_ProcOwnerApp->Os_AppId );
# 
#             if(Os_Access_Denied == accessCheck)
	.d2line		307
	se_cmpi		r3,1		# accessCheck=r3
	bc		0,2,.L11401	# ne
#             {
#                 retVal = OS_GET_ERRORCODE(E_OS_SYS_ERROR, E_OS_ACCESS);  /* [OS448-01-06] */
	.d2line		309
.Llo44:
	diab.li		r29,1		# retVal=r29
	.section	.Os_TEXT,,c
.L11533:
.L11401:
#             }
#         }
#     }
# #else
#     else
#     {
#         /* just for MISRA */
#     }
# #endif  /* OS_MODULE_APPLICATION */
# 
#     return retVal;
	.d2line		320
	rlwinm		r3,r29,0,24,31		# accessCheck=r3 retVal=r29
# }
	.d2line		321
	.d2epilogue_begin
	lmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	3,10
.Llo45:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11526:
	.type		Os_SetEvent_Err_Stat,@function
	.size		Os_SetEvent_Err_Stat,.-Os_SetEvent_Err_Stat
# Number of nodes = 62

# Allocations for Os_SetEvent_Err_Stat
#	?a4		taskId
#	?a5		callerTask
#	?a6		retVal
#	?a7		accessCheck
# OS_API(SetEvent)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         100,1
#$$ld
.L11542:

#$$bf	Os_API_SetEvent,interprocedural,rasave,nostackparams
	.globl		Os_API_SetEvent
	.d2_cfa_start __cie
Os_API_SetEvent:
.Llo49:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr
	stmw		r25,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	25,31,1,1
	stw		r0,52(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# Os_APICall=r31 Os_APICall=r3
	mr		r30,r4		# callerProc=r30 callerProc=r4
	.d2prologue_end
# {
#     VAR (StatusType, AUTOMATIC)                    retVal;
#     CONST(TaskType,AUTOMATIC)                      taskId = Os_APICall->Os_API_Data.Os_ApiSetEvent.TaskId;
	.d2line		103
	lwz		r28,16(r31)		# Os_APICall=r31
.Llo68:
	mr		r28,r28		# taskId=r28 taskId=r28
#     CONST(EventMaskType,AUTOMATIC)                 mask = Os_APICall->Os_API_Data.Os_ApiSetEvent.EventMask;
	.d2line		104
	lwz		r27,24(r31)		# Os_APICall=r31
.Llo71:
	lwz		r26,28(r31)		# Os_APICall=r31
.Llo72:
	mr		r26,r26		# mask.lsb=r26 mask.lsb=r26
	mr		r27,r27		# mask.msb=r27 mask.msb=r27
#   #if defined (OS_CONFIG_HOOK) || defined(OS_MODULE_ORTISUPPORT) || defined(OS_CONFIG_USEPARAMETERACCESS)
#     CONST      (CoreIdType,      AUTOMATIC)          coreId      = OS_GETCOREID();
	.d2line		106
	mfspr		r25,286		# coreId=r25
	mr		r25,r25		# coreId=r25 coreId=r25
#   #endif /* OS_CONFIG_HOOK || OS_MODULE_ORTISUPPORT || OS_CONFIG_USEPARAMETERACCESS */
# 
#     OS_TRACE(SetEvent_Entry , coreId);
	.d2line		109
	diab.li		r0,73
	lis		r3,(Os_Core_DynShared+120)@ha
.Llo50:
	e_add16i		r3,r3,(Os_Core_DynShared+120)@l
	rlwinm		r5,r25,0,16,31		# coreId=r25
	e_mulli		r4,r5,152
.Llo55:
	stbx		r0,r3,r4
# 
#   #ifdef OS_CONFIG_HOOK
# 
#     /* Validate API access and parameters */
#     if(OS_HOOKID_NONE != OS_GET_CORE_HOOK_DYN ( coreId )->Os_HookID)
	.d2line		114
	lis		r3,(Os_Core_Stat+4)@ha
	e_add16i		r3,r3,(Os_Core_Stat+4)@l
	e_mulli		r5,r5,20
	lwzx		r3,r3,r5
	lhz		r0,100(r3)
	se_cmpi		r0,1
	bc		1,2,.L11363	# eq
#     {
#         /* [OS088-03-062] [OS088-03-063] [OS088-03-064] [OS088-03-065] [OS088-03-066]
#          * [OS088-03-067] [OS088-03-068] [OS088-03-351] [OS088-03-351] [OS088-03-386]
#          * [OS088-03-429] [OS-MGC-0056-08] [OS-MGC-0056-51]
#          */
#         OS_FATAL_ERROR(E_OS_SYS_CALLEVEL);
	.d2line		120
.Llo51:
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
#     retVal = Os_SetEvent_Err_Stat(taskId, callerProc);
	.d2line		125
	mr		r3,r28		# taskId=r3 taskId=r28
	mr		r4,r30		# callerProc=r4 callerProc=r30
	bl		Os_SetEvent_Err_Stat
.Llo57:
	mr		r29,r3		# retVal=r29 retVal=r3
# 
#     /* Call API if validation was successful */
#     if( E_OK == retVal )
	.d2line		128
	rlwinm		r3,r3,0,24,31		# retVal=r3 retVal=r3
	se_cmpi		r3,0		# retVal=r3
	bc		0,2,.L11365	# ne
#     {
#       #ifdef OS_MODULE_MULTICORE
#         /* the cross core action must be executed by the dispatcher */
#         if(Os_true == Os_TaskOnOtherCore(taskId)) /* [OS602-01] [OS602-02] */
	.d2line		132
.Llo58:
	mr		r3,r28		# taskId=r3 taskId=r28
.Llo59:
	bl		Os_TaskOnOtherCore
	se_cmpi		r3,1		# retVal=r3
	bc		0,2,.L11366	# ne
	.section	.Os_TEXT,,c
.L11562:
#         {
#             OS_API_ALLOCAPIREMULTI(SetEvent, OS_GETCOREID(), Os_Proc_Stat[taskId].Os_ProcCoreID);
	.d2line		134
.Llo56:
	mfspr		r3,286		# retVal=r3
.Llo60:
	rlwinm		r3,r3,0,16,31		# retVal=r3 retVal=r3
.Llo61:
	bl		Os_Dispatcher_Alloc_Core
.Llo75:
	mr		r4,r3		# _disp=r4 _disp=r3
.Llo76:
	lis		r3,Os_API_MC_SetEvent@ha		# retVal=r3
.Llo62:
	e_add16i		r3,r3,Os_API_MC_SetEvent@l		# retVal=r3 retVal=r3
	stw		r3,12(r31)		# Os_APICall=r31 retVal=r3
	diab.li		r0,1
	stw		r0,8(r31)		# Os_APICall=r31
	lis		r3,(Os_Proc_Stat+4)@ha		# retVal=r3
	e_add16i		r3,r3,(Os_Proc_Stat+4)@l		# retVal=r3 retVal=r3
.Llo69:
	e_mulli		r28,r28,80		# taskId=r28 taskId=r28
.Llo70:
	lhzx		r0,r3,r28		# retVal=r3
	sth		r0,4(r4)		# _disp=r4
	diab.li		r0,3
	stw		r0,0(r4)		# _disp=r4
	stw		r31,12(r4)		# _disp=r4 Os_APICall=r31
	.section	.Os_TEXT,,c
.L11563:
.Llo52:
	b		.L11369
.L11366:
#         }
#         else
#       #endif /* OS_MODULE_MULTICORE */
#         {
#             Os_APICall->Os_API_ReturnValue =  Os_SetEvent(taskId, mask, callerProc);
	.d2line		139
.Llo53:
	mr		r3,r28		# taskId=r3 taskId=r28
	mr		r6,r26		# mask.lsb=r6 mask.lsb=r26
	mr		r5,r27		# mask.msb=r5 mask.msb=r27
	mr		r7,r30		# callerProc=r7 callerProc=r30
	bl		Os_SetEvent
.Llo63:
	stb		r3,4(r31)		# Os_APICall=r31 retVal=r3
	b		.L11369
.L11365:
#         }
#     }
#     else
#     {
#       #ifdef OS_CONFIG_USEPARAMETERACCESS
# 
#         OS_GET_PARAMETER_ERRORCODE ( coreId ).Os_Err_MaskType_Mask = mask;
	.d2line		146
.Llo64:
	lis		r3,(Os_Core_DynShared+24)@ha		# retVal=r3
.Llo65:
	e_add16i		r3,r3,(Os_Core_DynShared+24)@l		# retVal=r3 retVal=r3
	rlwinm		r5,r25,0,16,31		# coreId=r25
	e_mulli		r5,r5,152
	stwux		r27,r3,r5		# retVal=r3 mask.msb=r27
	stw		r26,4(r3)		# retVal=r3 mask.lsb=r26
#         OS_GET_PARAMETER_ERRORCODE ( coreId ).Os_Err_TaskID        = taskId;
	.d2line		147
	lis		r3,(Os_Core_DynShared+16)@ha		# retVal=r3
	e_add16i		r3,r3,(Os_Core_DynShared+16)@l		# retVal=r3 retVal=r3
	stwx		r28,r3,r5		# retVal=r3 taskId=r28
# 
#       #endif
# 
#         OS_CALL_ERRORHOOK(retVal, OSServiceId_SetEvent,callerProc); /* [OS001-302.v1-10] [OS001-321.v1] */
	.d2line		151
	rlwinm		r3,r29,0,24,31		# retVal=r3 retVal=r29
	mr		r5,r30		# callerProc=r5 callerProc=r30
	diab.li		r4,142
	bl		Os_Call_ErrorHook
#         Os_APICall->Os_API_ReturnValue = retVal;
	.d2line		152
	stb		r29,4(r31)		# Os_APICall=r31 retVal=r29
.L11369:
#     }
# 
#     OS_TRACE(SetEvent_Exit , coreId);
	.d2line		155
.Llo54:
	diab.li		r3,72		# retVal=r3
.Llo66:
	lis		r4,(Os_Core_DynShared+120)@ha		# _disp=r4
.Llo77:
	e_add16i		r4,r4,(Os_Core_DynShared+120)@l		# _disp=r4 _disp=r4
.Llo73:
	rlwinm		r25,r25,0,16,31		# coreId=r25 coreId=r25
	e_mulli		r25,r25,152		# coreId=r25 coreId=r25
.Llo74:
	stbx		r3,r4,r25		# _disp=r4 retVal=r3
# }
	.d2line		156
	.d2epilogue_begin
	lmw		r25,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	2,10
	lwz		r0,52(r1)
	mtspr		lr,r0
	diab.addi		r1,r1,48		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo67:
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11543:
	.type		Os_API_SetEvent,@function
	.size		Os_API_SetEvent,.-Os_API_SetEvent
# Number of nodes = 199

# Allocations for Os_API_SetEvent
#	?a4		Os_APICall
#	?a5		callerProc
#	?a6		retVal
#	?a7		taskId
#	?a8		mask
#	?a10		coreId
#	?a11		_disp
# FUNC(void,OS_CODE) Os_DispatchSetEvent(VAR (TaskType, AUTOMATIC) taskId, VAR (EventMaskType, AUTOMATIC)  mask)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         163,20
#$$ld
.L11570:

#$$bf	Os_DispatchSetEvent,interprocedural,rasave,nostackparams
	.globl		Os_DispatchSetEvent
	.d2_cfa_start __cie
Os_DispatchSetEvent:
.Llo78:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# taskId=r31 taskId=r3
	mr		r30,r5		# mask.msb=r30 mask.msb=r5
	mr		r29,r6		# mask.lsb=r29 mask.lsb=r6
	.d2prologue_end
# {
#     /* This function is called only internally */
#     OS_ASSERT(E_OK == Os_SetEvent_Err_Stat(taskId,NULL_PTR),E_OS_SYS_EVENTSTAT);
	.d2line		166
	mr		r3,r31		# taskId=r3 taskId=r31
.Llo79:
	diab.li		r4,0
	bl		Os_SetEvent_Err_Stat
.Llo84:
	e_andi.		r3,r3,255
	bc		1,2,.L11378	# eq
.Llo80:
	diab.li		r4,43
	lis		r3,(Os_Core_DynShared+12)@ha
	e_add16i		r3,r3,(Os_Core_DynShared+12)@l
	mfspr		r0,286
	rlwinm		r0,r0,0,16,31
	e_mulli		r0,r0,152
	stwx		r4,r3,r0
	diab.li		r3,30
	bl		Os_ShutdownAllCores
.L11378:
# 
# #ifdef OS_MODULE_MULTICORE
#     if(Os_true == Os_TaskOnOtherCore(taskId))
	.d2line		169
	mr		r3,r31		# taskId=r3 taskId=r31
	bl		Os_TaskOnOtherCore
	se_cmpi		r3,1
	bc		0,2,.L11381	# ne
	.section	.Os_TEXT,,c
.L11578:
#     {
#         CONSTP2VAR(Os_DispatchElementType, AUTOMATIC, OS_CONST) disp = Os_Dispatcher_Alloc_Core(OS_GETCOREID());
	.d2line		171
	mfspr		r3,286		# disp=r3
.Llo85:
	rlwinm		r3,r3,0,16,31		# disp=r3 disp=r3
.Llo86:
	bl		Os_Dispatcher_Alloc_Core
.Llo87:
	mr		r3,r3		# disp=r3 disp=r3
#         OS_API_ALLOCINTERNALMULTI(disp, disp->Os_DispatchApiInternal, SetEvent, Os_Proc_Stat[taskId].Os_ProcCoreID);
	.d2line		172
	e_lis		r0,4660
	e_or2i		r0,22136
	stw		r0,16(r3)		# disp=r3
	lis		r4,Os_API_MC_SetEvent@ha
	e_add16i		r4,r4,Os_API_MC_SetEvent@l
	stw		r4,28(r3)		# disp=r3
	diab.li		r0,1
	stw		r0,24(r3)		# disp=r3
	diab.addi		r0,r3,16		# disp=r3
	stw		r0,12(r3)		# disp=r3
	lis		r4,(Os_Proc_Stat+4)@ha
	e_add16i		r4,r4,(Os_Proc_Stat+4)@l
	e_mulli		r0,r31,80		# taskId=r31
	lhzx		r0,r4,r0
	sth		r0,4(r3)		# disp=r3
	diab.li		r0,5
	stw		r0,0(r3)		# disp=r3
#         disp->Os_DispatchApiInternal.Os_API_Data.Os_ApiSetEvent.TaskId = taskId;
	.d2line		173
	stw		r31,32(r3)		# disp=r3 taskId=r31
#         disp->Os_DispatchApiInternal.Os_API_Data.Os_ApiSetEvent.EventMask = mask;
	.d2line		174
	stw		r30,40(r3)		# disp=r3 mask.msb=r30
	stw		r29,44(r3)		# disp=r3 mask.lsb=r29
	.section	.Os_TEXT,,c
.L11579:
.Llo81:
	b		.L11375
.L11381:
#     }
#     else
# #endif
#     {
#         /* in case of local core action the set event could be executed */
#         (void)Os_SetEvent(taskId, mask, NULL_PTR);
	.d2line		180
.Llo82:
	mr		r3,r31		# taskId=r3 taskId=r31
	mr		r6,r29		# mask.lsb=r6 mask.lsb=r29
	mr		r5,r30		# mask.msb=r5 mask.msb=r30
	diab.li		r7,0
	bl		Os_SetEvent
.L11375:
#     }
# }
	.d2line		182
	.d2epilogue_begin
.Llo83:
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
.L11571:
	.type		Os_DispatchSetEvent,@function
	.size		Os_DispatchSetEvent,.-Os_DispatchSetEvent
# Number of nodes = 112

# Allocations for Os_DispatchSetEvent
#	?a4		taskId
#	?a5		mask
#	?a7		disp
# OS_API(SetEventCrossCore)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         188,1
#$$ld
.L11586:

#$$bf	Os_API_SetEventCrossCore,interprocedural,rasave,nostackparams
	.globl		Os_API_SetEventCrossCore
	.d2_cfa_start __cie
Os_API_SetEventCrossCore:
.Llo88:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr		# taskId=r0
.Llo90:
	stw		r0,20(r1)		# taskId=r0
	.d2_cfa_offset    108,-1
	mr		r3,r3		# Os_APICall=r3 Os_APICall=r3
	.d2prologue_end
# {
#     CONST  (TaskType,        AUTOMATIC)           taskId = Os_APICall->Os_API_Data.Os_ApiSetEvent.TaskId;
	.d2line		190
	lwz		r0,16(r3)		# taskId=r0 Os_APICall=r3
	mr		r0,r0		# taskId=r0 taskId=r0
#     CONSTP2CONST(Os_ProcStatType, AUTOMATIC, OS_CONST) task = &Os_Proc_Stat[taskId];
	.d2line		191
	lis		r3,Os_Proc_Stat@ha		# Os_APICall=r3
	e_add16i		r3,r3,Os_Proc_Stat@l		# Os_APICall=r3 Os_APICall=r3
	e_mulli		r0,r0,80		# taskId=r0 taskId=r0
	se_add		r0,r3		# taskId=r0 taskId=r0 Os_APICall=r3
.Llo91:
	mr		r3,r0		# task=r3 task=r0
# 
#     Os_Task_Release(task);
	.d2line		193
.Llo89:
	mr		r3,r3		# task=r3 task=r3
	bl		Os_Task_Release
# }
	.d2line		194
	.d2epilogue_begin
.Llo92:
	lwz		r0,20(r1)		# taskId=r0
	mtspr		lr,r0		# taskId=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11587:
	.type		Os_API_SetEventCrossCore,@function
	.size		Os_API_SetEventCrossCore,.-Os_API_SetEventCrossCore
# Number of nodes = 18

# Allocations for Os_API_SetEventCrossCore
#	?a4		Os_APICall
#	not allocated	callerProc
#	?a5		taskId
#	?a6		task
# OS_APIMC(SetEvent)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         198,1
#$$ld
.L11596:

#$$bf	Os_API_MC_SetEvent,interprocedural,rasave,nostackparams
	.globl		Os_API_MC_SetEvent
	.d2_cfa_start __cie
Os_API_MC_SetEvent:
.Llo93:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# Os_APICall=r31 Os_APICall=r3
.Llo94:
	mr		r4,r4		# callerProc=r4 callerProc=r4
	.d2prologue_end
# {
#     /* [OS604-01][OS604-02][OS604-03]*/
#     Os_APICall->Os_API_ReturnValue = Os_SetEvent(Os_APICall->Os_API_Data.Os_ApiSetEvent.TaskId,
	.d2line		201
.Llo95:
	lwz		r3,16(r31)		# Os_APICall=r31
	lwz		r5,24(r31)		# Os_APICall=r31
	lwz		r6,28(r31)		# Os_APICall=r31
	mr		r7,r4		# callerProc=r7 callerProc=r4
	bl		Os_SetEvent
.Llo97:
	stb		r3,4(r31)		# Os_APICall=r31
#                                                  Os_APICall->Os_API_Data.Os_ApiSetEvent.EventMask,
#                                                  callerProc);
# }
	.d2line		204
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo96:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11597:
	.type		Os_API_MC_SetEvent,@function
	.size		Os_API_MC_SetEvent,.-Os_API_MC_SetEvent
# Number of nodes = 19

# Allocations for Os_API_MC_SetEvent
#	?a4		Os_APICall
#	?a5		callerProc

# Allocations for module
	.section	.text_vle
	.0byte		.L11601
	.section	.text_vle
	.0byte		.L11605
	.section	.Os_BSS,,b
	.0byte		.L11612
	.section	.text_vle
#$$ld
.L5:
.L12087:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_Types.h"
.L12084:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ApplicationApiTypes.h"
.L12082:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ScheduleTableApiTypes.h"
.L12080:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_TaskApiTypes.h"
.L12078:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_SpinlockApiTypes.h"
.L12066:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_Access.h"
.L12064:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_Isr.h"
.L12059:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\PowerPC\\WindRiver\\AUTOSAR\\ar422\\MemMap.h"
.L12057:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_InternalTypes.h"
.L12040:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ErrorApiTypes.h"
.L12020:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ExceptionApiTypes.h"
.L11975:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_ApplicationCfgTypes.h"
.L11927:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_HookApiTypes.h"
.L11902:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_TrustedFunctionCfgTypes.h"
.L11667:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_ApiDispatchCfgTypes.h"
.L11617:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_SchedulerCfgTypes.h"
.L11606:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_CoreCfgTypes.h"
.L11602:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_TaskCfgTypes.h"
	.d2_line_end
	.section	.Os_TEXT,,c
#$$ld
.L11424:
.L11480:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\task\\events\\Os_SetEvent.c"
.L11432:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_Isr.h"
	.d2_line_end
	.section	.Os_PUBLIC_TEXT,,c
#$$ld
.L11445:
.L11453:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\task\\events\\Os_SetEvent.c"
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
	.uleb128	54
	.byte		0x0
	.uleb128	2
	.uleb128	9
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	6
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
	.uleb128	9
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	8
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
	.uleb128	9
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
	.uleb128	10
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\task\\events\\Os_SetEvent.c"
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
.L11421:
	.4byte		.L11422-.L11420
.L11420:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L11426-.L11421
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\task\\events\\Os_SetEvent.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L11423
	.4byte		.L11424
	.4byte		.L11427
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11435:
	.sleb128	2
	.4byte		.L11429-.L11421
	.byte		"Os_Isr_GetState"
	.byte		0
	.4byte		.L11432
	.uleb128	227
	.uleb128	45
	.4byte		.L11433
	.byte		0x1
	.4byte		.L11430
	.4byte		.L11431
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L11432
	.uleb128	227
	.uleb128	45
	.byte		"coreId"
	.byte		0
	.4byte		.L11436
	.4byte		.L11440
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11429:
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
.L11442:
	.4byte		.L11443-.L11441
.L11441:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L11447-.L11442
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\task\\events\\Os_SetEvent.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L11444
	.4byte		.L11445
	.4byte		.L11448
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
.L11457:
	.sleb128	4
	.4byte		.L11450-.L11442
	.byte		"SetEvent"
	.byte		0
	.4byte		.L11453
	.uleb128	76
	.uleb128	28
	.4byte		.L11454
	.byte		0x1
	.byte		0x1
	.4byte		.L11451
	.4byte		.L11452
	.sleb128	3
	.4byte		.L11453
	.uleb128	76
	.uleb128	28
	.byte		"taskId"
	.byte		0
	.4byte		.L11458
	.4byte		.L11464
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
.L11471:
	.sleb128	5
	.sleb128	5
	.byte		0x3
	.4byte		.L11469
.L11472:
	.sleb128	5
	.sleb128	5
	.byte		0x3
	.4byte		.L11470
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	6
	.4byte		.L11453
	.uleb128	76
	.uleb128	28
	.byte		"mask"
	.byte		0
	.4byte		.L11465
	.sleb128	14
	.byte		0x99
	.4byte		.L11471-.L11442
	.byte		0x93
	.uleb128	4
	.byte		0x99
	.4byte		.L11472-.L11442
	.byte		0x93
	.uleb128	4
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
.L11473:
	.sleb128	7
	.4byte		.L11453
	.uleb128	79
	.uleb128	35
	.byte		"Os_SetEventCall"
	.byte		0
	.4byte		.L11474
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11450:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11481:
	.sleb128	2
	.4byte		.L11477-.L11421
	.byte		"Os_SetEvent_Err_Dyn"
	.byte		0
	.4byte		.L11480
	.uleb128	329
	.uleb128	41
	.4byte		.L11454
	.byte		0x1
	.4byte		.L11478
	.4byte		.L11479
	.sleb128	3
	.4byte		.L11480
	.uleb128	329
	.uleb128	41
	.byte		"task"
	.byte		0
	.4byte		.L11482
	.4byte		.L11487
	.sleb128	3
	.4byte		.L11480
	.uleb128	329
	.uleb128	41
	.byte		"callerTask"
	.byte		0
	.4byte		.L11482
	.4byte		.L11488
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11489:
	.sleb128	8
	.4byte		.L11480
	.uleb128	333
	.uleb128	33
	.byte		"retVal"
	.byte		0
	.4byte		.L11454
	.4byte		.L11490
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11477:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11495:
	.sleb128	2
	.4byte		.L11492-.L11421
	.byte		"Os_SetEvent"
	.byte		0
	.4byte		.L11480
	.uleb128	213
	.uleb128	41
	.4byte		.L11454
	.byte		0x1
	.4byte		.L11493
	.4byte		.L11494
	.sleb128	3
	.4byte		.L11480
	.uleb128	213
	.uleb128	41
	.byte		"taskId"
	.byte		0
	.4byte		.L11459
	.4byte		.L11496
.L11499:
	.sleb128	5
	.sleb128	5
	.byte		0x3
	.4byte		.L11497
.L11500:
	.sleb128	5
	.sleb128	5
	.byte		0x3
	.4byte		.L11498
	.sleb128	6
	.4byte		.L11480
	.uleb128	213
	.uleb128	41
	.byte		"mask"
	.byte		0
	.4byte		.L11466
	.sleb128	14
	.byte		0x99
	.4byte		.L11499-.L11421
	.byte		0x93
	.uleb128	4
	.byte		0x99
	.4byte		.L11500-.L11421
	.byte		0x93
	.uleb128	4
	.sleb128	3
	.4byte		.L11480
	.uleb128	213
	.uleb128	41
	.byte		"callerTask"
	.byte		0
	.4byte		.L11483
	.4byte		.L11501
.L11502:
	.sleb128	8
	.4byte		.L11480
	.uleb128	218
	.uleb128	51
	.byte		"task"
	.byte		0
	.4byte		.L11483
	.4byte		.L11503
.L11504:
	.sleb128	8
	.4byte		.L11480
	.uleb128	219
	.uleb128	33
	.byte		"retVal"
	.byte		0
	.4byte		.L11505
	.4byte		.L11506
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	9
	.4byte		.L11510
	.4byte		.L11507
	.4byte		.L11508
.L11511:
	.sleb128	8
	.4byte		.L11480
	.uleb128	239
	.uleb128	73
	.byte		"disp"
	.byte		0
	.4byte		.L11512
	.4byte		.L11516
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11510:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	9
	.4byte		.L11520
	.4byte		.L11517
	.4byte		.L11518
.L11521:
	.sleb128	8
	.4byte		.L11480
	.uleb128	254
	.uleb128	40
	.byte		"coreId"
	.byte		0
	.4byte		.L11436
	.4byte		.L11522
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11520:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11492:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11527:
	.sleb128	2
	.4byte		.L11524-.L11421
	.byte		"Os_SetEvent_Err_Stat"
	.byte		0
	.4byte		.L11480
	.uleb128	273
	.uleb128	41
	.4byte		.L11454
	.byte		0x1
	.4byte		.L11525
	.4byte		.L11526
	.sleb128	3
	.4byte		.L11480
	.uleb128	273
	.uleb128	41
	.byte		"taskId"
	.byte		0
	.4byte		.L11459
	.4byte		.L11528
	.sleb128	3
	.4byte		.L11480
	.uleb128	273
	.uleb128	41
	.byte		"callerTask"
	.byte		0
	.4byte		.L11483
	.4byte		.L11529
.L11530:
	.sleb128	8
	.4byte		.L11480
	.uleb128	279
	.uleb128	33
	.byte		"retVal"
	.byte		0
	.4byte		.L11454
	.4byte		.L11531
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	9
	.4byte		.L11535
	.4byte		.L11532
	.4byte		.L11533
.L11536:
	.sleb128	8
	.4byte		.L11480
	.uleb128	302
	.uleb128	44
	.byte		"accessCheck"
	.byte		0
	.4byte		.L11537
	.4byte		.L11539
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11535:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11524:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11544:
	.sleb128	10
	.4byte		.L11541-.L11421
	.byte		"Os_API_SetEvent"
	.byte		0
	.4byte		.L11480
	.uleb128	100
	.uleb128	1
	.byte		0x1
	.byte		0x1
	.4byte		.L11542
	.4byte		.L11543
	.sleb128	3
	.4byte		.L11480
	.uleb128	100
	.uleb128	1
	.byte		"Os_APICall"
	.byte		0
	.4byte		.L11545
	.4byte		.L11546
	.sleb128	3
	.4byte		.L11480
	.uleb128	100
	.uleb128	1
	.byte		"callerProc"
	.byte		0
	.4byte		.L11547
	.4byte		.L11550
.L11551:
	.sleb128	8
	.4byte		.L11480
	.uleb128	102
	.uleb128	52
	.byte		"retVal"
	.byte		0
	.4byte		.L11454
	.4byte		.L11552
.L11553:
	.sleb128	8
	.4byte		.L11480
	.uleb128	103
	.uleb128	52
	.byte		"taskId"
	.byte		0
	.4byte		.L11458
	.4byte		.L11554
.L11558:
	.sleb128	5
	.sleb128	5
	.byte		0x3
	.4byte		.L11556
.L11559:
	.sleb128	5
	.sleb128	5
	.byte		0x3
	.4byte		.L11557
.L11555:
	.sleb128	7
	.4byte		.L11480
	.uleb128	104
	.uleb128	52
	.byte		"mask"
	.byte		0
	.4byte		.L11465
	.sleb128	14
	.byte		0x99
	.4byte		.L11558-.L11421
	.byte		0x93
	.uleb128	4
	.byte		0x99
	.4byte		.L11559-.L11421
	.byte		0x93
	.uleb128	4
.L11560:
	.sleb128	8
	.4byte		.L11480
	.uleb128	106
	.uleb128	54
	.byte		"coreId"
	.byte		0
	.4byte		.L11436
	.4byte		.L11561
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	9
	.4byte		.L11565
	.4byte		.L11562
	.4byte		.L11563
.L11566:
	.sleb128	8
	.4byte		.L11480
	.uleb128	134
	.uleb128	13
	.byte		"_disp"
	.byte		0
	.4byte		.L11513
	.4byte		.L11567
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11565:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11541:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11572:
	.sleb128	10
	.4byte		.L11569-.L11421
	.byte		"Os_DispatchSetEvent"
	.byte		0
	.4byte		.L11480
	.uleb128	163
	.uleb128	20
	.byte		0x1
	.byte		0x1
	.4byte		.L11570
	.4byte		.L11571
	.sleb128	3
	.4byte		.L11480
	.uleb128	163
	.uleb128	20
	.byte		"taskId"
	.byte		0
	.4byte		.L11459
	.4byte		.L11573
.L11576:
	.sleb128	5
	.sleb128	5
	.byte		0x3
	.4byte		.L11574
.L11577:
	.sleb128	5
	.sleb128	5
	.byte		0x3
	.4byte		.L11575
	.sleb128	6
	.4byte		.L11480
	.uleb128	163
	.uleb128	20
	.byte		"mask"
	.byte		0
	.4byte		.L11466
	.sleb128	14
	.byte		0x99
	.4byte		.L11576-.L11421
	.byte		0x93
	.uleb128	4
	.byte		0x99
	.4byte		.L11577-.L11421
	.byte		0x93
	.uleb128	4
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	9
	.4byte		.L11581
	.4byte		.L11578
	.4byte		.L11579
.L11582:
	.sleb128	8
	.4byte		.L11480
	.uleb128	171
	.uleb128	65
	.byte		"disp"
	.byte		0
	.4byte		.L11512
	.4byte		.L11583
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11581:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11569:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11588:
	.sleb128	10
	.4byte		.L11585-.L11421
	.byte		"Os_API_SetEventCrossCore"
	.byte		0
	.4byte		.L11480
	.uleb128	188
	.uleb128	1
	.byte		0x1
	.byte		0x1
	.4byte		.L11586
	.4byte		.L11587
	.sleb128	3
	.4byte		.L11480
	.uleb128	188
	.uleb128	1
	.byte		"Os_APICall"
	.byte		0
	.4byte		.L11545
	.4byte		.L11589
	.sleb128	6
	.4byte		.L11480
	.uleb128	188
	.uleb128	1
	.byte		"callerProc"
	.byte		0
	.4byte		.L11547
	.sleb128	2
	.byte		0x90
	.uleb128	4
.L11590:
	.sleb128	8
	.4byte		.L11480
	.uleb128	190
	.uleb128	51
	.byte		"taskId"
	.byte		0
	.4byte		.L11458
	.4byte		.L11591
.L11592:
	.sleb128	8
	.4byte		.L11480
	.uleb128	191
	.uleb128	56
	.byte		"task"
	.byte		0
	.4byte		.L11482
	.4byte		.L11593
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11585:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11598:
	.sleb128	10
	.4byte		.L11595-.L11421
	.byte		"Os_API_MC_SetEvent"
	.byte		0
	.4byte		.L11480
	.uleb128	198
	.uleb128	1
	.byte		0x1
	.byte		0x1
	.4byte		.L11596
	.4byte		.L11597
	.sleb128	3
	.4byte		.L11480
	.uleb128	198
	.uleb128	1
	.byte		"Os_APICall"
	.byte		0
	.4byte		.L11545
	.4byte		.L11599
	.sleb128	3
	.4byte		.L11480
	.uleb128	198
	.uleb128	1
	.byte		"callerProc"
	.byte		0
	.4byte		.L11547
	.4byte		.L11600
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11595:
	.section	.debug_info,,n
.L11601:
	.sleb128	11
	.byte		0x1
	.byte		0x1
	.4byte		.L11602
	.uleb128	211
	.uleb128	45
	.byte		"Os_Proc_Stat"
	.byte		0
	.4byte		.L11603
	.section	.debug_info,,n
.L11605:
	.sleb128	11
	.byte		0x1
	.byte		0x1
	.4byte		.L11606
	.uleb128	169
	.uleb128	42
	.byte		"Os_Core_Stat"
	.byte		0
	.4byte		.L11607
	.section	.debug_info,,n
.L11612:
	.sleb128	11
	.byte		0x1
	.byte		0x1
	.4byte		.L11606
	.uleb128	181
	.uleb128	45
	.byte		"Os_Core_DynShared"
	.byte		0
	.4byte		.L11613
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11611:
	.sleb128	12
	.4byte		.L11617
	.uleb128	69
	.uleb128	1
	.4byte		.L11618-.L2
	.uleb128	20
	.section	.debug_info,,n
.L788:
	.sleb128	13
	.byte		"Os_Core_DynInit"
	.byte		0
	.4byte		.L11619
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L789:
	.sleb128	13
	.byte		"Os_Core_Dyn"
	.byte		0
	.4byte		.L11623
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L790:
	.sleb128	13
	.byte		"Os_DispatchElement"
	.byte		0
	.4byte		.L11512
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L791:
	.sleb128	13
	.byte		"Os_PrepareContextFunction"
	.byte		0
	.4byte		.L11627
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L792:
	.sleb128	13
	.byte		"Os_GetStackPointerFunction"
	.byte		0
	.4byte		.L11632
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11618:
.L11622:
	.sleb128	12
	.4byte		.L11617
	.uleb128	69
	.uleb128	1
	.4byte		.L11639-.L2
	.uleb128	36
.L785:
	.sleb128	13
	.byte		"Os_IsrDynInit"
	.byte		0
	.4byte		.L11640
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L786:
	.sleb128	13
	.byte		"Os_SchedulerDynInit"
	.byte		0
	.4byte		.L11642
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L787:
	.sleb128	13
	.byte		"Os_CurrentApp"
	.byte		0
	.4byte		.L11644
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
	.sleb128	0
.L11639:
.L11616:
	.sleb128	12
	.4byte		.L11617
	.uleb128	69
	.uleb128	1
	.4byte		.L11648-.L2
	.uleb128	152
.L778:
	.sleb128	13
	.byte		"Os_Dispatcher"
	.byte		0
	.4byte		.L11649
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L779:
	.sleb128	13
	.byte		"Os_PublicDataNoInit"
	.byte		0
	.4byte		.L11651
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11648:
.L11626:
	.sleb128	12
	.4byte		.L11617
	.uleb128	69
	.uleb128	1
	.4byte		.L11653-.L2
	.uleb128	104
.L775:
	.sleb128	13
	.byte		"Os_SchedulerDyn"
	.byte		0
	.4byte		.L11654
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L776:
	.sleb128	13
	.byte		"Os_IsrDyn"
	.byte		0
	.4byte		.L11656
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L777:
	.sleb128	13
	.byte		"Os_HooksDyn"
	.byte		0
	.4byte		.L11658
	.sleb128	2
	.byte		0x23
	.uleb128	100
	.byte		0x1
	.sleb128	0
.L11653:
.L11643:
	.sleb128	12
	.4byte		.L11617
	.uleb128	69
	.uleb128	1
	.4byte		.L11660-.L2
	.uleb128	4
.L774:
	.sleb128	13
	.byte		"Os_SchedulerCurrentProc"
	.byte		0
	.4byte		.L11548
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11660:
.L11655:
	.sleb128	12
	.4byte		.L11617
	.uleb128	69
	.uleb128	1
	.4byte		.L11661-.L2
	.uleb128	48
.L766:
	.sleb128	13
	.byte		"Os_CurrentContext"
	.byte		0
	.4byte		.L11637
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L767:
	.sleb128	13
	.byte		"Os_PreviousContext"
	.byte		0
	.4byte		.L11637
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L768:
	.sleb128	13
	.byte		"Os_SchedulerScheduleAction"
	.byte		0
	.4byte		.L11662
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L769:
	.sleb128	13
	.byte		"Os_SchedulerLastScheduledPriority"
	.byte		0
	.4byte		.L11664
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L770:
	.sleb128	13
	.byte		"Os_SchedulerCurrentTask"
	.byte		0
	.4byte		.L11548
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L771:
	.sleb128	13
	.byte		"Os_SchedulerLastScheduledProc"
	.byte		0
	.4byte		.L11548
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L772:
	.sleb128	13
	.byte		"Os_SchedulerHeadPivot"
	.byte		0
	.4byte		.L11665
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L773:
	.sleb128	13
	.byte		"Os_SchedulerTailPivot"
	.byte		0
	.4byte		.L11665
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
	.sleb128	0
.L11661:
	.section	.debug_info,,n
.L11666:
	.sleb128	14
	.4byte		.L11667
	.uleb128	612
	.uleb128	1
	.4byte		.L11668-.L2
	.byte		"Os_SchedulerQueueElementType_s"
	.byte		0
	.uleb128	12
.L752:
	.sleb128	13
	.byte		"Os_QueueProc"
	.byte		0
	.4byte		.L11548
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L753:
	.sleb128	13
	.byte		"Os_QueueFrontElement"
	.byte		0
	.4byte		.L11669
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L754:
	.sleb128	13
	.byte		"Os_QueueBackElement"
	.byte		0
	.4byte		.L11669
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11668:
.L11641:
	.sleb128	12
	.4byte		.L11667
	.uleb128	612
	.uleb128	1
	.4byte		.L11670-.L2
	.uleb128	28
.L745:
	.sleb128	13
	.byte		"Os_CurrentUserModePriority"
	.byte		0
	.4byte		.L11671
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L746:
	.sleb128	13
	.byte		"Os_UserModePriorityChanged"
	.byte		0
	.4byte		.L11672
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L747:
	.sleb128	13
	.byte		"Os_DisableAllCount"
	.byte		0
	.4byte		.L11462
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L748:
	.sleb128	13
	.byte		"Os_SuspendAllCount"
	.byte		0
	.4byte		.L11462
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L749:
	.sleb128	13
	.byte		"Os_SuspendOSCount"
	.byte		0
	.4byte		.L11462
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L750:
	.sleb128	13
	.byte		"Os_SavedIsrLevel"
	.byte		0
	.4byte		.L11671
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L751:
	.sleb128	13
	.byte		"Os_SavedOSIsrLevel"
	.byte		0
	.4byte		.L11671
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
	.sleb128	0
.L11670:
.L11657:
	.sleb128	12
	.4byte		.L11667
	.uleb128	612
	.uleb128	1
	.4byte		.L11673-.L2
	.uleb128	52
.L739:
	.sleb128	13
	.byte		"Os_IsrRunningIsr"
	.byte		0
	.4byte		.L11548
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L740:
	.sleb128	13
	.byte		"Os_IsrNeedToClear"
	.byte		0
	.4byte		.L11674
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L741:
	.sleb128	13
	.byte		"Os_Isr_NestLevel"
	.byte		0
	.4byte		.L11462
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L742:
	.sleb128	13
	.byte		"Os_Isr_ServicesBackup"
	.byte		0
	.4byte		.L11678
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L743:
	.sleb128	13
	.byte		"Os_SuspendAllPrevIsrState"
	.byte		0
	.4byte		.L11671
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L744:
	.sleb128	13
	.byte		"Os_SuspendCounterpartTrack"
	.byte		0
	.4byte		.L11682
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L11673:
.L11650:
	.sleb128	12
	.4byte		.L11667
	.uleb128	612
	.uleb128	1
	.4byte		.L11684-.L2
	.uleb128	8
.L737:
	.sleb128	13
	.byte		"Os_DHead"
	.byte		0
	.4byte		.L11462
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L738:
	.sleb128	13
	.byte		"Os_DTail"
	.byte		0
	.4byte		.L11462
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11684:
.L11515:
	.sleb128	14
	.4byte		.L11667
	.uleb128	612
	.uleb128	1
	.4byte		.L11685-.L2
	.byte		"Os_DispatchElementType_s"
	.byte		0
	.uleb128	56
.L732:
	.sleb128	13
	.byte		"Os_DispatchKind"
	.byte		0
	.4byte		.L11686
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L733:
	.sleb128	13
	.byte		"Os_DispatcherLockCoreId"
	.byte		0
	.4byte		.L11437
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L734:
	.sleb128	13
	.byte		"Os_DispatchIsrId"
	.byte		0
	.4byte		.L11688
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L735:
	.sleb128	13
	.byte		"Os_DispatchApiCall"
	.byte		0
	.4byte		.L11689
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L736:
	.sleb128	13
	.byte		"Os_DispatchApiInternal"
	.byte		0
	.4byte		.L11474
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11685:
.L11475:
	.sleb128	14
	.4byte		.L11667
	.uleb128	60
	.uleb128	1
	.4byte		.L11690-.L2
	.byte		"Os_APICallType_struct"
	.byte		0
	.uleb128	40
.L727:
	.sleb128	13
	.byte		"Os_API_Magic"
	.byte		0
	.4byte		.L11462
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L728:
	.sleb128	13
	.byte		"Os_API_ReturnValue"
	.byte		0
	.4byte		.L11454
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L729:
	.sleb128	13
	.byte		"Os_API_Lock"
	.byte		0
	.4byte		.L11691
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L730:
	.sleb128	13
	.byte		"Os_API_Func"
	.byte		0
	.4byte		.L11693
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L731:
	.sleb128	13
	.byte		"Os_API_Data"
	.byte		0
	.4byte		.L11697
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11690:
	.section	.debug_info,,n
.L11697:
	.sleb128	15
	.4byte		.L11667
	.uleb128	60
	.uleb128	1
	.4byte		.L11698-.L2
	.uleb128	24
.L679:
	.sleb128	13
	.byte		"Os_ApiStartOs"
	.byte		0
	.4byte		.L11699
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L680:
	.sleb128	13
	.byte		"Os_ApiShutdownOs"
	.byte		0
	.4byte		.L11701
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L681:
	.sleb128	13
	.byte		"Os_ApiShutdownOsInternal"
	.byte		0
	.4byte		.L11703
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L682:
	.sleb128	13
	.byte		"Os_ApiShutdownAllCores"
	.byte		0
	.4byte		.L11705
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L683:
	.sleb128	13
	.byte		"Os_ApiGetNumberOfActivatedCores"
	.byte		0
	.4byte		.L11707
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L684:
	.sleb128	13
	.byte		"Os_ApiStartCore"
	.byte		0
	.4byte		.L11709
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L685:
	.sleb128	13
	.byte		"Os_ApiStartNonAutosarCore"
	.byte		0
	.4byte		.L11711
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L686:
	.sleb128	13
	.byte		"Os_ApiGetCoreID"
	.byte		0
	.4byte		.L11713
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L687:
	.sleb128	13
	.byte		"Os_ApiActivateTask"
	.byte		0
	.4byte		.L11715
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L688:
	.sleb128	13
	.byte		"Os_ApiChainTask"
	.byte		0
	.4byte		.L11717
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L689:
	.sleb128	13
	.byte		"Os_ApiGetTaskID"
	.byte		0
	.4byte		.L11719
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L690:
	.sleb128	13
	.byte		"Os_ApiGetTaskState"
	.byte		0
	.4byte		.L11721
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L691:
	.sleb128	13
	.byte		"Os_ApiSetEvent"
	.byte		0
	.4byte		.L11723
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L692:
	.sleb128	13
	.byte		"Os_ApiClearEvent"
	.byte		0
	.4byte		.L11725
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L693:
	.sleb128	13
	.byte		"Os_ApiGetEvent"
	.byte		0
	.4byte		.L11727
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L694:
	.sleb128	13
	.byte		"Os_ApiWaitEvent"
	.byte		0
	.4byte		.L11729
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L695:
	.sleb128	13
	.byte		"Os_ApiGetResource"
	.byte		0
	.4byte		.L11731
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L696:
	.sleb128	13
	.byte		"Os_ApiReleaseResource"
	.byte		0
	.4byte		.L11733
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L697:
	.sleb128	13
	.byte		"Os_ApiGetAlarmBase"
	.byte		0
	.4byte		.L11735
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L698:
	.sleb128	13
	.byte		"Os_ApiGetAlarm"
	.byte		0
	.4byte		.L11737
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L699:
	.sleb128	13
	.byte		"Os_ApiSetRelAlarm"
	.byte		0
	.4byte		.L11739
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L700:
	.sleb128	13
	.byte		"Os_ApiSetAbsAlarm"
	.byte		0
	.4byte		.L11741
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L701:
	.sleb128	13
	.byte		"Os_ApiCancelAlarm"
	.byte		0
	.4byte		.L11743
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L702:
	.sleb128	13
	.byte		"Os_ApiGetApplicationState"
	.byte		0
	.4byte		.L11745
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L703:
	.sleb128	13
	.byte		"Os_ApiTerminateApplication"
	.byte		0
	.4byte		.L11747
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L704:
	.sleb128	13
	.byte		"Os_ApiGetApplicationID"
	.byte		0
	.4byte		.L11749
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L705:
	.sleb128	13
	.byte		"Os_ApiGetISRID"
	.byte		0
	.4byte		.L11751
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L706:
	.sleb128	13
	.byte		"Os_ApiGetActiveApplicationMode"
	.byte		0
	.4byte		.L11753
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L707:
	.sleb128	13
	.byte		"Os_ApiIncrementCounter"
	.byte		0
	.4byte		.L11755
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L708:
	.sleb128	13
	.byte		"Os_ApiGetCounterValue"
	.byte		0
	.4byte		.L11757
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L709:
	.sleb128	13
	.byte		"Os_ApiGetElapsedValue"
	.byte		0
	.4byte		.L11759
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L710:
	.sleb128	13
	.byte		"Os_ApiStartScheduleTableAbs"
	.byte		0
	.4byte		.L11761
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L711:
	.sleb128	13
	.byte		"Os_ApiStartScheduleTableRel"
	.byte		0
	.4byte		.L11763
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L712:
	.sleb128	13
	.byte		"Os_ApiStopScheduleTable"
	.byte		0
	.4byte		.L11765
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L713:
	.sleb128	13
	.byte		"Os_ApiGetScheduleTableStatus"
	.byte		0
	.4byte		.L11767
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L714:
	.sleb128	13
	.byte		"Os_ApiNextScheduleTable"
	.byte		0
	.4byte		.L11769
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L715:
	.sleb128	13
	.byte		"Os_ApiStartScheduleTableSynchron"
	.byte		0
	.4byte		.L11771
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L716:
	.sleb128	13
	.byte		"Os_ApiSyncScheduleTable"
	.byte		0
	.4byte		.L11773
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L717:
	.sleb128	13
	.byte		"Os_ApiSetScheduleTableAsync"
	.byte		0
	.4byte		.L11775
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L718:
	.sleb128	13
	.byte		"Os_ApiCheckObjectAccess"
	.byte		0
	.4byte		.L11777
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L719:
	.sleb128	13
	.byte		"Os_ApiCheckObjectOwnership"
	.byte		0
	.4byte		.L11779
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L720:
	.sleb128	13
	.byte		"Os_ApiCallTrustedFunction"
	.byte		0
	.4byte		.L11781
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L721:
	.sleb128	13
	.byte		"Os_ApiStackUsage"
	.byte		0
	.4byte		.L11783
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L722:
	.sleb128	13
	.byte		"Os_API_GetSpinlock"
	.byte		0
	.4byte		.L11785
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L723:
	.sleb128	13
	.byte		"Os_API_ReleaseSpinlock"
	.byte		0
	.4byte		.L11787
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L724:
	.sleb128	13
	.byte		"Os_API_TryToGetSpinlock"
	.byte		0
	.4byte		.L11789
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L725:
	.sleb128	13
	.byte		"Os_API_IOCTransfer"
	.byte		0
	.4byte		.L11791
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L726:
	.sleb128	13
	.byte		"Os_ApiControlIdle"
	.byte		0
	.4byte		.L11793
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11698:
.L11794:
	.sleb128	12
	.4byte		.L11667
	.uleb128	60
	.uleb128	1
	.4byte		.L11795-.L2
	.uleb128	8
.L677:
	.sleb128	13
	.byte		"CoreID"
	.byte		0
	.4byte		.L11437
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L678:
	.sleb128	13
	.byte		"IdleMode"
	.byte		0
	.4byte		.L11796
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11795:
.L11792:
	.sleb128	12
	.4byte		.L11667
	.uleb128	60
	.uleb128	1
	.4byte		.L11798-.L2
	.uleb128	8
.L675:
	.sleb128	13
	.byte		"Ioc_Channel"
	.byte		0
	.4byte		.L11799
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L676:
	.sleb128	13
	.byte		"Ioc_Data"
	.byte		0
	.4byte		.L11803
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11798:
.L11790:
	.sleb128	12
	.4byte		.L11667
	.uleb128	60
	.uleb128	1
	.4byte		.L11809-.L2
	.uleb128	8
.L673:
	.sleb128	13
	.byte		"SpinlockId"
	.byte		0
	.4byte		.L11810
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L674:
	.sleb128	13
	.byte		"Success"
	.byte		0
	.4byte		.L11811
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11809:
.L11788:
	.sleb128	12
	.4byte		.L11667
	.uleb128	60
	.uleb128	1
	.4byte		.L11814-.L2
	.uleb128	2
.L672:
	.sleb128	13
	.byte		"SpinlockId"
	.byte		0
	.4byte		.L11810
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11814:
.L11786:
	.sleb128	12
	.4byte		.L11667
	.uleb128	60
	.uleb128	1
	.4byte		.L11815-.L2
	.uleb128	2
.L671:
	.sleb128	13
	.byte		"SpinlockId"
	.byte		0
	.4byte		.L11810
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11815:
.L11784:
	.sleb128	12
	.4byte		.L11667
	.uleb128	60
	.uleb128	1
	.4byte		.L11816-.L2
	.uleb128	20
.L666:
	.sleb128	13
	.byte		"ProcId"
	.byte		0
	.4byte		.L11459
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L667:
	.sleb128	13
	.byte		"MaxUsage"
	.byte		0
	.4byte		.L11455
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L668:
	.sleb128	13
	.byte		"MaxUsageRef"
	.byte		0
	.4byte		.L11817
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L669:
	.sleb128	13
	.byte		"CurrentUsage"
	.byte		0
	.4byte		.L11455
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L670:
	.sleb128	13
	.byte		"CurrentUsageRef"
	.byte		0
	.4byte		.L11817
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11816:
.L11782:
	.sleb128	12
	.4byte		.L11667
	.uleb128	60
	.uleb128	1
	.4byte		.L11818-.L2
	.uleb128	12
.L663:
	.sleb128	13
	.byte		"FunctionIndex"
	.byte		0
	.4byte		.L11819
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L664:
	.sleb128	13
	.byte		"ParamRef"
	.byte		0
	.4byte		.L11820
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L665:
	.sleb128	13
	.byte		"ReturnValue"
	.byte		0
	.4byte		.L11821
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11818:
.L11780:
	.sleb128	12
	.4byte		.L11667
	.uleb128	60
	.uleb128	1
	.4byte		.L11823-.L2
	.uleb128	12
.L660:
	.sleb128	13
	.byte		"AppID"
	.byte		0
	.4byte		.L11824
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L661:
	.sleb128	13
	.byte		"ObjectType"
	.byte		0
	.4byte		.L11825
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L662:
	.sleb128	13
	.byte		"Object"
	.byte		0
	.4byte		.L11461
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11823:
.L11778:
	.sleb128	12
	.4byte		.L11667
	.uleb128	60
	.uleb128	1
	.4byte		.L11827-.L2
	.uleb128	12
.L657:
	.sleb128	13
	.byte		"AppID"
	.byte		0
	.4byte		.L11824
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L658:
	.sleb128	13
	.byte		"ObjectType"
	.byte		0
	.4byte		.L11825
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L659:
	.sleb128	13
	.byte		"Object"
	.byte		0
	.4byte		.L11461
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11827:
.L11744:
	.sleb128	12
	.4byte		.L11667
	.uleb128	60
	.uleb128	1
	.4byte		.L11828-.L2
	.uleb128	4
.L656:
	.sleb128	13
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11829
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11828:
.L11742:
	.sleb128	12
	.4byte		.L11667
	.uleb128	60
	.uleb128	1
	.4byte		.L11830-.L2
	.uleb128	12
.L653:
	.sleb128	13
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11829
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L654:
	.sleb128	13
	.byte		"Start"
	.byte		0
	.4byte		.L11831
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L655:
	.sleb128	13
	.byte		"Cycle"
	.byte		0
	.4byte		.L11831
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11830:
.L11740:
	.sleb128	12
	.4byte		.L11667
	.uleb128	60
	.uleb128	1
	.4byte		.L11832-.L2
	.uleb128	12
.L650:
	.sleb128	13
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11829
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L651:
	.sleb128	13
	.byte		"Increment"
	.byte		0
	.4byte		.L11831
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L652:
	.sleb128	13
	.byte		"Cycle"
	.byte		0
	.4byte		.L11831
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11832:
.L11738:
	.sleb128	12
	.4byte		.L11667
	.uleb128	60
	.uleb128	1
	.4byte		.L11833-.L2
	.uleb128	8
.L648:
	.sleb128	13
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11829
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L649:
	.sleb128	13
	.byte		"TickRef"
	.byte		0
	.4byte		.L11834
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11833:
.L11736:
	.sleb128	12
	.4byte		.L11667
	.uleb128	60
	.uleb128	1
	.4byte		.L11836-.L2
	.uleb128	8
.L646:
	.sleb128	13
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11829
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L647:
	.sleb128	13
	.byte		"AlarmBaseTypeRef"
	.byte		0
	.4byte		.L11837
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11836:
.L11776:
	.sleb128	12
	.4byte		.L11667
	.uleb128	60
	.uleb128	1
	.4byte		.L11841-.L2
	.uleb128	4
.L645:
	.sleb128	13
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11842
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11841:
.L11774:
	.sleb128	12
	.4byte		.L11667
	.uleb128	60
	.uleb128	1
	.4byte		.L11843-.L2
	.uleb128	8
.L643:
	.sleb128	13
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11842
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L644:
	.sleb128	13
	.byte		"SyncValue"
	.byte		0
	.4byte		.L11831
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11843:
.L11772:
	.sleb128	12
	.4byte		.L11667
	.uleb128	60
	.uleb128	1
	.4byte		.L11844-.L2
	.uleb128	4
.L642:
	.sleb128	13
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11842
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11844:
.L11770:
	.sleb128	12
	.4byte		.L11667
	.uleb128	60
	.uleb128	1
	.4byte		.L11845-.L2
	.uleb128	8
.L640:
	.sleb128	13
	.byte		"SchTblIdFrom"
	.byte		0
	.4byte		.L11842
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L641:
	.sleb128	13
	.byte		"SchTblIdTo"
	.byte		0
	.4byte		.L11842
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11845:
.L11768:
	.sleb128	12
	.4byte		.L11667
	.uleb128	60
	.uleb128	1
	.4byte		.L11846-.L2
	.uleb128	8
.L638:
	.sleb128	13
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11842
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L639:
	.sleb128	13
	.byte		"SchTblStatus"
	.byte		0
	.4byte		.L11847
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11846:
.L11766:
	.sleb128	12
	.4byte		.L11667
	.uleb128	60
	.uleb128	1
	.4byte		.L11851-.L2
	.uleb128	4
.L637:
	.sleb128	13
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11842
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11851:
.L11764:
	.sleb128	12
	.4byte		.L11667
	.uleb128	60
	.uleb128	1
	.4byte		.L11852-.L2
	.uleb128	8
.L635:
	.sleb128	13
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11842
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L636:
	.sleb128	13
	.byte		"Offset"
	.byte		0
	.4byte		.L11831
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11852:
.L11762:
	.sleb128	12
	.4byte		.L11667
	.uleb128	60
	.uleb128	1
	.4byte		.L11853-.L2
	.uleb128	8
.L633:
	.sleb128	13
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11842
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L634:
	.sleb128	13
	.byte		"Start"
	.byte		0
	.4byte		.L11831
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11853:
.L11760:
	.sleb128	12
	.4byte		.L11667
	.uleb128	60
	.uleb128	1
	.4byte		.L11854-.L2
	.uleb128	12
.L630:
	.sleb128	13
	.byte		"CounterId"
	.byte		0
	.4byte		.L11855
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L631:
	.sleb128	13
	.byte		"ValuePtr"
	.byte		0
	.4byte		.L11834
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L632:
	.sleb128	13
	.byte		"ElapsedValuePtr"
	.byte		0
	.4byte		.L11834
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11854:
.L11758:
	.sleb128	12
	.4byte		.L11667
	.uleb128	60
	.uleb128	1
	.4byte		.L11856-.L2
	.uleb128	12
.L627:
	.sleb128	13
	.byte		"CounterId"
	.byte		0
	.4byte		.L11855
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L628:
	.sleb128	13
	.byte		"ValuePtr"
	.byte		0
	.4byte		.L11834
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L629:
	.sleb128	13
	.byte		"LightServiceFunction"
	.byte		0
	.4byte		.L11857
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11856:
.L11756:
	.sleb128	12
	.4byte		.L11667
	.uleb128	60
	.uleb128	1
	.4byte		.L11861-.L2
	.uleb128	4
.L626:
	.sleb128	13
	.byte		"CounterId"
	.byte		0
	.4byte		.L11855
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11861:
.L11752:
	.sleb128	12
	.4byte		.L11667
	.uleb128	60
	.uleb128	1
	.4byte		.L11862-.L2
	.uleb128	4
.L625:
	.sleb128	13
	.byte		"ISRId"
	.byte		0
	.4byte		.L11688
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11862:
.L11748:
	.sleb128	12
	.4byte		.L11667
	.uleb128	60
	.uleb128	1
	.4byte		.L11863-.L2
	.uleb128	2
.L623:
	.sleb128	13
	.byte		"Application"
	.byte		0
	.4byte		.L11824
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L624:
	.sleb128	13
	.byte		"RestartOption"
	.byte		0
	.4byte		.L11864
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
	.sleb128	0
.L11863:
.L11750:
	.sleb128	12
	.4byte		.L11667
	.uleb128	60
	.uleb128	1
	.4byte		.L11865-.L2
	.uleb128	1
.L622:
	.sleb128	13
	.byte		"Application"
	.byte		0
	.4byte		.L11824
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11865:
.L11746:
	.sleb128	12
	.4byte		.L11667
	.uleb128	60
	.uleb128	1
	.4byte		.L11866-.L2
	.uleb128	8
.L620:
	.sleb128	13
	.byte		"Application"
	.byte		0
	.4byte		.L11824
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L621:
	.sleb128	13
	.byte		"AppStateRef"
	.byte		0
	.4byte		.L11867
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11866:
.L11730:
	.sleb128	12
	.4byte		.L11667
	.uleb128	60
	.uleb128	1
	.4byte		.L11870-.L2
	.uleb128	8
.L619:
	.sleb128	13
	.byte		"EventMask"
	.byte		0
	.4byte		.L11466
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11870:
.L11728:
	.sleb128	12
	.4byte		.L11667
	.uleb128	60
	.uleb128	1
	.4byte		.L11871-.L2
	.uleb128	24
.L616:
	.sleb128	13
	.byte		"TaskId"
	.byte		0
	.4byte		.L11459
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L617:
	.sleb128	13
	.byte		"EventMask"
	.byte		0
	.4byte		.L11466
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L618:
	.sleb128	13
	.byte		"EventMaskRef"
	.byte		0
	.4byte		.L11872
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11871:
.L11726:
	.sleb128	12
	.4byte		.L11667
	.uleb128	60
	.uleb128	1
	.4byte		.L11874-.L2
	.uleb128	8
.L615:
	.sleb128	13
	.byte		"EventMask"
	.byte		0
	.4byte		.L11466
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11874:
.L11724:
	.sleb128	12
	.4byte		.L11667
	.uleb128	60
	.uleb128	1
	.4byte		.L11875-.L2
	.uleb128	16
.L613:
	.sleb128	13
	.byte		"TaskId"
	.byte		0
	.4byte		.L11459
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L614:
	.sleb128	13
	.byte		"EventMask"
	.byte		0
	.4byte		.L11466
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11875:
.L11722:
	.sleb128	12
	.4byte		.L11667
	.uleb128	60
	.uleb128	1
	.4byte		.L11876-.L2
	.uleb128	8
.L611:
	.sleb128	13
	.byte		"TaskId"
	.byte		0
	.4byte		.L11459
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L612:
	.sleb128	13
	.byte		"TaskStateRef"
	.byte		0
	.4byte		.L11877
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11876:
.L11720:
	.sleb128	12
	.4byte		.L11667
	.uleb128	60
	.uleb128	1
	.4byte		.L11881-.L2
	.uleb128	4
.L610:
	.sleb128	13
	.byte		"TaskIdRef"
	.byte		0
	.4byte		.L11882
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11881:
.L11718:
	.sleb128	12
	.4byte		.L11667
	.uleb128	60
	.uleb128	1
	.4byte		.L11884-.L2
	.uleb128	4
.L609:
	.sleb128	13
	.byte		"TaskId"
	.byte		0
	.4byte		.L11459
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11884:
.L11716:
	.sleb128	12
	.4byte		.L11667
	.uleb128	60
	.uleb128	1
	.4byte		.L11885-.L2
	.uleb128	4
.L608:
	.sleb128	13
	.byte		"TaskId"
	.byte		0
	.4byte		.L11459
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11885:
.L11734:
	.sleb128	12
	.4byte		.L11667
	.uleb128	60
	.uleb128	1
	.4byte		.L11886-.L2
	.uleb128	4
.L607:
	.sleb128	13
	.byte		"ResourceId"
	.byte		0
	.4byte		.L11887
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11886:
.L11732:
	.sleb128	12
	.4byte		.L11667
	.uleb128	60
	.uleb128	1
	.4byte		.L11888-.L2
	.uleb128	4
.L606:
	.sleb128	13
	.byte		"ResourceId"
	.byte		0
	.4byte		.L11887
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11888:
.L11754:
	.sleb128	12
	.4byte		.L11667
	.uleb128	60
	.uleb128	1
	.4byte		.L11889-.L2
	.uleb128	4
.L605:
	.sleb128	13
	.byte		"AppMode"
	.byte		0
	.4byte		.L11890
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11889:
.L11714:
	.sleb128	12
	.4byte		.L11667
	.uleb128	60
	.uleb128	1
	.4byte		.L11891-.L2
	.uleb128	2
.L604:
	.sleb128	13
	.byte		"CoreID"
	.byte		0
	.4byte		.L11437
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11891:
.L11708:
	.sleb128	12
	.4byte		.L11667
	.uleb128	60
	.uleb128	1
	.4byte		.L11892-.L2
	.uleb128	2
.L603:
	.sleb128	13
	.byte		"NumberOfActivatedCores"
	.byte		0
	.4byte		.L11437
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11892:
.L11706:
	.sleb128	12
	.4byte		.L11667
	.uleb128	60
	.uleb128	1
	.4byte		.L11893-.L2
	.uleb128	1
.L602:
	.sleb128	13
	.byte		"Error"
	.byte		0
	.4byte		.L11454
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11893:
.L11704:
	.sleb128	12
	.4byte		.L11667
	.uleb128	60
	.uleb128	1
	.4byte		.L11894-.L2
	.uleb128	8
.L600:
	.sleb128	13
	.byte		"ShutdownType"
	.byte		0
	.4byte		.L11895
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L601:
	.sleb128	13
	.byte		"Error"
	.byte		0
	.4byte		.L11454
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11894:
.L11702:
	.sleb128	12
	.4byte		.L11667
	.uleb128	60
	.uleb128	1
	.4byte		.L11897-.L2
	.uleb128	1
.L599:
	.sleb128	13
	.byte		"Error"
	.byte		0
	.4byte		.L11454
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11897:
.L11712:
	.sleb128	12
	.4byte		.L11667
	.uleb128	60
	.uleb128	1
	.4byte		.L11898-.L2
	.uleb128	8
.L597:
	.sleb128	13
	.byte		"CoreID"
	.byte		0
	.4byte		.L11437
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L598:
	.sleb128	13
	.byte		"StatusRef"
	.byte		0
	.4byte		.L11899
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11898:
.L11710:
	.sleb128	12
	.4byte		.L11667
	.uleb128	60
	.uleb128	1
	.4byte		.L11900-.L2
	.uleb128	8
.L595:
	.sleb128	13
	.byte		"CoreID"
	.byte		0
	.4byte		.L11437
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L596:
	.sleb128	13
	.byte		"StatusRef"
	.byte		0
	.4byte		.L11899
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11900:
.L11700:
	.sleb128	12
	.4byte		.L11667
	.uleb128	60
	.uleb128	1
	.4byte		.L11901-.L2
	.uleb128	4
.L594:
	.sleb128	13
	.byte		"AppMode"
	.byte		0
	.4byte		.L11890
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11901:
.L11802:
	.sleb128	12
	.4byte		.L11902
	.uleb128	33
	.uleb128	14
	.4byte		.L11903-.L2
	.uleb128	24
.L587:
	.sleb128	13
	.byte		"Os_IOC_ChannelDyn"
	.byte		0
	.4byte		.L11904
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L588:
	.sleb128	13
	.byte		"Os_IOC_ChannelLength"
	.byte		0
	.4byte		.L11908
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L589:
	.sleb128	13
	.byte		"Os_IOC_ChannelBuffer"
	.byte		0
	.4byte		.L11909
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L590:
	.sleb128	13
	.byte		"Os_IOC_ChannelElementSize"
	.byte		0
	.4byte		.L11910
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L591:
	.sleb128	13
	.byte		"Os_IOC_DataCount"
	.byte		0
	.4byte		.L11911
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L592:
	.sleb128	13
	.byte		"Os_IOC_DataDescriptor"
	.byte		0
	.4byte		.L11913
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L593:
	.sleb128	13
	.byte		"Os_IOC_LockResourceAddress"
	.byte		0
	.4byte		.L11918
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L11903:
.L11917:
	.sleb128	12
	.4byte		.L11902
	.uleb128	33
	.uleb128	14
	.4byte		.L11921-.L2
	.uleb128	4
.L583:
	.sleb128	13
	.byte		"Os_IOC_DataLength"
	.byte		0
	.4byte		.L11922
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L584:
	.sleb128	13
	.byte		"Os_IOC_DataOffset"
	.byte		0
	.4byte		.L11924
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L11921:
.L11907:
	.sleb128	12
	.4byte		.L11902
	.uleb128	33
	.uleb128	14
	.4byte		.L11926-.L2
	.uleb128	6
.L580:
	.sleb128	13
	.byte		"Os_IOC_ChannelHead"
	.byte		0
	.4byte		.L11908
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L581:
	.sleb128	13
	.byte		"Os_IOC_ChannelMessageCount"
	.byte		0
	.4byte		.L11908
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L582:
	.sleb128	13
	.byte		"Os_IOC_Status"
	.byte		0
	.4byte		.L11454
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11926:
.L11659:
	.sleb128	12
	.4byte		.L11927
	.uleb128	34
	.uleb128	14
	.4byte		.L11928-.L2
	.uleb128	2
.L531:
	.sleb128	13
	.byte		"Os_HookID"
	.byte		0
	.4byte		.L11929
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11928:
.L11486:
	.sleb128	14
	.4byte		.L11602
	.uleb128	80
	.uleb128	13
	.4byte		.L11930-.L2
	.byte		"Os_ProcStatType_s"
	.byte		0
	.uleb128	80
.L513:
	.sleb128	13
	.byte		"Os_ProcId"
	.byte		0
	.4byte		.L11458
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L514:
	.sleb128	13
	.byte		"Os_ProcCoreID"
	.byte		0
	.4byte		.L11436
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L515:
	.sleb128	13
	.byte		"Os_ProcDyn"
	.byte		0
	.4byte		.L11931
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L516:
	.sleb128	13
	.byte		"Os_ProcStack"
	.byte		0
	.4byte		.L11935
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L517:
	.sleb128	13
	.byte		"Os_ProcKind"
	.byte		0
	.4byte		.L11940
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L518:
	.sleb128	13
	.byte		"Os_ProcEventRights"
	.byte		0
	.4byte		.L11465
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L519:
	.sleb128	13
	.byte		"Os_ProcPriority"
	.byte		0
	.4byte		.L11943
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L520:
	.sleb128	13
	.byte		"Os_ProcRunPriority"
	.byte		0
	.4byte		.L11943
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L521:
	.sleb128	13
	.byte		"Os_ProcMaxActivations"
	.byte		0
	.4byte		.L11944
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L522:
	.sleb128	13
	.byte		"Os_ProcContext"
	.byte		0
	.4byte		.L11946
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L523:
	.sleb128	13
	.byte		"Os_ProcOwnerApp"
	.byte		0
	.4byte		.L11947
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L524:
	.sleb128	13
	.byte		"Os_ProcAppAccess"
	.byte		0
	.4byte		.L11948
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L525:
	.sleb128	13
	.byte		"Os_ProcEntryPoint"
	.byte		0
	.4byte		.L11952
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L526:
	.sleb128	13
	.byte		"Os_ProcAutoStart"
	.byte		0
	.4byte		.L11948
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
.L527:
	.sleb128	13
	.byte		"Os_ProcResourceCount"
	.byte		0
	.4byte		.L11957
	.sleb128	2
	.byte		0x23
	.uleb128	64
	.byte		0x1
.L528:
	.sleb128	13
	.byte		"Os_ProcResourceStack"
	.byte		0
	.4byte		.L11958
	.sleb128	2
	.byte		0x23
	.uleb128	68
	.byte		0x1
.L529:
	.sleb128	13
	.byte		"Os_ProcQueueElements"
	.byte		0
	.4byte		.L11964
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.byte		0x1
.L530:
	.sleb128	13
	.byte		"Os_ProcIsrPlatformConfig"
	.byte		0
	.4byte		.L11965
	.sleb128	2
	.byte		0x23
	.uleb128	76
	.byte		0x1
	.sleb128	0
.L11930:
.L11939:
	.sleb128	14
	.4byte		.L11602
	.uleb128	80
	.uleb128	13
	.4byte		.L11966-.L2
	.byte		"Os_ProcStackStruct"
	.byte		0
	.uleb128	8
.L511:
	.sleb128	13
	.byte		"Os_ProcStackSize"
	.byte		0
	.4byte		.L11967
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L512:
	.sleb128	13
	.byte		"Os_ProcStackBase"
	.byte		0
	.4byte		.L11946
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11966:
.L11934:
	.sleb128	12
	.4byte		.L11602
	.uleb128	80
	.uleb128	13
	.4byte		.L11969-.L2
	.uleb128	56
.L498:
	.sleb128	13
	.byte		"Os_ProcState"
	.byte		0
	.4byte		.L11879
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L499:
	.sleb128	13
	.byte		"Os_ProcContextState"
	.byte		0
	.4byte		.L11970
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L500:
	.sleb128	13
	.byte		"Os_ProcEvents"
	.byte		0
	.4byte		.L11466
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L501:
	.sleb128	13
	.byte		"Os_ProcEventWaitingFor"
	.byte		0
	.4byte		.L11466
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L502:
	.sleb128	13
	.byte		"Os_ProcActivations"
	.byte		0
	.4byte		.L11945
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L503:
	.sleb128	13
	.byte		"Os_ProcResourcesAllocated"
	.byte		0
	.4byte		.L11887
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L504:
	.sleb128	13
	.byte		"Os_ProcEnabled"
	.byte		0
	.4byte		.L11455
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L505:
	.sleb128	13
	.byte		"Os_ProcCurrentApp"
	.byte		0
	.4byte		.L11644
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L506:
	.sleb128	13
	.byte		"Os_ProcSpinlock"
	.byte		0
	.4byte		.L11972
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L507:
	.sleb128	13
	.byte		"Os_ProcFreeQueueElements"
	.byte		0
	.4byte		.L11669
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L508:
	.sleb128	13
	.byte		"Os_ProcCurrentPriority"
	.byte		0
	.4byte		.L11664
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L509:
	.sleb128	13
	.byte		"Os_ProcTFCallCount"
	.byte		0
	.4byte		.L11455
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L510:
	.sleb128	13
	.byte		"Os_FatalErrorOccured"
	.byte		0
	.4byte		.L11454
	.sleb128	2
	.byte		0x23
	.uleb128	53
	.byte		0x1
	.sleb128	0
.L11969:
.L11974:
	.sleb128	14
	.4byte		.L11975
	.uleb128	52
	.uleb128	1
	.4byte		.L11976-.L2
	.byte		"Os_SpinlockStatType_s"
	.byte		0
	.uleb128	16
.L450:
	.sleb128	13
	.byte		"Os_SpinlockId"
	.byte		0
	.4byte		.L11977
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L451:
	.sleb128	13
	.byte		"Os_SpinlockChainId"
	.byte		0
	.4byte		.L11977
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L452:
	.sleb128	13
	.byte		"Os_SpinlockDyn"
	.byte		0
	.4byte		.L11978
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L453:
	.sleb128	13
	.byte		"Os_SpinlockAccess"
	.byte		0
	.4byte		.L11948
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L454:
	.sleb128	13
	.byte		"Os_SpinlockLockResourceAddress"
	.byte		0
	.4byte		.L11918
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L11976:
.L11981:
	.sleb128	12
	.4byte		.L11975
	.uleb128	52
	.uleb128	1
	.4byte		.L11982-.L2
	.uleb128	12
.L447:
	.sleb128	13
	.byte		"Os_SpinlockLockerProc"
	.byte		0
	.4byte		.L11548
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L448:
	.sleb128	13
	.byte		"Os_SpinlockSuperseded"
	.byte		0
	.4byte		.L11972
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L449:
	.sleb128	13
	.byte		"Os_ResourceDependency"
	.byte		0
	.4byte		.L11960
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11982:
.L11647:
	.sleb128	14
	.4byte		.L11975
	.uleb128	52
	.uleb128	1
	.4byte		.L11983-.L2
	.byte		"Os_ApplicationStatType_s"
	.byte		0
	.uleb128	48
.L435:
	.sleb128	13
	.byte		"Os_AppDyn"
	.byte		0
	.4byte		.L11984
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L436:
	.sleb128	13
	.byte		"Os_AppId"
	.byte		0
	.4byte		.L11988
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L437:
	.sleb128	13
	.byte		"Os_AppRestartTask"
	.byte		0
	.4byte		.L11458
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L438:
	.sleb128	13
	.byte		"Os_AppKind"
	.byte		0
	.4byte		.L11989
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L439:
	.sleb128	13
	.byte		"Os_AppShutdownHook"
	.byte		0
	.4byte		.L11992
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L440:
	.sleb128	13
	.byte		"Os_AppStartupHook"
	.byte		0
	.4byte		.L11997
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L441:
	.sleb128	13
	.byte		"Os_AppErrorHook"
	.byte		0
	.4byte		.L12002
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L442:
	.sleb128	13
	.byte		"Os_AppProcIDs"
	.byte		0
	.4byte		.L12007
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L443:
	.sleb128	13
	.byte		"Os_AppCounterIDs"
	.byte		0
	.4byte		.L12010
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L444:
	.sleb128	13
	.byte		"Os_AppAlarmIDs"
	.byte		0
	.4byte		.L12013
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L445:
	.sleb128	13
	.byte		"Os_AppSchTblIDs"
	.byte		0
	.4byte		.L12016
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L446:
	.sleb128	13
	.byte		"Os_CoreAssigment"
	.byte		0
	.4byte		.L11436
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
	.sleb128	0
.L11983:
.L11987:
	.sleb128	12
	.4byte		.L11975
	.uleb128	52
	.uleb128	1
	.4byte		.L12019-.L2
	.uleb128	1
.L434:
	.sleb128	13
	.byte		"Os_AppState"
	.byte		0
	.4byte		.L11869
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12019:
.L11963:
	.sleb128	12
	.4byte		.L12020
	.uleb128	32
	.uleb128	1
	.4byte		.L12021-.L2
	.uleb128	12
.L431:
	.sleb128	13
	.byte		"Os_ResourcePriority"
	.byte		0
	.4byte		.L11943
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L432:
	.sleb128	13
	.byte		"Os_ResourceAccessRights"
	.byte		0
	.4byte		.L11949
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L433:
	.sleb128	13
	.byte		"Os_ResourceDyn"
	.byte		0
	.4byte		.L12022
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L12021:
.L12024:
	.sleb128	12
	.4byte		.L12020
	.uleb128	32
	.uleb128	1
	.4byte		.L12025-.L2
	.uleb128	4
.L430:
	.sleb128	13
	.byte		"Os_LockerProc"
	.byte		0
	.4byte		.L11548
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12025:
.L11652:
	.sleb128	12
	.4byte		.L12020
	.uleb128	32
	.uleb128	1
	.4byte		.L12026-.L2
	.uleb128	144
.L425:
	.sleb128	13
	.byte		"Os_Error"
	.byte		0
	.4byte		.L12027
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L426:
	.sleb128	13
	.byte		"Os_ExceptionStatus"
	.byte		0
	.4byte		.L12029
	.sleb128	2
	.byte		0x23
	.uleb128	120
	.byte		0x1
	.sleb128	0
.L12026:
.L11681:
	.sleb128	12
	.4byte		.L12020
	.uleb128	32
	.uleb128	1
	.4byte		.L12031-.L2
	.uleb128	24
.L419:
	.sleb128	13
	.byte		"Os_DisAllInt"
	.byte		0
	.4byte		.L12032
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L420:
	.sleb128	13
	.byte		"Os_EnAllInt"
	.byte		0
	.4byte		.L12032
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L421:
	.sleb128	13
	.byte		"Os_SusAllInt"
	.byte		0
	.4byte		.L12032
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L422:
	.sleb128	13
	.byte		"Os_ResAllInt"
	.byte		0
	.4byte		.L12032
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L423:
	.sleb128	13
	.byte		"Os_SusOsInt"
	.byte		0
	.4byte		.L12032
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L424:
	.sleb128	13
	.byte		"Os_ResOsInt"
	.byte		0
	.4byte		.L12032
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L12031:
.L12030:
	.sleb128	12
	.4byte		.L12020
	.uleb128	32
	.uleb128	1
	.4byte		.L12037-.L2
	.uleb128	20
.L414:
	.sleb128	13
	.byte		"Os_ExceptionType"
	.byte		0
	.4byte		.L12038
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L415:
	.sleb128	13
	.byte		"Os_ExceptionCause"
	.byte		0
	.4byte		.L11462
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L416:
	.sleb128	13
	.byte		"Os_ExceptionAuxiliaryCause"
	.byte		0
	.4byte		.L11462
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L417:
	.sleb128	13
	.byte		"Os_ExceptionExecutionAddress"
	.byte		0
	.4byte		.L11638
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L418:
	.sleb128	13
	.byte		"Os_ExceptionAccessAddress"
	.byte		0
	.4byte		.L11638
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L12037:
.L12028:
	.sleb128	12
	.4byte		.L12040
	.uleb128	174
	.uleb128	1
	.4byte		.L12041-.L2
	.uleb128	120
.L411:
	.sleb128	13
	.byte		"Os_ShutdownError"
	.byte		0
	.4byte		.L12042
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L412:
	.sleb128	13
	.byte		"Os_ParameterError"
	.byte		0
	.4byte		.L12044
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L413:
	.sleb128	13
	.byte		"Os_ServiceError"
	.byte		0
	.4byte		.L12046
	.sleb128	2
	.byte		0x23
	.uleb128	112
	.byte		0x1
	.sleb128	0
.L12041:
.L12047:
	.sleb128	12
	.4byte		.L12040
	.uleb128	174
	.uleb128	1
	.4byte		.L12048-.L2
	.uleb128	8
.L408:
	.sleb128	13
	.byte		"Os_ServiceTrace"
	.byte		0
	.4byte		.L12049
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L409:
	.sleb128	13
	.byte		"Os_LastError"
	.byte		0
	.4byte		.L11454
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L410:
	.sleb128	13
	.byte		"Os_FaultyServiceId"
	.byte		0
	.4byte		.L12050
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12048:
.L12045:
	.sleb128	12
	.4byte		.L12040
	.uleb128	174
	.uleb128	1
	.4byte		.L12052-.L2
	.uleb128	104
.L383:
	.sleb128	13
	.byte		"Os_Err_TaskID"
	.byte		0
	.4byte		.L11459
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L384:
	.sleb128	13
	.byte		"Os_Err_ResID"
	.byte		0
	.4byte		.L11887
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L385:
	.sleb128	13
	.byte		"Os_Err_MaskType_Mask"
	.byte		0
	.4byte		.L11466
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L386:
	.sleb128	13
	.byte		"Os_Err_AlarmID"
	.byte		0
	.4byte		.L11829
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L387:
	.sleb128	13
	.byte		"Os_Err_TicksStart"
	.byte		0
	.4byte		.L11831
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L388:
	.sleb128	13
	.byte		"Os_Err_TicksCycle"
	.byte		0
	.4byte		.L11831
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L389:
	.sleb128	13
	.byte		"Os_Err_FuncIndex"
	.byte		0
	.4byte		.L11819
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L390:
	.sleb128	13
	.byte		"Os_Err_FuncParamRefType"
	.byte		0
	.4byte		.L11820
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L391:
	.sleb128	13
	.byte		"Os_Err_ApplID"
	.byte		0
	.4byte		.L11824
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L392:
	.sleb128	13
	.byte		"Os_Err_ApplStateRefType"
	.byte		0
	.4byte		.L11867
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L393:
	.sleb128	13
	.byte		"Os_Err_ObjType"
	.byte		0
	.4byte		.L11825
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L394:
	.sleb128	13
	.byte		"Os_Err_SchedID"
	.byte		0
	.4byte		.L11842
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L395:
	.sleb128	13
	.byte		"Os_Err_SchedID_Next"
	.byte		0
	.4byte		.L11842
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L396:
	.sleb128	13
	.byte		"Os_Err_CntID"
	.byte		0
	.4byte		.L11855
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L397:
	.sleb128	13
	.byte		"Os_Err_RestartType"
	.byte		0
	.4byte		.L11864
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
.L398:
	.sleb128	13
	.byte		"Os_Err_MaskRefType"
	.byte		0
	.4byte		.L11872
	.sleb128	2
	.byte		0x23
	.uleb128	64
	.byte		0x1
.L399:
	.sleb128	13
	.byte		"Os_Err_TaskStateRef"
	.byte		0
	.4byte		.L11877
	.sleb128	2
	.byte		0x23
	.uleb128	68
	.byte		0x1
.L400:
	.sleb128	13
	.byte		"Os_Err_TickRef_Ticks"
	.byte		0
	.4byte		.L11834
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.byte		0x1
.L401:
	.sleb128	13
	.byte		"Os_Err_AlarmBaseRefType_Info"
	.byte		0
	.4byte		.L11837
	.sleb128	2
	.byte		0x23
	.uleb128	76
	.byte		0x1
.L402:
	.sleb128	13
	.byte		"Os_Err_TaskIDRef"
	.byte		0
	.4byte		.L11882
	.sleb128	2
	.byte		0x23
	.uleb128	80
	.byte		0x1
.L403:
	.sleb128	13
	.byte		"Os_Err_TblStatusRefType"
	.byte		0
	.4byte		.L11847
	.sleb128	2
	.byte		0x23
	.uleb128	84
	.byte		0x1
.L404:
	.sleb128	13
	.byte		"Os_Err_TickRef_ElapsedTicks"
	.byte		0
	.4byte		.L11834
	.sleb128	2
	.byte		0x23
	.uleb128	88
	.byte		0x1
.L405:
	.sleb128	13
	.byte		"Os_Err_ObjObj"
	.byte		0
	.4byte		.L11461
	.sleb128	2
	.byte		0x23
	.uleb128	92
	.byte		0x1
.L406:
	.sleb128	13
	.byte		"Os_Err_SpinlockID"
	.byte		0
	.4byte		.L11810
	.sleb128	2
	.byte		0x23
	.uleb128	96
	.byte		0x1
.L407:
	.sleb128	13
	.byte		"Os_Err_TryToGetSpinlockRef"
	.byte		0
	.4byte		.L12053
	.sleb128	2
	.byte		0x23
	.uleb128	100
	.byte		0x1
	.sleb128	0
.L12052:
.L12043:
	.sleb128	12
	.4byte		.L12040
	.uleb128	174
	.uleb128	1
	.4byte		.L12054-.L2
	.uleb128	8
.L381:
	.sleb128	13
	.byte		"Os_ShutdownErrorCode"
	.byte		0
	.4byte		.L11454
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L382:
	.sleb128	13
	.byte		"Os_ShutdownInternalErrorCode"
	.byte		0
	.4byte		.L12055
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12054:
.L11840:
	.sleb128	12
	.4byte		.L12057
	.uleb128	50
	.uleb128	1
	.4byte		.L12058-.L2
	.uleb128	12
.L378:
	.sleb128	13
	.byte		"maxallowedvalue"
	.byte		0
	.4byte		.L11831
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L379:
	.sleb128	13
	.byte		"ticksperbase"
	.byte		0
	.4byte		.L11831
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L380:
	.sleb128	13
	.byte		"mincycle"
	.byte		0
	.4byte		.L11831
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L12058:
.L11677:
	.sleb128	12
	.4byte		.L12059
	.uleb128	87
	.uleb128	7
	.4byte		.L12060-.L2
	.uleb128	8
.L366:
	.sleb128	13
	.byte		"Os_IsrPltId"
	.byte		0
	.4byte		.L12061
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L367:
	.sleb128	13
	.byte		"Os_IsrPltLevel"
	.byte		0
	.4byte		.L12062
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12060:
	.section	.debug_info,,n
.L11434:
	.sleb128	16
	.4byte		.L12064
	.uleb128	155
	.uleb128	1
	.4byte		.L12065-.L2
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
.L12065:
.L11538:
	.sleb128	16
	.4byte		.L12066
	.uleb128	32
	.uleb128	1
	.4byte		.L12067-.L2
	.uleb128	4
	.sleb128	17
	.byte		"Os_Access_Granted"
	.byte		0
	.sleb128	0
	.sleb128	17
	.byte		"Os_Access_Denied"
	.byte		0
	.sleb128	1
	.sleb128	0
.L12067:
.L11663:
	.sleb128	16
	.4byte		.L11617
	.uleb128	69
	.uleb128	1
	.4byte		.L12068-.L2
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
.L12068:
.L11687:
	.sleb128	16
	.4byte		.L11667
	.uleb128	612
	.uleb128	1
	.4byte		.L12069-.L2
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
.L12069:
.L11692:
	.sleb128	16
	.4byte		.L11667
	.uleb128	60
	.uleb128	1
	.4byte		.L12070-.L2
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
.L12070:
	.section	.debug_info,,n
.L11822:
	.sleb128	18
	.4byte		.L11902
	.uleb128	33
	.uleb128	14
	.4byte		.L12071-.L2
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
.L12071:
.L11971:
	.sleb128	16
	.4byte		.L11602
	.uleb128	80
	.uleb128	13
	.4byte		.L12072-.L2
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
.L12072:
.L11942:
	.sleb128	16
	.4byte		.L11602
	.uleb128	61
	.uleb128	1
	.4byte		.L12073-.L2
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
.L12073:
.L11991:
	.sleb128	16
	.4byte		.L11975
	.uleb128	52
	.uleb128	1
	.4byte		.L12074-.L2
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
.L12074:
.L12039:
	.sleb128	16
	.4byte		.L12020
	.uleb128	32
	.uleb128	1
	.4byte		.L12075-.L2
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
.L12075:
.L12056:
	.sleb128	16
	.4byte		.L12040
	.uleb128	174
	.uleb128	1
	.4byte		.L12076-.L2
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
.L12076:
.L12051:
	.sleb128	16
	.4byte		.L12040
	.uleb128	86
	.uleb128	1
	.4byte		.L12077-.L2
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
.L12077:
.L11813:
	.sleb128	16
	.4byte		.L12078
	.uleb128	43
	.uleb128	1
	.4byte		.L12079-.L2
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
.L12079:
.L11880:
	.sleb128	16
	.4byte		.L12080
	.uleb128	37
	.uleb128	1
	.4byte		.L12081-.L2
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
.L12081:
.L11850:
	.sleb128	16
	.4byte		.L12082
	.uleb128	40
	.uleb128	1
	.4byte		.L12083-.L2
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
.L12083:
.L11826:
	.sleb128	16
	.4byte		.L12084
	.uleb128	47
	.uleb128	1
	.4byte		.L12085-.L2
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
.L12085:
.L11896:
	.sleb128	16
	.4byte		.L12057
	.uleb128	42
	.uleb128	13
	.4byte		.L12086-.L2
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
.L12086:
.L11797:
	.sleb128	16
	.4byte		.L12087
	.uleb128	83
	.uleb128	14
	.4byte		.L12088-.L2
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
.L12088:
	.section	.debug_info,,n
.L11433:
	.sleb128	19
	.byte		"Os_IsrStateType"
	.byte		0
	.4byte		.L11434
	.section	.debug_info,,n
.L11439:
	.sleb128	20
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L11438:
	.sleb128	19
	.byte		"uint16"
	.byte		0
	.4byte		.L11439
.L11437:
	.sleb128	19
	.byte		"CoreIdType"
	.byte		0
	.4byte		.L11438
	.section	.debug_info,,n
.L11436:
	.sleb128	21
	.4byte		.L11437
.L11456:
	.sleb128	20
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L11455:
	.sleb128	19
	.byte		"uint8"
	.byte		0
	.4byte		.L11456
.L11454:
	.sleb128	19
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L11455
.L11463:
	.sleb128	20
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L11462:
	.sleb128	19
	.byte		"uint32"
	.byte		0
	.4byte		.L11463
.L11461:
	.sleb128	19
	.byte		"Os_ObjectType"
	.byte		0
	.4byte		.L11462
.L11460:
	.sleb128	19
	.byte		"ProcType"
	.byte		0
	.4byte		.L11461
.L11459:
	.sleb128	19
	.byte		"TaskType"
	.byte		0
	.4byte		.L11460
.L11458:
	.sleb128	21
	.4byte		.L11459
.L11468:
	.sleb128	20
	.byte		"unsigned long long"
	.byte		0
	.byte		0x7
	.byte		0x8
.L11467:
	.sleb128	19
	.byte		"uint64"
	.byte		0
	.4byte		.L11468
.L11466:
	.sleb128	19
	.byte		"EventMaskType"
	.byte		0
	.4byte		.L11467
.L11465:
	.sleb128	21
	.4byte		.L11466
.L11474:
	.sleb128	19
	.byte		"Os_APICallType"
	.byte		0
	.4byte		.L11475
.L11485:
	.sleb128	19
	.byte		"Os_ProcStatType"
	.byte		0
	.4byte		.L11486
.L11484:
	.sleb128	21
	.4byte		.L11485
	.section	.debug_info,,n
.L11483:
	.sleb128	22
	.4byte		.L11484
.L11482:
	.sleb128	21
	.4byte		.L11483
.L11505:
	.sleb128	21
	.4byte		.L11454
.L11514:
	.sleb128	19
	.byte		"Os_DispatchElementType"
	.byte		0
	.4byte		.L11515
.L11513:
	.sleb128	22
	.4byte		.L11514
.L11512:
	.sleb128	21
	.4byte		.L11513
.L11537:
	.sleb128	19
	.byte		"Os_AccessType"
	.byte		0
	.4byte		.L11538
.L11545:
	.sleb128	22
	.4byte		.L11475
.L11549:
	.sleb128	21
	.4byte		.L11486
.L11548:
	.sleb128	22
	.4byte		.L11549
.L11547:
	.sleb128	21
	.4byte		.L11548
	.section	.debug_info,,n
.L11603:
	.sleb128	23
	.4byte		.L11604-.L2
	.4byte		.L11484
	.section	.debug_info,,n
	.sleb128	24
	.sleb128	0
.L11604:
.L11610:
	.sleb128	19
	.byte		"Os_Core_StatType"
	.byte		0
	.4byte		.L11611
.L11609:
	.sleb128	21
	.4byte		.L11610
.L11607:
	.sleb128	23
	.4byte		.L11608-.L2
	.4byte		.L11609
	.section	.debug_info,,n
	.sleb128	25
	.uleb128	1
	.sleb128	0
.L11608:
.L11615:
	.sleb128	19
	.byte		"Os_Core_DynSharedType"
	.byte		0
	.4byte		.L11616
.L11613:
	.sleb128	23
	.4byte		.L11614-.L2
	.4byte		.L11615
	.sleb128	25
	.uleb128	1
	.sleb128	0
.L11614:
.L11621:
	.sleb128	19
	.byte		"Os_Core_DynInitType"
	.byte		0
	.4byte		.L11622
.L11620:
	.sleb128	22
	.4byte		.L11621
.L11619:
	.sleb128	21
	.4byte		.L11620
.L11625:
	.sleb128	19
	.byte		"Os_Core_DynType"
	.byte		0
	.4byte		.L11626
.L11624:
	.sleb128	22
	.4byte		.L11625
.L11623:
	.sleb128	21
	.4byte		.L11624
	.section	.debug_info,,n
.L11630:
	.sleb128	26
	.4byte		.L11631-.L2
	.byte		0x1
	.section	.debug_info,,n
	.sleb128	27
	.4byte		.L11482
	.sleb128	0
.L11631:
.L11629:
	.sleb128	22
	.4byte		.L11630
.L11628:
	.sleb128	19
	.byte		"Os_PrepareContextFunctionType"
	.byte		0
	.4byte		.L11629
.L11627:
	.sleb128	21
	.4byte		.L11628
.L11638:
	.sleb128	19
	.byte		"Os_StackType"
	.byte		0
	.4byte		.L11462
.L11637:
	.sleb128	22
	.4byte		.L11638
	.section	.debug_info,,n
.L11635:
	.sleb128	28
	.4byte		.L11636-.L2
	.4byte		.L11637
	.byte		0x1
	.sleb128	27
	.4byte		.L11483
	.sleb128	0
.L11636:
.L11634:
	.sleb128	22
	.4byte		.L11635
.L11633:
	.sleb128	19
	.byte		"Os_GetStackPointerFunctionType"
	.byte		0
	.4byte		.L11634
.L11632:
	.sleb128	21
	.4byte		.L11633
.L11640:
	.sleb128	19
	.byte		"Os_IsrDynInitType"
	.byte		0
	.4byte		.L11641
.L11642:
	.sleb128	19
	.byte		"Os_SchedulerDynInitType"
	.byte		0
	.4byte		.L11643
.L11646:
	.sleb128	19
	.byte		"Os_ApplicationStatType"
	.byte		0
	.4byte		.L11647
.L11645:
	.sleb128	21
	.4byte		.L11646
.L11644:
	.sleb128	22
	.4byte		.L11645
.L11649:
	.sleb128	19
	.byte		"Os_DispatcherType"
	.byte		0
	.4byte		.L11650
.L11651:
	.sleb128	19
	.byte		"Os_PublicData_NoInitType"
	.byte		0
	.4byte		.L11652
.L11654:
	.sleb128	19
	.byte		"Os_SchedulerDynType"
	.byte		0
	.4byte		.L11655
.L11656:
	.sleb128	19
	.byte		"Os_IsrDynType"
	.byte		0
	.4byte		.L11657
.L11658:
	.sleb128	19
	.byte		"Os_HooksDynType"
	.byte		0
	.4byte		.L11659
.L11662:
	.sleb128	19
	.byte		"Os_ScheduleType"
	.byte		0
	.4byte		.L11663
.L11664:
	.sleb128	19
	.byte		"Os_PriorityType"
	.byte		0
	.4byte		.L11462
.L11665:
	.sleb128	19
	.byte		"Os_SchedulerQueueElementType"
	.byte		0
	.4byte		.L11666
.L11669:
	.sleb128	22
	.4byte		.L11666
.L11671:
	.sleb128	19
	.byte		"Os_IsrRegister_t"
	.byte		0
	.4byte		.L11462
.L11672:
	.sleb128	19
	.byte		"boolean"
	.byte		0
	.4byte		.L11456
.L11676:
	.sleb128	19
	.byte		"Os_IsrPlatformConfigType"
	.byte		0
	.4byte		.L11677
.L11675:
	.sleb128	21
	.4byte		.L11676
.L11674:
	.sleb128	22
	.4byte		.L11675
.L11680:
	.sleb128	19
	.byte		"Os_IsrApiTable"
	.byte		0
	.4byte		.L11681
.L11679:
	.sleb128	21
	.4byte		.L11680
.L11678:
	.sleb128	22
	.4byte		.L11679
.L11682:
	.sleb128	23
	.4byte		.L11683-.L2
	.4byte		.L11462
	.sleb128	25
	.uleb128	7
	.sleb128	0
.L11683:
.L11686:
	.sleb128	19
	.byte		"Os_DispatchKindType"
	.byte		0
	.4byte		.L11687
.L11688:
	.sleb128	19
	.byte		"ISRType"
	.byte		0
	.4byte		.L11460
.L11689:
	.sleb128	22
	.4byte		.L11474
.L11691:
	.sleb128	19
	.byte		"Os_API_LockType"
	.byte		0
	.4byte		.L11692
.L11695:
	.sleb128	26
	.4byte		.L11696-.L2
	.byte		0x1
	.sleb128	27
	.4byte		.L11545
	.sleb128	27
	.4byte		.L11547
	.sleb128	0
.L11696:
.L11694:
	.sleb128	22
	.4byte		.L11695
.L11693:
	.sleb128	19
	.byte		"Os_API_Func_Type"
	.byte		0
	.4byte		.L11694
.L11699:
	.sleb128	19
	.byte		"Os_API_StartOsType"
	.byte		0
	.4byte		.L11700
.L11701:
	.sleb128	19
	.byte		"Os_API_ShutdownOsType"
	.byte		0
	.4byte		.L11702
.L11703:
	.sleb128	19
	.byte		"Os_API_ShutdownOsInternalType"
	.byte		0
	.4byte		.L11704
.L11705:
	.sleb128	19
	.byte		"Os_API_ShutdownAllCoresType"
	.byte		0
	.4byte		.L11706
.L11707:
	.sleb128	19
	.byte		"Os_API_GetNumberOfActivatedCoresType"
	.byte		0
	.4byte		.L11708
.L11709:
	.sleb128	19
	.byte		"Os_API_ApiStartCoreType"
	.byte		0
	.4byte		.L11710
.L11711:
	.sleb128	19
	.byte		"Os_API_StartNonAutosarCoreType"
	.byte		0
	.4byte		.L11712
.L11713:
	.sleb128	19
	.byte		"Os_API_GetCoreIDType"
	.byte		0
	.4byte		.L11714
.L11715:
	.sleb128	19
	.byte		"Os_API_ActivateTaskType"
	.byte		0
	.4byte		.L11716
.L11717:
	.sleb128	19
	.byte		"Os_API_ChainTaskType"
	.byte		0
	.4byte		.L11718
.L11719:
	.sleb128	19
	.byte		"Os_API_GetTaskIDType"
	.byte		0
	.4byte		.L11720
.L11721:
	.sleb128	19
	.byte		"Os_API_GetTaskStateType"
	.byte		0
	.4byte		.L11722
.L11723:
	.sleb128	19
	.byte		"Os_API_SetEventType"
	.byte		0
	.4byte		.L11724
.L11725:
	.sleb128	19
	.byte		"Os_API_ClearEventType"
	.byte		0
	.4byte		.L11726
.L11727:
	.sleb128	19
	.byte		"Os_API_GetEventType"
	.byte		0
	.4byte		.L11728
.L11729:
	.sleb128	19
	.byte		"Os_API_WaitEventType"
	.byte		0
	.4byte		.L11730
.L11731:
	.sleb128	19
	.byte		"Os_API_GetResourceType"
	.byte		0
	.4byte		.L11732
.L11733:
	.sleb128	19
	.byte		"Os_API_ReleaseResourceType"
	.byte		0
	.4byte		.L11734
.L11735:
	.sleb128	19
	.byte		"Os_API_GetAlarmBaseType"
	.byte		0
	.4byte		.L11736
.L11737:
	.sleb128	19
	.byte		"Os_API_GetAlarmType"
	.byte		0
	.4byte		.L11738
.L11739:
	.sleb128	19
	.byte		"Os_API_SetRelAlarmType"
	.byte		0
	.4byte		.L11740
.L11741:
	.sleb128	19
	.byte		"Os_API_SetAbsAlarmType"
	.byte		0
	.4byte		.L11742
.L11743:
	.sleb128	19
	.byte		"Os_API_CancelAlarmType"
	.byte		0
	.4byte		.L11744
.L11745:
	.sleb128	19
	.byte		"Os_API_GetApplicationStateType"
	.byte		0
	.4byte		.L11746
.L11747:
	.sleb128	19
	.byte		"Os_API_TerminateApplicationType"
	.byte		0
	.4byte		.L11748
.L11749:
	.sleb128	19
	.byte		"Os_API_GetApplicationIDType"
	.byte		0
	.4byte		.L11750
.L11751:
	.sleb128	19
	.byte		"Os_API_GetISRIDType"
	.byte		0
	.4byte		.L11752
.L11753:
	.sleb128	19
	.byte		"Os_API_GetActiveApplicationModeType"
	.byte		0
	.4byte		.L11754
.L11755:
	.sleb128	19
	.byte		"Os_API_IncrementCounterType"
	.byte		0
	.4byte		.L11756
.L11757:
	.sleb128	19
	.byte		"Os_API_GetCounterValueType"
	.byte		0
	.4byte		.L11758
.L11759:
	.sleb128	19
	.byte		"Os_API_GetElapsedValueType"
	.byte		0
	.4byte		.L11760
.L11761:
	.sleb128	19
	.byte		"Os_API_StartScheduleTableAbsType"
	.byte		0
	.4byte		.L11762
.L11763:
	.sleb128	19
	.byte		"Os_API_StartScheduleTableRelType"
	.byte		0
	.4byte		.L11764
.L11765:
	.sleb128	19
	.byte		"Os_API_StopScheduleTableType"
	.byte		0
	.4byte		.L11766
.L11767:
	.sleb128	19
	.byte		"Os_API_GetScheduleTableStatusType"
	.byte		0
	.4byte		.L11768
.L11769:
	.sleb128	19
	.byte		"Os_API_NextScheduleTableType"
	.byte		0
	.4byte		.L11770
.L11771:
	.sleb128	19
	.byte		"Os_API_StartScheduleTableSynchronType"
	.byte		0
	.4byte		.L11772
.L11773:
	.sleb128	19
	.byte		"Os_API_SyncScheduleTableType"
	.byte		0
	.4byte		.L11774
.L11775:
	.sleb128	19
	.byte		"Os_API_SetScheduleTableAsyncType"
	.byte		0
	.4byte		.L11776
.L11777:
	.sleb128	19
	.byte		"Os_API_CheckObjectAccessType"
	.byte		0
	.4byte		.L11778
.L11779:
	.sleb128	19
	.byte		"Os_API_CheckObjectOwnershipType"
	.byte		0
	.4byte		.L11780
.L11781:
	.sleb128	19
	.byte		"Os_API_CallTrustedFunctionType"
	.byte		0
	.4byte		.L11782
.L11783:
	.sleb128	19
	.byte		"Os_API_StackUsageType"
	.byte		0
	.4byte		.L11784
.L11785:
	.sleb128	19
	.byte		"Os_API_GetSpinlockType"
	.byte		0
	.4byte		.L11786
.L11787:
	.sleb128	19
	.byte		"Os_API_ReleaseSpinlockType"
	.byte		0
	.4byte		.L11788
.L11789:
	.sleb128	19
	.byte		"Os_API_TryToGetSpinlockType"
	.byte		0
	.4byte		.L11790
.L11791:
	.sleb128	19
	.byte		"Os_API_IocTransferType"
	.byte		0
	.4byte		.L11792
.L11793:
	.sleb128	19
	.byte		"Os_API_ControlIdleType"
	.byte		0
	.4byte		.L11794
.L11796:
	.sleb128	19
	.byte		"IdleModeType"
	.byte		0
	.4byte		.L11797
.L11801:
	.sleb128	19
	.byte		"Os_IOC_ChannelStatType"
	.byte		0
	.4byte		.L11802
.L11800:
	.sleb128	21
	.4byte		.L11801
.L11799:
	.sleb128	22
	.4byte		.L11800
	.section	.debug_info,,n
.L11808:
	.sleb128	29
	.byte		"void"
	.byte		0
	.byte		0x0
.L11807:
	.sleb128	22
	.4byte		.L11808
.L11805:
	.sleb128	23
	.4byte		.L11806-.L2
	.4byte		.L11807
	.sleb128	25
	.uleb128	1
	.sleb128	0
.L11806:
.L11804:
	.sleb128	19
	.byte		"Os_IOC_DataType"
	.byte		0
	.4byte		.L11805
.L11803:
	.sleb128	22
	.4byte		.L11804
.L11810:
	.sleb128	19
	.byte		"SpinlockIdType"
	.byte		0
	.4byte		.L11438
.L11812:
	.sleb128	19
	.byte		"TryToGetSpinlockType"
	.byte		0
	.4byte		.L11813
.L11811:
	.sleb128	22
	.4byte		.L11812
.L11817:
	.sleb128	22
	.4byte		.L11455
.L11819:
	.sleb128	19
	.byte		"TrustedFunctionIndexType"
	.byte		0
	.4byte		.L11462
.L11820:
	.sleb128	19
	.byte		"TrustedFunctionParameterRefType"
	.byte		0
	.4byte		.L11807
.L11821:
	.sleb128	19
	.byte		"Os_TrustedFunctionReturnValueType"
	.byte		0
	.4byte		.L11822
.L11824:
	.sleb128	19
	.byte		"ApplicationType"
	.byte		0
	.4byte		.L11455
.L11825:
	.sleb128	19
	.byte		"ObjectTypeType"
	.byte		0
	.4byte		.L11826
.L11829:
	.sleb128	19
	.byte		"AlarmType"
	.byte		0
	.4byte		.L11461
.L11831:
	.sleb128	19
	.byte		"TickType"
	.byte		0
	.4byte		.L11462
.L11835:
	.sleb128	22
	.4byte		.L11831
.L11834:
	.sleb128	19
	.byte		"TickRefType"
	.byte		0
	.4byte		.L11835
.L11839:
	.sleb128	19
	.byte		"AlarmBaseType"
	.byte		0
	.4byte		.L11840
.L11838:
	.sleb128	22
	.4byte		.L11839
.L11837:
	.sleb128	19
	.byte		"AlarmBaseRefType"
	.byte		0
	.4byte		.L11838
.L11842:
	.sleb128	19
	.byte		"ScheduleTableType"
	.byte		0
	.4byte		.L11462
.L11849:
	.sleb128	19
	.byte		"ScheduleTableStatusType"
	.byte		0
	.4byte		.L11850
.L11848:
	.sleb128	22
	.4byte		.L11849
.L11847:
	.sleb128	19
	.byte		"ScheduleTableStatusRefType"
	.byte		0
	.4byte		.L11848
.L11855:
	.sleb128	19
	.byte		"CounterType"
	.byte		0
	.4byte		.L11462
.L11859:
	.sleb128	26
	.4byte		.L11860-.L2
	.byte		0x1
	.sleb128	27
	.4byte		.L11545
	.sleb128	0
.L11860:
.L11858:
	.sleb128	22
	.4byte		.L11859
.L11857:
	.sleb128	19
	.byte		"LightServiceFunctionType"
	.byte		0
	.4byte		.L11858
.L11864:
	.sleb128	19
	.byte		"RestartType"
	.byte		0
	.4byte		.L11455
.L11869:
	.sleb128	19
	.byte		"ApplicationStateType"
	.byte		0
	.4byte		.L11455
.L11868:
	.sleb128	22
	.4byte		.L11869
.L11867:
	.sleb128	19
	.byte		"ApplicationStateRefType"
	.byte		0
	.4byte		.L11868
.L11873:
	.sleb128	22
	.4byte		.L11466
.L11872:
	.sleb128	19
	.byte		"EventMaskRefType"
	.byte		0
	.4byte		.L11873
.L11879:
	.sleb128	19
	.byte		"TaskStateType"
	.byte		0
	.4byte		.L11880
.L11878:
	.sleb128	22
	.4byte		.L11879
.L11877:
	.sleb128	19
	.byte		"TaskStateRefType"
	.byte		0
	.4byte		.L11878
.L11883:
	.sleb128	22
	.4byte		.L11459
.L11882:
	.sleb128	19
	.byte		"TaskRefType"
	.byte		0
	.4byte		.L11883
.L11887:
	.sleb128	19
	.byte		"ResourceType"
	.byte		0
	.4byte		.L11462
.L11890:
	.sleb128	19
	.byte		"AppModeType"
	.byte		0
	.4byte		.L11462
.L11895:
	.sleb128	19
	.byte		"Os_CoreShutdownType"
	.byte		0
	.4byte		.L11896
.L11899:
	.sleb128	22
	.4byte		.L11454
.L11906:
	.sleb128	19
	.byte		"Os_IOC_ChannelDynType"
	.byte		0
	.4byte		.L11907
.L11905:
	.sleb128	22
	.4byte		.L11906
.L11904:
	.sleb128	21
	.4byte		.L11905
.L11908:
	.sleb128	19
	.byte		"Os_IOC_ChannelSizeType"
	.byte		0
	.4byte		.L11438
.L11909:
	.sleb128	21
	.4byte		.L11807
.L11910:
	.sleb128	21
	.4byte		.L11438
.L11912:
	.sleb128	19
	.byte		"Os_IOC_DataCountType"
	.byte		0
	.4byte		.L11455
.L11911:
	.sleb128	21
	.4byte		.L11912
.L11916:
	.sleb128	19
	.byte		"Os_IOC_DataDescriptorType"
	.byte		0
	.4byte		.L11917
.L11915:
	.sleb128	21
	.4byte		.L11916
.L11914:
	.sleb128	22
	.4byte		.L11915
.L11913:
	.sleb128	21
	.4byte		.L11914
.L11920:
	.sleb128	19
	.byte		"Os_LockResourceType"
	.byte		0
	.4byte		.L11455
.L11919:
	.sleb128	22
	.4byte		.L11920
.L11918:
	.sleb128	21
	.4byte		.L11919
.L11923:
	.sleb128	19
	.byte		"Os_IOC_DataLengthType"
	.byte		0
	.4byte		.L11438
.L11922:
	.sleb128	21
	.4byte		.L11923
.L11925:
	.sleb128	19
	.byte		"Os_IOC_DataOffsetType"
	.byte		0
	.4byte		.L11438
.L11924:
	.sleb128	21
	.4byte		.L11925
.L11929:
	.sleb128	19
	.byte		"Os_HookIDType"
	.byte		0
	.4byte		.L11438
.L11933:
	.sleb128	19
	.byte		"Os_ProcDynType"
	.byte		0
	.4byte		.L11934
.L11932:
	.sleb128	22
	.4byte		.L11933
.L11931:
	.sleb128	21
	.4byte		.L11932
.L11938:
	.sleb128	19
	.byte		"Os_ProcStackType"
	.byte		0
	.4byte		.L11939
.L11937:
	.sleb128	21
	.4byte		.L11938
.L11936:
	.sleb128	22
	.4byte		.L11937
.L11935:
	.sleb128	21
	.4byte		.L11936
.L11941:
	.sleb128	19
	.byte		"Os_ProcKindType"
	.byte		0
	.4byte		.L11942
.L11940:
	.sleb128	21
	.4byte		.L11941
.L11943:
	.sleb128	21
	.4byte		.L11664
.L11945:
	.sleb128	19
	.byte		"Os_ActivationCountType"
	.byte		0
	.4byte		.L11462
.L11944:
	.sleb128	21
	.4byte		.L11945
.L11946:
	.sleb128	21
	.4byte		.L11637
.L11947:
	.sleb128	21
	.4byte		.L11644
.L11951:
	.sleb128	19
	.byte		"Os_AccessStorageType"
	.byte		0
	.4byte		.L11462
.L11950:
	.sleb128	21
	.4byte		.L11951
.L11949:
	.sleb128	22
	.4byte		.L11950
.L11948:
	.sleb128	21
	.4byte		.L11949
.L11955:
	.sleb128	26
	.4byte		.L11956-.L2
	.byte		0x1
	.sleb128	0
.L11956:
.L11954:
	.sleb128	22
	.4byte		.L11955
.L11953:
	.sleb128	19
	.byte		"Os_ProcEntryPointType"
	.byte		0
	.4byte		.L11954
.L11952:
	.sleb128	21
	.4byte		.L11953
.L11957:
	.sleb128	21
	.4byte		.L11887
.L11962:
	.sleb128	19
	.byte		"Os_ResourceStatType"
	.byte		0
	.4byte		.L11963
.L11961:
	.sleb128	21
	.4byte		.L11962
.L11960:
	.sleb128	22
	.4byte		.L11961
.L11959:
	.sleb128	19
	.byte		"Os_ResourceStack"
	.byte		0
	.4byte		.L11960
.L11958:
	.sleb128	22
	.4byte		.L11959
.L11964:
	.sleb128	21
	.4byte		.L11669
.L11965:
	.sleb128	21
	.4byte		.L11674
.L11968:
	.sleb128	19
	.byte		"Os_StackSizeType"
	.byte		0
	.4byte		.L11462
.L11967:
	.sleb128	21
	.4byte		.L11968
.L11970:
	.sleb128	19
	.byte		"Os_ProcContexStateType"
	.byte		0
	.4byte		.L11971
.L11973:
	.sleb128	21
	.4byte		.L11974
.L11972:
	.sleb128	22
	.4byte		.L11973
.L11977:
	.sleb128	21
	.4byte		.L11810
.L11980:
	.sleb128	19
	.byte		"Os_SpinlockDynType"
	.byte		0
	.4byte		.L11981
.L11979:
	.sleb128	22
	.4byte		.L11980
.L11978:
	.sleb128	21
	.4byte		.L11979
.L11986:
	.sleb128	19
	.byte		"Os_ApplicationDynType"
	.byte		0
	.4byte		.L11987
.L11985:
	.sleb128	22
	.4byte		.L11986
.L11984:
	.sleb128	21
	.4byte		.L11985
.L11988:
	.sleb128	21
	.4byte		.L11824
.L11990:
	.sleb128	19
	.byte		"Os_ApplicationKindType"
	.byte		0
	.4byte		.L11991
.L11989:
	.sleb128	21
	.4byte		.L11990
.L11995:
	.sleb128	26
	.4byte		.L11996-.L2
	.byte		0x1
	.sleb128	27
	.4byte		.L11454
	.sleb128	0
.L11996:
.L11994:
	.sleb128	22
	.4byte		.L11995
.L11993:
	.sleb128	19
	.byte		"Os_ShutdownHookFuncType"
	.byte		0
	.4byte		.L11994
.L11992:
	.sleb128	21
	.4byte		.L11993
.L12000:
	.sleb128	26
	.4byte		.L12001-.L2
	.byte		0x1
	.sleb128	0
.L12001:
.L11999:
	.sleb128	22
	.4byte		.L12000
.L11998:
	.sleb128	19
	.byte		"Os_StartUpHookFuncType"
	.byte		0
	.4byte		.L11999
.L11997:
	.sleb128	21
	.4byte		.L11998
.L12005:
	.sleb128	26
	.4byte		.L12006-.L2
	.byte		0x1
	.sleb128	27
	.4byte		.L11454
	.sleb128	0
.L12006:
.L12004:
	.sleb128	22
	.4byte		.L12005
.L12003:
	.sleb128	19
	.byte		"Os_ErrorHookFuncType"
	.byte		0
	.4byte		.L12004
.L12002:
	.sleb128	21
	.4byte		.L12003
.L12009:
	.sleb128	21
	.4byte		.L11460
.L12008:
	.sleb128	22
	.4byte		.L12009
.L12007:
	.sleb128	21
	.4byte		.L12008
.L12012:
	.sleb128	21
	.4byte		.L11855
.L12011:
	.sleb128	22
	.4byte		.L12012
.L12010:
	.sleb128	21
	.4byte		.L12011
.L12015:
	.sleb128	21
	.4byte		.L11829
.L12014:
	.sleb128	22
	.4byte		.L12015
.L12013:
	.sleb128	21
	.4byte		.L12014
.L12018:
	.sleb128	21
	.4byte		.L11842
.L12017:
	.sleb128	22
	.4byte		.L12018
.L12016:
	.sleb128	21
	.4byte		.L12017
.L12023:
	.sleb128	19
	.byte		"Os_ResourceDynType"
	.byte		0
	.4byte		.L12024
.L12022:
	.sleb128	22
	.4byte		.L12023
.L12027:
	.sleb128	19
	.byte		"Os_ErrorType"
	.byte		0
	.4byte		.L12028
.L12029:
	.sleb128	19
	.byte		"Os_ExceptionStatusType"
	.byte		0
	.4byte		.L12030
.L12035:
	.sleb128	26
	.4byte		.L12036-.L2
	.byte		0x1
	.sleb128	0
.L12036:
.L12034:
	.sleb128	22
	.4byte		.L12035
.L12033:
	.sleb128	19
	.byte		"Os_IsrHandlerFuncType"
	.byte		0
	.4byte		.L12034
.L12032:
	.sleb128	21
	.4byte		.L12033
.L12038:
	.sleb128	19
	.byte		"Os_ExceptionTypeType"
	.byte		0
	.4byte		.L12039
.L12042:
	.sleb128	19
	.byte		"Os_ShudownErrorType"
	.byte		0
	.4byte		.L12043
.L12044:
	.sleb128	19
	.byte		"Os_ParameterErrorType"
	.byte		0
	.4byte		.L12045
.L12046:
	.sleb128	19
	.byte		"Os_ServiceErrorType"
	.byte		0
	.4byte		.L12047
.L12049:
	.sleb128	19
	.byte		"ServiceTraceType"
	.byte		0
	.4byte		.L11455
.L12050:
	.sleb128	19
	.byte		"OSServiceIdType"
	.byte		0
	.4byte		.L12051
.L12053:
	.sleb128	19
	.byte		"TryToGetSpinlockRefType"
	.byte		0
	.4byte		.L11811
.L12055:
	.sleb128	19
	.byte		"Os_SystemInternalErrorType"
	.byte		0
	.4byte		.L12056
.L12061:
	.sleb128	21
	.4byte		.L11462
.L12063:
	.sleb128	19
	.byte		"Os_IsrPlatformLevelType"
	.byte		0
	.4byte		.L11438
.L12062:
	.sleb128	21
	.4byte		.L12063
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11426:
	.sleb128	0
.L11422:
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
.L11447:
	.sleb128	0
.L11443:

	.section	.debug_loc,,n
	.align	0
.L11440:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locend
.L11464:
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),3
	.d2locend
.L11469:
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo5),5
	.d2locend
.L11470:
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo5),6
	.d2locend
.L11487:
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo7),3
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo9),7
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo11),7
	.d2locend
.L11488:
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo12),4
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo13),31
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo11),31
	.d2locend
.L11490:
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo15),3
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo17),3
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo10),3
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo19),3
	.d2locend
.L11496:
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo21),3
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo23),31
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo25),31
	.d2locend
.L11497:
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo26),5
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo27),28
	.d2locreg	%offsetof(.Llo28), %offsetof(.Llo25),28
	.d2locend
.L11498:
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo26),6
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo27),27
	.d2locreg	%offsetof(.Llo28), %offsetof(.Llo25),27
	.d2locend
.L11501:
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo26),7
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo27),8
	.d2locreg	%offsetof(.Llo28), %offsetof(.Llo25),8
	.d2locend
.L11503:
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo29),3
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo23),30
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo28),30
	.d2locend
.L11506:
	.d2locreg	%offsetof(.Llo26), %offsetof(.Llo22),3
	.d2locreg	%offsetof(.Llo30), %offsetof(.Llo31),29
	.d2locend
.L11516:
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo33),3
	.d2locreg	%offsetof(.Llo34), %offsetof(.Llo23),4
	.d2locend
.L11522:
	.d2locreg	%offsetof(.Llo35), %offsetof(.Llo36),0
	.d2locend
.L11528:
	.d2locreg	%offsetof(.Llo37), %offsetof(.Llo38),3
	.d2locreg	%offsetof(.Llo39), %offsetof(.Llo40),31
	.d2locreg	%offsetof(.Llo41), %offsetof(.Llo42),31
	.d2locend
.L11529:
	.d2locreg	%offsetof(.Llo37), %offsetof(.Llo43),4
	.d2locreg	%offsetof(.Llo39), %offsetof(.Llo44),30
	.d2locend
.L11531:
	.d2locreg	%offsetof(.Llo37), %offsetof(.Llo45),29
	.d2locend
.L11539:
	.d2locreg	%offsetof(.Llo46), %offsetof(.Llo47),3
	.d2locreg	%offsetof(.Llo48), %offsetof(.Llo44),3
	.d2locend
.L11546:
	.d2locreg	%offsetof(.Llo49), %offsetof(.Llo50),3
	.d2locreg	%offsetof(.Llo51), %offsetof(.Llo52),31
	.d2locreg	%offsetof(.Llo53), %offsetof(.Llo54),31
	.d2locend
.L11550:
	.d2locreg	%offsetof(.Llo49), %offsetof(.Llo55),4
	.d2locreg	%offsetof(.Llo51), %offsetof(.Llo56),30
	.d2locreg	%offsetof(.Llo53), %offsetof(.Llo54),30
	.d2locend
.L11552:
	.d2locreg	%offsetof(.Llo57), %offsetof(.Llo58),3
	.d2locreg	%offsetof(.Llo59), %offsetof(.Llo56),29
	.d2locreg	%offsetof(.Llo60), %offsetof(.Llo61),3
	.d2locreg	%offsetof(.Llo62), %offsetof(.Llo52),3
	.d2locreg	%offsetof(.Llo63), %offsetof(.Llo64),3
	.d2locreg	%offsetof(.Llo65), %offsetof(.Llo54),29
	.d2locreg	%offsetof(.Llo66), %offsetof(.Llo67),3
	.d2locend
.L11554:
	.d2locreg	%offsetof(.Llo68), %offsetof(.Llo56),28
	.d2locreg	%offsetof(.Llo69), %offsetof(.Llo70),28
	.d2locreg	%offsetof(.Llo53), %offsetof(.Llo54),28
	.d2locend
.L11556:
	.d2locreg	%offsetof(.Llo71), %offsetof(.Llo56),27
	.d2locreg	%offsetof(.Llo53), %offsetof(.Llo54),27
	.d2locend
.L11557:
	.d2locreg	%offsetof(.Llo72), %offsetof(.Llo56),26
	.d2locreg	%offsetof(.Llo53), %offsetof(.Llo54),26
	.d2locend
.L11561:
	.d2locreg	%offsetof(.Llo49), %offsetof(.Llo54),25
	.d2locreg	%offsetof(.Llo73), %offsetof(.Llo74),25
	.d2locend
.L11567:
	.d2locreg	%offsetof(.Llo75), %offsetof(.Llo76),3
	.d2locreg	%offsetof(.Llo62), %offsetof(.Llo52),4
	.d2locreg	%offsetof(.Llo77), %offsetof(.Llo67),4
	.d2locend
.L11573:
	.d2locreg	%offsetof(.Llo78), %offsetof(.Llo79),3
	.d2locreg	%offsetof(.Llo80), %offsetof(.Llo81),31
	.d2locreg	%offsetof(.Llo82), %offsetof(.Llo83),31
	.d2locend
.L11574:
	.d2locreg	%offsetof(.Llo78), %offsetof(.Llo84),5
	.d2locreg	%offsetof(.Llo80), %offsetof(.Llo81),30
	.d2locreg	%offsetof(.Llo82), %offsetof(.Llo83),30
	.d2locend
.L11575:
	.d2locreg	%offsetof(.Llo78), %offsetof(.Llo84),6
	.d2locreg	%offsetof(.Llo80), %offsetof(.Llo81),29
	.d2locreg	%offsetof(.Llo82), %offsetof(.Llo83),29
	.d2locend
.L11583:
	.d2locreg	%offsetof(.Llo85), %offsetof(.Llo86),3
	.d2locreg	%offsetof(.Llo87), %offsetof(.Llo81),3
	.d2locend
.L11589:
	.d2locreg	%offsetof(.Llo88), %offsetof(.Llo89),3
	.d2locend
.L11591:
	.d2locreg	%offsetof(.Llo90), %offsetof(.Llo91),0
	.d2locend
.L11593:
	.d2locreg	%offsetof(.Llo91), %offsetof(.Llo92),0
	.d2locend
.L11599:
	.d2locreg	%offsetof(.Llo93), %offsetof(.Llo94),3
	.d2locreg	%offsetof(.Llo95), %offsetof(.Llo96),31
	.d2locend
.L11600:
	.d2locreg	%offsetof(.Llo93), %offsetof(.Llo97),4
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "Os_API_MC_SetEvent"
	.wrcm.nstrlist "calls", "Os_SetEvent"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Os_API_SetEventCrossCore"
	.wrcm.nstrlist "calls", "Os_Task_Release"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Os_DispatchSetEvent"
	.wrcm.nstrlist "calls", "Os_Dispatcher_Alloc_Core","Os_SetEvent","Os_SetEvent_Err_Stat","Os_ShutdownAllCores","Os_TaskOnOtherCore"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Os_API_SetEvent"
	.wrcm.nstrlist "calls", "Os_Call_ErrorHook","Os_Dispatcher_Alloc_Core","Os_SetEvent","Os_SetEvent_Err_Stat","Os_ShutdownAllCores","Os_TaskOnOtherCore"
	.wrcm.nint32 "frameSize", 48
	.wrcm.end
	.wrcm.nelem "Os_SetEvent_Err_Stat"
	.wrcm.nstrlist "calls", "Os_Access_Check","Os_Task_CheckId"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Os_SetEvent"
	.wrcm.nstrlist "calls", "Os_Call_ErrorHook","Os_Dispatcher_Alloc_Core","Os_SetEvent_Err_Dyn","Os_TaskOnOtherCore","Os_Task_Release"
	.wrcm.nint32 "frameSize", 48
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Os_SetEvent_Err_Dyn"
	.wrcm.nstrlist "calls", "Os_Isr_GetState"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "SetEvent"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Os_SetEvent.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Os_SetEvent.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Os_SetEvent.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Os_SetEvent.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Os_SetEvent.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Os_SetEvent.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\Os\Os\core\ssc\make\..\src\task\events\Os_SetEvent.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
