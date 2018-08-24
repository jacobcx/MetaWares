#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Os_ActivateTask.c"
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
.L11424:
	.section	.Os_TEXT,,c
#$$ld
.L11420:
	.0byte		.L11418
	.d2_line_start	.debug_line.Os_TEXT
	.section	.Os_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_Isr.h"
        .d2line         227,45
#$$ld
.L11427:

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
.L11428:
	.type		Os_Isr_GetState,@function
	.size		Os_Isr_GetState,.-Os_Isr_GetState
# Number of nodes = 36

# Allocations for Os_Isr_GetState
#	?a4		coreId
# FUNC (StatusType, OS_CODE) ActivateTask(CONST (TaskType, AUTOMATIC) taskId)
	.section	.Os_PUBLIC_TEXT,,c
	.align		2
	.section	.debug_line.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_line
.L11445:
	.section	.Os_PUBLIC_TEXT,,c
#$$ld
.L11441:
	.0byte		.L11439
	.d2_line_start	.debug_line.Os_PUBLIC_TEXT
	.section	.Os_PUBLIC_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\task\\Os_ActivateTask.c"
        .d2line         74,28
#$$ld
.L11448:

#$$bf	ActivateTask,interprocedural,rasave,nostackparams
	.globl		ActivateTask
	.d2_cfa_start __cie
ActivateTask:
.Llo3:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr		# taskId=r0
	stw		r0,52(r1)		# taskId=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# taskId=r0 taskId=r3
	.d2prologue_end
# {
#     VAR(Os_APICallType, AUTOMATIC) Os_ActivateTaskAPI_Call;
# 
#     OS_API_ALLOC(Os_ActivateTaskAPI_Call,ActivateTask);
	.d2line		78
.Llo4:
	e_lis		r3,4660
.Llo5:
	e_or2i		r3,22136
	stw		r3,8(r1)
	lis		r3,Os_API_ActivateTask@ha
	e_add16i		r3,r3,Os_API_ActivateTask@l
	stw		r3,20(r1)
	diab.li		r4,0
	stw		r4,16(r1)
#     Os_ActivateTaskAPI_Call.Os_API_Data.Os_ApiActivateTask.TaskId = taskId;
	.d2line		79
	stw		r0,24(r1)		# taskId=r0
#     OS_SYSCALL(Os_ActivateTaskAPI_Call);
	.d2line		80
	diab.addi		r3,r1,8
	bl		OS_SYS_CALL
# 
#     return Os_ActivateTaskAPI_Call.Os_API_ReturnValue;
	.d2line		82
.Llo6:
	lbz		r3,12(r1)
# }
	.d2line		83
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
.L11449:
	.type		ActivateTask,@function
	.size		ActivateTask,.-ActivateTask
# Number of nodes = 40

# Allocations for ActivateTask
#	?a4		taskId
#	SP,8		Os_ActivateTaskAPI_Call
# LOCAL_INLINE FUNC (StatusType, OS_CODE) Os_ActivateTask_Err_Dyn(
	.section	.Os_TEXT,,c
	.align		1
	.section	.Os_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\task\\Os_ActivateTask.c"
        .d2line         239,41
#$$ld
.L11467:

#$$bf	Os_ActivateTask_Err_Dyn,interprocedural,rasave,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r31,cr0,lr
	.d2_cfa_start __cie
Os_ActivateTask_Err_Dyn:
.Llo7:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r7,r3		# requestedTask=r7 requestedTask=r3
	mr		r31,r4		# callerTask=r31 callerTask=r4
	.d2prologue_end
#                                             CONSTP2CONST ( Os_ProcStatType, AUTOMATIC, OS_CONST ) requestedTask,
#                                             CONSTP2CONST ( Os_ProcStatType, AUTOMATIC, OS_CONST ) callerTask
#                                 )
# {
#     VAR(StatusType, AUTOMATIC)   retVal;
#     CONST(CoreIdType, AUTOMATIC) coreId = OS_GETCOREID();
	.d2line		245
	mfspr		r3,286
.Llo8:
	mr		r3,r3		# coreId=r3 coreId=r3
# 
#     /* The API should succeed if the following conditions satisfies :
#      * If calling level is task level or CAt 2 interrupt level
#      * If the parameter is a valid taskId
#      * If the current application can access the taskId
#      * If the number of the task activation is not exceeded
#      * This activation will not result in the overflow of priority queue
#      * of scheduler. */
# 
#     if(Os_Isr_Enabled != Os_Isr_GetState(coreId))
	.d2line		255
	mr		r3,r3		# coreId=r3 coreId=r3
.Llo19:
	bl		Os_Isr_GetState
.Llo11:
	se_cmpi		r3,0
	bc		1,2,.L11399	# eq
#     {
#         retVal = OS_GET_ERRORCODE(E_OS_SYS_ERROR, E_OS_DISABLEDINT);  /* [OS093-01-01] [OS093-02-01] */
	.d2line		257
.Llo9:
	diab.li		r3,10		# retVal=r3
.Llo14:
	b		.L11400
.L11399:
#     }
# 
#   #ifdef OS_MODULE_APPLICATION
# 
#     else if (    callerTask != NULL_PTR
	.d2line		262
	se_cmpi		r31,0		# callerTask=r31
	bc		1,2,.L11401	# eq
	lwz		r0,48(r7)		# requestedTask=r7
	lwz		r4,48(r31)		# callerTask=r31
	se_cmpl		r0,r4
	bc		1,2,.L11401	# eq
.Llo12:
	lwz		r4,48(r7)		# requestedTask=r7
	lwz		r4,0(r4)
	lbz		r0,0(r4)
	se_cmpi		r0,0
	bc		1,2,.L11401	# eq
#               && ( requestedTask->Os_ProcOwnerApp != callerTask->Os_ProcOwnerApp )
#               && ( (ApplicationStateType) APPLICATION_ACCESSIBLE != requestedTask->Os_ProcOwnerApp->Os_AppDyn->Os_AppState ) )
#     {
#         retVal = OS_GET_ERRORCODE(E_OS_SYS_ERROR, E_OS_ACCESS); /* [OS509-01-01] */
	.d2line		266
.Llo15:
	diab.li		r3,1		# retVal=r3
.Llo16:
	b		.L11400
.L11401:
#     }
# 
#   #endif /* OS_MODULE_APPLICATION */
# 
#     else if(requestedTask->Os_ProcDyn->Os_ProcActivations >= requestedTask->Os_ProcMaxActivations)
	.d2line		271
.Llo13:
	lwz		r4,8(r7)		# requestedTask=r7
	lwz		r0,24(r4)		# retVal=r0
	lwz		r4,40(r7)		# requestedTask=r7
	se_cmpl		r0,r4		# retVal=r0
#     {
#         retVal = OS_GET_ERRORCODE(E_OS_LIMIT, E_OS_LIMIT); /* [OS001-006.v1] */
	.d2line		273
	diab.li		r0,4		# retVal=r0
	isel		r0,r3,r0,0		# retVal=r0 retVal=r3 retVal=r0
.L11403:
#     }
#     else
#     {
#         retVal = E_OK;
	.d2line		277
.Llo10:
	isel		r3,0,r0,0		# retVal=r3 retVal=r0
.L11400:
#     }
# 
#     return retVal;
	.d2line		280
.Llo17:
	rlwinm		r3,r3,0,24,31		# retVal=r3 retVal=r3
# }
	.d2line		281
	.d2epilogue_begin
.Llo18:
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
.L11468:
	.type		Os_ActivateTask_Err_Dyn,@function
	.size		Os_ActivateTask_Err_Dyn,.-Os_ActivateTask_Err_Dyn
# Number of nodes = 64

# Allocations for Os_ActivateTask_Err_Dyn
#	?a4		requestedTask
#	?a5		callerTask
#	?a6		retVal
#	?a7		coreId
# LOCAL_INLINE FUNC (StatusType, OS_CODE) Os_ActivateTask(
	.align		1
	.section	.Os_TEXT,,c
        .d2line         189,41
#$$ld
.L11484:

#$$bf	Os_ActivateTask,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Os_ActivateTask:
.Llo20:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# taskId=r31 taskId=r3
	mr		r8,r4		# callerTask=r8 callerTask=r4
	.d2prologue_end
#                                             CONST        ( TaskType,        AUTOMATIC )           taskId,
#                                             CONSTP2CONST ( Os_ProcStatType, AUTOMATIC, OS_CONST ) callerTask
#                                 )
# {
#     CONSTP2CONST (Os_ProcStatType, AUTOMATIC, OS_CONST) requestedTask = &Os_Proc_Stat[taskId];
	.d2line		194
	lis		r30,Os_Proc_Stat@ha		# taskId=r30
	e_add16i		r30,r30,Os_Proc_Stat@l		# taskId=r30 taskId=r30
	e_mulli		r3,r3,80		# taskId=r3 taskId=r3
	se_add		r3,r30		# taskId=r3 taskId=r3 taskId=r30
.Llo21:
	mr		r30,r3		# requestedTask=r30 requestedTask=r3
#     CONST (StatusType, AUTOMATIC) retVal = Os_ActivateTask_Err_Dyn(requestedTask,callerTask);
	.d2line		195
	mr		r3,r30		# requestedTask=r3 requestedTask=r30
.Llo28:
	mr		r4,r8		# callerTask=r4 callerTask=r8
.Llo26:
	bl		Os_ActivateTask_Err_Dyn
.Llo29:
	mr		r29,r3		# retVal=r29 retVal=r3
# 
#     /* [OS001-002.v1] */
#     if( E_OK == retVal )
	.d2line		198
	rlwinm		r3,r3,0,24,31		# retVal=r3 retVal=r3
	se_cmpi		r3,0		# retVal=r3
	bc		0,2,.L11390	# ne
#     {
#         requestedTask->Os_ProcDyn->Os_ProcActivations++;
	.d2line		200
.Llo22:
	lwz		r4,8(r30)		# requestedTask=r30
.Llo30:
	lwz		r3,24(r4)		# retVal=r3
	se_addi		r3,1		# retVal=r3 retVal=r3
	stw		r3,24(r4)		# retVal=r3
#       #ifdef OS_MODULE_MULTICORE
#         /* the cross core action must be executed by the dispatcher */
#         if(Os_true == Os_TaskOnOtherCore(taskId)) /* [OS602-01] [OS602-02] */
	.d2line		203
	mr		r3,r31		# taskId=r3 taskId=r31
	bl		Os_TaskOnOtherCore
	se_cmpi		r3,1		# taskId=r3
	bc		0,2,.L11391	# ne
	.section	.Os_TEXT,,c
.L11494:
#         {
#             CONSTP2VAR(Os_DispatchElementType, AUTOMATIC, OS_CONST) disp = Os_Dispatcher_Alloc_Core(requestedTask->Os_ProcCoreID);
	.d2line		205
	lhz		r3,4(r30)		# taskId=r3 requestedTask=r30
	bl		Os_Dispatcher_Alloc_Core
.Llo32:
	mr		r4,r3		# disp=r4 disp=r3
#             OS_API_ALLOCINTERNAL(disp, disp->Os_DispatchApiInternal, ActivateTaskCrossCore);
	.d2line		206
.Llo33:
	e_lis		r0,4660
.Llo34:
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
	.d2line		207
	stw		r31,32(r4)		# disp=r4 taskId=r31
	.section	.Os_TEXT,,c
.L11495:
.Llo23:
	b		.L11394
.L11391:
#         }
#         else
#       #endif /* OS_MODULE_MULTICORE */
#         {
#             Os_Task_Activate(requestedTask);
	.d2line		212
.Llo24:
	mr		r3,r30		# requestedTask=r3 requestedTask=r30
	bl		Os_Task_Activate
	b		.L11394
.L11390:
	.section	.Os_TEXT,,c
.L11504:
#         }
#     }
#     else
#     {
#       #ifdef OS_CONFIG_USEPARAMETERACCESS
# 
#         CONST (CoreIdType, AUTOMATIC)  coreId = OS_GETCOREID();
	.d2line		219
.Llo27:
	mfspr		r0,286		# coreId=r0
.Llo35:
	mr		r0,r0		# coreId=r0 coreId=r0
# 
#         OS_GET_PARAMETER_ERRORCODE ( coreId ).Os_Err_TaskID = taskId;
	.d2line		221
	lis		r3,(Os_Core_DynShared+16)@ha		# retVal=r3
	e_add16i		r3,r3,(Os_Core_DynShared+16)@l		# retVal=r3 retVal=r3
	rlwinm		r0,r0,0,16,31		# coreId=r0 coreId=r0
	e_mulli		r0,r0,152		# coreId=r0 coreId=r0
.Llo36:
	stwx		r31,r3,r0		# retVal=r3 taskId=r31
# 
#       #endif
# 
#         /*[OS599]*/ /* [OS001-302.v1-01] [OS001-320.v1] */
#         OS_CALL_ERRORHOOK(retVal, OSServiceId_ActivateTask, callerTask);
	.d2line		226
	rlwinm		r3,r29,0,24,31		# retVal=r3 retVal=r29
	mr		r5,r8		# callerTask=r5 callerTask=r8
	diab.li		r4,128
	bl		Os_Call_ErrorHook
	.section	.Os_TEXT,,c
.L11505:
.L11394:
#     }
#     return retVal;
	.d2line		228
.Llo25:
	rlwinm		r3,r29,0,24,31		# taskId=r3 retVal=r29
# }
	.d2line		229
	.d2epilogue_begin
	lmw		r29,20(r1)		# offset r1+20  0x14
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
.L11485:
	.type		Os_ActivateTask,@function
	.size		Os_ActivateTask,.-Os_ActivateTask
# Number of nodes = 117

# Allocations for Os_ActivateTask
#	?a4		taskId
#	?a5		callerTask
#	?a6		$$2354
#	?a7		requestedTask
#	?a8		retVal
#	?a9		disp
#	?a10		coreId
# LOCAL_INLINE FUNC (StatusType, OS_CODE) Os_ActivateTask_Err_Stat(
	.align		1
	.section	.Os_TEXT,,c
        .d2line         289,41
#$$ld
.L11512:

#$$bf	Os_ActivateTask_Err_Stat,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Os_ActivateTask_Err_Stat:
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
#                                             CONST        ( TaskType,        AUTOMATIC )           taskId,
#                                             CONSTP2CONST ( Os_ProcStatType, AUTOMATIC, OS_CONST ) callerTask
#                                 )
# {
#     VAR(StatusType, AUTOMATIC) retVal;
# 
#     /* The API should succeed if the following conditions satisfies :
#      * If calling level is task level or CAt 2 interrupt level
#      * If the parameter is a valid taskId
#      * If the current application can access the taskId
#      * If the number of the task activation is not exceeded
#      * This activation will not result in the overflow of priority queue
#      * of scheduler. */
#     if(Os_false == Os_Task_CheckId(taskId))
	.d2line		303
	mr		r3,r31		# taskId=r3 taskId=r31
.Llo38:
	bl		Os_Task_CheckId
.Llo43:
	se_cmpi		r3,0
	bc		0,2,.L11410	# ne
#     {
#         retVal = OS_GET_ERRORCODE(E_OS_SYS_ERROR, E_OS_ID); /* [OS001-007.v1] */
	.d2line		305
.Llo39:
	diab.li		r3,3		# retVal=r3
.Llo45:
	b		.L11411
.L11410:
#     }
#   #ifdef OS_MODULE_APPLICATION
#     else if( Os_Access_Denied == Os_Access_Check( Os_Proc_Stat[taskId].Os_ProcAppAccess,
	.d2line		308
.Llo40:
	lis		r3,(Os_Proc_Stat+52)@ha		# retVal=r3
.Llo46:
	e_add16i		r3,r3,(Os_Proc_Stat+52)@l		# retVal=r3 retVal=r3
.Llo41:
	e_mulli		r31,r31,80		# taskId=r31 taskId=r31
.Llo42:
	lwzx		r3,r3,r31		# retVal=r3 retVal=r3
.Llo47:
	lwz		r4,48(r30)		# callerTask=r30
	lbz		r4,4(r4)
	bl		Os_Access_Check
.Llo48:
	se_cmpi		r3,1		# retVal=r3
#                                                   (ProcType)callerTask->Os_ProcOwnerApp->Os_AppId ) )
#     {
#         retVal = OS_GET_ERRORCODE(E_OS_SYS_ERROR, E_OS_ACCESS); /*  [OS448-01-01] [OS570-02] [OS571-02] */
	.d2line		311
	diab.li		r3,1		# retVal=r3
	isel		r3,r3,r29,2		# retVal=r3 retVal=r3 retVal=r29
.L11412:
#     }
#   #endif  /* OS_MODULE_APPLICATION */
#     else
#     {
#         /* List of requirements that are not checked (automatically satisfied):
#          * [OS088-01-001] [OS088-01-002]
#          */
#         retVal = E_OK;
	.d2line		319
.Llo44:
	diab.li		r0,0
	isel		r3,r3,r0,2		# retVal=r3 retVal=r3
.L11411:
#     }
# 
#     return retVal;
	.d2line		322
	rlwinm		r3,r3,0,24,31		# retVal=r3 retVal=r3
# 
# }
	.d2line		324
	.d2epilogue_begin
.Llo49:
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
.L11513:
	.type		Os_ActivateTask_Err_Stat,@function
	.size		Os_ActivateTask_Err_Stat,.-Os_ActivateTask_Err_Stat
# Number of nodes = 42

# Allocations for Os_ActivateTask_Err_Stat
#	?a4		taskId
#	?a5		callerTask
#	?a6		retVal
# OS_API(ActivateTask)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         95,1
#$$ld
.L11521:

#$$bf	Os_API_ActivateTask,interprocedural,rasave,nostackparams
	.globl		Os_API_ActivateTask
	.d2_cfa_start __cie
Os_API_ActivateTask:
.Llo50:
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
#     CONST(TaskType,AUTOMATIC)    taskId = Os_APICall->Os_API_Data.Os_ApiActivateTask.TaskId;
	.d2line		97
	lwz		r29,16(r31)		# Os_APICall=r31
.Llo58:
	mr		r29,r29		# taskId=r29 taskId=r29
#     VAR(StatusType, AUTOMATIC)   retVal;
#   #if defined (OS_CONFIG_HOOK) || defined(OS_MODULE_ORTISUPPORT) || defined(OS_CONFIG_USEPARAMETERACCESS)
#     CONST      (CoreIdType,      AUTOMATIC)          coreId      = OS_GETCOREID();
	.d2line		100
	mfspr		r27,286		# coreId=r27
	mr		r27,r27		# coreId=r27 coreId=r27
#   #endif /* OS_CONFIG_HOOK || OS_MODULE_ORTISUPPORT || OS_CONFIG_USEPARAMETERACCESS */
# 
#     OS_TRACE(ActivateTask_Entry , coreId);
	.d2line		103
	diab.li		r0,53
	lis		r3,(Os_Core_DynShared+120)@ha
.Llo51:
	e_add16i		r3,r3,(Os_Core_DynShared+120)@l
	rlwinm		r5,r27,0,16,31		# coreId=r27
	e_mulli		r4,r5,152
.Llo56:
	stbx		r0,r3,r4
# 
#   #ifdef OS_CONFIG_HOOK
# 
#     /* Validate API access and parameters */
#     if(OS_HOOKID_NONE != OS_GET_CORE_HOOK_DYN ( coreId )->Os_HookID)
	.d2line		108
	lis		r3,(Os_Core_Stat+4)@ha
	e_add16i		r3,r3,(Os_Core_Stat+4)@l
	e_mulli		r5,r5,20
	lwzx		r3,r3,r5
	lhz		r0,100(r3)
	se_cmpi		r0,1
	bc		1,2,.L11363	# eq
#     {
#         /* [OS088-03-002] [OS088-03-003] [OS088-03-004] [OS088-03-005] [OS088-03-006]
#          * [OS088-03-007] [OS088-03-008] [OS088-03-345] [OS088-03-345] [OS088-03-378]
#          * [OS088-03-421] [OS001-005-MGC.v1] [OS-MGC-0056-01] [OS-MGC-0056-44]
#          */
#         OS_FATAL_ERROR(E_OS_SYS_CALLEVEL);
	.d2line		114
.Llo52:
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
#     retVal = Os_ActivateTask_Err_Stat(taskId, callerProc);
	.d2line		119
	mr		r3,r29		# taskId=r3 taskId=r29
	mr		r4,r30		# callerProc=r4 callerProc=r30
	bl		Os_ActivateTask_Err_Stat
.Llo61:
	mr		r28,r3		# retVal=r28 retVal=r3
# 
#     /* Call API if validation was successful */
#     if(E_OK == retVal)
	.d2line		122
	rlwinm		r3,r3,0,24,31		# retVal=r3 retVal=r3
	se_cmpi		r3,0		# retVal=r3
	bc		0,2,.L11365	# ne
#     {
#       #ifdef OS_MODULE_MULTICORE
#         /* the cross core action must be executed by the dispatcher */
#         if(Os_true == Os_TaskOnOtherCore(taskId))
	.d2line		126
.Llo62:
	mr		r3,r29		# taskId=r3 taskId=r29
.Llo63:
	bl		Os_TaskOnOtherCore
	se_cmpi		r3,1		# retVal=r3
	bc		0,2,.L11366	# ne
	.section	.Os_TEXT,,c
.L11536:
#         {
#             OS_API_ALLOCAPIREMULTI(ActivateTask, OS_GETCOREID(), Os_Proc_Stat[taskId].Os_ProcCoreID);
	.d2line		128
.Llo57:
	mfspr		r3,286		# retVal=r3
.Llo64:
	rlwinm		r3,r3,0,16,31		# retVal=r3 retVal=r3
.Llo65:
	bl		Os_Dispatcher_Alloc_Core
.Llo74:
	mr		r4,r3		# _disp=r4 _disp=r3
.Llo75:
	lis		r3,Os_API_MC_ActivateTask@ha		# retVal=r3
.Llo66:
	e_add16i		r3,r3,Os_API_MC_ActivateTask@l		# retVal=r3 retVal=r3
	stw		r3,12(r31)		# Os_APICall=r31 retVal=r3
	diab.li		r0,1
	stw		r0,8(r31)		# Os_APICall=r31
	lis		r3,(Os_Proc_Stat+4)@ha		# retVal=r3
	e_add16i		r3,r3,(Os_Proc_Stat+4)@l		# retVal=r3 retVal=r3
.Llo59:
	e_mulli		r29,r29,80		# taskId=r29 taskId=r29
.Llo60:
	lhzx		r0,r3,r29		# retVal=r3
	sth		r0,4(r4)		# _disp=r4
	diab.li		r0,3
	stw		r0,0(r4)		# _disp=r4
	stw		r31,12(r4)		# _disp=r4 Os_APICall=r31
	.section	.Os_TEXT,,c
.L11537:
.Llo53:
	b		.L11369
.L11366:
# 
#         }
#         else
#       #endif /* OS_MODULE_MULTICORE */
#         {
#             Os_APICall->Os_API_ReturnValue = Os_ActivateTask(taskId, callerProc);
	.d2line		134
.Llo54:
	mr		r3,r29		# taskId=r3 taskId=r29
	mr		r4,r30		# callerProc=r4 callerProc=r30
	bl		Os_ActivateTask
.Llo67:
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
	.d2line		141
.Llo68:
	lis		r3,(Os_Core_DynShared+16)@ha		# retVal=r3
.Llo69:
	e_add16i		r3,r3,(Os_Core_DynShared+16)@l		# retVal=r3 retVal=r3
	rlwinm		r5,r27,0,16,31		# coreId=r27
	e_mulli		r5,r5,152
	stwx		r29,r3,r5		# retVal=r3 taskId=r29
# 
#       #endif
# 
#         OS_CALL_ERRORHOOK(retVal, OSServiceId_ActivateTask, callerProc); /* [OS001-302.v1-01] */
	.d2line		145
	rlwinm		r3,r28,0,24,31		# retVal=r3 retVal=r28
	mr		r5,r30		# callerProc=r5 callerProc=r30
	diab.li		r4,128
	bl		Os_Call_ErrorHook
#         Os_APICall->Os_API_ReturnValue = retVal;
	.d2line		146
	stb		r28,4(r31)		# Os_APICall=r31 retVal=r28
.L11369:
#     }
# 
#     OS_TRACE(ActivateTask_Exit , coreId);
	.d2line		149
.Llo55:
	diab.li		r3,52		# retVal=r3
.Llo70:
	lis		r4,(Os_Core_DynShared+120)@ha		# _disp=r4
.Llo76:
	e_add16i		r4,r4,(Os_Core_DynShared+120)@l		# _disp=r4 _disp=r4
.Llo72:
	rlwinm		r27,r27,0,16,31		# coreId=r27 coreId=r27
	e_mulli		r27,r27,152		# coreId=r27 coreId=r27
.Llo73:
	stbx		r3,r4,r27		# _disp=r4 retVal=r3
# }
	.d2line		150
	.d2epilogue_begin
	lmw		r27,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,52(r1)
	mtspr		lr,r0
	diab.addi		r1,r1,48		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo71:
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11522:
	.type		Os_API_ActivateTask,@function
	.size		Os_API_ActivateTask,.-Os_API_ActivateTask
# Number of nodes = 179

# Allocations for Os_API_ActivateTask
#	?a4		Os_APICall
#	?a5		callerProc
#	?a6		taskId
#	?a7		retVal
#	?a8		coreId
#	?a9		_disp
# OS_API(ActivateTaskCrossCore)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         154,1
#$$ld
.L11544:

#$$bf	Os_API_ActivateTaskCrossCore,interprocedural,rasave,nostackparams
	.globl		Os_API_ActivateTaskCrossCore
	.d2_cfa_start __cie
Os_API_ActivateTaskCrossCore:
.Llo77:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr		# taskId=r0
.Llo79:
	stw		r0,20(r1)		# taskId=r0
	.d2_cfa_offset    108,-1
	mr		r3,r3		# Os_APICall=r3 Os_APICall=r3
	.d2prologue_end
# {
#     CONST(TaskType, AUTOMATIC)taskId = Os_APICall->Os_API_Data.Os_ApiActivateTask.TaskId;
	.d2line		156
	lwz		r0,16(r3)		# taskId=r0 Os_APICall=r3
	mr		r0,r0		# taskId=r0 taskId=r0
#     Os_Task_Activate(&Os_Proc_Stat[taskId]);
	.d2line		157
	lis		r3,Os_Proc_Stat@ha		# Os_APICall=r3
	e_add16i		r3,r3,Os_Proc_Stat@l		# Os_APICall=r3 Os_APICall=r3
	e_mulli		r0,r0,80		# taskId=r0 taskId=r0
	se_add		r3,r0		# Os_APICall=r3 Os_APICall=r3 taskId=r0
.Llo78:
	bl		Os_Task_Activate
# }
	.d2line		158
	.d2epilogue_begin
.Llo80:
	lwz		r0,20(r1)		# taskId=r0
	mtspr		lr,r0		# taskId=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11545:
	.type		Os_API_ActivateTaskCrossCore,@function
	.size		Os_API_ActivateTaskCrossCore,.-Os_API_ActivateTaskCrossCore
# Number of nodes = 15

# Allocations for Os_API_ActivateTaskCrossCore
#	?a4		Os_APICall
#	not allocated	callerProc
#	?a5		taskId
# OS_APIMC(ActivateTask)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         160,1
#$$ld
.L11552:

#$$bf	Os_API_MC_ActivateTask,interprocedural,rasave,nostackparams
	.globl		Os_API_MC_ActivateTask
	.d2_cfa_start __cie
Os_API_MC_ActivateTask:
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
#     CONST(TaskType,AUTOMATIC) taskId = Os_APICall->Os_API_Data.Os_ApiActivateTask.TaskId;
	.d2line		162
.Llo82:
	lwz		r3,16(r31)		# Os_APICall=r31
.Llo83:
	mr		r3,r3		# taskId=r3 taskId=r3
#     /* [OS598-01][OS598-02][OS598-03] */
#     Os_APICall->Os_API_ReturnValue = Os_ActivateTask(taskId,callerProc);
	.d2line		164
	mr		r3,r3		# taskId=r3 taskId=r3
.Llo86:
	mr		r0,r4		# callerProc=r0 callerProc=r4
	bl		Os_ActivateTask
.Llo85:
	stb		r3,4(r31)		# Os_APICall=r31
# }
	.d2line		165
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
.L11553:
	.type		Os_API_MC_ActivateTask,@function
	.size		Os_API_MC_ActivateTask,.-Os_API_MC_ActivateTask
# Number of nodes = 17

# Allocations for Os_API_MC_ActivateTask
#	?a4		Os_APICall
#	?a5		callerProc
#	?a6		taskId
# FUNC(void,OS_CODE) Os_DispatchActivateTask(VAR (TaskType, AUTOMATIC) taskId)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         170,20
#$$ld
.L11561:

#$$bf	Os_DispatchActivateTask,interprocedural,rasave,nostackparams
	.globl		Os_DispatchActivateTask
	.d2_cfa_start __cie
Os_DispatchActivateTask:
.Llo87:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# taskId=r31 taskId=r3
	.d2prologue_end
# {
#     /* This function is call only internally */
#     OS_ASSERT(Os_false != Os_Task_CheckId(taskId), E_OS_SYS_TASKID);
	.d2line		173
	mr		r3,r31		# taskId=r3 taskId=r31
.Llo88:
	bl		Os_Task_CheckId
	se_cmpi		r3,0
	bc		0,2,.L11380	# ne
.Llo89:
	diab.li		r4,44
	lis		r3,(Os_Core_DynShared+12)@ha
	e_add16i		r3,r3,(Os_Core_DynShared+12)@l
	mfspr		r0,286
	rlwinm		r0,r0,0,16,31
	e_mulli		r0,r0,152
	stwx		r4,r3,r0
	diab.li		r3,30
	bl		Os_ShutdownAllCores
.L11380:
# #ifdef OS_MODULE_MULTICORE
#     if(Os_true == Os_TaskOnOtherCore(taskId))
	.d2line		175
	mr		r3,r31		# taskId=r3 taskId=r31
	bl		Os_TaskOnOtherCore
	se_cmpi		r3,1
	bc		0,2,.L11383	# ne
	.section	.Os_TEXT,,c
.L11565:
#     {
#         CONSTP2VAR(Os_DispatchElementType, AUTOMATIC, OS_CONST) disp = Os_Dispatcher_Alloc_Core(OS_GETCOREID());
	.d2line		177
	mfspr		r3,286		# disp=r3
.Llo93:
	rlwinm		r3,r3,0,16,31		# disp=r3 disp=r3
.Llo94:
	bl		Os_Dispatcher_Alloc_Core
.Llo95:
	mr		r3,r3		# disp=r3 disp=r3
#         OS_API_ALLOCINTERNALMULTI(disp, disp->Os_DispatchApiInternal, ActivateTask, Os_Proc_Stat[taskId].Os_ProcCoreID);
	.d2line		178
	e_lis		r0,4660
	e_or2i		r0,22136
	stw		r0,16(r3)		# disp=r3
	lis		r4,Os_API_MC_ActivateTask@ha
	e_add16i		r4,r4,Os_API_MC_ActivateTask@l
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
#         disp->Os_DispatchApiInternal.Os_API_Data.Os_ApiActivateTask.TaskId = taskId;
	.d2line		179
	stw		r31,32(r3)		# disp=r3 taskId=r31
	.section	.Os_TEXT,,c
.L11566:
.Llo90:
	b		.L11377
.L11383:
#     }
#     else
# #endif
#     {
#         /* The local core activation could be done here */
#         (void)Os_ActivateTask(taskId,NULL_PTR);
	.d2line		185
.Llo91:
	mr		r3,r31		# taskId=r3 taskId=r31
	diab.li		r4,0
	bl		Os_ActivateTask
.L11377:
#     }
# }
	.d2line		187
	.d2epilogue_begin
.Llo92:
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
.L11562:
	.type		Os_DispatchActivateTask,@function
	.size		Os_DispatchActivateTask,.-Os_DispatchActivateTask
# Number of nodes = 101

# Allocations for Os_DispatchActivateTask
#	?a4		taskId
#	?a5		disp

# Allocations for module
	.section	.text_vle
	.0byte		.L11571
	.section	.text_vle
	.0byte		.L11575
	.section	.Os_BSS,,b
	.0byte		.L11582
	.section	.text_vle
#$$ld
.L5:
.L12059:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_Types.h"
.L12056:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ApplicationApiTypes.h"
.L12054:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ScheduleTableApiTypes.h"
.L12052:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_TaskApiTypes.h"
.L12050:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_SpinlockApiTypes.h"
.L12038:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_Isr.h"
.L12033:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\PowerPC\\WindRiver\\AUTOSAR\\ar422\\MemMap.h"
.L12031:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_InternalTypes.h"
.L12014:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ErrorApiTypes.h"
.L11994:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ExceptionApiTypes.h"
.L11949:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_ApplicationCfgTypes.h"
.L11900:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_HookApiTypes.h"
.L11875:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_TrustedFunctionCfgTypes.h"
.L11637:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_ApiDispatchCfgTypes.h"
.L11587:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_SchedulerCfgTypes.h"
.L11576:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_CoreCfgTypes.h"
.L11572:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_TaskCfgTypes.h"
	.d2_line_end
	.section	.Os_TEXT,,c
#$$ld
.L11421:
.L11469:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\task\\Os_ActivateTask.c"
.L11429:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_Isr.h"
	.d2_line_end
	.section	.Os_PUBLIC_TEXT,,c
#$$ld
.L11442:
.L11450:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\task\\Os_ActivateTask.c"
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
	.uleb128	20
	.uleb128	38
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	21
	.uleb128	15
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	22
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	23
	.uleb128	33
	.byte		0x0
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	24
	.uleb128	33
	.byte		0x0
	.uleb128	47
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	25
	.uleb128	21
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	39
	.uleb128	12
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	26
	.uleb128	5
	.byte		0x0
	.uleb128	73
	.uleb128	16
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\task\\Os_ActivateTask.c"
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
.L11418:
	.4byte		.L11419-.L11417
.L11417:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L11423-.L11418
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\task\\Os_ActivateTask.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L11420
	.4byte		.L11421
	.4byte		.L11424
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11432:
	.sleb128	2
	.4byte		.L11426-.L11418
	.byte		"Os_Isr_GetState"
	.byte		0
	.4byte		.L11429
	.uleb128	227
	.uleb128	45
	.4byte		.L11430
	.byte		0x1
	.4byte		.L11427
	.4byte		.L11428
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L11429
	.uleb128	227
	.uleb128	45
	.byte		"coreId"
	.byte		0
	.4byte		.L11433
	.4byte		.L11437
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11426:
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
.L11439:
	.4byte		.L11440-.L11438
.L11438:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L11444-.L11439
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\task\\Os_ActivateTask.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L11441
	.4byte		.L11442
	.4byte		.L11445
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
.L11454:
	.sleb128	4
	.4byte		.L11447-.L11439
	.byte		"ActivateTask"
	.byte		0
	.4byte		.L11450
	.uleb128	74
	.uleb128	28
	.4byte		.L11451
	.byte		0x1
	.byte		0x1
	.4byte		.L11448
	.4byte		.L11449
	.sleb128	3
	.4byte		.L11450
	.uleb128	74
	.uleb128	28
	.byte		"taskId"
	.byte		0
	.4byte		.L11455
	.4byte		.L11461
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
.L11462:
	.sleb128	5
	.4byte		.L11450
	.uleb128	76
	.uleb128	36
	.byte		"Os_ActivateTaskAPI_Call"
	.byte		0
	.4byte		.L11463
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11447:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11470:
	.sleb128	2
	.4byte		.L11466-.L11418
	.byte		"Os_ActivateTask_Err_Dyn"
	.byte		0
	.4byte		.L11469
	.uleb128	239
	.uleb128	41
	.4byte		.L11451
	.byte		0x1
	.4byte		.L11467
	.4byte		.L11468
	.sleb128	3
	.4byte		.L11469
	.uleb128	239
	.uleb128	41
	.byte		"requestedTask"
	.byte		0
	.4byte		.L11471
	.4byte		.L11476
	.sleb128	3
	.4byte		.L11469
	.uleb128	239
	.uleb128	41
	.byte		"callerTask"
	.byte		0
	.4byte		.L11471
	.4byte		.L11477
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11478:
	.sleb128	6
	.4byte		.L11469
	.uleb128	244
	.uleb128	34
	.byte		"retVal"
	.byte		0
	.4byte		.L11451
	.4byte		.L11479
.L11480:
	.sleb128	6
	.4byte		.L11469
	.uleb128	245
	.uleb128	34
	.byte		"coreId"
	.byte		0
	.4byte		.L11433
	.4byte		.L11481
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11466:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11486:
	.sleb128	2
	.4byte		.L11483-.L11418
	.byte		"Os_ActivateTask"
	.byte		0
	.4byte		.L11469
	.uleb128	189
	.uleb128	41
	.4byte		.L11451
	.byte		0x1
	.4byte		.L11484
	.4byte		.L11485
	.sleb128	3
	.4byte		.L11469
	.uleb128	189
	.uleb128	41
	.byte		"taskId"
	.byte		0
	.4byte		.L11455
	.4byte		.L11487
	.sleb128	3
	.4byte		.L11469
	.uleb128	189
	.uleb128	41
	.byte		"callerTask"
	.byte		0
	.4byte		.L11471
	.4byte		.L11488
.L11489:
	.sleb128	6
	.4byte		.L11469
	.uleb128	194
	.uleb128	57
	.byte		"requestedTask"
	.byte		0
	.4byte		.L11471
	.4byte		.L11490
.L11491:
	.sleb128	6
	.4byte		.L11469
	.uleb128	195
	.uleb128	35
	.byte		"retVal"
	.byte		0
	.4byte		.L11492
	.4byte		.L11493
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	7
	.4byte		.L11497
	.4byte		.L11494
	.4byte		.L11495
.L11498:
	.sleb128	6
	.4byte		.L11469
	.uleb128	205
	.uleb128	69
	.byte		"disp"
	.byte		0
	.4byte		.L11499
	.4byte		.L11503
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11497:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	7
	.4byte		.L11507
	.4byte		.L11504
	.4byte		.L11505
.L11508:
	.sleb128	6
	.4byte		.L11469
	.uleb128	219
	.uleb128	40
	.byte		"coreId"
	.byte		0
	.4byte		.L11433
	.4byte		.L11509
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11507:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11483:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11514:
	.sleb128	2
	.4byte		.L11511-.L11418
	.byte		"Os_ActivateTask_Err_Stat"
	.byte		0
	.4byte		.L11469
	.uleb128	289
	.uleb128	41
	.4byte		.L11451
	.byte		0x1
	.4byte		.L11512
	.4byte		.L11513
	.sleb128	3
	.4byte		.L11469
	.uleb128	289
	.uleb128	41
	.byte		"taskId"
	.byte		0
	.4byte		.L11455
	.4byte		.L11515
	.sleb128	3
	.4byte		.L11469
	.uleb128	289
	.uleb128	41
	.byte		"callerTask"
	.byte		0
	.4byte		.L11471
	.4byte		.L11516
.L11517:
	.sleb128	6
	.4byte		.L11469
	.uleb128	294
	.uleb128	32
	.byte		"retVal"
	.byte		0
	.4byte		.L11451
	.4byte		.L11518
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11511:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11523:
	.sleb128	8
	.4byte		.L11520-.L11418
	.byte		"Os_API_ActivateTask"
	.byte		0
	.4byte		.L11469
	.uleb128	95
	.uleb128	1
	.byte		0x1
	.byte		0x1
	.4byte		.L11521
	.4byte		.L11522
	.sleb128	3
	.4byte		.L11469
	.uleb128	95
	.uleb128	1
	.byte		"Os_APICall"
	.byte		0
	.4byte		.L11524
	.4byte		.L11525
	.sleb128	3
	.4byte		.L11469
	.uleb128	95
	.uleb128	1
	.byte		"callerProc"
	.byte		0
	.4byte		.L11526
	.4byte		.L11529
.L11530:
	.sleb128	6
	.4byte		.L11469
	.uleb128	97
	.uleb128	34
	.byte		"taskId"
	.byte		0
	.4byte		.L11455
	.4byte		.L11531
.L11532:
	.sleb128	6
	.4byte		.L11469
	.uleb128	98
	.uleb128	34
	.byte		"retVal"
	.byte		0
	.4byte		.L11451
	.4byte		.L11533
.L11534:
	.sleb128	6
	.4byte		.L11469
	.uleb128	100
	.uleb128	54
	.byte		"coreId"
	.byte		0
	.4byte		.L11433
	.4byte		.L11535
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	7
	.4byte		.L11539
	.4byte		.L11536
	.4byte		.L11537
.L11540:
	.sleb128	6
	.4byte		.L11469
	.uleb128	128
	.uleb128	13
	.byte		"_disp"
	.byte		0
	.4byte		.L11500
	.4byte		.L11541
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11539:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11520:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11546:
	.sleb128	8
	.4byte		.L11543-.L11418
	.byte		"Os_API_ActivateTaskCrossCore"
	.byte		0
	.4byte		.L11469
	.uleb128	154
	.uleb128	1
	.byte		0x1
	.byte		0x1
	.4byte		.L11544
	.4byte		.L11545
	.sleb128	3
	.4byte		.L11469
	.uleb128	154
	.uleb128	1
	.byte		"Os_APICall"
	.byte		0
	.4byte		.L11524
	.4byte		.L11547
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	9
	.4byte		.L11469
	.uleb128	154
	.uleb128	1
	.byte		"callerProc"
	.byte		0
	.4byte		.L11526
	.sleb128	2
	.byte		0x90
	.uleb128	4
.L11548:
	.sleb128	6
	.4byte		.L11469
	.uleb128	156
	.uleb128	31
	.byte		"taskId"
	.byte		0
	.4byte		.L11455
	.4byte		.L11549
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11543:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11554:
	.sleb128	8
	.4byte		.L11551-.L11418
	.byte		"Os_API_MC_ActivateTask"
	.byte		0
	.4byte		.L11469
	.uleb128	160
	.uleb128	1
	.byte		0x1
	.byte		0x1
	.4byte		.L11552
	.4byte		.L11553
	.sleb128	3
	.4byte		.L11469
	.uleb128	160
	.uleb128	1
	.byte		"Os_APICall"
	.byte		0
	.4byte		.L11524
	.4byte		.L11555
	.sleb128	3
	.4byte		.L11469
	.uleb128	160
	.uleb128	1
	.byte		"callerProc"
	.byte		0
	.4byte		.L11526
	.4byte		.L11556
.L11557:
	.sleb128	6
	.4byte		.L11469
	.uleb128	162
	.uleb128	31
	.byte		"taskId"
	.byte		0
	.4byte		.L11455
	.4byte		.L11558
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11551:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11563:
	.sleb128	8
	.4byte		.L11560-.L11418
	.byte		"Os_DispatchActivateTask"
	.byte		0
	.4byte		.L11469
	.uleb128	170
	.uleb128	20
	.byte		0x1
	.byte		0x1
	.4byte		.L11561
	.4byte		.L11562
	.sleb128	3
	.4byte		.L11469
	.uleb128	170
	.uleb128	20
	.byte		"taskId"
	.byte		0
	.4byte		.L11456
	.4byte		.L11564
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	7
	.4byte		.L11568
	.4byte		.L11565
	.4byte		.L11566
.L11569:
	.sleb128	6
	.4byte		.L11469
	.uleb128	177
	.uleb128	65
	.byte		"disp"
	.byte		0
	.4byte		.L11499
	.4byte		.L11570
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11568:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11560:
	.section	.debug_info,,n
.L11571:
	.sleb128	10
	.byte		0x1
	.byte		0x1
	.4byte		.L11572
	.uleb128	211
	.uleb128	45
	.byte		"Os_Proc_Stat"
	.byte		0
	.4byte		.L11573
	.section	.debug_info,,n
.L11575:
	.sleb128	10
	.byte		0x1
	.byte		0x1
	.4byte		.L11576
	.uleb128	169
	.uleb128	42
	.byte		"Os_Core_Stat"
	.byte		0
	.4byte		.L11577
	.section	.debug_info,,n
.L11582:
	.sleb128	10
	.byte		0x1
	.byte		0x1
	.4byte		.L11576
	.uleb128	181
	.uleb128	45
	.byte		"Os_Core_DynShared"
	.byte		0
	.4byte		.L11583
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11581:
	.sleb128	11
	.4byte		.L11587
	.uleb128	69
	.uleb128	1
	.4byte		.L11588-.L2
	.uleb128	20
	.section	.debug_info,,n
.L788:
	.sleb128	12
	.byte		"Os_Core_DynInit"
	.byte		0
	.4byte		.L11589
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L789:
	.sleb128	12
	.byte		"Os_Core_Dyn"
	.byte		0
	.4byte		.L11593
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L790:
	.sleb128	12
	.byte		"Os_DispatchElement"
	.byte		0
	.4byte		.L11499
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L791:
	.sleb128	12
	.byte		"Os_PrepareContextFunction"
	.byte		0
	.4byte		.L11597
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L792:
	.sleb128	12
	.byte		"Os_GetStackPointerFunction"
	.byte		0
	.4byte		.L11602
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11588:
.L11592:
	.sleb128	11
	.4byte		.L11587
	.uleb128	69
	.uleb128	1
	.4byte		.L11609-.L2
	.uleb128	36
.L785:
	.sleb128	12
	.byte		"Os_IsrDynInit"
	.byte		0
	.4byte		.L11610
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L786:
	.sleb128	12
	.byte		"Os_SchedulerDynInit"
	.byte		0
	.4byte		.L11612
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L787:
	.sleb128	12
	.byte		"Os_CurrentApp"
	.byte		0
	.4byte		.L11614
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
	.sleb128	0
.L11609:
.L11586:
	.sleb128	11
	.4byte		.L11587
	.uleb128	69
	.uleb128	1
	.4byte		.L11618-.L2
	.uleb128	152
.L778:
	.sleb128	12
	.byte		"Os_Dispatcher"
	.byte		0
	.4byte		.L11619
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L779:
	.sleb128	12
	.byte		"Os_PublicDataNoInit"
	.byte		0
	.4byte		.L11621
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11618:
.L11596:
	.sleb128	11
	.4byte		.L11587
	.uleb128	69
	.uleb128	1
	.4byte		.L11623-.L2
	.uleb128	104
.L775:
	.sleb128	12
	.byte		"Os_SchedulerDyn"
	.byte		0
	.4byte		.L11624
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L776:
	.sleb128	12
	.byte		"Os_IsrDyn"
	.byte		0
	.4byte		.L11626
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L777:
	.sleb128	12
	.byte		"Os_HooksDyn"
	.byte		0
	.4byte		.L11628
	.sleb128	2
	.byte		0x23
	.uleb128	100
	.byte		0x1
	.sleb128	0
.L11623:
.L11613:
	.sleb128	11
	.4byte		.L11587
	.uleb128	69
	.uleb128	1
	.4byte		.L11630-.L2
	.uleb128	4
.L774:
	.sleb128	12
	.byte		"Os_SchedulerCurrentProc"
	.byte		0
	.4byte		.L11527
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11630:
.L11625:
	.sleb128	11
	.4byte		.L11587
	.uleb128	69
	.uleb128	1
	.4byte		.L11631-.L2
	.uleb128	48
.L766:
	.sleb128	12
	.byte		"Os_CurrentContext"
	.byte		0
	.4byte		.L11607
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L767:
	.sleb128	12
	.byte		"Os_PreviousContext"
	.byte		0
	.4byte		.L11607
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L768:
	.sleb128	12
	.byte		"Os_SchedulerScheduleAction"
	.byte		0
	.4byte		.L11632
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L769:
	.sleb128	12
	.byte		"Os_SchedulerLastScheduledPriority"
	.byte		0
	.4byte		.L11634
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L770:
	.sleb128	12
	.byte		"Os_SchedulerCurrentTask"
	.byte		0
	.4byte		.L11527
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L771:
	.sleb128	12
	.byte		"Os_SchedulerLastScheduledProc"
	.byte		0
	.4byte		.L11527
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L772:
	.sleb128	12
	.byte		"Os_SchedulerHeadPivot"
	.byte		0
	.4byte		.L11635
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L773:
	.sleb128	12
	.byte		"Os_SchedulerTailPivot"
	.byte		0
	.4byte		.L11635
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
	.sleb128	0
.L11631:
	.section	.debug_info,,n
.L11636:
	.sleb128	13
	.4byte		.L11637
	.uleb128	612
	.uleb128	1
	.4byte		.L11638-.L2
	.byte		"Os_SchedulerQueueElementType_s"
	.byte		0
	.uleb128	12
.L752:
	.sleb128	12
	.byte		"Os_QueueProc"
	.byte		0
	.4byte		.L11527
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L753:
	.sleb128	12
	.byte		"Os_QueueFrontElement"
	.byte		0
	.4byte		.L11639
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L754:
	.sleb128	12
	.byte		"Os_QueueBackElement"
	.byte		0
	.4byte		.L11639
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11638:
.L11611:
	.sleb128	11
	.4byte		.L11637
	.uleb128	612
	.uleb128	1
	.4byte		.L11640-.L2
	.uleb128	28
.L745:
	.sleb128	12
	.byte		"Os_CurrentUserModePriority"
	.byte		0
	.4byte		.L11641
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L746:
	.sleb128	12
	.byte		"Os_UserModePriorityChanged"
	.byte		0
	.4byte		.L11642
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L747:
	.sleb128	12
	.byte		"Os_DisableAllCount"
	.byte		0
	.4byte		.L11459
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L748:
	.sleb128	12
	.byte		"Os_SuspendAllCount"
	.byte		0
	.4byte		.L11459
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L749:
	.sleb128	12
	.byte		"Os_SuspendOSCount"
	.byte		0
	.4byte		.L11459
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L750:
	.sleb128	12
	.byte		"Os_SavedIsrLevel"
	.byte		0
	.4byte		.L11641
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L751:
	.sleb128	12
	.byte		"Os_SavedOSIsrLevel"
	.byte		0
	.4byte		.L11641
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
	.sleb128	0
.L11640:
.L11627:
	.sleb128	11
	.4byte		.L11637
	.uleb128	612
	.uleb128	1
	.4byte		.L11643-.L2
	.uleb128	52
.L739:
	.sleb128	12
	.byte		"Os_IsrRunningIsr"
	.byte		0
	.4byte		.L11527
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L740:
	.sleb128	12
	.byte		"Os_IsrNeedToClear"
	.byte		0
	.4byte		.L11644
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L741:
	.sleb128	12
	.byte		"Os_Isr_NestLevel"
	.byte		0
	.4byte		.L11459
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L742:
	.sleb128	12
	.byte		"Os_Isr_ServicesBackup"
	.byte		0
	.4byte		.L11648
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L743:
	.sleb128	12
	.byte		"Os_SuspendAllPrevIsrState"
	.byte		0
	.4byte		.L11641
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L744:
	.sleb128	12
	.byte		"Os_SuspendCounterpartTrack"
	.byte		0
	.4byte		.L11652
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L11643:
.L11620:
	.sleb128	11
	.4byte		.L11637
	.uleb128	612
	.uleb128	1
	.4byte		.L11654-.L2
	.uleb128	8
.L737:
	.sleb128	12
	.byte		"Os_DHead"
	.byte		0
	.4byte		.L11459
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L738:
	.sleb128	12
	.byte		"Os_DTail"
	.byte		0
	.4byte		.L11459
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11654:
.L11502:
	.sleb128	13
	.4byte		.L11637
	.uleb128	612
	.uleb128	1
	.4byte		.L11655-.L2
	.byte		"Os_DispatchElementType_s"
	.byte		0
	.uleb128	56
.L732:
	.sleb128	12
	.byte		"Os_DispatchKind"
	.byte		0
	.4byte		.L11656
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L733:
	.sleb128	12
	.byte		"Os_DispatcherLockCoreId"
	.byte		0
	.4byte		.L11434
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L734:
	.sleb128	12
	.byte		"Os_DispatchIsrId"
	.byte		0
	.4byte		.L11658
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L735:
	.sleb128	12
	.byte		"Os_DispatchApiCall"
	.byte		0
	.4byte		.L11659
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L736:
	.sleb128	12
	.byte		"Os_DispatchApiInternal"
	.byte		0
	.4byte		.L11463
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11655:
.L11464:
	.sleb128	13
	.4byte		.L11637
	.uleb128	60
	.uleb128	1
	.4byte		.L11660-.L2
	.byte		"Os_APICallType_struct"
	.byte		0
	.uleb128	40
.L727:
	.sleb128	12
	.byte		"Os_API_Magic"
	.byte		0
	.4byte		.L11459
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L728:
	.sleb128	12
	.byte		"Os_API_ReturnValue"
	.byte		0
	.4byte		.L11451
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L729:
	.sleb128	12
	.byte		"Os_API_Lock"
	.byte		0
	.4byte		.L11661
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L730:
	.sleb128	12
	.byte		"Os_API_Func"
	.byte		0
	.4byte		.L11663
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L731:
	.sleb128	12
	.byte		"Os_API_Data"
	.byte		0
	.4byte		.L11667
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11660:
	.section	.debug_info,,n
.L11667:
	.sleb128	14
	.4byte		.L11637
	.uleb128	60
	.uleb128	1
	.4byte		.L11668-.L2
	.uleb128	24
.L679:
	.sleb128	12
	.byte		"Os_ApiStartOs"
	.byte		0
	.4byte		.L11669
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L680:
	.sleb128	12
	.byte		"Os_ApiShutdownOs"
	.byte		0
	.4byte		.L11671
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L681:
	.sleb128	12
	.byte		"Os_ApiShutdownOsInternal"
	.byte		0
	.4byte		.L11673
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L682:
	.sleb128	12
	.byte		"Os_ApiShutdownAllCores"
	.byte		0
	.4byte		.L11675
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L683:
	.sleb128	12
	.byte		"Os_ApiGetNumberOfActivatedCores"
	.byte		0
	.4byte		.L11677
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L684:
	.sleb128	12
	.byte		"Os_ApiStartCore"
	.byte		0
	.4byte		.L11679
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L685:
	.sleb128	12
	.byte		"Os_ApiStartNonAutosarCore"
	.byte		0
	.4byte		.L11681
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L686:
	.sleb128	12
	.byte		"Os_ApiGetCoreID"
	.byte		0
	.4byte		.L11683
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L687:
	.sleb128	12
	.byte		"Os_ApiActivateTask"
	.byte		0
	.4byte		.L11685
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L688:
	.sleb128	12
	.byte		"Os_ApiChainTask"
	.byte		0
	.4byte		.L11687
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L689:
	.sleb128	12
	.byte		"Os_ApiGetTaskID"
	.byte		0
	.4byte		.L11689
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L690:
	.sleb128	12
	.byte		"Os_ApiGetTaskState"
	.byte		0
	.4byte		.L11691
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L691:
	.sleb128	12
	.byte		"Os_ApiSetEvent"
	.byte		0
	.4byte		.L11693
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L692:
	.sleb128	12
	.byte		"Os_ApiClearEvent"
	.byte		0
	.4byte		.L11695
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L693:
	.sleb128	12
	.byte		"Os_ApiGetEvent"
	.byte		0
	.4byte		.L11697
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L694:
	.sleb128	12
	.byte		"Os_ApiWaitEvent"
	.byte		0
	.4byte		.L11699
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L695:
	.sleb128	12
	.byte		"Os_ApiGetResource"
	.byte		0
	.4byte		.L11701
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L696:
	.sleb128	12
	.byte		"Os_ApiReleaseResource"
	.byte		0
	.4byte		.L11703
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L697:
	.sleb128	12
	.byte		"Os_ApiGetAlarmBase"
	.byte		0
	.4byte		.L11705
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L698:
	.sleb128	12
	.byte		"Os_ApiGetAlarm"
	.byte		0
	.4byte		.L11707
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L699:
	.sleb128	12
	.byte		"Os_ApiSetRelAlarm"
	.byte		0
	.4byte		.L11709
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L700:
	.sleb128	12
	.byte		"Os_ApiSetAbsAlarm"
	.byte		0
	.4byte		.L11711
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L701:
	.sleb128	12
	.byte		"Os_ApiCancelAlarm"
	.byte		0
	.4byte		.L11713
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L702:
	.sleb128	12
	.byte		"Os_ApiGetApplicationState"
	.byte		0
	.4byte		.L11715
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L703:
	.sleb128	12
	.byte		"Os_ApiTerminateApplication"
	.byte		0
	.4byte		.L11717
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L704:
	.sleb128	12
	.byte		"Os_ApiGetApplicationID"
	.byte		0
	.4byte		.L11719
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L705:
	.sleb128	12
	.byte		"Os_ApiGetISRID"
	.byte		0
	.4byte		.L11721
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L706:
	.sleb128	12
	.byte		"Os_ApiGetActiveApplicationMode"
	.byte		0
	.4byte		.L11723
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L707:
	.sleb128	12
	.byte		"Os_ApiIncrementCounter"
	.byte		0
	.4byte		.L11725
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L708:
	.sleb128	12
	.byte		"Os_ApiGetCounterValue"
	.byte		0
	.4byte		.L11727
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L709:
	.sleb128	12
	.byte		"Os_ApiGetElapsedValue"
	.byte		0
	.4byte		.L11729
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L710:
	.sleb128	12
	.byte		"Os_ApiStartScheduleTableAbs"
	.byte		0
	.4byte		.L11731
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L711:
	.sleb128	12
	.byte		"Os_ApiStartScheduleTableRel"
	.byte		0
	.4byte		.L11733
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L712:
	.sleb128	12
	.byte		"Os_ApiStopScheduleTable"
	.byte		0
	.4byte		.L11735
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L713:
	.sleb128	12
	.byte		"Os_ApiGetScheduleTableStatus"
	.byte		0
	.4byte		.L11737
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L714:
	.sleb128	12
	.byte		"Os_ApiNextScheduleTable"
	.byte		0
	.4byte		.L11739
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L715:
	.sleb128	12
	.byte		"Os_ApiStartScheduleTableSynchron"
	.byte		0
	.4byte		.L11741
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L716:
	.sleb128	12
	.byte		"Os_ApiSyncScheduleTable"
	.byte		0
	.4byte		.L11743
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L717:
	.sleb128	12
	.byte		"Os_ApiSetScheduleTableAsync"
	.byte		0
	.4byte		.L11745
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L718:
	.sleb128	12
	.byte		"Os_ApiCheckObjectAccess"
	.byte		0
	.4byte		.L11747
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L719:
	.sleb128	12
	.byte		"Os_ApiCheckObjectOwnership"
	.byte		0
	.4byte		.L11749
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L720:
	.sleb128	12
	.byte		"Os_ApiCallTrustedFunction"
	.byte		0
	.4byte		.L11751
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L721:
	.sleb128	12
	.byte		"Os_ApiStackUsage"
	.byte		0
	.4byte		.L11753
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L722:
	.sleb128	12
	.byte		"Os_API_GetSpinlock"
	.byte		0
	.4byte		.L11755
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L723:
	.sleb128	12
	.byte		"Os_API_ReleaseSpinlock"
	.byte		0
	.4byte		.L11757
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L724:
	.sleb128	12
	.byte		"Os_API_TryToGetSpinlock"
	.byte		0
	.4byte		.L11759
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L725:
	.sleb128	12
	.byte		"Os_API_IOCTransfer"
	.byte		0
	.4byte		.L11761
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L726:
	.sleb128	12
	.byte		"Os_ApiControlIdle"
	.byte		0
	.4byte		.L11763
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11668:
.L11764:
	.sleb128	11
	.4byte		.L11637
	.uleb128	60
	.uleb128	1
	.4byte		.L11765-.L2
	.uleb128	8
.L677:
	.sleb128	12
	.byte		"CoreID"
	.byte		0
	.4byte		.L11434
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L678:
	.sleb128	12
	.byte		"IdleMode"
	.byte		0
	.4byte		.L11766
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11765:
.L11762:
	.sleb128	11
	.4byte		.L11637
	.uleb128	60
	.uleb128	1
	.4byte		.L11768-.L2
	.uleb128	8
.L675:
	.sleb128	12
	.byte		"Ioc_Channel"
	.byte		0
	.4byte		.L11769
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L676:
	.sleb128	12
	.byte		"Ioc_Data"
	.byte		0
	.4byte		.L11773
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11768:
.L11760:
	.sleb128	11
	.4byte		.L11637
	.uleb128	60
	.uleb128	1
	.4byte		.L11779-.L2
	.uleb128	8
.L673:
	.sleb128	12
	.byte		"SpinlockId"
	.byte		0
	.4byte		.L11780
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L674:
	.sleb128	12
	.byte		"Success"
	.byte		0
	.4byte		.L11781
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11779:
.L11758:
	.sleb128	11
	.4byte		.L11637
	.uleb128	60
	.uleb128	1
	.4byte		.L11784-.L2
	.uleb128	2
.L672:
	.sleb128	12
	.byte		"SpinlockId"
	.byte		0
	.4byte		.L11780
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11784:
.L11756:
	.sleb128	11
	.4byte		.L11637
	.uleb128	60
	.uleb128	1
	.4byte		.L11785-.L2
	.uleb128	2
.L671:
	.sleb128	12
	.byte		"SpinlockId"
	.byte		0
	.4byte		.L11780
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11785:
.L11754:
	.sleb128	11
	.4byte		.L11637
	.uleb128	60
	.uleb128	1
	.4byte		.L11786-.L2
	.uleb128	20
.L666:
	.sleb128	12
	.byte		"ProcId"
	.byte		0
	.4byte		.L11456
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L667:
	.sleb128	12
	.byte		"MaxUsage"
	.byte		0
	.4byte		.L11452
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L668:
	.sleb128	12
	.byte		"MaxUsageRef"
	.byte		0
	.4byte		.L11787
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L669:
	.sleb128	12
	.byte		"CurrentUsage"
	.byte		0
	.4byte		.L11452
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L670:
	.sleb128	12
	.byte		"CurrentUsageRef"
	.byte		0
	.4byte		.L11787
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11786:
.L11752:
	.sleb128	11
	.4byte		.L11637
	.uleb128	60
	.uleb128	1
	.4byte		.L11788-.L2
	.uleb128	12
.L663:
	.sleb128	12
	.byte		"FunctionIndex"
	.byte		0
	.4byte		.L11789
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L664:
	.sleb128	12
	.byte		"ParamRef"
	.byte		0
	.4byte		.L11790
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L665:
	.sleb128	12
	.byte		"ReturnValue"
	.byte		0
	.4byte		.L11791
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11788:
.L11750:
	.sleb128	11
	.4byte		.L11637
	.uleb128	60
	.uleb128	1
	.4byte		.L11793-.L2
	.uleb128	12
.L660:
	.sleb128	12
	.byte		"AppID"
	.byte		0
	.4byte		.L11794
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L661:
	.sleb128	12
	.byte		"ObjectType"
	.byte		0
	.4byte		.L11795
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L662:
	.sleb128	12
	.byte		"Object"
	.byte		0
	.4byte		.L11458
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11793:
.L11748:
	.sleb128	11
	.4byte		.L11637
	.uleb128	60
	.uleb128	1
	.4byte		.L11797-.L2
	.uleb128	12
.L657:
	.sleb128	12
	.byte		"AppID"
	.byte		0
	.4byte		.L11794
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L658:
	.sleb128	12
	.byte		"ObjectType"
	.byte		0
	.4byte		.L11795
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L659:
	.sleb128	12
	.byte		"Object"
	.byte		0
	.4byte		.L11458
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11797:
.L11714:
	.sleb128	11
	.4byte		.L11637
	.uleb128	60
	.uleb128	1
	.4byte		.L11798-.L2
	.uleb128	4
.L656:
	.sleb128	12
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11799
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11798:
.L11712:
	.sleb128	11
	.4byte		.L11637
	.uleb128	60
	.uleb128	1
	.4byte		.L11800-.L2
	.uleb128	12
.L653:
	.sleb128	12
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11799
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L654:
	.sleb128	12
	.byte		"Start"
	.byte		0
	.4byte		.L11801
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L655:
	.sleb128	12
	.byte		"Cycle"
	.byte		0
	.4byte		.L11801
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11800:
.L11710:
	.sleb128	11
	.4byte		.L11637
	.uleb128	60
	.uleb128	1
	.4byte		.L11802-.L2
	.uleb128	12
.L650:
	.sleb128	12
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11799
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L651:
	.sleb128	12
	.byte		"Increment"
	.byte		0
	.4byte		.L11801
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L652:
	.sleb128	12
	.byte		"Cycle"
	.byte		0
	.4byte		.L11801
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11802:
.L11708:
	.sleb128	11
	.4byte		.L11637
	.uleb128	60
	.uleb128	1
	.4byte		.L11803-.L2
	.uleb128	8
.L648:
	.sleb128	12
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11799
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L649:
	.sleb128	12
	.byte		"TickRef"
	.byte		0
	.4byte		.L11804
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11803:
.L11706:
	.sleb128	11
	.4byte		.L11637
	.uleb128	60
	.uleb128	1
	.4byte		.L11806-.L2
	.uleb128	8
.L646:
	.sleb128	12
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11799
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L647:
	.sleb128	12
	.byte		"AlarmBaseTypeRef"
	.byte		0
	.4byte		.L11807
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11806:
.L11746:
	.sleb128	11
	.4byte		.L11637
	.uleb128	60
	.uleb128	1
	.4byte		.L11811-.L2
	.uleb128	4
.L645:
	.sleb128	12
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11812
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11811:
.L11744:
	.sleb128	11
	.4byte		.L11637
	.uleb128	60
	.uleb128	1
	.4byte		.L11813-.L2
	.uleb128	8
.L643:
	.sleb128	12
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11812
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L644:
	.sleb128	12
	.byte		"SyncValue"
	.byte		0
	.4byte		.L11801
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11813:
.L11742:
	.sleb128	11
	.4byte		.L11637
	.uleb128	60
	.uleb128	1
	.4byte		.L11814-.L2
	.uleb128	4
.L642:
	.sleb128	12
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11812
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11814:
.L11740:
	.sleb128	11
	.4byte		.L11637
	.uleb128	60
	.uleb128	1
	.4byte		.L11815-.L2
	.uleb128	8
.L640:
	.sleb128	12
	.byte		"SchTblIdFrom"
	.byte		0
	.4byte		.L11812
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L641:
	.sleb128	12
	.byte		"SchTblIdTo"
	.byte		0
	.4byte		.L11812
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11815:
.L11738:
	.sleb128	11
	.4byte		.L11637
	.uleb128	60
	.uleb128	1
	.4byte		.L11816-.L2
	.uleb128	8
.L638:
	.sleb128	12
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11812
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L639:
	.sleb128	12
	.byte		"SchTblStatus"
	.byte		0
	.4byte		.L11817
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11816:
.L11736:
	.sleb128	11
	.4byte		.L11637
	.uleb128	60
	.uleb128	1
	.4byte		.L11821-.L2
	.uleb128	4
.L637:
	.sleb128	12
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11812
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11821:
.L11734:
	.sleb128	11
	.4byte		.L11637
	.uleb128	60
	.uleb128	1
	.4byte		.L11822-.L2
	.uleb128	8
.L635:
	.sleb128	12
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11812
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L636:
	.sleb128	12
	.byte		"Offset"
	.byte		0
	.4byte		.L11801
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11822:
.L11732:
	.sleb128	11
	.4byte		.L11637
	.uleb128	60
	.uleb128	1
	.4byte		.L11823-.L2
	.uleb128	8
.L633:
	.sleb128	12
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11812
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L634:
	.sleb128	12
	.byte		"Start"
	.byte		0
	.4byte		.L11801
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11823:
.L11730:
	.sleb128	11
	.4byte		.L11637
	.uleb128	60
	.uleb128	1
	.4byte		.L11824-.L2
	.uleb128	12
.L630:
	.sleb128	12
	.byte		"CounterId"
	.byte		0
	.4byte		.L11825
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L631:
	.sleb128	12
	.byte		"ValuePtr"
	.byte		0
	.4byte		.L11804
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L632:
	.sleb128	12
	.byte		"ElapsedValuePtr"
	.byte		0
	.4byte		.L11804
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11824:
.L11728:
	.sleb128	11
	.4byte		.L11637
	.uleb128	60
	.uleb128	1
	.4byte		.L11826-.L2
	.uleb128	12
.L627:
	.sleb128	12
	.byte		"CounterId"
	.byte		0
	.4byte		.L11825
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L628:
	.sleb128	12
	.byte		"ValuePtr"
	.byte		0
	.4byte		.L11804
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L629:
	.sleb128	12
	.byte		"LightServiceFunction"
	.byte		0
	.4byte		.L11827
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11826:
.L11726:
	.sleb128	11
	.4byte		.L11637
	.uleb128	60
	.uleb128	1
	.4byte		.L11831-.L2
	.uleb128	4
.L626:
	.sleb128	12
	.byte		"CounterId"
	.byte		0
	.4byte		.L11825
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11831:
.L11722:
	.sleb128	11
	.4byte		.L11637
	.uleb128	60
	.uleb128	1
	.4byte		.L11832-.L2
	.uleb128	4
.L625:
	.sleb128	12
	.byte		"ISRId"
	.byte		0
	.4byte		.L11658
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11832:
.L11718:
	.sleb128	11
	.4byte		.L11637
	.uleb128	60
	.uleb128	1
	.4byte		.L11833-.L2
	.uleb128	2
.L623:
	.sleb128	12
	.byte		"Application"
	.byte		0
	.4byte		.L11794
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L624:
	.sleb128	12
	.byte		"RestartOption"
	.byte		0
	.4byte		.L11834
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
	.sleb128	0
.L11833:
.L11720:
	.sleb128	11
	.4byte		.L11637
	.uleb128	60
	.uleb128	1
	.4byte		.L11835-.L2
	.uleb128	1
.L622:
	.sleb128	12
	.byte		"Application"
	.byte		0
	.4byte		.L11794
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11835:
.L11716:
	.sleb128	11
	.4byte		.L11637
	.uleb128	60
	.uleb128	1
	.4byte		.L11836-.L2
	.uleb128	8
.L620:
	.sleb128	12
	.byte		"Application"
	.byte		0
	.4byte		.L11794
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L621:
	.sleb128	12
	.byte		"AppStateRef"
	.byte		0
	.4byte		.L11837
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11836:
.L11700:
	.sleb128	11
	.4byte		.L11637
	.uleb128	60
	.uleb128	1
	.4byte		.L11840-.L2
	.uleb128	8
.L619:
	.sleb128	12
	.byte		"EventMask"
	.byte		0
	.4byte		.L11841
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11840:
.L11698:
	.sleb128	11
	.4byte		.L11637
	.uleb128	60
	.uleb128	1
	.4byte		.L11844-.L2
	.uleb128	24
.L616:
	.sleb128	12
	.byte		"TaskId"
	.byte		0
	.4byte		.L11456
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L617:
	.sleb128	12
	.byte		"EventMask"
	.byte		0
	.4byte		.L11841
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L618:
	.sleb128	12
	.byte		"EventMaskRef"
	.byte		0
	.4byte		.L11845
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11844:
.L11696:
	.sleb128	11
	.4byte		.L11637
	.uleb128	60
	.uleb128	1
	.4byte		.L11847-.L2
	.uleb128	8
.L615:
	.sleb128	12
	.byte		"EventMask"
	.byte		0
	.4byte		.L11841
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11847:
.L11694:
	.sleb128	11
	.4byte		.L11637
	.uleb128	60
	.uleb128	1
	.4byte		.L11848-.L2
	.uleb128	16
.L613:
	.sleb128	12
	.byte		"TaskId"
	.byte		0
	.4byte		.L11456
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L614:
	.sleb128	12
	.byte		"EventMask"
	.byte		0
	.4byte		.L11841
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11848:
.L11692:
	.sleb128	11
	.4byte		.L11637
	.uleb128	60
	.uleb128	1
	.4byte		.L11849-.L2
	.uleb128	8
.L611:
	.sleb128	12
	.byte		"TaskId"
	.byte		0
	.4byte		.L11456
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L612:
	.sleb128	12
	.byte		"TaskStateRef"
	.byte		0
	.4byte		.L11850
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11849:
.L11690:
	.sleb128	11
	.4byte		.L11637
	.uleb128	60
	.uleb128	1
	.4byte		.L11854-.L2
	.uleb128	4
.L610:
	.sleb128	12
	.byte		"TaskIdRef"
	.byte		0
	.4byte		.L11855
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11854:
.L11688:
	.sleb128	11
	.4byte		.L11637
	.uleb128	60
	.uleb128	1
	.4byte		.L11857-.L2
	.uleb128	4
.L609:
	.sleb128	12
	.byte		"TaskId"
	.byte		0
	.4byte		.L11456
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11857:
.L11686:
	.sleb128	11
	.4byte		.L11637
	.uleb128	60
	.uleb128	1
	.4byte		.L11858-.L2
	.uleb128	4
.L608:
	.sleb128	12
	.byte		"TaskId"
	.byte		0
	.4byte		.L11456
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11858:
.L11704:
	.sleb128	11
	.4byte		.L11637
	.uleb128	60
	.uleb128	1
	.4byte		.L11859-.L2
	.uleb128	4
.L607:
	.sleb128	12
	.byte		"ResourceId"
	.byte		0
	.4byte		.L11860
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11859:
.L11702:
	.sleb128	11
	.4byte		.L11637
	.uleb128	60
	.uleb128	1
	.4byte		.L11861-.L2
	.uleb128	4
.L606:
	.sleb128	12
	.byte		"ResourceId"
	.byte		0
	.4byte		.L11860
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11861:
.L11724:
	.sleb128	11
	.4byte		.L11637
	.uleb128	60
	.uleb128	1
	.4byte		.L11862-.L2
	.uleb128	4
.L605:
	.sleb128	12
	.byte		"AppMode"
	.byte		0
	.4byte		.L11863
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11862:
.L11684:
	.sleb128	11
	.4byte		.L11637
	.uleb128	60
	.uleb128	1
	.4byte		.L11864-.L2
	.uleb128	2
.L604:
	.sleb128	12
	.byte		"CoreID"
	.byte		0
	.4byte		.L11434
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11864:
.L11678:
	.sleb128	11
	.4byte		.L11637
	.uleb128	60
	.uleb128	1
	.4byte		.L11865-.L2
	.uleb128	2
.L603:
	.sleb128	12
	.byte		"NumberOfActivatedCores"
	.byte		0
	.4byte		.L11434
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11865:
.L11676:
	.sleb128	11
	.4byte		.L11637
	.uleb128	60
	.uleb128	1
	.4byte		.L11866-.L2
	.uleb128	1
.L602:
	.sleb128	12
	.byte		"Error"
	.byte		0
	.4byte		.L11451
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11866:
.L11674:
	.sleb128	11
	.4byte		.L11637
	.uleb128	60
	.uleb128	1
	.4byte		.L11867-.L2
	.uleb128	8
.L600:
	.sleb128	12
	.byte		"ShutdownType"
	.byte		0
	.4byte		.L11868
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L601:
	.sleb128	12
	.byte		"Error"
	.byte		0
	.4byte		.L11451
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11867:
.L11672:
	.sleb128	11
	.4byte		.L11637
	.uleb128	60
	.uleb128	1
	.4byte		.L11870-.L2
	.uleb128	1
.L599:
	.sleb128	12
	.byte		"Error"
	.byte		0
	.4byte		.L11451
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11870:
.L11682:
	.sleb128	11
	.4byte		.L11637
	.uleb128	60
	.uleb128	1
	.4byte		.L11871-.L2
	.uleb128	8
.L597:
	.sleb128	12
	.byte		"CoreID"
	.byte		0
	.4byte		.L11434
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L598:
	.sleb128	12
	.byte		"StatusRef"
	.byte		0
	.4byte		.L11872
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11871:
.L11680:
	.sleb128	11
	.4byte		.L11637
	.uleb128	60
	.uleb128	1
	.4byte		.L11873-.L2
	.uleb128	8
.L595:
	.sleb128	12
	.byte		"CoreID"
	.byte		0
	.4byte		.L11434
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L596:
	.sleb128	12
	.byte		"StatusRef"
	.byte		0
	.4byte		.L11872
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11873:
.L11670:
	.sleb128	11
	.4byte		.L11637
	.uleb128	60
	.uleb128	1
	.4byte		.L11874-.L2
	.uleb128	4
.L594:
	.sleb128	12
	.byte		"AppMode"
	.byte		0
	.4byte		.L11863
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11874:
.L11772:
	.sleb128	11
	.4byte		.L11875
	.uleb128	33
	.uleb128	14
	.4byte		.L11876-.L2
	.uleb128	24
.L587:
	.sleb128	12
	.byte		"Os_IOC_ChannelDyn"
	.byte		0
	.4byte		.L11877
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L588:
	.sleb128	12
	.byte		"Os_IOC_ChannelLength"
	.byte		0
	.4byte		.L11881
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L589:
	.sleb128	12
	.byte		"Os_IOC_ChannelBuffer"
	.byte		0
	.4byte		.L11882
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L590:
	.sleb128	12
	.byte		"Os_IOC_ChannelElementSize"
	.byte		0
	.4byte		.L11883
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L591:
	.sleb128	12
	.byte		"Os_IOC_DataCount"
	.byte		0
	.4byte		.L11884
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L592:
	.sleb128	12
	.byte		"Os_IOC_DataDescriptor"
	.byte		0
	.4byte		.L11886
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L593:
	.sleb128	12
	.byte		"Os_IOC_LockResourceAddress"
	.byte		0
	.4byte		.L11891
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L11876:
.L11890:
	.sleb128	11
	.4byte		.L11875
	.uleb128	33
	.uleb128	14
	.4byte		.L11894-.L2
	.uleb128	4
.L583:
	.sleb128	12
	.byte		"Os_IOC_DataLength"
	.byte		0
	.4byte		.L11895
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L584:
	.sleb128	12
	.byte		"Os_IOC_DataOffset"
	.byte		0
	.4byte		.L11897
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L11894:
.L11880:
	.sleb128	11
	.4byte		.L11875
	.uleb128	33
	.uleb128	14
	.4byte		.L11899-.L2
	.uleb128	6
.L580:
	.sleb128	12
	.byte		"Os_IOC_ChannelHead"
	.byte		0
	.4byte		.L11881
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L581:
	.sleb128	12
	.byte		"Os_IOC_ChannelMessageCount"
	.byte		0
	.4byte		.L11881
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L582:
	.sleb128	12
	.byte		"Os_IOC_Status"
	.byte		0
	.4byte		.L11451
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11899:
.L11629:
	.sleb128	11
	.4byte		.L11900
	.uleb128	34
	.uleb128	14
	.4byte		.L11901-.L2
	.uleb128	2
.L531:
	.sleb128	12
	.byte		"Os_HookID"
	.byte		0
	.4byte		.L11902
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11901:
.L11475:
	.sleb128	13
	.4byte		.L11572
	.uleb128	80
	.uleb128	13
	.4byte		.L11903-.L2
	.byte		"Os_ProcStatType_s"
	.byte		0
	.uleb128	80
.L513:
	.sleb128	12
	.byte		"Os_ProcId"
	.byte		0
	.4byte		.L11455
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L514:
	.sleb128	12
	.byte		"Os_ProcCoreID"
	.byte		0
	.4byte		.L11433
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L515:
	.sleb128	12
	.byte		"Os_ProcDyn"
	.byte		0
	.4byte		.L11904
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L516:
	.sleb128	12
	.byte		"Os_ProcStack"
	.byte		0
	.4byte		.L11908
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L517:
	.sleb128	12
	.byte		"Os_ProcKind"
	.byte		0
	.4byte		.L11913
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L518:
	.sleb128	12
	.byte		"Os_ProcEventRights"
	.byte		0
	.4byte		.L11916
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L519:
	.sleb128	12
	.byte		"Os_ProcPriority"
	.byte		0
	.4byte		.L11917
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L520:
	.sleb128	12
	.byte		"Os_ProcRunPriority"
	.byte		0
	.4byte		.L11917
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L521:
	.sleb128	12
	.byte		"Os_ProcMaxActivations"
	.byte		0
	.4byte		.L11918
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L522:
	.sleb128	12
	.byte		"Os_ProcContext"
	.byte		0
	.4byte		.L11920
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L523:
	.sleb128	12
	.byte		"Os_ProcOwnerApp"
	.byte		0
	.4byte		.L11921
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L524:
	.sleb128	12
	.byte		"Os_ProcAppAccess"
	.byte		0
	.4byte		.L11922
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L525:
	.sleb128	12
	.byte		"Os_ProcEntryPoint"
	.byte		0
	.4byte		.L11926
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L526:
	.sleb128	12
	.byte		"Os_ProcAutoStart"
	.byte		0
	.4byte		.L11922
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
.L527:
	.sleb128	12
	.byte		"Os_ProcResourceCount"
	.byte		0
	.4byte		.L11931
	.sleb128	2
	.byte		0x23
	.uleb128	64
	.byte		0x1
.L528:
	.sleb128	12
	.byte		"Os_ProcResourceStack"
	.byte		0
	.4byte		.L11932
	.sleb128	2
	.byte		0x23
	.uleb128	68
	.byte		0x1
.L529:
	.sleb128	12
	.byte		"Os_ProcQueueElements"
	.byte		0
	.4byte		.L11938
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.byte		0x1
.L530:
	.sleb128	12
	.byte		"Os_ProcIsrPlatformConfig"
	.byte		0
	.4byte		.L11939
	.sleb128	2
	.byte		0x23
	.uleb128	76
	.byte		0x1
	.sleb128	0
.L11903:
.L11912:
	.sleb128	13
	.4byte		.L11572
	.uleb128	80
	.uleb128	13
	.4byte		.L11940-.L2
	.byte		"Os_ProcStackStruct"
	.byte		0
	.uleb128	8
.L511:
	.sleb128	12
	.byte		"Os_ProcStackSize"
	.byte		0
	.4byte		.L11941
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L512:
	.sleb128	12
	.byte		"Os_ProcStackBase"
	.byte		0
	.4byte		.L11920
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11940:
.L11907:
	.sleb128	11
	.4byte		.L11572
	.uleb128	80
	.uleb128	13
	.4byte		.L11943-.L2
	.uleb128	56
.L498:
	.sleb128	12
	.byte		"Os_ProcState"
	.byte		0
	.4byte		.L11852
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L499:
	.sleb128	12
	.byte		"Os_ProcContextState"
	.byte		0
	.4byte		.L11944
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L500:
	.sleb128	12
	.byte		"Os_ProcEvents"
	.byte		0
	.4byte		.L11841
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L501:
	.sleb128	12
	.byte		"Os_ProcEventWaitingFor"
	.byte		0
	.4byte		.L11841
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L502:
	.sleb128	12
	.byte		"Os_ProcActivations"
	.byte		0
	.4byte		.L11919
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L503:
	.sleb128	12
	.byte		"Os_ProcResourcesAllocated"
	.byte		0
	.4byte		.L11860
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L504:
	.sleb128	12
	.byte		"Os_ProcEnabled"
	.byte		0
	.4byte		.L11452
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L505:
	.sleb128	12
	.byte		"Os_ProcCurrentApp"
	.byte		0
	.4byte		.L11614
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L506:
	.sleb128	12
	.byte		"Os_ProcSpinlock"
	.byte		0
	.4byte		.L11946
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L507:
	.sleb128	12
	.byte		"Os_ProcFreeQueueElements"
	.byte		0
	.4byte		.L11639
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L508:
	.sleb128	12
	.byte		"Os_ProcCurrentPriority"
	.byte		0
	.4byte		.L11634
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L509:
	.sleb128	12
	.byte		"Os_ProcTFCallCount"
	.byte		0
	.4byte		.L11452
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L510:
	.sleb128	12
	.byte		"Os_FatalErrorOccured"
	.byte		0
	.4byte		.L11451
	.sleb128	2
	.byte		0x23
	.uleb128	53
	.byte		0x1
	.sleb128	0
.L11943:
.L11948:
	.sleb128	13
	.4byte		.L11949
	.uleb128	52
	.uleb128	1
	.4byte		.L11950-.L2
	.byte		"Os_SpinlockStatType_s"
	.byte		0
	.uleb128	16
.L450:
	.sleb128	12
	.byte		"Os_SpinlockId"
	.byte		0
	.4byte		.L11951
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L451:
	.sleb128	12
	.byte		"Os_SpinlockChainId"
	.byte		0
	.4byte		.L11951
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L452:
	.sleb128	12
	.byte		"Os_SpinlockDyn"
	.byte		0
	.4byte		.L11952
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L453:
	.sleb128	12
	.byte		"Os_SpinlockAccess"
	.byte		0
	.4byte		.L11922
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L454:
	.sleb128	12
	.byte		"Os_SpinlockLockResourceAddress"
	.byte		0
	.4byte		.L11891
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L11950:
.L11955:
	.sleb128	11
	.4byte		.L11949
	.uleb128	52
	.uleb128	1
	.4byte		.L11956-.L2
	.uleb128	12
.L447:
	.sleb128	12
	.byte		"Os_SpinlockLockerProc"
	.byte		0
	.4byte		.L11527
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L448:
	.sleb128	12
	.byte		"Os_SpinlockSuperseded"
	.byte		0
	.4byte		.L11946
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L449:
	.sleb128	12
	.byte		"Os_ResourceDependency"
	.byte		0
	.4byte		.L11934
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11956:
.L11617:
	.sleb128	13
	.4byte		.L11949
	.uleb128	52
	.uleb128	1
	.4byte		.L11957-.L2
	.byte		"Os_ApplicationStatType_s"
	.byte		0
	.uleb128	48
.L435:
	.sleb128	12
	.byte		"Os_AppDyn"
	.byte		0
	.4byte		.L11958
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L436:
	.sleb128	12
	.byte		"Os_AppId"
	.byte		0
	.4byte		.L11962
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L437:
	.sleb128	12
	.byte		"Os_AppRestartTask"
	.byte		0
	.4byte		.L11455
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L438:
	.sleb128	12
	.byte		"Os_AppKind"
	.byte		0
	.4byte		.L11963
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L439:
	.sleb128	12
	.byte		"Os_AppShutdownHook"
	.byte		0
	.4byte		.L11966
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L440:
	.sleb128	12
	.byte		"Os_AppStartupHook"
	.byte		0
	.4byte		.L11971
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L441:
	.sleb128	12
	.byte		"Os_AppErrorHook"
	.byte		0
	.4byte		.L11976
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L442:
	.sleb128	12
	.byte		"Os_AppProcIDs"
	.byte		0
	.4byte		.L11981
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L443:
	.sleb128	12
	.byte		"Os_AppCounterIDs"
	.byte		0
	.4byte		.L11984
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L444:
	.sleb128	12
	.byte		"Os_AppAlarmIDs"
	.byte		0
	.4byte		.L11987
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L445:
	.sleb128	12
	.byte		"Os_AppSchTblIDs"
	.byte		0
	.4byte		.L11990
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L446:
	.sleb128	12
	.byte		"Os_CoreAssigment"
	.byte		0
	.4byte		.L11433
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
	.sleb128	0
.L11957:
.L11961:
	.sleb128	11
	.4byte		.L11949
	.uleb128	52
	.uleb128	1
	.4byte		.L11993-.L2
	.uleb128	1
.L434:
	.sleb128	12
	.byte		"Os_AppState"
	.byte		0
	.4byte		.L11839
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11993:
.L11937:
	.sleb128	11
	.4byte		.L11994
	.uleb128	32
	.uleb128	1
	.4byte		.L11995-.L2
	.uleb128	12
.L431:
	.sleb128	12
	.byte		"Os_ResourcePriority"
	.byte		0
	.4byte		.L11917
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L432:
	.sleb128	12
	.byte		"Os_ResourceAccessRights"
	.byte		0
	.4byte		.L11923
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L433:
	.sleb128	12
	.byte		"Os_ResourceDyn"
	.byte		0
	.4byte		.L11996
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11995:
.L11998:
	.sleb128	11
	.4byte		.L11994
	.uleb128	32
	.uleb128	1
	.4byte		.L11999-.L2
	.uleb128	4
.L430:
	.sleb128	12
	.byte		"Os_LockerProc"
	.byte		0
	.4byte		.L11527
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11999:
.L11622:
	.sleb128	11
	.4byte		.L11994
	.uleb128	32
	.uleb128	1
	.4byte		.L12000-.L2
	.uleb128	144
.L425:
	.sleb128	12
	.byte		"Os_Error"
	.byte		0
	.4byte		.L12001
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L426:
	.sleb128	12
	.byte		"Os_ExceptionStatus"
	.byte		0
	.4byte		.L12003
	.sleb128	2
	.byte		0x23
	.uleb128	120
	.byte		0x1
	.sleb128	0
.L12000:
.L11651:
	.sleb128	11
	.4byte		.L11994
	.uleb128	32
	.uleb128	1
	.4byte		.L12005-.L2
	.uleb128	24
.L419:
	.sleb128	12
	.byte		"Os_DisAllInt"
	.byte		0
	.4byte		.L12006
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L420:
	.sleb128	12
	.byte		"Os_EnAllInt"
	.byte		0
	.4byte		.L12006
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L421:
	.sleb128	12
	.byte		"Os_SusAllInt"
	.byte		0
	.4byte		.L12006
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L422:
	.sleb128	12
	.byte		"Os_ResAllInt"
	.byte		0
	.4byte		.L12006
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L423:
	.sleb128	12
	.byte		"Os_SusOsInt"
	.byte		0
	.4byte		.L12006
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L424:
	.sleb128	12
	.byte		"Os_ResOsInt"
	.byte		0
	.4byte		.L12006
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L12005:
.L12004:
	.sleb128	11
	.4byte		.L11994
	.uleb128	32
	.uleb128	1
	.4byte		.L12011-.L2
	.uleb128	20
.L414:
	.sleb128	12
	.byte		"Os_ExceptionType"
	.byte		0
	.4byte		.L12012
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L415:
	.sleb128	12
	.byte		"Os_ExceptionCause"
	.byte		0
	.4byte		.L11459
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L416:
	.sleb128	12
	.byte		"Os_ExceptionAuxiliaryCause"
	.byte		0
	.4byte		.L11459
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L417:
	.sleb128	12
	.byte		"Os_ExceptionExecutionAddress"
	.byte		0
	.4byte		.L11608
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L418:
	.sleb128	12
	.byte		"Os_ExceptionAccessAddress"
	.byte		0
	.4byte		.L11608
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L12011:
.L12002:
	.sleb128	11
	.4byte		.L12014
	.uleb128	174
	.uleb128	1
	.4byte		.L12015-.L2
	.uleb128	120
.L411:
	.sleb128	12
	.byte		"Os_ShutdownError"
	.byte		0
	.4byte		.L12016
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L412:
	.sleb128	12
	.byte		"Os_ParameterError"
	.byte		0
	.4byte		.L12018
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L413:
	.sleb128	12
	.byte		"Os_ServiceError"
	.byte		0
	.4byte		.L12020
	.sleb128	2
	.byte		0x23
	.uleb128	112
	.byte		0x1
	.sleb128	0
.L12015:
.L12021:
	.sleb128	11
	.4byte		.L12014
	.uleb128	174
	.uleb128	1
	.4byte		.L12022-.L2
	.uleb128	8
.L408:
	.sleb128	12
	.byte		"Os_ServiceTrace"
	.byte		0
	.4byte		.L12023
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L409:
	.sleb128	12
	.byte		"Os_LastError"
	.byte		0
	.4byte		.L11451
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L410:
	.sleb128	12
	.byte		"Os_FaultyServiceId"
	.byte		0
	.4byte		.L12024
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12022:
.L12019:
	.sleb128	11
	.4byte		.L12014
	.uleb128	174
	.uleb128	1
	.4byte		.L12026-.L2
	.uleb128	104
.L383:
	.sleb128	12
	.byte		"Os_Err_TaskID"
	.byte		0
	.4byte		.L11456
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L384:
	.sleb128	12
	.byte		"Os_Err_ResID"
	.byte		0
	.4byte		.L11860
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L385:
	.sleb128	12
	.byte		"Os_Err_MaskType_Mask"
	.byte		0
	.4byte		.L11841
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L386:
	.sleb128	12
	.byte		"Os_Err_AlarmID"
	.byte		0
	.4byte		.L11799
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L387:
	.sleb128	12
	.byte		"Os_Err_TicksStart"
	.byte		0
	.4byte		.L11801
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L388:
	.sleb128	12
	.byte		"Os_Err_TicksCycle"
	.byte		0
	.4byte		.L11801
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L389:
	.sleb128	12
	.byte		"Os_Err_FuncIndex"
	.byte		0
	.4byte		.L11789
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L390:
	.sleb128	12
	.byte		"Os_Err_FuncParamRefType"
	.byte		0
	.4byte		.L11790
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L391:
	.sleb128	12
	.byte		"Os_Err_ApplID"
	.byte		0
	.4byte		.L11794
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L392:
	.sleb128	12
	.byte		"Os_Err_ApplStateRefType"
	.byte		0
	.4byte		.L11837
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L393:
	.sleb128	12
	.byte		"Os_Err_ObjType"
	.byte		0
	.4byte		.L11795
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L394:
	.sleb128	12
	.byte		"Os_Err_SchedID"
	.byte		0
	.4byte		.L11812
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L395:
	.sleb128	12
	.byte		"Os_Err_SchedID_Next"
	.byte		0
	.4byte		.L11812
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L396:
	.sleb128	12
	.byte		"Os_Err_CntID"
	.byte		0
	.4byte		.L11825
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L397:
	.sleb128	12
	.byte		"Os_Err_RestartType"
	.byte		0
	.4byte		.L11834
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
.L398:
	.sleb128	12
	.byte		"Os_Err_MaskRefType"
	.byte		0
	.4byte		.L11845
	.sleb128	2
	.byte		0x23
	.uleb128	64
	.byte		0x1
.L399:
	.sleb128	12
	.byte		"Os_Err_TaskStateRef"
	.byte		0
	.4byte		.L11850
	.sleb128	2
	.byte		0x23
	.uleb128	68
	.byte		0x1
.L400:
	.sleb128	12
	.byte		"Os_Err_TickRef_Ticks"
	.byte		0
	.4byte		.L11804
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.byte		0x1
.L401:
	.sleb128	12
	.byte		"Os_Err_AlarmBaseRefType_Info"
	.byte		0
	.4byte		.L11807
	.sleb128	2
	.byte		0x23
	.uleb128	76
	.byte		0x1
.L402:
	.sleb128	12
	.byte		"Os_Err_TaskIDRef"
	.byte		0
	.4byte		.L11855
	.sleb128	2
	.byte		0x23
	.uleb128	80
	.byte		0x1
.L403:
	.sleb128	12
	.byte		"Os_Err_TblStatusRefType"
	.byte		0
	.4byte		.L11817
	.sleb128	2
	.byte		0x23
	.uleb128	84
	.byte		0x1
.L404:
	.sleb128	12
	.byte		"Os_Err_TickRef_ElapsedTicks"
	.byte		0
	.4byte		.L11804
	.sleb128	2
	.byte		0x23
	.uleb128	88
	.byte		0x1
.L405:
	.sleb128	12
	.byte		"Os_Err_ObjObj"
	.byte		0
	.4byte		.L11458
	.sleb128	2
	.byte		0x23
	.uleb128	92
	.byte		0x1
.L406:
	.sleb128	12
	.byte		"Os_Err_SpinlockID"
	.byte		0
	.4byte		.L11780
	.sleb128	2
	.byte		0x23
	.uleb128	96
	.byte		0x1
.L407:
	.sleb128	12
	.byte		"Os_Err_TryToGetSpinlockRef"
	.byte		0
	.4byte		.L12027
	.sleb128	2
	.byte		0x23
	.uleb128	100
	.byte		0x1
	.sleb128	0
.L12026:
.L12017:
	.sleb128	11
	.4byte		.L12014
	.uleb128	174
	.uleb128	1
	.4byte		.L12028-.L2
	.uleb128	8
.L381:
	.sleb128	12
	.byte		"Os_ShutdownErrorCode"
	.byte		0
	.4byte		.L11451
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L382:
	.sleb128	12
	.byte		"Os_ShutdownInternalErrorCode"
	.byte		0
	.4byte		.L12029
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12028:
.L11810:
	.sleb128	11
	.4byte		.L12031
	.uleb128	50
	.uleb128	1
	.4byte		.L12032-.L2
	.uleb128	12
.L378:
	.sleb128	12
	.byte		"maxallowedvalue"
	.byte		0
	.4byte		.L11801
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L379:
	.sleb128	12
	.byte		"ticksperbase"
	.byte		0
	.4byte		.L11801
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L380:
	.sleb128	12
	.byte		"mincycle"
	.byte		0
	.4byte		.L11801
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L12032:
.L11647:
	.sleb128	11
	.4byte		.L12033
	.uleb128	87
	.uleb128	7
	.4byte		.L12034-.L2
	.uleb128	8
.L366:
	.sleb128	12
	.byte		"Os_IsrPltId"
	.byte		0
	.4byte		.L12035
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L367:
	.sleb128	12
	.byte		"Os_IsrPltLevel"
	.byte		0
	.4byte		.L12036
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12034:
	.section	.debug_info,,n
.L11431:
	.sleb128	15
	.4byte		.L12038
	.uleb128	155
	.uleb128	1
	.4byte		.L12039-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	16
	.byte		"Os_Isr_Enabled"
	.byte		0
	.sleb128	0
	.sleb128	16
	.byte		"Os_Isr_Disabled"
	.byte		0
	.sleb128	1
	.sleb128	0
.L12039:
.L11633:
	.sleb128	15
	.4byte		.L11587
	.uleb128	69
	.uleb128	1
	.4byte		.L12040-.L2
	.uleb128	4
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
.L12040:
.L11657:
	.sleb128	15
	.4byte		.L11637
	.uleb128	612
	.uleb128	1
	.4byte		.L12041-.L2
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
.L12041:
.L11662:
	.sleb128	15
	.4byte		.L11637
	.uleb128	60
	.uleb128	1
	.4byte		.L12042-.L2
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
.L12042:
	.section	.debug_info,,n
.L11792:
	.sleb128	17
	.4byte		.L11875
	.uleb128	33
	.uleb128	14
	.4byte		.L12043-.L2
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
.L12043:
.L11945:
	.sleb128	15
	.4byte		.L11572
	.uleb128	80
	.uleb128	13
	.4byte		.L12044-.L2
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
.L12044:
.L11915:
	.sleb128	15
	.4byte		.L11572
	.uleb128	61
	.uleb128	1
	.4byte		.L12045-.L2
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
.L12045:
.L11965:
	.sleb128	15
	.4byte		.L11949
	.uleb128	52
	.uleb128	1
	.4byte		.L12046-.L2
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
.L12046:
.L12013:
	.sleb128	15
	.4byte		.L11994
	.uleb128	32
	.uleb128	1
	.4byte		.L12047-.L2
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
.L12047:
.L12030:
	.sleb128	15
	.4byte		.L12014
	.uleb128	174
	.uleb128	1
	.4byte		.L12048-.L2
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
.L12048:
.L12025:
	.sleb128	15
	.4byte		.L12014
	.uleb128	86
	.uleb128	1
	.4byte		.L12049-.L2
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
.L12049:
.L11783:
	.sleb128	15
	.4byte		.L12050
	.uleb128	43
	.uleb128	1
	.4byte		.L12051-.L2
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
.L12051:
.L11853:
	.sleb128	15
	.4byte		.L12052
	.uleb128	37
	.uleb128	1
	.4byte		.L12053-.L2
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
.L12053:
.L11820:
	.sleb128	15
	.4byte		.L12054
	.uleb128	40
	.uleb128	1
	.4byte		.L12055-.L2
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
.L12055:
.L11796:
	.sleb128	15
	.4byte		.L12056
	.uleb128	47
	.uleb128	1
	.4byte		.L12057-.L2
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
.L12057:
.L11869:
	.sleb128	15
	.4byte		.L12031
	.uleb128	42
	.uleb128	13
	.4byte		.L12058-.L2
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
.L12058:
.L11767:
	.sleb128	15
	.4byte		.L12059
	.uleb128	83
	.uleb128	14
	.4byte		.L12060-.L2
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
.L12060:
	.section	.debug_info,,n
.L11430:
	.sleb128	18
	.byte		"Os_IsrStateType"
	.byte		0
	.4byte		.L11431
	.section	.debug_info,,n
.L11436:
	.sleb128	19
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L11435:
	.sleb128	18
	.byte		"uint16"
	.byte		0
	.4byte		.L11436
.L11434:
	.sleb128	18
	.byte		"CoreIdType"
	.byte		0
	.4byte		.L11435
	.section	.debug_info,,n
.L11433:
	.sleb128	20
	.4byte		.L11434
.L11453:
	.sleb128	19
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L11452:
	.sleb128	18
	.byte		"uint8"
	.byte		0
	.4byte		.L11453
.L11451:
	.sleb128	18
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L11452
.L11460:
	.sleb128	19
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L11459:
	.sleb128	18
	.byte		"uint32"
	.byte		0
	.4byte		.L11460
.L11458:
	.sleb128	18
	.byte		"Os_ObjectType"
	.byte		0
	.4byte		.L11459
.L11457:
	.sleb128	18
	.byte		"ProcType"
	.byte		0
	.4byte		.L11458
.L11456:
	.sleb128	18
	.byte		"TaskType"
	.byte		0
	.4byte		.L11457
.L11455:
	.sleb128	20
	.4byte		.L11456
.L11463:
	.sleb128	18
	.byte		"Os_APICallType"
	.byte		0
	.4byte		.L11464
.L11474:
	.sleb128	18
	.byte		"Os_ProcStatType"
	.byte		0
	.4byte		.L11475
.L11473:
	.sleb128	20
	.4byte		.L11474
	.section	.debug_info,,n
.L11472:
	.sleb128	21
	.4byte		.L11473
.L11471:
	.sleb128	20
	.4byte		.L11472
.L11492:
	.sleb128	20
	.4byte		.L11451
.L11501:
	.sleb128	18
	.byte		"Os_DispatchElementType"
	.byte		0
	.4byte		.L11502
.L11500:
	.sleb128	21
	.4byte		.L11501
.L11499:
	.sleb128	20
	.4byte		.L11500
.L11524:
	.sleb128	21
	.4byte		.L11464
.L11528:
	.sleb128	20
	.4byte		.L11475
.L11527:
	.sleb128	21
	.4byte		.L11528
.L11526:
	.sleb128	20
	.4byte		.L11527
	.section	.debug_info,,n
.L11573:
	.sleb128	22
	.4byte		.L11574-.L2
	.4byte		.L11473
	.section	.debug_info,,n
	.sleb128	23
	.sleb128	0
.L11574:
.L11580:
	.sleb128	18
	.byte		"Os_Core_StatType"
	.byte		0
	.4byte		.L11581
.L11579:
	.sleb128	20
	.4byte		.L11580
.L11577:
	.sleb128	22
	.4byte		.L11578-.L2
	.4byte		.L11579
	.section	.debug_info,,n
	.sleb128	24
	.uleb128	1
	.sleb128	0
.L11578:
.L11585:
	.sleb128	18
	.byte		"Os_Core_DynSharedType"
	.byte		0
	.4byte		.L11586
.L11583:
	.sleb128	22
	.4byte		.L11584-.L2
	.4byte		.L11585
	.sleb128	24
	.uleb128	1
	.sleb128	0
.L11584:
.L11591:
	.sleb128	18
	.byte		"Os_Core_DynInitType"
	.byte		0
	.4byte		.L11592
.L11590:
	.sleb128	21
	.4byte		.L11591
.L11589:
	.sleb128	20
	.4byte		.L11590
.L11595:
	.sleb128	18
	.byte		"Os_Core_DynType"
	.byte		0
	.4byte		.L11596
.L11594:
	.sleb128	21
	.4byte		.L11595
.L11593:
	.sleb128	20
	.4byte		.L11594
	.section	.debug_info,,n
.L11600:
	.sleb128	25
	.4byte		.L11601-.L2
	.byte		0x1
	.section	.debug_info,,n
	.sleb128	26
	.4byte		.L11471
	.sleb128	0
.L11601:
.L11599:
	.sleb128	21
	.4byte		.L11600
.L11598:
	.sleb128	18
	.byte		"Os_PrepareContextFunctionType"
	.byte		0
	.4byte		.L11599
.L11597:
	.sleb128	20
	.4byte		.L11598
.L11608:
	.sleb128	18
	.byte		"Os_StackType"
	.byte		0
	.4byte		.L11459
.L11607:
	.sleb128	21
	.4byte		.L11608
	.section	.debug_info,,n
.L11605:
	.sleb128	27
	.4byte		.L11606-.L2
	.4byte		.L11607
	.byte		0x1
	.sleb128	26
	.4byte		.L11472
	.sleb128	0
.L11606:
.L11604:
	.sleb128	21
	.4byte		.L11605
.L11603:
	.sleb128	18
	.byte		"Os_GetStackPointerFunctionType"
	.byte		0
	.4byte		.L11604
.L11602:
	.sleb128	20
	.4byte		.L11603
.L11610:
	.sleb128	18
	.byte		"Os_IsrDynInitType"
	.byte		0
	.4byte		.L11611
.L11612:
	.sleb128	18
	.byte		"Os_SchedulerDynInitType"
	.byte		0
	.4byte		.L11613
.L11616:
	.sleb128	18
	.byte		"Os_ApplicationStatType"
	.byte		0
	.4byte		.L11617
.L11615:
	.sleb128	20
	.4byte		.L11616
.L11614:
	.sleb128	21
	.4byte		.L11615
.L11619:
	.sleb128	18
	.byte		"Os_DispatcherType"
	.byte		0
	.4byte		.L11620
.L11621:
	.sleb128	18
	.byte		"Os_PublicData_NoInitType"
	.byte		0
	.4byte		.L11622
.L11624:
	.sleb128	18
	.byte		"Os_SchedulerDynType"
	.byte		0
	.4byte		.L11625
.L11626:
	.sleb128	18
	.byte		"Os_IsrDynType"
	.byte		0
	.4byte		.L11627
.L11628:
	.sleb128	18
	.byte		"Os_HooksDynType"
	.byte		0
	.4byte		.L11629
.L11632:
	.sleb128	18
	.byte		"Os_ScheduleType"
	.byte		0
	.4byte		.L11633
.L11634:
	.sleb128	18
	.byte		"Os_PriorityType"
	.byte		0
	.4byte		.L11459
.L11635:
	.sleb128	18
	.byte		"Os_SchedulerQueueElementType"
	.byte		0
	.4byte		.L11636
.L11639:
	.sleb128	21
	.4byte		.L11636
.L11641:
	.sleb128	18
	.byte		"Os_IsrRegister_t"
	.byte		0
	.4byte		.L11459
.L11642:
	.sleb128	18
	.byte		"boolean"
	.byte		0
	.4byte		.L11453
.L11646:
	.sleb128	18
	.byte		"Os_IsrPlatformConfigType"
	.byte		0
	.4byte		.L11647
.L11645:
	.sleb128	20
	.4byte		.L11646
.L11644:
	.sleb128	21
	.4byte		.L11645
.L11650:
	.sleb128	18
	.byte		"Os_IsrApiTable"
	.byte		0
	.4byte		.L11651
.L11649:
	.sleb128	20
	.4byte		.L11650
.L11648:
	.sleb128	21
	.4byte		.L11649
.L11652:
	.sleb128	22
	.4byte		.L11653-.L2
	.4byte		.L11459
	.sleb128	24
	.uleb128	7
	.sleb128	0
.L11653:
.L11656:
	.sleb128	18
	.byte		"Os_DispatchKindType"
	.byte		0
	.4byte		.L11657
.L11658:
	.sleb128	18
	.byte		"ISRType"
	.byte		0
	.4byte		.L11457
.L11659:
	.sleb128	21
	.4byte		.L11463
.L11661:
	.sleb128	18
	.byte		"Os_API_LockType"
	.byte		0
	.4byte		.L11662
.L11665:
	.sleb128	25
	.4byte		.L11666-.L2
	.byte		0x1
	.sleb128	26
	.4byte		.L11524
	.sleb128	26
	.4byte		.L11526
	.sleb128	0
.L11666:
.L11664:
	.sleb128	21
	.4byte		.L11665
.L11663:
	.sleb128	18
	.byte		"Os_API_Func_Type"
	.byte		0
	.4byte		.L11664
.L11669:
	.sleb128	18
	.byte		"Os_API_StartOsType"
	.byte		0
	.4byte		.L11670
.L11671:
	.sleb128	18
	.byte		"Os_API_ShutdownOsType"
	.byte		0
	.4byte		.L11672
.L11673:
	.sleb128	18
	.byte		"Os_API_ShutdownOsInternalType"
	.byte		0
	.4byte		.L11674
.L11675:
	.sleb128	18
	.byte		"Os_API_ShutdownAllCoresType"
	.byte		0
	.4byte		.L11676
.L11677:
	.sleb128	18
	.byte		"Os_API_GetNumberOfActivatedCoresType"
	.byte		0
	.4byte		.L11678
.L11679:
	.sleb128	18
	.byte		"Os_API_ApiStartCoreType"
	.byte		0
	.4byte		.L11680
.L11681:
	.sleb128	18
	.byte		"Os_API_StartNonAutosarCoreType"
	.byte		0
	.4byte		.L11682
.L11683:
	.sleb128	18
	.byte		"Os_API_GetCoreIDType"
	.byte		0
	.4byte		.L11684
.L11685:
	.sleb128	18
	.byte		"Os_API_ActivateTaskType"
	.byte		0
	.4byte		.L11686
.L11687:
	.sleb128	18
	.byte		"Os_API_ChainTaskType"
	.byte		0
	.4byte		.L11688
.L11689:
	.sleb128	18
	.byte		"Os_API_GetTaskIDType"
	.byte		0
	.4byte		.L11690
.L11691:
	.sleb128	18
	.byte		"Os_API_GetTaskStateType"
	.byte		0
	.4byte		.L11692
.L11693:
	.sleb128	18
	.byte		"Os_API_SetEventType"
	.byte		0
	.4byte		.L11694
.L11695:
	.sleb128	18
	.byte		"Os_API_ClearEventType"
	.byte		0
	.4byte		.L11696
.L11697:
	.sleb128	18
	.byte		"Os_API_GetEventType"
	.byte		0
	.4byte		.L11698
.L11699:
	.sleb128	18
	.byte		"Os_API_WaitEventType"
	.byte		0
	.4byte		.L11700
.L11701:
	.sleb128	18
	.byte		"Os_API_GetResourceType"
	.byte		0
	.4byte		.L11702
.L11703:
	.sleb128	18
	.byte		"Os_API_ReleaseResourceType"
	.byte		0
	.4byte		.L11704
.L11705:
	.sleb128	18
	.byte		"Os_API_GetAlarmBaseType"
	.byte		0
	.4byte		.L11706
.L11707:
	.sleb128	18
	.byte		"Os_API_GetAlarmType"
	.byte		0
	.4byte		.L11708
.L11709:
	.sleb128	18
	.byte		"Os_API_SetRelAlarmType"
	.byte		0
	.4byte		.L11710
.L11711:
	.sleb128	18
	.byte		"Os_API_SetAbsAlarmType"
	.byte		0
	.4byte		.L11712
.L11713:
	.sleb128	18
	.byte		"Os_API_CancelAlarmType"
	.byte		0
	.4byte		.L11714
.L11715:
	.sleb128	18
	.byte		"Os_API_GetApplicationStateType"
	.byte		0
	.4byte		.L11716
.L11717:
	.sleb128	18
	.byte		"Os_API_TerminateApplicationType"
	.byte		0
	.4byte		.L11718
.L11719:
	.sleb128	18
	.byte		"Os_API_GetApplicationIDType"
	.byte		0
	.4byte		.L11720
.L11721:
	.sleb128	18
	.byte		"Os_API_GetISRIDType"
	.byte		0
	.4byte		.L11722
.L11723:
	.sleb128	18
	.byte		"Os_API_GetActiveApplicationModeType"
	.byte		0
	.4byte		.L11724
.L11725:
	.sleb128	18
	.byte		"Os_API_IncrementCounterType"
	.byte		0
	.4byte		.L11726
.L11727:
	.sleb128	18
	.byte		"Os_API_GetCounterValueType"
	.byte		0
	.4byte		.L11728
.L11729:
	.sleb128	18
	.byte		"Os_API_GetElapsedValueType"
	.byte		0
	.4byte		.L11730
.L11731:
	.sleb128	18
	.byte		"Os_API_StartScheduleTableAbsType"
	.byte		0
	.4byte		.L11732
.L11733:
	.sleb128	18
	.byte		"Os_API_StartScheduleTableRelType"
	.byte		0
	.4byte		.L11734
.L11735:
	.sleb128	18
	.byte		"Os_API_StopScheduleTableType"
	.byte		0
	.4byte		.L11736
.L11737:
	.sleb128	18
	.byte		"Os_API_GetScheduleTableStatusType"
	.byte		0
	.4byte		.L11738
.L11739:
	.sleb128	18
	.byte		"Os_API_NextScheduleTableType"
	.byte		0
	.4byte		.L11740
.L11741:
	.sleb128	18
	.byte		"Os_API_StartScheduleTableSynchronType"
	.byte		0
	.4byte		.L11742
.L11743:
	.sleb128	18
	.byte		"Os_API_SyncScheduleTableType"
	.byte		0
	.4byte		.L11744
.L11745:
	.sleb128	18
	.byte		"Os_API_SetScheduleTableAsyncType"
	.byte		0
	.4byte		.L11746
.L11747:
	.sleb128	18
	.byte		"Os_API_CheckObjectAccessType"
	.byte		0
	.4byte		.L11748
.L11749:
	.sleb128	18
	.byte		"Os_API_CheckObjectOwnershipType"
	.byte		0
	.4byte		.L11750
.L11751:
	.sleb128	18
	.byte		"Os_API_CallTrustedFunctionType"
	.byte		0
	.4byte		.L11752
.L11753:
	.sleb128	18
	.byte		"Os_API_StackUsageType"
	.byte		0
	.4byte		.L11754
.L11755:
	.sleb128	18
	.byte		"Os_API_GetSpinlockType"
	.byte		0
	.4byte		.L11756
.L11757:
	.sleb128	18
	.byte		"Os_API_ReleaseSpinlockType"
	.byte		0
	.4byte		.L11758
.L11759:
	.sleb128	18
	.byte		"Os_API_TryToGetSpinlockType"
	.byte		0
	.4byte		.L11760
.L11761:
	.sleb128	18
	.byte		"Os_API_IocTransferType"
	.byte		0
	.4byte		.L11762
.L11763:
	.sleb128	18
	.byte		"Os_API_ControlIdleType"
	.byte		0
	.4byte		.L11764
.L11766:
	.sleb128	18
	.byte		"IdleModeType"
	.byte		0
	.4byte		.L11767
.L11771:
	.sleb128	18
	.byte		"Os_IOC_ChannelStatType"
	.byte		0
	.4byte		.L11772
.L11770:
	.sleb128	20
	.4byte		.L11771
.L11769:
	.sleb128	21
	.4byte		.L11770
	.section	.debug_info,,n
.L11778:
	.sleb128	28
	.byte		"void"
	.byte		0
	.byte		0x0
.L11777:
	.sleb128	21
	.4byte		.L11778
.L11775:
	.sleb128	22
	.4byte		.L11776-.L2
	.4byte		.L11777
	.sleb128	24
	.uleb128	1
	.sleb128	0
.L11776:
.L11774:
	.sleb128	18
	.byte		"Os_IOC_DataType"
	.byte		0
	.4byte		.L11775
.L11773:
	.sleb128	21
	.4byte		.L11774
.L11780:
	.sleb128	18
	.byte		"SpinlockIdType"
	.byte		0
	.4byte		.L11435
.L11782:
	.sleb128	18
	.byte		"TryToGetSpinlockType"
	.byte		0
	.4byte		.L11783
.L11781:
	.sleb128	21
	.4byte		.L11782
.L11787:
	.sleb128	21
	.4byte		.L11452
.L11789:
	.sleb128	18
	.byte		"TrustedFunctionIndexType"
	.byte		0
	.4byte		.L11459
.L11790:
	.sleb128	18
	.byte		"TrustedFunctionParameterRefType"
	.byte		0
	.4byte		.L11777
.L11791:
	.sleb128	18
	.byte		"Os_TrustedFunctionReturnValueType"
	.byte		0
	.4byte		.L11792
.L11794:
	.sleb128	18
	.byte		"ApplicationType"
	.byte		0
	.4byte		.L11452
.L11795:
	.sleb128	18
	.byte		"ObjectTypeType"
	.byte		0
	.4byte		.L11796
.L11799:
	.sleb128	18
	.byte		"AlarmType"
	.byte		0
	.4byte		.L11458
.L11801:
	.sleb128	18
	.byte		"TickType"
	.byte		0
	.4byte		.L11459
.L11805:
	.sleb128	21
	.4byte		.L11801
.L11804:
	.sleb128	18
	.byte		"TickRefType"
	.byte		0
	.4byte		.L11805
.L11809:
	.sleb128	18
	.byte		"AlarmBaseType"
	.byte		0
	.4byte		.L11810
.L11808:
	.sleb128	21
	.4byte		.L11809
.L11807:
	.sleb128	18
	.byte		"AlarmBaseRefType"
	.byte		0
	.4byte		.L11808
.L11812:
	.sleb128	18
	.byte		"ScheduleTableType"
	.byte		0
	.4byte		.L11459
.L11819:
	.sleb128	18
	.byte		"ScheduleTableStatusType"
	.byte		0
	.4byte		.L11820
.L11818:
	.sleb128	21
	.4byte		.L11819
.L11817:
	.sleb128	18
	.byte		"ScheduleTableStatusRefType"
	.byte		0
	.4byte		.L11818
.L11825:
	.sleb128	18
	.byte		"CounterType"
	.byte		0
	.4byte		.L11459
.L11829:
	.sleb128	25
	.4byte		.L11830-.L2
	.byte		0x1
	.sleb128	26
	.4byte		.L11524
	.sleb128	0
.L11830:
.L11828:
	.sleb128	21
	.4byte		.L11829
.L11827:
	.sleb128	18
	.byte		"LightServiceFunctionType"
	.byte		0
	.4byte		.L11828
.L11834:
	.sleb128	18
	.byte		"RestartType"
	.byte		0
	.4byte		.L11452
.L11839:
	.sleb128	18
	.byte		"ApplicationStateType"
	.byte		0
	.4byte		.L11452
.L11838:
	.sleb128	21
	.4byte		.L11839
.L11837:
	.sleb128	18
	.byte		"ApplicationStateRefType"
	.byte		0
	.4byte		.L11838
.L11843:
	.sleb128	19
	.byte		"unsigned long long"
	.byte		0
	.byte		0x7
	.byte		0x8
.L11842:
	.sleb128	18
	.byte		"uint64"
	.byte		0
	.4byte		.L11843
.L11841:
	.sleb128	18
	.byte		"EventMaskType"
	.byte		0
	.4byte		.L11842
.L11846:
	.sleb128	21
	.4byte		.L11841
.L11845:
	.sleb128	18
	.byte		"EventMaskRefType"
	.byte		0
	.4byte		.L11846
.L11852:
	.sleb128	18
	.byte		"TaskStateType"
	.byte		0
	.4byte		.L11853
.L11851:
	.sleb128	21
	.4byte		.L11852
.L11850:
	.sleb128	18
	.byte		"TaskStateRefType"
	.byte		0
	.4byte		.L11851
.L11856:
	.sleb128	21
	.4byte		.L11456
.L11855:
	.sleb128	18
	.byte		"TaskRefType"
	.byte		0
	.4byte		.L11856
.L11860:
	.sleb128	18
	.byte		"ResourceType"
	.byte		0
	.4byte		.L11459
.L11863:
	.sleb128	18
	.byte		"AppModeType"
	.byte		0
	.4byte		.L11459
.L11868:
	.sleb128	18
	.byte		"Os_CoreShutdownType"
	.byte		0
	.4byte		.L11869
.L11872:
	.sleb128	21
	.4byte		.L11451
.L11879:
	.sleb128	18
	.byte		"Os_IOC_ChannelDynType"
	.byte		0
	.4byte		.L11880
.L11878:
	.sleb128	21
	.4byte		.L11879
.L11877:
	.sleb128	20
	.4byte		.L11878
.L11881:
	.sleb128	18
	.byte		"Os_IOC_ChannelSizeType"
	.byte		0
	.4byte		.L11435
.L11882:
	.sleb128	20
	.4byte		.L11777
.L11883:
	.sleb128	20
	.4byte		.L11435
.L11885:
	.sleb128	18
	.byte		"Os_IOC_DataCountType"
	.byte		0
	.4byte		.L11452
.L11884:
	.sleb128	20
	.4byte		.L11885
.L11889:
	.sleb128	18
	.byte		"Os_IOC_DataDescriptorType"
	.byte		0
	.4byte		.L11890
.L11888:
	.sleb128	20
	.4byte		.L11889
.L11887:
	.sleb128	21
	.4byte		.L11888
.L11886:
	.sleb128	20
	.4byte		.L11887
.L11893:
	.sleb128	18
	.byte		"Os_LockResourceType"
	.byte		0
	.4byte		.L11452
.L11892:
	.sleb128	21
	.4byte		.L11893
.L11891:
	.sleb128	20
	.4byte		.L11892
.L11896:
	.sleb128	18
	.byte		"Os_IOC_DataLengthType"
	.byte		0
	.4byte		.L11435
.L11895:
	.sleb128	20
	.4byte		.L11896
.L11898:
	.sleb128	18
	.byte		"Os_IOC_DataOffsetType"
	.byte		0
	.4byte		.L11435
.L11897:
	.sleb128	20
	.4byte		.L11898
.L11902:
	.sleb128	18
	.byte		"Os_HookIDType"
	.byte		0
	.4byte		.L11435
.L11906:
	.sleb128	18
	.byte		"Os_ProcDynType"
	.byte		0
	.4byte		.L11907
.L11905:
	.sleb128	21
	.4byte		.L11906
.L11904:
	.sleb128	20
	.4byte		.L11905
.L11911:
	.sleb128	18
	.byte		"Os_ProcStackType"
	.byte		0
	.4byte		.L11912
.L11910:
	.sleb128	20
	.4byte		.L11911
.L11909:
	.sleb128	21
	.4byte		.L11910
.L11908:
	.sleb128	20
	.4byte		.L11909
.L11914:
	.sleb128	18
	.byte		"Os_ProcKindType"
	.byte		0
	.4byte		.L11915
.L11913:
	.sleb128	20
	.4byte		.L11914
.L11916:
	.sleb128	20
	.4byte		.L11841
.L11917:
	.sleb128	20
	.4byte		.L11634
.L11919:
	.sleb128	18
	.byte		"Os_ActivationCountType"
	.byte		0
	.4byte		.L11459
.L11918:
	.sleb128	20
	.4byte		.L11919
.L11920:
	.sleb128	20
	.4byte		.L11607
.L11921:
	.sleb128	20
	.4byte		.L11614
.L11925:
	.sleb128	18
	.byte		"Os_AccessStorageType"
	.byte		0
	.4byte		.L11459
.L11924:
	.sleb128	20
	.4byte		.L11925
.L11923:
	.sleb128	21
	.4byte		.L11924
.L11922:
	.sleb128	20
	.4byte		.L11923
.L11929:
	.sleb128	25
	.4byte		.L11930-.L2
	.byte		0x1
	.sleb128	0
.L11930:
.L11928:
	.sleb128	21
	.4byte		.L11929
.L11927:
	.sleb128	18
	.byte		"Os_ProcEntryPointType"
	.byte		0
	.4byte		.L11928
.L11926:
	.sleb128	20
	.4byte		.L11927
.L11931:
	.sleb128	20
	.4byte		.L11860
.L11936:
	.sleb128	18
	.byte		"Os_ResourceStatType"
	.byte		0
	.4byte		.L11937
.L11935:
	.sleb128	20
	.4byte		.L11936
.L11934:
	.sleb128	21
	.4byte		.L11935
.L11933:
	.sleb128	18
	.byte		"Os_ResourceStack"
	.byte		0
	.4byte		.L11934
.L11932:
	.sleb128	21
	.4byte		.L11933
.L11938:
	.sleb128	20
	.4byte		.L11639
.L11939:
	.sleb128	20
	.4byte		.L11644
.L11942:
	.sleb128	18
	.byte		"Os_StackSizeType"
	.byte		0
	.4byte		.L11459
.L11941:
	.sleb128	20
	.4byte		.L11942
.L11944:
	.sleb128	18
	.byte		"Os_ProcContexStateType"
	.byte		0
	.4byte		.L11945
.L11947:
	.sleb128	20
	.4byte		.L11948
.L11946:
	.sleb128	21
	.4byte		.L11947
.L11951:
	.sleb128	20
	.4byte		.L11780
.L11954:
	.sleb128	18
	.byte		"Os_SpinlockDynType"
	.byte		0
	.4byte		.L11955
.L11953:
	.sleb128	21
	.4byte		.L11954
.L11952:
	.sleb128	20
	.4byte		.L11953
.L11960:
	.sleb128	18
	.byte		"Os_ApplicationDynType"
	.byte		0
	.4byte		.L11961
.L11959:
	.sleb128	21
	.4byte		.L11960
.L11958:
	.sleb128	20
	.4byte		.L11959
.L11962:
	.sleb128	20
	.4byte		.L11794
.L11964:
	.sleb128	18
	.byte		"Os_ApplicationKindType"
	.byte		0
	.4byte		.L11965
.L11963:
	.sleb128	20
	.4byte		.L11964
.L11969:
	.sleb128	25
	.4byte		.L11970-.L2
	.byte		0x1
	.sleb128	26
	.4byte		.L11451
	.sleb128	0
.L11970:
.L11968:
	.sleb128	21
	.4byte		.L11969
.L11967:
	.sleb128	18
	.byte		"Os_ShutdownHookFuncType"
	.byte		0
	.4byte		.L11968
.L11966:
	.sleb128	20
	.4byte		.L11967
.L11974:
	.sleb128	25
	.4byte		.L11975-.L2
	.byte		0x1
	.sleb128	0
.L11975:
.L11973:
	.sleb128	21
	.4byte		.L11974
.L11972:
	.sleb128	18
	.byte		"Os_StartUpHookFuncType"
	.byte		0
	.4byte		.L11973
.L11971:
	.sleb128	20
	.4byte		.L11972
.L11979:
	.sleb128	25
	.4byte		.L11980-.L2
	.byte		0x1
	.sleb128	26
	.4byte		.L11451
	.sleb128	0
.L11980:
.L11978:
	.sleb128	21
	.4byte		.L11979
.L11977:
	.sleb128	18
	.byte		"Os_ErrorHookFuncType"
	.byte		0
	.4byte		.L11978
.L11976:
	.sleb128	20
	.4byte		.L11977
.L11983:
	.sleb128	20
	.4byte		.L11457
.L11982:
	.sleb128	21
	.4byte		.L11983
.L11981:
	.sleb128	20
	.4byte		.L11982
.L11986:
	.sleb128	20
	.4byte		.L11825
.L11985:
	.sleb128	21
	.4byte		.L11986
.L11984:
	.sleb128	20
	.4byte		.L11985
.L11989:
	.sleb128	20
	.4byte		.L11799
.L11988:
	.sleb128	21
	.4byte		.L11989
.L11987:
	.sleb128	20
	.4byte		.L11988
.L11992:
	.sleb128	20
	.4byte		.L11812
.L11991:
	.sleb128	21
	.4byte		.L11992
.L11990:
	.sleb128	20
	.4byte		.L11991
.L11997:
	.sleb128	18
	.byte		"Os_ResourceDynType"
	.byte		0
	.4byte		.L11998
.L11996:
	.sleb128	21
	.4byte		.L11997
.L12001:
	.sleb128	18
	.byte		"Os_ErrorType"
	.byte		0
	.4byte		.L12002
.L12003:
	.sleb128	18
	.byte		"Os_ExceptionStatusType"
	.byte		0
	.4byte		.L12004
.L12009:
	.sleb128	25
	.4byte		.L12010-.L2
	.byte		0x1
	.sleb128	0
.L12010:
.L12008:
	.sleb128	21
	.4byte		.L12009
.L12007:
	.sleb128	18
	.byte		"Os_IsrHandlerFuncType"
	.byte		0
	.4byte		.L12008
.L12006:
	.sleb128	20
	.4byte		.L12007
.L12012:
	.sleb128	18
	.byte		"Os_ExceptionTypeType"
	.byte		0
	.4byte		.L12013
.L12016:
	.sleb128	18
	.byte		"Os_ShudownErrorType"
	.byte		0
	.4byte		.L12017
.L12018:
	.sleb128	18
	.byte		"Os_ParameterErrorType"
	.byte		0
	.4byte		.L12019
.L12020:
	.sleb128	18
	.byte		"Os_ServiceErrorType"
	.byte		0
	.4byte		.L12021
.L12023:
	.sleb128	18
	.byte		"ServiceTraceType"
	.byte		0
	.4byte		.L11452
.L12024:
	.sleb128	18
	.byte		"OSServiceIdType"
	.byte		0
	.4byte		.L12025
.L12027:
	.sleb128	18
	.byte		"TryToGetSpinlockRefType"
	.byte		0
	.4byte		.L11781
.L12029:
	.sleb128	18
	.byte		"Os_SystemInternalErrorType"
	.byte		0
	.4byte		.L12030
.L12035:
	.sleb128	20
	.4byte		.L11459
.L12037:
	.sleb128	18
	.byte		"Os_IsrPlatformLevelType"
	.byte		0
	.4byte		.L11435
.L12036:
	.sleb128	20
	.4byte		.L12037
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11423:
	.sleb128	0
.L11419:
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
.L11444:
	.sleb128	0
.L11440:

	.section	.debug_loc,,n
	.align	0
.L11437:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locend
.L11461:
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),3
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),0
	.d2locend
.L11476:
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),3
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),7
	.d2locend
.L11477:
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo11),4
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo12),31
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo10),31
	.d2locend
.L11479:
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo9),3
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo15),3
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo10),3
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo18),3
	.d2locend
.L11481:
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo19),3
	.d2locend
.L11487:
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo21),3
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo23),31
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo25),31
	.d2locend
.L11488:
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo26),4
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo25),8
	.d2locend
.L11490:
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo28),3
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo23),30
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo27),30
	.d2locend
.L11493:
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo22),3
	.d2locreg	%offsetof(.Llo30), %offsetof(.Llo31),29
	.d2locend
.L11503:
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo33),3
	.d2locreg	%offsetof(.Llo34), %offsetof(.Llo23),4
	.d2locend
.L11509:
	.d2locreg	%offsetof(.Llo35), %offsetof(.Llo36),0
	.d2locend
.L11515:
	.d2locreg	%offsetof(.Llo37), %offsetof(.Llo38),3
	.d2locreg	%offsetof(.Llo39), %offsetof(.Llo40),31
	.d2locreg	%offsetof(.Llo41), %offsetof(.Llo42),31
	.d2locend
.L11516:
	.d2locreg	%offsetof(.Llo37), %offsetof(.Llo43),4
	.d2locreg	%offsetof(.Llo39), %offsetof(.Llo44),30
	.d2locend
.L11518:
	.d2locreg	%offsetof(.Llo37), %offsetof(.Llo39),29
	.d2locreg	%offsetof(.Llo45), %offsetof(.Llo40),3
	.d2locreg	%offsetof(.Llo46), %offsetof(.Llo47),3
	.d2locreg	%offsetof(.Llo48), %offsetof(.Llo49),3
	.d2locend
.L11525:
	.d2locreg	%offsetof(.Llo50), %offsetof(.Llo51),3
	.d2locreg	%offsetof(.Llo52), %offsetof(.Llo53),31
	.d2locreg	%offsetof(.Llo54), %offsetof(.Llo55),31
	.d2locend
.L11529:
	.d2locreg	%offsetof(.Llo50), %offsetof(.Llo56),4
	.d2locreg	%offsetof(.Llo52), %offsetof(.Llo57),30
	.d2locreg	%offsetof(.Llo54), %offsetof(.Llo55),30
	.d2locend
.L11531:
	.d2locreg	%offsetof(.Llo58), %offsetof(.Llo57),29
	.d2locreg	%offsetof(.Llo59), %offsetof(.Llo60),29
	.d2locreg	%offsetof(.Llo54), %offsetof(.Llo55),29
	.d2locend
.L11533:
	.d2locreg	%offsetof(.Llo61), %offsetof(.Llo62),3
	.d2locreg	%offsetof(.Llo63), %offsetof(.Llo57),28
	.d2locreg	%offsetof(.Llo64), %offsetof(.Llo65),3
	.d2locreg	%offsetof(.Llo66), %offsetof(.Llo53),3
	.d2locreg	%offsetof(.Llo67), %offsetof(.Llo68),3
	.d2locreg	%offsetof(.Llo69), %offsetof(.Llo55),28
	.d2locreg	%offsetof(.Llo70), %offsetof(.Llo71),3
	.d2locend
.L11535:
	.d2locreg	%offsetof(.Llo50), %offsetof(.Llo55),27
	.d2locreg	%offsetof(.Llo72), %offsetof(.Llo73),27
	.d2locend
.L11541:
	.d2locreg	%offsetof(.Llo74), %offsetof(.Llo75),3
	.d2locreg	%offsetof(.Llo66), %offsetof(.Llo53),4
	.d2locreg	%offsetof(.Llo76), %offsetof(.Llo71),4
	.d2locend
.L11547:
	.d2locreg	%offsetof(.Llo77), %offsetof(.Llo78),3
	.d2locend
.L11549:
	.d2locreg	%offsetof(.Llo79), %offsetof(.Llo80),0
	.d2locend
.L11555:
	.d2locreg	%offsetof(.Llo81), %offsetof(.Llo82),3
	.d2locreg	%offsetof(.Llo83), %offsetof(.Llo84),31
	.d2locend
.L11556:
	.d2locreg	%offsetof(.Llo81), %offsetof(.Llo85),4
	.d2locend
.L11558:
	.d2locreg	%offsetof(.Llo83), %offsetof(.Llo86),3
	.d2locend
.L11564:
	.d2locreg	%offsetof(.Llo87), %offsetof(.Llo88),3
	.d2locreg	%offsetof(.Llo89), %offsetof(.Llo90),31
	.d2locreg	%offsetof(.Llo91), %offsetof(.Llo92),31
	.d2locend
.L11570:
	.d2locreg	%offsetof(.Llo93), %offsetof(.Llo94),3
	.d2locreg	%offsetof(.Llo95), %offsetof(.Llo90),3
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "Os_DispatchActivateTask"
	.wrcm.nstrlist "calls", "Os_ActivateTask","Os_Dispatcher_Alloc_Core","Os_ShutdownAllCores","Os_TaskOnOtherCore","Os_Task_CheckId"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Os_API_MC_ActivateTask"
	.wrcm.nstrlist "calls", "Os_ActivateTask"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Os_API_ActivateTaskCrossCore"
	.wrcm.nstrlist "calls", "Os_Task_Activate"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Os_API_ActivateTask"
	.wrcm.nstrlist "calls", "Os_ActivateTask","Os_ActivateTask_Err_Stat","Os_Call_ErrorHook","Os_Dispatcher_Alloc_Core","Os_ShutdownAllCores","Os_TaskOnOtherCore"
	.wrcm.nint32 "frameSize", 48
	.wrcm.end
	.wrcm.nelem "Os_ActivateTask_Err_Stat"
	.wrcm.nstrlist "calls", "Os_Access_Check","Os_Task_CheckId"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Os_ActivateTask"
	.wrcm.nstrlist "calls", "Os_ActivateTask_Err_Dyn","Os_Call_ErrorHook","Os_Dispatcher_Alloc_Core","Os_TaskOnOtherCore","Os_Task_Activate"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Os_ActivateTask_Err_Dyn"
	.wrcm.nstrlist "calls", "Os_Isr_GetState"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "ActivateTask"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Os_ActivateTask.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Os_ActivateTask.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Os_ActivateTask.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Os_ActivateTask.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Os_ActivateTask.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Os_ActivateTask.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\Os\Os\core\ssc\make\..\src\task\Os_ActivateTask.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
