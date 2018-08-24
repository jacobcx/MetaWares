#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Os_Counter.c"
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
.L11590:
	.section	.Os_TEXT,,c
#$$ld
.L11586:
	.0byte		.L11584
	.d2_line_start	.debug_line.Os_TEXT
	.section	.Os_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_Isr.h"
        .d2line         227,45
#$$ld
.L11593:

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
.L11594:
	.type		Os_Isr_GetState,@function
	.size		Os_Isr_GetState,.-Os_Isr_GetState
# Number of nodes = 36

# Allocations for Os_Isr_GetState
#	?a4		coreId
# FUNC (void, OS_CODE) Os_CounterInit(CONST(CoreIdType,AUTOMATIC) coreID)
	.align		2
	.section	.Os_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\counter\\Os_Counter.c"
        .d2line         126,22
#$$ld
.L11606:

#$$bf	Os_CounterInit,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r31,cr0,lr
	.globl		Os_CounterInit
	.d2_cfa_start __cie
Os_CounterInit:
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
#     VAR(Os_ObjectType,AUTOMATIC) counterId;
# 
#     for( counterId =  Os_CounterRange[coreID].Os_ObjStartId;
	.d2line		130
.Llo4:
	lis		r3,Os_CounterRange@ha
.Llo5:
	e_add16i		r3,r3,Os_CounterRange@l
	rlwinm		r5,r0,3,13,28		# coreID=r0
	lwzx		r3,r3,r5
.Llo7:
	mr		r3,r3		# counterId=r3 counterId=r3
.L11351:
	lis		r4,(Os_CounterRange+4)@ha		# cntrActionIdx=r4
.Llo8:
	e_add16i		r4,r4,(Os_CounterRange+4)@l		# cntrActionIdx=r4 cntrActionIdx=r4
	rlwinm		r5,r0,3,13,28		# counter=r5 coreID=r0
	lwzx		r4,r4,r5		# cntrActionIdx=r4 cntrActionIdx=r4
	se_cmpl		r4,r3		# cntrActionIdx=r4 counterId=r3
	bc		1,0,.L11350	# lt
	.section	.Os_TEXT,,c
.L11616:
#          counterId <= Os_CounterRange[coreID].Os_ObjEndId;
#          counterId++ )
#     {
#         VAR(Os_ObjectType,AUTOMATIC) cntrActionIdx;
#         P2CONST(Os_CounterStatType,AUTOMATIC,OS_CONST) counter     = &Os_CounterStat[counterId];
	.d2line		135
.Llo9:
	lis		r5,Os_CounterStat@ha		# counter=r5
.Llo14:
	e_add16i		r5,r5,Os_CounterStat@l		# counter=r5 counter=r5
	e_mulli		r4,r3,48		# cntrActionIdx=r4 counterId=r3
.Llo10:
	se_add		r4,r5		# cntrActionIdx=r4 cntrActionIdx=r4 counter=r5
.Llo11:
	mr		r5,r4		# counter=r5 counter=r4
#         counter->Os_CounterRegistry->Os_CounterNextEP              = NULL_PTR;
	.d2line		136
	diab.li		r31,0
	lwz		r4,20(r5)		# cntrActionIdx=r4 counter=r5
.Llo12:
	stw		r31,4(r4)		# cntrActionIdx=r4
#         counter->Os_CounterRegistry->Os_CounterValue               = (TickType)0U;
	.d2line		137
	lwz		r4,20(r5)		# cntrActionIdx=r4 counter=r5
	stw		r31,0(r4)		# cntrActionIdx=r4
# 
#         /* Initialize Free EP and Free Action stacks */
#         counter->Os_CounterRegistry->Os_CounterNextFreeEP         = &(counter->Os_CounterEPs[0]);
	.d2line		140
	lwz		r6,24(r5)		# counter=r5
	lwz		r4,20(r5)		# cntrActionIdx=r4 counter=r5
	stw		r6,8(r4)		# cntrActionIdx=r4
#         counter->Os_CounterRegistry->Os_CounterNextFreeAction     = &(counter->Os_CounterActions[0]);
	.d2line		141
	lwz		r6,28(r5)		# counter=r5
	lwz		r4,20(r5)		# cntrActionIdx=r4 counter=r5
	stw		r6,12(r4)		# cntrActionIdx=r4
#         for(cntrActionIdx = 0; cntrActionIdx < counter->Os_CounterPoolSize; cntrActionIdx++)
	.d2line		142
	diab.li		r4,0		# cntrActionIdx=r4
.L11354:
	lwz		r6,16(r5)		# counter=r5
	se_cmpl		r6,r4		# cntrActionIdx=r4
	bc		0,1,.L11356	# le
#         {
#             counter->Os_CounterActions[cntrActionIdx].Os_CounterActionOwner      = OS_COUNTERACTION_OWNER_INVALID;
	.d2line		144
	diab.li		r7,0
	lwz		r6,28(r5)		# counter=r5
	e_mulli		r31,r4,12		# cntrActionIdx=r4
	stwx		r7,r6,r31
#             counter->Os_CounterActions[cntrActionIdx].Os_CounterActionObject     = (Os_ObjectType)0U;
	.d2line		145
	lwz		r6,28(r5)		# counter=r5
	se_add		r6,r31
	stw		r7,4(r6)
#             /*double cast is needed due to the union*/
#             counter->Os_CounterActions[cntrActionIdx].Os_CounterActionNextAction =
	.d2line		147
	lwz		r6,16(r5)		# counter=r5
	diab.addi		r6,r6,-1
	se_cmpl		r6,r4		# cntrActionIdx=r4
	bc		1,2,.L11357	# eq
	lwz		r7,28(r5)		# counter=r5
	e_mulli		r31,r4,12		# cntrActionIdx=r4
	se_add		r7,r31
	se_addi		r7,12
	b		.L11358
.L11357:
	diab.li		r7,0
.L11358:
	lwz		r6,28(r5)		# counter=r5
	e_mulli		r31,r4,12		# cntrActionIdx=r4
	se_add		r6,r31
	stw		r7,8(r6)
#                     ( cntrActionIdx != (Os_ObjectType)(counter->Os_CounterPoolSize -1U) ) ?
#                                                             &(counter->Os_CounterActions[cntrActionIdx + 1U]) :
#                                                             NULL_PTR;
# 
#             counter->Os_CounterEPs[cntrActionIdx].Os_CounterEPDueValue  = 0U;
	.d2line		152
	diab.li		r7,0
	lwz		r6,24(r5)		# counter=r5
	rlwinm		r31,r4,4,0,27		# cntrActionIdx=r4
	stwx		r7,r6,r31
#             counter->Os_CounterEPs[cntrActionIdx].Os_CounterEPNextEP    =
	.d2line		153
	lwz		r6,16(r5)		# counter=r5
	diab.addi		r6,r6,-1
	se_cmpl		r6,r4		# cntrActionIdx=r4
	bc		1,2,.L11359	# eq
	lwz		r7,24(r5)		# counter=r5
	rlwinm		r31,r4,4,0,27		# cntrActionIdx=r4
	se_add		r7,r31
	se_addi		r7,16
	b		.L11360
.L11359:
	diab.li		r7,0
.L11360:
	lwz		r6,24(r5)		# counter=r5
	rlwinm		r31,r4,4,0,27		# cntrActionIdx=r4
	se_add		r6,r31
	stw		r7,12(r6)
#                     ( cntrActionIdx != (Os_ObjectType)(counter->Os_CounterPoolSize - 1U)) ?
#                                                             &(counter->Os_CounterEPs[cntrActionIdx + 1U]) :
#                                                             NULL_PTR;
#             counter->Os_CounterEPs[cntrActionIdx].Os_CounterLastAction  = NULL_PTR;
	.d2line		157
	diab.li		r7,0
	lwz		r6,24(r5)		# counter=r5
	se_add		r6,r31
	stw		r7,8(r6)
#             counter->Os_CounterEPs[cntrActionIdx].Os_CounterNextAction  = NULL_PTR;
	.d2line		158
	lwz		r6,24(r5)		# counter=r5
	se_add		r6,r31
	stw		r7,4(r6)
#         }
	.d2line		159
	diab.addi		r31,r4,1		# cntrActionIdx=r4
	se_addi		r4,1		# cntrActionIdx=r4 cntrActionIdx=r4
	b		.L11354
.L11356:
	.section	.Os_TEXT,,c
.L11617:
#     }
	.d2line		160
.Llo13:
	diab.addi		r4,r3,1		# cntrActionIdx=r4 counterId=r3
	se_addi		r3,1		# counterId=r3 counterId=r3
	b		.L11351
.L11350:
# }
	.d2line		161
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
.L11607:
	.type		Os_CounterInit,@function
	.size		Os_CounterInit,.-Os_CounterInit
# Number of nodes = 220

# Allocations for Os_CounterInit
#	?a4		coreID
#	?a5		$$2355
#	?a6		$$2354
#	?a7		counterId
#	?a8		cntrActionIdx
#	?a9		counter
# LOCAL_INLINE FUNC(void,OS_CODE) Os_CounterRemoveAction (
	.align		1
	.section	.Os_TEXT,,c
        .d2line         713,33
#$$ld
.L11630:

#$$bf	Os_CounterRemoveAction,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Os_CounterRemoveAction:
.Llo15:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# counterDyn=r31 counterDyn=r3
	mr		r30,r4		# currentEP=r30 currentEP=r4
	mr		r29,r5		# prevAction=r29 prevAction=r5
	mr		r28,r6		# removeAction=r28 removeAction=r6
	.d2prologue_end
#         CONSTP2VAR (Os_CounterDynType,      AUTOMATIC, OS_VAR)  counterDyn,
#         CONSTP2VAR (Os_CounterEPType,       AUTOMATIC, OS_VAR)  currentEP,
#         CONSTP2VAR (Os_CounterEPActionType, AUTOMATIC, OS_VAR)  prevAction,
#         CONSTP2VAR (Os_CounterEPActionType, AUTOMATIC, OS_VAR)  removeAction )
# {
#     /* Check Action position*/
#     if ( currentEP->Os_CounterNextAction == currentEP->Os_CounterLastAction )
	.d2line		720
	lwz		r0,4(r30)		# currentEP=r30
	lwz		r3,8(r30)		# currentEP=r30
.Llo16:
	se_cmpl		r0,r3
	bc		0,2,.L11487	# ne
#     {
#         /* Only one action */
#         currentEP->Os_CounterNextAction = NULL_PTR;
	.d2line		723
.Llo17:
	diab.li		r0,0
.Llo19:
	stw		r0,4(r30)		# currentEP=r30
#         currentEP->Os_CounterLastAction = NULL_PTR;
	.d2line		724
	stw		r0,8(r30)		# currentEP=r30
	b		.L11488
.L11487:
#     }
#     else if ( removeAction == currentEP->Os_CounterLastAction )
	.d2line		726
	lwz		r0,8(r30)		# currentEP=r30
	se_cmpl		r0,r28		# removeAction=r28
	bc		0,2,.L11489	# ne
#     {
#         /* Tail */
#         OS_ASSERT(prevAction != NULL_PTR,E_OS_SYS_COUNTER_ACTIONCHAINISBROKEN);
	.d2line		729
	se_cmpi		r29,0		# prevAction=r29
	bc		0,2,.L11492	# ne
	diab.li		r4,36
	lis		r3,(Os_Core_DynShared+12)@ha
	e_add16i		r3,r3,(Os_Core_DynShared+12)@l
	mfspr		r0,286
	rlwinm		r0,r0,0,16,31
	e_mulli		r0,r0,152
	stwx		r4,r3,r0
	diab.li		r3,30
	bl		Os_ShutdownAllCores
.L11492:
#         currentEP->Os_CounterLastAction         = prevAction;
	.d2line		730
	stw		r29,8(r30)		# currentEP=r30 prevAction=r29
#         prevAction->Os_CounterActionNextAction  = NULL_PTR;
	.d2line		731
	diab.li		r0,0
	stw		r0,8(r29)		# prevAction=r29
	b		.L11488
.L11489:
#     }
#     else if ( removeAction == currentEP->Os_CounterNextAction )
	.d2line		733
	lwz		r0,4(r30)		# currentEP=r30
	se_cmpl		r0,r28		# removeAction=r28
	bc		0,2,.L11496	# ne
#     {
#         /* Head */
#         currentEP->Os_CounterNextAction = removeAction->Os_CounterActionNextAction;
	.d2line		736
	lwz		r0,8(r28)		# removeAction=r28
	stw		r0,4(r30)		# currentEP=r30
	b		.L11488
.L11496:
#     }
#     else
#     {
#         /* Body */
#         OS_ASSERT(prevAction != NULL_PTR,E_OS_SYS_COUNTER_ACTIONCHAINISBROKEN2);
	.d2line		741
	se_cmpi		r29,0		# prevAction=r29
	bc		0,2,.L11500	# ne
.Llo20:
	diab.li		r4,37
	lis		r3,(Os_Core_DynShared+12)@ha
	e_add16i		r3,r3,(Os_Core_DynShared+12)@l
	mfspr		r0,286
	rlwinm		r0,r0,0,16,31
	e_mulli		r0,r0,152
	stwx		r4,r3,r0
	diab.li		r3,30
	bl		Os_ShutdownAllCores
.L11500:
#         prevAction->Os_CounterActionNextAction = removeAction->Os_CounterActionNextAction;
	.d2line		742
.Llo21:
	lwz		r0,8(r28)		# removeAction=r28
	stw		r0,8(r29)		# prevAction=r29
.L11488:
#     }
# 
#     /* Destruct the action */
#     removeAction->Os_CounterActionOwner       =   OS_COUNTERACTION_OWNER_INVALID;
	.d2line		746
.Llo23:
	diab.li		r3,0
.Llo24:
	stw		r3,0(r28)		# removeAction=r28
#     removeAction->Os_CounterActionObject      =   (Os_ObjectType) 0U;
	.d2line		747
	stw		r3,4(r28)		# removeAction=r28
#     removeAction->Os_CounterActionNextAction  =   NULL_PTR;
	.d2line		748
	stw		r3,8(r28)		# removeAction=r28
# 
#     /* Release the action */
#     removeAction->Os_CounterActionNextAction = counterDyn->Os_CounterNextFreeAction;
	.d2line		751
	lwz		r3,12(r31)		# counterDyn=r31
	stw		r3,8(r28)		# removeAction=r28
#     counterDyn->Os_CounterNextFreeAction     = removeAction;
	.d2line		752
	stw		r28,12(r31)		# counterDyn=r31 removeAction=r28
# 
#     return;
# }
	.d2line		755
	.d2epilogue_begin
	lmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_restore_list	3,10
.Llo18:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo22:
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11631:
	.type		Os_CounterRemoveAction,@function
	.size		Os_CounterRemoveAction,.-Os_CounterRemoveAction
# Number of nodes = 143

# Allocations for Os_CounterRemoveAction
#	?a4		counterDyn
#	?a5		currentEP
#	?a6		prevAction
#	?a7		removeAction
# LOCAL_INLINE FUNC(void,OS_CODE) Os_CounterRemoveEP(
	.align		1
	.section	.Os_TEXT,,c
        .d2line         810,33
#$$ld
.L11651:

#$$bf	Os_CounterRemoveEP,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Os_CounterRemoveEP:
.Llo25:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# counterReg=r3 counterReg=r3
	mr		r31,r4		# prevEP=r31 prevEP=r4
	mr		r30,r5		# removeEP=r30 removeEP=r5
	.d2prologue_end
#         CONSTP2VAR(Os_CounterDynType, AUTOMATIC, OS_VAR)          counterReg,
#         CONSTP2VAR(Os_CounterEPType,AUTOMATIC,OS_VAR)       prevEP,
#         CONSTP2CONST(Os_CounterEPType,AUTOMATIC,OS_VAR)     removeEP)
# {
#     /* check EP position */
#     if ( removeEP == counterReg->Os_CounterNextEP )
	.d2line		816
	lwz		r0,4(r3)		# counterReg=r3
	se_cmpl		r0,r30		# removeEP=r30
	bc		0,2,.L11515	# ne
#     {
#         /* Head */
#         counterReg->Os_CounterNextEP  =  removeEP->Os_CounterEPNextEP;
	.d2line		819
.Llo29:
	lwz		r0,12(r30)		# removeEP=r30
.Llo30:
	stw		r0,4(r3)		# counterReg=r3
	b		.L11514
.L11515:
#     }
#     else
#     {
#         /* BodyAndTail */
#         OS_ASSERT(prevEP != NULL_PTR, E_OS_SYS_COUNTER_EPCHAINISBROKEN);
	.d2line		824
	se_cmpi		r31,0		# prevEP=r31
	bc		0,2,.L11519	# ne
.Llo26:
	diab.li		r4,38
	lis		r3,(Os_Core_DynShared+12)@ha		# counterReg=r3
.Llo27:
	e_add16i		r3,r3,(Os_Core_DynShared+12)@l		# counterReg=r3 counterReg=r3
	mfspr		r0,286
	rlwinm		r0,r0,0,16,31
	e_mulli		r0,r0,152
	stwx		r4,r3,r0		# counterReg=r3
	diab.li		r3,30		# counterReg=r3
.Llo28:
	bl		Os_ShutdownAllCores
.L11519:
#         prevEP->Os_CounterEPNextEP    =  removeEP->Os_CounterEPNextEP;
	.d2line		825
	lwz		r0,12(r30)		# removeEP=r30
	stw		r0,12(r31)		# prevEP=r31
.L11514:
#     }
#     return;
# }
	.d2line		828
	.d2epilogue_begin
.Llo31:
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo32:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo33:
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11652:
	.type		Os_CounterRemoveEP,@function
	.size		Os_CounterRemoveEP,.-Os_CounterRemoveEP
# Number of nodes = 48

# Allocations for Os_CounterRemoveEP
#	?a4		counterReg
#	?a5		prevEP
#	?a6		removeEP
# LOCAL_INLINE FUNC(void, OS_CODE) Os_ReleaseEP(
	.align		1
	.section	.Os_TEXT,,c
        .d2line         674,34
#$$ld
.L11662:

#$$bf	Os_ReleaseEP,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,lr
	.d2_cfa_start __cie
Os_ReleaseEP:
.Llo34:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# counterDyn=r3 counterDyn=r3
	mr		r4,r4		# releasedEP=r4 releasedEP=r4
	.d2prologue_end
#         CONSTP2VAR (Os_CounterDynType, AUTOMATIC, OS_VAR) counterDyn,
#         P2VAR(Os_CounterEPType,AUTOMATIC,OS_VAR) releasedEP)
# {
#     releasedEP->Os_CounterEPNextEP = counterDyn->Os_CounterNextFreeEP;
	.d2line		678
	lwz		r5,8(r3)		# counterDyn=r3
	stw		r5,12(r4)		# releasedEP=r4
#     counterDyn->Os_CounterNextFreeEP = releasedEP;
	.d2line		679
	stw		r4,8(r3)		# counterDyn=r3 releasedEP=r4
# }
	.d2line		680
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo35:
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11663:
	.type		Os_ReleaseEP,@function
	.size		Os_ReleaseEP,.-Os_ReleaseEP
# Number of nodes = 15

# Allocations for Os_ReleaseEP
#	?a4		counterDyn
#	?a5		releasedEP
# LOCAL_INLINE FUNC(void,OS_CODE) Os_CounterDestructEP(
	.align		1
	.section	.Os_TEXT,,c
        .d2line         844,33
#$$ld
.L11669:

#$$bf	Os_CounterDestructEP,interprocedural,rasave,nostackparams

# Regs written: r0,r1,r3,r4,r5,lr
	.d2_cfa_start __cie
Os_CounterDestructEP:
.Llo36:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r4,r4		# destructEP=r4 destructEP=r4
	.d2prologue_end
#         CONSTP2VAR(Os_CounterDynType, AUTOMATIC, OS_VAR) counterDyn,
#         CONSTP2VAR(Os_CounterEPType,AUTOMATIC,OS_VAR) destructEP)
# {
#     /* TODO check if de-initialization is actually needed*/
#     /* De-initialize */
#     destructEP->Os_CounterEPDueValue  = (TickType)0U;
	.d2line		850
	diab.li		r0,0
	stw		r0,0(r4)		# destructEP=r4
#     destructEP->Os_CounterLastAction  = NULL_PTR;
	.d2line		851
	stw		r0,8(r4)		# destructEP=r4
#     destructEP->Os_CounterNextAction  = NULL_PTR;
	.d2line		852
	stw		r0,4(r4)		# destructEP=r4
#     destructEP->Os_CounterEPNextEP    = NULL_PTR;
	.d2line		853
	stw		r0,12(r4)		# destructEP=r4
# 
#     Os_ReleaseEP(counterDyn, destructEP);
	.d2line		855
	mr		r0,r3		# counterDyn=r0 counterDyn=r3
	mr		r4,r4		# destructEP=r4 destructEP=r4
.Llo38:
	bl		Os_ReleaseEP
# 
#     return;
# }
	.d2line		858
	.d2epilogue_begin
.Llo37:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11670:
	.type		Os_CounterDestructEP,@function
	.size		Os_CounterDestructEP,.-Os_CounterDestructEP
# Number of nodes = 28

# Allocations for Os_CounterDestructEP
#	?a4		counterDyn
#	?a5		destructEP
# FUNC (void, OS_CODE) Os_CounterKill(CONST(CounterType,AUTOMATIC)counterId)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         170,22
#$$ld
.L11676:

#$$bf	Os_CounterKill,interprocedural,rasave,nostackparams
	.globl		Os_CounterKill
	.d2_cfa_start __cie
Os_CounterKill:
.Llo39:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr
	stmw		r27,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	27,31,1,1
	stw		r0,52(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# counterId=r31 counterId=r3
	.d2prologue_end
# {
# 
#     CONSTP2VAR (Os_CounterDynType, AUTOMATIC, OS_VAR) counterReg = Os_CounterStat[counterId].Os_CounterRegistry;
	.d2line		173
.Llo40:
	lis		r3,(Os_CounterStat+20)@ha
.Llo41:
	e_add16i		r3,r3,(Os_CounterStat+20)@l
	e_mulli		r0,r31,48		# counterId=r31
	lwzx		r30,r3,r0		# counterReg=r30
.Llo45:
	mr		r30,r30		# counterReg=r30 counterReg=r30
# 
#     P2VAR(Os_CounterEPActionType,AUTOMATIC,OS_VAR)    nextAction;
#     P2VAR(Os_CounterEPType,AUTOMATIC,OS_VAR)          currentEP;
#     P2VAR(Os_CounterEPType,AUTOMATIC,OS_VAR)          nextEP;
# 
#     /* Find the current Action of EP of Counter  */
#     currentEP = counterReg->Os_CounterNextEP;
	.d2line		180
	lwz		r28,4(r30)		# counterReg=r30
.Llo50:
	mr		r28,r28		# currentEP=r28 currentEP=r28
.L11370:
#     while ( currentEP != NULL_PTR )
	.d2line		181
	se_cmpi		r28,0		# currentEP=r28
	bc		1,2,.L11371	# eq
	.section	.Os_TEXT,,c
.L11690:
#     {
#         /* Initialize for head (Os_CounterNextAction) */
#         P2VAR(Os_CounterEPActionType,AUTOMATIC,OS_VAR) currentAction= currentEP->Os_CounterNextAction;
	.d2line		184
	lwz		r6,4(r28)		# currentAction=r6 currentEP=r28
.Llo54:
	mr		r6,r6		# currentAction=r6 currentAction=r6
# 
#         nextEP = currentEP->Os_CounterEPNextEP;
	.d2line		186
	lwz		r27,12(r28)		# currentEP=r28
.Llo52:
	mr		r27,r27		# nextEP=r27 nextEP=r27
.L11372:
# 
#         while ( currentAction != NULL_PTR )
	.d2line		188
.Llo53:
	se_cmpi		r6,0		# currentAction=r6
	bc		1,2,.L11373	# eq
#         {
#             nextAction = currentAction->Os_CounterActionNextAction;
	.d2line		190
	lwz		r29,8(r6)		# currentAction=r6
.Llo48:
	mr		r29,r29		# nextAction=r29 nextAction=r29
# 
#             Os_CounterRemoveAction ( counterReg, currentEP, NULL_PTR, currentAction );
	.d2line		192
.Llo49:
	mr		r3,r30		# counterReg=r3 counterReg=r30
	mr		r4,r28		# currentEP=r4 currentEP=r28
	diab.li		r5,0		# currentEP=r5
	mr		r6,r6		# currentAction=r6 currentAction=r6
	bl		Os_CounterRemoveAction
# 
#             currentAction = nextAction;
	.d2line		194
	mr		r6,r29		# currentAction=r6 currentAction=r29
	b		.L11372
.L11373:
#         }
# 
#         Os_CounterRemoveEP   ( counterReg, NULL_PTR, currentEP );
	.d2line		197
.Llo55:
	mr		r3,r30		# counterReg=r3 counterReg=r30
	diab.li		r4,0		# currentEP=r4
	mr		r5,r28		# currentEP=r5 currentEP=r28
	bl		Os_CounterRemoveEP
#         Os_CounterDestructEP ( counterReg, currentEP);
	.d2line		198
	mr		r3,r30		# counterReg=r3 counterReg=r30
	mr		r4,r28		# currentEP=r4 currentEP=r28
	bl		Os_CounterDestructEP
# 
#         currentEP = nextEP;
	.d2line		200
	mr		r28,r27		# currentEP=r28 currentEP=r27
	.section	.Os_TEXT,,c
.L11691:
	b		.L11370
.L11371:
#     }
# 
#     Os_CounterStat[counterId].Os_CounterRegistry->Os_CounterNextEP = NULL_PTR;
	.d2line		203
.Llo42:
	diab.li		r3,0		# counterReg=r3
.Llo46:
	lis		r4,(Os_CounterStat+20)@ha		# currentEP=r4
.Llo51:
	e_add16i		r4,r4,(Os_CounterStat+20)@l		# currentEP=r4 currentEP=r4
.Llo43:
	e_mulli		r31,r31,48		# counterId=r31 counterId=r31
.Llo44:
	lwzux		r5,r4,r31		# currentEP=r5 currentEP=r4
	stw		r3,4(r5)		# currentEP=r5 counterReg=r3
#     Os_CounterStat[counterId].Os_CounterRegistry->Os_CounterValue  = (TickType)0U;
	.d2line		204
	lis		r4,(Os_CounterStat+20)@ha		# currentEP=r4
	e_add16i		r4,r4,(Os_CounterStat+20)@l		# currentEP=r4 currentEP=r4
	lwzx		r4,r4,r31		# currentEP=r4 currentEP=r4
	stw		r3,0(r4)		# currentEP=r4 counterReg=r3
# 
# }
	.d2line		206
	.d2epilogue_begin
	lmw		r27,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,52(r1)
	mtspr		lr,r0
	diab.addi		r1,r1,48		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo47:
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11677:
	.type		Os_CounterKill,@function
	.size		Os_CounterKill,.-Os_CounterKill
# Number of nodes = 99

# Allocations for Os_CounterKill
#	?a4		counterId
#	?a5		counterReg
#	?a6		nextAction
#	?a7		currentEP
#	?a8		nextEP
#	?a9		currentAction
# LOCAL_INLINE FUNC(void,OS_CODE) Os_OwnerIndicateAction( CONST(Os_CounterActionOwnerType,AUTOMATIC) counterActionOwner,
	.align		1
	.section	.Os_TEXT,,c
        .d2line         997,33
#$$ld
.L11698:

#$$bf	Os_OwnerIndicateAction,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Os_OwnerIndicateAction:
.Llo56:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# counterActionOwner=r3 counterActionOwner=r3
	mr		r4,r4		# counterActionObject=r4 counterActionObject=r4
	.d2prologue_end
#                                           CONST(Os_ObjectType,AUTOMATIC)             counterActionObject)
# {
#     /* [OS410-01] [OS410-02] */
#     switch (counterActionOwner)
	.d2line		1001
	mr		r6,r3		# counterActionOwner=r6 counterActionOwner=r3
	se_cmpi		r6,1
	bc		1,2,.L11560	# eq
.Llo57:
	se_cmpi		r6,2
	bc		1,2,.L11562	# eq
	b		.L11563
.L11560:
#     {
#         case OS_COUNTERACTION_ALARM:
#             Os_AlarmCounterIndication(counterActionObject);
	.d2line		1004
	mr		r3,r4		# counterActionObject=r3 counterActionObject=r4
	bl		Os_AlarmCounterIndication
.Llo58:
	b		.L11559
.L11562:
#             break;
# 
#         case OS_COUNTERACTION_SCHTBL:
#             Os_SchTblCounterIndication(counterActionObject);
	.d2line		1008
.Llo59:
	mr		r3,r4		# counterActionObject=r3 counterActionObject=r4
	bl		Os_SchTblCounterIndication
.Llo60:
	b		.L11559
.L11563:
#             break;
# 
#       #ifdef OS_MODULE_TIMINGPROTECTION
# 
#         case OS_COUNTERACTION_TP:
#             Os_TPCounterIndication ();
#             break;
# 
#       #endif /* OS_MODULE_TIMINGPROTECTION */
# 
#         default:
#             OS_FATAL_ERROR(E_OS_SYS_INVALID_COUNTEROWNER);
	.d2line		1020
	diab.li		r4,7
	lis		r3,(Os_Core_DynShared+12)@ha
	e_add16i		r3,r3,(Os_Core_DynShared+12)@l
	mfspr		r0,286
	rlwinm		r0,r0,0,16,31
	e_mulli		r0,r0,152
	stwx		r4,r3,r0
	diab.li		r3,30
	bl		Os_ShutdownAllCores
.L11559:
#             break;
#     }
# 
#     return;
# }
	.d2line		1025
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
.L11699:
	.type		Os_OwnerIndicateAction,@function
	.size		Os_OwnerIndicateAction,.-Os_OwnerIndicateAction
# Number of nodes = 33

# Allocations for Os_OwnerIndicateAction
#	?a4		counterActionOwner
#	?a5		counterActionObject
# LOCAL_INLINE FUNC(void,OS_CODE) Os_CounterActivateEP(
	.align		1
	.section	.Os_TEXT,,c
        .d2line         216,33
#$$ld
.L11709:

#$$bf	Os_CounterActivateEP,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Os_CounterActivateEP:
.Llo61:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr
	stmw		r27,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	27,31,1,1
	stw		r0,52(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# counterRef=r3 counterRef=r3
	mr		r31,r4		# activateEP=r31 activateEP=r4
	.d2prologue_end
#                                     CONSTP2CONST(Os_CounterStatType,TYPEDEF, OS_CONST)  counterRef,
#                                     CONSTP2VAR(Os_CounterEPType,AUTOMATIC,OS_VAR) activateEP
#                                 )
# {
#     CONSTP2VAR (Os_CounterDynType, AUTOMATIC, OS_VAR) counterReg = counterRef->Os_CounterRegistry;
	.d2line		221
	lwz		r30,20(r3)		# counterReg=r30 counterRef=r3
.Llo67:
	mr		r30,r30		# counterReg=r30 counterReg=r30
# 
#     P2VAR(Os_CounterEPActionType,AUTOMATIC,OS_VAR)    currentAction;
# 
#     /* step forward in the chain */
#     counterReg->Os_CounterNextEP  =  activateEP->Os_CounterEPNextEP;
	.d2line		226
	lwz		r0,12(r31)		# activateEP=r31
	stw		r0,4(r30)		# counterReg=r30
# 
#     currentAction = activateEP->Os_CounterNextAction;
	.d2line		228
	lwz		r29,4(r31)		# activateEP=r31
.Llo68:
	mr		r29,r29		# currentAction=r29 currentAction=r29
.L11379:
#     while(currentAction != NULL_PTR) /* [OS007-02] */
	.d2line		229
.Llo62:
	se_cmpi		r29,0		# currentAction=r29
.Llo63:
	bc		1,2,.L11380	# eq
	.section	.Os_TEXT,,c
.L11719:
#     {
#         /* Store for indication */
#         CONST(Os_CounterActionOwnerType,TYPEDEF)   currentActionOwner  = currentAction->Os_CounterActionOwner;
	.d2line		232
	lwz		r28,0(r29)		# currentAction=r29
.Llo70:
	mr		r28,r28		# currentActionOwner=r28 currentActionOwner=r28
#         CONST(Os_ObjectType,TYPEDEF)               currentActionObject = currentAction->Os_CounterActionObject;
	.d2line		233
	lwz		r27,4(r29)		# currentAction=r29
.Llo72:
	mr		r27,r27		# currentActionObject=r27 currentActionObject=r27
# 
#         /* Remove action before indicate fur to free place of next action registration of it */
#         Os_CounterRemoveAction ( counterReg, activateEP, NULL_PTR, currentAction );
	.d2line		236
	mr		r3,r30		# counterReg=r3 counterReg=r30
	mr		r4,r31		# activateEP=r4 activateEP=r31
	diab.li		r5,0
	mr		r6,r29		# currentAction=r6 currentAction=r29
	bl		Os_CounterRemoveAction
#         currentAction = activateEP->Os_CounterNextAction;
	.d2line		237
	lwz		r29,4(r31)		# currentAction=r29 activateEP=r31
	mr		r29,r29		# currentAction=r29 currentAction=r29
# 
#         Os_OwnerIndicateAction(currentActionOwner,currentActionObject);
	.d2line		239
	mr		r3,r28		# currentActionOwner=r3 currentActionOwner=r28
	mr		r4,r27		# currentActionObject=r4 currentActionObject=r27
	bl		Os_OwnerIndicateAction
	.section	.Os_TEXT,,c
.L11720:
.Llo71:
	b		.L11379
.L11380:
#     }
# 
#     if (activateEP->Os_CounterNextAction == NULL_PTR)
	.d2line		242
	lwz		r0,4(r31)		# activateEP=r31
	se_cmpi		r0,0
	bc		0,2,.L11378	# ne
#     {
#         Os_CounterDestructEP(counterReg, activateEP);
	.d2line		244
.Llo69:
	mr		r3,r30		# counterReg=r3 counterReg=r30
	mr		r4,r31		# activateEP=r4 activateEP=r31
	bl		Os_CounterDestructEP
.L11378:
#     }
#     else
#     {
#         /* do not destruct EP, an activation has been added to it by OwnerIndicateAction */
#     }
# 
#     return;
# }
	.d2line		252
	.d2epilogue_begin
.Llo64:
	lmw		r27,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo65:
	lwz		r0,52(r1)
	mtspr		lr,r0
	diab.addi		r1,r1,48		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo66:
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11710:
	.type		Os_CounterActivateEP,@function
	.size		Os_CounterActivateEP,.-Os_CounterActivateEP
# Number of nodes = 70

# Allocations for Os_CounterActivateEP
#	?a4		counterRef
#	?a5		activateEP
#	?a6		counterReg
#	?a7		currentAction
#	?a8		currentActionOwner
#	?a9		currentActionObject
# LOCAL_INLINE FUNC(TickType, OS_CODE)    Os_CounterCalculateRelativeToAbsolute(
	.align		1
	.section	.Os_TEXT,,c
        .d2line         1068,41
#$$ld
.L11729:

#$$bf	Os_CounterCalculateRelativeToAbsolute,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,cr0,lr
	.d2_cfa_start __cie
Os_CounterCalculateRelativeToAbsolute:
.Llo73:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# counterRef=r3 counterRef=r3
	mr		r4,r4		# relativeTicks=r4 relativeTicks=r4
	.d2prologue_end
#                                             CONSTP2CONST(Os_CounterStatType, AUTOMATIC, OS_CONST) counterRef,
#                                             VAR         (TickType,           AUTOMATIC)           relativeTicks
#                                         )
# {
#     CONST(TickType, AUTOMATIC) counterRemainingTicks =
	.d2line		1073
	lwz		r0,4(r3)		# counterRef=r3
	lwz		r5,20(r3)		# counterRef=r3
	lwz		r6,0(r5)
	subf		r6,r6,r0
.Llo76:
	mr		r6,r6		# counterRemainingTicks=r6 counterRemainingTicks=r6
#             (TickType)(Os_CounterGetMaxAllowedValue(counterRef) - counterRef->Os_CounterRegistry->Os_CounterValue);
#     VAR  (TickType, AUTOMATIC) absoluteValue;
# 
#     if(relativeTicks > Os_CounterGetMaxAllowedValue(counterRef))
	.d2line		1077
	se_cmpl		r0,r4		# relativeTicks=r4
	bc		0,0,.L11577	# ge
#     {
#         relativeTicks %= (TickType)(Os_CounterGetMaxAllowedValue(counterRef) + (TickType)1U);
	.d2line		1079
	lwz		r5,4(r3)		# counterRef=r3
	se_addi		r5,1
	divwu		r0,r4,r5		# relativeTicks=r4
	mullw		r0,r0,r5
	subf		r0,r0,r4		# relativeTicks=r4
	mr		r4,r0		# relativeTicks=r4 relativeTicks=r0
.L11577:
#     }
#     else
#     {
#         /* There is no need to do a costy modulo in vain. */
#     }
# 
#     if(counterRemainingTicks >= relativeTicks)
	.d2line		1086
	se_cmpl		r6,r4		# counterRemainingTicks=r6 relativeTicks=r4
	bc		1,0,.L11578	# lt
#     {
#         absoluteValue = (TickType)(counterRef->Os_CounterRegistry->Os_CounterValue + relativeTicks);
	.d2line		1088
	lwz		r3,20(r3)		# counterRef=r3 counterRef=r3
	lwz		r3,0(r3)		# counterRef=r3 counterRef=r3
	se_add		r3,r4		# counterRef=r3 counterRef=r3 relativeTicks=r4
.Llo74:
	mr		r3,r3		# absoluteValue=r3 absoluteValue=r3
	b		.L11579
.L11578:
#     }
#     else
#     {
#         absoluteValue = (TickType)((TickType)(relativeTicks - counterRemainingTicks) - (TickType)1U);
	.d2line		1092
.Llo77:
	subf		r6,r6,r4		# counterRemainingTicks=r6 counterRemainingTicks=r6 relativeTicks=r4
	addi		r3,r6,-1		# counterRef=r3 counterRemainingTicks=r6
.L11579:
#     }
# 
#     return absoluteValue;
	.d2line		1095
.Llo75:
	mr		r3,r3		# absoluteValue=r3 absoluteValue=r3
# }
	.d2line		1096
	.d2epilogue_begin
.Llo78:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11730:
	.type		Os_CounterCalculateRelativeToAbsolute,@function
	.size		Os_CounterCalculateRelativeToAbsolute,.-Os_CounterCalculateRelativeToAbsolute
# Number of nodes = 48

# Allocations for Os_CounterCalculateRelativeToAbsolute
#	?a4		counterRef
#	?a5		relativeTicks
#	?a6		counterRemainingTicks
#	?a7		absoluteValue
# FUNC(void, OS_CODE) Os_Counter_UpdateTicklessCounters(
	.align		2
	.section	.Os_TEXT,,c
        .d2line         260,21
#$$ld
.L11742:

#$$bf	Os_Counter_UpdateTicklessCounters,interprocedural,rasave,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,cr0,lr
	.globl		Os_Counter_UpdateTicklessCounters
	.d2_cfa_start __cie
Os_Counter_UpdateTicklessCounters:
.Llo79:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r7,r3		# counterRef=r7 counterRef=r3
	.d2prologue_end
#                         CONSTP2CONST(Os_CounterStatType, AUTOMATIC, OS_CONST) counterRef,
#                         CONST       (TickType,           AUTOMATIC)           tickCount
#                     )
# {
#     /* [D_OS0167] */
#     /* Increment the counters by 'tickCount' amount */
#     counterRef->Os_CounterRegistry->Os_CounterValue = Os_CounterCalculateRelativeToAbsolute(counterRef, tickCount);
	.d2line		267
.Llo80:
	mr		r3,r7		# counterRef=r3 counterRef=r7
.Llo81:
	mr		r0,r4		# tickCount=r0 tickCount=r4
	bl		Os_CounterCalculateRelativeToAbsolute
.Llo83:
	lwz		r4,20(r7)		# counterRef=r7
	stw		r3,0(r4)
# }
	.d2line		268
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo82:
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11743:
	.type		Os_Counter_UpdateTicklessCounters,@function
	.size		Os_Counter_UpdateTicklessCounters,.-Os_Counter_UpdateTicklessCounters
# Number of nodes = 12

# Allocations for Os_Counter_UpdateTicklessCounters
#	?a4		counterRef
#	?a5		tickCount
# FUNC(TickType, OS_CODE) Os_Counter_GetNextTicklessTicks(
	.align		2
	.section	.Os_TEXT,,c
        .d2line         275,25
#$$ld
.L11749:

#$$bf	Os_Counter_GetNextTicklessTicks,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,cr0,lr
	.globl		Os_Counter_GetNextTicklessTicks
	.d2_cfa_start __cie
Os_Counter_GetNextTicklessTicks:
.Llo84:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# counterRef=r3 counterRef=r3
	.d2prologue_end
#                             CONSTP2CONST(Os_CounterStatType, AUTOMATIC, OS_CONST) counterRef
#                         )
# {
#     CONSTP2VAR(Os_CounterDynType, AUTOMATIC, OS_VAR) counterReg = counterRef->Os_CounterRegistry;
	.d2line		279
	lwz		r4,20(r3)		# counterReg=r4 counterRef=r3
.Llo90:
	mr		r4,r4		# counterReg=r4 counterReg=r4
#     VAR(TickType, AUTOMATIC) nextTick;
# 
#     if(counterReg->Os_CounterNextEP != NULL_PTR)
	.d2line		282
	lwz		r0,4(r4)		# counterReg=r4
	se_cmpi		r0,0
	bc		1,2,.L11388	# eq
#     {
#         /* [D_OS0168] */
#         nextTick = Os_CounterTickDiff(counterRef,
	.d2line		285
	lwz		r0,0(r4)		# counterReg=r4
	lwz		r5,4(r4)		# counterReg=r4
	lwz		r5,0(r5)
	se_cmpl		r0,r5
	bc		0,0,.L11390	# ge
.Llo85:
	lwz		r3,4(r4)		# counterRef=r3 counterReg=r4
.Llo86:
	lwz		r0,0(r3)		# counterRef=r3
	lwz		r3,0(r4)		# counterRef=r3 counterReg=r4
	subf		r3,r3,r0		# counterRef=r3 counterRef=r3
.Llo87:
	b		.L11391
.L11390:
.Llo88:
	lwz		r0,4(r3)		# counterRef=r3
	lwz		r3,0(r4)		# counterRef=r3 counterReg=r4
	subf		r0,r3,r0		# counterRef=r3
	lwz		r3,4(r4)		# counterRef=r3 counterReg=r4
	lwz		r3,0(r3)		# counterRef=r3 counterRef=r3
	se_add		r3,r0		# counterRef=r3 counterRef=r3
	se_addi		r3,1		# counterRef=r3 counterRef=r3
.L11391:
.Llo89:
	mr		r3,r3		# nextTick=r3 nextTick=r3
	b		.L11389
.L11388:
#                                       counterReg->Os_CounterValue,
#                                       counterReg->Os_CounterNextEP->Os_CounterEPDueValue);
#     }
#     else
#     {
#         nextTick = (TickType)~(TickType)0U; /* [D_OS0169] */
	.d2line		291
.Llo91:
	diab.li		r3,-1		# nextTick=r3
.L11389:
#     }
# 
#     return nextTick;
	.d2line		294
.Llo92:
	mr		r3,r3		# nextTick=r3 nextTick=r3
# }
	.d2line		295
	.d2epilogue_begin
.Llo93:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11750:
	.type		Os_Counter_GetNextTicklessTicks,@function
	.size		Os_Counter_GetNextTicklessTicks,.-Os_Counter_GetNextTicklessTicks
# Number of nodes = 57

# Allocations for Os_Counter_GetNextTicklessTicks
#	?a4		counterRef
#	?a5		$$2356
#	?a6		counterReg
#	?a7		nextTick
# LOCAL_INLINE FUNC (void, OS_CODE)   Os_CounterExecuteCounterEPs(
	.align		1
	.section	.Os_TEXT,,c
        .d2line         1034,37
#$$ld
.L11759:

#$$bf	Os_CounterExecuteCounterEPs,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Os_CounterExecuteCounterEPs:
.Llo94:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# counterRef=r3 counterRef=r3
	.d2prologue_end
#                                         CONSTP2CONST(Os_CounterStatType, TYPEDEF, OS_CONST) counterRef
#                                     )
# {
#     CONSTP2VAR(Os_CounterDynType, AUTOMATIC, OS_VAR) counterReg = counterRef->Os_CounterRegistry;
	.d2line		1038
	lwz		r5,20(r3)		# counterReg=r5 counterRef=r3
.Llo96:
	mr		r5,r5		# counterReg=r5 counterReg=r5
#     P2VAR(Os_CounterEPType, AUTOMATIC, OS_VAR) currentEP;
# 
#     /* Check if there is any EP to execute. */
#     if(counterReg->Os_CounterNextEP != NULL_PTR)
	.d2line		1042
	lwz		r0,4(r5)		# counterReg=r5
	se_cmpi		r0,0
	bc		1,2,.L11569	# eq
#     {
#         /* Check if there is the time to execute the head EP */
#         currentEP = counterReg->Os_CounterNextEP;
	.d2line		1045
	lwz		r4,4(r5)		# currentEP=r4 counterReg=r5
.Llo98:
	mr		r4,r4		# currentEP=r4 currentEP=r4
#         if (counterReg->Os_CounterValue == currentEP->Os_CounterEPDueValue) /* [OS411-01] */
	.d2line		1046
	lwz		r0,0(r5)		# counterReg=r5
	lwz		r5,0(r4)		# counterReg=r5 currentEP=r4
	se_cmpl		r0,r5		# counterReg=r5
	bc		0,2,.L11569	# ne
#         {
#             /* Finish indication of Actions of this EP */
#             Os_CounterActivateEP(counterRef, currentEP); /* [OS286-03] [OS529] */
	.d2line		1049
.Llo97:
	mr		r3,r3		# counterRef=r3 counterRef=r3
.Llo95:
	mr		r4,r4		# currentEP=r4 currentEP=r4
.Llo99:
	bl		Os_CounterActivateEP
.L11569:
#         }
#         else
#         {
#             /* Do nothing on purpose. */
#         }
#     }
#     else
#     {
#         /* Do nothing on purpose. */
#     }
# }
	.d2line		1060
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
.L11760:
	.type		Os_CounterExecuteCounterEPs,@function
	.size		Os_CounterExecuteCounterEPs,.-Os_CounterExecuteCounterEPs
# Number of nodes = 30

# Allocations for Os_CounterExecuteCounterEPs
#	?a4		counterRef
#	?a5		counterReg
#	?a6		currentEP
# FUNC(TickType, OS_CODE) Os_Counter_IncrementTicklessTicks(
	.align		2
	.section	.Os_TEXT,,c
        .d2line         305,25
#$$ld
.L11769:

#$$bf	Os_Counter_IncrementTicklessTicks,interprocedural,rasave,nostackparams
	.globl		Os_Counter_IncrementTicklessTicks
	.d2_cfa_start __cie
Os_Counter_IncrementTicklessTicks:
.Llo100:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# counterRef=r31 counterRef=r3
	.d2prologue_end
#                             CONSTP2CONST(Os_CounterStatType, AUTOMATIC, OS_CONST) counterRef,
#                             CONST       (TickType,           AUTOMATIC)           tickCount
#                         )
# {
#     CONSTP2VAR(Os_CounterDynType, AUTOMATIC, OS_VAR) counterReg = counterRef->Os_CounterRegistry;
	.d2line		310
	lwz		r30,20(r31)		# counterReg=r30 counterRef=r31
	mr		r30,r30		# counterReg=r30 counterReg=r30
#     VAR(TickType, AUTOMATIC) nextTick;
# 
#     /* [D_OS0170] */
#     /* Increment the counters by 'tickCount' amount */
#     counterRef->Os_CounterRegistry->Os_CounterValue = Os_CounterCalculateRelativeToAbsolute(counterRef, tickCount);
	.d2line		315
	mr		r3,r31		# counterRef=r3 counterRef=r31
.Llo101:
	mr		r0,r4		# tickCount=r0 tickCount=r4
	bl		Os_CounterCalculateRelativeToAbsolute
.Llo102:
	lwz		r4,20(r31)		# counterRef=r31
	stw		r3,0(r4)		# counterRef=r3
# 
#     /* [D_OS0173] */
#     Os_CounterExecuteCounterEPs(counterRef);
	.d2line		318
	mr		r3,r31		# counterRef=r3 counterRef=r31
.Llo103:
	bl		Os_CounterExecuteCounterEPs
# 
#     if(counterReg->Os_CounterNextEP != NULL_PTR)
	.d2line		320
	lwz		r0,4(r30)		# counterReg=r30
	se_cmpi		r0,0
	bc		1,2,.L11397	# eq
#     {
#         /* [D_OS0171] */
#         nextTick = Os_CounterTickDiff(counterRef,
	.d2line		323
.Llo104:
	lwz		r0,0(r30)		# counterReg=r30
	lwz		r3,4(r30)		# counterRef=r3 counterReg=r30
	lwz		r3,0(r3)		# counterRef=r3 counterRef=r3
	se_cmpl		r0,r3		# counterRef=r3
	bc		0,0,.L11399	# ge
	lwz		r3,4(r30)		# counterRef=r3 counterReg=r30
	lwz		r0,0(r3)		# counterRef=r3
	lwz		r3,0(r30)		# counterRef=r3 counterReg=r30
	subf		r3,r3,r0		# counterRef=r3 counterRef=r3
.Llo108:
	b		.L11400
.L11399:
.Llo109:
	lwz		r0,4(r31)		# counterRef=r31
	lwz		r3,0(r30)		# counterRef=r3 counterReg=r30
	subf		r0,r3,r0		# counterRef=r3
	lwz		r3,4(r30)		# counterRef=r3 counterReg=r30
	lwz		r3,0(r3)		# counterRef=r3 counterRef=r3
	se_add		r3,r0		# counterRef=r3 counterRef=r3
	se_addi		r3,1		# counterRef=r3 counterRef=r3
.L11400:
.Llo105:
	mr		r3,r3		# nextTick=r3 nextTick=r3
	b		.L11398
.L11397:
#                                       counterReg->Os_CounterValue,
#                                       counterReg->Os_CounterNextEP->Os_CounterEPDueValue);
#     }
#     else
#     {
#         nextTick = (TickType)~(TickType)0U; /* [D_OS0172] */
	.d2line		329
.Llo106:
	diab.li		r3,-1		# nextTick=r3
.L11398:
#     }
# 
#     return nextTick;
	.d2line		332
.Llo107:
	mr		r3,r3		# nextTick=r3 nextTick=r3
# }
	.d2line		333
	.d2epilogue_begin
.Llo110:
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
.L11770:
	.type		Os_Counter_IncrementTicklessTicks,@function
	.size		Os_Counter_IncrementTicklessTicks,.-Os_Counter_IncrementTicklessTicks
# Number of nodes = 73

# Allocations for Os_Counter_IncrementTicklessTicks
#	?a4		counterRef
#	?a5		tickCount
#	?a6		$$2357
#	?a7		counterReg
#	?a8		nextTick
# FUNC (void, OS_CODE)    Os_CounterExecuteAutoStartCounterEPs(
	.align		2
	.section	.Os_TEXT,,c
        .d2line         340,25
#$$ld
.L11780:

#$$bf	Os_CounterExecuteAutoStartCounterEPs,interprocedural,rasave,nostackparams
	.globl		Os_CounterExecuteAutoStartCounterEPs
	.d2_cfa_start __cie
Os_CounterExecuteAutoStartCounterEPs:
.Llo111:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# counterRef=r3 counterRef=r3
	.d2prologue_end
#                             CONSTP2CONST(Os_CounterStatType, TYPEDEF, OS_CONST) counterRef
#                         )
# {
#     if(OS_SOFTWARE == counterRef->Os_CounterKind)
	.d2line		344
	lwz		r0,0(r3)		# counterRef=r3
	se_cmpi		r0,1
	bc		0,2,.L11405	# ne
#     {
#         Os_CounterExecuteCounterEPs(counterRef);
	.d2line		346
	mr		r3,r3		# counterRef=r3 counterRef=r3
.Llo112:
	bl		Os_CounterExecuteCounterEPs
.L11405:
#     }
#     else
#     {
#         /* Do nothing on purpose. */
#     }
# }
	.d2line		352
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
.L11781:
	.type		Os_CounterExecuteAutoStartCounterEPs,@function
	.size		Os_CounterExecuteAutoStartCounterEPs,.-Os_CounterExecuteAutoStartCounterEPs
# Number of nodes = 9

# Allocations for Os_CounterExecuteAutoStartCounterEPs
#	?a4		counterRef
# FUNC (void, OS_CODE) Os_CounterIncrementTicks(CONSTP2CONST(Os_CounterStatType,TYPEDEF, OS_CONST) counterRef)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         362,22
#$$ld
.L11786:

#$$bf	Os_CounterIncrementTicks,interprocedural,rasave,nostackparams
	.globl		Os_CounterIncrementTicks
	.d2_cfa_start __cie
Os_CounterIncrementTicks:
.Llo113:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# counterRef=r3 counterRef=r3
	.d2prologue_end
# {
#     CONSTP2VAR(Os_CounterDynType, AUTOMATIC, OS_VAR) counterReg = counterRef->Os_CounterRegistry;
	.d2line		364
	lwz		r5,20(r3)		# counterRef=r3
.Llo115:
	mr		r5,r5		# counterReg=r5 counterReg=r5
# 
#     /* Increment the tick */
#     if(counterReg->Os_CounterValue >= Os_CounterGetMaxAllowedValue(counterRef))
	.d2line		367
	lwz		r4,0(r5)		# counterReg=r5
	lwz		r0,4(r3)		# counterRef=r3
	se_cmpl		r4,r0
	bc		1,0,.L11410	# lt
#     {
#         counterReg->Os_CounterValue = (TickType)0U;
	.d2line		369
	diab.li		r0,0
	stw		r0,0(r5)		# counterReg=r5
	b		.L11411
.L11410:
#     }
#     else
#     {
#         counterReg->Os_CounterValue++; /* [OS286-02] */
	.d2line		373
	lwz		r4,0(r5)		# counterReg=r5
	se_addi		r4,1
	stw		r4,0(r5)		# counterReg=r5
.L11411:
#     }
# 
#     Os_CounterExecuteCounterEPs(counterRef);
	.d2line		376
.Llo116:
	mr		r3,r3		# counterRef=r3 counterRef=r3
.Llo114:
	bl		Os_CounterExecuteCounterEPs
# 
#     return;
# }
	.d2line		379
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
.L11787:
	.type		Os_CounterIncrementTicks,@function
	.size		Os_CounterIncrementTicks,.-Os_CounterIncrementTicks
# Number of nodes = 25

# Allocations for Os_CounterIncrementTicks
#	?a4		counterRef
#	?a5		counterReg
# FUNC(void,OS_CODE) Os_CounterCancelIndication(CONSTP2CONST(Os_CounterStatType,TYPEDEF, OS_CONST)  counterRef,
	.align		2
	.section	.Os_TEXT,,c
        .d2line         386,20
#$$ld
.L11794:

#$$bf	Os_CounterCancelIndication,interprocedural,rasave,nostackparams
	.globl		Os_CounterCancelIndication
	.d2_cfa_start __cie
Os_CounterCancelIndication:
.Llo117:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r6,r3		# counterRef=r6 counterRef=r3
.Llo118:
	mr		r4,r4		# counterActionOwner=r4 counterActionOwner=r4
.Llo119:
	mr		r3,r5		# counterActionObject=r3 counterActionObject=r5
	.d2prologue_end
#                                               CONST(Os_CounterActionOwnerType,AUTOMATIC)          counterActionOwner,
#                                               CONST(Os_ObjectType,AUTOMATIC)                      counterActionObject)
# {
#     CONSTP2VAR (Os_CounterDynType, AUTOMATIC, OS_VAR) counterReg = counterRef->Os_CounterRegistry;
	.d2line		390
	lwz		r31,20(r6)		# counterReg=r31 counterRef=r6
.Llo128:
	mr		r31,r31		# counterReg=r31 counterReg=r31
# 
#     P2VAR(Os_CounterEPType,AUTOMATIC,OS_VAR) currentEP = counterReg->Os_CounterNextEP;
	.d2line		392
	lwz		r30,4(r31)		# counterReg=r31
.Llo129:
	mr		r30,r30		# currentEP=r30 currentEP=r30
#     P2VAR(Os_CounterEPType,AUTOMATIC,OS_VAR) prevEP =  counterReg->Os_CounterNextEP;
	.d2line		393
.Llo130:
	mr		r29,r30		# currentEP=r29 currentEP=r30
	mr		r29,r29		# prevEP=r29 prevEP=r29
.L11415:
# 
#     /* Find the current Action of EP of Counter  */
#     while(currentEP != NULL_PTR)
	.d2line		396
.Llo120:
	se_cmpi		r30,0		# currentEP=r30
.Llo126:
	bc		1,2,.L11416	# eq
	.section	.Os_TEXT,,c
.L11806:
#     {
#         /* Initialize for head (Os_CounterNextAction) */
#         P2VAR(Os_CounterEPActionType,AUTOMATIC,OS_VAR) currentAction = currentEP->Os_CounterNextAction;
	.d2line		399
	lwz		r6,4(r30)		# counterRef=r6 currentEP=r30
.Llo131:
	mr		r6,r6		# currentAction=r6 currentAction=r6
#         P2VAR(Os_CounterEPActionType,AUTOMATIC,OS_VAR) prevAction    = currentEP->Os_CounterNextAction;
	.d2line		400
.Llo135:
	mr		r5,r6		# currentAction=r5 currentAction=r6
	mr		r5,r5		# prevAction=r5 prevAction=r5
.L11417:
#         while ( currentAction != NULL_PTR )
	.d2line		401
	se_cmpi		r6,0		# currentAction=r6
	bc		1,2,.L11418	# eq
#         {
#             /* Check if match */
#             if (    ( currentAction->Os_CounterActionOwner  == counterActionOwner )
	.d2line		404
	lwz		r0,0(r6)		# currentAction=r6
	se_cmp		r0,r4		# counterActionOwner=r4
	bc		0,2,.L11419	# ne
	lwz		r0,4(r6)		# currentAction=r6
	se_cmpl		r0,r3		# counterActionObject=r3
	bc		0,2,.L11419	# ne
#                  && ( currentAction->Os_CounterActionObject == counterActionObject ) )
#             {
#                 Os_CounterRemoveAction ( counterReg, currentEP, prevAction, currentAction );
	.d2line		407
.Llo121:
	mr		r3,r31		# counterReg=r3 counterReg=r31
	mr		r4,r30		# currentEP=r4 currentEP=r30
.Llo136:
	mr		r5,r5		# prevAction=r5 prevAction=r5
.Llo132:
	mr		r6,r6		# currentAction=r6 currentAction=r6
.Llo133:
	bl		Os_CounterRemoveAction
# 
#                 if ( currentEP->Os_CounterNextAction == NULL_PTR )
	.d2line		409
	lwz		r0,4(r30)		# currentEP=r30
	se_cmpi		r0,0
	bc		0,2,.L11414	# ne
#                 {
#                     Os_CounterRemoveEP   ( counterReg, prevEP, currentEP);
	.d2line		411
	mr		r3,r31		# counterReg=r3 counterReg=r31
	mr		r4,r29		# prevEP=r4 prevEP=r29
	mr		r5,r30		# currentEP=r5 currentEP=r30
	bl		Os_CounterRemoveEP
#                     Os_CounterDestructEP ( counterReg, currentEP);
	.d2line		412
	mr		r3,r31		# counterReg=r3 counterReg=r31
	mr		r4,r30		# currentEP=r4 currentEP=r30
	bl		Os_CounterDestructEP
	.d2line		415
	b		.L11414
.L11419:
#                 }
# 
#                 return;
#             }
# 
#             prevAction    = currentAction;
	.d2line		418
.Llo122:
	mr		r5,r6		# prevAction=r5 prevAction=r6
#             currentAction = currentAction->Os_CounterActionNextAction;
	.d2line		419
	lwz		r6,8(r6)		# currentAction=r6 currentAction=r6
	mr		r6,r6		# currentAction=r6 currentAction=r6
	b		.L11417
.L11418:
#         }
# 
#         prevEP    = currentEP;
	.d2line		422
	mr		r29,r30		# prevEP=r29 prevEP=r30
#         currentEP = currentEP->Os_CounterEPNextEP;
	.d2line		423
	lwz		r30,12(r30)		# currentEP=r30 currentEP=r30
	mr		r30,r30		# currentEP=r30 currentEP=r30
	.section	.Os_TEXT,,c
.L11807:
.Llo134:
	b		.L11415
.L11416:
#     }
# 
#     /* If this line is reached then the EP was not found, this could not happen.*/
#     OS_ASSERT(currentEP == NULL_PTR,E_OS_SYS_COUNTER_CANCELEDNOTFOUND);
	.d2line		427
	se_cmpi		r30,0		# currentEP=r30
	bc		1,2,.L11414	# eq
.Llo123:
	diab.li		r4,35		# counterActionOwner=r4
.Llo124:
	lis		r3,(Os_Core_DynShared+12)@ha		# counterActionObject=r3
	e_add16i		r3,r3,(Os_Core_DynShared+12)@l		# counterActionObject=r3 counterActionObject=r3
	mfspr		r0,286
	rlwinm		r0,r0,0,16,31
	e_mulli		r0,r0,152
	stwx		r4,r3,r0		# counterActionObject=r3 counterActionOwner=r4
	diab.li		r3,30		# counterActionObject=r3
	bl		Os_ShutdownAllCores
.L11414:
# }
	.d2line		428
	.d2epilogue_begin
.Llo125:
	lmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo127:
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11795:
	.type		Os_CounterCancelIndication,@function
	.size		Os_CounterCancelIndication,.-Os_CounterCancelIndication
# Number of nodes = 120

# Allocations for Os_CounterCancelIndication
#	?a4		counterRef
#	?a5		counterActionOwner
#	?a6		counterActionObject
#	?a7		counterReg
#	?a8		currentEP
#	?a9		prevEP
#	?a10		currentAction
#	?a11		prevAction
# FUNC(TickType,OS_CODE) Os_CounterRel2Abs(CONSTP2CONST(Os_CounterStatType,TYPEDEF, OS_CONST) counterRef,
	.align		2
	.section	.Os_TEXT,,c
        .d2line         508,24
#$$ld
.L11816:

#$$bf	Os_CounterRel2Abs,interprocedural,rasave,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,cr0,lr
	.globl		Os_CounterRel2Abs
	.d2_cfa_start __cie
Os_CounterRel2Abs:
.Llo137:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
#                                          CONST(TickType,AUTOMATIC)                          relValue)
# {
#     CONST(TickType, AUTOMATIC) absValue = Os_CounterCalculateRelativeToAbsolute(counterRef, relValue);
	.d2line		511
	mr		r0,r3		# counterRef=r0 counterRef=r3
	mr		r0,r4		# relValue=r0 relValue=r4
	bl		Os_CounterCalculateRelativeToAbsolute
# 
#     return absValue;
	.d2line		513
.Llo138:
	mr		r4,r3		# absValue=r4 absValue=r3
# }
	.d2line		514
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo139:
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11817:
	.type		Os_CounterRel2Abs,@function
	.size		Os_CounterRel2Abs,.-Os_CounterRel2Abs
# Number of nodes = 10

# Allocations for Os_CounterRel2Abs
#	?a4		counterRef
#	?a5		relValue
#	?a6		absValue
# LOCAL_INLINE FUNC(P2VAR(Os_CounterEPActionType,AUTOMATIC,OS_VAR), OS_CODE) Os_GetFreeAction(
	.align		1
	.section	.Os_TEXT,,c
        .d2line         689,76
#$$ld
.L11825:

#$$bf	Os_GetFreeAction,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,cr0,lr
	.d2_cfa_start __cie
Os_GetFreeAction:
.Llo140:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# counterDyn=r3 counterDyn=r3
	.d2prologue_end
#         CONSTP2VAR (Os_CounterDynType, AUTOMATIC, OS_VAR) counterDyn)
# {
#     P2VAR(Os_CounterEPActionType,AUTOMATIC,OS_VAR) freeAction = counterDyn->Os_CounterNextFreeAction;
	.d2line		692
	lwz		r0,12(r3)		# counterDyn=r3
	.d2line		694
	mr.		r4,r0		# freeAction=?a5 freeAction=?a6
# 
#     if(freeAction != NULL_PTR){
.Llo142:
	bc		1,2,.L11484	# eq
#         counterDyn->Os_CounterNextFreeAction = freeAction->Os_CounterActionNextAction;
	.d2line		695
	lwz		r0,8(r4)		# freeAction=r4
	stw		r0,12(r3)		# counterDyn=r3
.L11484:
#     }
# 
#     return freeAction;
	.d2line		698
.Llo141:
	mr		r3,r4		# freeAction=r3 freeAction=r4
# }
	.d2line		699
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo143:
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11826:
	.type		Os_GetFreeAction,@function
	.size		Os_GetFreeAction,.-Os_GetFreeAction
# Number of nodes = 20

# Allocations for Os_GetFreeAction
#	?a4		counterDyn
#	?a5		freeAction
# LOCAL_INLINE FUNC(P2VAR(Os_CounterEPActionType,AUTOMATIC,OS_VAR), OS_CODE) Os_CounterConstructAction(
	.align		1
	.section	.Os_TEXT,,c
        .d2line         765,76
#$$ld
.L11833:

#$$bf	Os_CounterConstructAction,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Os_CounterConstructAction:
.Llo144:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# counter=r3 counter=r3
	mr		r31,r4		# counterActionOwner=r31 counterActionOwner=r4
	mr		r29,r5		# counterActionObject=r29 counterActionObject=r5
	.d2prologue_end
#         CONSTP2CONST (Os_CounterStatType, AUTOMATIC, OS_CONST)  counter,
#         CONST(Os_CounterActionOwnerType,AUTOMATIC)              counterActionOwner,
#         CONST(Os_ObjectType, AUTOMATIC)                         counterActionObject)
# {
#     P2VAR(Os_CounterEPActionType, AUTOMATIC, OS_VAR) counterEPActionDyn = Os_GetFreeAction(counter->Os_CounterRegistry);
	.d2line		770
	lwz		r3,20(r3)		# counter=r3 counter=r3
.Llo145:
	bl		Os_GetFreeAction
	.d2line		771
.Llo146:
	mr.		r30,r3		# counterEPActionDyn=?a7 counterEPActionDyn=r3
#     if(counterEPActionDyn == NULL_PTR){
.Llo157:
	bc		0,2,.L11510	# ne
#         OS_FATAL_ERROR(E_OS_SYS_COUNTERACTION_OVERFLOW);
	.d2line		772
.Llo147:
	diab.li		r4,5
.Llo153:
	lis		r3,(Os_Core_DynShared+12)@ha		# counter=r3
.Llo148:
	e_add16i		r3,r3,(Os_Core_DynShared+12)@l		# counter=r3 counter=r3
	mfspr		r0,286
	rlwinm		r0,r0,0,16,31
	e_mulli		r0,r0,152
	stwx		r4,r3,r0		# counter=r3
	diab.li		r3,30		# counter=r3
.Llo149:
	bl		Os_ShutdownAllCores
.L11510:
#     }
# 
#     /* Initialize */
#     counterEPActionDyn->Os_CounterActionOwner       = counterActionOwner;
	.d2line		776
.Llo154:
	stw		r31,0(r30)		# counterEPActionDyn=r30 counterActionOwner=r31
#     counterEPActionDyn->Os_CounterActionObject      = counterActionObject;
	.d2line		777
.Llo155:
	stw		r29,4(r30)		# counterEPActionDyn=r30 counterActionObject=r29
#     counterEPActionDyn->Os_CounterActionNextAction  = NULL_PTR;
	.d2line		778
	diab.li		r3,0		# counter=r3
.Llo150:
	stw		r3,8(r30)		# counterEPActionDyn=r30 counter=r3
#     return counterEPActionDyn;
	.d2line		779
	mr		r3,r30		# counterEPActionDyn=r3 counterEPActionDyn=r30
# }
	.d2line		780
	.d2epilogue_begin
.Llo151:
	lmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	3,10
.Llo152:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo156:
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11834:
	.type		Os_CounterConstructAction,@function
	.size		Os_CounterConstructAction,.-Os_CounterConstructAction
# Number of nodes = 50

# Allocations for Os_CounterConstructAction
#	?a4		counter
#	?a5		counterActionOwner
#	?a6		counterActionObject
#	?a7		counterEPActionDyn
# LOCAL_INLINE FUNC(void, OS_CODE) Os_CounterAddAction(
	.align		1
	.section	.Os_TEXT,,c
        .d2line         789,34
#$$ld
.L11843:

#$$bf	Os_CounterAddAction,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,lr
	.d2_cfa_start __cie
Os_CounterAddAction:
.Llo158:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# addAction=r3 addAction=r3
	mr		r4,r4		# targetEP=r4 targetEP=r4
	.d2prologue_end
#         P2VAR(Os_CounterEPActionType,AUTOMATIC,OS_VAR)  addAction,
#         P2VAR(Os_CounterEPType,AUTOMATIC,OS_VAR)        targetEP)
# {
#     targetEP->Os_CounterLastAction->Os_CounterActionNextAction = addAction;
	.d2line		793
	lwz		r5,8(r4)		# targetEP=r4
	stw		r3,8(r5)		# addAction=r3
#     targetEP->Os_CounterLastAction = addAction;
	.d2line		794
	stw		r3,8(r4)		# targetEP=r4 addAction=r3
# }
	.d2line		795
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo159:
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11844:
	.type		Os_CounterAddAction,@function
	.size		Os_CounterAddAction,.-Os_CounterAddAction
# Number of nodes = 15

# Allocations for Os_CounterAddAction
#	?a4		addAction
#	?a5		targetEP
# LOCAL_INLINE FUNC(P2VAR(Os_CounterEPType,AUTOMATIC,OS_VAR), OS_CODE) Os_GetFreeEP(
	.align		1
	.section	.Os_TEXT,,c
        .d2line         655,70
#$$ld
.L11850:

#$$bf	Os_GetFreeEP,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,cr0,lr
	.d2_cfa_start __cie
Os_GetFreeEP:
.Llo160:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# counterDyn=r3 counterDyn=r3
	.d2prologue_end
#                                   CONSTP2VAR (Os_CounterDynType, AUTOMATIC, OS_VAR) counterDyn)
# {
#     P2VAR(Os_CounterEPType,AUTOMATIC,OS_VAR) freeEP = counterDyn->Os_CounterNextFreeEP;
	.d2line		658
	lwz		r0,8(r3)		# counterDyn=r3
	.d2line		660
	mr.		r4,r0		# freeEP=?a5 freeEP=?a6
# 
#     if(freeEP != NULL_PTR){
.Llo162:
	bc		1,2,.L11480	# eq
#         counterDyn->Os_CounterNextFreeEP = freeEP->Os_CounterEPNextEP;
	.d2line		661
	lwz		r0,12(r4)		# freeEP=r4
	stw		r0,8(r3)		# counterDyn=r3
.L11480:
#     }
# 
#     return freeEP;
	.d2line		664
.Llo161:
	mr		r3,r4		# freeEP=r3 freeEP=r4
# }
	.d2line		665
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo163:
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11851:
	.type		Os_GetFreeEP,@function
	.size		Os_GetFreeEP,.-Os_GetFreeEP
# Number of nodes = 20

# Allocations for Os_GetFreeEP
#	?a4		counterDyn
#	?a5		freeEP
# LOCAL_INLINE FUNC(P2VAR(Os_CounterEPType,AUTOMATIC,OS_VAR), OS_CODE) Os_CounterConstructEP(
	.align		1
	.section	.Os_TEXT,,c
        .d2line         868,70
#$$ld
.L11858:

#$$bf	Os_CounterConstructEP,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Os_CounterConstructEP:
.Llo164:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# counter=r3 counter=r3
	mr		r31,r4		# counterDueValue=r31 counterDueValue=r4
	mr		r29,r5		# counterEPAction=r29 counterEPAction=r5
	.d2prologue_end
#         CONSTP2CONST (Os_CounterStatType, AUTOMATIC, OS_CONST)       counter,
#         CONST(TickType,AUTOMATIC)                                    counterDueValue,
#         P2VAR(Os_CounterEPActionType,AUTOMATIC,OS_VAR)               counterEPAction)
# {
#     P2VAR(Os_CounterEPType, AUTOMATIC, OS_VAR) counterEPDyn = Os_GetFreeEP(counter->Os_CounterRegistry);
	.d2line		873
	lwz		r3,20(r3)		# counter=r3 counter=r3
.Llo165:
	bl		Os_GetFreeEP
	.d2line		874
.Llo166:
	mr.		r30,r3		# counterEPDyn=?a7 counterEPDyn=r3
#     if(counterEPDyn == NULL_PTR)
.Llo177:
	bc		0,2,.L11527	# ne
#     {
#         OS_FATAL_ERROR(E_OS_SYS_COUNTEREP_OVERFLOW);
	.d2line		876
.Llo167:
	diab.li		r4,6
.Llo173:
	lis		r3,(Os_Core_DynShared+12)@ha		# counter=r3
.Llo168:
	e_add16i		r3,r3,(Os_Core_DynShared+12)@l		# counter=r3 counter=r3
	mfspr		r0,286
	rlwinm		r0,r0,0,16,31
	e_mulli		r0,r0,152
	stwx		r4,r3,r0		# counter=r3
	diab.li		r3,30		# counter=r3
.Llo169:
	bl		Os_ShutdownAllCores
.L11527:
#     }
# 
#     /* Initialize */
#     counterEPDyn->Os_CounterEPDueValue = counterDueValue;
	.d2line		880
.Llo174:
	stw		r31,0(r30)		# counterEPDyn=r30 counterDueValue=r31
#     counterEPDyn->Os_CounterLastAction = counterEPAction;
	.d2line		881
.Llo175:
	stw		r29,8(r30)		# counterEPDyn=r30 counterEPAction=r29
#     counterEPDyn->Os_CounterNextAction = counterEPAction;
	.d2line		882
	stw		r29,4(r30)		# counterEPDyn=r30 counterEPAction=r29
#     counterEPDyn->Os_CounterEPNextEP   = NULL_PTR;
	.d2line		883
	diab.li		r3,0		# counter=r3
.Llo170:
	stw		r3,12(r30)		# counterEPDyn=r30 counter=r3
# 
#     return counterEPDyn;
	.d2line		885
	mr		r3,r30		# counterEPDyn=r3 counterEPDyn=r30
# }
	.d2line		886
	.d2epilogue_begin
.Llo171:
	lmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	3,10
.Llo172:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo176:
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11859:
	.type		Os_CounterConstructEP,@function
	.size		Os_CounterConstructEP,.-Os_CounterConstructEP
# Number of nodes = 56

# Allocations for Os_CounterConstructEP
#	?a4		counter
#	?a5		counterDueValue
#	?a6		counterEPAction
#	?a7		counterEPDyn
# LOCAL_INLINE FUNC(void, OS_CODE)Os_CounterInsertEP(
	.align		1
	.section	.Os_TEXT,,c
        .d2line         897,33
#$$ld
.L11868:

#$$bf	Os_CounterInsertEP,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,cr0,lr
	.d2_cfa_start __cie
Os_CounterInsertEP:
.Llo178:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# counterReg=r3 counterReg=r3
	mr		r4,r4		# insertEP=r4 insertEP=r4
	mr.		r5,r5		# prevEP=?a6 prevEP=r5
	mr		r6,r6		# nextEP=r6 nextEP=r6
	.d2prologue_end
#         CONSTP2VAR (Os_CounterDynType, AUTOMATIC, OS_VAR)     counterReg,
#         P2VAR(Os_CounterEPType,AUTOMATIC,OS_VAR)        insertEP,
#         P2VAR(Os_CounterEPType,AUTOMATIC,OS_VAR)        prevEP,
#         CONSTP2VAR(Os_CounterEPType,AUTOMATIC,OS_VAR)   nextEP)
# {
#     if (prevEP == NULL_PTR)
	.d2line		903
	bc		0,2,.L11531	# ne
#     {
#         counterReg->Os_CounterNextEP  =  insertEP;
	.d2line		905
	stw		r4,4(r3)		# counterReg=r3 insertEP=r4
	b		.L11532
.L11531:
#     }
#     else
#     {
#         prevEP->Os_CounterEPNextEP    =  insertEP;
	.d2line		909
	stw		r4,12(r5)		# prevEP=r5 insertEP=r4
.L11532:
#     }
# 
#     insertEP->Os_CounterEPNextEP = nextEP;
	.d2line		912
.Llo179:
	stw		r6,12(r4)		# insertEP=r4 nextEP=r6
# }
	.d2line		913
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo180:
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11869:
	.type		Os_CounterInsertEP,@function
	.size		Os_CounterInsertEP,.-Os_CounterInsertEP
# Number of nodes = 22

# Allocations for Os_CounterInsertEP
#	?a4		counterReg
#	?a5		insertEP
#	?a6		prevEP
#	?a7		nextEP
# LOCAL_INLINE FUNC(P2VAR(Os_CounterEPType,AUTOMATIC,OS_VAR),OS_CODE) Os_CounterFindEP(
	.align		1
	.section	.Os_TEXT,,c
        .d2line         927,69
#$$ld
.L11877:

#$$bf	Os_CounterFindEP,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Os_CounterFindEP:
.Llo181:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr
	stmw		r26,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	26,31,1,1
	stw		r0,52(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# counterDueValue=r31 counterDueValue=r3
	mr		r30,r4		# counterRef=r30 counterRef=r4
	mr		r29,r5		# prevEPPtr=r29 prevEPPtr=r5
	mr		r28,r6		# nextEPPtr=r28 nextEPPtr=r6
	.d2prologue_end
#         CONST       (TickType,                                   AUTOMATIC)           counterDueValue,
#         CONSTP2CONST(Os_CounterStatType,                         AUTOMATIC, OS_CONST) counterRef,
#         CONSTP2VAR  (P2VAR(Os_CounterEPType, AUTOMATIC, OS_VAR), AUTOMATIC, OS_VAR)   prevEPPtr,
#         CONSTP2VAR  (P2VAR(Os_CounterEPType, AUTOMATIC, OS_VAR), AUTOMATIC, OS_VAR)   nextEPPtr)
# {
#     CONSTP2VAR(Os_CounterDynType, AUTOMATIC, OS_VAR) counterReg = counterRef->Os_CounterRegistry;
	.d2line		933
	lwz		r3,20(r30)		# counterReg=r3 counterRef=r30
.Llo182:
	mr		r3,r3		# counterReg=r3 counterReg=r3
#     CONST     (TickType,          AUTOMATIC)         currentCounterValue = counterReg->Os_CounterValue;
	.d2line		934
	lwz		r27,0(r3)		# counterReg=r3
.Llo191:
	mr		r27,r27		# currentCounterValue=r27 currentCounterValue=r27
#     P2VAR     (Os_CounterEPType,  AUTOMATIC, OS_VAR) foundEP;
#     P2VAR     (Os_CounterEPType,  AUTOMATIC, OS_VAR) currentEP;
# 
#     currentEP = counterReg->Os_CounterNextEP;
	.d2line		938
	lwz		r0,4(r3)		# counterReg=r3
	.d2line		940
	mr.		r26,r0		# currentEP=?a13 currentEP=?a14
# 
#     if(    (NULL_PTR != currentEP)
.Llo192:
	bc		1,2,.L11536	# eq
.Llo183:
	lwz		r0,0(r26)		# currentEP=r26
.Llo185:
	se_cmpl		r0,r27		# currentCounterValue=r27
	bc		0,2,.L11536	# ne
	lwz		r3,32(r30)		# counterReg=r3 counterRef=r30
	bl		Os_Timer_HasExpired
.Llo188:
	se_cmpi		r3,1		# counterReg=r3
	bc		0,2,.L11536	# ne
#         && (currentEP->Os_CounterEPDueValue == currentCounterValue)
#         && (Os_true == Os_Timer_HasExpired(counterRef->Os_TimerId)))
#     {
#         /* The current EP has just expired and will be processed later on. Skip it. */
#         *prevEPPtr = currentEP;
	.d2line		945
.Llo189:
	stw		r26,0(r29)		# prevEPPtr=r29 currentEP=r26
#         currentEP = currentEP->Os_CounterEPNextEP;
	.d2line		946
	lwz		r26,12(r26)		# currentEP=r26 currentEP=r26
	mr		r26,r26		# currentEP=r26 currentEP=r26
	b		.L11537
.L11536:
#     }
#     else
#     {
#         *prevEPPtr = NULL_PTR;
	.d2line		950
	diab.li		r0,0
	stw		r0,0(r29)		# prevEPPtr=r29
.L11537:
#     }
# 
#     /* Initialize other variables. */
#     *nextEPPtr = NULL_PTR;
	.d2line		954
	diab.li		r3,0		# counterReg=r3
.Llo190:
	stw		r3,0(r28)		# nextEPPtr=r28 counterReg=r3
#     foundEP    = NULL_PTR;
.L11538:
# 
#     while(currentEP != NULL_PTR)
	.d2line		957
	se_cmpi		r26,0		# currentEP=r26
	bc		1,2,.L11541	# eq
#     {
#         /* [OS001-158.v1] */
#         if(Os_CounterTickDiff(counterRef, currentCounterValue, currentEP->Os_CounterEPDueValue) >
	.d2line		960
	lwz		r0,0(r26)		# currentEP=r26
	se_cmpl		r0,r27		# currentCounterValue=r27
	bc		0,1,.L11545	# le
	lwz		r0,0(r26)		# currentEP=r26
	subf		r0,r27,r0		# currentCounterValue=r27
	b		.L11546
.L11545:
	lwz		r0,4(r30)		# counterRef=r30
	subf		r0,r27,r0		# currentCounterValue=r27
	lwz		r4,0(r26)		# currentEP=r26
	se_add		r4,r0
	diab.addi		r0,r4,1
.L11546:
	se_cmpl		r27,r31		# currentCounterValue=r27 counterDueValue=r31
	bc		0,0,.L11547	# ge
	subf		r4,r27,r31		# currentCounterValue=r27 counterDueValue=r31
	b		.L11548
.L11547:
	lwz		r4,4(r30)		# counterRef=r30
	subf		r4,r27,r4		# currentCounterValue=r27
	se_add		r4,r31		# counterDueValue=r31
	se_addi		r4,1
.L11548:
	se_cmpl		r0,r4
	bc		0,1,.L11540	# le
#            Os_CounterTickDiff(counterRef, currentCounterValue, counterDueValue))
#         {
#             /* The next EP shall expire later in time than this one. */
#             *nextEPPtr = currentEP;
	.d2line		964
	stw		r26,0(r28)		# nextEPPtr=r28 currentEP=r26
	b		.L11541
.L11540:
# 
#             /* Shortcut to exit */
#             break;
#         }
#         else if(currentEP->Os_CounterEPDueValue == counterDueValue)
	.d2line		969
	lwz		r0,0(r26)		# currentEP=r26
	se_cmpl		r0,r31		# counterDueValue=r31
	bc		0,2,.L11543	# ne
#         {
#             /* The current EP has the same expiration time as the requested, return this. */
#             foundEP = currentEP;
	.d2line		972
	mr		r3,r26		# foundEP=r3 foundEP=r26
#             *nextEPPtr = currentEP->Os_CounterEPNextEP;
	.d2line		973
	lwz		r0,12(r26)		# currentEP=r26
	stw		r0,0(r28)		# nextEPPtr=r28
	b		.L11541
.L11543:
# 
#             /* Shortcut to exit */
#             break;
#         }
#         else
#         {
#             /* Do nothing on purpose. */
#         }
# 
#         *prevEPPtr = currentEP;
	.d2line		983
	stw		r26,0(r29)		# prevEPPtr=r29 currentEP=r26
#         currentEP = currentEP->Os_CounterEPNextEP;
	.d2line		984
	lwz		r26,12(r26)		# currentEP=r26 currentEP=r26
	mr		r26,r26		# currentEP=r26 currentEP=r26
	b		.L11538
.L11541:
#     }
# 
#     return foundEP;
	.d2line		987
.Llo184:
	mr		r3,r3		# foundEP=r3 foundEP=r3
# }
	.d2line		988
	.d2epilogue_begin
.Llo186:
	lmw		r26,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	2,10
	lwz		r0,52(r1)
	mtspr		lr,r0
	diab.addi		r1,r1,48		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo187:
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11878:
	.type		Os_CounterFindEP,@function
	.size		Os_CounterFindEP,.-Os_CounterFindEP
# Number of nodes = 138

# Allocations for Os_CounterFindEP
#	?a4		counterDueValue
#	?a5		counterRef
#	?a6		prevEPPtr
#	?a7		nextEPPtr
#	?a8		$$2360
#	?a9		$$2359
#	?a10		counterReg
#	?a11		currentCounterValue
#	?a12		foundEP
#	?a13		currentEP
# FUNC(void,OS_CODE) Os_CounterRegisterIndication (
	.align		2
	.section	.Os_TEXT,,c
        .d2line         440,20
#$$ld
.L11896:

#$$bf	Os_CounterRegisterIndication,interprocedural,rasave,nostackparams
	.globl		Os_CounterRegisterIndication
	.d2_cfa_start __cie
Os_CounterRegisterIndication:
.Llo193:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr
	stmw		r26,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	26,31,1,1
	stw		r0,52(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# counterRef=r31 counterRef=r3
.Llo194:
	mr		r30,r4		# counterActionOwner=r30 counterActionOwner=r4
.Llo195:
	mr		r29,r5		# counterActionObject=r29 counterActionObject=r5
	mr		r4,r6		# counterRelDueValue=r4 counterRelDueValue=r6
	.d2prologue_end
#         CONSTP2CONST (Os_CounterStatType,        AUTOMATIC, OS_CONST)  counterRef,
#         CONST        (Os_CounterActionOwnerType, AUTOMATIC)            counterActionOwner,
#         CONST        (Os_ObjectType,             AUTOMATIC)            counterActionObject,
#         CONST        (TickType,                  AUTOMATIC)            counterRelDueValue )
# {
#     CONSTP2VAR (Os_CounterDynType, AUTOMATIC, OS_VAR) counterReg = counterRef->Os_CounterRegistry;
	.d2line		446
.Llo197:
	lwz		r26,20(r31)		# counterRef=r31
.Llo203:
	mr		r26,r26		# counterReg=r26 counterReg=r26
#     CONST(TickType,AUTOMATIC) CounterAbsDueValue = Os_CounterRel2Abs(counterRef, counterRelDueValue);
	.d2line		447
	mr		r3,r31		# counterRef=r3 counterRef=r31
	mr		r4,r4		# counterRelDueValue=r4 counterRelDueValue=r4
	bl		Os_CounterRel2Abs
.Llo202:
	mr		r28,r3		# CounterAbsDueValue=r28 CounterAbsDueValue=r3
# 
# 
#     P2VAR(Os_CounterEPType, AUTOMATIC, OS_VAR)          currentEP;
#     P2VAR(Os_CounterEPType, AUTOMATIC, OS_VAR)          prevEP;
#     P2VAR(Os_CounterEPType, AUTOMATIC, OS_VAR)          nextEP;
# 
#     /* [OS-MGC-0085] */
#     currentEP = Os_CounterFindEP(CounterAbsDueValue, counterRef, &prevEP, &nextEP);
	.d2line		455
	diab.addi		r5,r1,8
	diab.addi		r6,r1,12
	mr		r4,r31		# counterRef=r4 counterRef=r31
	mr		r3,r28		# CounterAbsDueValue=r3 CounterAbsDueValue=r28
.Llo205:
	bl		Os_CounterFindEP
	.d2line		456
	mr.		r27,r3		# currentEP=?a10 currentEP=r3
#     if (currentEP == NULL_PTR)
.Llo206:
	bc		0,2,.L11433	# ne
	.section	.Os_TEXT,,c
.L11911:
#     {
#         P2VAR(Os_CounterEPActionType, AUTOMATIC, OS_VAR)    newActionForNewEP;
#         /* Create new EP */
#         newActionForNewEP = Os_CounterConstructAction(counterRef, counterActionOwner, counterActionObject);
	.d2line		460
.Llo198:
	mr		r3,r31		# counterRef=r3 counterRef=r31
	mr		r4,r30		# counterActionOwner=r4 counterActionOwner=r30
	mr		r5,r29		# counterActionObject=r5 counterActionObject=r29
	bl		Os_CounterConstructAction
.Llo210:
	mr		r5,r3		# newActionForNewEP=r5 newActionForNewEP=r3
#         currentEP = Os_CounterConstructEP(counterRef, CounterAbsDueValue, newActionForNewEP);
	.d2line		461
	mr		r3,r31		# counterRef=r3 counterRef=r31
.Llo211:
	mr		r4,r28		# CounterAbsDueValue=r4 CounterAbsDueValue=r28
.Llo212:
	mr		r5,r5		# newActionForNewEP=r5 newActionForNewEP=r5
.Llo213:
	bl		Os_CounterConstructEP
.Llo207:
	mr		r7,r3		# currentEP=r7 currentEP=r3
#         Os_CounterInsertEP(counterReg, currentEP, prevEP, nextEP);
	.d2line		462
.Llo208:
	lwz		r5,8(r1)		# counterRef=r5
.Llo209:
	lwz		r6,12(r1)
	mr		r3,r26		# counterReg=r3 counterReg=r26
	mr		r4,r7		# currentEP=r4 currentEP=r7
	bl		Os_CounterInsertEP
# 
#         /* Have to start tickless timer */
#         if(OS_HARDWARE == counterRef->Os_CounterKind)
	.d2line		465
	lwz		r0,0(r31)		# counterRef=r31
	se_cmpi		r0,0
	bc		0,2,.L11432	# ne
#         {
#             if(counterReg->Os_CounterNextEP == currentEP)
	.d2line		467
.Llo199:
	lwz		r0,4(r26)		# counterReg=r26
	se_cmpl		r0,r7		# currentEP=r7
	bc		0,2,.L11435	# ne
#             {
#                 /* Stop the timer first and update the counters accordingly. */
#                 Os_Timer_RestartTickless(counterRef->Os_TimerId);
	.d2line		470
.Llo204:
	lwz		r3,32(r31)		# counterRef=r3 counterRef=r31
	bl		Os_Timer_RestartTickless
	b		.L11432
.L11435:
#             }
#             else
#             {
#                 /* Resume the suspended tickless timer */
#                 Os_Timer_ResumeTickless(counterRef->Os_TimerId);
	.d2line		475
	lwz		r3,32(r31)		# counterRef=r3 counterRef=r31
	bl		Os_Timer_ResumeTickless
	b		.L11432
	.section	.Os_TEXT,,c
.L11912:
.L11433:
	.section	.Os_TEXT,,c
.L11917:
#             }
#         }
#         else
#         {
#             /* Do nothing on purpose. */
#         }
#     }
#     else
#     {
#         P2VAR(Os_CounterEPActionType, AUTOMATIC, OS_VAR)    newAction;
#         /* Create new Action and insert */
#         newAction = Os_CounterConstructAction(counterRef, counterActionOwner, counterActionObject);
	.d2line		487
.Llo200:
	mr		r3,r31		# counterRef=r3 counterRef=r31
	mr		r4,r30		# counterActionOwner=r4 counterActionOwner=r30
	mr		r5,r29		# counterActionObject=r5 counterActionObject=r29
	bl		Os_CounterConstructAction
#         Os_CounterAddAction(newAction, currentEP);
	.d2line		488
.Llo214:
	mr		r0,r3		# newAction=r0 newAction=r3
	mr		r4,r27		# currentEP=r4 currentEP=r27
	bl		Os_CounterAddAction
# 
#         /* Have to resume tickless timer */
#         if(OS_HARDWARE == counterRef->Os_CounterKind)
	.d2line		491
.Llo215:
	lwz		r0,0(r31)		# counterRef=r0 counterRef=r31
	se_cmpi		r0,0		# counterRef=r0
	bc		0,2,.L11432	# ne
#         {
#             /* Resume the suspended tickless timer */
#             Os_Timer_ResumeTickless(counterRef->Os_TimerId);
	.d2line		494
.Llo201:
	lwz		r3,32(r31)		# counterRef=r3 counterRef=r31
	bl		Os_Timer_ResumeTickless
	.section	.Os_TEXT,,c
.L11918:
.L11432:
#         }
#         else
#         {
#             /* Do nothing on purpose. */
#         }
#     }
# }
	.d2line		501
	.d2epilogue_begin
.Llo196:
	lmw		r26,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	2,10
	lwz		r0,52(r1)		# counterRef=r0
	mtspr		lr,r0		# counterRef=lr
	diab.addi		r1,r1,48		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11897:
	.type		Os_CounterRegisterIndication,@function
	.size		Os_CounterRegisterIndication,.-Os_CounterRegisterIndication
# Number of nodes = 115

# Allocations for Os_CounterRegisterIndication
#	?a4		counterRef
#	?a5		counterActionOwner
#	?a6		counterActionObject
#	?a7		counterRelDueValue
#	?a8		counterReg
#	?a9		CounterAbsDueValue
#	?a10		currentEP
#	SP,8		prevEP
#	SP,12		nextEP
#	?a11		newActionForNewEP
#	?a12		newAction
# FUNC (Os_BoolType, OS_CODE) Os_Counter_CheckId(CONST (CounterType, AUTOMATIC) counterId)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         522,29
#$$ld
.L11925:

#$$bf	Os_Counter_CheckId,interprocedural,nostackparams

# Regs written: r0,r1,r3,cr0,lr
	.globl		Os_Counter_CheckId
	.d2_cfa_start __cie
Os_Counter_CheckId:
.Llo216:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)		# counterId=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# counterId=r0 counterId=r3
	.d2prologue_end
# {
#     return ((Os_ObjectType)counterId > Os_CounterRange[OS_CORE_NO - 1U].Os_ObjEndId) ? Os_false : Os_true;
	.d2line		524
.Llo217:
	lis		r3,(Os_CounterRange+12)@ha
.Llo218:
	lwz		r3,(Os_CounterRange+12)@l(r3)
	se_cmpl		r3,r0		# counterId=r0
	isel		r3,0,r0,0		# counterId=r0
.L11446:
.Llo219:
	diab.li		r0,1		# counterId=r0
.Llo220:
	isel		r3,r3,r0,0		# counterId=r0
.L11447:
# }
	.d2line		525
	.d2epilogue_begin
.Llo221:
	lwz		r0,20(r1)		# counterId=r0
	mtspr		lr,r0		# counterId=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11926:
	.type		Os_Counter_CheckId,@function
	.size		Os_Counter_CheckId,.-Os_Counter_CheckId
# Number of nodes = 16

# Allocations for Os_Counter_CheckId
#	?a4		counterId
#	?a5		$$2358
# FUNC(TickType, OS_CODE) Os_CounterGetValue(CONSTP2CONST(Os_CounterStatType, AUTOMATIC, OS_CONST) counterStat)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         534,25
#$$ld
.L11933:

#$$bf	Os_CounterGetValue,interprocedural,rasave,nostackparams
	.globl		Os_CounterGetValue
	.d2_cfa_start __cie
Os_CounterGetValue:
.Llo222:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# counterStat=r31 counterStat=r3
	.d2prologue_end
# {
#     VAR(TickType, AUTOMATIC) counterValue;
# 
#     if(OS_SOFTWARE == counterStat->Os_CounterKind)
	.d2line		538
	lwz		r0,0(r31)		# counterStat=r31
	se_cmpi		r0,1
	bc		0,2,.L11451	# ne
#     {
#         counterValue = counterStat->Os_CounterRegistry->Os_CounterValue;
	.d2line		540
.Llo223:
	lwz		r3,20(r31)		# counterStat=r31
.Llo224:
	lwz		r3,0(r3)
.Llo226:
	mr		r3,r3		# counterValue=r3 counterValue=r3
	b		.L11452
.L11451:
#     }
#     else
#     {
#         /* Update counters associated with the tickless timer */
#         Os_Timer_UpdateTickless(counterStat->Os_TimerId);
	.d2line		545
.Llo227:
	lwz		r3,32(r31)		# counterStat=r31
	bl		Os_Timer_UpdateTickless
#         counterValue = counterStat->Os_CounterRegistry->Os_CounterValue;
	.d2line		546
	lwz		r3,20(r31)		# counterStat=r31
	lwz		r3,0(r3)
.Llo228:
	mr		r3,r3		# counterValue=r3 counterValue=r3
.L11452:
#     }
# 
#     return counterValue;
	.d2line		549
.Llo225:
	mr		r3,r3		# counterValue=r3 counterValue=r3
# }
	.d2line		550
	.d2epilogue_begin
.Llo229:
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
.L11934:
	.type		Os_CounterGetValue,@function
	.size		Os_CounterGetValue,.-Os_CounterGetValue
# Number of nodes = 28

# Allocations for Os_CounterGetValue
#	?a4		counterStat
#	?a5		counterValue
# FUNC(TickType, OS_CODE) Os_CounterStopAndGetValue(CONSTP2CONST(Os_CounterStatType, AUTOMATIC, OS_CONST) counterStat)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         559,25
#$$ld
.L11941:

#$$bf	Os_CounterStopAndGetValue,interprocedural,rasave,nostackparams
	.globl		Os_CounterStopAndGetValue
	.d2_cfa_start __cie
Os_CounterStopAndGetValue:
.Llo230:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# counterStat=r31 counterStat=r3
	.d2prologue_end
# {
#     VAR(TickType, AUTOMATIC) counterValue;
# 
#     if(OS_SOFTWARE == counterStat->Os_CounterKind)
	.d2line		563
	lwz		r0,0(r31)		# counterStat=r31
	se_cmpi		r0,1
	bc		0,2,.L11456	# ne
#     {
#         counterValue = counterStat->Os_CounterRegistry->Os_CounterValue;
	.d2line		565
.Llo231:
	lwz		r3,20(r31)		# counterStat=r31
.Llo232:
	lwz		r3,0(r3)
.Llo234:
	mr		r3,r3		# counterValue=r3 counterValue=r3
	b		.L11457
.L11456:
#     }
#     else
#     {
#         /* Suspend the tickless timer and update counters */
#         Os_Timer_SuspendTickless(counterStat->Os_TimerId);
	.d2line		570
.Llo235:
	lwz		r3,32(r31)		# counterStat=r31
	bl		Os_Timer_SuspendTickless
#         counterValue = counterStat->Os_CounterRegistry->Os_CounterValue;
	.d2line		571
	lwz		r3,20(r31)		# counterStat=r31
	lwz		r3,0(r3)
.Llo236:
	mr		r3,r3		# counterValue=r3 counterValue=r3
.L11457:
#     }
# 
#     return counterValue;
	.d2line		574
.Llo233:
	mr		r3,r3		# counterValue=r3 counterValue=r3
# }
	.d2line		575
	.d2epilogue_begin
.Llo237:
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
.L11942:
	.type		Os_CounterStopAndGetValue,@function
	.size		Os_CounterStopAndGetValue,.-Os_CounterStopAndGetValue
# Number of nodes = 28

# Allocations for Os_CounterStopAndGetValue
#	?a4		counterStat
#	?a5		counterValue
# FUNC (StatusType, OS_CODE) Os_Counter_Err_Stat(CONST (CounterType, AUTOMATIC) counterId,
	.align		2
	.section	.Os_TEXT,,c
        .d2line         582,28
#$$ld
.L11949:

#$$bf	Os_Counter_Err_Stat,interprocedural,rasave,nostackparams
	.globl		Os_Counter_Err_Stat
	.d2_cfa_start __cie
Os_Counter_Err_Stat:
.Llo238:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r5,r3		# counterId=r5 counterId=r3
	mr		r4,r4		# callerTask=r4 callerTask=r4
	.d2prologue_end
#         P2CONST(Os_ProcStatType,AUTOMATIC,OS_CONST)    callerTask)
# {
#     VAR (StatusType, AUTOMATIC ) retVal;
# 
#     if( Os_false == Os_Counter_CheckId(counterId) )
	.d2line		587
	mr		r3,r5		# counterId=r3 counterId=r5
.Llo239:
	bl		Os_Counter_CheckId
	se_cmpi		r3,0
	bc		0,2,.L11461	# ne
#     {
#         /* [OS376] [OS381-01] [OS285-01] */
#         retVal = OS_GET_ERRORCODE(E_OS_SYS_ERROR, E_OS_ID);
	.d2line		590
.Llo240:
	diab.li		r3,3		# retVal=r3
.Llo248:
	b		.L11462
.L11461:
#     }
# #ifdef OS_MODULE_APPLICATION
#     else if (callerTask != NULL_PTR)
	.d2line		593
.Llo249:
	se_cmpi		r4,0		# callerTask=r4
	bc		1,2,.L11463	# eq
#     {
#         if (Os_Access_Denied == Os_Access_Check(Os_CounterStat[counterId].Os_CounterAppAccess,
	.d2line		595
.Llo241:
	lis		r3,(Os_CounterStat+40)@ha		# retVal=r3
.Llo250:
	e_add16i		r3,r3,(Os_CounterStat+40)@l		# retVal=r3 retVal=r3
.Llo242:
	e_mulli		r5,r5,48		# counterId=r5 counterId=r5
.Llo243:
	lwzx		r3,r3,r5		# retVal=r3 retVal=r3
.Llo246:
	lwz		r4,48(r4)		# callerTask=r4 callerTask=r4
	lbz		r4,4(r4)		# callerTask=r4 callerTask=r4
.Llo247:
	bl		Os_Access_Check
.Llo251:
	se_cmpi		r3,1		# retVal=r3
#                                                 (ProcType)callerTask->Os_ProcOwnerApp->Os_AppId))
#         {
#             /* [OS448-01-27] [OS448-01-28] [OS448-01-29] */
#             retVal = OS_GET_ERRORCODE(E_OS_SYS_ERROR, E_OS_ACCESS);
	.d2line		599
	diab.li		r3,1		# retVal=r3
	isel		r3,r3,r31,2		# retVal=r3 retVal=r3 retVal=r31
.L11464:
#         }
#         else
#         {
#             retVal = E_OK;
	.d2line		603
	diab.li		r0,0
	isel		r3,r3,r0,2		# retVal=r3 retVal=r3
	b		.L11462
.L11463:
#         }
#     }
# #endif
#     else
#     {
#         retVal = E_OK;
	.d2line		609
.Llo244:
	diab.li		r3,0		# retVal=r3
.L11462:
#     }
# 
#     return retVal;
	.d2line		612
.Llo245:
	rlwinm		r3,r3,0,24,31		# retVal=r3 retVal=r3
# }
	.d2line		613
	.d2epilogue_begin
.Llo252:
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
.L11950:
	.type		Os_Counter_Err_Stat,@function
	.size		Os_Counter_Err_Stat,.-Os_Counter_Err_Stat
# Number of nodes = 49

# Allocations for Os_Counter_Err_Stat
#	?a4		counterId
#	?a5		callerTask
#	?a6		retVal
# FUNC (StatusType, OS_CODE) Os_Counter_Err_Dyn(CONSTP2CONST(Os_CounterStatType,TYPEDEF, OS_CONST)    counterRef,
	.align		2
	.section	.Os_TEXT,,c
        .d2line         620,28
#$$ld
.L11965:

#$$bf	Os_Counter_Err_Dyn,interprocedural,rasave,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r31,cr0,lr
	.globl		Os_Counter_Err_Dyn
	.d2_cfa_start __cie
Os_Counter_Err_Dyn:
.Llo253:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r7,r3		# counterRef=r7 counterRef=r3
	mr		r31,r4		# callerTask=r31 callerTask=r4
	.d2prologue_end
#                                               P2CONST(Os_ProcStatType,AUTOMATIC,OS_CONST)           callerTask)
# {
#     VAR (StatusType, AUTOMATIC ) retVal;
# 
#     if (Os_Isr_Enabled != Os_Isr_GetState(OS_GETCOREID()))
	.d2line		625
	mfspr		r3,286
.Llo254:
	bl		Os_Isr_GetState
.Llo259:
	se_cmpi		r3,0
	bc		1,2,.L11472	# eq
#     {
#         /* [OS093-01-36] [OS093-01-37] [OS093-01-38] [OS093-02-27] [OS093-02-28] [OS093-02-29] */
#         retVal = OS_GET_ERRORCODE(E_OS_SYS_ERROR,E_OS_DISABLEDINT);
	.d2line		628
.Llo255:
	diab.li		r3,10		# retVal=r3
.Llo261:
	b		.L11473
.L11472:
#     }
# 
# #ifdef OS_MODULE_APPLICATION
#     else if( (callerTask != NULL_PTR)&&
	.d2line		632
.Llo262:
	se_cmpi		r31,0		# callerTask=r31
	bc		1,2,.L11474	# eq
	lwz		r0,44(r7)		# counterRef=r7
	lwz		r3,48(r31)		# callerTask=r31
	se_cmpl		r0,r3
	bc		1,2,.L11474	# eq
.Llo260:
	lwz		r3,44(r7)		# counterRef=r7
	lwz		r3,0(r3)
	lbz		r0,0(r3)
	se_cmpi		r0,0
	bc		1,2,.L11474	# eq
#              (counterRef->Os_CounterOwnerApp != callerTask->Os_ProcOwnerApp) &&
#              (APPLICATION_ACCESSIBLE != counterRef->Os_CounterOwnerApp->Os_AppDyn->Os_AppState))
#     {
#         retVal = OS_GET_ERRORCODE(E_OS_SYS_ERROR,E_OS_ACCESS); /* [OS509-01-27] [OS509-01-28] [OS509-01-29] */
	.d2line		636
.Llo256:
	diab.li		r3,1		# retVal=r3
.Llo263:
	b		.L11473
.L11474:
#     }
# #endif
#     else
#     {
#         retVal = E_OK;
	.d2line		641
.Llo257:
	diab.li		r3,0		# retVal=r3
.L11473:
#     }
# 
#     return retVal;
	.d2line		644
.Llo258:
	rlwinm		r3,r3,0,24,31		# retVal=r3 retVal=r3
# }
	.d2line		645
	.d2epilogue_begin
.Llo264:
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
.L11966:
	.type		Os_Counter_Err_Dyn,@function
	.size		Os_Counter_Err_Dyn,.-Os_Counter_Err_Dyn
# Number of nodes = 45

# Allocations for Os_Counter_Err_Dyn
#	?a4		counterRef
#	?a5		callerTask
#	?a6		retVal

# Allocations for module
	.section	.text_vle
	.0byte		.L11972
	.section	.text_vle
	.0byte		.L11982
	.section	.Os_BSS,,b
	.0byte		.L11989
	.section	.text_vle
#$$ld
.L5:
.L12491:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_Types.h"
.L12487:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ApplicationApiTypes.h"
.L12485:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ScheduleTableApiTypes.h"
.L12483:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_TaskApiTypes.h"
.L12481:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_SpinlockApiTypes.h"
.L12467:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_Isr.h"
.L12462:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\PowerPC\\WindRiver\\AUTOSAR\\ar422\\MemMap.h"
.L12459:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_InternalTypes.h"
.L12442:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ErrorApiTypes.h"
.L12422:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ExceptionApiTypes.h"
.L12378:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_ApplicationCfgTypes.h"
.L12321:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_TaskCfgTypes.h"
.L12318:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_HookApiTypes.h"
.L12293:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_TrustedFunctionCfgTypes.h"
.L12051:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_ApiDispatchCfgTypes.h"
.L11994:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_SchedulerCfgTypes.h"
.L11983:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_CoreCfgTypes.h"
.L11973:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_CounterCfgTypes.h"
	.d2_line_end
	.section	.Os_TEXT,,c
#$$ld
.L11587:
.L11608:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\counter\\Os_Counter.c"
.L11595:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_Isr.h"
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\counter\\Os_Counter.c"
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
.L11584:
	.4byte		.L11585-.L11583
.L11583:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L11589-.L11584
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\counter\\Os_Counter.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L11586
	.4byte		.L11587
	.4byte		.L11590
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11598:
	.sleb128	2
	.4byte		.L11592-.L11584
	.byte		"Os_Isr_GetState"
	.byte		0
	.4byte		.L11595
	.uleb128	227
	.uleb128	45
	.4byte		.L11596
	.byte		0x1
	.4byte		.L11593
	.4byte		.L11594
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L11595
	.uleb128	227
	.uleb128	45
	.byte		"coreId"
	.byte		0
	.4byte		.L11599
	.4byte		.L11603
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11592:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11609:
	.sleb128	4
	.4byte		.L11605-.L11584
	.byte		"Os_CounterInit"
	.byte		0
	.4byte		.L11608
	.uleb128	126
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L11606
	.4byte		.L11607
	.sleb128	3
	.4byte		.L11608
	.uleb128	126
	.uleb128	22
	.byte		"coreID"
	.byte		0
	.4byte		.L11599
	.4byte		.L11610
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11611:
	.sleb128	5
	.4byte		.L11608
	.uleb128	128
	.uleb128	34
	.byte		"counterId"
	.byte		0
	.4byte		.L11612
	.4byte		.L11615
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	6
	.4byte		.L11619
	.4byte		.L11616
	.4byte		.L11617
.L11620:
	.sleb128	5
	.4byte		.L11608
	.uleb128	134
	.uleb128	38
	.byte		"cntrActionIdx"
	.byte		0
	.4byte		.L11612
	.4byte		.L11621
.L11622:
	.sleb128	5
	.4byte		.L11608
	.uleb128	135
	.uleb128	56
	.byte		"counter"
	.byte		0
	.4byte		.L11623
	.4byte		.L11627
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11619:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11605:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11632:
	.sleb128	7
	.4byte		.L11629-.L11584
	.byte		"Os_CounterRemoveAction"
	.byte		0
	.4byte		.L11608
	.uleb128	713
	.uleb128	33
	.byte		0x1
	.4byte		.L11630
	.4byte		.L11631
	.sleb128	3
	.4byte		.L11608
	.uleb128	713
	.uleb128	33
	.byte		"counterDyn"
	.byte		0
	.4byte		.L11633
	.4byte		.L11637
	.sleb128	3
	.4byte		.L11608
	.uleb128	713
	.uleb128	33
	.byte		"currentEP"
	.byte		0
	.4byte		.L11638
	.4byte		.L11642
	.sleb128	3
	.4byte		.L11608
	.uleb128	713
	.uleb128	33
	.byte		"prevAction"
	.byte		0
	.4byte		.L11643
	.4byte		.L11647
	.sleb128	3
	.4byte		.L11608
	.uleb128	713
	.uleb128	33
	.byte		"removeAction"
	.byte		0
	.4byte		.L11643
	.4byte		.L11648
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11629:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11653:
	.sleb128	7
	.4byte		.L11650-.L11584
	.byte		"Os_CounterRemoveEP"
	.byte		0
	.4byte		.L11608
	.uleb128	810
	.uleb128	33
	.byte		0x1
	.4byte		.L11651
	.4byte		.L11652
	.sleb128	3
	.4byte		.L11608
	.uleb128	810
	.uleb128	33
	.byte		"counterReg"
	.byte		0
	.4byte		.L11633
	.4byte		.L11654
	.sleb128	3
	.4byte		.L11608
	.uleb128	810
	.uleb128	33
	.byte		"prevEP"
	.byte		0
	.4byte		.L11638
	.4byte		.L11655
	.sleb128	3
	.4byte		.L11608
	.uleb128	810
	.uleb128	33
	.byte		"removeEP"
	.byte		0
	.4byte		.L11656
	.4byte		.L11659
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11650:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11664:
	.sleb128	7
	.4byte		.L11661-.L11584
	.byte		"Os_ReleaseEP"
	.byte		0
	.4byte		.L11608
	.uleb128	674
	.uleb128	34
	.byte		0x1
	.4byte		.L11662
	.4byte		.L11663
	.sleb128	3
	.4byte		.L11608
	.uleb128	674
	.uleb128	34
	.byte		"counterDyn"
	.byte		0
	.4byte		.L11633
	.4byte		.L11665
	.sleb128	3
	.4byte		.L11608
	.uleb128	674
	.uleb128	34
	.byte		"releasedEP"
	.byte		0
	.4byte		.L11639
	.4byte		.L11666
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11661:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11671:
	.sleb128	7
	.4byte		.L11668-.L11584
	.byte		"Os_CounterDestructEP"
	.byte		0
	.4byte		.L11608
	.uleb128	844
	.uleb128	33
	.byte		0x1
	.4byte		.L11669
	.4byte		.L11670
	.sleb128	3
	.4byte		.L11608
	.uleb128	844
	.uleb128	33
	.byte		"counterDyn"
	.byte		0
	.4byte		.L11633
	.4byte		.L11672
	.sleb128	3
	.4byte		.L11608
	.uleb128	844
	.uleb128	33
	.byte		"destructEP"
	.byte		0
	.4byte		.L11638
	.4byte		.L11673
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11668:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11678:
	.sleb128	4
	.4byte		.L11675-.L11584
	.byte		"Os_CounterKill"
	.byte		0
	.4byte		.L11608
	.uleb128	170
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L11676
	.4byte		.L11677
	.sleb128	3
	.4byte		.L11608
	.uleb128	170
	.uleb128	22
	.byte		"counterId"
	.byte		0
	.4byte		.L11679
	.4byte		.L11681
.L11682:
	.sleb128	5
	.4byte		.L11608
	.uleb128	173
	.uleb128	55
	.byte		"counterReg"
	.byte		0
	.4byte		.L11633
	.4byte		.L11683
.L11684:
	.sleb128	5
	.4byte		.L11608
	.uleb128	175
	.uleb128	55
	.byte		"nextAction"
	.byte		0
	.4byte		.L11644
	.4byte		.L11685
.L11686:
	.sleb128	5
	.4byte		.L11608
	.uleb128	176
	.uleb128	55
	.byte		"currentEP"
	.byte		0
	.4byte		.L11639
	.4byte		.L11687
.L11688:
	.sleb128	5
	.4byte		.L11608
	.uleb128	177
	.uleb128	55
	.byte		"nextEP"
	.byte		0
	.4byte		.L11639
	.4byte		.L11689
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	6
	.4byte		.L11693
	.4byte		.L11690
	.4byte		.L11691
.L11694:
	.sleb128	5
	.4byte		.L11608
	.uleb128	184
	.uleb128	56
	.byte		"currentAction"
	.byte		0
	.4byte		.L11644
	.4byte		.L11695
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11693:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11675:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11700:
	.sleb128	7
	.4byte		.L11697-.L11584
	.byte		"Os_OwnerIndicateAction"
	.byte		0
	.4byte		.L11608
	.uleb128	997
	.uleb128	33
	.byte		0x1
	.4byte		.L11698
	.4byte		.L11699
	.sleb128	3
	.4byte		.L11608
	.uleb128	997
	.uleb128	33
	.byte		"counterActionOwner"
	.byte		0
	.4byte		.L11701
	.4byte		.L11704
	.sleb128	3
	.4byte		.L11608
	.uleb128	997
	.uleb128	33
	.byte		"counterActionObject"
	.byte		0
	.4byte		.L11705
	.4byte		.L11706
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11697:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11711:
	.sleb128	7
	.4byte		.L11708-.L11584
	.byte		"Os_CounterActivateEP"
	.byte		0
	.4byte		.L11608
	.uleb128	216
	.uleb128	33
	.byte		0x1
	.4byte		.L11709
	.4byte		.L11710
	.sleb128	3
	.4byte		.L11608
	.uleb128	216
	.uleb128	33
	.byte		"counterRef"
	.byte		0
	.4byte		.L11712
	.4byte		.L11713
	.sleb128	3
	.4byte		.L11608
	.uleb128	216
	.uleb128	33
	.byte		"activateEP"
	.byte		0
	.4byte		.L11638
	.4byte		.L11714
.L11715:
	.sleb128	5
	.4byte		.L11608
	.uleb128	221
	.uleb128	55
	.byte		"counterReg"
	.byte		0
	.4byte		.L11633
	.4byte		.L11716
.L11717:
	.sleb128	5
	.4byte		.L11608
	.uleb128	223
	.uleb128	55
	.byte		"currentAction"
	.byte		0
	.4byte		.L11644
	.4byte		.L11718
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	6
	.4byte		.L11722
	.4byte		.L11719
	.4byte		.L11720
.L11723:
	.sleb128	5
	.4byte		.L11608
	.uleb128	232
	.uleb128	52
	.byte		"currentActionOwner"
	.byte		0
	.4byte		.L11701
	.4byte		.L11724
.L11725:
	.sleb128	5
	.4byte		.L11608
	.uleb128	233
	.uleb128	52
	.byte		"currentActionObject"
	.byte		0
	.4byte		.L11705
	.4byte		.L11726
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11722:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11708:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11732:
	.sleb128	2
	.4byte		.L11728-.L11584
	.byte		"Os_CounterCalculateRelativeToAbsolute"
	.byte		0
	.4byte		.L11608
	.uleb128	1068
	.uleb128	41
	.4byte		.L11731
	.byte		0x1
	.4byte		.L11729
	.4byte		.L11730
	.sleb128	3
	.4byte		.L11608
	.uleb128	1068
	.uleb128	41
	.byte		"counterRef"
	.byte		0
	.4byte		.L11712
	.4byte		.L11733
	.sleb128	3
	.4byte		.L11608
	.uleb128	1068
	.uleb128	41
	.byte		"relativeTicks"
	.byte		0
	.4byte		.L11731
	.4byte		.L11734
.L11735:
	.sleb128	5
	.4byte		.L11608
	.uleb128	1073
	.uleb128	32
	.byte		"counterRemainingTicks"
	.byte		0
	.4byte		.L11736
	.4byte		.L11737
.L11738:
	.sleb128	5
	.4byte		.L11608
	.uleb128	1075
	.uleb128	32
	.byte		"absoluteValue"
	.byte		0
	.4byte		.L11731
	.4byte		.L11739
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11728:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11744:
	.sleb128	4
	.4byte		.L11741-.L11584
	.byte		"Os_Counter_UpdateTicklessCounters"
	.byte		0
	.4byte		.L11608
	.uleb128	260
	.uleb128	21
	.byte		0x1
	.byte		0x1
	.4byte		.L11742
	.4byte		.L11743
	.sleb128	3
	.4byte		.L11608
	.uleb128	260
	.uleb128	21
	.byte		"counterRef"
	.byte		0
	.4byte		.L11712
	.4byte		.L11745
	.sleb128	3
	.4byte		.L11608
	.uleb128	260
	.uleb128	21
	.byte		"tickCount"
	.byte		0
	.4byte		.L11736
	.4byte		.L11746
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11741:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11751:
	.sleb128	8
	.4byte		.L11748-.L11584
	.byte		"Os_Counter_GetNextTicklessTicks"
	.byte		0
	.4byte		.L11608
	.uleb128	275
	.uleb128	25
	.4byte		.L11731
	.byte		0x1
	.byte		0x1
	.4byte		.L11749
	.4byte		.L11750
	.sleb128	3
	.4byte		.L11608
	.uleb128	275
	.uleb128	25
	.byte		"counterRef"
	.byte		0
	.4byte		.L11712
	.4byte		.L11752
.L11753:
	.sleb128	5
	.4byte		.L11608
	.uleb128	279
	.uleb128	54
	.byte		"counterReg"
	.byte		0
	.4byte		.L11633
	.4byte		.L11754
.L11755:
	.sleb128	5
	.4byte		.L11608
	.uleb128	280
	.uleb128	30
	.byte		"nextTick"
	.byte		0
	.4byte		.L11731
	.4byte		.L11756
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11748:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11761:
	.sleb128	7
	.4byte		.L11758-.L11584
	.byte		"Os_CounterExecuteCounterEPs"
	.byte		0
	.4byte		.L11608
	.uleb128	1034
	.uleb128	37
	.byte		0x1
	.4byte		.L11759
	.4byte		.L11760
	.sleb128	3
	.4byte		.L11608
	.uleb128	1034
	.uleb128	37
	.byte		"counterRef"
	.byte		0
	.4byte		.L11712
	.4byte		.L11762
.L11763:
	.sleb128	5
	.4byte		.L11608
	.uleb128	1038
	.uleb128	54
	.byte		"counterReg"
	.byte		0
	.4byte		.L11633
	.4byte		.L11764
.L11765:
	.sleb128	5
	.4byte		.L11608
	.uleb128	1039
	.uleb128	48
	.byte		"currentEP"
	.byte		0
	.4byte		.L11639
	.4byte		.L11766
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11758:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11771:
	.sleb128	8
	.4byte		.L11768-.L11584
	.byte		"Os_Counter_IncrementTicklessTicks"
	.byte		0
	.4byte		.L11608
	.uleb128	305
	.uleb128	25
	.4byte		.L11731
	.byte		0x1
	.byte		0x1
	.4byte		.L11769
	.4byte		.L11770
	.sleb128	3
	.4byte		.L11608
	.uleb128	305
	.uleb128	25
	.byte		"counterRef"
	.byte		0
	.4byte		.L11712
	.4byte		.L11772
	.sleb128	3
	.4byte		.L11608
	.uleb128	305
	.uleb128	25
	.byte		"tickCount"
	.byte		0
	.4byte		.L11736
	.4byte		.L11773
.L11774:
	.sleb128	5
	.4byte		.L11608
	.uleb128	310
	.uleb128	54
	.byte		"counterReg"
	.byte		0
	.4byte		.L11633
	.4byte		.L11775
.L11776:
	.sleb128	5
	.4byte		.L11608
	.uleb128	311
	.uleb128	30
	.byte		"nextTick"
	.byte		0
	.4byte		.L11731
	.4byte		.L11777
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11768:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11782:
	.sleb128	4
	.4byte		.L11779-.L11584
	.byte		"Os_CounterExecuteAutoStartCounterEPs"
	.byte		0
	.4byte		.L11608
	.uleb128	340
	.uleb128	25
	.byte		0x1
	.byte		0x1
	.4byte		.L11780
	.4byte		.L11781
	.sleb128	3
	.4byte		.L11608
	.uleb128	340
	.uleb128	25
	.byte		"counterRef"
	.byte		0
	.4byte		.L11712
	.4byte		.L11783
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11779:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11788:
	.sleb128	4
	.4byte		.L11785-.L11584
	.byte		"Os_CounterIncrementTicks"
	.byte		0
	.4byte		.L11608
	.uleb128	362
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L11786
	.4byte		.L11787
	.sleb128	3
	.4byte		.L11608
	.uleb128	362
	.uleb128	22
	.byte		"counterRef"
	.byte		0
	.4byte		.L11712
	.4byte		.L11789
.L11790:
	.sleb128	5
	.4byte		.L11608
	.uleb128	364
	.uleb128	54
	.byte		"counterReg"
	.byte		0
	.4byte		.L11633
	.4byte		.L11791
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11785:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11796:
	.sleb128	4
	.4byte		.L11793-.L11584
	.byte		"Os_CounterCancelIndication"
	.byte		0
	.4byte		.L11608
	.uleb128	386
	.uleb128	20
	.byte		0x1
	.byte		0x1
	.4byte		.L11794
	.4byte		.L11795
	.sleb128	3
	.4byte		.L11608
	.uleb128	386
	.uleb128	20
	.byte		"counterRef"
	.byte		0
	.4byte		.L11712
	.4byte		.L11797
	.sleb128	3
	.4byte		.L11608
	.uleb128	386
	.uleb128	20
	.byte		"counterActionOwner"
	.byte		0
	.4byte		.L11701
	.4byte		.L11798
	.sleb128	3
	.4byte		.L11608
	.uleb128	386
	.uleb128	20
	.byte		"counterActionObject"
	.byte		0
	.4byte		.L11705
	.4byte		.L11799
.L11800:
	.sleb128	5
	.4byte		.L11608
	.uleb128	390
	.uleb128	55
	.byte		"counterReg"
	.byte		0
	.4byte		.L11633
	.4byte		.L11801
.L11802:
	.sleb128	5
	.4byte		.L11608
	.uleb128	392
	.uleb128	46
	.byte		"currentEP"
	.byte		0
	.4byte		.L11639
	.4byte		.L11803
.L11804:
	.sleb128	5
	.4byte		.L11608
	.uleb128	393
	.uleb128	46
	.byte		"prevEP"
	.byte		0
	.4byte		.L11639
	.4byte		.L11805
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	6
	.4byte		.L11809
	.4byte		.L11806
	.4byte		.L11807
.L11810:
	.sleb128	5
	.4byte		.L11608
	.uleb128	399
	.uleb128	56
	.byte		"currentAction"
	.byte		0
	.4byte		.L11644
	.4byte		.L11811
.L11812:
	.sleb128	5
	.4byte		.L11608
	.uleb128	400
	.uleb128	56
	.byte		"prevAction"
	.byte		0
	.4byte		.L11644
	.4byte		.L11813
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11809:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11793:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11818:
	.sleb128	8
	.4byte		.L11815-.L11584
	.byte		"Os_CounterRel2Abs"
	.byte		0
	.4byte		.L11608
	.uleb128	508
	.uleb128	24
	.4byte		.L11731
	.byte		0x1
	.byte		0x1
	.4byte		.L11816
	.4byte		.L11817
	.sleb128	3
	.4byte		.L11608
	.uleb128	508
	.uleb128	24
	.byte		"counterRef"
	.byte		0
	.4byte		.L11712
	.4byte		.L11819
	.sleb128	3
	.4byte		.L11608
	.uleb128	508
	.uleb128	24
	.byte		"relValue"
	.byte		0
	.4byte		.L11736
	.4byte		.L11820
.L11821:
	.sleb128	5
	.4byte		.L11608
	.uleb128	511
	.uleb128	32
	.byte		"absValue"
	.byte		0
	.4byte		.L11736
	.4byte		.L11822
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11815:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11827:
	.sleb128	2
	.4byte		.L11824-.L11584
	.byte		"Os_GetFreeAction"
	.byte		0
	.4byte		.L11608
	.uleb128	689
	.uleb128	76
	.4byte		.L11644
	.byte		0x1
	.4byte		.L11825
	.4byte		.L11826
	.sleb128	3
	.4byte		.L11608
	.uleb128	689
	.uleb128	76
	.byte		"counterDyn"
	.byte		0
	.4byte		.L11633
	.4byte		.L11828
.L11829:
	.sleb128	5
	.4byte		.L11608
	.uleb128	692
	.uleb128	52
	.byte		"freeAction"
	.byte		0
	.4byte		.L11644
	.4byte		.L11830
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11824:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11835:
	.sleb128	2
	.4byte		.L11832-.L11584
	.byte		"Os_CounterConstructAction"
	.byte		0
	.4byte		.L11608
	.uleb128	765
	.uleb128	76
	.4byte		.L11644
	.byte		0x1
	.4byte		.L11833
	.4byte		.L11834
	.sleb128	3
	.4byte		.L11608
	.uleb128	765
	.uleb128	76
	.byte		"counter"
	.byte		0
	.4byte		.L11712
	.4byte		.L11836
	.sleb128	3
	.4byte		.L11608
	.uleb128	765
	.uleb128	76
	.byte		"counterActionOwner"
	.byte		0
	.4byte		.L11701
	.4byte		.L11837
	.sleb128	3
	.4byte		.L11608
	.uleb128	765
	.uleb128	76
	.byte		"counterActionObject"
	.byte		0
	.4byte		.L11705
	.4byte		.L11838
.L11839:
	.sleb128	5
	.4byte		.L11608
	.uleb128	770
	.uleb128	54
	.byte		"counterEPActionDyn"
	.byte		0
	.4byte		.L11644
	.4byte		.L11840
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11832:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11845:
	.sleb128	7
	.4byte		.L11842-.L11584
	.byte		"Os_CounterAddAction"
	.byte		0
	.4byte		.L11608
	.uleb128	789
	.uleb128	34
	.byte		0x1
	.4byte		.L11843
	.4byte		.L11844
	.sleb128	3
	.4byte		.L11608
	.uleb128	789
	.uleb128	34
	.byte		"addAction"
	.byte		0
	.4byte		.L11644
	.4byte		.L11846
	.sleb128	3
	.4byte		.L11608
	.uleb128	789
	.uleb128	34
	.byte		"targetEP"
	.byte		0
	.4byte		.L11639
	.4byte		.L11847
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11842:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11852:
	.sleb128	2
	.4byte		.L11849-.L11584
	.byte		"Os_GetFreeEP"
	.byte		0
	.4byte		.L11608
	.uleb128	655
	.uleb128	70
	.4byte		.L11639
	.byte		0x1
	.4byte		.L11850
	.4byte		.L11851
	.sleb128	3
	.4byte		.L11608
	.uleb128	655
	.uleb128	70
	.byte		"counterDyn"
	.byte		0
	.4byte		.L11633
	.4byte		.L11853
.L11854:
	.sleb128	5
	.4byte		.L11608
	.uleb128	658
	.uleb128	46
	.byte		"freeEP"
	.byte		0
	.4byte		.L11639
	.4byte		.L11855
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11849:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11860:
	.sleb128	2
	.4byte		.L11857-.L11584
	.byte		"Os_CounterConstructEP"
	.byte		0
	.4byte		.L11608
	.uleb128	868
	.uleb128	70
	.4byte		.L11639
	.byte		0x1
	.4byte		.L11858
	.4byte		.L11859
	.sleb128	3
	.4byte		.L11608
	.uleb128	868
	.uleb128	70
	.byte		"counter"
	.byte		0
	.4byte		.L11712
	.4byte		.L11861
	.sleb128	3
	.4byte		.L11608
	.uleb128	868
	.uleb128	70
	.byte		"counterDueValue"
	.byte		0
	.4byte		.L11736
	.4byte		.L11862
	.sleb128	3
	.4byte		.L11608
	.uleb128	868
	.uleb128	70
	.byte		"counterEPAction"
	.byte		0
	.4byte		.L11644
	.4byte		.L11863
.L11864:
	.sleb128	5
	.4byte		.L11608
	.uleb128	873
	.uleb128	48
	.byte		"counterEPDyn"
	.byte		0
	.4byte		.L11639
	.4byte		.L11865
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11857:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11870:
	.sleb128	7
	.4byte		.L11867-.L11584
	.byte		"Os_CounterInsertEP"
	.byte		0
	.4byte		.L11608
	.uleb128	897
	.uleb128	33
	.byte		0x1
	.4byte		.L11868
	.4byte		.L11869
	.sleb128	3
	.4byte		.L11608
	.uleb128	897
	.uleb128	33
	.byte		"counterReg"
	.byte		0
	.4byte		.L11633
	.4byte		.L11871
	.sleb128	3
	.4byte		.L11608
	.uleb128	897
	.uleb128	33
	.byte		"insertEP"
	.byte		0
	.4byte		.L11639
	.4byte		.L11872
	.sleb128	3
	.4byte		.L11608
	.uleb128	897
	.uleb128	33
	.byte		"prevEP"
	.byte		0
	.4byte		.L11639
	.4byte		.L11873
	.sleb128	3
	.4byte		.L11608
	.uleb128	897
	.uleb128	33
	.byte		"nextEP"
	.byte		0
	.4byte		.L11638
	.4byte		.L11874
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11867:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11879:
	.sleb128	2
	.4byte		.L11876-.L11584
	.byte		"Os_CounterFindEP"
	.byte		0
	.4byte		.L11608
	.uleb128	927
	.uleb128	69
	.4byte		.L11639
	.byte		0x1
	.4byte		.L11877
	.4byte		.L11878
	.sleb128	3
	.4byte		.L11608
	.uleb128	927
	.uleb128	69
	.byte		"counterDueValue"
	.byte		0
	.4byte		.L11736
	.4byte		.L11880
	.sleb128	3
	.4byte		.L11608
	.uleb128	927
	.uleb128	69
	.byte		"counterRef"
	.byte		0
	.4byte		.L11712
	.4byte		.L11881
	.sleb128	3
	.4byte		.L11608
	.uleb128	927
	.uleb128	69
	.byte		"prevEPPtr"
	.byte		0
	.4byte		.L11882
	.4byte		.L11884
	.sleb128	3
	.4byte		.L11608
	.uleb128	927
	.uleb128	69
	.byte		"nextEPPtr"
	.byte		0
	.4byte		.L11882
	.4byte		.L11885
.L11886:
	.sleb128	5
	.4byte		.L11608
	.uleb128	933
	.uleb128	54
	.byte		"counterReg"
	.byte		0
	.4byte		.L11633
	.4byte		.L11887
.L11888:
	.sleb128	5
	.4byte		.L11608
	.uleb128	934
	.uleb128	54
	.byte		"currentCounterValue"
	.byte		0
	.4byte		.L11736
	.4byte		.L11889
.L11890:
	.sleb128	5
	.4byte		.L11608
	.uleb128	935
	.uleb128	54
	.byte		"foundEP"
	.byte		0
	.4byte		.L11639
	.4byte		.L11891
.L11892:
	.sleb128	5
	.4byte		.L11608
	.uleb128	936
	.uleb128	54
	.byte		"currentEP"
	.byte		0
	.4byte		.L11639
	.4byte		.L11893
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11876:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11898:
	.sleb128	4
	.4byte		.L11895-.L11584
	.byte		"Os_CounterRegisterIndication"
	.byte		0
	.4byte		.L11608
	.uleb128	440
	.uleb128	20
	.byte		0x1
	.byte		0x1
	.4byte		.L11896
	.4byte		.L11897
	.sleb128	3
	.4byte		.L11608
	.uleb128	440
	.uleb128	20
	.byte		"counterRef"
	.byte		0
	.4byte		.L11712
	.4byte		.L11899
	.sleb128	3
	.4byte		.L11608
	.uleb128	440
	.uleb128	20
	.byte		"counterActionOwner"
	.byte		0
	.4byte		.L11701
	.4byte		.L11900
	.sleb128	3
	.4byte		.L11608
	.uleb128	440
	.uleb128	20
	.byte		"counterActionObject"
	.byte		0
	.4byte		.L11705
	.4byte		.L11901
	.sleb128	3
	.4byte		.L11608
	.uleb128	440
	.uleb128	20
	.byte		"counterRelDueValue"
	.byte		0
	.4byte		.L11736
	.4byte		.L11902
.L11903:
	.sleb128	5
	.4byte		.L11608
	.uleb128	446
	.uleb128	55
	.byte		"counterReg"
	.byte		0
	.4byte		.L11633
	.4byte		.L11904
.L11905:
	.sleb128	5
	.4byte		.L11608
	.uleb128	447
	.uleb128	31
	.byte		"CounterAbsDueValue"
	.byte		0
	.4byte		.L11736
	.4byte		.L11906
.L11907:
	.sleb128	5
	.4byte		.L11608
	.uleb128	450
	.uleb128	57
	.byte		"currentEP"
	.byte		0
	.4byte		.L11639
	.4byte		.L11908
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11909:
	.sleb128	9
	.4byte		.L11608
	.uleb128	451
	.uleb128	57
	.byte		"prevEP"
	.byte		0
	.4byte		.L11639
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
.L11910:
	.sleb128	9
	.4byte		.L11608
	.uleb128	452
	.uleb128	57
	.byte		"nextEP"
	.byte		0
	.4byte		.L11639
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	12
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	6
	.4byte		.L11914
	.4byte		.L11911
	.4byte		.L11912
.L11915:
	.sleb128	5
	.4byte		.L11608
	.uleb128	458
	.uleb128	61
	.byte		"newActionForNewEP"
	.byte		0
	.4byte		.L11644
	.4byte		.L11916
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11914:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	6
	.4byte		.L11920
	.4byte		.L11917
	.4byte		.L11918
.L11921:
	.sleb128	5
	.4byte		.L11608
	.uleb128	485
	.uleb128	61
	.byte		"newAction"
	.byte		0
	.4byte		.L11644
	.4byte		.L11922
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11920:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11895:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11929:
	.sleb128	8
	.4byte		.L11924-.L11584
	.byte		"Os_Counter_CheckId"
	.byte		0
	.4byte		.L11608
	.uleb128	522
	.uleb128	29
	.4byte		.L11927
	.byte		0x1
	.byte		0x1
	.4byte		.L11925
	.4byte		.L11926
	.sleb128	3
	.4byte		.L11608
	.uleb128	522
	.uleb128	29
	.byte		"counterId"
	.byte		0
	.4byte		.L11679
	.4byte		.L11930
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11924:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11935:
	.sleb128	8
	.4byte		.L11932-.L11584
	.byte		"Os_CounterGetValue"
	.byte		0
	.4byte		.L11608
	.uleb128	534
	.uleb128	25
	.4byte		.L11731
	.byte		0x1
	.byte		0x1
	.4byte		.L11933
	.4byte		.L11934
	.sleb128	3
	.4byte		.L11608
	.uleb128	534
	.uleb128	25
	.byte		"counterStat"
	.byte		0
	.4byte		.L11712
	.4byte		.L11936
.L11937:
	.sleb128	5
	.4byte		.L11608
	.uleb128	536
	.uleb128	30
	.byte		"counterValue"
	.byte		0
	.4byte		.L11731
	.4byte		.L11938
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11932:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11943:
	.sleb128	8
	.4byte		.L11940-.L11584
	.byte		"Os_CounterStopAndGetValue"
	.byte		0
	.4byte		.L11608
	.uleb128	559
	.uleb128	25
	.4byte		.L11731
	.byte		0x1
	.byte		0x1
	.4byte		.L11941
	.4byte		.L11942
	.sleb128	3
	.4byte		.L11608
	.uleb128	559
	.uleb128	25
	.byte		"counterStat"
	.byte		0
	.4byte		.L11712
	.4byte		.L11944
.L11945:
	.sleb128	5
	.4byte		.L11608
	.uleb128	561
	.uleb128	30
	.byte		"counterValue"
	.byte		0
	.4byte		.L11731
	.4byte		.L11946
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11940:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11954:
	.sleb128	8
	.4byte		.L11948-.L11584
	.byte		"Os_Counter_Err_Stat"
	.byte		0
	.4byte		.L11608
	.uleb128	582
	.uleb128	28
	.4byte		.L11951
	.byte		0x1
	.byte		0x1
	.4byte		.L11949
	.4byte		.L11950
	.sleb128	3
	.4byte		.L11608
	.uleb128	582
	.uleb128	28
	.byte		"counterId"
	.byte		0
	.4byte		.L11679
	.4byte		.L11955
	.sleb128	3
	.4byte		.L11608
	.uleb128	582
	.uleb128	28
	.byte		"callerTask"
	.byte		0
	.4byte		.L11956
	.4byte		.L11960
.L11961:
	.sleb128	5
	.4byte		.L11608
	.uleb128	585
	.uleb128	34
	.byte		"retVal"
	.byte		0
	.4byte		.L11951
	.4byte		.L11962
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11948:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11967:
	.sleb128	8
	.4byte		.L11964-.L11584
	.byte		"Os_Counter_Err_Dyn"
	.byte		0
	.4byte		.L11608
	.uleb128	620
	.uleb128	28
	.4byte		.L11951
	.byte		0x1
	.byte		0x1
	.4byte		.L11965
	.4byte		.L11966
	.sleb128	3
	.4byte		.L11608
	.uleb128	620
	.uleb128	28
	.byte		"counterRef"
	.byte		0
	.4byte		.L11712
	.4byte		.L11968
	.sleb128	3
	.4byte		.L11608
	.uleb128	620
	.uleb128	28
	.byte		"callerTask"
	.byte		0
	.4byte		.L11956
	.4byte		.L11969
.L11970:
	.sleb128	5
	.4byte		.L11608
	.uleb128	623
	.uleb128	34
	.byte		"retVal"
	.byte		0
	.4byte		.L11951
	.4byte		.L11971
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11964:
	.section	.debug_info,,n
.L11972:
	.sleb128	10
	.byte		0x1
	.byte		0x1
	.4byte		.L11973
	.uleb128	119
	.uleb128	44
	.byte		"Os_CounterStat"
	.byte		0
	.4byte		.L11974
	.section	.debug_info,,n
.L11976:
	.sleb128	10
	.byte		0x1
	.byte		0x1
	.4byte		.L11973
	.uleb128	121
	.uleb128	44
	.byte		"Os_CounterRange"
	.byte		0
	.4byte		.L11977
.L11982:
	.sleb128	10
	.byte		0x1
	.byte		0x1
	.4byte		.L11983
	.uleb128	169
	.uleb128	42
	.byte		"Os_Core_Stat"
	.byte		0
	.4byte		.L11984
	.section	.debug_info,,n
.L11989:
	.sleb128	10
	.byte		0x1
	.byte		0x1
	.4byte		.L11983
	.uleb128	181
	.uleb128	45
	.byte		"Os_Core_DynShared"
	.byte		0
	.4byte		.L11990
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11988:
	.sleb128	11
	.4byte		.L11994
	.uleb128	69
	.uleb128	1
	.4byte		.L11995-.L2
	.uleb128	20
	.section	.debug_info,,n
.L788:
	.sleb128	12
	.byte		"Os_Core_DynInit"
	.byte		0
	.4byte		.L11996
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L789:
	.sleb128	12
	.byte		"Os_Core_Dyn"
	.byte		0
	.4byte		.L12000
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L790:
	.sleb128	12
	.byte		"Os_DispatchElement"
	.byte		0
	.4byte		.L12004
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L791:
	.sleb128	12
	.byte		"Os_PrepareContextFunction"
	.byte		0
	.4byte		.L12008
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L792:
	.sleb128	12
	.byte		"Os_GetStackPointerFunction"
	.byte		0
	.4byte		.L12014
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11995:
.L11999:
	.sleb128	11
	.4byte		.L11994
	.uleb128	69
	.uleb128	1
	.4byte		.L12021-.L2
	.uleb128	36
.L785:
	.sleb128	12
	.byte		"Os_IsrDynInit"
	.byte		0
	.4byte		.L12022
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L786:
	.sleb128	12
	.byte		"Os_SchedulerDynInit"
	.byte		0
	.4byte		.L12024
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L787:
	.sleb128	12
	.byte		"Os_CurrentApp"
	.byte		0
	.4byte		.L12026
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
	.sleb128	0
.L12021:
.L11993:
	.sleb128	11
	.4byte		.L11994
	.uleb128	69
	.uleb128	1
	.4byte		.L12030-.L2
	.uleb128	152
.L778:
	.sleb128	12
	.byte		"Os_Dispatcher"
	.byte		0
	.4byte		.L12031
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L779:
	.sleb128	12
	.byte		"Os_PublicDataNoInit"
	.byte		0
	.4byte		.L12033
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L12030:
.L12003:
	.sleb128	11
	.4byte		.L11994
	.uleb128	69
	.uleb128	1
	.4byte		.L12035-.L2
	.uleb128	104
.L775:
	.sleb128	12
	.byte		"Os_SchedulerDyn"
	.byte		0
	.4byte		.L12036
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L776:
	.sleb128	12
	.byte		"Os_IsrDyn"
	.byte		0
	.4byte		.L12038
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L777:
	.sleb128	12
	.byte		"Os_HooksDyn"
	.byte		0
	.4byte		.L12040
	.sleb128	2
	.byte		0x23
	.uleb128	100
	.byte		0x1
	.sleb128	0
.L12035:
.L12025:
	.sleb128	11
	.4byte		.L11994
	.uleb128	69
	.uleb128	1
	.4byte		.L12042-.L2
	.uleb128	4
.L774:
	.sleb128	12
	.byte		"Os_SchedulerCurrentProc"
	.byte		0
	.4byte		.L12043
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12042:
.L12037:
	.sleb128	11
	.4byte		.L11994
	.uleb128	69
	.uleb128	1
	.4byte		.L12045-.L2
	.uleb128	48
.L766:
	.sleb128	12
	.byte		"Os_CurrentContext"
	.byte		0
	.4byte		.L12019
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L767:
	.sleb128	12
	.byte		"Os_PreviousContext"
	.byte		0
	.4byte		.L12019
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L768:
	.sleb128	12
	.byte		"Os_SchedulerScheduleAction"
	.byte		0
	.4byte		.L12046
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L769:
	.sleb128	12
	.byte		"Os_SchedulerLastScheduledPriority"
	.byte		0
	.4byte		.L12048
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L770:
	.sleb128	12
	.byte		"Os_SchedulerCurrentTask"
	.byte		0
	.4byte		.L12043
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L771:
	.sleb128	12
	.byte		"Os_SchedulerLastScheduledProc"
	.byte		0
	.4byte		.L12043
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L772:
	.sleb128	12
	.byte		"Os_SchedulerHeadPivot"
	.byte		0
	.4byte		.L12049
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L773:
	.sleb128	12
	.byte		"Os_SchedulerTailPivot"
	.byte		0
	.4byte		.L12049
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
	.sleb128	0
.L12045:
	.section	.debug_info,,n
.L12050:
	.sleb128	13
	.4byte		.L12051
	.uleb128	612
	.uleb128	1
	.4byte		.L12052-.L2
	.byte		"Os_SchedulerQueueElementType_s"
	.byte		0
	.uleb128	12
.L752:
	.sleb128	12
	.byte		"Os_QueueProc"
	.byte		0
	.4byte		.L12043
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L753:
	.sleb128	12
	.byte		"Os_QueueFrontElement"
	.byte		0
	.4byte		.L12053
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L754:
	.sleb128	12
	.byte		"Os_QueueBackElement"
	.byte		0
	.4byte		.L12053
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L12052:
.L12023:
	.sleb128	11
	.4byte		.L12051
	.uleb128	612
	.uleb128	1
	.4byte		.L12054-.L2
	.uleb128	28
.L745:
	.sleb128	12
	.byte		"Os_CurrentUserModePriority"
	.byte		0
	.4byte		.L12055
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L746:
	.sleb128	12
	.byte		"Os_UserModePriorityChanged"
	.byte		0
	.4byte		.L12056
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L747:
	.sleb128	12
	.byte		"Os_DisableAllCount"
	.byte		0
	.4byte		.L11613
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L748:
	.sleb128	12
	.byte		"Os_SuspendAllCount"
	.byte		0
	.4byte		.L11613
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L749:
	.sleb128	12
	.byte		"Os_SuspendOSCount"
	.byte		0
	.4byte		.L11613
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L750:
	.sleb128	12
	.byte		"Os_SavedIsrLevel"
	.byte		0
	.4byte		.L12055
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L751:
	.sleb128	12
	.byte		"Os_SavedOSIsrLevel"
	.byte		0
	.4byte		.L12055
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
	.sleb128	0
.L12054:
.L12039:
	.sleb128	11
	.4byte		.L12051
	.uleb128	612
	.uleb128	1
	.4byte		.L12057-.L2
	.uleb128	52
.L739:
	.sleb128	12
	.byte		"Os_IsrRunningIsr"
	.byte		0
	.4byte		.L12043
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L740:
	.sleb128	12
	.byte		"Os_IsrNeedToClear"
	.byte		0
	.4byte		.L12058
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L741:
	.sleb128	12
	.byte		"Os_Isr_NestLevel"
	.byte		0
	.4byte		.L11613
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L742:
	.sleb128	12
	.byte		"Os_Isr_ServicesBackup"
	.byte		0
	.4byte		.L12062
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L743:
	.sleb128	12
	.byte		"Os_SuspendAllPrevIsrState"
	.byte		0
	.4byte		.L12055
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L744:
	.sleb128	12
	.byte		"Os_SuspendCounterpartTrack"
	.byte		0
	.4byte		.L12066
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L12057:
.L12032:
	.sleb128	11
	.4byte		.L12051
	.uleb128	612
	.uleb128	1
	.4byte		.L12068-.L2
	.uleb128	8
.L737:
	.sleb128	12
	.byte		"Os_DHead"
	.byte		0
	.4byte		.L11613
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L738:
	.sleb128	12
	.byte		"Os_DTail"
	.byte		0
	.4byte		.L11613
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12068:
.L12007:
	.sleb128	13
	.4byte		.L12051
	.uleb128	612
	.uleb128	1
	.4byte		.L12069-.L2
	.byte		"Os_DispatchElementType_s"
	.byte		0
	.uleb128	56
.L732:
	.sleb128	12
	.byte		"Os_DispatchKind"
	.byte		0
	.4byte		.L12070
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L733:
	.sleb128	12
	.byte		"Os_DispatcherLockCoreId"
	.byte		0
	.4byte		.L11600
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L734:
	.sleb128	12
	.byte		"Os_DispatchIsrId"
	.byte		0
	.4byte		.L12072
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L735:
	.sleb128	12
	.byte		"Os_DispatchApiCall"
	.byte		0
	.4byte		.L12074
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L736:
	.sleb128	12
	.byte		"Os_DispatchApiInternal"
	.byte		0
	.4byte		.L12075
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L12069:
.L12076:
	.sleb128	13
	.4byte		.L12051
	.uleb128	60
	.uleb128	1
	.4byte		.L12077-.L2
	.byte		"Os_APICallType_struct"
	.byte		0
	.uleb128	40
.L727:
	.sleb128	12
	.byte		"Os_API_Magic"
	.byte		0
	.4byte		.L11613
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L728:
	.sleb128	12
	.byte		"Os_API_ReturnValue"
	.byte		0
	.4byte		.L11951
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L729:
	.sleb128	12
	.byte		"Os_API_Lock"
	.byte		0
	.4byte		.L12078
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L730:
	.sleb128	12
	.byte		"Os_API_Func"
	.byte		0
	.4byte		.L12080
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L731:
	.sleb128	12
	.byte		"Os_API_Data"
	.byte		0
	.4byte		.L12086
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L12077:
	.section	.debug_info,,n
.L12086:
	.sleb128	14
	.4byte		.L12051
	.uleb128	60
	.uleb128	1
	.4byte		.L12087-.L2
	.uleb128	24
.L679:
	.sleb128	12
	.byte		"Os_ApiStartOs"
	.byte		0
	.4byte		.L12088
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L680:
	.sleb128	12
	.byte		"Os_ApiShutdownOs"
	.byte		0
	.4byte		.L12090
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L681:
	.sleb128	12
	.byte		"Os_ApiShutdownOsInternal"
	.byte		0
	.4byte		.L12092
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L682:
	.sleb128	12
	.byte		"Os_ApiShutdownAllCores"
	.byte		0
	.4byte		.L12094
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L683:
	.sleb128	12
	.byte		"Os_ApiGetNumberOfActivatedCores"
	.byte		0
	.4byte		.L12096
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L684:
	.sleb128	12
	.byte		"Os_ApiStartCore"
	.byte		0
	.4byte		.L12098
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L685:
	.sleb128	12
	.byte		"Os_ApiStartNonAutosarCore"
	.byte		0
	.4byte		.L12100
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L686:
	.sleb128	12
	.byte		"Os_ApiGetCoreID"
	.byte		0
	.4byte		.L12102
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L687:
	.sleb128	12
	.byte		"Os_ApiActivateTask"
	.byte		0
	.4byte		.L12104
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L688:
	.sleb128	12
	.byte		"Os_ApiChainTask"
	.byte		0
	.4byte		.L12106
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L689:
	.sleb128	12
	.byte		"Os_ApiGetTaskID"
	.byte		0
	.4byte		.L12108
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L690:
	.sleb128	12
	.byte		"Os_ApiGetTaskState"
	.byte		0
	.4byte		.L12110
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L691:
	.sleb128	12
	.byte		"Os_ApiSetEvent"
	.byte		0
	.4byte		.L12112
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L692:
	.sleb128	12
	.byte		"Os_ApiClearEvent"
	.byte		0
	.4byte		.L12114
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L693:
	.sleb128	12
	.byte		"Os_ApiGetEvent"
	.byte		0
	.4byte		.L12116
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L694:
	.sleb128	12
	.byte		"Os_ApiWaitEvent"
	.byte		0
	.4byte		.L12118
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L695:
	.sleb128	12
	.byte		"Os_ApiGetResource"
	.byte		0
	.4byte		.L12120
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L696:
	.sleb128	12
	.byte		"Os_ApiReleaseResource"
	.byte		0
	.4byte		.L12122
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L697:
	.sleb128	12
	.byte		"Os_ApiGetAlarmBase"
	.byte		0
	.4byte		.L12124
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L698:
	.sleb128	12
	.byte		"Os_ApiGetAlarm"
	.byte		0
	.4byte		.L12126
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L699:
	.sleb128	12
	.byte		"Os_ApiSetRelAlarm"
	.byte		0
	.4byte		.L12128
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L700:
	.sleb128	12
	.byte		"Os_ApiSetAbsAlarm"
	.byte		0
	.4byte		.L12130
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L701:
	.sleb128	12
	.byte		"Os_ApiCancelAlarm"
	.byte		0
	.4byte		.L12132
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L702:
	.sleb128	12
	.byte		"Os_ApiGetApplicationState"
	.byte		0
	.4byte		.L12134
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L703:
	.sleb128	12
	.byte		"Os_ApiTerminateApplication"
	.byte		0
	.4byte		.L12136
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L704:
	.sleb128	12
	.byte		"Os_ApiGetApplicationID"
	.byte		0
	.4byte		.L12138
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L705:
	.sleb128	12
	.byte		"Os_ApiGetISRID"
	.byte		0
	.4byte		.L12140
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L706:
	.sleb128	12
	.byte		"Os_ApiGetActiveApplicationMode"
	.byte		0
	.4byte		.L12142
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L707:
	.sleb128	12
	.byte		"Os_ApiIncrementCounter"
	.byte		0
	.4byte		.L12144
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L708:
	.sleb128	12
	.byte		"Os_ApiGetCounterValue"
	.byte		0
	.4byte		.L12146
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L709:
	.sleb128	12
	.byte		"Os_ApiGetElapsedValue"
	.byte		0
	.4byte		.L12148
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L710:
	.sleb128	12
	.byte		"Os_ApiStartScheduleTableAbs"
	.byte		0
	.4byte		.L12150
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L711:
	.sleb128	12
	.byte		"Os_ApiStartScheduleTableRel"
	.byte		0
	.4byte		.L12152
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L712:
	.sleb128	12
	.byte		"Os_ApiStopScheduleTable"
	.byte		0
	.4byte		.L12154
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L713:
	.sleb128	12
	.byte		"Os_ApiGetScheduleTableStatus"
	.byte		0
	.4byte		.L12156
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L714:
	.sleb128	12
	.byte		"Os_ApiNextScheduleTable"
	.byte		0
	.4byte		.L12158
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L715:
	.sleb128	12
	.byte		"Os_ApiStartScheduleTableSynchron"
	.byte		0
	.4byte		.L12160
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L716:
	.sleb128	12
	.byte		"Os_ApiSyncScheduleTable"
	.byte		0
	.4byte		.L12162
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L717:
	.sleb128	12
	.byte		"Os_ApiSetScheduleTableAsync"
	.byte		0
	.4byte		.L12164
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L718:
	.sleb128	12
	.byte		"Os_ApiCheckObjectAccess"
	.byte		0
	.4byte		.L12166
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L719:
	.sleb128	12
	.byte		"Os_ApiCheckObjectOwnership"
	.byte		0
	.4byte		.L12168
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L720:
	.sleb128	12
	.byte		"Os_ApiCallTrustedFunction"
	.byte		0
	.4byte		.L12170
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L721:
	.sleb128	12
	.byte		"Os_ApiStackUsage"
	.byte		0
	.4byte		.L12172
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L722:
	.sleb128	12
	.byte		"Os_API_GetSpinlock"
	.byte		0
	.4byte		.L12174
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L723:
	.sleb128	12
	.byte		"Os_API_ReleaseSpinlock"
	.byte		0
	.4byte		.L12176
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L724:
	.sleb128	12
	.byte		"Os_API_TryToGetSpinlock"
	.byte		0
	.4byte		.L12178
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L725:
	.sleb128	12
	.byte		"Os_API_IOCTransfer"
	.byte		0
	.4byte		.L12180
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L726:
	.sleb128	12
	.byte		"Os_ApiControlIdle"
	.byte		0
	.4byte		.L12182
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12087:
.L12183:
	.sleb128	11
	.4byte		.L12051
	.uleb128	60
	.uleb128	1
	.4byte		.L12184-.L2
	.uleb128	8
.L677:
	.sleb128	12
	.byte		"CoreID"
	.byte		0
	.4byte		.L11600
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L678:
	.sleb128	12
	.byte		"IdleMode"
	.byte		0
	.4byte		.L12185
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12184:
.L12181:
	.sleb128	11
	.4byte		.L12051
	.uleb128	60
	.uleb128	1
	.4byte		.L12187-.L2
	.uleb128	8
.L675:
	.sleb128	12
	.byte		"Ioc_Channel"
	.byte		0
	.4byte		.L12188
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L676:
	.sleb128	12
	.byte		"Ioc_Data"
	.byte		0
	.4byte		.L12192
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12187:
.L12179:
	.sleb128	11
	.4byte		.L12051
	.uleb128	60
	.uleb128	1
	.4byte		.L12198-.L2
	.uleb128	8
.L673:
	.sleb128	12
	.byte		"SpinlockId"
	.byte		0
	.4byte		.L12199
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L674:
	.sleb128	12
	.byte		"Success"
	.byte		0
	.4byte		.L12200
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12198:
.L12177:
	.sleb128	11
	.4byte		.L12051
	.uleb128	60
	.uleb128	1
	.4byte		.L12203-.L2
	.uleb128	2
.L672:
	.sleb128	12
	.byte		"SpinlockId"
	.byte		0
	.4byte		.L12199
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12203:
.L12175:
	.sleb128	11
	.4byte		.L12051
	.uleb128	60
	.uleb128	1
	.4byte		.L12204-.L2
	.uleb128	2
.L671:
	.sleb128	12
	.byte		"SpinlockId"
	.byte		0
	.4byte		.L12199
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12204:
.L12173:
	.sleb128	11
	.4byte		.L12051
	.uleb128	60
	.uleb128	1
	.4byte		.L12205-.L2
	.uleb128	20
.L666:
	.sleb128	12
	.byte		"ProcId"
	.byte		0
	.4byte		.L12206
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L667:
	.sleb128	12
	.byte		"MaxUsage"
	.byte		0
	.4byte		.L11952
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L668:
	.sleb128	12
	.byte		"MaxUsageRef"
	.byte		0
	.4byte		.L12207
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L669:
	.sleb128	12
	.byte		"CurrentUsage"
	.byte		0
	.4byte		.L11952
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L670:
	.sleb128	12
	.byte		"CurrentUsageRef"
	.byte		0
	.4byte		.L12207
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L12205:
.L12171:
	.sleb128	11
	.4byte		.L12051
	.uleb128	60
	.uleb128	1
	.4byte		.L12208-.L2
	.uleb128	12
.L663:
	.sleb128	12
	.byte		"FunctionIndex"
	.byte		0
	.4byte		.L12209
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L664:
	.sleb128	12
	.byte		"ParamRef"
	.byte		0
	.4byte		.L12210
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L665:
	.sleb128	12
	.byte		"ReturnValue"
	.byte		0
	.4byte		.L12211
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L12208:
.L12169:
	.sleb128	11
	.4byte		.L12051
	.uleb128	60
	.uleb128	1
	.4byte		.L12213-.L2
	.uleb128	12
.L660:
	.sleb128	12
	.byte		"AppID"
	.byte		0
	.4byte		.L12214
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L661:
	.sleb128	12
	.byte		"ObjectType"
	.byte		0
	.4byte		.L12215
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L662:
	.sleb128	12
	.byte		"Object"
	.byte		0
	.4byte		.L11612
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L12213:
.L12167:
	.sleb128	11
	.4byte		.L12051
	.uleb128	60
	.uleb128	1
	.4byte		.L12217-.L2
	.uleb128	12
.L657:
	.sleb128	12
	.byte		"AppID"
	.byte		0
	.4byte		.L12214
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L658:
	.sleb128	12
	.byte		"ObjectType"
	.byte		0
	.4byte		.L12215
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L659:
	.sleb128	12
	.byte		"Object"
	.byte		0
	.4byte		.L11612
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L12217:
.L12133:
	.sleb128	11
	.4byte		.L12051
	.uleb128	60
	.uleb128	1
	.4byte		.L12218-.L2
	.uleb128	4
.L656:
	.sleb128	12
	.byte		"AlarmID"
	.byte		0
	.4byte		.L12219
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12218:
.L12131:
	.sleb128	11
	.4byte		.L12051
	.uleb128	60
	.uleb128	1
	.4byte		.L12220-.L2
	.uleb128	12
.L653:
	.sleb128	12
	.byte		"AlarmID"
	.byte		0
	.4byte		.L12219
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L654:
	.sleb128	12
	.byte		"Start"
	.byte		0
	.4byte		.L11731
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L655:
	.sleb128	12
	.byte		"Cycle"
	.byte		0
	.4byte		.L11731
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L12220:
.L12129:
	.sleb128	11
	.4byte		.L12051
	.uleb128	60
	.uleb128	1
	.4byte		.L12221-.L2
	.uleb128	12
.L650:
	.sleb128	12
	.byte		"AlarmID"
	.byte		0
	.4byte		.L12219
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L651:
	.sleb128	12
	.byte		"Increment"
	.byte		0
	.4byte		.L11731
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L652:
	.sleb128	12
	.byte		"Cycle"
	.byte		0
	.4byte		.L11731
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L12221:
.L12127:
	.sleb128	11
	.4byte		.L12051
	.uleb128	60
	.uleb128	1
	.4byte		.L12222-.L2
	.uleb128	8
.L648:
	.sleb128	12
	.byte		"AlarmID"
	.byte		0
	.4byte		.L12219
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L649:
	.sleb128	12
	.byte		"TickRef"
	.byte		0
	.4byte		.L12223
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12222:
.L12125:
	.sleb128	11
	.4byte		.L12051
	.uleb128	60
	.uleb128	1
	.4byte		.L12225-.L2
	.uleb128	8
.L646:
	.sleb128	12
	.byte		"AlarmID"
	.byte		0
	.4byte		.L12219
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L647:
	.sleb128	12
	.byte		"AlarmBaseTypeRef"
	.byte		0
	.4byte		.L12226
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12225:
.L12165:
	.sleb128	11
	.4byte		.L12051
	.uleb128	60
	.uleb128	1
	.4byte		.L12230-.L2
	.uleb128	4
.L645:
	.sleb128	12
	.byte		"SchTblId"
	.byte		0
	.4byte		.L12231
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12230:
.L12163:
	.sleb128	11
	.4byte		.L12051
	.uleb128	60
	.uleb128	1
	.4byte		.L12232-.L2
	.uleb128	8
.L643:
	.sleb128	12
	.byte		"SchTblId"
	.byte		0
	.4byte		.L12231
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L644:
	.sleb128	12
	.byte		"SyncValue"
	.byte		0
	.4byte		.L11731
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12232:
.L12161:
	.sleb128	11
	.4byte		.L12051
	.uleb128	60
	.uleb128	1
	.4byte		.L12233-.L2
	.uleb128	4
.L642:
	.sleb128	12
	.byte		"SchTblId"
	.byte		0
	.4byte		.L12231
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12233:
.L12159:
	.sleb128	11
	.4byte		.L12051
	.uleb128	60
	.uleb128	1
	.4byte		.L12234-.L2
	.uleb128	8
.L640:
	.sleb128	12
	.byte		"SchTblIdFrom"
	.byte		0
	.4byte		.L12231
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L641:
	.sleb128	12
	.byte		"SchTblIdTo"
	.byte		0
	.4byte		.L12231
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12234:
.L12157:
	.sleb128	11
	.4byte		.L12051
	.uleb128	60
	.uleb128	1
	.4byte		.L12235-.L2
	.uleb128	8
.L638:
	.sleb128	12
	.byte		"SchTblId"
	.byte		0
	.4byte		.L12231
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L639:
	.sleb128	12
	.byte		"SchTblStatus"
	.byte		0
	.4byte		.L12236
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12235:
.L12155:
	.sleb128	11
	.4byte		.L12051
	.uleb128	60
	.uleb128	1
	.4byte		.L12240-.L2
	.uleb128	4
.L637:
	.sleb128	12
	.byte		"SchTblId"
	.byte		0
	.4byte		.L12231
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12240:
.L12153:
	.sleb128	11
	.4byte		.L12051
	.uleb128	60
	.uleb128	1
	.4byte		.L12241-.L2
	.uleb128	8
.L635:
	.sleb128	12
	.byte		"SchTblId"
	.byte		0
	.4byte		.L12231
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L636:
	.sleb128	12
	.byte		"Offset"
	.byte		0
	.4byte		.L11731
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12241:
.L12151:
	.sleb128	11
	.4byte		.L12051
	.uleb128	60
	.uleb128	1
	.4byte		.L12242-.L2
	.uleb128	8
.L633:
	.sleb128	12
	.byte		"SchTblId"
	.byte		0
	.4byte		.L12231
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L634:
	.sleb128	12
	.byte		"Start"
	.byte		0
	.4byte		.L11731
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12242:
.L12149:
	.sleb128	11
	.4byte		.L12051
	.uleb128	60
	.uleb128	1
	.4byte		.L12243-.L2
	.uleb128	12
.L630:
	.sleb128	12
	.byte		"CounterId"
	.byte		0
	.4byte		.L11680
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L631:
	.sleb128	12
	.byte		"ValuePtr"
	.byte		0
	.4byte		.L12223
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L632:
	.sleb128	12
	.byte		"ElapsedValuePtr"
	.byte		0
	.4byte		.L12223
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L12243:
.L12147:
	.sleb128	11
	.4byte		.L12051
	.uleb128	60
	.uleb128	1
	.4byte		.L12244-.L2
	.uleb128	12
.L627:
	.sleb128	12
	.byte		"CounterId"
	.byte		0
	.4byte		.L11680
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L628:
	.sleb128	12
	.byte		"ValuePtr"
	.byte		0
	.4byte		.L12223
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L629:
	.sleb128	12
	.byte		"LightServiceFunction"
	.byte		0
	.4byte		.L12245
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L12244:
.L12145:
	.sleb128	11
	.4byte		.L12051
	.uleb128	60
	.uleb128	1
	.4byte		.L12249-.L2
	.uleb128	4
.L626:
	.sleb128	12
	.byte		"CounterId"
	.byte		0
	.4byte		.L11680
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12249:
.L12141:
	.sleb128	11
	.4byte		.L12051
	.uleb128	60
	.uleb128	1
	.4byte		.L12250-.L2
	.uleb128	4
.L625:
	.sleb128	12
	.byte		"ISRId"
	.byte		0
	.4byte		.L12072
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12250:
.L12137:
	.sleb128	11
	.4byte		.L12051
	.uleb128	60
	.uleb128	1
	.4byte		.L12251-.L2
	.uleb128	2
.L623:
	.sleb128	12
	.byte		"Application"
	.byte		0
	.4byte		.L12214
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L624:
	.sleb128	12
	.byte		"RestartOption"
	.byte		0
	.4byte		.L12252
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
	.sleb128	0
.L12251:
.L12139:
	.sleb128	11
	.4byte		.L12051
	.uleb128	60
	.uleb128	1
	.4byte		.L12253-.L2
	.uleb128	1
.L622:
	.sleb128	12
	.byte		"Application"
	.byte		0
	.4byte		.L12214
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12253:
.L12135:
	.sleb128	11
	.4byte		.L12051
	.uleb128	60
	.uleb128	1
	.4byte		.L12254-.L2
	.uleb128	8
.L620:
	.sleb128	12
	.byte		"Application"
	.byte		0
	.4byte		.L12214
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L621:
	.sleb128	12
	.byte		"AppStateRef"
	.byte		0
	.4byte		.L12255
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12254:
.L12119:
	.sleb128	11
	.4byte		.L12051
	.uleb128	60
	.uleb128	1
	.4byte		.L12258-.L2
	.uleb128	8
.L619:
	.sleb128	12
	.byte		"EventMask"
	.byte		0
	.4byte		.L12259
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12258:
.L12117:
	.sleb128	11
	.4byte		.L12051
	.uleb128	60
	.uleb128	1
	.4byte		.L12262-.L2
	.uleb128	24
.L616:
	.sleb128	12
	.byte		"TaskId"
	.byte		0
	.4byte		.L12206
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L617:
	.sleb128	12
	.byte		"EventMask"
	.byte		0
	.4byte		.L12259
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L618:
	.sleb128	12
	.byte		"EventMaskRef"
	.byte		0
	.4byte		.L12263
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L12262:
.L12115:
	.sleb128	11
	.4byte		.L12051
	.uleb128	60
	.uleb128	1
	.4byte		.L12265-.L2
	.uleb128	8
.L615:
	.sleb128	12
	.byte		"EventMask"
	.byte		0
	.4byte		.L12259
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12265:
.L12113:
	.sleb128	11
	.4byte		.L12051
	.uleb128	60
	.uleb128	1
	.4byte		.L12266-.L2
	.uleb128	16
.L613:
	.sleb128	12
	.byte		"TaskId"
	.byte		0
	.4byte		.L12206
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L614:
	.sleb128	12
	.byte		"EventMask"
	.byte		0
	.4byte		.L12259
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L12266:
.L12111:
	.sleb128	11
	.4byte		.L12051
	.uleb128	60
	.uleb128	1
	.4byte		.L12267-.L2
	.uleb128	8
.L611:
	.sleb128	12
	.byte		"TaskId"
	.byte		0
	.4byte		.L12206
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L612:
	.sleb128	12
	.byte		"TaskStateRef"
	.byte		0
	.4byte		.L12268
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12267:
.L12109:
	.sleb128	11
	.4byte		.L12051
	.uleb128	60
	.uleb128	1
	.4byte		.L12272-.L2
	.uleb128	4
.L610:
	.sleb128	12
	.byte		"TaskIdRef"
	.byte		0
	.4byte		.L12273
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12272:
.L12107:
	.sleb128	11
	.4byte		.L12051
	.uleb128	60
	.uleb128	1
	.4byte		.L12275-.L2
	.uleb128	4
.L609:
	.sleb128	12
	.byte		"TaskId"
	.byte		0
	.4byte		.L12206
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12275:
.L12105:
	.sleb128	11
	.4byte		.L12051
	.uleb128	60
	.uleb128	1
	.4byte		.L12276-.L2
	.uleb128	4
.L608:
	.sleb128	12
	.byte		"TaskId"
	.byte		0
	.4byte		.L12206
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12276:
.L12123:
	.sleb128	11
	.4byte		.L12051
	.uleb128	60
	.uleb128	1
	.4byte		.L12277-.L2
	.uleb128	4
.L607:
	.sleb128	12
	.byte		"ResourceId"
	.byte		0
	.4byte		.L12278
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12277:
.L12121:
	.sleb128	11
	.4byte		.L12051
	.uleb128	60
	.uleb128	1
	.4byte		.L12279-.L2
	.uleb128	4
.L606:
	.sleb128	12
	.byte		"ResourceId"
	.byte		0
	.4byte		.L12278
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12279:
.L12143:
	.sleb128	11
	.4byte		.L12051
	.uleb128	60
	.uleb128	1
	.4byte		.L12280-.L2
	.uleb128	4
.L605:
	.sleb128	12
	.byte		"AppMode"
	.byte		0
	.4byte		.L12281
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12280:
.L12103:
	.sleb128	11
	.4byte		.L12051
	.uleb128	60
	.uleb128	1
	.4byte		.L12282-.L2
	.uleb128	2
.L604:
	.sleb128	12
	.byte		"CoreID"
	.byte		0
	.4byte		.L11600
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12282:
.L12097:
	.sleb128	11
	.4byte		.L12051
	.uleb128	60
	.uleb128	1
	.4byte		.L12283-.L2
	.uleb128	2
.L603:
	.sleb128	12
	.byte		"NumberOfActivatedCores"
	.byte		0
	.4byte		.L11600
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12283:
.L12095:
	.sleb128	11
	.4byte		.L12051
	.uleb128	60
	.uleb128	1
	.4byte		.L12284-.L2
	.uleb128	1
.L602:
	.sleb128	12
	.byte		"Error"
	.byte		0
	.4byte		.L11951
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12284:
.L12093:
	.sleb128	11
	.4byte		.L12051
	.uleb128	60
	.uleb128	1
	.4byte		.L12285-.L2
	.uleb128	8
.L600:
	.sleb128	12
	.byte		"ShutdownType"
	.byte		0
	.4byte		.L12286
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L601:
	.sleb128	12
	.byte		"Error"
	.byte		0
	.4byte		.L11951
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12285:
.L12091:
	.sleb128	11
	.4byte		.L12051
	.uleb128	60
	.uleb128	1
	.4byte		.L12288-.L2
	.uleb128	1
.L599:
	.sleb128	12
	.byte		"Error"
	.byte		0
	.4byte		.L11951
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12288:
.L12101:
	.sleb128	11
	.4byte		.L12051
	.uleb128	60
	.uleb128	1
	.4byte		.L12289-.L2
	.uleb128	8
.L597:
	.sleb128	12
	.byte		"CoreID"
	.byte		0
	.4byte		.L11600
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L598:
	.sleb128	12
	.byte		"StatusRef"
	.byte		0
	.4byte		.L12290
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12289:
.L12099:
	.sleb128	11
	.4byte		.L12051
	.uleb128	60
	.uleb128	1
	.4byte		.L12291-.L2
	.uleb128	8
.L595:
	.sleb128	12
	.byte		"CoreID"
	.byte		0
	.4byte		.L11600
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L596:
	.sleb128	12
	.byte		"StatusRef"
	.byte		0
	.4byte		.L12290
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12291:
.L12089:
	.sleb128	11
	.4byte		.L12051
	.uleb128	60
	.uleb128	1
	.4byte		.L12292-.L2
	.uleb128	4
.L594:
	.sleb128	12
	.byte		"AppMode"
	.byte		0
	.4byte		.L12281
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12292:
.L12191:
	.sleb128	11
	.4byte		.L12293
	.uleb128	33
	.uleb128	14
	.4byte		.L12294-.L2
	.uleb128	24
.L587:
	.sleb128	12
	.byte		"Os_IOC_ChannelDyn"
	.byte		0
	.4byte		.L12295
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L588:
	.sleb128	12
	.byte		"Os_IOC_ChannelLength"
	.byte		0
	.4byte		.L12299
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L589:
	.sleb128	12
	.byte		"Os_IOC_ChannelBuffer"
	.byte		0
	.4byte		.L12300
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L590:
	.sleb128	12
	.byte		"Os_IOC_ChannelElementSize"
	.byte		0
	.4byte		.L12301
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L591:
	.sleb128	12
	.byte		"Os_IOC_DataCount"
	.byte		0
	.4byte		.L12302
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L592:
	.sleb128	12
	.byte		"Os_IOC_DataDescriptor"
	.byte		0
	.4byte		.L12304
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L593:
	.sleb128	12
	.byte		"Os_IOC_LockResourceAddress"
	.byte		0
	.4byte		.L12309
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L12294:
.L12308:
	.sleb128	11
	.4byte		.L12293
	.uleb128	33
	.uleb128	14
	.4byte		.L12312-.L2
	.uleb128	4
.L583:
	.sleb128	12
	.byte		"Os_IOC_DataLength"
	.byte		0
	.4byte		.L12313
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L584:
	.sleb128	12
	.byte		"Os_IOC_DataOffset"
	.byte		0
	.4byte		.L12315
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L12312:
.L12298:
	.sleb128	11
	.4byte		.L12293
	.uleb128	33
	.uleb128	14
	.4byte		.L12317-.L2
	.uleb128	6
.L580:
	.sleb128	12
	.byte		"Os_IOC_ChannelHead"
	.byte		0
	.4byte		.L12299
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L581:
	.sleb128	12
	.byte		"Os_IOC_ChannelMessageCount"
	.byte		0
	.4byte		.L12299
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L582:
	.sleb128	12
	.byte		"Os_IOC_Status"
	.byte		0
	.4byte		.L11951
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12317:
.L12041:
	.sleb128	11
	.4byte		.L12318
	.uleb128	34
	.uleb128	14
	.4byte		.L12319-.L2
	.uleb128	2
.L531:
	.sleb128	12
	.byte		"Os_HookID"
	.byte		0
	.4byte		.L12320
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12319:
.L11959:
	.sleb128	13
	.4byte		.L12321
	.uleb128	80
	.uleb128	13
	.4byte		.L12322-.L2
	.byte		"Os_ProcStatType_s"
	.byte		0
	.uleb128	80
.L513:
	.sleb128	12
	.byte		"Os_ProcId"
	.byte		0
	.4byte		.L12323
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L514:
	.sleb128	12
	.byte		"Os_ProcCoreID"
	.byte		0
	.4byte		.L11599
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L515:
	.sleb128	12
	.byte		"Os_ProcDyn"
	.byte		0
	.4byte		.L12324
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L516:
	.sleb128	12
	.byte		"Os_ProcStack"
	.byte		0
	.4byte		.L12328
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L517:
	.sleb128	12
	.byte		"Os_ProcKind"
	.byte		0
	.4byte		.L12333
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L518:
	.sleb128	12
	.byte		"Os_ProcEventRights"
	.byte		0
	.4byte		.L12336
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L519:
	.sleb128	12
	.byte		"Os_ProcPriority"
	.byte		0
	.4byte		.L12337
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L520:
	.sleb128	12
	.byte		"Os_ProcRunPriority"
	.byte		0
	.4byte		.L12337
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L521:
	.sleb128	12
	.byte		"Os_ProcMaxActivations"
	.byte		0
	.4byte		.L12338
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L522:
	.sleb128	12
	.byte		"Os_ProcContext"
	.byte		0
	.4byte		.L12340
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L523:
	.sleb128	12
	.byte		"Os_ProcOwnerApp"
	.byte		0
	.4byte		.L12341
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L524:
	.sleb128	12
	.byte		"Os_ProcAppAccess"
	.byte		0
	.4byte		.L12342
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L525:
	.sleb128	12
	.byte		"Os_ProcEntryPoint"
	.byte		0
	.4byte		.L12346
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L526:
	.sleb128	12
	.byte		"Os_ProcAutoStart"
	.byte		0
	.4byte		.L12342
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
.L527:
	.sleb128	12
	.byte		"Os_ProcResourceCount"
	.byte		0
	.4byte		.L12351
	.sleb128	2
	.byte		0x23
	.uleb128	64
	.byte		0x1
.L528:
	.sleb128	12
	.byte		"Os_ProcResourceStack"
	.byte		0
	.4byte		.L12352
	.sleb128	2
	.byte		0x23
	.uleb128	68
	.byte		0x1
.L529:
	.sleb128	12
	.byte		"Os_ProcQueueElements"
	.byte		0
	.4byte		.L12358
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.byte		0x1
.L530:
	.sleb128	12
	.byte		"Os_ProcIsrPlatformConfig"
	.byte		0
	.4byte		.L12359
	.sleb128	2
	.byte		0x23
	.uleb128	76
	.byte		0x1
	.sleb128	0
.L12322:
.L12332:
	.sleb128	13
	.4byte		.L12321
	.uleb128	80
	.uleb128	13
	.4byte		.L12360-.L2
	.byte		"Os_ProcStackStruct"
	.byte		0
	.uleb128	8
.L511:
	.sleb128	12
	.byte		"Os_ProcStackSize"
	.byte		0
	.4byte		.L12361
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L512:
	.sleb128	12
	.byte		"Os_ProcStackBase"
	.byte		0
	.4byte		.L12340
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12360:
.L12327:
	.sleb128	11
	.4byte		.L12321
	.uleb128	80
	.uleb128	13
	.4byte		.L12363-.L2
	.uleb128	56
.L498:
	.sleb128	12
	.byte		"Os_ProcState"
	.byte		0
	.4byte		.L12270
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L499:
	.sleb128	12
	.byte		"Os_ProcContextState"
	.byte		0
	.4byte		.L12364
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L500:
	.sleb128	12
	.byte		"Os_ProcEvents"
	.byte		0
	.4byte		.L12259
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L501:
	.sleb128	12
	.byte		"Os_ProcEventWaitingFor"
	.byte		0
	.4byte		.L12259
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L502:
	.sleb128	12
	.byte		"Os_ProcActivations"
	.byte		0
	.4byte		.L12339
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L503:
	.sleb128	12
	.byte		"Os_ProcResourcesAllocated"
	.byte		0
	.4byte		.L12278
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L504:
	.sleb128	12
	.byte		"Os_ProcEnabled"
	.byte		0
	.4byte		.L11952
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L505:
	.sleb128	12
	.byte		"Os_ProcCurrentApp"
	.byte		0
	.4byte		.L12026
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L506:
	.sleb128	12
	.byte		"Os_ProcSpinlock"
	.byte		0
	.4byte		.L12366
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L507:
	.sleb128	12
	.byte		"Os_ProcFreeQueueElements"
	.byte		0
	.4byte		.L12053
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L508:
	.sleb128	12
	.byte		"Os_ProcCurrentPriority"
	.byte		0
	.4byte		.L12048
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L509:
	.sleb128	12
	.byte		"Os_ProcTFCallCount"
	.byte		0
	.4byte		.L11952
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L510:
	.sleb128	12
	.byte		"Os_FatalErrorOccured"
	.byte		0
	.4byte		.L11951
	.sleb128	2
	.byte		0x23
	.uleb128	53
	.byte		0x1
	.sleb128	0
.L12363:
.L11626:
	.sleb128	13
	.4byte		.L11973
	.uleb128	44
	.uleb128	14
	.4byte		.L12369-.L2
	.byte		"Os_CounterStatStruct"
	.byte		0
	.uleb128	48
.L486:
	.sleb128	12
	.byte		"Os_CounterKind"
	.byte		0
	.4byte		.L12370
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L487:
	.sleb128	12
	.byte		"Os_CounterMaxAllowedValue"
	.byte		0
	.4byte		.L11736
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L488:
	.sleb128	12
	.byte		"Os_CounterMinCycle"
	.byte		0
	.4byte		.L11736
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L489:
	.sleb128	12
	.byte		"Os_CounterTicksPerBase"
	.byte		0
	.4byte		.L11736
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L490:
	.sleb128	12
	.byte		"Os_CounterPoolSize"
	.byte		0
	.4byte		.L11705
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L491:
	.sleb128	12
	.byte		"Os_CounterRegistry"
	.byte		0
	.4byte		.L11633
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L492:
	.sleb128	12
	.byte		"Os_CounterEPs"
	.byte		0
	.4byte		.L11638
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L493:
	.sleb128	12
	.byte		"Os_CounterActions"
	.byte		0
	.4byte		.L11643
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L494:
	.sleb128	12
	.byte		"Os_TimerId"
	.byte		0
	.4byte		.L12373
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L495:
	.sleb128	12
	.byte		"Os_CounterCoreId"
	.byte		0
	.4byte		.L11599
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L496:
	.sleb128	12
	.byte		"Os_CounterAppAccess"
	.byte		0
	.4byte		.L12342
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L497:
	.sleb128	12
	.byte		"Os_CounterOwnerApp"
	.byte		0
	.4byte		.L12341
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
	.sleb128	0
.L12369:
.L11636:
	.sleb128	13
	.4byte		.L11973
	.uleb128	44
	.uleb128	14
	.4byte		.L12375-.L2
	.byte		"Os_CounterDynStruct"
	.byte		0
	.uleb128	16
.L482:
	.sleb128	12
	.byte		"Os_CounterValue"
	.byte		0
	.4byte		.L11731
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L483:
	.sleb128	12
	.byte		"Os_CounterNextEP"
	.byte		0
	.4byte		.L11639
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L484:
	.sleb128	12
	.byte		"Os_CounterNextFreeEP"
	.byte		0
	.4byte		.L11639
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L485:
	.sleb128	12
	.byte		"Os_CounterNextFreeAction"
	.byte		0
	.4byte		.L11644
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L12375:
.L11641:
	.sleb128	13
	.4byte		.L11973
	.uleb128	44
	.uleb128	14
	.4byte		.L12376-.L2
	.byte		"Os_CounterEPStruct"
	.byte		0
	.uleb128	16
.L478:
	.sleb128	12
	.byte		"Os_CounterEPDueValue"
	.byte		0
	.4byte		.L11731
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L479:
	.sleb128	12
	.byte		"Os_CounterNextAction"
	.byte		0
	.4byte		.L11644
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L480:
	.sleb128	12
	.byte		"Os_CounterLastAction"
	.byte		0
	.4byte		.L11644
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L481:
	.sleb128	12
	.byte		"Os_CounterEPNextEP"
	.byte		0
	.4byte		.L11639
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L12376:
.L11646:
	.sleb128	13
	.4byte		.L11973
	.uleb128	44
	.uleb128	14
	.4byte		.L12377-.L2
	.byte		"Os_CounterEPActionStruct"
	.byte		0
	.uleb128	12
.L475:
	.sleb128	12
	.byte		"Os_CounterActionOwner"
	.byte		0
	.4byte		.L11702
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L476:
	.sleb128	12
	.byte		"Os_CounterActionObject"
	.byte		0
	.4byte		.L11612
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L477:
	.sleb128	12
	.byte		"Os_CounterActionNextAction"
	.byte		0
	.4byte		.L11644
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L12377:
.L12368:
	.sleb128	13
	.4byte		.L12378
	.uleb128	52
	.uleb128	1
	.4byte		.L12379-.L2
	.byte		"Os_SpinlockStatType_s"
	.byte		0
	.uleb128	16
.L450:
	.sleb128	12
	.byte		"Os_SpinlockId"
	.byte		0
	.4byte		.L12380
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L451:
	.sleb128	12
	.byte		"Os_SpinlockChainId"
	.byte		0
	.4byte		.L12380
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L452:
	.sleb128	12
	.byte		"Os_SpinlockDyn"
	.byte		0
	.4byte		.L12381
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L453:
	.sleb128	12
	.byte		"Os_SpinlockAccess"
	.byte		0
	.4byte		.L12342
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L454:
	.sleb128	12
	.byte		"Os_SpinlockLockResourceAddress"
	.byte		0
	.4byte		.L12309
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L12379:
.L12384:
	.sleb128	11
	.4byte		.L12378
	.uleb128	52
	.uleb128	1
	.4byte		.L12385-.L2
	.uleb128	12
.L447:
	.sleb128	12
	.byte		"Os_SpinlockLockerProc"
	.byte		0
	.4byte		.L12043
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L448:
	.sleb128	12
	.byte		"Os_SpinlockSuperseded"
	.byte		0
	.4byte		.L12366
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L449:
	.sleb128	12
	.byte		"Os_ResourceDependency"
	.byte		0
	.4byte		.L12354
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L12385:
.L12029:
	.sleb128	13
	.4byte		.L12378
	.uleb128	52
	.uleb128	1
	.4byte		.L12386-.L2
	.byte		"Os_ApplicationStatType_s"
	.byte		0
	.uleb128	48
.L435:
	.sleb128	12
	.byte		"Os_AppDyn"
	.byte		0
	.4byte		.L12387
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L436:
	.sleb128	12
	.byte		"Os_AppId"
	.byte		0
	.4byte		.L12391
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L437:
	.sleb128	12
	.byte		"Os_AppRestartTask"
	.byte		0
	.4byte		.L12323
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L438:
	.sleb128	12
	.byte		"Os_AppKind"
	.byte		0
	.4byte		.L12392
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L439:
	.sleb128	12
	.byte		"Os_AppShutdownHook"
	.byte		0
	.4byte		.L12395
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L440:
	.sleb128	12
	.byte		"Os_AppStartupHook"
	.byte		0
	.4byte		.L12400
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L441:
	.sleb128	12
	.byte		"Os_AppErrorHook"
	.byte		0
	.4byte		.L12405
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L442:
	.sleb128	12
	.byte		"Os_AppProcIDs"
	.byte		0
	.4byte		.L12410
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L443:
	.sleb128	12
	.byte		"Os_AppCounterIDs"
	.byte		0
	.4byte		.L12413
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L444:
	.sleb128	12
	.byte		"Os_AppAlarmIDs"
	.byte		0
	.4byte		.L12415
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L445:
	.sleb128	12
	.byte		"Os_AppSchTblIDs"
	.byte		0
	.4byte		.L12418
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L446:
	.sleb128	12
	.byte		"Os_CoreAssigment"
	.byte		0
	.4byte		.L11599
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
	.sleb128	0
.L12386:
.L12390:
	.sleb128	11
	.4byte		.L12378
	.uleb128	52
	.uleb128	1
	.4byte		.L12421-.L2
	.uleb128	1
.L434:
	.sleb128	12
	.byte		"Os_AppState"
	.byte		0
	.4byte		.L12257
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12421:
.L12357:
	.sleb128	11
	.4byte		.L12422
	.uleb128	32
	.uleb128	1
	.4byte		.L12423-.L2
	.uleb128	12
.L431:
	.sleb128	12
	.byte		"Os_ResourcePriority"
	.byte		0
	.4byte		.L12337
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L432:
	.sleb128	12
	.byte		"Os_ResourceAccessRights"
	.byte		0
	.4byte		.L12343
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L433:
	.sleb128	12
	.byte		"Os_ResourceDyn"
	.byte		0
	.4byte		.L12424
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L12423:
.L12426:
	.sleb128	11
	.4byte		.L12422
	.uleb128	32
	.uleb128	1
	.4byte		.L12427-.L2
	.uleb128	4
.L430:
	.sleb128	12
	.byte		"Os_LockerProc"
	.byte		0
	.4byte		.L12043
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12427:
.L12034:
	.sleb128	11
	.4byte		.L12422
	.uleb128	32
	.uleb128	1
	.4byte		.L12428-.L2
	.uleb128	144
.L425:
	.sleb128	12
	.byte		"Os_Error"
	.byte		0
	.4byte		.L12429
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L426:
	.sleb128	12
	.byte		"Os_ExceptionStatus"
	.byte		0
	.4byte		.L12431
	.sleb128	2
	.byte		0x23
	.uleb128	120
	.byte		0x1
	.sleb128	0
.L12428:
.L12065:
	.sleb128	11
	.4byte		.L12422
	.uleb128	32
	.uleb128	1
	.4byte		.L12433-.L2
	.uleb128	24
.L419:
	.sleb128	12
	.byte		"Os_DisAllInt"
	.byte		0
	.4byte		.L12434
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L420:
	.sleb128	12
	.byte		"Os_EnAllInt"
	.byte		0
	.4byte		.L12434
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L421:
	.sleb128	12
	.byte		"Os_SusAllInt"
	.byte		0
	.4byte		.L12434
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L422:
	.sleb128	12
	.byte		"Os_ResAllInt"
	.byte		0
	.4byte		.L12434
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L423:
	.sleb128	12
	.byte		"Os_SusOsInt"
	.byte		0
	.4byte		.L12434
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L424:
	.sleb128	12
	.byte		"Os_ResOsInt"
	.byte		0
	.4byte		.L12434
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L12433:
.L12432:
	.sleb128	11
	.4byte		.L12422
	.uleb128	32
	.uleb128	1
	.4byte		.L12439-.L2
	.uleb128	20
.L414:
	.sleb128	12
	.byte		"Os_ExceptionType"
	.byte		0
	.4byte		.L12440
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L415:
	.sleb128	12
	.byte		"Os_ExceptionCause"
	.byte		0
	.4byte		.L11613
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L416:
	.sleb128	12
	.byte		"Os_ExceptionAuxiliaryCause"
	.byte		0
	.4byte		.L11613
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L417:
	.sleb128	12
	.byte		"Os_ExceptionExecutionAddress"
	.byte		0
	.4byte		.L12020
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L418:
	.sleb128	12
	.byte		"Os_ExceptionAccessAddress"
	.byte		0
	.4byte		.L12020
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L12439:
.L12430:
	.sleb128	11
	.4byte		.L12442
	.uleb128	174
	.uleb128	1
	.4byte		.L12443-.L2
	.uleb128	120
.L411:
	.sleb128	12
	.byte		"Os_ShutdownError"
	.byte		0
	.4byte		.L12444
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L412:
	.sleb128	12
	.byte		"Os_ParameterError"
	.byte		0
	.4byte		.L12446
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L413:
	.sleb128	12
	.byte		"Os_ServiceError"
	.byte		0
	.4byte		.L12448
	.sleb128	2
	.byte		0x23
	.uleb128	112
	.byte		0x1
	.sleb128	0
.L12443:
.L12449:
	.sleb128	11
	.4byte		.L12442
	.uleb128	174
	.uleb128	1
	.4byte		.L12450-.L2
	.uleb128	8
.L408:
	.sleb128	12
	.byte		"Os_ServiceTrace"
	.byte		0
	.4byte		.L12451
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L409:
	.sleb128	12
	.byte		"Os_LastError"
	.byte		0
	.4byte		.L11951
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L410:
	.sleb128	12
	.byte		"Os_FaultyServiceId"
	.byte		0
	.4byte		.L12452
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12450:
.L12447:
	.sleb128	11
	.4byte		.L12442
	.uleb128	174
	.uleb128	1
	.4byte		.L12454-.L2
	.uleb128	104
.L383:
	.sleb128	12
	.byte		"Os_Err_TaskID"
	.byte		0
	.4byte		.L12206
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L384:
	.sleb128	12
	.byte		"Os_Err_ResID"
	.byte		0
	.4byte		.L12278
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L385:
	.sleb128	12
	.byte		"Os_Err_MaskType_Mask"
	.byte		0
	.4byte		.L12259
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L386:
	.sleb128	12
	.byte		"Os_Err_AlarmID"
	.byte		0
	.4byte		.L12219
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L387:
	.sleb128	12
	.byte		"Os_Err_TicksStart"
	.byte		0
	.4byte		.L11731
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L388:
	.sleb128	12
	.byte		"Os_Err_TicksCycle"
	.byte		0
	.4byte		.L11731
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L389:
	.sleb128	12
	.byte		"Os_Err_FuncIndex"
	.byte		0
	.4byte		.L12209
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L390:
	.sleb128	12
	.byte		"Os_Err_FuncParamRefType"
	.byte		0
	.4byte		.L12210
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L391:
	.sleb128	12
	.byte		"Os_Err_ApplID"
	.byte		0
	.4byte		.L12214
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L392:
	.sleb128	12
	.byte		"Os_Err_ApplStateRefType"
	.byte		0
	.4byte		.L12255
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L393:
	.sleb128	12
	.byte		"Os_Err_ObjType"
	.byte		0
	.4byte		.L12215
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L394:
	.sleb128	12
	.byte		"Os_Err_SchedID"
	.byte		0
	.4byte		.L12231
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L395:
	.sleb128	12
	.byte		"Os_Err_SchedID_Next"
	.byte		0
	.4byte		.L12231
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L396:
	.sleb128	12
	.byte		"Os_Err_CntID"
	.byte		0
	.4byte		.L11680
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L397:
	.sleb128	12
	.byte		"Os_Err_RestartType"
	.byte		0
	.4byte		.L12252
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
.L398:
	.sleb128	12
	.byte		"Os_Err_MaskRefType"
	.byte		0
	.4byte		.L12263
	.sleb128	2
	.byte		0x23
	.uleb128	64
	.byte		0x1
.L399:
	.sleb128	12
	.byte		"Os_Err_TaskStateRef"
	.byte		0
	.4byte		.L12268
	.sleb128	2
	.byte		0x23
	.uleb128	68
	.byte		0x1
.L400:
	.sleb128	12
	.byte		"Os_Err_TickRef_Ticks"
	.byte		0
	.4byte		.L12223
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.byte		0x1
.L401:
	.sleb128	12
	.byte		"Os_Err_AlarmBaseRefType_Info"
	.byte		0
	.4byte		.L12226
	.sleb128	2
	.byte		0x23
	.uleb128	76
	.byte		0x1
.L402:
	.sleb128	12
	.byte		"Os_Err_TaskIDRef"
	.byte		0
	.4byte		.L12273
	.sleb128	2
	.byte		0x23
	.uleb128	80
	.byte		0x1
.L403:
	.sleb128	12
	.byte		"Os_Err_TblStatusRefType"
	.byte		0
	.4byte		.L12236
	.sleb128	2
	.byte		0x23
	.uleb128	84
	.byte		0x1
.L404:
	.sleb128	12
	.byte		"Os_Err_TickRef_ElapsedTicks"
	.byte		0
	.4byte		.L12223
	.sleb128	2
	.byte		0x23
	.uleb128	88
	.byte		0x1
.L405:
	.sleb128	12
	.byte		"Os_Err_ObjObj"
	.byte		0
	.4byte		.L11612
	.sleb128	2
	.byte		0x23
	.uleb128	92
	.byte		0x1
.L406:
	.sleb128	12
	.byte		"Os_Err_SpinlockID"
	.byte		0
	.4byte		.L12199
	.sleb128	2
	.byte		0x23
	.uleb128	96
	.byte		0x1
.L407:
	.sleb128	12
	.byte		"Os_Err_TryToGetSpinlockRef"
	.byte		0
	.4byte		.L12455
	.sleb128	2
	.byte		0x23
	.uleb128	100
	.byte		0x1
	.sleb128	0
.L12454:
.L12445:
	.sleb128	11
	.4byte		.L12442
	.uleb128	174
	.uleb128	1
	.4byte		.L12456-.L2
	.uleb128	8
.L381:
	.sleb128	12
	.byte		"Os_ShutdownErrorCode"
	.byte		0
	.4byte		.L11951
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L382:
	.sleb128	12
	.byte		"Os_ShutdownInternalErrorCode"
	.byte		0
	.4byte		.L12457
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12456:
.L12229:
	.sleb128	11
	.4byte		.L12459
	.uleb128	50
	.uleb128	1
	.4byte		.L12460-.L2
	.uleb128	12
.L378:
	.sleb128	12
	.byte		"maxallowedvalue"
	.byte		0
	.4byte		.L11731
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L379:
	.sleb128	12
	.byte		"ticksperbase"
	.byte		0
	.4byte		.L11731
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L380:
	.sleb128	12
	.byte		"mincycle"
	.byte		0
	.4byte		.L11731
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L12460:
.L11981:
	.sleb128	11
	.4byte		.L12459
	.uleb128	50
	.uleb128	1
	.4byte		.L12461-.L2
	.uleb128	8
.L376:
	.sleb128	12
	.byte		"Os_ObjStartId"
	.byte		0
	.4byte		.L11612
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L377:
	.sleb128	12
	.byte		"Os_ObjEndId"
	.byte		0
	.4byte		.L11612
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12461:
.L12061:
	.sleb128	11
	.4byte		.L12462
	.uleb128	87
	.uleb128	7
	.4byte		.L12463-.L2
	.uleb128	8
.L366:
	.sleb128	12
	.byte		"Os_IsrPltId"
	.byte		0
	.4byte		.L12464
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L367:
	.sleb128	12
	.byte		"Os_IsrPltLevel"
	.byte		0
	.4byte		.L12465
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12463:
	.section	.debug_info,,n
.L11597:
	.sleb128	15
	.4byte		.L12467
	.uleb128	155
	.uleb128	1
	.4byte		.L12468-.L2
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
.L12468:
.L12047:
	.sleb128	15
	.4byte		.L11994
	.uleb128	69
	.uleb128	1
	.4byte		.L12469-.L2
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
.L12469:
.L12071:
	.sleb128	15
	.4byte		.L12051
	.uleb128	612
	.uleb128	1
	.4byte		.L12470-.L2
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
.L12470:
.L12079:
	.sleb128	15
	.4byte		.L12051
	.uleb128	60
	.uleb128	1
	.4byte		.L12471-.L2
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
.L12471:
	.section	.debug_info,,n
.L12212:
	.sleb128	17
	.4byte		.L12293
	.uleb128	33
	.uleb128	14
	.4byte		.L12472-.L2
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
.L12472:
.L12365:
	.sleb128	15
	.4byte		.L12321
	.uleb128	80
	.uleb128	13
	.4byte		.L12473-.L2
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
.L12473:
.L12335:
	.sleb128	15
	.4byte		.L12321
	.uleb128	61
	.uleb128	1
	.4byte		.L12474-.L2
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
.L12474:
.L11703:
	.sleb128	17
	.4byte		.L11973
	.uleb128	44
	.uleb128	14
	.4byte		.L12475-.L2
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
.L12475:
.L12372:
	.sleb128	17
	.4byte		.L11973
	.uleb128	36
	.uleb128	14
	.4byte		.L12476-.L2
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
.L12476:
.L12394:
	.sleb128	15
	.4byte		.L12378
	.uleb128	52
	.uleb128	1
	.4byte		.L12477-.L2
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
.L12477:
.L12441:
	.sleb128	15
	.4byte		.L12422
	.uleb128	32
	.uleb128	1
	.4byte		.L12478-.L2
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
.L12478:
.L12458:
	.sleb128	15
	.4byte		.L12442
	.uleb128	174
	.uleb128	1
	.4byte		.L12479-.L2
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
.L12479:
.L12453:
	.sleb128	15
	.4byte		.L12442
	.uleb128	86
	.uleb128	1
	.4byte		.L12480-.L2
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
.L12480:
.L12202:
	.sleb128	15
	.4byte		.L12481
	.uleb128	43
	.uleb128	1
	.4byte		.L12482-.L2
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
.L12482:
.L12271:
	.sleb128	15
	.4byte		.L12483
	.uleb128	37
	.uleb128	1
	.4byte		.L12484-.L2
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
.L12484:
.L12239:
	.sleb128	15
	.4byte		.L12485
	.uleb128	40
	.uleb128	1
	.4byte		.L12486-.L2
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
.L12486:
.L12216:
	.sleb128	15
	.4byte		.L12487
	.uleb128	47
	.uleb128	1
	.4byte		.L12488-.L2
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
.L12488:
.L11928:
	.sleb128	15
	.4byte		.L12459
	.uleb128	50
	.uleb128	1
	.4byte		.L12489-.L2
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
.L12489:
.L12287:
	.sleb128	15
	.4byte		.L12459
	.uleb128	42
	.uleb128	13
	.4byte		.L12490-.L2
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
.L12490:
.L12186:
	.sleb128	15
	.4byte		.L12491
	.uleb128	83
	.uleb128	14
	.4byte		.L12492-.L2
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
.L12492:
	.section	.debug_info,,n
.L11596:
	.sleb128	18
	.byte		"Os_IsrStateType"
	.byte		0
	.4byte		.L11597
	.section	.debug_info,,n
.L11602:
	.sleb128	19
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L11601:
	.sleb128	18
	.byte		"uint16"
	.byte		0
	.4byte		.L11602
.L11600:
	.sleb128	18
	.byte		"CoreIdType"
	.byte		0
	.4byte		.L11601
	.section	.debug_info,,n
.L11599:
	.sleb128	20
	.4byte		.L11600
.L11614:
	.sleb128	19
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L11613:
	.sleb128	18
	.byte		"uint32"
	.byte		0
	.4byte		.L11614
.L11612:
	.sleb128	18
	.byte		"Os_ObjectType"
	.byte		0
	.4byte		.L11613
.L11625:
	.sleb128	18
	.byte		"Os_CounterStatType"
	.byte		0
	.4byte		.L11626
.L11624:
	.sleb128	20
	.4byte		.L11625
	.section	.debug_info,,n
.L11623:
	.sleb128	21
	.4byte		.L11624
.L11635:
	.sleb128	18
	.byte		"Os_CounterDynType"
	.byte		0
	.4byte		.L11636
.L11634:
	.sleb128	21
	.4byte		.L11635
.L11633:
	.sleb128	20
	.4byte		.L11634
.L11640:
	.sleb128	18
	.byte		"Os_CounterEPType"
	.byte		0
	.4byte		.L11641
.L11639:
	.sleb128	21
	.4byte		.L11640
.L11638:
	.sleb128	20
	.4byte		.L11639
.L11645:
	.sleb128	18
	.byte		"Os_CounterEPActionType"
	.byte		0
	.4byte		.L11646
.L11644:
	.sleb128	21
	.4byte		.L11645
.L11643:
	.sleb128	20
	.4byte		.L11644
.L11658:
	.sleb128	20
	.4byte		.L11640
.L11657:
	.sleb128	21
	.4byte		.L11658
.L11656:
	.sleb128	20
	.4byte		.L11657
.L11680:
	.sleb128	18
	.byte		"CounterType"
	.byte		0
	.4byte		.L11613
.L11679:
	.sleb128	20
	.4byte		.L11680
.L11702:
	.sleb128	18
	.byte		"Os_CounterActionOwnerType"
	.byte		0
	.4byte		.L11703
.L11701:
	.sleb128	20
	.4byte		.L11702
.L11705:
	.sleb128	20
	.4byte		.L11612
.L11712:
	.sleb128	20
	.4byte		.L11623
.L11731:
	.sleb128	18
	.byte		"TickType"
	.byte		0
	.4byte		.L11613
.L11736:
	.sleb128	20
	.4byte		.L11731
.L11883:
	.sleb128	21
	.4byte		.L11639
.L11882:
	.sleb128	20
	.4byte		.L11883
.L11927:
	.sleb128	18
	.byte		"Os_BoolType"
	.byte		0
	.4byte		.L11928
.L11953:
	.sleb128	19
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L11952:
	.sleb128	18
	.byte		"uint8"
	.byte		0
	.4byte		.L11953
.L11951:
	.sleb128	18
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L11952
.L11958:
	.sleb128	18
	.byte		"Os_ProcStatType"
	.byte		0
	.4byte		.L11959
.L11957:
	.sleb128	20
	.4byte		.L11958
.L11956:
	.sleb128	21
	.4byte		.L11957
	.section	.debug_info,,n
.L11974:
	.sleb128	22
	.4byte		.L11975-.L2
	.4byte		.L11624
	.section	.debug_info,,n
	.sleb128	23
	.sleb128	0
.L11975:
.L11980:
	.sleb128	18
	.byte		"Os_ObjectRangeType"
	.byte		0
	.4byte		.L11981
.L11979:
	.sleb128	20
	.4byte		.L11980
.L11977:
	.sleb128	22
	.4byte		.L11978-.L2
	.4byte		.L11979
	.section	.debug_info,,n
	.sleb128	24
	.uleb128	1
	.sleb128	0
.L11978:
.L11987:
	.sleb128	18
	.byte		"Os_Core_StatType"
	.byte		0
	.4byte		.L11988
.L11986:
	.sleb128	20
	.4byte		.L11987
.L11984:
	.sleb128	22
	.4byte		.L11985-.L2
	.4byte		.L11986
	.sleb128	24
	.uleb128	1
	.sleb128	0
.L11985:
.L11992:
	.sleb128	18
	.byte		"Os_Core_DynSharedType"
	.byte		0
	.4byte		.L11993
.L11990:
	.sleb128	22
	.4byte		.L11991-.L2
	.4byte		.L11992
	.sleb128	24
	.uleb128	1
	.sleb128	0
.L11991:
.L11998:
	.sleb128	18
	.byte		"Os_Core_DynInitType"
	.byte		0
	.4byte		.L11999
.L11997:
	.sleb128	21
	.4byte		.L11998
.L11996:
	.sleb128	20
	.4byte		.L11997
.L12002:
	.sleb128	18
	.byte		"Os_Core_DynType"
	.byte		0
	.4byte		.L12003
.L12001:
	.sleb128	21
	.4byte		.L12002
.L12000:
	.sleb128	20
	.4byte		.L12001
.L12006:
	.sleb128	18
	.byte		"Os_DispatchElementType"
	.byte		0
	.4byte		.L12007
.L12005:
	.sleb128	21
	.4byte		.L12006
.L12004:
	.sleb128	20
	.4byte		.L12005
	.section	.debug_info,,n
.L12011:
	.sleb128	25
	.4byte		.L12012-.L2
	.byte		0x1
.L12013:
	.sleb128	20
	.4byte		.L11956
	.section	.debug_info,,n
	.sleb128	26
	.4byte		.L12013
	.sleb128	0
.L12012:
.L12010:
	.sleb128	21
	.4byte		.L12011
.L12009:
	.sleb128	18
	.byte		"Os_PrepareContextFunctionType"
	.byte		0
	.4byte		.L12010
.L12008:
	.sleb128	20
	.4byte		.L12009
.L12020:
	.sleb128	18
	.byte		"Os_StackType"
	.byte		0
	.4byte		.L11613
.L12019:
	.sleb128	21
	.4byte		.L12020
	.section	.debug_info,,n
.L12017:
	.sleb128	27
	.4byte		.L12018-.L2
	.4byte		.L12019
	.byte		0x1
	.sleb128	26
	.4byte		.L11956
	.sleb128	0
.L12018:
.L12016:
	.sleb128	21
	.4byte		.L12017
.L12015:
	.sleb128	18
	.byte		"Os_GetStackPointerFunctionType"
	.byte		0
	.4byte		.L12016
.L12014:
	.sleb128	20
	.4byte		.L12015
.L12022:
	.sleb128	18
	.byte		"Os_IsrDynInitType"
	.byte		0
	.4byte		.L12023
.L12024:
	.sleb128	18
	.byte		"Os_SchedulerDynInitType"
	.byte		0
	.4byte		.L12025
.L12028:
	.sleb128	18
	.byte		"Os_ApplicationStatType"
	.byte		0
	.4byte		.L12029
.L12027:
	.sleb128	20
	.4byte		.L12028
.L12026:
	.sleb128	21
	.4byte		.L12027
.L12031:
	.sleb128	18
	.byte		"Os_DispatcherType"
	.byte		0
	.4byte		.L12032
.L12033:
	.sleb128	18
	.byte		"Os_PublicData_NoInitType"
	.byte		0
	.4byte		.L12034
.L12036:
	.sleb128	18
	.byte		"Os_SchedulerDynType"
	.byte		0
	.4byte		.L12037
.L12038:
	.sleb128	18
	.byte		"Os_IsrDynType"
	.byte		0
	.4byte		.L12039
.L12040:
	.sleb128	18
	.byte		"Os_HooksDynType"
	.byte		0
	.4byte		.L12041
.L12044:
	.sleb128	20
	.4byte		.L11959
.L12043:
	.sleb128	21
	.4byte		.L12044
.L12046:
	.sleb128	18
	.byte		"Os_ScheduleType"
	.byte		0
	.4byte		.L12047
.L12048:
	.sleb128	18
	.byte		"Os_PriorityType"
	.byte		0
	.4byte		.L11613
.L12049:
	.sleb128	18
	.byte		"Os_SchedulerQueueElementType"
	.byte		0
	.4byte		.L12050
.L12053:
	.sleb128	21
	.4byte		.L12050
.L12055:
	.sleb128	18
	.byte		"Os_IsrRegister_t"
	.byte		0
	.4byte		.L11613
.L12056:
	.sleb128	18
	.byte		"boolean"
	.byte		0
	.4byte		.L11953
.L12060:
	.sleb128	18
	.byte		"Os_IsrPlatformConfigType"
	.byte		0
	.4byte		.L12061
.L12059:
	.sleb128	20
	.4byte		.L12060
.L12058:
	.sleb128	21
	.4byte		.L12059
.L12064:
	.sleb128	18
	.byte		"Os_IsrApiTable"
	.byte		0
	.4byte		.L12065
.L12063:
	.sleb128	20
	.4byte		.L12064
.L12062:
	.sleb128	21
	.4byte		.L12063
.L12066:
	.sleb128	22
	.4byte		.L12067-.L2
	.4byte		.L11613
	.sleb128	24
	.uleb128	7
	.sleb128	0
.L12067:
.L12070:
	.sleb128	18
	.byte		"Os_DispatchKindType"
	.byte		0
	.4byte		.L12071
.L12073:
	.sleb128	18
	.byte		"ProcType"
	.byte		0
	.4byte		.L11612
.L12072:
	.sleb128	18
	.byte		"ISRType"
	.byte		0
	.4byte		.L12073
.L12075:
	.sleb128	18
	.byte		"Os_APICallType"
	.byte		0
	.4byte		.L12076
.L12074:
	.sleb128	21
	.4byte		.L12075
.L12078:
	.sleb128	18
	.byte		"Os_API_LockType"
	.byte		0
	.4byte		.L12079
.L12082:
	.sleb128	25
	.4byte		.L12083-.L2
	.byte		0x1
.L12084:
	.sleb128	21
	.4byte		.L12076
	.sleb128	26
	.4byte		.L12084
.L12085:
	.sleb128	20
	.4byte		.L12043
	.sleb128	26
	.4byte		.L12085
	.sleb128	0
.L12083:
.L12081:
	.sleb128	21
	.4byte		.L12082
.L12080:
	.sleb128	18
	.byte		"Os_API_Func_Type"
	.byte		0
	.4byte		.L12081
.L12088:
	.sleb128	18
	.byte		"Os_API_StartOsType"
	.byte		0
	.4byte		.L12089
.L12090:
	.sleb128	18
	.byte		"Os_API_ShutdownOsType"
	.byte		0
	.4byte		.L12091
.L12092:
	.sleb128	18
	.byte		"Os_API_ShutdownOsInternalType"
	.byte		0
	.4byte		.L12093
.L12094:
	.sleb128	18
	.byte		"Os_API_ShutdownAllCoresType"
	.byte		0
	.4byte		.L12095
.L12096:
	.sleb128	18
	.byte		"Os_API_GetNumberOfActivatedCoresType"
	.byte		0
	.4byte		.L12097
.L12098:
	.sleb128	18
	.byte		"Os_API_ApiStartCoreType"
	.byte		0
	.4byte		.L12099
.L12100:
	.sleb128	18
	.byte		"Os_API_StartNonAutosarCoreType"
	.byte		0
	.4byte		.L12101
.L12102:
	.sleb128	18
	.byte		"Os_API_GetCoreIDType"
	.byte		0
	.4byte		.L12103
.L12104:
	.sleb128	18
	.byte		"Os_API_ActivateTaskType"
	.byte		0
	.4byte		.L12105
.L12106:
	.sleb128	18
	.byte		"Os_API_ChainTaskType"
	.byte		0
	.4byte		.L12107
.L12108:
	.sleb128	18
	.byte		"Os_API_GetTaskIDType"
	.byte		0
	.4byte		.L12109
.L12110:
	.sleb128	18
	.byte		"Os_API_GetTaskStateType"
	.byte		0
	.4byte		.L12111
.L12112:
	.sleb128	18
	.byte		"Os_API_SetEventType"
	.byte		0
	.4byte		.L12113
.L12114:
	.sleb128	18
	.byte		"Os_API_ClearEventType"
	.byte		0
	.4byte		.L12115
.L12116:
	.sleb128	18
	.byte		"Os_API_GetEventType"
	.byte		0
	.4byte		.L12117
.L12118:
	.sleb128	18
	.byte		"Os_API_WaitEventType"
	.byte		0
	.4byte		.L12119
.L12120:
	.sleb128	18
	.byte		"Os_API_GetResourceType"
	.byte		0
	.4byte		.L12121
.L12122:
	.sleb128	18
	.byte		"Os_API_ReleaseResourceType"
	.byte		0
	.4byte		.L12123
.L12124:
	.sleb128	18
	.byte		"Os_API_GetAlarmBaseType"
	.byte		0
	.4byte		.L12125
.L12126:
	.sleb128	18
	.byte		"Os_API_GetAlarmType"
	.byte		0
	.4byte		.L12127
.L12128:
	.sleb128	18
	.byte		"Os_API_SetRelAlarmType"
	.byte		0
	.4byte		.L12129
.L12130:
	.sleb128	18
	.byte		"Os_API_SetAbsAlarmType"
	.byte		0
	.4byte		.L12131
.L12132:
	.sleb128	18
	.byte		"Os_API_CancelAlarmType"
	.byte		0
	.4byte		.L12133
.L12134:
	.sleb128	18
	.byte		"Os_API_GetApplicationStateType"
	.byte		0
	.4byte		.L12135
.L12136:
	.sleb128	18
	.byte		"Os_API_TerminateApplicationType"
	.byte		0
	.4byte		.L12137
.L12138:
	.sleb128	18
	.byte		"Os_API_GetApplicationIDType"
	.byte		0
	.4byte		.L12139
.L12140:
	.sleb128	18
	.byte		"Os_API_GetISRIDType"
	.byte		0
	.4byte		.L12141
.L12142:
	.sleb128	18
	.byte		"Os_API_GetActiveApplicationModeType"
	.byte		0
	.4byte		.L12143
.L12144:
	.sleb128	18
	.byte		"Os_API_IncrementCounterType"
	.byte		0
	.4byte		.L12145
.L12146:
	.sleb128	18
	.byte		"Os_API_GetCounterValueType"
	.byte		0
	.4byte		.L12147
.L12148:
	.sleb128	18
	.byte		"Os_API_GetElapsedValueType"
	.byte		0
	.4byte		.L12149
.L12150:
	.sleb128	18
	.byte		"Os_API_StartScheduleTableAbsType"
	.byte		0
	.4byte		.L12151
.L12152:
	.sleb128	18
	.byte		"Os_API_StartScheduleTableRelType"
	.byte		0
	.4byte		.L12153
.L12154:
	.sleb128	18
	.byte		"Os_API_StopScheduleTableType"
	.byte		0
	.4byte		.L12155
.L12156:
	.sleb128	18
	.byte		"Os_API_GetScheduleTableStatusType"
	.byte		0
	.4byte		.L12157
.L12158:
	.sleb128	18
	.byte		"Os_API_NextScheduleTableType"
	.byte		0
	.4byte		.L12159
.L12160:
	.sleb128	18
	.byte		"Os_API_StartScheduleTableSynchronType"
	.byte		0
	.4byte		.L12161
.L12162:
	.sleb128	18
	.byte		"Os_API_SyncScheduleTableType"
	.byte		0
	.4byte		.L12163
.L12164:
	.sleb128	18
	.byte		"Os_API_SetScheduleTableAsyncType"
	.byte		0
	.4byte		.L12165
.L12166:
	.sleb128	18
	.byte		"Os_API_CheckObjectAccessType"
	.byte		0
	.4byte		.L12167
.L12168:
	.sleb128	18
	.byte		"Os_API_CheckObjectOwnershipType"
	.byte		0
	.4byte		.L12169
.L12170:
	.sleb128	18
	.byte		"Os_API_CallTrustedFunctionType"
	.byte		0
	.4byte		.L12171
.L12172:
	.sleb128	18
	.byte		"Os_API_StackUsageType"
	.byte		0
	.4byte		.L12173
.L12174:
	.sleb128	18
	.byte		"Os_API_GetSpinlockType"
	.byte		0
	.4byte		.L12175
.L12176:
	.sleb128	18
	.byte		"Os_API_ReleaseSpinlockType"
	.byte		0
	.4byte		.L12177
.L12178:
	.sleb128	18
	.byte		"Os_API_TryToGetSpinlockType"
	.byte		0
	.4byte		.L12179
.L12180:
	.sleb128	18
	.byte		"Os_API_IocTransferType"
	.byte		0
	.4byte		.L12181
.L12182:
	.sleb128	18
	.byte		"Os_API_ControlIdleType"
	.byte		0
	.4byte		.L12183
.L12185:
	.sleb128	18
	.byte		"IdleModeType"
	.byte		0
	.4byte		.L12186
.L12190:
	.sleb128	18
	.byte		"Os_IOC_ChannelStatType"
	.byte		0
	.4byte		.L12191
.L12189:
	.sleb128	20
	.4byte		.L12190
.L12188:
	.sleb128	21
	.4byte		.L12189
	.section	.debug_info,,n
.L12197:
	.sleb128	28
	.byte		"void"
	.byte		0
	.byte		0x0
.L12196:
	.sleb128	21
	.4byte		.L12197
.L12194:
	.sleb128	22
	.4byte		.L12195-.L2
	.4byte		.L12196
	.sleb128	24
	.uleb128	1
	.sleb128	0
.L12195:
.L12193:
	.sleb128	18
	.byte		"Os_IOC_DataType"
	.byte		0
	.4byte		.L12194
.L12192:
	.sleb128	21
	.4byte		.L12193
.L12199:
	.sleb128	18
	.byte		"SpinlockIdType"
	.byte		0
	.4byte		.L11601
.L12201:
	.sleb128	18
	.byte		"TryToGetSpinlockType"
	.byte		0
	.4byte		.L12202
.L12200:
	.sleb128	21
	.4byte		.L12201
.L12206:
	.sleb128	18
	.byte		"TaskType"
	.byte		0
	.4byte		.L12073
.L12207:
	.sleb128	21
	.4byte		.L11952
.L12209:
	.sleb128	18
	.byte		"TrustedFunctionIndexType"
	.byte		0
	.4byte		.L11613
.L12210:
	.sleb128	18
	.byte		"TrustedFunctionParameterRefType"
	.byte		0
	.4byte		.L12196
.L12211:
	.sleb128	18
	.byte		"Os_TrustedFunctionReturnValueType"
	.byte		0
	.4byte		.L12212
.L12214:
	.sleb128	18
	.byte		"ApplicationType"
	.byte		0
	.4byte		.L11952
.L12215:
	.sleb128	18
	.byte		"ObjectTypeType"
	.byte		0
	.4byte		.L12216
.L12219:
	.sleb128	18
	.byte		"AlarmType"
	.byte		0
	.4byte		.L11612
.L12224:
	.sleb128	21
	.4byte		.L11731
.L12223:
	.sleb128	18
	.byte		"TickRefType"
	.byte		0
	.4byte		.L12224
.L12228:
	.sleb128	18
	.byte		"AlarmBaseType"
	.byte		0
	.4byte		.L12229
.L12227:
	.sleb128	21
	.4byte		.L12228
.L12226:
	.sleb128	18
	.byte		"AlarmBaseRefType"
	.byte		0
	.4byte		.L12227
.L12231:
	.sleb128	18
	.byte		"ScheduleTableType"
	.byte		0
	.4byte		.L11613
.L12238:
	.sleb128	18
	.byte		"ScheduleTableStatusType"
	.byte		0
	.4byte		.L12239
.L12237:
	.sleb128	21
	.4byte		.L12238
.L12236:
	.sleb128	18
	.byte		"ScheduleTableStatusRefType"
	.byte		0
	.4byte		.L12237
.L12247:
	.sleb128	25
	.4byte		.L12248-.L2
	.byte		0x1
	.sleb128	26
	.4byte		.L12084
	.sleb128	0
.L12248:
.L12246:
	.sleb128	21
	.4byte		.L12247
.L12245:
	.sleb128	18
	.byte		"LightServiceFunctionType"
	.byte		0
	.4byte		.L12246
.L12252:
	.sleb128	18
	.byte		"RestartType"
	.byte		0
	.4byte		.L11952
.L12257:
	.sleb128	18
	.byte		"ApplicationStateType"
	.byte		0
	.4byte		.L11952
.L12256:
	.sleb128	21
	.4byte		.L12257
.L12255:
	.sleb128	18
	.byte		"ApplicationStateRefType"
	.byte		0
	.4byte		.L12256
.L12261:
	.sleb128	19
	.byte		"unsigned long long"
	.byte		0
	.byte		0x7
	.byte		0x8
.L12260:
	.sleb128	18
	.byte		"uint64"
	.byte		0
	.4byte		.L12261
.L12259:
	.sleb128	18
	.byte		"EventMaskType"
	.byte		0
	.4byte		.L12260
.L12264:
	.sleb128	21
	.4byte		.L12259
.L12263:
	.sleb128	18
	.byte		"EventMaskRefType"
	.byte		0
	.4byte		.L12264
.L12270:
	.sleb128	18
	.byte		"TaskStateType"
	.byte		0
	.4byte		.L12271
.L12269:
	.sleb128	21
	.4byte		.L12270
.L12268:
	.sleb128	18
	.byte		"TaskStateRefType"
	.byte		0
	.4byte		.L12269
.L12274:
	.sleb128	21
	.4byte		.L12206
.L12273:
	.sleb128	18
	.byte		"TaskRefType"
	.byte		0
	.4byte		.L12274
.L12278:
	.sleb128	18
	.byte		"ResourceType"
	.byte		0
	.4byte		.L11613
.L12281:
	.sleb128	18
	.byte		"AppModeType"
	.byte		0
	.4byte		.L11613
.L12286:
	.sleb128	18
	.byte		"Os_CoreShutdownType"
	.byte		0
	.4byte		.L12287
.L12290:
	.sleb128	21
	.4byte		.L11951
.L12297:
	.sleb128	18
	.byte		"Os_IOC_ChannelDynType"
	.byte		0
	.4byte		.L12298
.L12296:
	.sleb128	21
	.4byte		.L12297
.L12295:
	.sleb128	20
	.4byte		.L12296
.L12299:
	.sleb128	18
	.byte		"Os_IOC_ChannelSizeType"
	.byte		0
	.4byte		.L11601
.L12300:
	.sleb128	20
	.4byte		.L12196
.L12301:
	.sleb128	20
	.4byte		.L11601
.L12303:
	.sleb128	18
	.byte		"Os_IOC_DataCountType"
	.byte		0
	.4byte		.L11952
.L12302:
	.sleb128	20
	.4byte		.L12303
.L12307:
	.sleb128	18
	.byte		"Os_IOC_DataDescriptorType"
	.byte		0
	.4byte		.L12308
.L12306:
	.sleb128	20
	.4byte		.L12307
.L12305:
	.sleb128	21
	.4byte		.L12306
.L12304:
	.sleb128	20
	.4byte		.L12305
.L12311:
	.sleb128	18
	.byte		"Os_LockResourceType"
	.byte		0
	.4byte		.L11952
.L12310:
	.sleb128	21
	.4byte		.L12311
.L12309:
	.sleb128	20
	.4byte		.L12310
.L12314:
	.sleb128	18
	.byte		"Os_IOC_DataLengthType"
	.byte		0
	.4byte		.L11601
.L12313:
	.sleb128	20
	.4byte		.L12314
.L12316:
	.sleb128	18
	.byte		"Os_IOC_DataOffsetType"
	.byte		0
	.4byte		.L11601
.L12315:
	.sleb128	20
	.4byte		.L12316
.L12320:
	.sleb128	18
	.byte		"Os_HookIDType"
	.byte		0
	.4byte		.L11601
.L12323:
	.sleb128	20
	.4byte		.L12206
.L12326:
	.sleb128	18
	.byte		"Os_ProcDynType"
	.byte		0
	.4byte		.L12327
.L12325:
	.sleb128	21
	.4byte		.L12326
.L12324:
	.sleb128	20
	.4byte		.L12325
.L12331:
	.sleb128	18
	.byte		"Os_ProcStackType"
	.byte		0
	.4byte		.L12332
.L12330:
	.sleb128	20
	.4byte		.L12331
.L12329:
	.sleb128	21
	.4byte		.L12330
.L12328:
	.sleb128	20
	.4byte		.L12329
.L12334:
	.sleb128	18
	.byte		"Os_ProcKindType"
	.byte		0
	.4byte		.L12335
.L12333:
	.sleb128	20
	.4byte		.L12334
.L12336:
	.sleb128	20
	.4byte		.L12259
.L12337:
	.sleb128	20
	.4byte		.L12048
.L12339:
	.sleb128	18
	.byte		"Os_ActivationCountType"
	.byte		0
	.4byte		.L11613
.L12338:
	.sleb128	20
	.4byte		.L12339
.L12340:
	.sleb128	20
	.4byte		.L12019
.L12341:
	.sleb128	20
	.4byte		.L12026
.L12345:
	.sleb128	18
	.byte		"Os_AccessStorageType"
	.byte		0
	.4byte		.L11613
.L12344:
	.sleb128	20
	.4byte		.L12345
.L12343:
	.sleb128	21
	.4byte		.L12344
.L12342:
	.sleb128	20
	.4byte		.L12343
.L12349:
	.sleb128	25
	.4byte		.L12350-.L2
	.byte		0x1
	.sleb128	0
.L12350:
.L12348:
	.sleb128	21
	.4byte		.L12349
.L12347:
	.sleb128	18
	.byte		"Os_ProcEntryPointType"
	.byte		0
	.4byte		.L12348
.L12346:
	.sleb128	20
	.4byte		.L12347
.L12351:
	.sleb128	20
	.4byte		.L12278
.L12356:
	.sleb128	18
	.byte		"Os_ResourceStatType"
	.byte		0
	.4byte		.L12357
.L12355:
	.sleb128	20
	.4byte		.L12356
.L12354:
	.sleb128	21
	.4byte		.L12355
.L12353:
	.sleb128	18
	.byte		"Os_ResourceStack"
	.byte		0
	.4byte		.L12354
.L12352:
	.sleb128	21
	.4byte		.L12353
.L12358:
	.sleb128	20
	.4byte		.L12053
.L12359:
	.sleb128	20
	.4byte		.L12058
.L12362:
	.sleb128	18
	.byte		"Os_StackSizeType"
	.byte		0
	.4byte		.L11613
.L12361:
	.sleb128	20
	.4byte		.L12362
.L12364:
	.sleb128	18
	.byte		"Os_ProcContexStateType"
	.byte		0
	.4byte		.L12365
.L12367:
	.sleb128	20
	.4byte		.L12368
.L12366:
	.sleb128	21
	.4byte		.L12367
.L12371:
	.sleb128	18
	.byte		"Os_CounterKindType"
	.byte		0
	.4byte		.L12372
.L12370:
	.sleb128	20
	.4byte		.L12371
.L12374:
	.sleb128	18
	.byte		"Os_TimerType"
	.byte		0
	.4byte		.L11613
.L12373:
	.sleb128	20
	.4byte		.L12374
.L12380:
	.sleb128	20
	.4byte		.L12199
.L12383:
	.sleb128	18
	.byte		"Os_SpinlockDynType"
	.byte		0
	.4byte		.L12384
.L12382:
	.sleb128	21
	.4byte		.L12383
.L12381:
	.sleb128	20
	.4byte		.L12382
.L12389:
	.sleb128	18
	.byte		"Os_ApplicationDynType"
	.byte		0
	.4byte		.L12390
.L12388:
	.sleb128	21
	.4byte		.L12389
.L12387:
	.sleb128	20
	.4byte		.L12388
.L12391:
	.sleb128	20
	.4byte		.L12214
.L12393:
	.sleb128	18
	.byte		"Os_ApplicationKindType"
	.byte		0
	.4byte		.L12394
.L12392:
	.sleb128	20
	.4byte		.L12393
.L12398:
	.sleb128	25
	.4byte		.L12399-.L2
	.byte		0x1
	.sleb128	26
	.4byte		.L11951
	.sleb128	0
.L12399:
.L12397:
	.sleb128	21
	.4byte		.L12398
.L12396:
	.sleb128	18
	.byte		"Os_ShutdownHookFuncType"
	.byte		0
	.4byte		.L12397
.L12395:
	.sleb128	20
	.4byte		.L12396
.L12403:
	.sleb128	25
	.4byte		.L12404-.L2
	.byte		0x1
	.sleb128	0
.L12404:
.L12402:
	.sleb128	21
	.4byte		.L12403
.L12401:
	.sleb128	18
	.byte		"Os_StartUpHookFuncType"
	.byte		0
	.4byte		.L12402
.L12400:
	.sleb128	20
	.4byte		.L12401
.L12408:
	.sleb128	25
	.4byte		.L12409-.L2
	.byte		0x1
	.sleb128	26
	.4byte		.L11951
	.sleb128	0
.L12409:
.L12407:
	.sleb128	21
	.4byte		.L12408
.L12406:
	.sleb128	18
	.byte		"Os_ErrorHookFuncType"
	.byte		0
	.4byte		.L12407
.L12405:
	.sleb128	20
	.4byte		.L12406
.L12412:
	.sleb128	20
	.4byte		.L12073
.L12411:
	.sleb128	21
	.4byte		.L12412
.L12410:
	.sleb128	20
	.4byte		.L12411
.L12414:
	.sleb128	21
	.4byte		.L11679
.L12413:
	.sleb128	20
	.4byte		.L12414
.L12417:
	.sleb128	20
	.4byte		.L12219
.L12416:
	.sleb128	21
	.4byte		.L12417
.L12415:
	.sleb128	20
	.4byte		.L12416
.L12420:
	.sleb128	20
	.4byte		.L12231
.L12419:
	.sleb128	21
	.4byte		.L12420
.L12418:
	.sleb128	20
	.4byte		.L12419
.L12425:
	.sleb128	18
	.byte		"Os_ResourceDynType"
	.byte		0
	.4byte		.L12426
.L12424:
	.sleb128	21
	.4byte		.L12425
.L12429:
	.sleb128	18
	.byte		"Os_ErrorType"
	.byte		0
	.4byte		.L12430
.L12431:
	.sleb128	18
	.byte		"Os_ExceptionStatusType"
	.byte		0
	.4byte		.L12432
.L12437:
	.sleb128	25
	.4byte		.L12438-.L2
	.byte		0x1
	.sleb128	0
.L12438:
.L12436:
	.sleb128	21
	.4byte		.L12437
.L12435:
	.sleb128	18
	.byte		"Os_IsrHandlerFuncType"
	.byte		0
	.4byte		.L12436
.L12434:
	.sleb128	20
	.4byte		.L12435
.L12440:
	.sleb128	18
	.byte		"Os_ExceptionTypeType"
	.byte		0
	.4byte		.L12441
.L12444:
	.sleb128	18
	.byte		"Os_ShudownErrorType"
	.byte		0
	.4byte		.L12445
.L12446:
	.sleb128	18
	.byte		"Os_ParameterErrorType"
	.byte		0
	.4byte		.L12447
.L12448:
	.sleb128	18
	.byte		"Os_ServiceErrorType"
	.byte		0
	.4byte		.L12449
.L12451:
	.sleb128	18
	.byte		"ServiceTraceType"
	.byte		0
	.4byte		.L11952
.L12452:
	.sleb128	18
	.byte		"OSServiceIdType"
	.byte		0
	.4byte		.L12453
.L12455:
	.sleb128	18
	.byte		"TryToGetSpinlockRefType"
	.byte		0
	.4byte		.L12200
.L12457:
	.sleb128	18
	.byte		"Os_SystemInternalErrorType"
	.byte		0
	.4byte		.L12458
.L12464:
	.sleb128	20
	.4byte		.L11613
.L12466:
	.sleb128	18
	.byte		"Os_IsrPlatformLevelType"
	.byte		0
	.4byte		.L11601
.L12465:
	.sleb128	20
	.4byte		.L12466
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11589:
	.sleb128	0
.L11585:

	.section	.debug_loc,,n
	.align	0
.L11603:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locend
.L11610:
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),3
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),0
	.d2locend
.L11615:
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo6),3
	.d2locend
.L11621:
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo9),4
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo11),4
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo13),4
	.d2locend
.L11627:
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo13),5
	.d2locend
.L11637:
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo16),3
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo18),31
	.d2locend
.L11642:
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo17),4
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo20),30
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo22),4
	.d2locend
.L11647:
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo17),5
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo23),29
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo22),5
	.d2locend
.L11648:
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo17),6
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo23),28
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo22),6
	.d2locend
.L11654:
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo26),3
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo28),3
	.d2locend
.L11655:
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo29),4
	.d2locreg	%offsetof(.Llo30), %offsetof(.Llo31),31
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo33),4
	.d2locend
.L11659:
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo29),5
	.d2locreg	%offsetof(.Llo30), %offsetof(.Llo31),30
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo33),5
	.d2locend
.L11665:
	.d2locreg	%offsetof(.Llo34), %offsetof(.Llo35),3
	.d2locend
.L11666:
	.d2locreg	%offsetof(.Llo34), %offsetof(.Llo35),4
	.d2locend
.L11672:
	.d2locreg	%offsetof(.Llo36), %offsetof(.Llo37),3
	.d2locend
.L11673:
	.d2locreg	%offsetof(.Llo36), %offsetof(.Llo38),4
	.d2locend
.L11681:
	.d2locreg	%offsetof(.Llo39), %offsetof(.Llo40),3
	.d2locreg	%offsetof(.Llo41), %offsetof(.Llo42),31
	.d2locreg	%offsetof(.Llo43), %offsetof(.Llo44),31
	.d2locend
.L11683:
	.d2locreg	%offsetof(.Llo45), %offsetof(.Llo42),30
	.d2locreg	%offsetof(.Llo46), %offsetof(.Llo47),3
	.d2locend
.L11685:
	.d2locreg	%offsetof(.Llo48), %offsetof(.Llo49),29
	.d2locend
.L11687:
	.d2locreg	%offsetof(.Llo50), %offsetof(.Llo42),28
	.d2locreg	%offsetof(.Llo51), %offsetof(.Llo47),4
	.d2locend
.L11689:
	.d2locreg	%offsetof(.Llo52), %offsetof(.Llo53),27
	.d2locend
.L11695:
	.d2locreg	%offsetof(.Llo54), %offsetof(.Llo55),6
	.d2locend
.L11704:
	.d2locreg	%offsetof(.Llo56), %offsetof(.Llo57),3
	.d2locend
.L11706:
	.d2locreg	%offsetof(.Llo56), %offsetof(.Llo58),4
	.d2locreg	%offsetof(.Llo59), %offsetof(.Llo60),4
	.d2locend
.L11713:
	.d2locreg	%offsetof(.Llo61), %offsetof(.Llo62),3
	.d2locend
.L11714:
	.d2locreg	%offsetof(.Llo61), %offsetof(.Llo62),4
	.d2locreg	%offsetof(.Llo63), %offsetof(.Llo64),31
	.d2locreg	%offsetof(.Llo65), %offsetof(.Llo66),4
	.d2locend
.L11716:
	.d2locreg	%offsetof(.Llo67), %offsetof(.Llo64),30
	.d2locend
.L11718:
	.d2locreg	%offsetof(.Llo68), %offsetof(.Llo69),29
	.d2locend
.L11724:
	.d2locreg	%offsetof(.Llo70), %offsetof(.Llo71),28
	.d2locend
.L11726:
	.d2locreg	%offsetof(.Llo72), %offsetof(.Llo71),27
	.d2locend
.L11733:
	.d2locreg	%offsetof(.Llo73), %offsetof(.Llo74),3
	.d2locend
.L11734:
	.d2locreg	%offsetof(.Llo73), %offsetof(.Llo75),4
	.d2locend
.L11737:
	.d2locreg	%offsetof(.Llo76), %offsetof(.Llo75),6
	.d2locend
.L11739:
	.d2locreg	%offsetof(.Llo74), %offsetof(.Llo77),3
	.d2locreg	%offsetof(.Llo75), %offsetof(.Llo78),3
	.d2locend
.L11745:
	.d2locreg	%offsetof(.Llo79), %offsetof(.Llo80),3
	.d2locreg	%offsetof(.Llo81), %offsetof(.Llo82),7
	.d2locend
.L11746:
	.d2locreg	%offsetof(.Llo79), %offsetof(.Llo83),4
	.d2locend
.L11752:
	.d2locreg	%offsetof(.Llo84), %offsetof(.Llo85),3
	.d2locreg	%offsetof(.Llo86), %offsetof(.Llo87),3
	.d2locreg	%offsetof(.Llo88), %offsetof(.Llo89),3
	.d2locend
.L11754:
	.d2locreg	%offsetof(.Llo90), %offsetof(.Llo89),4
	.d2locreg	%offsetof(.Llo91), %offsetof(.Llo92),4
	.d2locend
.L11756:
	.d2locreg	%offsetof(.Llo87), %offsetof(.Llo88),3
	.d2locreg	%offsetof(.Llo89), %offsetof(.Llo91),3
	.d2locreg	%offsetof(.Llo92), %offsetof(.Llo93),3
	.d2locend
.L11762:
	.d2locreg	%offsetof(.Llo94), %offsetof(.Llo95),3
	.d2locend
.L11764:
	.d2locreg	%offsetof(.Llo96), %offsetof(.Llo97),5
	.d2locend
.L11766:
	.d2locreg	%offsetof(.Llo98), %offsetof(.Llo97),4
	.d2locreg	%offsetof(.Llo95), %offsetof(.Llo99),4
	.d2locend
.L11772:
	.d2locreg	%offsetof(.Llo100), %offsetof(.Llo101),3
	.d2locreg	%offsetof(.Llo102), %offsetof(.Llo103),3
	.d2locreg	%offsetof(.Llo104), %offsetof(.Llo105),31
	.d2locreg	%offsetof(.Llo106), %offsetof(.Llo107),31
	.d2locend
.L11773:
	.d2locreg	%offsetof(.Llo100), %offsetof(.Llo102),4
	.d2locend
.L11775:
	.d2locreg	%offsetof(.Llo100), %offsetof(.Llo105),30
	.d2locreg	%offsetof(.Llo106), %offsetof(.Llo107),30
	.d2locend
.L11777:
	.d2locreg	%offsetof(.Llo108), %offsetof(.Llo109),3
	.d2locreg	%offsetof(.Llo105), %offsetof(.Llo106),3
	.d2locreg	%offsetof(.Llo107), %offsetof(.Llo110),3
	.d2locend
.L11783:
	.d2locreg	%offsetof(.Llo111), %offsetof(.Llo112),3
	.d2locend
.L11789:
	.d2locreg	%offsetof(.Llo113), %offsetof(.Llo114),3
	.d2locend
.L11791:
	.d2locreg	%offsetof(.Llo115), %offsetof(.Llo116),5
	.d2locend
.L11797:
	.d2locreg	%offsetof(.Llo117), %offsetof(.Llo118),3
	.d2locreg	%offsetof(.Llo119), %offsetof(.Llo120),6
	.d2locend
.L11798:
	.d2locreg	%offsetof(.Llo117), %offsetof(.Llo121),4
	.d2locreg	%offsetof(.Llo122), %offsetof(.Llo123),4
	.d2locreg	%offsetof(.Llo124), %offsetof(.Llo125),4
	.d2locend
.L11799:
	.d2locreg	%offsetof(.Llo117), %offsetof(.Llo120),5
	.d2locreg	%offsetof(.Llo126), %offsetof(.Llo121),3
	.d2locreg	%offsetof(.Llo122), %offsetof(.Llo123),3
	.d2locreg	%offsetof(.Llo124), %offsetof(.Llo127),5
	.d2locend
.L11801:
	.d2locreg	%offsetof(.Llo128), %offsetof(.Llo123),31
	.d2locend
.L11803:
	.d2locreg	%offsetof(.Llo129), %offsetof(.Llo123),30
	.d2locend
.L11805:
	.d2locreg	%offsetof(.Llo130), %offsetof(.Llo123),30
	.d2locend
.L11811:
	.d2locreg	%offsetof(.Llo131), %offsetof(.Llo121),6
	.d2locreg	%offsetof(.Llo132), %offsetof(.Llo133),6
	.d2locreg	%offsetof(.Llo122), %offsetof(.Llo134),6
	.d2locend
.L11813:
	.d2locreg	%offsetof(.Llo135), %offsetof(.Llo121),6
	.d2locreg	%offsetof(.Llo136), %offsetof(.Llo132),5
	.d2locreg	%offsetof(.Llo122), %offsetof(.Llo134),6
	.d2locend
.L11819:
	.d2locreg	%offsetof(.Llo137), %offsetof(.Llo138),3
	.d2locend
.L11820:
	.d2locreg	%offsetof(.Llo137), %offsetof(.Llo138),4
	.d2locend
.L11822:
	.d2locreg	%offsetof(.Llo138), %offsetof(.Llo139),3
	.d2locend
.L11828:
	.d2locreg	%offsetof(.Llo140), %offsetof(.Llo141),3
	.d2locend
.L11830:
	.d2locreg	%offsetof(.Llo142), %offsetof(.Llo143),4
	.d2locend
.L11836:
	.d2locreg	%offsetof(.Llo144), %offsetof(.Llo145),3
	.d2locreg	%offsetof(.Llo146), %offsetof(.Llo147),3
	.d2locreg	%offsetof(.Llo148), %offsetof(.Llo149),3
	.d2locreg	%offsetof(.Llo150), %offsetof(.Llo151),3
	.d2locend
.L11837:
	.d2locreg	%offsetof(.Llo144), %offsetof(.Llo146),4
	.d2locreg	%offsetof(.Llo147), %offsetof(.Llo152),31
	.d2locend
.L11838:
	.d2locreg	%offsetof(.Llo144), %offsetof(.Llo147),5
	.d2locreg	%offsetof(.Llo153), %offsetof(.Llo154),29
	.d2locreg	%offsetof(.Llo155), %offsetof(.Llo156),5
	.d2locend
.L11840:
	.d2locreg	%offsetof(.Llo157), %offsetof(.Llo152),30
	.d2locend
.L11846:
	.d2locreg	%offsetof(.Llo158), %offsetof(.Llo159),3
	.d2locend
.L11847:
	.d2locreg	%offsetof(.Llo158), %offsetof(.Llo159),4
	.d2locend
.L11853:
	.d2locreg	%offsetof(.Llo160), %offsetof(.Llo161),3
	.d2locend
.L11855:
	.d2locreg	%offsetof(.Llo162), %offsetof(.Llo163),4
	.d2locend
.L11861:
	.d2locreg	%offsetof(.Llo164), %offsetof(.Llo165),3
	.d2locreg	%offsetof(.Llo166), %offsetof(.Llo167),3
	.d2locreg	%offsetof(.Llo168), %offsetof(.Llo169),3
	.d2locreg	%offsetof(.Llo170), %offsetof(.Llo171),3
	.d2locend
.L11862:
	.d2locreg	%offsetof(.Llo164), %offsetof(.Llo166),4
	.d2locreg	%offsetof(.Llo167), %offsetof(.Llo172),31
	.d2locend
.L11863:
	.d2locreg	%offsetof(.Llo164), %offsetof(.Llo167),5
	.d2locreg	%offsetof(.Llo173), %offsetof(.Llo174),29
	.d2locreg	%offsetof(.Llo175), %offsetof(.Llo176),5
	.d2locend
.L11865:
	.d2locreg	%offsetof(.Llo177), %offsetof(.Llo172),30
	.d2locend
.L11871:
	.d2locreg	%offsetof(.Llo178), %offsetof(.Llo179),3
	.d2locend
.L11872:
	.d2locreg	%offsetof(.Llo178), %offsetof(.Llo180),4
	.d2locend
.L11873:
	.d2locreg	%offsetof(.Llo178), %offsetof(.Llo179),5
	.d2locend
.L11874:
	.d2locreg	%offsetof(.Llo178), %offsetof(.Llo180),6
	.d2locend
.L11880:
	.d2locreg	%offsetof(.Llo181), %offsetof(.Llo182),3
	.d2locreg	%offsetof(.Llo183), %offsetof(.Llo184),31
	.d2locend
.L11881:
	.d2locreg	%offsetof(.Llo181), %offsetof(.Llo183),4
	.d2locreg	%offsetof(.Llo185), %offsetof(.Llo184),30
	.d2locreg	%offsetof(.Llo186), %offsetof(.Llo187),4
	.d2locend
.L11884:
	.d2locreg	%offsetof(.Llo181), %offsetof(.Llo183),5
	.d2locreg	%offsetof(.Llo185), %offsetof(.Llo184),29
	.d2locreg	%offsetof(.Llo186), %offsetof(.Llo187),5
	.d2locend
.L11885:
	.d2locreg	%offsetof(.Llo181), %offsetof(.Llo183),6
	.d2locreg	%offsetof(.Llo185), %offsetof(.Llo184),28
	.d2locreg	%offsetof(.Llo186), %offsetof(.Llo187),6
	.d2locend
.L11887:
	.d2locreg	%offsetof(.Llo182), %offsetof(.Llo183),3
	.d2locreg	%offsetof(.Llo188), %offsetof(.Llo189),3
	.d2locreg	%offsetof(.Llo190), %offsetof(.Llo186),3
	.d2locend
.L11889:
	.d2locreg	%offsetof(.Llo191), %offsetof(.Llo184),27
	.d2locend
.L11891:
	.d2locreg	%offsetof(.Llo192), %offsetof(.Llo184),26
	.d2locend
.L11893:
	.d2locreg	%offsetof(.Llo181), %offsetof(.Llo184),26
	.d2locend
.L11899:
	.d2locreg	%offsetof(.Llo193), %offsetof(.Llo194),3
	.d2locreg	%offsetof(.Llo195), %offsetof(.Llo196),31
	.d2locend
.L11900:
	.d2locreg	%offsetof(.Llo193), %offsetof(.Llo197),4
	.d2locreg	%offsetof(.Llo198), %offsetof(.Llo199),30
	.d2locreg	%offsetof(.Llo200), %offsetof(.Llo201),30
	.d2locend
.L11901:
	.d2locreg	%offsetof(.Llo193), %offsetof(.Llo202),5
	.d2locreg	%offsetof(.Llo198), %offsetof(.Llo199),29
	.d2locreg	%offsetof(.Llo200), %offsetof(.Llo201),29
	.d2locend
.L11902:
	.d2locreg	%offsetof(.Llo193), %offsetof(.Llo202),6
	.d2locend
.L11904:
	.d2locreg	%offsetof(.Llo203), %offsetof(.Llo204),26
	.d2locend
.L11906:
	.d2locreg	%offsetof(.Llo202), %offsetof(.Llo205),3
	.d2locreg	%offsetof(.Llo198), %offsetof(.Llo199),28
	.d2locend
.L11908:
	.d2locreg	%offsetof(.Llo206), %offsetof(.Llo198),27
	.d2locreg	%offsetof(.Llo207), %offsetof(.Llo208),3
	.d2locreg	%offsetof(.Llo209), %offsetof(.Llo204),7
	.d2locreg	%offsetof(.Llo200), %offsetof(.Llo201),27
	.d2locend
.L11916:
	.d2locreg	%offsetof(.Llo210), %offsetof(.Llo211),3
	.d2locreg	%offsetof(.Llo212), %offsetof(.Llo213),5
	.d2locend
.L11922:
	.d2locreg	%offsetof(.Llo214), %offsetof(.Llo215),3
	.d2locend
.L11930:
	.d2locreg	%offsetof(.Llo216), %offsetof(.Llo217),3
	.d2locreg	%offsetof(.Llo218), %offsetof(.Llo219),0
	.d2locreg	%offsetof(.Llo220), %offsetof(.Llo221),0
	.d2locend
.L11936:
	.d2locreg	%offsetof(.Llo222), %offsetof(.Llo223),3
	.d2locreg	%offsetof(.Llo224), %offsetof(.Llo225),31
	.d2locend
.L11938:
	.d2locreg	%offsetof(.Llo226), %offsetof(.Llo227),3
	.d2locreg	%offsetof(.Llo228), %offsetof(.Llo229),3
	.d2locend
.L11944:
	.d2locreg	%offsetof(.Llo230), %offsetof(.Llo231),3
	.d2locreg	%offsetof(.Llo232), %offsetof(.Llo233),31
	.d2locend
.L11946:
	.d2locreg	%offsetof(.Llo234), %offsetof(.Llo235),3
	.d2locreg	%offsetof(.Llo236), %offsetof(.Llo237),3
	.d2locend
.L11955:
	.d2locreg	%offsetof(.Llo238), %offsetof(.Llo239),3
	.d2locreg	%offsetof(.Llo240), %offsetof(.Llo241),5
	.d2locreg	%offsetof(.Llo242), %offsetof(.Llo243),5
	.d2locreg	%offsetof(.Llo244), %offsetof(.Llo245),5
	.d2locend
.L11960:
	.d2locreg	%offsetof(.Llo238), %offsetof(.Llo241),4
	.d2locreg	%offsetof(.Llo246), %offsetof(.Llo247),4
	.d2locreg	%offsetof(.Llo244), %offsetof(.Llo245),4
	.d2locend
.L11962:
	.d2locreg	%offsetof(.Llo248), %offsetof(.Llo249),3
	.d2locreg	%offsetof(.Llo250), %offsetof(.Llo246),3
	.d2locreg	%offsetof(.Llo251), %offsetof(.Llo244),3
	.d2locreg	%offsetof(.Llo245), %offsetof(.Llo252),3
	.d2locend
.L11968:
	.d2locreg	%offsetof(.Llo253), %offsetof(.Llo254),3
	.d2locreg	%offsetof(.Llo255), %offsetof(.Llo256),7
	.d2locreg	%offsetof(.Llo257), %offsetof(.Llo258),7
	.d2locend
.L11969:
	.d2locreg	%offsetof(.Llo253), %offsetof(.Llo259),4
	.d2locreg	%offsetof(.Llo255), %offsetof(.Llo260),31
	.d2locreg	%offsetof(.Llo257), %offsetof(.Llo258),31
	.d2locend
.L11971:
	.d2locreg	%offsetof(.Llo261), %offsetof(.Llo262),3
	.d2locreg	%offsetof(.Llo263), %offsetof(.Llo257),3
	.d2locreg	%offsetof(.Llo258), %offsetof(.Llo264),3
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "Os_Counter_Err_Dyn"
	.wrcm.nstrlist "calls", "Os_Isr_GetState"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Os_Counter_Err_Stat"
	.wrcm.nstrlist "calls", "Os_Access_Check","Os_Counter_CheckId"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Os_CounterStopAndGetValue"
	.wrcm.nstrlist "calls", "Os_Timer_SuspendTickless"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Os_CounterGetValue"
	.wrcm.nstrlist "calls", "Os_Timer_UpdateTickless"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Os_Counter_CheckId"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Os_CounterRegisterIndication"
	.wrcm.nstrlist "calls", "Os_CounterAddAction","Os_CounterConstructAction","Os_CounterConstructEP","Os_CounterFindEP","Os_CounterInsertEP","Os_CounterRel2Abs","Os_Timer_RestartTickless","Os_Timer_ResumeTickless"
	.wrcm.nint32 "frameSize", 48
	.wrcm.end
	.wrcm.nelem "Os_CounterFindEP"
	.wrcm.nstrlist "calls", "Os_Timer_HasExpired"
	.wrcm.nint32 "frameSize", 48
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Os_CounterInsertEP"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Os_CounterConstructEP"
	.wrcm.nstrlist "calls", "Os_GetFreeEP","Os_ShutdownAllCores"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Os_GetFreeEP"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Os_CounterAddAction"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Os_CounterConstructAction"
	.wrcm.nstrlist "calls", "Os_GetFreeAction","Os_ShutdownAllCores"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Os_GetFreeAction"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Os_CounterRel2Abs"
	.wrcm.nstrlist "calls", "Os_CounterCalculateRelativeToAbsolute"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Os_CounterCancelIndication"
	.wrcm.nstrlist "calls", "Os_CounterDestructEP","Os_CounterRemoveAction","Os_CounterRemoveEP","Os_ShutdownAllCores"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Os_CounterIncrementTicks"
	.wrcm.nstrlist "calls", "Os_CounterExecuteCounterEPs"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Os_CounterExecuteAutoStartCounterEPs"
	.wrcm.nstrlist "calls", "Os_CounterExecuteCounterEPs"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Os_Counter_IncrementTicklessTicks"
	.wrcm.nstrlist "calls", "Os_CounterCalculateRelativeToAbsolute","Os_CounterExecuteCounterEPs"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Os_CounterExecuteCounterEPs"
	.wrcm.nstrlist "calls", "Os_CounterActivateEP"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Os_Counter_GetNextTicklessTicks"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Os_Counter_UpdateTicklessCounters"
	.wrcm.nstrlist "calls", "Os_CounterCalculateRelativeToAbsolute"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Os_CounterCalculateRelativeToAbsolute"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Os_CounterActivateEP"
	.wrcm.nstrlist "calls", "Os_CounterDestructEP","Os_CounterRemoveAction","Os_OwnerIndicateAction"
	.wrcm.nint32 "frameSize", 48
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Os_OwnerIndicateAction"
	.wrcm.nstrlist "calls", "Os_AlarmCounterIndication","Os_SchTblCounterIndication","Os_ShutdownAllCores"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Os_CounterKill"
	.wrcm.nstrlist "calls", "Os_CounterDestructEP","Os_CounterRemoveAction","Os_CounterRemoveEP"
	.wrcm.nint32 "frameSize", 48
	.wrcm.end
	.wrcm.nelem "Os_CounterDestructEP"
	.wrcm.nstrlist "calls", "Os_ReleaseEP"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Os_ReleaseEP"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Os_CounterRemoveEP"
	.wrcm.nstrlist "calls", "Os_ShutdownAllCores"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Os_CounterRemoveAction"
	.wrcm.nstrlist "calls", "Os_ShutdownAllCores"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Os_CounterInit"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Os_Counter.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Os_Counter.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Os_Counter.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Os_Counter.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Os_Counter.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Os_Counter.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\Os\Os\core\ssc\make\..\src\counter\Os_Counter.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
