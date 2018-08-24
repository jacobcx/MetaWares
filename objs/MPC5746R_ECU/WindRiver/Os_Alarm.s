#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Os_Alarm.c"
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
.L11412:
	.section	.Os_TEXT,,c
#$$ld
.L11408:
	.0byte		.L11406
	.d2_line_start	.debug_line.Os_TEXT
	.section	.Os_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_Isr.h"
        .d2line         227,45
#$$ld
.L11415:

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
.L11416:
	.type		Os_Isr_GetState,@function
	.size		Os_Isr_GetState,.-Os_Isr_GetState
# Number of nodes = 36

# Allocations for Os_Isr_GetState
#	?a4		coreId
# FUNC (void, OS_CODE) Os_Alarm_Init(CONST(CoreIdType,AUTOMATIC) coreID)
	.align		2
	.section	.Os_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\expiry_element\\alarms\\Os_Alarm.c"
        .d2line         53,22
#$$ld
.L11428:

#$$bf	Os_Alarm_Init,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r31,cr0,lr
	.globl		Os_Alarm_Init
	.d2_cfa_start __cie
Os_Alarm_Init:
.Llo3:
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
#     VAR(Os_ObjectType, AUTOMATIC) alarmId;
# 
#     for(alarmId = Os_AlarmRange[coreID].Os_ObjStartId; alarmId <= Os_AlarmRange[coreID].Os_ObjEndId; alarmId++)
	.d2line		57
.Llo4:
	lis		r3,Os_AlarmRange@ha
.Llo5:
	e_add16i		r3,r3,Os_AlarmRange@l
	rlwinm		r5,r0,3,13,28		# coreID=r0
	lwzx		r3,r3,r5
.Llo7:
	mr		r3,r3		# alarmId=r3 alarmId=r3
.L11351:
	lis		r4,(Os_AlarmRange+4)@ha
	e_add16i		r4,r4,(Os_AlarmRange+4)@l
	rlwinm		r5,r0,3,13,28		# coreID=r0
	lwzx		r4,r4,r5
	se_cmpl		r4,r3		# alarmId=r3
	bc		1,0,.L11350	# lt
#     {
#         Os_AlarmStat[alarmId].Os_AlarmDyn->Os_AlarmCycle = (TickType)0U;
	.d2line		59
	diab.li		r31,0
	lis		r4,Os_AlarmStat@ha
	lwz		r5,Os_AlarmStat@l(r4)
	e_mulli		r7,r3,24		# alarmId=r3
	lwzux		r6,r5,r7
	stw		r31,4(r6)
#         Os_AlarmStat[alarmId].Os_AlarmDyn->Os_AlarmValue = (TickType)0U;
	.d2line		60
	lwz		r5,Os_AlarmStat@l(r4)
	lwzux		r6,r5,r7
	stw		r31,8(r6)
#         Os_AlarmStat[alarmId].Os_AlarmDyn->Os_AlarmState = OS_ALARM_OFF;
	.d2line		61
	lwz		r4,Os_AlarmStat@l(r4)
	lwzx		r4,r4,r7
	stw		r31,0(r4)
#     }
	.d2line		62
	diab.addi		r7,r3,1		# alarmId=r3
	se_addi		r3,1		# alarmId=r3 alarmId=r3
	b		.L11351
.L11350:
# }
	.d2line		63
	.d2epilogue_begin
.Llo6:
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# coreID=r0
	mtspr		lr,r0		# coreID=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11429:
	.type		Os_Alarm_Init,@function
	.size		Os_Alarm_Init,.-Os_Alarm_Init
# Number of nodes = 56

# Allocations for Os_Alarm_Init
#	?a4		coreID
#	?a5		alarmId
# FUNC (Os_BoolType, OS_CODE) Os_Alarm_CheckId(CONST(AlarmType,AUTOMATIC) alarmId)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         70,29
#$$ld
.L11440:

#$$bf	Os_Alarm_CheckId,interprocedural,nostackparams

# Regs written: r0,r1,r3,cr0,lr
	.globl		Os_Alarm_CheckId
	.d2_cfa_start __cie
Os_Alarm_CheckId:
.Llo8:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)		# alarmId=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# alarmId=r0 alarmId=r3
	.d2prologue_end
# {
#     return ((Os_ObjectType)alarmId > Os_AlarmRange[OS_CORE_NO - 1U].Os_ObjEndId) ? Os_false : Os_true;
	.d2line		72
.Llo9:
	lis		r3,(Os_AlarmRange+12)@ha
.Llo10:
	lwz		r3,(Os_AlarmRange+12)@l(r3)
	se_cmpl		r3,r0		# alarmId=r0
	isel		r3,0,r0,0		# alarmId=r0
.L11357:
.Llo11:
	diab.li		r0,1		# alarmId=r0
.Llo12:
	isel		r3,r3,r0,0		# alarmId=r0
.L11358:
# }
	.d2line		73
	.d2epilogue_begin
.Llo13:
	lwz		r0,20(r1)		# alarmId=r0
	mtspr		lr,r0		# alarmId=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11441:
	.type		Os_Alarm_CheckId,@function
	.size		Os_Alarm_CheckId,.-Os_Alarm_CheckId
# Number of nodes = 16

# Allocations for Os_Alarm_CheckId
#	?a4		alarmId
#	?a5		$$2354
# FUNC(void,OS_CODE) Os_AlarmKill(CONST(AlarmType,AUTOMATIC) alarmId)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         81,20
#$$ld
.L11450:

#$$bf	Os_AlarmKill,interprocedural,rasave,nostackparams
	.globl		Os_AlarmKill
	.d2_cfa_start __cie
Os_AlarmKill:
.Llo14:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# alarmId=r31 alarmId=r3
	.d2prologue_end
# {
#     Os_AlarmStat[alarmId].Os_AlarmDyn->Os_AlarmCycle = 0U;
	.d2line		83
.Llo15:
	diab.li		r0,0
.Llo16:
	lis		r3,Os_AlarmStat@ha
	lwz		r4,Os_AlarmStat@l(r3)
	e_mulli		r6,r31,24		# alarmId=r31
	lwzux		r5,r4,r6
	stw		r0,4(r5)
#     Os_AlarmStat[alarmId].Os_AlarmDyn->Os_AlarmValue = 0U;
	.d2line		84
	lwz		r4,Os_AlarmStat@l(r3)
	lwzux		r5,r4,r6
	stw		r0,8(r5)
# 
#     if(OS_ALARM_SET == Os_AlarmStat[alarmId].Os_AlarmDyn->Os_AlarmState)
	.d2line		86
	lwz		r3,Os_AlarmStat@l(r3)
	lwzx		r3,r3,r6
	lwz		r0,0(r3)
	se_cmpi		r0,1
	bc		0,2,.L11361	# ne
#     {
#         Os_CounterCancelIndication(Os_AlarmStat[alarmId].Os_AlarmCounterStat,
	.d2line		88
	lis		r3,Os_AlarmStat@ha
	lwz		r3,Os_AlarmStat@l(r3)
	e_mulli		r5,r31,24		# alarmId=r5 alarmId=r31
	se_add		r3,r5		# alarmId=r5
	lwz		r3,4(r3)
	diab.li		r4,1
	mr		r5,r31		# alarmId=r5 alarmId=r31
	bl		Os_CounterCancelIndication
#                                    OS_COUNTERACTION_ALARM,
#                                    (Os_ObjectType)alarmId);
# 
#         Os_AlarmStat[alarmId].Os_AlarmDyn->Os_AlarmState = OS_ALARM_OFF;
	.d2line		92
	diab.li		r0,0
	lis		r3,Os_AlarmStat@ha
	lwz		r3,Os_AlarmStat@l(r3)
	e_mulli		r31,r31,24		# alarmId=r31 alarmId=r31
.Llo17:
	lwzx		r3,r3,r31
	stw		r0,0(r3)
.L11361:
#     }
# 
#     OS_CALL_RTM_ALARM_OFF(alarmId, OS_GETCOREID());
# }
	.d2line		96
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
.L11451:
	.type		Os_AlarmKill,@function
	.size		Os_AlarmKill,.-Os_AlarmKill
# Number of nodes = 55

# Allocations for Os_AlarmKill
#	?a4		alarmId
# FUNC(void,OS_CODE) Os_AlarmCounterIndication(VAR(Os_ObjectType,AUTOMATIC) counterActionObject)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         101,20
#$$ld
.L11456:

#$$bf	Os_AlarmCounterIndication,interprocedural,rasave,nostackparams
	.globl		Os_AlarmCounterIndication
	.d2_cfa_start __cie
Os_AlarmCounterIndication:
.Llo18:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# counterActionObject=r3 counterActionObject=r3
	.d2prologue_end
# {
#     VAR(AlarmType,AUTOMATIC) alarmId = (AlarmType)counterActionObject;
	.d2line		103
.Llo19:
	mr		r31,r3		# alarmId=r31 alarmId=r3
# 
#     OS_ASSERT(Os_true == Os_Alarm_CheckId(alarmId), E_OS_SYS_ALARMID);
	.d2line		105
.Llo20:
	mr		r3,r31		# counterActionObject=r3 counterActionObject=r31
.Llo22:
	bl		Os_Alarm_CheckId
	se_cmpi		r3,1
	bc		1,2,.L11367	# eq
.Llo23:
	diab.li		r4,39
	lis		r3,(Os_Core_DynShared+12)@ha
	e_add16i		r3,r3,(Os_Core_DynShared+12)@l
	mfspr		r0,286
	rlwinm		r0,r0,0,16,31
	e_mulli		r0,r0,152
	stwx		r4,r3,r0
	diab.li		r3,30
	bl		Os_ShutdownAllCores
.L11367:
	.section	.Os_TEXT,,c
.L11462:
#     {
#         CONSTP2CONST(Os_AlarmStatType,AUTOMATIC,OS_CONST) alarm = &Os_AlarmStat[alarmId];
	.d2line		107
	lis		r3,Os_AlarmStat@ha
	lwz		r30,Os_AlarmStat@l(r3)		# alarm=r30
.Llo24:
	e_mulli		r0,r31,24		# alarmId=r31
	se_add		r0,r30		# alarm=r30
	mr		r30,r0		# alarm=r30 alarm=r0
#         P2CONST(Os_AlarmActionType,AUTOMATIC,OS_CONST) alarmAction = alarm->Os_AlarmAction;
	.d2line		108
.Llo25:
	lwz		r4,8(r30)		# alarmAction=r4 alarm=r30
.Llo26:
	mr		r4,r4		# alarmAction=r4 alarmAction=r4
# 
#         /* [OS001-387.v1] */
#         switch(alarmAction->Os_AlarmActionKind)
	.d2line		111
	lwz		r6,0(r4)		# alarmAction=r4
	se_cmpi		r6,0
	bc		1,2,.L11370	# eq
.Llo27:
	se_cmpi		r6,1
.Llo28:
	bc		1,2,.L11372	# eq
	se_cmpi		r6,2
	bc		1,2,.L11373	# eq
	b		.L11374
.L11370:
#         {
#             case Os_AlarmAction_ActivateTask:
#             {
#                 Os_DispatchActivateTask(
	.d2line		115
	lwz		r3,24(r4)		# alarmAction=r4
	bl		Os_DispatchActivateTask
.Llo29:
	b		.L11371
.L11372:
#                         alarmAction->Os_AlarmActionData.Os_AlarmActionActivateTask.Os_AlarmActionTaskId ); /*[OS632]*/
#             }break;
# 
#             case Os_AlarmAction_IncrementCounter: /* [OS301] */
#             {
#                 Os_DispatchIncrementCounter(
	.d2line		121
.Llo30:
	lwz		r3,28(r4)		# alarmAction=r4
	bl		Os_DispatchIncrementCounter
.Llo31:
	b		.L11371
.L11373:
#                         alarmAction->Os_AlarmActionData.Os_AlarmActionIncrementCounter.Os_AlarmActionCounterId );
#             }break;
# 
#             case Os_AlarmAction_SetEvent:
#             {
#                 /*[OS633]*/
#                 Os_DispatchSetEvent( alarmAction->Os_AlarmActionData.Os_AlarmActionSeEvent.Os_AlarmActionTaskId,
	.d2line		128
.Llo32:
	lwz		r3,8(r4)		# alarmAction=r4
	lwz		r5,16(r4)		# alarmAction=r4
	lwz		r6,20(r4)		# alarmAction=r4
	bl		Os_DispatchSetEvent
.Llo33:
	b		.L11371
.L11374:
#                                      alarmAction->Os_AlarmActionData.Os_AlarmActionSeEvent.Os_AlarmActionEventMask);
#             }break;
# 
#   #ifdef OS_CONFIG_ALARM_CALLBACK
# 
#             case Os_AlarmAction_Callback:
#             {
#                 CONST(Os_AlarmFunctionCallbackType,AUTOMATIC) alarmCallBack =
#                         alarmAction->Os_AlarmActionData.Os_AlarmActionAlarmCallback.Os_AlarmActionCallbackFunction;
# 
#     #ifdef OS_CONFIG_INTERNAL_VALIDATIONS
#                 if(alarmCallBack != NULL_PTR)
#     #endif  /* OS_CONFIG_INTERNAL_VALIDATIONS */
#                 {
#                     CONSTP2VAR  (Os_HooksDynType, AUTOMATIC, OS_VAR)  coreHookDyn = OS_GET_CORE_HOOK_DYN(OS_GETCOREID());
# 
#                   #if defined(OS_MODULE_MULTICORE) && defined(OS_CONFIG_INTERNAL_VALIDATIONS)
#                     /* Coming from dispatcher, release core lock here. */
#                     Os_Core_UnlockCore(OS_GETCOREID());
#                   #endif /* defined(OS_MODULE_MULTICORE) && defined(OS_CONFIG_INTERNAL_VALIDATIONS) */
# 
#                     Os_Isr_ServicesSwitchToHook ();
# 
#                     coreHookDyn->Os_HookID = OS_HOOKID_ALARMCALLBACK;
#                     alarmCallBack();    /* [OS635] */
#                     coreHookDyn->Os_HookID = OS_HOOKID_NONE;
# 
#                     Os_Isr_ServicesSwitchBackFromHook ();
# 
#                   #if defined(OS_MODULE_MULTICORE) && defined(OS_CONFIG_INTERNAL_VALIDATIONS)
#                     /* Coming from dispatcher, aquire core lock here. */
#                     Os_Core_LockCore(OS_GETCOREID());
#                   #endif /* defined(OS_MODULE_MULTICORE) && defined(OS_CONFIG_INTERNAL_VALIDATIONS) */
#                 }
#             }break;
# 
#   #endif  /* OS_CONFIG_ALARM_CALLBACK */
# 
#             default:
#                 OS_FATAL_ERROR(E_OS_SYS_INVALID_ALARMACTION);
	.d2line		168
	diab.li		r4,15		# alarmAction=r4
.Llo34:
	lis		r3,(Os_Core_DynShared+12)@ha
	e_add16i		r3,r3,(Os_Core_DynShared+12)@l
	mfspr		r0,286
	rlwinm		r0,r0,0,16,31
	e_mulli		r0,r0,152
	stwx		r4,r3,r0		# alarmAction=r4
	diab.li		r3,30
	bl		Os_ShutdownAllCores
.L11371:
#                 break;
#         }
# 
#         /* [OS001-147.v1] [OS001-159.v1] [OS012-Conf-MGC-05] */
#         if(0 < alarm->Os_AlarmDyn->Os_AlarmCycle) /* The alarm is a cyclic alarm */
	.d2line		173
.Llo35:
	lwz		r3,0(r30)		# alarm=r30
	lwz		r0,4(r3)
	se_cmpi		r0,0
	bc		1,2,.L11376	# eq
#         {
#             Os_AlarmStat[alarmId].Os_AlarmDyn->Os_AlarmValue =
	.d2line		175
	lis		r3,Os_AlarmStat@ha
	lwz		r4,Os_AlarmStat@l(r3)		# alarmAction=r4
.Llo36:
	e_mulli		r0,r31,24		# alarmId=r31
	lwzux		r5,r4,r0		# alarmId=r5 alarmAction=r4
	lwz		r4,4(r5)		# alarmAction=r4 alarmId=r5
.Llo37:
	lwz		r3,Os_AlarmStat@l(r3)
	se_add		r3,r0
	lwz		r3,4(r3)
	bl		Os_CounterRel2Abs
	lis		r4,Os_AlarmStat@ha		# alarmAction=r4
.Llo38:
	lwz		r5,Os_AlarmStat@l(r4)		# alarmId=r5 alarmAction=r4
	e_mulli		r0,r31,24		# alarmId=r31
	lwzux		r6,r5,r0		# alarmId=r5
	stw		r3,8(r6)
#                                             Os_CounterRel2Abs( Os_AlarmStat[alarmId].Os_AlarmCounterStat,
#                                                                Os_AlarmStat[alarmId].Os_AlarmDyn->Os_AlarmCycle );
#             Os_CounterRegisterIndication( Os_AlarmStat[alarmId].Os_AlarmCounterStat,
	.d2line		178
	lwz		r5,Os_AlarmStat@l(r4)		# alarmId=r5 alarmAction=r4
	lwzux		r3,r5,r0		# alarmId=r5
	lwz		r6,4(r3)
	lwz		r3,Os_AlarmStat@l(r4)		# alarmAction=r4
	se_add		r3,r0
	lwz		r3,4(r3)
	diab.li		r4,1		# alarmAction=r4
.Llo39:
	mr		r5,r31		# alarmId=r5 alarmId=r31
	bl		Os_CounterRegisterIndication
	b		.L11364
.L11376:
#                                           OS_COUNTERACTION_ALARM,
#                                           (Os_ObjectType)alarmId,
#                                           Os_AlarmStat[alarmId].Os_AlarmDyn->Os_AlarmCycle);
#         }
#         else
#         {
#             alarm->Os_AlarmDyn->Os_AlarmState = OS_ALARM_OFF;
	.d2line		185
	diab.li		r0,0
	lwz		r3,0(r30)		# alarm=r30
	stw		r0,0(r3)
	.section	.Os_TEXT,,c
.L11463:
.L11364:
# 
#             OS_CALL_RTM_ALARM_OFF(alarmId, OS_GETCOREID());
#         }
#     }
# }
	.d2line		190
	.d2epilogue_begin
.Llo21:
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
.L11457:
	.type		Os_AlarmCounterIndication,@function
	.size		Os_AlarmCounterIndication,.-Os_AlarmCounterIndication
# Number of nodes = 163

# Allocations for Os_AlarmCounterIndication
#	?a4		counterActionObject
#	?a5		alarmId
#	?a6		alarm
#	?a7		alarmAction
# FUNC (StatusType, OS_CODE) Os_Alarm_Err_Stat(
	.align		2
	.section	.Os_TEXT,,c
        .d2line         193,28
#$$ld
.L11481:

#$$bf	Os_Alarm_Err_Stat,interprocedural,rasave,nostackparams
	.globl		Os_Alarm_Err_Stat
	.d2_cfa_start __cie
Os_Alarm_Err_Stat:
.Llo40:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r5,r3		# callerProc=r5 callerProc=r3
	mr		r6,r4		# alarmId=r6 alarmId=r4
	.d2prologue_end
#                                 CONSTP2CONST ( Os_ProcStatType, AUTOMATIC, OS_CONST ) callerProc,
#                                 CONST        ( AlarmType,       AUTOMATIC )           alarmId )
# {
#     VAR (StatusType, AUTOMATIC) retVal;
# 
# 
#   #ifdef OS_CONFIG_HOOK
#     CONSTP2VAR  (Os_HooksDynType, AUTOMATIC, OS_VAR)  coreHookDyn = OS_GET_CORE_HOOK_DYN(OS_GETCOREID());
	.d2line		201
.Llo44:
	lis		r3,(Os_Core_Stat+4)@ha		# coreHookDyn=r3
.Llo41:
	e_add16i		r3,r3,(Os_Core_Stat+4)@l		# coreHookDyn=r3 coreHookDyn=r3
	mfspr		r0,286
	rlwinm		r0,r0,0,16,31
	e_mulli		r0,r0,20
	lwzx		r4,r3,r0		# coreHookDyn=r4 coreHookDyn=r3
	diab.addi		r4,r4,100		# coreHookDyn=r4 coreHookDyn=r4
#   #endif
# 
#     if(Os_false == Os_Alarm_CheckId(alarmId) )
	.d2line		204
	mr		r3,r6		# alarmId=r3 alarmId=r6
.Llo53:
	bl		Os_Alarm_CheckId
.Llo54:
	se_cmpi		r3,0		# coreHookDyn=r3
	bc		0,2,.L11387	# ne
#     {
#         /* [OS001-127.v1] [OS001-132.v1] [OS001-139.v1] [OS001-151.v1] [OS001-163.v1] */
#         retVal = OS_GET_ERRORCODE(E_OS_ID, E_OS_ID);
	.d2line		207
.Llo42:
	diab.li		r3,3		# retVal=r3
.Llo47:
	b		.L11388
.L11387:
#     }
# 
#   #ifdef OS_CONFIG_HOOK
# 
#     /* All of the hook has access. */
#     else if ( OS_HOOKID_NONE != coreHookDyn->Os_HookID )
	.d2line		213
.Llo48:
	lhz		r0,0(r4)		# coreHookDyn=r4
	se_cmpi		r0,1
	bc		1,2,.L11389	# eq
#     {
#         retVal = E_OK;
	.d2line		215
.Llo55:
	diab.li		r3,0		# retVal=r3
.Llo49:
	b		.L11388
.L11389:
#     }
# 
#   #endif
# 
#   #ifdef OS_MODULE_APPLICATION
# 
#     else if (Os_Access_Denied ==  Os_Access_Check(Os_AlarmStat[alarmId].Os_AlarmAppAccessRights,
	.d2line		222
.Llo45:
	lwz		r3,48(r5)		# retVal=r3 callerProc=r5
.Llo50:
	lbz		r4,4(r3)		# coreHookDyn=r4 retVal=r3
	lis		r3,Os_AlarmStat@ha		# retVal=r3
	lwz		r0,Os_AlarmStat@l(r3)		# retVal=r3
.Llo46:
	e_mulli		r6,r6,24		# alarmId=r6 alarmId=r6
	se_add		r6,r0		# alarmId=r6 alarmId=r6
	lwz		r3,16(r6)		# retVal=r3 alarmId=r6
.Llo51:
	bl		Os_Access_Check
.Llo43:
	se_cmpi		r3,1		# retVal=r3
#                                                   (ProcType)callerProc->Os_ProcOwnerApp->Os_AppId)  )
#     {
#         /* [OS448-01-08] [OS448-01-09] [OS448-01-10] [OS448-01-11] [OS448-01-12] */
#         retVal = OS_GET_ERRORCODE(E_OS_SYS_ERROR, E_OS_ACCESS);
	.d2line		226
	diab.li		r3,1		# retVal=r3
	isel		r3,r3,r31,2		# retVal=r3 retVal=r3 retVal=r31
.L11391:
#     }
# 
#   #endif  /* OS_MODULE_APPLICATION */
# 
#     else
#     {
#         /* List of requirements that are not checked (automatically satisfied):
#          * [OS088-01-100] [OS088-01-101] [OS088-01-102] [OS088-01-103] [OS088-01-104] [OS088-01-105]
#          */
#         retVal = E_OK;
	.d2line		236
	diab.li		r0,0
	isel		r3,r3,r0,2		# retVal=r3 retVal=r3
.L11388:
#     }
# 
#     return retVal;
	.d2line		239
	rlwinm		r3,r3,0,24,31		# retVal=r3 retVal=r3
# }
	.d2line		240
	.d2epilogue_begin
.Llo52:
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
.L11482:
	.type		Os_Alarm_Err_Stat,@function
	.size		Os_Alarm_Err_Stat,.-Os_Alarm_Err_Stat
# Number of nodes = 68

# Allocations for Os_Alarm_Err_Stat
#	?a4		callerProc
#	?a5		alarmId
#	?a6		retVal
#	?a7		coreHookDyn
# FUNC (StatusType, OS_CODE) Os_Alarm_Err_Dyn(
	.align		2
	.section	.Os_TEXT,,c
        .d2line         243,28
#$$ld
.L11504:

#$$bf	Os_Alarm_Err_Dyn,interprocedural,rasave,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r8,cr0,lr
	.globl		Os_Alarm_Err_Dyn
	.d2_cfa_start __cie
Os_Alarm_Err_Dyn:
.Llo56:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r7,r3		# callerProc=r7 callerProc=r3
	mr		r8,r4		# alarmId=r8 alarmId=r4
	.d2prologue_end
#                                 CONSTP2CONST ( Os_ProcStatType, AUTOMATIC, OS_CONST ) callerProc,
#                                 CONST        ( AlarmType,       AUTOMATIC )           alarmId )
# {
#     VAR (StatusType, AUTOMATIC) retVal;
# 
# 
#     if( Os_Isr_Enabled != Os_Isr_GetState(OS_GETCOREID()) )
	.d2line		250
	mfspr		r3,286
.Llo57:
	bl		Os_Isr_GetState
.Llo60:
	se_cmpi		r3,0
	bc		1,2,.L11398	# eq
#     {
#         /* [OS093-01-13] [OS093-01-14] [OS093-01-15] [OS093-01-16] [OS093-01-17]
#          * [OS093-02-13] [OS093-02-14] [OS093-02-15] [OS093-02-16] [OS093-02-17]
#          */
#         retVal = OS_GET_ERRORCODE(E_OS_SYS_ERROR,E_OS_DISABLEDINT);
	.d2line		255
.Llo58:
	diab.li		r3,10		# retVal=r3
.Llo65:
	b		.L11399
.L11398:
#     }
# 
#   #ifdef OS_MODULE_APPLICATION
# 
#     else if( (Os_AlarmStat[alarmId].Os_AlarmOwnerApp != callerProc->Os_ProcOwnerApp) &&
	.d2line		260
.Llo66:
	lis		r3,Os_AlarmStat@ha
	lwz		r3,Os_AlarmStat@l(r3)
	e_mulli		r4,r8,24		# alarmId=r8
	se_add		r3,r4
	lwz		r0,20(r3)
	lwz		r3,48(r7)		# callerProc=r7
	se_cmpl		r0,r3
	bc		1,2,.L11400	# eq
.Llo59:
	lis		r3,Os_AlarmStat@ha
	lwz		r0,Os_AlarmStat@l(r3)
.Llo61:
	e_mulli		r8,r8,24		# alarmId=r8 alarmId=r8
	add		r8,r0,r8		# alarmId=r8 alarmId=r8
	lwz		r3,20(r8)		# alarmId=r8
	lwz		r3,0(r3)
	lbz		r0,0(r3)
	se_cmpi		r0,0
	bc		1,2,.L11400	# eq
#             (APPLICATION_ACCESSIBLE !=Os_AlarmStat[alarmId].Os_AlarmOwnerApp->Os_AppDyn->Os_AppState))
#     {
#         /* [OS509-01-08] [OS509-01-09] [OS509-01-10] [OS509-01-11] [OS509-01-12]*/
#         retVal = OS_GET_ERRORCODE(E_OS_SYS_ERROR, E_OS_ACCESS);
	.d2line		264
.Llo62:
	diab.li		r3,1		# retVal=r3
.Llo67:
	b		.L11399
.L11400:
#     }
# 
#   #endif  /* OS_MODULE_APPLICATION */
# 
#     else
#     {
#         retVal = E_OK;
	.d2line		271
.Llo63:
	diab.li		r3,0		# retVal=r3
.L11399:
#     }
# 
#     return retVal;
	.d2line		274
.Llo64:
	rlwinm		r3,r3,0,24,31		# retVal=r3 retVal=r3
# }
	.d2line		275
	.d2epilogue_begin
.Llo68:
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
	.type		Os_Alarm_Err_Dyn,@function
	.size		Os_Alarm_Err_Dyn,.-Os_Alarm_Err_Dyn
# Number of nodes = 50

# Allocations for Os_Alarm_Err_Dyn
#	?a4		callerProc
#	?a5		alarmId
#	?a6		retVal

# Allocations for module
	.section	.text_vle
	.0byte		.L11511
	.section	.text_vle
	.0byte		.L11519
	.section	.Os_BSS,,b
	.0byte		.L11526
	.section	.text_vle
#$$ld
.L5:
.L12089:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_Types.h"
.L12085:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ApplicationApiTypes.h"
.L12083:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ScheduleTableApiTypes.h"
.L12081:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_TaskApiTypes.h"
.L12079:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_SpinlockApiTypes.h"
.L12062:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_Isr.h"
.L12057:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\PowerPC\\WindRiver\\AUTOSAR\\ar422\\MemMap.h"
.L12054:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_InternalTypes.h"
.L12037:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ErrorApiTypes.h"
.L12017:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ExceptionApiTypes.h"
.L11974:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_ApplicationCfgTypes.h"
.L11949:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_CounterCfgTypes.h"
.L11908:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_TaskCfgTypes.h"
.L11905:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_HookApiTypes.h"
.L11828:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_TrustedFunctionCfgTypes.h"
.L11585:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_ApiDispatchCfgTypes.h"
.L11531:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_SchedulerCfgTypes.h"
.L11520:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_CoreCfgTypes.h"
.L11512:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_AlarmCfgTypes.h"
	.d2_line_end
	.section	.Os_TEXT,,c
#$$ld
.L11409:
.L11430:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\expiry_element\\alarms\\Os_Alarm.c"
.L11417:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_Isr.h"
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
	.uleb128	9
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
	.uleb128	10
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
	.uleb128	3
	.uleb128	8
	.uleb128	11
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	12
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
	.uleb128	13
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
	.uleb128	14
	.uleb128	40
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	28
	.uleb128	13
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
	.uleb128	3
	.uleb128	8
	.uleb128	11
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	16
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	17
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
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	21
	.uleb128	33
	.byte		0x0
	.uleb128	47
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	22
	.uleb128	21
	.byte		0x1
	.uleb128	1
	.uleb128	19
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
	.uleb128	25
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\expiry_element\\alarms\\Os_Alarm.c"
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
.L11406:
	.4byte		.L11407-.L11405
.L11405:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L11411-.L11406
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\expiry_element\\alarms\\Os_Alarm.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L11408
	.4byte		.L11409
	.4byte		.L11412
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11420:
	.sleb128	2
	.4byte		.L11414-.L11406
	.byte		"Os_Isr_GetState"
	.byte		0
	.4byte		.L11417
	.uleb128	227
	.uleb128	45
	.4byte		.L11418
	.byte		0x1
	.4byte		.L11415
	.4byte		.L11416
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L11417
	.uleb128	227
	.uleb128	45
	.byte		"coreId"
	.byte		0
	.4byte		.L11421
	.4byte		.L11425
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11414:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11431:
	.sleb128	4
	.4byte		.L11427-.L11406
	.byte		"Os_Alarm_Init"
	.byte		0
	.4byte		.L11430
	.uleb128	53
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L11428
	.4byte		.L11429
	.sleb128	3
	.4byte		.L11430
	.uleb128	53
	.uleb128	22
	.byte		"coreID"
	.byte		0
	.4byte		.L11421
	.4byte		.L11432
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11433:
	.sleb128	5
	.4byte		.L11430
	.uleb128	55
	.uleb128	35
	.byte		"alarmId"
	.byte		0
	.4byte		.L11434
	.4byte		.L11437
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11427:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11444:
	.sleb128	6
	.4byte		.L11439-.L11406
	.byte		"Os_Alarm_CheckId"
	.byte		0
	.4byte		.L11430
	.uleb128	70
	.uleb128	29
	.4byte		.L11442
	.byte		0x1
	.byte		0x1
	.4byte		.L11440
	.4byte		.L11441
	.sleb128	3
	.4byte		.L11430
	.uleb128	70
	.uleb128	29
	.byte		"alarmId"
	.byte		0
	.4byte		.L11445
	.4byte		.L11447
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11439:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11452:
	.sleb128	4
	.4byte		.L11449-.L11406
	.byte		"Os_AlarmKill"
	.byte		0
	.4byte		.L11430
	.uleb128	81
	.uleb128	20
	.byte		0x1
	.byte		0x1
	.4byte		.L11450
	.4byte		.L11451
	.sleb128	3
	.4byte		.L11430
	.uleb128	81
	.uleb128	20
	.byte		"alarmId"
	.byte		0
	.4byte		.L11445
	.4byte		.L11453
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11449:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11458:
	.sleb128	4
	.4byte		.L11455-.L11406
	.byte		"Os_AlarmCounterIndication"
	.byte		0
	.4byte		.L11430
	.uleb128	101
	.uleb128	20
	.byte		0x1
	.byte		0x1
	.4byte		.L11456
	.4byte		.L11457
	.sleb128	3
	.4byte		.L11430
	.uleb128	101
	.uleb128	20
	.byte		"counterActionObject"
	.byte		0
	.4byte		.L11434
	.4byte		.L11459
.L11460:
	.sleb128	5
	.4byte		.L11430
	.uleb128	103
	.uleb128	30
	.byte		"alarmId"
	.byte		0
	.4byte		.L11446
	.4byte		.L11461
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	7
	.4byte		.L11465
	.4byte		.L11462
	.4byte		.L11463
.L11466:
	.sleb128	5
	.4byte		.L11430
	.uleb128	107
	.uleb128	59
	.byte		"alarm"
	.byte		0
	.4byte		.L11467
	.4byte		.L11472
.L11473:
	.sleb128	5
	.4byte		.L11430
	.uleb128	108
	.uleb128	56
	.byte		"alarmAction"
	.byte		0
	.4byte		.L11474
	.4byte		.L11478
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11465:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11455:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11486:
	.sleb128	6
	.4byte		.L11480-.L11406
	.byte		"Os_Alarm_Err_Stat"
	.byte		0
	.4byte		.L11430
	.uleb128	193
	.uleb128	28
	.4byte		.L11483
	.byte		0x1
	.byte		0x1
	.4byte		.L11481
	.4byte		.L11482
	.sleb128	3
	.4byte		.L11430
	.uleb128	193
	.uleb128	28
	.byte		"callerProc"
	.byte		0
	.4byte		.L11487
	.4byte		.L11492
	.sleb128	3
	.4byte		.L11430
	.uleb128	193
	.uleb128	28
	.byte		"alarmId"
	.byte		0
	.4byte		.L11445
	.4byte		.L11493
.L11494:
	.sleb128	5
	.4byte		.L11430
	.uleb128	197
	.uleb128	33
	.byte		"retVal"
	.byte		0
	.4byte		.L11483
	.4byte		.L11495
.L11496:
	.sleb128	5
	.4byte		.L11430
	.uleb128	201
	.uleb128	55
	.byte		"coreHookDyn"
	.byte		0
	.4byte		.L11497
	.4byte		.L11501
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11480:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11506:
	.sleb128	6
	.4byte		.L11503-.L11406
	.byte		"Os_Alarm_Err_Dyn"
	.byte		0
	.4byte		.L11430
	.uleb128	243
	.uleb128	28
	.4byte		.L11483
	.byte		0x1
	.byte		0x1
	.4byte		.L11504
	.4byte		.L11505
	.sleb128	3
	.4byte		.L11430
	.uleb128	243
	.uleb128	28
	.byte		"callerProc"
	.byte		0
	.4byte		.L11487
	.4byte		.L11507
	.sleb128	3
	.4byte		.L11430
	.uleb128	243
	.uleb128	28
	.byte		"alarmId"
	.byte		0
	.4byte		.L11445
	.4byte		.L11508
.L11509:
	.sleb128	5
	.4byte		.L11430
	.uleb128	247
	.uleb128	33
	.byte		"retVal"
	.byte		0
	.4byte		.L11483
	.4byte		.L11510
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11503:
	.section	.debug_info,,n
.L11511:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L11512
	.uleb128	157
	.uleb128	59
	.byte		"Os_AlarmStat"
	.byte		0
	.4byte		.L11467
	.section	.debug_info,,n
.L11513:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L11512
	.uleb128	159
	.uleb128	44
	.byte		"Os_AlarmRange"
	.byte		0
	.4byte		.L11514
.L11519:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L11520
	.uleb128	169
	.uleb128	42
	.byte		"Os_Core_Stat"
	.byte		0
	.4byte		.L11521
	.section	.debug_info,,n
.L11526:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L11520
	.uleb128	181
	.uleb128	45
	.byte		"Os_Core_DynShared"
	.byte		0
	.4byte		.L11527
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11525:
	.sleb128	9
	.4byte		.L11531
	.uleb128	69
	.uleb128	1
	.4byte		.L11532-.L2
	.uleb128	20
	.section	.debug_info,,n
.L788:
	.sleb128	10
	.byte		"Os_Core_DynInit"
	.byte		0
	.4byte		.L11533
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L789:
	.sleb128	10
	.byte		"Os_Core_Dyn"
	.byte		0
	.4byte		.L11537
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L790:
	.sleb128	10
	.byte		"Os_DispatchElement"
	.byte		0
	.4byte		.L11541
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L791:
	.sleb128	10
	.byte		"Os_PrepareContextFunction"
	.byte		0
	.4byte		.L11545
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L792:
	.sleb128	10
	.byte		"Os_GetStackPointerFunction"
	.byte		0
	.4byte		.L11550
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11532:
.L11536:
	.sleb128	9
	.4byte		.L11531
	.uleb128	69
	.uleb128	1
	.4byte		.L11557-.L2
	.uleb128	36
.L785:
	.sleb128	10
	.byte		"Os_IsrDynInit"
	.byte		0
	.4byte		.L11558
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L786:
	.sleb128	10
	.byte		"Os_SchedulerDynInit"
	.byte		0
	.4byte		.L11560
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L787:
	.sleb128	10
	.byte		"Os_CurrentApp"
	.byte		0
	.4byte		.L11562
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
	.sleb128	0
.L11557:
.L11530:
	.sleb128	9
	.4byte		.L11531
	.uleb128	69
	.uleb128	1
	.4byte		.L11566-.L2
	.uleb128	152
.L778:
	.sleb128	10
	.byte		"Os_Dispatcher"
	.byte		0
	.4byte		.L11567
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L779:
	.sleb128	10
	.byte		"Os_PublicDataNoInit"
	.byte		0
	.4byte		.L11569
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11566:
.L11540:
	.sleb128	9
	.4byte		.L11531
	.uleb128	69
	.uleb128	1
	.4byte		.L11571-.L2
	.uleb128	104
.L775:
	.sleb128	10
	.byte		"Os_SchedulerDyn"
	.byte		0
	.4byte		.L11572
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L776:
	.sleb128	10
	.byte		"Os_IsrDyn"
	.byte		0
	.4byte		.L11574
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L777:
	.sleb128	10
	.byte		"Os_HooksDyn"
	.byte		0
	.4byte		.L11499
	.sleb128	2
	.byte		0x23
	.uleb128	100
	.byte		0x1
	.sleb128	0
.L11571:
.L11561:
	.sleb128	9
	.4byte		.L11531
	.uleb128	69
	.uleb128	1
	.4byte		.L11576-.L2
	.uleb128	4
.L774:
	.sleb128	10
	.byte		"Os_SchedulerCurrentProc"
	.byte		0
	.4byte		.L11577
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11576:
.L11573:
	.sleb128	9
	.4byte		.L11531
	.uleb128	69
	.uleb128	1
	.4byte		.L11579-.L2
	.uleb128	48
.L766:
	.sleb128	10
	.byte		"Os_CurrentContext"
	.byte		0
	.4byte		.L11555
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L767:
	.sleb128	10
	.byte		"Os_PreviousContext"
	.byte		0
	.4byte		.L11555
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L768:
	.sleb128	10
	.byte		"Os_SchedulerScheduleAction"
	.byte		0
	.4byte		.L11580
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L769:
	.sleb128	10
	.byte		"Os_SchedulerLastScheduledPriority"
	.byte		0
	.4byte		.L11582
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L770:
	.sleb128	10
	.byte		"Os_SchedulerCurrentTask"
	.byte		0
	.4byte		.L11577
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L771:
	.sleb128	10
	.byte		"Os_SchedulerLastScheduledProc"
	.byte		0
	.4byte		.L11577
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L772:
	.sleb128	10
	.byte		"Os_SchedulerHeadPivot"
	.byte		0
	.4byte		.L11583
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L773:
	.sleb128	10
	.byte		"Os_SchedulerTailPivot"
	.byte		0
	.4byte		.L11583
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
	.sleb128	0
.L11579:
	.section	.debug_info,,n
.L11584:
	.sleb128	11
	.4byte		.L11585
	.uleb128	612
	.uleb128	1
	.4byte		.L11586-.L2
	.byte		"Os_SchedulerQueueElementType_s"
	.byte		0
	.uleb128	12
.L752:
	.sleb128	10
	.byte		"Os_QueueProc"
	.byte		0
	.4byte		.L11577
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L753:
	.sleb128	10
	.byte		"Os_QueueFrontElement"
	.byte		0
	.4byte		.L11587
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L754:
	.sleb128	10
	.byte		"Os_QueueBackElement"
	.byte		0
	.4byte		.L11587
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11586:
.L11559:
	.sleb128	9
	.4byte		.L11585
	.uleb128	612
	.uleb128	1
	.4byte		.L11588-.L2
	.uleb128	28
.L745:
	.sleb128	10
	.byte		"Os_CurrentUserModePriority"
	.byte		0
	.4byte		.L11589
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L746:
	.sleb128	10
	.byte		"Os_UserModePriorityChanged"
	.byte		0
	.4byte		.L11590
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L747:
	.sleb128	10
	.byte		"Os_DisableAllCount"
	.byte		0
	.4byte		.L11435
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L748:
	.sleb128	10
	.byte		"Os_SuspendAllCount"
	.byte		0
	.4byte		.L11435
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L749:
	.sleb128	10
	.byte		"Os_SuspendOSCount"
	.byte		0
	.4byte		.L11435
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L750:
	.sleb128	10
	.byte		"Os_SavedIsrLevel"
	.byte		0
	.4byte		.L11589
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L751:
	.sleb128	10
	.byte		"Os_SavedOSIsrLevel"
	.byte		0
	.4byte		.L11589
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
	.sleb128	0
.L11588:
.L11575:
	.sleb128	9
	.4byte		.L11585
	.uleb128	612
	.uleb128	1
	.4byte		.L11591-.L2
	.uleb128	52
.L739:
	.sleb128	10
	.byte		"Os_IsrRunningIsr"
	.byte		0
	.4byte		.L11577
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L740:
	.sleb128	10
	.byte		"Os_IsrNeedToClear"
	.byte		0
	.4byte		.L11592
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L741:
	.sleb128	10
	.byte		"Os_Isr_NestLevel"
	.byte		0
	.4byte		.L11435
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L742:
	.sleb128	10
	.byte		"Os_Isr_ServicesBackup"
	.byte		0
	.4byte		.L11596
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L743:
	.sleb128	10
	.byte		"Os_SuspendAllPrevIsrState"
	.byte		0
	.4byte		.L11589
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L744:
	.sleb128	10
	.byte		"Os_SuspendCounterpartTrack"
	.byte		0
	.4byte		.L11600
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L11591:
.L11568:
	.sleb128	9
	.4byte		.L11585
	.uleb128	612
	.uleb128	1
	.4byte		.L11602-.L2
	.uleb128	8
.L737:
	.sleb128	10
	.byte		"Os_DHead"
	.byte		0
	.4byte		.L11435
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L738:
	.sleb128	10
	.byte		"Os_DTail"
	.byte		0
	.4byte		.L11435
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11602:
.L11544:
	.sleb128	11
	.4byte		.L11585
	.uleb128	612
	.uleb128	1
	.4byte		.L11603-.L2
	.byte		"Os_DispatchElementType_s"
	.byte		0
	.uleb128	56
.L732:
	.sleb128	10
	.byte		"Os_DispatchKind"
	.byte		0
	.4byte		.L11604
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L733:
	.sleb128	10
	.byte		"Os_DispatcherLockCoreId"
	.byte		0
	.4byte		.L11422
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L734:
	.sleb128	10
	.byte		"Os_DispatchIsrId"
	.byte		0
	.4byte		.L11606
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L735:
	.sleb128	10
	.byte		"Os_DispatchApiCall"
	.byte		0
	.4byte		.L11608
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L736:
	.sleb128	10
	.byte		"Os_DispatchApiInternal"
	.byte		0
	.4byte		.L11609
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11603:
.L11610:
	.sleb128	11
	.4byte		.L11585
	.uleb128	60
	.uleb128	1
	.4byte		.L11611-.L2
	.byte		"Os_APICallType_struct"
	.byte		0
	.uleb128	40
.L727:
	.sleb128	10
	.byte		"Os_API_Magic"
	.byte		0
	.4byte		.L11435
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L728:
	.sleb128	10
	.byte		"Os_API_ReturnValue"
	.byte		0
	.4byte		.L11483
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L729:
	.sleb128	10
	.byte		"Os_API_Lock"
	.byte		0
	.4byte		.L11612
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L730:
	.sleb128	10
	.byte		"Os_API_Func"
	.byte		0
	.4byte		.L11614
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L731:
	.sleb128	10
	.byte		"Os_API_Data"
	.byte		0
	.4byte		.L11620
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11611:
	.section	.debug_info,,n
.L11620:
	.sleb128	12
	.4byte		.L11585
	.uleb128	60
	.uleb128	1
	.4byte		.L11621-.L2
	.uleb128	24
.L679:
	.sleb128	10
	.byte		"Os_ApiStartOs"
	.byte		0
	.4byte		.L11622
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L680:
	.sleb128	10
	.byte		"Os_ApiShutdownOs"
	.byte		0
	.4byte		.L11624
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L681:
	.sleb128	10
	.byte		"Os_ApiShutdownOsInternal"
	.byte		0
	.4byte		.L11626
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L682:
	.sleb128	10
	.byte		"Os_ApiShutdownAllCores"
	.byte		0
	.4byte		.L11628
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L683:
	.sleb128	10
	.byte		"Os_ApiGetNumberOfActivatedCores"
	.byte		0
	.4byte		.L11630
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L684:
	.sleb128	10
	.byte		"Os_ApiStartCore"
	.byte		0
	.4byte		.L11632
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L685:
	.sleb128	10
	.byte		"Os_ApiStartNonAutosarCore"
	.byte		0
	.4byte		.L11634
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L686:
	.sleb128	10
	.byte		"Os_ApiGetCoreID"
	.byte		0
	.4byte		.L11636
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L687:
	.sleb128	10
	.byte		"Os_ApiActivateTask"
	.byte		0
	.4byte		.L11638
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L688:
	.sleb128	10
	.byte		"Os_ApiChainTask"
	.byte		0
	.4byte		.L11640
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L689:
	.sleb128	10
	.byte		"Os_ApiGetTaskID"
	.byte		0
	.4byte		.L11642
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L690:
	.sleb128	10
	.byte		"Os_ApiGetTaskState"
	.byte		0
	.4byte		.L11644
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L691:
	.sleb128	10
	.byte		"Os_ApiSetEvent"
	.byte		0
	.4byte		.L11646
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L692:
	.sleb128	10
	.byte		"Os_ApiClearEvent"
	.byte		0
	.4byte		.L11648
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L693:
	.sleb128	10
	.byte		"Os_ApiGetEvent"
	.byte		0
	.4byte		.L11650
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L694:
	.sleb128	10
	.byte		"Os_ApiWaitEvent"
	.byte		0
	.4byte		.L11652
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L695:
	.sleb128	10
	.byte		"Os_ApiGetResource"
	.byte		0
	.4byte		.L11654
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L696:
	.sleb128	10
	.byte		"Os_ApiReleaseResource"
	.byte		0
	.4byte		.L11656
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L697:
	.sleb128	10
	.byte		"Os_ApiGetAlarmBase"
	.byte		0
	.4byte		.L11658
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L698:
	.sleb128	10
	.byte		"Os_ApiGetAlarm"
	.byte		0
	.4byte		.L11660
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L699:
	.sleb128	10
	.byte		"Os_ApiSetRelAlarm"
	.byte		0
	.4byte		.L11662
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L700:
	.sleb128	10
	.byte		"Os_ApiSetAbsAlarm"
	.byte		0
	.4byte		.L11664
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L701:
	.sleb128	10
	.byte		"Os_ApiCancelAlarm"
	.byte		0
	.4byte		.L11666
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L702:
	.sleb128	10
	.byte		"Os_ApiGetApplicationState"
	.byte		0
	.4byte		.L11668
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L703:
	.sleb128	10
	.byte		"Os_ApiTerminateApplication"
	.byte		0
	.4byte		.L11670
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L704:
	.sleb128	10
	.byte		"Os_ApiGetApplicationID"
	.byte		0
	.4byte		.L11672
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L705:
	.sleb128	10
	.byte		"Os_ApiGetISRID"
	.byte		0
	.4byte		.L11674
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L706:
	.sleb128	10
	.byte		"Os_ApiGetActiveApplicationMode"
	.byte		0
	.4byte		.L11676
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L707:
	.sleb128	10
	.byte		"Os_ApiIncrementCounter"
	.byte		0
	.4byte		.L11678
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L708:
	.sleb128	10
	.byte		"Os_ApiGetCounterValue"
	.byte		0
	.4byte		.L11680
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L709:
	.sleb128	10
	.byte		"Os_ApiGetElapsedValue"
	.byte		0
	.4byte		.L11682
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L710:
	.sleb128	10
	.byte		"Os_ApiStartScheduleTableAbs"
	.byte		0
	.4byte		.L11684
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L711:
	.sleb128	10
	.byte		"Os_ApiStartScheduleTableRel"
	.byte		0
	.4byte		.L11686
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L712:
	.sleb128	10
	.byte		"Os_ApiStopScheduleTable"
	.byte		0
	.4byte		.L11688
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L713:
	.sleb128	10
	.byte		"Os_ApiGetScheduleTableStatus"
	.byte		0
	.4byte		.L11690
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L714:
	.sleb128	10
	.byte		"Os_ApiNextScheduleTable"
	.byte		0
	.4byte		.L11692
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L715:
	.sleb128	10
	.byte		"Os_ApiStartScheduleTableSynchron"
	.byte		0
	.4byte		.L11694
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L716:
	.sleb128	10
	.byte		"Os_ApiSyncScheduleTable"
	.byte		0
	.4byte		.L11696
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L717:
	.sleb128	10
	.byte		"Os_ApiSetScheduleTableAsync"
	.byte		0
	.4byte		.L11698
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L718:
	.sleb128	10
	.byte		"Os_ApiCheckObjectAccess"
	.byte		0
	.4byte		.L11700
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L719:
	.sleb128	10
	.byte		"Os_ApiCheckObjectOwnership"
	.byte		0
	.4byte		.L11702
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L720:
	.sleb128	10
	.byte		"Os_ApiCallTrustedFunction"
	.byte		0
	.4byte		.L11704
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L721:
	.sleb128	10
	.byte		"Os_ApiStackUsage"
	.byte		0
	.4byte		.L11706
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L722:
	.sleb128	10
	.byte		"Os_API_GetSpinlock"
	.byte		0
	.4byte		.L11708
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L723:
	.sleb128	10
	.byte		"Os_API_ReleaseSpinlock"
	.byte		0
	.4byte		.L11710
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L724:
	.sleb128	10
	.byte		"Os_API_TryToGetSpinlock"
	.byte		0
	.4byte		.L11712
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L725:
	.sleb128	10
	.byte		"Os_API_IOCTransfer"
	.byte		0
	.4byte		.L11714
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L726:
	.sleb128	10
	.byte		"Os_ApiControlIdle"
	.byte		0
	.4byte		.L11716
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11621:
.L11717:
	.sleb128	9
	.4byte		.L11585
	.uleb128	60
	.uleb128	1
	.4byte		.L11718-.L2
	.uleb128	8
.L677:
	.sleb128	10
	.byte		"CoreID"
	.byte		0
	.4byte		.L11422
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L678:
	.sleb128	10
	.byte		"IdleMode"
	.byte		0
	.4byte		.L11719
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11718:
.L11715:
	.sleb128	9
	.4byte		.L11585
	.uleb128	60
	.uleb128	1
	.4byte		.L11721-.L2
	.uleb128	8
.L675:
	.sleb128	10
	.byte		"Ioc_Channel"
	.byte		0
	.4byte		.L11722
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L676:
	.sleb128	10
	.byte		"Ioc_Data"
	.byte		0
	.4byte		.L11726
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11721:
.L11713:
	.sleb128	9
	.4byte		.L11585
	.uleb128	60
	.uleb128	1
	.4byte		.L11732-.L2
	.uleb128	8
.L673:
	.sleb128	10
	.byte		"SpinlockId"
	.byte		0
	.4byte		.L11733
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L674:
	.sleb128	10
	.byte		"Success"
	.byte		0
	.4byte		.L11734
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11732:
.L11711:
	.sleb128	9
	.4byte		.L11585
	.uleb128	60
	.uleb128	1
	.4byte		.L11737-.L2
	.uleb128	2
.L672:
	.sleb128	10
	.byte		"SpinlockId"
	.byte		0
	.4byte		.L11733
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11737:
.L11709:
	.sleb128	9
	.4byte		.L11585
	.uleb128	60
	.uleb128	1
	.4byte		.L11738-.L2
	.uleb128	2
.L671:
	.sleb128	10
	.byte		"SpinlockId"
	.byte		0
	.4byte		.L11733
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11738:
.L11707:
	.sleb128	9
	.4byte		.L11585
	.uleb128	60
	.uleb128	1
	.4byte		.L11739-.L2
	.uleb128	20
.L666:
	.sleb128	10
	.byte		"ProcId"
	.byte		0
	.4byte		.L11740
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L667:
	.sleb128	10
	.byte		"MaxUsage"
	.byte		0
	.4byte		.L11484
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L668:
	.sleb128	10
	.byte		"MaxUsageRef"
	.byte		0
	.4byte		.L11741
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L669:
	.sleb128	10
	.byte		"CurrentUsage"
	.byte		0
	.4byte		.L11484
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L670:
	.sleb128	10
	.byte		"CurrentUsageRef"
	.byte		0
	.4byte		.L11741
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11739:
.L11705:
	.sleb128	9
	.4byte		.L11585
	.uleb128	60
	.uleb128	1
	.4byte		.L11742-.L2
	.uleb128	12
.L663:
	.sleb128	10
	.byte		"FunctionIndex"
	.byte		0
	.4byte		.L11743
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L664:
	.sleb128	10
	.byte		"ParamRef"
	.byte		0
	.4byte		.L11744
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L665:
	.sleb128	10
	.byte		"ReturnValue"
	.byte		0
	.4byte		.L11745
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11742:
.L11703:
	.sleb128	9
	.4byte		.L11585
	.uleb128	60
	.uleb128	1
	.4byte		.L11747-.L2
	.uleb128	12
.L660:
	.sleb128	10
	.byte		"AppID"
	.byte		0
	.4byte		.L11748
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L661:
	.sleb128	10
	.byte		"ObjectType"
	.byte		0
	.4byte		.L11749
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L662:
	.sleb128	10
	.byte		"Object"
	.byte		0
	.4byte		.L11434
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11747:
.L11701:
	.sleb128	9
	.4byte		.L11585
	.uleb128	60
	.uleb128	1
	.4byte		.L11751-.L2
	.uleb128	12
.L657:
	.sleb128	10
	.byte		"AppID"
	.byte		0
	.4byte		.L11748
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L658:
	.sleb128	10
	.byte		"ObjectType"
	.byte		0
	.4byte		.L11749
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L659:
	.sleb128	10
	.byte		"Object"
	.byte		0
	.4byte		.L11434
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11751:
.L11667:
	.sleb128	9
	.4byte		.L11585
	.uleb128	60
	.uleb128	1
	.4byte		.L11752-.L2
	.uleb128	4
.L656:
	.sleb128	10
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11446
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11752:
.L11665:
	.sleb128	9
	.4byte		.L11585
	.uleb128	60
	.uleb128	1
	.4byte		.L11753-.L2
	.uleb128	12
.L653:
	.sleb128	10
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11446
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L654:
	.sleb128	10
	.byte		"Start"
	.byte		0
	.4byte		.L11754
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L655:
	.sleb128	10
	.byte		"Cycle"
	.byte		0
	.4byte		.L11754
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11753:
.L11663:
	.sleb128	9
	.4byte		.L11585
	.uleb128	60
	.uleb128	1
	.4byte		.L11755-.L2
	.uleb128	12
.L650:
	.sleb128	10
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11446
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L651:
	.sleb128	10
	.byte		"Increment"
	.byte		0
	.4byte		.L11754
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L652:
	.sleb128	10
	.byte		"Cycle"
	.byte		0
	.4byte		.L11754
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11755:
.L11661:
	.sleb128	9
	.4byte		.L11585
	.uleb128	60
	.uleb128	1
	.4byte		.L11756-.L2
	.uleb128	8
.L648:
	.sleb128	10
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11446
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L649:
	.sleb128	10
	.byte		"TickRef"
	.byte		0
	.4byte		.L11757
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11756:
.L11659:
	.sleb128	9
	.4byte		.L11585
	.uleb128	60
	.uleb128	1
	.4byte		.L11759-.L2
	.uleb128	8
.L646:
	.sleb128	10
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11446
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L647:
	.sleb128	10
	.byte		"AlarmBaseTypeRef"
	.byte		0
	.4byte		.L11760
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11759:
.L11699:
	.sleb128	9
	.4byte		.L11585
	.uleb128	60
	.uleb128	1
	.4byte		.L11764-.L2
	.uleb128	4
.L645:
	.sleb128	10
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11765
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11764:
.L11697:
	.sleb128	9
	.4byte		.L11585
	.uleb128	60
	.uleb128	1
	.4byte		.L11766-.L2
	.uleb128	8
.L643:
	.sleb128	10
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11765
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L644:
	.sleb128	10
	.byte		"SyncValue"
	.byte		0
	.4byte		.L11754
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11766:
.L11695:
	.sleb128	9
	.4byte		.L11585
	.uleb128	60
	.uleb128	1
	.4byte		.L11767-.L2
	.uleb128	4
.L642:
	.sleb128	10
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11765
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11767:
.L11693:
	.sleb128	9
	.4byte		.L11585
	.uleb128	60
	.uleb128	1
	.4byte		.L11768-.L2
	.uleb128	8
.L640:
	.sleb128	10
	.byte		"SchTblIdFrom"
	.byte		0
	.4byte		.L11765
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L641:
	.sleb128	10
	.byte		"SchTblIdTo"
	.byte		0
	.4byte		.L11765
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11768:
.L11691:
	.sleb128	9
	.4byte		.L11585
	.uleb128	60
	.uleb128	1
	.4byte		.L11769-.L2
	.uleb128	8
.L638:
	.sleb128	10
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11765
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L639:
	.sleb128	10
	.byte		"SchTblStatus"
	.byte		0
	.4byte		.L11770
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11769:
.L11689:
	.sleb128	9
	.4byte		.L11585
	.uleb128	60
	.uleb128	1
	.4byte		.L11774-.L2
	.uleb128	4
.L637:
	.sleb128	10
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11765
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11774:
.L11687:
	.sleb128	9
	.4byte		.L11585
	.uleb128	60
	.uleb128	1
	.4byte		.L11775-.L2
	.uleb128	8
.L635:
	.sleb128	10
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11765
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L636:
	.sleb128	10
	.byte		"Offset"
	.byte		0
	.4byte		.L11754
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11775:
.L11685:
	.sleb128	9
	.4byte		.L11585
	.uleb128	60
	.uleb128	1
	.4byte		.L11776-.L2
	.uleb128	8
.L633:
	.sleb128	10
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11765
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L634:
	.sleb128	10
	.byte		"Start"
	.byte		0
	.4byte		.L11754
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11776:
.L11683:
	.sleb128	9
	.4byte		.L11585
	.uleb128	60
	.uleb128	1
	.4byte		.L11777-.L2
	.uleb128	12
.L630:
	.sleb128	10
	.byte		"CounterId"
	.byte		0
	.4byte		.L11778
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L631:
	.sleb128	10
	.byte		"ValuePtr"
	.byte		0
	.4byte		.L11757
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L632:
	.sleb128	10
	.byte		"ElapsedValuePtr"
	.byte		0
	.4byte		.L11757
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11777:
.L11681:
	.sleb128	9
	.4byte		.L11585
	.uleb128	60
	.uleb128	1
	.4byte		.L11779-.L2
	.uleb128	12
.L627:
	.sleb128	10
	.byte		"CounterId"
	.byte		0
	.4byte		.L11778
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L628:
	.sleb128	10
	.byte		"ValuePtr"
	.byte		0
	.4byte		.L11757
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L629:
	.sleb128	10
	.byte		"LightServiceFunction"
	.byte		0
	.4byte		.L11780
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11779:
.L11679:
	.sleb128	9
	.4byte		.L11585
	.uleb128	60
	.uleb128	1
	.4byte		.L11784-.L2
	.uleb128	4
.L626:
	.sleb128	10
	.byte		"CounterId"
	.byte		0
	.4byte		.L11778
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11784:
.L11675:
	.sleb128	9
	.4byte		.L11585
	.uleb128	60
	.uleb128	1
	.4byte		.L11785-.L2
	.uleb128	4
.L625:
	.sleb128	10
	.byte		"ISRId"
	.byte		0
	.4byte		.L11606
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11785:
.L11671:
	.sleb128	9
	.4byte		.L11585
	.uleb128	60
	.uleb128	1
	.4byte		.L11786-.L2
	.uleb128	2
.L623:
	.sleb128	10
	.byte		"Application"
	.byte		0
	.4byte		.L11748
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L624:
	.sleb128	10
	.byte		"RestartOption"
	.byte		0
	.4byte		.L11787
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
	.sleb128	0
.L11786:
.L11673:
	.sleb128	9
	.4byte		.L11585
	.uleb128	60
	.uleb128	1
	.4byte		.L11788-.L2
	.uleb128	1
.L622:
	.sleb128	10
	.byte		"Application"
	.byte		0
	.4byte		.L11748
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11788:
.L11669:
	.sleb128	9
	.4byte		.L11585
	.uleb128	60
	.uleb128	1
	.4byte		.L11789-.L2
	.uleb128	8
.L620:
	.sleb128	10
	.byte		"Application"
	.byte		0
	.4byte		.L11748
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L621:
	.sleb128	10
	.byte		"AppStateRef"
	.byte		0
	.4byte		.L11790
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11789:
.L11653:
	.sleb128	9
	.4byte		.L11585
	.uleb128	60
	.uleb128	1
	.4byte		.L11793-.L2
	.uleb128	8
.L619:
	.sleb128	10
	.byte		"EventMask"
	.byte		0
	.4byte		.L11794
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11793:
.L11651:
	.sleb128	9
	.4byte		.L11585
	.uleb128	60
	.uleb128	1
	.4byte		.L11797-.L2
	.uleb128	24
.L616:
	.sleb128	10
	.byte		"TaskId"
	.byte		0
	.4byte		.L11740
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L617:
	.sleb128	10
	.byte		"EventMask"
	.byte		0
	.4byte		.L11794
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L618:
	.sleb128	10
	.byte		"EventMaskRef"
	.byte		0
	.4byte		.L11798
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11797:
.L11649:
	.sleb128	9
	.4byte		.L11585
	.uleb128	60
	.uleb128	1
	.4byte		.L11800-.L2
	.uleb128	8
.L615:
	.sleb128	10
	.byte		"EventMask"
	.byte		0
	.4byte		.L11794
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11800:
.L11647:
	.sleb128	9
	.4byte		.L11585
	.uleb128	60
	.uleb128	1
	.4byte		.L11801-.L2
	.uleb128	16
.L613:
	.sleb128	10
	.byte		"TaskId"
	.byte		0
	.4byte		.L11740
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L614:
	.sleb128	10
	.byte		"EventMask"
	.byte		0
	.4byte		.L11794
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11801:
.L11645:
	.sleb128	9
	.4byte		.L11585
	.uleb128	60
	.uleb128	1
	.4byte		.L11802-.L2
	.uleb128	8
.L611:
	.sleb128	10
	.byte		"TaskId"
	.byte		0
	.4byte		.L11740
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L612:
	.sleb128	10
	.byte		"TaskStateRef"
	.byte		0
	.4byte		.L11803
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11802:
.L11643:
	.sleb128	9
	.4byte		.L11585
	.uleb128	60
	.uleb128	1
	.4byte		.L11807-.L2
	.uleb128	4
.L610:
	.sleb128	10
	.byte		"TaskIdRef"
	.byte		0
	.4byte		.L11808
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11807:
.L11641:
	.sleb128	9
	.4byte		.L11585
	.uleb128	60
	.uleb128	1
	.4byte		.L11810-.L2
	.uleb128	4
.L609:
	.sleb128	10
	.byte		"TaskId"
	.byte		0
	.4byte		.L11740
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11810:
.L11639:
	.sleb128	9
	.4byte		.L11585
	.uleb128	60
	.uleb128	1
	.4byte		.L11811-.L2
	.uleb128	4
.L608:
	.sleb128	10
	.byte		"TaskId"
	.byte		0
	.4byte		.L11740
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11811:
.L11657:
	.sleb128	9
	.4byte		.L11585
	.uleb128	60
	.uleb128	1
	.4byte		.L11812-.L2
	.uleb128	4
.L607:
	.sleb128	10
	.byte		"ResourceId"
	.byte		0
	.4byte		.L11813
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11812:
.L11655:
	.sleb128	9
	.4byte		.L11585
	.uleb128	60
	.uleb128	1
	.4byte		.L11814-.L2
	.uleb128	4
.L606:
	.sleb128	10
	.byte		"ResourceId"
	.byte		0
	.4byte		.L11813
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11814:
.L11677:
	.sleb128	9
	.4byte		.L11585
	.uleb128	60
	.uleb128	1
	.4byte		.L11815-.L2
	.uleb128	4
.L605:
	.sleb128	10
	.byte		"AppMode"
	.byte		0
	.4byte		.L11816
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11815:
.L11637:
	.sleb128	9
	.4byte		.L11585
	.uleb128	60
	.uleb128	1
	.4byte		.L11817-.L2
	.uleb128	2
.L604:
	.sleb128	10
	.byte		"CoreID"
	.byte		0
	.4byte		.L11422
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11817:
.L11631:
	.sleb128	9
	.4byte		.L11585
	.uleb128	60
	.uleb128	1
	.4byte		.L11818-.L2
	.uleb128	2
.L603:
	.sleb128	10
	.byte		"NumberOfActivatedCores"
	.byte		0
	.4byte		.L11422
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11818:
.L11629:
	.sleb128	9
	.4byte		.L11585
	.uleb128	60
	.uleb128	1
	.4byte		.L11819-.L2
	.uleb128	1
.L602:
	.sleb128	10
	.byte		"Error"
	.byte		0
	.4byte		.L11483
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11819:
.L11627:
	.sleb128	9
	.4byte		.L11585
	.uleb128	60
	.uleb128	1
	.4byte		.L11820-.L2
	.uleb128	8
.L600:
	.sleb128	10
	.byte		"ShutdownType"
	.byte		0
	.4byte		.L11821
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L601:
	.sleb128	10
	.byte		"Error"
	.byte		0
	.4byte		.L11483
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11820:
.L11625:
	.sleb128	9
	.4byte		.L11585
	.uleb128	60
	.uleb128	1
	.4byte		.L11823-.L2
	.uleb128	1
.L599:
	.sleb128	10
	.byte		"Error"
	.byte		0
	.4byte		.L11483
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11823:
.L11635:
	.sleb128	9
	.4byte		.L11585
	.uleb128	60
	.uleb128	1
	.4byte		.L11824-.L2
	.uleb128	8
.L597:
	.sleb128	10
	.byte		"CoreID"
	.byte		0
	.4byte		.L11422
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L598:
	.sleb128	10
	.byte		"StatusRef"
	.byte		0
	.4byte		.L11825
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11824:
.L11633:
	.sleb128	9
	.4byte		.L11585
	.uleb128	60
	.uleb128	1
	.4byte		.L11826-.L2
	.uleb128	8
.L595:
	.sleb128	10
	.byte		"CoreID"
	.byte		0
	.4byte		.L11422
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L596:
	.sleb128	10
	.byte		"StatusRef"
	.byte		0
	.4byte		.L11825
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11826:
.L11623:
	.sleb128	9
	.4byte		.L11585
	.uleb128	60
	.uleb128	1
	.4byte		.L11827-.L2
	.uleb128	4
.L594:
	.sleb128	10
	.byte		"AppMode"
	.byte		0
	.4byte		.L11816
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11827:
.L11725:
	.sleb128	9
	.4byte		.L11828
	.uleb128	33
	.uleb128	14
	.4byte		.L11829-.L2
	.uleb128	24
.L587:
	.sleb128	10
	.byte		"Os_IOC_ChannelDyn"
	.byte		0
	.4byte		.L11830
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L588:
	.sleb128	10
	.byte		"Os_IOC_ChannelLength"
	.byte		0
	.4byte		.L11834
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L589:
	.sleb128	10
	.byte		"Os_IOC_ChannelBuffer"
	.byte		0
	.4byte		.L11835
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L590:
	.sleb128	10
	.byte		"Os_IOC_ChannelElementSize"
	.byte		0
	.4byte		.L11836
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L591:
	.sleb128	10
	.byte		"Os_IOC_DataCount"
	.byte		0
	.4byte		.L11837
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L592:
	.sleb128	10
	.byte		"Os_IOC_DataDescriptor"
	.byte		0
	.4byte		.L11839
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L593:
	.sleb128	10
	.byte		"Os_IOC_LockResourceAddress"
	.byte		0
	.4byte		.L11844
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L11829:
.L11843:
	.sleb128	9
	.4byte		.L11828
	.uleb128	33
	.uleb128	14
	.4byte		.L11847-.L2
	.uleb128	4
.L583:
	.sleb128	10
	.byte		"Os_IOC_DataLength"
	.byte		0
	.4byte		.L11848
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L584:
	.sleb128	10
	.byte		"Os_IOC_DataOffset"
	.byte		0
	.4byte		.L11850
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L11847:
.L11833:
	.sleb128	9
	.4byte		.L11828
	.uleb128	33
	.uleb128	14
	.4byte		.L11852-.L2
	.uleb128	6
.L580:
	.sleb128	10
	.byte		"Os_IOC_ChannelHead"
	.byte		0
	.4byte		.L11834
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L581:
	.sleb128	10
	.byte		"Os_IOC_ChannelMessageCount"
	.byte		0
	.4byte		.L11834
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L582:
	.sleb128	10
	.byte		"Os_IOC_Status"
	.byte		0
	.4byte		.L11483
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11852:
.L11471:
	.sleb128	9
	.4byte		.L11512
	.uleb128	121
	.uleb128	1
	.4byte		.L11853-.L2
	.uleb128	24
.L572:
	.sleb128	10
	.byte		"Os_AlarmDyn"
	.byte		0
	.4byte		.L11854
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L573:
	.sleb128	10
	.byte		"Os_AlarmCounterStat"
	.byte		0
	.4byte		.L11858
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L574:
	.sleb128	10
	.byte		"Os_AlarmAction"
	.byte		0
	.4byte		.L11863
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L575:
	.sleb128	10
	.byte		"Os_AlarmAutoStart"
	.byte		0
	.4byte		.L11864
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L576:
	.sleb128	10
	.byte		"Os_AlarmAppAccessRights"
	.byte		0
	.4byte		.L11869
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L577:
	.sleb128	10
	.byte		"Os_AlarmOwnerApp"
	.byte		0
	.4byte		.L11873
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L11853:
.L11868:
	.sleb128	9
	.4byte		.L11512
	.uleb128	121
	.uleb128	1
	.4byte		.L11874-.L2
	.uleb128	16
.L568:
	.sleb128	10
	.byte		"Os_AlarmTime"
	.byte		0
	.4byte		.L11875
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L569:
	.sleb128	10
	.byte		"Os_AlarmCycle"
	.byte		0
	.4byte		.L11875
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L570:
	.sleb128	10
	.byte		"Os_AlarmStartKind"
	.byte		0
	.4byte		.L11876
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L571:
	.sleb128	10
	.byte		"Os_AlarmAppModes"
	.byte		0
	.4byte		.L11869
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L11874:
.L11477:
	.sleb128	9
	.4byte		.L11512
	.uleb128	96
	.uleb128	1
	.4byte		.L11879-.L2
	.uleb128	32
.L566:
	.sleb128	10
	.byte		"Os_AlarmActionKind"
	.byte		0
	.4byte		.L11880
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L567:
	.sleb128	10
	.byte		"Os_AlarmActionData"
	.byte		0
	.4byte		.L11883
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11879:
.L11857:
	.sleb128	9
	.4byte		.L11512
	.uleb128	96
	.uleb128	1
	.4byte		.L11886-.L2
	.uleb128	12
.L563:
	.sleb128	10
	.byte		"Os_AlarmState"
	.byte		0
	.4byte		.L11887
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L564:
	.sleb128	10
	.byte		"Os_AlarmCycle"
	.byte		0
	.4byte		.L11754
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L565:
	.sleb128	10
	.byte		"Os_AlarmValue"
	.byte		0
	.4byte		.L11754
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11886:
.L11885:
	.sleb128	9
	.4byte		.L11512
	.uleb128	37
	.uleb128	1
	.4byte		.L11889-.L2
	.uleb128	24
.L560:
	.sleb128	10
	.byte		"Os_AlarmActionSeEvent"
	.byte		0
	.4byte		.L11890
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L561:
	.sleb128	10
	.byte		"Os_AlarmActionActivateTask"
	.byte		0
	.4byte		.L11893
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L562:
	.sleb128	10
	.byte		"Os_AlarmActionIncrementCounter"
	.byte		0
	.4byte		.L11896
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L11889:
.L11898:
	.sleb128	9
	.4byte		.L11512
	.uleb128	37
	.uleb128	1
	.4byte		.L11899-.L2
	.uleb128	4
.L559:
	.sleb128	10
	.byte		"Os_AlarmActionCounterId"
	.byte		0
	.4byte		.L11900
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11899:
.L11892:
	.sleb128	9
	.4byte		.L11512
	.uleb128	37
	.uleb128	1
	.4byte		.L11901-.L2
	.uleb128	16
.L557:
	.sleb128	10
	.byte		"Os_AlarmActionTaskId"
	.byte		0
	.4byte		.L11902
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L558:
	.sleb128	10
	.byte		"Os_AlarmActionEventMask"
	.byte		0
	.4byte		.L11903
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11901:
.L11895:
	.sleb128	9
	.4byte		.L11512
	.uleb128	37
	.uleb128	1
	.4byte		.L11904-.L2
	.uleb128	4
.L556:
	.sleb128	10
	.byte		"Os_AlarmActionTaskId"
	.byte		0
	.4byte		.L11902
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11904:
.L11500:
	.sleb128	9
	.4byte		.L11905
	.uleb128	34
	.uleb128	14
	.4byte		.L11906-.L2
	.uleb128	2
.L531:
	.sleb128	10
	.byte		"Os_HookID"
	.byte		0
	.4byte		.L11907
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11906:
.L11491:
	.sleb128	11
	.4byte		.L11908
	.uleb128	80
	.uleb128	13
	.4byte		.L11909-.L2
	.byte		"Os_ProcStatType_s"
	.byte		0
	.uleb128	80
.L513:
	.sleb128	10
	.byte		"Os_ProcId"
	.byte		0
	.4byte		.L11902
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L514:
	.sleb128	10
	.byte		"Os_ProcCoreID"
	.byte		0
	.4byte		.L11421
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L515:
	.sleb128	10
	.byte		"Os_ProcDyn"
	.byte		0
	.4byte		.L11910
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L516:
	.sleb128	10
	.byte		"Os_ProcStack"
	.byte		0
	.4byte		.L11914
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L517:
	.sleb128	10
	.byte		"Os_ProcKind"
	.byte		0
	.4byte		.L11919
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L518:
	.sleb128	10
	.byte		"Os_ProcEventRights"
	.byte		0
	.4byte		.L11903
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L519:
	.sleb128	10
	.byte		"Os_ProcPriority"
	.byte		0
	.4byte		.L11922
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L520:
	.sleb128	10
	.byte		"Os_ProcRunPriority"
	.byte		0
	.4byte		.L11922
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L521:
	.sleb128	10
	.byte		"Os_ProcMaxActivations"
	.byte		0
	.4byte		.L11923
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L522:
	.sleb128	10
	.byte		"Os_ProcContext"
	.byte		0
	.4byte		.L11925
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L523:
	.sleb128	10
	.byte		"Os_ProcOwnerApp"
	.byte		0
	.4byte		.L11873
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L524:
	.sleb128	10
	.byte		"Os_ProcAppAccess"
	.byte		0
	.4byte		.L11869
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L525:
	.sleb128	10
	.byte		"Os_ProcEntryPoint"
	.byte		0
	.4byte		.L11926
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L526:
	.sleb128	10
	.byte		"Os_ProcAutoStart"
	.byte		0
	.4byte		.L11869
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
.L527:
	.sleb128	10
	.byte		"Os_ProcResourceCount"
	.byte		0
	.4byte		.L11931
	.sleb128	2
	.byte		0x23
	.uleb128	64
	.byte		0x1
.L528:
	.sleb128	10
	.byte		"Os_ProcResourceStack"
	.byte		0
	.4byte		.L11932
	.sleb128	2
	.byte		0x23
	.uleb128	68
	.byte		0x1
.L529:
	.sleb128	10
	.byte		"Os_ProcQueueElements"
	.byte		0
	.4byte		.L11938
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.byte		0x1
.L530:
	.sleb128	10
	.byte		"Os_ProcIsrPlatformConfig"
	.byte		0
	.4byte		.L11939
	.sleb128	2
	.byte		0x23
	.uleb128	76
	.byte		0x1
	.sleb128	0
.L11909:
.L11918:
	.sleb128	11
	.4byte		.L11908
	.uleb128	80
	.uleb128	13
	.4byte		.L11940-.L2
	.byte		"Os_ProcStackStruct"
	.byte		0
	.uleb128	8
.L511:
	.sleb128	10
	.byte		"Os_ProcStackSize"
	.byte		0
	.4byte		.L11941
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L512:
	.sleb128	10
	.byte		"Os_ProcStackBase"
	.byte		0
	.4byte		.L11925
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11940:
.L11913:
	.sleb128	9
	.4byte		.L11908
	.uleb128	80
	.uleb128	13
	.4byte		.L11943-.L2
	.uleb128	56
.L498:
	.sleb128	10
	.byte		"Os_ProcState"
	.byte		0
	.4byte		.L11805
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L499:
	.sleb128	10
	.byte		"Os_ProcContextState"
	.byte		0
	.4byte		.L11944
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L500:
	.sleb128	10
	.byte		"Os_ProcEvents"
	.byte		0
	.4byte		.L11794
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L501:
	.sleb128	10
	.byte		"Os_ProcEventWaitingFor"
	.byte		0
	.4byte		.L11794
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L502:
	.sleb128	10
	.byte		"Os_ProcActivations"
	.byte		0
	.4byte		.L11924
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L503:
	.sleb128	10
	.byte		"Os_ProcResourcesAllocated"
	.byte		0
	.4byte		.L11813
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L504:
	.sleb128	10
	.byte		"Os_ProcEnabled"
	.byte		0
	.4byte		.L11484
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L505:
	.sleb128	10
	.byte		"Os_ProcCurrentApp"
	.byte		0
	.4byte		.L11562
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L506:
	.sleb128	10
	.byte		"Os_ProcSpinlock"
	.byte		0
	.4byte		.L11946
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L507:
	.sleb128	10
	.byte		"Os_ProcFreeQueueElements"
	.byte		0
	.4byte		.L11587
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L508:
	.sleb128	10
	.byte		"Os_ProcCurrentPriority"
	.byte		0
	.4byte		.L11582
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L509:
	.sleb128	10
	.byte		"Os_ProcTFCallCount"
	.byte		0
	.4byte		.L11484
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L510:
	.sleb128	10
	.byte		"Os_FatalErrorOccured"
	.byte		0
	.4byte		.L11483
	.sleb128	2
	.byte		0x23
	.uleb128	53
	.byte		0x1
	.sleb128	0
.L11943:
.L11862:
	.sleb128	11
	.4byte		.L11949
	.uleb128	44
	.uleb128	14
	.4byte		.L11950-.L2
	.byte		"Os_CounterStatStruct"
	.byte		0
	.uleb128	48
.L486:
	.sleb128	10
	.byte		"Os_CounterKind"
	.byte		0
	.4byte		.L11951
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L487:
	.sleb128	10
	.byte		"Os_CounterMaxAllowedValue"
	.byte		0
	.4byte		.L11875
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L488:
	.sleb128	10
	.byte		"Os_CounterMinCycle"
	.byte		0
	.4byte		.L11875
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L489:
	.sleb128	10
	.byte		"Os_CounterTicksPerBase"
	.byte		0
	.4byte		.L11875
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L490:
	.sleb128	10
	.byte		"Os_CounterPoolSize"
	.byte		0
	.4byte		.L11954
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L491:
	.sleb128	10
	.byte		"Os_CounterRegistry"
	.byte		0
	.4byte		.L11955
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L492:
	.sleb128	10
	.byte		"Os_CounterEPs"
	.byte		0
	.4byte		.L11959
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L493:
	.sleb128	10
	.byte		"Os_CounterActions"
	.byte		0
	.4byte		.L11963
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L494:
	.sleb128	10
	.byte		"Os_TimerId"
	.byte		0
	.4byte		.L11967
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L495:
	.sleb128	10
	.byte		"Os_CounterCoreId"
	.byte		0
	.4byte		.L11421
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L496:
	.sleb128	10
	.byte		"Os_CounterAppAccess"
	.byte		0
	.4byte		.L11869
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L497:
	.sleb128	10
	.byte		"Os_CounterOwnerApp"
	.byte		0
	.4byte		.L11873
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
	.sleb128	0
.L11950:
.L11958:
	.sleb128	11
	.4byte		.L11949
	.uleb128	44
	.uleb128	14
	.4byte		.L11969-.L2
	.byte		"Os_CounterDynStruct"
	.byte		0
	.uleb128	16
.L482:
	.sleb128	10
	.byte		"Os_CounterValue"
	.byte		0
	.4byte		.L11754
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L483:
	.sleb128	10
	.byte		"Os_CounterNextEP"
	.byte		0
	.4byte		.L11960
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L484:
	.sleb128	10
	.byte		"Os_CounterNextFreeEP"
	.byte		0
	.4byte		.L11960
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L485:
	.sleb128	10
	.byte		"Os_CounterNextFreeAction"
	.byte		0
	.4byte		.L11964
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L11969:
.L11962:
	.sleb128	11
	.4byte		.L11949
	.uleb128	44
	.uleb128	14
	.4byte		.L11970-.L2
	.byte		"Os_CounterEPStruct"
	.byte		0
	.uleb128	16
.L478:
	.sleb128	10
	.byte		"Os_CounterEPDueValue"
	.byte		0
	.4byte		.L11754
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L479:
	.sleb128	10
	.byte		"Os_CounterNextAction"
	.byte		0
	.4byte		.L11964
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L480:
	.sleb128	10
	.byte		"Os_CounterLastAction"
	.byte		0
	.4byte		.L11964
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L481:
	.sleb128	10
	.byte		"Os_CounterEPNextEP"
	.byte		0
	.4byte		.L11960
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L11970:
.L11966:
	.sleb128	11
	.4byte		.L11949
	.uleb128	44
	.uleb128	14
	.4byte		.L11971-.L2
	.byte		"Os_CounterEPActionStruct"
	.byte		0
	.uleb128	12
.L475:
	.sleb128	10
	.byte		"Os_CounterActionOwner"
	.byte		0
	.4byte		.L11972
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L476:
	.sleb128	10
	.byte		"Os_CounterActionObject"
	.byte		0
	.4byte		.L11434
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L477:
	.sleb128	10
	.byte		"Os_CounterActionNextAction"
	.byte		0
	.4byte		.L11964
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11971:
.L11948:
	.sleb128	11
	.4byte		.L11974
	.uleb128	52
	.uleb128	1
	.4byte		.L11975-.L2
	.byte		"Os_SpinlockStatType_s"
	.byte		0
	.uleb128	16
.L450:
	.sleb128	10
	.byte		"Os_SpinlockId"
	.byte		0
	.4byte		.L11976
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L451:
	.sleb128	10
	.byte		"Os_SpinlockChainId"
	.byte		0
	.4byte		.L11976
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L452:
	.sleb128	10
	.byte		"Os_SpinlockDyn"
	.byte		0
	.4byte		.L11977
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L453:
	.sleb128	10
	.byte		"Os_SpinlockAccess"
	.byte		0
	.4byte		.L11869
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L454:
	.sleb128	10
	.byte		"Os_SpinlockLockResourceAddress"
	.byte		0
	.4byte		.L11844
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L11975:
.L11980:
	.sleb128	9
	.4byte		.L11974
	.uleb128	52
	.uleb128	1
	.4byte		.L11981-.L2
	.uleb128	12
.L447:
	.sleb128	10
	.byte		"Os_SpinlockLockerProc"
	.byte		0
	.4byte		.L11577
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L448:
	.sleb128	10
	.byte		"Os_SpinlockSuperseded"
	.byte		0
	.4byte		.L11946
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L449:
	.sleb128	10
	.byte		"Os_ResourceDependency"
	.byte		0
	.4byte		.L11934
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11981:
.L11565:
	.sleb128	11
	.4byte		.L11974
	.uleb128	52
	.uleb128	1
	.4byte		.L11982-.L2
	.byte		"Os_ApplicationStatType_s"
	.byte		0
	.uleb128	48
.L435:
	.sleb128	10
	.byte		"Os_AppDyn"
	.byte		0
	.4byte		.L11983
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L436:
	.sleb128	10
	.byte		"Os_AppId"
	.byte		0
	.4byte		.L11987
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L437:
	.sleb128	10
	.byte		"Os_AppRestartTask"
	.byte		0
	.4byte		.L11902
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L438:
	.sleb128	10
	.byte		"Os_AppKind"
	.byte		0
	.4byte		.L11988
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L439:
	.sleb128	10
	.byte		"Os_AppShutdownHook"
	.byte		0
	.4byte		.L11991
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L440:
	.sleb128	10
	.byte		"Os_AppStartupHook"
	.byte		0
	.4byte		.L11996
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L441:
	.sleb128	10
	.byte		"Os_AppErrorHook"
	.byte		0
	.4byte		.L12001
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L442:
	.sleb128	10
	.byte		"Os_AppProcIDs"
	.byte		0
	.4byte		.L12006
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L443:
	.sleb128	10
	.byte		"Os_AppCounterIDs"
	.byte		0
	.4byte		.L12009
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L444:
	.sleb128	10
	.byte		"Os_AppAlarmIDs"
	.byte		0
	.4byte		.L12011
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L445:
	.sleb128	10
	.byte		"Os_AppSchTblIDs"
	.byte		0
	.4byte		.L12013
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L446:
	.sleb128	10
	.byte		"Os_CoreAssigment"
	.byte		0
	.4byte		.L11421
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
	.sleb128	0
.L11982:
.L11986:
	.sleb128	9
	.4byte		.L11974
	.uleb128	52
	.uleb128	1
	.4byte		.L12016-.L2
	.uleb128	1
.L434:
	.sleb128	10
	.byte		"Os_AppState"
	.byte		0
	.4byte		.L11792
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12016:
.L11937:
	.sleb128	9
	.4byte		.L12017
	.uleb128	32
	.uleb128	1
	.4byte		.L12018-.L2
	.uleb128	12
.L431:
	.sleb128	10
	.byte		"Os_ResourcePriority"
	.byte		0
	.4byte		.L11922
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L432:
	.sleb128	10
	.byte		"Os_ResourceAccessRights"
	.byte		0
	.4byte		.L11870
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L433:
	.sleb128	10
	.byte		"Os_ResourceDyn"
	.byte		0
	.4byte		.L12019
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L12018:
.L12021:
	.sleb128	9
	.4byte		.L12017
	.uleb128	32
	.uleb128	1
	.4byte		.L12022-.L2
	.uleb128	4
.L430:
	.sleb128	10
	.byte		"Os_LockerProc"
	.byte		0
	.4byte		.L11577
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12022:
.L11570:
	.sleb128	9
	.4byte		.L12017
	.uleb128	32
	.uleb128	1
	.4byte		.L12023-.L2
	.uleb128	144
.L425:
	.sleb128	10
	.byte		"Os_Error"
	.byte		0
	.4byte		.L12024
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L426:
	.sleb128	10
	.byte		"Os_ExceptionStatus"
	.byte		0
	.4byte		.L12026
	.sleb128	2
	.byte		0x23
	.uleb128	120
	.byte		0x1
	.sleb128	0
.L12023:
.L11599:
	.sleb128	9
	.4byte		.L12017
	.uleb128	32
	.uleb128	1
	.4byte		.L12028-.L2
	.uleb128	24
.L419:
	.sleb128	10
	.byte		"Os_DisAllInt"
	.byte		0
	.4byte		.L12029
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L420:
	.sleb128	10
	.byte		"Os_EnAllInt"
	.byte		0
	.4byte		.L12029
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L421:
	.sleb128	10
	.byte		"Os_SusAllInt"
	.byte		0
	.4byte		.L12029
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L422:
	.sleb128	10
	.byte		"Os_ResAllInt"
	.byte		0
	.4byte		.L12029
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L423:
	.sleb128	10
	.byte		"Os_SusOsInt"
	.byte		0
	.4byte		.L12029
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L424:
	.sleb128	10
	.byte		"Os_ResOsInt"
	.byte		0
	.4byte		.L12029
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L12028:
.L12027:
	.sleb128	9
	.4byte		.L12017
	.uleb128	32
	.uleb128	1
	.4byte		.L12034-.L2
	.uleb128	20
.L414:
	.sleb128	10
	.byte		"Os_ExceptionType"
	.byte		0
	.4byte		.L12035
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L415:
	.sleb128	10
	.byte		"Os_ExceptionCause"
	.byte		0
	.4byte		.L11435
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L416:
	.sleb128	10
	.byte		"Os_ExceptionAuxiliaryCause"
	.byte		0
	.4byte		.L11435
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L417:
	.sleb128	10
	.byte		"Os_ExceptionExecutionAddress"
	.byte		0
	.4byte		.L11556
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L418:
	.sleb128	10
	.byte		"Os_ExceptionAccessAddress"
	.byte		0
	.4byte		.L11556
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L12034:
.L12025:
	.sleb128	9
	.4byte		.L12037
	.uleb128	174
	.uleb128	1
	.4byte		.L12038-.L2
	.uleb128	120
.L411:
	.sleb128	10
	.byte		"Os_ShutdownError"
	.byte		0
	.4byte		.L12039
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L412:
	.sleb128	10
	.byte		"Os_ParameterError"
	.byte		0
	.4byte		.L12041
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L413:
	.sleb128	10
	.byte		"Os_ServiceError"
	.byte		0
	.4byte		.L12043
	.sleb128	2
	.byte		0x23
	.uleb128	112
	.byte		0x1
	.sleb128	0
.L12038:
.L12044:
	.sleb128	9
	.4byte		.L12037
	.uleb128	174
	.uleb128	1
	.4byte		.L12045-.L2
	.uleb128	8
.L408:
	.sleb128	10
	.byte		"Os_ServiceTrace"
	.byte		0
	.4byte		.L12046
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L409:
	.sleb128	10
	.byte		"Os_LastError"
	.byte		0
	.4byte		.L11483
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L410:
	.sleb128	10
	.byte		"Os_FaultyServiceId"
	.byte		0
	.4byte		.L12047
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12045:
.L12042:
	.sleb128	9
	.4byte		.L12037
	.uleb128	174
	.uleb128	1
	.4byte		.L12049-.L2
	.uleb128	104
.L383:
	.sleb128	10
	.byte		"Os_Err_TaskID"
	.byte		0
	.4byte		.L11740
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L384:
	.sleb128	10
	.byte		"Os_Err_ResID"
	.byte		0
	.4byte		.L11813
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L385:
	.sleb128	10
	.byte		"Os_Err_MaskType_Mask"
	.byte		0
	.4byte		.L11794
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L386:
	.sleb128	10
	.byte		"Os_Err_AlarmID"
	.byte		0
	.4byte		.L11446
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L387:
	.sleb128	10
	.byte		"Os_Err_TicksStart"
	.byte		0
	.4byte		.L11754
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L388:
	.sleb128	10
	.byte		"Os_Err_TicksCycle"
	.byte		0
	.4byte		.L11754
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L389:
	.sleb128	10
	.byte		"Os_Err_FuncIndex"
	.byte		0
	.4byte		.L11743
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L390:
	.sleb128	10
	.byte		"Os_Err_FuncParamRefType"
	.byte		0
	.4byte		.L11744
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L391:
	.sleb128	10
	.byte		"Os_Err_ApplID"
	.byte		0
	.4byte		.L11748
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L392:
	.sleb128	10
	.byte		"Os_Err_ApplStateRefType"
	.byte		0
	.4byte		.L11790
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L393:
	.sleb128	10
	.byte		"Os_Err_ObjType"
	.byte		0
	.4byte		.L11749
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L394:
	.sleb128	10
	.byte		"Os_Err_SchedID"
	.byte		0
	.4byte		.L11765
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L395:
	.sleb128	10
	.byte		"Os_Err_SchedID_Next"
	.byte		0
	.4byte		.L11765
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L396:
	.sleb128	10
	.byte		"Os_Err_CntID"
	.byte		0
	.4byte		.L11778
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L397:
	.sleb128	10
	.byte		"Os_Err_RestartType"
	.byte		0
	.4byte		.L11787
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
.L398:
	.sleb128	10
	.byte		"Os_Err_MaskRefType"
	.byte		0
	.4byte		.L11798
	.sleb128	2
	.byte		0x23
	.uleb128	64
	.byte		0x1
.L399:
	.sleb128	10
	.byte		"Os_Err_TaskStateRef"
	.byte		0
	.4byte		.L11803
	.sleb128	2
	.byte		0x23
	.uleb128	68
	.byte		0x1
.L400:
	.sleb128	10
	.byte		"Os_Err_TickRef_Ticks"
	.byte		0
	.4byte		.L11757
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.byte		0x1
.L401:
	.sleb128	10
	.byte		"Os_Err_AlarmBaseRefType_Info"
	.byte		0
	.4byte		.L11760
	.sleb128	2
	.byte		0x23
	.uleb128	76
	.byte		0x1
.L402:
	.sleb128	10
	.byte		"Os_Err_TaskIDRef"
	.byte		0
	.4byte		.L11808
	.sleb128	2
	.byte		0x23
	.uleb128	80
	.byte		0x1
.L403:
	.sleb128	10
	.byte		"Os_Err_TblStatusRefType"
	.byte		0
	.4byte		.L11770
	.sleb128	2
	.byte		0x23
	.uleb128	84
	.byte		0x1
.L404:
	.sleb128	10
	.byte		"Os_Err_TickRef_ElapsedTicks"
	.byte		0
	.4byte		.L11757
	.sleb128	2
	.byte		0x23
	.uleb128	88
	.byte		0x1
.L405:
	.sleb128	10
	.byte		"Os_Err_ObjObj"
	.byte		0
	.4byte		.L11434
	.sleb128	2
	.byte		0x23
	.uleb128	92
	.byte		0x1
.L406:
	.sleb128	10
	.byte		"Os_Err_SpinlockID"
	.byte		0
	.4byte		.L11733
	.sleb128	2
	.byte		0x23
	.uleb128	96
	.byte		0x1
.L407:
	.sleb128	10
	.byte		"Os_Err_TryToGetSpinlockRef"
	.byte		0
	.4byte		.L12050
	.sleb128	2
	.byte		0x23
	.uleb128	100
	.byte		0x1
	.sleb128	0
.L12049:
.L12040:
	.sleb128	9
	.4byte		.L12037
	.uleb128	174
	.uleb128	1
	.4byte		.L12051-.L2
	.uleb128	8
.L381:
	.sleb128	10
	.byte		"Os_ShutdownErrorCode"
	.byte		0
	.4byte		.L11483
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L382:
	.sleb128	10
	.byte		"Os_ShutdownInternalErrorCode"
	.byte		0
	.4byte		.L12052
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12051:
.L11763:
	.sleb128	9
	.4byte		.L12054
	.uleb128	50
	.uleb128	1
	.4byte		.L12055-.L2
	.uleb128	12
.L378:
	.sleb128	10
	.byte		"maxallowedvalue"
	.byte		0
	.4byte		.L11754
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L379:
	.sleb128	10
	.byte		"ticksperbase"
	.byte		0
	.4byte		.L11754
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L380:
	.sleb128	10
	.byte		"mincycle"
	.byte		0
	.4byte		.L11754
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L12055:
.L11518:
	.sleb128	9
	.4byte		.L12054
	.uleb128	50
	.uleb128	1
	.4byte		.L12056-.L2
	.uleb128	8
.L376:
	.sleb128	10
	.byte		"Os_ObjStartId"
	.byte		0
	.4byte		.L11434
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L377:
	.sleb128	10
	.byte		"Os_ObjEndId"
	.byte		0
	.4byte		.L11434
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12056:
.L11595:
	.sleb128	9
	.4byte		.L12057
	.uleb128	87
	.uleb128	7
	.4byte		.L12058-.L2
	.uleb128	8
.L366:
	.sleb128	10
	.byte		"Os_IsrPltId"
	.byte		0
	.4byte		.L12059
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L367:
	.sleb128	10
	.byte		"Os_IsrPltLevel"
	.byte		0
	.4byte		.L12060
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12058:
	.section	.debug_info,,n
.L11419:
	.sleb128	13
	.4byte		.L12062
	.uleb128	155
	.uleb128	1
	.4byte		.L12063-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	14
	.byte		"Os_Isr_Enabled"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"Os_Isr_Disabled"
	.byte		0
	.sleb128	1
	.sleb128	0
.L12063:
.L11581:
	.sleb128	13
	.4byte		.L11531
	.uleb128	69
	.uleb128	1
	.4byte		.L12064-.L2
	.uleb128	4
	.sleb128	14
	.byte		"Os_Return"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"Os_Load"
	.byte		0
	.sleb128	1
	.sleb128	14
	.byte		"Os_SaveAndLoad"
	.byte		0
	.sleb128	2
	.sleb128	14
	.byte		"Os_SaveAndIdle"
	.byte		0
	.sleb128	3
	.sleb128	14
	.byte		"Os_Idle"
	.byte		0
	.sleb128	4
	.sleb128	0
.L12064:
.L11605:
	.sleb128	13
	.4byte		.L11585
	.uleb128	612
	.uleb128	1
	.4byte		.L12065-.L2
	.uleb128	4
	.sleb128	14
	.byte		"OS_DISPATCH_JUSTSCHEDULE"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"OS_DISPATCH_API"
	.byte		0
	.sleb128	1
	.sleb128	14
	.byte		"OS_DISPATCH_INTERRUPT"
	.byte		0
	.sleb128	2
	.sleb128	14
	.byte		"OS_DISPATCH_APIRE"
	.byte		0
	.sleb128	3
	.sleb128	14
	.byte		"OS_DISPATCH_INTERNAL"
	.byte		0
	.sleb128	4
	.sleb128	14
	.byte		"OS_DISPATCH_INTERNALCROSS"
	.byte		0
	.sleb128	5
	.sleb128	14
	.byte		"OS_DISPATCH_INVALID"
	.byte		0
	.sleb128	6
	.sleb128	0
.L12065:
.L11613:
	.sleb128	13
	.4byte		.L11585
	.uleb128	60
	.uleb128	1
	.4byte		.L12066-.L2
	.uleb128	4
	.sleb128	14
	.byte		"OS_DISPATCH_SINGLE"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"OS_DISPATCH_MULTI"
	.byte		0
	.sleb128	1
	.sleb128	14
	.byte		"OS_DISPATCH_ALL"
	.byte		0
	.sleb128	2
	.sleb128	0
.L12066:
	.section	.debug_info,,n
.L11746:
	.sleb128	15
	.4byte		.L11828
	.uleb128	33
	.uleb128	14
	.4byte		.L12067-.L2
	.byte		"TrustedFunctionReturnValueType_e"
	.byte		0
	.uleb128	4
	.sleb128	14
	.byte		"TRUSTEDFUNCTION_RETURN_VALUE_NONE"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"TRUSTEDFUNCTION_RETURN_VALUE_SCHEDULE"
	.byte		0
	.sleb128	1
	.sleb128	0
.L12067:
.L11878:
	.sleb128	13
	.4byte		.L11512
	.uleb128	121
	.uleb128	1
	.4byte		.L12068-.L2
	.uleb128	4
	.sleb128	14
	.byte		"OS_ALARM_RELATIVE"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"OS_ALARM_ABSOLUTE"
	.byte		0
	.sleb128	1
	.sleb128	0
.L12068:
.L11888:
	.sleb128	13
	.4byte		.L11512
	.uleb128	96
	.uleb128	1
	.4byte		.L12069-.L2
	.uleb128	4
	.sleb128	14
	.byte		"OS_ALARM_OFF"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"OS_ALARM_SET"
	.byte		0
	.sleb128	1
	.sleb128	0
.L12069:
.L11882:
	.sleb128	13
	.4byte		.L11512
	.uleb128	37
	.uleb128	1
	.4byte		.L12070-.L2
	.uleb128	4
	.sleb128	14
	.byte		"Os_AlarmAction_ActivateTask"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"Os_AlarmAction_IncrementCounter"
	.byte		0
	.sleb128	1
	.sleb128	14
	.byte		"Os_AlarmAction_SetEvent"
	.byte		0
	.sleb128	2
	.sleb128	0
.L12070:
.L11945:
	.sleb128	13
	.4byte		.L11908
	.uleb128	80
	.uleb128	13
	.4byte		.L12071-.L2
	.uleb128	4
	.sleb128	14
	.byte		"Os_ProcContextInvalid"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"Os_ProcContextActive"
	.byte		0
	.sleb128	1
	.sleb128	14
	.byte		"Os_ProcContextPrepared"
	.byte		0
	.sleb128	2
	.sleb128	0
.L12071:
.L11921:
	.sleb128	13
	.4byte		.L11908
	.uleb128	61
	.uleb128	1
	.4byte		.L12072-.L2
	.uleb128	4
	.sleb128	14
	.byte		"Os_Proc_Task"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"Os_Proc_ISR_CAT2"
	.byte		0
	.sleb128	1
	.sleb128	0
.L12072:
.L11973:
	.sleb128	15
	.4byte		.L11949
	.uleb128	44
	.uleb128	14
	.4byte		.L12073-.L2
	.byte		"Os_CounterActionOwnerType_e"
	.byte		0
	.uleb128	4
	.sleb128	14
	.byte		"OS_COUNTERACTION_OWNER_INVALID"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"OS_COUNTERACTION_ALARM"
	.byte		0
	.sleb128	1
	.sleb128	14
	.byte		"OS_COUNTERACTION_SCHTBL"
	.byte		0
	.sleb128	2
	.sleb128	0
.L12073:
.L11953:
	.sleb128	15
	.4byte		.L11949
	.uleb128	36
	.uleb128	14
	.4byte		.L12074-.L2
	.byte		"Os_CounterKindType_e"
	.byte		0
	.uleb128	4
	.sleb128	14
	.byte		"OS_HARDWARE"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"OS_SOFTWARE"
	.byte		0
	.sleb128	1
	.sleb128	0
.L12074:
.L11990:
	.sleb128	13
	.4byte		.L11974
	.uleb128	52
	.uleb128	1
	.4byte		.L12075-.L2
	.uleb128	4
	.sleb128	14
	.byte		"OS_TRUSTED"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"OS_NONTRUSTED"
	.byte		0
	.sleb128	1
	.sleb128	0
.L12075:
.L12036:
	.sleb128	13
	.4byte		.L12017
	.uleb128	32
	.uleb128	1
	.4byte		.L12076-.L2
	.uleb128	4
	.sleb128	14
	.byte		"OS_EXCEPTION_NONE"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"OS_EXCEPTION_CRITICAL_INPUT"
	.byte		0
	.sleb128	1
	.sleb128	14
	.byte		"OS_EXCEPTION_MACHINE_CHECK"
	.byte		0
	.sleb128	2
	.sleb128	14
	.byte		"OS_EXCEPTION_DATA_STORAGE"
	.byte		0
	.sleb128	3
	.sleb128	14
	.byte		"OS_EXCEPTION_INSTRUCTION_STORAGE"
	.byte		0
	.sleb128	4
	.sleb128	14
	.byte		"OS_EXCEPTION_EXTERNAL_INPUT"
	.byte		0
	.sleb128	5
	.sleb128	14
	.byte		"OS_EXCEPTION_ALIGNMENT"
	.byte		0
	.sleb128	6
	.sleb128	14
	.byte		"OS_EXCEPTION_PROGRAM"
	.byte		0
	.sleb128	7
	.sleb128	14
	.byte		"OS_EXCEPTION_FLOATINGPOINT_UNAVAILABLE"
	.byte		0
	.sleb128	8
	.sleb128	14
	.byte		"OS_EXCEPTION_AUX_PROC_UNAVAILABLE"
	.byte		0
	.sleb128	9
	.sleb128	14
	.byte		"OS_EXCEPTION_DECREMENTER"
	.byte		0
	.sleb128	10
	.sleb128	14
	.byte		"OS_EXCEPTION_FIXED_INTERVAL_TIMER"
	.byte		0
	.sleb128	11
	.sleb128	14
	.byte		"OS_EXCEPTION_WATCHDOG"
	.byte		0
	.sleb128	12
	.sleb128	14
	.byte		"OS_EXCEPTION_DATA_TLB_ERROR"
	.byte		0
	.sleb128	13
	.sleb128	14
	.byte		"OS_EXCEPTION_INSTRUCTION_TLB_ERROR"
	.byte		0
	.sleb128	14
	.sleb128	14
	.byte		"OS_EXCEPTION_DEBUG"
	.byte		0
	.sleb128	15
	.sleb128	14
	.byte		"OS_EXCEPTION_SPE_UNAVAILABLE"
	.byte		0
	.sleb128	16
	.sleb128	14
	.byte		"OS_EXCEPTION_SPE_DATA"
	.byte		0
	.sleb128	17
	.sleb128	14
	.byte		"OS_EXCEPTION_SPE_ROUND"
	.byte		0
	.sleb128	18
	.sleb128	14
	.byte		"OS_EXCEPTION_COUNT"
	.byte		0
	.sleb128	19
	.sleb128	0
.L12076:
.L12053:
	.sleb128	13
	.4byte		.L12037
	.uleb128	174
	.uleb128	1
	.4byte		.L12077-.L2
	.uleb128	4
	.sleb128	14
	.byte		"E_OS_SYS_OK"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"E_OS_SYS_UNKNOWN_API"
	.byte		0
	.sleb128	1
	.sleb128	14
	.byte		"E_OS_SYS_INVALID_STARTSTATE"
	.byte		0
	.sleb128	2
	.sleb128	14
	.byte		"E_OS_SYS_INVALID_MASTERAPPMODE"
	.byte		0
	.sleb128	3
	.sleb128	14
	.byte		"E_OS_SYS_INVALID_SLAVEAPPMODE"
	.byte		0
	.sleb128	4
	.sleb128	14
	.byte		"E_OS_SYS_COUNTERACTION_OVERFLOW"
	.byte		0
	.sleb128	5
	.sleb128	14
	.byte		"E_OS_SYS_COUNTEREP_OVERFLOW"
	.byte		0
	.sleb128	6
	.sleb128	14
	.byte		"E_OS_SYS_INVALID_COUNTEROWNER"
	.byte		0
	.sleb128	7
	.sleb128	14
	.byte		"E_OS_SYS_WRONG_APIMAGIC"
	.byte		0
	.sleb128	8
	.sleb128	14
	.byte		"E_OS_SYS_WRONG_DISPATCHKIND1"
	.byte		0
	.sleb128	9
	.sleb128	14
	.byte		"E_OS_SYS_WRONG_DISPATCHKIND2"
	.byte		0
	.sleb128	10
	.sleb128	14
	.byte		"E_OS_SYS_WRONG_DISPATCHKIND3"
	.byte		0
	.sleb128	11
	.sleb128	14
	.byte		"E_OS_SYS_WRONG_DISPATCHKIND4"
	.byte		0
	.sleb128	12
	.sleb128	14
	.byte		"E_OS_SYS_WRONG_DISPATCHKIND5"
	.byte		0
	.sleb128	13
	.sleb128	14
	.byte		"E_OS_SYS_DISPATCHER_OVERFLOW"
	.byte		0
	.sleb128	14
	.sleb128	14
	.byte		"E_OS_SYS_INVALID_ALARMACTION"
	.byte		0
	.sleb128	15
	.sleb128	14
	.byte		"E_OS_SYS_INVALID_SCHTBLSTARTKIND"
	.byte		0
	.sleb128	16
	.sleb128	14
	.byte		"E_OS_SYS_INVALID_ISRPROCKIND"
	.byte		0
	.sleb128	17
	.sleb128	14
	.byte		"E_OS_SYS_WRONG_TPSTATE1"
	.byte		0
	.sleb128	18
	.sleb128	14
	.byte		"E_OS_SYS_WRONG_TPSTATE2"
	.byte		0
	.sleb128	19
	.sleb128	14
	.byte		"E_OS_SYS_WRONG_TPSTATE3"
	.byte		0
	.sleb128	20
	.sleb128	14
	.byte		"E_OS_SYS_WRONG_TPSTATE4"
	.byte		0
	.sleb128	21
	.sleb128	14
	.byte		"E_OS_SYS_WRONG_TPSTATE5"
	.byte		0
	.sleb128	22
	.sleb128	14
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION0"
	.byte		0
	.sleb128	23
	.sleb128	14
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION1"
	.byte		0
	.sleb128	24
	.sleb128	14
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION2"
	.byte		0
	.sleb128	25
	.sleb128	14
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION3"
	.byte		0
	.sleb128	26
	.sleb128	14
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION4"
	.byte		0
	.sleb128	27
	.sleb128	14
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION5"
	.byte		0
	.sleb128	28
	.sleb128	14
	.byte		"E_OS_SYS_INVALID_QUEUEHEAD"
	.byte		0
	.sleb128	29
	.sleb128	14
	.byte		"E_OS_SYS_INVALID_QUEUEINDEX"
	.byte		0
	.sleb128	30
	.sleb128	14
	.byte		"E_OS_SYS_INVALID_PROCSTATE"
	.byte		0
	.sleb128	31
	.sleb128	14
	.byte		"E_OS_SYS_LINKTIMEGUARD_ERROR"
	.byte		0
	.sleb128	32
	.sleb128	14
	.byte		"E_OS_SYS_WRONG_CORESTATE"
	.byte		0
	.sleb128	33
	.sleb128	14
	.byte		"E_OS_SYS_COUNTERID"
	.byte		0
	.sleb128	34
	.sleb128	14
	.byte		"E_OS_SYS_COUNTER_CANCELEDNOTFOUND"
	.byte		0
	.sleb128	35
	.sleb128	14
	.byte		"E_OS_SYS_COUNTER_ACTIONCHAINISBROKEN"
	.byte		0
	.sleb128	36
	.sleb128	14
	.byte		"E_OS_SYS_COUNTER_ACTIONCHAINISBROKEN2"
	.byte		0
	.sleb128	37
	.sleb128	14
	.byte		"E_OS_SYS_COUNTER_EPCHAINISBROKEN"
	.byte		0
	.sleb128	38
	.sleb128	14
	.byte		"E_OS_SYS_ALARMID"
	.byte		0
	.sleb128	39
	.sleb128	14
	.byte		"E_OS_SYS_RESUMEPROC_MAXACTIVATION"
	.byte		0
	.sleb128	40
	.sleb128	14
	.byte		"E_OS_SYS_QUEUEELEMENT_OVERFLOW"
	.byte		0
	.sleb128	41
	.sleb128	14
	.byte		"E_OS_SYS_SCHEDULER_ERROR"
	.byte		0
	.sleb128	42
	.sleb128	14
	.byte		"E_OS_SYS_EVENTSTAT"
	.byte		0
	.sleb128	43
	.sleb128	14
	.byte		"E_OS_SYS_TASKID"
	.byte		0
	.sleb128	44
	.sleb128	14
	.byte		"E_OS_SYS_TASKMISSINGEND_PROCKIND"
	.byte		0
	.sleb128	45
	.sleb128	14
	.byte		"E_OS_SYS_TASKMISSINGEND_COREID"
	.byte		0
	.sleb128	46
	.sleb128	14
	.byte		"E_OS_SYS_INVALID_TIMINGPROTECTIONSTATE"
	.byte		0
	.sleb128	47
	.sleb128	14
	.byte		"E_OS_SYS_INVALID_EXCEPTION"
	.byte		0
	.sleb128	48
	.sleb128	14
	.byte		"E_OS_SYS_INVALID_PLATFORM_TIMER"
	.byte		0
	.sleb128	49
	.sleb128	14
	.byte		"E_OS_SYS_KERNELSTACK_OVERFLOW"
	.byte		0
	.sleb128	50
	.sleb128	14
	.byte		"E_OS_SYS_INVALID_SECTION_SIZE"
	.byte		0
	.sleb128	51
	.sleb128	14
	.byte		"E_OS_SYS_MEMPROT_INVALID_APP"
	.byte		0
	.sleb128	52
	.sleb128	14
	.byte		"E_OS_SYS_CALLEVEL"
	.byte		0
	.sleb128	53
	.sleb128	14
	.byte		"E_OS_SYS_TIMER_RUNNING"
	.byte		0
	.sleb128	54
	.sleb128	14
	.byte		"E_OS_SYS_TIMER_STOPPED"
	.byte		0
	.sleb128	55
	.sleb128	14
	.byte		"E_OS_SYS_TIMER_TOO_MUCH_JITTER"
	.byte		0
	.sleb128	56
	.sleb128	14
	.byte		"E_OS_SYS_SSG_NESTING"
	.byte		0
	.sleb128	57
	.sleb128	14
	.byte		"E_OS_SYS_SSG_OVERFLOW"
	.byte		0
	.sleb128	58
	.sleb128	14
	.byte		"E_OS_SYS_CORELOCK_LOCKED"
	.byte		0
	.sleb128	59
	.sleb128	14
	.byte		"E_OS_SYS_CORELOCK_UNLOCKED"
	.byte		0
	.sleb128	60
	.sleb128	14
	.byte		"E_OS_SYS_TFPROCAPPINCONSISTENCY"
	.byte		0
	.sleb128	61
	.sleb128	14
	.byte		"E_OS_SYS_PROCENABLEDALREADY"
	.byte		0
	.sleb128	62
	.sleb128	0
.L12077:
.L12048:
	.sleb128	13
	.4byte		.L12037
	.uleb128	86
	.uleb128	1
	.4byte		.L12078-.L2
	.uleb128	4
	.sleb128	14
	.byte		"OSServiceId_GetApplicationID"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"OSServiceId_GetISRID"
	.byte		0
	.sleb128	1
	.sleb128	14
	.byte		"OSServiceId_CallTrustedFunction"
	.byte		0
	.sleb128	2
	.sleb128	14
	.byte		"OSServiceId_CheckISRMemoryAccess"
	.byte		0
	.sleb128	3
	.sleb128	14
	.byte		"OSServiceId_CheckTaskMemoryAccess"
	.byte		0
	.sleb128	4
	.sleb128	14
	.byte		"OSServiceId_CheckObjectAccess"
	.byte		0
	.sleb128	5
	.sleb128	14
	.byte		"OSServiceId_CheckObjectOwnership"
	.byte		0
	.sleb128	6
	.sleb128	14
	.byte		"OSServiceId_StartScheduleTableRel"
	.byte		0
	.sleb128	7
	.sleb128	14
	.byte		"OSServiceId_StartScheduleTableAbs"
	.byte		0
	.sleb128	8
	.sleb128	14
	.byte		"OSServiceId_StopScheduleTable"
	.byte		0
	.sleb128	9
	.sleb128	14
	.byte		"OSServiceId_NextScheduleTable"
	.byte		0
	.sleb128	10
	.sleb128	14
	.byte		"OSServiceId_StartScheduleTableSynchron"
	.byte		0
	.sleb128	11
	.sleb128	14
	.byte		"OSServiceId_SyncScheduleTable"
	.byte		0
	.sleb128	12
	.sleb128	14
	.byte		"OSServiceId_SetScheduleTableAsync"
	.byte		0
	.sleb128	13
	.sleb128	14
	.byte		"OSServiceId_GetScheduleTableStatus"
	.byte		0
	.sleb128	14
	.sleb128	14
	.byte		"OSServiceId_IncrementCounter"
	.byte		0
	.sleb128	15
	.sleb128	14
	.byte		"OSServiceId_GetCounterValue"
	.byte		0
	.sleb128	16
	.sleb128	14
	.byte		"OSServiceId_GetElapsedValue"
	.byte		0
	.sleb128	17
	.sleb128	14
	.byte		"OSServiceId_TerminateApplication"
	.byte		0
	.sleb128	18
	.sleb128	14
	.byte		"OSServiceId_AllowAcess"
	.byte		0
	.sleb128	19
	.sleb128	14
	.byte		"OSServiceId_GetApplicationState"
	.byte		0
	.sleb128	20
	.sleb128	14
	.byte		"OSServiceId_GetNumberOfActivatedCores"
	.byte		0
	.sleb128	21
	.sleb128	14
	.byte		"OSServiceId_GetCoreID"
	.byte		0
	.sleb128	22
	.sleb128	14
	.byte		"OSServiceId_StartCore"
	.byte		0
	.sleb128	23
	.sleb128	14
	.byte		"OSServiceId_StartNonAutosarCore"
	.byte		0
	.sleb128	24
	.sleb128	14
	.byte		"OSServiceId_GetSpinlock"
	.byte		0
	.sleb128	25
	.sleb128	14
	.byte		"OSServiceId_ReleaseSpinlock"
	.byte		0
	.sleb128	26
	.sleb128	14
	.byte		"OSServiceId_TryToGetSpinlock"
	.byte		0
	.sleb128	27
	.sleb128	14
	.byte		"OSServiceId_ShutdownAllCores"
	.byte		0
	.sleb128	28
	.sleb128	14
	.byte		"OSServiceId_ControlIdle"
	.byte		0
	.sleb128	29
	.sleb128	14
	.byte		"OSServiceId_IOC_Send"
	.byte		0
	.sleb128	30
	.sleb128	14
	.byte		"OSServiceId_IOC_Write"
	.byte		0
	.sleb128	31
	.sleb128	14
	.byte		"OSServiceId_IOC_SendGroup"
	.byte		0
	.sleb128	32
	.sleb128	14
	.byte		"OSServiceId_IOC_WriteFGroup"
	.byte		0
	.sleb128	33
	.sleb128	14
	.byte		"OSServiceId_IOC_Receive"
	.byte		0
	.sleb128	34
	.sleb128	14
	.byte		"OSServiceId_IOC_Read"
	.byte		0
	.sleb128	35
	.sleb128	14
	.byte		"OSServiceId_IOC_ReceiveGroup"
	.byte		0
	.sleb128	36
	.sleb128	14
	.byte		"OSServiceId_IOC_ReadGroup"
	.byte		0
	.sleb128	37
	.sleb128	14
	.byte		"OSServiceId_IOC_EmptyQueue"
	.byte		0
	.sleb128	38
	.sleb128	14
	.byte		"OSServiceId_IOC_ReceiverPullCB"
	.byte		0
	.sleb128	39
	.sleb128	14
	.byte		"OSServiceId_ActivateTask"
	.byte		0
	.sleb128	128
	.sleb128	14
	.byte		"OSServiceId_TerminateTask"
	.byte		0
	.sleb128	129
	.sleb128	14
	.byte		"OSServiceId_ChainTask"
	.byte		0
	.sleb128	130
	.sleb128	14
	.byte		"OSServiceId_Schedule"
	.byte		0
	.sleb128	131
	.sleb128	14
	.byte		"OSServiceId_GetTaskID"
	.byte		0
	.sleb128	132
	.sleb128	14
	.byte		"OSServiceId_GetTaskState"
	.byte		0
	.sleb128	133
	.sleb128	14
	.byte		"OSServiceId_EnableAllInterrupts"
	.byte		0
	.sleb128	134
	.sleb128	14
	.byte		"OSServiceId_DisableAllInterrupts"
	.byte		0
	.sleb128	135
	.sleb128	14
	.byte		"OSServiceId_ResumeAllInterrupts"
	.byte		0
	.sleb128	136
	.sleb128	14
	.byte		"OSServiceId_SuspendAllInterrupts"
	.byte		0
	.sleb128	137
	.sleb128	14
	.byte		"OSServiceId_ResumeOSInterrupts"
	.byte		0
	.sleb128	138
	.sleb128	14
	.byte		"OSServiceId_SuspendOSInterrupts"
	.byte		0
	.sleb128	139
	.sleb128	14
	.byte		"OSServiceId_GetResource"
	.byte		0
	.sleb128	140
	.sleb128	14
	.byte		"OSServiceId_ReleaseResource"
	.byte		0
	.sleb128	141
	.sleb128	14
	.byte		"OSServiceId_SetEvent"
	.byte		0
	.sleb128	142
	.sleb128	14
	.byte		"OSServiceId_ClearEvent"
	.byte		0
	.sleb128	143
	.sleb128	14
	.byte		"OSServiceId_GetEvent"
	.byte		0
	.sleb128	144
	.sleb128	14
	.byte		"OSServiceId_WaitEvent"
	.byte		0
	.sleb128	145
	.sleb128	14
	.byte		"OSServiceId_GetAlarmBase"
	.byte		0
	.sleb128	146
	.sleb128	14
	.byte		"OSServiceId_GetAlarm"
	.byte		0
	.sleb128	147
	.sleb128	14
	.byte		"OSServiceId_SetRelAlarm"
	.byte		0
	.sleb128	148
	.sleb128	14
	.byte		"OSServiceId_SetAbsAlarm"
	.byte		0
	.sleb128	149
	.sleb128	14
	.byte		"OSServiceId_CancelAlarm"
	.byte		0
	.sleb128	150
	.sleb128	14
	.byte		"OSServiceId_GetActiveApplicationMode"
	.byte		0
	.sleb128	151
	.sleb128	14
	.byte		"OSServiceId_StartOS"
	.byte		0
	.sleb128	152
	.sleb128	14
	.byte		"OSServiceId_ShutdownOS"
	.byte		0
	.sleb128	153
	.sleb128	14
	.byte		"OSServiceId_INVALIDSERVICE"
	.byte		0
	.sleb128	255
	.sleb128	0
.L12078:
.L11736:
	.sleb128	13
	.4byte		.L12079
	.uleb128	43
	.uleb128	1
	.4byte		.L12080-.L2
	.uleb128	4
	.sleb128	14
	.byte		"TRYTOGETSPINLOCK_SUCCESS"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"TRYTOGETSPINLOCK_NOSUCCESS"
	.byte		0
	.sleb128	1
	.sleb128	0
.L12080:
.L11806:
	.sleb128	13
	.4byte		.L12081
	.uleb128	37
	.uleb128	1
	.4byte		.L12082-.L2
	.uleb128	4
	.sleb128	14
	.byte		"RUNNING"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"WAITING"
	.byte		0
	.sleb128	1
	.sleb128	14
	.byte		"READY"
	.byte		0
	.sleb128	2
	.sleb128	14
	.byte		"SUSPENDED"
	.byte		0
	.sleb128	3
	.sleb128	0
.L12082:
.L11773:
	.sleb128	13
	.4byte		.L12083
	.uleb128	40
	.uleb128	1
	.4byte		.L12084-.L2
	.uleb128	4
	.sleb128	14
	.byte		"SCHEDULETABLE_STOPPED"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"SCHEDULETABLE_NEXT"
	.byte		0
	.sleb128	1
	.sleb128	14
	.byte		"SCHEDULETABLE_WAITING"
	.byte		0
	.sleb128	2
	.sleb128	14
	.byte		"SCHEDULETABLE_RUNNING"
	.byte		0
	.sleb128	3
	.sleb128	14
	.byte		"SCHEDULETABLE_RUNNING_AND_SYNCHRONOUS"
	.byte		0
	.sleb128	4
	.sleb128	0
.L12084:
.L11750:
	.sleb128	13
	.4byte		.L12085
	.uleb128	47
	.uleb128	1
	.4byte		.L12086-.L2
	.uleb128	4
	.sleb128	14
	.byte		"OBJECT_TASK"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"OBJECT_ISR"
	.byte		0
	.sleb128	1
	.sleb128	14
	.byte		"OBJECT_ALARM"
	.byte		0
	.sleb128	2
	.sleb128	14
	.byte		"OBJECT_RESOURCE"
	.byte		0
	.sleb128	3
	.sleb128	14
	.byte		"OBJECT_COUNTER"
	.byte		0
	.sleb128	4
	.sleb128	14
	.byte		"OBJECT_SCHEDULETABLE"
	.byte		0
	.sleb128	5
	.sleb128	0
.L12086:
.L11443:
	.sleb128	13
	.4byte		.L12054
	.uleb128	50
	.uleb128	1
	.4byte		.L12087-.L2
	.uleb128	4
	.sleb128	14
	.byte		"Os_false"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"Os_true"
	.byte		0
	.sleb128	1
	.sleb128	0
.L12087:
.L11822:
	.sleb128	13
	.4byte		.L12054
	.uleb128	42
	.uleb128	13
	.4byte		.L12088-.L2
	.uleb128	4
	.sleb128	14
	.byte		"OS_SHUTDOWN_INDIVIDUAL"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"OS_SHUTDOWN_SYNCHRONIZED"
	.byte		0
	.sleb128	1
	.sleb128	0
.L12088:
.L11720:
	.sleb128	13
	.4byte		.L12089
	.uleb128	83
	.uleb128	14
	.4byte		.L12090-.L2
	.uleb128	4
	.sleb128	14
	.byte		"IDLE_NO_HALT"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"IDLE_WAIT"
	.byte		0
	.sleb128	1
	.sleb128	14
	.byte		"IDLE_NUMBEROFOPTIONS"
	.byte		0
	.sleb128	2
	.sleb128	0
.L12090:
	.section	.debug_info,,n
.L11418:
	.sleb128	16
	.byte		"Os_IsrStateType"
	.byte		0
	.4byte		.L11419
	.section	.debug_info,,n
.L11424:
	.sleb128	17
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L11423:
	.sleb128	16
	.byte		"uint16"
	.byte		0
	.4byte		.L11424
.L11422:
	.sleb128	16
	.byte		"CoreIdType"
	.byte		0
	.4byte		.L11423
	.section	.debug_info,,n
.L11421:
	.sleb128	18
	.4byte		.L11422
.L11436:
	.sleb128	17
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L11435:
	.sleb128	16
	.byte		"uint32"
	.byte		0
	.4byte		.L11436
.L11434:
	.sleb128	16
	.byte		"Os_ObjectType"
	.byte		0
	.4byte		.L11435
.L11442:
	.sleb128	16
	.byte		"Os_BoolType"
	.byte		0
	.4byte		.L11443
.L11446:
	.sleb128	16
	.byte		"AlarmType"
	.byte		0
	.4byte		.L11434
.L11445:
	.sleb128	18
	.4byte		.L11446
.L11470:
	.sleb128	16
	.byte		"Os_AlarmStatType"
	.byte		0
	.4byte		.L11471
.L11469:
	.sleb128	18
	.4byte		.L11470
	.section	.debug_info,,n
.L11468:
	.sleb128	19
	.4byte		.L11469
.L11467:
	.sleb128	18
	.4byte		.L11468
.L11476:
	.sleb128	16
	.byte		"Os_AlarmActionType"
	.byte		0
	.4byte		.L11477
.L11475:
	.sleb128	18
	.4byte		.L11476
.L11474:
	.sleb128	19
	.4byte		.L11475
.L11485:
	.sleb128	17
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L11484:
	.sleb128	16
	.byte		"uint8"
	.byte		0
	.4byte		.L11485
.L11483:
	.sleb128	16
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L11484
.L11490:
	.sleb128	16
	.byte		"Os_ProcStatType"
	.byte		0
	.4byte		.L11491
.L11489:
	.sleb128	18
	.4byte		.L11490
.L11488:
	.sleb128	19
	.4byte		.L11489
.L11487:
	.sleb128	18
	.4byte		.L11488
.L11499:
	.sleb128	16
	.byte		"Os_HooksDynType"
	.byte		0
	.4byte		.L11500
.L11498:
	.sleb128	19
	.4byte		.L11499
.L11497:
	.sleb128	18
	.4byte		.L11498
.L11517:
	.sleb128	16
	.byte		"Os_ObjectRangeType"
	.byte		0
	.4byte		.L11518
.L11516:
	.sleb128	18
	.4byte		.L11517
	.section	.debug_info,,n
.L11514:
	.sleb128	20
	.4byte		.L11515-.L2
	.4byte		.L11516
	.section	.debug_info,,n
	.sleb128	21
	.uleb128	1
	.sleb128	0
.L11515:
.L11524:
	.sleb128	16
	.byte		"Os_Core_StatType"
	.byte		0
	.4byte		.L11525
.L11523:
	.sleb128	18
	.4byte		.L11524
.L11521:
	.sleb128	20
	.4byte		.L11522-.L2
	.4byte		.L11523
	.sleb128	21
	.uleb128	1
	.sleb128	0
.L11522:
.L11529:
	.sleb128	16
	.byte		"Os_Core_DynSharedType"
	.byte		0
	.4byte		.L11530
.L11527:
	.sleb128	20
	.4byte		.L11528-.L2
	.4byte		.L11529
	.sleb128	21
	.uleb128	1
	.sleb128	0
.L11528:
.L11535:
	.sleb128	16
	.byte		"Os_Core_DynInitType"
	.byte		0
	.4byte		.L11536
.L11534:
	.sleb128	19
	.4byte		.L11535
.L11533:
	.sleb128	18
	.4byte		.L11534
.L11539:
	.sleb128	16
	.byte		"Os_Core_DynType"
	.byte		0
	.4byte		.L11540
.L11538:
	.sleb128	19
	.4byte		.L11539
.L11537:
	.sleb128	18
	.4byte		.L11538
.L11543:
	.sleb128	16
	.byte		"Os_DispatchElementType"
	.byte		0
	.4byte		.L11544
.L11542:
	.sleb128	19
	.4byte		.L11543
.L11541:
	.sleb128	18
	.4byte		.L11542
	.section	.debug_info,,n
.L11548:
	.sleb128	22
	.4byte		.L11549-.L2
	.byte		0x1
	.section	.debug_info,,n
	.sleb128	23
	.4byte		.L11487
	.sleb128	0
.L11549:
.L11547:
	.sleb128	19
	.4byte		.L11548
.L11546:
	.sleb128	16
	.byte		"Os_PrepareContextFunctionType"
	.byte		0
	.4byte		.L11547
.L11545:
	.sleb128	18
	.4byte		.L11546
.L11556:
	.sleb128	16
	.byte		"Os_StackType"
	.byte		0
	.4byte		.L11435
.L11555:
	.sleb128	19
	.4byte		.L11556
	.section	.debug_info,,n
.L11553:
	.sleb128	24
	.4byte		.L11554-.L2
	.4byte		.L11555
	.byte		0x1
	.sleb128	23
	.4byte		.L11488
	.sleb128	0
.L11554:
.L11552:
	.sleb128	19
	.4byte		.L11553
.L11551:
	.sleb128	16
	.byte		"Os_GetStackPointerFunctionType"
	.byte		0
	.4byte		.L11552
.L11550:
	.sleb128	18
	.4byte		.L11551
.L11558:
	.sleb128	16
	.byte		"Os_IsrDynInitType"
	.byte		0
	.4byte		.L11559
.L11560:
	.sleb128	16
	.byte		"Os_SchedulerDynInitType"
	.byte		0
	.4byte		.L11561
.L11564:
	.sleb128	16
	.byte		"Os_ApplicationStatType"
	.byte		0
	.4byte		.L11565
.L11563:
	.sleb128	18
	.4byte		.L11564
.L11562:
	.sleb128	19
	.4byte		.L11563
.L11567:
	.sleb128	16
	.byte		"Os_DispatcherType"
	.byte		0
	.4byte		.L11568
.L11569:
	.sleb128	16
	.byte		"Os_PublicData_NoInitType"
	.byte		0
	.4byte		.L11570
.L11572:
	.sleb128	16
	.byte		"Os_SchedulerDynType"
	.byte		0
	.4byte		.L11573
.L11574:
	.sleb128	16
	.byte		"Os_IsrDynType"
	.byte		0
	.4byte		.L11575
.L11578:
	.sleb128	18
	.4byte		.L11491
.L11577:
	.sleb128	19
	.4byte		.L11578
.L11580:
	.sleb128	16
	.byte		"Os_ScheduleType"
	.byte		0
	.4byte		.L11581
.L11582:
	.sleb128	16
	.byte		"Os_PriorityType"
	.byte		0
	.4byte		.L11435
.L11583:
	.sleb128	16
	.byte		"Os_SchedulerQueueElementType"
	.byte		0
	.4byte		.L11584
.L11587:
	.sleb128	19
	.4byte		.L11584
.L11589:
	.sleb128	16
	.byte		"Os_IsrRegister_t"
	.byte		0
	.4byte		.L11435
.L11590:
	.sleb128	16
	.byte		"boolean"
	.byte		0
	.4byte		.L11485
.L11594:
	.sleb128	16
	.byte		"Os_IsrPlatformConfigType"
	.byte		0
	.4byte		.L11595
.L11593:
	.sleb128	18
	.4byte		.L11594
.L11592:
	.sleb128	19
	.4byte		.L11593
.L11598:
	.sleb128	16
	.byte		"Os_IsrApiTable"
	.byte		0
	.4byte		.L11599
.L11597:
	.sleb128	18
	.4byte		.L11598
.L11596:
	.sleb128	19
	.4byte		.L11597
.L11600:
	.sleb128	20
	.4byte		.L11601-.L2
	.4byte		.L11435
	.sleb128	21
	.uleb128	7
	.sleb128	0
.L11601:
.L11604:
	.sleb128	16
	.byte		"Os_DispatchKindType"
	.byte		0
	.4byte		.L11605
.L11607:
	.sleb128	16
	.byte		"ProcType"
	.byte		0
	.4byte		.L11434
.L11606:
	.sleb128	16
	.byte		"ISRType"
	.byte		0
	.4byte		.L11607
.L11609:
	.sleb128	16
	.byte		"Os_APICallType"
	.byte		0
	.4byte		.L11610
.L11608:
	.sleb128	19
	.4byte		.L11609
.L11612:
	.sleb128	16
	.byte		"Os_API_LockType"
	.byte		0
	.4byte		.L11613
.L11616:
	.sleb128	22
	.4byte		.L11617-.L2
	.byte		0x1
.L11618:
	.sleb128	19
	.4byte		.L11610
	.sleb128	23
	.4byte		.L11618
.L11619:
	.sleb128	18
	.4byte		.L11577
	.sleb128	23
	.4byte		.L11619
	.sleb128	0
.L11617:
.L11615:
	.sleb128	19
	.4byte		.L11616
.L11614:
	.sleb128	16
	.byte		"Os_API_Func_Type"
	.byte		0
	.4byte		.L11615
.L11622:
	.sleb128	16
	.byte		"Os_API_StartOsType"
	.byte		0
	.4byte		.L11623
.L11624:
	.sleb128	16
	.byte		"Os_API_ShutdownOsType"
	.byte		0
	.4byte		.L11625
.L11626:
	.sleb128	16
	.byte		"Os_API_ShutdownOsInternalType"
	.byte		0
	.4byte		.L11627
.L11628:
	.sleb128	16
	.byte		"Os_API_ShutdownAllCoresType"
	.byte		0
	.4byte		.L11629
.L11630:
	.sleb128	16
	.byte		"Os_API_GetNumberOfActivatedCoresType"
	.byte		0
	.4byte		.L11631
.L11632:
	.sleb128	16
	.byte		"Os_API_ApiStartCoreType"
	.byte		0
	.4byte		.L11633
.L11634:
	.sleb128	16
	.byte		"Os_API_StartNonAutosarCoreType"
	.byte		0
	.4byte		.L11635
.L11636:
	.sleb128	16
	.byte		"Os_API_GetCoreIDType"
	.byte		0
	.4byte		.L11637
.L11638:
	.sleb128	16
	.byte		"Os_API_ActivateTaskType"
	.byte		0
	.4byte		.L11639
.L11640:
	.sleb128	16
	.byte		"Os_API_ChainTaskType"
	.byte		0
	.4byte		.L11641
.L11642:
	.sleb128	16
	.byte		"Os_API_GetTaskIDType"
	.byte		0
	.4byte		.L11643
.L11644:
	.sleb128	16
	.byte		"Os_API_GetTaskStateType"
	.byte		0
	.4byte		.L11645
.L11646:
	.sleb128	16
	.byte		"Os_API_SetEventType"
	.byte		0
	.4byte		.L11647
.L11648:
	.sleb128	16
	.byte		"Os_API_ClearEventType"
	.byte		0
	.4byte		.L11649
.L11650:
	.sleb128	16
	.byte		"Os_API_GetEventType"
	.byte		0
	.4byte		.L11651
.L11652:
	.sleb128	16
	.byte		"Os_API_WaitEventType"
	.byte		0
	.4byte		.L11653
.L11654:
	.sleb128	16
	.byte		"Os_API_GetResourceType"
	.byte		0
	.4byte		.L11655
.L11656:
	.sleb128	16
	.byte		"Os_API_ReleaseResourceType"
	.byte		0
	.4byte		.L11657
.L11658:
	.sleb128	16
	.byte		"Os_API_GetAlarmBaseType"
	.byte		0
	.4byte		.L11659
.L11660:
	.sleb128	16
	.byte		"Os_API_GetAlarmType"
	.byte		0
	.4byte		.L11661
.L11662:
	.sleb128	16
	.byte		"Os_API_SetRelAlarmType"
	.byte		0
	.4byte		.L11663
.L11664:
	.sleb128	16
	.byte		"Os_API_SetAbsAlarmType"
	.byte		0
	.4byte		.L11665
.L11666:
	.sleb128	16
	.byte		"Os_API_CancelAlarmType"
	.byte		0
	.4byte		.L11667
.L11668:
	.sleb128	16
	.byte		"Os_API_GetApplicationStateType"
	.byte		0
	.4byte		.L11669
.L11670:
	.sleb128	16
	.byte		"Os_API_TerminateApplicationType"
	.byte		0
	.4byte		.L11671
.L11672:
	.sleb128	16
	.byte		"Os_API_GetApplicationIDType"
	.byte		0
	.4byte		.L11673
.L11674:
	.sleb128	16
	.byte		"Os_API_GetISRIDType"
	.byte		0
	.4byte		.L11675
.L11676:
	.sleb128	16
	.byte		"Os_API_GetActiveApplicationModeType"
	.byte		0
	.4byte		.L11677
.L11678:
	.sleb128	16
	.byte		"Os_API_IncrementCounterType"
	.byte		0
	.4byte		.L11679
.L11680:
	.sleb128	16
	.byte		"Os_API_GetCounterValueType"
	.byte		0
	.4byte		.L11681
.L11682:
	.sleb128	16
	.byte		"Os_API_GetElapsedValueType"
	.byte		0
	.4byte		.L11683
.L11684:
	.sleb128	16
	.byte		"Os_API_StartScheduleTableAbsType"
	.byte		0
	.4byte		.L11685
.L11686:
	.sleb128	16
	.byte		"Os_API_StartScheduleTableRelType"
	.byte		0
	.4byte		.L11687
.L11688:
	.sleb128	16
	.byte		"Os_API_StopScheduleTableType"
	.byte		0
	.4byte		.L11689
.L11690:
	.sleb128	16
	.byte		"Os_API_GetScheduleTableStatusType"
	.byte		0
	.4byte		.L11691
.L11692:
	.sleb128	16
	.byte		"Os_API_NextScheduleTableType"
	.byte		0
	.4byte		.L11693
.L11694:
	.sleb128	16
	.byte		"Os_API_StartScheduleTableSynchronType"
	.byte		0
	.4byte		.L11695
.L11696:
	.sleb128	16
	.byte		"Os_API_SyncScheduleTableType"
	.byte		0
	.4byte		.L11697
.L11698:
	.sleb128	16
	.byte		"Os_API_SetScheduleTableAsyncType"
	.byte		0
	.4byte		.L11699
.L11700:
	.sleb128	16
	.byte		"Os_API_CheckObjectAccessType"
	.byte		0
	.4byte		.L11701
.L11702:
	.sleb128	16
	.byte		"Os_API_CheckObjectOwnershipType"
	.byte		0
	.4byte		.L11703
.L11704:
	.sleb128	16
	.byte		"Os_API_CallTrustedFunctionType"
	.byte		0
	.4byte		.L11705
.L11706:
	.sleb128	16
	.byte		"Os_API_StackUsageType"
	.byte		0
	.4byte		.L11707
.L11708:
	.sleb128	16
	.byte		"Os_API_GetSpinlockType"
	.byte		0
	.4byte		.L11709
.L11710:
	.sleb128	16
	.byte		"Os_API_ReleaseSpinlockType"
	.byte		0
	.4byte		.L11711
.L11712:
	.sleb128	16
	.byte		"Os_API_TryToGetSpinlockType"
	.byte		0
	.4byte		.L11713
.L11714:
	.sleb128	16
	.byte		"Os_API_IocTransferType"
	.byte		0
	.4byte		.L11715
.L11716:
	.sleb128	16
	.byte		"Os_API_ControlIdleType"
	.byte		0
	.4byte		.L11717
.L11719:
	.sleb128	16
	.byte		"IdleModeType"
	.byte		0
	.4byte		.L11720
.L11724:
	.sleb128	16
	.byte		"Os_IOC_ChannelStatType"
	.byte		0
	.4byte		.L11725
.L11723:
	.sleb128	18
	.4byte		.L11724
.L11722:
	.sleb128	19
	.4byte		.L11723
	.section	.debug_info,,n
.L11731:
	.sleb128	25
	.byte		"void"
	.byte		0
	.byte		0x0
.L11730:
	.sleb128	19
	.4byte		.L11731
.L11728:
	.sleb128	20
	.4byte		.L11729-.L2
	.4byte		.L11730
	.sleb128	21
	.uleb128	1
	.sleb128	0
.L11729:
.L11727:
	.sleb128	16
	.byte		"Os_IOC_DataType"
	.byte		0
	.4byte		.L11728
.L11726:
	.sleb128	19
	.4byte		.L11727
.L11733:
	.sleb128	16
	.byte		"SpinlockIdType"
	.byte		0
	.4byte		.L11423
.L11735:
	.sleb128	16
	.byte		"TryToGetSpinlockType"
	.byte		0
	.4byte		.L11736
.L11734:
	.sleb128	19
	.4byte		.L11735
.L11740:
	.sleb128	16
	.byte		"TaskType"
	.byte		0
	.4byte		.L11607
.L11741:
	.sleb128	19
	.4byte		.L11484
.L11743:
	.sleb128	16
	.byte		"TrustedFunctionIndexType"
	.byte		0
	.4byte		.L11435
.L11744:
	.sleb128	16
	.byte		"TrustedFunctionParameterRefType"
	.byte		0
	.4byte		.L11730
.L11745:
	.sleb128	16
	.byte		"Os_TrustedFunctionReturnValueType"
	.byte		0
	.4byte		.L11746
.L11748:
	.sleb128	16
	.byte		"ApplicationType"
	.byte		0
	.4byte		.L11484
.L11749:
	.sleb128	16
	.byte		"ObjectTypeType"
	.byte		0
	.4byte		.L11750
.L11754:
	.sleb128	16
	.byte		"TickType"
	.byte		0
	.4byte		.L11435
.L11758:
	.sleb128	19
	.4byte		.L11754
.L11757:
	.sleb128	16
	.byte		"TickRefType"
	.byte		0
	.4byte		.L11758
.L11762:
	.sleb128	16
	.byte		"AlarmBaseType"
	.byte		0
	.4byte		.L11763
.L11761:
	.sleb128	19
	.4byte		.L11762
.L11760:
	.sleb128	16
	.byte		"AlarmBaseRefType"
	.byte		0
	.4byte		.L11761
.L11765:
	.sleb128	16
	.byte		"ScheduleTableType"
	.byte		0
	.4byte		.L11435
.L11772:
	.sleb128	16
	.byte		"ScheduleTableStatusType"
	.byte		0
	.4byte		.L11773
.L11771:
	.sleb128	19
	.4byte		.L11772
.L11770:
	.sleb128	16
	.byte		"ScheduleTableStatusRefType"
	.byte		0
	.4byte		.L11771
.L11778:
	.sleb128	16
	.byte		"CounterType"
	.byte		0
	.4byte		.L11435
.L11782:
	.sleb128	22
	.4byte		.L11783-.L2
	.byte		0x1
	.sleb128	23
	.4byte		.L11618
	.sleb128	0
.L11783:
.L11781:
	.sleb128	19
	.4byte		.L11782
.L11780:
	.sleb128	16
	.byte		"LightServiceFunctionType"
	.byte		0
	.4byte		.L11781
.L11787:
	.sleb128	16
	.byte		"RestartType"
	.byte		0
	.4byte		.L11484
.L11792:
	.sleb128	16
	.byte		"ApplicationStateType"
	.byte		0
	.4byte		.L11484
.L11791:
	.sleb128	19
	.4byte		.L11792
.L11790:
	.sleb128	16
	.byte		"ApplicationStateRefType"
	.byte		0
	.4byte		.L11791
.L11796:
	.sleb128	17
	.byte		"unsigned long long"
	.byte		0
	.byte		0x7
	.byte		0x8
.L11795:
	.sleb128	16
	.byte		"uint64"
	.byte		0
	.4byte		.L11796
.L11794:
	.sleb128	16
	.byte		"EventMaskType"
	.byte		0
	.4byte		.L11795
.L11799:
	.sleb128	19
	.4byte		.L11794
.L11798:
	.sleb128	16
	.byte		"EventMaskRefType"
	.byte		0
	.4byte		.L11799
.L11805:
	.sleb128	16
	.byte		"TaskStateType"
	.byte		0
	.4byte		.L11806
.L11804:
	.sleb128	19
	.4byte		.L11805
.L11803:
	.sleb128	16
	.byte		"TaskStateRefType"
	.byte		0
	.4byte		.L11804
.L11809:
	.sleb128	19
	.4byte		.L11740
.L11808:
	.sleb128	16
	.byte		"TaskRefType"
	.byte		0
	.4byte		.L11809
.L11813:
	.sleb128	16
	.byte		"ResourceType"
	.byte		0
	.4byte		.L11435
.L11816:
	.sleb128	16
	.byte		"AppModeType"
	.byte		0
	.4byte		.L11435
.L11821:
	.sleb128	16
	.byte		"Os_CoreShutdownType"
	.byte		0
	.4byte		.L11822
.L11825:
	.sleb128	19
	.4byte		.L11483
.L11832:
	.sleb128	16
	.byte		"Os_IOC_ChannelDynType"
	.byte		0
	.4byte		.L11833
.L11831:
	.sleb128	19
	.4byte		.L11832
.L11830:
	.sleb128	18
	.4byte		.L11831
.L11834:
	.sleb128	16
	.byte		"Os_IOC_ChannelSizeType"
	.byte		0
	.4byte		.L11423
.L11835:
	.sleb128	18
	.4byte		.L11730
.L11836:
	.sleb128	18
	.4byte		.L11423
.L11838:
	.sleb128	16
	.byte		"Os_IOC_DataCountType"
	.byte		0
	.4byte		.L11484
.L11837:
	.sleb128	18
	.4byte		.L11838
.L11842:
	.sleb128	16
	.byte		"Os_IOC_DataDescriptorType"
	.byte		0
	.4byte		.L11843
.L11841:
	.sleb128	18
	.4byte		.L11842
.L11840:
	.sleb128	19
	.4byte		.L11841
.L11839:
	.sleb128	18
	.4byte		.L11840
.L11846:
	.sleb128	16
	.byte		"Os_LockResourceType"
	.byte		0
	.4byte		.L11484
.L11845:
	.sleb128	19
	.4byte		.L11846
.L11844:
	.sleb128	18
	.4byte		.L11845
.L11849:
	.sleb128	16
	.byte		"Os_IOC_DataLengthType"
	.byte		0
	.4byte		.L11423
.L11848:
	.sleb128	18
	.4byte		.L11849
.L11851:
	.sleb128	16
	.byte		"Os_IOC_DataOffsetType"
	.byte		0
	.4byte		.L11423
.L11850:
	.sleb128	18
	.4byte		.L11851
.L11856:
	.sleb128	16
	.byte		"Os_AlarmDynType"
	.byte		0
	.4byte		.L11857
.L11855:
	.sleb128	19
	.4byte		.L11856
.L11854:
	.sleb128	18
	.4byte		.L11855
.L11861:
	.sleb128	16
	.byte		"Os_CounterStatType"
	.byte		0
	.4byte		.L11862
.L11860:
	.sleb128	18
	.4byte		.L11861
.L11859:
	.sleb128	19
	.4byte		.L11860
.L11858:
	.sleb128	18
	.4byte		.L11859
.L11863:
	.sleb128	18
	.4byte		.L11474
.L11867:
	.sleb128	16
	.byte		"Os_AlarmAutoStartType"
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
.L11872:
	.sleb128	16
	.byte		"Os_AccessStorageType"
	.byte		0
	.4byte		.L11435
.L11871:
	.sleb128	18
	.4byte		.L11872
.L11870:
	.sleb128	19
	.4byte		.L11871
.L11869:
	.sleb128	18
	.4byte		.L11870
.L11873:
	.sleb128	18
	.4byte		.L11562
.L11875:
	.sleb128	18
	.4byte		.L11754
.L11877:
	.sleb128	16
	.byte		"Os_AlarmStartKindType"
	.byte		0
	.4byte		.L11878
.L11876:
	.sleb128	18
	.4byte		.L11877
.L11881:
	.sleb128	16
	.byte		"Os_AlarmActionKindType"
	.byte		0
	.4byte		.L11882
.L11880:
	.sleb128	18
	.4byte		.L11881
.L11884:
	.sleb128	16
	.byte		"Os_AlarmActionDataType"
	.byte		0
	.4byte		.L11885
.L11883:
	.sleb128	18
	.4byte		.L11884
.L11887:
	.sleb128	16
	.byte		"Os_AlarmStateType"
	.byte		0
	.4byte		.L11888
.L11891:
	.sleb128	16
	.byte		"Os_AlarmActionSeEventType"
	.byte		0
	.4byte		.L11892
.L11890:
	.sleb128	18
	.4byte		.L11891
.L11894:
	.sleb128	16
	.byte		"Os_AlarmActionActivateTaskType"
	.byte		0
	.4byte		.L11895
.L11893:
	.sleb128	18
	.4byte		.L11894
.L11897:
	.sleb128	16
	.byte		"Os_AlarmActionIncrementCounterType"
	.byte		0
	.4byte		.L11898
.L11896:
	.sleb128	18
	.4byte		.L11897
.L11900:
	.sleb128	18
	.4byte		.L11778
.L11902:
	.sleb128	18
	.4byte		.L11740
.L11903:
	.sleb128	18
	.4byte		.L11794
.L11907:
	.sleb128	16
	.byte		"Os_HookIDType"
	.byte		0
	.4byte		.L11423
.L11912:
	.sleb128	16
	.byte		"Os_ProcDynType"
	.byte		0
	.4byte		.L11913
.L11911:
	.sleb128	19
	.4byte		.L11912
.L11910:
	.sleb128	18
	.4byte		.L11911
.L11917:
	.sleb128	16
	.byte		"Os_ProcStackType"
	.byte		0
	.4byte		.L11918
.L11916:
	.sleb128	18
	.4byte		.L11917
.L11915:
	.sleb128	19
	.4byte		.L11916
.L11914:
	.sleb128	18
	.4byte		.L11915
.L11920:
	.sleb128	16
	.byte		"Os_ProcKindType"
	.byte		0
	.4byte		.L11921
.L11919:
	.sleb128	18
	.4byte		.L11920
.L11922:
	.sleb128	18
	.4byte		.L11582
.L11924:
	.sleb128	16
	.byte		"Os_ActivationCountType"
	.byte		0
	.4byte		.L11435
.L11923:
	.sleb128	18
	.4byte		.L11924
.L11925:
	.sleb128	18
	.4byte		.L11555
.L11929:
	.sleb128	22
	.4byte		.L11930-.L2
	.byte		0x1
	.sleb128	0
.L11930:
.L11928:
	.sleb128	19
	.4byte		.L11929
.L11927:
	.sleb128	16
	.byte		"Os_ProcEntryPointType"
	.byte		0
	.4byte		.L11928
.L11926:
	.sleb128	18
	.4byte		.L11927
.L11931:
	.sleb128	18
	.4byte		.L11813
.L11936:
	.sleb128	16
	.byte		"Os_ResourceStatType"
	.byte		0
	.4byte		.L11937
.L11935:
	.sleb128	18
	.4byte		.L11936
.L11934:
	.sleb128	19
	.4byte		.L11935
.L11933:
	.sleb128	16
	.byte		"Os_ResourceStack"
	.byte		0
	.4byte		.L11934
.L11932:
	.sleb128	19
	.4byte		.L11933
.L11938:
	.sleb128	18
	.4byte		.L11587
.L11939:
	.sleb128	18
	.4byte		.L11592
.L11942:
	.sleb128	16
	.byte		"Os_StackSizeType"
	.byte		0
	.4byte		.L11435
.L11941:
	.sleb128	18
	.4byte		.L11942
.L11944:
	.sleb128	16
	.byte		"Os_ProcContexStateType"
	.byte		0
	.4byte		.L11945
.L11947:
	.sleb128	18
	.4byte		.L11948
.L11946:
	.sleb128	19
	.4byte		.L11947
.L11952:
	.sleb128	16
	.byte		"Os_CounterKindType"
	.byte		0
	.4byte		.L11953
.L11951:
	.sleb128	18
	.4byte		.L11952
.L11954:
	.sleb128	18
	.4byte		.L11434
.L11957:
	.sleb128	16
	.byte		"Os_CounterDynType"
	.byte		0
	.4byte		.L11958
.L11956:
	.sleb128	19
	.4byte		.L11957
.L11955:
	.sleb128	18
	.4byte		.L11956
.L11961:
	.sleb128	16
	.byte		"Os_CounterEPType"
	.byte		0
	.4byte		.L11962
.L11960:
	.sleb128	19
	.4byte		.L11961
.L11959:
	.sleb128	18
	.4byte		.L11960
.L11965:
	.sleb128	16
	.byte		"Os_CounterEPActionType"
	.byte		0
	.4byte		.L11966
.L11964:
	.sleb128	19
	.4byte		.L11965
.L11963:
	.sleb128	18
	.4byte		.L11964
.L11968:
	.sleb128	16
	.byte		"Os_TimerType"
	.byte		0
	.4byte		.L11435
.L11967:
	.sleb128	18
	.4byte		.L11968
.L11972:
	.sleb128	16
	.byte		"Os_CounterActionOwnerType"
	.byte		0
	.4byte		.L11973
.L11976:
	.sleb128	18
	.4byte		.L11733
.L11979:
	.sleb128	16
	.byte		"Os_SpinlockDynType"
	.byte		0
	.4byte		.L11980
.L11978:
	.sleb128	19
	.4byte		.L11979
.L11977:
	.sleb128	18
	.4byte		.L11978
.L11985:
	.sleb128	16
	.byte		"Os_ApplicationDynType"
	.byte		0
	.4byte		.L11986
.L11984:
	.sleb128	19
	.4byte		.L11985
.L11983:
	.sleb128	18
	.4byte		.L11984
.L11987:
	.sleb128	18
	.4byte		.L11748
.L11989:
	.sleb128	16
	.byte		"Os_ApplicationKindType"
	.byte		0
	.4byte		.L11990
.L11988:
	.sleb128	18
	.4byte		.L11989
.L11994:
	.sleb128	22
	.4byte		.L11995-.L2
	.byte		0x1
	.sleb128	23
	.4byte		.L11483
	.sleb128	0
.L11995:
.L11993:
	.sleb128	19
	.4byte		.L11994
.L11992:
	.sleb128	16
	.byte		"Os_ShutdownHookFuncType"
	.byte		0
	.4byte		.L11993
.L11991:
	.sleb128	18
	.4byte		.L11992
.L11999:
	.sleb128	22
	.4byte		.L12000-.L2
	.byte		0x1
	.sleb128	0
.L12000:
.L11998:
	.sleb128	19
	.4byte		.L11999
.L11997:
	.sleb128	16
	.byte		"Os_StartUpHookFuncType"
	.byte		0
	.4byte		.L11998
.L11996:
	.sleb128	18
	.4byte		.L11997
.L12004:
	.sleb128	22
	.4byte		.L12005-.L2
	.byte		0x1
	.sleb128	23
	.4byte		.L11483
	.sleb128	0
.L12005:
.L12003:
	.sleb128	19
	.4byte		.L12004
.L12002:
	.sleb128	16
	.byte		"Os_ErrorHookFuncType"
	.byte		0
	.4byte		.L12003
.L12001:
	.sleb128	18
	.4byte		.L12002
.L12008:
	.sleb128	18
	.4byte		.L11607
.L12007:
	.sleb128	19
	.4byte		.L12008
.L12006:
	.sleb128	18
	.4byte		.L12007
.L12010:
	.sleb128	19
	.4byte		.L11900
.L12009:
	.sleb128	18
	.4byte		.L12010
.L12012:
	.sleb128	19
	.4byte		.L11445
.L12011:
	.sleb128	18
	.4byte		.L12012
.L12015:
	.sleb128	18
	.4byte		.L11765
.L12014:
	.sleb128	19
	.4byte		.L12015
.L12013:
	.sleb128	18
	.4byte		.L12014
.L12020:
	.sleb128	16
	.byte		"Os_ResourceDynType"
	.byte		0
	.4byte		.L12021
.L12019:
	.sleb128	19
	.4byte		.L12020
.L12024:
	.sleb128	16
	.byte		"Os_ErrorType"
	.byte		0
	.4byte		.L12025
.L12026:
	.sleb128	16
	.byte		"Os_ExceptionStatusType"
	.byte		0
	.4byte		.L12027
.L12032:
	.sleb128	22
	.4byte		.L12033-.L2
	.byte		0x1
	.sleb128	0
.L12033:
.L12031:
	.sleb128	19
	.4byte		.L12032
.L12030:
	.sleb128	16
	.byte		"Os_IsrHandlerFuncType"
	.byte		0
	.4byte		.L12031
.L12029:
	.sleb128	18
	.4byte		.L12030
.L12035:
	.sleb128	16
	.byte		"Os_ExceptionTypeType"
	.byte		0
	.4byte		.L12036
.L12039:
	.sleb128	16
	.byte		"Os_ShudownErrorType"
	.byte		0
	.4byte		.L12040
.L12041:
	.sleb128	16
	.byte		"Os_ParameterErrorType"
	.byte		0
	.4byte		.L12042
.L12043:
	.sleb128	16
	.byte		"Os_ServiceErrorType"
	.byte		0
	.4byte		.L12044
.L12046:
	.sleb128	16
	.byte		"ServiceTraceType"
	.byte		0
	.4byte		.L11484
.L12047:
	.sleb128	16
	.byte		"OSServiceIdType"
	.byte		0
	.4byte		.L12048
.L12050:
	.sleb128	16
	.byte		"TryToGetSpinlockRefType"
	.byte		0
	.4byte		.L11734
.L12052:
	.sleb128	16
	.byte		"Os_SystemInternalErrorType"
	.byte		0
	.4byte		.L12053
.L12059:
	.sleb128	18
	.4byte		.L11435
.L12061:
	.sleb128	16
	.byte		"Os_IsrPlatformLevelType"
	.byte		0
	.4byte		.L11423
.L12060:
	.sleb128	18
	.4byte		.L12061
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11411:
	.sleb128	0
.L11407:

	.section	.debug_loc,,n
	.align	0
.L11425:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locend
.L11432:
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),3
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),0
	.d2locend
.L11437:
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo6),3
	.d2locend
.L11447:
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo9),3
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo11),0
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo13),0
	.d2locend
.L11453:
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo15),3
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo17),31
	.d2locend
.L11459:
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo19),3
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo21),31
	.d2locend
.L11461:
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo22),3
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo21),31
	.d2locend
.L11472:
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo25),30
	.d2locreg	%offsetof(.Llo26), %offsetof(.Llo27),0
	.d2locreg	%offsetof(.Llo28), %offsetof(.Llo21),30
	.d2locend
.L11478:
	.d2locreg	%offsetof(.Llo26), %offsetof(.Llo29),4
	.d2locreg	%offsetof(.Llo30), %offsetof(.Llo31),4
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo33),4
	.d2locreg	%offsetof(.Llo34), %offsetof(.Llo35),4
	.d2locreg	%offsetof(.Llo36), %offsetof(.Llo37),4
	.d2locreg	%offsetof(.Llo38), %offsetof(.Llo39),4
	.d2locend
.L11492:
	.d2locreg	%offsetof(.Llo40), %offsetof(.Llo41),3
	.d2locreg	%offsetof(.Llo42), %offsetof(.Llo43),5
	.d2locend
.L11493:
	.d2locreg	%offsetof(.Llo40), %offsetof(.Llo44),4
	.d2locreg	%offsetof(.Llo41), %offsetof(.Llo45),6
	.d2locreg	%offsetof(.Llo46), %offsetof(.Llo43),6
	.d2locend
.L11495:
	.d2locreg	%offsetof(.Llo47), %offsetof(.Llo48),3
	.d2locreg	%offsetof(.Llo49), %offsetof(.Llo45),3
	.d2locreg	%offsetof(.Llo50), %offsetof(.Llo51),3
	.d2locreg	%offsetof(.Llo43), %offsetof(.Llo52),3
	.d2locend
.L11501:
	.d2locreg	%offsetof(.Llo41), %offsetof(.Llo53),3
	.d2locreg	%offsetof(.Llo54), %offsetof(.Llo42),3
	.d2locreg	%offsetof(.Llo47), %offsetof(.Llo55),4
	.d2locend
.L11507:
	.d2locreg	%offsetof(.Llo56), %offsetof(.Llo57),3
	.d2locreg	%offsetof(.Llo58), %offsetof(.Llo59),7
	.d2locend
.L11508:
	.d2locreg	%offsetof(.Llo56), %offsetof(.Llo60),4
	.d2locreg	%offsetof(.Llo58), %offsetof(.Llo59),8
	.d2locreg	%offsetof(.Llo61), %offsetof(.Llo62),8
	.d2locreg	%offsetof(.Llo63), %offsetof(.Llo64),8
	.d2locend
.L11510:
	.d2locreg	%offsetof(.Llo65), %offsetof(.Llo66),3
	.d2locreg	%offsetof(.Llo67), %offsetof(.Llo63),3
	.d2locreg	%offsetof(.Llo64), %offsetof(.Llo68),3
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "Os_Alarm_Err_Dyn"
	.wrcm.nstrlist "calls", "Os_Isr_GetState"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Os_Alarm_Err_Stat"
	.wrcm.nstrlist "calls", "Os_Access_Check","Os_Alarm_CheckId"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Os_AlarmCounterIndication"
	.wrcm.nstrlist "calls", "Os_Alarm_CheckId","Os_CounterRegisterIndication","Os_CounterRel2Abs","Os_DispatchActivateTask","Os_DispatchIncrementCounter","Os_DispatchSetEvent","Os_ShutdownAllCores"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Os_AlarmKill"
	.wrcm.nstrlist "calls", "Os_CounterCancelIndication"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Os_Alarm_CheckId"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Os_Alarm_Init"
	.wrcm.nint32 "frameSize", 32
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Os_Alarm.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Os_Alarm.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Os_Alarm.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Os_Alarm.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Os_Alarm.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Os_Alarm.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\Os\Os\core\ssc\make\..\src\expiry_element\alarms\Os_Alarm.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
