#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Os_GetTaskID.c"
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
.L11390:
	.section	.Os_TEXT,,c
#$$ld
.L11386:
	.0byte		.L11384
	.d2_line_start	.debug_line.Os_TEXT
	.section	.Os_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_Isr.h"
        .d2line         227,45
#$$ld
.L11393:

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
.L11394:
	.type		Os_Isr_GetState,@function
	.size		Os_Isr_GetState,.-Os_Isr_GetState
# Number of nodes = 36

# Allocations for Os_Isr_GetState
#	?a4		coreId
# FUNC (StatusType, OS_CODE) GetTaskID(VAR (TaskRefType, AUTOMATIC) taskId)
	.section	.Os_PUBLIC_TEXT,,c
	.align		2
	.section	.debug_line.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_line
.L11411:
	.section	.Os_PUBLIC_TEXT,,c
#$$ld
.L11407:
	.0byte		.L11405
	.d2_line_start	.debug_line.Os_PUBLIC_TEXT
	.section	.Os_PUBLIC_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\scheduler\\Os_GetTaskID.c"
        .d2line         61,28
#$$ld
.L11414:

#$$bf	GetTaskID,interprocedural,rasave,nostackparams
	.globl		GetTaskID
	.d2_cfa_start __cie
GetTaskID:
.Llo3:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr
	stw		r0,52(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# taskId=r3 taskId=r3
	.d2prologue_end
# {
#     VAR (Os_APICallType,AUTOMATIC) Os_GetTaskIdCall;
# 
#     Os_GetTaskIdCall.Os_API_Data.Os_ApiGetTaskID.TaskIdRef = taskId;
	.d2line		65
	stw		r3,24(r1)		# taskId=r3
# 
#     /* Taking address of function on purpose */
#     OS_LIGHT_SYSCALL ( Os_GetTaskIdCall, GetTaskID );
	.d2line		68
	diab.addi		r3,r1,8		# taskId=r3
.Llo4:
	lis		r4,Os_API_GetTaskID@ha
	e_add16i		r4,r4,Os_API_GetTaskID@l
	bl		OS_SYS_CALL
# 
#     return Os_GetTaskIdCall.Os_API_ReturnValue;
	.d2line		70
	lbz		r3,12(r1)		# taskId=r3
# }
	.d2line		71
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
.L11415:
	.type		GetTaskID,@function
	.size		GetTaskID,.-GetTaskID
# Number of nodes = 21

# Allocations for GetTaskID
#	?a4		taskId
#	SP,8		Os_GetTaskIdCall
# LOCAL_INLINE FUNC (StatusType, OS_CODE) Os_GetTaskID_Err(
	.section	.Os_TEXT,,c
	.align		1
	.section	.Os_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\scheduler\\Os_GetTaskID.c"
        .d2line         164,41
#$$ld
.L11434:

#$$bf	Os_GetTaskID_Err,interprocedural,rasave,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,cr0,lr
	.d2_cfa_start __cie
Os_GetTaskID_Err:
.Llo5:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r7,r4		# taskRef=r7 taskRef=r4
	.d2prologue_end
#                                     CONSTP2CONST ( Os_ProcStatType, AUTOMATIC , OS_CONST )  currentProc,
#                                     CONSTP2CONST ( TaskType,        AUTOMATIC,  AUTOMATIC ) taskRef
#                                 )
# {
#     VAR (StatusType, AUTOMATIC) retVal;
# 
#     if (Os_Isr_Enabled != Os_Isr_GetState(OS_GETCOREID()))
	.d2line		171
	mfspr		r3,286
	bl		Os_Isr_GetState
.Llo6:
	se_cmpi		r3,0
	bc		1,2,.L11376	# eq
#     {
#         retVal = OS_GET_ERRORCODE(E_OS_SYS_ERROR,E_OS_DISABLEDINT); /* [OS093-01-05] [OS093-02-05] */
	.d2line		173
.Llo7:
	diab.li		r3,10		# retVal=r3
	b		.L11377
.L11376:
#     }
#     else if(NULL_PTR == taskRef)
	.d2line		175
	se_cmpi		r7,0		# taskRef=r7
#     {
#         retVal = OS_GET_ERRORCODE(E_OS_SYS_ERROR, E_OS_PARAM_POINTER); /* [OS566-01] */
	.d2line		177
	diab.li		r3,14		# retVal=r3
	isel		r3,r3,r0,2		# retVal=r3 retVal=r3 retVal=r0
.L11378:
#     }
#   #ifdef OS_MODULE_MEMORYPROTECTION
#     else if(!OSMEMORY_IS_RETURNABLE(Os_CheckMemoryAccess(currentProc,
#                                                          OS_CASTTOADDRESS(taskRef),
#                                                          OS_SIZEOF(TaskType),
#                                                          TRUE)))
#     {
#         retVal = OS_GET_ERRORCODE(E_OS_SYS_ERROR, E_OS_ILLEGAL_ADDRESS); /* [OS051-01-MGC-01] */
#     }
#   #endif /* OS_MODULE_MEMORYPROTECTION */
#     else
#     {
#         /* List of requirements that are not checked (automatically satisfied):
#          * [OS088-01-006] [OS088-01-007] [OS001-046.v1]
#          */
#         retVal = E_OK;
	.d2line		193
.Llo8:
	diab.li		r0,0		# retVal=r0
.Llo9:
	isel		r3,r3,r0,2		# retVal=r3 retVal=r3 retVal=r0
.L11377:
#     }
# 
#     return retVal;
	.d2line		196
	rlwinm		r3,r3,0,24,31		# retVal=r3 retVal=r3
# 
# }
	.d2line		198
	.d2epilogue_begin
.Llo10:
	lwz		r0,20(r1)		# retVal=r0
	mtspr		lr,r0		# retVal=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11435:
	.type		Os_GetTaskID_Err,@function
	.size		Os_GetTaskID_Err,.-Os_GetTaskID_Err
# Number of nodes = 27

# Allocations for Os_GetTaskID_Err
#	not allocated	currentProc
#	?a4		taskRef
#	?a5		retVal
# OS_APILIGHT(GetTaskID)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         83,1
#$$ld
.L11451:

#$$bf	Os_API_GetTaskID,interprocedural,rasave,nostackparams
	.globl		Os_API_GetTaskID
	.d2_cfa_start __cie
Os_API_GetTaskID:
.Llo11:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# Os_APICall=r31 Os_APICall=r3
	.d2prologue_end
# {
#     VAR (StatusType, AUTOMATIC)                   retVal;
#     VAR (TaskRefType, AUTOMATIC)                  taskref;
#     CONST(CoreIdType,AUTOMATIC) coreId = OS_GETCOREID();
	.d2line		87
.Llo12:
	mfspr		r29,286		# coreId=r29
.Llo13:
	mr		r29,r29		# coreId=r29 coreId=r29
#     CONSTP2CONST(Os_ProcStatType,AUTOMATIC ,OS_CONST)  callerProc = OS_SCHEDULER_GET_CURRENT_PROC(coreId);
	.d2line		88
	lis		r3,Os_Core_Stat@ha
	e_add16i		r3,r3,Os_Core_Stat@l
	rlwinm		r4,r29,0,16,31		# coreId=r29
	e_mulli		r0,r4,20
	lwzx		r3,r3,r0
	lwz		r8,28(r3)
.Llo24:
	mr		r8,r8		# callerProc=r8 callerProc=r8
# 
#     OS_TRACE(GetTaskID_Entry , coreId);
	.d2line		90
	diab.li		r5,69
	lis		r3,(Os_Core_DynShared+120)@ha
	e_add16i		r3,r3,(Os_Core_DynShared+120)@l
	e_mulli		r4,r4,152
	stbx		r5,r3,r4
# 
#     taskref      =  Os_APICall->Os_API_Data.Os_ApiGetTaskID.TaskIdRef;
	.d2line		92
	lwz		r28,16(r31)		# Os_APICall=r31
.Llo20:
	mr		r28,r28		# taskref=r28 taskref=r28
# 
#   #ifdef OS_CONFIG_HOOK
# 
#     /* Validate API access and parameters */
#     if ( OS_HOOKISNOT(   OS_HOOKID_NONE
	.d2line		97
	lis		r3,(Os_Core_Stat+4)@ha
	e_add16i		r3,r3,(Os_Core_Stat+4)@l
	lwzx		r3,r3,r0
	lhz		r0,100(r3)
	e_and2i.		r0,377
	se_cmpi		r0,0
	bc		0,2,.L11360	# ne
#                        | OS_HOOKID_ERRORHOOK        /* [OS088-01-008] */
#                        | OS_HOOKID_PRETASKHOOK      /* [OS088-01-009] */
#                        | OS_HOOKID_POSTTASKHOOK     /* [OS088-01-010] */
#                        | OS_HOOKID_PROTECTIONHOOK   /* [OS088-01-011] */
#                        | OS_HOOKID_APPERRORHOOK     /* [OS088-01-203] */
#                        ,coreId))
#     {
#         /* [OS088-03-037] [OS088-03-038] [OS088-03-039] [OS088-03-382] [OS088-03-425]
#          * [OS088-04-MGC-002] [OS088-04-MGC-003] [OS088-04-MGC-004] [OS088-04-MGC-064]
#          * [OS088-04-MGC-073] [OS-MGC-0056-05] [OS-MGC-0056-48]
#          */
#         retVal = E_OS_CALLEVEL;
	.d2line		109
	diab.li		r30,2		# retVal=r30
.Llo15:
	b		.L11361
.L11360:
#     }
#     else
# 
#   #endif
# 
#     {
#         retVal = Os_GetTaskID_Err(callerProc,taskref);
	.d2line		116
.Llo16:
	mr		r3,r8		# callerProc=r3 callerProc=r8
	mr		r4,r28		# taskref=r4 taskref=r28
	bl		Os_GetTaskID_Err
.Llo17:
	mr		r30,r3		# retVal=r30 retVal=r3
.L11361:
#     }
# 
#     /* Call API if validation was successful */
#     if(E_OK == retVal)
	.d2line		120
.Llo18:
	rlwinm		r3,r30,0,24,31		# retVal=r30
.Llo19:
	se_cmpi		r3,0
	bc		0,2,.L11362	# ne
#     {
#         if(NULL_PTR != Os_IsrCurrentIsr[coreId][0])   /*[OS088-01-007] */
	.d2line		122
	lis		r3,Os_IsrCurrentIsr@ha
	e_add16i		r3,r3,Os_IsrCurrentIsr@l
	rlwinm		r0,r29,2,14,29		# coreId=r29
	lwzx		r3,r3,r0
	lwz		r0,0(r3)
	se_cmpi		r0,0
	bc		1,2,.L11363	# eq
#         {
#             if(NULL_PTR != OS_TASK_GETCURRENT(coreId) )
	.d2line		124
.Llo25:
	lis		r3,(Os_Core_Stat+4)@ha
	e_add16i		r3,r3,(Os_Core_Stat+4)@l
	rlwinm		r0,r29,0,16,31		# coreId=r29
	e_mulli		r0,r0,20
	lwzx		r3,r3,r0
	lwz		r0,16(r3)
	se_cmpi		r0,0
	bc		1,2,.L11364	# eq
#             {
#                 (*taskref) = OS_TASK_GETCURRENT(coreId)->Os_ProcId; /* [OS001-047.v1]*/
	.d2line		126
	lis		r3,(Os_Core_Stat+4)@ha
	e_add16i		r3,r3,(Os_Core_Stat+4)@l
	rlwinm		r0,r29,0,16,31		# coreId=r29
	e_mulli		r0,r0,20
	lwzx		r3,r3,r0
	lwz		r3,16(r3)
	lwz		r0,0(r3)
	stw		r0,0(r28)		# taskref=r28
	b		.L11367
.L11364:
#             }
#             else
#             {
#                 (*taskref) = (TaskType)INVALID_TASK;    /* [OS001-048.v1] */
	.d2line		130
	diab.li		r0,-1
	stw		r0,0(r28)		# taskref=r28
	b		.L11367
.L11363:
#             }
#         }
#         else
#         {
#             (*taskref) = OS_TASK_GETCURRENT(coreId)->Os_ProcId; /* [OS001-047.v1] [OS001-324.v1] [OS001-327.v1] */
	.d2line		135
	lis		r3,(Os_Core_Stat+4)@ha
	e_add16i		r3,r3,(Os_Core_Stat+4)@l
	rlwinm		r0,r29,0,16,31		# coreId=r29
	e_mulli		r0,r0,20
	lwzx		r3,r3,r0
	lwz		r3,16(r3)
	lwz		r0,0(r3)
	stw		r0,0(r28)		# taskref=r28
	b		.L11367
.L11362:
#         }
# 
#     }
#     else
#     {
#       #ifdef OS_CONFIG_USEPARAMETERACCESS
# 
#         OS_GET_PARAMETER_ERRORCODE ( coreId ).Os_Err_TaskIDRef = taskref;
	.d2line		143
.Llo26:
	lis		r3,(Os_Core_DynShared+96)@ha
	e_add16i		r3,r3,(Os_Core_DynShared+96)@l
	rlwinm		r0,r29,0,16,31		# coreId=r29
	e_mulli		r0,r0,152
	stwx		r28,r3,r0		# taskref=r28
# 
#       #endif
# 
#         OS_CALL_ERRORHOOK(retVal, OSServiceId_GetTaskID, callerProc); /* [OS001-302.v1-05] */
	.d2line		147
	rlwinm		r3,r30,0,24,31		# retVal=r30
	diab.li		r4,132
	mr		r5,r8		# callerProc=r5 callerProc=r8
	bl		Os_Call_ErrorHook
.L11367:
#     }
#     Os_APICall->Os_API_ReturnValue = retVal;
	.d2line		149
.Llo21:
	stb		r30,4(r31)		# Os_APICall=r31 retVal=r30
# 
#     OS_TRACE(GetTaskID_Exit , coreId);
	.d2line		151
	diab.li		r3,68
	lis		r4,(Os_Core_DynShared+120)@ha
	e_add16i		r4,r4,(Os_Core_DynShared+120)@l
.Llo22:
	rlwinm		r29,r29,0,16,31		# coreId=r29 coreId=r29
	e_mulli		r29,r29,152		# coreId=r29 coreId=r29
.Llo23:
	stbx		r3,r4,r29
# 
# }
	.d2line		153
	.d2epilogue_begin
	lmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_restore_list	3,10
.Llo14:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11452:
	.type		Os_API_GetTaskID,@function
	.size		Os_API_GetTaskID,.-Os_API_GetTaskID
# Number of nodes = 178

# Allocations for Os_API_GetTaskID
#	?a4		Os_APICall
#	?a5		retVal
#	?a6		taskref
#	?a7		coreId
#	?a8		callerProc

# Allocations for module
	.section	.text_vle
	.0byte		.L11464
	.section	.Os_BSS,,b
	.0byte		.L11471
	.section	.text_vle
	.0byte		.L11476
	.section	.text_vle
#$$ld
.L5:
.L11959:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_Types.h"
.L11956:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ApplicationApiTypes.h"
.L11954:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ScheduleTableApiTypes.h"
.L11952:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_TaskApiTypes.h"
.L11950:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_SpinlockApiTypes.h"
.L11934:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\PowerPC\\WindRiver\\AUTOSAR\\ar422\\MemMap.h"
.L11932:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_InternalTypes.h"
.L11915:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ErrorApiTypes.h"
.L11895:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ExceptionApiTypes.h"
.L11850:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_ApplicationCfgTypes.h"
.L11803:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_TaskCfgTypes.h"
.L11800:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_HookApiTypes.h"
.L11775:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_TrustedFunctionCfgTypes.h"
.L11538:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_ApiDispatchCfgTypes.h"
.L11482:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_SchedulerCfgTypes.h"
.L11477:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_Isr.h"
.L11465:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_CoreCfgTypes.h"
	.d2_line_end
	.section	.Os_TEXT,,c
#$$ld
.L11387:
.L11436:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\scheduler\\Os_GetTaskID.c"
.L11395:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_Isr.h"
	.d2_line_end
	.section	.Os_PUBLIC_TEXT,,c
#$$ld
.L11408:
.L11416:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\scheduler\\Os_GetTaskID.c"
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
	.uleb128	6
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
	.uleb128	47
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	23
	.uleb128	21
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	39
	.uleb128	12
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	24
	.uleb128	5
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	25
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
	.uleb128	26
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\scheduler\\Os_GetTaskID.c"
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
.L11384:
	.4byte		.L11385-.L11383
.L11383:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L11389-.L11384
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\scheduler\\Os_GetTaskID.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L11386
	.4byte		.L11387
	.4byte		.L11390
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11398:
	.sleb128	2
	.4byte		.L11392-.L11384
	.byte		"Os_Isr_GetState"
	.byte		0
	.4byte		.L11395
	.uleb128	227
	.uleb128	45
	.4byte		.L11396
	.byte		0x1
	.4byte		.L11393
	.4byte		.L11394
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L11395
	.uleb128	227
	.uleb128	45
	.byte		"coreId"
	.byte		0
	.4byte		.L11399
	.4byte		.L11403
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11392:
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
.L11405:
	.4byte		.L11406-.L11404
.L11404:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L11410-.L11405
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\scheduler\\Os_GetTaskID.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L11407
	.4byte		.L11408
	.4byte		.L11411
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
.L11420:
	.sleb128	4
	.4byte		.L11413-.L11405
	.byte		"GetTaskID"
	.byte		0
	.4byte		.L11416
	.uleb128	61
	.uleb128	28
	.4byte		.L11417
	.byte		0x1
	.byte		0x1
	.4byte		.L11414
	.4byte		.L11415
	.sleb128	3
	.4byte		.L11416
	.uleb128	61
	.uleb128	28
	.byte		"taskId"
	.byte		0
	.4byte		.L11421
	.4byte		.L11428
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
.L11429:
	.sleb128	5
	.4byte		.L11416
	.uleb128	63
	.uleb128	36
	.byte		"Os_GetTaskIdCall"
	.byte		0
	.4byte		.L11430
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11413:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11437:
	.sleb128	2
	.4byte		.L11433-.L11384
	.byte		"Os_GetTaskID_Err"
	.byte		0
	.4byte		.L11436
	.uleb128	164
	.uleb128	41
	.4byte		.L11417
	.byte		0x1
	.4byte		.L11434
	.4byte		.L11435
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	6
	.4byte		.L11436
	.uleb128	164
	.uleb128	41
	.byte		"currentProc"
	.byte		0
	.4byte		.L11438
	.sleb128	2
	.byte		0x90
	.uleb128	3
	.sleb128	3
	.4byte		.L11436
	.uleb128	164
	.uleb128	41
	.byte		"taskRef"
	.byte		0
	.4byte		.L11443
	.4byte		.L11446
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11447:
	.sleb128	7
	.4byte		.L11436
	.uleb128	169
	.uleb128	33
	.byte		"retVal"
	.byte		0
	.4byte		.L11417
	.4byte		.L11448
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11433:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11453:
	.sleb128	8
	.4byte		.L11450-.L11384
	.byte		"Os_API_GetTaskID"
	.byte		0
	.4byte		.L11436
	.uleb128	83
	.uleb128	1
	.byte		0x1
	.byte		0x1
	.4byte		.L11451
	.4byte		.L11452
	.sleb128	3
	.4byte		.L11436
	.uleb128	83
	.uleb128	1
	.byte		"Os_APICall"
	.byte		0
	.4byte		.L11454
	.4byte		.L11455
.L11456:
	.sleb128	7
	.4byte		.L11436
	.uleb128	85
	.uleb128	51
	.byte		"retVal"
	.byte		0
	.4byte		.L11417
	.4byte		.L11457
.L11458:
	.sleb128	7
	.4byte		.L11436
	.uleb128	86
	.uleb128	51
	.byte		"taskref"
	.byte		0
	.4byte		.L11421
	.4byte		.L11459
.L11460:
	.sleb128	7
	.4byte		.L11436
	.uleb128	87
	.uleb128	33
	.byte		"coreId"
	.byte		0
	.4byte		.L11399
	.4byte		.L11461
.L11462:
	.sleb128	7
	.4byte		.L11436
	.uleb128	88
	.uleb128	56
	.byte		"callerProc"
	.byte		0
	.4byte		.L11438
	.4byte		.L11463
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11450:
	.section	.debug_info,,n
.L11464:
	.sleb128	9
	.byte		0x1
	.byte		0x1
	.4byte		.L11465
	.uleb128	169
	.uleb128	42
	.byte		"Os_Core_Stat"
	.byte		0
	.4byte		.L11466
	.section	.debug_info,,n
.L11471:
	.sleb128	9
	.byte		0x1
	.byte		0x1
	.4byte		.L11465
	.uleb128	181
	.uleb128	45
	.byte		"Os_Core_DynShared"
	.byte		0
	.4byte		.L11472
	.section	.debug_info,,n
.L11476:
	.sleb128	9
	.byte		0x1
	.byte		0x1
	.4byte		.L11477
	.uleb128	167
	.uleb128	79
	.byte		"Os_IsrCurrentIsr"
	.byte		0
	.4byte		.L11478
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11470:
	.sleb128	10
	.4byte		.L11482
	.uleb128	69
	.uleb128	1
	.4byte		.L11483-.L2
	.uleb128	20
	.section	.debug_info,,n
.L786:
	.sleb128	11
	.byte		"Os_Core_DynInit"
	.byte		0
	.4byte		.L11484
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L787:
	.sleb128	11
	.byte		"Os_Core_Dyn"
	.byte		0
	.4byte		.L11488
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L788:
	.sleb128	11
	.byte		"Os_DispatchElement"
	.byte		0
	.4byte		.L11492
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L789:
	.sleb128	11
	.byte		"Os_PrepareContextFunction"
	.byte		0
	.4byte		.L11496
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L790:
	.sleb128	11
	.byte		"Os_GetStackPointerFunction"
	.byte		0
	.4byte		.L11501
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11483:
.L11487:
	.sleb128	10
	.4byte		.L11482
	.uleb128	69
	.uleb128	1
	.4byte		.L11508-.L2
	.uleb128	36
.L783:
	.sleb128	11
	.byte		"Os_IsrDynInit"
	.byte		0
	.4byte		.L11509
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L784:
	.sleb128	11
	.byte		"Os_SchedulerDynInit"
	.byte		0
	.4byte		.L11511
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L785:
	.sleb128	11
	.byte		"Os_CurrentApp"
	.byte		0
	.4byte		.L11513
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
	.sleb128	0
.L11508:
.L11475:
	.sleb128	10
	.4byte		.L11482
	.uleb128	69
	.uleb128	1
	.4byte		.L11517-.L2
	.uleb128	152
.L776:
	.sleb128	11
	.byte		"Os_Dispatcher"
	.byte		0
	.4byte		.L11518
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L777:
	.sleb128	11
	.byte		"Os_PublicDataNoInit"
	.byte		0
	.4byte		.L11520
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11517:
.L11491:
	.sleb128	10
	.4byte		.L11482
	.uleb128	69
	.uleb128	1
	.4byte		.L11522-.L2
	.uleb128	104
.L773:
	.sleb128	11
	.byte		"Os_SchedulerDyn"
	.byte		0
	.4byte		.L11523
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L774:
	.sleb128	11
	.byte		"Os_IsrDyn"
	.byte		0
	.4byte		.L11525
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L775:
	.sleb128	11
	.byte		"Os_HooksDyn"
	.byte		0
	.4byte		.L11527
	.sleb128	2
	.byte		0x23
	.uleb128	100
	.byte		0x1
	.sleb128	0
.L11522:
.L11512:
	.sleb128	10
	.4byte		.L11482
	.uleb128	69
	.uleb128	1
	.4byte		.L11529-.L2
	.uleb128	4
.L772:
	.sleb128	11
	.byte		"Os_SchedulerCurrentProc"
	.byte		0
	.4byte		.L11530
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11529:
.L11524:
	.sleb128	10
	.4byte		.L11482
	.uleb128	69
	.uleb128	1
	.4byte		.L11532-.L2
	.uleb128	48
.L764:
	.sleb128	11
	.byte		"Os_CurrentContext"
	.byte		0
	.4byte		.L11506
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L765:
	.sleb128	11
	.byte		"Os_PreviousContext"
	.byte		0
	.4byte		.L11506
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L766:
	.sleb128	11
	.byte		"Os_SchedulerScheduleAction"
	.byte		0
	.4byte		.L11533
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L767:
	.sleb128	11
	.byte		"Os_SchedulerLastScheduledPriority"
	.byte		0
	.4byte		.L11535
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L768:
	.sleb128	11
	.byte		"Os_SchedulerCurrentTask"
	.byte		0
	.4byte		.L11530
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L769:
	.sleb128	11
	.byte		"Os_SchedulerLastScheduledProc"
	.byte		0
	.4byte		.L11530
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L770:
	.sleb128	11
	.byte		"Os_SchedulerHeadPivot"
	.byte		0
	.4byte		.L11536
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L771:
	.sleb128	11
	.byte		"Os_SchedulerTailPivot"
	.byte		0
	.4byte		.L11536
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
	.sleb128	0
.L11532:
	.section	.debug_info,,n
.L11537:
	.sleb128	12
	.4byte		.L11538
	.uleb128	612
	.uleb128	1
	.4byte		.L11539-.L2
	.byte		"Os_SchedulerQueueElementType_s"
	.byte		0
	.uleb128	12
.L750:
	.sleb128	11
	.byte		"Os_QueueProc"
	.byte		0
	.4byte		.L11530
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L751:
	.sleb128	11
	.byte		"Os_QueueFrontElement"
	.byte		0
	.4byte		.L11540
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L752:
	.sleb128	11
	.byte		"Os_QueueBackElement"
	.byte		0
	.4byte		.L11540
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11539:
.L11510:
	.sleb128	10
	.4byte		.L11538
	.uleb128	612
	.uleb128	1
	.4byte		.L11541-.L2
	.uleb128	28
.L743:
	.sleb128	11
	.byte		"Os_CurrentUserModePriority"
	.byte		0
	.4byte		.L11542
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L744:
	.sleb128	11
	.byte		"Os_UserModePriorityChanged"
	.byte		0
	.4byte		.L11543
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L745:
	.sleb128	11
	.byte		"Os_DisableAllCount"
	.byte		0
	.4byte		.L11426
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L746:
	.sleb128	11
	.byte		"Os_SuspendAllCount"
	.byte		0
	.4byte		.L11426
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L747:
	.sleb128	11
	.byte		"Os_SuspendOSCount"
	.byte		0
	.4byte		.L11426
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L748:
	.sleb128	11
	.byte		"Os_SavedIsrLevel"
	.byte		0
	.4byte		.L11542
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L749:
	.sleb128	11
	.byte		"Os_SavedOSIsrLevel"
	.byte		0
	.4byte		.L11542
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
	.sleb128	0
.L11541:
.L11526:
	.sleb128	10
	.4byte		.L11538
	.uleb128	612
	.uleb128	1
	.4byte		.L11544-.L2
	.uleb128	52
.L737:
	.sleb128	11
	.byte		"Os_IsrRunningIsr"
	.byte		0
	.4byte		.L11530
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L738:
	.sleb128	11
	.byte		"Os_IsrNeedToClear"
	.byte		0
	.4byte		.L11545
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L739:
	.sleb128	11
	.byte		"Os_Isr_NestLevel"
	.byte		0
	.4byte		.L11426
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L740:
	.sleb128	11
	.byte		"Os_Isr_ServicesBackup"
	.byte		0
	.4byte		.L11549
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L741:
	.sleb128	11
	.byte		"Os_SuspendAllPrevIsrState"
	.byte		0
	.4byte		.L11542
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L742:
	.sleb128	11
	.byte		"Os_SuspendCounterpartTrack"
	.byte		0
	.4byte		.L11553
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L11544:
.L11519:
	.sleb128	10
	.4byte		.L11538
	.uleb128	612
	.uleb128	1
	.4byte		.L11555-.L2
	.uleb128	8
.L735:
	.sleb128	11
	.byte		"Os_DHead"
	.byte		0
	.4byte		.L11426
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L736:
	.sleb128	11
	.byte		"Os_DTail"
	.byte		0
	.4byte		.L11426
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11555:
.L11495:
	.sleb128	12
	.4byte		.L11538
	.uleb128	612
	.uleb128	1
	.4byte		.L11556-.L2
	.byte		"Os_DispatchElementType_s"
	.byte		0
	.uleb128	56
.L730:
	.sleb128	11
	.byte		"Os_DispatchKind"
	.byte		0
	.4byte		.L11557
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L731:
	.sleb128	11
	.byte		"Os_DispatcherLockCoreId"
	.byte		0
	.4byte		.L11400
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L732:
	.sleb128	11
	.byte		"Os_DispatchIsrId"
	.byte		0
	.4byte		.L11559
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L733:
	.sleb128	11
	.byte		"Os_DispatchApiCall"
	.byte		0
	.4byte		.L11560
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L734:
	.sleb128	11
	.byte		"Os_DispatchApiInternal"
	.byte		0
	.4byte		.L11430
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11556:
.L11431:
	.sleb128	12
	.4byte		.L11538
	.uleb128	60
	.uleb128	1
	.4byte		.L11561-.L2
	.byte		"Os_APICallType_struct"
	.byte		0
	.uleb128	40
.L725:
	.sleb128	11
	.byte		"Os_API_Magic"
	.byte		0
	.4byte		.L11426
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L726:
	.sleb128	11
	.byte		"Os_API_ReturnValue"
	.byte		0
	.4byte		.L11417
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L727:
	.sleb128	11
	.byte		"Os_API_Lock"
	.byte		0
	.4byte		.L11562
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L728:
	.sleb128	11
	.byte		"Os_API_Func"
	.byte		0
	.4byte		.L11564
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L729:
	.sleb128	11
	.byte		"Os_API_Data"
	.byte		0
	.4byte		.L11569
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11561:
	.section	.debug_info,,n
.L11569:
	.sleb128	13
	.4byte		.L11538
	.uleb128	60
	.uleb128	1
	.4byte		.L11570-.L2
	.uleb128	24
.L677:
	.sleb128	11
	.byte		"Os_ApiStartOs"
	.byte		0
	.4byte		.L11571
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L678:
	.sleb128	11
	.byte		"Os_ApiShutdownOs"
	.byte		0
	.4byte		.L11573
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L679:
	.sleb128	11
	.byte		"Os_ApiShutdownOsInternal"
	.byte		0
	.4byte		.L11575
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L680:
	.sleb128	11
	.byte		"Os_ApiShutdownAllCores"
	.byte		0
	.4byte		.L11577
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L681:
	.sleb128	11
	.byte		"Os_ApiGetNumberOfActivatedCores"
	.byte		0
	.4byte		.L11579
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L682:
	.sleb128	11
	.byte		"Os_ApiStartCore"
	.byte		0
	.4byte		.L11581
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L683:
	.sleb128	11
	.byte		"Os_ApiStartNonAutosarCore"
	.byte		0
	.4byte		.L11583
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L684:
	.sleb128	11
	.byte		"Os_ApiGetCoreID"
	.byte		0
	.4byte		.L11585
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L685:
	.sleb128	11
	.byte		"Os_ApiActivateTask"
	.byte		0
	.4byte		.L11587
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L686:
	.sleb128	11
	.byte		"Os_ApiChainTask"
	.byte		0
	.4byte		.L11589
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L687:
	.sleb128	11
	.byte		"Os_ApiGetTaskID"
	.byte		0
	.4byte		.L11591
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L688:
	.sleb128	11
	.byte		"Os_ApiGetTaskState"
	.byte		0
	.4byte		.L11593
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L689:
	.sleb128	11
	.byte		"Os_ApiSetEvent"
	.byte		0
	.4byte		.L11595
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L690:
	.sleb128	11
	.byte		"Os_ApiClearEvent"
	.byte		0
	.4byte		.L11597
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L691:
	.sleb128	11
	.byte		"Os_ApiGetEvent"
	.byte		0
	.4byte		.L11599
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L692:
	.sleb128	11
	.byte		"Os_ApiWaitEvent"
	.byte		0
	.4byte		.L11601
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L693:
	.sleb128	11
	.byte		"Os_ApiGetResource"
	.byte		0
	.4byte		.L11603
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L694:
	.sleb128	11
	.byte		"Os_ApiReleaseResource"
	.byte		0
	.4byte		.L11605
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L695:
	.sleb128	11
	.byte		"Os_ApiGetAlarmBase"
	.byte		0
	.4byte		.L11607
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L696:
	.sleb128	11
	.byte		"Os_ApiGetAlarm"
	.byte		0
	.4byte		.L11609
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L697:
	.sleb128	11
	.byte		"Os_ApiSetRelAlarm"
	.byte		0
	.4byte		.L11611
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L698:
	.sleb128	11
	.byte		"Os_ApiSetAbsAlarm"
	.byte		0
	.4byte		.L11613
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L699:
	.sleb128	11
	.byte		"Os_ApiCancelAlarm"
	.byte		0
	.4byte		.L11615
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L700:
	.sleb128	11
	.byte		"Os_ApiGetApplicationState"
	.byte		0
	.4byte		.L11617
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L701:
	.sleb128	11
	.byte		"Os_ApiTerminateApplication"
	.byte		0
	.4byte		.L11619
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L702:
	.sleb128	11
	.byte		"Os_ApiGetApplicationID"
	.byte		0
	.4byte		.L11621
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L703:
	.sleb128	11
	.byte		"Os_ApiGetISRID"
	.byte		0
	.4byte		.L11623
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L704:
	.sleb128	11
	.byte		"Os_ApiGetActiveApplicationMode"
	.byte		0
	.4byte		.L11625
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L705:
	.sleb128	11
	.byte		"Os_ApiIncrementCounter"
	.byte		0
	.4byte		.L11627
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L706:
	.sleb128	11
	.byte		"Os_ApiGetCounterValue"
	.byte		0
	.4byte		.L11629
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L707:
	.sleb128	11
	.byte		"Os_ApiGetElapsedValue"
	.byte		0
	.4byte		.L11631
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L708:
	.sleb128	11
	.byte		"Os_ApiStartScheduleTableAbs"
	.byte		0
	.4byte		.L11633
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L709:
	.sleb128	11
	.byte		"Os_ApiStartScheduleTableRel"
	.byte		0
	.4byte		.L11635
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L710:
	.sleb128	11
	.byte		"Os_ApiStopScheduleTable"
	.byte		0
	.4byte		.L11637
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L711:
	.sleb128	11
	.byte		"Os_ApiGetScheduleTableStatus"
	.byte		0
	.4byte		.L11639
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L712:
	.sleb128	11
	.byte		"Os_ApiNextScheduleTable"
	.byte		0
	.4byte		.L11641
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L713:
	.sleb128	11
	.byte		"Os_ApiStartScheduleTableSynchron"
	.byte		0
	.4byte		.L11643
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L714:
	.sleb128	11
	.byte		"Os_ApiSyncScheduleTable"
	.byte		0
	.4byte		.L11645
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L715:
	.sleb128	11
	.byte		"Os_ApiSetScheduleTableAsync"
	.byte		0
	.4byte		.L11647
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L716:
	.sleb128	11
	.byte		"Os_ApiCheckObjectAccess"
	.byte		0
	.4byte		.L11649
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L717:
	.sleb128	11
	.byte		"Os_ApiCheckObjectOwnership"
	.byte		0
	.4byte		.L11651
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L718:
	.sleb128	11
	.byte		"Os_ApiCallTrustedFunction"
	.byte		0
	.4byte		.L11653
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L719:
	.sleb128	11
	.byte		"Os_ApiStackUsage"
	.byte		0
	.4byte		.L11655
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L720:
	.sleb128	11
	.byte		"Os_API_GetSpinlock"
	.byte		0
	.4byte		.L11657
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L721:
	.sleb128	11
	.byte		"Os_API_ReleaseSpinlock"
	.byte		0
	.4byte		.L11659
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L722:
	.sleb128	11
	.byte		"Os_API_TryToGetSpinlock"
	.byte		0
	.4byte		.L11661
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L723:
	.sleb128	11
	.byte		"Os_API_IOCTransfer"
	.byte		0
	.4byte		.L11663
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L724:
	.sleb128	11
	.byte		"Os_ApiControlIdle"
	.byte		0
	.4byte		.L11665
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11570:
.L11666:
	.sleb128	10
	.4byte		.L11538
	.uleb128	60
	.uleb128	1
	.4byte		.L11667-.L2
	.uleb128	8
.L675:
	.sleb128	11
	.byte		"CoreID"
	.byte		0
	.4byte		.L11400
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L676:
	.sleb128	11
	.byte		"IdleMode"
	.byte		0
	.4byte		.L11668
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11667:
.L11664:
	.sleb128	10
	.4byte		.L11538
	.uleb128	60
	.uleb128	1
	.4byte		.L11670-.L2
	.uleb128	8
.L673:
	.sleb128	11
	.byte		"Ioc_Channel"
	.byte		0
	.4byte		.L11671
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L674:
	.sleb128	11
	.byte		"Ioc_Data"
	.byte		0
	.4byte		.L11675
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11670:
.L11662:
	.sleb128	10
	.4byte		.L11538
	.uleb128	60
	.uleb128	1
	.4byte		.L11681-.L2
	.uleb128	8
.L671:
	.sleb128	11
	.byte		"SpinlockId"
	.byte		0
	.4byte		.L11682
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L672:
	.sleb128	11
	.byte		"Success"
	.byte		0
	.4byte		.L11683
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11681:
.L11660:
	.sleb128	10
	.4byte		.L11538
	.uleb128	60
	.uleb128	1
	.4byte		.L11686-.L2
	.uleb128	2
.L670:
	.sleb128	11
	.byte		"SpinlockId"
	.byte		0
	.4byte		.L11682
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11686:
.L11658:
	.sleb128	10
	.4byte		.L11538
	.uleb128	60
	.uleb128	1
	.4byte		.L11687-.L2
	.uleb128	2
.L669:
	.sleb128	11
	.byte		"SpinlockId"
	.byte		0
	.4byte		.L11682
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11687:
.L11656:
	.sleb128	10
	.4byte		.L11538
	.uleb128	60
	.uleb128	1
	.4byte		.L11688-.L2
	.uleb128	20
.L664:
	.sleb128	11
	.byte		"ProcId"
	.byte		0
	.4byte		.L11423
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L665:
	.sleb128	11
	.byte		"MaxUsage"
	.byte		0
	.4byte		.L11418
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L666:
	.sleb128	11
	.byte		"MaxUsageRef"
	.byte		0
	.4byte		.L11689
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L667:
	.sleb128	11
	.byte		"CurrentUsage"
	.byte		0
	.4byte		.L11418
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L668:
	.sleb128	11
	.byte		"CurrentUsageRef"
	.byte		0
	.4byte		.L11689
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11688:
.L11654:
	.sleb128	10
	.4byte		.L11538
	.uleb128	60
	.uleb128	1
	.4byte		.L11690-.L2
	.uleb128	12
.L661:
	.sleb128	11
	.byte		"FunctionIndex"
	.byte		0
	.4byte		.L11691
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L662:
	.sleb128	11
	.byte		"ParamRef"
	.byte		0
	.4byte		.L11692
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L663:
	.sleb128	11
	.byte		"ReturnValue"
	.byte		0
	.4byte		.L11693
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11690:
.L11652:
	.sleb128	10
	.4byte		.L11538
	.uleb128	60
	.uleb128	1
	.4byte		.L11695-.L2
	.uleb128	12
.L658:
	.sleb128	11
	.byte		"AppID"
	.byte		0
	.4byte		.L11696
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L659:
	.sleb128	11
	.byte		"ObjectType"
	.byte		0
	.4byte		.L11697
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L660:
	.sleb128	11
	.byte		"Object"
	.byte		0
	.4byte		.L11425
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11695:
.L11650:
	.sleb128	10
	.4byte		.L11538
	.uleb128	60
	.uleb128	1
	.4byte		.L11699-.L2
	.uleb128	12
.L655:
	.sleb128	11
	.byte		"AppID"
	.byte		0
	.4byte		.L11696
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L656:
	.sleb128	11
	.byte		"ObjectType"
	.byte		0
	.4byte		.L11697
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L657:
	.sleb128	11
	.byte		"Object"
	.byte		0
	.4byte		.L11425
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11699:
.L11616:
	.sleb128	10
	.4byte		.L11538
	.uleb128	60
	.uleb128	1
	.4byte		.L11700-.L2
	.uleb128	4
.L654:
	.sleb128	11
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11701
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11700:
.L11614:
	.sleb128	10
	.4byte		.L11538
	.uleb128	60
	.uleb128	1
	.4byte		.L11702-.L2
	.uleb128	12
.L651:
	.sleb128	11
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11701
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L652:
	.sleb128	11
	.byte		"Start"
	.byte		0
	.4byte		.L11703
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L653:
	.sleb128	11
	.byte		"Cycle"
	.byte		0
	.4byte		.L11703
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11702:
.L11612:
	.sleb128	10
	.4byte		.L11538
	.uleb128	60
	.uleb128	1
	.4byte		.L11704-.L2
	.uleb128	12
.L648:
	.sleb128	11
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11701
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L649:
	.sleb128	11
	.byte		"Increment"
	.byte		0
	.4byte		.L11703
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L650:
	.sleb128	11
	.byte		"Cycle"
	.byte		0
	.4byte		.L11703
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11704:
.L11610:
	.sleb128	10
	.4byte		.L11538
	.uleb128	60
	.uleb128	1
	.4byte		.L11705-.L2
	.uleb128	8
.L646:
	.sleb128	11
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11701
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L647:
	.sleb128	11
	.byte		"TickRef"
	.byte		0
	.4byte		.L11706
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11705:
.L11608:
	.sleb128	10
	.4byte		.L11538
	.uleb128	60
	.uleb128	1
	.4byte		.L11708-.L2
	.uleb128	8
.L644:
	.sleb128	11
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11701
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L645:
	.sleb128	11
	.byte		"AlarmBaseTypeRef"
	.byte		0
	.4byte		.L11709
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11708:
.L11648:
	.sleb128	10
	.4byte		.L11538
	.uleb128	60
	.uleb128	1
	.4byte		.L11713-.L2
	.uleb128	4
.L643:
	.sleb128	11
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11714
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11713:
.L11646:
	.sleb128	10
	.4byte		.L11538
	.uleb128	60
	.uleb128	1
	.4byte		.L11715-.L2
	.uleb128	8
.L641:
	.sleb128	11
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11714
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L642:
	.sleb128	11
	.byte		"SyncValue"
	.byte		0
	.4byte		.L11703
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11715:
.L11644:
	.sleb128	10
	.4byte		.L11538
	.uleb128	60
	.uleb128	1
	.4byte		.L11716-.L2
	.uleb128	4
.L640:
	.sleb128	11
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11714
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11716:
.L11642:
	.sleb128	10
	.4byte		.L11538
	.uleb128	60
	.uleb128	1
	.4byte		.L11717-.L2
	.uleb128	8
.L638:
	.sleb128	11
	.byte		"SchTblIdFrom"
	.byte		0
	.4byte		.L11714
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L639:
	.sleb128	11
	.byte		"SchTblIdTo"
	.byte		0
	.4byte		.L11714
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11717:
.L11640:
	.sleb128	10
	.4byte		.L11538
	.uleb128	60
	.uleb128	1
	.4byte		.L11718-.L2
	.uleb128	8
.L636:
	.sleb128	11
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11714
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L637:
	.sleb128	11
	.byte		"SchTblStatus"
	.byte		0
	.4byte		.L11719
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11718:
.L11638:
	.sleb128	10
	.4byte		.L11538
	.uleb128	60
	.uleb128	1
	.4byte		.L11723-.L2
	.uleb128	4
.L635:
	.sleb128	11
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11714
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11723:
.L11636:
	.sleb128	10
	.4byte		.L11538
	.uleb128	60
	.uleb128	1
	.4byte		.L11724-.L2
	.uleb128	8
.L633:
	.sleb128	11
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11714
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L634:
	.sleb128	11
	.byte		"Offset"
	.byte		0
	.4byte		.L11703
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11724:
.L11634:
	.sleb128	10
	.4byte		.L11538
	.uleb128	60
	.uleb128	1
	.4byte		.L11725-.L2
	.uleb128	8
.L631:
	.sleb128	11
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11714
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L632:
	.sleb128	11
	.byte		"Start"
	.byte		0
	.4byte		.L11703
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11725:
.L11632:
	.sleb128	10
	.4byte		.L11538
	.uleb128	60
	.uleb128	1
	.4byte		.L11726-.L2
	.uleb128	12
.L628:
	.sleb128	11
	.byte		"CounterId"
	.byte		0
	.4byte		.L11727
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L629:
	.sleb128	11
	.byte		"ValuePtr"
	.byte		0
	.4byte		.L11706
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L630:
	.sleb128	11
	.byte		"ElapsedValuePtr"
	.byte		0
	.4byte		.L11706
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11726:
.L11630:
	.sleb128	10
	.4byte		.L11538
	.uleb128	60
	.uleb128	1
	.4byte		.L11728-.L2
	.uleb128	12
.L625:
	.sleb128	11
	.byte		"CounterId"
	.byte		0
	.4byte		.L11727
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L626:
	.sleb128	11
	.byte		"ValuePtr"
	.byte		0
	.4byte		.L11706
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L627:
	.sleb128	11
	.byte		"LightServiceFunction"
	.byte		0
	.4byte		.L11729
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11728:
.L11628:
	.sleb128	10
	.4byte		.L11538
	.uleb128	60
	.uleb128	1
	.4byte		.L11733-.L2
	.uleb128	4
.L624:
	.sleb128	11
	.byte		"CounterId"
	.byte		0
	.4byte		.L11727
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11733:
.L11624:
	.sleb128	10
	.4byte		.L11538
	.uleb128	60
	.uleb128	1
	.4byte		.L11734-.L2
	.uleb128	4
.L623:
	.sleb128	11
	.byte		"ISRId"
	.byte		0
	.4byte		.L11559
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11734:
.L11620:
	.sleb128	10
	.4byte		.L11538
	.uleb128	60
	.uleb128	1
	.4byte		.L11735-.L2
	.uleb128	2
.L621:
	.sleb128	11
	.byte		"Application"
	.byte		0
	.4byte		.L11696
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L622:
	.sleb128	11
	.byte		"RestartOption"
	.byte		0
	.4byte		.L11736
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
	.sleb128	0
.L11735:
.L11622:
	.sleb128	10
	.4byte		.L11538
	.uleb128	60
	.uleb128	1
	.4byte		.L11737-.L2
	.uleb128	1
.L620:
	.sleb128	11
	.byte		"Application"
	.byte		0
	.4byte		.L11696
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11737:
.L11618:
	.sleb128	10
	.4byte		.L11538
	.uleb128	60
	.uleb128	1
	.4byte		.L11738-.L2
	.uleb128	8
.L618:
	.sleb128	11
	.byte		"Application"
	.byte		0
	.4byte		.L11696
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L619:
	.sleb128	11
	.byte		"AppStateRef"
	.byte		0
	.4byte		.L11739
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11738:
.L11602:
	.sleb128	10
	.4byte		.L11538
	.uleb128	60
	.uleb128	1
	.4byte		.L11742-.L2
	.uleb128	8
.L617:
	.sleb128	11
	.byte		"EventMask"
	.byte		0
	.4byte		.L11743
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11742:
.L11600:
	.sleb128	10
	.4byte		.L11538
	.uleb128	60
	.uleb128	1
	.4byte		.L11746-.L2
	.uleb128	24
.L614:
	.sleb128	11
	.byte		"TaskId"
	.byte		0
	.4byte		.L11423
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L615:
	.sleb128	11
	.byte		"EventMask"
	.byte		0
	.4byte		.L11743
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L616:
	.sleb128	11
	.byte		"EventMaskRef"
	.byte		0
	.4byte		.L11747
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11746:
.L11598:
	.sleb128	10
	.4byte		.L11538
	.uleb128	60
	.uleb128	1
	.4byte		.L11749-.L2
	.uleb128	8
.L613:
	.sleb128	11
	.byte		"EventMask"
	.byte		0
	.4byte		.L11743
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11749:
.L11596:
	.sleb128	10
	.4byte		.L11538
	.uleb128	60
	.uleb128	1
	.4byte		.L11750-.L2
	.uleb128	16
.L611:
	.sleb128	11
	.byte		"TaskId"
	.byte		0
	.4byte		.L11423
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L612:
	.sleb128	11
	.byte		"EventMask"
	.byte		0
	.4byte		.L11743
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11750:
.L11594:
	.sleb128	10
	.4byte		.L11538
	.uleb128	60
	.uleb128	1
	.4byte		.L11751-.L2
	.uleb128	8
.L609:
	.sleb128	11
	.byte		"TaskId"
	.byte		0
	.4byte		.L11423
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L610:
	.sleb128	11
	.byte		"TaskStateRef"
	.byte		0
	.4byte		.L11752
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11751:
.L11592:
	.sleb128	10
	.4byte		.L11538
	.uleb128	60
	.uleb128	1
	.4byte		.L11756-.L2
	.uleb128	4
.L608:
	.sleb128	11
	.byte		"TaskIdRef"
	.byte		0
	.4byte		.L11421
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11756:
.L11590:
	.sleb128	10
	.4byte		.L11538
	.uleb128	60
	.uleb128	1
	.4byte		.L11757-.L2
	.uleb128	4
.L607:
	.sleb128	11
	.byte		"TaskId"
	.byte		0
	.4byte		.L11423
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11757:
.L11588:
	.sleb128	10
	.4byte		.L11538
	.uleb128	60
	.uleb128	1
	.4byte		.L11758-.L2
	.uleb128	4
.L606:
	.sleb128	11
	.byte		"TaskId"
	.byte		0
	.4byte		.L11423
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11758:
.L11606:
	.sleb128	10
	.4byte		.L11538
	.uleb128	60
	.uleb128	1
	.4byte		.L11759-.L2
	.uleb128	4
.L605:
	.sleb128	11
	.byte		"ResourceId"
	.byte		0
	.4byte		.L11760
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11759:
.L11604:
	.sleb128	10
	.4byte		.L11538
	.uleb128	60
	.uleb128	1
	.4byte		.L11761-.L2
	.uleb128	4
.L604:
	.sleb128	11
	.byte		"ResourceId"
	.byte		0
	.4byte		.L11760
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11761:
.L11626:
	.sleb128	10
	.4byte		.L11538
	.uleb128	60
	.uleb128	1
	.4byte		.L11762-.L2
	.uleb128	4
.L603:
	.sleb128	11
	.byte		"AppMode"
	.byte		0
	.4byte		.L11763
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11762:
.L11586:
	.sleb128	10
	.4byte		.L11538
	.uleb128	60
	.uleb128	1
	.4byte		.L11764-.L2
	.uleb128	2
.L602:
	.sleb128	11
	.byte		"CoreID"
	.byte		0
	.4byte		.L11400
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11764:
.L11580:
	.sleb128	10
	.4byte		.L11538
	.uleb128	60
	.uleb128	1
	.4byte		.L11765-.L2
	.uleb128	2
.L601:
	.sleb128	11
	.byte		"NumberOfActivatedCores"
	.byte		0
	.4byte		.L11400
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11765:
.L11578:
	.sleb128	10
	.4byte		.L11538
	.uleb128	60
	.uleb128	1
	.4byte		.L11766-.L2
	.uleb128	1
.L600:
	.sleb128	11
	.byte		"Error"
	.byte		0
	.4byte		.L11417
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11766:
.L11576:
	.sleb128	10
	.4byte		.L11538
	.uleb128	60
	.uleb128	1
	.4byte		.L11767-.L2
	.uleb128	8
.L598:
	.sleb128	11
	.byte		"ShutdownType"
	.byte		0
	.4byte		.L11768
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L599:
	.sleb128	11
	.byte		"Error"
	.byte		0
	.4byte		.L11417
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11767:
.L11574:
	.sleb128	10
	.4byte		.L11538
	.uleb128	60
	.uleb128	1
	.4byte		.L11770-.L2
	.uleb128	1
.L597:
	.sleb128	11
	.byte		"Error"
	.byte		0
	.4byte		.L11417
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11770:
.L11584:
	.sleb128	10
	.4byte		.L11538
	.uleb128	60
	.uleb128	1
	.4byte		.L11771-.L2
	.uleb128	8
.L595:
	.sleb128	11
	.byte		"CoreID"
	.byte		0
	.4byte		.L11400
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L596:
	.sleb128	11
	.byte		"StatusRef"
	.byte		0
	.4byte		.L11772
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11771:
.L11582:
	.sleb128	10
	.4byte		.L11538
	.uleb128	60
	.uleb128	1
	.4byte		.L11773-.L2
	.uleb128	8
.L593:
	.sleb128	11
	.byte		"CoreID"
	.byte		0
	.4byte		.L11400
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L594:
	.sleb128	11
	.byte		"StatusRef"
	.byte		0
	.4byte		.L11772
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11773:
.L11572:
	.sleb128	10
	.4byte		.L11538
	.uleb128	60
	.uleb128	1
	.4byte		.L11774-.L2
	.uleb128	4
.L592:
	.sleb128	11
	.byte		"AppMode"
	.byte		0
	.4byte		.L11763
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11774:
.L11674:
	.sleb128	10
	.4byte		.L11775
	.uleb128	33
	.uleb128	14
	.4byte		.L11776-.L2
	.uleb128	24
.L585:
	.sleb128	11
	.byte		"Os_IOC_ChannelDyn"
	.byte		0
	.4byte		.L11777
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L586:
	.sleb128	11
	.byte		"Os_IOC_ChannelLength"
	.byte		0
	.4byte		.L11781
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L587:
	.sleb128	11
	.byte		"Os_IOC_ChannelBuffer"
	.byte		0
	.4byte		.L11782
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L588:
	.sleb128	11
	.byte		"Os_IOC_ChannelElementSize"
	.byte		0
	.4byte		.L11783
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L589:
	.sleb128	11
	.byte		"Os_IOC_DataCount"
	.byte		0
	.4byte		.L11784
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L590:
	.sleb128	11
	.byte		"Os_IOC_DataDescriptor"
	.byte		0
	.4byte		.L11786
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L591:
	.sleb128	11
	.byte		"Os_IOC_LockResourceAddress"
	.byte		0
	.4byte		.L11791
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L11776:
.L11790:
	.sleb128	10
	.4byte		.L11775
	.uleb128	33
	.uleb128	14
	.4byte		.L11794-.L2
	.uleb128	4
.L581:
	.sleb128	11
	.byte		"Os_IOC_DataLength"
	.byte		0
	.4byte		.L11795
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L582:
	.sleb128	11
	.byte		"Os_IOC_DataOffset"
	.byte		0
	.4byte		.L11797
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L11794:
.L11780:
	.sleb128	10
	.4byte		.L11775
	.uleb128	33
	.uleb128	14
	.4byte		.L11799-.L2
	.uleb128	6
.L578:
	.sleb128	11
	.byte		"Os_IOC_ChannelHead"
	.byte		0
	.4byte		.L11781
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L579:
	.sleb128	11
	.byte		"Os_IOC_ChannelMessageCount"
	.byte		0
	.4byte		.L11781
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L580:
	.sleb128	11
	.byte		"Os_IOC_Status"
	.byte		0
	.4byte		.L11417
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11799:
.L11528:
	.sleb128	10
	.4byte		.L11800
	.uleb128	34
	.uleb128	14
	.4byte		.L11801-.L2
	.uleb128	2
.L529:
	.sleb128	11
	.byte		"Os_HookID"
	.byte		0
	.4byte		.L11802
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11801:
.L11442:
	.sleb128	12
	.4byte		.L11803
	.uleb128	80
	.uleb128	13
	.4byte		.L11804-.L2
	.byte		"Os_ProcStatType_s"
	.byte		0
	.uleb128	80
.L511:
	.sleb128	11
	.byte		"Os_ProcId"
	.byte		0
	.4byte		.L11445
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L512:
	.sleb128	11
	.byte		"Os_ProcCoreID"
	.byte		0
	.4byte		.L11399
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L513:
	.sleb128	11
	.byte		"Os_ProcDyn"
	.byte		0
	.4byte		.L11805
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L514:
	.sleb128	11
	.byte		"Os_ProcStack"
	.byte		0
	.4byte		.L11809
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L515:
	.sleb128	11
	.byte		"Os_ProcKind"
	.byte		0
	.4byte		.L11814
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L516:
	.sleb128	11
	.byte		"Os_ProcEventRights"
	.byte		0
	.4byte		.L11817
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L517:
	.sleb128	11
	.byte		"Os_ProcPriority"
	.byte		0
	.4byte		.L11818
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L518:
	.sleb128	11
	.byte		"Os_ProcRunPriority"
	.byte		0
	.4byte		.L11818
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L519:
	.sleb128	11
	.byte		"Os_ProcMaxActivations"
	.byte		0
	.4byte		.L11819
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L520:
	.sleb128	11
	.byte		"Os_ProcContext"
	.byte		0
	.4byte		.L11821
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L521:
	.sleb128	11
	.byte		"Os_ProcOwnerApp"
	.byte		0
	.4byte		.L11822
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L522:
	.sleb128	11
	.byte		"Os_ProcAppAccess"
	.byte		0
	.4byte		.L11823
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L523:
	.sleb128	11
	.byte		"Os_ProcEntryPoint"
	.byte		0
	.4byte		.L11827
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L524:
	.sleb128	11
	.byte		"Os_ProcAutoStart"
	.byte		0
	.4byte		.L11823
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
.L525:
	.sleb128	11
	.byte		"Os_ProcResourceCount"
	.byte		0
	.4byte		.L11832
	.sleb128	2
	.byte		0x23
	.uleb128	64
	.byte		0x1
.L526:
	.sleb128	11
	.byte		"Os_ProcResourceStack"
	.byte		0
	.4byte		.L11833
	.sleb128	2
	.byte		0x23
	.uleb128	68
	.byte		0x1
.L527:
	.sleb128	11
	.byte		"Os_ProcQueueElements"
	.byte		0
	.4byte		.L11839
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.byte		0x1
.L528:
	.sleb128	11
	.byte		"Os_ProcIsrPlatformConfig"
	.byte		0
	.4byte		.L11840
	.sleb128	2
	.byte		0x23
	.uleb128	76
	.byte		0x1
	.sleb128	0
.L11804:
.L11813:
	.sleb128	12
	.4byte		.L11803
	.uleb128	80
	.uleb128	13
	.4byte		.L11841-.L2
	.byte		"Os_ProcStackStruct"
	.byte		0
	.uleb128	8
.L509:
	.sleb128	11
	.byte		"Os_ProcStackSize"
	.byte		0
	.4byte		.L11842
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L510:
	.sleb128	11
	.byte		"Os_ProcStackBase"
	.byte		0
	.4byte		.L11821
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11841:
.L11808:
	.sleb128	10
	.4byte		.L11803
	.uleb128	80
	.uleb128	13
	.4byte		.L11844-.L2
	.uleb128	56
.L496:
	.sleb128	11
	.byte		"Os_ProcState"
	.byte		0
	.4byte		.L11754
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L497:
	.sleb128	11
	.byte		"Os_ProcContextState"
	.byte		0
	.4byte		.L11845
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L498:
	.sleb128	11
	.byte		"Os_ProcEvents"
	.byte		0
	.4byte		.L11743
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L499:
	.sleb128	11
	.byte		"Os_ProcEventWaitingFor"
	.byte		0
	.4byte		.L11743
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L500:
	.sleb128	11
	.byte		"Os_ProcActivations"
	.byte		0
	.4byte		.L11820
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L501:
	.sleb128	11
	.byte		"Os_ProcResourcesAllocated"
	.byte		0
	.4byte		.L11760
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L502:
	.sleb128	11
	.byte		"Os_ProcEnabled"
	.byte		0
	.4byte		.L11418
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L503:
	.sleb128	11
	.byte		"Os_ProcCurrentApp"
	.byte		0
	.4byte		.L11513
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L504:
	.sleb128	11
	.byte		"Os_ProcSpinlock"
	.byte		0
	.4byte		.L11847
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L505:
	.sleb128	11
	.byte		"Os_ProcFreeQueueElements"
	.byte		0
	.4byte		.L11540
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L506:
	.sleb128	11
	.byte		"Os_ProcCurrentPriority"
	.byte		0
	.4byte		.L11535
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L507:
	.sleb128	11
	.byte		"Os_ProcTFCallCount"
	.byte		0
	.4byte		.L11418
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L508:
	.sleb128	11
	.byte		"Os_FatalErrorOccured"
	.byte		0
	.4byte		.L11417
	.sleb128	2
	.byte		0x23
	.uleb128	53
	.byte		0x1
	.sleb128	0
.L11844:
.L11849:
	.sleb128	12
	.4byte		.L11850
	.uleb128	52
	.uleb128	1
	.4byte		.L11851-.L2
	.byte		"Os_SpinlockStatType_s"
	.byte		0
	.uleb128	16
.L448:
	.sleb128	11
	.byte		"Os_SpinlockId"
	.byte		0
	.4byte		.L11852
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L449:
	.sleb128	11
	.byte		"Os_SpinlockChainId"
	.byte		0
	.4byte		.L11852
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L450:
	.sleb128	11
	.byte		"Os_SpinlockDyn"
	.byte		0
	.4byte		.L11853
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L451:
	.sleb128	11
	.byte		"Os_SpinlockAccess"
	.byte		0
	.4byte		.L11823
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L452:
	.sleb128	11
	.byte		"Os_SpinlockLockResourceAddress"
	.byte		0
	.4byte		.L11791
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L11851:
.L11856:
	.sleb128	10
	.4byte		.L11850
	.uleb128	52
	.uleb128	1
	.4byte		.L11857-.L2
	.uleb128	12
.L445:
	.sleb128	11
	.byte		"Os_SpinlockLockerProc"
	.byte		0
	.4byte		.L11530
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L446:
	.sleb128	11
	.byte		"Os_SpinlockSuperseded"
	.byte		0
	.4byte		.L11847
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L447:
	.sleb128	11
	.byte		"Os_ResourceDependency"
	.byte		0
	.4byte		.L11835
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11857:
.L11516:
	.sleb128	12
	.4byte		.L11850
	.uleb128	52
	.uleb128	1
	.4byte		.L11858-.L2
	.byte		"Os_ApplicationStatType_s"
	.byte		0
	.uleb128	48
.L433:
	.sleb128	11
	.byte		"Os_AppDyn"
	.byte		0
	.4byte		.L11859
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L434:
	.sleb128	11
	.byte		"Os_AppId"
	.byte		0
	.4byte		.L11863
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L435:
	.sleb128	11
	.byte		"Os_AppRestartTask"
	.byte		0
	.4byte		.L11445
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L436:
	.sleb128	11
	.byte		"Os_AppKind"
	.byte		0
	.4byte		.L11864
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L437:
	.sleb128	11
	.byte		"Os_AppShutdownHook"
	.byte		0
	.4byte		.L11867
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L438:
	.sleb128	11
	.byte		"Os_AppStartupHook"
	.byte		0
	.4byte		.L11872
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L439:
	.sleb128	11
	.byte		"Os_AppErrorHook"
	.byte		0
	.4byte		.L11877
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L440:
	.sleb128	11
	.byte		"Os_AppProcIDs"
	.byte		0
	.4byte		.L11882
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L441:
	.sleb128	11
	.byte		"Os_AppCounterIDs"
	.byte		0
	.4byte		.L11885
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L442:
	.sleb128	11
	.byte		"Os_AppAlarmIDs"
	.byte		0
	.4byte		.L11888
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L443:
	.sleb128	11
	.byte		"Os_AppSchTblIDs"
	.byte		0
	.4byte		.L11891
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L444:
	.sleb128	11
	.byte		"Os_CoreAssigment"
	.byte		0
	.4byte		.L11399
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
	.sleb128	0
.L11858:
.L11862:
	.sleb128	10
	.4byte		.L11850
	.uleb128	52
	.uleb128	1
	.4byte		.L11894-.L2
	.uleb128	1
.L432:
	.sleb128	11
	.byte		"Os_AppState"
	.byte		0
	.4byte		.L11741
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11894:
.L11838:
	.sleb128	10
	.4byte		.L11895
	.uleb128	32
	.uleb128	1
	.4byte		.L11896-.L2
	.uleb128	12
.L429:
	.sleb128	11
	.byte		"Os_ResourcePriority"
	.byte		0
	.4byte		.L11818
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L430:
	.sleb128	11
	.byte		"Os_ResourceAccessRights"
	.byte		0
	.4byte		.L11824
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L431:
	.sleb128	11
	.byte		"Os_ResourceDyn"
	.byte		0
	.4byte		.L11897
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11896:
.L11899:
	.sleb128	10
	.4byte		.L11895
	.uleb128	32
	.uleb128	1
	.4byte		.L11900-.L2
	.uleb128	4
.L428:
	.sleb128	11
	.byte		"Os_LockerProc"
	.byte		0
	.4byte		.L11530
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11900:
.L11521:
	.sleb128	10
	.4byte		.L11895
	.uleb128	32
	.uleb128	1
	.4byte		.L11901-.L2
	.uleb128	144
.L423:
	.sleb128	11
	.byte		"Os_Error"
	.byte		0
	.4byte		.L11902
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L424:
	.sleb128	11
	.byte		"Os_ExceptionStatus"
	.byte		0
	.4byte		.L11904
	.sleb128	2
	.byte		0x23
	.uleb128	120
	.byte		0x1
	.sleb128	0
.L11901:
.L11552:
	.sleb128	10
	.4byte		.L11895
	.uleb128	32
	.uleb128	1
	.4byte		.L11906-.L2
	.uleb128	24
.L417:
	.sleb128	11
	.byte		"Os_DisAllInt"
	.byte		0
	.4byte		.L11907
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L418:
	.sleb128	11
	.byte		"Os_EnAllInt"
	.byte		0
	.4byte		.L11907
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L419:
	.sleb128	11
	.byte		"Os_SusAllInt"
	.byte		0
	.4byte		.L11907
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L420:
	.sleb128	11
	.byte		"Os_ResAllInt"
	.byte		0
	.4byte		.L11907
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L421:
	.sleb128	11
	.byte		"Os_SusOsInt"
	.byte		0
	.4byte		.L11907
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L422:
	.sleb128	11
	.byte		"Os_ResOsInt"
	.byte		0
	.4byte		.L11907
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L11906:
.L11905:
	.sleb128	10
	.4byte		.L11895
	.uleb128	32
	.uleb128	1
	.4byte		.L11912-.L2
	.uleb128	20
.L412:
	.sleb128	11
	.byte		"Os_ExceptionType"
	.byte		0
	.4byte		.L11913
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L413:
	.sleb128	11
	.byte		"Os_ExceptionCause"
	.byte		0
	.4byte		.L11426
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L414:
	.sleb128	11
	.byte		"Os_ExceptionAuxiliaryCause"
	.byte		0
	.4byte		.L11426
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L415:
	.sleb128	11
	.byte		"Os_ExceptionExecutionAddress"
	.byte		0
	.4byte		.L11507
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L416:
	.sleb128	11
	.byte		"Os_ExceptionAccessAddress"
	.byte		0
	.4byte		.L11507
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11912:
.L11903:
	.sleb128	10
	.4byte		.L11915
	.uleb128	174
	.uleb128	1
	.4byte		.L11916-.L2
	.uleb128	120
.L409:
	.sleb128	11
	.byte		"Os_ShutdownError"
	.byte		0
	.4byte		.L11917
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L410:
	.sleb128	11
	.byte		"Os_ParameterError"
	.byte		0
	.4byte		.L11919
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L411:
	.sleb128	11
	.byte		"Os_ServiceError"
	.byte		0
	.4byte		.L11921
	.sleb128	2
	.byte		0x23
	.uleb128	112
	.byte		0x1
	.sleb128	0
.L11916:
.L11922:
	.sleb128	10
	.4byte		.L11915
	.uleb128	174
	.uleb128	1
	.4byte		.L11923-.L2
	.uleb128	8
.L406:
	.sleb128	11
	.byte		"Os_ServiceTrace"
	.byte		0
	.4byte		.L11924
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L407:
	.sleb128	11
	.byte		"Os_LastError"
	.byte		0
	.4byte		.L11417
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L408:
	.sleb128	11
	.byte		"Os_FaultyServiceId"
	.byte		0
	.4byte		.L11925
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11923:
.L11920:
	.sleb128	10
	.4byte		.L11915
	.uleb128	174
	.uleb128	1
	.4byte		.L11927-.L2
	.uleb128	104
.L381:
	.sleb128	11
	.byte		"Os_Err_TaskID"
	.byte		0
	.4byte		.L11423
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L382:
	.sleb128	11
	.byte		"Os_Err_ResID"
	.byte		0
	.4byte		.L11760
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L383:
	.sleb128	11
	.byte		"Os_Err_MaskType_Mask"
	.byte		0
	.4byte		.L11743
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L384:
	.sleb128	11
	.byte		"Os_Err_AlarmID"
	.byte		0
	.4byte		.L11701
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L385:
	.sleb128	11
	.byte		"Os_Err_TicksStart"
	.byte		0
	.4byte		.L11703
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L386:
	.sleb128	11
	.byte		"Os_Err_TicksCycle"
	.byte		0
	.4byte		.L11703
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L387:
	.sleb128	11
	.byte		"Os_Err_FuncIndex"
	.byte		0
	.4byte		.L11691
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L388:
	.sleb128	11
	.byte		"Os_Err_FuncParamRefType"
	.byte		0
	.4byte		.L11692
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L389:
	.sleb128	11
	.byte		"Os_Err_ApplID"
	.byte		0
	.4byte		.L11696
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L390:
	.sleb128	11
	.byte		"Os_Err_ApplStateRefType"
	.byte		0
	.4byte		.L11739
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L391:
	.sleb128	11
	.byte		"Os_Err_ObjType"
	.byte		0
	.4byte		.L11697
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L392:
	.sleb128	11
	.byte		"Os_Err_SchedID"
	.byte		0
	.4byte		.L11714
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L393:
	.sleb128	11
	.byte		"Os_Err_SchedID_Next"
	.byte		0
	.4byte		.L11714
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L394:
	.sleb128	11
	.byte		"Os_Err_CntID"
	.byte		0
	.4byte		.L11727
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L395:
	.sleb128	11
	.byte		"Os_Err_RestartType"
	.byte		0
	.4byte		.L11736
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
.L396:
	.sleb128	11
	.byte		"Os_Err_MaskRefType"
	.byte		0
	.4byte		.L11747
	.sleb128	2
	.byte		0x23
	.uleb128	64
	.byte		0x1
.L397:
	.sleb128	11
	.byte		"Os_Err_TaskStateRef"
	.byte		0
	.4byte		.L11752
	.sleb128	2
	.byte		0x23
	.uleb128	68
	.byte		0x1
.L398:
	.sleb128	11
	.byte		"Os_Err_TickRef_Ticks"
	.byte		0
	.4byte		.L11706
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.byte		0x1
.L399:
	.sleb128	11
	.byte		"Os_Err_AlarmBaseRefType_Info"
	.byte		0
	.4byte		.L11709
	.sleb128	2
	.byte		0x23
	.uleb128	76
	.byte		0x1
.L400:
	.sleb128	11
	.byte		"Os_Err_TaskIDRef"
	.byte		0
	.4byte		.L11421
	.sleb128	2
	.byte		0x23
	.uleb128	80
	.byte		0x1
.L401:
	.sleb128	11
	.byte		"Os_Err_TblStatusRefType"
	.byte		0
	.4byte		.L11719
	.sleb128	2
	.byte		0x23
	.uleb128	84
	.byte		0x1
.L402:
	.sleb128	11
	.byte		"Os_Err_TickRef_ElapsedTicks"
	.byte		0
	.4byte		.L11706
	.sleb128	2
	.byte		0x23
	.uleb128	88
	.byte		0x1
.L403:
	.sleb128	11
	.byte		"Os_Err_ObjObj"
	.byte		0
	.4byte		.L11425
	.sleb128	2
	.byte		0x23
	.uleb128	92
	.byte		0x1
.L404:
	.sleb128	11
	.byte		"Os_Err_SpinlockID"
	.byte		0
	.4byte		.L11682
	.sleb128	2
	.byte		0x23
	.uleb128	96
	.byte		0x1
.L405:
	.sleb128	11
	.byte		"Os_Err_TryToGetSpinlockRef"
	.byte		0
	.4byte		.L11928
	.sleb128	2
	.byte		0x23
	.uleb128	100
	.byte		0x1
	.sleb128	0
.L11927:
.L11918:
	.sleb128	10
	.4byte		.L11915
	.uleb128	174
	.uleb128	1
	.4byte		.L11929-.L2
	.uleb128	8
.L379:
	.sleb128	11
	.byte		"Os_ShutdownErrorCode"
	.byte		0
	.4byte		.L11417
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L380:
	.sleb128	11
	.byte		"Os_ShutdownInternalErrorCode"
	.byte		0
	.4byte		.L11930
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11929:
.L11712:
	.sleb128	10
	.4byte		.L11932
	.uleb128	50
	.uleb128	1
	.4byte		.L11933-.L2
	.uleb128	12
.L376:
	.sleb128	11
	.byte		"maxallowedvalue"
	.byte		0
	.4byte		.L11703
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L377:
	.sleb128	11
	.byte		"ticksperbase"
	.byte		0
	.4byte		.L11703
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L378:
	.sleb128	11
	.byte		"mincycle"
	.byte		0
	.4byte		.L11703
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11933:
.L11548:
	.sleb128	10
	.4byte		.L11934
	.uleb128	87
	.uleb128	7
	.4byte		.L11935-.L2
	.uleb128	8
.L364:
	.sleb128	11
	.byte		"Os_IsrPltId"
	.byte		0
	.4byte		.L11936
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L365:
	.sleb128	11
	.byte		"Os_IsrPltLevel"
	.byte		0
	.4byte		.L11937
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11935:
	.section	.debug_info,,n
.L11397:
	.sleb128	14
	.4byte		.L11477
	.uleb128	155
	.uleb128	1
	.4byte		.L11939-.L2
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
.L11939:
.L11534:
	.sleb128	14
	.4byte		.L11482
	.uleb128	69
	.uleb128	1
	.4byte		.L11940-.L2
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
.L11940:
.L11558:
	.sleb128	14
	.4byte		.L11538
	.uleb128	612
	.uleb128	1
	.4byte		.L11941-.L2
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
.L11941:
.L11563:
	.sleb128	14
	.4byte		.L11538
	.uleb128	60
	.uleb128	1
	.4byte		.L11942-.L2
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
.L11942:
	.section	.debug_info,,n
.L11694:
	.sleb128	16
	.4byte		.L11775
	.uleb128	33
	.uleb128	14
	.4byte		.L11943-.L2
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
.L11943:
.L11846:
	.sleb128	14
	.4byte		.L11803
	.uleb128	80
	.uleb128	13
	.4byte		.L11944-.L2
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
.L11944:
.L11816:
	.sleb128	14
	.4byte		.L11803
	.uleb128	61
	.uleb128	1
	.4byte		.L11945-.L2
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
.L11945:
.L11866:
	.sleb128	14
	.4byte		.L11850
	.uleb128	52
	.uleb128	1
	.4byte		.L11946-.L2
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
.L11946:
.L11914:
	.sleb128	14
	.4byte		.L11895
	.uleb128	32
	.uleb128	1
	.4byte		.L11947-.L2
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
.L11947:
.L11931:
	.sleb128	14
	.4byte		.L11915
	.uleb128	174
	.uleb128	1
	.4byte		.L11948-.L2
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
.L11948:
.L11926:
	.sleb128	14
	.4byte		.L11915
	.uleb128	86
	.uleb128	1
	.4byte		.L11949-.L2
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
.L11949:
.L11685:
	.sleb128	14
	.4byte		.L11950
	.uleb128	43
	.uleb128	1
	.4byte		.L11951-.L2
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
.L11951:
.L11755:
	.sleb128	14
	.4byte		.L11952
	.uleb128	37
	.uleb128	1
	.4byte		.L11953-.L2
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
.L11953:
.L11722:
	.sleb128	14
	.4byte		.L11954
	.uleb128	40
	.uleb128	1
	.4byte		.L11955-.L2
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
.L11955:
.L11698:
	.sleb128	14
	.4byte		.L11956
	.uleb128	47
	.uleb128	1
	.4byte		.L11957-.L2
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
.L11957:
.L11769:
	.sleb128	14
	.4byte		.L11932
	.uleb128	42
	.uleb128	13
	.4byte		.L11958-.L2
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
.L11958:
.L11669:
	.sleb128	14
	.4byte		.L11959
	.uleb128	83
	.uleb128	14
	.4byte		.L11960-.L2
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
.L11960:
	.section	.debug_info,,n
.L11396:
	.sleb128	17
	.byte		"Os_IsrStateType"
	.byte		0
	.4byte		.L11397
	.section	.debug_info,,n
.L11402:
	.sleb128	18
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L11401:
	.sleb128	17
	.byte		"uint16"
	.byte		0
	.4byte		.L11402
.L11400:
	.sleb128	17
	.byte		"CoreIdType"
	.byte		0
	.4byte		.L11401
	.section	.debug_info,,n
.L11399:
	.sleb128	19
	.4byte		.L11400
.L11419:
	.sleb128	18
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L11418:
	.sleb128	17
	.byte		"uint8"
	.byte		0
	.4byte		.L11419
.L11417:
	.sleb128	17
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L11418
.L11427:
	.sleb128	18
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L11426:
	.sleb128	17
	.byte		"uint32"
	.byte		0
	.4byte		.L11427
.L11425:
	.sleb128	17
	.byte		"Os_ObjectType"
	.byte		0
	.4byte		.L11426
.L11424:
	.sleb128	17
	.byte		"ProcType"
	.byte		0
	.4byte		.L11425
.L11423:
	.sleb128	17
	.byte		"TaskType"
	.byte		0
	.4byte		.L11424
	.section	.debug_info,,n
.L11422:
	.sleb128	20
	.4byte		.L11423
.L11421:
	.sleb128	17
	.byte		"TaskRefType"
	.byte		0
	.4byte		.L11422
.L11430:
	.sleb128	17
	.byte		"Os_APICallType"
	.byte		0
	.4byte		.L11431
.L11441:
	.sleb128	17
	.byte		"Os_ProcStatType"
	.byte		0
	.4byte		.L11442
.L11440:
	.sleb128	19
	.4byte		.L11441
.L11439:
	.sleb128	20
	.4byte		.L11440
.L11438:
	.sleb128	19
	.4byte		.L11439
.L11445:
	.sleb128	19
	.4byte		.L11423
.L11444:
	.sleb128	20
	.4byte		.L11445
.L11443:
	.sleb128	19
	.4byte		.L11444
.L11454:
	.sleb128	20
	.4byte		.L11431
.L11469:
	.sleb128	17
	.byte		"Os_Core_StatType"
	.byte		0
	.4byte		.L11470
.L11468:
	.sleb128	19
	.4byte		.L11469
	.section	.debug_info,,n
.L11466:
	.sleb128	21
	.4byte		.L11467-.L2
	.4byte		.L11468
	.section	.debug_info,,n
	.sleb128	22
	.uleb128	1
	.sleb128	0
.L11467:
.L11474:
	.sleb128	17
	.byte		"Os_Core_DynSharedType"
	.byte		0
	.4byte		.L11475
.L11472:
	.sleb128	21
	.4byte		.L11473-.L2
	.4byte		.L11474
	.sleb128	22
	.uleb128	1
	.sleb128	0
.L11473:
.L11481:
	.sleb128	20
	.4byte		.L11439
.L11480:
	.sleb128	19
	.4byte		.L11481
.L11478:
	.sleb128	21
	.4byte		.L11479-.L2
	.4byte		.L11480
	.sleb128	22
	.uleb128	1
	.sleb128	0
.L11479:
.L11486:
	.sleb128	17
	.byte		"Os_Core_DynInitType"
	.byte		0
	.4byte		.L11487
.L11485:
	.sleb128	20
	.4byte		.L11486
.L11484:
	.sleb128	19
	.4byte		.L11485
.L11490:
	.sleb128	17
	.byte		"Os_Core_DynType"
	.byte		0
	.4byte		.L11491
.L11489:
	.sleb128	20
	.4byte		.L11490
.L11488:
	.sleb128	19
	.4byte		.L11489
.L11494:
	.sleb128	17
	.byte		"Os_DispatchElementType"
	.byte		0
	.4byte		.L11495
.L11493:
	.sleb128	20
	.4byte		.L11494
.L11492:
	.sleb128	19
	.4byte		.L11493
	.section	.debug_info,,n
.L11499:
	.sleb128	23
	.4byte		.L11500-.L2
	.byte		0x1
	.section	.debug_info,,n
	.sleb128	24
	.4byte		.L11438
	.sleb128	0
.L11500:
.L11498:
	.sleb128	20
	.4byte		.L11499
.L11497:
	.sleb128	17
	.byte		"Os_PrepareContextFunctionType"
	.byte		0
	.4byte		.L11498
.L11496:
	.sleb128	19
	.4byte		.L11497
.L11507:
	.sleb128	17
	.byte		"Os_StackType"
	.byte		0
	.4byte		.L11426
.L11506:
	.sleb128	20
	.4byte		.L11507
	.section	.debug_info,,n
.L11504:
	.sleb128	25
	.4byte		.L11505-.L2
	.4byte		.L11506
	.byte		0x1
	.sleb128	24
	.4byte		.L11439
	.sleb128	0
.L11505:
.L11503:
	.sleb128	20
	.4byte		.L11504
.L11502:
	.sleb128	17
	.byte		"Os_GetStackPointerFunctionType"
	.byte		0
	.4byte		.L11503
.L11501:
	.sleb128	19
	.4byte		.L11502
.L11509:
	.sleb128	17
	.byte		"Os_IsrDynInitType"
	.byte		0
	.4byte		.L11510
.L11511:
	.sleb128	17
	.byte		"Os_SchedulerDynInitType"
	.byte		0
	.4byte		.L11512
.L11515:
	.sleb128	17
	.byte		"Os_ApplicationStatType"
	.byte		0
	.4byte		.L11516
.L11514:
	.sleb128	19
	.4byte		.L11515
.L11513:
	.sleb128	20
	.4byte		.L11514
.L11518:
	.sleb128	17
	.byte		"Os_DispatcherType"
	.byte		0
	.4byte		.L11519
.L11520:
	.sleb128	17
	.byte		"Os_PublicData_NoInitType"
	.byte		0
	.4byte		.L11521
.L11523:
	.sleb128	17
	.byte		"Os_SchedulerDynType"
	.byte		0
	.4byte		.L11524
.L11525:
	.sleb128	17
	.byte		"Os_IsrDynType"
	.byte		0
	.4byte		.L11526
.L11527:
	.sleb128	17
	.byte		"Os_HooksDynType"
	.byte		0
	.4byte		.L11528
.L11531:
	.sleb128	19
	.4byte		.L11442
.L11530:
	.sleb128	20
	.4byte		.L11531
.L11533:
	.sleb128	17
	.byte		"Os_ScheduleType"
	.byte		0
	.4byte		.L11534
.L11535:
	.sleb128	17
	.byte		"Os_PriorityType"
	.byte		0
	.4byte		.L11426
.L11536:
	.sleb128	17
	.byte		"Os_SchedulerQueueElementType"
	.byte		0
	.4byte		.L11537
.L11540:
	.sleb128	20
	.4byte		.L11537
.L11542:
	.sleb128	17
	.byte		"Os_IsrRegister_t"
	.byte		0
	.4byte		.L11426
.L11543:
	.sleb128	17
	.byte		"boolean"
	.byte		0
	.4byte		.L11419
.L11547:
	.sleb128	17
	.byte		"Os_IsrPlatformConfigType"
	.byte		0
	.4byte		.L11548
.L11546:
	.sleb128	19
	.4byte		.L11547
.L11545:
	.sleb128	20
	.4byte		.L11546
.L11551:
	.sleb128	17
	.byte		"Os_IsrApiTable"
	.byte		0
	.4byte		.L11552
.L11550:
	.sleb128	19
	.4byte		.L11551
.L11549:
	.sleb128	20
	.4byte		.L11550
.L11553:
	.sleb128	21
	.4byte		.L11554-.L2
	.4byte		.L11426
	.sleb128	22
	.uleb128	7
	.sleb128	0
.L11554:
.L11557:
	.sleb128	17
	.byte		"Os_DispatchKindType"
	.byte		0
	.4byte		.L11558
.L11559:
	.sleb128	17
	.byte		"ISRType"
	.byte		0
	.4byte		.L11424
.L11560:
	.sleb128	20
	.4byte		.L11430
.L11562:
	.sleb128	17
	.byte		"Os_API_LockType"
	.byte		0
	.4byte		.L11563
.L11566:
	.sleb128	23
	.4byte		.L11567-.L2
	.byte		0x1
	.sleb128	24
	.4byte		.L11454
.L11568:
	.sleb128	19
	.4byte		.L11530
	.sleb128	24
	.4byte		.L11568
	.sleb128	0
.L11567:
.L11565:
	.sleb128	20
	.4byte		.L11566
.L11564:
	.sleb128	17
	.byte		"Os_API_Func_Type"
	.byte		0
	.4byte		.L11565
.L11571:
	.sleb128	17
	.byte		"Os_API_StartOsType"
	.byte		0
	.4byte		.L11572
.L11573:
	.sleb128	17
	.byte		"Os_API_ShutdownOsType"
	.byte		0
	.4byte		.L11574
.L11575:
	.sleb128	17
	.byte		"Os_API_ShutdownOsInternalType"
	.byte		0
	.4byte		.L11576
.L11577:
	.sleb128	17
	.byte		"Os_API_ShutdownAllCoresType"
	.byte		0
	.4byte		.L11578
.L11579:
	.sleb128	17
	.byte		"Os_API_GetNumberOfActivatedCoresType"
	.byte		0
	.4byte		.L11580
.L11581:
	.sleb128	17
	.byte		"Os_API_ApiStartCoreType"
	.byte		0
	.4byte		.L11582
.L11583:
	.sleb128	17
	.byte		"Os_API_StartNonAutosarCoreType"
	.byte		0
	.4byte		.L11584
.L11585:
	.sleb128	17
	.byte		"Os_API_GetCoreIDType"
	.byte		0
	.4byte		.L11586
.L11587:
	.sleb128	17
	.byte		"Os_API_ActivateTaskType"
	.byte		0
	.4byte		.L11588
.L11589:
	.sleb128	17
	.byte		"Os_API_ChainTaskType"
	.byte		0
	.4byte		.L11590
.L11591:
	.sleb128	17
	.byte		"Os_API_GetTaskIDType"
	.byte		0
	.4byte		.L11592
.L11593:
	.sleb128	17
	.byte		"Os_API_GetTaskStateType"
	.byte		0
	.4byte		.L11594
.L11595:
	.sleb128	17
	.byte		"Os_API_SetEventType"
	.byte		0
	.4byte		.L11596
.L11597:
	.sleb128	17
	.byte		"Os_API_ClearEventType"
	.byte		0
	.4byte		.L11598
.L11599:
	.sleb128	17
	.byte		"Os_API_GetEventType"
	.byte		0
	.4byte		.L11600
.L11601:
	.sleb128	17
	.byte		"Os_API_WaitEventType"
	.byte		0
	.4byte		.L11602
.L11603:
	.sleb128	17
	.byte		"Os_API_GetResourceType"
	.byte		0
	.4byte		.L11604
.L11605:
	.sleb128	17
	.byte		"Os_API_ReleaseResourceType"
	.byte		0
	.4byte		.L11606
.L11607:
	.sleb128	17
	.byte		"Os_API_GetAlarmBaseType"
	.byte		0
	.4byte		.L11608
.L11609:
	.sleb128	17
	.byte		"Os_API_GetAlarmType"
	.byte		0
	.4byte		.L11610
.L11611:
	.sleb128	17
	.byte		"Os_API_SetRelAlarmType"
	.byte		0
	.4byte		.L11612
.L11613:
	.sleb128	17
	.byte		"Os_API_SetAbsAlarmType"
	.byte		0
	.4byte		.L11614
.L11615:
	.sleb128	17
	.byte		"Os_API_CancelAlarmType"
	.byte		0
	.4byte		.L11616
.L11617:
	.sleb128	17
	.byte		"Os_API_GetApplicationStateType"
	.byte		0
	.4byte		.L11618
.L11619:
	.sleb128	17
	.byte		"Os_API_TerminateApplicationType"
	.byte		0
	.4byte		.L11620
.L11621:
	.sleb128	17
	.byte		"Os_API_GetApplicationIDType"
	.byte		0
	.4byte		.L11622
.L11623:
	.sleb128	17
	.byte		"Os_API_GetISRIDType"
	.byte		0
	.4byte		.L11624
.L11625:
	.sleb128	17
	.byte		"Os_API_GetActiveApplicationModeType"
	.byte		0
	.4byte		.L11626
.L11627:
	.sleb128	17
	.byte		"Os_API_IncrementCounterType"
	.byte		0
	.4byte		.L11628
.L11629:
	.sleb128	17
	.byte		"Os_API_GetCounterValueType"
	.byte		0
	.4byte		.L11630
.L11631:
	.sleb128	17
	.byte		"Os_API_GetElapsedValueType"
	.byte		0
	.4byte		.L11632
.L11633:
	.sleb128	17
	.byte		"Os_API_StartScheduleTableAbsType"
	.byte		0
	.4byte		.L11634
.L11635:
	.sleb128	17
	.byte		"Os_API_StartScheduleTableRelType"
	.byte		0
	.4byte		.L11636
.L11637:
	.sleb128	17
	.byte		"Os_API_StopScheduleTableType"
	.byte		0
	.4byte		.L11638
.L11639:
	.sleb128	17
	.byte		"Os_API_GetScheduleTableStatusType"
	.byte		0
	.4byte		.L11640
.L11641:
	.sleb128	17
	.byte		"Os_API_NextScheduleTableType"
	.byte		0
	.4byte		.L11642
.L11643:
	.sleb128	17
	.byte		"Os_API_StartScheduleTableSynchronType"
	.byte		0
	.4byte		.L11644
.L11645:
	.sleb128	17
	.byte		"Os_API_SyncScheduleTableType"
	.byte		0
	.4byte		.L11646
.L11647:
	.sleb128	17
	.byte		"Os_API_SetScheduleTableAsyncType"
	.byte		0
	.4byte		.L11648
.L11649:
	.sleb128	17
	.byte		"Os_API_CheckObjectAccessType"
	.byte		0
	.4byte		.L11650
.L11651:
	.sleb128	17
	.byte		"Os_API_CheckObjectOwnershipType"
	.byte		0
	.4byte		.L11652
.L11653:
	.sleb128	17
	.byte		"Os_API_CallTrustedFunctionType"
	.byte		0
	.4byte		.L11654
.L11655:
	.sleb128	17
	.byte		"Os_API_StackUsageType"
	.byte		0
	.4byte		.L11656
.L11657:
	.sleb128	17
	.byte		"Os_API_GetSpinlockType"
	.byte		0
	.4byte		.L11658
.L11659:
	.sleb128	17
	.byte		"Os_API_ReleaseSpinlockType"
	.byte		0
	.4byte		.L11660
.L11661:
	.sleb128	17
	.byte		"Os_API_TryToGetSpinlockType"
	.byte		0
	.4byte		.L11662
.L11663:
	.sleb128	17
	.byte		"Os_API_IocTransferType"
	.byte		0
	.4byte		.L11664
.L11665:
	.sleb128	17
	.byte		"Os_API_ControlIdleType"
	.byte		0
	.4byte		.L11666
.L11668:
	.sleb128	17
	.byte		"IdleModeType"
	.byte		0
	.4byte		.L11669
.L11673:
	.sleb128	17
	.byte		"Os_IOC_ChannelStatType"
	.byte		0
	.4byte		.L11674
.L11672:
	.sleb128	19
	.4byte		.L11673
.L11671:
	.sleb128	20
	.4byte		.L11672
	.section	.debug_info,,n
.L11680:
	.sleb128	26
	.byte		"void"
	.byte		0
	.byte		0x0
.L11679:
	.sleb128	20
	.4byte		.L11680
.L11677:
	.sleb128	21
	.4byte		.L11678-.L2
	.4byte		.L11679
	.sleb128	22
	.uleb128	1
	.sleb128	0
.L11678:
.L11676:
	.sleb128	17
	.byte		"Os_IOC_DataType"
	.byte		0
	.4byte		.L11677
.L11675:
	.sleb128	20
	.4byte		.L11676
.L11682:
	.sleb128	17
	.byte		"SpinlockIdType"
	.byte		0
	.4byte		.L11401
.L11684:
	.sleb128	17
	.byte		"TryToGetSpinlockType"
	.byte		0
	.4byte		.L11685
.L11683:
	.sleb128	20
	.4byte		.L11684
.L11689:
	.sleb128	20
	.4byte		.L11418
.L11691:
	.sleb128	17
	.byte		"TrustedFunctionIndexType"
	.byte		0
	.4byte		.L11426
.L11692:
	.sleb128	17
	.byte		"TrustedFunctionParameterRefType"
	.byte		0
	.4byte		.L11679
.L11693:
	.sleb128	17
	.byte		"Os_TrustedFunctionReturnValueType"
	.byte		0
	.4byte		.L11694
.L11696:
	.sleb128	17
	.byte		"ApplicationType"
	.byte		0
	.4byte		.L11418
.L11697:
	.sleb128	17
	.byte		"ObjectTypeType"
	.byte		0
	.4byte		.L11698
.L11701:
	.sleb128	17
	.byte		"AlarmType"
	.byte		0
	.4byte		.L11425
.L11703:
	.sleb128	17
	.byte		"TickType"
	.byte		0
	.4byte		.L11426
.L11707:
	.sleb128	20
	.4byte		.L11703
.L11706:
	.sleb128	17
	.byte		"TickRefType"
	.byte		0
	.4byte		.L11707
.L11711:
	.sleb128	17
	.byte		"AlarmBaseType"
	.byte		0
	.4byte		.L11712
.L11710:
	.sleb128	20
	.4byte		.L11711
.L11709:
	.sleb128	17
	.byte		"AlarmBaseRefType"
	.byte		0
	.4byte		.L11710
.L11714:
	.sleb128	17
	.byte		"ScheduleTableType"
	.byte		0
	.4byte		.L11426
.L11721:
	.sleb128	17
	.byte		"ScheduleTableStatusType"
	.byte		0
	.4byte		.L11722
.L11720:
	.sleb128	20
	.4byte		.L11721
.L11719:
	.sleb128	17
	.byte		"ScheduleTableStatusRefType"
	.byte		0
	.4byte		.L11720
.L11727:
	.sleb128	17
	.byte		"CounterType"
	.byte		0
	.4byte		.L11426
.L11731:
	.sleb128	23
	.4byte		.L11732-.L2
	.byte		0x1
	.sleb128	24
	.4byte		.L11454
	.sleb128	0
.L11732:
.L11730:
	.sleb128	20
	.4byte		.L11731
.L11729:
	.sleb128	17
	.byte		"LightServiceFunctionType"
	.byte		0
	.4byte		.L11730
.L11736:
	.sleb128	17
	.byte		"RestartType"
	.byte		0
	.4byte		.L11418
.L11741:
	.sleb128	17
	.byte		"ApplicationStateType"
	.byte		0
	.4byte		.L11418
.L11740:
	.sleb128	20
	.4byte		.L11741
.L11739:
	.sleb128	17
	.byte		"ApplicationStateRefType"
	.byte		0
	.4byte		.L11740
.L11745:
	.sleb128	18
	.byte		"unsigned long long"
	.byte		0
	.byte		0x7
	.byte		0x8
.L11744:
	.sleb128	17
	.byte		"uint64"
	.byte		0
	.4byte		.L11745
.L11743:
	.sleb128	17
	.byte		"EventMaskType"
	.byte		0
	.4byte		.L11744
.L11748:
	.sleb128	20
	.4byte		.L11743
.L11747:
	.sleb128	17
	.byte		"EventMaskRefType"
	.byte		0
	.4byte		.L11748
.L11754:
	.sleb128	17
	.byte		"TaskStateType"
	.byte		0
	.4byte		.L11755
.L11753:
	.sleb128	20
	.4byte		.L11754
.L11752:
	.sleb128	17
	.byte		"TaskStateRefType"
	.byte		0
	.4byte		.L11753
.L11760:
	.sleb128	17
	.byte		"ResourceType"
	.byte		0
	.4byte		.L11426
.L11763:
	.sleb128	17
	.byte		"AppModeType"
	.byte		0
	.4byte		.L11426
.L11768:
	.sleb128	17
	.byte		"Os_CoreShutdownType"
	.byte		0
	.4byte		.L11769
.L11772:
	.sleb128	20
	.4byte		.L11417
.L11779:
	.sleb128	17
	.byte		"Os_IOC_ChannelDynType"
	.byte		0
	.4byte		.L11780
.L11778:
	.sleb128	20
	.4byte		.L11779
.L11777:
	.sleb128	19
	.4byte		.L11778
.L11781:
	.sleb128	17
	.byte		"Os_IOC_ChannelSizeType"
	.byte		0
	.4byte		.L11401
.L11782:
	.sleb128	19
	.4byte		.L11679
.L11783:
	.sleb128	19
	.4byte		.L11401
.L11785:
	.sleb128	17
	.byte		"Os_IOC_DataCountType"
	.byte		0
	.4byte		.L11418
.L11784:
	.sleb128	19
	.4byte		.L11785
.L11789:
	.sleb128	17
	.byte		"Os_IOC_DataDescriptorType"
	.byte		0
	.4byte		.L11790
.L11788:
	.sleb128	19
	.4byte		.L11789
.L11787:
	.sleb128	20
	.4byte		.L11788
.L11786:
	.sleb128	19
	.4byte		.L11787
.L11793:
	.sleb128	17
	.byte		"Os_LockResourceType"
	.byte		0
	.4byte		.L11418
.L11792:
	.sleb128	20
	.4byte		.L11793
.L11791:
	.sleb128	19
	.4byte		.L11792
.L11796:
	.sleb128	17
	.byte		"Os_IOC_DataLengthType"
	.byte		0
	.4byte		.L11401
.L11795:
	.sleb128	19
	.4byte		.L11796
.L11798:
	.sleb128	17
	.byte		"Os_IOC_DataOffsetType"
	.byte		0
	.4byte		.L11401
.L11797:
	.sleb128	19
	.4byte		.L11798
.L11802:
	.sleb128	17
	.byte		"Os_HookIDType"
	.byte		0
	.4byte		.L11401
.L11807:
	.sleb128	17
	.byte		"Os_ProcDynType"
	.byte		0
	.4byte		.L11808
.L11806:
	.sleb128	20
	.4byte		.L11807
.L11805:
	.sleb128	19
	.4byte		.L11806
.L11812:
	.sleb128	17
	.byte		"Os_ProcStackType"
	.byte		0
	.4byte		.L11813
.L11811:
	.sleb128	19
	.4byte		.L11812
.L11810:
	.sleb128	20
	.4byte		.L11811
.L11809:
	.sleb128	19
	.4byte		.L11810
.L11815:
	.sleb128	17
	.byte		"Os_ProcKindType"
	.byte		0
	.4byte		.L11816
.L11814:
	.sleb128	19
	.4byte		.L11815
.L11817:
	.sleb128	19
	.4byte		.L11743
.L11818:
	.sleb128	19
	.4byte		.L11535
.L11820:
	.sleb128	17
	.byte		"Os_ActivationCountType"
	.byte		0
	.4byte		.L11426
.L11819:
	.sleb128	19
	.4byte		.L11820
.L11821:
	.sleb128	19
	.4byte		.L11506
.L11822:
	.sleb128	19
	.4byte		.L11513
.L11826:
	.sleb128	17
	.byte		"Os_AccessStorageType"
	.byte		0
	.4byte		.L11426
.L11825:
	.sleb128	19
	.4byte		.L11826
.L11824:
	.sleb128	20
	.4byte		.L11825
.L11823:
	.sleb128	19
	.4byte		.L11824
.L11830:
	.sleb128	23
	.4byte		.L11831-.L2
	.byte		0x1
	.sleb128	0
.L11831:
.L11829:
	.sleb128	20
	.4byte		.L11830
.L11828:
	.sleb128	17
	.byte		"Os_ProcEntryPointType"
	.byte		0
	.4byte		.L11829
.L11827:
	.sleb128	19
	.4byte		.L11828
.L11832:
	.sleb128	19
	.4byte		.L11760
.L11837:
	.sleb128	17
	.byte		"Os_ResourceStatType"
	.byte		0
	.4byte		.L11838
.L11836:
	.sleb128	19
	.4byte		.L11837
.L11835:
	.sleb128	20
	.4byte		.L11836
.L11834:
	.sleb128	17
	.byte		"Os_ResourceStack"
	.byte		0
	.4byte		.L11835
.L11833:
	.sleb128	20
	.4byte		.L11834
.L11839:
	.sleb128	19
	.4byte		.L11540
.L11840:
	.sleb128	19
	.4byte		.L11545
.L11843:
	.sleb128	17
	.byte		"Os_StackSizeType"
	.byte		0
	.4byte		.L11426
.L11842:
	.sleb128	19
	.4byte		.L11843
.L11845:
	.sleb128	17
	.byte		"Os_ProcContexStateType"
	.byte		0
	.4byte		.L11846
.L11848:
	.sleb128	19
	.4byte		.L11849
.L11847:
	.sleb128	20
	.4byte		.L11848
.L11852:
	.sleb128	19
	.4byte		.L11682
.L11855:
	.sleb128	17
	.byte		"Os_SpinlockDynType"
	.byte		0
	.4byte		.L11856
.L11854:
	.sleb128	20
	.4byte		.L11855
.L11853:
	.sleb128	19
	.4byte		.L11854
.L11861:
	.sleb128	17
	.byte		"Os_ApplicationDynType"
	.byte		0
	.4byte		.L11862
.L11860:
	.sleb128	20
	.4byte		.L11861
.L11859:
	.sleb128	19
	.4byte		.L11860
.L11863:
	.sleb128	19
	.4byte		.L11696
.L11865:
	.sleb128	17
	.byte		"Os_ApplicationKindType"
	.byte		0
	.4byte		.L11866
.L11864:
	.sleb128	19
	.4byte		.L11865
.L11870:
	.sleb128	23
	.4byte		.L11871-.L2
	.byte		0x1
	.sleb128	24
	.4byte		.L11417
	.sleb128	0
.L11871:
.L11869:
	.sleb128	20
	.4byte		.L11870
.L11868:
	.sleb128	17
	.byte		"Os_ShutdownHookFuncType"
	.byte		0
	.4byte		.L11869
.L11867:
	.sleb128	19
	.4byte		.L11868
.L11875:
	.sleb128	23
	.4byte		.L11876-.L2
	.byte		0x1
	.sleb128	0
.L11876:
.L11874:
	.sleb128	20
	.4byte		.L11875
.L11873:
	.sleb128	17
	.byte		"Os_StartUpHookFuncType"
	.byte		0
	.4byte		.L11874
.L11872:
	.sleb128	19
	.4byte		.L11873
.L11880:
	.sleb128	23
	.4byte		.L11881-.L2
	.byte		0x1
	.sleb128	24
	.4byte		.L11417
	.sleb128	0
.L11881:
.L11879:
	.sleb128	20
	.4byte		.L11880
.L11878:
	.sleb128	17
	.byte		"Os_ErrorHookFuncType"
	.byte		0
	.4byte		.L11879
.L11877:
	.sleb128	19
	.4byte		.L11878
.L11884:
	.sleb128	19
	.4byte		.L11424
.L11883:
	.sleb128	20
	.4byte		.L11884
.L11882:
	.sleb128	19
	.4byte		.L11883
.L11887:
	.sleb128	19
	.4byte		.L11727
.L11886:
	.sleb128	20
	.4byte		.L11887
.L11885:
	.sleb128	19
	.4byte		.L11886
.L11890:
	.sleb128	19
	.4byte		.L11701
.L11889:
	.sleb128	20
	.4byte		.L11890
.L11888:
	.sleb128	19
	.4byte		.L11889
.L11893:
	.sleb128	19
	.4byte		.L11714
.L11892:
	.sleb128	20
	.4byte		.L11893
.L11891:
	.sleb128	19
	.4byte		.L11892
.L11898:
	.sleb128	17
	.byte		"Os_ResourceDynType"
	.byte		0
	.4byte		.L11899
.L11897:
	.sleb128	20
	.4byte		.L11898
.L11902:
	.sleb128	17
	.byte		"Os_ErrorType"
	.byte		0
	.4byte		.L11903
.L11904:
	.sleb128	17
	.byte		"Os_ExceptionStatusType"
	.byte		0
	.4byte		.L11905
.L11910:
	.sleb128	23
	.4byte		.L11911-.L2
	.byte		0x1
	.sleb128	0
.L11911:
.L11909:
	.sleb128	20
	.4byte		.L11910
.L11908:
	.sleb128	17
	.byte		"Os_IsrHandlerFuncType"
	.byte		0
	.4byte		.L11909
.L11907:
	.sleb128	19
	.4byte		.L11908
.L11913:
	.sleb128	17
	.byte		"Os_ExceptionTypeType"
	.byte		0
	.4byte		.L11914
.L11917:
	.sleb128	17
	.byte		"Os_ShudownErrorType"
	.byte		0
	.4byte		.L11918
.L11919:
	.sleb128	17
	.byte		"Os_ParameterErrorType"
	.byte		0
	.4byte		.L11920
.L11921:
	.sleb128	17
	.byte		"Os_ServiceErrorType"
	.byte		0
	.4byte		.L11922
.L11924:
	.sleb128	17
	.byte		"ServiceTraceType"
	.byte		0
	.4byte		.L11418
.L11925:
	.sleb128	17
	.byte		"OSServiceIdType"
	.byte		0
	.4byte		.L11926
.L11928:
	.sleb128	17
	.byte		"TryToGetSpinlockRefType"
	.byte		0
	.4byte		.L11683
.L11930:
	.sleb128	17
	.byte		"Os_SystemInternalErrorType"
	.byte		0
	.4byte		.L11931
.L11936:
	.sleb128	19
	.4byte		.L11426
.L11938:
	.sleb128	17
	.byte		"Os_IsrPlatformLevelType"
	.byte		0
	.4byte		.L11401
.L11937:
	.sleb128	19
	.4byte		.L11938
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11389:
	.sleb128	0
.L11385:
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
.L11410:
	.sleb128	0
.L11406:

	.section	.debug_loc,,n
	.align	0
.L11403:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locend
.L11428:
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),3
	.d2locend
.L11446:
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),4
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),7
	.d2locend
.L11448:
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo8),0
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),3
	.d2locend
.L11455:
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo12),3
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo14),31
	.d2locend
.L11457:
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo16),30
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo18),3
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo14),30
	.d2locend
.L11459:
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo21),28
	.d2locend
.L11461:
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo21),29
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo23),29
	.d2locend
.L11463:
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo25),8
	.d2locreg	%offsetof(.Llo26), %offsetof(.Llo21),8
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "Os_API_GetTaskID"
	.wrcm.nstrlist "calls", "Os_Call_ErrorHook","Os_GetTaskID_Err"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Os_GetTaskID_Err"
	.wrcm.nstrlist "calls", "Os_Isr_GetState"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "GetTaskID"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Os_GetTaskID.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Os_GetTaskID.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Os_GetTaskID.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Os_GetTaskID.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Os_GetTaskID.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Os_GetTaskID.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\Os\Os\core\ssc\make\..\src\scheduler\Os_GetTaskID.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
