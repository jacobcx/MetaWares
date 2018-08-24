#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Os_CallTrustedFunction.c"
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
.L11433:
	.section	.Os_TEXT,,c
#$$ld
.L11429:
	.0byte		.L11427
	.d2_line_start	.debug_line.Os_TEXT
	.section	.Os_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_Isr.h"
        .d2line         227,45
#$$ld
.L11436:

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
.L11437:
	.type		Os_Isr_GetState,@function
	.size		Os_Isr_GetState,.-Os_Isr_GetState
# Number of nodes = 36

# Allocations for Os_Isr_GetState
#	?a4		coreId
# LOCAL_INLINE FUNC(P2CONST(Os_ProcStatType, AUTOMATIC, OS_CONST), OS_CODE) Os_SchedulerGetNextProc(
	.align		1
	.section	.Os_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_Scheduler.h"
        .d2line         132,75
#$$ld
.L11449:

#$$bf	Os_SchedulerGetNextProc,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,cr0,lr
	.d2_cfa_start __cie
Os_SchedulerGetNextProc:
.Llo3:
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
.Llo5:
	mr		r5,r5		# queueElement=r5 queueElement=r5
.L11349:
	lwz		r0,44(r3)		# coreSchedulerDyn=r3
	se_cmpl		r0,r5		# queueElement=r5
	bc		1,2,.L11353	# eq
#         queueElement != coreSchedulerDyn->Os_SchedulerTailPivot.Os_QueueBackElement;
#         queueElement = queueElement->Os_QueueBackElement  )
#     {
#         if(queueElement->Os_QueueProc->Os_ProcDyn->Os_ProcEnabled == (uint8)0U)
	.d2line		141
	lwz		r4,0(r5)		# queueElement=r5
	lwz		r4,8(r4)
	lbz		r0,32(r4)
	se_cmpi		r0,0
	bc		1,2,.L11353	# eq
#         {
#             break;
#         }
#     }
	.d2line		145
	lwz		r5,8(r5)		# queueElement=r5 queueElement=r5
	mr		r5,r5		# queueElement=r5 queueElement=r5
	b		.L11349
.L11353:
# 
#     return queueElement->Os_QueueProc;
	.d2line		147
.Llo4:
	lwz		r3,0(r5)		# coreSchedulerDyn=r3 queueElement=r5
# }
	.d2line		148
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
.L11450:
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
.L11469:

#$$bf	Os_SchedulerSwitchApp,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,lr
	.d2_cfa_start __cie
Os_SchedulerSwitchApp:
.Llo7:
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
.Llo9:
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
.Llo8:
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11470:
	.type		Os_SchedulerSwitchApp,@function
	.size		Os_SchedulerSwitchApp,.-Os_SchedulerSwitchApp
# Number of nodes = 20

# Allocations for Os_SchedulerSwitchApp
#	?a4		app
#	?a5		coreDynInit
# LOCAL_INLINE FUNC(Os_BoolType,OS_CODE) Os_SchedulerRequired(CONST(CoreIdType, AUTOMATIC) coreID)
	.align		1
	.section	.Os_TEXT,,c
        .d2line         421,40
#$$ld
.L11486:

#$$bf	Os_SchedulerRequired,interprocedural,rasave,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,cr0,lr
	.d2_cfa_start __cie
Os_SchedulerRequired:
.Llo10:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
.Llo20:
	stw		r0,20(r1)		# nextProc=r0
	.d2_cfa_offset    108,-1
	mr		r6,r3		# coreID=r6 coreID=r3
	.d2prologue_end
# {
#     CONSTP2VAR  (Os_SchedulerDynType, AUTOMATIC, OS_VAR)   coreSchedulerDyn = OS_GET_CORE_SCHEDULER_DYN(coreID);
	.d2line		423
.Llo11:
	lis		r3,(Os_Core_Stat+4)@ha
.Llo12:
	e_add16i		r3,r3,(Os_Core_Stat+4)@l
	rlwinm		r0,r6,0,16,31		# nextProc=r0 coreID=r6
	e_mulli		r0,r0,20		# nextProc=r0 nextProc=r0
.Llo21:
	lwzx		r3,r3,r0
.Llo18:
	mr		r3,r3		# coreSchedulerDyn=r3 coreSchedulerDyn=r3
#     CONSTP2CONST(Os_ProcStatType,     AUTOMATIC, OS_CONST) nextProc = Os_SchedulerGetNextProc(coreSchedulerDyn);
	.d2line		424
	mr		r3,r3		# coreSchedulerDyn=r3 coreSchedulerDyn=r3
.Llo19:
	bl		Os_SchedulerGetNextProc
	.d2line		427
	mr.		r0,r3		# nextProc=?a6 nextProc=r3
#     VAR(Os_BoolType, AUTOMATIC) ret;
# 
#     if( (nextProc != NULL_PTR) && ( OS_SCHEDULER_GET_CURRENT_PROC(coreID) != nextProc ))
.Llo22:
	bc		1,2,.L11358	# eq
.Llo13:
	lis		r3,Os_Core_Stat@ha
	e_add16i		r3,r3,Os_Core_Stat@l
.Llo14:
	rlwinm		r6,r6,0,16,31		# coreID=r6 coreID=r6
	e_mulli		r6,r6,20		# coreID=r6 coreID=r6
.Llo15:
	lwzx		r3,r3,r6
	lwz		r3,28(r3)
	se_cmpl		r3,r0		# nextProc=r0
	bc		1,2,.L11358	# eq
#     {
#         ret = Os_true;
	.d2line		429
.Llo23:
	diab.li		r3,1		# ret=r3
.Llo24:
	b		.L11359
.L11358:
#     }
#     else
#     {
#         ret = Os_false;
	.d2line		433
.Llo16:
	diab.li		r3,0		# ret=r3
.L11359:
#     }
# 
#     return ret;
	.d2line		436
.Llo17:
	mr		r3,r3		# ret=r3 ret=r3
# }
	.d2line		437
	.d2epilogue_begin
.Llo25:
	lwz		r0,20(r1)		# nextProc=r0
	mtspr		lr,r0		# nextProc=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11487:
	.type		Os_SchedulerRequired,@function
	.size		Os_SchedulerRequired,.-Os_SchedulerRequired
# Number of nodes = 43

# Allocations for Os_SchedulerRequired
#	?a4		coreID
#	?a5		coreSchedulerDyn
#	?a6		nextProc
#	?a7		ret
# FUNC (StatusType, OS_CODE) CallTrustedFunction (
	.section	.Os_PUBLIC_TEXT,,c
	.align		2
	.section	.debug_line.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_line
.L11508:
	.section	.Os_PUBLIC_TEXT,,c
#$$ld
.L11504:
	.0byte		.L11502
	.d2_line_start	.debug_line.Os_PUBLIC_TEXT
	.section	.Os_PUBLIC_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\protection\\TrustedFunction\\Os_CallTrustedFunction.c"
        .d2line         75,28
#$$ld
.L11511:

#$$bf	CallTrustedFunction,interprocedural,rasave,nostackparams
	.globl		CallTrustedFunction
	.d2_cfa_start __cie
CallTrustedFunction:
.Llo26:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr
	stw		r0,52(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# functionIndex=r3 functionIndex=r3
	mr		r4,r4		# functionParams=r4 functionParams=r4
	.d2prologue_end
#         VAR (TrustedFunctionIndexType,        AUTOMATIC)  functionIndex,
#         VAR (TrustedFunctionParameterRefType, AUTOMATIC)  functionParams )
# {
#     VAR (Os_APICallType, AUTOMATIC)  Os_CallTF;
# 
#     Os_CallTF.Os_API_Data.Os_ApiCallTrustedFunction.FunctionIndex = functionIndex;
	.d2line		81
	stw		r3,24(r1)		# functionIndex=r3
#     Os_CallTF.Os_API_Data.Os_ApiCallTrustedFunction.ParamRef      = functionParams;
	.d2line		82
	stw		r4,28(r1)		# functionParams=r4
# 
#     /* Taking address of function on purpose */
#     OS_LIGHT_SYSCALL ( Os_CallTF, CallTrustedFunction );
	.d2line		85
	diab.addi		r3,r1,8		# functionIndex=r3
.Llo27:
	lis		r4,Os_API_CallTrustedFunction@ha		# functionParams=r4
	e_add16i		r4,r4,Os_API_CallTrustedFunction@l		# functionParams=r4 functionParams=r4
.Llo28:
	bl		OS_SYS_CALL
# 
#     if(Os_CallTF.Os_API_Data.Os_ApiCallTrustedFunction.ReturnValue == TRUSTEDFUNCTION_RETURN_VALUE_SCHEDULE)
	.d2line		87
	lwz		r0,32(r1)
	se_cmpi		r0,1
	bc		0,2,.L11363	# ne
#     {
#         (void)Schedule();
	.d2line		89
	bl		Schedule
.L11363:
#     }
# 
#     return Os_CallTF.Os_API_ReturnValue;
	.d2line		92
	lbz		r3,12(r1)		# functionIndex=r3
# }
	.d2line		93
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
.L11512:
	.type		CallTrustedFunction,@function
	.size		CallTrustedFunction,.-CallTrustedFunction
# Number of nodes = 37

# Allocations for CallTrustedFunction
#	?a4		functionIndex
#	?a5		functionParams
#	SP,8		Os_CallTF
# static FUNC(void, OS_CODE) Os_TrustedFunctionCaller(VAR (TrustedFunctionIndexType,        AUTOMATIC) functionIndex,
	.align		1
	.section	.Os_PUBLIC_TEXT,,c
        .d2line         96,28
#$$ld
.L11531:

#$$bf	Os_TrustedFunctionCaller,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Os_TrustedFunctionCaller:
.Llo29:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# functionIndex=r3 functionIndex=r3
	mr		r4,r4		# functionParams=r4 functionParams=r4
	.d2prologue_end
#                                                     VAR (TrustedFunctionParameterRefType, AUTOMATIC) functionParams)
# {
# 
#     CONST(Os_TrustedFunctionType, TYPEDEF) tf = Os_TrustedFunctions[functionIndex].Os_TrustedFunction;
	.d2line		100
	lis		r5,Os_TrustedFunctions@ha
	e_add16i		r5,r5,Os_TrustedFunctions@l
	rlwinm		r0,r3,3,0,28		# functionIndex=r3
	lwzx		r5,r5,r0
.Llo34:
	mr		r5,r5		# tf=r5 tf=r5
# 
# #if ! ( defined(OS_CONFIG_INTERRUPTIBLE_KERNEL_CONTEXT) )
# 
#     VAR(Os_IsrRegister_t, AUTOMATIC) lastLevel =  OS_ENABLE_ALLINTR();
	.d2line		104
	mfmsr		r0
	se_btsti		r0,16
	bc		1,2,.L11367	# eq
	diab.li		r31,1		# lastLevel=r31
.Llo36:
	b		.L11368
.L11367:
.Llo37:
	wrteei		1
	diab.li		r31,0		# lastLevel=r31
.L11368:
# 
# #else /* ! ( defined(OS_CONFIG_INTERRUPTIBLE_KERNEL_CONTEXT) ) */
#     CONST   (CoreIdType,                      AUTOMATIC)            coreId          = OS_GETCOREID();
#     OS_SET_ISR_LEVEL( OS_GET_ISR_LEVEL_UM(coreId), coreId );
# #endif /* ! ( defined(OS_CONFIG_INTERRUPTIBLE_KERNEL_CONTEXT) ) */
#     OS_DISABLE_SUPERVISOR();
# 
#     /* [OS265-01] */
#     /* Call the trusted function. */
#     /* [OS266-01] [OS266-02] [OS364] [OS365] [OS265-02] */
#     tf(functionIndex, functionParams);
	.d2line		115
.Llo30:
	mtspr		ctr,r5		# tf=ctr tf=r5
.Llo31:
	mr		r3,r3		# functionIndex=r3 functionIndex=r3
.Llo32:
	mr		r4,r4		# functionParams=r4 functionParams=r4
.Llo33:
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x18 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
# 
#     OS_ENABLE_SUPERVISOR();
# 
# #if ! ( defined(OS_CONFIG_INTERRUPTIBLE_KERNEL_CONTEXT) )
#     OS_RESTORE_ALLINTR(lastLevel);
	.d2line		120
.Llo35:
	se_cmpi		r31,0		# lastLevel=r31
	bc		1,2,.L11369	# eq
.Llo38:
	wrteei		1
	b		.L11365
.L11369:
	wrteei		0
.L11365:
# #else /* ! ( defined(OS_CONFIG_INTERRUPTIBLE_KERNEL_CONTEXT) ) */
#     OS_SET_ISR_LEVEL(OS_CAT0_ISR_LEVEL, coreId);
# #endif /* ! ( defined(OS_CONFIG_INTERRUPTIBLE_KERNEL_CONTEXT) ) */
# 
# }
	.d2line		125
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
	.section	.Os_PUBLIC_TEXT,,c
#$$ld
.L11532:
	.type		Os_TrustedFunctionCaller,@function
	.size		Os_TrustedFunctionCaller,.-Os_TrustedFunctionCaller
# Number of nodes = 45

# Allocations for Os_TrustedFunctionCaller
#	?a4		functionIndex
#	?a5		functionParams
#	?a6		tf
#	?a7		lastLevel
# LOCAL_INLINE FUNC (StatusType, OS_CODE) Os_CallTrustedFunction (
	.section	.Os_TEXT,,c
	.align		1
	.section	.Os_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\protection\\TrustedFunction\\Os_CallTrustedFunction.c"
        .d2line         213,41
#$$ld
.L11548:

#$$bf	Os_CallTrustedFunction,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Os_CallTrustedFunction:
.Llo39:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr
	stmw		r26,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	26,31,1,1
	stw		r0,52(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# functionIndex=r31 functionIndex=r3
.Llo40:
	mr		r30,r4		# functionParams=r30 functionParams=r4
.Llo41:
	mr		r29,r5		# callerApp=r29 callerApp=r5
	mr		r28,r6		# callerProc=r28 callerProc=r6
	.d2prologue_end
#         VAR          (TrustedFunctionIndexType,        AUTOMATIC)            functionIndex,
#         VAR          (TrustedFunctionParameterRefType, AUTOMATIC)            functionParams,
#         CONSTP2CONST (Os_ApplicationStatType,          AUTOMATIC, OS_CONST)  callerApp,
#         CONSTP2CONST (Os_ProcStatType,                 AUTOMATIC, OS_CONST)  callerProc )
# {
#     VAR   (ApplicationType, AUTOMATIC) tfAppId;
#     P2CONST(Os_ApplicationStatType, AUTOMATIC, OS_CONST) currentTFApp;
#     VAR   (boolean, AUTOMATIC)         switchAppNeeded;
#   #if (OS_PREAPPHOOK == STD_ON) || (OS_POSTAPPHOOK == STD_ON)
#     CONST (CoreIdType, AUTOMATIC)      coreId = OS_GETCOREID();
#     CONSTP2VAR(Os_Core_DynType, AUTOMATIC, OS_VAR) coreDyn = OS_GET_CORE_DYN ( coreId );
#     CONSTP2VAR(Os_HooksDynType, AUTOMATIC, OS_VAR) hookDyn = &coreDyn->Os_HooksDyn;
#   #endif /* (OS_PREAPPHOOK == STD_ON) || (OS_POSTAPPHOOK == STD_ON)  */
# 
#     tfAppId         = Os_TrustedFunctions[functionIndex].Os_TrustedFuncOwnerAppId;
	.d2line		228
.Llo55:
	lis		r3,(Os_TrustedFunctions+4)@ha
.Llo56:
	e_add16i		r3,r3,(Os_TrustedFunctions+4)@l
	rlwinm		r0,r31,3,0,28		# functionIndex=r31
	lbzx		r6,r3,r0		# tfAppId=r6
.Llo57:
	mr		r6,r6		# tfAppId=r6 tfAppId=r6
#     currentTFApp    = callerProc->Os_ProcDyn->Os_ProcCurrentApp;
	.d2line		229
	lwz		r3,8(r28)		# callerProc=r28
	lwz		r27,36(r3)
.Llo59:
	mr		r27,r27		# currentTFApp=r27 currentTFApp=r27
#     switchAppNeeded = (tfAppId != callerApp->Os_AppId) ? TRUE : FALSE;
	.d2line		230
	rlwinm		r0,r6,0,24,31		# tfAppId=r6
	lbz		r3,4(r29)		# callerApp=r29
	se_cmp		r0,r3
	diab.li		r0,1
	isel		r0,r3,r0,2
.L11403:
.Llo53:
	isel		r26,0,r0,2
.L11404:
.Llo54:
	mr		r26,r26		# switchAppNeeded=r26 switchAppNeeded=r26
# 
#     if(switchAppNeeded == TRUE)
	.d2line		232
	rlwinm		r0,r26,0,24,31		# switchAppNeeded=r26
	se_cmpi		r0,1
	bc		0,2,.L11397	# ne
#     {
#       #if (OS_POSTAPPHOOK == STD_ON)
#         Os_Isr_ServicesSwitchToHook ();
#         hookDyn->Os_HookID = OS_HOOKID_POSTAPPHOOK;
#         PostAppHook(callerApp->Os_AppId);
#         hookDyn->Os_HookID = OS_HOOKID_NONE;
#         Os_Isr_ServicesSwitchBackFromHook();
#       #endif /* OS_POSTAPPHOOK == STD_ON */
# 
#         Os_SchedulerSwitchApp(&Os_Applications_Stat[tfAppId]);
	.d2line		242
	rlwinm		r0,r6,0,24,31		# tfAppId=r6
	lis		r3,Os_Applications_Stat@ha
	e_add16i		r3,r3,Os_Applications_Stat@l
	rlwinm		r4,r0,6,0,25
	se_slwi		r0,4
	subf		r0,r0,r4
	se_add		r3,r0
	bl		Os_SchedulerSwitchApp
# 
#         callerProc->Os_ProcDyn->Os_ProcCurrentApp = &Os_Applications_Stat[tfAppId];
	.d2line		244
	rlwinm		r6,r6,0,24,31		# tfAppId=r6 tfAppId=r6
	lis		r3,Os_Applications_Stat@ha
	e_add16i		r3,r3,Os_Applications_Stat@l
	rlwinm		r0,r6,6,0,25		# tfAppId=r6
	se_slwi		r6,4		# tfAppId=r6 tfAppId=r6
	subf		r6,r6,r0		# tfAppId=r6 tfAppId=r6
	se_add		r6,r3		# tfAppId=r6 tfAppId=r6
	lwz		r3,8(r28)		# callerProc=r28
	stw		r6,36(r3)		# tfAppId=r6
.L11397:
# 
#       #if (OS_PREAPPHOOK == STD_ON)
#         Os_Isr_ServicesSwitchToHook ();
#         hookDyn->Os_HookID = OS_HOOKID_PREAPPHOOK;
#         PreAppHook(tfAppId); /* [OS-MGC-0051-04] */
#         hookDyn->Os_HookID = OS_HOOKID_NONE;
#         Os_Isr_ServicesSwitchBackFromHook();
#       #endif /* OS_PREAPPHOOK == STD_ON */
#     }
# 
#     if(callerApp->Os_AppKind == OS_NONTRUSTED)
	.d2line		255
	lwz		r0,12(r29)		# callerApp=r29
	se_cmpi		r0,1
	bc		0,2,.L11398	# ne
#     {
#         Os_Application_DisableProcs ( callerApp, callerProc );
	.d2line		257
.Llo58:
	mr		r3,r29		# callerApp=r3 callerApp=r29
	mr		r4,r28		# callerProc=r4 callerProc=r28
	bl		Os_Application_DisableProcs
.L11398:
#     }
# 
#     callerProc->Os_ProcDyn->Os_ProcTFCallCount++;
	.d2line		260
.Llo60:
	lwz		r4,8(r28)		# callerProc=r4 callerProc=r28
	lbz		r3,52(r4)		# callerApp=r3 callerProc=r4
	se_addi		r3,1		# callerApp=r3 callerApp=r3
	stb		r3,52(r4)		# callerProc=r4 callerApp=r3
# 
#     Os_TrustedFunctionCaller(functionIndex, functionParams);
	.d2line		262
	mr		r3,r31		# functionIndex=r3 functionIndex=r31
	mr		r4,r30		# functionParams=r4 functionParams=r30
	bl		Os_TrustedFunctionCaller
# 
#     callerProc->Os_ProcDyn->Os_ProcTFCallCount--;
	.d2line		264
	lwz		r4,8(r28)		# callerProc=r4 callerProc=r28
	lbz		r3,52(r4)		# functionIndex=r3 callerProc=r4
	diab.addi		r3,r3,255		# functionIndex=r3 functionIndex=r3
	stb		r3,52(r4)		# callerProc=r4 functionIndex=r3
# 
#     if(switchAppNeeded == TRUE)
	.d2line		266
.Llo61:
	rlwinm		r26,r26,0,24,31		# switchAppNeeded=r26 switchAppNeeded=r26
	se_cmpi		r26,1		# switchAppNeeded=r26
	bc		0,2,.L11399	# ne
#     {
#       #if (OS_POSTAPPHOOK == STD_ON)
#         Os_Isr_ServicesSwitchToHook ();
#         hookDyn->Os_HookID = OS_HOOKID_POSTAPPHOOK;
#         PostAppHook(tfAppId);/* [OS-MGC-0050-04] */
#         hookDyn->Os_HookID = OS_HOOKID_NONE;
#         Os_Isr_ServicesSwitchBackFromHook();
#       #endif /* OS_POSTAPPHOOK == STD_ON */
# 
#         Os_SchedulerSwitchApp(callerApp); /* [OS265-05-MGC] */
	.d2line		276
.Llo42:
	mr		r3,r29		# callerApp=r3 callerApp=r29
	bl		Os_SchedulerSwitchApp
# 
#         callerProc->Os_ProcDyn->Os_ProcCurrentApp = currentTFApp;
	.d2line		278
	lwz		r3,8(r28)		# callerApp=r3 callerProc=r28
	stw		r27,36(r3)		# callerApp=r3 currentTFApp=r27
.L11399:
# 
#       #if (OS_PREAPPHOOK == STD_ON)
#         Os_Isr_ServicesSwitchToHook ();
#         hookDyn->Os_HookID = OS_HOOKID_PREAPPHOOK;
#         PreAppHook(callerApp->Os_AppId);
#         hookDyn->Os_HookID = OS_HOOKID_NONE;
#         Os_Isr_ServicesSwitchBackFromHook();
#       #endif /* OS_PREAPPHOOK == STD_ON */
#     }
# 
#     if ( 0U == callerProc->Os_ProcDyn->Os_ProcTFCallCount )
	.d2line		289
	lwz		r3,8(r28)		# functionIndex=r3 callerProc=r28
.Llo43:
	lbz		r0,52(r3)		# functionIndex=r3
	se_cmpi		r0,0
	bc		0,2,.L11400	# ne
#     {
#         if(    ( callerApp->Os_AppKind == OS_NONTRUSTED)
	.d2line		291
.Llo44:
	lwz		r0,12(r29)		# callerApp=r29
	se_cmpi		r0,1
	bc		0,2,.L11401	# ne
	lwz		r3,0(r29)		# functionIndex=r3 callerApp=r29
.Llo45:
	lbz		r0,0(r3)		# functionIndex=r3
	se_cmpi		r0,0
	bc		0,2,.L11401	# ne
#             && ( APPLICATION_ACCESSIBLE == callerApp->Os_AppDyn->Os_AppState ) /* [OS-MGC-0080] */ )
#         {
#             Os_Application_EnableProcs ( callerApp , callerProc ); /* [OS563-04] */
	.d2line		294
.Llo46:
	mr		r3,r29		# callerApp=r3 callerApp=r29
	mr		r4,r28		# callerProc=r4 callerProc=r28
	bl		Os_Application_EnableProcs
.L11401:
#         }
# 
#         if ( E_OK != callerProc->Os_ProcDyn->Os_FatalErrorOccured ) /* [OS564-01] [OS565-03] */
	.d2line		297
	lwz		r3,8(r28)		# functionIndex=r3 callerProc=r28
.Llo47:
	lbz		r0,53(r3)		# functionIndex=r3
	se_cmpi		r0,0
	bc		1,2,.L11400	# eq
#         {
#             Os_Call_ProtectionHook ( callerProc->Os_ProcDyn->Os_FatalErrorOccured, callerProc );
	.d2line		299
.Llo48:
	lwz		r3,8(r28)		# functionIndex=r3 callerProc=r28
.Llo49:
	lbz		r3,53(r3)		# functionIndex=r3 functionIndex=r3
.Llo50:
	mr		r4,r28		# callerProc=r4 callerProc=r28
	bl		Os_Call_ProtectionHook
#             callerProc->Os_ProcDyn->Os_FatalErrorOccured = E_OK;
	.d2line		300
	diab.li		r0,0
	lwz		r3,8(r28)		# functionIndex=r3 callerProc=r28
.Llo51:
	stb		r0,53(r3)		# functionIndex=r3
.L11400:
#         }
#     }
# 
#     return E_OK;/* [OS265-04] */
	.d2line		304
.Llo52:
	diab.li		r3,0		# functionIndex=r3
# }
	.d2line		305
	.d2epilogue_begin
	lmw		r26,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	2,10
	lwz		r0,52(r1)
	mtspr		lr,r0
	diab.addi		r1,r1,48		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11549:
	.type		Os_CallTrustedFunction,@function
	.size		Os_CallTrustedFunction,.-Os_CallTrustedFunction
# Number of nodes = 180

# Allocations for Os_CallTrustedFunction
#	?a4		functionIndex
#	?a5		functionParams
#	?a6		callerApp
#	?a7		callerProc
#	?a8		$$2356
#	?a9		$$2355
#	?a10		$$2354
#	?a11		$$2353
#	?a12		$$2352
#	?a13		tfAppId
#	?a14		currentTFApp
#	?a15		switchAppNeeded
# LOCAL_INLINE FUNC (StatusType, OS_CODE) Os_CallTrustedFunction_Err (
	.align		1
	.section	.Os_TEXT,,c
        .d2line         308,41
#$$ld
.L11566:

#$$bf	Os_CallTrustedFunction_Err,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Os_CallTrustedFunction_Err:
.Llo62:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r7,r3		# functionIndex=r7 functionIndex=r3
.Llo63:
	mr		r6,r6		# callerProc=r6 callerProc=r6
	.d2prologue_end
#         VAR          (TrustedFunctionIndexType,        AUTOMATIC)            functionIndex,
#         VAR          (TrustedFunctionParameterRefType, AUTOMATIC)            functionParams,
#         CONSTP2CONST (Os_ApplicationStatType,          AUTOMATIC, OS_CONST)  callerApp,
#         CONSTP2CONST (Os_ProcStatType,                 AUTOMATIC, OS_CONST)  callerProc )
# {
#     VAR (StatusType, AUTOMATIC)     retVal;
# 
#     if(functionIndex >= Os_TrustedFunctionCount)
	.d2line		316
.Llo64:
	lis		r3,Os_TrustedFunctionCount@ha
	lwz		r0,Os_TrustedFunctionCount@l(r3)
	se_cmpl		r0,r7		# functionIndex=r7
	bc		1,1,.L11413	# gt
#     {
#         retVal = E_OS_SERVICEID; /* [OS100] [OS292-01] */
	.d2line		318
	diab.li		r3,12		# retVal=r3
.Llo69:
	b		.L11414
.L11413:
#     }
#     else if ( callerProc->Os_ProcDyn->Os_ProcTFCallCount >= OS_APPTRUSTEDFUNCNESTLIMIT )
	.d2line		320
.Llo70:
	lwz		r3,8(r6)		# callerProc=r6
	lbz		r0,52(r3)
	cmpi		0,0,r0,253
	bc		1,0,.L11415	# lt
#     {
#         retVal = E_OS_LIMIT;
	.d2line		322
.Llo68:
	diab.li		r3,4		# retVal=r3
.Llo71:
	b		.L11414
.L11415:
#     }
#     else if(Os_Isr_Enabled != Os_Isr_GetState(OS_GETCOREID()))
	.d2line		324
.Llo72:
	mfspr		r3,286
	bl		Os_Isr_GetState
	se_cmpi		r3,0
	bc		1,2,.L11417	# eq
#     {
#         retVal = E_OS_DISABLEDINT; /* [OS093-01-23] [OS093-02-18] */
	.d2line		326
	diab.li		r3,10		# retVal=r3
.Llo73:
	b		.L11414
.L11417:
#     }
# 
#   #ifdef OS_MODULE_MULTICORE
# 
#     else if(Os_true == Os_ApplicationOnOtherCore(Os_TrustedFunctions[functionIndex].Os_TrustedFuncOwnerAppId))
	.d2line		331
.Llo65:
	lis		r3,(Os_TrustedFunctions+4)@ha		# retVal=r3
.Llo74:
	e_add16i		r3,r3,(Os_TrustedFunctions+4)@l		# retVal=r3 retVal=r3
.Llo66:
	se_slwi		r7,3		# functionIndex=r7 functionIndex=r7
.Llo67:
	lbzx		r3,r3,r7		# retVal=r3 retVal=r3
.Llo75:
	bl		Os_ApplicationOnOtherCore
.Llo76:
	se_cmpi		r3,1		# retVal=r3
#     {
#         retVal = E_OS_ACCESS; /* [OS623-01] [OS623-02] */
	.d2line		333
	diab.li		r3,1		# retVal=r3
	isel		r3,r3,r31,2		# retVal=r3 retVal=r3 retVal=r31
.L11419:
#     }
# 
#   #endif /* OS_MODULE_MULTICORE */
# 
#     else
#     {
#         /* List of requirements that are not checked (automatically satisfied):
#          * [OS088-01-129] [OS088-01-130]
#          */
#         retVal = E_OK;
	.d2line		343
	diab.li		r0,0
	isel		r3,r3,r0,2		# retVal=r3 retVal=r3
.L11414:
#     }
# 
#     return retVal;
	.d2line		346
	rlwinm		r3,r3,0,24,31		# retVal=r3 retVal=r3
# }
	.d2line		347
	.d2epilogue_begin
.Llo77:
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
.L11567:
	.type		Os_CallTrustedFunction_Err,@function
	.size		Os_CallTrustedFunction_Err,.-Os_CallTrustedFunction_Err
# Number of nodes = 60

# Allocations for Os_CallTrustedFunction_Err
#	?a4		functionIndex
#	not allocated	functionParams
#	not allocated	callerApp
#	?a5		callerProc
#	?a6		retVal
# OS_APILIGHT ( CallTrustedFunction )
	.align		2
	.section	.Os_TEXT,,c
        .d2line         137,1
#$$ld
.L11575:

#$$bf	Os_API_CallTrustedFunction,interprocedural,rasave,nostackparams
	.globl		Os_API_CallTrustedFunction
	.d2_cfa_start __cie
Os_API_CallTrustedFunction:
.Llo78:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr
	stmw		r25,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	25,31,1,1
	stw		r0,52(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# Os_APICall=r31 Os_APICall=r3
	.d2prologue_end
# {
#     VAR     (StatusType,                      AUTOMATIC)            retVal;
#     CONST   (CoreIdType,                      AUTOMATIC)            coreId          = OS_GETCOREID();
	.d2line		140
.Llo79:
	mfspr		r29,286		# coreId=r29
.Llo80:
	mr		r29,r29		# coreId=r29 coreId=r29
#     VAR     (TrustedFunctionIndexType,        AUTOMATIC)            functionIndex;
#     VAR     (TrustedFunctionParameterRefType, AUTOMATIC)            functionParams;
#     CONSTP2CONST (Os_ApplicationStatType,     AUTOMATIC, OS_CONST)  callerApp       = OS_GET_CORE_DYN_INIT ( coreId )->Os_CurrentApp;
	.d2line		143
	lis		r3,Os_Core_Stat@ha		# hookDyn=r3
.Llo95:
	e_add16i		r3,r3,Os_Core_Stat@l		# hookDyn=r3 hookDyn=r3
	rlwinm		r0,r29,0,16,31		# coreId=r29
	e_mulli		r4,r0,20		# hookDyn=r4
	lwzux		r5,r3,r4		# hookDyn=r3
	lwz		r26,32(r5)
.Llo93:
	mr		r26,r26		# callerApp=r26 callerApp=r26
#     CONSTP2CONST(Os_ProcStatType,AUTOMATIC ,OS_CONST)               callerProc      = OS_SCHEDULER_GET_CURRENT_PROC(coreId);
	.d2line		144
	lis		r3,Os_Core_Stat@ha		# hookDyn=r3
	e_add16i		r3,r3,Os_Core_Stat@l		# hookDyn=r3 hookDyn=r3
	lwzux		r5,r3,r4		# hookDyn=r3
	lwz		r25,28(r5)
.Llo94:
	mr		r25,r25		# callerProc=r25 callerProc=r25
# 
#   #ifdef OS_CONFIG_HOOK
#     CONSTP2VAR  (Os_HooksDynType, AUTOMATIC, OS_VAR)  hookDyn = OS_GET_CORE_HOOK_DYN(coreId);
	.d2line		147
	lis		r3,(Os_Core_Stat+4)@ha		# hookDyn=r3
	e_add16i		r3,r3,(Os_Core_Stat+4)@l		# hookDyn=r3 hookDyn=r3
	lwzx		r3,r3,r4		# hookDyn=r3 hookDyn=r3
	diab.addi		r4,r3,100		# hookDyn=r4 hookDyn=r3
#   #endif /* OS_CONFIG_HOOK */
# 
#     OS_TRACE ( CallTrustedFunction_Entry , coreId);
	.d2line		150
	diab.li		r5,81
	lis		r4,(Os_Core_DynShared+120)@ha		# hookDyn=r4
	e_add16i		r4,r4,(Os_Core_DynShared+120)@l		# hookDyn=r4 hookDyn=r4
	e_mulli		r0,r0,152
	stbx		r5,r4,r0		# hookDyn=r4
# 
#     functionIndex  = Os_APICall->Os_API_Data.Os_ApiCallTrustedFunction.FunctionIndex;
	.d2line		152
	lwz		r28,16(r31)		# Os_APICall=r31
.Llo90:
	mr		r28,r28		# functionIndex=r28 functionIndex=r28
#     functionParams = Os_APICall->Os_API_Data.Os_ApiCallTrustedFunction.ParamRef;
	.d2line		153
	lwz		r27,20(r31)		# Os_APICall=r31
.Llo92:
	mr		r27,r27		# functionParams=r27 functionParams=r27
# 
#   #ifdef OS_CONFIG_HOOK
# 
#     /* Validate API access and parameters */
#     if(OS_HOOKID_NONE != hookDyn->Os_HookID)
	.d2line		158
	lhz		r0,100(r3)		# hookDyn=r3
	se_cmpi		r0,1
	bc		1,2,.L11377	# eq
#     {
#         /* [OS088-03-154] [OS088-03-155] [OS088-03-156] [OS088-03-157] [OS088-03-158]
#          * [OS088-03-159] [OS088-03-160] [OS088-03-358] [OS088-03-397] [OS088-03-441]
#          * [OS088-04-MGC-026] [OS088-04-MGC-027] [OS088-04-MGC-028] [OS088-04-MGC-029]
#          * [OS088-04-MGC-030] [OS088-04-MGC-031] [OS088-04-MGC-032] [OS088-04-MGC-059]
#          * [OS088-04-MGC-069] [OS088-04-MGC-078] [OS-MGC-0056-17] [OS-MGC-0056-60]
#          */
#         retVal = E_OS_CALLEVEL;
	.d2line		166
.Llo96:
	diab.li		r30,2		# retVal=r30
.Llo82:
	b		.L11378
.L11377:
#     }
#     else
# 
#   #endif
# 
#     {
#         OS_ASSERT(callerApp == callerProc->Os_ProcDyn->Os_ProcCurrentApp,E_OS_SYS_TFPROCAPPINCONSISTENCY);
	.d2line		173
.Llo83:
	lwz		r3,8(r25)		# hookDyn=r3 callerProc=r25
.Llo97:
	lwz		r0,36(r3)		# hookDyn=r3
	se_cmpl		r0,r26		# callerApp=r26
	bc		1,2,.L11381	# eq
.Llo98:
	diab.li		r4,61		# hookDyn=r4
.Llo99:
	lis		r3,(Os_Core_DynShared+12)@ha		# hookDyn=r3
	e_add16i		r3,r3,(Os_Core_DynShared+12)@l		# hookDyn=r3 hookDyn=r3
	mfspr		r0,286
	rlwinm		r0,r0,0,16,31
	e_mulli		r0,r0,152
	stwx		r4,r3,r0		# hookDyn=r3 hookDyn=r4
	diab.li		r3,30		# hookDyn=r3
	bl		Os_ShutdownAllCores
.L11381:
# 
#         retVal = Os_CallTrustedFunction_Err ( functionIndex, functionParams, callerApp, callerProc );
	.d2line		175
.Llo100:
	mr		r3,r28		# functionIndex=r3 functionIndex=r28
	mr		r4,r27		# functionParams=r4 functionParams=r27
	mr		r5,r26		# callerApp=r5 callerApp=r26
	mr		r6,r25		# callerProc=r6 callerProc=r25
	bl		Os_CallTrustedFunction_Err
.Llo84:
	mr		r30,r3		# retVal=r30 retVal=r3
.L11378:
#     }
# 
#     /* Call API if validation was successful */
#     if(E_OK == retVal)
	.d2line		179
.Llo85:
	rlwinm		r3,r30,0,24,31		# hookDyn=r3 retVal=r30
.Llo86:
	se_cmpi		r3,0		# hookDyn=r3
	bc		0,2,.L11384	# ne
#     {
#         Os_CallTrustedFunction ( functionIndex, functionParams, callerApp, callerProc );
	.d2line		181
.Llo101:
	mr		r3,r28		# functionIndex=r3 functionIndex=r28
	mr		r4,r27		# functionParams=r4 functionParams=r27
	mr		r5,r26		# callerApp=r5 callerApp=r26
	mr		r6,r25		# callerProc=r6 callerProc=r25
	bl		Os_CallTrustedFunction
	b		.L11385
.L11384:
#     }
#     else
#     {
#       #ifdef OS_CONFIG_USEPARAMETERACCESS
# 
#         OS_GET_PARAMETER_ERRORCODE ( coreId ).Os_Err_FuncIndex        = functionIndex;
	.d2line		187
	lis		r3,(Os_Core_DynShared+44)@ha		# hookDyn=r3
.Llo102:
	e_add16i		r3,r3,(Os_Core_DynShared+44)@l		# hookDyn=r3 hookDyn=r3
	rlwinm		r0,r29,0,16,31		# coreId=r29
	e_mulli		r0,r0,152
	stwux		r28,r3,r0		# hookDyn=r3 functionIndex=r28
#         OS_GET_PARAMETER_ERRORCODE ( coreId ).Os_Err_FuncParamRefType = functionParams;
	.d2line		188
	lis		r3,(Os_Core_DynShared+48)@ha		# hookDyn=r3
	e_add16i		r3,r3,(Os_Core_DynShared+48)@l		# hookDyn=r3 hookDyn=r3
	stwx		r27,r3,r0		# hookDyn=r3 functionParams=r27
# 
#       #endif
# 
#         OS_CALL_ERRORHOOK ( retVal, OSServiceId_CallTrustedFunction, callerProc );  /* [OS001-302.v1-19] */
	.d2line		192
	rlwinm		r3,r30,0,24,31		# hookDyn=r3 retVal=r30
.Llo103:
	diab.li		r4,2		# hookDyn=r4
	mr		r5,r25		# callerProc=r5 callerProc=r25
	bl		Os_Call_ErrorHook
.L11385:
#     }
# 
#     Os_APICall->Os_API_ReturnValue = retVal;
	.d2line		195
.Llo91:
	stb		r30,4(r31)		# Os_APICall=r31 retVal=r30
# 
#     if ( Os_false != Os_SchedulerRequired ( coreId ) )
	.d2line		197
	mr		r3,r29		# coreId=r3 coreId=r29
	bl		Os_SchedulerRequired
	se_cmpi		r3,0		# coreId=r3
	bc		1,2,.L11386	# eq
#     {
#         Os_APICall->Os_API_Data.Os_ApiCallTrustedFunction.ReturnValue = TRUSTEDFUNCTION_RETURN_VALUE_SCHEDULE;
	.d2line		199
.Llo87:
	diab.li		r0,1
	stw		r0,24(r31)		# Os_APICall=r31
	b		.L11387
.L11386:
#     }
#     else
#     {
#         Os_APICall->Os_API_Data.Os_ApiCallTrustedFunction.ReturnValue = TRUSTEDFUNCTION_RETURN_VALUE_NONE;
	.d2line		203
	diab.li		r0,0
	stw		r0,24(r31)		# Os_APICall=r31
.L11387:
#     }
# 
#     OS_TRACE ( CallTrustedFunction_Exit , coreId);
	.d2line		206
.Llo81:
	diab.li		r3,80		# coreId=r3
.Llo88:
	lis		r4,(Os_Core_DynShared+120)@ha		# hookDyn=r4
.Llo104:
	e_add16i		r4,r4,(Os_Core_DynShared+120)@l		# hookDyn=r4 hookDyn=r4
	rlwinm		r29,r29,0,16,31		# coreId=r29 coreId=r29
	e_mulli		r29,r29,152		# coreId=r29 coreId=r29
	stbx		r3,r4,r29		# hookDyn=r4 coreId=r3
# }
	.d2line		207
	.d2epilogue_begin
	lmw		r25,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	2,10
	lwz		r0,52(r1)
	mtspr		lr,r0
	diab.addi		r1,r1,48		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo89:
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11576:
	.type		Os_API_CallTrustedFunction,@function
	.size		Os_API_CallTrustedFunction,.-Os_API_CallTrustedFunction
# Number of nodes = 207

# Allocations for Os_API_CallTrustedFunction
#	?a4		Os_APICall
#	?a5		retVal
#	?a6		coreId
#	?a7		functionIndex
#	?a8		functionParams
#	?a9		callerApp
#	?a10		callerProc
#	?a11		hookDyn

# Allocations for module
	.section	.text_vle
	.0byte		.L11598
	.section	.text_vle
	.0byte		.L11602
	.section	.text_vle
	.0byte		.L11611
	.section	.Os_BSS,,b
	.0byte		.L11618
	.section	.text_vle
#$$ld
.L5:
.L12085:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_Types.h"
.L12081:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ApplicationApiTypes.h"
.L12079:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ScheduleTableApiTypes.h"
.L12077:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_TaskApiTypes.h"
.L12075:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_SpinlockApiTypes.h"
.L12063:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_Isr.h"
.L12058:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\PowerPC\\WindRiver\\AUTOSAR\\ar422\\MemMap.h"
.L12056:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_InternalTypes.h"
.L12039:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ErrorApiTypes.h"
.L12019:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ExceptionApiTypes.h"
.L11929:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_TaskCfgTypes.h"
.L11926:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_HookApiTypes.h"
.L11666:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_ApiDispatchCfgTypes.h"
.L11623:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_SchedulerCfgTypes.h"
.L11612:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_CoreCfgTypes.h"
.L11603:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_TrustedFunctionCfgTypes.h"
.L11599:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_ApplicationCfgTypes.h"
	.d2_line_end
	.section	.Os_TEXT,,c
#$$ld
.L11430:
.L11550:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\protection\\TrustedFunction\\Os_CallTrustedFunction.c"
.L11451:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_Scheduler.h"
.L11438:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_Isr.h"
	.d2_line_end
	.section	.Os_PUBLIC_TEXT,,c
#$$ld
.L11505:
.L11513:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\protection\\TrustedFunction\\Os_CallTrustedFunction.c"
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
	.uleb128	36
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	11
	.uleb128	11
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	23
	.uleb128	21
	.byte		0x1
	.uleb128	1
	.uleb128	16
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
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	26
	.uleb128	33
	.byte		0x0
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	27
	.uleb128	33
	.byte		0x0
	.uleb128	47
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	28
	.uleb128	21
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	39
	.uleb128	12
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	29
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\protection\\TrustedFunction\\Os_CallTrustedFunction.c"
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
.L11427:
	.4byte		.L11428-.L11426
.L11426:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L11432-.L11427
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\protection\\TrustedFunction\\Os_CallTrustedFunction.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L11429
	.4byte		.L11430
	.4byte		.L11433
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11441:
	.sleb128	2
	.4byte		.L11435-.L11427
	.byte		"Os_Isr_GetState"
	.byte		0
	.4byte		.L11438
	.uleb128	227
	.uleb128	45
	.4byte		.L11439
	.byte		0x1
	.4byte		.L11436
	.4byte		.L11437
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L11438
	.uleb128	227
	.uleb128	45
	.byte		"coreId"
	.byte		0
	.4byte		.L11442
	.4byte		.L11446
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11435:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11456:
	.sleb128	2
	.4byte		.L11448-.L11427
	.byte		"Os_SchedulerGetNextProc"
	.byte		0
	.4byte		.L11451
	.uleb128	132
	.uleb128	75
	.4byte		.L11452
	.byte		0x1
	.4byte		.L11449
	.4byte		.L11450
	.sleb128	3
	.4byte		.L11451
	.uleb128	132
	.uleb128	75
	.byte		"coreSchedulerDyn"
	.byte		0
	.4byte		.L11457
	.4byte		.L11462
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11463:
	.sleb128	4
	.4byte		.L11451
	.uleb128	135
	.uleb128	67
	.byte		"queueElement"
	.byte		0
	.4byte		.L11464
	.4byte		.L11466
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11448:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11471:
	.sleb128	5
	.4byte		.L11468-.L11427
	.byte		"Os_SchedulerSwitchApp"
	.byte		0
	.4byte		.L11451
	.uleb128	154
	.uleb128	34
	.byte		0x1
	.4byte		.L11469
	.4byte		.L11470
	.sleb128	3
	.4byte		.L11451
	.uleb128	154
	.uleb128	34
	.byte		"app"
	.byte		0
	.4byte		.L11472
	.4byte		.L11477
.L11478:
	.sleb128	4
	.4byte		.L11451
	.uleb128	156
	.uleb128	56
	.byte		"coreDynInit"
	.byte		0
	.4byte		.L11479
	.4byte		.L11483
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11468:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11490:
	.sleb128	2
	.4byte		.L11485-.L11427
	.byte		"Os_SchedulerRequired"
	.byte		0
	.4byte		.L11451
	.uleb128	421
	.uleb128	40
	.4byte		.L11488
	.byte		0x1
	.4byte		.L11486
	.4byte		.L11487
	.sleb128	3
	.4byte		.L11451
	.uleb128	421
	.uleb128	40
	.byte		"coreID"
	.byte		0
	.4byte		.L11442
	.4byte		.L11491
.L11492:
	.sleb128	4
	.4byte		.L11451
	.uleb128	423
	.uleb128	60
	.byte		"coreSchedulerDyn"
	.byte		0
	.4byte		.L11493
	.4byte		.L11495
.L11496:
	.sleb128	4
	.4byte		.L11451
	.uleb128	424
	.uleb128	60
	.byte		"nextProc"
	.byte		0
	.4byte		.L11497
	.4byte		.L11498
.L11499:
	.sleb128	4
	.4byte		.L11451
	.uleb128	425
	.uleb128	33
	.byte		"ret"
	.byte		0
	.4byte		.L11488
	.4byte		.L11500
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11485:
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
.L11502:
	.4byte		.L11503-.L11501
.L11501:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L11507-.L11502
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\protection\\TrustedFunction\\Os_CallTrustedFunction.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L11504
	.4byte		.L11505
	.4byte		.L11508
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
.L11517:
	.sleb128	6
	.4byte		.L11510-.L11502
	.byte		"CallTrustedFunction"
	.byte		0
	.4byte		.L11513
	.uleb128	75
	.uleb128	28
	.4byte		.L11514
	.byte		0x1
	.byte		0x1
	.4byte		.L11511
	.4byte		.L11512
	.sleb128	3
	.4byte		.L11513
	.uleb128	75
	.uleb128	28
	.byte		"functionIndex"
	.byte		0
	.4byte		.L11518
	.4byte		.L11521
	.sleb128	3
	.4byte		.L11513
	.uleb128	75
	.uleb128	28
	.byte		"functionParams"
	.byte		0
	.4byte		.L11522
	.4byte		.L11525
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
.L11526:
	.sleb128	7
	.4byte		.L11513
	.uleb128	79
	.uleb128	38
	.byte		"Os_CallTF"
	.byte		0
	.4byte		.L11527
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11510:
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
.L11533:
	.sleb128	5
	.4byte		.L11530-.L11502
	.byte		"Os_TrustedFunctionCaller"
	.byte		0
	.4byte		.L11513
	.uleb128	96
	.uleb128	28
	.byte		0x1
	.4byte		.L11531
	.4byte		.L11532
	.sleb128	3
	.4byte		.L11513
	.uleb128	96
	.uleb128	28
	.byte		"functionIndex"
	.byte		0
	.4byte		.L11518
	.4byte		.L11534
	.sleb128	3
	.4byte		.L11513
	.uleb128	96
	.uleb128	28
	.byte		"functionParams"
	.byte		0
	.4byte		.L11522
	.4byte		.L11535
.L11536:
	.sleb128	4
	.4byte		.L11513
	.uleb128	100
	.uleb128	44
	.byte		"tf"
	.byte		0
	.4byte		.L11537
	.4byte		.L11542
.L11543:
	.sleb128	4
	.4byte		.L11513
	.uleb128	104
	.uleb128	38
	.byte		"lastLevel"
	.byte		0
	.4byte		.L11544
	.4byte		.L11545
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11530:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11551:
	.sleb128	2
	.4byte		.L11547-.L11427
	.byte		"Os_CallTrustedFunction"
	.byte		0
	.4byte		.L11550
	.uleb128	213
	.uleb128	41
	.4byte		.L11514
	.byte		0x1
	.4byte		.L11548
	.4byte		.L11549
	.sleb128	3
	.4byte		.L11550
	.uleb128	213
	.uleb128	41
	.byte		"functionIndex"
	.byte		0
	.4byte		.L11518
	.4byte		.L11552
	.sleb128	3
	.4byte		.L11550
	.uleb128	213
	.uleb128	41
	.byte		"functionParams"
	.byte		0
	.4byte		.L11522
	.4byte		.L11553
	.sleb128	3
	.4byte		.L11550
	.uleb128	213
	.uleb128	41
	.byte		"callerApp"
	.byte		0
	.4byte		.L11472
	.4byte		.L11554
	.sleb128	3
	.4byte		.L11550
	.uleb128	213
	.uleb128	41
	.byte		"callerProc"
	.byte		0
	.4byte		.L11497
	.4byte		.L11555
.L11556:
	.sleb128	4
	.4byte		.L11550
	.uleb128	219
	.uleb128	40
	.byte		"tfAppId"
	.byte		0
	.4byte		.L11557
	.4byte		.L11558
.L11559:
	.sleb128	4
	.4byte		.L11550
	.uleb128	220
	.uleb128	58
	.byte		"currentTFApp"
	.byte		0
	.4byte		.L11473
	.4byte		.L11560
.L11561:
	.sleb128	4
	.4byte		.L11550
	.uleb128	221
	.uleb128	40
	.byte		"switchAppNeeded"
	.byte		0
	.4byte		.L11562
	.4byte		.L11563
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11547:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11568:
	.sleb128	2
	.4byte		.L11565-.L11427
	.byte		"Os_CallTrustedFunction_Err"
	.byte		0
	.4byte		.L11550
	.uleb128	308
	.uleb128	41
	.4byte		.L11514
	.byte		0x1
	.4byte		.L11566
	.4byte		.L11567
	.sleb128	3
	.4byte		.L11550
	.uleb128	308
	.uleb128	41
	.byte		"functionIndex"
	.byte		0
	.4byte		.L11518
	.4byte		.L11569
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	8
	.4byte		.L11550
	.uleb128	308
	.uleb128	41
	.byte		"functionParams"
	.byte		0
	.4byte		.L11522
	.sleb128	2
	.byte		0x90
	.uleb128	4
	.sleb128	8
	.4byte		.L11550
	.uleb128	308
	.uleb128	41
	.byte		"callerApp"
	.byte		0
	.4byte		.L11472
	.sleb128	2
	.byte		0x90
	.uleb128	5
	.sleb128	3
	.4byte		.L11550
	.uleb128	308
	.uleb128	41
	.byte		"callerProc"
	.byte		0
	.4byte		.L11497
	.4byte		.L11570
.L11571:
	.sleb128	4
	.4byte		.L11550
	.uleb128	314
	.uleb128	37
	.byte		"retVal"
	.byte		0
	.4byte		.L11514
	.4byte		.L11572
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11565:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11577:
	.sleb128	9
	.4byte		.L11574-.L11427
	.byte		"Os_API_CallTrustedFunction"
	.byte		0
	.4byte		.L11550
	.uleb128	137
	.uleb128	1
	.byte		0x1
	.byte		0x1
	.4byte		.L11575
	.4byte		.L11576
	.sleb128	3
	.4byte		.L11550
	.uleb128	137
	.uleb128	1
	.byte		"Os_APICall"
	.byte		0
	.4byte		.L11578
	.4byte		.L11579
.L11580:
	.sleb128	4
	.4byte		.L11550
	.uleb128	139
	.uleb128	69
	.byte		"retVal"
	.byte		0
	.4byte		.L11514
	.4byte		.L11581
.L11582:
	.sleb128	4
	.4byte		.L11550
	.uleb128	140
	.uleb128	69
	.byte		"coreId"
	.byte		0
	.4byte		.L11442
	.4byte		.L11583
.L11584:
	.sleb128	4
	.4byte		.L11550
	.uleb128	141
	.uleb128	69
	.byte		"functionIndex"
	.byte		0
	.4byte		.L11518
	.4byte		.L11585
.L11586:
	.sleb128	4
	.4byte		.L11550
	.uleb128	142
	.uleb128	69
	.byte		"functionParams"
	.byte		0
	.4byte		.L11522
	.4byte		.L11587
.L11588:
	.sleb128	4
	.4byte		.L11550
	.uleb128	143
	.uleb128	69
	.byte		"callerApp"
	.byte		0
	.4byte		.L11472
	.4byte		.L11589
.L11590:
	.sleb128	4
	.4byte		.L11550
	.uleb128	144
	.uleb128	69
	.byte		"callerProc"
	.byte		0
	.4byte		.L11497
	.4byte		.L11591
.L11592:
	.sleb128	4
	.4byte		.L11550
	.uleb128	147
	.uleb128	55
	.byte		"hookDyn"
	.byte		0
	.4byte		.L11593
	.4byte		.L11597
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11574:
	.section	.debug_info,,n
.L11598:
	.sleb128	10
	.byte		0x1
	.byte		0x1
	.4byte		.L11599
	.uleb128	100
	.uleb128	48
	.byte		"Os_Applications_Stat"
	.byte		0
	.4byte		.L11600
	.section	.debug_info,,n
.L11602:
	.sleb128	10
	.byte		0x1
	.byte		0x1
	.4byte		.L11603
	.uleb128	54
	.uleb128	51
	.byte		"Os_TrustedFunctions"
	.byte		0
	.4byte		.L11604
	.section	.debug_info,,n
.L11609:
	.sleb128	10
	.byte		0x1
	.byte		0x1
	.4byte		.L11603
	.uleb128	56
	.uleb128	50
	.byte		"Os_TrustedFunctionCount"
	.byte		0
	.4byte		.L11610
.L11611:
	.sleb128	10
	.byte		0x1
	.byte		0x1
	.4byte		.L11612
	.uleb128	169
	.uleb128	42
	.byte		"Os_Core_Stat"
	.byte		0
	.4byte		.L11613
	.section	.debug_info,,n
.L11618:
	.sleb128	10
	.byte		0x1
	.byte		0x1
	.4byte		.L11612
	.uleb128	181
	.uleb128	45
	.byte		"Os_Core_DynShared"
	.byte		0
	.4byte		.L11619
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11617:
	.sleb128	11
	.4byte		.L11623
	.uleb128	69
	.uleb128	1
	.4byte		.L11624-.L2
	.uleb128	20
	.section	.debug_info,,n
.L786:
	.sleb128	12
	.byte		"Os_Core_DynInit"
	.byte		0
	.4byte		.L11479
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L787:
	.sleb128	12
	.byte		"Os_Core_Dyn"
	.byte		0
	.4byte		.L11625
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L788:
	.sleb128	12
	.byte		"Os_DispatchElement"
	.byte		0
	.4byte		.L11629
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L789:
	.sleb128	12
	.byte		"Os_PrepareContextFunction"
	.byte		0
	.4byte		.L11633
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L790:
	.sleb128	12
	.byte		"Os_GetStackPointerFunction"
	.byte		0
	.4byte		.L11638
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11624:
.L11482:
	.sleb128	11
	.4byte		.L11623
	.uleb128	69
	.uleb128	1
	.4byte		.L11645-.L2
	.uleb128	36
.L783:
	.sleb128	12
	.byte		"Os_IsrDynInit"
	.byte		0
	.4byte		.L11646
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L784:
	.sleb128	12
	.byte		"Os_SchedulerDynInit"
	.byte		0
	.4byte		.L11648
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L785:
	.sleb128	12
	.byte		"Os_CurrentApp"
	.byte		0
	.4byte		.L11473
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
	.sleb128	0
.L11645:
.L11622:
	.sleb128	11
	.4byte		.L11623
	.uleb128	69
	.uleb128	1
	.4byte		.L11650-.L2
	.uleb128	152
.L776:
	.sleb128	12
	.byte		"Os_Dispatcher"
	.byte		0
	.4byte		.L11651
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L777:
	.sleb128	12
	.byte		"Os_PublicDataNoInit"
	.byte		0
	.4byte		.L11653
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11650:
.L11628:
	.sleb128	11
	.4byte		.L11623
	.uleb128	69
	.uleb128	1
	.4byte		.L11655-.L2
	.uleb128	104
.L773:
	.sleb128	12
	.byte		"Os_SchedulerDyn"
	.byte		0
	.4byte		.L11460
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L774:
	.sleb128	12
	.byte		"Os_IsrDyn"
	.byte		0
	.4byte		.L11656
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L775:
	.sleb128	12
	.byte		"Os_HooksDyn"
	.byte		0
	.4byte		.L11595
	.sleb128	2
	.byte		0x23
	.uleb128	100
	.byte		0x1
	.sleb128	0
.L11655:
.L11649:
	.sleb128	11
	.4byte		.L11623
	.uleb128	69
	.uleb128	1
	.4byte		.L11658-.L2
	.uleb128	4
.L772:
	.sleb128	12
	.byte		"Os_SchedulerCurrentProc"
	.byte		0
	.4byte		.L11659
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11658:
.L11461:
	.sleb128	11
	.4byte		.L11623
	.uleb128	69
	.uleb128	1
	.4byte		.L11661-.L2
	.uleb128	48
.L764:
	.sleb128	12
	.byte		"Os_CurrentContext"
	.byte		0
	.4byte		.L11643
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L765:
	.sleb128	12
	.byte		"Os_PreviousContext"
	.byte		0
	.4byte		.L11643
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L766:
	.sleb128	12
	.byte		"Os_SchedulerScheduleAction"
	.byte		0
	.4byte		.L11662
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L767:
	.sleb128	12
	.byte		"Os_SchedulerLastScheduledPriority"
	.byte		0
	.4byte		.L11664
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L768:
	.sleb128	12
	.byte		"Os_SchedulerCurrentTask"
	.byte		0
	.4byte		.L11659
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L769:
	.sleb128	12
	.byte		"Os_SchedulerLastScheduledProc"
	.byte		0
	.4byte		.L11659
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L770:
	.sleb128	12
	.byte		"Os_SchedulerHeadPivot"
	.byte		0
	.4byte		.L11665
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L771:
	.sleb128	12
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
.L11465:
	.sleb128	13
	.4byte		.L11666
	.uleb128	612
	.uleb128	1
	.4byte		.L11667-.L2
	.byte		"Os_SchedulerQueueElementType_s"
	.byte		0
	.uleb128	12
.L750:
	.sleb128	12
	.byte		"Os_QueueProc"
	.byte		0
	.4byte		.L11659
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L751:
	.sleb128	12
	.byte		"Os_QueueFrontElement"
	.byte		0
	.4byte		.L11464
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L752:
	.sleb128	12
	.byte		"Os_QueueBackElement"
	.byte		0
	.4byte		.L11464
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11667:
.L11647:
	.sleb128	11
	.4byte		.L11666
	.uleb128	612
	.uleb128	1
	.4byte		.L11668-.L2
	.uleb128	28
.L743:
	.sleb128	12
	.byte		"Os_CurrentUserModePriority"
	.byte		0
	.4byte		.L11544
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L744:
	.sleb128	12
	.byte		"Os_UserModePriorityChanged"
	.byte		0
	.4byte		.L11562
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L745:
	.sleb128	12
	.byte		"Os_DisableAllCount"
	.byte		0
	.4byte		.L11519
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L746:
	.sleb128	12
	.byte		"Os_SuspendAllCount"
	.byte		0
	.4byte		.L11519
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L747:
	.sleb128	12
	.byte		"Os_SuspendOSCount"
	.byte		0
	.4byte		.L11519
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L748:
	.sleb128	12
	.byte		"Os_SavedIsrLevel"
	.byte		0
	.4byte		.L11544
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L749:
	.sleb128	12
	.byte		"Os_SavedOSIsrLevel"
	.byte		0
	.4byte		.L11544
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
	.sleb128	0
.L11668:
.L11657:
	.sleb128	11
	.4byte		.L11666
	.uleb128	612
	.uleb128	1
	.4byte		.L11669-.L2
	.uleb128	52
.L737:
	.sleb128	12
	.byte		"Os_IsrRunningIsr"
	.byte		0
	.4byte		.L11659
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L738:
	.sleb128	12
	.byte		"Os_IsrNeedToClear"
	.byte		0
	.4byte		.L11670
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L739:
	.sleb128	12
	.byte		"Os_Isr_NestLevel"
	.byte		0
	.4byte		.L11519
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L740:
	.sleb128	12
	.byte		"Os_Isr_ServicesBackup"
	.byte		0
	.4byte		.L11674
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L741:
	.sleb128	12
	.byte		"Os_SuspendAllPrevIsrState"
	.byte		0
	.4byte		.L11544
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L742:
	.sleb128	12
	.byte		"Os_SuspendCounterpartTrack"
	.byte		0
	.4byte		.L11678
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L11669:
.L11652:
	.sleb128	11
	.4byte		.L11666
	.uleb128	612
	.uleb128	1
	.4byte		.L11680-.L2
	.uleb128	8
.L735:
	.sleb128	12
	.byte		"Os_DHead"
	.byte		0
	.4byte		.L11519
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L736:
	.sleb128	12
	.byte		"Os_DTail"
	.byte		0
	.4byte		.L11519
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11680:
.L11632:
	.sleb128	13
	.4byte		.L11666
	.uleb128	612
	.uleb128	1
	.4byte		.L11681-.L2
	.byte		"Os_DispatchElementType_s"
	.byte		0
	.uleb128	56
.L730:
	.sleb128	12
	.byte		"Os_DispatchKind"
	.byte		0
	.4byte		.L11682
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L731:
	.sleb128	12
	.byte		"Os_DispatcherLockCoreId"
	.byte		0
	.4byte		.L11443
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L732:
	.sleb128	12
	.byte		"Os_DispatchIsrId"
	.byte		0
	.4byte		.L11684
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L733:
	.sleb128	12
	.byte		"Os_DispatchApiCall"
	.byte		0
	.4byte		.L11687
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L734:
	.sleb128	12
	.byte		"Os_DispatchApiInternal"
	.byte		0
	.4byte		.L11527
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11681:
.L11528:
	.sleb128	13
	.4byte		.L11666
	.uleb128	60
	.uleb128	1
	.4byte		.L11688-.L2
	.byte		"Os_APICallType_struct"
	.byte		0
	.uleb128	40
.L725:
	.sleb128	12
	.byte		"Os_API_Magic"
	.byte		0
	.4byte		.L11519
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L726:
	.sleb128	12
	.byte		"Os_API_ReturnValue"
	.byte		0
	.4byte		.L11514
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L727:
	.sleb128	12
	.byte		"Os_API_Lock"
	.byte		0
	.4byte		.L11689
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L728:
	.sleb128	12
	.byte		"Os_API_Func"
	.byte		0
	.4byte		.L11691
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L729:
	.sleb128	12
	.byte		"Os_API_Data"
	.byte		0
	.4byte		.L11696
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11688:
	.section	.debug_info,,n
.L11696:
	.sleb128	14
	.4byte		.L11666
	.uleb128	60
	.uleb128	1
	.4byte		.L11697-.L2
	.uleb128	24
.L677:
	.sleb128	12
	.byte		"Os_ApiStartOs"
	.byte		0
	.4byte		.L11698
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L678:
	.sleb128	12
	.byte		"Os_ApiShutdownOs"
	.byte		0
	.4byte		.L11700
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L679:
	.sleb128	12
	.byte		"Os_ApiShutdownOsInternal"
	.byte		0
	.4byte		.L11702
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L680:
	.sleb128	12
	.byte		"Os_ApiShutdownAllCores"
	.byte		0
	.4byte		.L11704
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L681:
	.sleb128	12
	.byte		"Os_ApiGetNumberOfActivatedCores"
	.byte		0
	.4byte		.L11706
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L682:
	.sleb128	12
	.byte		"Os_ApiStartCore"
	.byte		0
	.4byte		.L11708
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L683:
	.sleb128	12
	.byte		"Os_ApiStartNonAutosarCore"
	.byte		0
	.4byte		.L11710
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L684:
	.sleb128	12
	.byte		"Os_ApiGetCoreID"
	.byte		0
	.4byte		.L11712
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L685:
	.sleb128	12
	.byte		"Os_ApiActivateTask"
	.byte		0
	.4byte		.L11714
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L686:
	.sleb128	12
	.byte		"Os_ApiChainTask"
	.byte		0
	.4byte		.L11716
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L687:
	.sleb128	12
	.byte		"Os_ApiGetTaskID"
	.byte		0
	.4byte		.L11718
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L688:
	.sleb128	12
	.byte		"Os_ApiGetTaskState"
	.byte		0
	.4byte		.L11720
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L689:
	.sleb128	12
	.byte		"Os_ApiSetEvent"
	.byte		0
	.4byte		.L11722
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L690:
	.sleb128	12
	.byte		"Os_ApiClearEvent"
	.byte		0
	.4byte		.L11724
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L691:
	.sleb128	12
	.byte		"Os_ApiGetEvent"
	.byte		0
	.4byte		.L11726
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L692:
	.sleb128	12
	.byte		"Os_ApiWaitEvent"
	.byte		0
	.4byte		.L11728
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L693:
	.sleb128	12
	.byte		"Os_ApiGetResource"
	.byte		0
	.4byte		.L11730
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L694:
	.sleb128	12
	.byte		"Os_ApiReleaseResource"
	.byte		0
	.4byte		.L11732
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L695:
	.sleb128	12
	.byte		"Os_ApiGetAlarmBase"
	.byte		0
	.4byte		.L11734
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L696:
	.sleb128	12
	.byte		"Os_ApiGetAlarm"
	.byte		0
	.4byte		.L11736
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L697:
	.sleb128	12
	.byte		"Os_ApiSetRelAlarm"
	.byte		0
	.4byte		.L11738
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L698:
	.sleb128	12
	.byte		"Os_ApiSetAbsAlarm"
	.byte		0
	.4byte		.L11740
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L699:
	.sleb128	12
	.byte		"Os_ApiCancelAlarm"
	.byte		0
	.4byte		.L11742
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L700:
	.sleb128	12
	.byte		"Os_ApiGetApplicationState"
	.byte		0
	.4byte		.L11744
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L701:
	.sleb128	12
	.byte		"Os_ApiTerminateApplication"
	.byte		0
	.4byte		.L11746
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L702:
	.sleb128	12
	.byte		"Os_ApiGetApplicationID"
	.byte		0
	.4byte		.L11748
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L703:
	.sleb128	12
	.byte		"Os_ApiGetISRID"
	.byte		0
	.4byte		.L11750
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L704:
	.sleb128	12
	.byte		"Os_ApiGetActiveApplicationMode"
	.byte		0
	.4byte		.L11752
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L705:
	.sleb128	12
	.byte		"Os_ApiIncrementCounter"
	.byte		0
	.4byte		.L11754
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L706:
	.sleb128	12
	.byte		"Os_ApiGetCounterValue"
	.byte		0
	.4byte		.L11756
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L707:
	.sleb128	12
	.byte		"Os_ApiGetElapsedValue"
	.byte		0
	.4byte		.L11758
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L708:
	.sleb128	12
	.byte		"Os_ApiStartScheduleTableAbs"
	.byte		0
	.4byte		.L11760
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L709:
	.sleb128	12
	.byte		"Os_ApiStartScheduleTableRel"
	.byte		0
	.4byte		.L11762
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L710:
	.sleb128	12
	.byte		"Os_ApiStopScheduleTable"
	.byte		0
	.4byte		.L11764
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L711:
	.sleb128	12
	.byte		"Os_ApiGetScheduleTableStatus"
	.byte		0
	.4byte		.L11766
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L712:
	.sleb128	12
	.byte		"Os_ApiNextScheduleTable"
	.byte		0
	.4byte		.L11768
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L713:
	.sleb128	12
	.byte		"Os_ApiStartScheduleTableSynchron"
	.byte		0
	.4byte		.L11770
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L714:
	.sleb128	12
	.byte		"Os_ApiSyncScheduleTable"
	.byte		0
	.4byte		.L11772
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L715:
	.sleb128	12
	.byte		"Os_ApiSetScheduleTableAsync"
	.byte		0
	.4byte		.L11774
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L716:
	.sleb128	12
	.byte		"Os_ApiCheckObjectAccess"
	.byte		0
	.4byte		.L11776
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L717:
	.sleb128	12
	.byte		"Os_ApiCheckObjectOwnership"
	.byte		0
	.4byte		.L11778
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L718:
	.sleb128	12
	.byte		"Os_ApiCallTrustedFunction"
	.byte		0
	.4byte		.L11780
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L719:
	.sleb128	12
	.byte		"Os_ApiStackUsage"
	.byte		0
	.4byte		.L11782
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L720:
	.sleb128	12
	.byte		"Os_API_GetSpinlock"
	.byte		0
	.4byte		.L11784
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L721:
	.sleb128	12
	.byte		"Os_API_ReleaseSpinlock"
	.byte		0
	.4byte		.L11786
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L722:
	.sleb128	12
	.byte		"Os_API_TryToGetSpinlock"
	.byte		0
	.4byte		.L11788
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L723:
	.sleb128	12
	.byte		"Os_API_IOCTransfer"
	.byte		0
	.4byte		.L11790
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L724:
	.sleb128	12
	.byte		"Os_ApiControlIdle"
	.byte		0
	.4byte		.L11792
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11697:
.L11793:
	.sleb128	11
	.4byte		.L11666
	.uleb128	60
	.uleb128	1
	.4byte		.L11794-.L2
	.uleb128	8
.L675:
	.sleb128	12
	.byte		"CoreID"
	.byte		0
	.4byte		.L11443
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L676:
	.sleb128	12
	.byte		"IdleMode"
	.byte		0
	.4byte		.L11795
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11794:
.L11791:
	.sleb128	11
	.4byte		.L11666
	.uleb128	60
	.uleb128	1
	.4byte		.L11797-.L2
	.uleb128	8
.L673:
	.sleb128	12
	.byte		"Ioc_Channel"
	.byte		0
	.4byte		.L11798
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L674:
	.sleb128	12
	.byte		"Ioc_Data"
	.byte		0
	.4byte		.L11802
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11797:
.L11789:
	.sleb128	11
	.4byte		.L11666
	.uleb128	60
	.uleb128	1
	.4byte		.L11806-.L2
	.uleb128	8
.L671:
	.sleb128	12
	.byte		"SpinlockId"
	.byte		0
	.4byte		.L11807
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L672:
	.sleb128	12
	.byte		"Success"
	.byte		0
	.4byte		.L11808
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11806:
.L11787:
	.sleb128	11
	.4byte		.L11666
	.uleb128	60
	.uleb128	1
	.4byte		.L11811-.L2
	.uleb128	2
.L670:
	.sleb128	12
	.byte		"SpinlockId"
	.byte		0
	.4byte		.L11807
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11811:
.L11785:
	.sleb128	11
	.4byte		.L11666
	.uleb128	60
	.uleb128	1
	.4byte		.L11812-.L2
	.uleb128	2
.L669:
	.sleb128	12
	.byte		"SpinlockId"
	.byte		0
	.4byte		.L11807
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11812:
.L11783:
	.sleb128	11
	.4byte		.L11666
	.uleb128	60
	.uleb128	1
	.4byte		.L11813-.L2
	.uleb128	20
.L664:
	.sleb128	12
	.byte		"ProcId"
	.byte		0
	.4byte		.L11814
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L665:
	.sleb128	12
	.byte		"MaxUsage"
	.byte		0
	.4byte		.L11515
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L666:
	.sleb128	12
	.byte		"MaxUsageRef"
	.byte		0
	.4byte		.L11815
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L667:
	.sleb128	12
	.byte		"CurrentUsage"
	.byte		0
	.4byte		.L11515
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L668:
	.sleb128	12
	.byte		"CurrentUsageRef"
	.byte		0
	.4byte		.L11815
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11813:
.L11781:
	.sleb128	11
	.4byte		.L11666
	.uleb128	60
	.uleb128	1
	.4byte		.L11816-.L2
	.uleb128	12
.L661:
	.sleb128	12
	.byte		"FunctionIndex"
	.byte		0
	.4byte		.L11518
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L662:
	.sleb128	12
	.byte		"ParamRef"
	.byte		0
	.4byte		.L11522
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L663:
	.sleb128	12
	.byte		"ReturnValue"
	.byte		0
	.4byte		.L11817
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11816:
.L11779:
	.sleb128	11
	.4byte		.L11666
	.uleb128	60
	.uleb128	1
	.4byte		.L11819-.L2
	.uleb128	12
.L658:
	.sleb128	12
	.byte		"AppID"
	.byte		0
	.4byte		.L11557
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L659:
	.sleb128	12
	.byte		"ObjectType"
	.byte		0
	.4byte		.L11820
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L660:
	.sleb128	12
	.byte		"Object"
	.byte		0
	.4byte		.L11686
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11819:
.L11777:
	.sleb128	11
	.4byte		.L11666
	.uleb128	60
	.uleb128	1
	.4byte		.L11822-.L2
	.uleb128	12
.L655:
	.sleb128	12
	.byte		"AppID"
	.byte		0
	.4byte		.L11557
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L656:
	.sleb128	12
	.byte		"ObjectType"
	.byte		0
	.4byte		.L11820
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L657:
	.sleb128	12
	.byte		"Object"
	.byte		0
	.4byte		.L11686
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11822:
.L11743:
	.sleb128	11
	.4byte		.L11666
	.uleb128	60
	.uleb128	1
	.4byte		.L11823-.L2
	.uleb128	4
.L654:
	.sleb128	12
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11824
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11823:
.L11741:
	.sleb128	11
	.4byte		.L11666
	.uleb128	60
	.uleb128	1
	.4byte		.L11825-.L2
	.uleb128	12
.L651:
	.sleb128	12
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11824
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L652:
	.sleb128	12
	.byte		"Start"
	.byte		0
	.4byte		.L11826
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L653:
	.sleb128	12
	.byte		"Cycle"
	.byte		0
	.4byte		.L11826
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11825:
.L11739:
	.sleb128	11
	.4byte		.L11666
	.uleb128	60
	.uleb128	1
	.4byte		.L11827-.L2
	.uleb128	12
.L648:
	.sleb128	12
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11824
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L649:
	.sleb128	12
	.byte		"Increment"
	.byte		0
	.4byte		.L11826
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L650:
	.sleb128	12
	.byte		"Cycle"
	.byte		0
	.4byte		.L11826
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11827:
.L11737:
	.sleb128	11
	.4byte		.L11666
	.uleb128	60
	.uleb128	1
	.4byte		.L11828-.L2
	.uleb128	8
.L646:
	.sleb128	12
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11824
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L647:
	.sleb128	12
	.byte		"TickRef"
	.byte		0
	.4byte		.L11829
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11828:
.L11735:
	.sleb128	11
	.4byte		.L11666
	.uleb128	60
	.uleb128	1
	.4byte		.L11831-.L2
	.uleb128	8
.L644:
	.sleb128	12
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11824
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L645:
	.sleb128	12
	.byte		"AlarmBaseTypeRef"
	.byte		0
	.4byte		.L11832
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11831:
.L11775:
	.sleb128	11
	.4byte		.L11666
	.uleb128	60
	.uleb128	1
	.4byte		.L11836-.L2
	.uleb128	4
.L643:
	.sleb128	12
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11837
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11836:
.L11773:
	.sleb128	11
	.4byte		.L11666
	.uleb128	60
	.uleb128	1
	.4byte		.L11838-.L2
	.uleb128	8
.L641:
	.sleb128	12
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11837
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L642:
	.sleb128	12
	.byte		"SyncValue"
	.byte		0
	.4byte		.L11826
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11838:
.L11771:
	.sleb128	11
	.4byte		.L11666
	.uleb128	60
	.uleb128	1
	.4byte		.L11839-.L2
	.uleb128	4
.L640:
	.sleb128	12
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11837
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11839:
.L11769:
	.sleb128	11
	.4byte		.L11666
	.uleb128	60
	.uleb128	1
	.4byte		.L11840-.L2
	.uleb128	8
.L638:
	.sleb128	12
	.byte		"SchTblIdFrom"
	.byte		0
	.4byte		.L11837
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L639:
	.sleb128	12
	.byte		"SchTblIdTo"
	.byte		0
	.4byte		.L11837
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11840:
.L11767:
	.sleb128	11
	.4byte		.L11666
	.uleb128	60
	.uleb128	1
	.4byte		.L11841-.L2
	.uleb128	8
.L636:
	.sleb128	12
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11837
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L637:
	.sleb128	12
	.byte		"SchTblStatus"
	.byte		0
	.4byte		.L11842
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11841:
.L11765:
	.sleb128	11
	.4byte		.L11666
	.uleb128	60
	.uleb128	1
	.4byte		.L11846-.L2
	.uleb128	4
.L635:
	.sleb128	12
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11837
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11846:
.L11763:
	.sleb128	11
	.4byte		.L11666
	.uleb128	60
	.uleb128	1
	.4byte		.L11847-.L2
	.uleb128	8
.L633:
	.sleb128	12
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11837
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L634:
	.sleb128	12
	.byte		"Offset"
	.byte		0
	.4byte		.L11826
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11847:
.L11761:
	.sleb128	11
	.4byte		.L11666
	.uleb128	60
	.uleb128	1
	.4byte		.L11848-.L2
	.uleb128	8
.L631:
	.sleb128	12
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11837
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L632:
	.sleb128	12
	.byte		"Start"
	.byte		0
	.4byte		.L11826
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11848:
.L11759:
	.sleb128	11
	.4byte		.L11666
	.uleb128	60
	.uleb128	1
	.4byte		.L11849-.L2
	.uleb128	12
.L628:
	.sleb128	12
	.byte		"CounterId"
	.byte		0
	.4byte		.L11850
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L629:
	.sleb128	12
	.byte		"ValuePtr"
	.byte		0
	.4byte		.L11829
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L630:
	.sleb128	12
	.byte		"ElapsedValuePtr"
	.byte		0
	.4byte		.L11829
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11849:
.L11757:
	.sleb128	11
	.4byte		.L11666
	.uleb128	60
	.uleb128	1
	.4byte		.L11851-.L2
	.uleb128	12
.L625:
	.sleb128	12
	.byte		"CounterId"
	.byte		0
	.4byte		.L11850
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L626:
	.sleb128	12
	.byte		"ValuePtr"
	.byte		0
	.4byte		.L11829
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L627:
	.sleb128	12
	.byte		"LightServiceFunction"
	.byte		0
	.4byte		.L11852
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11851:
.L11755:
	.sleb128	11
	.4byte		.L11666
	.uleb128	60
	.uleb128	1
	.4byte		.L11856-.L2
	.uleb128	4
.L624:
	.sleb128	12
	.byte		"CounterId"
	.byte		0
	.4byte		.L11850
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11856:
.L11751:
	.sleb128	11
	.4byte		.L11666
	.uleb128	60
	.uleb128	1
	.4byte		.L11857-.L2
	.uleb128	4
.L623:
	.sleb128	12
	.byte		"ISRId"
	.byte		0
	.4byte		.L11684
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11857:
.L11747:
	.sleb128	11
	.4byte		.L11666
	.uleb128	60
	.uleb128	1
	.4byte		.L11858-.L2
	.uleb128	2
.L621:
	.sleb128	12
	.byte		"Application"
	.byte		0
	.4byte		.L11557
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L622:
	.sleb128	12
	.byte		"RestartOption"
	.byte		0
	.4byte		.L11859
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
	.sleb128	0
.L11858:
.L11749:
	.sleb128	11
	.4byte		.L11666
	.uleb128	60
	.uleb128	1
	.4byte		.L11860-.L2
	.uleb128	1
.L620:
	.sleb128	12
	.byte		"Application"
	.byte		0
	.4byte		.L11557
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11860:
.L11745:
	.sleb128	11
	.4byte		.L11666
	.uleb128	60
	.uleb128	1
	.4byte		.L11861-.L2
	.uleb128	8
.L618:
	.sleb128	12
	.byte		"Application"
	.byte		0
	.4byte		.L11557
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L619:
	.sleb128	12
	.byte		"AppStateRef"
	.byte		0
	.4byte		.L11862
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11861:
.L11729:
	.sleb128	11
	.4byte		.L11666
	.uleb128	60
	.uleb128	1
	.4byte		.L11865-.L2
	.uleb128	8
.L617:
	.sleb128	12
	.byte		"EventMask"
	.byte		0
	.4byte		.L11866
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11865:
.L11727:
	.sleb128	11
	.4byte		.L11666
	.uleb128	60
	.uleb128	1
	.4byte		.L11869-.L2
	.uleb128	24
.L614:
	.sleb128	12
	.byte		"TaskId"
	.byte		0
	.4byte		.L11814
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L615:
	.sleb128	12
	.byte		"EventMask"
	.byte		0
	.4byte		.L11866
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L616:
	.sleb128	12
	.byte		"EventMaskRef"
	.byte		0
	.4byte		.L11870
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11869:
.L11725:
	.sleb128	11
	.4byte		.L11666
	.uleb128	60
	.uleb128	1
	.4byte		.L11872-.L2
	.uleb128	8
.L613:
	.sleb128	12
	.byte		"EventMask"
	.byte		0
	.4byte		.L11866
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11872:
.L11723:
	.sleb128	11
	.4byte		.L11666
	.uleb128	60
	.uleb128	1
	.4byte		.L11873-.L2
	.uleb128	16
.L611:
	.sleb128	12
	.byte		"TaskId"
	.byte		0
	.4byte		.L11814
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L612:
	.sleb128	12
	.byte		"EventMask"
	.byte		0
	.4byte		.L11866
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11873:
.L11721:
	.sleb128	11
	.4byte		.L11666
	.uleb128	60
	.uleb128	1
	.4byte		.L11874-.L2
	.uleb128	8
.L609:
	.sleb128	12
	.byte		"TaskId"
	.byte		0
	.4byte		.L11814
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L610:
	.sleb128	12
	.byte		"TaskStateRef"
	.byte		0
	.4byte		.L11875
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11874:
.L11719:
	.sleb128	11
	.4byte		.L11666
	.uleb128	60
	.uleb128	1
	.4byte		.L11879-.L2
	.uleb128	4
.L608:
	.sleb128	12
	.byte		"TaskIdRef"
	.byte		0
	.4byte		.L11880
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11879:
.L11717:
	.sleb128	11
	.4byte		.L11666
	.uleb128	60
	.uleb128	1
	.4byte		.L11882-.L2
	.uleb128	4
.L607:
	.sleb128	12
	.byte		"TaskId"
	.byte		0
	.4byte		.L11814
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11882:
.L11715:
	.sleb128	11
	.4byte		.L11666
	.uleb128	60
	.uleb128	1
	.4byte		.L11883-.L2
	.uleb128	4
.L606:
	.sleb128	12
	.byte		"TaskId"
	.byte		0
	.4byte		.L11814
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11883:
.L11733:
	.sleb128	11
	.4byte		.L11666
	.uleb128	60
	.uleb128	1
	.4byte		.L11884-.L2
	.uleb128	4
.L605:
	.sleb128	12
	.byte		"ResourceId"
	.byte		0
	.4byte		.L11885
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11884:
.L11731:
	.sleb128	11
	.4byte		.L11666
	.uleb128	60
	.uleb128	1
	.4byte		.L11886-.L2
	.uleb128	4
.L604:
	.sleb128	12
	.byte		"ResourceId"
	.byte		0
	.4byte		.L11885
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11886:
.L11753:
	.sleb128	11
	.4byte		.L11666
	.uleb128	60
	.uleb128	1
	.4byte		.L11887-.L2
	.uleb128	4
.L603:
	.sleb128	12
	.byte		"AppMode"
	.byte		0
	.4byte		.L11888
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11887:
.L11713:
	.sleb128	11
	.4byte		.L11666
	.uleb128	60
	.uleb128	1
	.4byte		.L11889-.L2
	.uleb128	2
.L602:
	.sleb128	12
	.byte		"CoreID"
	.byte		0
	.4byte		.L11443
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11889:
.L11707:
	.sleb128	11
	.4byte		.L11666
	.uleb128	60
	.uleb128	1
	.4byte		.L11890-.L2
	.uleb128	2
.L601:
	.sleb128	12
	.byte		"NumberOfActivatedCores"
	.byte		0
	.4byte		.L11443
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11890:
.L11705:
	.sleb128	11
	.4byte		.L11666
	.uleb128	60
	.uleb128	1
	.4byte		.L11891-.L2
	.uleb128	1
.L600:
	.sleb128	12
	.byte		"Error"
	.byte		0
	.4byte		.L11514
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11891:
.L11703:
	.sleb128	11
	.4byte		.L11666
	.uleb128	60
	.uleb128	1
	.4byte		.L11892-.L2
	.uleb128	8
.L598:
	.sleb128	12
	.byte		"ShutdownType"
	.byte		0
	.4byte		.L11893
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L599:
	.sleb128	12
	.byte		"Error"
	.byte		0
	.4byte		.L11514
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11892:
.L11701:
	.sleb128	11
	.4byte		.L11666
	.uleb128	60
	.uleb128	1
	.4byte		.L11895-.L2
	.uleb128	1
.L597:
	.sleb128	12
	.byte		"Error"
	.byte		0
	.4byte		.L11514
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11895:
.L11711:
	.sleb128	11
	.4byte		.L11666
	.uleb128	60
	.uleb128	1
	.4byte		.L11896-.L2
	.uleb128	8
.L595:
	.sleb128	12
	.byte		"CoreID"
	.byte		0
	.4byte		.L11443
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L596:
	.sleb128	12
	.byte		"StatusRef"
	.byte		0
	.4byte		.L11897
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11896:
.L11709:
	.sleb128	11
	.4byte		.L11666
	.uleb128	60
	.uleb128	1
	.4byte		.L11898-.L2
	.uleb128	8
.L593:
	.sleb128	12
	.byte		"CoreID"
	.byte		0
	.4byte		.L11443
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L594:
	.sleb128	12
	.byte		"StatusRef"
	.byte		0
	.4byte		.L11897
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11898:
.L11699:
	.sleb128	11
	.4byte		.L11666
	.uleb128	60
	.uleb128	1
	.4byte		.L11899-.L2
	.uleb128	4
.L592:
	.sleb128	12
	.byte		"AppMode"
	.byte		0
	.4byte		.L11888
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11899:
.L11801:
	.sleb128	11
	.4byte		.L11603
	.uleb128	33
	.uleb128	14
	.4byte		.L11900-.L2
	.uleb128	24
.L585:
	.sleb128	12
	.byte		"Os_IOC_ChannelDyn"
	.byte		0
	.4byte		.L11901
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L586:
	.sleb128	12
	.byte		"Os_IOC_ChannelLength"
	.byte		0
	.4byte		.L11905
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L587:
	.sleb128	12
	.byte		"Os_IOC_ChannelBuffer"
	.byte		0
	.4byte		.L11906
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L588:
	.sleb128	12
	.byte		"Os_IOC_ChannelElementSize"
	.byte		0
	.4byte		.L11907
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L589:
	.sleb128	12
	.byte		"Os_IOC_DataCount"
	.byte		0
	.4byte		.L11908
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L590:
	.sleb128	12
	.byte		"Os_IOC_DataDescriptor"
	.byte		0
	.4byte		.L11910
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L591:
	.sleb128	12
	.byte		"Os_IOC_LockResourceAddress"
	.byte		0
	.4byte		.L11915
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L11900:
.L11914:
	.sleb128	11
	.4byte		.L11603
	.uleb128	33
	.uleb128	14
	.4byte		.L11918-.L2
	.uleb128	4
.L581:
	.sleb128	12
	.byte		"Os_IOC_DataLength"
	.byte		0
	.4byte		.L11919
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L582:
	.sleb128	12
	.byte		"Os_IOC_DataOffset"
	.byte		0
	.4byte		.L11921
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L11918:
.L11904:
	.sleb128	11
	.4byte		.L11603
	.uleb128	33
	.uleb128	14
	.4byte		.L11923-.L2
	.uleb128	6
.L578:
	.sleb128	12
	.byte		"Os_IOC_ChannelHead"
	.byte		0
	.4byte		.L11905
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L579:
	.sleb128	12
	.byte		"Os_IOC_ChannelMessageCount"
	.byte		0
	.4byte		.L11905
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L580:
	.sleb128	12
	.byte		"Os_IOC_Status"
	.byte		0
	.4byte		.L11514
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11923:
.L11608:
	.sleb128	13
	.4byte		.L11603
	.uleb128	33
	.uleb128	14
	.4byte		.L11924-.L2
	.byte		"OsTrustedFunctionStatStruct"
	.byte		0
	.uleb128	8
.L576:
	.sleb128	12
	.byte		"Os_TrustedFunction"
	.byte		0
	.4byte		.L11537
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L577:
	.sleb128	12
	.byte		"Os_TrustedFuncOwnerAppId"
	.byte		0
	.4byte		.L11925
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11924:
.L11596:
	.sleb128	11
	.4byte		.L11926
	.uleb128	34
	.uleb128	14
	.4byte		.L11927-.L2
	.uleb128	2
.L529:
	.sleb128	12
	.byte		"Os_HookID"
	.byte		0
	.4byte		.L11928
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11927:
.L11455:
	.sleb128	13
	.4byte		.L11929
	.uleb128	80
	.uleb128	13
	.4byte		.L11930-.L2
	.byte		"Os_ProcStatType_s"
	.byte		0
	.uleb128	80
.L511:
	.sleb128	12
	.byte		"Os_ProcId"
	.byte		0
	.4byte		.L11931
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L512:
	.sleb128	12
	.byte		"Os_ProcCoreID"
	.byte		0
	.4byte		.L11442
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L513:
	.sleb128	12
	.byte		"Os_ProcDyn"
	.byte		0
	.4byte		.L11932
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L514:
	.sleb128	12
	.byte		"Os_ProcStack"
	.byte		0
	.4byte		.L11936
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L515:
	.sleb128	12
	.byte		"Os_ProcKind"
	.byte		0
	.4byte		.L11941
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L516:
	.sleb128	12
	.byte		"Os_ProcEventRights"
	.byte		0
	.4byte		.L11944
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L517:
	.sleb128	12
	.byte		"Os_ProcPriority"
	.byte		0
	.4byte		.L11945
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L518:
	.sleb128	12
	.byte		"Os_ProcRunPriority"
	.byte		0
	.4byte		.L11945
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L519:
	.sleb128	12
	.byte		"Os_ProcMaxActivations"
	.byte		0
	.4byte		.L11946
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L520:
	.sleb128	12
	.byte		"Os_ProcContext"
	.byte		0
	.4byte		.L11948
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L521:
	.sleb128	12
	.byte		"Os_ProcOwnerApp"
	.byte		0
	.4byte		.L11472
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L522:
	.sleb128	12
	.byte		"Os_ProcAppAccess"
	.byte		0
	.4byte		.L11949
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L523:
	.sleb128	12
	.byte		"Os_ProcEntryPoint"
	.byte		0
	.4byte		.L11953
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L524:
	.sleb128	12
	.byte		"Os_ProcAutoStart"
	.byte		0
	.4byte		.L11949
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
.L525:
	.sleb128	12
	.byte		"Os_ProcResourceCount"
	.byte		0
	.4byte		.L11958
	.sleb128	2
	.byte		0x23
	.uleb128	64
	.byte		0x1
.L526:
	.sleb128	12
	.byte		"Os_ProcResourceStack"
	.byte		0
	.4byte		.L11959
	.sleb128	2
	.byte		0x23
	.uleb128	68
	.byte		0x1
.L527:
	.sleb128	12
	.byte		"Os_ProcQueueElements"
	.byte		0
	.4byte		.L11965
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.byte		0x1
.L528:
	.sleb128	12
	.byte		"Os_ProcIsrPlatformConfig"
	.byte		0
	.4byte		.L11966
	.sleb128	2
	.byte		0x23
	.uleb128	76
	.byte		0x1
	.sleb128	0
.L11930:
.L11940:
	.sleb128	13
	.4byte		.L11929
	.uleb128	80
	.uleb128	13
	.4byte		.L11967-.L2
	.byte		"Os_ProcStackStruct"
	.byte		0
	.uleb128	8
.L509:
	.sleb128	12
	.byte		"Os_ProcStackSize"
	.byte		0
	.4byte		.L11968
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L510:
	.sleb128	12
	.byte		"Os_ProcStackBase"
	.byte		0
	.4byte		.L11948
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11967:
.L11935:
	.sleb128	11
	.4byte		.L11929
	.uleb128	80
	.uleb128	13
	.4byte		.L11970-.L2
	.uleb128	56
.L496:
	.sleb128	12
	.byte		"Os_ProcState"
	.byte		0
	.4byte		.L11877
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L497:
	.sleb128	12
	.byte		"Os_ProcContextState"
	.byte		0
	.4byte		.L11971
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L498:
	.sleb128	12
	.byte		"Os_ProcEvents"
	.byte		0
	.4byte		.L11866
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L499:
	.sleb128	12
	.byte		"Os_ProcEventWaitingFor"
	.byte		0
	.4byte		.L11866
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L500:
	.sleb128	12
	.byte		"Os_ProcActivations"
	.byte		0
	.4byte		.L11947
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L501:
	.sleb128	12
	.byte		"Os_ProcResourcesAllocated"
	.byte		0
	.4byte		.L11885
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L502:
	.sleb128	12
	.byte		"Os_ProcEnabled"
	.byte		0
	.4byte		.L11515
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L503:
	.sleb128	12
	.byte		"Os_ProcCurrentApp"
	.byte		0
	.4byte		.L11473
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L504:
	.sleb128	12
	.byte		"Os_ProcSpinlock"
	.byte		0
	.4byte		.L11973
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L505:
	.sleb128	12
	.byte		"Os_ProcFreeQueueElements"
	.byte		0
	.4byte		.L11464
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L506:
	.sleb128	12
	.byte		"Os_ProcCurrentPriority"
	.byte		0
	.4byte		.L11664
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L507:
	.sleb128	12
	.byte		"Os_ProcTFCallCount"
	.byte		0
	.4byte		.L11515
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L508:
	.sleb128	12
	.byte		"Os_FatalErrorOccured"
	.byte		0
	.4byte		.L11514
	.sleb128	2
	.byte		0x23
	.uleb128	53
	.byte		0x1
	.sleb128	0
.L11970:
.L11975:
	.sleb128	13
	.4byte		.L11599
	.uleb128	52
	.uleb128	1
	.4byte		.L11976-.L2
	.byte		"Os_SpinlockStatType_s"
	.byte		0
	.uleb128	16
.L448:
	.sleb128	12
	.byte		"Os_SpinlockId"
	.byte		0
	.4byte		.L11977
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L449:
	.sleb128	12
	.byte		"Os_SpinlockChainId"
	.byte		0
	.4byte		.L11977
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L450:
	.sleb128	12
	.byte		"Os_SpinlockDyn"
	.byte		0
	.4byte		.L11978
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L451:
	.sleb128	12
	.byte		"Os_SpinlockAccess"
	.byte		0
	.4byte		.L11949
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L452:
	.sleb128	12
	.byte		"Os_SpinlockLockResourceAddress"
	.byte		0
	.4byte		.L11915
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L11976:
.L11981:
	.sleb128	11
	.4byte		.L11599
	.uleb128	52
	.uleb128	1
	.4byte		.L11982-.L2
	.uleb128	12
.L445:
	.sleb128	12
	.byte		"Os_SpinlockLockerProc"
	.byte		0
	.4byte		.L11659
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L446:
	.sleb128	12
	.byte		"Os_SpinlockSuperseded"
	.byte		0
	.4byte		.L11973
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L447:
	.sleb128	12
	.byte		"Os_ResourceDependency"
	.byte		0
	.4byte		.L11961
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11982:
.L11476:
	.sleb128	13
	.4byte		.L11599
	.uleb128	52
	.uleb128	1
	.4byte		.L11983-.L2
	.byte		"Os_ApplicationStatType_s"
	.byte		0
	.uleb128	48
.L433:
	.sleb128	12
	.byte		"Os_AppDyn"
	.byte		0
	.4byte		.L11984
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L434:
	.sleb128	12
	.byte		"Os_AppId"
	.byte		0
	.4byte		.L11925
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L435:
	.sleb128	12
	.byte		"Os_AppRestartTask"
	.byte		0
	.4byte		.L11931
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L436:
	.sleb128	12
	.byte		"Os_AppKind"
	.byte		0
	.4byte		.L11988
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L437:
	.sleb128	12
	.byte		"Os_AppShutdownHook"
	.byte		0
	.4byte		.L11991
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L438:
	.sleb128	12
	.byte		"Os_AppStartupHook"
	.byte		0
	.4byte		.L11996
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L439:
	.sleb128	12
	.byte		"Os_AppErrorHook"
	.byte		0
	.4byte		.L12001
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L440:
	.sleb128	12
	.byte		"Os_AppProcIDs"
	.byte		0
	.4byte		.L12006
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L441:
	.sleb128	12
	.byte		"Os_AppCounterIDs"
	.byte		0
	.4byte		.L12009
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L442:
	.sleb128	12
	.byte		"Os_AppAlarmIDs"
	.byte		0
	.4byte		.L12012
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L443:
	.sleb128	12
	.byte		"Os_AppSchTblIDs"
	.byte		0
	.4byte		.L12015
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L444:
	.sleb128	12
	.byte		"Os_CoreAssigment"
	.byte		0
	.4byte		.L11442
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
	.sleb128	0
.L11983:
.L11987:
	.sleb128	11
	.4byte		.L11599
	.uleb128	52
	.uleb128	1
	.4byte		.L12018-.L2
	.uleb128	1
.L432:
	.sleb128	12
	.byte		"Os_AppState"
	.byte		0
	.4byte		.L11864
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12018:
.L11964:
	.sleb128	11
	.4byte		.L12019
	.uleb128	32
	.uleb128	1
	.4byte		.L12020-.L2
	.uleb128	12
.L429:
	.sleb128	12
	.byte		"Os_ResourcePriority"
	.byte		0
	.4byte		.L11945
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L430:
	.sleb128	12
	.byte		"Os_ResourceAccessRights"
	.byte		0
	.4byte		.L11950
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L431:
	.sleb128	12
	.byte		"Os_ResourceDyn"
	.byte		0
	.4byte		.L12021
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L12020:
.L12023:
	.sleb128	11
	.4byte		.L12019
	.uleb128	32
	.uleb128	1
	.4byte		.L12024-.L2
	.uleb128	4
.L428:
	.sleb128	12
	.byte		"Os_LockerProc"
	.byte		0
	.4byte		.L11659
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12024:
.L11654:
	.sleb128	11
	.4byte		.L12019
	.uleb128	32
	.uleb128	1
	.4byte		.L12025-.L2
	.uleb128	144
.L423:
	.sleb128	12
	.byte		"Os_Error"
	.byte		0
	.4byte		.L12026
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L424:
	.sleb128	12
	.byte		"Os_ExceptionStatus"
	.byte		0
	.4byte		.L12028
	.sleb128	2
	.byte		0x23
	.uleb128	120
	.byte		0x1
	.sleb128	0
.L12025:
.L11677:
	.sleb128	11
	.4byte		.L12019
	.uleb128	32
	.uleb128	1
	.4byte		.L12030-.L2
	.uleb128	24
.L417:
	.sleb128	12
	.byte		"Os_DisAllInt"
	.byte		0
	.4byte		.L12031
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L418:
	.sleb128	12
	.byte		"Os_EnAllInt"
	.byte		0
	.4byte		.L12031
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L419:
	.sleb128	12
	.byte		"Os_SusAllInt"
	.byte		0
	.4byte		.L12031
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L420:
	.sleb128	12
	.byte		"Os_ResAllInt"
	.byte		0
	.4byte		.L12031
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L421:
	.sleb128	12
	.byte		"Os_SusOsInt"
	.byte		0
	.4byte		.L12031
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L422:
	.sleb128	12
	.byte		"Os_ResOsInt"
	.byte		0
	.4byte		.L12031
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L12030:
.L12029:
	.sleb128	11
	.4byte		.L12019
	.uleb128	32
	.uleb128	1
	.4byte		.L12036-.L2
	.uleb128	20
.L412:
	.sleb128	12
	.byte		"Os_ExceptionType"
	.byte		0
	.4byte		.L12037
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L413:
	.sleb128	12
	.byte		"Os_ExceptionCause"
	.byte		0
	.4byte		.L11519
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L414:
	.sleb128	12
	.byte		"Os_ExceptionAuxiliaryCause"
	.byte		0
	.4byte		.L11519
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L415:
	.sleb128	12
	.byte		"Os_ExceptionExecutionAddress"
	.byte		0
	.4byte		.L11644
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L416:
	.sleb128	12
	.byte		"Os_ExceptionAccessAddress"
	.byte		0
	.4byte		.L11644
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L12036:
.L12027:
	.sleb128	11
	.4byte		.L12039
	.uleb128	174
	.uleb128	1
	.4byte		.L12040-.L2
	.uleb128	120
.L409:
	.sleb128	12
	.byte		"Os_ShutdownError"
	.byte		0
	.4byte		.L12041
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L410:
	.sleb128	12
	.byte		"Os_ParameterError"
	.byte		0
	.4byte		.L12043
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L411:
	.sleb128	12
	.byte		"Os_ServiceError"
	.byte		0
	.4byte		.L12045
	.sleb128	2
	.byte		0x23
	.uleb128	112
	.byte		0x1
	.sleb128	0
.L12040:
.L12046:
	.sleb128	11
	.4byte		.L12039
	.uleb128	174
	.uleb128	1
	.4byte		.L12047-.L2
	.uleb128	8
.L406:
	.sleb128	12
	.byte		"Os_ServiceTrace"
	.byte		0
	.4byte		.L12048
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L407:
	.sleb128	12
	.byte		"Os_LastError"
	.byte		0
	.4byte		.L11514
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L408:
	.sleb128	12
	.byte		"Os_FaultyServiceId"
	.byte		0
	.4byte		.L12049
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12047:
.L12044:
	.sleb128	11
	.4byte		.L12039
	.uleb128	174
	.uleb128	1
	.4byte		.L12051-.L2
	.uleb128	104
.L381:
	.sleb128	12
	.byte		"Os_Err_TaskID"
	.byte		0
	.4byte		.L11814
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L382:
	.sleb128	12
	.byte		"Os_Err_ResID"
	.byte		0
	.4byte		.L11885
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L383:
	.sleb128	12
	.byte		"Os_Err_MaskType_Mask"
	.byte		0
	.4byte		.L11866
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L384:
	.sleb128	12
	.byte		"Os_Err_AlarmID"
	.byte		0
	.4byte		.L11824
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L385:
	.sleb128	12
	.byte		"Os_Err_TicksStart"
	.byte		0
	.4byte		.L11826
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L386:
	.sleb128	12
	.byte		"Os_Err_TicksCycle"
	.byte		0
	.4byte		.L11826
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L387:
	.sleb128	12
	.byte		"Os_Err_FuncIndex"
	.byte		0
	.4byte		.L11518
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L388:
	.sleb128	12
	.byte		"Os_Err_FuncParamRefType"
	.byte		0
	.4byte		.L11522
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L389:
	.sleb128	12
	.byte		"Os_Err_ApplID"
	.byte		0
	.4byte		.L11557
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L390:
	.sleb128	12
	.byte		"Os_Err_ApplStateRefType"
	.byte		0
	.4byte		.L11862
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L391:
	.sleb128	12
	.byte		"Os_Err_ObjType"
	.byte		0
	.4byte		.L11820
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L392:
	.sleb128	12
	.byte		"Os_Err_SchedID"
	.byte		0
	.4byte		.L11837
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L393:
	.sleb128	12
	.byte		"Os_Err_SchedID_Next"
	.byte		0
	.4byte		.L11837
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L394:
	.sleb128	12
	.byte		"Os_Err_CntID"
	.byte		0
	.4byte		.L11850
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L395:
	.sleb128	12
	.byte		"Os_Err_RestartType"
	.byte		0
	.4byte		.L11859
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
.L396:
	.sleb128	12
	.byte		"Os_Err_MaskRefType"
	.byte		0
	.4byte		.L11870
	.sleb128	2
	.byte		0x23
	.uleb128	64
	.byte		0x1
.L397:
	.sleb128	12
	.byte		"Os_Err_TaskStateRef"
	.byte		0
	.4byte		.L11875
	.sleb128	2
	.byte		0x23
	.uleb128	68
	.byte		0x1
.L398:
	.sleb128	12
	.byte		"Os_Err_TickRef_Ticks"
	.byte		0
	.4byte		.L11829
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.byte		0x1
.L399:
	.sleb128	12
	.byte		"Os_Err_AlarmBaseRefType_Info"
	.byte		0
	.4byte		.L11832
	.sleb128	2
	.byte		0x23
	.uleb128	76
	.byte		0x1
.L400:
	.sleb128	12
	.byte		"Os_Err_TaskIDRef"
	.byte		0
	.4byte		.L11880
	.sleb128	2
	.byte		0x23
	.uleb128	80
	.byte		0x1
.L401:
	.sleb128	12
	.byte		"Os_Err_TblStatusRefType"
	.byte		0
	.4byte		.L11842
	.sleb128	2
	.byte		0x23
	.uleb128	84
	.byte		0x1
.L402:
	.sleb128	12
	.byte		"Os_Err_TickRef_ElapsedTicks"
	.byte		0
	.4byte		.L11829
	.sleb128	2
	.byte		0x23
	.uleb128	88
	.byte		0x1
.L403:
	.sleb128	12
	.byte		"Os_Err_ObjObj"
	.byte		0
	.4byte		.L11686
	.sleb128	2
	.byte		0x23
	.uleb128	92
	.byte		0x1
.L404:
	.sleb128	12
	.byte		"Os_Err_SpinlockID"
	.byte		0
	.4byte		.L11807
	.sleb128	2
	.byte		0x23
	.uleb128	96
	.byte		0x1
.L405:
	.sleb128	12
	.byte		"Os_Err_TryToGetSpinlockRef"
	.byte		0
	.4byte		.L12052
	.sleb128	2
	.byte		0x23
	.uleb128	100
	.byte		0x1
	.sleb128	0
.L12051:
.L12042:
	.sleb128	11
	.4byte		.L12039
	.uleb128	174
	.uleb128	1
	.4byte		.L12053-.L2
	.uleb128	8
.L379:
	.sleb128	12
	.byte		"Os_ShutdownErrorCode"
	.byte		0
	.4byte		.L11514
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L380:
	.sleb128	12
	.byte		"Os_ShutdownInternalErrorCode"
	.byte		0
	.4byte		.L12054
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12053:
.L11835:
	.sleb128	11
	.4byte		.L12056
	.uleb128	50
	.uleb128	1
	.4byte		.L12057-.L2
	.uleb128	12
.L376:
	.sleb128	12
	.byte		"maxallowedvalue"
	.byte		0
	.4byte		.L11826
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L377:
	.sleb128	12
	.byte		"ticksperbase"
	.byte		0
	.4byte		.L11826
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L378:
	.sleb128	12
	.byte		"mincycle"
	.byte		0
	.4byte		.L11826
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L12057:
.L11673:
	.sleb128	11
	.4byte		.L12058
	.uleb128	87
	.uleb128	7
	.4byte		.L12059-.L2
	.uleb128	8
.L364:
	.sleb128	12
	.byte		"Os_IsrPltId"
	.byte		0
	.4byte		.L12060
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L365:
	.sleb128	12
	.byte		"Os_IsrPltLevel"
	.byte		0
	.4byte		.L12061
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12059:
	.section	.debug_info,,n
.L11440:
	.sleb128	15
	.4byte		.L12063
	.uleb128	155
	.uleb128	1
	.4byte		.L12064-.L2
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
.L12064:
.L11663:
	.sleb128	15
	.4byte		.L11623
	.uleb128	69
	.uleb128	1
	.4byte		.L12065-.L2
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
.L12065:
.L11683:
	.sleb128	15
	.4byte		.L11666
	.uleb128	612
	.uleb128	1
	.4byte		.L12066-.L2
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
.L12066:
.L11690:
	.sleb128	15
	.4byte		.L11666
	.uleb128	60
	.uleb128	1
	.4byte		.L12067-.L2
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
.L12067:
	.section	.debug_info,,n
.L11818:
	.sleb128	17
	.4byte		.L11603
	.uleb128	33
	.uleb128	14
	.4byte		.L12068-.L2
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
.L12068:
.L11972:
	.sleb128	15
	.4byte		.L11929
	.uleb128	80
	.uleb128	13
	.4byte		.L12069-.L2
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
.L12069:
.L11943:
	.sleb128	15
	.4byte		.L11929
	.uleb128	61
	.uleb128	1
	.4byte		.L12070-.L2
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
.L12070:
.L11990:
	.sleb128	15
	.4byte		.L11599
	.uleb128	52
	.uleb128	1
	.4byte		.L12071-.L2
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
.L12071:
.L12038:
	.sleb128	15
	.4byte		.L12019
	.uleb128	32
	.uleb128	1
	.4byte		.L12072-.L2
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
.L12072:
.L12055:
	.sleb128	15
	.4byte		.L12039
	.uleb128	174
	.uleb128	1
	.4byte		.L12073-.L2
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
.L12073:
.L12050:
	.sleb128	15
	.4byte		.L12039
	.uleb128	86
	.uleb128	1
	.4byte		.L12074-.L2
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
.L12074:
.L11810:
	.sleb128	15
	.4byte		.L12075
	.uleb128	43
	.uleb128	1
	.4byte		.L12076-.L2
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
.L12076:
.L11878:
	.sleb128	15
	.4byte		.L12077
	.uleb128	37
	.uleb128	1
	.4byte		.L12078-.L2
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
.L12078:
.L11845:
	.sleb128	15
	.4byte		.L12079
	.uleb128	40
	.uleb128	1
	.4byte		.L12080-.L2
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
.L12080:
.L11821:
	.sleb128	15
	.4byte		.L12081
	.uleb128	47
	.uleb128	1
	.4byte		.L12082-.L2
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
.L12082:
.L11489:
	.sleb128	15
	.4byte		.L12056
	.uleb128	50
	.uleb128	1
	.4byte		.L12083-.L2
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
.L12083:
.L11894:
	.sleb128	15
	.4byte		.L12056
	.uleb128	42
	.uleb128	13
	.4byte		.L12084-.L2
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
.L12084:
.L11796:
	.sleb128	15
	.4byte		.L12085
	.uleb128	83
	.uleb128	14
	.4byte		.L12086-.L2
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
.L12086:
	.section	.debug_info,,n
.L11439:
	.sleb128	18
	.byte		"Os_IsrStateType"
	.byte		0
	.4byte		.L11440
	.section	.debug_info,,n
.L11445:
	.sleb128	19
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L11444:
	.sleb128	18
	.byte		"uint16"
	.byte		0
	.4byte		.L11445
.L11443:
	.sleb128	18
	.byte		"CoreIdType"
	.byte		0
	.4byte		.L11444
	.section	.debug_info,,n
.L11442:
	.sleb128	20
	.4byte		.L11443
.L11454:
	.sleb128	18
	.byte		"Os_ProcStatType"
	.byte		0
	.4byte		.L11455
.L11453:
	.sleb128	20
	.4byte		.L11454
	.section	.debug_info,,n
.L11452:
	.sleb128	21
	.4byte		.L11453
.L11460:
	.sleb128	18
	.byte		"Os_SchedulerDynType"
	.byte		0
	.4byte		.L11461
.L11459:
	.sleb128	20
	.4byte		.L11460
.L11458:
	.sleb128	21
	.4byte		.L11459
.L11457:
	.sleb128	20
	.4byte		.L11458
.L11464:
	.sleb128	21
	.4byte		.L11465
.L11475:
	.sleb128	18
	.byte		"Os_ApplicationStatType"
	.byte		0
	.4byte		.L11476
.L11474:
	.sleb128	20
	.4byte		.L11475
.L11473:
	.sleb128	21
	.4byte		.L11474
.L11472:
	.sleb128	20
	.4byte		.L11473
.L11481:
	.sleb128	18
	.byte		"Os_Core_DynInitType"
	.byte		0
	.4byte		.L11482
.L11480:
	.sleb128	21
	.4byte		.L11481
.L11479:
	.sleb128	20
	.4byte		.L11480
.L11488:
	.sleb128	18
	.byte		"Os_BoolType"
	.byte		0
	.4byte		.L11489
.L11494:
	.sleb128	21
	.4byte		.L11460
.L11493:
	.sleb128	20
	.4byte		.L11494
.L11497:
	.sleb128	20
	.4byte		.L11452
.L11516:
	.sleb128	19
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L11515:
	.sleb128	18
	.byte		"uint8"
	.byte		0
	.4byte		.L11516
.L11514:
	.sleb128	18
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L11515
.L11520:
	.sleb128	19
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L11519:
	.sleb128	18
	.byte		"uint32"
	.byte		0
	.4byte		.L11520
.L11518:
	.sleb128	18
	.byte		"TrustedFunctionIndexType"
	.byte		0
	.4byte		.L11519
	.section	.debug_info,,n
.L11524:
	.sleb128	22
	.byte		"void"
	.byte		0
	.byte		0x0
.L11523:
	.sleb128	21
	.4byte		.L11524
.L11522:
	.sleb128	18
	.byte		"TrustedFunctionParameterRefType"
	.byte		0
	.4byte		.L11523
.L11527:
	.sleb128	18
	.byte		"Os_APICallType"
	.byte		0
	.4byte		.L11528
	.section	.debug_info,,n
.L11540:
	.sleb128	23
	.4byte		.L11541
	.byte		0x1
	.section	.debug_info,,n
	.sleb128	24
	.4byte		.L11518
	.sleb128	24
	.4byte		.L11522
	.sleb128	0
.L11541:
.L11539:
	.sleb128	21
	.4byte		.L11540
.L11538:
	.sleb128	18
	.byte		"Os_TrustedFunctionType"
	.byte		0
	.4byte		.L11539
.L11537:
	.sleb128	20
	.4byte		.L11538
.L11544:
	.sleb128	18
	.byte		"Os_IsrRegister_t"
	.byte		0
	.4byte		.L11519
.L11557:
	.sleb128	18
	.byte		"ApplicationType"
	.byte		0
	.4byte		.L11515
.L11562:
	.sleb128	18
	.byte		"boolean"
	.byte		0
	.4byte		.L11516
.L11578:
	.sleb128	21
	.4byte		.L11528
.L11595:
	.sleb128	18
	.byte		"Os_HooksDynType"
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
	.4byte		.L11474
	.section	.debug_info,,n
	.sleb128	26
	.sleb128	0
.L11601:
.L11607:
	.sleb128	18
	.byte		"OsTrustedFunctionStatType"
	.byte		0
	.4byte		.L11608
.L11606:
	.sleb128	20
	.4byte		.L11607
.L11604:
	.sleb128	25
	.4byte		.L11605-.L2
	.4byte		.L11606
	.sleb128	26
	.sleb128	0
.L11605:
.L11610:
	.sleb128	20
	.4byte		.L11518
.L11616:
	.sleb128	18
	.byte		"Os_Core_StatType"
	.byte		0
	.4byte		.L11617
.L11615:
	.sleb128	20
	.4byte		.L11616
.L11613:
	.sleb128	25
	.4byte		.L11614-.L2
	.4byte		.L11615
	.section	.debug_info,,n
	.sleb128	27
	.uleb128	1
	.sleb128	0
.L11614:
.L11621:
	.sleb128	18
	.byte		"Os_Core_DynSharedType"
	.byte		0
	.4byte		.L11622
.L11619:
	.sleb128	25
	.4byte		.L11620-.L2
	.4byte		.L11621
	.sleb128	27
	.uleb128	1
	.sleb128	0
.L11620:
.L11627:
	.sleb128	18
	.byte		"Os_Core_DynType"
	.byte		0
	.4byte		.L11628
.L11626:
	.sleb128	21
	.4byte		.L11627
.L11625:
	.sleb128	20
	.4byte		.L11626
.L11631:
	.sleb128	18
	.byte		"Os_DispatchElementType"
	.byte		0
	.4byte		.L11632
.L11630:
	.sleb128	21
	.4byte		.L11631
.L11629:
	.sleb128	20
	.4byte		.L11630
	.section	.debug_info,,n
.L11636:
	.sleb128	28
	.4byte		.L11637-.L2
	.byte		0x1
	.sleb128	24
	.4byte		.L11497
	.sleb128	0
.L11637:
.L11635:
	.sleb128	21
	.4byte		.L11636
.L11634:
	.sleb128	18
	.byte		"Os_PrepareContextFunctionType"
	.byte		0
	.4byte		.L11635
.L11633:
	.sleb128	20
	.4byte		.L11634
.L11644:
	.sleb128	18
	.byte		"Os_StackType"
	.byte		0
	.4byte		.L11519
.L11643:
	.sleb128	21
	.4byte		.L11644
	.section	.debug_info,,n
.L11641:
	.sleb128	29
	.4byte		.L11642-.L2
	.4byte		.L11643
	.byte		0x1
	.sleb128	24
	.4byte		.L11452
	.sleb128	0
.L11642:
.L11640:
	.sleb128	21
	.4byte		.L11641
.L11639:
	.sleb128	18
	.byte		"Os_GetStackPointerFunctionType"
	.byte		0
	.4byte		.L11640
.L11638:
	.sleb128	20
	.4byte		.L11639
.L11646:
	.sleb128	18
	.byte		"Os_IsrDynInitType"
	.byte		0
	.4byte		.L11647
.L11648:
	.sleb128	18
	.byte		"Os_SchedulerDynInitType"
	.byte		0
	.4byte		.L11649
.L11651:
	.sleb128	18
	.byte		"Os_DispatcherType"
	.byte		0
	.4byte		.L11652
.L11653:
	.sleb128	18
	.byte		"Os_PublicData_NoInitType"
	.byte		0
	.4byte		.L11654
.L11656:
	.sleb128	18
	.byte		"Os_IsrDynType"
	.byte		0
	.4byte		.L11657
.L11660:
	.sleb128	20
	.4byte		.L11455
.L11659:
	.sleb128	21
	.4byte		.L11660
.L11662:
	.sleb128	18
	.byte		"Os_ScheduleType"
	.byte		0
	.4byte		.L11663
.L11664:
	.sleb128	18
	.byte		"Os_PriorityType"
	.byte		0
	.4byte		.L11519
.L11665:
	.sleb128	18
	.byte		"Os_SchedulerQueueElementType"
	.byte		0
	.4byte		.L11465
.L11672:
	.sleb128	18
	.byte		"Os_IsrPlatformConfigType"
	.byte		0
	.4byte		.L11673
.L11671:
	.sleb128	20
	.4byte		.L11672
.L11670:
	.sleb128	21
	.4byte		.L11671
.L11676:
	.sleb128	18
	.byte		"Os_IsrApiTable"
	.byte		0
	.4byte		.L11677
.L11675:
	.sleb128	20
	.4byte		.L11676
.L11674:
	.sleb128	21
	.4byte		.L11675
.L11678:
	.sleb128	25
	.4byte		.L11679-.L2
	.4byte		.L11519
	.sleb128	27
	.uleb128	7
	.sleb128	0
.L11679:
.L11682:
	.sleb128	18
	.byte		"Os_DispatchKindType"
	.byte		0
	.4byte		.L11683
.L11686:
	.sleb128	18
	.byte		"Os_ObjectType"
	.byte		0
	.4byte		.L11519
.L11685:
	.sleb128	18
	.byte		"ProcType"
	.byte		0
	.4byte		.L11686
.L11684:
	.sleb128	18
	.byte		"ISRType"
	.byte		0
	.4byte		.L11685
.L11687:
	.sleb128	21
	.4byte		.L11527
.L11689:
	.sleb128	18
	.byte		"Os_API_LockType"
	.byte		0
	.4byte		.L11690
.L11693:
	.sleb128	28
	.4byte		.L11694-.L2
	.byte		0x1
	.sleb128	24
	.4byte		.L11578
.L11695:
	.sleb128	20
	.4byte		.L11659
	.sleb128	24
	.4byte		.L11695
	.sleb128	0
.L11694:
.L11692:
	.sleb128	21
	.4byte		.L11693
.L11691:
	.sleb128	18
	.byte		"Os_API_Func_Type"
	.byte		0
	.4byte		.L11692
.L11698:
	.sleb128	18
	.byte		"Os_API_StartOsType"
	.byte		0
	.4byte		.L11699
.L11700:
	.sleb128	18
	.byte		"Os_API_ShutdownOsType"
	.byte		0
	.4byte		.L11701
.L11702:
	.sleb128	18
	.byte		"Os_API_ShutdownOsInternalType"
	.byte		0
	.4byte		.L11703
.L11704:
	.sleb128	18
	.byte		"Os_API_ShutdownAllCoresType"
	.byte		0
	.4byte		.L11705
.L11706:
	.sleb128	18
	.byte		"Os_API_GetNumberOfActivatedCoresType"
	.byte		0
	.4byte		.L11707
.L11708:
	.sleb128	18
	.byte		"Os_API_ApiStartCoreType"
	.byte		0
	.4byte		.L11709
.L11710:
	.sleb128	18
	.byte		"Os_API_StartNonAutosarCoreType"
	.byte		0
	.4byte		.L11711
.L11712:
	.sleb128	18
	.byte		"Os_API_GetCoreIDType"
	.byte		0
	.4byte		.L11713
.L11714:
	.sleb128	18
	.byte		"Os_API_ActivateTaskType"
	.byte		0
	.4byte		.L11715
.L11716:
	.sleb128	18
	.byte		"Os_API_ChainTaskType"
	.byte		0
	.4byte		.L11717
.L11718:
	.sleb128	18
	.byte		"Os_API_GetTaskIDType"
	.byte		0
	.4byte		.L11719
.L11720:
	.sleb128	18
	.byte		"Os_API_GetTaskStateType"
	.byte		0
	.4byte		.L11721
.L11722:
	.sleb128	18
	.byte		"Os_API_SetEventType"
	.byte		0
	.4byte		.L11723
.L11724:
	.sleb128	18
	.byte		"Os_API_ClearEventType"
	.byte		0
	.4byte		.L11725
.L11726:
	.sleb128	18
	.byte		"Os_API_GetEventType"
	.byte		0
	.4byte		.L11727
.L11728:
	.sleb128	18
	.byte		"Os_API_WaitEventType"
	.byte		0
	.4byte		.L11729
.L11730:
	.sleb128	18
	.byte		"Os_API_GetResourceType"
	.byte		0
	.4byte		.L11731
.L11732:
	.sleb128	18
	.byte		"Os_API_ReleaseResourceType"
	.byte		0
	.4byte		.L11733
.L11734:
	.sleb128	18
	.byte		"Os_API_GetAlarmBaseType"
	.byte		0
	.4byte		.L11735
.L11736:
	.sleb128	18
	.byte		"Os_API_GetAlarmType"
	.byte		0
	.4byte		.L11737
.L11738:
	.sleb128	18
	.byte		"Os_API_SetRelAlarmType"
	.byte		0
	.4byte		.L11739
.L11740:
	.sleb128	18
	.byte		"Os_API_SetAbsAlarmType"
	.byte		0
	.4byte		.L11741
.L11742:
	.sleb128	18
	.byte		"Os_API_CancelAlarmType"
	.byte		0
	.4byte		.L11743
.L11744:
	.sleb128	18
	.byte		"Os_API_GetApplicationStateType"
	.byte		0
	.4byte		.L11745
.L11746:
	.sleb128	18
	.byte		"Os_API_TerminateApplicationType"
	.byte		0
	.4byte		.L11747
.L11748:
	.sleb128	18
	.byte		"Os_API_GetApplicationIDType"
	.byte		0
	.4byte		.L11749
.L11750:
	.sleb128	18
	.byte		"Os_API_GetISRIDType"
	.byte		0
	.4byte		.L11751
.L11752:
	.sleb128	18
	.byte		"Os_API_GetActiveApplicationModeType"
	.byte		0
	.4byte		.L11753
.L11754:
	.sleb128	18
	.byte		"Os_API_IncrementCounterType"
	.byte		0
	.4byte		.L11755
.L11756:
	.sleb128	18
	.byte		"Os_API_GetCounterValueType"
	.byte		0
	.4byte		.L11757
.L11758:
	.sleb128	18
	.byte		"Os_API_GetElapsedValueType"
	.byte		0
	.4byte		.L11759
.L11760:
	.sleb128	18
	.byte		"Os_API_StartScheduleTableAbsType"
	.byte		0
	.4byte		.L11761
.L11762:
	.sleb128	18
	.byte		"Os_API_StartScheduleTableRelType"
	.byte		0
	.4byte		.L11763
.L11764:
	.sleb128	18
	.byte		"Os_API_StopScheduleTableType"
	.byte		0
	.4byte		.L11765
.L11766:
	.sleb128	18
	.byte		"Os_API_GetScheduleTableStatusType"
	.byte		0
	.4byte		.L11767
.L11768:
	.sleb128	18
	.byte		"Os_API_NextScheduleTableType"
	.byte		0
	.4byte		.L11769
.L11770:
	.sleb128	18
	.byte		"Os_API_StartScheduleTableSynchronType"
	.byte		0
	.4byte		.L11771
.L11772:
	.sleb128	18
	.byte		"Os_API_SyncScheduleTableType"
	.byte		0
	.4byte		.L11773
.L11774:
	.sleb128	18
	.byte		"Os_API_SetScheduleTableAsyncType"
	.byte		0
	.4byte		.L11775
.L11776:
	.sleb128	18
	.byte		"Os_API_CheckObjectAccessType"
	.byte		0
	.4byte		.L11777
.L11778:
	.sleb128	18
	.byte		"Os_API_CheckObjectOwnershipType"
	.byte		0
	.4byte		.L11779
.L11780:
	.sleb128	18
	.byte		"Os_API_CallTrustedFunctionType"
	.byte		0
	.4byte		.L11781
.L11782:
	.sleb128	18
	.byte		"Os_API_StackUsageType"
	.byte		0
	.4byte		.L11783
.L11784:
	.sleb128	18
	.byte		"Os_API_GetSpinlockType"
	.byte		0
	.4byte		.L11785
.L11786:
	.sleb128	18
	.byte		"Os_API_ReleaseSpinlockType"
	.byte		0
	.4byte		.L11787
.L11788:
	.sleb128	18
	.byte		"Os_API_TryToGetSpinlockType"
	.byte		0
	.4byte		.L11789
.L11790:
	.sleb128	18
	.byte		"Os_API_IocTransferType"
	.byte		0
	.4byte		.L11791
.L11792:
	.sleb128	18
	.byte		"Os_API_ControlIdleType"
	.byte		0
	.4byte		.L11793
.L11795:
	.sleb128	18
	.byte		"IdleModeType"
	.byte		0
	.4byte		.L11796
.L11800:
	.sleb128	18
	.byte		"Os_IOC_ChannelStatType"
	.byte		0
	.4byte		.L11801
.L11799:
	.sleb128	20
	.4byte		.L11800
.L11798:
	.sleb128	21
	.4byte		.L11799
.L11804:
	.sleb128	25
	.4byte		.L11805-.L2
	.4byte		.L11523
	.sleb128	27
	.uleb128	1
	.sleb128	0
.L11805:
.L11803:
	.sleb128	18
	.byte		"Os_IOC_DataType"
	.byte		0
	.4byte		.L11804
.L11802:
	.sleb128	21
	.4byte		.L11803
.L11807:
	.sleb128	18
	.byte		"SpinlockIdType"
	.byte		0
	.4byte		.L11444
.L11809:
	.sleb128	18
	.byte		"TryToGetSpinlockType"
	.byte		0
	.4byte		.L11810
.L11808:
	.sleb128	21
	.4byte		.L11809
.L11814:
	.sleb128	18
	.byte		"TaskType"
	.byte		0
	.4byte		.L11685
.L11815:
	.sleb128	21
	.4byte		.L11515
.L11817:
	.sleb128	18
	.byte		"Os_TrustedFunctionReturnValueType"
	.byte		0
	.4byte		.L11818
.L11820:
	.sleb128	18
	.byte		"ObjectTypeType"
	.byte		0
	.4byte		.L11821
.L11824:
	.sleb128	18
	.byte		"AlarmType"
	.byte		0
	.4byte		.L11686
.L11826:
	.sleb128	18
	.byte		"TickType"
	.byte		0
	.4byte		.L11519
.L11830:
	.sleb128	21
	.4byte		.L11826
.L11829:
	.sleb128	18
	.byte		"TickRefType"
	.byte		0
	.4byte		.L11830
.L11834:
	.sleb128	18
	.byte		"AlarmBaseType"
	.byte		0
	.4byte		.L11835
.L11833:
	.sleb128	21
	.4byte		.L11834
.L11832:
	.sleb128	18
	.byte		"AlarmBaseRefType"
	.byte		0
	.4byte		.L11833
.L11837:
	.sleb128	18
	.byte		"ScheduleTableType"
	.byte		0
	.4byte		.L11519
.L11844:
	.sleb128	18
	.byte		"ScheduleTableStatusType"
	.byte		0
	.4byte		.L11845
.L11843:
	.sleb128	21
	.4byte		.L11844
.L11842:
	.sleb128	18
	.byte		"ScheduleTableStatusRefType"
	.byte		0
	.4byte		.L11843
.L11850:
	.sleb128	18
	.byte		"CounterType"
	.byte		0
	.4byte		.L11519
.L11854:
	.sleb128	28
	.4byte		.L11855-.L2
	.byte		0x1
	.sleb128	24
	.4byte		.L11578
	.sleb128	0
.L11855:
.L11853:
	.sleb128	21
	.4byte		.L11854
.L11852:
	.sleb128	18
	.byte		"LightServiceFunctionType"
	.byte		0
	.4byte		.L11853
.L11859:
	.sleb128	18
	.byte		"RestartType"
	.byte		0
	.4byte		.L11515
.L11864:
	.sleb128	18
	.byte		"ApplicationStateType"
	.byte		0
	.4byte		.L11515
.L11863:
	.sleb128	21
	.4byte		.L11864
.L11862:
	.sleb128	18
	.byte		"ApplicationStateRefType"
	.byte		0
	.4byte		.L11863
.L11868:
	.sleb128	19
	.byte		"unsigned long long"
	.byte		0
	.byte		0x7
	.byte		0x8
.L11867:
	.sleb128	18
	.byte		"uint64"
	.byte		0
	.4byte		.L11868
.L11866:
	.sleb128	18
	.byte		"EventMaskType"
	.byte		0
	.4byte		.L11867
.L11871:
	.sleb128	21
	.4byte		.L11866
.L11870:
	.sleb128	18
	.byte		"EventMaskRefType"
	.byte		0
	.4byte		.L11871
.L11877:
	.sleb128	18
	.byte		"TaskStateType"
	.byte		0
	.4byte		.L11878
.L11876:
	.sleb128	21
	.4byte		.L11877
.L11875:
	.sleb128	18
	.byte		"TaskStateRefType"
	.byte		0
	.4byte		.L11876
.L11881:
	.sleb128	21
	.4byte		.L11814
.L11880:
	.sleb128	18
	.byte		"TaskRefType"
	.byte		0
	.4byte		.L11881
.L11885:
	.sleb128	18
	.byte		"ResourceType"
	.byte		0
	.4byte		.L11519
.L11888:
	.sleb128	18
	.byte		"AppModeType"
	.byte		0
	.4byte		.L11519
.L11893:
	.sleb128	18
	.byte		"Os_CoreShutdownType"
	.byte		0
	.4byte		.L11894
.L11897:
	.sleb128	21
	.4byte		.L11514
.L11903:
	.sleb128	18
	.byte		"Os_IOC_ChannelDynType"
	.byte		0
	.4byte		.L11904
.L11902:
	.sleb128	21
	.4byte		.L11903
.L11901:
	.sleb128	20
	.4byte		.L11902
.L11905:
	.sleb128	18
	.byte		"Os_IOC_ChannelSizeType"
	.byte		0
	.4byte		.L11444
.L11906:
	.sleb128	20
	.4byte		.L11523
.L11907:
	.sleb128	20
	.4byte		.L11444
.L11909:
	.sleb128	18
	.byte		"Os_IOC_DataCountType"
	.byte		0
	.4byte		.L11515
.L11908:
	.sleb128	20
	.4byte		.L11909
.L11913:
	.sleb128	18
	.byte		"Os_IOC_DataDescriptorType"
	.byte		0
	.4byte		.L11914
.L11912:
	.sleb128	20
	.4byte		.L11913
.L11911:
	.sleb128	21
	.4byte		.L11912
.L11910:
	.sleb128	20
	.4byte		.L11911
.L11917:
	.sleb128	18
	.byte		"Os_LockResourceType"
	.byte		0
	.4byte		.L11515
.L11916:
	.sleb128	21
	.4byte		.L11917
.L11915:
	.sleb128	20
	.4byte		.L11916
.L11920:
	.sleb128	18
	.byte		"Os_IOC_DataLengthType"
	.byte		0
	.4byte		.L11444
.L11919:
	.sleb128	20
	.4byte		.L11920
.L11922:
	.sleb128	18
	.byte		"Os_IOC_DataOffsetType"
	.byte		0
	.4byte		.L11444
.L11921:
	.sleb128	20
	.4byte		.L11922
.L11925:
	.sleb128	20
	.4byte		.L11557
.L11928:
	.sleb128	18
	.byte		"Os_HookIDType"
	.byte		0
	.4byte		.L11444
.L11931:
	.sleb128	20
	.4byte		.L11814
.L11934:
	.sleb128	18
	.byte		"Os_ProcDynType"
	.byte		0
	.4byte		.L11935
.L11933:
	.sleb128	21
	.4byte		.L11934
.L11932:
	.sleb128	20
	.4byte		.L11933
.L11939:
	.sleb128	18
	.byte		"Os_ProcStackType"
	.byte		0
	.4byte		.L11940
.L11938:
	.sleb128	20
	.4byte		.L11939
.L11937:
	.sleb128	21
	.4byte		.L11938
.L11936:
	.sleb128	20
	.4byte		.L11937
.L11942:
	.sleb128	18
	.byte		"Os_ProcKindType"
	.byte		0
	.4byte		.L11943
.L11941:
	.sleb128	20
	.4byte		.L11942
.L11944:
	.sleb128	20
	.4byte		.L11866
.L11945:
	.sleb128	20
	.4byte		.L11664
.L11947:
	.sleb128	18
	.byte		"Os_ActivationCountType"
	.byte		0
	.4byte		.L11519
.L11946:
	.sleb128	20
	.4byte		.L11947
.L11948:
	.sleb128	20
	.4byte		.L11643
.L11952:
	.sleb128	18
	.byte		"Os_AccessStorageType"
	.byte		0
	.4byte		.L11519
.L11951:
	.sleb128	20
	.4byte		.L11952
.L11950:
	.sleb128	21
	.4byte		.L11951
.L11949:
	.sleb128	20
	.4byte		.L11950
.L11956:
	.sleb128	28
	.4byte		.L11957-.L2
	.byte		0x1
	.sleb128	0
.L11957:
.L11955:
	.sleb128	21
	.4byte		.L11956
.L11954:
	.sleb128	18
	.byte		"Os_ProcEntryPointType"
	.byte		0
	.4byte		.L11955
.L11953:
	.sleb128	20
	.4byte		.L11954
.L11958:
	.sleb128	20
	.4byte		.L11885
.L11963:
	.sleb128	18
	.byte		"Os_ResourceStatType"
	.byte		0
	.4byte		.L11964
.L11962:
	.sleb128	20
	.4byte		.L11963
.L11961:
	.sleb128	21
	.4byte		.L11962
.L11960:
	.sleb128	18
	.byte		"Os_ResourceStack"
	.byte		0
	.4byte		.L11961
.L11959:
	.sleb128	21
	.4byte		.L11960
.L11965:
	.sleb128	20
	.4byte		.L11464
.L11966:
	.sleb128	20
	.4byte		.L11670
.L11969:
	.sleb128	18
	.byte		"Os_StackSizeType"
	.byte		0
	.4byte		.L11519
.L11968:
	.sleb128	20
	.4byte		.L11969
.L11971:
	.sleb128	18
	.byte		"Os_ProcContexStateType"
	.byte		0
	.4byte		.L11972
.L11974:
	.sleb128	20
	.4byte		.L11975
.L11973:
	.sleb128	21
	.4byte		.L11974
.L11977:
	.sleb128	20
	.4byte		.L11807
.L11980:
	.sleb128	18
	.byte		"Os_SpinlockDynType"
	.byte		0
	.4byte		.L11981
.L11979:
	.sleb128	21
	.4byte		.L11980
.L11978:
	.sleb128	20
	.4byte		.L11979
.L11986:
	.sleb128	18
	.byte		"Os_ApplicationDynType"
	.byte		0
	.4byte		.L11987
.L11985:
	.sleb128	21
	.4byte		.L11986
.L11984:
	.sleb128	20
	.4byte		.L11985
.L11989:
	.sleb128	18
	.byte		"Os_ApplicationKindType"
	.byte		0
	.4byte		.L11990
.L11988:
	.sleb128	20
	.4byte		.L11989
.L11994:
	.sleb128	28
	.4byte		.L11995-.L2
	.byte		0x1
	.sleb128	24
	.4byte		.L11514
	.sleb128	0
.L11995:
.L11993:
	.sleb128	21
	.4byte		.L11994
.L11992:
	.sleb128	18
	.byte		"Os_ShutdownHookFuncType"
	.byte		0
	.4byte		.L11993
.L11991:
	.sleb128	20
	.4byte		.L11992
.L11999:
	.sleb128	28
	.4byte		.L12000-.L2
	.byte		0x1
	.sleb128	0
.L12000:
.L11998:
	.sleb128	21
	.4byte		.L11999
.L11997:
	.sleb128	18
	.byte		"Os_StartUpHookFuncType"
	.byte		0
	.4byte		.L11998
.L11996:
	.sleb128	20
	.4byte		.L11997
.L12004:
	.sleb128	28
	.4byte		.L12005-.L2
	.byte		0x1
	.sleb128	24
	.4byte		.L11514
	.sleb128	0
.L12005:
.L12003:
	.sleb128	21
	.4byte		.L12004
.L12002:
	.sleb128	18
	.byte		"Os_ErrorHookFuncType"
	.byte		0
	.4byte		.L12003
.L12001:
	.sleb128	20
	.4byte		.L12002
.L12008:
	.sleb128	20
	.4byte		.L11685
.L12007:
	.sleb128	21
	.4byte		.L12008
.L12006:
	.sleb128	20
	.4byte		.L12007
.L12011:
	.sleb128	20
	.4byte		.L11850
.L12010:
	.sleb128	21
	.4byte		.L12011
.L12009:
	.sleb128	20
	.4byte		.L12010
.L12014:
	.sleb128	20
	.4byte		.L11824
.L12013:
	.sleb128	21
	.4byte		.L12014
.L12012:
	.sleb128	20
	.4byte		.L12013
.L12017:
	.sleb128	20
	.4byte		.L11837
.L12016:
	.sleb128	21
	.4byte		.L12017
.L12015:
	.sleb128	20
	.4byte		.L12016
.L12022:
	.sleb128	18
	.byte		"Os_ResourceDynType"
	.byte		0
	.4byte		.L12023
.L12021:
	.sleb128	21
	.4byte		.L12022
.L12026:
	.sleb128	18
	.byte		"Os_ErrorType"
	.byte		0
	.4byte		.L12027
.L12028:
	.sleb128	18
	.byte		"Os_ExceptionStatusType"
	.byte		0
	.4byte		.L12029
.L12034:
	.sleb128	28
	.4byte		.L12035-.L2
	.byte		0x1
	.sleb128	0
.L12035:
.L12033:
	.sleb128	21
	.4byte		.L12034
.L12032:
	.sleb128	18
	.byte		"Os_IsrHandlerFuncType"
	.byte		0
	.4byte		.L12033
.L12031:
	.sleb128	20
	.4byte		.L12032
.L12037:
	.sleb128	18
	.byte		"Os_ExceptionTypeType"
	.byte		0
	.4byte		.L12038
.L12041:
	.sleb128	18
	.byte		"Os_ShudownErrorType"
	.byte		0
	.4byte		.L12042
.L12043:
	.sleb128	18
	.byte		"Os_ParameterErrorType"
	.byte		0
	.4byte		.L12044
.L12045:
	.sleb128	18
	.byte		"Os_ServiceErrorType"
	.byte		0
	.4byte		.L12046
.L12048:
	.sleb128	18
	.byte		"ServiceTraceType"
	.byte		0
	.4byte		.L11515
.L12049:
	.sleb128	18
	.byte		"OSServiceIdType"
	.byte		0
	.4byte		.L12050
.L12052:
	.sleb128	18
	.byte		"TryToGetSpinlockRefType"
	.byte		0
	.4byte		.L11808
.L12054:
	.sleb128	18
	.byte		"Os_SystemInternalErrorType"
	.byte		0
	.4byte		.L12055
.L12060:
	.sleb128	20
	.4byte		.L11519
.L12062:
	.sleb128	18
	.byte		"Os_IsrPlatformLevelType"
	.byte		0
	.4byte		.L11444
.L12061:
	.sleb128	20
	.4byte		.L12062
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11432:
	.sleb128	0
.L11428:
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
.L11507:
	.sleb128	0
.L11503:

	.section	.debug_loc,,n
	.align	0
.L11446:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locend
.L11462:
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),3
	.d2locend
.L11466:
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),5
	.d2locend
.L11477:
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),3
	.d2locend
.L11483:
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo8),4
	.d2locend
.L11491:
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo11),3
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo13),6
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo15),6
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo17),6
	.d2locend
.L11495:
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo19),3
	.d2locend
.L11498:
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo21),0
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo23),0
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo17),0
	.d2locend
.L11500:
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo16),3
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo25),3
	.d2locend
.L11521:
	.d2locreg	%offsetof(.Llo26), %offsetof(.Llo27),3
	.d2locend
.L11525:
	.d2locreg	%offsetof(.Llo26), %offsetof(.Llo28),4
	.d2locend
.L11534:
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo30),3
	.d2locreg	%offsetof(.Llo31), %offsetof(.Llo32),3
	.d2locend
.L11535:
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo30),4
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo33),4
	.d2locend
.L11542:
	.d2locreg	%offsetof(.Llo34), %offsetof(.Llo35),5
	.d2locend
.L11545:
	.d2locreg	%offsetof(.Llo36), %offsetof(.Llo37),31
	.d2locreg	%offsetof(.Llo30), %offsetof(.Llo38),31
	.d2locend
.L11552:
	.d2locreg	%offsetof(.Llo39), %offsetof(.Llo40),3
	.d2locreg	%offsetof(.Llo41), %offsetof(.Llo42),31
	.d2locreg	%offsetof(.Llo43), %offsetof(.Llo44),3
	.d2locreg	%offsetof(.Llo45), %offsetof(.Llo46),3
	.d2locreg	%offsetof(.Llo47), %offsetof(.Llo48),3
	.d2locreg	%offsetof(.Llo49), %offsetof(.Llo50),3
	.d2locreg	%offsetof(.Llo51), %offsetof(.Llo52),3
	.d2locend
.L11553:
	.d2locreg	%offsetof(.Llo39), %offsetof(.Llo53),4
	.d2locreg	%offsetof(.Llo54), %offsetof(.Llo42),30
	.d2locend
.L11554:
	.d2locreg	%offsetof(.Llo39), %offsetof(.Llo53),5
	.d2locreg	%offsetof(.Llo54), %offsetof(.Llo48),29
	.d2locend
.L11555:
	.d2locreg	%offsetof(.Llo39), %offsetof(.Llo55),6
	.d2locreg	%offsetof(.Llo56), %offsetof(.Llo52),28
	.d2locend
.L11558:
	.d2locreg	%offsetof(.Llo57), %offsetof(.Llo58),6
	.d2locend
.L11560:
	.d2locreg	%offsetof(.Llo59), %offsetof(.Llo44),27
	.d2locend
.L11563:
	.d2locreg	%offsetof(.Llo54), %offsetof(.Llo60),26
	.d2locreg	%offsetof(.Llo61), %offsetof(.Llo42),26
	.d2locend
.L11569:
	.d2locreg	%offsetof(.Llo62), %offsetof(.Llo63),3
	.d2locreg	%offsetof(.Llo64), %offsetof(.Llo65),7
	.d2locreg	%offsetof(.Llo66), %offsetof(.Llo67),7
	.d2locend
.L11570:
	.d2locreg	%offsetof(.Llo62), %offsetof(.Llo68),6
	.d2locend
.L11572:
	.d2locreg	%offsetof(.Llo69), %offsetof(.Llo70),3
	.d2locreg	%offsetof(.Llo71), %offsetof(.Llo72),3
	.d2locreg	%offsetof(.Llo73), %offsetof(.Llo65),3
	.d2locreg	%offsetof(.Llo74), %offsetof(.Llo75),3
	.d2locreg	%offsetof(.Llo76), %offsetof(.Llo77),3
	.d2locend
.L11579:
	.d2locreg	%offsetof(.Llo78), %offsetof(.Llo79),3
	.d2locreg	%offsetof(.Llo80), %offsetof(.Llo81),31
	.d2locend
.L11581:
	.d2locreg	%offsetof(.Llo82), %offsetof(.Llo83),30
	.d2locreg	%offsetof(.Llo84), %offsetof(.Llo85),3
	.d2locreg	%offsetof(.Llo86), %offsetof(.Llo87),30
	.d2locend
.L11583:
	.d2locreg	%offsetof(.Llo80), %offsetof(.Llo81),29
	.d2locreg	%offsetof(.Llo88), %offsetof(.Llo89),3
	.d2locend
.L11585:
	.d2locreg	%offsetof(.Llo90), %offsetof(.Llo91),28
	.d2locend
.L11587:
	.d2locreg	%offsetof(.Llo92), %offsetof(.Llo91),27
	.d2locend
.L11589:
	.d2locreg	%offsetof(.Llo93), %offsetof(.Llo91),26
	.d2locend
.L11591:
	.d2locreg	%offsetof(.Llo94), %offsetof(.Llo91),25
	.d2locend
.L11597:
	.d2locreg	%offsetof(.Llo95), %offsetof(.Llo96),3
	.d2locreg	%offsetof(.Llo97), %offsetof(.Llo98),3
	.d2locreg	%offsetof(.Llo99), %offsetof(.Llo100),4
	.d2locreg	%offsetof(.Llo86), %offsetof(.Llo101),3
	.d2locreg	%offsetof(.Llo102), %offsetof(.Llo103),3
	.d2locreg	%offsetof(.Llo104), %offsetof(.Llo89),4
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "Os_API_CallTrustedFunction"
	.wrcm.nstrlist "calls", "Os_CallTrustedFunction","Os_CallTrustedFunction_Err","Os_Call_ErrorHook","Os_SchedulerRequired","Os_ShutdownAllCores"
	.wrcm.nint32 "frameSize", 48
	.wrcm.end
	.wrcm.nelem "Os_CallTrustedFunction_Err"
	.wrcm.nstrlist "calls", "Os_ApplicationOnOtherCore","Os_Isr_GetState"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Os_CallTrustedFunction"
	.wrcm.nstrlist "calls", "Os_Application_DisableProcs","Os_Application_EnableProcs","Os_Call_ProtectionHook","Os_SchedulerSwitchApp","Os_TrustedFunctionCaller"
	.wrcm.nint32 "frameSize", 48
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Os_TrustedFunctionCaller"
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "CallTrustedFunction"
	.wrcm.nstrlist "calls", "OS_SYS_CALL","Schedule"
	.wrcm.nint32 "frameSize", 48
	.wrcm.end
	.wrcm.nelem "Os_SchedulerRequired"
	.wrcm.nstrlist "calls", "Os_SchedulerGetNextProc"
	.wrcm.nint32 "frameSize", 16
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Os_CallTrustedFunction.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Os_CallTrustedFunction.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Os_CallTrustedFunction.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Os_CallTrustedFunction.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Os_CallTrustedFunction.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Os_CallTrustedFunction.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\Os\Os\core\ssc\make\..\src\protection\TrustedFunction\Os_CallTrustedFunction.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
