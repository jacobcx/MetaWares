#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Os_ScheduleTable.c"
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
.L11441:
	.section	.Os_TEXT,,c
#$$ld
.L11437:
	.0byte		.L11435
	.d2_line_start	.debug_line.Os_TEXT
	.section	.Os_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_Isr.h"
        .d2line         227,45
#$$ld
.L11444:

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
.L11445:
	.type		Os_Isr_GetState,@function
	.size		Os_Isr_GetState,.-Os_Isr_GetState
# Number of nodes = 36

# Allocations for Os_Isr_GetState
#	?a4		coreId
# FUNC(void,OS_CODE) Os_SchTblInit(CONST(CoreIdType,AUTOMATIC) coreID)
	.align		2
	.section	.Os_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\expiry_element\\schedule_table\\Os_ScheduleTable.c"
        .d2line         60,20
#$$ld
.L11457:

#$$bf	Os_SchTblInit,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r31,cr0,lr
	.globl		Os_SchTblInit
	.d2_cfa_start __cie
Os_SchTblInit:
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
#     VAR(Os_ObjectType,AUTOMATIC) schTblId;
#     for( schTblId = Os_SchTblRange[coreID].Os_ObjStartId; schTblId <= Os_SchTblRange[coreID].Os_ObjEndId; schTblId++ )
	.d2line		63
.Llo4:
	lis		r3,Os_SchTblRange@ha
.Llo5:
	e_add16i		r3,r3,Os_SchTblRange@l
	rlwinm		r5,r0,3,13,28		# coreID=r0
	lwzx		r3,r3,r5
.Llo7:
	mr		r3,r3		# schTblId=r3 schTblId=r3
.L11351:
	lis		r4,(Os_SchTblRange+4)@ha
	e_add16i		r4,r4,(Os_SchTblRange+4)@l
	rlwinm		r5,r0,3,13,28		# coreID=r0
	lwzx		r4,r4,r5
	se_cmpl		r4,r3		# schTblId=r3
	bc		1,0,.L11350	# lt
#     {
#       #ifdef OS_MODULE_SCHEDULETABLE_SYNC
#         Os_SchTblStat[schTblId].Os_SchTblRegistry->Os_SchTblDeviation            =  OS_SCHTBLDEVIATION_INVALID;
#       #endif /* OS_MODULE_SCHEDULETABLE_SYNC */
#         Os_SchTblStat[schTblId].Os_SchTblRegistry->Os_SchTblNextEP               =  NULL_PTR;
	.d2line		68
	diab.li		r31,0
	lis		r4,Os_SchTblStat@ha
	lwz		r5,Os_SchTblStat@l(r4)
	e_mulli		r6,r3,40		# schTblId=r3
	se_add		r5,r6
	lwz		r5,24(r5)
	stw		r31,4(r5)
#         Os_SchTblStat[schTblId].Os_SchTblRegistry->Os_SchTblNextSchTblId         =  OS_INVALID_SCHTBL;
	.d2line		69
	diab.li		r7,-1
	lwz		r5,Os_SchTblStat@l(r4)
	se_add		r5,r6
	lwz		r5,24(r5)
	stw		r7,8(r5)
#         Os_SchTblStat[schTblId].Os_SchTblRegistry->Os_SchTblNextSchTblBack       =  NULL_PTR;
	.d2line		70
	lwz		r5,Os_SchTblStat@l(r4)
	se_add		r5,r6
	lwz		r5,24(r5)
	stw		r31,12(r5)
#         Os_SchTblStat[schTblId].Os_SchTblRegistry->Os_SchTblStatus               =  SCHEDULETABLE_STOPPED;
	.d2line		71
	lwz		r4,Os_SchTblStat@l(r4)
	se_add		r6,r4
	lwz		r4,24(r6)
	stw		r31,0(r4)
#     }
	.d2line		72
	diab.addi		r6,r3,1		# schTblId=r3
	se_addi		r3,1		# schTblId=r3 schTblId=r3
	b		.L11351
.L11350:
# }
	.d2line		73
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
.L11458:
	.type		Os_SchTblInit,@function
	.size		Os_SchTblInit,.-Os_SchTblInit
# Number of nodes = 75

# Allocations for Os_SchTblInit
#	?a4		coreID
#	?a5		schTblId
# FUNC(void,OS_CODE) Os_SchTblKill(CONST(ScheduleTableType,AUTOMATIC) schTblId)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         78,20
#$$ld
.L11469:

#$$bf	Os_SchTblKill,interprocedural,rasave,nostackparams
	.globl		Os_SchTblKill
	.d2_cfa_start __cie
Os_SchTblKill:
.Llo8:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r5,r3		# schTblId=r5 schTblId=r3
	.d2prologue_end
# {
#     P2VAR (Os_SchTblDynType, AUTOMATIC, OS_VAR) schTblReg = Os_SchTblStat[schTblId].Os_SchTblRegistry;
	.d2line		80
.Llo9:
	lis		r3,Os_SchTblStat@ha
.Llo10:
	lwz		r4,Os_SchTblStat@l(r3)
	e_mulli		r0,r5,40		# schTblId=r5
	se_add		r4,r0
	lwz		r31,24(r4)
.Llo14:
	mr		r31,r31		# schTblReg=r31 schTblReg=r31
# 
#     if(    (SCHEDULETABLE_STOPPED != Os_SchTblGetStatus(schTblId))
	.d2line		82
	lwz		r4,Os_SchTblStat@l(r3)
	se_add		r4,r0
	lwz		r3,24(r4)
	lwz		r0,0(r3)
	se_cmpi		r0,0
	bc		1,2,.L11357	# eq
	lis		r3,Os_SchTblStat@ha
	lwz		r3,Os_SchTblStat@l(r3)
	e_mulli		r0,r5,40		# schTblId=r5
	se_add		r3,r0
	lwz		r3,24(r3)
	lwz		r0,0(r3)
	se_cmpi		r0,2
	bc		1,2,.L11357	# eq
#         && (SCHEDULETABLE_WAITING != Os_SchTblGetStatus(schTblId)))
#     {
#         Os_CounterCancelIndication(Os_SchTblStat[schTblId].Os_SchTblCounter,
	.d2line		85
	lis		r3,Os_SchTblStat@ha
	lwz		r3,Os_SchTblStat@l(r3)
	e_mulli		r0,r5,40		# schTblId=r5
	lwzx		r3,r3,r0
	diab.li		r4,2
	mr		r5,r5		# schTblId=r5 schTblId=r5
.Llo11:
	bl		Os_CounterCancelIndication
.L11357:
#                                    OS_COUNTERACTION_SCHTBL,
#                                    (Os_ObjectType)schTblId);
#     }
# 
#   #ifdef OS_MODULE_SCHEDULETABLE_SYNC
#     schTblReg->Os_SchTblDeviation =  (Os_SchTblDeviationType) 0U;
#   #endif /* OS_MODULE_SCHEDULETABLE_SYNC */
# 
#     schTblReg->Os_SchTblNextEP = NULL_PTR;
	.d2line		94
.Llo12:
	diab.li		r0,0
	stw		r0,4(r31)		# schTblReg=r31
# 
#     if ( OS_INVALID_SCHTBL != schTblReg->Os_SchTblNextSchTblId )
	.d2line		96
	lwz		r0,8(r31)		# schTblReg=r31
	cmpi		0,0,r0,-1
	bc		1,2,.L11358	# eq
	.section	.Os_TEXT,,c
.L11480:
#     {
#         CONST      (ScheduleTableType, AUTOMATIC)          nextSchTblId  = schTblReg->Os_SchTblNextSchTblId;
	.d2line		98
.Llo13:
	lwz		r0,8(r31)		# nextSchTblId=r0 schTblReg=r31
.Llo16:
	mr		r0,r0		# nextSchTblId=r0 nextSchTblId=r0
#         CONSTP2VAR (Os_SchTblDynType,  AUTOMATIC, OS_VAR)  nextSchTblReg = Os_SchTblStat[nextSchTblId].Os_SchTblRegistry;
	.d2line		99
	lis		r3,Os_SchTblStat@ha		# nextSchTblReg=r3
.Llo22:
	lwz		r3,Os_SchTblStat@l(r3)		# nextSchTblReg=r3 nextSchTblReg=r3
	e_mulli		r0,r0,40		# nextSchTblId=r0 nextSchTblId=r0
	se_add		r3,r0		# nextSchTblReg=r3 nextSchTblReg=r3 nextSchTblId=r0
	lwz		r3,24(r3)		# nextSchTblReg=r3 nextSchTblReg=r3
	mr		r3,r3		# nextSchTblReg=r3 nextSchTblReg=r3
# 
#         /* [OS414-04] */
#         schTblReg->Os_SchTblNextSchTblId       = OS_INVALID_SCHTBL;
	.d2line		102
	diab.li		r0,-1		# nextSchTblId=r0
	stw		r0,8(r31)		# schTblReg=r31 nextSchTblId=r0
#         nextSchTblReg->Os_SchTblNextSchTblBack = NULL_PTR;
	.d2line		103
	diab.li		r0,0		# nextSchTblId=r0
	stw		r0,12(r3)		# nextSchTblReg=r3 nextSchTblId=r0
# 
#         /* Previously set next SchTbl needs to be stopped and removed */
#         /* [OS414-03] */
#         nextSchTblReg->Os_SchTblStatus = SCHEDULETABLE_STOPPED;
	.d2line		107
	stw		r0,0(r3)		# nextSchTblReg=r3 nextSchTblId=r0
	.section	.Os_TEXT,,c
.L11481:
.L11358:
# 
#         OS_CALL_RTM_SCHEDULETABLE_STATE_CHANGE ( NextToStopped, nextSchTblId, OS_GETCOREID() );
#     }
# 
#     if ( NULL_PTR != schTblReg->Os_SchTblNextSchTblBack )
	.d2line		112
.Llo17:
	lwz		r0,12(r31)		# nextSchTblId=r0 schTblReg=r31
.Llo18:
	se_cmpi		r0,0		# nextSchTblId=r0
	bc		1,2,.L11359	# eq
#     {
#         schTblReg->Os_SchTblNextSchTblBack->Os_SchTblRegistry->Os_SchTblNextSchTblId =  OS_INVALID_SCHTBL;
	.d2line		114
.Llo19:
	diab.li		r0,-1		# nextSchTblId=r0
.Llo20:
	lwz		r3,12(r31)		# nextSchTblReg=r3 schTblReg=r31
.Llo23:
	lwz		r3,24(r3)		# nextSchTblReg=r3 nextSchTblReg=r3
	stw		r0,8(r3)		# nextSchTblReg=r3 nextSchTblId=r0
#         schTblReg->Os_SchTblNextSchTblBack = NULL_PTR;
	.d2line		115
	diab.li		r0,0		# nextSchTblId=r0
	stw		r0,12(r31)		# schTblReg=r31 nextSchTblId=r0
.L11359:
#     }
# 
#   #ifdef OS_CONFIG_RTM_SCHEDULETABLES
#     {
#         CONST(ScheduleTableStatusType, AUTOMATIC) prevSchTblStatus = schTblReg->Os_SchTblStatus;
#   #endif /* OS_CONFIG_RTM_SCHEDULETABLES */
# 
#     schTblReg->Os_SchTblStatus = SCHEDULETABLE_STOPPED;
	.d2line		123
.Llo21:
	diab.li		r3,0		# nextSchTblReg=r3
.Llo24:
	stw		r3,0(r31)		# schTblReg=r31 nextSchTblReg=r3
# 
#   #ifdef OS_CONFIG_RTM_SCHEDULETABLES
# 
#         switch(prevSchTblStatus)
#         {
#             case SCHEDULETABLE_NEXT:
#                 OS_CALL_RTM_SCHEDULETABLE_STATE_CHANGE(NextToStopped, schTblId, OS_GETCOREID());
#             break;
# 
#             case SCHEDULETABLE_WAITING:
#                 OS_CALL_RTM_SCHEDULETABLE_STATE_CHANGE(WaitingToStopped, schTblId, OS_GETCOREID());
#             break;
# 
#             case SCHEDULETABLE_RUNNING:
#                 OS_CALL_RTM_SCHEDULETABLE_STATE_CHANGE(RunningToStopped, schTblId, OS_GETCOREID());
#             break;
# 
#             case SCHEDULETABLE_RUNNING_AND_SYNCHRONOUS:
#                 OS_CALL_RTM_SCHEDULETABLE_STATE_CHANGE(RunningAndSynchronousToStopped, schTblId, OS_GETCOREID());
#             break;
# 
#             default:
#                 /* SCHEDULETABLE_STOPPED or can not happen */
#             break;
#         }
#     }
# 
#   #endif /* OS_CONFIG_RTM_SCHEDULETABLES */
# }
	.d2line		152
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo15:
	lwz		r0,36(r1)		# nextSchTblId=r0
	mtspr		lr,r0		# nextSchTblId=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo25:
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11470:
	.type		Os_SchTblKill,@function
	.size		Os_SchTblKill,.-Os_SchTblKill
# Number of nodes = 117

# Allocations for Os_SchTblKill
#	?a4		schTblId
#	?a5		schTblReg
#	?a6		nextSchTblId
#	?a7		nextSchTblReg
# LOCAL_INLINE FUNC(void,OS_CODE) Os_SchTblProcessEp(CONSTP2CONST(Os_SchTblEPStatType,AUTOMATIC,OS_CONST) currentEP)
	.align		1
	.section	.Os_TEXT,,c
        .d2line         156,33
#$$ld
.L11491:

#$$bf	Os_SchTblProcessEp,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Os_SchTblProcessEp:
.Llo26:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r30,r3		# currentEP=r30 currentEP=r3
	.d2prologue_end
	.section	.Os_TEXT,,c
.L11500:
# {
#     {
#         VAR(TaskType,AUTOMATIC) EPActCntr;
# 
#         /* Activate Tasks firstly [OS412] */
#         for (EPActCntr = (TaskType)0U; EPActCntr < currentEP->Os_SchTblEPTaskActCount; EPActCntr++)
	.d2line		162
.Llo27:
	diab.li		r31,0		# EPActCntr=r31
.L11364:
.Llo28:
	lwz		r0,4(r30)		# currentEP=r30
	se_cmpl		r0,r31		# EPActCntr=r31
	bc		0,1,.L11366	# le
#         {
#             Os_DispatchActivateTask(currentEP->Os_SchTblEPFirstTaskAct[EPActCntr]); /* [OS641] */
	.d2line		164
	lwz		r3,8(r30)		# currentEP=r30
	rlwinm		r0,r31,2,0,29		# EPActCntr=r31
	lwzx		r3,r3,r0
	bl		Os_DispatchActivateTask
#         }
	.d2line		165
	diab.addi		r0,r31,1		# EPActCntr=r31
	se_addi		r31,1		# EPActCntr=r31 EPActCntr=r31
	b		.L11364
.L11366:
	.section	.Os_TEXT,,c
.L11501:
	.section	.Os_TEXT,,c
.L11508:
#     }
#     {
#         VAR(uint32,AUTOMATIC) EPActCntr;
# 
#         /* Set Events secondly */
#         for (EPActCntr = 0; EPActCntr < currentEP->Os_SchTblEPEventSetCount; EPActCntr++)
	.d2line		171
.Llo32:
	diab.li		r31,0		# EPActCntr=r31
.L11367:
.Llo33:
	lwz		r0,12(r30)		# currentEP=r30
	se_cmpl		r0,r31		# EPActCntr=r31
	bc		0,1,.L11363	# le
#         {
#             Os_DispatchSetEvent( currentEP->Os_SchTblEPFirstEventSet[EPActCntr].Os_SchTblEventSetTaskId,
	.d2line		173
	lwz		r3,16(r30)		# currentEP=r30
	rlwinm		r0,r31,4,0,27		# EPActCntr=r31
	add		r4,r3,r0
	lwz		r5,8(r4)
	lwz		r6,12(r4)
	lwzx		r3,r3,r0
	bl		Os_DispatchSetEvent
#                                  currentEP->Os_SchTblEPFirstEventSet[EPActCntr].Os_SchTblEventSetMask); /* [OS642] */
# 
#         }
	.d2line		176
	diab.addi		r0,r31,1		# EPActCntr=r31
	se_addi		r31,1		# EPActCntr=r31 EPActCntr=r31
	b		.L11367
	.section	.Os_TEXT,,c
.L11509:
.L11363:
#     }
# }
	.d2line		178
	.d2epilogue_begin
.Llo29:
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo30:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo31:
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11492:
	.type		Os_SchTblProcessEp,@function
	.size		Os_SchTblProcessEp,.-Os_SchTblProcessEp
# Number of nodes = 60

# Allocations for Os_SchTblProcessEp
#	?a4		currentEP
#	?a5		EPActCntr
#	?a6		EPActCntr
# FUNC (Os_SchTblDeviationType, OS_CODE) Os_SchTblGetAllowedDeviation (CONST(ScheduleTableType, AUTOMATIC) schTblId)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         580,40
#$$ld
.L11516:

#$$bf	Os_SchTblGetAllowedDeviation,interprocedural,nostackparams

# Regs written: r0,r1,r3
	.globl		Os_SchTblGetAllowedDeviation
	.d2_cfa_start __cie
Os_SchTblGetAllowedDeviation:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
# #ifdef OS_MODULE_SCHEDULETABLE_SYNC
#     VAR(Os_SchTblDeviationType,AUTOMATIC)                  allowedDeviation;
#     CONSTP2CONST(Os_SchTblStatType, AUTOMATIC, OS_CONST)   schTblStat  =  &Os_SchTblStat[schTblId];
#     CONSTP2VAR(Os_SchTblDynType, AUTOMATIC, OS_VAR)        schTblReg   =  schTblStat->Os_SchTblRegistry;
#     P2CONST(Os_SchTblEPStatType,AUTOMATIC,OS_CONST)        currentEP;
# 
#     currentEP = schTblReg->Os_SchTblNextEP;
#     if (currentEP == NULL_PTR)
#     {
#         currentEP = schTblStat->Os_SchTblInitialEP;
#     }
# 
#     if( OS_SCHTBLDEVIATION_INVALID == schTblReg->Os_SchTblDeviation)
#     {
#         allowedDeviation = 0;
#     }
#     else if (schTblReg->Os_SchTblDeviation < 0)
#     {
#         /* [OS420] */
#         allowedDeviation = OS_SCHTBL_MAX(schTblReg->Os_SchTblDeviation, currentEP->Os_SchTblMaxShorten);
#     }
#     else
#     {
#         /* [OS417-02], [OS421] */
#         allowedDeviation = OS_SCHTBL_MIN(schTblReg->Os_SchTblDeviation, currentEP->Os_SchTblMaxLengthen);
#     }
#     return allowedDeviation;
# #else
#     return 0;
	.d2line		610
	diab.li		r3,0
# #endif /* OS_MODULE_SCHEDULETABLE_SYNC */
# 
# }
	.d2line		613
	.d2epilogue_begin
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11517:
	.type		Os_SchTblGetAllowedDeviation,@function
	.size		Os_SchTblGetAllowedDeviation,.-Os_SchTblGetAllowedDeviation
# Number of nodes = 2

# Allocations for Os_SchTblGetAllowedDeviation
#	not allocated	schTblId
# LOCAL_INLINE FUNC(void,OS_CODE) Os_SchTblRegisterNextAction( CONST(Os_ObjectType,AUTOMATIC) schTblId)
	.align		1
	.section	.Os_TEXT,,c
        .d2line         181,33
#$$ld
.L11524:

#$$bf	Os_SchTblRegisterNextAction,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Os_SchTblRegisterNextAction:
.Llo34:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r5,r3		# schTblId=r5 schTblId=r3
	.d2prologue_end
# {
#     CONSTP2CONST(Os_SchTblStatType, AUTOMATIC, OS_CONST)  schTblStat   =  &Os_SchTblStat[schTblId];
	.d2line		183
.Llo35:
	lis		r3,Os_SchTblStat@ha
.Llo36:
	lwz		r4,Os_SchTblStat@l(r3)		# schTblStat=r4
.Llo40:
	e_mulli		r3,r5,40		# schTblId=r5
	se_add		r3,r4		# schTblStat=r4
	mr		r4,r3		# schTblStat=r4 schTblStat=r3
#     P2CONST(Os_SchTblEPStatType,AUTOMATIC,OS_CONST)       currentEP  =  schTblStat->Os_SchTblRegistry->Os_SchTblNextEP;
	.d2line		184
	lwz		r3,24(r4)		# schTblStat=r4
	lwz		r6,4(r3)		# currentEP=r6
.Llo41:
	mr		r6,r6		# currentEP=r6 currentEP=r6
#     VAR(TickType,AUTOMATIC) nextActionDelay;
# 
#     /* Register next action to do */
#     if (currentEP != schTblStat->Os_SchTblFinalEP)
	.d2line		188
	lwz		r0,16(r4)		# schTblStat=r4
	se_cmpl		r0,r6		# currentEP=r6
	bc		1,2,.L11375	# eq
	.section	.Os_TEXT,,c
.L11541:
#     {
#         VAR(Os_SchTblDeviationType,TYPEDEF)  allowedDeviation;
#         VAR(TickType,AUTOMATIC)              nextEPDelay;
# 
#         /* EP registration *//*Iteration over a list of elements*/
#         schTblStat->Os_SchTblRegistry->Os_SchTblNextEP++;
	.d2line		194
.Llo42:
	lwz		r7,24(r4)		# allowedDeviation=r7 schTblStat=r4
.Llo50:
	lwz		r3,4(r7)		# schTblId=r3 allowedDeviation=r7
	se_addi		r3,20		# schTblId=r3 schTblId=r3
	stw		r3,4(r7)		# allowedDeviation=r7 schTblId=r3
# 
#         /* [OS414-02] */
#         allowedDeviation  =  Os_SchTblGetAllowedDeviation( (ScheduleTableType)schTblId );
	.d2line		197
	mr		r3,r5		# schTblId=r3 schTblId=r5
	bl		Os_SchTblGetAllowedDeviation
	mr		r7,r3		# allowedDeviation=r7 allowedDeviation=r3
#         nextEPDelay       =
	.d2line		198
	lwz		r3,24(r4)		# schTblId=r3 schTblStat=r4
	lwz		r3,4(r3)		# schTblId=r3 schTblId=r3
	lwz		r0,0(r3)		# schTblId=r3
.Llo43:
	lwz		r6,0(r6)		# currentEP=r6 currentEP=r6
	subf		r6,r6,r0		# currentEP=r6 currentEP=r6
.Llo44:
	mr		r6,r6		# nextEPDelay=r6 nextEPDelay=r6
#                     schTblStat->Os_SchTblRegistry->Os_SchTblNextEP->Os_SchTblEPDelay - currentEP->Os_SchTblEPDelay;
# 
#         /* Do not schedule to the current tick. */
#         if ( ((Os_SchTblDeviationType)nextEPDelay + allowedDeviation) == 0 )
	.d2line		202
	add.		r3,r6,r7		# nextEPDelay=?a10 allowedDeviation=?a9
	bc		0,2,.L11376	# ne
#         {
#             allowedDeviation++;
	.d2line		204
	diab.addi		r3,r7,1		# schTblId=r3 allowedDeviation=r7
	se_addi		r7,1		# allowedDeviation=r7 allowedDeviation=r7
.L11376:
#         }
# 
#       #ifdef OS_MODULE_SCHEDULETABLE_SYNC
#         schTblStat->Os_SchTblRegistry->Os_SchTblDeviation      -= allowedDeviation;   /* [OS417-03] */
#         schTblStat->Os_SchTblRegistry->Os_SynCntrDrvCntrOffset -= allowedDeviation;
#       #endif /* OS_MODULE_SCHEDULETABLE_SYNC */
# 
#         nextActionDelay = (TickType)((Os_SchTblDeviationType)nextEPDelay + allowedDeviation);
	.d2line		212
	se_add		r6,r7		# nextEPDelay=r6 nextEPDelay=r6 allowedDeviation=r7
.Llo47:
	mr		r6,r6		# nextActionDelay=r6 nextActionDelay=r6
	.section	.Os_TEXT,,c
.L11542:
.Llo51:
	b		.L11377
.L11375:
#     }
#     else /* register the end of the schedule table */
#     {
#         /* SchTbl Stop registration */
#         schTblStat->Os_SchTblRegistry->Os_SchTblNextEP  = NULL_PTR;
	.d2line		217
.Llo48:
	diab.li		r0,0
	lwz		r3,24(r4)		# schTblStat=r4
	stw		r0,4(r3)
#         nextActionDelay = schTblStat->Os_SchTblDuration - currentEP->Os_SchTblEPDelay;
	.d2line		218
	lwz		r0,20(r4)		# schTblStat=r4
.Llo45:
	lwz		r6,0(r6)		# currentEP=r6 currentEP=r6
	subf		r6,r6,r0		# currentEP=r6 currentEP=r6
.Llo46:
	mr		r6,r6		# nextActionDelay=r6 nextActionDelay=r6
.L11377:
#     }
# 
#     Os_CounterRegisterIndication(schTblStat->Os_SchTblCounter,
	.d2line		221
.Llo37:
	lwz		r3,0(r4)		# schTblId=r3 schTblStat=r4
	diab.li		r4,2		# schTblStat=r4
.Llo38:
	mr		r5,r5		# schTblId=r5 schTblId=r5
.Llo39:
	mr		r6,r6		# nextActionDelay=r6 nextActionDelay=r6
.Llo49:
	bl		Os_CounterRegisterIndication
#                                  OS_COUNTERACTION_SCHTBL,
#                                  schTblId,
#                                  nextActionDelay);
# 
# }
	.d2line		226
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
.L11525:
	.type		Os_SchTblRegisterNextAction,@function
	.size		Os_SchTblRegisterNextAction,.-Os_SchTblRegisterNextAction
# Number of nodes = 91

# Allocations for Os_SchTblRegisterNextAction
#	?a4		schTblId
#	?a5		$$2354
#	?a6		schTblStat
#	?a7		currentEP
#	?a8		nextActionDelay
#	?a9		allowedDeviation
#	?a10		nextEPDelay
# FUNC(void,OS_CODE) Os_SchTblCounterIndication(VAR(Os_ObjectType,AUTOMATIC) counterActionObject)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         234,20
#$$ld
.L11551:

#$$bf	Os_SchTblCounterIndication,interprocedural,rasave,nostackparams
	.globl		Os_SchTblCounterIndication
	.d2_cfa_start __cie
Os_SchTblCounterIndication:
.Llo52:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# counterActionObject=r31 counterActionObject=r3
	.d2prologue_end
# {
#     CONST(ScheduleTableType,AUTOMATIC)               schTblId   =  (ScheduleTableType)counterActionObject;
	.d2line		236
.Llo60:
	mr		r30,r31		# schTblId=r30 schTblId=r31
#     P2CONST(Os_SchTblStatType, AUTOMATIC, OS_CONST)  schTblStat  =  &Os_SchTblStat[schTblId];
	.d2line		237
	lis		r3,Os_SchTblStat@ha		# schTblReg=r3
.Llo53:
	lwz		r4,Os_SchTblStat@l(r3)		# schTblStat=r4 schTblReg=r3
.Llo61:
	e_mulli		r3,r30,40		# schTblReg=r3 schTblId=r30
	se_add		r3,r4		# schTblReg=r3 schTblReg=r3 schTblStat=r4
.Llo76:
	mr		r4,r3		# schTblStat=r4 schTblStat=r3
#     P2VAR(Os_SchTblDynType, AUTOMATIC, OS_VAR)       schTblReg   =  schTblStat->Os_SchTblRegistry;
	.d2line		238
.Llo62:
	lwz		r3,24(r4)		# schTblReg=r3 schTblStat=r4
.Llo77:
	mr		r3,r3		# schTblReg=r3 schTblReg=r3
# 
#     /* check if there is EP to execute in SchTbl */
#     if (schTblReg->Os_SchTblNextEP != NULL_PTR) /* [OS414-01] */
	.d2line		241
	lwz		r0,4(r3)		# schTblReg=r3
	se_cmpi		r0,0
	bc		1,2,.L11382	# eq
#     {
#       #ifdef OS_MODULE_SCHEDULETABLE_SYNC
# 
#         /* Check if Schedule table needs adjustment */
#         if ( (TickType) OS_SCHTBL_ABS (schTblStat->Os_SchTblRegistry->Os_SchTblDeviation) <=
#                                                                             schTblStat->Os_SchTblExplicitPrecision)
#         {
#           #ifdef OS_CONFIG_RTM_SCHEDULETABLES
#             CONST(ScheduleTableStatusType, AUTOMATIC) prevSchTblStatus = schTblReg->Os_SchTblStatus;
#           #endif /* OS_CONFIG_RTM_SCHEDULETABLES */
# 
#             schTblReg->Os_SchTblStatus = SCHEDULETABLE_RUNNING_AND_SYNCHRONOUS;
# 
#           #ifdef OS_CONFIG_RTM_SCHEDULETABLES
#             if(prevSchTblStatus == SCHEDULETABLE_RUNNING)
#             {
#                 OS_CALL_RTM_SCHEDULETABLE_STATE_CHANGE(RunningToRunningAndSynchronous, schTblId, OS_GETCOREID());
#             }
#           #endif /* OS_CONFIG_RTM_SCHEDULETABLES */
#         }
# 
#       #endif /* OS_MODULE_SCHEDULETABLE_SYNC */
# 
#         Os_SchTblProcessEp(schTblReg->Os_SchTblNextEP);
	.d2line		265
.Llo54:
	lwz		r3,4(r3)		# schTblReg=r3 schTblReg=r3
.Llo78:
	bl		Os_SchTblProcessEp
#         Os_SchTblRegisterNextAction((Os_ObjectType)schTblId);
	.d2line		266
	mr		r3,r30		# schTblId=r3 schTblId=r30
	bl		Os_SchTblRegisterNextAction
	b		.L11381
.L11382:
	.section	.Os_TEXT,,c
.L11561:
#     }
#     else /* schedule table is finished */
#     {
#         VAR(Os_SchTblDeviationType,TYPEDEF)  allowedDeviation;
#         VAR(ScheduleTableType,TYPEDEF)       nextSchTblId = schTblReg->Os_SchTblNextSchTblId;
	.d2line		271
.Llo63:
	lwz		r29,8(r3)		# nextSchTblId=r29 schTblReg=r3
.Llo103:
	mr		r29,r29		# nextSchTblId=r29 nextSchTblId=r29
# 
#         /* Next schedule table is activated */
#         if (nextSchTblId != OS_INVALID_SCHTBL)
	.d2line		274
	cmpi		0,0,r29,-1		# nextSchTblId=r29
	bc		1,2,.L11384	# eq
	.section	.Os_TEXT,,c
.L11569:
#         {
#             P2CONST(Os_SchTblEPStatType,AUTOMATIC,OS_CONST) firstEP = schTblStat->Os_SchTblInitialEP;
	.d2line		276
.Llo55:
	lwz		r4,12(r4)		# schTblStat=r4 schTblStat=r4
.Llo64:
	mr		r4,r4		# firstEP=r4 firstEP=r4
# 
#           #ifdef OS_CONFIG_RTM_SCHEDULETABLES
#             {
#                 CONST(ScheduleTableStatusType, AUTOMATIC) prevSchTblStatus = schTblReg->Os_SchTblStatus;
#           #endif /* OS_CONFIG_RTM_SCHEDULETABLES */
# 
#                 /* Stop current SchTbl */
#                 schTblReg->Os_SchTblStatus =  SCHEDULETABLE_STOPPED;
	.d2line		284
	diab.li		r0,0
	stw		r0,0(r3)		# schTblReg=r3
# 
#           #ifdef OS_CONFIG_RTM_SCHEDULETABLES
# 
#                 if(prevSchTblStatus == SCHEDULETABLE_RUNNING)
#                 {
#                     OS_CALL_RTM_SCHEDULETABLE_STATE_CHANGE(RunningToStopped, schTblId, OS_GETCOREID());
#                 }
#                 else
#                 {
#                     OS_CALL_RTM_SCHEDULETABLE_STATE_CHANGE(RunningAndSynchronousToStopped, schTblId, OS_GETCOREID());
#                 }
#             }
# 
#           #endif /* OS_CONFIG_RTM_SCHEDULETABLES */
# 
#             schTblReg->Os_SchTblNextSchTblId = OS_INVALID_SCHTBL;
	.d2line		300
	diab.li		r5,-1		# schTblStat=r5
.Llo65:
	stw		r5,8(r3)		# schTblReg=r3 schTblStat=r5
# 
#             /* update to the next schedule table */
#             schTblStat = &Os_SchTblStat[nextSchTblId];
	.d2line		303
	lis		r3,Os_SchTblStat@ha		# schTblReg=r3
	lwz		r5,Os_SchTblStat@l(r3)		# schTblStat=r5 schTblReg=r3
	e_mulli		r3,r29,40		# schTblReg=r3 nextSchTblId=r29
	se_add		r3,r5		# schTblReg=r3 schTblReg=r3 schTblStat=r5
.Llo79:
	mr		r5,r3		# schTblStat=r5 schTblStat=r3
# 
#             /* Carry reminded deviation */
#           #ifdef OS_MODULE_SCHEDULETABLE_SYNC
# 
#             schTblStat->Os_SchTblRegistry->Os_SchTblDeviation = schTblReg->Os_SchTblDeviation; /*[OS505]*/
# 
#           #endif /* OS_MODULE_SCHEDULETABLE_SYNC */
# 
#             schTblReg = schTblStat->Os_SchTblRegistry;
	.d2line		312
.Llo66:
	lwz		r6,24(r5)		# schTblReg=r6 schTblStat=r5
.Llo67:
	mr		r6,r6		# schTblReg=r6 schTblReg=r6
# 
#             schTblReg->Os_SchTblNextSchTblBack = NULL_PTR;
	.d2line		314
	stw		r0,12(r6)		# schTblReg=r6
# 
#             /* Skip the initial EP. */
#             if ( 0 == ( schTblStat->Os_SchTblInitialEP->Os_SchTblEPEventSetCount +
	.d2line		317
	lwz		r3,12(r5)		# schTblReg=r3 schTblStat=r5
.Llo68:
	lwz		r0,12(r3)		# schTblReg=r3
	lwz		r3,4(r3)		# schTblReg=r3 schTblReg=r3
	add.		r0,r0,r3		# schTblReg=r3
	bc		0,2,.L11385	# ne
#                         schTblStat->Os_SchTblInitialEP->Os_SchTblEPTaskActCount    ) )
#             {
#                 firstEP = schTblStat->Os_SchTblInitialEP + 1; /* Advancing pointer inside array. */
	.d2line		320
.Llo69:
	lwz		r4,12(r5)		# schTblStat=r4 schTblStat=r5
	se_addi		r4,20		# schTblStat=r4 schTblStat=r4
	mr		r4,r4		# firstEP=r4 firstEP=r4
.L11385:
#             }
# 
#             schTblReg->Os_SchTblNextEP = firstEP;
	.d2line		323
	stw		r4,4(r6)		# schTblReg=r6 firstEP=r4
#             allowedDeviation = Os_SchTblGetAllowedDeviation(nextSchTblId);
	.d2line		324
	mr		r3,r29		# nextSchTblId=r3 nextSchTblId=r29
	bl		Os_SchTblGetAllowedDeviation
.Llo90:
	mr		r0,r3		# allowedDeviation=r0 allowedDeviation=r3
# 
#             /* If the next schedule table first expiry point shall be activated now */
#             if((((Os_SchTblDeviationType)firstEP->Os_SchTblEPDelay) + allowedDeviation) == 0)
	.d2line		327
.Llo106:
	lwz		r3,0(r4)		# nextSchTblId=r3 firstEP=r4
.Llo91:
	add.		r3,r3,r0		# allowedDeviation=?a24
.Llo92:
	bc		0,2,.L11386	# ne
#             {
#             	/* [OS-MGC-0002] */
#                 /* Initialize Status */
#                 if(( schTblStat->Os_SchTblSyncStrategy == OS_IMPLICIT)
	.d2line		331
.Llo93:
	lwz		r0,4(r5)		# allowedDeviation=r0 schTblStat=r5
.Llo94:
	se_cmpi		r0,1		# allowedDeviation=r0
	bc		0,2,.L11387	# ne
#               #ifdef OS_MODULE_SCHEDULETABLE_SYNC
#                         || (schTblReg->Os_SchTblDeviation == 0)
#               #endif /* OS_MODULE_SCHEDULETABLE_SYNC */
#                         )
#                 {
#                     schTblReg->Os_SchTblStatus = SCHEDULETABLE_RUNNING_AND_SYNCHRONOUS;
	.d2line		337
.Llo70:
	diab.li		r0,4		# allowedDeviation=r0
.Llo95:
	stw		r0,0(r6)		# schTblReg=r6 allowedDeviation=r0
	b		.L11388
.L11387:
# 
#                     OS_CALL_RTM_SCHEDULETABLE_STATE_CHANGE(NextToRunningAndSynchronous, nextSchTblId, OS_GETCOREID());
#                 }
#                 else
#                 {
#                     schTblReg->Os_SchTblStatus = SCHEDULETABLE_RUNNING;
	.d2line		343
.Llo96:
	diab.li		r0,3		# allowedDeviation=r0
.Llo97:
	stw		r0,0(r6)		# schTblReg=r6 allowedDeviation=r0
.L11388:
# 
#                     OS_CALL_RTM_SCHEDULETABLE_STATE_CHANGE(NextToRunning, nextSchTblId, OS_GETCOREID());
#                 }
# 
#                 Os_SchTblProcessEp(firstEP);
	.d2line		348
.Llo80:
	mr		r3,r4		# firstEP=r3 firstEP=r4
	bl		Os_SchTblProcessEp
# 
#                 Os_SchTblRegisterNextAction((Os_ObjectType)nextSchTblId);
	.d2line		350
.Llo104:
	mr		r3,r29		# nextSchTblId=r3 nextSchTblId=r29
	bl		Os_SchTblRegisterNextAction
	b		.L11381
.L11386:
	.section	.Os_TEXT,,c
.L11575:
#             }
#             else
#             {
#                 VAR(TickType, AUTOMATIC) initialEPDelay;
# 
#                 /* [OS-MGC-0002] */
#                 /* Initialize Status */
#                 if(( schTblStat->Os_SchTblSyncStrategy == OS_IMPLICIT)
	.d2line		358
.Llo71:
	lwz		r3,4(r5)		# nextSchTblId=r3 schTblStat=r5
	se_cmpi		r3,1		# nextSchTblId=r3
	bc		0,2,.L11390	# ne
#               #ifdef OS_MODULE_SCHEDULETABLE_SYNC
#                         || (schTblReg->Os_SchTblDeviation == 0)
#               #endif /* OS_MODULE_SCHEDULETABLE_SYNC */
#                   )
#                 {
#                     schTblReg->Os_SchTblStatus = SCHEDULETABLE_RUNNING_AND_SYNCHRONOUS;
	.d2line		364
	diab.li		r3,4		# nextSchTblId=r3
	stw		r3,0(r6)		# schTblReg=r6 nextSchTblId=r3
	b		.L11391
.L11390:
# 
#                     OS_CALL_RTM_SCHEDULETABLE_STATE_CHANGE(NextToRunningAndSynchronous, nextSchTblId, OS_GETCOREID());
#                 }
#                 else
#                 {
#                     schTblReg->Os_SchTblStatus = SCHEDULETABLE_RUNNING;
	.d2line		370
	diab.li		r3,3		# nextSchTblId=r3
	stw		r3,0(r6)		# schTblReg=r6 nextSchTblId=r3
.L11391:
# 
#                     OS_CALL_RTM_SCHEDULETABLE_STATE_CHANGE(NextToRunning, nextSchTblId, OS_GETCOREID());
#                 }
# 
#                 schTblReg->Os_SchTblNextSchTblId = OS_INVALID_SCHTBL;
	.d2line		375
	diab.li		r3,-1		# nextSchTblId=r3
	stw		r3,8(r6)		# schTblReg=r6 nextSchTblId=r3
# 
#                 initialEPDelay = firstEP->Os_SchTblEPDelay;
	.d2line		377
	lwz		r6,0(r4)		# schTblReg=r6 firstEP=r4
.Llo81:
	mr		r6,r6		# initialEPDelay=r6 initialEPDelay=r6
# 
#               #ifdef OS_MODULE_SCHEDULETABLE_SYNC
#                 Os_SchTblStat[nextSchTblId].Os_SchTblRegistry->Os_SchTblDeviation      -= allowedDeviation;
#                 Os_SchTblStat[nextSchTblId].Os_SchTblRegistry->Os_SynCntrDrvCntrOffset -= allowedDeviation;
#               #endif /* OS_MODULE_SCHEDULETABLE_SYNC */
# 
#                 /* Register schTbl to counter */
#                 Os_CounterRegisterIndication(schTblStat->Os_SchTblCounter,
	.d2line		385
	lwz		r3,0(r5)		# nextSchTblId=r3 schTblStat=r5
	se_add		r6,r0		# allowedDeviation=r6 allowedDeviation=r6 initialEPDelay=r0
	diab.li		r4,2		# firstEP=r4
.Llo105:
	mr		r5,r29		# nextSchTblId=r5 nextSchTblId=r29
.Llo72:
	bl		Os_CounterRegisterIndication
	.section	.Os_TEXT,,c
.L11576:
	.section	.Os_TEXT,,c
.L11570:
.Llo98:
	b		.L11381
.L11384:
#                                              OS_COUNTERACTION_SCHTBL,
#                                              (Os_ObjectType)nextSchTblId,
#                                              ((TickType)allowedDeviation + initialEPDelay));
#             }
#         }
#         else if (OS_REPEATING == schTblStat->Os_SchTblRepeating ) /* schtbl is repeating */ /* [OS144-Conf-MGC-05] */
	.d2line		391
.Llo56:
	lwz		r0,8(r4)		# schTblStat=r4
	se_cmpi		r0,1
	bc		0,2,.L11393	# ne
#         {
#             allowedDeviation = Os_SchTblGetAllowedDeviation(schTblId);
	.d2line		393
.Llo82:
	mr		r3,r31		# counterActionObject=r3 counterActionObject=r31
	bl		Os_SchTblGetAllowedDeviation
.Llo99:
	mr		r6,r3		# allowedDeviation=r6 allowedDeviation=r3
# 
#             /* if the next schedule table first expiry point is shall activated now */
#             if((((Os_SchTblDeviationType)schTblStat->Os_SchTblInitialEP->Os_SchTblEPDelay) + allowedDeviation) == 0)
	.d2line		396
.Llo100:
	lwz		r3,12(r4)		# schTblReg=r3 schTblStat=r4
.Llo83:
	lwz		r3,0(r3)		# schTblReg=r3 schTblReg=r3
	add.		r3,r3,r6		# allowedDeviation=?a8
.Llo84:
	bc		0,2,.L11394	# ne
#             {
#                 /* reset the schedule table *//* [OS194] */
#                 schTblStat->Os_SchTblRegistry->Os_SchTblNextEP = schTblStat->Os_SchTblInitialEP;
	.d2line		399
.Llo101:
	lwz		r0,12(r4)		# schTblStat=r4
	lwz		r3,24(r4)		# schTblReg=r3 schTblStat=r4
.Llo85:
	stw		r0,4(r3)		# schTblReg=r3
# 
#                 Os_SchTblProcessEp(schTblStat->Os_SchTblInitialEP);
	.d2line		401
	lwz		r3,12(r4)		# schTblReg=r3 schTblStat=r4
.Llo86:
	bl		Os_SchTblProcessEp
#                 Os_SchTblRegisterNextAction(counterActionObject);
	.d2line		402
.Llo73:
	mr		r3,r31		# counterActionObject=r3 counterActionObject=r31
	bl		Os_SchTblRegisterNextAction
	b		.L11381
.L11394:
	.section	.Os_TEXT,,c
.L11581:
#             }
#             else
#             {
#                 VAR(TickType, AUTOMATIC)    initialEPDelay;
# 
#                 /* Os_SchTblStartRel(counterActionObject,(TickType)allowedDeviation);*/
#                 schTblStat     =  &Os_SchTblStat[schTblId];
	.d2line		409
	lis		r3,Os_SchTblStat@ha		# schTblReg=r3
.Llo87:
	lwz		r3,Os_SchTblStat@l(r3)		# schTblReg=r3 schTblReg=r3
	e_mulli		r30,r30,40		# schTblId=r30 schTblId=r30
	se_add		r3,r30		# schTblReg=r3 schTblReg=r3 schTblId=r30
.Llo74:
	mr		r3,r3		# schTblStat=r3 schTblStat=r3
#                 schTblReg      =  schTblStat->Os_SchTblRegistry;
	.d2line		410
	lwz		r4,24(r3)		# schTblStat=r4 schTblStat=r3
.Llo88:
	mr		r4,r4		# schTblReg=r4 schTblReg=r4
# 
#                 /* Initialize NextEP pointer */
#                 schTblReg->Os_SchTblNextEP        =  schTblStat->Os_SchTblInitialEP;
	.d2line		413
	lwz		r0,12(r3)		# initialEPDelay=r0 schTblStat=r3
.Llo107:
	stw		r0,4(r4)		# schTblReg=r4 initialEPDelay=r0
#                 schTblReg->Os_SchTblNextSchTblId  =  OS_INVALID_SCHTBL;
	.d2line		414
	diab.li		r0,-1		# initialEPDelay=r0
	stw		r0,8(r4)		# schTblReg=r4 initialEPDelay=r0
# 
#                 initialEPDelay = schTblStat->Os_SchTblInitialEP->Os_SchTblEPDelay;
	.d2line		416
	lwz		r4,12(r3)		# schTblReg=r4 schTblStat=r3
	lwz		r0,0(r4)		# initialEPDelay=r0 schTblReg=r4
	mr		r0,r0		# initialEPDelay=r0 initialEPDelay=r0
# 
#                 /* Register schTbl to counter */
#                 Os_CounterRegisterIndication(schTblStat->Os_SchTblCounter,
	.d2line		419
	lwz		r3,0(r3)		# schTblStat=r3 schTblStat=r3
.Llo75:
	se_add		r6,r0		# allowedDeviation=r6 allowedDeviation=r6 initialEPDelay=r0
.Llo102:
	diab.li		r4,2		# schTblReg=r4
.Llo89:
	mr		r5,r31		# counterActionObject=r5 counterActionObject=r31
	bl		Os_CounterRegisterIndication
	.section	.Os_TEXT,,c
.L11582:
.Llo57:
	b		.L11381
.L11393:
#                                              OS_COUNTERACTION_SCHTBL,
#                                              counterActionObject,
#                                              ((TickType)allowedDeviation + initialEPDelay));
#             }
#         }
#         else
#         {
#           #ifdef OS_CONFIG_RTM_SCHEDULETABLES
#             CONST(ScheduleTableStatusType, AUTOMATIC) prevSchTblStatus = schTblReg->Os_SchTblStatus;
#           #endif /* OS_CONFIG_RTM_SCHEDULETABLES */
# 
#             /* Stop current SchTbl */
#             schTblReg->Os_SchTblStatus = SCHEDULETABLE_STOPPED; /* [OS009] */
	.d2line		432
.Llo58:
	diab.li		r0,0
	stw		r0,0(r3)		# schTblReg=r3
	.section	.Os_TEXT,,c
.L11562:
.L11381:
# 
#           #ifdef OS_CONFIG_RTM_SCHEDULETABLES
#             if(prevSchTblStatus == SCHEDULETABLE_RUNNING)
#             {
#                 OS_CALL_RTM_SCHEDULETABLE_STATE_CHANGE(RunningToStopped, schTblId, OS_GETCOREID());
#             }
#             else
#             {
#                 OS_CALL_RTM_SCHEDULETABLE_STATE_CHANGE(RunningAndSynchronousToStopped, schTblId, OS_GETCOREID());
#             }
#           #endif /* OS_CONFIG_RTM_SCHEDULETABLES */
#         }
#     }
# }
	.d2line		446
	.d2epilogue_begin
.Llo59:
	lmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# allowedDeviation=r0
	mtspr		lr,r0		# allowedDeviation=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11552:
	.type		Os_SchTblCounterIndication,@function
	.size		Os_SchTblCounterIndication,.-Os_SchTblCounterIndication
# Number of nodes = 282

# Allocations for Os_SchTblCounterIndication
#	?a4		counterActionObject
#	?a5		schTblId
#	?a6		schTblStat
#	?a7		schTblReg
#	?a8		allowedDeviation
#	?a9		nextSchTblId
#	?a10		firstEP
#	?a11		initialEPDelay
#	?a12		initialEPDelay
# FUNC (StatusType, OS_CODE) Os_SchTbl_Err_Stat(
	.align		2
	.section	.Os_TEXT,,c
        .d2line         453,28
#$$ld
.L11589:

#$$bf	Os_SchTbl_Err_Stat,interprocedural,rasave,nostackparams
	.globl		Os_SchTbl_Err_Stat
	.d2_cfa_start __cie
Os_SchTbl_Err_Stat:
.Llo108:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)		# schTblId=r0
	.d2_cfa_offset    108,-1
	mr		r3,r3		# callerProc=r3 callerProc=r3
	mr		r0,r4		# schTblId=r0 schTblId=r4
	.d2prologue_end
#                                 CONSTP2CONST ( Os_ProcStatType,   AUTOMATIC, OS_CONST ) callerProc,
#                                 CONST        ( ScheduleTableType, AUTOMATIC )           schTblId
#                     )
# {
#     VAR (StatusType, AUTOMATIC ) retVal;
# 
#     if(Os_false == OS_SCHTBL_CHECKID(schTblId))
	.d2line		460
.Llo114:
	lis		r4,(Os_SchTblRange+12)@ha
.Llo115:
	lwz		r4,(Os_SchTblRange+12)@l(r4)
	se_cmpl		r4,r0		# schTblId=r0
	isel		r4,0,r4,0
.L11413:
	diab.li		r5,1
	isel		r4,r4,r5,0
.L11414:
	se_cmpi		r4,0
	bc		0,2,.L11409	# ne
#     {
#         /* [OS348-01] [OS279-01] [OS282-01] [OS282-02] [OS387-01]
#          * [OS454-01] [OS458-01] [OS293-01]
#          */
#         retVal = OS_GET_ERRORCODE(E_OS_SYS_ERROR, E_OS_ID);
	.d2line		465
.Llo109:
	diab.li		r3,3		# retVal=r3
.Llo119:
	b		.L11410
.L11409:
#     }
#   #ifdef OS_MODULE_APPLICATION
#     else if (Os_Access_Denied == Os_Access_Check( Os_SchTblStat[schTblId].Os_SchTblAppAccess,
	.d2line		468
.Llo110:
	lwz		r3,48(r3)		# callerProc=r3 callerProc=r3
	lbz		r4,4(r3)		# callerProc=r3
	lis		r3,Os_SchTblStat@ha		# callerProc=r3
	lwz		r3,Os_SchTblStat@l(r3)		# callerProc=r3 callerProc=r3
.Llo116:
	e_mulli		r0,r0,40		# schTblId=r0 schTblId=r0
	se_add		r3,r0		# callerProc=r3 callerProc=r3 schTblId=r0
	lwz		r3,28(r3)		# callerProc=r3 callerProc=r3
.Llo111:
	bl		Os_Access_Check
.Llo112:
	se_cmpi		r3,1		# callerProc=r3
#                                                   (ProcType)callerProc->Os_ProcOwnerApp->Os_AppId) )
#     {
#         /* [OS448-01-18] [OS448-01-19] [OS448-01-20] [OS448-01-21] [OS448-01-22]
#          * [OS448-01-23] [OS448-01-24] [OS448-01-25] [OS448-01-26]
#          */
#         retVal = OS_GET_ERRORCODE(E_OS_SYS_ERROR, E_OS_ACCESS);
	.d2line		474
	diab.li		r3,1		# callerProc=r3
.Llo120:
	isel		r3,r3,r31,2		# retVal=r3 callerProc=r3 retVal=r31
.L11411:
#     }
#   #endif /* OS_MODULE_APPLICATION */
#     else
#     {
#         /* List of requirements that are not checked (automatically satisfied):
#          * [OS088-01-151] [OS088-01-152] [OS088-01-159] [OS088-01-160] [OS088-01-161] [OS088-01-162]
#          */
#         retVal = E_OK;
	.d2line		482
.Llo113:
	diab.li		r0,0		# schTblId=r0
.Llo117:
	isel		r3,r3,r0,2		# retVal=r3 retVal=r3 schTblId=r0
.L11410:
#     }
# 
#     return retVal;
	.d2line		485
.Llo118:
	rlwinm		r3,r3,0,24,31		# retVal=r3 retVal=r3
# }
	.d2line		486
	.d2epilogue_begin
.Llo121:
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# schTblId=r0
	mtspr		lr,r0		# schTblId=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11590:
	.type		Os_SchTbl_Err_Stat,@function
	.size		Os_SchTbl_Err_Stat,.-Os_SchTbl_Err_Stat
# Number of nodes = 52

# Allocations for Os_SchTbl_Err_Stat
#	?a4		callerProc
#	?a5		schTblId
#	?a6		$$2355
#	?a7		retVal
# FUNC (StatusType, OS_CODE) Os_SchTbl_Err_Dyn(
	.align		2
	.section	.Os_TEXT,,c
        .d2line         493,28
#$$ld
.L11606:

#$$bf	Os_SchTbl_Err_Dyn,interprocedural,rasave,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r8,cr0,lr
	.globl		Os_SchTbl_Err_Dyn
	.d2_cfa_start __cie
Os_SchTbl_Err_Dyn:
.Llo122:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r7,r3		# callerProc=r7 callerProc=r3
	mr		r8,r4		# schTblId=r8 schTblId=r4
	.d2prologue_end
#                                 CONSTP2CONST ( Os_ProcStatType,   AUTOMATIC, OS_CONST ) callerProc,
#                                 CONST        ( ScheduleTableType, AUTOMATIC )           schTblId
#                     )
# {
#     VAR (StatusType, AUTOMATIC ) retVal;
# 
#     if(Os_Isr_Enabled != Os_Isr_GetState(OS_GETCOREID()))
	.d2line		500
	mfspr		r3,286
.Llo123:
	bl		Os_Isr_GetState
.Llo126:
	se_cmpi		r3,0
	bc		1,2,.L11421	# eq
#     {
#         /* [OS093-01-28] [OS093-01-29] [OS093-01-30] [OS093-01-31] [OS093-01-32]
#          * [OS093-01-33] [OS093-01-34] [OS093-01-35] [OS093-02-19] [OS093-02-20]
#          * [OS093-02-21] [OS093-02-22] [OS093-02-23] [OS093-02-24] [OS093-02-25]
#          * [OS093-02-26]
#          */
#         retVal = OS_GET_ERRORCODE(E_OS_SYS_ERROR, E_OS_DISABLEDINT);
	.d2line		507
.Llo124:
	diab.li		r3,10		# retVal=r3
.Llo131:
	b		.L11422
.L11421:
#     }
#   #ifdef OS_MODULE_APPLICATION
#     else if( (Os_SchTblStat[schTblId].Os_SchTblOwnerApp != callerProc->Os_ProcOwnerApp) &&
	.d2line		510
.Llo132:
	lis		r3,Os_SchTblStat@ha
	lwz		r3,Os_SchTblStat@l(r3)
	e_mulli		r4,r8,40		# schTblId=r8
	se_add		r3,r4
	lwz		r0,32(r3)
	lwz		r3,48(r7)		# callerProc=r7
	se_cmpl		r0,r3
	bc		1,2,.L11423	# eq
.Llo125:
	lis		r3,Os_SchTblStat@ha
	lwz		r0,Os_SchTblStat@l(r3)
.Llo127:
	e_mulli		r8,r8,40		# schTblId=r8 schTblId=r8
	add		r8,r0,r8		# schTblId=r8 schTblId=r8
	lwz		r3,32(r8)		# schTblId=r8
	lwz		r3,0(r3)
	lbz		r0,0(r3)
	se_cmpi		r0,0
	bc		1,2,.L11423	# eq
#              (APPLICATION_ACCESSIBLE != Os_SchTblStat[schTblId].Os_SchTblOwnerApp->Os_AppDyn->Os_AppState))
#     {
#         /* [OS509-01-18] [OS509-01-19] [OS509-01-20] [OS509-01-21] [OS509-01-22]
#          * [OS509-01-23] [OS509-01-24] [OS509-01-25] [OS509-01-26]
#          */
#         retVal = OS_GET_ERRORCODE(E_OS_SYS_ERROR, E_OS_ACCESS);
	.d2line		516
.Llo128:
	diab.li		r3,1		# retVal=r3
.Llo133:
	b		.L11422
.L11423:
#     }
#   #endif /* OS_MODULE_APPLICATION */
#     else
#     {
#         retVal = E_OK;
	.d2line		521
.Llo129:
	diab.li		r3,0		# retVal=r3
.L11422:
#     }
# 
#     return retVal;
	.d2line		524
.Llo130:
	rlwinm		r3,r3,0,24,31		# retVal=r3 retVal=r3
# }
	.d2line		525
	.d2epilogue_begin
.Llo134:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11607:
	.type		Os_SchTbl_Err_Dyn,@function
	.size		Os_SchTbl_Err_Dyn,.-Os_SchTbl_Err_Dyn
# Number of nodes = 50

# Allocations for Os_SchTbl_Err_Dyn
#	?a4		callerProc
#	?a5		schTblId
#	?a6		retVal
# FUNC(void, OS_CODE) Os_SchTblStartRel(CONST(ScheduleTableType, AUTOMATIC)  schTblId,
	.align		2
	.section	.Os_TEXT,,c
        .d2line         532,21
#$$ld
.L11615:

#$$bf	Os_SchTblStartRel,interprocedural,rasave,nostackparams
	.globl		Os_SchTblStartRel
	.d2_cfa_start __cie
Os_SchTblStartRel:
.Llo135:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# schTblId=r31 schTblId=r3
.Llo136:
	mr		r30,r4		# offset=r30 offset=r4
	.d2prologue_end
#                                       CONST(TickType, AUTOMATIC)           offset)
# {
#     CONSTP2CONST(Os_SchTblStatType, AUTOMATIC, OS_CONST)  schTblStat     =  &Os_SchTblStat[schTblId];
	.d2line		535
.Llo137:
	lis		r3,Os_SchTblStat@ha		# schTblReg=r3
.Llo141:
	lwz		r29,Os_SchTblStat@l(r3)		# schTblStat=r29 schTblReg=r3
	e_mulli		r3,r31,40		# schTblReg=r3 schTblId=r31
	se_add		r3,r29		# schTblReg=r3 schTblReg=r3 schTblStat=r29
.Llo142:
	mr		r29,r3		# schTblStat=r29 schTblStat=r3
#     CONSTP2VAR(Os_SchTblDynType, AUTOMATIC, OS_VAR)       schTblReg      =  schTblStat->Os_SchTblRegistry;
	.d2line		536
	lwz		r3,24(r29)		# schTblReg=r3 schTblStat=r29
.Llo143:
	mr		r3,r3		# schTblReg=r3 schTblReg=r3
# 
#     /* Initialize NextEP pointer */
#     schTblReg->Os_SchTblNextEP = schTblStat->Os_SchTblInitialEP; /* [OS428-01] */
	.d2line		539
	lwz		r0,12(r29)		# schTblStat=r29
	stw		r0,4(r3)		# schTblReg=r3
# 
#     /* [OS-MGC-0002] */
#     /* Initialize Status */
#     if( schTblStat->Os_SchTblSyncStrategy == OS_IMPLICIT )
	.d2line		543
	lwz		r0,4(r29)		# schTblStat=r29
	se_cmpi		r0,1
	bc		0,2,.L11429	# ne
#     {
#         schTblReg->Os_SchTblStatus = SCHEDULETABLE_RUNNING_AND_SYNCHRONOUS;
	.d2line		545
.Llo139:
	diab.li		r0,4
.Llo140:
	stw		r0,0(r3)		# schTblReg=r3
	b		.L11430
.L11429:
# 
#         OS_CALL_RTM_SCHEDULETABLE_STATE_CHANGE(StoppedToRunningAndSynchronous, schTblId, OS_GETCOREID());
#     }
#     else /* OS_EXPLICIT or OS_NONE see BZ 32293 */
#     {
#         schTblReg->Os_SchTblStatus = SCHEDULETABLE_RUNNING; /* [OS278-03] */
	.d2line		551
	diab.li		r0,3
	stw		r0,0(r3)		# schTblReg=r3
.L11430:
# 
#         OS_CALL_RTM_SCHEDULETABLE_STATE_CHANGE(StoppedToRunning, schTblId, OS_GETCOREID());
#     }
# 
#     schTblReg->Os_SchTblNextSchTblId  =  OS_INVALID_SCHTBL;
	.d2line		556
	diab.li		r0,-1
	stw		r0,8(r3)		# schTblReg=r3
# 
#   #ifdef OS_MODULE_SCHEDULETABLE_SYNC
#     schTblReg->Os_SchTblDeviation           = OS_SCHTBLDEVIATION_INVALID;
#     schTblReg->Os_SynCntrDrvCntrOffset      = schTblStat->Os_SchTblDuration -
#                         ( (Os_CounterStopAndGetValue(schTblStat->Os_SchTblCounter) + offset) % schTblStat->Os_SchTblDuration );
#   #else
#     /* Underlying counter shall be queried anyways. */
#     Os_CounterStopAndGetValue(schTblStat->Os_SchTblCounter);
	.d2line		564
	lwz		r3,0(r29)		# schTblReg=r3 schTblStat=r29
.Llo144:
	bl		Os_CounterStopAndGetValue
#   #endif /* OS_MODULE_SCHEDULETABLE_SYNC */
# 
#     /* Register schTbl to counter */
#     /* [OS278-01] */
#     Os_CounterRegisterIndication(schTblStat->Os_SchTblCounter,
	.d2line		569
	lwz		r3,0(r29)		# schTblReg=r3 schTblStat=r29
	mr		r6,r30		# offset=r6 offset=r30
	diab.li		r4,2
	mr		r5,r31		# schTblId=r5 schTblId=r31
	bl		Os_CounterRegisterIndication
#                                  OS_COUNTERACTION_SCHTBL,
#                                  (Os_ObjectType)schTblId,
#                                  offset); /* [OS278-02] */
# }
	.d2line		573
	.d2epilogue_begin
	lmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	3,10
.Llo138:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11616:
	.type		Os_SchTblStartRel,@function
	.size		Os_SchTblStartRel,.-Os_SchTblStartRel
# Number of nodes = 59

# Allocations for Os_SchTblStartRel
#	?a4		schTblId
#	?a5		offset
#	?a6		schTblStat
#	?a7		schTblReg

# Allocations for module
	.section	.text_vle
	.0byte		.L11625
	.section	.text_vle
	.0byte		.L11633
	.section	.text_vle
#$$ld
.L5:
.L12150:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_Types.h"
.L12147:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ApplicationApiTypes.h"
.L12145:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ScheduleTableApiTypes.h"
.L12143:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_TaskApiTypes.h"
.L12141:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_SpinlockApiTypes.h"
.L12127:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_Isr.h"
.L12123:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\PowerPC\\WindRiver\\AUTOSAR\\ar422\\MemMap.h"
.L12120:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_InternalTypes.h"
.L12108:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ExceptionApiTypes.h"
.L12064:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_ApplicationCfgTypes.h"
.L12040:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_CounterCfgTypes.h"
.L11999:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_TaskCfgTypes.h"
.L11996:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_HookApiTypes.h"
.L11930:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_TrustedFunctionCfgTypes.h"
.L11691:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_ApiDispatchCfgTypes.h"
.L11640:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_SchedulerCfgTypes.h"
.L11634:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_CoreCfgTypes.h"
.L11626:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_ScheduleTableCfgTypes.h"
	.d2_line_end
	.section	.Os_TEXT,,c
#$$ld
.L11438:
.L11459:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\expiry_element\\schedule_table\\Os_ScheduleTable.c"
.L11446:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_Isr.h"
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\expiry_element\\schedule_table\\Os_ScheduleTable.c"
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
.L11435:
	.4byte		.L11436-.L11434
.L11434:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L11440-.L11435
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\expiry_element\\schedule_table\\Os_ScheduleTable.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L11437
	.4byte		.L11438
	.4byte		.L11441
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11449:
	.sleb128	2
	.4byte		.L11443-.L11435
	.byte		"Os_Isr_GetState"
	.byte		0
	.4byte		.L11446
	.uleb128	227
	.uleb128	45
	.4byte		.L11447
	.byte		0x1
	.4byte		.L11444
	.4byte		.L11445
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L11446
	.uleb128	227
	.uleb128	45
	.byte		"coreId"
	.byte		0
	.4byte		.L11450
	.4byte		.L11454
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11443:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11460:
	.sleb128	4
	.4byte		.L11456-.L11435
	.byte		"Os_SchTblInit"
	.byte		0
	.4byte		.L11459
	.uleb128	60
	.uleb128	20
	.byte		0x1
	.byte		0x1
	.4byte		.L11457
	.4byte		.L11458
	.sleb128	3
	.4byte		.L11459
	.uleb128	60
	.uleb128	20
	.byte		"coreID"
	.byte		0
	.4byte		.L11450
	.4byte		.L11461
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11462:
	.sleb128	5
	.4byte		.L11459
	.uleb128	62
	.uleb128	34
	.byte		"schTblId"
	.byte		0
	.4byte		.L11463
	.4byte		.L11466
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11456:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11471:
	.sleb128	4
	.4byte		.L11468-.L11435
	.byte		"Os_SchTblKill"
	.byte		0
	.4byte		.L11459
	.uleb128	78
	.uleb128	20
	.byte		0x1
	.byte		0x1
	.4byte		.L11469
	.4byte		.L11470
	.sleb128	3
	.4byte		.L11459
	.uleb128	78
	.uleb128	20
	.byte		"schTblId"
	.byte		0
	.4byte		.L11472
	.4byte		.L11474
.L11475:
	.sleb128	5
	.4byte		.L11459
	.uleb128	80
	.uleb128	49
	.byte		"schTblReg"
	.byte		0
	.4byte		.L11476
	.4byte		.L11479
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	6
	.4byte		.L11483
	.4byte		.L11480
	.4byte		.L11481
.L11484:
	.sleb128	5
	.4byte		.L11459
	.uleb128	98
	.uleb128	60
	.byte		"nextSchTblId"
	.byte		0
	.4byte		.L11472
	.4byte		.L11485
.L11486:
	.sleb128	5
	.4byte		.L11459
	.uleb128	99
	.uleb128	60
	.byte		"nextSchTblReg"
	.byte		0
	.4byte		.L11487
	.4byte		.L11488
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11483:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11468:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11493:
	.sleb128	7
	.4byte		.L11490-.L11435
	.byte		"Os_SchTblProcessEp"
	.byte		0
	.4byte		.L11459
	.uleb128	156
	.uleb128	33
	.byte		0x1
	.4byte		.L11491
	.4byte		.L11492
	.sleb128	3
	.4byte		.L11459
	.uleb128	156
	.uleb128	33
	.byte		"currentEP"
	.byte		0
	.4byte		.L11494
	.4byte		.L11499
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	6
	.4byte		.L11503
	.4byte		.L11500
	.4byte		.L11501
.L11504:
	.sleb128	5
	.4byte		.L11459
	.uleb128	159
	.uleb128	33
	.byte		"EPActCntr"
	.byte		0
	.4byte		.L11505
	.4byte		.L11507
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11503:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	6
	.4byte		.L11511
	.4byte		.L11508
	.4byte		.L11509
.L11512:
	.sleb128	5
	.4byte		.L11459
	.uleb128	168
	.uleb128	31
	.byte		"EPActCntr"
	.byte		0
	.4byte		.L11464
	.4byte		.L11513
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11511:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11490:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11521:
	.sleb128	8
	.4byte		.L11515-.L11435
	.byte		"Os_SchTblGetAllowedDeviation"
	.byte		0
	.4byte		.L11459
	.uleb128	580
	.uleb128	40
	.4byte		.L11518
	.byte		0x1
	.byte		0x1
	.4byte		.L11516
	.4byte		.L11517
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	9
	.4byte		.L11459
	.uleb128	580
	.uleb128	40
	.byte		"schTblId"
	.byte		0
	.4byte		.L11472
	.sleb128	2
	.byte		0x90
	.uleb128	3
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11515:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11526:
	.sleb128	7
	.4byte		.L11523-.L11435
	.byte		"Os_SchTblRegisterNextAction"
	.byte		0
	.4byte		.L11459
	.uleb128	181
	.uleb128	33
	.byte		0x1
	.4byte		.L11524
	.4byte		.L11525
	.sleb128	3
	.4byte		.L11459
	.uleb128	181
	.uleb128	33
	.byte		"schTblId"
	.byte		0
	.4byte		.L11527
	.4byte		.L11528
.L11529:
	.sleb128	5
	.4byte		.L11459
	.uleb128	183
	.uleb128	59
	.byte		"schTblStat"
	.byte		0
	.4byte		.L11530
	.4byte		.L11535
.L11536:
	.sleb128	5
	.4byte		.L11459
	.uleb128	184
	.uleb128	59
	.byte		"currentEP"
	.byte		0
	.4byte		.L11495
	.4byte		.L11537
.L11538:
	.sleb128	5
	.4byte		.L11459
	.uleb128	185
	.uleb128	29
	.byte		"nextActionDelay"
	.byte		0
	.4byte		.L11539
	.4byte		.L11540
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	6
	.4byte		.L11544
	.4byte		.L11541
	.4byte		.L11542
.L11545:
	.sleb128	5
	.4byte		.L11459
	.uleb128	190
	.uleb128	46
	.byte		"allowedDeviation"
	.byte		0
	.4byte		.L11518
	.4byte		.L11546
.L11547:
	.sleb128	5
	.4byte		.L11459
	.uleb128	191
	.uleb128	46
	.byte		"nextEPDelay"
	.byte		0
	.4byte		.L11539
	.4byte		.L11548
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11544:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11523:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11553:
	.sleb128	4
	.4byte		.L11550-.L11435
	.byte		"Os_SchTblCounterIndication"
	.byte		0
	.4byte		.L11459
	.uleb128	234
	.uleb128	20
	.byte		0x1
	.byte		0x1
	.4byte		.L11551
	.4byte		.L11552
	.sleb128	3
	.4byte		.L11459
	.uleb128	234
	.uleb128	20
	.byte		"counterActionObject"
	.byte		0
	.4byte		.L11463
	.4byte		.L11554
.L11555:
	.sleb128	5
	.4byte		.L11459
	.uleb128	236
	.uleb128	54
	.byte		"schTblId"
	.byte		0
	.4byte		.L11472
	.4byte		.L11556
.L11557:
	.sleb128	5
	.4byte		.L11459
	.uleb128	237
	.uleb128	54
	.byte		"schTblStat"
	.byte		0
	.4byte		.L11531
	.4byte		.L11558
.L11559:
	.sleb128	5
	.4byte		.L11459
	.uleb128	238
	.uleb128	54
	.byte		"schTblReg"
	.byte		0
	.4byte		.L11476
	.4byte		.L11560
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	6
	.4byte		.L11564
	.4byte		.L11561
	.4byte		.L11562
.L11565:
	.sleb128	5
	.4byte		.L11459
	.uleb128	270
	.uleb128	46
	.byte		"allowedDeviation"
	.byte		0
	.4byte		.L11518
	.4byte		.L11566
.L11567:
	.sleb128	5
	.4byte		.L11459
	.uleb128	271
	.uleb128	46
	.byte		"nextSchTblId"
	.byte		0
	.4byte		.L11473
	.4byte		.L11568
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	6
	.4byte		.L11572
	.4byte		.L11569
	.4byte		.L11570
.L11573:
	.sleb128	5
	.4byte		.L11459
	.uleb128	276
	.uleb128	61
	.byte		"firstEP"
	.byte		0
	.4byte		.L11495
	.4byte		.L11574
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	6
	.4byte		.L11578
	.4byte		.L11575
	.4byte		.L11576
.L11579:
	.sleb128	5
	.4byte		.L11459
	.uleb128	354
	.uleb128	42
	.byte		"initialEPDelay"
	.byte		0
	.4byte		.L11539
	.4byte		.L11580
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11578:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11572:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	6
	.4byte		.L11584
	.4byte		.L11581
	.4byte		.L11582
.L11585:
	.sleb128	5
	.4byte		.L11459
	.uleb128	406
	.uleb128	45
	.byte		"initialEPDelay"
	.byte		0
	.4byte		.L11539
	.4byte		.L11586
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11584:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11564:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11550:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11594:
	.sleb128	8
	.4byte		.L11588-.L11435
	.byte		"Os_SchTbl_Err_Stat"
	.byte		0
	.4byte		.L11459
	.uleb128	453
	.uleb128	28
	.4byte		.L11591
	.byte		0x1
	.byte		0x1
	.4byte		.L11589
	.4byte		.L11590
	.sleb128	3
	.4byte		.L11459
	.uleb128	453
	.uleb128	28
	.byte		"callerProc"
	.byte		0
	.4byte		.L11595
	.4byte		.L11600
	.sleb128	3
	.4byte		.L11459
	.uleb128	453
	.uleb128	28
	.byte		"schTblId"
	.byte		0
	.4byte		.L11472
	.4byte		.L11601
.L11602:
	.sleb128	5
	.4byte		.L11459
	.uleb128	458
	.uleb128	34
	.byte		"retVal"
	.byte		0
	.4byte		.L11591
	.4byte		.L11603
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11588:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11608:
	.sleb128	8
	.4byte		.L11605-.L11435
	.byte		"Os_SchTbl_Err_Dyn"
	.byte		0
	.4byte		.L11459
	.uleb128	493
	.uleb128	28
	.4byte		.L11591
	.byte		0x1
	.byte		0x1
	.4byte		.L11606
	.4byte		.L11607
	.sleb128	3
	.4byte		.L11459
	.uleb128	493
	.uleb128	28
	.byte		"callerProc"
	.byte		0
	.4byte		.L11595
	.4byte		.L11609
	.sleb128	3
	.4byte		.L11459
	.uleb128	493
	.uleb128	28
	.byte		"schTblId"
	.byte		0
	.4byte		.L11472
	.4byte		.L11610
.L11611:
	.sleb128	5
	.4byte		.L11459
	.uleb128	498
	.uleb128	34
	.byte		"retVal"
	.byte		0
	.4byte		.L11591
	.4byte		.L11612
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11605:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11617:
	.sleb128	4
	.4byte		.L11614-.L11435
	.byte		"Os_SchTblStartRel"
	.byte		0
	.4byte		.L11459
	.uleb128	532
	.uleb128	21
	.byte		0x1
	.byte		0x1
	.4byte		.L11615
	.4byte		.L11616
	.sleb128	3
	.4byte		.L11459
	.uleb128	532
	.uleb128	21
	.byte		"schTblId"
	.byte		0
	.4byte		.L11472
	.4byte		.L11618
	.sleb128	3
	.4byte		.L11459
	.uleb128	532
	.uleb128	21
	.byte		"offset"
	.byte		0
	.4byte		.L11619
	.4byte		.L11620
.L11621:
	.sleb128	5
	.4byte		.L11459
	.uleb128	535
	.uleb128	59
	.byte		"schTblStat"
	.byte		0
	.4byte		.L11530
	.4byte		.L11622
.L11623:
	.sleb128	5
	.4byte		.L11459
	.uleb128	536
	.uleb128	59
	.byte		"schTblReg"
	.byte		0
	.4byte		.L11487
	.4byte		.L11624
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11614:
	.section	.debug_info,,n
.L11625:
	.sleb128	10
	.byte		0x1
	.byte		0x1
	.4byte		.L11626
	.uleb128	144
	.uleb128	60
	.byte		"Os_SchTblStat"
	.byte		0
	.4byte		.L11530
	.section	.debug_info,,n
.L11627:
	.sleb128	10
	.byte		0x1
	.byte		0x1
	.4byte		.L11626
	.uleb128	146
	.uleb128	44
	.byte		"Os_SchTblRange"
	.byte		0
	.4byte		.L11628
.L11633:
	.sleb128	10
	.byte		0x1
	.byte		0x1
	.4byte		.L11634
	.uleb128	169
	.uleb128	42
	.byte		"Os_Core_Stat"
	.byte		0
	.4byte		.L11635
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11639:
	.sleb128	11
	.4byte		.L11640
	.uleb128	69
	.uleb128	1
	.4byte		.L11641-.L2
	.uleb128	20
	.section	.debug_info,,n
.L788:
	.sleb128	12
	.byte		"Os_Core_DynInit"
	.byte		0
	.4byte		.L11642
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L789:
	.sleb128	12
	.byte		"Os_Core_Dyn"
	.byte		0
	.4byte		.L11646
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L790:
	.sleb128	12
	.byte		"Os_DispatchElement"
	.byte		0
	.4byte		.L11650
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L791:
	.sleb128	12
	.byte		"Os_PrepareContextFunction"
	.byte		0
	.4byte		.L11654
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L792:
	.sleb128	12
	.byte		"Os_GetStackPointerFunction"
	.byte		0
	.4byte		.L11659
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11641:
.L11645:
	.sleb128	11
	.4byte		.L11640
	.uleb128	69
	.uleb128	1
	.4byte		.L11666-.L2
	.uleb128	36
.L785:
	.sleb128	12
	.byte		"Os_IsrDynInit"
	.byte		0
	.4byte		.L11667
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L786:
	.sleb128	12
	.byte		"Os_SchedulerDynInit"
	.byte		0
	.4byte		.L11669
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L787:
	.sleb128	12
	.byte		"Os_CurrentApp"
	.byte		0
	.4byte		.L11671
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
	.sleb128	0
.L11666:
.L11649:
	.sleb128	11
	.4byte		.L11640
	.uleb128	69
	.uleb128	1
	.4byte		.L11675-.L2
	.uleb128	104
.L775:
	.sleb128	12
	.byte		"Os_SchedulerDyn"
	.byte		0
	.4byte		.L11676
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L776:
	.sleb128	12
	.byte		"Os_IsrDyn"
	.byte		0
	.4byte		.L11678
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L777:
	.sleb128	12
	.byte		"Os_HooksDyn"
	.byte		0
	.4byte		.L11680
	.sleb128	2
	.byte		0x23
	.uleb128	100
	.byte		0x1
	.sleb128	0
.L11675:
.L11670:
	.sleb128	11
	.4byte		.L11640
	.uleb128	69
	.uleb128	1
	.4byte		.L11682-.L2
	.uleb128	4
.L774:
	.sleb128	12
	.byte		"Os_SchedulerCurrentProc"
	.byte		0
	.4byte		.L11683
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11682:
.L11677:
	.sleb128	11
	.4byte		.L11640
	.uleb128	69
	.uleb128	1
	.4byte		.L11685-.L2
	.uleb128	48
.L766:
	.sleb128	12
	.byte		"Os_CurrentContext"
	.byte		0
	.4byte		.L11664
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L767:
	.sleb128	12
	.byte		"Os_PreviousContext"
	.byte		0
	.4byte		.L11664
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L768:
	.sleb128	12
	.byte		"Os_SchedulerScheduleAction"
	.byte		0
	.4byte		.L11686
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L769:
	.sleb128	12
	.byte		"Os_SchedulerLastScheduledPriority"
	.byte		0
	.4byte		.L11688
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L770:
	.sleb128	12
	.byte		"Os_SchedulerCurrentTask"
	.byte		0
	.4byte		.L11683
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L771:
	.sleb128	12
	.byte		"Os_SchedulerLastScheduledProc"
	.byte		0
	.4byte		.L11683
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L772:
	.sleb128	12
	.byte		"Os_SchedulerHeadPivot"
	.byte		0
	.4byte		.L11689
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L773:
	.sleb128	12
	.byte		"Os_SchedulerTailPivot"
	.byte		0
	.4byte		.L11689
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
	.sleb128	0
.L11685:
	.section	.debug_info,,n
.L11690:
	.sleb128	13
	.4byte		.L11691
	.uleb128	612
	.uleb128	1
	.4byte		.L11692-.L2
	.byte		"Os_SchedulerQueueElementType_s"
	.byte		0
	.uleb128	12
.L752:
	.sleb128	12
	.byte		"Os_QueueProc"
	.byte		0
	.4byte		.L11683
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L753:
	.sleb128	12
	.byte		"Os_QueueFrontElement"
	.byte		0
	.4byte		.L11693
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L754:
	.sleb128	12
	.byte		"Os_QueueBackElement"
	.byte		0
	.4byte		.L11693
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11692:
.L11668:
	.sleb128	11
	.4byte		.L11691
	.uleb128	612
	.uleb128	1
	.4byte		.L11694-.L2
	.uleb128	28
.L745:
	.sleb128	12
	.byte		"Os_CurrentUserModePriority"
	.byte		0
	.4byte		.L11695
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L746:
	.sleb128	12
	.byte		"Os_UserModePriorityChanged"
	.byte		0
	.4byte		.L11696
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L747:
	.sleb128	12
	.byte		"Os_DisableAllCount"
	.byte		0
	.4byte		.L11464
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L748:
	.sleb128	12
	.byte		"Os_SuspendAllCount"
	.byte		0
	.4byte		.L11464
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L749:
	.sleb128	12
	.byte		"Os_SuspendOSCount"
	.byte		0
	.4byte		.L11464
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L750:
	.sleb128	12
	.byte		"Os_SavedIsrLevel"
	.byte		0
	.4byte		.L11695
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L751:
	.sleb128	12
	.byte		"Os_SavedOSIsrLevel"
	.byte		0
	.4byte		.L11695
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
	.sleb128	0
.L11694:
.L11679:
	.sleb128	11
	.4byte		.L11691
	.uleb128	612
	.uleb128	1
	.4byte		.L11697-.L2
	.uleb128	52
.L739:
	.sleb128	12
	.byte		"Os_IsrRunningIsr"
	.byte		0
	.4byte		.L11683
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L740:
	.sleb128	12
	.byte		"Os_IsrNeedToClear"
	.byte		0
	.4byte		.L11698
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L741:
	.sleb128	12
	.byte		"Os_Isr_NestLevel"
	.byte		0
	.4byte		.L11464
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L742:
	.sleb128	12
	.byte		"Os_Isr_ServicesBackup"
	.byte		0
	.4byte		.L11702
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L743:
	.sleb128	12
	.byte		"Os_SuspendAllPrevIsrState"
	.byte		0
	.4byte		.L11695
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L744:
	.sleb128	12
	.byte		"Os_SuspendCounterpartTrack"
	.byte		0
	.4byte		.L11706
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L11697:
.L11653:
	.sleb128	13
	.4byte		.L11691
	.uleb128	612
	.uleb128	1
	.4byte		.L11708-.L2
	.byte		"Os_DispatchElementType_s"
	.byte		0
	.uleb128	56
.L732:
	.sleb128	12
	.byte		"Os_DispatchKind"
	.byte		0
	.4byte		.L11709
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L733:
	.sleb128	12
	.byte		"Os_DispatcherLockCoreId"
	.byte		0
	.4byte		.L11451
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L734:
	.sleb128	12
	.byte		"Os_DispatchIsrId"
	.byte		0
	.4byte		.L11711
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L735:
	.sleb128	12
	.byte		"Os_DispatchApiCall"
	.byte		0
	.4byte		.L11712
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L736:
	.sleb128	12
	.byte		"Os_DispatchApiInternal"
	.byte		0
	.4byte		.L11713
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11708:
.L11714:
	.sleb128	13
	.4byte		.L11691
	.uleb128	60
	.uleb128	1
	.4byte		.L11715-.L2
	.byte		"Os_APICallType_struct"
	.byte		0
	.uleb128	40
.L727:
	.sleb128	12
	.byte		"Os_API_Magic"
	.byte		0
	.4byte		.L11464
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L728:
	.sleb128	12
	.byte		"Os_API_ReturnValue"
	.byte		0
	.4byte		.L11591
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L729:
	.sleb128	12
	.byte		"Os_API_Lock"
	.byte		0
	.4byte		.L11716
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L730:
	.sleb128	12
	.byte		"Os_API_Func"
	.byte		0
	.4byte		.L11718
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L731:
	.sleb128	12
	.byte		"Os_API_Data"
	.byte		0
	.4byte		.L11724
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11715:
	.section	.debug_info,,n
.L11724:
	.sleb128	14
	.4byte		.L11691
	.uleb128	60
	.uleb128	1
	.4byte		.L11725-.L2
	.uleb128	24
.L679:
	.sleb128	12
	.byte		"Os_ApiStartOs"
	.byte		0
	.4byte		.L11726
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L680:
	.sleb128	12
	.byte		"Os_ApiShutdownOs"
	.byte		0
	.4byte		.L11728
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L681:
	.sleb128	12
	.byte		"Os_ApiShutdownOsInternal"
	.byte		0
	.4byte		.L11730
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L682:
	.sleb128	12
	.byte		"Os_ApiShutdownAllCores"
	.byte		0
	.4byte		.L11732
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L683:
	.sleb128	12
	.byte		"Os_ApiGetNumberOfActivatedCores"
	.byte		0
	.4byte		.L11734
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L684:
	.sleb128	12
	.byte		"Os_ApiStartCore"
	.byte		0
	.4byte		.L11736
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L685:
	.sleb128	12
	.byte		"Os_ApiStartNonAutosarCore"
	.byte		0
	.4byte		.L11738
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L686:
	.sleb128	12
	.byte		"Os_ApiGetCoreID"
	.byte		0
	.4byte		.L11740
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L687:
	.sleb128	12
	.byte		"Os_ApiActivateTask"
	.byte		0
	.4byte		.L11742
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L688:
	.sleb128	12
	.byte		"Os_ApiChainTask"
	.byte		0
	.4byte		.L11744
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L689:
	.sleb128	12
	.byte		"Os_ApiGetTaskID"
	.byte		0
	.4byte		.L11746
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L690:
	.sleb128	12
	.byte		"Os_ApiGetTaskState"
	.byte		0
	.4byte		.L11748
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L691:
	.sleb128	12
	.byte		"Os_ApiSetEvent"
	.byte		0
	.4byte		.L11750
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L692:
	.sleb128	12
	.byte		"Os_ApiClearEvent"
	.byte		0
	.4byte		.L11752
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L693:
	.sleb128	12
	.byte		"Os_ApiGetEvent"
	.byte		0
	.4byte		.L11754
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L694:
	.sleb128	12
	.byte		"Os_ApiWaitEvent"
	.byte		0
	.4byte		.L11756
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L695:
	.sleb128	12
	.byte		"Os_ApiGetResource"
	.byte		0
	.4byte		.L11758
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L696:
	.sleb128	12
	.byte		"Os_ApiReleaseResource"
	.byte		0
	.4byte		.L11760
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L697:
	.sleb128	12
	.byte		"Os_ApiGetAlarmBase"
	.byte		0
	.4byte		.L11762
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L698:
	.sleb128	12
	.byte		"Os_ApiGetAlarm"
	.byte		0
	.4byte		.L11764
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L699:
	.sleb128	12
	.byte		"Os_ApiSetRelAlarm"
	.byte		0
	.4byte		.L11766
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L700:
	.sleb128	12
	.byte		"Os_ApiSetAbsAlarm"
	.byte		0
	.4byte		.L11768
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L701:
	.sleb128	12
	.byte		"Os_ApiCancelAlarm"
	.byte		0
	.4byte		.L11770
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L702:
	.sleb128	12
	.byte		"Os_ApiGetApplicationState"
	.byte		0
	.4byte		.L11772
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L703:
	.sleb128	12
	.byte		"Os_ApiTerminateApplication"
	.byte		0
	.4byte		.L11774
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L704:
	.sleb128	12
	.byte		"Os_ApiGetApplicationID"
	.byte		0
	.4byte		.L11776
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L705:
	.sleb128	12
	.byte		"Os_ApiGetISRID"
	.byte		0
	.4byte		.L11778
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L706:
	.sleb128	12
	.byte		"Os_ApiGetActiveApplicationMode"
	.byte		0
	.4byte		.L11780
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L707:
	.sleb128	12
	.byte		"Os_ApiIncrementCounter"
	.byte		0
	.4byte		.L11782
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L708:
	.sleb128	12
	.byte		"Os_ApiGetCounterValue"
	.byte		0
	.4byte		.L11784
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L709:
	.sleb128	12
	.byte		"Os_ApiGetElapsedValue"
	.byte		0
	.4byte		.L11786
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L710:
	.sleb128	12
	.byte		"Os_ApiStartScheduleTableAbs"
	.byte		0
	.4byte		.L11788
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L711:
	.sleb128	12
	.byte		"Os_ApiStartScheduleTableRel"
	.byte		0
	.4byte		.L11790
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L712:
	.sleb128	12
	.byte		"Os_ApiStopScheduleTable"
	.byte		0
	.4byte		.L11792
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L713:
	.sleb128	12
	.byte		"Os_ApiGetScheduleTableStatus"
	.byte		0
	.4byte		.L11794
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L714:
	.sleb128	12
	.byte		"Os_ApiNextScheduleTable"
	.byte		0
	.4byte		.L11796
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L715:
	.sleb128	12
	.byte		"Os_ApiStartScheduleTableSynchron"
	.byte		0
	.4byte		.L11798
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L716:
	.sleb128	12
	.byte		"Os_ApiSyncScheduleTable"
	.byte		0
	.4byte		.L11800
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L717:
	.sleb128	12
	.byte		"Os_ApiSetScheduleTableAsync"
	.byte		0
	.4byte		.L11802
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L718:
	.sleb128	12
	.byte		"Os_ApiCheckObjectAccess"
	.byte		0
	.4byte		.L11804
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L719:
	.sleb128	12
	.byte		"Os_ApiCheckObjectOwnership"
	.byte		0
	.4byte		.L11806
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L720:
	.sleb128	12
	.byte		"Os_ApiCallTrustedFunction"
	.byte		0
	.4byte		.L11808
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L721:
	.sleb128	12
	.byte		"Os_ApiStackUsage"
	.byte		0
	.4byte		.L11810
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L722:
	.sleb128	12
	.byte		"Os_API_GetSpinlock"
	.byte		0
	.4byte		.L11812
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L723:
	.sleb128	12
	.byte		"Os_API_ReleaseSpinlock"
	.byte		0
	.4byte		.L11814
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L724:
	.sleb128	12
	.byte		"Os_API_TryToGetSpinlock"
	.byte		0
	.4byte		.L11816
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L725:
	.sleb128	12
	.byte		"Os_API_IOCTransfer"
	.byte		0
	.4byte		.L11818
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L726:
	.sleb128	12
	.byte		"Os_ApiControlIdle"
	.byte		0
	.4byte		.L11820
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11725:
.L11821:
	.sleb128	11
	.4byte		.L11691
	.uleb128	60
	.uleb128	1
	.4byte		.L11822-.L2
	.uleb128	8
.L677:
	.sleb128	12
	.byte		"CoreID"
	.byte		0
	.4byte		.L11451
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L678:
	.sleb128	12
	.byte		"IdleMode"
	.byte		0
	.4byte		.L11823
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11822:
.L11819:
	.sleb128	11
	.4byte		.L11691
	.uleb128	60
	.uleb128	1
	.4byte		.L11825-.L2
	.uleb128	8
.L675:
	.sleb128	12
	.byte		"Ioc_Channel"
	.byte		0
	.4byte		.L11826
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L676:
	.sleb128	12
	.byte		"Ioc_Data"
	.byte		0
	.4byte		.L11830
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11825:
.L11817:
	.sleb128	11
	.4byte		.L11691
	.uleb128	60
	.uleb128	1
	.4byte		.L11836-.L2
	.uleb128	8
.L673:
	.sleb128	12
	.byte		"SpinlockId"
	.byte		0
	.4byte		.L11837
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L674:
	.sleb128	12
	.byte		"Success"
	.byte		0
	.4byte		.L11838
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11836:
.L11815:
	.sleb128	11
	.4byte		.L11691
	.uleb128	60
	.uleb128	1
	.4byte		.L11841-.L2
	.uleb128	2
.L672:
	.sleb128	12
	.byte		"SpinlockId"
	.byte		0
	.4byte		.L11837
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11841:
.L11813:
	.sleb128	11
	.4byte		.L11691
	.uleb128	60
	.uleb128	1
	.4byte		.L11842-.L2
	.uleb128	2
.L671:
	.sleb128	12
	.byte		"SpinlockId"
	.byte		0
	.4byte		.L11837
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11842:
.L11811:
	.sleb128	11
	.4byte		.L11691
	.uleb128	60
	.uleb128	1
	.4byte		.L11843-.L2
	.uleb128	20
.L666:
	.sleb128	12
	.byte		"ProcId"
	.byte		0
	.4byte		.L11505
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L667:
	.sleb128	12
	.byte		"MaxUsage"
	.byte		0
	.4byte		.L11592
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L668:
	.sleb128	12
	.byte		"MaxUsageRef"
	.byte		0
	.4byte		.L11844
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L669:
	.sleb128	12
	.byte		"CurrentUsage"
	.byte		0
	.4byte		.L11592
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L670:
	.sleb128	12
	.byte		"CurrentUsageRef"
	.byte		0
	.4byte		.L11844
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11843:
.L11809:
	.sleb128	11
	.4byte		.L11691
	.uleb128	60
	.uleb128	1
	.4byte		.L11845-.L2
	.uleb128	12
.L663:
	.sleb128	12
	.byte		"FunctionIndex"
	.byte		0
	.4byte		.L11846
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L664:
	.sleb128	12
	.byte		"ParamRef"
	.byte		0
	.4byte		.L11847
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L665:
	.sleb128	12
	.byte		"ReturnValue"
	.byte		0
	.4byte		.L11848
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11845:
.L11807:
	.sleb128	11
	.4byte		.L11691
	.uleb128	60
	.uleb128	1
	.4byte		.L11850-.L2
	.uleb128	12
.L660:
	.sleb128	12
	.byte		"AppID"
	.byte		0
	.4byte		.L11851
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L661:
	.sleb128	12
	.byte		"ObjectType"
	.byte		0
	.4byte		.L11852
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L662:
	.sleb128	12
	.byte		"Object"
	.byte		0
	.4byte		.L11463
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11850:
.L11805:
	.sleb128	11
	.4byte		.L11691
	.uleb128	60
	.uleb128	1
	.4byte		.L11854-.L2
	.uleb128	12
.L657:
	.sleb128	12
	.byte		"AppID"
	.byte		0
	.4byte		.L11851
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L658:
	.sleb128	12
	.byte		"ObjectType"
	.byte		0
	.4byte		.L11852
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L659:
	.sleb128	12
	.byte		"Object"
	.byte		0
	.4byte		.L11463
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11854:
.L11771:
	.sleb128	11
	.4byte		.L11691
	.uleb128	60
	.uleb128	1
	.4byte		.L11855-.L2
	.uleb128	4
.L656:
	.sleb128	12
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11856
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11855:
.L11769:
	.sleb128	11
	.4byte		.L11691
	.uleb128	60
	.uleb128	1
	.4byte		.L11857-.L2
	.uleb128	12
.L653:
	.sleb128	12
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11856
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L654:
	.sleb128	12
	.byte		"Start"
	.byte		0
	.4byte		.L11539
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L655:
	.sleb128	12
	.byte		"Cycle"
	.byte		0
	.4byte		.L11539
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11857:
.L11767:
	.sleb128	11
	.4byte		.L11691
	.uleb128	60
	.uleb128	1
	.4byte		.L11858-.L2
	.uleb128	12
.L650:
	.sleb128	12
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11856
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L651:
	.sleb128	12
	.byte		"Increment"
	.byte		0
	.4byte		.L11539
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L652:
	.sleb128	12
	.byte		"Cycle"
	.byte		0
	.4byte		.L11539
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11858:
.L11765:
	.sleb128	11
	.4byte		.L11691
	.uleb128	60
	.uleb128	1
	.4byte		.L11859-.L2
	.uleb128	8
.L648:
	.sleb128	12
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11856
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L649:
	.sleb128	12
	.byte		"TickRef"
	.byte		0
	.4byte		.L11860
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11859:
.L11763:
	.sleb128	11
	.4byte		.L11691
	.uleb128	60
	.uleb128	1
	.4byte		.L11862-.L2
	.uleb128	8
.L646:
	.sleb128	12
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11856
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L647:
	.sleb128	12
	.byte		"AlarmBaseTypeRef"
	.byte		0
	.4byte		.L11863
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11862:
.L11803:
	.sleb128	11
	.4byte		.L11691
	.uleb128	60
	.uleb128	1
	.4byte		.L11867-.L2
	.uleb128	4
.L645:
	.sleb128	12
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11473
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11867:
.L11801:
	.sleb128	11
	.4byte		.L11691
	.uleb128	60
	.uleb128	1
	.4byte		.L11868-.L2
	.uleb128	8
.L643:
	.sleb128	12
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11473
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L644:
	.sleb128	12
	.byte		"SyncValue"
	.byte		0
	.4byte		.L11539
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11868:
.L11799:
	.sleb128	11
	.4byte		.L11691
	.uleb128	60
	.uleb128	1
	.4byte		.L11869-.L2
	.uleb128	4
.L642:
	.sleb128	12
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11473
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11869:
.L11797:
	.sleb128	11
	.4byte		.L11691
	.uleb128	60
	.uleb128	1
	.4byte		.L11870-.L2
	.uleb128	8
.L640:
	.sleb128	12
	.byte		"SchTblIdFrom"
	.byte		0
	.4byte		.L11473
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L641:
	.sleb128	12
	.byte		"SchTblIdTo"
	.byte		0
	.4byte		.L11473
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11870:
.L11795:
	.sleb128	11
	.4byte		.L11691
	.uleb128	60
	.uleb128	1
	.4byte		.L11871-.L2
	.uleb128	8
.L638:
	.sleb128	12
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11473
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L639:
	.sleb128	12
	.byte		"SchTblStatus"
	.byte		0
	.4byte		.L11872
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11871:
.L11793:
	.sleb128	11
	.4byte		.L11691
	.uleb128	60
	.uleb128	1
	.4byte		.L11876-.L2
	.uleb128	4
.L637:
	.sleb128	12
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11473
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11876:
.L11791:
	.sleb128	11
	.4byte		.L11691
	.uleb128	60
	.uleb128	1
	.4byte		.L11877-.L2
	.uleb128	8
.L635:
	.sleb128	12
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11473
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L636:
	.sleb128	12
	.byte		"Offset"
	.byte		0
	.4byte		.L11539
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11877:
.L11789:
	.sleb128	11
	.4byte		.L11691
	.uleb128	60
	.uleb128	1
	.4byte		.L11878-.L2
	.uleb128	8
.L633:
	.sleb128	12
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11473
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L634:
	.sleb128	12
	.byte		"Start"
	.byte		0
	.4byte		.L11539
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11878:
.L11787:
	.sleb128	11
	.4byte		.L11691
	.uleb128	60
	.uleb128	1
	.4byte		.L11879-.L2
	.uleb128	12
.L630:
	.sleb128	12
	.byte		"CounterId"
	.byte		0
	.4byte		.L11880
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L631:
	.sleb128	12
	.byte		"ValuePtr"
	.byte		0
	.4byte		.L11860
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L632:
	.sleb128	12
	.byte		"ElapsedValuePtr"
	.byte		0
	.4byte		.L11860
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11879:
.L11785:
	.sleb128	11
	.4byte		.L11691
	.uleb128	60
	.uleb128	1
	.4byte		.L11881-.L2
	.uleb128	12
.L627:
	.sleb128	12
	.byte		"CounterId"
	.byte		0
	.4byte		.L11880
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L628:
	.sleb128	12
	.byte		"ValuePtr"
	.byte		0
	.4byte		.L11860
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L629:
	.sleb128	12
	.byte		"LightServiceFunction"
	.byte		0
	.4byte		.L11882
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11881:
.L11783:
	.sleb128	11
	.4byte		.L11691
	.uleb128	60
	.uleb128	1
	.4byte		.L11886-.L2
	.uleb128	4
.L626:
	.sleb128	12
	.byte		"CounterId"
	.byte		0
	.4byte		.L11880
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11886:
.L11779:
	.sleb128	11
	.4byte		.L11691
	.uleb128	60
	.uleb128	1
	.4byte		.L11887-.L2
	.uleb128	4
.L625:
	.sleb128	12
	.byte		"ISRId"
	.byte		0
	.4byte		.L11711
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11887:
.L11775:
	.sleb128	11
	.4byte		.L11691
	.uleb128	60
	.uleb128	1
	.4byte		.L11888-.L2
	.uleb128	2
.L623:
	.sleb128	12
	.byte		"Application"
	.byte		0
	.4byte		.L11851
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L624:
	.sleb128	12
	.byte		"RestartOption"
	.byte		0
	.4byte		.L11889
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
	.sleb128	0
.L11888:
.L11777:
	.sleb128	11
	.4byte		.L11691
	.uleb128	60
	.uleb128	1
	.4byte		.L11890-.L2
	.uleb128	1
.L622:
	.sleb128	12
	.byte		"Application"
	.byte		0
	.4byte		.L11851
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11890:
.L11773:
	.sleb128	11
	.4byte		.L11691
	.uleb128	60
	.uleb128	1
	.4byte		.L11891-.L2
	.uleb128	8
.L620:
	.sleb128	12
	.byte		"Application"
	.byte		0
	.4byte		.L11851
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L621:
	.sleb128	12
	.byte		"AppStateRef"
	.byte		0
	.4byte		.L11892
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11891:
.L11757:
	.sleb128	11
	.4byte		.L11691
	.uleb128	60
	.uleb128	1
	.4byte		.L11895-.L2
	.uleb128	8
.L619:
	.sleb128	12
	.byte		"EventMask"
	.byte		0
	.4byte		.L11896
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11895:
.L11755:
	.sleb128	11
	.4byte		.L11691
	.uleb128	60
	.uleb128	1
	.4byte		.L11899-.L2
	.uleb128	24
.L616:
	.sleb128	12
	.byte		"TaskId"
	.byte		0
	.4byte		.L11505
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L617:
	.sleb128	12
	.byte		"EventMask"
	.byte		0
	.4byte		.L11896
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L618:
	.sleb128	12
	.byte		"EventMaskRef"
	.byte		0
	.4byte		.L11900
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11899:
.L11753:
	.sleb128	11
	.4byte		.L11691
	.uleb128	60
	.uleb128	1
	.4byte		.L11902-.L2
	.uleb128	8
.L615:
	.sleb128	12
	.byte		"EventMask"
	.byte		0
	.4byte		.L11896
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11902:
.L11751:
	.sleb128	11
	.4byte		.L11691
	.uleb128	60
	.uleb128	1
	.4byte		.L11903-.L2
	.uleb128	16
.L613:
	.sleb128	12
	.byte		"TaskId"
	.byte		0
	.4byte		.L11505
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L614:
	.sleb128	12
	.byte		"EventMask"
	.byte		0
	.4byte		.L11896
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11903:
.L11749:
	.sleb128	11
	.4byte		.L11691
	.uleb128	60
	.uleb128	1
	.4byte		.L11904-.L2
	.uleb128	8
.L611:
	.sleb128	12
	.byte		"TaskId"
	.byte		0
	.4byte		.L11505
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L612:
	.sleb128	12
	.byte		"TaskStateRef"
	.byte		0
	.4byte		.L11905
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11904:
.L11747:
	.sleb128	11
	.4byte		.L11691
	.uleb128	60
	.uleb128	1
	.4byte		.L11909-.L2
	.uleb128	4
.L610:
	.sleb128	12
	.byte		"TaskIdRef"
	.byte		0
	.4byte		.L11910
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11909:
.L11745:
	.sleb128	11
	.4byte		.L11691
	.uleb128	60
	.uleb128	1
	.4byte		.L11912-.L2
	.uleb128	4
.L609:
	.sleb128	12
	.byte		"TaskId"
	.byte		0
	.4byte		.L11505
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11912:
.L11743:
	.sleb128	11
	.4byte		.L11691
	.uleb128	60
	.uleb128	1
	.4byte		.L11913-.L2
	.uleb128	4
.L608:
	.sleb128	12
	.byte		"TaskId"
	.byte		0
	.4byte		.L11505
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11913:
.L11761:
	.sleb128	11
	.4byte		.L11691
	.uleb128	60
	.uleb128	1
	.4byte		.L11914-.L2
	.uleb128	4
.L607:
	.sleb128	12
	.byte		"ResourceId"
	.byte		0
	.4byte		.L11915
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11914:
.L11759:
	.sleb128	11
	.4byte		.L11691
	.uleb128	60
	.uleb128	1
	.4byte		.L11916-.L2
	.uleb128	4
.L606:
	.sleb128	12
	.byte		"ResourceId"
	.byte		0
	.4byte		.L11915
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11916:
.L11781:
	.sleb128	11
	.4byte		.L11691
	.uleb128	60
	.uleb128	1
	.4byte		.L11917-.L2
	.uleb128	4
.L605:
	.sleb128	12
	.byte		"AppMode"
	.byte		0
	.4byte		.L11918
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11917:
.L11741:
	.sleb128	11
	.4byte		.L11691
	.uleb128	60
	.uleb128	1
	.4byte		.L11919-.L2
	.uleb128	2
.L604:
	.sleb128	12
	.byte		"CoreID"
	.byte		0
	.4byte		.L11451
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11919:
.L11735:
	.sleb128	11
	.4byte		.L11691
	.uleb128	60
	.uleb128	1
	.4byte		.L11920-.L2
	.uleb128	2
.L603:
	.sleb128	12
	.byte		"NumberOfActivatedCores"
	.byte		0
	.4byte		.L11451
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11920:
.L11733:
	.sleb128	11
	.4byte		.L11691
	.uleb128	60
	.uleb128	1
	.4byte		.L11921-.L2
	.uleb128	1
.L602:
	.sleb128	12
	.byte		"Error"
	.byte		0
	.4byte		.L11591
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11921:
.L11731:
	.sleb128	11
	.4byte		.L11691
	.uleb128	60
	.uleb128	1
	.4byte		.L11922-.L2
	.uleb128	8
.L600:
	.sleb128	12
	.byte		"ShutdownType"
	.byte		0
	.4byte		.L11923
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L601:
	.sleb128	12
	.byte		"Error"
	.byte		0
	.4byte		.L11591
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11922:
.L11729:
	.sleb128	11
	.4byte		.L11691
	.uleb128	60
	.uleb128	1
	.4byte		.L11925-.L2
	.uleb128	1
.L599:
	.sleb128	12
	.byte		"Error"
	.byte		0
	.4byte		.L11591
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11925:
.L11739:
	.sleb128	11
	.4byte		.L11691
	.uleb128	60
	.uleb128	1
	.4byte		.L11926-.L2
	.uleb128	8
.L597:
	.sleb128	12
	.byte		"CoreID"
	.byte		0
	.4byte		.L11451
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L598:
	.sleb128	12
	.byte		"StatusRef"
	.byte		0
	.4byte		.L11927
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11926:
.L11737:
	.sleb128	11
	.4byte		.L11691
	.uleb128	60
	.uleb128	1
	.4byte		.L11928-.L2
	.uleb128	8
.L595:
	.sleb128	12
	.byte		"CoreID"
	.byte		0
	.4byte		.L11451
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L596:
	.sleb128	12
	.byte		"StatusRef"
	.byte		0
	.4byte		.L11927
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11928:
.L11727:
	.sleb128	11
	.4byte		.L11691
	.uleb128	60
	.uleb128	1
	.4byte		.L11929-.L2
	.uleb128	4
.L594:
	.sleb128	12
	.byte		"AppMode"
	.byte		0
	.4byte		.L11918
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11929:
.L11829:
	.sleb128	11
	.4byte		.L11930
	.uleb128	33
	.uleb128	14
	.4byte		.L11931-.L2
	.uleb128	24
.L587:
	.sleb128	12
	.byte		"Os_IOC_ChannelDyn"
	.byte		0
	.4byte		.L11932
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L588:
	.sleb128	12
	.byte		"Os_IOC_ChannelLength"
	.byte		0
	.4byte		.L11936
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L589:
	.sleb128	12
	.byte		"Os_IOC_ChannelBuffer"
	.byte		0
	.4byte		.L11937
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L590:
	.sleb128	12
	.byte		"Os_IOC_ChannelElementSize"
	.byte		0
	.4byte		.L11938
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L591:
	.sleb128	12
	.byte		"Os_IOC_DataCount"
	.byte		0
	.4byte		.L11939
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L592:
	.sleb128	12
	.byte		"Os_IOC_DataDescriptor"
	.byte		0
	.4byte		.L11941
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L593:
	.sleb128	12
	.byte		"Os_IOC_LockResourceAddress"
	.byte		0
	.4byte		.L11946
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L11931:
.L11945:
	.sleb128	11
	.4byte		.L11930
	.uleb128	33
	.uleb128	14
	.4byte		.L11949-.L2
	.uleb128	4
.L583:
	.sleb128	12
	.byte		"Os_IOC_DataLength"
	.byte		0
	.4byte		.L11950
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L584:
	.sleb128	12
	.byte		"Os_IOC_DataOffset"
	.byte		0
	.4byte		.L11952
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L11949:
.L11935:
	.sleb128	11
	.4byte		.L11930
	.uleb128	33
	.uleb128	14
	.4byte		.L11954-.L2
	.uleb128	6
.L580:
	.sleb128	12
	.byte		"Os_IOC_ChannelHead"
	.byte		0
	.4byte		.L11936
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L581:
	.sleb128	12
	.byte		"Os_IOC_ChannelMessageCount"
	.byte		0
	.4byte		.L11936
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L582:
	.sleb128	12
	.byte		"Os_IOC_Status"
	.byte		0
	.4byte		.L11591
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11954:
.L11534:
	.sleb128	13
	.4byte		.L11626
	.uleb128	62
	.uleb128	1
	.4byte		.L11955-.L2
	.byte		"Os_SchTblStatType_s"
	.byte		0
	.uleb128	40
.L546:
	.sleb128	12
	.byte		"Os_SchTblCounter"
	.byte		0
	.4byte		.L11956
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L547:
	.sleb128	12
	.byte		"Os_SchTblSyncStrategy"
	.byte		0
	.4byte		.L11961
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L548:
	.sleb128	12
	.byte		"Os_SchTblRepeating"
	.byte		0
	.4byte		.L11964
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L549:
	.sleb128	12
	.byte		"Os_SchTblInitialEP"
	.byte		0
	.4byte		.L11494
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L550:
	.sleb128	12
	.byte		"Os_SchTblFinalEP"
	.byte		0
	.4byte		.L11494
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L551:
	.sleb128	12
	.byte		"Os_SchTblDuration"
	.byte		0
	.4byte		.L11619
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L552:
	.sleb128	12
	.byte		"Os_SchTblRegistry"
	.byte		0
	.4byte		.L11487
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L553:
	.sleb128	12
	.byte		"Os_SchTblAppAccess"
	.byte		0
	.4byte		.L11967
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L554:
	.sleb128	12
	.byte		"Os_SchTblOwnerApp"
	.byte		0
	.4byte		.L11971
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L555:
	.sleb128	12
	.byte		"Os_SchTblAutoStartStat"
	.byte		0
	.4byte		.L11972
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
	.sleb128	0
.L11955:
.L11976:
	.sleb128	11
	.4byte		.L11626
	.uleb128	62
	.uleb128	1
	.4byte		.L11977-.L2
	.uleb128	12
.L543:
	.sleb128	12
	.byte		"Os_SchTblAutoStartValue"
	.byte		0
	.4byte		.L11619
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L544:
	.sleb128	12
	.byte		"Os_SchTblAutoStartKind"
	.byte		0
	.4byte		.L11978
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L545:
	.sleb128	12
	.byte		"Os_SchTblAppModeAutoStart"
	.byte		0
	.4byte		.L11967
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11977:
.L11478:
	.sleb128	11
	.4byte		.L11626
	.uleb128	62
	.uleb128	1
	.4byte		.L11981-.L2
	.uleb128	16
.L539:
	.sleb128	12
	.byte		"Os_SchTblStatus"
	.byte		0
	.4byte		.L11874
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L540:
	.sleb128	12
	.byte		"Os_SchTblNextEP"
	.byte		0
	.4byte		.L11495
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L541:
	.sleb128	12
	.byte		"Os_SchTblNextSchTblId"
	.byte		0
	.4byte		.L11473
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L542:
	.sleb128	12
	.byte		"Os_SchTblNextSchTblBack"
	.byte		0
	.4byte		.L11982
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L11981:
.L11498:
	.sleb128	11
	.4byte		.L11626
	.uleb128	62
	.uleb128	1
	.4byte		.L11984-.L2
	.uleb128	20
.L534:
	.sleb128	12
	.byte		"Os_SchTblEPDelay"
	.byte		0
	.4byte		.L11619
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L535:
	.sleb128	12
	.byte		"Os_SchTblEPTaskActCount"
	.byte		0
	.4byte		.L11985
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L536:
	.sleb128	12
	.byte		"Os_SchTblEPFirstTaskAct"
	.byte		0
	.4byte		.L11986
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L537:
	.sleb128	12
	.byte		"Os_SchTblEPEventSetCount"
	.byte		0
	.4byte		.L11985
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L538:
	.sleb128	12
	.byte		"Os_SchTblEPFirstEventSet"
	.byte		0
	.4byte		.L11989
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11984:
.L11993:
	.sleb128	11
	.4byte		.L11626
	.uleb128	62
	.uleb128	1
	.4byte		.L11994-.L2
	.uleb128	16
.L532:
	.sleb128	12
	.byte		"Os_SchTblEventSetTaskId"
	.byte		0
	.4byte		.L11988
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L533:
	.sleb128	12
	.byte		"Os_SchTblEventSetMask"
	.byte		0
	.4byte		.L11995
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11994:
.L11681:
	.sleb128	11
	.4byte		.L11996
	.uleb128	34
	.uleb128	14
	.4byte		.L11997-.L2
	.uleb128	2
.L531:
	.sleb128	12
	.byte		"Os_HookID"
	.byte		0
	.4byte		.L11998
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11997:
.L11599:
	.sleb128	13
	.4byte		.L11999
	.uleb128	80
	.uleb128	13
	.4byte		.L12000-.L2
	.byte		"Os_ProcStatType_s"
	.byte		0
	.uleb128	80
.L513:
	.sleb128	12
	.byte		"Os_ProcId"
	.byte		0
	.4byte		.L11988
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L514:
	.sleb128	12
	.byte		"Os_ProcCoreID"
	.byte		0
	.4byte		.L11450
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L515:
	.sleb128	12
	.byte		"Os_ProcDyn"
	.byte		0
	.4byte		.L12001
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L516:
	.sleb128	12
	.byte		"Os_ProcStack"
	.byte		0
	.4byte		.L12005
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L517:
	.sleb128	12
	.byte		"Os_ProcKind"
	.byte		0
	.4byte		.L12010
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L518:
	.sleb128	12
	.byte		"Os_ProcEventRights"
	.byte		0
	.4byte		.L11995
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L519:
	.sleb128	12
	.byte		"Os_ProcPriority"
	.byte		0
	.4byte		.L12013
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L520:
	.sleb128	12
	.byte		"Os_ProcRunPriority"
	.byte		0
	.4byte		.L12013
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L521:
	.sleb128	12
	.byte		"Os_ProcMaxActivations"
	.byte		0
	.4byte		.L12014
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L522:
	.sleb128	12
	.byte		"Os_ProcContext"
	.byte		0
	.4byte		.L12016
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L523:
	.sleb128	12
	.byte		"Os_ProcOwnerApp"
	.byte		0
	.4byte		.L11971
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L524:
	.sleb128	12
	.byte		"Os_ProcAppAccess"
	.byte		0
	.4byte		.L11967
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L525:
	.sleb128	12
	.byte		"Os_ProcEntryPoint"
	.byte		0
	.4byte		.L12017
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L526:
	.sleb128	12
	.byte		"Os_ProcAutoStart"
	.byte		0
	.4byte		.L11967
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
.L527:
	.sleb128	12
	.byte		"Os_ProcResourceCount"
	.byte		0
	.4byte		.L12022
	.sleb128	2
	.byte		0x23
	.uleb128	64
	.byte		0x1
.L528:
	.sleb128	12
	.byte		"Os_ProcResourceStack"
	.byte		0
	.4byte		.L12023
	.sleb128	2
	.byte		0x23
	.uleb128	68
	.byte		0x1
.L529:
	.sleb128	12
	.byte		"Os_ProcQueueElements"
	.byte		0
	.4byte		.L12029
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.byte		0x1
.L530:
	.sleb128	12
	.byte		"Os_ProcIsrPlatformConfig"
	.byte		0
	.4byte		.L12030
	.sleb128	2
	.byte		0x23
	.uleb128	76
	.byte		0x1
	.sleb128	0
.L12000:
.L12009:
	.sleb128	13
	.4byte		.L11999
	.uleb128	80
	.uleb128	13
	.4byte		.L12031-.L2
	.byte		"Os_ProcStackStruct"
	.byte		0
	.uleb128	8
.L511:
	.sleb128	12
	.byte		"Os_ProcStackSize"
	.byte		0
	.4byte		.L12032
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L512:
	.sleb128	12
	.byte		"Os_ProcStackBase"
	.byte		0
	.4byte		.L12016
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12031:
.L12004:
	.sleb128	11
	.4byte		.L11999
	.uleb128	80
	.uleb128	13
	.4byte		.L12034-.L2
	.uleb128	56
.L498:
	.sleb128	12
	.byte		"Os_ProcState"
	.byte		0
	.4byte		.L11907
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L499:
	.sleb128	12
	.byte		"Os_ProcContextState"
	.byte		0
	.4byte		.L12035
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L500:
	.sleb128	12
	.byte		"Os_ProcEvents"
	.byte		0
	.4byte		.L11896
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L501:
	.sleb128	12
	.byte		"Os_ProcEventWaitingFor"
	.byte		0
	.4byte		.L11896
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L502:
	.sleb128	12
	.byte		"Os_ProcActivations"
	.byte		0
	.4byte		.L12015
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L503:
	.sleb128	12
	.byte		"Os_ProcResourcesAllocated"
	.byte		0
	.4byte		.L11915
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L504:
	.sleb128	12
	.byte		"Os_ProcEnabled"
	.byte		0
	.4byte		.L11592
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L505:
	.sleb128	12
	.byte		"Os_ProcCurrentApp"
	.byte		0
	.4byte		.L11671
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L506:
	.sleb128	12
	.byte		"Os_ProcSpinlock"
	.byte		0
	.4byte		.L12037
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L507:
	.sleb128	12
	.byte		"Os_ProcFreeQueueElements"
	.byte		0
	.4byte		.L11693
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L508:
	.sleb128	12
	.byte		"Os_ProcCurrentPriority"
	.byte		0
	.4byte		.L11688
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L509:
	.sleb128	12
	.byte		"Os_ProcTFCallCount"
	.byte		0
	.4byte		.L11592
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L510:
	.sleb128	12
	.byte		"Os_FatalErrorOccured"
	.byte		0
	.4byte		.L11591
	.sleb128	2
	.byte		0x23
	.uleb128	53
	.byte		0x1
	.sleb128	0
.L12034:
.L11960:
	.sleb128	13
	.4byte		.L12040
	.uleb128	44
	.uleb128	14
	.4byte		.L12041-.L2
	.byte		"Os_CounterStatStruct"
	.byte		0
	.uleb128	48
.L486:
	.sleb128	12
	.byte		"Os_CounterKind"
	.byte		0
	.4byte		.L12042
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L487:
	.sleb128	12
	.byte		"Os_CounterMaxAllowedValue"
	.byte		0
	.4byte		.L11619
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L488:
	.sleb128	12
	.byte		"Os_CounterMinCycle"
	.byte		0
	.4byte		.L11619
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L489:
	.sleb128	12
	.byte		"Os_CounterTicksPerBase"
	.byte		0
	.4byte		.L11619
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L490:
	.sleb128	12
	.byte		"Os_CounterPoolSize"
	.byte		0
	.4byte		.L11527
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L491:
	.sleb128	12
	.byte		"Os_CounterRegistry"
	.byte		0
	.4byte		.L12045
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L492:
	.sleb128	12
	.byte		"Os_CounterEPs"
	.byte		0
	.4byte		.L12049
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L493:
	.sleb128	12
	.byte		"Os_CounterActions"
	.byte		0
	.4byte		.L12053
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L494:
	.sleb128	12
	.byte		"Os_TimerId"
	.byte		0
	.4byte		.L12057
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L495:
	.sleb128	12
	.byte		"Os_CounterCoreId"
	.byte		0
	.4byte		.L11450
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L496:
	.sleb128	12
	.byte		"Os_CounterAppAccess"
	.byte		0
	.4byte		.L11967
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L497:
	.sleb128	12
	.byte		"Os_CounterOwnerApp"
	.byte		0
	.4byte		.L11971
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
	.sleb128	0
.L12041:
.L12048:
	.sleb128	13
	.4byte		.L12040
	.uleb128	44
	.uleb128	14
	.4byte		.L12059-.L2
	.byte		"Os_CounterDynStruct"
	.byte		0
	.uleb128	16
.L482:
	.sleb128	12
	.byte		"Os_CounterValue"
	.byte		0
	.4byte		.L11539
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L483:
	.sleb128	12
	.byte		"Os_CounterNextEP"
	.byte		0
	.4byte		.L12050
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L484:
	.sleb128	12
	.byte		"Os_CounterNextFreeEP"
	.byte		0
	.4byte		.L12050
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L485:
	.sleb128	12
	.byte		"Os_CounterNextFreeAction"
	.byte		0
	.4byte		.L12054
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L12059:
.L12052:
	.sleb128	13
	.4byte		.L12040
	.uleb128	44
	.uleb128	14
	.4byte		.L12060-.L2
	.byte		"Os_CounterEPStruct"
	.byte		0
	.uleb128	16
.L478:
	.sleb128	12
	.byte		"Os_CounterEPDueValue"
	.byte		0
	.4byte		.L11539
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L479:
	.sleb128	12
	.byte		"Os_CounterNextAction"
	.byte		0
	.4byte		.L12054
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L480:
	.sleb128	12
	.byte		"Os_CounterLastAction"
	.byte		0
	.4byte		.L12054
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L481:
	.sleb128	12
	.byte		"Os_CounterEPNextEP"
	.byte		0
	.4byte		.L12050
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L12060:
.L12056:
	.sleb128	13
	.4byte		.L12040
	.uleb128	44
	.uleb128	14
	.4byte		.L12061-.L2
	.byte		"Os_CounterEPActionStruct"
	.byte		0
	.uleb128	12
.L475:
	.sleb128	12
	.byte		"Os_CounterActionOwner"
	.byte		0
	.4byte		.L12062
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L476:
	.sleb128	12
	.byte		"Os_CounterActionObject"
	.byte		0
	.4byte		.L11463
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L477:
	.sleb128	12
	.byte		"Os_CounterActionNextAction"
	.byte		0
	.4byte		.L12054
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L12061:
.L12039:
	.sleb128	13
	.4byte		.L12064
	.uleb128	52
	.uleb128	1
	.4byte		.L12065-.L2
	.byte		"Os_SpinlockStatType_s"
	.byte		0
	.uleb128	16
.L450:
	.sleb128	12
	.byte		"Os_SpinlockId"
	.byte		0
	.4byte		.L12066
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L451:
	.sleb128	12
	.byte		"Os_SpinlockChainId"
	.byte		0
	.4byte		.L12066
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L452:
	.sleb128	12
	.byte		"Os_SpinlockDyn"
	.byte		0
	.4byte		.L12067
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L453:
	.sleb128	12
	.byte		"Os_SpinlockAccess"
	.byte		0
	.4byte		.L11967
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L454:
	.sleb128	12
	.byte		"Os_SpinlockLockResourceAddress"
	.byte		0
	.4byte		.L11946
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L12065:
.L12070:
	.sleb128	11
	.4byte		.L12064
	.uleb128	52
	.uleb128	1
	.4byte		.L12071-.L2
	.uleb128	12
.L447:
	.sleb128	12
	.byte		"Os_SpinlockLockerProc"
	.byte		0
	.4byte		.L11683
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L448:
	.sleb128	12
	.byte		"Os_SpinlockSuperseded"
	.byte		0
	.4byte		.L12037
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L449:
	.sleb128	12
	.byte		"Os_ResourceDependency"
	.byte		0
	.4byte		.L12025
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L12071:
.L11674:
	.sleb128	13
	.4byte		.L12064
	.uleb128	52
	.uleb128	1
	.4byte		.L12072-.L2
	.byte		"Os_ApplicationStatType_s"
	.byte		0
	.uleb128	48
.L435:
	.sleb128	12
	.byte		"Os_AppDyn"
	.byte		0
	.4byte		.L12073
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L436:
	.sleb128	12
	.byte		"Os_AppId"
	.byte		0
	.4byte		.L12077
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L437:
	.sleb128	12
	.byte		"Os_AppRestartTask"
	.byte		0
	.4byte		.L11988
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L438:
	.sleb128	12
	.byte		"Os_AppKind"
	.byte		0
	.4byte		.L12078
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L439:
	.sleb128	12
	.byte		"Os_AppShutdownHook"
	.byte		0
	.4byte		.L12081
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L440:
	.sleb128	12
	.byte		"Os_AppStartupHook"
	.byte		0
	.4byte		.L12086
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L441:
	.sleb128	12
	.byte		"Os_AppErrorHook"
	.byte		0
	.4byte		.L12091
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L442:
	.sleb128	12
	.byte		"Os_AppProcIDs"
	.byte		0
	.4byte		.L12096
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L443:
	.sleb128	12
	.byte		"Os_AppCounterIDs"
	.byte		0
	.4byte		.L12099
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L444:
	.sleb128	12
	.byte		"Os_AppAlarmIDs"
	.byte		0
	.4byte		.L12102
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L445:
	.sleb128	12
	.byte		"Os_AppSchTblIDs"
	.byte		0
	.4byte		.L12105
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L446:
	.sleb128	12
	.byte		"Os_CoreAssigment"
	.byte		0
	.4byte		.L11450
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
	.sleb128	0
.L12072:
.L12076:
	.sleb128	11
	.4byte		.L12064
	.uleb128	52
	.uleb128	1
	.4byte		.L12107-.L2
	.uleb128	1
.L434:
	.sleb128	12
	.byte		"Os_AppState"
	.byte		0
	.4byte		.L11894
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12107:
.L12028:
	.sleb128	11
	.4byte		.L12108
	.uleb128	32
	.uleb128	1
	.4byte		.L12109-.L2
	.uleb128	12
.L431:
	.sleb128	12
	.byte		"Os_ResourcePriority"
	.byte		0
	.4byte		.L12013
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L432:
	.sleb128	12
	.byte		"Os_ResourceAccessRights"
	.byte		0
	.4byte		.L11968
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L433:
	.sleb128	12
	.byte		"Os_ResourceDyn"
	.byte		0
	.4byte		.L12110
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L12109:
.L12112:
	.sleb128	11
	.4byte		.L12108
	.uleb128	32
	.uleb128	1
	.4byte		.L12113-.L2
	.uleb128	4
.L430:
	.sleb128	12
	.byte		"Os_LockerProc"
	.byte		0
	.4byte		.L11683
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12113:
.L11705:
	.sleb128	11
	.4byte		.L12108
	.uleb128	32
	.uleb128	1
	.4byte		.L12114-.L2
	.uleb128	24
.L419:
	.sleb128	12
	.byte		"Os_DisAllInt"
	.byte		0
	.4byte		.L12115
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L420:
	.sleb128	12
	.byte		"Os_EnAllInt"
	.byte		0
	.4byte		.L12115
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L421:
	.sleb128	12
	.byte		"Os_SusAllInt"
	.byte		0
	.4byte		.L12115
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L422:
	.sleb128	12
	.byte		"Os_ResAllInt"
	.byte		0
	.4byte		.L12115
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L423:
	.sleb128	12
	.byte		"Os_SusOsInt"
	.byte		0
	.4byte		.L12115
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L424:
	.sleb128	12
	.byte		"Os_ResOsInt"
	.byte		0
	.4byte		.L12115
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L12114:
.L11866:
	.sleb128	11
	.4byte		.L12120
	.uleb128	50
	.uleb128	1
	.4byte		.L12121-.L2
	.uleb128	12
.L378:
	.sleb128	12
	.byte		"maxallowedvalue"
	.byte		0
	.4byte		.L11539
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L379:
	.sleb128	12
	.byte		"ticksperbase"
	.byte		0
	.4byte		.L11539
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L380:
	.sleb128	12
	.byte		"mincycle"
	.byte		0
	.4byte		.L11539
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L12121:
.L11632:
	.sleb128	11
	.4byte		.L12120
	.uleb128	50
	.uleb128	1
	.4byte		.L12122-.L2
	.uleb128	8
.L376:
	.sleb128	12
	.byte		"Os_ObjStartId"
	.byte		0
	.4byte		.L11463
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L377:
	.sleb128	12
	.byte		"Os_ObjEndId"
	.byte		0
	.4byte		.L11463
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12122:
.L11701:
	.sleb128	11
	.4byte		.L12123
	.uleb128	87
	.uleb128	7
	.4byte		.L12124-.L2
	.uleb128	8
.L366:
	.sleb128	12
	.byte		"Os_IsrPltId"
	.byte		0
	.4byte		.L11985
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L367:
	.sleb128	12
	.byte		"Os_IsrPltLevel"
	.byte		0
	.4byte		.L12125
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12124:
	.section	.debug_info,,n
.L11448:
	.sleb128	15
	.4byte		.L12127
	.uleb128	155
	.uleb128	1
	.4byte		.L12128-.L2
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
.L12128:
.L11687:
	.sleb128	15
	.4byte		.L11640
	.uleb128	69
	.uleb128	1
	.4byte		.L12129-.L2
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
.L12129:
.L11710:
	.sleb128	15
	.4byte		.L11691
	.uleb128	612
	.uleb128	1
	.4byte		.L12130-.L2
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
.L12130:
.L11717:
	.sleb128	15
	.4byte		.L11691
	.uleb128	60
	.uleb128	1
	.4byte		.L12131-.L2
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
.L12131:
	.section	.debug_info,,n
.L11849:
	.sleb128	17
	.4byte		.L11930
	.uleb128	33
	.uleb128	14
	.4byte		.L12132-.L2
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
.L12132:
.L11980:
	.sleb128	15
	.4byte		.L11626
	.uleb128	62
	.uleb128	1
	.4byte		.L12133-.L2
	.uleb128	4
	.sleb128	16
	.byte		"OS_ABSOLUTE"
	.byte		0
	.sleb128	0
	.sleb128	16
	.byte		"OS_RELATIVE"
	.byte		0
	.sleb128	1
	.sleb128	16
	.byte		"OS_SYNCHRON"
	.byte		0
	.sleb128	2
	.sleb128	0
.L12133:
.L11966:
	.sleb128	15
	.4byte		.L11626
	.uleb128	54
	.uleb128	1
	.4byte		.L12134-.L2
	.uleb128	4
	.sleb128	16
	.byte		"OS_SINGLESHOT"
	.byte		0
	.sleb128	0
	.sleb128	16
	.byte		"OS_REPEATING"
	.byte		0
	.sleb128	1
	.sleb128	0
.L12134:
.L11963:
	.sleb128	15
	.4byte		.L11626
	.uleb128	45
	.uleb128	1
	.4byte		.L12135-.L2
	.uleb128	4
	.sleb128	16
	.byte		"OS_NONE"
	.byte		0
	.sleb128	0
	.sleb128	16
	.byte		"OS_IMPLICIT"
	.byte		0
	.sleb128	1
	.sleb128	16
	.byte		"OS_EXPLICIT"
	.byte		0
	.sleb128	2
	.sleb128	0
.L12135:
.L12036:
	.sleb128	15
	.4byte		.L11999
	.uleb128	80
	.uleb128	13
	.4byte		.L12136-.L2
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
.L12136:
.L12012:
	.sleb128	15
	.4byte		.L11999
	.uleb128	61
	.uleb128	1
	.4byte		.L12137-.L2
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
.L12137:
.L12063:
	.sleb128	17
	.4byte		.L12040
	.uleb128	44
	.uleb128	14
	.4byte		.L12138-.L2
	.byte		"Os_CounterActionOwnerType_e"
	.byte		0
	.uleb128	4
	.sleb128	16
	.byte		"OS_COUNTERACTION_OWNER_INVALID"
	.byte		0
	.sleb128	0
	.sleb128	16
	.byte		"OS_COUNTERACTION_ALARM"
	.byte		0
	.sleb128	1
	.sleb128	16
	.byte		"OS_COUNTERACTION_SCHTBL"
	.byte		0
	.sleb128	2
	.sleb128	0
.L12138:
.L12044:
	.sleb128	17
	.4byte		.L12040
	.uleb128	36
	.uleb128	14
	.4byte		.L12139-.L2
	.byte		"Os_CounterKindType_e"
	.byte		0
	.uleb128	4
	.sleb128	16
	.byte		"OS_HARDWARE"
	.byte		0
	.sleb128	0
	.sleb128	16
	.byte		"OS_SOFTWARE"
	.byte		0
	.sleb128	1
	.sleb128	0
.L12139:
.L12080:
	.sleb128	15
	.4byte		.L12064
	.uleb128	52
	.uleb128	1
	.4byte		.L12140-.L2
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
.L12140:
.L11840:
	.sleb128	15
	.4byte		.L12141
	.uleb128	43
	.uleb128	1
	.4byte		.L12142-.L2
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
.L12142:
.L11908:
	.sleb128	15
	.4byte		.L12143
	.uleb128	37
	.uleb128	1
	.4byte		.L12144-.L2
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
.L12144:
.L11875:
	.sleb128	15
	.4byte		.L12145
	.uleb128	40
	.uleb128	1
	.4byte		.L12146-.L2
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
.L12146:
.L11853:
	.sleb128	15
	.4byte		.L12147
	.uleb128	47
	.uleb128	1
	.4byte		.L12148-.L2
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
.L12148:
.L11924:
	.sleb128	15
	.4byte		.L12120
	.uleb128	42
	.uleb128	13
	.4byte		.L12149-.L2
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
.L12149:
.L11824:
	.sleb128	15
	.4byte		.L12150
	.uleb128	83
	.uleb128	14
	.4byte		.L12151-.L2
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
.L12151:
	.section	.debug_info,,n
.L11447:
	.sleb128	18
	.byte		"Os_IsrStateType"
	.byte		0
	.4byte		.L11448
	.section	.debug_info,,n
.L11453:
	.sleb128	19
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L11452:
	.sleb128	18
	.byte		"uint16"
	.byte		0
	.4byte		.L11453
.L11451:
	.sleb128	18
	.byte		"CoreIdType"
	.byte		0
	.4byte		.L11452
	.section	.debug_info,,n
.L11450:
	.sleb128	20
	.4byte		.L11451
.L11465:
	.sleb128	19
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L11464:
	.sleb128	18
	.byte		"uint32"
	.byte		0
	.4byte		.L11465
.L11463:
	.sleb128	18
	.byte		"Os_ObjectType"
	.byte		0
	.4byte		.L11464
.L11473:
	.sleb128	18
	.byte		"ScheduleTableType"
	.byte		0
	.4byte		.L11464
.L11472:
	.sleb128	20
	.4byte		.L11473
.L11477:
	.sleb128	18
	.byte		"Os_SchTblDynType"
	.byte		0
	.4byte		.L11478
	.section	.debug_info,,n
.L11476:
	.sleb128	21
	.4byte		.L11477
.L11487:
	.sleb128	20
	.4byte		.L11476
.L11497:
	.sleb128	18
	.byte		"Os_SchTblEPStatType"
	.byte		0
	.4byte		.L11498
.L11496:
	.sleb128	20
	.4byte		.L11497
.L11495:
	.sleb128	21
	.4byte		.L11496
.L11494:
	.sleb128	20
	.4byte		.L11495
.L11506:
	.sleb128	18
	.byte		"ProcType"
	.byte		0
	.4byte		.L11463
.L11505:
	.sleb128	18
	.byte		"TaskType"
	.byte		0
	.4byte		.L11506
.L11520:
	.sleb128	19
	.byte		"long"
	.byte		0
	.byte		0x5
	.byte		0x4
.L11519:
	.sleb128	18
	.byte		"sint32"
	.byte		0
	.4byte		.L11520
.L11518:
	.sleb128	18
	.byte		"Os_SchTblDeviationType"
	.byte		0
	.4byte		.L11519
.L11527:
	.sleb128	20
	.4byte		.L11463
.L11533:
	.sleb128	18
	.byte		"Os_SchTblStatType"
	.byte		0
	.4byte		.L11534
.L11532:
	.sleb128	20
	.4byte		.L11533
.L11531:
	.sleb128	21
	.4byte		.L11532
.L11530:
	.sleb128	20
	.4byte		.L11531
.L11539:
	.sleb128	18
	.byte		"TickType"
	.byte		0
	.4byte		.L11464
.L11593:
	.sleb128	19
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L11592:
	.sleb128	18
	.byte		"uint8"
	.byte		0
	.4byte		.L11593
.L11591:
	.sleb128	18
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L11592
.L11598:
	.sleb128	18
	.byte		"Os_ProcStatType"
	.byte		0
	.4byte		.L11599
.L11597:
	.sleb128	20
	.4byte		.L11598
.L11596:
	.sleb128	21
	.4byte		.L11597
.L11595:
	.sleb128	20
	.4byte		.L11596
.L11619:
	.sleb128	20
	.4byte		.L11539
.L11631:
	.sleb128	18
	.byte		"Os_ObjectRangeType"
	.byte		0
	.4byte		.L11632
.L11630:
	.sleb128	20
	.4byte		.L11631
	.section	.debug_info,,n
.L11628:
	.sleb128	22
	.4byte		.L11629-.L2
	.4byte		.L11630
	.section	.debug_info,,n
	.sleb128	23
	.uleb128	1
	.sleb128	0
.L11629:
.L11638:
	.sleb128	18
	.byte		"Os_Core_StatType"
	.byte		0
	.4byte		.L11639
.L11637:
	.sleb128	20
	.4byte		.L11638
.L11635:
	.sleb128	22
	.4byte		.L11636-.L2
	.4byte		.L11637
	.sleb128	23
	.uleb128	1
	.sleb128	0
.L11636:
.L11644:
	.sleb128	18
	.byte		"Os_Core_DynInitType"
	.byte		0
	.4byte		.L11645
.L11643:
	.sleb128	21
	.4byte		.L11644
.L11642:
	.sleb128	20
	.4byte		.L11643
.L11648:
	.sleb128	18
	.byte		"Os_Core_DynType"
	.byte		0
	.4byte		.L11649
.L11647:
	.sleb128	21
	.4byte		.L11648
.L11646:
	.sleb128	20
	.4byte		.L11647
.L11652:
	.sleb128	18
	.byte		"Os_DispatchElementType"
	.byte		0
	.4byte		.L11653
.L11651:
	.sleb128	21
	.4byte		.L11652
.L11650:
	.sleb128	20
	.4byte		.L11651
	.section	.debug_info,,n
.L11657:
	.sleb128	24
	.4byte		.L11658-.L2
	.byte		0x1
	.section	.debug_info,,n
	.sleb128	25
	.4byte		.L11595
	.sleb128	0
.L11658:
.L11656:
	.sleb128	21
	.4byte		.L11657
.L11655:
	.sleb128	18
	.byte		"Os_PrepareContextFunctionType"
	.byte		0
	.4byte		.L11656
.L11654:
	.sleb128	20
	.4byte		.L11655
.L11665:
	.sleb128	18
	.byte		"Os_StackType"
	.byte		0
	.4byte		.L11464
.L11664:
	.sleb128	21
	.4byte		.L11665
	.section	.debug_info,,n
.L11662:
	.sleb128	26
	.4byte		.L11663-.L2
	.4byte		.L11664
	.byte		0x1
	.sleb128	25
	.4byte		.L11596
	.sleb128	0
.L11663:
.L11661:
	.sleb128	21
	.4byte		.L11662
.L11660:
	.sleb128	18
	.byte		"Os_GetStackPointerFunctionType"
	.byte		0
	.4byte		.L11661
.L11659:
	.sleb128	20
	.4byte		.L11660
.L11667:
	.sleb128	18
	.byte		"Os_IsrDynInitType"
	.byte		0
	.4byte		.L11668
.L11669:
	.sleb128	18
	.byte		"Os_SchedulerDynInitType"
	.byte		0
	.4byte		.L11670
.L11673:
	.sleb128	18
	.byte		"Os_ApplicationStatType"
	.byte		0
	.4byte		.L11674
.L11672:
	.sleb128	20
	.4byte		.L11673
.L11671:
	.sleb128	21
	.4byte		.L11672
.L11676:
	.sleb128	18
	.byte		"Os_SchedulerDynType"
	.byte		0
	.4byte		.L11677
.L11678:
	.sleb128	18
	.byte		"Os_IsrDynType"
	.byte		0
	.4byte		.L11679
.L11680:
	.sleb128	18
	.byte		"Os_HooksDynType"
	.byte		0
	.4byte		.L11681
.L11684:
	.sleb128	20
	.4byte		.L11599
.L11683:
	.sleb128	21
	.4byte		.L11684
.L11686:
	.sleb128	18
	.byte		"Os_ScheduleType"
	.byte		0
	.4byte		.L11687
.L11688:
	.sleb128	18
	.byte		"Os_PriorityType"
	.byte		0
	.4byte		.L11464
.L11689:
	.sleb128	18
	.byte		"Os_SchedulerQueueElementType"
	.byte		0
	.4byte		.L11690
.L11693:
	.sleb128	21
	.4byte		.L11690
.L11695:
	.sleb128	18
	.byte		"Os_IsrRegister_t"
	.byte		0
	.4byte		.L11464
.L11696:
	.sleb128	18
	.byte		"boolean"
	.byte		0
	.4byte		.L11593
.L11700:
	.sleb128	18
	.byte		"Os_IsrPlatformConfigType"
	.byte		0
	.4byte		.L11701
.L11699:
	.sleb128	20
	.4byte		.L11700
.L11698:
	.sleb128	21
	.4byte		.L11699
.L11704:
	.sleb128	18
	.byte		"Os_IsrApiTable"
	.byte		0
	.4byte		.L11705
.L11703:
	.sleb128	20
	.4byte		.L11704
.L11702:
	.sleb128	21
	.4byte		.L11703
.L11706:
	.sleb128	22
	.4byte		.L11707-.L2
	.4byte		.L11464
	.sleb128	23
	.uleb128	7
	.sleb128	0
.L11707:
.L11709:
	.sleb128	18
	.byte		"Os_DispatchKindType"
	.byte		0
	.4byte		.L11710
.L11711:
	.sleb128	18
	.byte		"ISRType"
	.byte		0
	.4byte		.L11506
.L11713:
	.sleb128	18
	.byte		"Os_APICallType"
	.byte		0
	.4byte		.L11714
.L11712:
	.sleb128	21
	.4byte		.L11713
.L11716:
	.sleb128	18
	.byte		"Os_API_LockType"
	.byte		0
	.4byte		.L11717
.L11720:
	.sleb128	24
	.4byte		.L11721-.L2
	.byte		0x1
.L11722:
	.sleb128	21
	.4byte		.L11714
	.sleb128	25
	.4byte		.L11722
.L11723:
	.sleb128	20
	.4byte		.L11683
	.sleb128	25
	.4byte		.L11723
	.sleb128	0
.L11721:
.L11719:
	.sleb128	21
	.4byte		.L11720
.L11718:
	.sleb128	18
	.byte		"Os_API_Func_Type"
	.byte		0
	.4byte		.L11719
.L11726:
	.sleb128	18
	.byte		"Os_API_StartOsType"
	.byte		0
	.4byte		.L11727
.L11728:
	.sleb128	18
	.byte		"Os_API_ShutdownOsType"
	.byte		0
	.4byte		.L11729
.L11730:
	.sleb128	18
	.byte		"Os_API_ShutdownOsInternalType"
	.byte		0
	.4byte		.L11731
.L11732:
	.sleb128	18
	.byte		"Os_API_ShutdownAllCoresType"
	.byte		0
	.4byte		.L11733
.L11734:
	.sleb128	18
	.byte		"Os_API_GetNumberOfActivatedCoresType"
	.byte		0
	.4byte		.L11735
.L11736:
	.sleb128	18
	.byte		"Os_API_ApiStartCoreType"
	.byte		0
	.4byte		.L11737
.L11738:
	.sleb128	18
	.byte		"Os_API_StartNonAutosarCoreType"
	.byte		0
	.4byte		.L11739
.L11740:
	.sleb128	18
	.byte		"Os_API_GetCoreIDType"
	.byte		0
	.4byte		.L11741
.L11742:
	.sleb128	18
	.byte		"Os_API_ActivateTaskType"
	.byte		0
	.4byte		.L11743
.L11744:
	.sleb128	18
	.byte		"Os_API_ChainTaskType"
	.byte		0
	.4byte		.L11745
.L11746:
	.sleb128	18
	.byte		"Os_API_GetTaskIDType"
	.byte		0
	.4byte		.L11747
.L11748:
	.sleb128	18
	.byte		"Os_API_GetTaskStateType"
	.byte		0
	.4byte		.L11749
.L11750:
	.sleb128	18
	.byte		"Os_API_SetEventType"
	.byte		0
	.4byte		.L11751
.L11752:
	.sleb128	18
	.byte		"Os_API_ClearEventType"
	.byte		0
	.4byte		.L11753
.L11754:
	.sleb128	18
	.byte		"Os_API_GetEventType"
	.byte		0
	.4byte		.L11755
.L11756:
	.sleb128	18
	.byte		"Os_API_WaitEventType"
	.byte		0
	.4byte		.L11757
.L11758:
	.sleb128	18
	.byte		"Os_API_GetResourceType"
	.byte		0
	.4byte		.L11759
.L11760:
	.sleb128	18
	.byte		"Os_API_ReleaseResourceType"
	.byte		0
	.4byte		.L11761
.L11762:
	.sleb128	18
	.byte		"Os_API_GetAlarmBaseType"
	.byte		0
	.4byte		.L11763
.L11764:
	.sleb128	18
	.byte		"Os_API_GetAlarmType"
	.byte		0
	.4byte		.L11765
.L11766:
	.sleb128	18
	.byte		"Os_API_SetRelAlarmType"
	.byte		0
	.4byte		.L11767
.L11768:
	.sleb128	18
	.byte		"Os_API_SetAbsAlarmType"
	.byte		0
	.4byte		.L11769
.L11770:
	.sleb128	18
	.byte		"Os_API_CancelAlarmType"
	.byte		0
	.4byte		.L11771
.L11772:
	.sleb128	18
	.byte		"Os_API_GetApplicationStateType"
	.byte		0
	.4byte		.L11773
.L11774:
	.sleb128	18
	.byte		"Os_API_TerminateApplicationType"
	.byte		0
	.4byte		.L11775
.L11776:
	.sleb128	18
	.byte		"Os_API_GetApplicationIDType"
	.byte		0
	.4byte		.L11777
.L11778:
	.sleb128	18
	.byte		"Os_API_GetISRIDType"
	.byte		0
	.4byte		.L11779
.L11780:
	.sleb128	18
	.byte		"Os_API_GetActiveApplicationModeType"
	.byte		0
	.4byte		.L11781
.L11782:
	.sleb128	18
	.byte		"Os_API_IncrementCounterType"
	.byte		0
	.4byte		.L11783
.L11784:
	.sleb128	18
	.byte		"Os_API_GetCounterValueType"
	.byte		0
	.4byte		.L11785
.L11786:
	.sleb128	18
	.byte		"Os_API_GetElapsedValueType"
	.byte		0
	.4byte		.L11787
.L11788:
	.sleb128	18
	.byte		"Os_API_StartScheduleTableAbsType"
	.byte		0
	.4byte		.L11789
.L11790:
	.sleb128	18
	.byte		"Os_API_StartScheduleTableRelType"
	.byte		0
	.4byte		.L11791
.L11792:
	.sleb128	18
	.byte		"Os_API_StopScheduleTableType"
	.byte		0
	.4byte		.L11793
.L11794:
	.sleb128	18
	.byte		"Os_API_GetScheduleTableStatusType"
	.byte		0
	.4byte		.L11795
.L11796:
	.sleb128	18
	.byte		"Os_API_NextScheduleTableType"
	.byte		0
	.4byte		.L11797
.L11798:
	.sleb128	18
	.byte		"Os_API_StartScheduleTableSynchronType"
	.byte		0
	.4byte		.L11799
.L11800:
	.sleb128	18
	.byte		"Os_API_SyncScheduleTableType"
	.byte		0
	.4byte		.L11801
.L11802:
	.sleb128	18
	.byte		"Os_API_SetScheduleTableAsyncType"
	.byte		0
	.4byte		.L11803
.L11804:
	.sleb128	18
	.byte		"Os_API_CheckObjectAccessType"
	.byte		0
	.4byte		.L11805
.L11806:
	.sleb128	18
	.byte		"Os_API_CheckObjectOwnershipType"
	.byte		0
	.4byte		.L11807
.L11808:
	.sleb128	18
	.byte		"Os_API_CallTrustedFunctionType"
	.byte		0
	.4byte		.L11809
.L11810:
	.sleb128	18
	.byte		"Os_API_StackUsageType"
	.byte		0
	.4byte		.L11811
.L11812:
	.sleb128	18
	.byte		"Os_API_GetSpinlockType"
	.byte		0
	.4byte		.L11813
.L11814:
	.sleb128	18
	.byte		"Os_API_ReleaseSpinlockType"
	.byte		0
	.4byte		.L11815
.L11816:
	.sleb128	18
	.byte		"Os_API_TryToGetSpinlockType"
	.byte		0
	.4byte		.L11817
.L11818:
	.sleb128	18
	.byte		"Os_API_IocTransferType"
	.byte		0
	.4byte		.L11819
.L11820:
	.sleb128	18
	.byte		"Os_API_ControlIdleType"
	.byte		0
	.4byte		.L11821
.L11823:
	.sleb128	18
	.byte		"IdleModeType"
	.byte		0
	.4byte		.L11824
.L11828:
	.sleb128	18
	.byte		"Os_IOC_ChannelStatType"
	.byte		0
	.4byte		.L11829
.L11827:
	.sleb128	20
	.4byte		.L11828
.L11826:
	.sleb128	21
	.4byte		.L11827
	.section	.debug_info,,n
.L11835:
	.sleb128	27
	.byte		"void"
	.byte		0
	.byte		0x0
.L11834:
	.sleb128	21
	.4byte		.L11835
.L11832:
	.sleb128	22
	.4byte		.L11833-.L2
	.4byte		.L11834
	.sleb128	23
	.uleb128	1
	.sleb128	0
.L11833:
.L11831:
	.sleb128	18
	.byte		"Os_IOC_DataType"
	.byte		0
	.4byte		.L11832
.L11830:
	.sleb128	21
	.4byte		.L11831
.L11837:
	.sleb128	18
	.byte		"SpinlockIdType"
	.byte		0
	.4byte		.L11452
.L11839:
	.sleb128	18
	.byte		"TryToGetSpinlockType"
	.byte		0
	.4byte		.L11840
.L11838:
	.sleb128	21
	.4byte		.L11839
.L11844:
	.sleb128	21
	.4byte		.L11592
.L11846:
	.sleb128	18
	.byte		"TrustedFunctionIndexType"
	.byte		0
	.4byte		.L11464
.L11847:
	.sleb128	18
	.byte		"TrustedFunctionParameterRefType"
	.byte		0
	.4byte		.L11834
.L11848:
	.sleb128	18
	.byte		"Os_TrustedFunctionReturnValueType"
	.byte		0
	.4byte		.L11849
.L11851:
	.sleb128	18
	.byte		"ApplicationType"
	.byte		0
	.4byte		.L11592
.L11852:
	.sleb128	18
	.byte		"ObjectTypeType"
	.byte		0
	.4byte		.L11853
.L11856:
	.sleb128	18
	.byte		"AlarmType"
	.byte		0
	.4byte		.L11463
.L11861:
	.sleb128	21
	.4byte		.L11539
.L11860:
	.sleb128	18
	.byte		"TickRefType"
	.byte		0
	.4byte		.L11861
.L11865:
	.sleb128	18
	.byte		"AlarmBaseType"
	.byte		0
	.4byte		.L11866
.L11864:
	.sleb128	21
	.4byte		.L11865
.L11863:
	.sleb128	18
	.byte		"AlarmBaseRefType"
	.byte		0
	.4byte		.L11864
.L11874:
	.sleb128	18
	.byte		"ScheduleTableStatusType"
	.byte		0
	.4byte		.L11875
.L11873:
	.sleb128	21
	.4byte		.L11874
.L11872:
	.sleb128	18
	.byte		"ScheduleTableStatusRefType"
	.byte		0
	.4byte		.L11873
.L11880:
	.sleb128	18
	.byte		"CounterType"
	.byte		0
	.4byte		.L11464
.L11884:
	.sleb128	24
	.4byte		.L11885-.L2
	.byte		0x1
	.sleb128	25
	.4byte		.L11722
	.sleb128	0
.L11885:
.L11883:
	.sleb128	21
	.4byte		.L11884
.L11882:
	.sleb128	18
	.byte		"LightServiceFunctionType"
	.byte		0
	.4byte		.L11883
.L11889:
	.sleb128	18
	.byte		"RestartType"
	.byte		0
	.4byte		.L11592
.L11894:
	.sleb128	18
	.byte		"ApplicationStateType"
	.byte		0
	.4byte		.L11592
.L11893:
	.sleb128	21
	.4byte		.L11894
.L11892:
	.sleb128	18
	.byte		"ApplicationStateRefType"
	.byte		0
	.4byte		.L11893
.L11898:
	.sleb128	19
	.byte		"unsigned long long"
	.byte		0
	.byte		0x7
	.byte		0x8
.L11897:
	.sleb128	18
	.byte		"uint64"
	.byte		0
	.4byte		.L11898
.L11896:
	.sleb128	18
	.byte		"EventMaskType"
	.byte		0
	.4byte		.L11897
.L11901:
	.sleb128	21
	.4byte		.L11896
.L11900:
	.sleb128	18
	.byte		"EventMaskRefType"
	.byte		0
	.4byte		.L11901
.L11907:
	.sleb128	18
	.byte		"TaskStateType"
	.byte		0
	.4byte		.L11908
.L11906:
	.sleb128	21
	.4byte		.L11907
.L11905:
	.sleb128	18
	.byte		"TaskStateRefType"
	.byte		0
	.4byte		.L11906
.L11911:
	.sleb128	21
	.4byte		.L11505
.L11910:
	.sleb128	18
	.byte		"TaskRefType"
	.byte		0
	.4byte		.L11911
.L11915:
	.sleb128	18
	.byte		"ResourceType"
	.byte		0
	.4byte		.L11464
.L11918:
	.sleb128	18
	.byte		"AppModeType"
	.byte		0
	.4byte		.L11464
.L11923:
	.sleb128	18
	.byte		"Os_CoreShutdownType"
	.byte		0
	.4byte		.L11924
.L11927:
	.sleb128	21
	.4byte		.L11591
.L11934:
	.sleb128	18
	.byte		"Os_IOC_ChannelDynType"
	.byte		0
	.4byte		.L11935
.L11933:
	.sleb128	21
	.4byte		.L11934
.L11932:
	.sleb128	20
	.4byte		.L11933
.L11936:
	.sleb128	18
	.byte		"Os_IOC_ChannelSizeType"
	.byte		0
	.4byte		.L11452
.L11937:
	.sleb128	20
	.4byte		.L11834
.L11938:
	.sleb128	20
	.4byte		.L11452
.L11940:
	.sleb128	18
	.byte		"Os_IOC_DataCountType"
	.byte		0
	.4byte		.L11592
.L11939:
	.sleb128	20
	.4byte		.L11940
.L11944:
	.sleb128	18
	.byte		"Os_IOC_DataDescriptorType"
	.byte		0
	.4byte		.L11945
.L11943:
	.sleb128	20
	.4byte		.L11944
.L11942:
	.sleb128	21
	.4byte		.L11943
.L11941:
	.sleb128	20
	.4byte		.L11942
.L11948:
	.sleb128	18
	.byte		"Os_LockResourceType"
	.byte		0
	.4byte		.L11592
.L11947:
	.sleb128	21
	.4byte		.L11948
.L11946:
	.sleb128	20
	.4byte		.L11947
.L11951:
	.sleb128	18
	.byte		"Os_IOC_DataLengthType"
	.byte		0
	.4byte		.L11452
.L11950:
	.sleb128	20
	.4byte		.L11951
.L11953:
	.sleb128	18
	.byte		"Os_IOC_DataOffsetType"
	.byte		0
	.4byte		.L11452
.L11952:
	.sleb128	20
	.4byte		.L11953
.L11959:
	.sleb128	18
	.byte		"Os_CounterStatType"
	.byte		0
	.4byte		.L11960
.L11958:
	.sleb128	20
	.4byte		.L11959
.L11957:
	.sleb128	21
	.4byte		.L11958
.L11956:
	.sleb128	20
	.4byte		.L11957
.L11962:
	.sleb128	18
	.byte		"Os_SchTblSyncStrategyType"
	.byte		0
	.4byte		.L11963
.L11961:
	.sleb128	20
	.4byte		.L11962
.L11965:
	.sleb128	18
	.byte		"Os_SchTblRepeatingType"
	.byte		0
	.4byte		.L11966
.L11964:
	.sleb128	20
	.4byte		.L11965
.L11970:
	.sleb128	18
	.byte		"Os_AccessStorageType"
	.byte		0
	.4byte		.L11464
.L11969:
	.sleb128	20
	.4byte		.L11970
.L11968:
	.sleb128	21
	.4byte		.L11969
.L11967:
	.sleb128	20
	.4byte		.L11968
.L11971:
	.sleb128	20
	.4byte		.L11671
.L11975:
	.sleb128	18
	.byte		"Os_SchTblAutoStartStatType"
	.byte		0
	.4byte		.L11976
.L11974:
	.sleb128	20
	.4byte		.L11975
.L11973:
	.sleb128	21
	.4byte		.L11974
.L11972:
	.sleb128	20
	.4byte		.L11973
.L11979:
	.sleb128	18
	.byte		"Os_SchTblAutoStartKindType"
	.byte		0
	.4byte		.L11980
.L11978:
	.sleb128	20
	.4byte		.L11979
.L11983:
	.sleb128	20
	.4byte		.L11534
.L11982:
	.sleb128	21
	.4byte		.L11983
.L11985:
	.sleb128	20
	.4byte		.L11464
.L11988:
	.sleb128	20
	.4byte		.L11505
.L11987:
	.sleb128	21
	.4byte		.L11988
.L11986:
	.sleb128	20
	.4byte		.L11987
.L11992:
	.sleb128	18
	.byte		"Os_SchTblActionEventSetStatType"
	.byte		0
	.4byte		.L11993
.L11991:
	.sleb128	20
	.4byte		.L11992
.L11990:
	.sleb128	21
	.4byte		.L11991
.L11989:
	.sleb128	20
	.4byte		.L11990
.L11995:
	.sleb128	20
	.4byte		.L11896
.L11998:
	.sleb128	18
	.byte		"Os_HookIDType"
	.byte		0
	.4byte		.L11452
.L12003:
	.sleb128	18
	.byte		"Os_ProcDynType"
	.byte		0
	.4byte		.L12004
.L12002:
	.sleb128	21
	.4byte		.L12003
.L12001:
	.sleb128	20
	.4byte		.L12002
.L12008:
	.sleb128	18
	.byte		"Os_ProcStackType"
	.byte		0
	.4byte		.L12009
.L12007:
	.sleb128	20
	.4byte		.L12008
.L12006:
	.sleb128	21
	.4byte		.L12007
.L12005:
	.sleb128	20
	.4byte		.L12006
.L12011:
	.sleb128	18
	.byte		"Os_ProcKindType"
	.byte		0
	.4byte		.L12012
.L12010:
	.sleb128	20
	.4byte		.L12011
.L12013:
	.sleb128	20
	.4byte		.L11688
.L12015:
	.sleb128	18
	.byte		"Os_ActivationCountType"
	.byte		0
	.4byte		.L11464
.L12014:
	.sleb128	20
	.4byte		.L12015
.L12016:
	.sleb128	20
	.4byte		.L11664
.L12020:
	.sleb128	24
	.4byte		.L12021-.L2
	.byte		0x1
	.sleb128	0
.L12021:
.L12019:
	.sleb128	21
	.4byte		.L12020
.L12018:
	.sleb128	18
	.byte		"Os_ProcEntryPointType"
	.byte		0
	.4byte		.L12019
.L12017:
	.sleb128	20
	.4byte		.L12018
.L12022:
	.sleb128	20
	.4byte		.L11915
.L12027:
	.sleb128	18
	.byte		"Os_ResourceStatType"
	.byte		0
	.4byte		.L12028
.L12026:
	.sleb128	20
	.4byte		.L12027
.L12025:
	.sleb128	21
	.4byte		.L12026
.L12024:
	.sleb128	18
	.byte		"Os_ResourceStack"
	.byte		0
	.4byte		.L12025
.L12023:
	.sleb128	21
	.4byte		.L12024
.L12029:
	.sleb128	20
	.4byte		.L11693
.L12030:
	.sleb128	20
	.4byte		.L11698
.L12033:
	.sleb128	18
	.byte		"Os_StackSizeType"
	.byte		0
	.4byte		.L11464
.L12032:
	.sleb128	20
	.4byte		.L12033
.L12035:
	.sleb128	18
	.byte		"Os_ProcContexStateType"
	.byte		0
	.4byte		.L12036
.L12038:
	.sleb128	20
	.4byte		.L12039
.L12037:
	.sleb128	21
	.4byte		.L12038
.L12043:
	.sleb128	18
	.byte		"Os_CounterKindType"
	.byte		0
	.4byte		.L12044
.L12042:
	.sleb128	20
	.4byte		.L12043
.L12047:
	.sleb128	18
	.byte		"Os_CounterDynType"
	.byte		0
	.4byte		.L12048
.L12046:
	.sleb128	21
	.4byte		.L12047
.L12045:
	.sleb128	20
	.4byte		.L12046
.L12051:
	.sleb128	18
	.byte		"Os_CounterEPType"
	.byte		0
	.4byte		.L12052
.L12050:
	.sleb128	21
	.4byte		.L12051
.L12049:
	.sleb128	20
	.4byte		.L12050
.L12055:
	.sleb128	18
	.byte		"Os_CounterEPActionType"
	.byte		0
	.4byte		.L12056
.L12054:
	.sleb128	21
	.4byte		.L12055
.L12053:
	.sleb128	20
	.4byte		.L12054
.L12058:
	.sleb128	18
	.byte		"Os_TimerType"
	.byte		0
	.4byte		.L11464
.L12057:
	.sleb128	20
	.4byte		.L12058
.L12062:
	.sleb128	18
	.byte		"Os_CounterActionOwnerType"
	.byte		0
	.4byte		.L12063
.L12066:
	.sleb128	20
	.4byte		.L11837
.L12069:
	.sleb128	18
	.byte		"Os_SpinlockDynType"
	.byte		0
	.4byte		.L12070
.L12068:
	.sleb128	21
	.4byte		.L12069
.L12067:
	.sleb128	20
	.4byte		.L12068
.L12075:
	.sleb128	18
	.byte		"Os_ApplicationDynType"
	.byte		0
	.4byte		.L12076
.L12074:
	.sleb128	21
	.4byte		.L12075
.L12073:
	.sleb128	20
	.4byte		.L12074
.L12077:
	.sleb128	20
	.4byte		.L11851
.L12079:
	.sleb128	18
	.byte		"Os_ApplicationKindType"
	.byte		0
	.4byte		.L12080
.L12078:
	.sleb128	20
	.4byte		.L12079
.L12084:
	.sleb128	24
	.4byte		.L12085-.L2
	.byte		0x1
	.sleb128	25
	.4byte		.L11591
	.sleb128	0
.L12085:
.L12083:
	.sleb128	21
	.4byte		.L12084
.L12082:
	.sleb128	18
	.byte		"Os_ShutdownHookFuncType"
	.byte		0
	.4byte		.L12083
.L12081:
	.sleb128	20
	.4byte		.L12082
.L12089:
	.sleb128	24
	.4byte		.L12090-.L2
	.byte		0x1
	.sleb128	0
.L12090:
.L12088:
	.sleb128	21
	.4byte		.L12089
.L12087:
	.sleb128	18
	.byte		"Os_StartUpHookFuncType"
	.byte		0
	.4byte		.L12088
.L12086:
	.sleb128	20
	.4byte		.L12087
.L12094:
	.sleb128	24
	.4byte		.L12095-.L2
	.byte		0x1
	.sleb128	25
	.4byte		.L11591
	.sleb128	0
.L12095:
.L12093:
	.sleb128	21
	.4byte		.L12094
.L12092:
	.sleb128	18
	.byte		"Os_ErrorHookFuncType"
	.byte		0
	.4byte		.L12093
.L12091:
	.sleb128	20
	.4byte		.L12092
.L12098:
	.sleb128	20
	.4byte		.L11506
.L12097:
	.sleb128	21
	.4byte		.L12098
.L12096:
	.sleb128	20
	.4byte		.L12097
.L12101:
	.sleb128	20
	.4byte		.L11880
.L12100:
	.sleb128	21
	.4byte		.L12101
.L12099:
	.sleb128	20
	.4byte		.L12100
.L12104:
	.sleb128	20
	.4byte		.L11856
.L12103:
	.sleb128	21
	.4byte		.L12104
.L12102:
	.sleb128	20
	.4byte		.L12103
.L12106:
	.sleb128	21
	.4byte		.L11472
.L12105:
	.sleb128	20
	.4byte		.L12106
.L12111:
	.sleb128	18
	.byte		"Os_ResourceDynType"
	.byte		0
	.4byte		.L12112
.L12110:
	.sleb128	21
	.4byte		.L12111
.L12118:
	.sleb128	24
	.4byte		.L12119-.L2
	.byte		0x1
	.sleb128	0
.L12119:
.L12117:
	.sleb128	21
	.4byte		.L12118
.L12116:
	.sleb128	18
	.byte		"Os_IsrHandlerFuncType"
	.byte		0
	.4byte		.L12117
.L12115:
	.sleb128	20
	.4byte		.L12116
.L12126:
	.sleb128	18
	.byte		"Os_IsrPlatformLevelType"
	.byte		0
	.4byte		.L11452
.L12125:
	.sleb128	20
	.4byte		.L12126
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11440:
	.sleb128	0
.L11436:

	.section	.debug_loc,,n
	.align	0
.L11454:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locend
.L11461:
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),3
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),0
	.d2locend
.L11466:
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo6),3
	.d2locend
.L11474:
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo9),3
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo11),5
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo13),5
	.d2locend
.L11479:
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo15),31
	.d2locend
.L11485:
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo17),0
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo19),0
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo21),0
	.d2locend
.L11488:
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo17),3
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo21),3
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo25),3
	.d2locend
.L11499:
	.d2locreg	%offsetof(.Llo26), %offsetof(.Llo27),3
	.d2locreg	%offsetof(.Llo28), %offsetof(.Llo29),30
	.d2locreg	%offsetof(.Llo30), %offsetof(.Llo31),3
	.d2locend
.L11507:
	.d2locreg	%offsetof(.Llo28), %offsetof(.Llo32),31
	.d2locend
.L11513:
	.d2locreg	%offsetof(.Llo33), %offsetof(.Llo29),31
	.d2locend
.L11528:
	.d2locreg	%offsetof(.Llo34), %offsetof(.Llo35),3
	.d2locreg	%offsetof(.Llo36), %offsetof(.Llo37),5
	.d2locreg	%offsetof(.Llo38), %offsetof(.Llo39),5
	.d2locend
.L11535:
	.d2locreg	%offsetof(.Llo40), %offsetof(.Llo38),4
	.d2locend
.L11537:
	.d2locreg	%offsetof(.Llo41), %offsetof(.Llo42),6
	.d2locreg	%offsetof(.Llo43), %offsetof(.Llo44),6
	.d2locreg	%offsetof(.Llo45), %offsetof(.Llo46),6
	.d2locend
.L11540:
	.d2locreg	%offsetof(.Llo47), %offsetof(.Llo48),6
	.d2locreg	%offsetof(.Llo46), %offsetof(.Llo49),6
	.d2locend
.L11546:
	.d2locreg	%offsetof(.Llo50), %offsetof(.Llo51),7
	.d2locend
.L11548:
	.d2locreg	%offsetof(.Llo44), %offsetof(.Llo47),6
	.d2locend
.L11554:
	.d2locreg	%offsetof(.Llo52), %offsetof(.Llo53),3
	.d2locreg	%offsetof(.Llo54), %offsetof(.Llo55),31
	.d2locreg	%offsetof(.Llo56), %offsetof(.Llo57),31
	.d2locreg	%offsetof(.Llo58), %offsetof(.Llo59),31
	.d2locend
.L11556:
	.d2locreg	%offsetof(.Llo60), %offsetof(.Llo55),31
	.d2locreg	%offsetof(.Llo56), %offsetof(.Llo57),31
	.d2locreg	%offsetof(.Llo58), %offsetof(.Llo59),31
	.d2locend
.L11558:
	.d2locreg	%offsetof(.Llo61), %offsetof(.Llo62),4
	.d2locreg	%offsetof(.Llo63), %offsetof(.Llo64),4
	.d2locreg	%offsetof(.Llo65), %offsetof(.Llo66),5
	.d2locreg	%offsetof(.Llo67), %offsetof(.Llo68),3
	.d2locreg	%offsetof(.Llo69), %offsetof(.Llo70),5
	.d2locreg	%offsetof(.Llo71), %offsetof(.Llo72),5
	.d2locreg	%offsetof(.Llo56), %offsetof(.Llo73),4
	.d2locreg	%offsetof(.Llo74), %offsetof(.Llo75),3
	.d2locreg	%offsetof(.Llo58), %offsetof(.Llo59),4
	.d2locend
.L11560:
	.d2locreg	%offsetof(.Llo53), %offsetof(.Llo76),3
	.d2locreg	%offsetof(.Llo77), %offsetof(.Llo78),3
	.d2locreg	%offsetof(.Llo63), %offsetof(.Llo79),3
	.d2locreg	%offsetof(.Llo67), %offsetof(.Llo80),6
	.d2locreg	%offsetof(.Llo71), %offsetof(.Llo81),6
	.d2locreg	%offsetof(.Llo56), %offsetof(.Llo82),3
	.d2locreg	%offsetof(.Llo83), %offsetof(.Llo84),3
	.d2locreg	%offsetof(.Llo85), %offsetof(.Llo86),3
	.d2locreg	%offsetof(.Llo87), %offsetof(.Llo74),3
	.d2locreg	%offsetof(.Llo88), %offsetof(.Llo89),4
	.d2locreg	%offsetof(.Llo58), %offsetof(.Llo59),3
	.d2locend
.L11566:
	.d2locreg	%offsetof(.Llo90), %offsetof(.Llo91),3
	.d2locreg	%offsetof(.Llo92), %offsetof(.Llo93),0
	.d2locreg	%offsetof(.Llo94), %offsetof(.Llo70),0
	.d2locreg	%offsetof(.Llo95), %offsetof(.Llo96),0
	.d2locreg	%offsetof(.Llo97), %offsetof(.Llo80),0
	.d2locreg	%offsetof(.Llo71), %offsetof(.Llo98),0
	.d2locreg	%offsetof(.Llo99), %offsetof(.Llo100),3
	.d2locreg	%offsetof(.Llo83), %offsetof(.Llo101),6
	.d2locreg	%offsetof(.Llo75), %offsetof(.Llo102),6
	.d2locend
.L11568:
	.d2locreg	%offsetof(.Llo103), %offsetof(.Llo98),29
	.d2locreg	%offsetof(.Llo56), %offsetof(.Llo82),29
	.d2locend
.L11574:
	.d2locreg	%offsetof(.Llo64), %offsetof(.Llo104),4
	.d2locreg	%offsetof(.Llo71), %offsetof(.Llo105),4
	.d2locend
.L11580:
	.d2locreg	%offsetof(.Llo106), %offsetof(.Llo93),0
	.d2locreg	%offsetof(.Llo71), %offsetof(.Llo98),0
	.d2locend
.L11586:
	.d2locreg	%offsetof(.Llo107), %offsetof(.Llo57),0
	.d2locend
.L11600:
	.d2locreg	%offsetof(.Llo108), %offsetof(.Llo109),3
	.d2locreg	%offsetof(.Llo110), %offsetof(.Llo111),3
	.d2locreg	%offsetof(.Llo112), %offsetof(.Llo113),3
	.d2locend
.L11601:
	.d2locreg	%offsetof(.Llo108), %offsetof(.Llo114),4
	.d2locreg	%offsetof(.Llo115), %offsetof(.Llo110),0
	.d2locreg	%offsetof(.Llo116), %offsetof(.Llo112),0
	.d2locreg	%offsetof(.Llo117), %offsetof(.Llo118),0
	.d2locend
.L11603:
	.d2locreg	%offsetof(.Llo119), %offsetof(.Llo110),3
	.d2locreg	%offsetof(.Llo120), %offsetof(.Llo121),3
	.d2locend
.L11609:
	.d2locreg	%offsetof(.Llo122), %offsetof(.Llo123),3
	.d2locreg	%offsetof(.Llo124), %offsetof(.Llo125),7
	.d2locend
.L11610:
	.d2locreg	%offsetof(.Llo122), %offsetof(.Llo126),4
	.d2locreg	%offsetof(.Llo124), %offsetof(.Llo125),8
	.d2locreg	%offsetof(.Llo127), %offsetof(.Llo128),8
	.d2locreg	%offsetof(.Llo129), %offsetof(.Llo130),8
	.d2locend
.L11612:
	.d2locreg	%offsetof(.Llo131), %offsetof(.Llo132),3
	.d2locreg	%offsetof(.Llo133), %offsetof(.Llo129),3
	.d2locreg	%offsetof(.Llo130), %offsetof(.Llo134),3
	.d2locend
.L11618:
	.d2locreg	%offsetof(.Llo135), %offsetof(.Llo136),3
	.d2locreg	%offsetof(.Llo137), %offsetof(.Llo138),31
	.d2locend
.L11620:
	.d2locreg	%offsetof(.Llo135), %offsetof(.Llo139),4
	.d2locreg	%offsetof(.Llo140), %offsetof(.Llo138),30
	.d2locend
.L11622:
	.d2locreg	%offsetof(.Llo135), %offsetof(.Llo138),29
	.d2locend
.L11624:
	.d2locreg	%offsetof(.Llo141), %offsetof(.Llo142),3
	.d2locreg	%offsetof(.Llo143), %offsetof(.Llo144),3
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "Os_SchTblStartRel"
	.wrcm.nstrlist "calls", "Os_CounterRegisterIndication","Os_CounterStopAndGetValue"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Os_SchTbl_Err_Dyn"
	.wrcm.nstrlist "calls", "Os_Isr_GetState"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Os_SchTbl_Err_Stat"
	.wrcm.nstrlist "calls", "Os_Access_Check"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Os_SchTblCounterIndication"
	.wrcm.nstrlist "calls", "Os_CounterRegisterIndication","Os_SchTblGetAllowedDeviation","Os_SchTblProcessEp","Os_SchTblRegisterNextAction"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Os_SchTblRegisterNextAction"
	.wrcm.nstrlist "calls", "Os_CounterRegisterIndication","Os_SchTblGetAllowedDeviation"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Os_SchTblGetAllowedDeviation"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Os_SchTblProcessEp"
	.wrcm.nstrlist "calls", "Os_DispatchActivateTask","Os_DispatchSetEvent"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Os_SchTblKill"
	.wrcm.nstrlist "calls", "Os_CounterCancelIndication"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Os_SchTblInit"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Os_ScheduleTable.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Os_ScheduleTable.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Os_ScheduleTable.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Os_ScheduleTable.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Os_ScheduleTable.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Os_ScheduleTable.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\Os\Os\core\ssc\make\..\src\expiry_element\schedule_table\Os_ScheduleTable.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
