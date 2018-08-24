#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Os_Tasks.c"
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
.L11514:
	.section	.Os_TEXT,,c
#$$ld
.L11510:
	.0byte		.L11508
	.d2_line_start	.debug_line.Os_TEXT
	.section	.Os_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_Isr.h"
        .d2line         227,45
#$$ld
.L11517:

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
.L11518:
	.type		Os_Isr_GetState,@function
	.size		Os_Isr_GetState,.-Os_Isr_GetState
# Number of nodes = 36

# Allocations for Os_Isr_GetState
#	?a4		coreId
# FUNC(Os_BoolType,OS_CODE) Os_TaskOnOtherCore(VAR(TaskType,AUTOMATIC) taskId )
	.align		2
	.section	.Os_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\task\\Os_Tasks.c"
        .d2line         45,27
#$$ld
.L11530:

#$$bf	Os_TaskOnOtherCore,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,cr0,lr
	.globl		Os_TaskOnOtherCore
	.d2_cfa_start __cie
Os_TaskOnOtherCore:
.Llo3:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)		# taskId=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# taskId=r0 taskId=r3
	.d2prologue_end
# {
#     CONST(CoreIdType,AUTOMATIC) coreId = OS_GETCOREID();
	.d2line		47
.Llo4:
	mfspr		r5,286		# coreId=r5
.Llo5:
	mr		r5,r5		# coreId=r5 coreId=r5
#     if ((taskId >= Os_ProcRange[coreId].Os_ObjStartId) &&
	.d2line		48
	lis		r3,Os_ProcRange@ha
	e_add16i		r3,r3,Os_ProcRange@l
	rlwinm		r4,r5,3,13,28		# coreId=r5
	lwzx		r3,r3,r4
	se_cmpl		r3,r0		# taskId=r0
	bc		1,1,.L11360	# gt
.Llo9:
	lis		r3,(Os_ProcRange+4)@ha
	e_add16i		r3,r3,(Os_ProcRange+4)@l
.Llo10:
	rlwinm		r5,r5,3,13,28		# coreId=r5 coreId=r5
.Llo11:
	lwzx		r3,r3,r5
	se_cmpl		r3,r0		# taskId=r0
	bc		1,0,.L11360	# lt
#         (taskId <= Os_ProcRange[coreId].Os_ObjEndId) )
#     {
#         return Os_false;
	.d2line		51
.Llo6:
	diab.li		r3,0
	b		.L11359
.L11360:
#     }
#     else
#     {
#         return Os_true;
	.d2line		55
.Llo7:
	diab.li		r3,1
.L11359:
#     }
# }
	.d2line		57
	.d2epilogue_begin
.Llo8:
	lwz		r0,20(r1)		# taskId=r0
	mtspr		lr,r0		# taskId=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11531:
	.type		Os_TaskOnOtherCore,@function
	.size		Os_TaskOnOtherCore,.-Os_TaskOnOtherCore
# Number of nodes = 34

# Allocations for Os_TaskOnOtherCore
#	?a4		taskId
#	?a5		coreId
# FUNC(Os_BoolType, OS_CODE) Os_Proc_CheckId(CONST(ProcType, AUTOMATIC) procId)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         61,28
#$$ld
.L11546:

#$$bf	Os_Proc_CheckId,interprocedural,nostackparams

# Regs written: r0,r1,r3,cr0,lr
	.globl		Os_Proc_CheckId
	.d2_cfa_start __cie
Os_Proc_CheckId:
.Llo12:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
.Llo16:
	stw		r0,20(r1)		# retVal=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# procId=r0 procId=r3
	.d2prologue_end
# {
#     VAR(Os_BoolType, AUTOMATIC) retVal;
# 
#     if((Os_ObjectType)procId > Os_ProcRange[(uint32)OS_CORE_NO - 1U].Os_ObjEndId)
	.d2line		65
.Llo13:
	lis		r3,(Os_ProcRange+12)@ha		# retVal=r3
.Llo14:
	lwz		r3,(Os_ProcRange+12)@l(r3)		# retVal=r3 retVal=r3
	se_cmpl		r3,r0		# retVal=r3 procId=r0
#     {
#         retVal = Os_false;
	.d2line		67
	isel		r3,0,r0,0		# retVal=r3 retVal=r0
.L11365:
#     }
#     else
#     {
#         retVal = Os_true;
	.d2line		71
.Llo15:
	diab.li		r0,1		# retVal=r0
.Llo17:
	isel		r3,r3,r0,0		# retVal=r3 retVal=r3 retVal=r0
.L11366:
#     }
# 
#     return retVal;
	.d2line		74
	mr		r3,r3		# retVal=r3 retVal=r3
# }
	.d2line		75
	.d2epilogue_begin
.Llo18:
	lwz		r0,20(r1)		# retVal=r0
	mtspr		lr,r0		# retVal=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11547:
	.type		Os_Proc_CheckId,@function
	.size		Os_Proc_CheckId,.-Os_Proc_CheckId
# Number of nodes = 16

# Allocations for Os_Proc_CheckId
#	?a4		procId
#	?a5		retVal
# FUNC(Os_BoolType, OS_CODE) Os_Task_CheckId(CONST(TaskType, AUTOMATIC) taskId)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         78,28
#$$ld
.L11555:

#$$bf	Os_Task_CheckId,interprocedural,nostackparams

# Regs written: r0,r1,r3,cr0,lr
	.globl		Os_Task_CheckId
	.d2_cfa_start __cie
Os_Task_CheckId:
.Llo19:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)		# taskId=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# taskId=r0 taskId=r3
	.d2prologue_end
# {
#     VAR(Os_BoolType, AUTOMATIC) retVal;
# 
#     if((Os_ObjectType)taskId > Os_ProcRange[(uint32)OS_CORE_NO - 1U].Os_ObjEndId)
	.d2line		82
.Llo20:
	lis		r3,(Os_ProcRange+12)@ha
.Llo21:
	lwz		r3,(Os_ProcRange+12)@l(r3)
	se_cmpl		r3,r0		# taskId=r0
	bc		0,0,.L11370	# ge
#     {
#         retVal = Os_false;
	.d2line		84
	diab.li		r3,0		# retVal=r3
.Llo25:
	b		.L11371
.L11370:
#     }
#     else if(Os_Proc_Task != Os_Proc_Stat[taskId].Os_ProcKind)
	.d2line		86
.Llo22:
	lis		r3,(Os_Proc_Stat+16)@ha
	e_add16i		r3,r3,(Os_Proc_Stat+16)@l
.Llo23:
	e_mulli		r0,r0,80		# taskId=r0 taskId=r0
	lwzx		r0,r3,r0		# taskId=r0
	se_cmpi		r0,0		# taskId=r0
#     {
#         retVal = Os_false;
	.d2line		88
	diab.li		r0,0		# taskId=r0
.Llo26:
	isel		r0,r4,r0,2		# retVal=r0 retVal=r4 taskId=r0
.L11372:
#     }
#     else
#     {
#         retVal = Os_true;
	.d2line		92
.Llo24:
	diab.li		r3,1		# retVal=r3
	isel		r3,r3,r0,2		# retVal=r3 retVal=r3 retVal=r0
.L11371:
#     }
# 
#     return retVal;
	.d2line		95
.Llo27:
	mr		r3,r3		# retVal=r3 retVal=r3
# }
	.d2line		96
	.d2epilogue_begin
	lwz		r0,20(r1)		# taskId=r0
	mtspr		lr,r0		# taskId=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11556:
	.type		Os_Task_CheckId,@function
	.size		Os_Task_CheckId,.-Os_Task_CheckId
# Number of nodes = 31

# Allocations for Os_Task_CheckId
#	?a4		taskId
#	?a5		retVal
# FUNC(Os_BoolType, OS_CODE) Os_ISR_CheckId(CONST(ISRType, AUTOMATIC) isrId)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         99,28
#$$ld
.L11564:

#$$bf	Os_ISR_CheckId,interprocedural,nostackparams

# Regs written: r0,r1,r3,cr0,lr
	.globl		Os_ISR_CheckId
	.d2_cfa_start __cie
Os_ISR_CheckId:
.Llo28:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)		# isrId=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# isrId=r0 isrId=r3
	.d2prologue_end
# {
#     VAR(Os_BoolType, AUTOMATIC) retVal;
# 
#     if((Os_ObjectType)isrId > Os_ProcRange[(uint32)OS_CORE_NO - 1U].Os_ObjEndId)
	.d2line		103
.Llo29:
	lis		r3,(Os_ProcRange+12)@ha
.Llo30:
	lwz		r3,(Os_ProcRange+12)@l(r3)
	se_cmpl		r3,r0		# isrId=r0
	bc		0,0,.L11378	# ge
#     {
#         retVal = Os_false;
	.d2line		105
	diab.li		r3,0		# retVal=r3
.Llo34:
	b		.L11379
.L11378:
#     }
#     else if(Os_Proc_ISR_CAT2 != Os_Proc_Stat[isrId].Os_ProcKind)
	.d2line		107
.Llo31:
	lis		r3,(Os_Proc_Stat+16)@ha
	e_add16i		r3,r3,(Os_Proc_Stat+16)@l
.Llo32:
	e_mulli		r0,r0,80		# isrId=r0 isrId=r0
	lwzx		r0,r3,r0		# isrId=r0
	se_cmpi		r0,1		# isrId=r0
#     {
#         retVal = Os_false;
	.d2line		109
	diab.li		r0,0		# isrId=r0
.Llo35:
	isel		r0,r4,r0,2		# retVal=r0 retVal=r4 isrId=r0
.L11380:
#     }
#     else
#     {
#         retVal = Os_true;
	.d2line		113
.Llo33:
	diab.li		r3,1		# retVal=r3
	isel		r3,r3,r0,2		# retVal=r3 retVal=r3 retVal=r0
.L11379:
#     }
# 
#     return retVal;
	.d2line		116
.Llo36:
	mr		r3,r3		# retVal=r3 retVal=r3
# }
	.d2line		117
	.d2epilogue_begin
	lwz		r0,20(r1)		# isrId=r0
	mtspr		lr,r0		# isrId=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11565:
	.type		Os_ISR_CheckId,@function
	.size		Os_ISR_CheckId,.-Os_ISR_CheckId
# Number of nodes = 31

# Allocations for Os_ISR_CheckId
#	?a4		isrId
#	?a5		retVal
# FUNC(void,OS_CODE) Os_Task_Activate(P2CONST(struct Os_ProcStatType_s,AUTOMATIC ,OS_CONST)  proc)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         217,20
#$$ld
.L11574:

#$$bf	Os_Task_Activate,interprocedural,rasave,nostackparams
	.globl		Os_Task_Activate
	.d2_cfa_start __cie
Os_Task_Activate:
.Llo37:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# proc=r3 proc=r3
	.d2prologue_end
# {
#     switch(proc->Os_ProcDyn->Os_ProcState)
	.d2line		219
	lwz		r4,8(r3)		# proc=r3
	lwz		r6,0(r4)
	se_cmpi		r6,0
	bc		1,2,.L11410	# eq
	se_cmpi		r6,2
	bc		1,2,.L11410	# eq
	se_cmpi		r6,3
	bc		1,2,.L11412	# eq
	b		.L11408
.L11410:
#     {
#         case RUNNING:
#         case READY:
#         {   /* No state change, scheduler stores the new schedulable entity */
#             Os_SchedulerStartProc(proc); /* [OS001-272.v1] */
	.d2line		224
	mr		r3,r3		# proc=r3 proc=r3
.Llo38:
	bl		Os_SchedulerStartProc
	b		.L11408
.L11412:
#         }break;
# 
#         case SUSPENDED:
#         {
#           #ifdef OS_MODULE_TIMINGPROTECTION
#             Os_TPTimer_Init(proc->Os_ProcBudgetTimerConf, Os_TPT_BudgetStart);
#             Os_TPTimer_Start(proc->Os_ProcIntervalTimerConf, Os_TPT_InterArrivalStart); /* [OS469] */
#           #endif
# 
#             proc->Os_ProcDyn->Os_ProcState = READY; /* [OS466-01] [OS001-003.v1] [OS001-020.v1] */
	.d2line		234
.Llo39:
	diab.li		r0,2
	lwz		r4,8(r3)		# proc=r3
	stw		r0,0(r4)
# 
#           #ifdef OS_MODULE_CALLTRUSTEDFUNCTION
# 
#             proc->Os_ProcDyn->Os_ProcTFCallCount   = (uint8) 0U;
	.d2line		238
	diab.li		r0,0
	lwz		r4,8(r3)		# proc=r3
	stb		r0,52(r4)
#             proc->Os_ProcDyn->Os_FatalErrorOccured = E_OK;
	.d2line		239
	lwz		r4,8(r3)		# proc=r3
	stb		r0,53(r4)
# 
#           #endif
# 
#             OS_CALL_RTM_PROCESS_STATE_CHANGE(SuspendedToReady, proc->Os_ProcId, OS_GETCOREID());
# 
#             Os_SchedulerStartProc(proc); /* [OS001-272.v1] [OS001-024.v1] */
	.d2line		245
	mr		r3,r3		# proc=r3 proc=r3
.Llo40:
	bl		Os_SchedulerStartProc
.L11408:
#         }break;
# 
#         default:
#           /* nothing to do */
#           break;
#     }
# }
	.d2line		252
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
.L11575:
	.type		Os_Task_Activate,@function
	.size		Os_Task_Activate,.-Os_Task_Activate
# Number of nodes = 41

# Allocations for Os_Task_Activate
#	?a4		proc
# FUNC(void,OS_CODE) Os_Task_AutoStart(VAR(AppModeType,AUTOMATIC) appMode,
	.align		2
	.section	.Os_TEXT,,c
        .d2line         124,20
#$$ld
.L11583:

#$$bf	Os_Task_AutoStart,interprocedural,rasave,nostackparams
	.globl		Os_Task_AutoStart
	.d2_cfa_start __cie
Os_Task_AutoStart:
.Llo41:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# appMode=r31 appMode=r3
	mr		r30,r4		# coreID=r30 coreID=r4
	.d2prologue_end
#                                      CONST(CoreIdType,AUTOMATIC) coreID)
# {
#     VAR(Os_ObjectType,AUTOMATIC) procIdx;
#     for(procIdx = Os_ProcRange[coreID].Os_ObjStartId; procIdx <= Os_ProcRange[coreID].Os_ObjEndId; procIdx++)
	.d2line		128
	lis		r3,Os_ProcRange@ha
.Llo42:
	e_add16i		r3,r3,Os_ProcRange@l
	rlwinm		r4,r4,3,13,28		# coreID=r4 coreID=r4
.Llo45:
	lwzx		r29,r3,r4
.Llo46:
	mr		r29,r29		# procIdx=r29 procIdx=r29
.L11386:
.Llo43:
	lis		r3,(Os_ProcRange+4)@ha		# os_auto=r3
.Llo51:
	e_add16i		r3,r3,(Os_ProcRange+4)@l		# os_auto=r3 os_auto=r3
	rlwinm		r4,r30,3,13,28		# coreID=r4 coreID=r30
	lwzx		r0,r3,r4		# os_start=r0 os_auto=r3
.Llo61:
	se_cmpl		r0,r29		# os_start=r0 procIdx=r29
	bc		1,0,.L11385	# lt
	.section	.Os_TEXT,,c
.L11591:
#     {
#         P2CONST(Os_ProcStatType,AUTOMATIC,OS_CONST) os_proc = &Os_Proc_Stat[procIdx];
	.d2line		130
.Llo52:
	lis		r28,Os_Proc_Stat@ha		# os_proc=r28
.Llo47:
	e_add16i		r28,r28,Os_Proc_Stat@l		# os_proc=r28 os_proc=r28
	e_mulli		r0,r29,80		# os_start=r0 procIdx=r29
.Llo62:
	se_add		r0,r28		# os_start=r0 os_start=r0 os_proc=r28
.Llo63:
	mr		r28,r0		# os_proc=r28 os_proc=r0
#         if(os_proc->Os_ProcKind == Os_Proc_Task)
	.d2line		131
.Llo48:
	lwz		r0,16(r28)		# os_start=r0 os_proc=r28
.Llo64:
	se_cmpi		r0,0		# os_start=r0
	bc		0,2,.L11389	# ne
	.section	.Os_TEXT,,c
.L11600:
#         {
#             P2CONST(Os_AccessStorageType,AUTOMATIC,OS_CONST) os_auto = os_proc->Os_ProcAutoStart;
	.d2line		133
.Llo49:
	lwz		r0,60(r28)		# os_start=r0 os_proc=r28
	.d2line		135
.Llo65:
	mr.		r3,r0		# os_auto=?a9 os_auto=?a11
# 
#             if( NULL_PTR != os_auto )
.Llo53:
	bc		1,2,.L11389	# eq
	.section	.Os_TEXT,,c
.L11609:
#             {
#                 VAR(Os_AccessType,AUTOMATIC) os_start;
#                 os_start = Os_Access_Check(os_auto, (ProcType)appMode);
	.d2line		138
.Llo54:
	mr		r4,r31		# appMode=r4 appMode=r31
.Llo55:
	mr		r3,r3		# os_auto=r3 os_auto=r3
.Llo56:
	bl		Os_Access_Check
	.d2line		139
.Llo57:
	mr.		r0,r3		# os_start=?a10 os_start=r3
#                 if(Os_Access_Granted == os_start)
	bc		0,2,.L11389	# ne
#                 {
#                     Os_Proc_Stat[os_proc->Os_ProcId].Os_ProcDyn->Os_ProcActivations++;
	.d2line		141
.Llo58:
	lis		r3,(Os_Proc_Stat+8)@ha		# os_auto=r3
.Llo59:
	e_add16i		r3,r3,(Os_Proc_Stat+8)@l		# os_auto=r3 os_auto=r3
	lwz		r0,0(r28)		# os_start=r0 os_proc=r28
.Llo66:
	e_mulli		r0,r0,80		# os_start=r0 os_start=r0
.Llo67:
	lwzx		r4,r3,r0		# coreID=r4 os_auto=r3
	lwz		r3,24(r4)		# os_auto=r3 coreID=r4
	se_addi		r3,1		# os_auto=r3 os_auto=r3
	stw		r3,24(r4)		# coreID=r4 os_auto=r3
#                     Os_Task_Activate(os_proc);
	.d2line		142
	mr		r3,r28		# os_proc=r3 os_proc=r28
.Llo60:
	bl		Os_Task_Activate
	.section	.Os_TEXT,,c
.L11610:
	.section	.Os_TEXT,,c
.L11601:
.L11389:
	.section	.Os_TEXT,,c
.L11592:
#                 }
#             }
#         }
#     }
	.d2line		146
.Llo50:
	diab.addi		r0,r29,1		# os_start=r0 procIdx=r29
	se_addi		r29,1		# procIdx=r29 procIdx=r29
	b		.L11386
.L11385:
# }
	.d2line		147
	.d2epilogue_begin
.Llo44:
	lmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# os_start=r0
	mtspr		lr,r0		# os_start=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11584:
	.type		Os_Task_AutoStart,@function
	.size		Os_Task_AutoStart,.-Os_Task_AutoStart
# Number of nodes = 77

# Allocations for Os_Task_AutoStart
#	?a4		appMode
#	?a5		coreID
#	?a6		$$2354
#	?a7		procIdx
#	?a8		os_proc
#	?a9		os_auto
#	?a10		os_start
# FUNC(void,OS_CODE)  Os_Task_Terminate(P2CONST(struct Os_ProcStatType_s,AUTOMATIC ,OS_CONST)  proc)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         150,21
#$$ld
.L11619:

#$$bf	Os_Task_Terminate,interprocedural,rasave,nostackparams
	.globl		Os_Task_Terminate
	.d2_cfa_start __cie
Os_Task_Terminate:
.Llo68:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# proc=r31 proc=r3
	.d2prologue_end
# {
#   #ifdef OS_MODULE_MULTICORE
#     CONST(CoreIdType,AUTOMATIC) coreID = proc->Os_ProcCoreID;
	.d2line		153
	lhz		r29,4(r31)		# proc=r31
.Llo72:
	mr		r29,r29		# coreID=r29 coreID=r29
#   #else
#     CONST(CoreIdType,AUTOMATIC) coreID = OS_GETCOREID ();
#   #endif /* OS_MODULE_MULTICORE */
# 
#     OS_ASSERT(proc->Os_ProcDyn->Os_ProcState == RUNNING, E_OS_SYS_WRONG_TASKSTATETRANZITION0);
	.d2line		158
	lwz		r3,8(r31)		# proc=r31
.Llo69:
	lwz		r0,0(r3)
	se_cmpi		r0,0
	bc		1,2,.L11398	# eq
.Llo70:
	diab.li		r4,23
	lis		r3,(Os_Core_DynShared+12)@ha
	e_add16i		r3,r3,(Os_Core_DynShared+12)@l
	mfspr		r0,286
	rlwinm		r0,r0,0,16,31
	e_mulli		r0,r0,152
	stwx		r4,r3,r0
	diab.li		r3,30
	bl		Os_ShutdownAllCores
.L11398:
# 
#   #ifdef OS_MODULE_TIMINGPROTECTION
#     Os_TPTimer_Stop(proc->Os_ProcBudgetTimerConf); /* [OS473] */
#   #endif
# 
#   #if (OS_POSTTASKHOOK == STD_ON)
#     Os_Isr_ServicesSwitchToHook();
#     {
#         CONSTP2VAR(Os_HooksDynType, AUTOMATIC, OS_VAR)  coreHookDyn = OS_GET_CORE_HOOK_DYN(coreID);
# 
#         coreHookDyn->Os_HookID = OS_HOOKID_POSTTASKHOOK;
#         PostTaskHook();
#         coreHookDyn->Os_HookID = OS_HOOKID_NONE;
#     }
#     Os_Isr_ServicesSwitchBackFromHook ();
#   #endif /*(OS_POSTTASKHOOK == STD_ON) */
# 
#     OS_TASK_GETCURRENT(coreID) = NULL_PTR;
	.d2line		176
.Llo73:
	diab.li		r30,0
	lis		r3,(Os_Core_Stat+4)@ha		# proc=r3
	e_add16i		r3,r3,(Os_Core_Stat+4)@l		# proc=r3 proc=r3
.Llo74:
	rlwinm		r29,r29,0,16,31		# coreID=r29 coreID=r29
	e_mulli		r29,r29,20		# coreID=r29 coreID=r29
.Llo75:
	lwzx		r3,r3,r29		# proc=r3 proc=r3
	stw		r30,16(r3)		# proc=r3
# 
#     Os_SchedulerTerminateProc(proc); /* [OS001-270.v1] */
	.d2line		178
	mr		r3,r31		# proc=r3 proc=r31
	bl		Os_SchedulerTerminateProc
# 
#     /* [OS001-031-MGC.v1] */
#     proc->Os_ProcDyn->Os_ProcContextState    =  Os_ProcContextInvalid;
	.d2line		181
	lwz		r3,8(r31)		# proc=r3 proc=r31
	stw		r30,4(r3)		# proc=r3
#     proc->Os_ProcDyn->Os_ProcEvents          = (EventMaskType)0U;       /* [OS001-009-MGC.v1] */
	.d2line		182
	lwz		r3,8(r31)		# proc=r3 proc=r31
	diab.li		r0,0
	stw		r0,8(r3)		# proc=r3
	stw		r0,12(r3)		# proc=r3
#     proc->Os_ProcDyn->Os_ProcEventWaitingFor = (EventMaskType)0U;
	.d2line		183
	lwz		r3,8(r31)		# proc=r3 proc=r31
	stw		r0,16(r3)		# proc=r3
	stw		r0,20(r3)		# proc=r3
#     proc->Os_ProcDyn->Os_ProcActivations--;
	.d2line		184
	lwz		r4,8(r31)		# proc=r31
	lwz		r3,24(r4)		# proc=r3
	diab.addi		r3,r3,-1		# proc=r3 proc=r3
	stw		r3,24(r4)		# proc=r3
#     proc->Os_ProcDyn->Os_ProcCurrentPriority = proc->Os_ProcPriority; /* [OS001-013-MGC.v1] [OS001-022.v1] */
	.d2line		185
	lwz		r4,32(r31)		# proc=r31
	lwz		r3,8(r31)		# proc=r3 proc=r31
	stw		r4,48(r3)		# proc=r3
#   #ifdef OS_MODULE_APPLICATION
#     proc->Os_ProcDyn->Os_ProcEnabled         = (uint8)0U;
	.d2line		187
	lwz		r3,8(r31)		# proc=r3 proc=r31
	stb		r0,32(r3)		# proc=r3
#     proc->Os_ProcDyn->Os_ProcCurrentApp      = proc->Os_ProcOwnerApp;
	.d2line		188
	lwz		r0,48(r31)		# proc=r31
	lwz		r3,8(r31)		# proc=r3 proc=r31
	stw		r0,36(r3)		# proc=r3
#   #endif
#     if(proc->Os_ProcDyn->Os_ProcResourcesAllocated > 0) /* [OS070] */
	.d2line		190
	lwz		r3,8(r31)		# proc=r3 proc=r31
	lwz		r0,28(r3)		# proc=r3
	se_cmpi		r0,0
	bc		1,2,.L11401	# eq
#     {
#         Os_Resource_FreeTaskResources(proc); /* [OS001-018-MGC.v1] [OS001-022.v1] */
	.d2line		192
	mr		r3,r31		# proc=r3 proc=r31
	bl		Os_Resource_FreeTaskResources
#         proc->Os_ProcDyn->Os_ProcResourcesAllocated = (ResourceType)0U;
	.d2line		193
	diab.li		r0,0
	lwz		r3,8(r31)		# proc=r3 proc=r31
	stw		r0,28(r3)		# proc=r3
.L11401:
#     }
# 
#     if(proc->Os_ProcDyn->Os_ProcActivations > 0)
	.d2line		196
	lwz		r3,8(r31)		# proc=r3 proc=r31
	lwz		r0,24(r3)		# proc=r3
	se_cmpi		r0,0
	bc		1,2,.L11402	# eq
#     {
#         proc->Os_ProcDyn->Os_ProcState = READY; /* [OS001-012.v1] */
	.d2line		198
	diab.li		r0,2
	lwz		r3,8(r31)		# proc=r3 proc=r31
	stw		r0,0(r3)		# proc=r3
	b		.L11403
.L11402:
#         OS_CALL_RTM_PROCESS_STATE_CHANGE(RunningToReady, proc->Os_ProcId, coreID);
#     }
#     else
#     {
#         proc->Os_ProcDyn->Os_ProcState = SUSPENDED; /* [OS001-011.v1] [OS001-020.v1] */
	.d2line		203
	diab.li		r0,3
	lwz		r3,8(r31)		# proc=r3 proc=r31
	stw		r0,0(r3)		# proc=r3
.L11403:
#         OS_CALL_RTM_PROCESS_STATE_CHANGE(RunningToSuspended, proc->Os_ProcId, coreID);
#     }
# 
#   #ifdef OS_MODULE_SPINLOCK
#     Os_Spinlock_ReleaseProcSpinlocks(proc);
	.d2line		208
	mr		r3,r31		# proc=r3 proc=r31
	bl		Os_Spinlock_ReleaseProcSpinlocks
#   #endif /* OS_MODULE_SPINLOCK */
# 
#   #ifdef OS_MODULE_STACKSHARING
#     Os_StackSharing_RemoveTask(proc);
#   #endif /* OS_MODULE_STACKSHARING */
# }
	.d2line		214
	.d2epilogue_begin
	lmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	3,10
.Llo71:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11620:
	.type		Os_Task_Terminate,@function
	.size		Os_Task_Terminate,.-Os_Task_Terminate
# Number of nodes = 170

# Allocations for Os_Task_Terminate
#	?a4		proc
#	?a5		$$2355
#	?a6		coreID
# FUNC(void,OS_CODE) Os_Task_Release(P2CONST(struct Os_ProcStatType_s, AUTOMATIC, OS_CONST)  proc)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         255,20
#$$ld
.L11627:

#$$bf	Os_Task_Release,interprocedural,rasave,nostackparams
	.globl		Os_Task_Release
	.d2_cfa_start __cie
Os_Task_Release:
.Llo76:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# proc=r31 proc=r3
	.d2prologue_end
# {
#     OS_ASSERT(proc->Os_ProcDyn->Os_ProcState == WAITING, E_OS_SYS_WRONG_TASKSTATETRANZITION0);
	.d2line		257
	lwz		r3,8(r31)		# proc=r31
.Llo77:
	lwz		r0,0(r3)
	se_cmpi		r0,1
	bc		1,2,.L11420	# eq
.Llo78:
	diab.li		r4,23
	lis		r3,(Os_Core_DynShared+12)@ha
	e_add16i		r3,r3,(Os_Core_DynShared+12)@l
	mfspr		r0,286
	rlwinm		r0,r0,0,16,31
	e_mulli		r0,r0,152
	stwx		r4,r3,r0
	diab.li		r3,30
	bl		Os_ShutdownAllCores
.L11420:
#     OS_ASSERT(proc->Os_ProcMaxActivations == 1, E_OS_SYS_RESUMEPROC_MAXACTIVATION);
	.d2line		258
	lwz		r0,40(r31)		# proc=r31
	se_cmpi		r0,1
	bc		1,2,.L11425	# eq
	diab.li		r4,40
	lis		r3,(Os_Core_DynShared+12)@ha
	e_add16i		r3,r3,(Os_Core_DynShared+12)@l
	mfspr		r0,286
	rlwinm		r0,r0,0,16,31
	e_mulli		r0,r0,152
	stwx		r4,r3,r0
	diab.li		r3,30
	bl		Os_ShutdownAllCores
.L11425:
# 
#   #ifdef OS_MODULE_TIMINGPROTECTION
#     Os_TPTimer_Init(proc->Os_ProcBudgetTimerConf, Os_TPT_BudgetStart);
#     Os_TPTimer_Start(proc->Os_ProcIntervalTimerConf, Os_TPT_InterArrivalStart); /* [OS472-01] */
#   #endif
# 
#     proc->Os_ProcDyn->Os_ProcState = READY; /* [OS001-098.v1] [OS472-02] [OS472-03] */
	.d2line		265
	diab.li		r0,2
	lwz		r3,8(r31)		# proc=r3 proc=r31
	stw		r0,0(r3)		# proc=r3
# 
#     OS_CALL_RTM_PROCESS_STATE_CHANGE(WaitingToReady, proc->Os_ProcId, OS_GETCOREID());
# 
#     Os_SchedulerStartProc(proc); /* [OS001-274.v1] */
	.d2line		269
	mr		r3,r31		# proc=r3 proc=r31
	bl		Os_SchedulerStartProc
# }
	.d2line		270
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo79:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11628:
	.type		Os_Task_Release,@function
	.size		Os_Task_Release,.-Os_Task_Release
# Number of nodes = 64

# Allocations for Os_Task_Release
#	?a4		proc
# FUNC(void,OS_CODE)  Os_Task_Wait(P2CONST(struct Os_ProcStatType_s,AUTOMATIC ,OS_CONST)  proc)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         273,21
#$$ld
.L11633:

#$$bf	Os_Task_Wait,interprocedural,rasave,nostackparams
	.globl		Os_Task_Wait
	.d2_cfa_start __cie
Os_Task_Wait:
.Llo80:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# proc=r31 proc=r3
	.d2prologue_end
# {
#   #ifdef OS_MODULE_MULTICORE
#     CONST(CoreIdType, AUTOMATIC) coreID = proc->Os_ProcCoreID;
	.d2line		276
	lhz		r30,4(r31)		# proc=r31
.Llo86:
	mr		r30,r30		# coreID=r30 coreID=r30
#   #else
#     CONST(CoreIdType, AUTOMATIC) coreID = OS_GETCOREID ();
#   #endif
# 
#     OS_ASSERT(proc->Os_ProcDyn->Os_ProcState == RUNNING, E_OS_SYS_WRONG_TASKSTATETRANZITION1);
	.d2line		281
	lwz		r3,8(r31)		# proc=r31
.Llo81:
	lwz		r0,0(r3)
	se_cmpi		r0,0
	bc		1,2,.L11433	# eq
.Llo82:
	diab.li		r4,24
	lis		r3,(Os_Core_DynShared+12)@ha
	e_add16i		r3,r3,(Os_Core_DynShared+12)@l
	mfspr		r0,286
	rlwinm		r0,r0,0,16,31
	e_mulli		r0,r0,152
	stwx		r4,r3,r0
	diab.li		r3,30
	bl		Os_ShutdownAllCores
.L11433:
#     OS_ASSERT(proc->Os_ProcMaxActivations == 1U, E_OS_SYS_RESUMEPROC_MAXACTIVATION);
	.d2line		282
	lwz		r0,40(r31)		# proc=r31
	se_cmpi		r0,1
	bc		1,2,.L11438	# eq
	diab.li		r4,40
	lis		r3,(Os_Core_DynShared+12)@ha
	e_add16i		r3,r3,(Os_Core_DynShared+12)@l
	mfspr		r0,286
	rlwinm		r0,r0,0,16,31
	e_mulli		r0,r0,152
	stwx		r4,r3,r0
	diab.li		r3,30
	bl		Os_ShutdownAllCores
.L11438:
# 
#   #ifdef OS_MODULE_TIMINGPROTECTION
#     Os_TPTimer_Stop(proc->Os_ProcBudgetTimerConf); /* [OS473] */
#   #endif
# 
#   #if (OS_POSTTASKHOOK == STD_ON)
#     Os_Isr_ServicesSwitchToHook ();
#     {
#         CONSTP2VAR(Os_HooksDynType, AUTOMATIC, OS_VAR)  coreHookDyn = OS_GET_CORE_HOOK_DYN(coreID);
#         coreHookDyn->Os_HookID = OS_HOOKID_POSTTASKHOOK;
#         PostTaskHook();
#         coreHookDyn->Os_HookID = OS_HOOKID_NONE;
#     }
#     Os_Isr_ServicesSwitchBackFromHook ();
#   #endif /* (OS_POSTTASKHOOK == STD_ON) */
# 
#     proc->Os_ProcDyn->Os_ProcState = WAITING;
	.d2line		299
.Llo87:
	diab.li		r0,1
	lwz		r3,8(r31)		# proc=r3 proc=r31
	stw		r0,0(r3)		# proc=r3
# 
#     OS_CALL_RTM_PROCESS_STATE_CHANGE(RunningToWaiting, proc->Os_ProcId, coreID);
# 
#     Os_SchedulerTerminateProc(proc); /* [OS001-273.v1] [OS001-123.v1] */
	.d2line		303
	mr		r3,r31		# proc=r3 proc=r31
	bl		Os_SchedulerTerminateProc
# 
#     OS_TASK_GETCURRENT(coreID) = NULL_PTR;
	.d2line		305
	diab.li		r3,0		# proc=r3
	lis		r4,(Os_Core_Stat+4)@ha
	e_add16i		r4,r4,(Os_Core_Stat+4)@l
.Llo88:
	rlwinm		r30,r30,0,16,31		# coreID=r30 coreID=r30
	e_mulli		r30,r30,20		# coreID=r30 coreID=r30
.Llo89:
	lwzx		r4,r4,r30
	stw		r3,16(r4)		# proc=r3
# }
	.d2line		306
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo83:
	lwz		r0,36(r1)
.Llo84:
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo85:
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11634:
	.type		Os_Task_Wait,@function
	.size		Os_Task_Wait,.-Os_Task_Wait
# Number of nodes = 85

# Allocations for Os_Task_Wait
#	?a4		proc
#	?a5		coreID
# FUNC(void, OS_CODE) Os_Task_SwitchOut(P2CONST(struct Os_ProcStatType_s, AUTOMATIC, OS_CONST) proc)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         309,21
#$$ld
.L11641:

#$$bf	Os_Task_SwitchOut,interprocedural,rasave,nostackparams
	.globl		Os_Task_SwitchOut
	.d2_cfa_start __cie
Os_Task_SwitchOut:
.Llo90:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# proc=r31 proc=r3
	.d2prologue_end
# {
#   #if defined(OS_MODULE_MULTICORE)
#     CONST(CoreIdType,AUTOMATIC) coreID = proc->Os_ProcCoreID;
	.d2line		312
	lhz		r30,4(r31)		# proc=r31
.Llo94:
	mr		r30,r30		# coreID=r30 coreID=r30
#   #else
#     CONST (CoreIdType, AUTOMATIC) coreID = OS_GETCOREID ();
#   #endif
# 
#   #if (OS_POSTTASKHOOK == STD_ON)
#     CONSTP2VAR  (Os_HooksDynType, AUTOMATIC, OS_VAR)  coreHookDyn = OS_GET_CORE_HOOK_DYN(coreID);
#   #endif
# 
#     OS_ASSERT(proc->Os_ProcKind == Os_Proc_Task, E_OS_SYS_WRONG_TASKSTATETRANZITION1);
	.d2line		321
	lwz		r0,16(r31)		# proc=r31
	se_cmpi		r0,0
	bc		1,2,.L11446	# eq
.Llo91:
	diab.li		r4,24
.Llo92:
	lis		r3,(Os_Core_DynShared+12)@ha
	e_add16i		r3,r3,(Os_Core_DynShared+12)@l
	mfspr		r0,286
	rlwinm		r0,r0,0,16,31
	e_mulli		r0,r0,152
	stwx		r4,r3,r0
	diab.li		r3,30
	bl		Os_ShutdownAllCores
.L11446:
# 
#   #ifdef OS_MODULE_TIMINGPROTECTION
#     Os_TPTimer_Pause(proc->Os_ProcBudgetTimerConf);
#   #endif
# 
#   #if (OS_POSTTASKHOOK == STD_ON)
#     Os_Isr_ServicesSwitchToHook ();
# 
#     coreHookDyn->Os_HookID = OS_HOOKID_POSTTASKHOOK;
#     PostTaskHook(); /* [OS001-326.v1] */
#     coreHookDyn->Os_HookID = OS_HOOKID_NONE;
# 
#     Os_Isr_ServicesSwitchBackFromHook ();
#   #endif /* (OS_POSTTASKHOOK == STD_ON) */
# 
#     proc->Os_ProcDyn->Os_ProcState = READY; /*  [OS001-036.v1] */
	.d2line		337
.Llo95:
	diab.li		r3,2
	lwz		r4,8(r31)		# proc=r31
	stw		r3,0(r4)
# 
#     OS_CALL_RTM_PROCESS_STATE_CHANGE(RunningToReady, proc->Os_ProcId, OS_GETCOREID());
# 
#     OS_TASK_GETCURRENT(coreID) = NULL_PTR;
	.d2line		341
	diab.li		r3,0
	lis		r4,(Os_Core_Stat+4)@ha
	e_add16i		r4,r4,(Os_Core_Stat+4)@l
.Llo96:
	rlwinm		r30,r30,0,16,31		# coreID=r30 coreID=r30
	e_mulli		r30,r30,20		# coreID=r30 coreID=r30
.Llo97:
	lwzx		r4,r4,r30
	stw		r3,16(r4)
# }
	.d2line		342
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo93:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11642:
	.type		Os_Task_SwitchOut,@function
	.size		Os_Task_SwitchOut,.-Os_Task_SwitchOut
# Number of nodes = 54

# Allocations for Os_Task_SwitchOut
#	?a4		proc
#	?a5		coreID
# FUNC(void, OS_CODE) Os_Task_SwitchIn(P2CONST(struct Os_ProcStatType_s, AUTOMATIC, OS_CONST) proc)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         345,21
#$$ld
.L11649:

#$$bf	Os_Task_SwitchIn,interprocedural,rasave,nostackparams
	.globl		Os_Task_SwitchIn
	.d2_cfa_start __cie
Os_Task_SwitchIn:
.Llo98:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# proc=r31 proc=r3
	.d2prologue_end
# {
#   #ifdef OS_MODULE_MULTICORE
#     CONST(CoreIdType,AUTOMATIC) coreID = proc->Os_ProcCoreID;
	.d2line		348
	lhz		r30,4(r31)		# proc=r31
.Llo102:
	mr		r30,r30		# coreID=r30 coreID=r30
#   #else
#     CONST(CoreIdType,AUTOMATIC) coreID = OS_GETCOREID ();
#   #endif
# 
#   #if (OS_PRETASKHOOK == STD_ON)
#     CONSTP2VAR  (Os_HooksDynType, AUTOMATIC, OS_VAR)  coreHookDyn = OS_GET_CORE_HOOK_DYN(coreID);
#   #endif /* (OS_PRETASKHOOK == STD_ON) */
# 
#     OS_ASSERT(proc->Os_ProcKind == Os_Proc_Task, E_OS_SYS_WRONG_TASKSTATETRANZITION1);
	.d2line		357
	lwz		r0,16(r31)		# proc=r31
	se_cmpi		r0,0
	bc		1,2,.L11453	# eq
.Llo99:
	diab.li		r4,24
.Llo100:
	lis		r3,(Os_Core_DynShared+12)@ha
	e_add16i		r3,r3,(Os_Core_DynShared+12)@l
	mfspr		r0,286
	rlwinm		r0,r0,0,16,31
	e_mulli		r0,r0,152
	stwx		r4,r3,r0
	diab.li		r3,30
	bl		Os_ShutdownAllCores
.L11453:
# 
#     /*  [OS001-038.v1] */
#     /* Os_ProcState can only be READY or RUNNING(if previously interrupted) at this time */
#     if ( proc->Os_ProcDyn->Os_ProcState == READY )
	.d2line		361
	lwz		r3,8(r31)		# proc=r31
	lwz		r0,0(r3)
	se_cmpi		r0,2
	bc		0,2,.L11456	# ne
#     {
#         proc->Os_ProcDyn->Os_ProcState = RUNNING;
	.d2line		363
	diab.li		r0,0
	lwz		r3,8(r31)		# proc=r31
	stw		r0,0(r3)
	b		.L11457
.L11456:
# 
#         OS_CALL_RTM_PROCESS_STATE_CHANGE ( ReadyToRunning, proc->Os_ProcId, coreID );
#     }
#     else
#     {
#         OS_ASSERT(proc->Os_ProcDyn->Os_ProcState == RUNNING, E_OS_SYS_WRONG_TASKSTATETRANZITION2);
	.d2line		369
	lwz		r3,8(r31)		# proc=r31
	lwz		r0,0(r3)
	se_cmpi		r0,0
	bc		1,2,.L11457	# eq
	diab.li		r4,25
	lis		r3,(Os_Core_DynShared+12)@ha
	e_add16i		r3,r3,(Os_Core_DynShared+12)@l
	mfspr		r0,286
	rlwinm		r0,r0,0,16,31
	e_mulli		r0,r0,152
	stwx		r4,r3,r0
	diab.li		r3,30
	bl		Os_ShutdownAllCores
.L11457:
#     }
# 
#     /* Do nothing if the currently running task is the same as the new one */
#     if(OS_TASK_GETCURRENT(coreID) != proc)
	.d2line		373
	lis		r3,(Os_Core_Stat+4)@ha
	e_add16i		r3,r3,(Os_Core_Stat+4)@l
	rlwinm		r0,r30,0,16,31		# coreID=r30
	e_mulli		r0,r0,20
	lwzx		r3,r3,r0
	lwz		r0,16(r3)
	se_cmpl		r0,r31		# proc=r31
	bc		1,2,.L11450	# eq
#     {
#         OS_TASK_GETCURRENT(coreID) = proc;
	.d2line		375
	lis		r3,(Os_Core_Stat+4)@ha
	e_add16i		r3,r3,(Os_Core_Stat+4)@l
	rlwinm		r0,r30,0,16,31		# coreID=r30
	e_mulli		r0,r0,20
	lwzx		r3,r3,r0
	stw		r31,16(r3)		# proc=r31
# 
#         if(proc->Os_ProcDyn->Os_ProcContextState == Os_ProcContextInvalid)
	.d2line		377
	lwz		r3,8(r31)		# proc=r31
	lwz		r0,4(r3)
	se_cmpi		r0,0
	bc		0,2,.L11450	# ne
#         {
#             proc->Os_ProcDyn->Os_ProcContextState = Os_ProcContextActive;
	.d2line		379
.Llo103:
	diab.li		r0,1
	lwz		r3,8(r31)		# proc=r3 proc=r31
	stw		r0,4(r3)		# proc=r3
#             OS_GET_CORE_STAT ( coreID )->Os_PrepareContextFunction ( proc );
	.d2line		380
	lis		r3,(Os_Core_Stat+12)@ha		# proc=r3
	e_add16i		r3,r3,(Os_Core_Stat+12)@l		# proc=r3 proc=r3
.Llo104:
	rlwinm		r30,r30,0,16,31		# coreID=r30 coreID=r30
	e_mulli		r30,r30,20		# coreID=r30 coreID=r30
.Llo105:
	lwzx		r0,r3,r30		# proc=r3
	mtspr		ctr,r0
	mr		r3,r31		# proc=r3 proc=r31
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x8 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
.L11450:
#             /*
#              * [OS001-004.v1] [OS198-04] [OS446-04] [OS058]
#              * Note that it is target dependent whether context is handled in the right way or not.
#              */
#         }
#         else
#         {
#             /* The context was prepared already. */
#         }
# 
#       #if (OS_PRETASKHOOK == STD_ON)
#         Os_Isr_ServicesSwitchToHook ();
# 
#         coreHookDyn->Os_HookID = OS_HOOKID_PRETASKHOOK;
#         PreTaskHook(); /* [OS001-323.v1] */
#         coreHookDyn->Os_HookID = OS_HOOKID_NONE;
# 
#         Os_Isr_ServicesSwitchBackFromHook ();
#       #endif /* (OS_PRETASKHOOK == STD_ON) */
# 
#       #ifdef OS_MODULE_TIMINGPROTECTION
#         Os_TPTimer_Continue(proc->Os_ProcBudgetTimerConf);
#       #endif
# 
#     }
#     else
#     {
#         /*  [OS001-039.v1] */
#     }
# }
	.d2line		410
	.d2epilogue_begin
.Llo101:
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
.L11650:
	.type		Os_Task_SwitchIn,@function
	.size		Os_Task_SwitchIn,.-Os_Task_SwitchIn
# Number of nodes = 137

# Allocations for Os_Task_SwitchIn
#	?a4		proc
#	?a5		coreID
# FUNC(void,OS_CODE) Os_TaskKill ( CONSTP2CONST (struct Os_ProcStatType_s, AUTOMATIC, OS_CODE) proc )
	.align		2
	.section	.Os_TEXT,,c
        .d2line         417,20
#$$ld
.L11657:

#$$bf	Os_TaskKill,interprocedural,rasave,nostackparams
	.globl		Os_TaskKill
	.d2_cfa_start __cie
Os_TaskKill:
.Llo106:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# proc=r31 proc=r3
	.d2prologue_end
# {
#     if((Os_ActivationCountType)0U < proc->Os_ProcDyn->Os_ProcActivations)
	.d2line		419
	lwz		r3,8(r31)		# proc=r31
.Llo107:
	lwz		r0,24(r3)
	se_cmpi		r0,0
	bc		1,2,.L11471	# eq
	.section	.Os_TEXT,,c
.L11662:
#     {
#       #ifdef OS_MODULE_MULTICORE
#         CONST(CoreIdType,AUTOMATIC) coreID = proc->Os_ProcCoreID;
	.d2line		422
.Llo108:
	lhz		r30,4(r31)		# proc=r31
.Llo110:
	mr		r30,r30		# coreID=r30 coreID=r30
#       #else
#         CONST(CoreIdType,AUTOMATIC) coreID = OS_GETCOREID ();
#       #endif
# 
#       #if (OS_POSTTASKHOOK == STD_ON)
#         if(OS_TASK_GETCURRENT(coreID) == proc)
#         {
#             CONSTP2VAR  (Os_HooksDynType, AUTOMATIC, OS_VAR)  coreHookDyn = OS_GET_CORE_HOOK_DYN(coreID);
# 
#             Os_Isr_ServicesSwitchToHook ();
# 
#             coreHookDyn->Os_HookID = OS_HOOKID_POSTTASKHOOK;
#             PostTaskHook();
#             coreHookDyn->Os_HookID = OS_HOOKID_NONE;
# 
#             Os_Isr_ServicesSwitchBackFromHook();
#             OS_TASK_GETCURRENT(coreID) = NULL_PTR;
#         }
#       #endif
# 
#         Os_SchedulerUnScheduleProc(proc);
	.d2line		443
	mr		r3,r31		# proc=r3 proc=r31
	bl		Os_SchedulerUnScheduleProc
#         proc->Os_ProcDyn->Os_ProcActivations = (Os_ActivationCountType)0U;
	.d2line		444
	diab.li		r0,0
	lwz		r3,8(r31)		# proc=r3 proc=r31
	stw		r0,24(r3)		# proc=r3
# 
#         proc->Os_ProcDyn->Os_ProcContextState     =  Os_ProcContextInvalid;
	.d2line		446
	lwz		r3,8(r31)		# proc=r3 proc=r31
	stw		r0,4(r3)		# proc=r3
#         proc->Os_ProcDyn->Os_ProcEvents           = (EventMaskType)0U;
	.d2line		447
	lwz		r3,8(r31)		# proc=r3 proc=r31
	stw		r0,8(r3)		# proc=r3
	stw		r0,12(r3)		# proc=r3
#         proc->Os_ProcDyn->Os_ProcEventWaitingFor  = (EventMaskType)0U;
	.d2line		448
	lwz		r3,8(r31)		# proc=r3 proc=r31
	stw		r0,16(r3)		# proc=r3
	stw		r0,20(r3)		# proc=r3
# 
#       #ifdef OS_MODULE_TIMINGPROTECTION
# 
#         Os_TPTimer_Stop(proc->Os_ProcBudgetTimerConf);
#         Os_TPTimer_Stop(proc->Os_ProcIntervalTimerConf);
#         Os_TPTimer_Stop(proc->Os_ProcLockAllTimerConf);
#         Os_TPTimer_Stop(proc->Os_ProcLockOsTimerConf);
# 
#       #endif /* OS_MODULE_TIMINGPROTECTION */
# 
#         if(proc->Os_ProcDyn->Os_ProcResourcesAllocated > 0)
	.d2line		459
	lwz		r3,8(r31)		# proc=r3 proc=r31
	lwz		r0,28(r3)		# proc=r3
	se_cmpi		r0,0
	bc		1,2,.L11473	# eq
#         {
#             Os_Resource_FreeTaskResources(proc); /* [OS108-01] [OS109-01] */
	.d2line		461
	mr		r3,r31		# proc=r3 proc=r31
	bl		Os_Resource_FreeTaskResources
#             proc->Os_ProcDyn->Os_ProcResourcesAllocated = 0;
	.d2line		462
	diab.li		r0,0
	lwz		r3,8(r31)		# proc=r3 proc=r31
	stw		r0,28(r3)		# proc=r3
.L11473:
#         }
# 
#         if(Os_Isr_Enabled != Os_Isr_GetState(OS_GETCOREID()))
	.d2line		465
	mfspr		r3,286		# proc=r3
	bl		Os_Isr_GetState
	se_cmpi		r3,0		# proc=r3
	bc		1,2,.L11474	# eq
#         {
#             /* [OS108-02] [OS108-03] [OS108-04] [OS109-02] [OS109-03]
#              * [OS109-04]
#              */
#             Os_Isr_ResetState();
	.d2line		470
	bl		Os_Isr_ResetState
.L11474:
#         }
# 
#         if ( proc->Os_ProcKind == Os_Proc_ISR_CAT2 )
	.d2line		473
	lwz		r0,16(r31)		# proc=r31
	se_cmpi		r0,1
	bc		0,2,.L11475	# ne
#         {
# 
#             Os_Isr_Platform_DisableChannel(proc->Os_ProcIsrPlatformConfig); /* [OS109-05] */
	.d2line		476
	lwz		r3,76(r31)		# proc=r3 proc=r31
	bl		Os_Isr_Platform_DisableChannel
# 
#             OS_GET_CORE_ISR_DYN(coreID)->Os_IsrNeedToClear = proc->Os_ProcIsrPlatformConfig;
	.d2line		478
	lwz		r0,76(r31)		# proc=r31
	lis		r3,(Os_Core_Stat+4)@ha		# proc=r3
	e_add16i		r3,r3,(Os_Core_Stat+4)@l		# proc=r3 proc=r3
	rlwinm		r7,r30,0,16,31		# coreID=r30
	e_mulli		r7,r7,20
	lwzx		r3,r3,r7		# proc=r3 proc=r3
	stw		r0,52(r3)		# proc=r3
	.section	.Os_TEXT,,c
.L11668:
# 
#             {
#                 CONSTP2VAR(Os_IsrDynType, AUTOMATIC, OS_CONST) isrDyn = OS_GET_CORE_ISR_DYN(coreID);
	.d2line		481
	lis		r3,(Os_Core_Stat+4)@ha		# proc=r3
	e_add16i		r3,r3,(Os_Core_Stat+4)@l		# proc=r3 proc=r3
	rlwinm		r7,r30,0,16,31		# coreID=r30
	e_mulli		r7,r7,20
	lwzx		r3,r3,r7		# proc=r3 proc=r3
.Llo111:
	diab.addi		r3,r3,48		# isrDyn=r3 proc=r3
#                 VAR(uint32, AUTOMATIC) isrLvl;
# 
#                 for(isrLvl = (uint32)0U; isrLvl < isrDyn->Os_Isr_NestLevel; isrLvl++)
	.d2line		484
	diab.li		r4,0		# isrLvl=r4
.L11476:
.Llo113:
	lwz		r0,8(r3)		# isrDyn=r3
	se_cmpl		r0,r4		# isrLvl=r4
	bc		0,1,.L11475	# le
#                 {
#                     if(Os_IsrCurrentIsr[coreID][isrLvl] == proc )
	.d2line		486
	lis		r5,Os_IsrCurrentIsr@ha
	e_add16i		r5,r5,Os_IsrCurrentIsr@l
	rlwinm		r7,r30,2,14,29		# coreID=r30
	lwzx		r5,r5,r7
	rlwinm		r0,r4,2,0,29		# isrLvl=r4
	lwzx		r0,r5,r0
	se_cmpl		r0,r31		# proc=r31
	bc		0,2,.L11479	# ne
	.section	.Os_TEXT,,c
.L11680:
#                     {
#                         VAR (ProcType, AUTOMATIC) inner;
# 
#                         Os_IsrCurrentIsr[coreID][isrLvl] = NULL_PTR;
	.d2line		490
	diab.li		r6,0
.Llo116:
	lis		r5,Os_IsrCurrentIsr@ha
	e_add16i		r5,r5,Os_IsrCurrentIsr@l
	rlwinm		r7,r30,2,14,29		# coreID=r30
	lwzx		r5,r5,r7
	rlwinm		r0,r4,2,0,29		# isrLvl=r4
	stwx		r6,r5,r0
# 
#                         for(inner = (ProcType)0U; (isrLvl + inner + (ProcType)1U) < isrDyn->Os_Isr_NestLevel; inner++ )
.L11480:
	.d2line		492
	add		r5,r4,r6		# isrLvl=r4 inner=r6
	se_addi		r5,1
	lwz		r0,8(r3)		# isrDyn=r3
	se_cmpl		r5,r0
	bc		0,0,.L11482	# ge
#                         {
#                             Os_IsrCurrentIsr[coreID][isrLvl + inner] =
	.d2line		494
	lis		r5,Os_IsrCurrentIsr@ha
	e_add16i		r5,r5,Os_IsrCurrentIsr@l
	rlwinm		r7,r30,2,14,29		# coreID=r30
	lwzux		r29,r5,r7
	add		r0,r4,r6		# isrLvl=r4 inner=r6
	se_slwi		r0,2
	add		r5,r29,r0
	lwz		r29,4(r5)
	lis		r5,Os_IsrCurrentIsr@ha
	e_add16i		r5,r5,Os_IsrCurrentIsr@l
	lwzx		r5,r5,r7
	stwx		r29,r5,r0
#                                     Os_IsrCurrentIsr[coreID][isrLvl + inner + (ProcType)1U];
#                         }
	.d2line		496
	diab.addi		r0,r6,1		# inner=r6
	se_addi		r6,1		# inner=r6 inner=r6
	b		.L11480
.L11482:
#                         isrDyn->Os_Isr_NestLevel--;
	.d2line		497
.Llo114:
	lwz		r4,8(r3)		# isrLvl=r4 isrDyn=r3
.Llo115:
	diab.addi		r4,r4,-1		# isrLvl=r4 isrLvl=r4
	stw		r4,8(r3)		# isrDyn=r3 isrLvl=r4
	b		.L11475
	.section	.Os_TEXT,,c
.L11681:
.L11479:
# 
#                         break;
#                     }
#                 }
	.d2line		501
.Llo117:
	diab.addi		r0,r4,1		# isrLvl=r4
	se_addi		r4,1		# isrLvl=r4 isrLvl=r4
	b		.L11476
	.section	.Os_TEXT,,c
.L11669:
.L11475:
#             }
#         }
# 
#       #ifdef OS_MODULE_STACKSHARING
#         Os_StackSharing_RemoveTask(proc);
#       #endif /* OS_MODULE_STACKSHARING */
# 
#         {
#           #ifdef OS_CONFIG_RTM_PROCESSES
#             CONST(TaskStateType, AUTOMATIC) prevTaskState = proc->Os_ProcDyn->Os_ProcState;
#           #endif /* OS_CONFIG_RTM_PROCESSES */
# 
#             proc->Os_ProcDyn->Os_ProcState = SUSPENDED;
	.d2line		514
.Llo112:
	diab.li		r0,3
	lwz		r3,8(r31)		# proc=r3 proc=r31
	stw		r0,0(r3)		# proc=r3
# 
#           #ifdef OS_CONFIG_RTM_PROCESSES
#             switch(prevTaskState)
#             {
#                 case READY:
#                     OS_CALL_RTM_PROCESS_STATE_CHANGE(ReadyToSuspended, proc->Os_ProcId, coreID);
#                 break;
# 
#                 case RUNNING:
#                     OS_CALL_RTM_PROCESS_STATE_CHANGE(RunningToSuspended, proc->Os_ProcId, coreID);
#                 break;
# 
#                 case WAITING:
#                     OS_CALL_RTM_PROCESS_STATE_CHANGE(WaitingToSuspended, proc->Os_ProcId, coreID);
#                 break;
# 
#                 default:
#                     /* Not valid state change. */
#                 break;
#             }
#           #endif /* OS_CONFIG_RTM_PROCESSES */
#         }
# 
#        #ifdef OS_MODULE_SPINLOCK
#          /* [OS613-01] [OS613-02] */
#          Os_Spinlock_ReleaseProcSpinlocks(proc);
	.d2line		540
	mr		r3,r31		# proc=r3 proc=r31
	bl		Os_Spinlock_ReleaseProcSpinlocks
	.section	.Os_TEXT,,c
.L11663:
.L11471:
#        #endif /* OS_MODULE_SPINLOCK */
#     } /* Do only if the process is activated. */
# }
	.d2line		543
	.d2epilogue_begin
.Llo109:
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
.L11658:
	.type		Os_TaskKill,@function
	.size		Os_TaskKill,.-Os_TaskKill
# Number of nodes = 243

# Allocations for Os_TaskKill
#	?a4		proc
#	?a5		coreID
#	?a6		isrDyn
#	?a7		isrLvl
#	?a8		inner
# OS_API(TaskMissingEnd)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         547,1
#$$ld
.L11688:

#$$bf	Os_API_TaskMissingEnd,interprocedural,rasave,nostackparams
	.globl		Os_API_TaskMissingEnd
	.d2_cfa_start __cie
Os_API_TaskMissingEnd:
.Llo118:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r4		# callerProc=r31 callerProc=r4
	.d2prologue_end
# {
#     CONST(CoreIdType,AUTOMATIC) coreId = OS_GETCOREID();
	.d2line		549
	mfspr		r30,286
.Llo122:
	mr		r30,r30		# coreId=r30 coreId=r30
# 
#     OS_ASSERT ( callerProc->Os_ProcKind == Os_Proc_Task , E_OS_SYS_TASKMISSINGEND_PROCKIND);
	.d2line		551
	lwz		r0,16(r31)		# callerProc=r31
	se_cmpi		r0,0
	bc		1,2,.L11495	# eq
.Llo119:
	diab.li		r4,45
.Llo120:
	lis		r3,(Os_Core_DynShared+12)@ha
	e_add16i		r3,r3,(Os_Core_DynShared+12)@l
	mfspr		r0,286
	rlwinm		r0,r0,0,16,31
	e_mulli		r0,r0,152
	stwx		r4,r3,r0
	diab.li		r3,30
	bl		Os_ShutdownAllCores
.L11495:
#   #ifdef OS_MODULE_MULTICORE
#     OS_ASSERT ( callerProc->Os_ProcCoreID == coreId, E_OS_SYS_TASKMISSINGEND_COREID);
	.d2line		553
	lhz		r0,4(r31)		# callerProc=r31
	rlwinm		r3,r30,0,16,31		# coreId=r30
	se_cmp		r0,r3
	bc		1,2,.L11500	# eq
	diab.li		r4,46
	lis		r3,(Os_Core_DynShared+12)@ha
	e_add16i		r3,r3,(Os_Core_DynShared+12)@l
	mfspr		r0,286
	rlwinm		r0,r0,0,16,31
	e_mulli		r0,r0,152
	stwx		r4,r3,r0
	diab.li		r3,30
	bl		Os_ShutdownAllCores
.L11500:
#   #endif
# 
#     /* Calling error hook */
#   #ifdef OS_CONFIG_USEPARAMETERACCESS
# 
#     OS_GET_PARAMETER_ERRORCODE ( coreId ).Os_Err_TaskID = callerProc->Os_ProcId;
	.d2line		559
	lwz		r4,0(r31)		# callerProc=r31
	lis		r3,(Os_Core_DynShared+16)@ha		# coreId=r3
	e_add16i		r3,r3,(Os_Core_DynShared+16)@l		# coreId=r3 coreId=r3
	rlwinm		r0,r30,0,16,31		# coreId=r30
	e_mulli		r0,r0,152
	stwx		r4,r3,r0		# coreId=r3
# 
#   #endif
# 
#     OS_CALL_ERRORHOOK(E_OS_MISSINGEND, OSServiceId_INVALIDSERVICE,callerProc); /* [OS069] */
	.d2line		563
	diab.li		r3,15		# coreId=r3
	mr		r5,r31		# callerProc=r5 callerProc=r31
	diab.li		r4,255
	bl		Os_Call_ErrorHook
# 
#     Os_Task_Terminate(callerProc); /* [OS052-01] [OS613-03-MGC] [OS613-04-MGC] */
	.d2line		565
	mr		r3,r31		# callerProc=r3 callerProc=r31
	bl		Os_Task_Terminate
# 
#     if(Os_Isr_Enabled != Os_Isr_GetState(coreId))
	.d2line		567
	mr		r3,r30		# coreId=r3 coreId=r30
	bl		Os_Isr_GetState
	se_cmpi		r3,0		# coreId=r3
	bc		1,2,.L11492	# eq
#     {
#         Os_Isr_ResetState(); /* [OS239] */
	.d2line		569
.Llo121:
	bl		Os_Isr_ResetState
.L11492:
#     }
# }
	.d2line		571
	.d2epilogue_begin
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
.L11689:
	.type		Os_API_TaskMissingEnd,@function
	.size		Os_API_TaskMissingEnd,.-Os_API_TaskMissingEnd
# Number of nodes = 95

# Allocations for Os_API_TaskMissingEnd
#	not allocated	Os_APICall
#	?a4		callerProc
#	?a5		coreId

# Allocations for module
	.section	.text_vle
	.0byte		.L11696
	.section	.text_vle
	.0byte		.L11706
	.section	.Os_BSS,,b
	.0byte		.L11713
	.section	.text_vle
	.0byte		.L11718
	.section	.text_vle
#$$ld
.L5:
.L12200:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_Types.h"
.L12196:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ApplicationApiTypes.h"
.L12194:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ScheduleTableApiTypes.h"
.L12192:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_TaskApiTypes.h"
.L12190:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_SpinlockApiTypes.h"
.L12178:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_Access.h"
.L12172:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\PowerPC\\WindRiver\\AUTOSAR\\ar422\\MemMap.h"
.L12169:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_InternalTypes.h"
.L12152:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ErrorApiTypes.h"
.L12132:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ExceptionApiTypes.h"
.L12088:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_ApplicationCfgTypes.h"
.L12042:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_HookApiTypes.h"
.L12017:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_TrustedFunctionCfgTypes.h"
.L11777:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_ApiDispatchCfgTypes.h"
.L11724:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_SchedulerCfgTypes.h"
.L11719:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_Isr.h"
.L11707:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_CoreCfgTypes.h"
.L11697:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_TaskCfgTypes.h"
	.d2_line_end
	.section	.Os_TEXT,,c
#$$ld
.L11511:
.L11532:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\task\\Os_Tasks.c"
.L11519:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_Isr.h"
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\task\\Os_Tasks.c"
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
.L11508:
	.4byte		.L11509-.L11507
.L11507:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L11513-.L11508
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\task\\Os_Tasks.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L11510
	.4byte		.L11511
	.4byte		.L11514
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11522:
	.sleb128	2
	.4byte		.L11516-.L11508
	.byte		"Os_Isr_GetState"
	.byte		0
	.4byte		.L11519
	.uleb128	227
	.uleb128	45
	.4byte		.L11520
	.byte		0x1
	.4byte		.L11517
	.4byte		.L11518
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L11519
	.uleb128	227
	.uleb128	45
	.byte		"coreId"
	.byte		0
	.4byte		.L11523
	.4byte		.L11527
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11516:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11535:
	.sleb128	4
	.4byte		.L11529-.L11508
	.byte		"Os_TaskOnOtherCore"
	.byte		0
	.4byte		.L11532
	.uleb128	45
	.uleb128	27
	.4byte		.L11533
	.byte		0x1
	.byte		0x1
	.4byte		.L11530
	.4byte		.L11531
	.sleb128	3
	.4byte		.L11532
	.uleb128	45
	.uleb128	27
	.byte		"taskId"
	.byte		0
	.4byte		.L11536
	.4byte		.L11541
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11542:
	.sleb128	5
	.4byte		.L11532
	.uleb128	47
	.uleb128	33
	.byte		"coreId"
	.byte		0
	.4byte		.L11523
	.4byte		.L11543
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11529:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11548:
	.sleb128	4
	.4byte		.L11545-.L11508
	.byte		"Os_Proc_CheckId"
	.byte		0
	.4byte		.L11532
	.uleb128	61
	.uleb128	28
	.4byte		.L11533
	.byte		0x1
	.byte		0x1
	.4byte		.L11546
	.4byte		.L11547
	.sleb128	3
	.4byte		.L11532
	.uleb128	61
	.uleb128	28
	.byte		"procId"
	.byte		0
	.4byte		.L11549
	.4byte		.L11550
.L11551:
	.sleb128	5
	.4byte		.L11532
	.uleb128	63
	.uleb128	33
	.byte		"retVal"
	.byte		0
	.4byte		.L11533
	.4byte		.L11552
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11545:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11557:
	.sleb128	4
	.4byte		.L11554-.L11508
	.byte		"Os_Task_CheckId"
	.byte		0
	.4byte		.L11532
	.uleb128	78
	.uleb128	28
	.4byte		.L11533
	.byte		0x1
	.byte		0x1
	.4byte		.L11555
	.4byte		.L11556
	.sleb128	3
	.4byte		.L11532
	.uleb128	78
	.uleb128	28
	.byte		"taskId"
	.byte		0
	.4byte		.L11558
	.4byte		.L11559
.L11560:
	.sleb128	5
	.4byte		.L11532
	.uleb128	80
	.uleb128	33
	.byte		"retVal"
	.byte		0
	.4byte		.L11533
	.4byte		.L11561
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11554:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11566:
	.sleb128	4
	.4byte		.L11563-.L11508
	.byte		"Os_ISR_CheckId"
	.byte		0
	.4byte		.L11532
	.uleb128	99
	.uleb128	28
	.4byte		.L11533
	.byte		0x1
	.byte		0x1
	.4byte		.L11564
	.4byte		.L11565
	.sleb128	3
	.4byte		.L11532
	.uleb128	99
	.uleb128	28
	.byte		"isrId"
	.byte		0
	.4byte		.L11567
	.4byte		.L11569
.L11570:
	.sleb128	5
	.4byte		.L11532
	.uleb128	101
	.uleb128	33
	.byte		"retVal"
	.byte		0
	.4byte		.L11533
	.4byte		.L11571
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11563:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11576:
	.sleb128	6
	.4byte		.L11573-.L11508
	.byte		"Os_Task_Activate"
	.byte		0
	.4byte		.L11532
	.uleb128	217
	.uleb128	20
	.byte		0x1
	.byte		0x1
	.4byte		.L11574
	.4byte		.L11575
	.sleb128	3
	.4byte		.L11532
	.uleb128	217
	.uleb128	20
	.byte		"proc"
	.byte		0
	.4byte		.L11577
	.4byte		.L11580
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11573:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11585:
	.sleb128	6
	.4byte		.L11582-.L11508
	.byte		"Os_Task_AutoStart"
	.byte		0
	.4byte		.L11532
	.uleb128	124
	.uleb128	20
	.byte		0x1
	.byte		0x1
	.4byte		.L11583
	.4byte		.L11584
	.sleb128	3
	.4byte		.L11532
	.uleb128	124
	.uleb128	20
	.byte		"appMode"
	.byte		0
	.4byte		.L11586
	.4byte		.L11587
	.sleb128	3
	.4byte		.L11532
	.uleb128	124
	.uleb128	20
	.byte		"coreID"
	.byte		0
	.4byte		.L11523
	.4byte		.L11588
.L11589:
	.sleb128	5
	.4byte		.L11532
	.uleb128	127
	.uleb128	34
	.byte		"procIdx"
	.byte		0
	.4byte		.L11538
	.4byte		.L11590
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	7
	.4byte		.L11594
	.4byte		.L11591
	.4byte		.L11592
.L11595:
	.sleb128	5
	.4byte		.L11532
	.uleb128	130
	.uleb128	53
	.byte		"os_proc"
	.byte		0
	.4byte		.L11596
	.4byte		.L11599
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	7
	.4byte		.L11603
	.4byte		.L11600
	.4byte		.L11601
.L11604:
	.sleb128	5
	.4byte		.L11532
	.uleb128	133
	.uleb128	62
	.byte		"os_auto"
	.byte		0
	.4byte		.L11605
	.4byte		.L11608
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	7
	.4byte		.L11612
	.4byte		.L11609
	.4byte		.L11610
.L11613:
	.sleb128	5
	.4byte		.L11532
	.uleb128	137
	.uleb128	46
	.byte		"os_start"
	.byte		0
	.4byte		.L11614
	.4byte		.L11616
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11612:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11603:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11594:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11582:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11621:
	.sleb128	6
	.4byte		.L11618-.L11508
	.byte		"Os_Task_Terminate"
	.byte		0
	.4byte		.L11532
	.uleb128	150
	.uleb128	21
	.byte		0x1
	.byte		0x1
	.4byte		.L11619
	.4byte		.L11620
	.sleb128	3
	.4byte		.L11532
	.uleb128	150
	.uleb128	21
	.byte		"proc"
	.byte		0
	.4byte		.L11577
	.4byte		.L11622
.L11623:
	.sleb128	5
	.4byte		.L11532
	.uleb128	153
	.uleb128	33
	.byte		"coreID"
	.byte		0
	.4byte		.L11523
	.4byte		.L11624
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11618:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11629:
	.sleb128	6
	.4byte		.L11626-.L11508
	.byte		"Os_Task_Release"
	.byte		0
	.4byte		.L11532
	.uleb128	255
	.uleb128	20
	.byte		0x1
	.byte		0x1
	.4byte		.L11627
	.4byte		.L11628
	.sleb128	3
	.4byte		.L11532
	.uleb128	255
	.uleb128	20
	.byte		"proc"
	.byte		0
	.4byte		.L11577
	.4byte		.L11630
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11626:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11635:
	.sleb128	6
	.4byte		.L11632-.L11508
	.byte		"Os_Task_Wait"
	.byte		0
	.4byte		.L11532
	.uleb128	273
	.uleb128	21
	.byte		0x1
	.byte		0x1
	.4byte		.L11633
	.4byte		.L11634
	.sleb128	3
	.4byte		.L11532
	.uleb128	273
	.uleb128	21
	.byte		"proc"
	.byte		0
	.4byte		.L11577
	.4byte		.L11636
.L11637:
	.sleb128	5
	.4byte		.L11532
	.uleb128	276
	.uleb128	34
	.byte		"coreID"
	.byte		0
	.4byte		.L11523
	.4byte		.L11638
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11632:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11643:
	.sleb128	6
	.4byte		.L11640-.L11508
	.byte		"Os_Task_SwitchOut"
	.byte		0
	.4byte		.L11532
	.uleb128	309
	.uleb128	21
	.byte		0x1
	.byte		0x1
	.4byte		.L11641
	.4byte		.L11642
	.sleb128	3
	.4byte		.L11532
	.uleb128	309
	.uleb128	21
	.byte		"proc"
	.byte		0
	.4byte		.L11577
	.4byte		.L11644
.L11645:
	.sleb128	5
	.4byte		.L11532
	.uleb128	312
	.uleb128	33
	.byte		"coreID"
	.byte		0
	.4byte		.L11523
	.4byte		.L11646
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11640:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11651:
	.sleb128	6
	.4byte		.L11648-.L11508
	.byte		"Os_Task_SwitchIn"
	.byte		0
	.4byte		.L11532
	.uleb128	345
	.uleb128	21
	.byte		0x1
	.byte		0x1
	.4byte		.L11649
	.4byte		.L11650
	.sleb128	3
	.4byte		.L11532
	.uleb128	345
	.uleb128	21
	.byte		"proc"
	.byte		0
	.4byte		.L11577
	.4byte		.L11652
.L11653:
	.sleb128	5
	.4byte		.L11532
	.uleb128	348
	.uleb128	33
	.byte		"coreID"
	.byte		0
	.4byte		.L11523
	.4byte		.L11654
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11648:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11659:
	.sleb128	6
	.4byte		.L11656-.L11508
	.byte		"Os_TaskKill"
	.byte		0
	.4byte		.L11532
	.uleb128	417
	.uleb128	20
	.byte		0x1
	.byte		0x1
	.4byte		.L11657
	.4byte		.L11658
	.sleb128	3
	.4byte		.L11532
	.uleb128	417
	.uleb128	20
	.byte		"proc"
	.byte		0
	.4byte		.L11660
	.4byte		.L11661
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	7
	.4byte		.L11665
	.4byte		.L11662
	.4byte		.L11663
.L11666:
	.sleb128	5
	.4byte		.L11532
	.uleb128	422
	.uleb128	37
	.byte		"coreID"
	.byte		0
	.4byte		.L11523
	.4byte		.L11667
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	7
	.4byte		.L11671
	.4byte		.L11668
	.4byte		.L11669
.L11672:
	.sleb128	5
	.4byte		.L11532
	.uleb128	481
	.uleb128	64
	.byte		"isrDyn"
	.byte		0
	.4byte		.L11673
	.4byte		.L11677
.L11678:
	.sleb128	5
	.4byte		.L11532
	.uleb128	482
	.uleb128	40
	.byte		"isrLvl"
	.byte		0
	.4byte		.L11539
	.4byte		.L11679
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	7
	.4byte		.L11683
	.4byte		.L11680
	.4byte		.L11681
.L11684:
	.sleb128	5
	.4byte		.L11532
	.uleb128	488
	.uleb128	51
	.byte		"inner"
	.byte		0
	.4byte		.L11537
	.4byte		.L11685
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11683:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11671:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11665:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11656:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11690:
	.sleb128	6
	.4byte		.L11687-.L11508
	.byte		"Os_API_TaskMissingEnd"
	.byte		0
	.4byte		.L11532
	.uleb128	547
	.uleb128	1
	.byte		0x1
	.byte		0x1
	.4byte		.L11688
	.4byte		.L11689
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	8
	.4byte		.L11532
	.uleb128	547
	.uleb128	1
	.byte		"Os_APICall"
	.byte		0
	.4byte		.L11691
	.sleb128	2
	.byte		0x90
	.uleb128	3
	.sleb128	3
	.4byte		.L11532
	.uleb128	547
	.uleb128	1
	.byte		"callerProc"
	.byte		0
	.4byte		.L11660
	.4byte		.L11693
.L11694:
	.sleb128	5
	.4byte		.L11532
	.uleb128	549
	.uleb128	33
	.byte		"coreId"
	.byte		0
	.4byte		.L11523
	.4byte		.L11695
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11687:
	.section	.debug_info,,n
.L11696:
	.sleb128	9
	.byte		0x1
	.byte		0x1
	.4byte		.L11697
	.uleb128	211
	.uleb128	45
	.byte		"Os_Proc_Stat"
	.byte		0
	.4byte		.L11698
	.section	.debug_info,,n
.L11700:
	.sleb128	9
	.byte		0x1
	.byte		0x1
	.4byte		.L11697
	.uleb128	213
	.uleb128	45
	.byte		"Os_ProcRange"
	.byte		0
	.4byte		.L11701
.L11706:
	.sleb128	9
	.byte		0x1
	.byte		0x1
	.4byte		.L11707
	.uleb128	169
	.uleb128	42
	.byte		"Os_Core_Stat"
	.byte		0
	.4byte		.L11708
	.section	.debug_info,,n
.L11713:
	.sleb128	9
	.byte		0x1
	.byte		0x1
	.4byte		.L11707
	.uleb128	181
	.uleb128	45
	.byte		"Os_Core_DynShared"
	.byte		0
	.4byte		.L11714
	.section	.debug_info,,n
.L11718:
	.sleb128	9
	.byte		0x1
	.byte		0x1
	.4byte		.L11719
	.uleb128	167
	.uleb128	79
	.byte		"Os_IsrCurrentIsr"
	.byte		0
	.4byte		.L11720
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11712:
	.sleb128	10
	.4byte		.L11724
	.uleb128	69
	.uleb128	1
	.4byte		.L11725-.L2
	.uleb128	20
	.section	.debug_info,,n
.L788:
	.sleb128	11
	.byte		"Os_Core_DynInit"
	.byte		0
	.4byte		.L11726
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L789:
	.sleb128	11
	.byte		"Os_Core_Dyn"
	.byte		0
	.4byte		.L11730
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L790:
	.sleb128	11
	.byte		"Os_DispatchElement"
	.byte		0
	.4byte		.L11734
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L791:
	.sleb128	11
	.byte		"Os_PrepareContextFunction"
	.byte		0
	.4byte		.L11738
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L792:
	.sleb128	11
	.byte		"Os_GetStackPointerFunction"
	.byte		0
	.4byte		.L11744
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11725:
.L11729:
	.sleb128	10
	.4byte		.L11724
	.uleb128	69
	.uleb128	1
	.4byte		.L11751-.L2
	.uleb128	36
.L785:
	.sleb128	11
	.byte		"Os_IsrDynInit"
	.byte		0
	.4byte		.L11752
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L786:
	.sleb128	11
	.byte		"Os_SchedulerDynInit"
	.byte		0
	.4byte		.L11754
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L787:
	.sleb128	11
	.byte		"Os_CurrentApp"
	.byte		0
	.4byte		.L11756
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
	.sleb128	0
.L11751:
.L11717:
	.sleb128	10
	.4byte		.L11724
	.uleb128	69
	.uleb128	1
	.4byte		.L11760-.L2
	.uleb128	152
.L778:
	.sleb128	11
	.byte		"Os_Dispatcher"
	.byte		0
	.4byte		.L11761
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L779:
	.sleb128	11
	.byte		"Os_PublicDataNoInit"
	.byte		0
	.4byte		.L11763
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11760:
.L11733:
	.sleb128	10
	.4byte		.L11724
	.uleb128	69
	.uleb128	1
	.4byte		.L11765-.L2
	.uleb128	104
.L775:
	.sleb128	11
	.byte		"Os_SchedulerDyn"
	.byte		0
	.4byte		.L11766
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L776:
	.sleb128	11
	.byte		"Os_IsrDyn"
	.byte		0
	.4byte		.L11675
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L777:
	.sleb128	11
	.byte		"Os_HooksDyn"
	.byte		0
	.4byte		.L11768
	.sleb128	2
	.byte		0x23
	.uleb128	100
	.byte		0x1
	.sleb128	0
.L11765:
.L11755:
	.sleb128	10
	.4byte		.L11724
	.uleb128	69
	.uleb128	1
	.4byte		.L11770-.L2
	.uleb128	4
.L774:
	.sleb128	11
	.byte		"Os_SchedulerCurrentProc"
	.byte		0
	.4byte		.L11577
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11770:
.L11767:
	.sleb128	10
	.4byte		.L11724
	.uleb128	69
	.uleb128	1
	.4byte		.L11771-.L2
	.uleb128	48
.L766:
	.sleb128	11
	.byte		"Os_CurrentContext"
	.byte		0
	.4byte		.L11749
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L767:
	.sleb128	11
	.byte		"Os_PreviousContext"
	.byte		0
	.4byte		.L11749
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L768:
	.sleb128	11
	.byte		"Os_SchedulerScheduleAction"
	.byte		0
	.4byte		.L11772
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L769:
	.sleb128	11
	.byte		"Os_SchedulerLastScheduledPriority"
	.byte		0
	.4byte		.L11774
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L770:
	.sleb128	11
	.byte		"Os_SchedulerCurrentTask"
	.byte		0
	.4byte		.L11577
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L771:
	.sleb128	11
	.byte		"Os_SchedulerLastScheduledProc"
	.byte		0
	.4byte		.L11577
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L772:
	.sleb128	11
	.byte		"Os_SchedulerHeadPivot"
	.byte		0
	.4byte		.L11775
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L773:
	.sleb128	11
	.byte		"Os_SchedulerTailPivot"
	.byte		0
	.4byte		.L11775
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
	.sleb128	0
.L11771:
	.section	.debug_info,,n
.L11776:
	.sleb128	12
	.4byte		.L11777
	.uleb128	612
	.uleb128	1
	.4byte		.L11778-.L2
	.byte		"Os_SchedulerQueueElementType_s"
	.byte		0
	.uleb128	12
.L752:
	.sleb128	11
	.byte		"Os_QueueProc"
	.byte		0
	.4byte		.L11577
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L753:
	.sleb128	11
	.byte		"Os_QueueFrontElement"
	.byte		0
	.4byte		.L11779
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L754:
	.sleb128	11
	.byte		"Os_QueueBackElement"
	.byte		0
	.4byte		.L11779
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11778:
.L11753:
	.sleb128	10
	.4byte		.L11777
	.uleb128	612
	.uleb128	1
	.4byte		.L11780-.L2
	.uleb128	28
.L745:
	.sleb128	11
	.byte		"Os_CurrentUserModePriority"
	.byte		0
	.4byte		.L11781
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L746:
	.sleb128	11
	.byte		"Os_UserModePriorityChanged"
	.byte		0
	.4byte		.L11782
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L747:
	.sleb128	11
	.byte		"Os_DisableAllCount"
	.byte		0
	.4byte		.L11539
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L748:
	.sleb128	11
	.byte		"Os_SuspendAllCount"
	.byte		0
	.4byte		.L11539
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L749:
	.sleb128	11
	.byte		"Os_SuspendOSCount"
	.byte		0
	.4byte		.L11539
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L750:
	.sleb128	11
	.byte		"Os_SavedIsrLevel"
	.byte		0
	.4byte		.L11781
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L751:
	.sleb128	11
	.byte		"Os_SavedOSIsrLevel"
	.byte		0
	.4byte		.L11781
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
	.sleb128	0
.L11780:
.L11676:
	.sleb128	10
	.4byte		.L11777
	.uleb128	612
	.uleb128	1
	.4byte		.L11784-.L2
	.uleb128	52
.L739:
	.sleb128	11
	.byte		"Os_IsrRunningIsr"
	.byte		0
	.4byte		.L11577
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L740:
	.sleb128	11
	.byte		"Os_IsrNeedToClear"
	.byte		0
	.4byte		.L11785
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L741:
	.sleb128	11
	.byte		"Os_Isr_NestLevel"
	.byte		0
	.4byte		.L11539
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L742:
	.sleb128	11
	.byte		"Os_Isr_ServicesBackup"
	.byte		0
	.4byte		.L11789
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L743:
	.sleb128	11
	.byte		"Os_SuspendAllPrevIsrState"
	.byte		0
	.4byte		.L11781
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L744:
	.sleb128	11
	.byte		"Os_SuspendCounterpartTrack"
	.byte		0
	.4byte		.L11793
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L11784:
.L11762:
	.sleb128	10
	.4byte		.L11777
	.uleb128	612
	.uleb128	1
	.4byte		.L11795-.L2
	.uleb128	8
.L737:
	.sleb128	11
	.byte		"Os_DHead"
	.byte		0
	.4byte		.L11539
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L738:
	.sleb128	11
	.byte		"Os_DTail"
	.byte		0
	.4byte		.L11539
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11795:
.L11737:
	.sleb128	12
	.4byte		.L11777
	.uleb128	612
	.uleb128	1
	.4byte		.L11796-.L2
	.byte		"Os_DispatchElementType_s"
	.byte		0
	.uleb128	56
.L732:
	.sleb128	11
	.byte		"Os_DispatchKind"
	.byte		0
	.4byte		.L11797
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L733:
	.sleb128	11
	.byte		"Os_DispatcherLockCoreId"
	.byte		0
	.4byte		.L11524
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L734:
	.sleb128	11
	.byte		"Os_DispatchIsrId"
	.byte		0
	.4byte		.L11568
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L735:
	.sleb128	11
	.byte		"Os_DispatchApiCall"
	.byte		0
	.4byte		.L11799
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L736:
	.sleb128	11
	.byte		"Os_DispatchApiInternal"
	.byte		0
	.4byte		.L11800
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11796:
.L11692:
	.sleb128	12
	.4byte		.L11777
	.uleb128	60
	.uleb128	1
	.4byte		.L11801-.L2
	.byte		"Os_APICallType_struct"
	.byte		0
	.uleb128	40
.L727:
	.sleb128	11
	.byte		"Os_API_Magic"
	.byte		0
	.4byte		.L11539
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L728:
	.sleb128	11
	.byte		"Os_API_ReturnValue"
	.byte		0
	.4byte		.L11802
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L729:
	.sleb128	11
	.byte		"Os_API_Lock"
	.byte		0
	.4byte		.L11804
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L730:
	.sleb128	11
	.byte		"Os_API_Func"
	.byte		0
	.4byte		.L11806
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L731:
	.sleb128	11
	.byte		"Os_API_Data"
	.byte		0
	.4byte		.L11810
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11801:
	.section	.debug_info,,n
.L11810:
	.sleb128	13
	.4byte		.L11777
	.uleb128	60
	.uleb128	1
	.4byte		.L11811-.L2
	.uleb128	24
.L679:
	.sleb128	11
	.byte		"Os_ApiStartOs"
	.byte		0
	.4byte		.L11812
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L680:
	.sleb128	11
	.byte		"Os_ApiShutdownOs"
	.byte		0
	.4byte		.L11814
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L681:
	.sleb128	11
	.byte		"Os_ApiShutdownOsInternal"
	.byte		0
	.4byte		.L11816
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L682:
	.sleb128	11
	.byte		"Os_ApiShutdownAllCores"
	.byte		0
	.4byte		.L11818
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L683:
	.sleb128	11
	.byte		"Os_ApiGetNumberOfActivatedCores"
	.byte		0
	.4byte		.L11820
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L684:
	.sleb128	11
	.byte		"Os_ApiStartCore"
	.byte		0
	.4byte		.L11822
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L685:
	.sleb128	11
	.byte		"Os_ApiStartNonAutosarCore"
	.byte		0
	.4byte		.L11824
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L686:
	.sleb128	11
	.byte		"Os_ApiGetCoreID"
	.byte		0
	.4byte		.L11826
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L687:
	.sleb128	11
	.byte		"Os_ApiActivateTask"
	.byte		0
	.4byte		.L11828
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L688:
	.sleb128	11
	.byte		"Os_ApiChainTask"
	.byte		0
	.4byte		.L11830
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L689:
	.sleb128	11
	.byte		"Os_ApiGetTaskID"
	.byte		0
	.4byte		.L11832
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L690:
	.sleb128	11
	.byte		"Os_ApiGetTaskState"
	.byte		0
	.4byte		.L11834
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L691:
	.sleb128	11
	.byte		"Os_ApiSetEvent"
	.byte		0
	.4byte		.L11836
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L692:
	.sleb128	11
	.byte		"Os_ApiClearEvent"
	.byte		0
	.4byte		.L11838
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L693:
	.sleb128	11
	.byte		"Os_ApiGetEvent"
	.byte		0
	.4byte		.L11840
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L694:
	.sleb128	11
	.byte		"Os_ApiWaitEvent"
	.byte		0
	.4byte		.L11842
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L695:
	.sleb128	11
	.byte		"Os_ApiGetResource"
	.byte		0
	.4byte		.L11844
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L696:
	.sleb128	11
	.byte		"Os_ApiReleaseResource"
	.byte		0
	.4byte		.L11846
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L697:
	.sleb128	11
	.byte		"Os_ApiGetAlarmBase"
	.byte		0
	.4byte		.L11848
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L698:
	.sleb128	11
	.byte		"Os_ApiGetAlarm"
	.byte		0
	.4byte		.L11850
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L699:
	.sleb128	11
	.byte		"Os_ApiSetRelAlarm"
	.byte		0
	.4byte		.L11852
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L700:
	.sleb128	11
	.byte		"Os_ApiSetAbsAlarm"
	.byte		0
	.4byte		.L11854
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L701:
	.sleb128	11
	.byte		"Os_ApiCancelAlarm"
	.byte		0
	.4byte		.L11856
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L702:
	.sleb128	11
	.byte		"Os_ApiGetApplicationState"
	.byte		0
	.4byte		.L11858
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L703:
	.sleb128	11
	.byte		"Os_ApiTerminateApplication"
	.byte		0
	.4byte		.L11860
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L704:
	.sleb128	11
	.byte		"Os_ApiGetApplicationID"
	.byte		0
	.4byte		.L11862
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L705:
	.sleb128	11
	.byte		"Os_ApiGetISRID"
	.byte		0
	.4byte		.L11864
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L706:
	.sleb128	11
	.byte		"Os_ApiGetActiveApplicationMode"
	.byte		0
	.4byte		.L11866
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L707:
	.sleb128	11
	.byte		"Os_ApiIncrementCounter"
	.byte		0
	.4byte		.L11868
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L708:
	.sleb128	11
	.byte		"Os_ApiGetCounterValue"
	.byte		0
	.4byte		.L11870
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L709:
	.sleb128	11
	.byte		"Os_ApiGetElapsedValue"
	.byte		0
	.4byte		.L11872
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L710:
	.sleb128	11
	.byte		"Os_ApiStartScheduleTableAbs"
	.byte		0
	.4byte		.L11874
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L711:
	.sleb128	11
	.byte		"Os_ApiStartScheduleTableRel"
	.byte		0
	.4byte		.L11876
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L712:
	.sleb128	11
	.byte		"Os_ApiStopScheduleTable"
	.byte		0
	.4byte		.L11878
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L713:
	.sleb128	11
	.byte		"Os_ApiGetScheduleTableStatus"
	.byte		0
	.4byte		.L11880
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L714:
	.sleb128	11
	.byte		"Os_ApiNextScheduleTable"
	.byte		0
	.4byte		.L11882
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L715:
	.sleb128	11
	.byte		"Os_ApiStartScheduleTableSynchron"
	.byte		0
	.4byte		.L11884
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L716:
	.sleb128	11
	.byte		"Os_ApiSyncScheduleTable"
	.byte		0
	.4byte		.L11886
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L717:
	.sleb128	11
	.byte		"Os_ApiSetScheduleTableAsync"
	.byte		0
	.4byte		.L11888
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L718:
	.sleb128	11
	.byte		"Os_ApiCheckObjectAccess"
	.byte		0
	.4byte		.L11890
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L719:
	.sleb128	11
	.byte		"Os_ApiCheckObjectOwnership"
	.byte		0
	.4byte		.L11892
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L720:
	.sleb128	11
	.byte		"Os_ApiCallTrustedFunction"
	.byte		0
	.4byte		.L11894
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L721:
	.sleb128	11
	.byte		"Os_ApiStackUsage"
	.byte		0
	.4byte		.L11896
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L722:
	.sleb128	11
	.byte		"Os_API_GetSpinlock"
	.byte		0
	.4byte		.L11898
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L723:
	.sleb128	11
	.byte		"Os_API_ReleaseSpinlock"
	.byte		0
	.4byte		.L11900
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L724:
	.sleb128	11
	.byte		"Os_API_TryToGetSpinlock"
	.byte		0
	.4byte		.L11902
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L725:
	.sleb128	11
	.byte		"Os_API_IOCTransfer"
	.byte		0
	.4byte		.L11904
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L726:
	.sleb128	11
	.byte		"Os_ApiControlIdle"
	.byte		0
	.4byte		.L11906
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11811:
.L11907:
	.sleb128	10
	.4byte		.L11777
	.uleb128	60
	.uleb128	1
	.4byte		.L11908-.L2
	.uleb128	8
.L677:
	.sleb128	11
	.byte		"CoreID"
	.byte		0
	.4byte		.L11524
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L678:
	.sleb128	11
	.byte		"IdleMode"
	.byte		0
	.4byte		.L11909
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11908:
.L11905:
	.sleb128	10
	.4byte		.L11777
	.uleb128	60
	.uleb128	1
	.4byte		.L11911-.L2
	.uleb128	8
.L675:
	.sleb128	11
	.byte		"Ioc_Channel"
	.byte		0
	.4byte		.L11912
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L676:
	.sleb128	11
	.byte		"Ioc_Data"
	.byte		0
	.4byte		.L11916
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11911:
.L11903:
	.sleb128	10
	.4byte		.L11777
	.uleb128	60
	.uleb128	1
	.4byte		.L11922-.L2
	.uleb128	8
.L673:
	.sleb128	11
	.byte		"SpinlockId"
	.byte		0
	.4byte		.L11923
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L674:
	.sleb128	11
	.byte		"Success"
	.byte		0
	.4byte		.L11924
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11922:
.L11901:
	.sleb128	10
	.4byte		.L11777
	.uleb128	60
	.uleb128	1
	.4byte		.L11927-.L2
	.uleb128	2
.L672:
	.sleb128	11
	.byte		"SpinlockId"
	.byte		0
	.4byte		.L11923
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11927:
.L11899:
	.sleb128	10
	.4byte		.L11777
	.uleb128	60
	.uleb128	1
	.4byte		.L11928-.L2
	.uleb128	2
.L671:
	.sleb128	11
	.byte		"SpinlockId"
	.byte		0
	.4byte		.L11923
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11928:
.L11897:
	.sleb128	10
	.4byte		.L11777
	.uleb128	60
	.uleb128	1
	.4byte		.L11929-.L2
	.uleb128	20
.L666:
	.sleb128	11
	.byte		"ProcId"
	.byte		0
	.4byte		.L11536
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L667:
	.sleb128	11
	.byte		"MaxUsage"
	.byte		0
	.4byte		.L11803
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L668:
	.sleb128	11
	.byte		"MaxUsageRef"
	.byte		0
	.4byte		.L11930
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L669:
	.sleb128	11
	.byte		"CurrentUsage"
	.byte		0
	.4byte		.L11803
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L670:
	.sleb128	11
	.byte		"CurrentUsageRef"
	.byte		0
	.4byte		.L11930
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11929:
.L11895:
	.sleb128	10
	.4byte		.L11777
	.uleb128	60
	.uleb128	1
	.4byte		.L11931-.L2
	.uleb128	12
.L663:
	.sleb128	11
	.byte		"FunctionIndex"
	.byte		0
	.4byte		.L11932
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L664:
	.sleb128	11
	.byte		"ParamRef"
	.byte		0
	.4byte		.L11933
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L665:
	.sleb128	11
	.byte		"ReturnValue"
	.byte		0
	.4byte		.L11934
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11931:
.L11893:
	.sleb128	10
	.4byte		.L11777
	.uleb128	60
	.uleb128	1
	.4byte		.L11936-.L2
	.uleb128	12
.L660:
	.sleb128	11
	.byte		"AppID"
	.byte		0
	.4byte		.L11937
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L661:
	.sleb128	11
	.byte		"ObjectType"
	.byte		0
	.4byte		.L11938
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L662:
	.sleb128	11
	.byte		"Object"
	.byte		0
	.4byte		.L11538
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11936:
.L11891:
	.sleb128	10
	.4byte		.L11777
	.uleb128	60
	.uleb128	1
	.4byte		.L11940-.L2
	.uleb128	12
.L657:
	.sleb128	11
	.byte		"AppID"
	.byte		0
	.4byte		.L11937
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L658:
	.sleb128	11
	.byte		"ObjectType"
	.byte		0
	.4byte		.L11938
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L659:
	.sleb128	11
	.byte		"Object"
	.byte		0
	.4byte		.L11538
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11940:
.L11857:
	.sleb128	10
	.4byte		.L11777
	.uleb128	60
	.uleb128	1
	.4byte		.L11941-.L2
	.uleb128	4
.L656:
	.sleb128	11
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11942
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11941:
.L11855:
	.sleb128	10
	.4byte		.L11777
	.uleb128	60
	.uleb128	1
	.4byte		.L11943-.L2
	.uleb128	12
.L653:
	.sleb128	11
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11942
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L654:
	.sleb128	11
	.byte		"Start"
	.byte		0
	.4byte		.L11944
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L655:
	.sleb128	11
	.byte		"Cycle"
	.byte		0
	.4byte		.L11944
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11943:
.L11853:
	.sleb128	10
	.4byte		.L11777
	.uleb128	60
	.uleb128	1
	.4byte		.L11945-.L2
	.uleb128	12
.L650:
	.sleb128	11
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11942
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L651:
	.sleb128	11
	.byte		"Increment"
	.byte		0
	.4byte		.L11944
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L652:
	.sleb128	11
	.byte		"Cycle"
	.byte		0
	.4byte		.L11944
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11945:
.L11851:
	.sleb128	10
	.4byte		.L11777
	.uleb128	60
	.uleb128	1
	.4byte		.L11946-.L2
	.uleb128	8
.L648:
	.sleb128	11
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11942
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L649:
	.sleb128	11
	.byte		"TickRef"
	.byte		0
	.4byte		.L11947
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11946:
.L11849:
	.sleb128	10
	.4byte		.L11777
	.uleb128	60
	.uleb128	1
	.4byte		.L11949-.L2
	.uleb128	8
.L646:
	.sleb128	11
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11942
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L647:
	.sleb128	11
	.byte		"AlarmBaseTypeRef"
	.byte		0
	.4byte		.L11950
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11949:
.L11889:
	.sleb128	10
	.4byte		.L11777
	.uleb128	60
	.uleb128	1
	.4byte		.L11954-.L2
	.uleb128	4
.L645:
	.sleb128	11
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11955
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11954:
.L11887:
	.sleb128	10
	.4byte		.L11777
	.uleb128	60
	.uleb128	1
	.4byte		.L11956-.L2
	.uleb128	8
.L643:
	.sleb128	11
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11955
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L644:
	.sleb128	11
	.byte		"SyncValue"
	.byte		0
	.4byte		.L11944
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11956:
.L11885:
	.sleb128	10
	.4byte		.L11777
	.uleb128	60
	.uleb128	1
	.4byte		.L11957-.L2
	.uleb128	4
.L642:
	.sleb128	11
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11955
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11957:
.L11883:
	.sleb128	10
	.4byte		.L11777
	.uleb128	60
	.uleb128	1
	.4byte		.L11958-.L2
	.uleb128	8
.L640:
	.sleb128	11
	.byte		"SchTblIdFrom"
	.byte		0
	.4byte		.L11955
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L641:
	.sleb128	11
	.byte		"SchTblIdTo"
	.byte		0
	.4byte		.L11955
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11958:
.L11881:
	.sleb128	10
	.4byte		.L11777
	.uleb128	60
	.uleb128	1
	.4byte		.L11959-.L2
	.uleb128	8
.L638:
	.sleb128	11
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11955
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L639:
	.sleb128	11
	.byte		"SchTblStatus"
	.byte		0
	.4byte		.L11960
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11959:
.L11879:
	.sleb128	10
	.4byte		.L11777
	.uleb128	60
	.uleb128	1
	.4byte		.L11964-.L2
	.uleb128	4
.L637:
	.sleb128	11
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11955
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11964:
.L11877:
	.sleb128	10
	.4byte		.L11777
	.uleb128	60
	.uleb128	1
	.4byte		.L11965-.L2
	.uleb128	8
.L635:
	.sleb128	11
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11955
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L636:
	.sleb128	11
	.byte		"Offset"
	.byte		0
	.4byte		.L11944
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11965:
.L11875:
	.sleb128	10
	.4byte		.L11777
	.uleb128	60
	.uleb128	1
	.4byte		.L11966-.L2
	.uleb128	8
.L633:
	.sleb128	11
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11955
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L634:
	.sleb128	11
	.byte		"Start"
	.byte		0
	.4byte		.L11944
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11966:
.L11873:
	.sleb128	10
	.4byte		.L11777
	.uleb128	60
	.uleb128	1
	.4byte		.L11967-.L2
	.uleb128	12
.L630:
	.sleb128	11
	.byte		"CounterId"
	.byte		0
	.4byte		.L11968
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L631:
	.sleb128	11
	.byte		"ValuePtr"
	.byte		0
	.4byte		.L11947
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L632:
	.sleb128	11
	.byte		"ElapsedValuePtr"
	.byte		0
	.4byte		.L11947
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11967:
.L11871:
	.sleb128	10
	.4byte		.L11777
	.uleb128	60
	.uleb128	1
	.4byte		.L11969-.L2
	.uleb128	12
.L627:
	.sleb128	11
	.byte		"CounterId"
	.byte		0
	.4byte		.L11968
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L628:
	.sleb128	11
	.byte		"ValuePtr"
	.byte		0
	.4byte		.L11947
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L629:
	.sleb128	11
	.byte		"LightServiceFunction"
	.byte		0
	.4byte		.L11970
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11969:
.L11869:
	.sleb128	10
	.4byte		.L11777
	.uleb128	60
	.uleb128	1
	.4byte		.L11974-.L2
	.uleb128	4
.L626:
	.sleb128	11
	.byte		"CounterId"
	.byte		0
	.4byte		.L11968
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11974:
.L11865:
	.sleb128	10
	.4byte		.L11777
	.uleb128	60
	.uleb128	1
	.4byte		.L11975-.L2
	.uleb128	4
.L625:
	.sleb128	11
	.byte		"ISRId"
	.byte		0
	.4byte		.L11568
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11975:
.L11861:
	.sleb128	10
	.4byte		.L11777
	.uleb128	60
	.uleb128	1
	.4byte		.L11976-.L2
	.uleb128	2
.L623:
	.sleb128	11
	.byte		"Application"
	.byte		0
	.4byte		.L11937
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L624:
	.sleb128	11
	.byte		"RestartOption"
	.byte		0
	.4byte		.L11977
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
	.sleb128	0
.L11976:
.L11863:
	.sleb128	10
	.4byte		.L11777
	.uleb128	60
	.uleb128	1
	.4byte		.L11978-.L2
	.uleb128	1
.L622:
	.sleb128	11
	.byte		"Application"
	.byte		0
	.4byte		.L11937
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11978:
.L11859:
	.sleb128	10
	.4byte		.L11777
	.uleb128	60
	.uleb128	1
	.4byte		.L11979-.L2
	.uleb128	8
.L620:
	.sleb128	11
	.byte		"Application"
	.byte		0
	.4byte		.L11937
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L621:
	.sleb128	11
	.byte		"AppStateRef"
	.byte		0
	.4byte		.L11980
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11979:
.L11843:
	.sleb128	10
	.4byte		.L11777
	.uleb128	60
	.uleb128	1
	.4byte		.L11983-.L2
	.uleb128	8
.L619:
	.sleb128	11
	.byte		"EventMask"
	.byte		0
	.4byte		.L11984
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11983:
.L11841:
	.sleb128	10
	.4byte		.L11777
	.uleb128	60
	.uleb128	1
	.4byte		.L11987-.L2
	.uleb128	24
.L616:
	.sleb128	11
	.byte		"TaskId"
	.byte		0
	.4byte		.L11536
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L617:
	.sleb128	11
	.byte		"EventMask"
	.byte		0
	.4byte		.L11984
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L618:
	.sleb128	11
	.byte		"EventMaskRef"
	.byte		0
	.4byte		.L11988
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11987:
.L11839:
	.sleb128	10
	.4byte		.L11777
	.uleb128	60
	.uleb128	1
	.4byte		.L11990-.L2
	.uleb128	8
.L615:
	.sleb128	11
	.byte		"EventMask"
	.byte		0
	.4byte		.L11984
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11990:
.L11837:
	.sleb128	10
	.4byte		.L11777
	.uleb128	60
	.uleb128	1
	.4byte		.L11991-.L2
	.uleb128	16
.L613:
	.sleb128	11
	.byte		"TaskId"
	.byte		0
	.4byte		.L11536
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L614:
	.sleb128	11
	.byte		"EventMask"
	.byte		0
	.4byte		.L11984
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11991:
.L11835:
	.sleb128	10
	.4byte		.L11777
	.uleb128	60
	.uleb128	1
	.4byte		.L11992-.L2
	.uleb128	8
.L611:
	.sleb128	11
	.byte		"TaskId"
	.byte		0
	.4byte		.L11536
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L612:
	.sleb128	11
	.byte		"TaskStateRef"
	.byte		0
	.4byte		.L11993
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11992:
.L11833:
	.sleb128	10
	.4byte		.L11777
	.uleb128	60
	.uleb128	1
	.4byte		.L11997-.L2
	.uleb128	4
.L610:
	.sleb128	11
	.byte		"TaskIdRef"
	.byte		0
	.4byte		.L11998
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11997:
.L11831:
	.sleb128	10
	.4byte		.L11777
	.uleb128	60
	.uleb128	1
	.4byte		.L12000-.L2
	.uleb128	4
.L609:
	.sleb128	11
	.byte		"TaskId"
	.byte		0
	.4byte		.L11536
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12000:
.L11829:
	.sleb128	10
	.4byte		.L11777
	.uleb128	60
	.uleb128	1
	.4byte		.L12001-.L2
	.uleb128	4
.L608:
	.sleb128	11
	.byte		"TaskId"
	.byte		0
	.4byte		.L11536
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12001:
.L11847:
	.sleb128	10
	.4byte		.L11777
	.uleb128	60
	.uleb128	1
	.4byte		.L12002-.L2
	.uleb128	4
.L607:
	.sleb128	11
	.byte		"ResourceId"
	.byte		0
	.4byte		.L12003
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12002:
.L11845:
	.sleb128	10
	.4byte		.L11777
	.uleb128	60
	.uleb128	1
	.4byte		.L12004-.L2
	.uleb128	4
.L606:
	.sleb128	11
	.byte		"ResourceId"
	.byte		0
	.4byte		.L12003
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12004:
.L11867:
	.sleb128	10
	.4byte		.L11777
	.uleb128	60
	.uleb128	1
	.4byte		.L12005-.L2
	.uleb128	4
.L605:
	.sleb128	11
	.byte		"AppMode"
	.byte		0
	.4byte		.L11586
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12005:
.L11827:
	.sleb128	10
	.4byte		.L11777
	.uleb128	60
	.uleb128	1
	.4byte		.L12006-.L2
	.uleb128	2
.L604:
	.sleb128	11
	.byte		"CoreID"
	.byte		0
	.4byte		.L11524
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12006:
.L11821:
	.sleb128	10
	.4byte		.L11777
	.uleb128	60
	.uleb128	1
	.4byte		.L12007-.L2
	.uleb128	2
.L603:
	.sleb128	11
	.byte		"NumberOfActivatedCores"
	.byte		0
	.4byte		.L11524
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12007:
.L11819:
	.sleb128	10
	.4byte		.L11777
	.uleb128	60
	.uleb128	1
	.4byte		.L12008-.L2
	.uleb128	1
.L602:
	.sleb128	11
	.byte		"Error"
	.byte		0
	.4byte		.L11802
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12008:
.L11817:
	.sleb128	10
	.4byte		.L11777
	.uleb128	60
	.uleb128	1
	.4byte		.L12009-.L2
	.uleb128	8
.L600:
	.sleb128	11
	.byte		"ShutdownType"
	.byte		0
	.4byte		.L12010
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L601:
	.sleb128	11
	.byte		"Error"
	.byte		0
	.4byte		.L11802
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12009:
.L11815:
	.sleb128	10
	.4byte		.L11777
	.uleb128	60
	.uleb128	1
	.4byte		.L12012-.L2
	.uleb128	1
.L599:
	.sleb128	11
	.byte		"Error"
	.byte		0
	.4byte		.L11802
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12012:
.L11825:
	.sleb128	10
	.4byte		.L11777
	.uleb128	60
	.uleb128	1
	.4byte		.L12013-.L2
	.uleb128	8
.L597:
	.sleb128	11
	.byte		"CoreID"
	.byte		0
	.4byte		.L11524
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L598:
	.sleb128	11
	.byte		"StatusRef"
	.byte		0
	.4byte		.L12014
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12013:
.L11823:
	.sleb128	10
	.4byte		.L11777
	.uleb128	60
	.uleb128	1
	.4byte		.L12015-.L2
	.uleb128	8
.L595:
	.sleb128	11
	.byte		"CoreID"
	.byte		0
	.4byte		.L11524
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L596:
	.sleb128	11
	.byte		"StatusRef"
	.byte		0
	.4byte		.L12014
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12015:
.L11813:
	.sleb128	10
	.4byte		.L11777
	.uleb128	60
	.uleb128	1
	.4byte		.L12016-.L2
	.uleb128	4
.L594:
	.sleb128	11
	.byte		"AppMode"
	.byte		0
	.4byte		.L11586
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12016:
.L11915:
	.sleb128	10
	.4byte		.L12017
	.uleb128	33
	.uleb128	14
	.4byte		.L12018-.L2
	.uleb128	24
.L587:
	.sleb128	11
	.byte		"Os_IOC_ChannelDyn"
	.byte		0
	.4byte		.L12019
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L588:
	.sleb128	11
	.byte		"Os_IOC_ChannelLength"
	.byte		0
	.4byte		.L12023
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L589:
	.sleb128	11
	.byte		"Os_IOC_ChannelBuffer"
	.byte		0
	.4byte		.L12024
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L590:
	.sleb128	11
	.byte		"Os_IOC_ChannelElementSize"
	.byte		0
	.4byte		.L12025
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L591:
	.sleb128	11
	.byte		"Os_IOC_DataCount"
	.byte		0
	.4byte		.L12026
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L592:
	.sleb128	11
	.byte		"Os_IOC_DataDescriptor"
	.byte		0
	.4byte		.L12028
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L593:
	.sleb128	11
	.byte		"Os_IOC_LockResourceAddress"
	.byte		0
	.4byte		.L12033
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L12018:
.L12032:
	.sleb128	10
	.4byte		.L12017
	.uleb128	33
	.uleb128	14
	.4byte		.L12036-.L2
	.uleb128	4
.L583:
	.sleb128	11
	.byte		"Os_IOC_DataLength"
	.byte		0
	.4byte		.L12037
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L584:
	.sleb128	11
	.byte		"Os_IOC_DataOffset"
	.byte		0
	.4byte		.L12039
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L12036:
.L12022:
	.sleb128	10
	.4byte		.L12017
	.uleb128	33
	.uleb128	14
	.4byte		.L12041-.L2
	.uleb128	6
.L580:
	.sleb128	11
	.byte		"Os_IOC_ChannelHead"
	.byte		0
	.4byte		.L12023
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L581:
	.sleb128	11
	.byte		"Os_IOC_ChannelMessageCount"
	.byte		0
	.4byte		.L12023
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L582:
	.sleb128	11
	.byte		"Os_IOC_Status"
	.byte		0
	.4byte		.L11802
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12041:
.L11769:
	.sleb128	10
	.4byte		.L12042
	.uleb128	34
	.uleb128	14
	.4byte		.L12043-.L2
	.uleb128	2
.L531:
	.sleb128	11
	.byte		"Os_HookID"
	.byte		0
	.4byte		.L12044
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12043:
.L11579:
	.sleb128	12
	.4byte		.L11697
	.uleb128	80
	.uleb128	13
	.4byte		.L12045-.L2
	.byte		"Os_ProcStatType_s"
	.byte		0
	.uleb128	80
.L513:
	.sleb128	11
	.byte		"Os_ProcId"
	.byte		0
	.4byte		.L11558
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L514:
	.sleb128	11
	.byte		"Os_ProcCoreID"
	.byte		0
	.4byte		.L11523
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L515:
	.sleb128	11
	.byte		"Os_ProcDyn"
	.byte		0
	.4byte		.L12046
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L516:
	.sleb128	11
	.byte		"Os_ProcStack"
	.byte		0
	.4byte		.L12050
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L517:
	.sleb128	11
	.byte		"Os_ProcKind"
	.byte		0
	.4byte		.L12055
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L518:
	.sleb128	11
	.byte		"Os_ProcEventRights"
	.byte		0
	.4byte		.L12058
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L519:
	.sleb128	11
	.byte		"Os_ProcPriority"
	.byte		0
	.4byte		.L12059
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L520:
	.sleb128	11
	.byte		"Os_ProcRunPriority"
	.byte		0
	.4byte		.L12059
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L521:
	.sleb128	11
	.byte		"Os_ProcMaxActivations"
	.byte		0
	.4byte		.L12060
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L522:
	.sleb128	11
	.byte		"Os_ProcContext"
	.byte		0
	.4byte		.L12062
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L523:
	.sleb128	11
	.byte		"Os_ProcOwnerApp"
	.byte		0
	.4byte		.L12063
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L524:
	.sleb128	11
	.byte		"Os_ProcAppAccess"
	.byte		0
	.4byte		.L12064
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L525:
	.sleb128	11
	.byte		"Os_ProcEntryPoint"
	.byte		0
	.4byte		.L12065
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L526:
	.sleb128	11
	.byte		"Os_ProcAutoStart"
	.byte		0
	.4byte		.L12064
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
.L527:
	.sleb128	11
	.byte		"Os_ProcResourceCount"
	.byte		0
	.4byte		.L12070
	.sleb128	2
	.byte		0x23
	.uleb128	64
	.byte		0x1
.L528:
	.sleb128	11
	.byte		"Os_ProcResourceStack"
	.byte		0
	.4byte		.L12071
	.sleb128	2
	.byte		0x23
	.uleb128	68
	.byte		0x1
.L529:
	.sleb128	11
	.byte		"Os_ProcQueueElements"
	.byte		0
	.4byte		.L12077
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.byte		0x1
.L530:
	.sleb128	11
	.byte		"Os_ProcIsrPlatformConfig"
	.byte		0
	.4byte		.L12078
	.sleb128	2
	.byte		0x23
	.uleb128	76
	.byte		0x1
	.sleb128	0
.L12045:
.L12054:
	.sleb128	12
	.4byte		.L11697
	.uleb128	80
	.uleb128	13
	.4byte		.L12079-.L2
	.byte		"Os_ProcStackStruct"
	.byte		0
	.uleb128	8
.L511:
	.sleb128	11
	.byte		"Os_ProcStackSize"
	.byte		0
	.4byte		.L12080
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L512:
	.sleb128	11
	.byte		"Os_ProcStackBase"
	.byte		0
	.4byte		.L12062
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12079:
.L12049:
	.sleb128	10
	.4byte		.L11697
	.uleb128	80
	.uleb128	13
	.4byte		.L12082-.L2
	.uleb128	56
.L498:
	.sleb128	11
	.byte		"Os_ProcState"
	.byte		0
	.4byte		.L11995
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L499:
	.sleb128	11
	.byte		"Os_ProcContextState"
	.byte		0
	.4byte		.L12083
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L500:
	.sleb128	11
	.byte		"Os_ProcEvents"
	.byte		0
	.4byte		.L11984
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L501:
	.sleb128	11
	.byte		"Os_ProcEventWaitingFor"
	.byte		0
	.4byte		.L11984
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L502:
	.sleb128	11
	.byte		"Os_ProcActivations"
	.byte		0
	.4byte		.L12061
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L503:
	.sleb128	11
	.byte		"Os_ProcResourcesAllocated"
	.byte		0
	.4byte		.L12003
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L504:
	.sleb128	11
	.byte		"Os_ProcEnabled"
	.byte		0
	.4byte		.L11803
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L505:
	.sleb128	11
	.byte		"Os_ProcCurrentApp"
	.byte		0
	.4byte		.L11756
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L506:
	.sleb128	11
	.byte		"Os_ProcSpinlock"
	.byte		0
	.4byte		.L12085
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L507:
	.sleb128	11
	.byte		"Os_ProcFreeQueueElements"
	.byte		0
	.4byte		.L11779
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L508:
	.sleb128	11
	.byte		"Os_ProcCurrentPriority"
	.byte		0
	.4byte		.L11774
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L509:
	.sleb128	11
	.byte		"Os_ProcTFCallCount"
	.byte		0
	.4byte		.L11803
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L510:
	.sleb128	11
	.byte		"Os_FatalErrorOccured"
	.byte		0
	.4byte		.L11802
	.sleb128	2
	.byte		0x23
	.uleb128	53
	.byte		0x1
	.sleb128	0
.L12082:
.L12087:
	.sleb128	12
	.4byte		.L12088
	.uleb128	52
	.uleb128	1
	.4byte		.L12089-.L2
	.byte		"Os_SpinlockStatType_s"
	.byte		0
	.uleb128	16
.L450:
	.sleb128	11
	.byte		"Os_SpinlockId"
	.byte		0
	.4byte		.L12090
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L451:
	.sleb128	11
	.byte		"Os_SpinlockChainId"
	.byte		0
	.4byte		.L12090
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L452:
	.sleb128	11
	.byte		"Os_SpinlockDyn"
	.byte		0
	.4byte		.L12091
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L453:
	.sleb128	11
	.byte		"Os_SpinlockAccess"
	.byte		0
	.4byte		.L12064
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L454:
	.sleb128	11
	.byte		"Os_SpinlockLockResourceAddress"
	.byte		0
	.4byte		.L12033
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L12089:
.L12094:
	.sleb128	10
	.4byte		.L12088
	.uleb128	52
	.uleb128	1
	.4byte		.L12095-.L2
	.uleb128	12
.L447:
	.sleb128	11
	.byte		"Os_SpinlockLockerProc"
	.byte		0
	.4byte		.L11577
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L448:
	.sleb128	11
	.byte		"Os_SpinlockSuperseded"
	.byte		0
	.4byte		.L12085
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L449:
	.sleb128	11
	.byte		"Os_ResourceDependency"
	.byte		0
	.4byte		.L12073
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L12095:
.L11759:
	.sleb128	12
	.4byte		.L12088
	.uleb128	52
	.uleb128	1
	.4byte		.L12096-.L2
	.byte		"Os_ApplicationStatType_s"
	.byte		0
	.uleb128	48
.L435:
	.sleb128	11
	.byte		"Os_AppDyn"
	.byte		0
	.4byte		.L12097
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L436:
	.sleb128	11
	.byte		"Os_AppId"
	.byte		0
	.4byte		.L12101
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L437:
	.sleb128	11
	.byte		"Os_AppRestartTask"
	.byte		0
	.4byte		.L11558
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L438:
	.sleb128	11
	.byte		"Os_AppKind"
	.byte		0
	.4byte		.L12102
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L439:
	.sleb128	11
	.byte		"Os_AppShutdownHook"
	.byte		0
	.4byte		.L12105
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L440:
	.sleb128	11
	.byte		"Os_AppStartupHook"
	.byte		0
	.4byte		.L12110
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L441:
	.sleb128	11
	.byte		"Os_AppErrorHook"
	.byte		0
	.4byte		.L12115
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L442:
	.sleb128	11
	.byte		"Os_AppProcIDs"
	.byte		0
	.4byte		.L12120
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L443:
	.sleb128	11
	.byte		"Os_AppCounterIDs"
	.byte		0
	.4byte		.L12122
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L444:
	.sleb128	11
	.byte		"Os_AppAlarmIDs"
	.byte		0
	.4byte		.L12125
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L445:
	.sleb128	11
	.byte		"Os_AppSchTblIDs"
	.byte		0
	.4byte		.L12128
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L446:
	.sleb128	11
	.byte		"Os_CoreAssigment"
	.byte		0
	.4byte		.L11523
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
	.sleb128	0
.L12096:
.L12100:
	.sleb128	10
	.4byte		.L12088
	.uleb128	52
	.uleb128	1
	.4byte		.L12131-.L2
	.uleb128	1
.L434:
	.sleb128	11
	.byte		"Os_AppState"
	.byte		0
	.4byte		.L11982
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12131:
.L12076:
	.sleb128	10
	.4byte		.L12132
	.uleb128	32
	.uleb128	1
	.4byte		.L12133-.L2
	.uleb128	12
.L431:
	.sleb128	11
	.byte		"Os_ResourcePriority"
	.byte		0
	.4byte		.L12059
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L432:
	.sleb128	11
	.byte		"Os_ResourceAccessRights"
	.byte		0
	.4byte		.L11605
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L433:
	.sleb128	11
	.byte		"Os_ResourceDyn"
	.byte		0
	.4byte		.L12134
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L12133:
.L12136:
	.sleb128	10
	.4byte		.L12132
	.uleb128	32
	.uleb128	1
	.4byte		.L12137-.L2
	.uleb128	4
.L430:
	.sleb128	11
	.byte		"Os_LockerProc"
	.byte		0
	.4byte		.L11577
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12137:
.L11764:
	.sleb128	10
	.4byte		.L12132
	.uleb128	32
	.uleb128	1
	.4byte		.L12138-.L2
	.uleb128	144
.L425:
	.sleb128	11
	.byte		"Os_Error"
	.byte		0
	.4byte		.L12139
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L426:
	.sleb128	11
	.byte		"Os_ExceptionStatus"
	.byte		0
	.4byte		.L12141
	.sleb128	2
	.byte		0x23
	.uleb128	120
	.byte		0x1
	.sleb128	0
.L12138:
.L11792:
	.sleb128	10
	.4byte		.L12132
	.uleb128	32
	.uleb128	1
	.4byte		.L12143-.L2
	.uleb128	24
.L419:
	.sleb128	11
	.byte		"Os_DisAllInt"
	.byte		0
	.4byte		.L12144
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L420:
	.sleb128	11
	.byte		"Os_EnAllInt"
	.byte		0
	.4byte		.L12144
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L421:
	.sleb128	11
	.byte		"Os_SusAllInt"
	.byte		0
	.4byte		.L12144
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L422:
	.sleb128	11
	.byte		"Os_ResAllInt"
	.byte		0
	.4byte		.L12144
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L423:
	.sleb128	11
	.byte		"Os_SusOsInt"
	.byte		0
	.4byte		.L12144
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L424:
	.sleb128	11
	.byte		"Os_ResOsInt"
	.byte		0
	.4byte		.L12144
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L12143:
.L12142:
	.sleb128	10
	.4byte		.L12132
	.uleb128	32
	.uleb128	1
	.4byte		.L12149-.L2
	.uleb128	20
.L414:
	.sleb128	11
	.byte		"Os_ExceptionType"
	.byte		0
	.4byte		.L12150
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L415:
	.sleb128	11
	.byte		"Os_ExceptionCause"
	.byte		0
	.4byte		.L11539
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L416:
	.sleb128	11
	.byte		"Os_ExceptionAuxiliaryCause"
	.byte		0
	.4byte		.L11539
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L417:
	.sleb128	11
	.byte		"Os_ExceptionExecutionAddress"
	.byte		0
	.4byte		.L11750
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L418:
	.sleb128	11
	.byte		"Os_ExceptionAccessAddress"
	.byte		0
	.4byte		.L11750
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L12149:
.L12140:
	.sleb128	10
	.4byte		.L12152
	.uleb128	174
	.uleb128	1
	.4byte		.L12153-.L2
	.uleb128	120
.L411:
	.sleb128	11
	.byte		"Os_ShutdownError"
	.byte		0
	.4byte		.L12154
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L412:
	.sleb128	11
	.byte		"Os_ParameterError"
	.byte		0
	.4byte		.L12156
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L413:
	.sleb128	11
	.byte		"Os_ServiceError"
	.byte		0
	.4byte		.L12158
	.sleb128	2
	.byte		0x23
	.uleb128	112
	.byte		0x1
	.sleb128	0
.L12153:
.L12159:
	.sleb128	10
	.4byte		.L12152
	.uleb128	174
	.uleb128	1
	.4byte		.L12160-.L2
	.uleb128	8
.L408:
	.sleb128	11
	.byte		"Os_ServiceTrace"
	.byte		0
	.4byte		.L12161
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L409:
	.sleb128	11
	.byte		"Os_LastError"
	.byte		0
	.4byte		.L11802
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L410:
	.sleb128	11
	.byte		"Os_FaultyServiceId"
	.byte		0
	.4byte		.L12162
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12160:
.L12157:
	.sleb128	10
	.4byte		.L12152
	.uleb128	174
	.uleb128	1
	.4byte		.L12164-.L2
	.uleb128	104
.L383:
	.sleb128	11
	.byte		"Os_Err_TaskID"
	.byte		0
	.4byte		.L11536
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L384:
	.sleb128	11
	.byte		"Os_Err_ResID"
	.byte		0
	.4byte		.L12003
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L385:
	.sleb128	11
	.byte		"Os_Err_MaskType_Mask"
	.byte		0
	.4byte		.L11984
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L386:
	.sleb128	11
	.byte		"Os_Err_AlarmID"
	.byte		0
	.4byte		.L11942
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L387:
	.sleb128	11
	.byte		"Os_Err_TicksStart"
	.byte		0
	.4byte		.L11944
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L388:
	.sleb128	11
	.byte		"Os_Err_TicksCycle"
	.byte		0
	.4byte		.L11944
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L389:
	.sleb128	11
	.byte		"Os_Err_FuncIndex"
	.byte		0
	.4byte		.L11932
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L390:
	.sleb128	11
	.byte		"Os_Err_FuncParamRefType"
	.byte		0
	.4byte		.L11933
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L391:
	.sleb128	11
	.byte		"Os_Err_ApplID"
	.byte		0
	.4byte		.L11937
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L392:
	.sleb128	11
	.byte		"Os_Err_ApplStateRefType"
	.byte		0
	.4byte		.L11980
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L393:
	.sleb128	11
	.byte		"Os_Err_ObjType"
	.byte		0
	.4byte		.L11938
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L394:
	.sleb128	11
	.byte		"Os_Err_SchedID"
	.byte		0
	.4byte		.L11955
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L395:
	.sleb128	11
	.byte		"Os_Err_SchedID_Next"
	.byte		0
	.4byte		.L11955
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L396:
	.sleb128	11
	.byte		"Os_Err_CntID"
	.byte		0
	.4byte		.L11968
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L397:
	.sleb128	11
	.byte		"Os_Err_RestartType"
	.byte		0
	.4byte		.L11977
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
.L398:
	.sleb128	11
	.byte		"Os_Err_MaskRefType"
	.byte		0
	.4byte		.L11988
	.sleb128	2
	.byte		0x23
	.uleb128	64
	.byte		0x1
.L399:
	.sleb128	11
	.byte		"Os_Err_TaskStateRef"
	.byte		0
	.4byte		.L11993
	.sleb128	2
	.byte		0x23
	.uleb128	68
	.byte		0x1
.L400:
	.sleb128	11
	.byte		"Os_Err_TickRef_Ticks"
	.byte		0
	.4byte		.L11947
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.byte		0x1
.L401:
	.sleb128	11
	.byte		"Os_Err_AlarmBaseRefType_Info"
	.byte		0
	.4byte		.L11950
	.sleb128	2
	.byte		0x23
	.uleb128	76
	.byte		0x1
.L402:
	.sleb128	11
	.byte		"Os_Err_TaskIDRef"
	.byte		0
	.4byte		.L11998
	.sleb128	2
	.byte		0x23
	.uleb128	80
	.byte		0x1
.L403:
	.sleb128	11
	.byte		"Os_Err_TblStatusRefType"
	.byte		0
	.4byte		.L11960
	.sleb128	2
	.byte		0x23
	.uleb128	84
	.byte		0x1
.L404:
	.sleb128	11
	.byte		"Os_Err_TickRef_ElapsedTicks"
	.byte		0
	.4byte		.L11947
	.sleb128	2
	.byte		0x23
	.uleb128	88
	.byte		0x1
.L405:
	.sleb128	11
	.byte		"Os_Err_ObjObj"
	.byte		0
	.4byte		.L11538
	.sleb128	2
	.byte		0x23
	.uleb128	92
	.byte		0x1
.L406:
	.sleb128	11
	.byte		"Os_Err_SpinlockID"
	.byte		0
	.4byte		.L11923
	.sleb128	2
	.byte		0x23
	.uleb128	96
	.byte		0x1
.L407:
	.sleb128	11
	.byte		"Os_Err_TryToGetSpinlockRef"
	.byte		0
	.4byte		.L12165
	.sleb128	2
	.byte		0x23
	.uleb128	100
	.byte		0x1
	.sleb128	0
.L12164:
.L12155:
	.sleb128	10
	.4byte		.L12152
	.uleb128	174
	.uleb128	1
	.4byte		.L12166-.L2
	.uleb128	8
.L381:
	.sleb128	11
	.byte		"Os_ShutdownErrorCode"
	.byte		0
	.4byte		.L11802
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L382:
	.sleb128	11
	.byte		"Os_ShutdownInternalErrorCode"
	.byte		0
	.4byte		.L12167
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12166:
.L11953:
	.sleb128	10
	.4byte		.L12169
	.uleb128	50
	.uleb128	1
	.4byte		.L12170-.L2
	.uleb128	12
.L378:
	.sleb128	11
	.byte		"maxallowedvalue"
	.byte		0
	.4byte		.L11944
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L379:
	.sleb128	11
	.byte		"ticksperbase"
	.byte		0
	.4byte		.L11944
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L380:
	.sleb128	11
	.byte		"mincycle"
	.byte		0
	.4byte		.L11944
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L12170:
.L11705:
	.sleb128	10
	.4byte		.L12169
	.uleb128	50
	.uleb128	1
	.4byte		.L12171-.L2
	.uleb128	8
.L376:
	.sleb128	11
	.byte		"Os_ObjStartId"
	.byte		0
	.4byte		.L11538
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L377:
	.sleb128	11
	.byte		"Os_ObjEndId"
	.byte		0
	.4byte		.L11538
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12171:
.L11788:
	.sleb128	10
	.4byte		.L12172
	.uleb128	87
	.uleb128	7
	.4byte		.L12173-.L2
	.uleb128	8
.L366:
	.sleb128	11
	.byte		"Os_IsrPltId"
	.byte		0
	.4byte		.L12174
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L367:
	.sleb128	11
	.byte		"Os_IsrPltLevel"
	.byte		0
	.4byte		.L12175
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12173:
	.section	.debug_info,,n
.L11521:
	.sleb128	14
	.4byte		.L11719
	.uleb128	155
	.uleb128	1
	.4byte		.L12177-.L2
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
.L12177:
.L11615:
	.sleb128	14
	.4byte		.L12178
	.uleb128	32
	.uleb128	1
	.4byte		.L12179-.L2
	.uleb128	4
	.sleb128	15
	.byte		"Os_Access_Granted"
	.byte		0
	.sleb128	0
	.sleb128	15
	.byte		"Os_Access_Denied"
	.byte		0
	.sleb128	1
	.sleb128	0
.L12179:
.L11773:
	.sleb128	14
	.4byte		.L11724
	.uleb128	69
	.uleb128	1
	.4byte		.L12180-.L2
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
.L12180:
.L11798:
	.sleb128	14
	.4byte		.L11777
	.uleb128	612
	.uleb128	1
	.4byte		.L12181-.L2
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
.L12181:
.L11805:
	.sleb128	14
	.4byte		.L11777
	.uleb128	60
	.uleb128	1
	.4byte		.L12182-.L2
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
.L12182:
	.section	.debug_info,,n
.L11935:
	.sleb128	16
	.4byte		.L12017
	.uleb128	33
	.uleb128	14
	.4byte		.L12183-.L2
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
.L12183:
.L12084:
	.sleb128	14
	.4byte		.L11697
	.uleb128	80
	.uleb128	13
	.4byte		.L12184-.L2
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
.L12184:
.L12057:
	.sleb128	14
	.4byte		.L11697
	.uleb128	61
	.uleb128	1
	.4byte		.L12185-.L2
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
.L12185:
.L12104:
	.sleb128	14
	.4byte		.L12088
	.uleb128	52
	.uleb128	1
	.4byte		.L12186-.L2
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
.L12186:
.L12151:
	.sleb128	14
	.4byte		.L12132
	.uleb128	32
	.uleb128	1
	.4byte		.L12187-.L2
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
.L12187:
.L12168:
	.sleb128	14
	.4byte		.L12152
	.uleb128	174
	.uleb128	1
	.4byte		.L12188-.L2
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
.L12188:
.L12163:
	.sleb128	14
	.4byte		.L12152
	.uleb128	86
	.uleb128	1
	.4byte		.L12189-.L2
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
.L12189:
.L11926:
	.sleb128	14
	.4byte		.L12190
	.uleb128	43
	.uleb128	1
	.4byte		.L12191-.L2
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
.L12191:
.L11996:
	.sleb128	14
	.4byte		.L12192
	.uleb128	37
	.uleb128	1
	.4byte		.L12193-.L2
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
.L12193:
.L11963:
	.sleb128	14
	.4byte		.L12194
	.uleb128	40
	.uleb128	1
	.4byte		.L12195-.L2
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
.L12195:
.L11939:
	.sleb128	14
	.4byte		.L12196
	.uleb128	47
	.uleb128	1
	.4byte		.L12197-.L2
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
.L12197:
.L11534:
	.sleb128	14
	.4byte		.L12169
	.uleb128	50
	.uleb128	1
	.4byte		.L12198-.L2
	.uleb128	4
	.sleb128	15
	.byte		"Os_false"
	.byte		0
	.sleb128	0
	.sleb128	15
	.byte		"Os_true"
	.byte		0
	.sleb128	1
	.sleb128	0
.L12198:
.L12011:
	.sleb128	14
	.4byte		.L12169
	.uleb128	42
	.uleb128	13
	.4byte		.L12199-.L2
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
.L12199:
.L11910:
	.sleb128	14
	.4byte		.L12200
	.uleb128	83
	.uleb128	14
	.4byte		.L12201-.L2
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
.L12201:
	.section	.debug_info,,n
.L11520:
	.sleb128	17
	.byte		"Os_IsrStateType"
	.byte		0
	.4byte		.L11521
	.section	.debug_info,,n
.L11526:
	.sleb128	18
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L11525:
	.sleb128	17
	.byte		"uint16"
	.byte		0
	.4byte		.L11526
.L11524:
	.sleb128	17
	.byte		"CoreIdType"
	.byte		0
	.4byte		.L11525
	.section	.debug_info,,n
.L11523:
	.sleb128	19
	.4byte		.L11524
.L11533:
	.sleb128	17
	.byte		"Os_BoolType"
	.byte		0
	.4byte		.L11534
.L11540:
	.sleb128	18
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L11539:
	.sleb128	17
	.byte		"uint32"
	.byte		0
	.4byte		.L11540
.L11538:
	.sleb128	17
	.byte		"Os_ObjectType"
	.byte		0
	.4byte		.L11539
.L11537:
	.sleb128	17
	.byte		"ProcType"
	.byte		0
	.4byte		.L11538
.L11536:
	.sleb128	17
	.byte		"TaskType"
	.byte		0
	.4byte		.L11537
.L11549:
	.sleb128	19
	.4byte		.L11537
.L11558:
	.sleb128	19
	.4byte		.L11536
.L11568:
	.sleb128	17
	.byte		"ISRType"
	.byte		0
	.4byte		.L11537
.L11567:
	.sleb128	19
	.4byte		.L11568
.L11578:
	.sleb128	19
	.4byte		.L11579
	.section	.debug_info,,n
.L11577:
	.sleb128	20
	.4byte		.L11578
.L11586:
	.sleb128	17
	.byte		"AppModeType"
	.byte		0
	.4byte		.L11539
.L11598:
	.sleb128	17
	.byte		"Os_ProcStatType"
	.byte		0
	.4byte		.L11579
.L11597:
	.sleb128	19
	.4byte		.L11598
.L11596:
	.sleb128	20
	.4byte		.L11597
.L11607:
	.sleb128	17
	.byte		"Os_AccessStorageType"
	.byte		0
	.4byte		.L11539
.L11606:
	.sleb128	19
	.4byte		.L11607
.L11605:
	.sleb128	20
	.4byte		.L11606
.L11614:
	.sleb128	17
	.byte		"Os_AccessType"
	.byte		0
	.4byte		.L11615
.L11660:
	.sleb128	19
	.4byte		.L11577
.L11675:
	.sleb128	17
	.byte		"Os_IsrDynType"
	.byte		0
	.4byte		.L11676
.L11674:
	.sleb128	20
	.4byte		.L11675
.L11673:
	.sleb128	19
	.4byte		.L11674
.L11691:
	.sleb128	20
	.4byte		.L11692
	.section	.debug_info,,n
.L11698:
	.sleb128	21
	.4byte		.L11699-.L2
	.4byte		.L11597
	.section	.debug_info,,n
	.sleb128	22
	.sleb128	0
.L11699:
.L11704:
	.sleb128	17
	.byte		"Os_ObjectRangeType"
	.byte		0
	.4byte		.L11705
.L11703:
	.sleb128	19
	.4byte		.L11704
.L11701:
	.sleb128	21
	.4byte		.L11702-.L2
	.4byte		.L11703
	.section	.debug_info,,n
	.sleb128	23
	.uleb128	1
	.sleb128	0
.L11702:
.L11711:
	.sleb128	17
	.byte		"Os_Core_StatType"
	.byte		0
	.4byte		.L11712
.L11710:
	.sleb128	19
	.4byte		.L11711
.L11708:
	.sleb128	21
	.4byte		.L11709-.L2
	.4byte		.L11710
	.sleb128	23
	.uleb128	1
	.sleb128	0
.L11709:
.L11716:
	.sleb128	17
	.byte		"Os_Core_DynSharedType"
	.byte		0
	.4byte		.L11717
.L11714:
	.sleb128	21
	.4byte		.L11715-.L2
	.4byte		.L11716
	.sleb128	23
	.uleb128	1
	.sleb128	0
.L11715:
.L11723:
	.sleb128	20
	.4byte		.L11596
.L11722:
	.sleb128	19
	.4byte		.L11723
.L11720:
	.sleb128	21
	.4byte		.L11721-.L2
	.4byte		.L11722
	.sleb128	23
	.uleb128	1
	.sleb128	0
.L11721:
.L11728:
	.sleb128	17
	.byte		"Os_Core_DynInitType"
	.byte		0
	.4byte		.L11729
.L11727:
	.sleb128	20
	.4byte		.L11728
.L11726:
	.sleb128	19
	.4byte		.L11727
.L11732:
	.sleb128	17
	.byte		"Os_Core_DynType"
	.byte		0
	.4byte		.L11733
.L11731:
	.sleb128	20
	.4byte		.L11732
.L11730:
	.sleb128	19
	.4byte		.L11731
.L11736:
	.sleb128	17
	.byte		"Os_DispatchElementType"
	.byte		0
	.4byte		.L11737
.L11735:
	.sleb128	20
	.4byte		.L11736
.L11734:
	.sleb128	19
	.4byte		.L11735
	.section	.debug_info,,n
.L11741:
	.sleb128	24
	.4byte		.L11742-.L2
	.byte		0x1
.L11743:
	.sleb128	19
	.4byte		.L11596
	.section	.debug_info,,n
	.sleb128	25
	.4byte		.L11743
	.sleb128	0
.L11742:
.L11740:
	.sleb128	20
	.4byte		.L11741
.L11739:
	.sleb128	17
	.byte		"Os_PrepareContextFunctionType"
	.byte		0
	.4byte		.L11740
.L11738:
	.sleb128	19
	.4byte		.L11739
.L11750:
	.sleb128	17
	.byte		"Os_StackType"
	.byte		0
	.4byte		.L11539
.L11749:
	.sleb128	20
	.4byte		.L11750
	.section	.debug_info,,n
.L11747:
	.sleb128	26
	.4byte		.L11748-.L2
	.4byte		.L11749
	.byte		0x1
	.sleb128	25
	.4byte		.L11596
	.sleb128	0
.L11748:
.L11746:
	.sleb128	20
	.4byte		.L11747
.L11745:
	.sleb128	17
	.byte		"Os_GetStackPointerFunctionType"
	.byte		0
	.4byte		.L11746
.L11744:
	.sleb128	19
	.4byte		.L11745
.L11752:
	.sleb128	17
	.byte		"Os_IsrDynInitType"
	.byte		0
	.4byte		.L11753
.L11754:
	.sleb128	17
	.byte		"Os_SchedulerDynInitType"
	.byte		0
	.4byte		.L11755
.L11758:
	.sleb128	17
	.byte		"Os_ApplicationStatType"
	.byte		0
	.4byte		.L11759
.L11757:
	.sleb128	19
	.4byte		.L11758
.L11756:
	.sleb128	20
	.4byte		.L11757
.L11761:
	.sleb128	17
	.byte		"Os_DispatcherType"
	.byte		0
	.4byte		.L11762
.L11763:
	.sleb128	17
	.byte		"Os_PublicData_NoInitType"
	.byte		0
	.4byte		.L11764
.L11766:
	.sleb128	17
	.byte		"Os_SchedulerDynType"
	.byte		0
	.4byte		.L11767
.L11768:
	.sleb128	17
	.byte		"Os_HooksDynType"
	.byte		0
	.4byte		.L11769
.L11772:
	.sleb128	17
	.byte		"Os_ScheduleType"
	.byte		0
	.4byte		.L11773
.L11774:
	.sleb128	17
	.byte		"Os_PriorityType"
	.byte		0
	.4byte		.L11539
.L11775:
	.sleb128	17
	.byte		"Os_SchedulerQueueElementType"
	.byte		0
	.4byte		.L11776
.L11779:
	.sleb128	20
	.4byte		.L11776
.L11781:
	.sleb128	17
	.byte		"Os_IsrRegister_t"
	.byte		0
	.4byte		.L11539
.L11783:
	.sleb128	18
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L11782:
	.sleb128	17
	.byte		"boolean"
	.byte		0
	.4byte		.L11783
.L11787:
	.sleb128	17
	.byte		"Os_IsrPlatformConfigType"
	.byte		0
	.4byte		.L11788
.L11786:
	.sleb128	19
	.4byte		.L11787
.L11785:
	.sleb128	20
	.4byte		.L11786
.L11791:
	.sleb128	17
	.byte		"Os_IsrApiTable"
	.byte		0
	.4byte		.L11792
.L11790:
	.sleb128	19
	.4byte		.L11791
.L11789:
	.sleb128	20
	.4byte		.L11790
.L11793:
	.sleb128	21
	.4byte		.L11794-.L2
	.4byte		.L11539
	.sleb128	23
	.uleb128	7
	.sleb128	0
.L11794:
.L11797:
	.sleb128	17
	.byte		"Os_DispatchKindType"
	.byte		0
	.4byte		.L11798
.L11800:
	.sleb128	17
	.byte		"Os_APICallType"
	.byte		0
	.4byte		.L11692
.L11799:
	.sleb128	20
	.4byte		.L11800
.L11803:
	.sleb128	17
	.byte		"uint8"
	.byte		0
	.4byte		.L11783
.L11802:
	.sleb128	17
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L11803
.L11804:
	.sleb128	17
	.byte		"Os_API_LockType"
	.byte		0
	.4byte		.L11805
.L11808:
	.sleb128	24
	.4byte		.L11809-.L2
	.byte		0x1
	.sleb128	25
	.4byte		.L11691
	.sleb128	25
	.4byte		.L11660
	.sleb128	0
.L11809:
.L11807:
	.sleb128	20
	.4byte		.L11808
.L11806:
	.sleb128	17
	.byte		"Os_API_Func_Type"
	.byte		0
	.4byte		.L11807
.L11812:
	.sleb128	17
	.byte		"Os_API_StartOsType"
	.byte		0
	.4byte		.L11813
.L11814:
	.sleb128	17
	.byte		"Os_API_ShutdownOsType"
	.byte		0
	.4byte		.L11815
.L11816:
	.sleb128	17
	.byte		"Os_API_ShutdownOsInternalType"
	.byte		0
	.4byte		.L11817
.L11818:
	.sleb128	17
	.byte		"Os_API_ShutdownAllCoresType"
	.byte		0
	.4byte		.L11819
.L11820:
	.sleb128	17
	.byte		"Os_API_GetNumberOfActivatedCoresType"
	.byte		0
	.4byte		.L11821
.L11822:
	.sleb128	17
	.byte		"Os_API_ApiStartCoreType"
	.byte		0
	.4byte		.L11823
.L11824:
	.sleb128	17
	.byte		"Os_API_StartNonAutosarCoreType"
	.byte		0
	.4byte		.L11825
.L11826:
	.sleb128	17
	.byte		"Os_API_GetCoreIDType"
	.byte		0
	.4byte		.L11827
.L11828:
	.sleb128	17
	.byte		"Os_API_ActivateTaskType"
	.byte		0
	.4byte		.L11829
.L11830:
	.sleb128	17
	.byte		"Os_API_ChainTaskType"
	.byte		0
	.4byte		.L11831
.L11832:
	.sleb128	17
	.byte		"Os_API_GetTaskIDType"
	.byte		0
	.4byte		.L11833
.L11834:
	.sleb128	17
	.byte		"Os_API_GetTaskStateType"
	.byte		0
	.4byte		.L11835
.L11836:
	.sleb128	17
	.byte		"Os_API_SetEventType"
	.byte		0
	.4byte		.L11837
.L11838:
	.sleb128	17
	.byte		"Os_API_ClearEventType"
	.byte		0
	.4byte		.L11839
.L11840:
	.sleb128	17
	.byte		"Os_API_GetEventType"
	.byte		0
	.4byte		.L11841
.L11842:
	.sleb128	17
	.byte		"Os_API_WaitEventType"
	.byte		0
	.4byte		.L11843
.L11844:
	.sleb128	17
	.byte		"Os_API_GetResourceType"
	.byte		0
	.4byte		.L11845
.L11846:
	.sleb128	17
	.byte		"Os_API_ReleaseResourceType"
	.byte		0
	.4byte		.L11847
.L11848:
	.sleb128	17
	.byte		"Os_API_GetAlarmBaseType"
	.byte		0
	.4byte		.L11849
.L11850:
	.sleb128	17
	.byte		"Os_API_GetAlarmType"
	.byte		0
	.4byte		.L11851
.L11852:
	.sleb128	17
	.byte		"Os_API_SetRelAlarmType"
	.byte		0
	.4byte		.L11853
.L11854:
	.sleb128	17
	.byte		"Os_API_SetAbsAlarmType"
	.byte		0
	.4byte		.L11855
.L11856:
	.sleb128	17
	.byte		"Os_API_CancelAlarmType"
	.byte		0
	.4byte		.L11857
.L11858:
	.sleb128	17
	.byte		"Os_API_GetApplicationStateType"
	.byte		0
	.4byte		.L11859
.L11860:
	.sleb128	17
	.byte		"Os_API_TerminateApplicationType"
	.byte		0
	.4byte		.L11861
.L11862:
	.sleb128	17
	.byte		"Os_API_GetApplicationIDType"
	.byte		0
	.4byte		.L11863
.L11864:
	.sleb128	17
	.byte		"Os_API_GetISRIDType"
	.byte		0
	.4byte		.L11865
.L11866:
	.sleb128	17
	.byte		"Os_API_GetActiveApplicationModeType"
	.byte		0
	.4byte		.L11867
.L11868:
	.sleb128	17
	.byte		"Os_API_IncrementCounterType"
	.byte		0
	.4byte		.L11869
.L11870:
	.sleb128	17
	.byte		"Os_API_GetCounterValueType"
	.byte		0
	.4byte		.L11871
.L11872:
	.sleb128	17
	.byte		"Os_API_GetElapsedValueType"
	.byte		0
	.4byte		.L11873
.L11874:
	.sleb128	17
	.byte		"Os_API_StartScheduleTableAbsType"
	.byte		0
	.4byte		.L11875
.L11876:
	.sleb128	17
	.byte		"Os_API_StartScheduleTableRelType"
	.byte		0
	.4byte		.L11877
.L11878:
	.sleb128	17
	.byte		"Os_API_StopScheduleTableType"
	.byte		0
	.4byte		.L11879
.L11880:
	.sleb128	17
	.byte		"Os_API_GetScheduleTableStatusType"
	.byte		0
	.4byte		.L11881
.L11882:
	.sleb128	17
	.byte		"Os_API_NextScheduleTableType"
	.byte		0
	.4byte		.L11883
.L11884:
	.sleb128	17
	.byte		"Os_API_StartScheduleTableSynchronType"
	.byte		0
	.4byte		.L11885
.L11886:
	.sleb128	17
	.byte		"Os_API_SyncScheduleTableType"
	.byte		0
	.4byte		.L11887
.L11888:
	.sleb128	17
	.byte		"Os_API_SetScheduleTableAsyncType"
	.byte		0
	.4byte		.L11889
.L11890:
	.sleb128	17
	.byte		"Os_API_CheckObjectAccessType"
	.byte		0
	.4byte		.L11891
.L11892:
	.sleb128	17
	.byte		"Os_API_CheckObjectOwnershipType"
	.byte		0
	.4byte		.L11893
.L11894:
	.sleb128	17
	.byte		"Os_API_CallTrustedFunctionType"
	.byte		0
	.4byte		.L11895
.L11896:
	.sleb128	17
	.byte		"Os_API_StackUsageType"
	.byte		0
	.4byte		.L11897
.L11898:
	.sleb128	17
	.byte		"Os_API_GetSpinlockType"
	.byte		0
	.4byte		.L11899
.L11900:
	.sleb128	17
	.byte		"Os_API_ReleaseSpinlockType"
	.byte		0
	.4byte		.L11901
.L11902:
	.sleb128	17
	.byte		"Os_API_TryToGetSpinlockType"
	.byte		0
	.4byte		.L11903
.L11904:
	.sleb128	17
	.byte		"Os_API_IocTransferType"
	.byte		0
	.4byte		.L11905
.L11906:
	.sleb128	17
	.byte		"Os_API_ControlIdleType"
	.byte		0
	.4byte		.L11907
.L11909:
	.sleb128	17
	.byte		"IdleModeType"
	.byte		0
	.4byte		.L11910
.L11914:
	.sleb128	17
	.byte		"Os_IOC_ChannelStatType"
	.byte		0
	.4byte		.L11915
.L11913:
	.sleb128	19
	.4byte		.L11914
.L11912:
	.sleb128	20
	.4byte		.L11913
	.section	.debug_info,,n
.L11921:
	.sleb128	27
	.byte		"void"
	.byte		0
	.byte		0x0
.L11920:
	.sleb128	20
	.4byte		.L11921
.L11918:
	.sleb128	21
	.4byte		.L11919-.L2
	.4byte		.L11920
	.sleb128	23
	.uleb128	1
	.sleb128	0
.L11919:
.L11917:
	.sleb128	17
	.byte		"Os_IOC_DataType"
	.byte		0
	.4byte		.L11918
.L11916:
	.sleb128	20
	.4byte		.L11917
.L11923:
	.sleb128	17
	.byte		"SpinlockIdType"
	.byte		0
	.4byte		.L11525
.L11925:
	.sleb128	17
	.byte		"TryToGetSpinlockType"
	.byte		0
	.4byte		.L11926
.L11924:
	.sleb128	20
	.4byte		.L11925
.L11930:
	.sleb128	20
	.4byte		.L11803
.L11932:
	.sleb128	17
	.byte		"TrustedFunctionIndexType"
	.byte		0
	.4byte		.L11539
.L11933:
	.sleb128	17
	.byte		"TrustedFunctionParameterRefType"
	.byte		0
	.4byte		.L11920
.L11934:
	.sleb128	17
	.byte		"Os_TrustedFunctionReturnValueType"
	.byte		0
	.4byte		.L11935
.L11937:
	.sleb128	17
	.byte		"ApplicationType"
	.byte		0
	.4byte		.L11803
.L11938:
	.sleb128	17
	.byte		"ObjectTypeType"
	.byte		0
	.4byte		.L11939
.L11942:
	.sleb128	17
	.byte		"AlarmType"
	.byte		0
	.4byte		.L11538
.L11944:
	.sleb128	17
	.byte		"TickType"
	.byte		0
	.4byte		.L11539
.L11948:
	.sleb128	20
	.4byte		.L11944
.L11947:
	.sleb128	17
	.byte		"TickRefType"
	.byte		0
	.4byte		.L11948
.L11952:
	.sleb128	17
	.byte		"AlarmBaseType"
	.byte		0
	.4byte		.L11953
.L11951:
	.sleb128	20
	.4byte		.L11952
.L11950:
	.sleb128	17
	.byte		"AlarmBaseRefType"
	.byte		0
	.4byte		.L11951
.L11955:
	.sleb128	17
	.byte		"ScheduleTableType"
	.byte		0
	.4byte		.L11539
.L11962:
	.sleb128	17
	.byte		"ScheduleTableStatusType"
	.byte		0
	.4byte		.L11963
.L11961:
	.sleb128	20
	.4byte		.L11962
.L11960:
	.sleb128	17
	.byte		"ScheduleTableStatusRefType"
	.byte		0
	.4byte		.L11961
.L11968:
	.sleb128	17
	.byte		"CounterType"
	.byte		0
	.4byte		.L11539
.L11972:
	.sleb128	24
	.4byte		.L11973-.L2
	.byte		0x1
	.sleb128	25
	.4byte		.L11691
	.sleb128	0
.L11973:
.L11971:
	.sleb128	20
	.4byte		.L11972
.L11970:
	.sleb128	17
	.byte		"LightServiceFunctionType"
	.byte		0
	.4byte		.L11971
.L11977:
	.sleb128	17
	.byte		"RestartType"
	.byte		0
	.4byte		.L11803
.L11982:
	.sleb128	17
	.byte		"ApplicationStateType"
	.byte		0
	.4byte		.L11803
.L11981:
	.sleb128	20
	.4byte		.L11982
.L11980:
	.sleb128	17
	.byte		"ApplicationStateRefType"
	.byte		0
	.4byte		.L11981
.L11986:
	.sleb128	18
	.byte		"unsigned long long"
	.byte		0
	.byte		0x7
	.byte		0x8
.L11985:
	.sleb128	17
	.byte		"uint64"
	.byte		0
	.4byte		.L11986
.L11984:
	.sleb128	17
	.byte		"EventMaskType"
	.byte		0
	.4byte		.L11985
.L11989:
	.sleb128	20
	.4byte		.L11984
.L11988:
	.sleb128	17
	.byte		"EventMaskRefType"
	.byte		0
	.4byte		.L11989
.L11995:
	.sleb128	17
	.byte		"TaskStateType"
	.byte		0
	.4byte		.L11996
.L11994:
	.sleb128	20
	.4byte		.L11995
.L11993:
	.sleb128	17
	.byte		"TaskStateRefType"
	.byte		0
	.4byte		.L11994
.L11999:
	.sleb128	20
	.4byte		.L11536
.L11998:
	.sleb128	17
	.byte		"TaskRefType"
	.byte		0
	.4byte		.L11999
.L12003:
	.sleb128	17
	.byte		"ResourceType"
	.byte		0
	.4byte		.L11539
.L12010:
	.sleb128	17
	.byte		"Os_CoreShutdownType"
	.byte		0
	.4byte		.L12011
.L12014:
	.sleb128	20
	.4byte		.L11802
.L12021:
	.sleb128	17
	.byte		"Os_IOC_ChannelDynType"
	.byte		0
	.4byte		.L12022
.L12020:
	.sleb128	20
	.4byte		.L12021
.L12019:
	.sleb128	19
	.4byte		.L12020
.L12023:
	.sleb128	17
	.byte		"Os_IOC_ChannelSizeType"
	.byte		0
	.4byte		.L11525
.L12024:
	.sleb128	19
	.4byte		.L11920
.L12025:
	.sleb128	19
	.4byte		.L11525
.L12027:
	.sleb128	17
	.byte		"Os_IOC_DataCountType"
	.byte		0
	.4byte		.L11803
.L12026:
	.sleb128	19
	.4byte		.L12027
.L12031:
	.sleb128	17
	.byte		"Os_IOC_DataDescriptorType"
	.byte		0
	.4byte		.L12032
.L12030:
	.sleb128	19
	.4byte		.L12031
.L12029:
	.sleb128	20
	.4byte		.L12030
.L12028:
	.sleb128	19
	.4byte		.L12029
.L12035:
	.sleb128	17
	.byte		"Os_LockResourceType"
	.byte		0
	.4byte		.L11803
.L12034:
	.sleb128	20
	.4byte		.L12035
.L12033:
	.sleb128	19
	.4byte		.L12034
.L12038:
	.sleb128	17
	.byte		"Os_IOC_DataLengthType"
	.byte		0
	.4byte		.L11525
.L12037:
	.sleb128	19
	.4byte		.L12038
.L12040:
	.sleb128	17
	.byte		"Os_IOC_DataOffsetType"
	.byte		0
	.4byte		.L11525
.L12039:
	.sleb128	19
	.4byte		.L12040
.L12044:
	.sleb128	17
	.byte		"Os_HookIDType"
	.byte		0
	.4byte		.L11525
.L12048:
	.sleb128	17
	.byte		"Os_ProcDynType"
	.byte		0
	.4byte		.L12049
.L12047:
	.sleb128	20
	.4byte		.L12048
.L12046:
	.sleb128	19
	.4byte		.L12047
.L12053:
	.sleb128	17
	.byte		"Os_ProcStackType"
	.byte		0
	.4byte		.L12054
.L12052:
	.sleb128	19
	.4byte		.L12053
.L12051:
	.sleb128	20
	.4byte		.L12052
.L12050:
	.sleb128	19
	.4byte		.L12051
.L12056:
	.sleb128	17
	.byte		"Os_ProcKindType"
	.byte		0
	.4byte		.L12057
.L12055:
	.sleb128	19
	.4byte		.L12056
.L12058:
	.sleb128	19
	.4byte		.L11984
.L12059:
	.sleb128	19
	.4byte		.L11774
.L12061:
	.sleb128	17
	.byte		"Os_ActivationCountType"
	.byte		0
	.4byte		.L11539
.L12060:
	.sleb128	19
	.4byte		.L12061
.L12062:
	.sleb128	19
	.4byte		.L11749
.L12063:
	.sleb128	19
	.4byte		.L11756
.L12064:
	.sleb128	19
	.4byte		.L11605
.L12068:
	.sleb128	24
	.4byte		.L12069-.L2
	.byte		0x1
	.sleb128	0
.L12069:
.L12067:
	.sleb128	20
	.4byte		.L12068
.L12066:
	.sleb128	17
	.byte		"Os_ProcEntryPointType"
	.byte		0
	.4byte		.L12067
.L12065:
	.sleb128	19
	.4byte		.L12066
.L12070:
	.sleb128	19
	.4byte		.L12003
.L12075:
	.sleb128	17
	.byte		"Os_ResourceStatType"
	.byte		0
	.4byte		.L12076
.L12074:
	.sleb128	19
	.4byte		.L12075
.L12073:
	.sleb128	20
	.4byte		.L12074
.L12072:
	.sleb128	17
	.byte		"Os_ResourceStack"
	.byte		0
	.4byte		.L12073
.L12071:
	.sleb128	20
	.4byte		.L12072
.L12077:
	.sleb128	19
	.4byte		.L11779
.L12078:
	.sleb128	19
	.4byte		.L11785
.L12081:
	.sleb128	17
	.byte		"Os_StackSizeType"
	.byte		0
	.4byte		.L11539
.L12080:
	.sleb128	19
	.4byte		.L12081
.L12083:
	.sleb128	17
	.byte		"Os_ProcContexStateType"
	.byte		0
	.4byte		.L12084
.L12086:
	.sleb128	19
	.4byte		.L12087
.L12085:
	.sleb128	20
	.4byte		.L12086
.L12090:
	.sleb128	19
	.4byte		.L11923
.L12093:
	.sleb128	17
	.byte		"Os_SpinlockDynType"
	.byte		0
	.4byte		.L12094
.L12092:
	.sleb128	20
	.4byte		.L12093
.L12091:
	.sleb128	19
	.4byte		.L12092
.L12099:
	.sleb128	17
	.byte		"Os_ApplicationDynType"
	.byte		0
	.4byte		.L12100
.L12098:
	.sleb128	20
	.4byte		.L12099
.L12097:
	.sleb128	19
	.4byte		.L12098
.L12101:
	.sleb128	19
	.4byte		.L11937
.L12103:
	.sleb128	17
	.byte		"Os_ApplicationKindType"
	.byte		0
	.4byte		.L12104
.L12102:
	.sleb128	19
	.4byte		.L12103
.L12108:
	.sleb128	24
	.4byte		.L12109-.L2
	.byte		0x1
	.sleb128	25
	.4byte		.L11802
	.sleb128	0
.L12109:
.L12107:
	.sleb128	20
	.4byte		.L12108
.L12106:
	.sleb128	17
	.byte		"Os_ShutdownHookFuncType"
	.byte		0
	.4byte		.L12107
.L12105:
	.sleb128	19
	.4byte		.L12106
.L12113:
	.sleb128	24
	.4byte		.L12114-.L2
	.byte		0x1
	.sleb128	0
.L12114:
.L12112:
	.sleb128	20
	.4byte		.L12113
.L12111:
	.sleb128	17
	.byte		"Os_StartUpHookFuncType"
	.byte		0
	.4byte		.L12112
.L12110:
	.sleb128	19
	.4byte		.L12111
.L12118:
	.sleb128	24
	.4byte		.L12119-.L2
	.byte		0x1
	.sleb128	25
	.4byte		.L11802
	.sleb128	0
.L12119:
.L12117:
	.sleb128	20
	.4byte		.L12118
.L12116:
	.sleb128	17
	.byte		"Os_ErrorHookFuncType"
	.byte		0
	.4byte		.L12117
.L12115:
	.sleb128	19
	.4byte		.L12116
.L12121:
	.sleb128	20
	.4byte		.L11549
.L12120:
	.sleb128	19
	.4byte		.L12121
.L12124:
	.sleb128	19
	.4byte		.L11968
.L12123:
	.sleb128	20
	.4byte		.L12124
.L12122:
	.sleb128	19
	.4byte		.L12123
.L12127:
	.sleb128	19
	.4byte		.L11942
.L12126:
	.sleb128	20
	.4byte		.L12127
.L12125:
	.sleb128	19
	.4byte		.L12126
.L12130:
	.sleb128	19
	.4byte		.L11955
.L12129:
	.sleb128	20
	.4byte		.L12130
.L12128:
	.sleb128	19
	.4byte		.L12129
.L12135:
	.sleb128	17
	.byte		"Os_ResourceDynType"
	.byte		0
	.4byte		.L12136
.L12134:
	.sleb128	20
	.4byte		.L12135
.L12139:
	.sleb128	17
	.byte		"Os_ErrorType"
	.byte		0
	.4byte		.L12140
.L12141:
	.sleb128	17
	.byte		"Os_ExceptionStatusType"
	.byte		0
	.4byte		.L12142
.L12147:
	.sleb128	24
	.4byte		.L12148-.L2
	.byte		0x1
	.sleb128	0
.L12148:
.L12146:
	.sleb128	20
	.4byte		.L12147
.L12145:
	.sleb128	17
	.byte		"Os_IsrHandlerFuncType"
	.byte		0
	.4byte		.L12146
.L12144:
	.sleb128	19
	.4byte		.L12145
.L12150:
	.sleb128	17
	.byte		"Os_ExceptionTypeType"
	.byte		0
	.4byte		.L12151
.L12154:
	.sleb128	17
	.byte		"Os_ShudownErrorType"
	.byte		0
	.4byte		.L12155
.L12156:
	.sleb128	17
	.byte		"Os_ParameterErrorType"
	.byte		0
	.4byte		.L12157
.L12158:
	.sleb128	17
	.byte		"Os_ServiceErrorType"
	.byte		0
	.4byte		.L12159
.L12161:
	.sleb128	17
	.byte		"ServiceTraceType"
	.byte		0
	.4byte		.L11803
.L12162:
	.sleb128	17
	.byte		"OSServiceIdType"
	.byte		0
	.4byte		.L12163
.L12165:
	.sleb128	17
	.byte		"TryToGetSpinlockRefType"
	.byte		0
	.4byte		.L11924
.L12167:
	.sleb128	17
	.byte		"Os_SystemInternalErrorType"
	.byte		0
	.4byte		.L12168
.L12174:
	.sleb128	19
	.4byte		.L11539
.L12176:
	.sleb128	17
	.byte		"Os_IsrPlatformLevelType"
	.byte		0
	.4byte		.L11525
.L12175:
	.sleb128	19
	.4byte		.L12176
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11513:
	.sleb128	0
.L11509:

	.section	.debug_loc,,n
	.align	0
.L11527:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locend
.L11541:
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),3
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),0
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),0
	.d2locend
.L11543:
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo9),5
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo11),5
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),5
	.d2locend
.L11550:
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo13),3
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo15),0
	.d2locend
.L11552:
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo15),0
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo18),3
	.d2locend
.L11559:
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo20),3
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo22),0
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo24),0
	.d2locend
.L11561:
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo22),3
	.d2locreg	%offsetof(.Llo26), %offsetof(.Llo27),0
	.d2locend
.L11569:
	.d2locreg	%offsetof(.Llo28), %offsetof(.Llo29),3
	.d2locreg	%offsetof(.Llo30), %offsetof(.Llo31),0
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo33),0
	.d2locend
.L11571:
	.d2locreg	%offsetof(.Llo34), %offsetof(.Llo31),3
	.d2locreg	%offsetof(.Llo35), %offsetof(.Llo36),0
	.d2locend
.L11580:
	.d2locreg	%offsetof(.Llo37), %offsetof(.Llo38),3
	.d2locreg	%offsetof(.Llo39), %offsetof(.Llo40),3
	.d2locend
.L11587:
	.d2locreg	%offsetof(.Llo41), %offsetof(.Llo42),3
	.d2locreg	%offsetof(.Llo43), %offsetof(.Llo44),31
	.d2locend
.L11588:
	.d2locreg	%offsetof(.Llo41), %offsetof(.Llo45),4
	.d2locreg	%offsetof(.Llo43), %offsetof(.Llo44),30
	.d2locend
.L11590:
	.d2locreg	%offsetof(.Llo46), %offsetof(.Llo44),29
	.d2locend
.L11599:
	.d2locreg	%offsetof(.Llo47), %offsetof(.Llo48),28
	.d2locreg	%offsetof(.Llo49), %offsetof(.Llo50),28
	.d2locend
.L11608:
	.d2locreg	%offsetof(.Llo51), %offsetof(.Llo52),3
	.d2locreg	%offsetof(.Llo53), %offsetof(.Llo54),3
	.d2locreg	%offsetof(.Llo55), %offsetof(.Llo56),3
	.d2locreg	%offsetof(.Llo57), %offsetof(.Llo58),3
	.d2locreg	%offsetof(.Llo59), %offsetof(.Llo60),3
	.d2locend
.L11616:
	.d2locreg	%offsetof(.Llo61), %offsetof(.Llo52),0
	.d2locreg	%offsetof(.Llo62), %offsetof(.Llo63),0
	.d2locreg	%offsetof(.Llo64), %offsetof(.Llo49),0
	.d2locreg	%offsetof(.Llo65), %offsetof(.Llo54),0
	.d2locreg	%offsetof(.Llo66), %offsetof(.Llo67),0
	.d2locend
.L11622:
	.d2locreg	%offsetof(.Llo68), %offsetof(.Llo69),3
	.d2locreg	%offsetof(.Llo70), %offsetof(.Llo71),31
	.d2locend
.L11624:
	.d2locreg	%offsetof(.Llo72), %offsetof(.Llo73),29
	.d2locreg	%offsetof(.Llo74), %offsetof(.Llo75),29
	.d2locend
.L11630:
	.d2locreg	%offsetof(.Llo76), %offsetof(.Llo77),3
	.d2locreg	%offsetof(.Llo78), %offsetof(.Llo79),31
	.d2locend
.L11636:
	.d2locreg	%offsetof(.Llo80), %offsetof(.Llo81),3
	.d2locreg	%offsetof(.Llo82), %offsetof(.Llo83),31
	.d2locreg	%offsetof(.Llo84), %offsetof(.Llo85),3
	.d2locend
.L11638:
	.d2locreg	%offsetof(.Llo86), %offsetof(.Llo87),30
	.d2locreg	%offsetof(.Llo88), %offsetof(.Llo89),30
	.d2locend
.L11644:
	.d2locreg	%offsetof(.Llo90), %offsetof(.Llo91),3
	.d2locreg	%offsetof(.Llo92), %offsetof(.Llo93),31
	.d2locend
.L11646:
	.d2locreg	%offsetof(.Llo94), %offsetof(.Llo95),30
	.d2locreg	%offsetof(.Llo96), %offsetof(.Llo97),30
	.d2locend
.L11652:
	.d2locreg	%offsetof(.Llo98), %offsetof(.Llo99),3
	.d2locreg	%offsetof(.Llo100), %offsetof(.Llo101),31
	.d2locend
.L11654:
	.d2locreg	%offsetof(.Llo102), %offsetof(.Llo103),30
	.d2locreg	%offsetof(.Llo104), %offsetof(.Llo105),30
	.d2locend
.L11661:
	.d2locreg	%offsetof(.Llo106), %offsetof(.Llo107),3
	.d2locreg	%offsetof(.Llo108), %offsetof(.Llo109),31
	.d2locend
.L11667:
	.d2locreg	%offsetof(.Llo110), %offsetof(.Llo109),30
	.d2locend
.L11677:
	.d2locreg	%offsetof(.Llo111), %offsetof(.Llo112),3
	.d2locend
.L11679:
	.d2locreg	%offsetof(.Llo113), %offsetof(.Llo114),4
	.d2locreg	%offsetof(.Llo115), %offsetof(.Llo112),4
	.d2locend
.L11685:
	.d2locreg	%offsetof(.Llo116), %offsetof(.Llo117),6
	.d2locend
.L11693:
	.d2locreg	%offsetof(.Llo118), %offsetof(.Llo119),4
	.d2locreg	%offsetof(.Llo120), %offsetof(.Llo121),31
	.d2locend
.L11695:
	.d2locreg	%offsetof(.Llo122), %offsetof(.Llo121),30
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "Os_API_TaskMissingEnd"
	.wrcm.nstrlist "calls", "Os_Call_ErrorHook","Os_Isr_GetState","Os_Isr_ResetState","Os_ShutdownAllCores","Os_Task_Terminate"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Os_TaskKill"
	.wrcm.nstrlist "calls", "Os_Isr_GetState","Os_Isr_Platform_DisableChannel","Os_Isr_ResetState","Os_Resource_FreeTaskResources","Os_SchedulerUnScheduleProc","Os_Spinlock_ReleaseProcSpinlocks"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Os_Task_SwitchIn"
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nstrlist "calls", "Os_ShutdownAllCores"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Os_Task_SwitchOut"
	.wrcm.nstrlist "calls", "Os_ShutdownAllCores"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Os_Task_Wait"
	.wrcm.nstrlist "calls", "Os_SchedulerTerminateProc","Os_ShutdownAllCores"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Os_Task_Release"
	.wrcm.nstrlist "calls", "Os_SchedulerStartProc","Os_ShutdownAllCores"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Os_Task_Terminate"
	.wrcm.nstrlist "calls", "Os_Resource_FreeTaskResources","Os_SchedulerTerminateProc","Os_ShutdownAllCores","Os_Spinlock_ReleaseProcSpinlocks"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Os_Task_AutoStart"
	.wrcm.nstrlist "calls", "Os_Access_Check","Os_Task_Activate"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Os_Task_Activate"
	.wrcm.nstrlist "calls", "Os_SchedulerStartProc"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Os_ISR_CheckId"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Os_Task_CheckId"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Os_Proc_CheckId"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Os_TaskOnOtherCore"
	.wrcm.nint32 "frameSize", 16
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Os_Tasks.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Os_Tasks.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Os_Tasks.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Os_Tasks.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Os_Tasks.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Os_Tasks.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\Os\Os\core\ssc\make\..\src\task\Os_Tasks.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
