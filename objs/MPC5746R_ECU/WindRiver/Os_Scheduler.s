#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Os_Scheduler.c"
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
# LOCAL_INLINE FUNC(P2CONST(Os_ProcStatType, AUTOMATIC, OS_CONST), OS_CODE) Os_SchedulerGetNextProc(
	.section	.Os_TEXT,,c
	.align		1
	.section	.debug_line.Os_TEXT,,n
	.sectionlink	.debug_line
.L11516:
	.section	.Os_TEXT,,c
#$$ld
.L11512:
	.0byte		.L11510
	.d2_line_start	.debug_line.Os_TEXT
	.section	.Os_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_Scheduler.h"
        .d2line         132,75
#$$ld
.L11519:

#$$bf	Os_SchedulerGetNextProc,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,cr0,lr
	.d2_cfa_start __cie
Os_SchedulerGetNextProc:
.Llo1:
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
.Llo3:
	mr		r5,r5		# queueElement=r5 queueElement=r5
.L11348:
	lwz		r0,44(r3)		# coreSchedulerDyn=r3
	se_cmpl		r0,r5		# queueElement=r5
	bc		1,2,.L11352	# eq
#         queueElement != coreSchedulerDyn->Os_SchedulerTailPivot.Os_QueueBackElement;
#         queueElement = queueElement->Os_QueueBackElement  )
#     {
#         if(queueElement->Os_QueueProc->Os_ProcDyn->Os_ProcEnabled == (uint8)0U)
	.d2line		141
	lwz		r4,0(r5)		# queueElement=r5
	lwz		r4,8(r4)
	lbz		r0,32(r4)
	se_cmpi		r0,0
	bc		1,2,.L11352	# eq
#         {
#             break;
#         }
#     }
	.d2line		145
	lwz		r5,8(r5)		# queueElement=r5 queueElement=r5
	mr		r5,r5		# queueElement=r5 queueElement=r5
	b		.L11348
.L11352:
# 
#     return queueElement->Os_QueueProc;
	.d2line		147
.Llo2:
	lwz		r3,0(r5)		# coreSchedulerDyn=r3 queueElement=r5
# }
	.d2line		148
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo4:
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11520:
	.type		Os_SchedulerGetNextProc,@function
	.size		Os_SchedulerGetNextProc,.-Os_SchedulerGetNextProc
# Number of nodes = 33

# Allocations for Os_SchedulerGetNextProc
#	?a4		coreSchedulerDyn
#	?a5		queueElement
# LOCAL_INLINE FUNC (void, OS_CODE) Os_SchedulerRemoveProc ( CONSTP2CONST (Os_ProcStatType,        AUTOMATIC, OS_CONST) proc,
	.align		1
	.section	.Os_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\scheduler\\Os_Scheduler.c"
        .d2line         56,35
#$$ld
.L11539:

#$$bf	Os_SchedulerRemoveProc,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r8,r9,r28,r29,r30,r31,cr0,lr
	.d2_cfa_start __cie
Os_SchedulerRemoveProc:
.Llo5:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
.Llo7:
	stmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,36(r1)		# coreID=r0
	.d2_cfa_offset    108,-1
	mr		r3,r3		# proc=r3 proc=r3
	mr		r4,r4		# prio=r4 prio=r4
	mr		r5,r5		# activations=r5 activations=r5
	.d2prologue_end
#                                                            CONST        (Os_PriorityType,        AUTOMATIC)           prio,
#                                                            CONSTP2VAR   (Os_ActivationCountType, AUTOMATIC, OS_CONST) activations )
# {
#   #ifdef OS_MODULE_MULTICORE
#     CONST(CoreIdType,AUTOMATIC) coreID = proc->Os_ProcCoreID;
	.d2line		61
	lhz		r0,4(r3)		# coreID=r0 proc=r3
	mr		r0,r0		# coreID=r0 coreID=r0
#   #else
#     CONST(CoreIdType,AUTOMATIC) coreID = OS_GETCOREID ();
#   #endif
#     VAR(ProcType, AUTOMATIC) elements;
#     P2VAR (struct Os_SchedulerQueueElementType_s, TYPEDEF, OS_VAR) queueElement =
	.d2line		66
	lis		r6,(Os_SchedulerQueueStruct+28)@ha		# elements=r6
.Llo8:
	e_add16i		r6,r6,(Os_SchedulerQueueStruct+28)@l		# elements=r6 elements=r6
	rlwinm		r28,r0,5,11,26		# coreID=r0
	lwzx		r6,r6,r28		# elements=r6 elements=r6
	e_mulli		r31,r4,12		# prio=r4
	se_add		r6,r31		# elements=r6 elements=r6
	lwz		r7,4(r6)		# elements=r6
.Llo9:
	mr		r7,r7		# queueElement=r7 queueElement=r7
#             Os_GetCoreSchedulerStruct(coreID)->Os_SchedulerQueues[prio].Os_QueueHead;
# 
#     for(elements = (ProcType)0U;
	.d2line		69
	diab.li		r6,0		# elements=r6
.L11357:
	lis		r8,(Os_SchedulerQueueStruct+28)@ha
	e_add16i		r8,r8,(Os_SchedulerQueueStruct+28)@l
	rlwinm		r28,r0,5,11,26		# coreID=r0
	lwzx		r8,r8,r28
	e_mulli		r31,r4,12		# prio=r4
	lwzx		r31,r8,r31
	se_cmpl		r31,r6		# elements=r6
	bc		0,1,.L11356	# le
#         elements < Os_GetCoreSchedulerStruct(coreID)->Os_SchedulerQueues[prio].Os_QueueElements;
#         elements++)
#     {
#         if(queueElement->Os_QueueProc == proc)
	.d2line		73
	lwz		r31,0(r7)		# queueElement=r7
	se_cmpl		r31,r3		# proc=r3
	bc		0,2,.L11360	# ne
#         {
#             /* Unchain the queue element from the chain. */
#             queueElement->Os_QueueFrontElement->Os_QueueBackElement = queueElement->Os_QueueBackElement;
	.d2line		76
	lwz		r30,8(r7)		# queueElement=r7
	lwz		r31,4(r7)		# queueElement=r7
	stw		r30,8(r31)
#             queueElement->Os_QueueBackElement->Os_QueueFrontElement = queueElement->Os_QueueFrontElement;
	.d2line		77
	lwz		r30,4(r7)		# queueElement=r7
	lwz		r31,8(r7)		# queueElement=r7
	stw		r30,4(r31)
# 
#             /* Update the queue itself. */
#             Os_GetCoreSchedulerStruct(coreID)->Os_SchedulerQueues[prio].Os_QueueElements--;
	.d2line		80
	lis		r9,(Os_SchedulerQueueStruct+28)@ha
	e_add16i		r9,r9,(Os_SchedulerQueueStruct+28)@l
	rlwinm		r28,r0,5,11,26		# coreID=r0
	lwzux		r8,r9,r28
	e_mulli		r29,r4,12		# prio=r4
	lwzx		r31,r8,r29
	diab.addi		r31,r31,-1
	stwx		r31,r8,r29
#             if(Os_GetCoreSchedulerStruct(coreID)->Os_SchedulerQueues[prio].Os_QueueElements == 0)
	.d2line		81
	lis		r8,(Os_SchedulerQueueStruct+28)@ha
	e_add16i		r8,r8,(Os_SchedulerQueueStruct+28)@l
	lwzx		r8,r8,r28
	lwzx		r31,r8,r29
	se_cmpi		r31,0
	bc		0,2,.L11361	# ne
#             {
#               #ifdef OS_CONFIG_INTERNAL_VALIDATIONS
#                 Os_GetCoreSchedulerStruct(coreID)->Os_SchedulerQueues[prio].Os_QueueHead = NULL_PTR;
	.d2line		84
	diab.li		r31,0
	lis		r8,(Os_SchedulerQueueStruct+28)@ha
	e_add16i		r8,r8,(Os_SchedulerQueueStruct+28)@l
	rlwinm		r28,r0,5,11,26		# coreID=r0
	lwzux		r30,r8,r28
	e_mulli		r29,r4,12		# prio=r4
	se_add		r30,r29
	stw		r31,4(r30)
#                 Os_GetCoreSchedulerStruct(coreID)->Os_SchedulerQueues[prio].Os_QueueTail = NULL_PTR;
	.d2line		85
	lis		r8,(Os_SchedulerQueueStruct+28)@ha
	e_add16i		r8,r8,(Os_SchedulerQueueStruct+28)@l
	lwzx		r30,r8,r28
	se_add		r29,r30
	stw		r31,8(r29)
	b		.L11362
.L11361:
#               #endif
#             }
#             else
#             {
#                 if( Os_GetCoreSchedulerStruct(coreID)->Os_SchedulerQueues[prio].Os_QueueHead ==
	.d2line		90
	lis		r8,(Os_SchedulerQueueStruct+28)@ha
	e_add16i		r8,r8,(Os_SchedulerQueueStruct+28)@l
	rlwinm		r28,r0,5,11,26		# coreID=r0
	lwzx		r31,r8,r28
	e_mulli		r29,r4,12		# prio=r4
	se_add		r31,r29
	lwz		r31,4(r31)
	se_cmpl		r31,r7		# queueElement=r7
	bc		0,2,.L11363	# ne
#                                                                         queueElement )
#                 {
#                     Os_GetCoreSchedulerStruct(coreID)->Os_SchedulerQueues[prio].Os_QueueHead =
	.d2line		93
	lwz		r31,8(r7)		# queueElement=r7
	lis		r8,(Os_SchedulerQueueStruct+28)@ha
	e_add16i		r8,r8,(Os_SchedulerQueueStruct+28)@l
	rlwinm		r28,r0,5,11,26		# coreID=r0
	lwzx		r30,r8,r28
	e_mulli		r29,r4,12		# prio=r4
	se_add		r30,r29
	stw		r31,4(r30)
	b		.L11362
.L11363:
#                                                                         queueElement->Os_QueueBackElement;
#                 }
#                 else if( Os_GetCoreSchedulerStruct(coreID)->Os_SchedulerQueues[prio].Os_QueueTail ==
	.d2line		96
	lis		r8,(Os_SchedulerQueueStruct+28)@ha
	e_add16i		r8,r8,(Os_SchedulerQueueStruct+28)@l
	rlwinm		r28,r0,5,11,26		# coreID=r0
	lwzx		r31,r8,r28
	e_mulli		r29,r4,12		# prio=r4
	se_add		r31,r29
	lwz		r31,8(r31)
	se_cmpl		r31,r7		# queueElement=r7
	bc		0,2,.L11362	# ne
#                                                                         queueElement )
#                 {
#                     Os_GetCoreSchedulerStruct(coreID)->Os_SchedulerQueues[prio].Os_QueueTail =
	.d2line		99
	lwz		r30,4(r7)		# queueElement=r7
	lis		r8,(Os_SchedulerQueueStruct+28)@ha
	e_add16i		r8,r8,(Os_SchedulerQueueStruct+28)@l
	rlwinm		r28,r0,5,11,26		# coreID=r0
	lwzx		r29,r8,r28
	e_mulli		r31,r4,12		# prio=r4
	se_add		r31,r29
	stw		r30,8(r31)
.L11362:
#                                                                         queueElement->Os_QueueFrontElement;
#                 }
#                 else
#                 {
#                     /* Queue element is neither head nor tail in the current queue. */
#                 }
#             }
# 
#             (*activations)++;
	.d2line		108
	lwz		r30,0(r5)		# activations=r5
	se_addi		r30,1
	stw		r30,0(r5)		# activations=r5
#             if((*activations) >= proc->Os_ProcDyn->Os_ProcActivations) {
	.d2line		109
	lwz		r31,8(r3)		# proc=r3
	lwz		r31,24(r31)
	se_cmpl		r30,r31
	bc		0,0,.L11356	# ge
.L11360:
#                 return;
#             }
#         }
# 
#         /* Advance pointer */
#         queueElement = queueElement->Os_QueueBackElement;
	.d2line		115
	lwz		r7,8(r7)		# queueElement=r7 queueElement=r7
	mr		r7,r7		# queueElement=r7 queueElement=r7
#     }
	.d2line		116
	diab.addi		r31,r6,1		# elements=r6
	se_addi		r6,1		# elements=r6 elements=r6
	b		.L11357
.L11356:
# }
	.d2line		117
	.d2epilogue_begin
.Llo6:
	lmw		r28,16(r1)		# offset r1+16  0x10
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
.L11540:
	.type		Os_SchedulerRemoveProc,@function
	.size		Os_SchedulerRemoveProc,.-Os_SchedulerRemoveProc
# Number of nodes = 250

# Allocations for Os_SchedulerRemoveProc
#	?a4		proc
#	?a5		prio
#	?a6		activations
#	?a7		$$2352
#	?a8		coreID
#	?a9		elements
#	?a10		queueElement
# FUNC(void,OS_CODE) Os_SchedulerUnScheduleProc(CONSTP2CONST(Os_ProcStatType,AUTOMATIC,OS_CONST) proc)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         119,20
#$$ld
.L11568:

#$$bf	Os_SchedulerUnScheduleProc,interprocedural,rasave,nostackparams
	.globl		Os_SchedulerUnScheduleProc
	.d2_cfa_start __cie
Os_SchedulerUnScheduleProc:
.Llo10:
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
#     VAR(Os_ActivationCountType, AUTOMATIC) activations = (Os_ActivationCountType)0U;
	.d2line		121
.Llo11:
	diab.li		r0,0
.Llo12:
	stw		r0,8(r1)
# 
#     /* Remove process from the queue of its normal priority (all instances). */
#     Os_SchedulerRemoveProc(proc, proc->Os_ProcPriority, &activations);
	.d2line		124
	lwz		r4,32(r31)		# proc=r31
	diab.addi		r5,r1,8
	mr		r3,r31		# proc=r3 proc=r31
	bl		Os_SchedulerRemoveProc
# 
#     if(activations < proc->Os_ProcDyn->Os_ProcActivations) {
	.d2line		126
	lwz		r3,8(r31)		# proc=r3 proc=r31
	lwz		r0,24(r3)		# proc=r3
	lwz		r3,8(r1)		# proc=r3
	se_cmpl		r0,r3		# proc=r3
	bc		0,1,.L11375	# le
#         /* Remove process from the queue of its current priority (one removal at maximum). */
#         Os_SchedulerRemoveProc(proc, proc->Os_ProcDyn->Os_ProcCurrentPriority, &activations);
	.d2line		128
	lwz		r3,8(r31)		# proc=r3 proc=r31
	lwz		r4,48(r3)		# proc=r3
	diab.addi		r5,r1,8
	mr		r3,r31		# proc=r3 proc=r31
	bl		Os_SchedulerRemoveProc
.L11375:
#     }
# 
#     OS_ASSERT(activations == proc->Os_ProcDyn->Os_ProcActivations, E_OS_SYS_SCHEDULER_ERROR);
	.d2line		131
	lwz		r3,8(r31)		# proc=r3 proc=r31
	lwz		r0,24(r3)		# proc=r3
	lwz		r3,8(r1)		# proc=r3
	se_cmpl		r0,r3		# proc=r3
	bc		1,2,.L11374	# eq
.Llo13:
	diab.li		r4,42
	lis		r3,(Os_Core_DynShared+12)@ha		# proc=r3
.Llo14:
	e_add16i		r3,r3,(Os_Core_DynShared+12)@l		# proc=r3 proc=r3
	mfspr		r0,286
	rlwinm		r0,r0,0,16,31
	e_mulli		r0,r0,152
	stwx		r4,r3,r0		# proc=r3
	diab.li		r3,30		# proc=r3
.Llo15:
	bl		Os_ShutdownAllCores
.L11374:
# }
	.d2line		132
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
.L11569:
	.type		Os_SchedulerUnScheduleProc,@function
	.size		Os_SchedulerUnScheduleProc,.-Os_SchedulerUnScheduleProc
# Number of nodes = 68

# Allocations for Os_SchedulerUnScheduleProc
#	?a4		proc
#	SP,8		activations
# LOCAL_INLINE FUNC(void,OS_CODE) Os_SchedulerQueuePushBack(VAR(Os_PriorityType,AUTOMATIC)  queueId,
	.align		1
	.section	.Os_TEXT,,c
        .d2line         349,33
#$$ld
.L11575:

#$$bf	Os_SchedulerQueuePushBack,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Os_SchedulerQueuePushBack:
.Llo16:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# queueId=r3 queueId=r3
	mr		r4,r4		# queueElement=r4 queueElement=r4
	mr		r6,r5		# coreID=r6 coreID=r5
	.d2prologue_end
#                                    P2VAR(Os_SchedulerQueueElementType,AUTOMATIC,OS_VAR)   queueElement,
#                                    CONST(CoreIdType,AUTOMATIC) coreID)
# {
#   #ifdef OS_CONFIG_INTERNAL_VALIDATIONS
#     if(queueId >= Os_GetCoreSchedulerStruct(coreID)->Os_SchedulerQueueCount)
	.d2line		354
.Llo28:
	lis		r5,(Os_SchedulerQueueStruct+24)@ha
.Llo29:
	e_add16i		r5,r5,(Os_SchedulerQueueStruct+24)@l
	rlwinm		r0,r6,5,11,26		# coreID=r6
	lwzx		r0,r5,r0
	se_cmpl		r0,r3		# queueId=r3
	bc		1,1,.L11462	# gt
#     {
#         OS_FATAL_ERROR(E_OS_SYS_SCHEDULER_ERROR);
	.d2line		356
.Llo17:
	diab.li		r4,42
	lis		r3,(Os_Core_DynShared+12)@ha		# queueId=r3
.Llo18:
	e_add16i		r3,r3,(Os_Core_DynShared+12)@l		# queueId=r3 queueId=r3
	mfspr		r0,286
	rlwinm		r0,r0,0,16,31
	e_mulli		r0,r0,152
	stwx		r4,r3,r0		# queueId=r3
	diab.li		r3,30		# queueId=r3
.Llo19:
	bl		Os_ShutdownAllCores
	b		.L11461
.L11462:
	.section	.Os_TEXT,,c
.L11583:
#     }
#     else
#   #endif /* OS_CONFIG_INTERNAL_VALIDATIONS */
#     {
#         CONSTP2CONST(Os_SchedulerQueueStructureType,AUTOMATIC,OS_CONST) coreSchedulerStruct =
	.d2line		361
.Llo22:
	lis		r5,Os_SchedulerQueueStruct@ha		# coreSchedulerStruct=r5
.Llo32:
	e_add16i		r5,r5,Os_SchedulerQueueStruct@l		# coreSchedulerStruct=r5 coreSchedulerStruct=r5
.Llo30:
	rlwinm		r6,r6,5,11,26		# coreID=r6 coreID=r6
	se_add		r5,r6		# coreSchedulerStruct=r5 coreSchedulerStruct=r5 coreID=r6
	mr		r5,r5		# coreSchedulerStruct=r5 coreSchedulerStruct=r5
#                                                                                     Os_GetCoreSchedulerStruct(coreID);
#         P2VAR(Os_SchedulerQueueType,AUTOMATIC,OS_VAR) queue = &coreSchedulerStruct->Os_SchedulerQueues[queueId];
	.d2line		363
	lwz		r0,28(r5)		# coreSchedulerStruct=r5
.Llo20:
	e_mulli		r3,r3,12		# queueId=r3 queueId=r3
	se_add		r0,r3		# queueId=r3
.Llo38:
	mr		r3,r0		# queue=r3 queue=r0
#         if(0U == queue->Os_QueueElements) /* No element in the Queue */
	.d2line		364
.Llo21:
	lwz		r0,0(r3)		# queue=r3
.Llo39:
	se_cmpi		r0,0
	bc		0,2,.L11465	# ne
	.section	.Os_TEXT,,c
.L11599:
#         {
#             P2VAR(Os_SchedulerQueueType,AUTOMATIC,OS_VAR) queueBack;
#             CONSTP2CONST(Os_SchedulerQueueType,AUTOMATIC,OS_VAR) secondQueue =
	.d2line		367
.Llo31:
	lwz		r5,28(r5)		# coreSchedulerStruct=r5 coreSchedulerStruct=r5
	addi		r0,r5,12		# coreSchedulerStruct=r5
#                                                                         &coreSchedulerStruct->Os_SchedulerQueues[1U];
# 
#             /* get the next not empty queue */
#             /* pointer arithmetic for performance */
#             /* We iterate only until the second instead of the first queue, because
#              * if the second is empty too, we will add our element to the first
#              * anyway (no matter if the first is empty or not). Also, this way
#              * the loop will be left with queueBack pointing to the first
#              * if no other non-empty queue has been found.
#              */
#              /* We are iterating over elements of an array. Pointer arithmetic is expected here. */
#             for (queueBack = queue; queueBack >= secondQueue; --queueBack)
	.d2line		379
.Llo41:
	mr		r6,r3		# queueBack=r6 queueBack=r3
.L11466:
.Llo33:
	se_cmpl		r6,r0		# queueBack=r6 secondQueue=r0
.Llo40:
	bc		1,0,.L11470	# lt
#             {
#                 if(queueBack->Os_QueueElements > 0)
	.d2line		381
	lwz		r5,0(r6)		# coreSchedulerStruct=r5 queueBack=r6
.Llo34:
	se_cmpi		r5,0		# coreSchedulerStruct=r5
	bc		0,2,.L11470	# ne
#                 {
#                     break;
#                 }
#             }
	.d2line		385
.Llo35:
	diab.addi		r6,r6,-12		# queueBack=r6 queueBack=r6
	b		.L11466
.L11470:
# 
#             queueElement->Os_QueueFrontElement = queueBack->Os_QueueHead->Os_QueueFrontElement;
	.d2line		387
.Llo42:
	lwz		r5,4(r6)		# coreSchedulerStruct=r5 queueBack=r6
.Llo36:
	lwz		r0,4(r5)		# secondQueue=r0 coreSchedulerStruct=r5
.Llo43:
	stw		r0,4(r4)		# queueElement=r4 secondQueue=r0
#             queueElement->Os_QueueBackElement  = queueBack->Os_QueueHead;
	.d2line		388
	lwz		r5,4(r6)		# coreSchedulerStruct=r5 queueBack=r6
	stw		r5,8(r4)		# queueElement=r4 coreSchedulerStruct=r5
#             queueElement->Os_QueueBackElement->Os_QueueFrontElement = queueElement;
	.d2line		389
	stw		r4,4(r5)		# coreSchedulerStruct=r5 queueElement=r4
#             queueElement->Os_QueueFrontElement->Os_QueueBackElement = queueElement;
	.d2line		390
	lwz		r5,4(r4)		# coreSchedulerStruct=r5 queueElement=r4
	stw		r4,8(r5)		# coreSchedulerStruct=r5 queueElement=r4
# 
#             queue->Os_QueueHead = queueElement;
	.d2line		392
	stw		r4,4(r3)		# queue=r3 queueElement=r4
#             queue->Os_QueueTail = queueElement;
	.d2line		393
	stw		r4,8(r3)		# queue=r3 queueElement=r4
	.section	.Os_TEXT,,c
.L11600:
.Llo23:
	b		.L11471
.L11465:
#         }
#         else
#         {
#             queueElement->Os_QueueFrontElement = queue->Os_QueueTail;
	.d2line		397
.Llo24:
	lwz		r0,8(r3)		# queue=r3
	stw		r0,4(r4)		# queueElement=r4
#             queueElement->Os_QueueBackElement  = queue->Os_QueueTail->Os_QueueBackElement;
	.d2line		398
	lwz		r5,8(r3)		# coreSchedulerStruct=r5 queue=r3
.Llo37:
	lwz		r0,8(r5)		# coreSchedulerStruct=r5
	stw		r0,8(r4)		# queueElement=r4
# 
#             queue->Os_QueueTail->Os_QueueBackElement->Os_QueueFrontElement = queueElement;
	.d2line		400
	lwz		r5,8(r3)		# coreSchedulerStruct=r5 queue=r3
	lwz		r5,8(r5)		# coreSchedulerStruct=r5 coreSchedulerStruct=r5
	stw		r4,4(r5)		# coreSchedulerStruct=r5 queueElement=r4
#             queue->Os_QueueTail->Os_QueueBackElement = queueElement;
	.d2line		401
	lwz		r5,8(r3)		# coreSchedulerStruct=r5 queue=r3
	stw		r4,8(r5)		# coreSchedulerStruct=r5 queueElement=r4
# 
#             queue->Os_QueueTail = queueElement;
	.d2line		403
	stw		r4,8(r3)		# queue=r3 queueElement=r4
.L11471:
# 
#         }
#         queue->Os_QueueElements++;
	.d2line		406
.Llo25:
	lwz		r4,0(r3)		# queueElement=r4 queue=r3
.Llo26:
	se_addi		r4,1		# queueElement=r4 queueElement=r4
	stw		r4,0(r3)		# queue=r3 queueElement=r4
	.section	.Os_TEXT,,c
.L11584:
.L11461:
#     }
# }
	.d2line		408
	.d2epilogue_begin
.Llo27:
	lwz		r0,20(r1)		# secondQueue=r0
	mtspr		lr,r0		# secondQueue=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11576:
	.type		Os_SchedulerQueuePushBack,@function
	.size		Os_SchedulerQueuePushBack,.-Os_SchedulerQueuePushBack
# Number of nodes = 180

# Allocations for Os_SchedulerQueuePushBack
#	?a4		queueId
#	?a5		queueElement
#	?a6		coreID
#	?a7		coreSchedulerStruct
#	?a8		queue
#	?a9		queueBack
#	?a10		secondQueue
# FUNC(void,OS_CODE) Os_SchedulerStartProc(CONSTP2CONST(Os_ProcStatType,AUTOMATIC,OS_CONST) proc)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         136,20
#$$ld
.L11612:

#$$bf	Os_SchedulerStartProc,interprocedural,rasave,nostackparams
	.globl		Os_SchedulerStartProc
	.d2_cfa_start __cie
Os_SchedulerStartProc:
.Llo44:
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
#     /* after the error conditions are checked */
#     P2VAR(Os_SchedulerQueueElementType,AUTOMATIC,OS_VAR) TempElement;
# #ifdef OS_MODULE_MULTICORE
#     CONST(CoreIdType,AUTOMATIC) coreID = proc->Os_ProcCoreID;
	.d2line		141
	lhz		r29,4(r31)		# proc=r31
.Llo52:
	mr		r29,r29		# coreID=r29 coreID=r29
# #else
#     CONST(CoreIdType,AUTOMATIC) coreID = OS_CORE_ID_MASTER;
# #endif /* OS_MODULE_MULTICORE */
#     if( proc->Os_ProcMaxActivations > 1 )
	.d2line		145
	lwz		r0,40(r31)		# proc=r31
	se_cmpli	r0,1
	bc		0,1,.L11384	# le
#     {
#         TempElement =  proc->Os_ProcDyn->Os_ProcFreeQueueElements;
	.d2line		147
.Llo45:
	lwz		r3,8(r31)		# proc=r31
.Llo46:
	lwz		r0,44(r3)
	.d2line		148
	mr.		r30,r0		# TempElement=?a5 TempElement=?a8
#         OS_ASSERT(TempElement != NULL_PTR, E_OS_SYS_QUEUEELEMENT_OVERFLOW);
.Llo48:
	bc		0,2,.L11387	# ne
	diab.li		r4,41
	lis		r3,(Os_Core_DynShared+12)@ha
	e_add16i		r3,r3,(Os_Core_DynShared+12)@l
	mfspr		r0,286
	rlwinm		r0,r0,0,16,31
	e_mulli		r0,r0,152
	stwx		r4,r3,r0
	diab.li		r3,30
	bl		Os_ShutdownAllCores
.L11387:
#         proc->Os_ProcDyn->Os_ProcFreeQueueElements = TempElement->Os_QueueBackElement;
	.d2line		149
	lwz		r0,8(r30)		# TempElement=r30
	lwz		r3,8(r31)		# proc=r31
	stw		r0,44(r3)
	b		.L11390
.L11384:
#     }
#     else
#     {
#         /* always the same element returned */
#         TempElement = &proc->Os_ProcQueueElements[0];
	.d2line		154
.Llo49:
	lwz		r30,72(r31)		# proc=r31
.Llo50:
	mr		r30,r30		# TempElement=r30 TempElement=r30
.L11390:
#     }
# 
#     OS_ASSERT(TempElement != NULL_PTR, E_OS_SYS_QUEUEELEMENT_OVERFLOW);
	.d2line		157
	se_cmpi		r30,0		# TempElement=r30
	bc		0,2,.L11393	# ne
	diab.li		r4,41
	lis		r3,(Os_Core_DynShared+12)@ha
	e_add16i		r3,r3,(Os_Core_DynShared+12)@l
	mfspr		r0,286
	rlwinm		r0,r0,0,16,31
	e_mulli		r0,r0,152
	stwx		r4,r3,r0
	diab.li		r3,30
	bl		Os_ShutdownAllCores
.L11393:
# 
# #ifdef OS_CONFIG_INTERNAL_VALIDATIONS
#     if( proc->Os_ProcPriority >= (Os_PriorityType)Os_GetCoreSchedulerStruct(coreID)->Os_SchedulerQueueCount )
	.d2line		160
	lwz		r0,32(r31)		# proc=r31
	lis		r3,(Os_SchedulerQueueStruct+24)@ha
	e_add16i		r3,r3,(Os_SchedulerQueueStruct+24)@l
	rlwinm		r5,r29,5,11,26		# coreID=r29
	lwzx		r3,r3,r5
	se_cmpl		r0,r3
	bc		1,0,.L11396	# lt
#     {
#         OS_FATAL_ERROR(E_OS_SYS_SCHEDULER_ERROR);
	.d2line		162
	diab.li		r4,42
	lis		r3,(Os_Core_DynShared+12)@ha
	e_add16i		r3,r3,(Os_Core_DynShared+12)@l
	mfspr		r0,286
	rlwinm		r0,r0,0,16,31
	e_mulli		r0,r0,152
	stwx		r4,r3,r0
	diab.li		r3,30
	bl		Os_ShutdownAllCores
	b		.L11383
.L11396:
#     }
#     else
# #endif
#     {
#         /* [OS001-266.v1] [OS001-268.v1] */
#         Os_SchedulerQueuePushBack(proc->Os_ProcPriority, TempElement, coreID);
	.d2line		168
	lwz		r3,32(r31)		# proc=r31
	mr		r4,r30		# TempElement=r4 TempElement=r30
	mr		r5,r29		# coreID=r5 coreID=r29
	bl		Os_SchedulerQueuePushBack
#         /* The priority should not be changed if an instance of the process is already running */
#         if( proc->Os_ProcDyn->Os_ProcState != RUNNING )
	.d2line		170
	lwz		r3,8(r31)		# proc=r31
	lwz		r0,0(r3)
	se_cmpi		r0,0
	bc		1,2,.L11383	# eq
#         {
#             proc->Os_ProcDyn->Os_ProcCurrentPriority = proc->Os_ProcPriority;
	.d2line		172
.Llo51:
	lwz		r0,32(r31)		# proc=r31
	lwz		r3,8(r31)		# proc=r31
	stw		r0,48(r3)
.L11383:
#         }
#     }
# }
	.d2line		175
	.d2epilogue_begin
.Llo47:
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
.L11613:
	.type		Os_SchedulerStartProc,@function
	.size		Os_SchedulerStartProc,.-Os_SchedulerStartProc
# Number of nodes = 153

# Allocations for Os_SchedulerStartProc
#	?a4		proc
#	?a5		TempElement
#	?a6		coreID
# LOCAL_INLINE FUNC(void,OS_CODE) Os_SchedulerQueuePushFront(VAR(Os_PriorityType,AUTOMATIC)  queueId,
	.align		1
	.section	.Os_TEXT,,c
        .d2line         411,33
#$$ld
.L11622:

#$$bf	Os_SchedulerQueuePushFront,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Os_SchedulerQueuePushFront:
.Llo53:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# queueId=r3 queueId=r3
	mr		r4,r4		# queueElement=r4 queueElement=r4
	mr		r6,r5		# coreID=r6 coreID=r5
	.d2prologue_end
#                                     P2VAR(Os_SchedulerQueueElementType,AUTOMATIC,OS_VAR)   queueElement,
#                                     CONST(CoreIdType,AUTOMATIC) coreID)
# {
#   #ifdef OS_CONFIG_INTERNAL_VALIDATIONS
#     if(queueId >= Os_GetCoreSchedulerStruct(coreID)->Os_SchedulerQueueCount)
	.d2line		416
.Llo65:
	lis		r5,(Os_SchedulerQueueStruct+24)@ha
.Llo66:
	e_add16i		r5,r5,(Os_SchedulerQueueStruct+24)@l
	rlwinm		r0,r6,5,11,26		# coreID=r6
	lwzx		r0,r5,r0
	se_cmpl		r0,r3		# queueId=r3
	bc		1,1,.L11479	# gt
#     {
#         OS_FATAL_ERROR(E_OS_SYS_SCHEDULER_ERROR);
	.d2line		418
.Llo54:
	diab.li		r4,42
	lis		r3,(Os_Core_DynShared+12)@ha		# queueId=r3
.Llo55:
	e_add16i		r3,r3,(Os_Core_DynShared+12)@l		# queueId=r3 queueId=r3
	mfspr		r0,286
	rlwinm		r0,r0,0,16,31
	e_mulli		r0,r0,152
	stwx		r4,r3,r0		# queueId=r3
	diab.li		r3,30		# queueId=r3
.Llo56:
	bl		Os_ShutdownAllCores
	b		.L11478
.L11479:
	.section	.Os_TEXT,,c
.L11628:
#     }else
#   #endif /* OS_CONFIG_INTERNAL_VALIDATIONS */
#     {
#         CONSTP2CONST (Os_SchedulerQueueStructureType, AUTOMATIC, OS_CONST) coreSchedulerStruct =
	.d2line		422
.Llo59:
	lis		r5,Os_SchedulerQueueStruct@ha		# coreSchedulerStruct=r5
.Llo69:
	e_add16i		r5,r5,Os_SchedulerQueueStruct@l		# coreSchedulerStruct=r5 coreSchedulerStruct=r5
.Llo67:
	rlwinm		r6,r6,5,11,26		# coreID=r6 coreID=r6
	se_add		r5,r6		# coreSchedulerStruct=r5 coreSchedulerStruct=r5 coreID=r6
	mr		r5,r5		# coreSchedulerStruct=r5 coreSchedulerStruct=r5
#                                                                                     Os_GetCoreSchedulerStruct(coreID);
#         P2VAR(Os_SchedulerQueueType,AUTOMATIC,OS_VAR) queue = &coreSchedulerStruct->Os_SchedulerQueues[queueId];
	.d2line		424
	lwz		r0,28(r5)		# coreSchedulerStruct=r5
.Llo57:
	e_mulli		r3,r3,12		# queueId=r3 queueId=r3
	se_add		r0,r3		# queueId=r3
.Llo75:
	mr		r3,r0		# queue=r3 queue=r0
#         if(0U == queue->Os_QueueElements) /* No element in the Queue */
	.d2line		425
.Llo58:
	lwz		r0,0(r3)		# queue=r3
.Llo76:
	se_cmpi		r0,0
	bc		0,2,.L11482	# ne
	.section	.Os_TEXT,,c
.L11636:
#         {
#             P2VAR        (Os_SchedulerQueueType, AUTOMATIC, OS_VAR) queueBack;
#             CONSTP2CONST (Os_SchedulerQueueType, AUTOMATIC, OS_VAR) secondQueue =
	.d2line		428
.Llo68:
	lwz		r5,28(r5)		# coreSchedulerStruct=r5 coreSchedulerStruct=r5
	addi		r0,r5,12		# coreSchedulerStruct=r5
#                                                                         &coreSchedulerStruct->Os_SchedulerQueues[1U];
# 
#             /* get the next not empty queue */
#             /* pointer arithmetic for performance */
#             /* We iterate only until the second instead of the first queue, because
#              * if the second is empty too, we will add our element to the first
#              * anyway (no matter if the first is empty or not). Also, this way
#              * the loop will be left with queueBack pointing to the first
#              * if no other non-empty queue has been found.
#              */
#              /* We are iterating over elements of an array. Pointer arithmetic is expected here. */
#             for (queueBack = queue; queueBack >= secondQueue; --queueBack)
	.d2line		440
.Llo78:
	mr		r6,r3		# queueBack=r6 queueBack=r3
.L11483:
.Llo70:
	se_cmpl		r6,r0		# queueBack=r6 secondQueue=r0
.Llo77:
	bc		1,0,.L11487	# lt
#             {
#                 if(queueBack->Os_QueueElements > 0)
	.d2line		442
	lwz		r5,0(r6)		# coreSchedulerStruct=r5 queueBack=r6
.Llo71:
	se_cmpi		r5,0		# coreSchedulerStruct=r5
	bc		0,2,.L11487	# ne
#                 {
#                     break;
#                 }
#             }
	.d2line		446
.Llo72:
	diab.addi		r6,r6,-12		# queueBack=r6 queueBack=r6
	b		.L11483
.L11487:
# 
#             queueElement->Os_QueueFrontElement = queueBack->Os_QueueHead->Os_QueueFrontElement;
	.d2line		448
.Llo79:
	lwz		r5,4(r6)		# coreSchedulerStruct=r5 queueBack=r6
.Llo73:
	lwz		r0,4(r5)		# secondQueue=r0 coreSchedulerStruct=r5
.Llo80:
	stw		r0,4(r4)		# queueElement=r4 secondQueue=r0
#             queueElement->Os_QueueBackElement  = queueBack->Os_QueueHead;
	.d2line		449
	lwz		r5,4(r6)		# coreSchedulerStruct=r5 queueBack=r6
	stw		r5,8(r4)		# queueElement=r4 coreSchedulerStruct=r5
#             queueElement->Os_QueueBackElement->Os_QueueFrontElement = queueElement;
	.d2line		450
	stw		r4,4(r5)		# coreSchedulerStruct=r5 queueElement=r4
#             queueElement->Os_QueueFrontElement->Os_QueueBackElement = queueElement;
	.d2line		451
	lwz		r5,4(r4)		# coreSchedulerStruct=r5 queueElement=r4
	stw		r4,8(r5)		# coreSchedulerStruct=r5 queueElement=r4
# 
#             queue->Os_QueueHead = queueElement;
	.d2line		453
	stw		r4,4(r3)		# queue=r3 queueElement=r4
#             queue->Os_QueueTail = queueElement;
	.d2line		454
	stw		r4,8(r3)		# queue=r3 queueElement=r4
	.section	.Os_TEXT,,c
.L11637:
.Llo60:
	b		.L11488
.L11482:
#         }
#         else
#         {
#             /* new element inherits the pointer from the head */
#             queueElement->Os_QueueFrontElement = queue->Os_QueueHead->Os_QueueFrontElement;
	.d2line		459
.Llo61:
	lwz		r5,4(r3)		# coreSchedulerStruct=r5 queue=r3
.Llo74:
	lwz		r0,4(r5)		# coreSchedulerStruct=r5
	stw		r0,4(r4)		# queueElement=r4
#             queueElement->Os_QueueBackElement = queue->Os_QueueHead;
	.d2line		460
	lwz		r0,4(r3)		# queue=r3
	stw		r0,8(r4)		# queueElement=r4
# 
#             /* update the front element */
#             queue->Os_QueueHead->Os_QueueFrontElement->Os_QueueBackElement = queueElement;
	.d2line		463
	lwz		r5,4(r3)		# coreSchedulerStruct=r5 queue=r3
	lwz		r5,4(r5)		# coreSchedulerStruct=r5 coreSchedulerStruct=r5
	stw		r4,8(r5)		# coreSchedulerStruct=r5 queueElement=r4
# 
#             /* push back the head */
#             queue->Os_QueueHead->Os_QueueFrontElement = queueElement;
	.d2line		466
	lwz		r5,4(r3)		# coreSchedulerStruct=r5 queue=r3
	stw		r4,4(r5)		# coreSchedulerStruct=r5 queueElement=r4
#             queue->Os_QueueHead = queueElement;
	.d2line		467
	stw		r4,4(r3)		# queue=r3 queueElement=r4
.L11488:
# 
#         }
#         queue->Os_QueueElements++;
	.d2line		470
.Llo62:
	lwz		r4,0(r3)		# queueElement=r4 queue=r3
.Llo63:
	se_addi		r4,1		# queueElement=r4 queueElement=r4
	stw		r4,0(r3)		# queue=r3 queueElement=r4
	.section	.Os_TEXT,,c
.L11629:
.L11478:
#     }
# }
	.d2line		472
	.d2epilogue_begin
.Llo64:
	lwz		r0,20(r1)		# secondQueue=r0
	mtspr		lr,r0		# secondQueue=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11623:
	.type		Os_SchedulerQueuePushFront,@function
	.size		Os_SchedulerQueuePushFront,.-Os_SchedulerQueuePushFront
# Number of nodes = 180

# Allocations for Os_SchedulerQueuePushFront
#	?a4		queueId
#	?a5		queueElement
#	?a6		coreID
#	?a7		coreSchedulerStruct
#	?a8		queue
#	?a9		queueBack
#	?a10		secondQueue
# LOCAL_INLINE FUNC( P2VAR(Os_SchedulerQueueElementType, AUTOMATIC, OS_VAR),OS_CODE) Os_SchedulerQueuePopFront(
	.align		1
	.section	.Os_TEXT,,c
        .d2line         475,84
#$$ld
.L11646:

#$$bf	Os_SchedulerQueuePopFront,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Os_SchedulerQueuePopFront:
.Llo81:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)		# coreID=r0
	.d2_cfa_offset    108,-1
	mr		r3,r3		# queueId=r3 queueId=r3
	mr		r0,r4		# coreID=r0 coreID=r4
	.d2prologue_end
#                               VAR(Os_PriorityType,AUTOMATIC)   queueId,
#                               CONST(CoreIdType,AUTOMATIC)       coreID)
# {
#     P2VAR (Os_SchedulerQueueElementType, AUTOMATIC,OS_VAR)  headElement  = NULL_PTR;
	.d2line		479
	diab.li		r31,0		# headElement=r31
#     P2VAR (Os_SchedulerQueueType,        AUTOMATIC,OS_VAR)  queue        =
	.d2line		480
	lis		r4,(Os_SchedulerQueueStruct+28)@ha
.Llo91:
	e_add16i		r4,r4,(Os_SchedulerQueueStruct+28)@l
.Llo92:
	rlwinm		r0,r0,5,11,26		# coreID=r0 coreID=r0
	lwzux		r5,r4,r0
	e_mulli		r4,r3,12		# queueId=r3
	se_add		r4,r5
.Llo106:
	mr		r4,r4		# queue=r4 queue=r4
#                                                     &Os_GetCoreSchedulerStruct(coreID)->Os_SchedulerQueues[queueId];
# 
#   #ifdef OS_CONFIG_INTERNAL_VALIDATIONS
#     if(queueId >= Os_GetCoreSchedulerStruct(coreID)->Os_SchedulerQueueCount)
	.d2line		484
	lis		r5,(Os_SchedulerQueueStruct+24)@ha
	e_add16i		r5,r5,(Os_SchedulerQueueStruct+24)@l
	lwzx		r0,r5,r0		# coreID=r0
	se_cmpl		r0,r3		# coreID=r0 queueId=r3
	bc		1,1,.L11496	# gt
#     {
#         /* Queue is empty, something went wrong */
#         OS_FATAL_ERROR(E_OS_SYS_INVALID_QUEUEINDEX);
	.d2line		487
.Llo82:
	diab.li		r3,30		# queueId=r3
.Llo83:
	lis		r4,(Os_Core_DynShared+12)@ha
	e_add16i		r4,r4,(Os_Core_DynShared+12)@l
	mfspr		r0,286		# coreID=r0
.Llo93:
	rlwinm		r0,r0,0,16,31		# coreID=r0 coreID=r0
	e_mulli		r0,r0,152		# coreID=r0 coreID=r0
.Llo94:
	stwx		r3,r4,r0		# queueId=r3
	bl		Os_ShutdownAllCores
.Llo84:
	b		.L11498
.L11496:
#     }
#     else if ( queue->Os_QueueElements == 0)
	.d2line		489
.Llo107:
	lwz		r0,0(r4)		# coreID=r0 queue=r4
.Llo95:
	se_cmpi		r0,0		# coreID=r0
	bc		0,2,.L11499	# ne
#     {
#         /* Queue is empty, something went wrong */
#         OS_FATAL_ERROR(E_OS_SYS_INVALID_QUEUEHEAD);
	.d2line		492
.Llo96:
	diab.li		r4,29		# queue=r4
.Llo108:
	lis		r3,(Os_Core_DynShared+12)@ha		# queueId=r3
.Llo85:
	e_add16i		r3,r3,(Os_Core_DynShared+12)@l		# queueId=r3 queueId=r3
	mfspr		r0,286		# coreID=r0
.Llo97:
	rlwinm		r0,r0,0,16,31		# coreID=r0 coreID=r0
	e_mulli		r0,r0,152		# coreID=r0 coreID=r0
.Llo98:
	stwx		r4,r3,r0		# queueId=r3 queue=r4
	diab.li		r3,30		# queueId=r3
.Llo86:
	bl		Os_ShutdownAllCores
.Llo109:
	b		.L11498
.L11499:
#     }
#     else
#   #endif /* OS_CONFIG_INTERNAL_VALIDATIONS */
#     {
#         headElement = queue->Os_QueueHead;
	.d2line		497
.Llo110:
	lwz		r31,4(r4)		# headElement=r31 queue=r4
	mr		r31,r31		# headElement=r31 headElement=r31
#         headElement->Os_QueueFrontElement->Os_QueueBackElement = headElement->Os_QueueBackElement;
	.d2line		498
	lwz		r0,8(r31)		# coreID=r0 headElement=r31
.Llo99:
	lwz		r3,4(r31)		# queueId=r3 headElement=r31
.Llo87:
	stw		r0,8(r3)		# queueId=r3 coreID=r0
#         headElement->Os_QueueBackElement->Os_QueueFrontElement = headElement->Os_QueueFrontElement;
	.d2line		499
	lwz		r0,4(r31)		# coreID=r0 headElement=r31
	lwz		r3,8(r31)		# queueId=r3 headElement=r31
	stw		r0,4(r3)		# queueId=r3 coreID=r0
#         if(queue->Os_QueueElements == 1)
	.d2line		500
	lwz		r0,0(r4)		# coreID=r0 queue=r4
	se_cmpi		r0,1		# coreID=r0
	bc		0,2,.L11502	# ne
#         {
#           #ifdef OS_CONFIG_INTERNAL_VALIDATIONS
#             queue->Os_QueueHead = NULL_PTR;
	.d2line		503
.Llo88:
	diab.li		r0,0		# coreID=r0
.Llo100:
	stw		r0,4(r4)		# queue=r4 coreID=r0
#             queue->Os_QueueTail = NULL_PTR;
	.d2line		504
	stw		r0,8(r4)		# queue=r4 coreID=r0
	b		.L11503
.L11502:
#           #endif
#         }
#         else
#         {
#             queue->Os_QueueHead = headElement->Os_QueueBackElement;
	.d2line		509
.Llo101:
	lwz		r0,8(r31)		# coreID=r0 headElement=r31
.Llo102:
	stw		r0,4(r4)		# queue=r4 coreID=r0
.L11503:
#         }
#         queue->Os_QueueElements--;
	.d2line		511
.Llo103:
	lwz		r3,0(r4)		# queueId=r3 queue=r4
.Llo89:
	diab.addi		r3,r3,-1		# queueId=r3 queueId=r3
	stw		r3,0(r4)		# queue=r4 queueId=r3
# 
#         headElement->Os_QueueBackElement = NULL_PTR;
	.d2line		513
	diab.li		r0,0		# coreID=r0
.Llo104:
	stw		r0,8(r31)		# headElement=r31 coreID=r0
#         headElement->Os_QueueFrontElement = NULL_PTR;
	.d2line		514
	stw		r0,4(r31)		# headElement=r31 coreID=r0
.L11498:
#     }
#     return headElement;
	.d2line		516
.Llo90:
	mr		r3,r31		# headElement=r3 headElement=r31
# }
	.d2line		517
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo105:
	lwz		r0,36(r1)		# coreID=r0
	mtspr		lr,r0		# coreID=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11647:
	.type		Os_SchedulerQueuePopFront,@function
	.size		Os_SchedulerQueuePopFront,.-Os_SchedulerQueuePopFront
# Number of nodes = 150

# Allocations for Os_SchedulerQueuePopFront
#	?a4		queueId
#	?a5		coreID
#	?a6		headElement
#	?a7		queue
# FUNC(void,OS_CODE) Os_SchedulerChangeProcPriority(CONSTP2CONST(Os_ProcStatType,AUTOMATIC,OS_CONST) proc,
	.align		2
	.section	.Os_TEXT,,c
        .d2line         177,20
#$$ld
.L11657:

#$$bf	Os_SchedulerChangeProcPriority,interprocedural,rasave,nostackparams
	.globl		Os_SchedulerChangeProcPriority
	.d2_cfa_start __cie
Os_SchedulerChangeProcPriority:
.Llo111:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# proc=r3 proc=r3
	mr		r31,r4		# newPriority=r31 newPriority=r4
	mr		r30,r5		# frontOrBack=r30 frontOrBack=r5
	.d2prologue_end
#                                                   CONST(Os_PriorityType,AUTOMATIC)                   newPriority,
#                                                   CONST(Os_BoolType,AUTOMATIC)                     frontOrBack)
# {
# #ifdef OS_MODULE_MULTICORE
#     CONST(CoreIdType,AUTOMATIC) coreID = proc->Os_ProcCoreID;
	.d2line		182
	lhz		r28,4(r3)		# proc=r3
.Llo119:
	mr		r28,r28		# coreID=r28 coreID=r28
# #else
#     CONST(CoreIdType,AUTOMATIC) coreID = OS_CORE_ID_MASTER;
# #endif /* OS_MODULE_MULTICORE */
# 
#     P2VAR(Os_SchedulerQueueElementType,AUTOMATIC,OS_VAR) tempElement;
# 
#     tempElement = Os_SchedulerQueuePopFront(proc->Os_ProcDyn->Os_ProcCurrentPriority, coreID);
	.d2line		189
	lwz		r3,8(r3)		# proc=r3 proc=r3
	lwz		r3,48(r3)		# proc=r3 proc=r3
.Llo112:
	mr		r4,r28		# coreID=r4 coreID=r28
.Llo117:
	bl		Os_SchedulerQueuePopFront
	.d2line		192
.Llo113:
	mr.		r29,r3		# tempElement=?a8 tempElement=r3
# 
# #ifdef OS_CONFIG_INTERNAL_VALIDATIONS
#     if(tempElement != NULL_PTR)
.Llo121:
	bc		1,2,.L11406	# eq
# #endif /* OS_CONFIG_INTERNAL_VALIDATIONS */
#     {
#         if(Os_false == frontOrBack )
	.d2line		195
.Llo114:
	se_cmpi		r30,0		# frontOrBack=r30
	bc		0,2,.L11408	# ne
#         {
#             Os_SchedulerQueuePushBack(newPriority, tempElement, coreID);
	.d2line		197
.Llo118:
	mr		r3,r31		# newPriority=r3 newPriority=r31
	mr		r4,r29		# tempElement=r4 tempElement=r29
	mr		r5,r28		# coreID=r5 coreID=r28
	bl		Os_SchedulerQueuePushBack
	b		.L11409
.L11408:
#         }
#         else
#         {
#             Os_SchedulerQueuePushFront(newPriority, tempElement, coreID);
	.d2line		201
	mr		r3,r31		# newPriority=r3 newPriority=r31
	mr		r4,r29		# tempElement=r4 tempElement=r29
	mr		r5,r28		# coreID=r5 coreID=r28
	bl		Os_SchedulerQueuePushFront
.L11409:
#         }
#         tempElement->Os_QueueProc->Os_ProcDyn->Os_ProcCurrentPriority = newPriority;
	.d2line		203
.Llo120:
	lwz		r3,0(r29)		# proc=r3 tempElement=r29
.Llo115:
	lwz		r3,8(r3)		# proc=r3 proc=r3
	stw		r31,48(r3)		# proc=r3 newPriority=r31
.L11406:
#     }
# }
	.d2line		205
	.d2epilogue_begin
.Llo116:
	lmw		r28,16(r1)		# offset r1+16  0x10
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
	.type		Os_SchedulerChangeProcPriority,@function
	.size		Os_SchedulerChangeProcPriority,.-Os_SchedulerChangeProcPriority
# Number of nodes = 56

# Allocations for Os_SchedulerChangeProcPriority
#	?a4		proc
#	?a5		newPriority
#	?a6		frontOrBack
#	?a7		coreID
#	?a8		tempElement
# FUNC(void,OS_CODE) Os_SchedulerTerminateProc(CONSTP2CONST(Os_ProcStatType,AUTOMATIC,OS_CONST) proc)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         208,20
#$$ld
.L11672:

#$$bf	Os_SchedulerTerminateProc,interprocedural,rasave,nostackparams
	.globl		Os_SchedulerTerminateProc
	.d2_cfa_start __cie
Os_SchedulerTerminateProc:
.Llo122:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r30,r3		# proc=r30 proc=r3
	.d2prologue_end
# {
# #ifdef OS_MODULE_MULTICORE
#     CONST(CoreIdType,AUTOMATIC) coreID = proc->Os_ProcCoreID;
	.d2line		211
.Llo123:
	lhz		r31,4(r30)		# coreID=r31 proc=r30
.Llo124:
	mr		r31,r31		# coreID=r31 coreID=r31
# #else
#     CONST(CoreIdType,AUTOMATIC) coreID = OS_CORE_ID_MASTER;
# #endif /* OS_MODULE_MULTICORE */
# 
#     OS_ASSERT(proc == OS_SCHEDULER_GET_CURRENT_PROC(coreID), E_OS_SYS_SCHEDULER_ERROR);
	.d2line		216
	lis		r3,Os_Core_Stat@ha
	e_add16i		r3,r3,Os_Core_Stat@l
	rlwinm		r4,r31,0,16,31		# coreID=r31
	e_mulli		r4,r4,20
	lwzx		r3,r3,r4
	lwz		r0,28(r3)
	se_cmpl		r0,r30		# proc=r30
	bc		1,2,.L11416	# eq
	diab.li		r4,42
	lis		r3,(Os_Core_DynShared+12)@ha
	e_add16i		r3,r3,(Os_Core_DynShared+12)@l
	mfspr		r0,286
	rlwinm		r0,r0,0,16,31
	e_mulli		r0,r0,152
	stwx		r4,r3,r0
	diab.li		r3,30
	bl		Os_ShutdownAllCores
.L11416:
	.section	.Os_TEXT,,c
.L11678:
#     {
#         /* [OS001-278.v1] */
#         P2VAR (Os_SchedulerQueueElementType, AUTOMATIC, OS_VAR) queueElement =
	.d2line		219
	lwz		r3,8(r30)		# proc=r30
	lwz		r3,48(r3)
	mr		r4,r31		# coreID=r4 coreID=r31
	bl		Os_SchedulerQueuePopFront
.Llo129:
	mr		r31,r3		# queueElement=r31 queueElement=r3
#                                     Os_SchedulerQueuePopFront( proc->Os_ProcDyn->Os_ProcCurrentPriority, coreID );
#         OS_ASSERT( proc == queueElement->Os_QueueProc,E_OS_SYS_SCHEDULER_ERROR );
	.d2line		221
.Llo126:
	lwz		r0,0(r31)		# queueElement=r31
	se_cmpl		r0,r30		# proc=r30
	bc		1,2,.L11421	# eq
.Llo130:
	diab.li		r4,42		# coreID=r4
.Llo127:
	lis		r3,(Os_Core_DynShared+12)@ha
	e_add16i		r3,r3,(Os_Core_DynShared+12)@l
	mfspr		r0,286
	rlwinm		r0,r0,0,16,31
	e_mulli		r0,r0,152
	stwx		r4,r3,r0		# coreID=r4
	diab.li		r3,30
	bl		Os_ShutdownAllCores
.L11421:
#         if(proc->Os_ProcMaxActivations > 1)
	.d2line		222
.Llo128:
	lwz		r0,40(r30)		# proc=r30
	se_cmpli	r0,1
	bc		0,1,.L11413	# le
#         {
#             queueElement->Os_QueueBackElement = proc->Os_ProcDyn->Os_ProcFreeQueueElements;
	.d2line		224
	lwz		r3,8(r30)		# proc=r30
	lwz		r0,44(r3)
	stw		r0,8(r31)		# queueElement=r31
#             proc->Os_ProcDyn->Os_ProcFreeQueueElements = queueElement;
	.d2line		225
	lwz		r3,8(r30)		# proc=r30
	stw		r31,44(r3)		# queueElement=r31
	.section	.Os_TEXT,,c
.L11679:
.L11413:
#         }
#     }
# }
	.d2line		228
	.d2epilogue_begin
.Llo125:
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
.L11673:
	.type		Os_SchedulerTerminateProc,@function
	.size		Os_SchedulerTerminateProc,.-Os_SchedulerTerminateProc
# Number of nodes = 105

# Allocations for Os_SchedulerTerminateProc
#	?a4		proc
#	?a5		coreID
#	?a6		queueElement
# LOCAL_INLINE FUNC(void,OS_CODE) Os_SchedulerCleanUp(CONST(CoreIdType,AUTOMATIC) coreID)
	.align		1
	.section	.Os_TEXT,,c
        .d2line         288,33
#$$ld
.L11686:

#$$bf	Os_SchedulerCleanUp,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r8,r9,r30,r31,cr0,lr
	.d2_cfa_start __cie
Os_SchedulerCleanUp:
.Llo131:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)		# coreID=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# coreID=r0 coreID=r3
	.d2prologue_end
# {
#     VAR          ( Os_ObjectType,                   AUTOMATIC)           procId;
#     VAR          ( Os_PriorityType,                 AUTOMATIC)           prio;
# 
#     CONSTP2VAR   (Os_SchedulerDynType,              AUTOMATIC, OS_VAR)   coreSchedulerDyn = OS_GET_CORE_SCHEDULER_DYN(coreID);
	.d2line		293
.Llo132:
	lis		r3,(Os_Core_Stat+4)@ha
.Llo133:
	e_add16i		r3,r3,(Os_Core_Stat+4)@l
	rlwinm		r7,r0,0,16,31		# coreID=r0
	e_mulli		r7,r7,20
	lwzx		r4,r3,r7
.Llo152:
	mr		r4,r4		# coreSchedulerDyn=r4 coreSchedulerDyn=r4
#     CONSTP2CONST ( Os_SchedulerQueueStructureType,  AUTOMATIC, OS_CONST) coreSchedulerStruct =
	.d2line		294
	lis		r5,Os_SchedulerQueueStruct@ha
	e_add16i		r5,r5,Os_SchedulerQueueStruct@l
	rlwinm		r3,r0,5,11,26		# coreID=r0
	se_add		r3,r5
.Llo154:
	mr		r5,r3		# coreSchedulerStruct=r5 coreSchedulerStruct=r3
#                                                                                     Os_GetCoreSchedulerStruct(coreID);
# 
#     for(procId = Os_ProcRange[coreID].Os_ObjStartId; procId <=  Os_ProcRange[coreID].Os_ObjEndId; procId++)
	.d2line		297
	lis		r3,Os_ProcRange@ha
.Llo155:
	e_add16i		r3,r3,Os_ProcRange@l
	rlwinm		r7,r0,3,13,28		# coreID=r0
	lwzx		r3,r3,r7
.Llo141:
	mr		r3,r3		# procId=r3 procId=r3
.L11442:
.Llo156:
	lis		r6,(Os_ProcRange+4)@ha		# activationCount=r6
.Llo157:
	e_add16i		r6,r6,(Os_ProcRange+4)@l		# activationCount=r6 activationCount=r6
	rlwinm		r7,r0,3,13,28		# tempElement=r7 coreID=r0
	lwzx		r6,r6,r7		# activationCount=r6 activationCount=r6
	se_cmpl		r6,r3		# activationCount=r6 procId=r3
	bc		1,0,.L11444	# lt
	.section	.Os_TEXT,,c
.L11700:
#     {
#         VAR   ( Os_ActivationCountType,  AUTOMATIC) activationCount;
#         for(activationCount = 0U; activationCount < Os_Proc_Stat[procId].Os_ProcMaxActivations; activationCount++)
	.d2line		300
.Llo158:
	diab.li		r6,0		# activationCount=r6
.L11445:
.Llo159:
	lis		r7,(Os_Proc_Stat+40)@ha		# tempElement=r7
.Llo163:
	e_add16i		r7,r7,(Os_Proc_Stat+40)@l		# tempElement=r7 tempElement=r7
	e_mulli		r9,r3,80		# procId=r3
	lwzx		r7,r7,r9		# tempElement=r7 tempElement=r7
	se_cmpl		r7,r6		# tempElement=r7 activationCount=r6
	bc		0,1,.L11447	# le
	.section	.Os_TEXT,,c
.L11706:
#         {
#             P2VAR  ( Os_SchedulerQueueElementType,  AUTOMATIC, OS_VAR) tempElement;
# 
#             tempElement = &Os_Proc_Stat[procId].Os_ProcQueueElements[activationCount];
	.d2line		304
.Llo164:
	lis		r7,(Os_Proc_Stat+72)@ha		# tempElement=r7
.Llo165:
	e_add16i		r7,r7,(Os_Proc_Stat+72)@l		# tempElement=r7 tempElement=r7
	e_mulli		r9,r3,80		# procId=r3
	lwzx		r7,r7,r9		# tempElement=r7 tempElement=r7
	e_mulli		r31,r6,12		# activationCount=r6
	se_add		r7,r31		# tempElement=r7 tempElement=r7
	mr		r7,r7		# tempElement=r7 tempElement=r7
#             tempElement->Os_QueueFrontElement  =  NULL_PTR;
	.d2line		305
	diab.li		r31,0
	stw		r31,4(r7)		# tempElement=r7
#             if ((activationCount + 1U) < Os_Proc_Stat[procId].Os_ProcMaxActivations)
	.d2line		306
	diab.addi		r31,r6,1		# activationCount=r6
	lis		r8,(Os_Proc_Stat+40)@ha
	e_add16i		r8,r8,(Os_Proc_Stat+40)@l
	lwzx		r30,r8,r9
	se_cmpl		r31,r30
	bc		0,0,.L11448	# ge
#             {
#                 tempElement->Os_QueueBackElement = &Os_Proc_Stat[procId].Os_ProcQueueElements[activationCount + 1U];
	.d2line		308
	lis		r8,(Os_Proc_Stat+72)@ha
	e_add16i		r8,r8,(Os_Proc_Stat+72)@l
	e_mulli		r9,r3,80		# procId=r3
	lwzx		r31,r8,r9
	e_mulli		r30,r6,12		# activationCount=r6
	se_add		r31,r30
	se_addi		r31,12
	stw		r31,8(r7)		# tempElement=r7
	b		.L11449
.L11448:
#             }
#             else
#             {
#                 tempElement->Os_QueueBackElement = NULL_PTR;
	.d2line		312
	diab.li		r31,0
	stw		r31,8(r7)		# tempElement=r7
.L11449:
#             }
#             tempElement->Os_QueueProc =  &Os_Proc_Stat[procId];
	.d2line		314
	lis		r31,Os_Proc_Stat@ha
	e_add16i		r31,r31,Os_Proc_Stat@l
	e_mulli		r9,r3,80		# procId=r3
	add		r31,r31,r9
	stw		r31,0(r7)		# tempElement=r7
	.section	.Os_TEXT,,c
.L11707:
#         }
	.d2line		315
.Llo166:
	diab.addi		r31,r6,1		# activationCount=r6
	se_addi		r6,1		# activationCount=r6 activationCount=r6
	b		.L11445
.L11447:
#         Os_Proc_Stat[procId].Os_ProcDyn->Os_ProcFreeQueueElements = &Os_Proc_Stat[procId].Os_ProcQueueElements[0U];
	.d2line		316
.Llo160:
	lis		r6,(Os_Proc_Stat+72)@ha		# activationCount=r6
.Llo161:
	e_add16i		r6,r6,(Os_Proc_Stat+72)@l		# activationCount=r6 activationCount=r6
	e_mulli		r9,r3,80		# procId=r3
	lwzux		r7,r6,r9		# tempElement=r7 activationCount=r6
.Llo167:
	lis		r6,(Os_Proc_Stat+8)@ha		# activationCount=r6
	e_add16i		r6,r6,(Os_Proc_Stat+8)@l		# activationCount=r6 activationCount=r6
	lwzx		r6,r6,r9		# activationCount=r6 activationCount=r6
	stw		r7,44(r6)		# activationCount=r6 tempElement=r7
	.section	.Os_TEXT,,c
.L11701:
#     }
	.d2line		317
.Llo162:
	diab.addi		r9,r3,1		# procId=r3
	se_addi		r3,1		# procId=r3 procId=r3
	b		.L11442
.L11444:
# 
#     coreSchedulerDyn->Os_SchedulerHeadPivot.Os_QueueProc = NULL_PTR;
	.d2line		319
.Llo134:
	diab.li		r6,0		# activationCount=r6
.Llo150:
	stw		r6,24(r4)		# coreSchedulerDyn=r4 activationCount=r6
#     coreSchedulerDyn->Os_SchedulerTailPivot.Os_QueueProc = NULL_PTR;
	.d2line		320
	stw		r6,36(r4)		# coreSchedulerDyn=r4 activationCount=r6
# 
#     coreSchedulerDyn->Os_SchedulerHeadPivot.Os_QueueBackElement = &coreSchedulerDyn->Os_SchedulerTailPivot;
	.d2line		322
	diab.addi		r3,r4,36		# procId=r3 coreSchedulerDyn=r4
.Llo142:
	stw		r3,32(r4)		# coreSchedulerDyn=r4 procId=r3
#     coreSchedulerDyn->Os_SchedulerHeadPivot.Os_QueueFrontElement = &coreSchedulerDyn->Os_SchedulerHeadPivot;
	.d2line		323
	diab.addi		r0,r4,24		# coreID=r0 coreSchedulerDyn=r4
.Llo135:
	stw		r0,28(r4)		# coreSchedulerDyn=r4 coreID=r0
# 
#     coreSchedulerDyn->Os_SchedulerTailPivot.Os_QueueBackElement = &coreSchedulerDyn->Os_SchedulerTailPivot;
	.d2line		325
	stw		r3,44(r4)		# coreSchedulerDyn=r4 procId=r3
#     coreSchedulerDyn->Os_SchedulerTailPivot.Os_QueueFrontElement = &coreSchedulerDyn->Os_SchedulerHeadPivot;
	.d2line		326
	stw		r0,40(r4)		# coreSchedulerDyn=r4 coreID=r0
# 
#     for(prio = 0U; prio < (coreSchedulerStruct->Os_SchedulerQueueCount - (uint32)1U); prio++)
.L11450:
	.d2line		328
.Llo136:
	lwz		r3,24(r5)		# procId=r3 coreSchedulerStruct=r5
.Llo143:
	diab.addi		r3,r3,-1		# procId=r3 procId=r3
	se_cmpl		r3,r6		# procId=r3 prio=r6
	bc		0,1,.L11452	# le
#     {
#         coreSchedulerStruct->Os_SchedulerQueues[prio].Os_QueueElements = (ProcType)0U;
	.d2line		330
.Llo144:
	diab.li		r7,0		# tempElement=r7
.Llo168:
	lwz		r3,28(r5)		# procId=r3 coreSchedulerStruct=r5
.Llo145:
	e_mulli		r0,r6,12		# coreID=r0 prio=r6
.Llo137:
	stwx		r7,r3,r0		# procId=r3 tempElement=r7
#         coreSchedulerStruct->Os_SchedulerQueues[prio].Os_QueueHead = NULL_PTR;
	.d2line		331
	lwz		r3,28(r5)		# procId=r3 coreSchedulerStruct=r5
	se_add		r3,r0		# procId=r3 procId=r3 coreID=r0
	stw		r7,4(r3)		# procId=r3 tempElement=r7
#         coreSchedulerStruct->Os_SchedulerQueues[prio].Os_QueueTail = NULL_PTR;
	.d2line		332
	lwz		r3,28(r5)		# procId=r3 coreSchedulerStruct=r5
	se_add		r3,r0		# procId=r3 procId=r3 coreID=r0
	stw		r7,8(r3)		# procId=r3 tempElement=r7
#     }
	.d2line		333
	diab.addi		r0,r6,1		# coreID=r0 prio=r6
.Llo138:
	se_addi		r6,1		# prio=r6 prio=r6
	b		.L11450
.L11452:
# 
#     coreSchedulerStruct->Os_SchedulerQueues[0].Os_QueueElements = (ProcType)1U;
	.d2line		335
.Llo146:
	diab.li		r0,1		# coreID=r0
.Llo139:
	lwz		r3,28(r5)		# procId=r3 coreSchedulerStruct=r5
.Llo147:
	stw		r0,0(r3)		# procId=r3 coreID=r0
#     coreSchedulerStruct->Os_SchedulerQueues[0].Os_QueueHead = &coreSchedulerDyn->Os_SchedulerTailPivot;
	.d2line		336
	diab.addi		r0,r4,36		# coreID=r0 coreSchedulerDyn=r4
	lwz		r3,28(r5)		# procId=r3 coreSchedulerStruct=r5
	stw		r0,4(r3)		# procId=r3 coreID=r0
#     coreSchedulerStruct->Os_SchedulerQueues[0].Os_QueueTail = &coreSchedulerDyn->Os_SchedulerTailPivot;
	.d2line		337
	lwz		r3,28(r5)		# procId=r3 coreSchedulerStruct=r5
	stw		r0,8(r3)		# procId=r3 coreID=r0
	.section	.Os_TEXT,,c
.L11712:
# 
#     {
#         VAR(Os_PriorityType,AUTOMATIC) headPivotPrio = coreSchedulerStruct->Os_SchedulerQueueCount - (uint32)1U;
	.d2line		340
.Llo140:
	lwz		r3,24(r5)		# procId=r3 coreSchedulerStruct=r5
.Llo148:
	addi		r0,r3,-1		# coreID=r0 procId=r3
#         coreSchedulerStruct->Os_SchedulerQueues[headPivotPrio].Os_QueueElements = (ProcType)1U;
	.d2line		341
.Llo169:
	diab.li		r6,1		# prio=r6
.Llo151:
	lwz		r3,28(r5)		# procId=r3 coreSchedulerStruct=r5
	e_mulli		r0,r0,12		# headPivotPrio=r0 headPivotPrio=r0
	stwx		r6,r3,r0		# procId=r3 prio=r6
#         coreSchedulerStruct->Os_SchedulerQueues[headPivotPrio].Os_QueueHead = &coreSchedulerDyn->Os_SchedulerHeadPivot;
	.d2line		342
.Llo153:
	se_addi		r4,24		# coreSchedulerDyn=r4 coreSchedulerDyn=r4
	lwz		r3,28(r5)		# procId=r3 coreSchedulerStruct=r5
	se_add		r3,r0		# procId=r3 procId=r3 headPivotPrio=r0
	stw		r4,4(r3)		# procId=r3 coreSchedulerDyn=r4
#         coreSchedulerStruct->Os_SchedulerQueues[headPivotPrio].Os_QueueTail = &coreSchedulerDyn->Os_SchedulerHeadPivot;
	.d2line		343
	lwz		r3,28(r5)		# procId=r3 coreSchedulerStruct=r5
	se_add		r3,r0		# procId=r3 procId=r3 headPivotPrio=r0
	stw		r4,8(r3)		# procId=r3 coreSchedulerDyn=r4
	.section	.Os_TEXT,,c
.L11713:
#     }
# 
# }
	.d2line		346
	.d2epilogue_begin
.Llo149:
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# headPivotPrio=r0
	mtspr		lr,r0		# headPivotPrio=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11687:
	.type		Os_SchedulerCleanUp,@function
	.size		Os_SchedulerCleanUp,.-Os_SchedulerCleanUp
# Number of nodes = 328

# Allocations for Os_SchedulerCleanUp
#	?a4		coreID
#	?a5		procId
#	?a6		prio
#	?a7		coreSchedulerDyn
#	?a8		coreSchedulerStruct
#	?a9		activationCount
#	?a10		tempElement
#	?a11		headPivotPrio
# FUNC(void,OS_CODE) Os_Scheduler_Init(CONST(CoreIdType,AUTOMATIC) coreID)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         238,20
#$$ld
.L11720:

#$$bf	Os_Scheduler_Init,interprocedural,rasave,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r8,r9,r31,cr0,lr
	.globl		Os_Scheduler_Init
	.d2_cfa_start __cie
Os_Scheduler_Init:
.Llo170:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# coreID=r3 coreID=r3
	.d2prologue_end
# {
#     CONSTP2VAR(Os_SchedulerDynType, AUTOMATIC, OS_VAR) coreSchedulerDyn = OS_GET_CORE_SCHEDULER_DYN(coreID);
	.d2line		240
	lis		r4,(Os_Core_Stat+4)@ha
	e_add16i		r4,r4,(Os_Core_Stat+4)@l
	rlwinm		r0,r3,0,16,31		# coreID=r3
	e_mulli		r0,r0,20
	lwzx		r31,r4,r0		# coreSchedulerDyn=r31
	mr		r31,r31		# coreSchedulerDyn=r31 coreSchedulerDyn=r31
# 
#     Os_SchedulerCleanUp(coreID);
	.d2line		242
	mr		r3,r3		# coreID=r3 coreID=r3
.Llo171:
	bl		Os_SchedulerCleanUp
# 
#     coreSchedulerDyn->Os_SchedulerLastScheduledProc = Os_SchedulerGetNextProc(coreSchedulerDyn);
	.d2line		244
	mr		r3,r31		# coreSchedulerDyn=r3 coreSchedulerDyn=r31
	bl		Os_SchedulerGetNextProc
.Llo172:
	stw		r3,20(r31)		# coreSchedulerDyn=r31 coreID=r3
#     coreSchedulerDyn->Os_SchedulerCurrentTask = NULL_PTR;
	.d2line		245
	diab.li		r0,0
	stw		r0,16(r31)		# coreSchedulerDyn=r31
# 
#     if(coreSchedulerDyn->Os_SchedulerLastScheduledProc != NULL_PTR)
	.d2line		247
	se_cmpi		r3,0		# coreID=r3
	bc		1,2,.L11430	# eq
#     {
#         coreSchedulerDyn->Os_CurrentContext = coreSchedulerDyn->Os_SchedulerLastScheduledProc->Os_ProcContext;
	.d2line		249
.Llo173:
	lwz		r3,20(r31)		# coreID=r3 coreSchedulerDyn=r31
.Llo174:
	lwz		r0,44(r3)		# coreID=r3
	stw		r0,0(r31)		# coreSchedulerDyn=r31
	b		.L11431
.L11430:
#     }
#     else
#     {
#         coreSchedulerDyn->Os_CurrentContext = NULL_PTR;
	.d2line		253
.Llo175:
	diab.li		r0,0
	stw		r0,0(r31)		# coreSchedulerDyn=r31
.L11431:
#     }
#     coreSchedulerDyn->Os_PreviousContext = NULL_PTR;
	.d2line		255
	diab.li		r3,0		# coreID=r3
.Llo176:
	stw		r3,4(r31)		# coreSchedulerDyn=r31 coreID=r3
# }
	.d2line		256
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo178:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo177:
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11721:
	.type		Os_Scheduler_Init,@function
	.size		Os_Scheduler_Init,.-Os_Scheduler_Init
# Number of nodes = 59

# Allocations for Os_Scheduler_Init
#	?a4		coreID
#	?a5		coreSchedulerDyn
# FUNC(void,OS_CODE) Os_SchedulerShutdown(CONST(CoreIdType,AUTOMATIC) coreID)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         231,20
#$$ld
.L11728:

#$$bf	Os_SchedulerShutdown,interprocedural,rasave,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r8,r9,cr0,lr
	.globl		Os_SchedulerShutdown
	.d2_cfa_start __cie
Os_SchedulerShutdown:
.Llo179:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     /* [OS001-175.v1] */
#     Os_Scheduler_Init(coreID);
	.d2line		234
	mr		r0,r3		# coreID=r0 coreID=r3
	bl		Os_Scheduler_Init
# }
	.d2line		235
	.d2epilogue_begin
.Llo180:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11729:
	.type		Os_SchedulerShutdown,@function
	.size		Os_SchedulerShutdown,.-Os_SchedulerShutdown
# Number of nodes = 5

# Allocations for Os_SchedulerShutdown
#	?a4		coreID
# FUNC(void, OS_CODE) Os_SchedulerIdle(void)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         263,21
#$$ld
.L11734:

#$$bf	Os_SchedulerIdle,interprocedural,rasave,nostackparams
	.globl		Os_SchedulerIdle
	.d2_cfa_start __cie
Os_SchedulerIdle:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     CONST(CoreIdType,AUTOMATIC) coreID = OS_GETCOREID();
	.d2line		265
	mfspr		r3,286		# coreID=r3
.Llo181:
	mr		r3,r3		# coreID=r3 coreID=r3
#     CONSTP2VAR(Os_SchedulerDynType, AUTOMATIC, OS_VAR) coreSchedulerDyn = OS_GET_CORE_SCHEDULER_DYN(coreID);
	.d2line		266
	lis		r4,(Os_Core_Stat+4)@ha		# coreSchedulerDyn=r4
.Llo183:
	e_add16i		r4,r4,(Os_Core_Stat+4)@l		# coreSchedulerDyn=r4 coreSchedulerDyn=r4
	rlwinm		r0,r3,0,16,31		# coreID=r3
	e_mulli		r0,r0,20
	lwzx		r4,r4,r0		# coreSchedulerDyn=r4 coreSchedulerDyn=r4
	mr		r4,r4		# coreSchedulerDyn=r4 coreSchedulerDyn=r4
# 
#     /* [OS-MGC-0082] */
# 
#     coreSchedulerDyn->Os_PreviousContext = NULL_PTR;
	.d2line		270
	diab.li		r7,0
	stw		r7,4(r4)		# coreSchedulerDyn=r4
#     /* nothing to be schedule */
#     OS_SCHEDULER_GET_CURRENT_PROC(coreID) = NULL_PTR;
	.d2line		272
	lis		r5,Os_Core_Stat@ha
	e_add16i		r5,r5,Os_Core_Stat@l
	lwzux		r6,r5,r0
	stw		r7,28(r6)
#     coreSchedulerDyn->Os_SchedulerCurrentTask = NULL_PTR;
	.d2line		273
	stw		r7,16(r4)		# coreSchedulerDyn=r4
#     coreSchedulerDyn->Os_SchedulerLastScheduledPriority = (Os_PriorityType)OS_TASK_ISR_LEVEL; /* BZ18547 */
	.d2line		274
	stw		r7,12(r4)		# coreSchedulerDyn=r4
# 
#     /* Needs to be called before interrupts are enabled */
#     OS_CALL_RTM_IDLE_MODE_ENTER(coreID);
# 
#     OS_GET_CORE_ISR_DYN_INIT(coreID)->Os_CurrentUserModePriority = OS_TASK_ISR_LEVEL;
	.d2line		279
	lis		r4,Os_Core_Stat@ha		# coreSchedulerDyn=r4
	e_add16i		r4,r4,Os_Core_Stat@l		# coreSchedulerDyn=r4 coreSchedulerDyn=r4
	lwzx		r4,r4,r0		# coreSchedulerDyn=r4 coreSchedulerDyn=r4
	stw		r7,0(r4)		# coreSchedulerDyn=r4
#     OS_SET_ISR_LEVEL(OS_TASK_ISR_LEVEL, coreID);
	.d2line		280
	lis		r4,Os_IsrLevel@ha		# coreSchedulerDyn=r4
	e_add16i		r4,r4,Os_IsrLevel@l		# coreSchedulerDyn=r4 coreSchedulerDyn=r4
	rlwinm		r0,r3,2,14,29		# coreID=r3
	stwx		r7,r4,r0		# coreSchedulerDyn=r4
	diab.li		r4,16		# coreSchedulerDyn=r4
	e_add2is		r4,-1020		# coreSchedulerDyn=r4
	stwx		r7,r4,r0		# coreSchedulerDyn=r4
#     OS_ENABLE_ALLINTR();
	.d2line		281
	mfmsr		r0
	se_btsti		r0,16
	bc		0,2,.L11438	# ne
.Llo184:
	wrteei		1
.L11438:
#     Os_Core_Idle(coreID);
	.d2line		282
	rlwinm		r3,r3,0,16,31		# coreID=r3 coreID=r3
.Llo182:
	bl		Os_Core_Idle
# }
	.d2line		283
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
.L11735:
	.type		Os_SchedulerIdle,@function
	.size		Os_SchedulerIdle,.-Os_SchedulerIdle
# Number of nodes = 102

# Allocations for Os_SchedulerIdle
#	not allocated	$$2353
#	?a4		coreID
#	?a5		coreSchedulerDyn

# Allocations for module
	.section	.text_vle
	.0byte		.L11741
	.section	.text_vle
	.0byte		.L11751
	.section	.text_vle
	.0byte		.L11755
	.section	.Os_BSS,,b
	.0byte		.L11762
	.section	.Os_BSS,,b
	.0byte		.L11767
	.section	.text_vle
#$$ld
.L5:
.L12252:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_Types.h"
.L12248:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ApplicationApiTypes.h"
.L12246:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ScheduleTableApiTypes.h"
.L12244:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_TaskApiTypes.h"
.L12242:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_SpinlockApiTypes.h"
.L12228:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\PowerPC\\WindRiver\\AUTOSAR\\ar422\\MemMap.h"
.L12225:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_InternalTypes.h"
.L12208:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ErrorApiTypes.h"
.L12188:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ExceptionApiTypes.h"
.L12143:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_ApplicationCfgTypes.h"
.L12095:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_HookApiTypes.h"
.L12070:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_TrustedFunctionCfgTypes.h"
.L11822:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_ApiDispatchCfgTypes.h"
.L11768:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\ssc\\inc\\Os_Arch_Intr.h"
.L11756:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_CoreCfgTypes.h"
.L11752:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_SchedulerCfgTypes.h"
.L11742:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_TaskCfgTypes.h"
	.d2_line_end
	.section	.Os_TEXT,,c
#$$ld
.L11513:
.L11541:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\scheduler\\Os_Scheduler.c"
.L11521:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_Scheduler.h"
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\scheduler\\Os_Scheduler.c"
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
.L11510:
	.4byte		.L11511-.L11509
.L11509:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L11515-.L11510
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\scheduler\\Os_Scheduler.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L11512
	.4byte		.L11513
	.4byte		.L11516
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11526:
	.sleb128	2
	.4byte		.L11518-.L11510
	.byte		"Os_SchedulerGetNextProc"
	.byte		0
	.4byte		.L11521
	.uleb128	132
	.uleb128	75
	.4byte		.L11522
	.byte		0x1
	.4byte		.L11519
	.4byte		.L11520
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L11521
	.uleb128	132
	.uleb128	75
	.byte		"coreSchedulerDyn"
	.byte		0
	.4byte		.L11527
	.4byte		.L11532
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11533:
	.sleb128	4
	.4byte		.L11521
	.uleb128	135
	.uleb128	67
	.byte		"queueElement"
	.byte		0
	.4byte		.L11534
	.4byte		.L11536
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11518:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11542:
	.sleb128	5
	.4byte		.L11538-.L11510
	.byte		"Os_SchedulerRemoveProc"
	.byte		0
	.4byte		.L11541
	.uleb128	56
	.uleb128	35
	.byte		0x1
	.4byte		.L11539
	.4byte		.L11540
	.sleb128	3
	.4byte		.L11541
	.uleb128	56
	.uleb128	35
	.byte		"proc"
	.byte		0
	.4byte		.L11543
	.4byte		.L11544
	.sleb128	3
	.4byte		.L11541
	.uleb128	56
	.uleb128	35
	.byte		"prio"
	.byte		0
	.4byte		.L11545
	.4byte		.L11549
	.sleb128	3
	.4byte		.L11541
	.uleb128	56
	.uleb128	35
	.byte		"activations"
	.byte		0
	.4byte		.L11550
	.4byte		.L11553
.L11554:
	.sleb128	4
	.4byte		.L11541
	.uleb128	61
	.uleb128	33
	.byte		"coreID"
	.byte		0
	.4byte		.L11555
	.4byte		.L11559
.L11560:
	.sleb128	4
	.4byte		.L11541
	.uleb128	65
	.uleb128	30
	.byte		"elements"
	.byte		0
	.4byte		.L11561
	.4byte		.L11563
.L11564:
	.sleb128	4
	.4byte		.L11541
	.uleb128	66
	.uleb128	68
	.byte		"queueElement"
	.byte		0
	.4byte		.L11534
	.4byte		.L11565
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11538:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11570:
	.sleb128	6
	.4byte		.L11567-.L11510
	.byte		"Os_SchedulerUnScheduleProc"
	.byte		0
	.4byte		.L11541
	.uleb128	119
	.uleb128	20
	.byte		0x1
	.byte		0x1
	.4byte		.L11568
	.4byte		.L11569
	.sleb128	3
	.4byte		.L11541
	.uleb128	119
	.uleb128	20
	.byte		"proc"
	.byte		0
	.4byte		.L11543
	.4byte		.L11571
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11572:
	.sleb128	7
	.4byte		.L11541
	.uleb128	121
	.uleb128	44
	.byte		"activations"
	.byte		0
	.4byte		.L11552
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11567:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11577:
	.sleb128	5
	.4byte		.L11574-.L11510
	.byte		"Os_SchedulerQueuePushBack"
	.byte		0
	.4byte		.L11541
	.uleb128	349
	.uleb128	33
	.byte		0x1
	.4byte		.L11575
	.4byte		.L11576
	.sleb128	3
	.4byte		.L11541
	.uleb128	349
	.uleb128	33
	.byte		"queueId"
	.byte		0
	.4byte		.L11546
	.4byte		.L11578
	.sleb128	3
	.4byte		.L11541
	.uleb128	349
	.uleb128	33
	.byte		"queueElement"
	.byte		0
	.4byte		.L11579
	.4byte		.L11581
	.sleb128	3
	.4byte		.L11541
	.uleb128	349
	.uleb128	33
	.byte		"coreID"
	.byte		0
	.4byte		.L11555
	.4byte		.L11582
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	8
	.4byte		.L11586
	.4byte		.L11583
	.4byte		.L11584
.L11587:
	.sleb128	4
	.4byte		.L11541
	.uleb128	361
	.uleb128	73
	.byte		"coreSchedulerStruct"
	.byte		0
	.4byte		.L11588
	.4byte		.L11593
.L11594:
	.sleb128	4
	.4byte		.L11541
	.uleb128	363
	.uleb128	55
	.byte		"queue"
	.byte		0
	.4byte		.L11595
	.4byte		.L11598
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	8
	.4byte		.L11602
	.4byte		.L11599
	.4byte		.L11600
.L11603:
	.sleb128	4
	.4byte		.L11541
	.uleb128	366
	.uleb128	59
	.byte		"queueBack"
	.byte		0
	.4byte		.L11595
	.4byte		.L11604
.L11605:
	.sleb128	4
	.4byte		.L11541
	.uleb128	367
	.uleb128	66
	.byte		"secondQueue"
	.byte		0
	.4byte		.L11606
	.4byte		.L11609
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11602:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11586:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11574:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11614:
	.sleb128	6
	.4byte		.L11611-.L11510
	.byte		"Os_SchedulerStartProc"
	.byte		0
	.4byte		.L11541
	.uleb128	136
	.uleb128	20
	.byte		0x1
	.byte		0x1
	.4byte		.L11612
	.4byte		.L11613
	.sleb128	3
	.4byte		.L11541
	.uleb128	136
	.uleb128	20
	.byte		"proc"
	.byte		0
	.4byte		.L11543
	.4byte		.L11615
.L11616:
	.sleb128	4
	.4byte		.L11541
	.uleb128	139
	.uleb128	58
	.byte		"TempElement"
	.byte		0
	.4byte		.L11579
	.4byte		.L11617
.L11618:
	.sleb128	4
	.4byte		.L11541
	.uleb128	141
	.uleb128	33
	.byte		"coreID"
	.byte		0
	.4byte		.L11555
	.4byte		.L11619
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11611:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11624:
	.sleb128	5
	.4byte		.L11621-.L11510
	.byte		"Os_SchedulerQueuePushFront"
	.byte		0
	.4byte		.L11541
	.uleb128	411
	.uleb128	33
	.byte		0x1
	.4byte		.L11622
	.4byte		.L11623
	.sleb128	3
	.4byte		.L11541
	.uleb128	411
	.uleb128	33
	.byte		"queueId"
	.byte		0
	.4byte		.L11546
	.4byte		.L11625
	.sleb128	3
	.4byte		.L11541
	.uleb128	411
	.uleb128	33
	.byte		"queueElement"
	.byte		0
	.4byte		.L11579
	.4byte		.L11626
	.sleb128	3
	.4byte		.L11541
	.uleb128	411
	.uleb128	33
	.byte		"coreID"
	.byte		0
	.4byte		.L11555
	.4byte		.L11627
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	8
	.4byte		.L11631
	.4byte		.L11628
	.4byte		.L11629
.L11632:
	.sleb128	4
	.4byte		.L11541
	.uleb128	422
	.uleb128	76
	.byte		"coreSchedulerStruct"
	.byte		0
	.4byte		.L11588
	.4byte		.L11633
.L11634:
	.sleb128	4
	.4byte		.L11541
	.uleb128	424
	.uleb128	55
	.byte		"queue"
	.byte		0
	.4byte		.L11595
	.4byte		.L11635
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	8
	.4byte		.L11639
	.4byte		.L11636
	.4byte		.L11637
.L11640:
	.sleb128	4
	.4byte		.L11541
	.uleb128	427
	.uleb128	69
	.byte		"queueBack"
	.byte		0
	.4byte		.L11595
	.4byte		.L11641
.L11642:
	.sleb128	4
	.4byte		.L11541
	.uleb128	428
	.uleb128	69
	.byte		"secondQueue"
	.byte		0
	.4byte		.L11606
	.4byte		.L11643
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11639:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11631:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11621:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11648:
	.sleb128	2
	.4byte		.L11645-.L11510
	.byte		"Os_SchedulerQueuePopFront"
	.byte		0
	.4byte		.L11541
	.uleb128	475
	.uleb128	84
	.4byte		.L11579
	.byte		0x1
	.4byte		.L11646
	.4byte		.L11647
	.sleb128	3
	.4byte		.L11541
	.uleb128	475
	.uleb128	84
	.byte		"queueId"
	.byte		0
	.4byte		.L11546
	.4byte		.L11649
	.sleb128	3
	.4byte		.L11541
	.uleb128	475
	.uleb128	84
	.byte		"coreID"
	.byte		0
	.4byte		.L11555
	.4byte		.L11650
.L11651:
	.sleb128	4
	.4byte		.L11541
	.uleb128	479
	.uleb128	61
	.byte		"headElement"
	.byte		0
	.4byte		.L11579
	.4byte		.L11652
.L11653:
	.sleb128	4
	.4byte		.L11541
	.uleb128	480
	.uleb128	61
	.byte		"queue"
	.byte		0
	.4byte		.L11595
	.4byte		.L11654
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11645:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11659:
	.sleb128	6
	.4byte		.L11656-.L11510
	.byte		"Os_SchedulerChangeProcPriority"
	.byte		0
	.4byte		.L11541
	.uleb128	177
	.uleb128	20
	.byte		0x1
	.byte		0x1
	.4byte		.L11657
	.4byte		.L11658
	.sleb128	3
	.4byte		.L11541
	.uleb128	177
	.uleb128	20
	.byte		"proc"
	.byte		0
	.4byte		.L11543
	.4byte		.L11660
	.sleb128	3
	.4byte		.L11541
	.uleb128	177
	.uleb128	20
	.byte		"newPriority"
	.byte		0
	.4byte		.L11545
	.4byte		.L11661
	.sleb128	3
	.4byte		.L11541
	.uleb128	177
	.uleb128	20
	.byte		"frontOrBack"
	.byte		0
	.4byte		.L11662
	.4byte		.L11665
.L11666:
	.sleb128	4
	.4byte		.L11541
	.uleb128	182
	.uleb128	33
	.byte		"coreID"
	.byte		0
	.4byte		.L11555
	.4byte		.L11667
.L11668:
	.sleb128	4
	.4byte		.L11541
	.uleb128	187
	.uleb128	58
	.byte		"tempElement"
	.byte		0
	.4byte		.L11579
	.4byte		.L11669
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11656:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11674:
	.sleb128	6
	.4byte		.L11671-.L11510
	.byte		"Os_SchedulerTerminateProc"
	.byte		0
	.4byte		.L11541
	.uleb128	208
	.uleb128	20
	.byte		0x1
	.byte		0x1
	.4byte		.L11672
	.4byte		.L11673
	.sleb128	3
	.4byte		.L11541
	.uleb128	208
	.uleb128	20
	.byte		"proc"
	.byte		0
	.4byte		.L11543
	.4byte		.L11675
.L11676:
	.sleb128	4
	.4byte		.L11541
	.uleb128	211
	.uleb128	33
	.byte		"coreID"
	.byte		0
	.4byte		.L11555
	.4byte		.L11677
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	8
	.4byte		.L11681
	.4byte		.L11678
	.4byte		.L11679
.L11682:
	.sleb128	4
	.4byte		.L11541
	.uleb128	219
	.uleb128	65
	.byte		"queueElement"
	.byte		0
	.4byte		.L11579
	.4byte		.L11683
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11681:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11671:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11688:
	.sleb128	5
	.4byte		.L11685-.L11510
	.byte		"Os_SchedulerCleanUp"
	.byte		0
	.4byte		.L11541
	.uleb128	288
	.uleb128	33
	.byte		0x1
	.4byte		.L11686
	.4byte		.L11687
	.sleb128	3
	.4byte		.L11541
	.uleb128	288
	.uleb128	33
	.byte		"coreID"
	.byte		0
	.4byte		.L11555
	.4byte		.L11689
.L11690:
	.sleb128	4
	.4byte		.L11541
	.uleb128	290
	.uleb128	74
	.byte		"procId"
	.byte		0
	.4byte		.L11562
	.4byte		.L11691
.L11692:
	.sleb128	4
	.4byte		.L11541
	.uleb128	291
	.uleb128	74
	.byte		"prio"
	.byte		0
	.4byte		.L11546
	.4byte		.L11693
.L11694:
	.sleb128	4
	.4byte		.L11541
	.uleb128	293
	.uleb128	74
	.byte		"coreSchedulerDyn"
	.byte		0
	.4byte		.L11695
	.4byte		.L11697
.L11698:
	.sleb128	4
	.4byte		.L11541
	.uleb128	294
	.uleb128	74
	.byte		"coreSchedulerStruct"
	.byte		0
	.4byte		.L11588
	.4byte		.L11699
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	8
	.4byte		.L11703
	.4byte		.L11700
	.4byte		.L11701
.L11704:
	.sleb128	4
	.4byte		.L11541
	.uleb128	299
	.uleb128	53
	.byte		"activationCount"
	.byte		0
	.4byte		.L11552
	.4byte		.L11705
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	8
	.4byte		.L11709
	.4byte		.L11706
	.4byte		.L11707
.L11710:
	.sleb128	4
	.4byte		.L11541
	.uleb128	302
	.uleb128	72
	.byte		"tempElement"
	.byte		0
	.4byte		.L11579
	.4byte		.L11711
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11709:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11703:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	8
	.4byte		.L11715
	.4byte		.L11712
	.4byte		.L11713
.L11716:
	.sleb128	4
	.4byte		.L11541
	.uleb128	340
	.uleb128	40
	.byte		"headPivotPrio"
	.byte		0
	.4byte		.L11546
	.4byte		.L11717
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11715:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11685:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11722:
	.sleb128	6
	.4byte		.L11719-.L11510
	.byte		"Os_Scheduler_Init"
	.byte		0
	.4byte		.L11541
	.uleb128	238
	.uleb128	20
	.byte		0x1
	.byte		0x1
	.4byte		.L11720
	.4byte		.L11721
	.sleb128	3
	.4byte		.L11541
	.uleb128	238
	.uleb128	20
	.byte		"coreID"
	.byte		0
	.4byte		.L11555
	.4byte		.L11723
.L11724:
	.sleb128	4
	.4byte		.L11541
	.uleb128	240
	.uleb128	56
	.byte		"coreSchedulerDyn"
	.byte		0
	.4byte		.L11695
	.4byte		.L11725
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11719:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11730:
	.sleb128	6
	.4byte		.L11727-.L11510
	.byte		"Os_SchedulerShutdown"
	.byte		0
	.4byte		.L11541
	.uleb128	231
	.uleb128	20
	.byte		0x1
	.byte		0x1
	.4byte		.L11728
	.4byte		.L11729
	.sleb128	3
	.4byte		.L11541
	.uleb128	231
	.uleb128	20
	.byte		"coreID"
	.byte		0
	.4byte		.L11555
	.4byte		.L11731
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11727:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11736:
	.sleb128	6
	.4byte		.L11733-.L11510
	.byte		"Os_SchedulerIdle"
	.byte		0
	.4byte		.L11541
	.uleb128	263
	.uleb128	21
	.byte		0x1
	.byte		0x1
	.4byte		.L11734
	.4byte		.L11735
.L11737:
	.sleb128	4
	.4byte		.L11541
	.uleb128	265
	.uleb128	33
	.byte		"coreID"
	.byte		0
	.4byte		.L11555
	.4byte		.L11738
.L11739:
	.sleb128	4
	.4byte		.L11541
	.uleb128	266
	.uleb128	56
	.byte		"coreSchedulerDyn"
	.byte		0
	.4byte		.L11695
	.4byte		.L11740
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11733:
	.section	.debug_info,,n
.L11741:
	.sleb128	9
	.byte		0x1
	.byte		0x1
	.4byte		.L11742
	.uleb128	211
	.uleb128	45
	.byte		"Os_Proc_Stat"
	.byte		0
	.4byte		.L11743
	.section	.debug_info,,n
.L11745:
	.sleb128	9
	.byte		0x1
	.byte		0x1
	.4byte		.L11742
	.uleb128	213
	.uleb128	45
	.byte		"Os_ProcRange"
	.byte		0
	.4byte		.L11746
.L11751:
	.sleb128	9
	.byte		0x1
	.byte		0x1
	.4byte		.L11752
	.uleb128	111
	.uleb128	56
	.byte		"Os_SchedulerQueueStruct"
	.byte		0
	.4byte		.L11753
	.section	.debug_info,,n
.L11755:
	.sleb128	9
	.byte		0x1
	.byte		0x1
	.4byte		.L11756
	.uleb128	169
	.uleb128	42
	.byte		"Os_Core_Stat"
	.byte		0
	.4byte		.L11757
	.section	.debug_info,,n
.L11762:
	.sleb128	9
	.byte		0x1
	.byte		0x1
	.4byte		.L11756
	.uleb128	181
	.uleb128	45
	.byte		"Os_Core_DynShared"
	.byte		0
	.4byte		.L11763
	.section	.debug_info,,n
.L11767:
	.sleb128	9
	.byte		0x1
	.byte		0x1
	.4byte		.L11768
	.uleb128	63
	.uleb128	40
	.byte		"Os_IsrLevel"
	.byte		0
	.4byte		.L11769
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11761:
	.sleb128	10
	.4byte		.L11752
	.uleb128	69
	.uleb128	1
	.4byte		.L11772-.L2
	.uleb128	20
	.section	.debug_info,,n
.L786:
	.sleb128	11
	.byte		"Os_Core_DynInit"
	.byte		0
	.4byte		.L11773
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L787:
	.sleb128	11
	.byte		"Os_Core_Dyn"
	.byte		0
	.4byte		.L11777
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L788:
	.sleb128	11
	.byte		"Os_DispatchElement"
	.byte		0
	.4byte		.L11781
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L789:
	.sleb128	11
	.byte		"Os_PrepareContextFunction"
	.byte		0
	.4byte		.L11785
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L790:
	.sleb128	11
	.byte		"Os_GetStackPointerFunction"
	.byte		0
	.4byte		.L11790
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11772:
.L11776:
	.sleb128	10
	.4byte		.L11752
	.uleb128	69
	.uleb128	1
	.4byte		.L11797-.L2
	.uleb128	36
.L783:
	.sleb128	11
	.byte		"Os_IsrDynInit"
	.byte		0
	.4byte		.L11798
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L784:
	.sleb128	11
	.byte		"Os_SchedulerDynInit"
	.byte		0
	.4byte		.L11800
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L785:
	.sleb128	11
	.byte		"Os_CurrentApp"
	.byte		0
	.4byte		.L11802
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
	.sleb128	0
.L11797:
.L11766:
	.sleb128	10
	.4byte		.L11752
	.uleb128	69
	.uleb128	1
	.4byte		.L11806-.L2
	.uleb128	152
.L776:
	.sleb128	11
	.byte		"Os_Dispatcher"
	.byte		0
	.4byte		.L11807
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L777:
	.sleb128	11
	.byte		"Os_PublicDataNoInit"
	.byte		0
	.4byte		.L11809
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11806:
.L11780:
	.sleb128	10
	.4byte		.L11752
	.uleb128	69
	.uleb128	1
	.4byte		.L11811-.L2
	.uleb128	104
.L773:
	.sleb128	11
	.byte		"Os_SchedulerDyn"
	.byte		0
	.4byte		.L11530
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L774:
	.sleb128	11
	.byte		"Os_IsrDyn"
	.byte		0
	.4byte		.L11812
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L775:
	.sleb128	11
	.byte		"Os_HooksDyn"
	.byte		0
	.4byte		.L11814
	.sleb128	2
	.byte		0x23
	.uleb128	100
	.byte		0x1
	.sleb128	0
.L11811:
.L11801:
	.sleb128	10
	.4byte		.L11752
	.uleb128	69
	.uleb128	1
	.4byte		.L11816-.L2
	.uleb128	4
.L772:
	.sleb128	11
	.byte		"Os_SchedulerCurrentProc"
	.byte		0
	.4byte		.L11817
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11816:
.L11531:
	.sleb128	10
	.4byte		.L11752
	.uleb128	69
	.uleb128	1
	.4byte		.L11819-.L2
	.uleb128	48
.L764:
	.sleb128	11
	.byte		"Os_CurrentContext"
	.byte		0
	.4byte		.L11795
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L765:
	.sleb128	11
	.byte		"Os_PreviousContext"
	.byte		0
	.4byte		.L11795
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L766:
	.sleb128	11
	.byte		"Os_SchedulerScheduleAction"
	.byte		0
	.4byte		.L11820
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L767:
	.sleb128	11
	.byte		"Os_SchedulerLastScheduledPriority"
	.byte		0
	.4byte		.L11546
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L768:
	.sleb128	11
	.byte		"Os_SchedulerCurrentTask"
	.byte		0
	.4byte		.L11817
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L769:
	.sleb128	11
	.byte		"Os_SchedulerLastScheduledProc"
	.byte		0
	.4byte		.L11817
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L770:
	.sleb128	11
	.byte		"Os_SchedulerHeadPivot"
	.byte		0
	.4byte		.L11580
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L771:
	.sleb128	11
	.byte		"Os_SchedulerTailPivot"
	.byte		0
	.4byte		.L11580
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
	.sleb128	0
.L11819:
.L11592:
	.sleb128	10
	.4byte		.L11822
	.uleb128	612
	.uleb128	1
	.4byte		.L11823-.L2
	.uleb128	32
.L756:
	.sleb128	11
	.byte		"Os_ProcMaxTaskPrio"
	.byte		0
	.4byte		.L11545
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L757:
	.sleb128	11
	.byte		"Os_ProcMaxCAT2Prio"
	.byte		0
	.4byte		.L11545
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L758:
	.sleb128	11
	.byte		"Os_ProcMaxCAT1Prio"
	.byte		0
	.4byte		.L11545
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L759:
	.sleb128	11
	.byte		"Os_IsrCAT0Prio"
	.byte		0
	.4byte		.L11545
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L760:
	.sleb128	11
	.byte		"Os_IsrCAT1Prio"
	.byte		0
	.4byte		.L11545
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L761:
	.sleb128	11
	.byte		"Os_IsrCAT2Prio"
	.byte		0
	.4byte		.L11545
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L762:
	.sleb128	11
	.byte		"Os_SchedulerQueueCount"
	.byte		0
	.4byte		.L11824
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L763:
	.sleb128	11
	.byte		"Os_SchedulerQueues"
	.byte		0
	.4byte		.L11825
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
	.sleb128	0
.L11823:
.L11597:
	.sleb128	10
	.4byte		.L11822
	.uleb128	612
	.uleb128	1
	.4byte		.L11826-.L2
	.uleb128	12
.L753:
	.sleb128	11
	.byte		"Os_QueueElements"
	.byte		0
	.4byte		.L11561
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L754:
	.sleb128	11
	.byte		"Os_QueueHead"
	.byte		0
	.4byte		.L11579
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L755:
	.sleb128	11
	.byte		"Os_QueueTail"
	.byte		0
	.4byte		.L11579
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11826:
	.section	.debug_info,,n
.L11535:
	.sleb128	12
	.4byte		.L11822
	.uleb128	612
	.uleb128	1
	.4byte		.L11827-.L2
	.byte		"Os_SchedulerQueueElementType_s"
	.byte		0
	.uleb128	12
.L750:
	.sleb128	11
	.byte		"Os_QueueProc"
	.byte		0
	.4byte		.L11817
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L751:
	.sleb128	11
	.byte		"Os_QueueFrontElement"
	.byte		0
	.4byte		.L11534
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L752:
	.sleb128	11
	.byte		"Os_QueueBackElement"
	.byte		0
	.4byte		.L11534
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11827:
.L11799:
	.sleb128	10
	.4byte		.L11822
	.uleb128	612
	.uleb128	1
	.4byte		.L11828-.L2
	.uleb128	28
.L743:
	.sleb128	11
	.byte		"Os_CurrentUserModePriority"
	.byte		0
	.4byte		.L11771
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L744:
	.sleb128	11
	.byte		"Os_UserModePriorityChanged"
	.byte		0
	.4byte		.L11829
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L745:
	.sleb128	11
	.byte		"Os_DisableAllCount"
	.byte		0
	.4byte		.L11547
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L746:
	.sleb128	11
	.byte		"Os_SuspendAllCount"
	.byte		0
	.4byte		.L11547
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L747:
	.sleb128	11
	.byte		"Os_SuspendOSCount"
	.byte		0
	.4byte		.L11547
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L748:
	.sleb128	11
	.byte		"Os_SavedIsrLevel"
	.byte		0
	.4byte		.L11771
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L749:
	.sleb128	11
	.byte		"Os_SavedOSIsrLevel"
	.byte		0
	.4byte		.L11771
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
	.sleb128	0
.L11828:
.L11813:
	.sleb128	10
	.4byte		.L11822
	.uleb128	612
	.uleb128	1
	.4byte		.L11831-.L2
	.uleb128	52
.L737:
	.sleb128	11
	.byte		"Os_IsrRunningIsr"
	.byte		0
	.4byte		.L11817
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L738:
	.sleb128	11
	.byte		"Os_IsrNeedToClear"
	.byte		0
	.4byte		.L11832
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L739:
	.sleb128	11
	.byte		"Os_Isr_NestLevel"
	.byte		0
	.4byte		.L11547
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L740:
	.sleb128	11
	.byte		"Os_Isr_ServicesBackup"
	.byte		0
	.4byte		.L11836
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L741:
	.sleb128	11
	.byte		"Os_SuspendAllPrevIsrState"
	.byte		0
	.4byte		.L11771
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L742:
	.sleb128	11
	.byte		"Os_SuspendCounterpartTrack"
	.byte		0
	.4byte		.L11840
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L11831:
.L11808:
	.sleb128	10
	.4byte		.L11822
	.uleb128	612
	.uleb128	1
	.4byte		.L11842-.L2
	.uleb128	8
.L735:
	.sleb128	11
	.byte		"Os_DHead"
	.byte		0
	.4byte		.L11547
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L736:
	.sleb128	11
	.byte		"Os_DTail"
	.byte		0
	.4byte		.L11547
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11842:
.L11784:
	.sleb128	12
	.4byte		.L11822
	.uleb128	612
	.uleb128	1
	.4byte		.L11843-.L2
	.byte		"Os_DispatchElementType_s"
	.byte		0
	.uleb128	56
.L730:
	.sleb128	11
	.byte		"Os_DispatchKind"
	.byte		0
	.4byte		.L11844
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L731:
	.sleb128	11
	.byte		"Os_DispatcherLockCoreId"
	.byte		0
	.4byte		.L11556
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L732:
	.sleb128	11
	.byte		"Os_DispatchIsrId"
	.byte		0
	.4byte		.L11846
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L733:
	.sleb128	11
	.byte		"Os_DispatchApiCall"
	.byte		0
	.4byte		.L11847
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L734:
	.sleb128	11
	.byte		"Os_DispatchApiInternal"
	.byte		0
	.4byte		.L11848
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11843:
.L11849:
	.sleb128	12
	.4byte		.L11822
	.uleb128	60
	.uleb128	1
	.4byte		.L11850-.L2
	.byte		"Os_APICallType_struct"
	.byte		0
	.uleb128	40
.L725:
	.sleb128	11
	.byte		"Os_API_Magic"
	.byte		0
	.4byte		.L11547
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L726:
	.sleb128	11
	.byte		"Os_API_ReturnValue"
	.byte		0
	.4byte		.L11851
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L727:
	.sleb128	11
	.byte		"Os_API_Lock"
	.byte		0
	.4byte		.L11853
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L728:
	.sleb128	11
	.byte		"Os_API_Func"
	.byte		0
	.4byte		.L11855
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L729:
	.sleb128	11
	.byte		"Os_API_Data"
	.byte		0
	.4byte		.L11861
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11850:
	.section	.debug_info,,n
.L11861:
	.sleb128	13
	.4byte		.L11822
	.uleb128	60
	.uleb128	1
	.4byte		.L11862-.L2
	.uleb128	24
.L677:
	.sleb128	11
	.byte		"Os_ApiStartOs"
	.byte		0
	.4byte		.L11863
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L678:
	.sleb128	11
	.byte		"Os_ApiShutdownOs"
	.byte		0
	.4byte		.L11865
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L679:
	.sleb128	11
	.byte		"Os_ApiShutdownOsInternal"
	.byte		0
	.4byte		.L11867
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L680:
	.sleb128	11
	.byte		"Os_ApiShutdownAllCores"
	.byte		0
	.4byte		.L11869
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L681:
	.sleb128	11
	.byte		"Os_ApiGetNumberOfActivatedCores"
	.byte		0
	.4byte		.L11871
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L682:
	.sleb128	11
	.byte		"Os_ApiStartCore"
	.byte		0
	.4byte		.L11873
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L683:
	.sleb128	11
	.byte		"Os_ApiStartNonAutosarCore"
	.byte		0
	.4byte		.L11875
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L684:
	.sleb128	11
	.byte		"Os_ApiGetCoreID"
	.byte		0
	.4byte		.L11877
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L685:
	.sleb128	11
	.byte		"Os_ApiActivateTask"
	.byte		0
	.4byte		.L11879
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L686:
	.sleb128	11
	.byte		"Os_ApiChainTask"
	.byte		0
	.4byte		.L11881
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L687:
	.sleb128	11
	.byte		"Os_ApiGetTaskID"
	.byte		0
	.4byte		.L11883
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L688:
	.sleb128	11
	.byte		"Os_ApiGetTaskState"
	.byte		0
	.4byte		.L11885
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L689:
	.sleb128	11
	.byte		"Os_ApiSetEvent"
	.byte		0
	.4byte		.L11887
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L690:
	.sleb128	11
	.byte		"Os_ApiClearEvent"
	.byte		0
	.4byte		.L11889
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L691:
	.sleb128	11
	.byte		"Os_ApiGetEvent"
	.byte		0
	.4byte		.L11891
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L692:
	.sleb128	11
	.byte		"Os_ApiWaitEvent"
	.byte		0
	.4byte		.L11893
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L693:
	.sleb128	11
	.byte		"Os_ApiGetResource"
	.byte		0
	.4byte		.L11895
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L694:
	.sleb128	11
	.byte		"Os_ApiReleaseResource"
	.byte		0
	.4byte		.L11897
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L695:
	.sleb128	11
	.byte		"Os_ApiGetAlarmBase"
	.byte		0
	.4byte		.L11899
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L696:
	.sleb128	11
	.byte		"Os_ApiGetAlarm"
	.byte		0
	.4byte		.L11901
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L697:
	.sleb128	11
	.byte		"Os_ApiSetRelAlarm"
	.byte		0
	.4byte		.L11903
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L698:
	.sleb128	11
	.byte		"Os_ApiSetAbsAlarm"
	.byte		0
	.4byte		.L11905
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L699:
	.sleb128	11
	.byte		"Os_ApiCancelAlarm"
	.byte		0
	.4byte		.L11907
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L700:
	.sleb128	11
	.byte		"Os_ApiGetApplicationState"
	.byte		0
	.4byte		.L11909
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L701:
	.sleb128	11
	.byte		"Os_ApiTerminateApplication"
	.byte		0
	.4byte		.L11911
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L702:
	.sleb128	11
	.byte		"Os_ApiGetApplicationID"
	.byte		0
	.4byte		.L11913
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L703:
	.sleb128	11
	.byte		"Os_ApiGetISRID"
	.byte		0
	.4byte		.L11915
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L704:
	.sleb128	11
	.byte		"Os_ApiGetActiveApplicationMode"
	.byte		0
	.4byte		.L11917
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L705:
	.sleb128	11
	.byte		"Os_ApiIncrementCounter"
	.byte		0
	.4byte		.L11919
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L706:
	.sleb128	11
	.byte		"Os_ApiGetCounterValue"
	.byte		0
	.4byte		.L11921
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L707:
	.sleb128	11
	.byte		"Os_ApiGetElapsedValue"
	.byte		0
	.4byte		.L11923
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L708:
	.sleb128	11
	.byte		"Os_ApiStartScheduleTableAbs"
	.byte		0
	.4byte		.L11925
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L709:
	.sleb128	11
	.byte		"Os_ApiStartScheduleTableRel"
	.byte		0
	.4byte		.L11927
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L710:
	.sleb128	11
	.byte		"Os_ApiStopScheduleTable"
	.byte		0
	.4byte		.L11929
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L711:
	.sleb128	11
	.byte		"Os_ApiGetScheduleTableStatus"
	.byte		0
	.4byte		.L11931
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L712:
	.sleb128	11
	.byte		"Os_ApiNextScheduleTable"
	.byte		0
	.4byte		.L11933
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L713:
	.sleb128	11
	.byte		"Os_ApiStartScheduleTableSynchron"
	.byte		0
	.4byte		.L11935
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L714:
	.sleb128	11
	.byte		"Os_ApiSyncScheduleTable"
	.byte		0
	.4byte		.L11937
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L715:
	.sleb128	11
	.byte		"Os_ApiSetScheduleTableAsync"
	.byte		0
	.4byte		.L11939
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L716:
	.sleb128	11
	.byte		"Os_ApiCheckObjectAccess"
	.byte		0
	.4byte		.L11941
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L717:
	.sleb128	11
	.byte		"Os_ApiCheckObjectOwnership"
	.byte		0
	.4byte		.L11943
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L718:
	.sleb128	11
	.byte		"Os_ApiCallTrustedFunction"
	.byte		0
	.4byte		.L11945
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L719:
	.sleb128	11
	.byte		"Os_ApiStackUsage"
	.byte		0
	.4byte		.L11947
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L720:
	.sleb128	11
	.byte		"Os_API_GetSpinlock"
	.byte		0
	.4byte		.L11949
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L721:
	.sleb128	11
	.byte		"Os_API_ReleaseSpinlock"
	.byte		0
	.4byte		.L11951
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L722:
	.sleb128	11
	.byte		"Os_API_TryToGetSpinlock"
	.byte		0
	.4byte		.L11953
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L723:
	.sleb128	11
	.byte		"Os_API_IOCTransfer"
	.byte		0
	.4byte		.L11955
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L724:
	.sleb128	11
	.byte		"Os_ApiControlIdle"
	.byte		0
	.4byte		.L11957
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11862:
.L11958:
	.sleb128	10
	.4byte		.L11822
	.uleb128	60
	.uleb128	1
	.4byte		.L11959-.L2
	.uleb128	8
.L675:
	.sleb128	11
	.byte		"CoreID"
	.byte		0
	.4byte		.L11556
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L676:
	.sleb128	11
	.byte		"IdleMode"
	.byte		0
	.4byte		.L11960
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11959:
.L11956:
	.sleb128	10
	.4byte		.L11822
	.uleb128	60
	.uleb128	1
	.4byte		.L11962-.L2
	.uleb128	8
.L673:
	.sleb128	11
	.byte		"Ioc_Channel"
	.byte		0
	.4byte		.L11963
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L674:
	.sleb128	11
	.byte		"Ioc_Data"
	.byte		0
	.4byte		.L11967
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11962:
.L11954:
	.sleb128	10
	.4byte		.L11822
	.uleb128	60
	.uleb128	1
	.4byte		.L11973-.L2
	.uleb128	8
.L671:
	.sleb128	11
	.byte		"SpinlockId"
	.byte		0
	.4byte		.L11974
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L672:
	.sleb128	11
	.byte		"Success"
	.byte		0
	.4byte		.L11975
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11973:
.L11952:
	.sleb128	10
	.4byte		.L11822
	.uleb128	60
	.uleb128	1
	.4byte		.L11978-.L2
	.uleb128	2
.L670:
	.sleb128	11
	.byte		"SpinlockId"
	.byte		0
	.4byte		.L11974
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11978:
.L11950:
	.sleb128	10
	.4byte		.L11822
	.uleb128	60
	.uleb128	1
	.4byte		.L11979-.L2
	.uleb128	2
.L669:
	.sleb128	11
	.byte		"SpinlockId"
	.byte		0
	.4byte		.L11974
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11979:
.L11948:
	.sleb128	10
	.4byte		.L11822
	.uleb128	60
	.uleb128	1
	.4byte		.L11980-.L2
	.uleb128	20
.L664:
	.sleb128	11
	.byte		"ProcId"
	.byte		0
	.4byte		.L11981
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L665:
	.sleb128	11
	.byte		"MaxUsage"
	.byte		0
	.4byte		.L11852
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L666:
	.sleb128	11
	.byte		"MaxUsageRef"
	.byte		0
	.4byte		.L11982
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L667:
	.sleb128	11
	.byte		"CurrentUsage"
	.byte		0
	.4byte		.L11852
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L668:
	.sleb128	11
	.byte		"CurrentUsageRef"
	.byte		0
	.4byte		.L11982
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11980:
.L11946:
	.sleb128	10
	.4byte		.L11822
	.uleb128	60
	.uleb128	1
	.4byte		.L11983-.L2
	.uleb128	12
.L661:
	.sleb128	11
	.byte		"FunctionIndex"
	.byte		0
	.4byte		.L11984
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L662:
	.sleb128	11
	.byte		"ParamRef"
	.byte		0
	.4byte		.L11985
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L663:
	.sleb128	11
	.byte		"ReturnValue"
	.byte		0
	.4byte		.L11986
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11983:
.L11944:
	.sleb128	10
	.4byte		.L11822
	.uleb128	60
	.uleb128	1
	.4byte		.L11988-.L2
	.uleb128	12
.L658:
	.sleb128	11
	.byte		"AppID"
	.byte		0
	.4byte		.L11989
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L659:
	.sleb128	11
	.byte		"ObjectType"
	.byte		0
	.4byte		.L11990
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L660:
	.sleb128	11
	.byte		"Object"
	.byte		0
	.4byte		.L11562
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11988:
.L11942:
	.sleb128	10
	.4byte		.L11822
	.uleb128	60
	.uleb128	1
	.4byte		.L11992-.L2
	.uleb128	12
.L655:
	.sleb128	11
	.byte		"AppID"
	.byte		0
	.4byte		.L11989
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L656:
	.sleb128	11
	.byte		"ObjectType"
	.byte		0
	.4byte		.L11990
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L657:
	.sleb128	11
	.byte		"Object"
	.byte		0
	.4byte		.L11562
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11992:
.L11908:
	.sleb128	10
	.4byte		.L11822
	.uleb128	60
	.uleb128	1
	.4byte		.L11993-.L2
	.uleb128	4
.L654:
	.sleb128	11
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11994
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11993:
.L11906:
	.sleb128	10
	.4byte		.L11822
	.uleb128	60
	.uleb128	1
	.4byte		.L11995-.L2
	.uleb128	12
.L651:
	.sleb128	11
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11994
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L652:
	.sleb128	11
	.byte		"Start"
	.byte		0
	.4byte		.L11996
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L653:
	.sleb128	11
	.byte		"Cycle"
	.byte		0
	.4byte		.L11996
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11995:
.L11904:
	.sleb128	10
	.4byte		.L11822
	.uleb128	60
	.uleb128	1
	.4byte		.L11997-.L2
	.uleb128	12
.L648:
	.sleb128	11
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11994
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L649:
	.sleb128	11
	.byte		"Increment"
	.byte		0
	.4byte		.L11996
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L650:
	.sleb128	11
	.byte		"Cycle"
	.byte		0
	.4byte		.L11996
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11997:
.L11902:
	.sleb128	10
	.4byte		.L11822
	.uleb128	60
	.uleb128	1
	.4byte		.L11998-.L2
	.uleb128	8
.L646:
	.sleb128	11
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11994
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L647:
	.sleb128	11
	.byte		"TickRef"
	.byte		0
	.4byte		.L11999
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11998:
.L11900:
	.sleb128	10
	.4byte		.L11822
	.uleb128	60
	.uleb128	1
	.4byte		.L12001-.L2
	.uleb128	8
.L644:
	.sleb128	11
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11994
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L645:
	.sleb128	11
	.byte		"AlarmBaseTypeRef"
	.byte		0
	.4byte		.L12002
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12001:
.L11940:
	.sleb128	10
	.4byte		.L11822
	.uleb128	60
	.uleb128	1
	.4byte		.L12006-.L2
	.uleb128	4
.L643:
	.sleb128	11
	.byte		"SchTblId"
	.byte		0
	.4byte		.L12007
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12006:
.L11938:
	.sleb128	10
	.4byte		.L11822
	.uleb128	60
	.uleb128	1
	.4byte		.L12008-.L2
	.uleb128	8
.L641:
	.sleb128	11
	.byte		"SchTblId"
	.byte		0
	.4byte		.L12007
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L642:
	.sleb128	11
	.byte		"SyncValue"
	.byte		0
	.4byte		.L11996
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12008:
.L11936:
	.sleb128	10
	.4byte		.L11822
	.uleb128	60
	.uleb128	1
	.4byte		.L12009-.L2
	.uleb128	4
.L640:
	.sleb128	11
	.byte		"SchTblId"
	.byte		0
	.4byte		.L12007
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12009:
.L11934:
	.sleb128	10
	.4byte		.L11822
	.uleb128	60
	.uleb128	1
	.4byte		.L12010-.L2
	.uleb128	8
.L638:
	.sleb128	11
	.byte		"SchTblIdFrom"
	.byte		0
	.4byte		.L12007
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L639:
	.sleb128	11
	.byte		"SchTblIdTo"
	.byte		0
	.4byte		.L12007
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12010:
.L11932:
	.sleb128	10
	.4byte		.L11822
	.uleb128	60
	.uleb128	1
	.4byte		.L12011-.L2
	.uleb128	8
.L636:
	.sleb128	11
	.byte		"SchTblId"
	.byte		0
	.4byte		.L12007
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L637:
	.sleb128	11
	.byte		"SchTblStatus"
	.byte		0
	.4byte		.L12012
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12011:
.L11930:
	.sleb128	10
	.4byte		.L11822
	.uleb128	60
	.uleb128	1
	.4byte		.L12016-.L2
	.uleb128	4
.L635:
	.sleb128	11
	.byte		"SchTblId"
	.byte		0
	.4byte		.L12007
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12016:
.L11928:
	.sleb128	10
	.4byte		.L11822
	.uleb128	60
	.uleb128	1
	.4byte		.L12017-.L2
	.uleb128	8
.L633:
	.sleb128	11
	.byte		"SchTblId"
	.byte		0
	.4byte		.L12007
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L634:
	.sleb128	11
	.byte		"Offset"
	.byte		0
	.4byte		.L11996
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12017:
.L11926:
	.sleb128	10
	.4byte		.L11822
	.uleb128	60
	.uleb128	1
	.4byte		.L12018-.L2
	.uleb128	8
.L631:
	.sleb128	11
	.byte		"SchTblId"
	.byte		0
	.4byte		.L12007
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L632:
	.sleb128	11
	.byte		"Start"
	.byte		0
	.4byte		.L11996
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12018:
.L11924:
	.sleb128	10
	.4byte		.L11822
	.uleb128	60
	.uleb128	1
	.4byte		.L12019-.L2
	.uleb128	12
.L628:
	.sleb128	11
	.byte		"CounterId"
	.byte		0
	.4byte		.L12020
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L629:
	.sleb128	11
	.byte		"ValuePtr"
	.byte		0
	.4byte		.L11999
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L630:
	.sleb128	11
	.byte		"ElapsedValuePtr"
	.byte		0
	.4byte		.L11999
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L12019:
.L11922:
	.sleb128	10
	.4byte		.L11822
	.uleb128	60
	.uleb128	1
	.4byte		.L12021-.L2
	.uleb128	12
.L625:
	.sleb128	11
	.byte		"CounterId"
	.byte		0
	.4byte		.L12020
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L626:
	.sleb128	11
	.byte		"ValuePtr"
	.byte		0
	.4byte		.L11999
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L627:
	.sleb128	11
	.byte		"LightServiceFunction"
	.byte		0
	.4byte		.L12022
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L12021:
.L11920:
	.sleb128	10
	.4byte		.L11822
	.uleb128	60
	.uleb128	1
	.4byte		.L12026-.L2
	.uleb128	4
.L624:
	.sleb128	11
	.byte		"CounterId"
	.byte		0
	.4byte		.L12020
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12026:
.L11916:
	.sleb128	10
	.4byte		.L11822
	.uleb128	60
	.uleb128	1
	.4byte		.L12027-.L2
	.uleb128	4
.L623:
	.sleb128	11
	.byte		"ISRId"
	.byte		0
	.4byte		.L11846
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12027:
.L11912:
	.sleb128	10
	.4byte		.L11822
	.uleb128	60
	.uleb128	1
	.4byte		.L12028-.L2
	.uleb128	2
.L621:
	.sleb128	11
	.byte		"Application"
	.byte		0
	.4byte		.L11989
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L622:
	.sleb128	11
	.byte		"RestartOption"
	.byte		0
	.4byte		.L12029
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
	.sleb128	0
.L12028:
.L11914:
	.sleb128	10
	.4byte		.L11822
	.uleb128	60
	.uleb128	1
	.4byte		.L12030-.L2
	.uleb128	1
.L620:
	.sleb128	11
	.byte		"Application"
	.byte		0
	.4byte		.L11989
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12030:
.L11910:
	.sleb128	10
	.4byte		.L11822
	.uleb128	60
	.uleb128	1
	.4byte		.L12031-.L2
	.uleb128	8
.L618:
	.sleb128	11
	.byte		"Application"
	.byte		0
	.4byte		.L11989
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L619:
	.sleb128	11
	.byte		"AppStateRef"
	.byte		0
	.4byte		.L12032
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12031:
.L11894:
	.sleb128	10
	.4byte		.L11822
	.uleb128	60
	.uleb128	1
	.4byte		.L12035-.L2
	.uleb128	8
.L617:
	.sleb128	11
	.byte		"EventMask"
	.byte		0
	.4byte		.L12036
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12035:
.L11892:
	.sleb128	10
	.4byte		.L11822
	.uleb128	60
	.uleb128	1
	.4byte		.L12039-.L2
	.uleb128	24
.L614:
	.sleb128	11
	.byte		"TaskId"
	.byte		0
	.4byte		.L11981
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L615:
	.sleb128	11
	.byte		"EventMask"
	.byte		0
	.4byte		.L12036
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L616:
	.sleb128	11
	.byte		"EventMaskRef"
	.byte		0
	.4byte		.L12040
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L12039:
.L11890:
	.sleb128	10
	.4byte		.L11822
	.uleb128	60
	.uleb128	1
	.4byte		.L12042-.L2
	.uleb128	8
.L613:
	.sleb128	11
	.byte		"EventMask"
	.byte		0
	.4byte		.L12036
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12042:
.L11888:
	.sleb128	10
	.4byte		.L11822
	.uleb128	60
	.uleb128	1
	.4byte		.L12043-.L2
	.uleb128	16
.L611:
	.sleb128	11
	.byte		"TaskId"
	.byte		0
	.4byte		.L11981
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L612:
	.sleb128	11
	.byte		"EventMask"
	.byte		0
	.4byte		.L12036
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L12043:
.L11886:
	.sleb128	10
	.4byte		.L11822
	.uleb128	60
	.uleb128	1
	.4byte		.L12044-.L2
	.uleb128	8
.L609:
	.sleb128	11
	.byte		"TaskId"
	.byte		0
	.4byte		.L11981
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L610:
	.sleb128	11
	.byte		"TaskStateRef"
	.byte		0
	.4byte		.L12045
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12044:
.L11884:
	.sleb128	10
	.4byte		.L11822
	.uleb128	60
	.uleb128	1
	.4byte		.L12049-.L2
	.uleb128	4
.L608:
	.sleb128	11
	.byte		"TaskIdRef"
	.byte		0
	.4byte		.L12050
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12049:
.L11882:
	.sleb128	10
	.4byte		.L11822
	.uleb128	60
	.uleb128	1
	.4byte		.L12052-.L2
	.uleb128	4
.L607:
	.sleb128	11
	.byte		"TaskId"
	.byte		0
	.4byte		.L11981
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12052:
.L11880:
	.sleb128	10
	.4byte		.L11822
	.uleb128	60
	.uleb128	1
	.4byte		.L12053-.L2
	.uleb128	4
.L606:
	.sleb128	11
	.byte		"TaskId"
	.byte		0
	.4byte		.L11981
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12053:
.L11898:
	.sleb128	10
	.4byte		.L11822
	.uleb128	60
	.uleb128	1
	.4byte		.L12054-.L2
	.uleb128	4
.L605:
	.sleb128	11
	.byte		"ResourceId"
	.byte		0
	.4byte		.L12055
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12054:
.L11896:
	.sleb128	10
	.4byte		.L11822
	.uleb128	60
	.uleb128	1
	.4byte		.L12056-.L2
	.uleb128	4
.L604:
	.sleb128	11
	.byte		"ResourceId"
	.byte		0
	.4byte		.L12055
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12056:
.L11918:
	.sleb128	10
	.4byte		.L11822
	.uleb128	60
	.uleb128	1
	.4byte		.L12057-.L2
	.uleb128	4
.L603:
	.sleb128	11
	.byte		"AppMode"
	.byte		0
	.4byte		.L12058
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12057:
.L11878:
	.sleb128	10
	.4byte		.L11822
	.uleb128	60
	.uleb128	1
	.4byte		.L12059-.L2
	.uleb128	2
.L602:
	.sleb128	11
	.byte		"CoreID"
	.byte		0
	.4byte		.L11556
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12059:
.L11872:
	.sleb128	10
	.4byte		.L11822
	.uleb128	60
	.uleb128	1
	.4byte		.L12060-.L2
	.uleb128	2
.L601:
	.sleb128	11
	.byte		"NumberOfActivatedCores"
	.byte		0
	.4byte		.L11556
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12060:
.L11870:
	.sleb128	10
	.4byte		.L11822
	.uleb128	60
	.uleb128	1
	.4byte		.L12061-.L2
	.uleb128	1
.L600:
	.sleb128	11
	.byte		"Error"
	.byte		0
	.4byte		.L11851
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12061:
.L11868:
	.sleb128	10
	.4byte		.L11822
	.uleb128	60
	.uleb128	1
	.4byte		.L12062-.L2
	.uleb128	8
.L598:
	.sleb128	11
	.byte		"ShutdownType"
	.byte		0
	.4byte		.L12063
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L599:
	.sleb128	11
	.byte		"Error"
	.byte		0
	.4byte		.L11851
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12062:
.L11866:
	.sleb128	10
	.4byte		.L11822
	.uleb128	60
	.uleb128	1
	.4byte		.L12065-.L2
	.uleb128	1
.L597:
	.sleb128	11
	.byte		"Error"
	.byte		0
	.4byte		.L11851
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12065:
.L11876:
	.sleb128	10
	.4byte		.L11822
	.uleb128	60
	.uleb128	1
	.4byte		.L12066-.L2
	.uleb128	8
.L595:
	.sleb128	11
	.byte		"CoreID"
	.byte		0
	.4byte		.L11556
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L596:
	.sleb128	11
	.byte		"StatusRef"
	.byte		0
	.4byte		.L12067
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12066:
.L11874:
	.sleb128	10
	.4byte		.L11822
	.uleb128	60
	.uleb128	1
	.4byte		.L12068-.L2
	.uleb128	8
.L593:
	.sleb128	11
	.byte		"CoreID"
	.byte		0
	.4byte		.L11556
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L594:
	.sleb128	11
	.byte		"StatusRef"
	.byte		0
	.4byte		.L12067
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12068:
.L11864:
	.sleb128	10
	.4byte		.L11822
	.uleb128	60
	.uleb128	1
	.4byte		.L12069-.L2
	.uleb128	4
.L592:
	.sleb128	11
	.byte		"AppMode"
	.byte		0
	.4byte		.L12058
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12069:
.L11966:
	.sleb128	10
	.4byte		.L12070
	.uleb128	33
	.uleb128	14
	.4byte		.L12071-.L2
	.uleb128	24
.L585:
	.sleb128	11
	.byte		"Os_IOC_ChannelDyn"
	.byte		0
	.4byte		.L12072
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L586:
	.sleb128	11
	.byte		"Os_IOC_ChannelLength"
	.byte		0
	.4byte		.L12076
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L587:
	.sleb128	11
	.byte		"Os_IOC_ChannelBuffer"
	.byte		0
	.4byte		.L12077
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L588:
	.sleb128	11
	.byte		"Os_IOC_ChannelElementSize"
	.byte		0
	.4byte		.L12078
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L589:
	.sleb128	11
	.byte		"Os_IOC_DataCount"
	.byte		0
	.4byte		.L12079
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L590:
	.sleb128	11
	.byte		"Os_IOC_DataDescriptor"
	.byte		0
	.4byte		.L12081
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L591:
	.sleb128	11
	.byte		"Os_IOC_LockResourceAddress"
	.byte		0
	.4byte		.L12086
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L12071:
.L12085:
	.sleb128	10
	.4byte		.L12070
	.uleb128	33
	.uleb128	14
	.4byte		.L12089-.L2
	.uleb128	4
.L581:
	.sleb128	11
	.byte		"Os_IOC_DataLength"
	.byte		0
	.4byte		.L12090
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L582:
	.sleb128	11
	.byte		"Os_IOC_DataOffset"
	.byte		0
	.4byte		.L12092
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L12089:
.L12075:
	.sleb128	10
	.4byte		.L12070
	.uleb128	33
	.uleb128	14
	.4byte		.L12094-.L2
	.uleb128	6
.L578:
	.sleb128	11
	.byte		"Os_IOC_ChannelHead"
	.byte		0
	.4byte		.L12076
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L579:
	.sleb128	11
	.byte		"Os_IOC_ChannelMessageCount"
	.byte		0
	.4byte		.L12076
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L580:
	.sleb128	11
	.byte		"Os_IOC_Status"
	.byte		0
	.4byte		.L11851
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12094:
.L11815:
	.sleb128	10
	.4byte		.L12095
	.uleb128	34
	.uleb128	14
	.4byte		.L12096-.L2
	.uleb128	2
.L529:
	.sleb128	11
	.byte		"Os_HookID"
	.byte		0
	.4byte		.L12097
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12096:
.L11525:
	.sleb128	12
	.4byte		.L11742
	.uleb128	80
	.uleb128	13
	.4byte		.L12098-.L2
	.byte		"Os_ProcStatType_s"
	.byte		0
	.uleb128	80
.L511:
	.sleb128	11
	.byte		"Os_ProcId"
	.byte		0
	.4byte		.L12099
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L512:
	.sleb128	11
	.byte		"Os_ProcCoreID"
	.byte		0
	.4byte		.L11555
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L513:
	.sleb128	11
	.byte		"Os_ProcDyn"
	.byte		0
	.4byte		.L12100
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L514:
	.sleb128	11
	.byte		"Os_ProcStack"
	.byte		0
	.4byte		.L12104
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L515:
	.sleb128	11
	.byte		"Os_ProcKind"
	.byte		0
	.4byte		.L12109
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L516:
	.sleb128	11
	.byte		"Os_ProcEventRights"
	.byte		0
	.4byte		.L12112
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L517:
	.sleb128	11
	.byte		"Os_ProcPriority"
	.byte		0
	.4byte		.L11545
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L518:
	.sleb128	11
	.byte		"Os_ProcRunPriority"
	.byte		0
	.4byte		.L11545
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L519:
	.sleb128	11
	.byte		"Os_ProcMaxActivations"
	.byte		0
	.4byte		.L12113
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L520:
	.sleb128	11
	.byte		"Os_ProcContext"
	.byte		0
	.4byte		.L12114
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L521:
	.sleb128	11
	.byte		"Os_ProcOwnerApp"
	.byte		0
	.4byte		.L12115
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L522:
	.sleb128	11
	.byte		"Os_ProcAppAccess"
	.byte		0
	.4byte		.L12116
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L523:
	.sleb128	11
	.byte		"Os_ProcEntryPoint"
	.byte		0
	.4byte		.L12120
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L524:
	.sleb128	11
	.byte		"Os_ProcAutoStart"
	.byte		0
	.4byte		.L12116
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
.L525:
	.sleb128	11
	.byte		"Os_ProcResourceCount"
	.byte		0
	.4byte		.L12125
	.sleb128	2
	.byte		0x23
	.uleb128	64
	.byte		0x1
.L526:
	.sleb128	11
	.byte		"Os_ProcResourceStack"
	.byte		0
	.4byte		.L12126
	.sleb128	2
	.byte		0x23
	.uleb128	68
	.byte		0x1
.L527:
	.sleb128	11
	.byte		"Os_ProcQueueElements"
	.byte		0
	.4byte		.L12132
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.byte		0x1
.L528:
	.sleb128	11
	.byte		"Os_ProcIsrPlatformConfig"
	.byte		0
	.4byte		.L12133
	.sleb128	2
	.byte		0x23
	.uleb128	76
	.byte		0x1
	.sleb128	0
.L12098:
.L12108:
	.sleb128	12
	.4byte		.L11742
	.uleb128	80
	.uleb128	13
	.4byte		.L12134-.L2
	.byte		"Os_ProcStackStruct"
	.byte		0
	.uleb128	8
.L509:
	.sleb128	11
	.byte		"Os_ProcStackSize"
	.byte		0
	.4byte		.L12135
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L510:
	.sleb128	11
	.byte		"Os_ProcStackBase"
	.byte		0
	.4byte		.L12114
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12134:
.L12103:
	.sleb128	10
	.4byte		.L11742
	.uleb128	80
	.uleb128	13
	.4byte		.L12137-.L2
	.uleb128	56
.L496:
	.sleb128	11
	.byte		"Os_ProcState"
	.byte		0
	.4byte		.L12047
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L497:
	.sleb128	11
	.byte		"Os_ProcContextState"
	.byte		0
	.4byte		.L12138
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L498:
	.sleb128	11
	.byte		"Os_ProcEvents"
	.byte		0
	.4byte		.L12036
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L499:
	.sleb128	11
	.byte		"Os_ProcEventWaitingFor"
	.byte		0
	.4byte		.L12036
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L500:
	.sleb128	11
	.byte		"Os_ProcActivations"
	.byte		0
	.4byte		.L11552
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L501:
	.sleb128	11
	.byte		"Os_ProcResourcesAllocated"
	.byte		0
	.4byte		.L12055
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L502:
	.sleb128	11
	.byte		"Os_ProcEnabled"
	.byte		0
	.4byte		.L11852
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L503:
	.sleb128	11
	.byte		"Os_ProcCurrentApp"
	.byte		0
	.4byte		.L11802
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L504:
	.sleb128	11
	.byte		"Os_ProcSpinlock"
	.byte		0
	.4byte		.L12140
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L505:
	.sleb128	11
	.byte		"Os_ProcFreeQueueElements"
	.byte		0
	.4byte		.L11534
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L506:
	.sleb128	11
	.byte		"Os_ProcCurrentPriority"
	.byte		0
	.4byte		.L11546
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L507:
	.sleb128	11
	.byte		"Os_ProcTFCallCount"
	.byte		0
	.4byte		.L11852
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L508:
	.sleb128	11
	.byte		"Os_FatalErrorOccured"
	.byte		0
	.4byte		.L11851
	.sleb128	2
	.byte		0x23
	.uleb128	53
	.byte		0x1
	.sleb128	0
.L12137:
.L12142:
	.sleb128	12
	.4byte		.L12143
	.uleb128	52
	.uleb128	1
	.4byte		.L12144-.L2
	.byte		"Os_SpinlockStatType_s"
	.byte		0
	.uleb128	16
.L448:
	.sleb128	11
	.byte		"Os_SpinlockId"
	.byte		0
	.4byte		.L12145
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L449:
	.sleb128	11
	.byte		"Os_SpinlockChainId"
	.byte		0
	.4byte		.L12145
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L450:
	.sleb128	11
	.byte		"Os_SpinlockDyn"
	.byte		0
	.4byte		.L12146
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L451:
	.sleb128	11
	.byte		"Os_SpinlockAccess"
	.byte		0
	.4byte		.L12116
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L452:
	.sleb128	11
	.byte		"Os_SpinlockLockResourceAddress"
	.byte		0
	.4byte		.L12086
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L12144:
.L12149:
	.sleb128	10
	.4byte		.L12143
	.uleb128	52
	.uleb128	1
	.4byte		.L12150-.L2
	.uleb128	12
.L445:
	.sleb128	11
	.byte		"Os_SpinlockLockerProc"
	.byte		0
	.4byte		.L11817
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L446:
	.sleb128	11
	.byte		"Os_SpinlockSuperseded"
	.byte		0
	.4byte		.L12140
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L447:
	.sleb128	11
	.byte		"Os_ResourceDependency"
	.byte		0
	.4byte		.L12128
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L12150:
.L11805:
	.sleb128	12
	.4byte		.L12143
	.uleb128	52
	.uleb128	1
	.4byte		.L12151-.L2
	.byte		"Os_ApplicationStatType_s"
	.byte		0
	.uleb128	48
.L433:
	.sleb128	11
	.byte		"Os_AppDyn"
	.byte		0
	.4byte		.L12152
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L434:
	.sleb128	11
	.byte		"Os_AppId"
	.byte		0
	.4byte		.L12156
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L435:
	.sleb128	11
	.byte		"Os_AppRestartTask"
	.byte		0
	.4byte		.L12099
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L436:
	.sleb128	11
	.byte		"Os_AppKind"
	.byte		0
	.4byte		.L12157
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L437:
	.sleb128	11
	.byte		"Os_AppShutdownHook"
	.byte		0
	.4byte		.L12160
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L438:
	.sleb128	11
	.byte		"Os_AppStartupHook"
	.byte		0
	.4byte		.L12165
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L439:
	.sleb128	11
	.byte		"Os_AppErrorHook"
	.byte		0
	.4byte		.L12170
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L440:
	.sleb128	11
	.byte		"Os_AppProcIDs"
	.byte		0
	.4byte		.L12175
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L441:
	.sleb128	11
	.byte		"Os_AppCounterIDs"
	.byte		0
	.4byte		.L12178
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L442:
	.sleb128	11
	.byte		"Os_AppAlarmIDs"
	.byte		0
	.4byte		.L12181
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L443:
	.sleb128	11
	.byte		"Os_AppSchTblIDs"
	.byte		0
	.4byte		.L12184
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L444:
	.sleb128	11
	.byte		"Os_CoreAssigment"
	.byte		0
	.4byte		.L11555
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
	.sleb128	0
.L12151:
.L12155:
	.sleb128	10
	.4byte		.L12143
	.uleb128	52
	.uleb128	1
	.4byte		.L12187-.L2
	.uleb128	1
.L432:
	.sleb128	11
	.byte		"Os_AppState"
	.byte		0
	.4byte		.L12034
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12187:
.L12131:
	.sleb128	10
	.4byte		.L12188
	.uleb128	32
	.uleb128	1
	.4byte		.L12189-.L2
	.uleb128	12
.L429:
	.sleb128	11
	.byte		"Os_ResourcePriority"
	.byte		0
	.4byte		.L11545
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L430:
	.sleb128	11
	.byte		"Os_ResourceAccessRights"
	.byte		0
	.4byte		.L12117
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L431:
	.sleb128	11
	.byte		"Os_ResourceDyn"
	.byte		0
	.4byte		.L12190
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L12189:
.L12192:
	.sleb128	10
	.4byte		.L12188
	.uleb128	32
	.uleb128	1
	.4byte		.L12193-.L2
	.uleb128	4
.L428:
	.sleb128	11
	.byte		"Os_LockerProc"
	.byte		0
	.4byte		.L11817
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12193:
.L11810:
	.sleb128	10
	.4byte		.L12188
	.uleb128	32
	.uleb128	1
	.4byte		.L12194-.L2
	.uleb128	144
.L423:
	.sleb128	11
	.byte		"Os_Error"
	.byte		0
	.4byte		.L12195
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L424:
	.sleb128	11
	.byte		"Os_ExceptionStatus"
	.byte		0
	.4byte		.L12197
	.sleb128	2
	.byte		0x23
	.uleb128	120
	.byte		0x1
	.sleb128	0
.L12194:
.L11839:
	.sleb128	10
	.4byte		.L12188
	.uleb128	32
	.uleb128	1
	.4byte		.L12199-.L2
	.uleb128	24
.L417:
	.sleb128	11
	.byte		"Os_DisAllInt"
	.byte		0
	.4byte		.L12200
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L418:
	.sleb128	11
	.byte		"Os_EnAllInt"
	.byte		0
	.4byte		.L12200
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L419:
	.sleb128	11
	.byte		"Os_SusAllInt"
	.byte		0
	.4byte		.L12200
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L420:
	.sleb128	11
	.byte		"Os_ResAllInt"
	.byte		0
	.4byte		.L12200
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L421:
	.sleb128	11
	.byte		"Os_SusOsInt"
	.byte		0
	.4byte		.L12200
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L422:
	.sleb128	11
	.byte		"Os_ResOsInt"
	.byte		0
	.4byte		.L12200
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L12199:
.L12198:
	.sleb128	10
	.4byte		.L12188
	.uleb128	32
	.uleb128	1
	.4byte		.L12205-.L2
	.uleb128	20
.L412:
	.sleb128	11
	.byte		"Os_ExceptionType"
	.byte		0
	.4byte		.L12206
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L413:
	.sleb128	11
	.byte		"Os_ExceptionCause"
	.byte		0
	.4byte		.L11547
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L414:
	.sleb128	11
	.byte		"Os_ExceptionAuxiliaryCause"
	.byte		0
	.4byte		.L11547
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L415:
	.sleb128	11
	.byte		"Os_ExceptionExecutionAddress"
	.byte		0
	.4byte		.L11796
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L416:
	.sleb128	11
	.byte		"Os_ExceptionAccessAddress"
	.byte		0
	.4byte		.L11796
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L12205:
.L12196:
	.sleb128	10
	.4byte		.L12208
	.uleb128	174
	.uleb128	1
	.4byte		.L12209-.L2
	.uleb128	120
.L409:
	.sleb128	11
	.byte		"Os_ShutdownError"
	.byte		0
	.4byte		.L12210
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L410:
	.sleb128	11
	.byte		"Os_ParameterError"
	.byte		0
	.4byte		.L12212
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L411:
	.sleb128	11
	.byte		"Os_ServiceError"
	.byte		0
	.4byte		.L12214
	.sleb128	2
	.byte		0x23
	.uleb128	112
	.byte		0x1
	.sleb128	0
.L12209:
.L12215:
	.sleb128	10
	.4byte		.L12208
	.uleb128	174
	.uleb128	1
	.4byte		.L12216-.L2
	.uleb128	8
.L406:
	.sleb128	11
	.byte		"Os_ServiceTrace"
	.byte		0
	.4byte		.L12217
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L407:
	.sleb128	11
	.byte		"Os_LastError"
	.byte		0
	.4byte		.L11851
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L408:
	.sleb128	11
	.byte		"Os_FaultyServiceId"
	.byte		0
	.4byte		.L12218
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12216:
.L12213:
	.sleb128	10
	.4byte		.L12208
	.uleb128	174
	.uleb128	1
	.4byte		.L12220-.L2
	.uleb128	104
.L381:
	.sleb128	11
	.byte		"Os_Err_TaskID"
	.byte		0
	.4byte		.L11981
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L382:
	.sleb128	11
	.byte		"Os_Err_ResID"
	.byte		0
	.4byte		.L12055
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L383:
	.sleb128	11
	.byte		"Os_Err_MaskType_Mask"
	.byte		0
	.4byte		.L12036
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L384:
	.sleb128	11
	.byte		"Os_Err_AlarmID"
	.byte		0
	.4byte		.L11994
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L385:
	.sleb128	11
	.byte		"Os_Err_TicksStart"
	.byte		0
	.4byte		.L11996
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L386:
	.sleb128	11
	.byte		"Os_Err_TicksCycle"
	.byte		0
	.4byte		.L11996
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L387:
	.sleb128	11
	.byte		"Os_Err_FuncIndex"
	.byte		0
	.4byte		.L11984
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L388:
	.sleb128	11
	.byte		"Os_Err_FuncParamRefType"
	.byte		0
	.4byte		.L11985
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L389:
	.sleb128	11
	.byte		"Os_Err_ApplID"
	.byte		0
	.4byte		.L11989
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L390:
	.sleb128	11
	.byte		"Os_Err_ApplStateRefType"
	.byte		0
	.4byte		.L12032
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L391:
	.sleb128	11
	.byte		"Os_Err_ObjType"
	.byte		0
	.4byte		.L11990
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L392:
	.sleb128	11
	.byte		"Os_Err_SchedID"
	.byte		0
	.4byte		.L12007
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L393:
	.sleb128	11
	.byte		"Os_Err_SchedID_Next"
	.byte		0
	.4byte		.L12007
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L394:
	.sleb128	11
	.byte		"Os_Err_CntID"
	.byte		0
	.4byte		.L12020
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L395:
	.sleb128	11
	.byte		"Os_Err_RestartType"
	.byte		0
	.4byte		.L12029
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
.L396:
	.sleb128	11
	.byte		"Os_Err_MaskRefType"
	.byte		0
	.4byte		.L12040
	.sleb128	2
	.byte		0x23
	.uleb128	64
	.byte		0x1
.L397:
	.sleb128	11
	.byte		"Os_Err_TaskStateRef"
	.byte		0
	.4byte		.L12045
	.sleb128	2
	.byte		0x23
	.uleb128	68
	.byte		0x1
.L398:
	.sleb128	11
	.byte		"Os_Err_TickRef_Ticks"
	.byte		0
	.4byte		.L11999
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.byte		0x1
.L399:
	.sleb128	11
	.byte		"Os_Err_AlarmBaseRefType_Info"
	.byte		0
	.4byte		.L12002
	.sleb128	2
	.byte		0x23
	.uleb128	76
	.byte		0x1
.L400:
	.sleb128	11
	.byte		"Os_Err_TaskIDRef"
	.byte		0
	.4byte		.L12050
	.sleb128	2
	.byte		0x23
	.uleb128	80
	.byte		0x1
.L401:
	.sleb128	11
	.byte		"Os_Err_TblStatusRefType"
	.byte		0
	.4byte		.L12012
	.sleb128	2
	.byte		0x23
	.uleb128	84
	.byte		0x1
.L402:
	.sleb128	11
	.byte		"Os_Err_TickRef_ElapsedTicks"
	.byte		0
	.4byte		.L11999
	.sleb128	2
	.byte		0x23
	.uleb128	88
	.byte		0x1
.L403:
	.sleb128	11
	.byte		"Os_Err_ObjObj"
	.byte		0
	.4byte		.L11562
	.sleb128	2
	.byte		0x23
	.uleb128	92
	.byte		0x1
.L404:
	.sleb128	11
	.byte		"Os_Err_SpinlockID"
	.byte		0
	.4byte		.L11974
	.sleb128	2
	.byte		0x23
	.uleb128	96
	.byte		0x1
.L405:
	.sleb128	11
	.byte		"Os_Err_TryToGetSpinlockRef"
	.byte		0
	.4byte		.L12221
	.sleb128	2
	.byte		0x23
	.uleb128	100
	.byte		0x1
	.sleb128	0
.L12220:
.L12211:
	.sleb128	10
	.4byte		.L12208
	.uleb128	174
	.uleb128	1
	.4byte		.L12222-.L2
	.uleb128	8
.L379:
	.sleb128	11
	.byte		"Os_ShutdownErrorCode"
	.byte		0
	.4byte		.L11851
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L380:
	.sleb128	11
	.byte		"Os_ShutdownInternalErrorCode"
	.byte		0
	.4byte		.L12223
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12222:
.L12005:
	.sleb128	10
	.4byte		.L12225
	.uleb128	50
	.uleb128	1
	.4byte		.L12226-.L2
	.uleb128	12
.L376:
	.sleb128	11
	.byte		"maxallowedvalue"
	.byte		0
	.4byte		.L11996
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L377:
	.sleb128	11
	.byte		"ticksperbase"
	.byte		0
	.4byte		.L11996
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L378:
	.sleb128	11
	.byte		"mincycle"
	.byte		0
	.4byte		.L11996
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L12226:
.L11750:
	.sleb128	10
	.4byte		.L12225
	.uleb128	50
	.uleb128	1
	.4byte		.L12227-.L2
	.uleb128	8
.L374:
	.sleb128	11
	.byte		"Os_ObjStartId"
	.byte		0
	.4byte		.L11562
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L375:
	.sleb128	11
	.byte		"Os_ObjEndId"
	.byte		0
	.4byte		.L11562
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12227:
.L11835:
	.sleb128	10
	.4byte		.L12228
	.uleb128	87
	.uleb128	7
	.4byte		.L12229-.L2
	.uleb128	8
.L364:
	.sleb128	11
	.byte		"Os_IsrPltId"
	.byte		0
	.4byte		.L11824
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L365:
	.sleb128	11
	.byte		"Os_IsrPltLevel"
	.byte		0
	.4byte		.L12230
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12229:
	.section	.debug_info,,n
.L11821:
	.sleb128	14
	.4byte		.L11752
	.uleb128	69
	.uleb128	1
	.4byte		.L12232-.L2
	.uleb128	4
	.section	.debug_info,,n
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
.L12232:
.L11845:
	.sleb128	14
	.4byte		.L11822
	.uleb128	612
	.uleb128	1
	.4byte		.L12233-.L2
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
.L12233:
.L11854:
	.sleb128	14
	.4byte		.L11822
	.uleb128	60
	.uleb128	1
	.4byte		.L12234-.L2
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
.L12234:
	.section	.debug_info,,n
.L11987:
	.sleb128	16
	.4byte		.L12070
	.uleb128	33
	.uleb128	14
	.4byte		.L12235-.L2
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
.L12235:
.L12139:
	.sleb128	14
	.4byte		.L11742
	.uleb128	80
	.uleb128	13
	.4byte		.L12236-.L2
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
.L12236:
.L12111:
	.sleb128	14
	.4byte		.L11742
	.uleb128	61
	.uleb128	1
	.4byte		.L12237-.L2
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
.L12237:
.L12159:
	.sleb128	14
	.4byte		.L12143
	.uleb128	52
	.uleb128	1
	.4byte		.L12238-.L2
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
.L12238:
.L12207:
	.sleb128	14
	.4byte		.L12188
	.uleb128	32
	.uleb128	1
	.4byte		.L12239-.L2
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
.L12239:
.L12224:
	.sleb128	14
	.4byte		.L12208
	.uleb128	174
	.uleb128	1
	.4byte		.L12240-.L2
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
.L12240:
.L12219:
	.sleb128	14
	.4byte		.L12208
	.uleb128	86
	.uleb128	1
	.4byte		.L12241-.L2
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
.L12241:
.L11977:
	.sleb128	14
	.4byte		.L12242
	.uleb128	43
	.uleb128	1
	.4byte		.L12243-.L2
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
.L12243:
.L12048:
	.sleb128	14
	.4byte		.L12244
	.uleb128	37
	.uleb128	1
	.4byte		.L12245-.L2
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
.L12245:
.L12015:
	.sleb128	14
	.4byte		.L12246
	.uleb128	40
	.uleb128	1
	.4byte		.L12247-.L2
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
.L12247:
.L11991:
	.sleb128	14
	.4byte		.L12248
	.uleb128	47
	.uleb128	1
	.4byte		.L12249-.L2
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
.L12249:
.L11664:
	.sleb128	14
	.4byte		.L12225
	.uleb128	50
	.uleb128	1
	.4byte		.L12250-.L2
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
.L12250:
.L12064:
	.sleb128	14
	.4byte		.L12225
	.uleb128	42
	.uleb128	13
	.4byte		.L12251-.L2
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
.L12251:
.L11961:
	.sleb128	14
	.4byte		.L12252
	.uleb128	83
	.uleb128	14
	.4byte		.L12253-.L2
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
.L12253:
	.section	.debug_info,,n
.L11524:
	.sleb128	17
	.byte		"Os_ProcStatType"
	.byte		0
	.4byte		.L11525
	.section	.debug_info,,n
.L11523:
	.sleb128	18
	.4byte		.L11524
	.section	.debug_info,,n
.L11522:
	.sleb128	19
	.4byte		.L11523
.L11530:
	.sleb128	17
	.byte		"Os_SchedulerDynType"
	.byte		0
	.4byte		.L11531
.L11529:
	.sleb128	18
	.4byte		.L11530
.L11528:
	.sleb128	19
	.4byte		.L11529
.L11527:
	.sleb128	18
	.4byte		.L11528
.L11534:
	.sleb128	19
	.4byte		.L11535
.L11543:
	.sleb128	18
	.4byte		.L11522
	.section	.debug_info,,n
.L11548:
	.sleb128	20
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L11547:
	.sleb128	17
	.byte		"uint32"
	.byte		0
	.4byte		.L11548
.L11546:
	.sleb128	17
	.byte		"Os_PriorityType"
	.byte		0
	.4byte		.L11547
.L11545:
	.sleb128	18
	.4byte		.L11546
.L11552:
	.sleb128	17
	.byte		"Os_ActivationCountType"
	.byte		0
	.4byte		.L11547
.L11551:
	.sleb128	19
	.4byte		.L11552
.L11550:
	.sleb128	18
	.4byte		.L11551
.L11558:
	.sleb128	20
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L11557:
	.sleb128	17
	.byte		"uint16"
	.byte		0
	.4byte		.L11558
.L11556:
	.sleb128	17
	.byte		"CoreIdType"
	.byte		0
	.4byte		.L11557
.L11555:
	.sleb128	18
	.4byte		.L11556
.L11562:
	.sleb128	17
	.byte		"Os_ObjectType"
	.byte		0
	.4byte		.L11547
.L11561:
	.sleb128	17
	.byte		"ProcType"
	.byte		0
	.4byte		.L11562
.L11580:
	.sleb128	17
	.byte		"Os_SchedulerQueueElementType"
	.byte		0
	.4byte		.L11535
.L11579:
	.sleb128	19
	.4byte		.L11580
.L11591:
	.sleb128	17
	.byte		"Os_SchedulerQueueStructureType"
	.byte		0
	.4byte		.L11592
.L11590:
	.sleb128	18
	.4byte		.L11591
.L11589:
	.sleb128	19
	.4byte		.L11590
.L11588:
	.sleb128	18
	.4byte		.L11589
.L11596:
	.sleb128	17
	.byte		"Os_SchedulerQueueType"
	.byte		0
	.4byte		.L11597
.L11595:
	.sleb128	19
	.4byte		.L11596
.L11608:
	.sleb128	18
	.4byte		.L11596
.L11607:
	.sleb128	19
	.4byte		.L11608
.L11606:
	.sleb128	18
	.4byte		.L11607
.L11663:
	.sleb128	17
	.byte		"Os_BoolType"
	.byte		0
	.4byte		.L11664
.L11662:
	.sleb128	18
	.4byte		.L11663
.L11696:
	.sleb128	19
	.4byte		.L11530
.L11695:
	.sleb128	18
	.4byte		.L11696
	.section	.debug_info,,n
.L11743:
	.sleb128	21
	.4byte		.L11744-.L2
	.4byte		.L11523
	.section	.debug_info,,n
	.sleb128	22
	.sleb128	0
.L11744:
.L11749:
	.sleb128	17
	.byte		"Os_ObjectRangeType"
	.byte		0
	.4byte		.L11750
.L11748:
	.sleb128	18
	.4byte		.L11749
.L11746:
	.sleb128	21
	.4byte		.L11747-.L2
	.4byte		.L11748
	.section	.debug_info,,n
	.sleb128	23
	.uleb128	1
	.sleb128	0
.L11747:
.L11753:
	.sleb128	21
	.4byte		.L11754-.L2
	.4byte		.L11590
	.sleb128	23
	.uleb128	1
	.sleb128	0
.L11754:
.L11760:
	.sleb128	17
	.byte		"Os_Core_StatType"
	.byte		0
	.4byte		.L11761
.L11759:
	.sleb128	18
	.4byte		.L11760
.L11757:
	.sleb128	21
	.4byte		.L11758-.L2
	.4byte		.L11759
	.sleb128	23
	.uleb128	1
	.sleb128	0
.L11758:
.L11765:
	.sleb128	17
	.byte		"Os_Core_DynSharedType"
	.byte		0
	.4byte		.L11766
.L11763:
	.sleb128	21
	.4byte		.L11764-.L2
	.4byte		.L11765
	.sleb128	23
	.uleb128	1
	.sleb128	0
.L11764:
.L11771:
	.sleb128	17
	.byte		"Os_IsrRegister_t"
	.byte		0
	.4byte		.L11547
.L11769:
	.sleb128	21
	.4byte		.L11770-.L2
	.4byte		.L11771
	.sleb128	23
	.uleb128	1
	.sleb128	0
.L11770:
.L11775:
	.sleb128	17
	.byte		"Os_Core_DynInitType"
	.byte		0
	.4byte		.L11776
.L11774:
	.sleb128	19
	.4byte		.L11775
.L11773:
	.sleb128	18
	.4byte		.L11774
.L11779:
	.sleb128	17
	.byte		"Os_Core_DynType"
	.byte		0
	.4byte		.L11780
.L11778:
	.sleb128	19
	.4byte		.L11779
.L11777:
	.sleb128	18
	.4byte		.L11778
.L11783:
	.sleb128	17
	.byte		"Os_DispatchElementType"
	.byte		0
	.4byte		.L11784
.L11782:
	.sleb128	19
	.4byte		.L11783
.L11781:
	.sleb128	18
	.4byte		.L11782
	.section	.debug_info,,n
.L11788:
	.sleb128	24
	.4byte		.L11789-.L2
	.byte		0x1
	.section	.debug_info,,n
	.sleb128	25
	.4byte		.L11543
	.sleb128	0
.L11789:
.L11787:
	.sleb128	19
	.4byte		.L11788
.L11786:
	.sleb128	17
	.byte		"Os_PrepareContextFunctionType"
	.byte		0
	.4byte		.L11787
.L11785:
	.sleb128	18
	.4byte		.L11786
.L11796:
	.sleb128	17
	.byte		"Os_StackType"
	.byte		0
	.4byte		.L11547
.L11795:
	.sleb128	19
	.4byte		.L11796
	.section	.debug_info,,n
.L11793:
	.sleb128	26
	.4byte		.L11794-.L2
	.4byte		.L11795
	.byte		0x1
	.sleb128	25
	.4byte		.L11522
	.sleb128	0
.L11794:
.L11792:
	.sleb128	19
	.4byte		.L11793
.L11791:
	.sleb128	17
	.byte		"Os_GetStackPointerFunctionType"
	.byte		0
	.4byte		.L11792
.L11790:
	.sleb128	18
	.4byte		.L11791
.L11798:
	.sleb128	17
	.byte		"Os_IsrDynInitType"
	.byte		0
	.4byte		.L11799
.L11800:
	.sleb128	17
	.byte		"Os_SchedulerDynInitType"
	.byte		0
	.4byte		.L11801
.L11804:
	.sleb128	17
	.byte		"Os_ApplicationStatType"
	.byte		0
	.4byte		.L11805
.L11803:
	.sleb128	18
	.4byte		.L11804
.L11802:
	.sleb128	19
	.4byte		.L11803
.L11807:
	.sleb128	17
	.byte		"Os_DispatcherType"
	.byte		0
	.4byte		.L11808
.L11809:
	.sleb128	17
	.byte		"Os_PublicData_NoInitType"
	.byte		0
	.4byte		.L11810
.L11812:
	.sleb128	17
	.byte		"Os_IsrDynType"
	.byte		0
	.4byte		.L11813
.L11814:
	.sleb128	17
	.byte		"Os_HooksDynType"
	.byte		0
	.4byte		.L11815
.L11818:
	.sleb128	18
	.4byte		.L11525
.L11817:
	.sleb128	19
	.4byte		.L11818
.L11820:
	.sleb128	17
	.byte		"Os_ScheduleType"
	.byte		0
	.4byte		.L11821
.L11824:
	.sleb128	18
	.4byte		.L11547
.L11825:
	.sleb128	18
	.4byte		.L11595
.L11830:
	.sleb128	20
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L11829:
	.sleb128	17
	.byte		"boolean"
	.byte		0
	.4byte		.L11830
.L11834:
	.sleb128	17
	.byte		"Os_IsrPlatformConfigType"
	.byte		0
	.4byte		.L11835
.L11833:
	.sleb128	18
	.4byte		.L11834
.L11832:
	.sleb128	19
	.4byte		.L11833
.L11838:
	.sleb128	17
	.byte		"Os_IsrApiTable"
	.byte		0
	.4byte		.L11839
.L11837:
	.sleb128	18
	.4byte		.L11838
.L11836:
	.sleb128	19
	.4byte		.L11837
.L11840:
	.sleb128	21
	.4byte		.L11841-.L2
	.4byte		.L11547
	.sleb128	23
	.uleb128	7
	.sleb128	0
.L11841:
.L11844:
	.sleb128	17
	.byte		"Os_DispatchKindType"
	.byte		0
	.4byte		.L11845
.L11846:
	.sleb128	17
	.byte		"ISRType"
	.byte		0
	.4byte		.L11561
.L11848:
	.sleb128	17
	.byte		"Os_APICallType"
	.byte		0
	.4byte		.L11849
.L11847:
	.sleb128	19
	.4byte		.L11848
.L11852:
	.sleb128	17
	.byte		"uint8"
	.byte		0
	.4byte		.L11830
.L11851:
	.sleb128	17
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L11852
.L11853:
	.sleb128	17
	.byte		"Os_API_LockType"
	.byte		0
	.4byte		.L11854
.L11857:
	.sleb128	24
	.4byte		.L11858-.L2
	.byte		0x1
.L11859:
	.sleb128	19
	.4byte		.L11849
	.sleb128	25
	.4byte		.L11859
.L11860:
	.sleb128	18
	.4byte		.L11817
	.sleb128	25
	.4byte		.L11860
	.sleb128	0
.L11858:
.L11856:
	.sleb128	19
	.4byte		.L11857
.L11855:
	.sleb128	17
	.byte		"Os_API_Func_Type"
	.byte		0
	.4byte		.L11856
.L11863:
	.sleb128	17
	.byte		"Os_API_StartOsType"
	.byte		0
	.4byte		.L11864
.L11865:
	.sleb128	17
	.byte		"Os_API_ShutdownOsType"
	.byte		0
	.4byte		.L11866
.L11867:
	.sleb128	17
	.byte		"Os_API_ShutdownOsInternalType"
	.byte		0
	.4byte		.L11868
.L11869:
	.sleb128	17
	.byte		"Os_API_ShutdownAllCoresType"
	.byte		0
	.4byte		.L11870
.L11871:
	.sleb128	17
	.byte		"Os_API_GetNumberOfActivatedCoresType"
	.byte		0
	.4byte		.L11872
.L11873:
	.sleb128	17
	.byte		"Os_API_ApiStartCoreType"
	.byte		0
	.4byte		.L11874
.L11875:
	.sleb128	17
	.byte		"Os_API_StartNonAutosarCoreType"
	.byte		0
	.4byte		.L11876
.L11877:
	.sleb128	17
	.byte		"Os_API_GetCoreIDType"
	.byte		0
	.4byte		.L11878
.L11879:
	.sleb128	17
	.byte		"Os_API_ActivateTaskType"
	.byte		0
	.4byte		.L11880
.L11881:
	.sleb128	17
	.byte		"Os_API_ChainTaskType"
	.byte		0
	.4byte		.L11882
.L11883:
	.sleb128	17
	.byte		"Os_API_GetTaskIDType"
	.byte		0
	.4byte		.L11884
.L11885:
	.sleb128	17
	.byte		"Os_API_GetTaskStateType"
	.byte		0
	.4byte		.L11886
.L11887:
	.sleb128	17
	.byte		"Os_API_SetEventType"
	.byte		0
	.4byte		.L11888
.L11889:
	.sleb128	17
	.byte		"Os_API_ClearEventType"
	.byte		0
	.4byte		.L11890
.L11891:
	.sleb128	17
	.byte		"Os_API_GetEventType"
	.byte		0
	.4byte		.L11892
.L11893:
	.sleb128	17
	.byte		"Os_API_WaitEventType"
	.byte		0
	.4byte		.L11894
.L11895:
	.sleb128	17
	.byte		"Os_API_GetResourceType"
	.byte		0
	.4byte		.L11896
.L11897:
	.sleb128	17
	.byte		"Os_API_ReleaseResourceType"
	.byte		0
	.4byte		.L11898
.L11899:
	.sleb128	17
	.byte		"Os_API_GetAlarmBaseType"
	.byte		0
	.4byte		.L11900
.L11901:
	.sleb128	17
	.byte		"Os_API_GetAlarmType"
	.byte		0
	.4byte		.L11902
.L11903:
	.sleb128	17
	.byte		"Os_API_SetRelAlarmType"
	.byte		0
	.4byte		.L11904
.L11905:
	.sleb128	17
	.byte		"Os_API_SetAbsAlarmType"
	.byte		0
	.4byte		.L11906
.L11907:
	.sleb128	17
	.byte		"Os_API_CancelAlarmType"
	.byte		0
	.4byte		.L11908
.L11909:
	.sleb128	17
	.byte		"Os_API_GetApplicationStateType"
	.byte		0
	.4byte		.L11910
.L11911:
	.sleb128	17
	.byte		"Os_API_TerminateApplicationType"
	.byte		0
	.4byte		.L11912
.L11913:
	.sleb128	17
	.byte		"Os_API_GetApplicationIDType"
	.byte		0
	.4byte		.L11914
.L11915:
	.sleb128	17
	.byte		"Os_API_GetISRIDType"
	.byte		0
	.4byte		.L11916
.L11917:
	.sleb128	17
	.byte		"Os_API_GetActiveApplicationModeType"
	.byte		0
	.4byte		.L11918
.L11919:
	.sleb128	17
	.byte		"Os_API_IncrementCounterType"
	.byte		0
	.4byte		.L11920
.L11921:
	.sleb128	17
	.byte		"Os_API_GetCounterValueType"
	.byte		0
	.4byte		.L11922
.L11923:
	.sleb128	17
	.byte		"Os_API_GetElapsedValueType"
	.byte		0
	.4byte		.L11924
.L11925:
	.sleb128	17
	.byte		"Os_API_StartScheduleTableAbsType"
	.byte		0
	.4byte		.L11926
.L11927:
	.sleb128	17
	.byte		"Os_API_StartScheduleTableRelType"
	.byte		0
	.4byte		.L11928
.L11929:
	.sleb128	17
	.byte		"Os_API_StopScheduleTableType"
	.byte		0
	.4byte		.L11930
.L11931:
	.sleb128	17
	.byte		"Os_API_GetScheduleTableStatusType"
	.byte		0
	.4byte		.L11932
.L11933:
	.sleb128	17
	.byte		"Os_API_NextScheduleTableType"
	.byte		0
	.4byte		.L11934
.L11935:
	.sleb128	17
	.byte		"Os_API_StartScheduleTableSynchronType"
	.byte		0
	.4byte		.L11936
.L11937:
	.sleb128	17
	.byte		"Os_API_SyncScheduleTableType"
	.byte		0
	.4byte		.L11938
.L11939:
	.sleb128	17
	.byte		"Os_API_SetScheduleTableAsyncType"
	.byte		0
	.4byte		.L11940
.L11941:
	.sleb128	17
	.byte		"Os_API_CheckObjectAccessType"
	.byte		0
	.4byte		.L11942
.L11943:
	.sleb128	17
	.byte		"Os_API_CheckObjectOwnershipType"
	.byte		0
	.4byte		.L11944
.L11945:
	.sleb128	17
	.byte		"Os_API_CallTrustedFunctionType"
	.byte		0
	.4byte		.L11946
.L11947:
	.sleb128	17
	.byte		"Os_API_StackUsageType"
	.byte		0
	.4byte		.L11948
.L11949:
	.sleb128	17
	.byte		"Os_API_GetSpinlockType"
	.byte		0
	.4byte		.L11950
.L11951:
	.sleb128	17
	.byte		"Os_API_ReleaseSpinlockType"
	.byte		0
	.4byte		.L11952
.L11953:
	.sleb128	17
	.byte		"Os_API_TryToGetSpinlockType"
	.byte		0
	.4byte		.L11954
.L11955:
	.sleb128	17
	.byte		"Os_API_IocTransferType"
	.byte		0
	.4byte		.L11956
.L11957:
	.sleb128	17
	.byte		"Os_API_ControlIdleType"
	.byte		0
	.4byte		.L11958
.L11960:
	.sleb128	17
	.byte		"IdleModeType"
	.byte		0
	.4byte		.L11961
.L11965:
	.sleb128	17
	.byte		"Os_IOC_ChannelStatType"
	.byte		0
	.4byte		.L11966
.L11964:
	.sleb128	18
	.4byte		.L11965
.L11963:
	.sleb128	19
	.4byte		.L11964
	.section	.debug_info,,n
.L11972:
	.sleb128	27
	.byte		"void"
	.byte		0
	.byte		0x0
.L11971:
	.sleb128	19
	.4byte		.L11972
.L11969:
	.sleb128	21
	.4byte		.L11970-.L2
	.4byte		.L11971
	.sleb128	23
	.uleb128	1
	.sleb128	0
.L11970:
.L11968:
	.sleb128	17
	.byte		"Os_IOC_DataType"
	.byte		0
	.4byte		.L11969
.L11967:
	.sleb128	19
	.4byte		.L11968
.L11974:
	.sleb128	17
	.byte		"SpinlockIdType"
	.byte		0
	.4byte		.L11557
.L11976:
	.sleb128	17
	.byte		"TryToGetSpinlockType"
	.byte		0
	.4byte		.L11977
.L11975:
	.sleb128	19
	.4byte		.L11976
.L11981:
	.sleb128	17
	.byte		"TaskType"
	.byte		0
	.4byte		.L11561
.L11982:
	.sleb128	19
	.4byte		.L11852
.L11984:
	.sleb128	17
	.byte		"TrustedFunctionIndexType"
	.byte		0
	.4byte		.L11547
.L11985:
	.sleb128	17
	.byte		"TrustedFunctionParameterRefType"
	.byte		0
	.4byte		.L11971
.L11986:
	.sleb128	17
	.byte		"Os_TrustedFunctionReturnValueType"
	.byte		0
	.4byte		.L11987
.L11989:
	.sleb128	17
	.byte		"ApplicationType"
	.byte		0
	.4byte		.L11852
.L11990:
	.sleb128	17
	.byte		"ObjectTypeType"
	.byte		0
	.4byte		.L11991
.L11994:
	.sleb128	17
	.byte		"AlarmType"
	.byte		0
	.4byte		.L11562
.L11996:
	.sleb128	17
	.byte		"TickType"
	.byte		0
	.4byte		.L11547
.L12000:
	.sleb128	19
	.4byte		.L11996
.L11999:
	.sleb128	17
	.byte		"TickRefType"
	.byte		0
	.4byte		.L12000
.L12004:
	.sleb128	17
	.byte		"AlarmBaseType"
	.byte		0
	.4byte		.L12005
.L12003:
	.sleb128	19
	.4byte		.L12004
.L12002:
	.sleb128	17
	.byte		"AlarmBaseRefType"
	.byte		0
	.4byte		.L12003
.L12007:
	.sleb128	17
	.byte		"ScheduleTableType"
	.byte		0
	.4byte		.L11547
.L12014:
	.sleb128	17
	.byte		"ScheduleTableStatusType"
	.byte		0
	.4byte		.L12015
.L12013:
	.sleb128	19
	.4byte		.L12014
.L12012:
	.sleb128	17
	.byte		"ScheduleTableStatusRefType"
	.byte		0
	.4byte		.L12013
.L12020:
	.sleb128	17
	.byte		"CounterType"
	.byte		0
	.4byte		.L11547
.L12024:
	.sleb128	24
	.4byte		.L12025-.L2
	.byte		0x1
	.sleb128	25
	.4byte		.L11859
	.sleb128	0
.L12025:
.L12023:
	.sleb128	19
	.4byte		.L12024
.L12022:
	.sleb128	17
	.byte		"LightServiceFunctionType"
	.byte		0
	.4byte		.L12023
.L12029:
	.sleb128	17
	.byte		"RestartType"
	.byte		0
	.4byte		.L11852
.L12034:
	.sleb128	17
	.byte		"ApplicationStateType"
	.byte		0
	.4byte		.L11852
.L12033:
	.sleb128	19
	.4byte		.L12034
.L12032:
	.sleb128	17
	.byte		"ApplicationStateRefType"
	.byte		0
	.4byte		.L12033
.L12038:
	.sleb128	20
	.byte		"unsigned long long"
	.byte		0
	.byte		0x7
	.byte		0x8
.L12037:
	.sleb128	17
	.byte		"uint64"
	.byte		0
	.4byte		.L12038
.L12036:
	.sleb128	17
	.byte		"EventMaskType"
	.byte		0
	.4byte		.L12037
.L12041:
	.sleb128	19
	.4byte		.L12036
.L12040:
	.sleb128	17
	.byte		"EventMaskRefType"
	.byte		0
	.4byte		.L12041
.L12047:
	.sleb128	17
	.byte		"TaskStateType"
	.byte		0
	.4byte		.L12048
.L12046:
	.sleb128	19
	.4byte		.L12047
.L12045:
	.sleb128	17
	.byte		"TaskStateRefType"
	.byte		0
	.4byte		.L12046
.L12051:
	.sleb128	19
	.4byte		.L11981
.L12050:
	.sleb128	17
	.byte		"TaskRefType"
	.byte		0
	.4byte		.L12051
.L12055:
	.sleb128	17
	.byte		"ResourceType"
	.byte		0
	.4byte		.L11547
.L12058:
	.sleb128	17
	.byte		"AppModeType"
	.byte		0
	.4byte		.L11547
.L12063:
	.sleb128	17
	.byte		"Os_CoreShutdownType"
	.byte		0
	.4byte		.L12064
.L12067:
	.sleb128	19
	.4byte		.L11851
.L12074:
	.sleb128	17
	.byte		"Os_IOC_ChannelDynType"
	.byte		0
	.4byte		.L12075
.L12073:
	.sleb128	19
	.4byte		.L12074
.L12072:
	.sleb128	18
	.4byte		.L12073
.L12076:
	.sleb128	17
	.byte		"Os_IOC_ChannelSizeType"
	.byte		0
	.4byte		.L11557
.L12077:
	.sleb128	18
	.4byte		.L11971
.L12078:
	.sleb128	18
	.4byte		.L11557
.L12080:
	.sleb128	17
	.byte		"Os_IOC_DataCountType"
	.byte		0
	.4byte		.L11852
.L12079:
	.sleb128	18
	.4byte		.L12080
.L12084:
	.sleb128	17
	.byte		"Os_IOC_DataDescriptorType"
	.byte		0
	.4byte		.L12085
.L12083:
	.sleb128	18
	.4byte		.L12084
.L12082:
	.sleb128	19
	.4byte		.L12083
.L12081:
	.sleb128	18
	.4byte		.L12082
.L12088:
	.sleb128	17
	.byte		"Os_LockResourceType"
	.byte		0
	.4byte		.L11852
.L12087:
	.sleb128	19
	.4byte		.L12088
.L12086:
	.sleb128	18
	.4byte		.L12087
.L12091:
	.sleb128	17
	.byte		"Os_IOC_DataLengthType"
	.byte		0
	.4byte		.L11557
.L12090:
	.sleb128	18
	.4byte		.L12091
.L12093:
	.sleb128	17
	.byte		"Os_IOC_DataOffsetType"
	.byte		0
	.4byte		.L11557
.L12092:
	.sleb128	18
	.4byte		.L12093
.L12097:
	.sleb128	17
	.byte		"Os_HookIDType"
	.byte		0
	.4byte		.L11557
.L12099:
	.sleb128	18
	.4byte		.L11981
.L12102:
	.sleb128	17
	.byte		"Os_ProcDynType"
	.byte		0
	.4byte		.L12103
.L12101:
	.sleb128	19
	.4byte		.L12102
.L12100:
	.sleb128	18
	.4byte		.L12101
.L12107:
	.sleb128	17
	.byte		"Os_ProcStackType"
	.byte		0
	.4byte		.L12108
.L12106:
	.sleb128	18
	.4byte		.L12107
.L12105:
	.sleb128	19
	.4byte		.L12106
.L12104:
	.sleb128	18
	.4byte		.L12105
.L12110:
	.sleb128	17
	.byte		"Os_ProcKindType"
	.byte		0
	.4byte		.L12111
.L12109:
	.sleb128	18
	.4byte		.L12110
.L12112:
	.sleb128	18
	.4byte		.L12036
.L12113:
	.sleb128	18
	.4byte		.L11552
.L12114:
	.sleb128	18
	.4byte		.L11795
.L12115:
	.sleb128	18
	.4byte		.L11802
.L12119:
	.sleb128	17
	.byte		"Os_AccessStorageType"
	.byte		0
	.4byte		.L11547
.L12118:
	.sleb128	18
	.4byte		.L12119
.L12117:
	.sleb128	19
	.4byte		.L12118
.L12116:
	.sleb128	18
	.4byte		.L12117
.L12123:
	.sleb128	24
	.4byte		.L12124-.L2
	.byte		0x1
	.sleb128	0
.L12124:
.L12122:
	.sleb128	19
	.4byte		.L12123
.L12121:
	.sleb128	17
	.byte		"Os_ProcEntryPointType"
	.byte		0
	.4byte		.L12122
.L12120:
	.sleb128	18
	.4byte		.L12121
.L12125:
	.sleb128	18
	.4byte		.L12055
.L12130:
	.sleb128	17
	.byte		"Os_ResourceStatType"
	.byte		0
	.4byte		.L12131
.L12129:
	.sleb128	18
	.4byte		.L12130
.L12128:
	.sleb128	19
	.4byte		.L12129
.L12127:
	.sleb128	17
	.byte		"Os_ResourceStack"
	.byte		0
	.4byte		.L12128
.L12126:
	.sleb128	19
	.4byte		.L12127
.L12132:
	.sleb128	18
	.4byte		.L11534
.L12133:
	.sleb128	18
	.4byte		.L11832
.L12136:
	.sleb128	17
	.byte		"Os_StackSizeType"
	.byte		0
	.4byte		.L11547
.L12135:
	.sleb128	18
	.4byte		.L12136
.L12138:
	.sleb128	17
	.byte		"Os_ProcContexStateType"
	.byte		0
	.4byte		.L12139
.L12141:
	.sleb128	18
	.4byte		.L12142
.L12140:
	.sleb128	19
	.4byte		.L12141
.L12145:
	.sleb128	18
	.4byte		.L11974
.L12148:
	.sleb128	17
	.byte		"Os_SpinlockDynType"
	.byte		0
	.4byte		.L12149
.L12147:
	.sleb128	19
	.4byte		.L12148
.L12146:
	.sleb128	18
	.4byte		.L12147
.L12154:
	.sleb128	17
	.byte		"Os_ApplicationDynType"
	.byte		0
	.4byte		.L12155
.L12153:
	.sleb128	19
	.4byte		.L12154
.L12152:
	.sleb128	18
	.4byte		.L12153
.L12156:
	.sleb128	18
	.4byte		.L11989
.L12158:
	.sleb128	17
	.byte		"Os_ApplicationKindType"
	.byte		0
	.4byte		.L12159
.L12157:
	.sleb128	18
	.4byte		.L12158
.L12163:
	.sleb128	24
	.4byte		.L12164-.L2
	.byte		0x1
	.sleb128	25
	.4byte		.L11851
	.sleb128	0
.L12164:
.L12162:
	.sleb128	19
	.4byte		.L12163
.L12161:
	.sleb128	17
	.byte		"Os_ShutdownHookFuncType"
	.byte		0
	.4byte		.L12162
.L12160:
	.sleb128	18
	.4byte		.L12161
.L12168:
	.sleb128	24
	.4byte		.L12169-.L2
	.byte		0x1
	.sleb128	0
.L12169:
.L12167:
	.sleb128	19
	.4byte		.L12168
.L12166:
	.sleb128	17
	.byte		"Os_StartUpHookFuncType"
	.byte		0
	.4byte		.L12167
.L12165:
	.sleb128	18
	.4byte		.L12166
.L12173:
	.sleb128	24
	.4byte		.L12174-.L2
	.byte		0x1
	.sleb128	25
	.4byte		.L11851
	.sleb128	0
.L12174:
.L12172:
	.sleb128	19
	.4byte		.L12173
.L12171:
	.sleb128	17
	.byte		"Os_ErrorHookFuncType"
	.byte		0
	.4byte		.L12172
.L12170:
	.sleb128	18
	.4byte		.L12171
.L12177:
	.sleb128	18
	.4byte		.L11561
.L12176:
	.sleb128	19
	.4byte		.L12177
.L12175:
	.sleb128	18
	.4byte		.L12176
.L12180:
	.sleb128	18
	.4byte		.L12020
.L12179:
	.sleb128	19
	.4byte		.L12180
.L12178:
	.sleb128	18
	.4byte		.L12179
.L12183:
	.sleb128	18
	.4byte		.L11994
.L12182:
	.sleb128	19
	.4byte		.L12183
.L12181:
	.sleb128	18
	.4byte		.L12182
.L12186:
	.sleb128	18
	.4byte		.L12007
.L12185:
	.sleb128	19
	.4byte		.L12186
.L12184:
	.sleb128	18
	.4byte		.L12185
.L12191:
	.sleb128	17
	.byte		"Os_ResourceDynType"
	.byte		0
	.4byte		.L12192
.L12190:
	.sleb128	19
	.4byte		.L12191
.L12195:
	.sleb128	17
	.byte		"Os_ErrorType"
	.byte		0
	.4byte		.L12196
.L12197:
	.sleb128	17
	.byte		"Os_ExceptionStatusType"
	.byte		0
	.4byte		.L12198
.L12203:
	.sleb128	24
	.4byte		.L12204-.L2
	.byte		0x1
	.sleb128	0
.L12204:
.L12202:
	.sleb128	19
	.4byte		.L12203
.L12201:
	.sleb128	17
	.byte		"Os_IsrHandlerFuncType"
	.byte		0
	.4byte		.L12202
.L12200:
	.sleb128	18
	.4byte		.L12201
.L12206:
	.sleb128	17
	.byte		"Os_ExceptionTypeType"
	.byte		0
	.4byte		.L12207
.L12210:
	.sleb128	17
	.byte		"Os_ShudownErrorType"
	.byte		0
	.4byte		.L12211
.L12212:
	.sleb128	17
	.byte		"Os_ParameterErrorType"
	.byte		0
	.4byte		.L12213
.L12214:
	.sleb128	17
	.byte		"Os_ServiceErrorType"
	.byte		0
	.4byte		.L12215
.L12217:
	.sleb128	17
	.byte		"ServiceTraceType"
	.byte		0
	.4byte		.L11852
.L12218:
	.sleb128	17
	.byte		"OSServiceIdType"
	.byte		0
	.4byte		.L12219
.L12221:
	.sleb128	17
	.byte		"TryToGetSpinlockRefType"
	.byte		0
	.4byte		.L11975
.L12223:
	.sleb128	17
	.byte		"Os_SystemInternalErrorType"
	.byte		0
	.4byte		.L12224
.L12231:
	.sleb128	17
	.byte		"Os_IsrPlatformLevelType"
	.byte		0
	.4byte		.L11557
.L12230:
	.sleb128	18
	.4byte		.L12231
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11515:
	.sleb128	0
.L11511:

	.section	.debug_loc,,n
	.align	0
.L11532:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locend
.L11536:
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),5
	.d2locend
.L11544:
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),3
	.d2locend
.L11549:
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),4
	.d2locend
.L11553:
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),5
	.d2locend
.L11559:
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo6),0
	.d2locend
.L11563:
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo6),6
	.d2locend
.L11565:
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo6),7
	.d2locend
.L11571:
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo11),3
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo13),31
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo15),3
	.d2locend
.L11578:
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo17),3
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo19),3
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo21),3
	.d2locend
.L11581:
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo17),4
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo23),4
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo25),4
	.d2locreg	%offsetof(.Llo26), %offsetof(.Llo27),4
	.d2locend
.L11582:
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo28),5
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo17),6
	.d2locreg	%offsetof(.Llo30), %offsetof(.Llo31),6
	.d2locend
.L11593:
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo33),5
	.d2locreg	%offsetof(.Llo34), %offsetof(.Llo35),5
	.d2locreg	%offsetof(.Llo36), %offsetof(.Llo23),5
	.d2locreg	%offsetof(.Llo37), %offsetof(.Llo25),5
	.d2locend
.L11598:
	.d2locreg	%offsetof(.Llo38), %offsetof(.Llo39),0
	.d2locreg	%offsetof(.Llo31), %offsetof(.Llo27),3
	.d2locend
.L11604:
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo33),3
	.d2locreg	%offsetof(.Llo40), %offsetof(.Llo23),6
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo27),3
	.d2locend
.L11609:
	.d2locreg	%offsetof(.Llo41), %offsetof(.Llo42),0
	.d2locreg	%offsetof(.Llo43), %offsetof(.Llo23),0
	.d2locend
.L11615:
	.d2locreg	%offsetof(.Llo44), %offsetof(.Llo45),3
	.d2locreg	%offsetof(.Llo46), %offsetof(.Llo47),31
	.d2locend
.L11617:
	.d2locreg	%offsetof(.Llo48), %offsetof(.Llo49),30
	.d2locreg	%offsetof(.Llo50), %offsetof(.Llo51),30
	.d2locend
.L11619:
	.d2locreg	%offsetof(.Llo52), %offsetof(.Llo51),29
	.d2locend
.L11625:
	.d2locreg	%offsetof(.Llo53), %offsetof(.Llo54),3
	.d2locreg	%offsetof(.Llo55), %offsetof(.Llo56),3
	.d2locreg	%offsetof(.Llo57), %offsetof(.Llo58),3
	.d2locend
.L11626:
	.d2locreg	%offsetof(.Llo53), %offsetof(.Llo54),4
	.d2locreg	%offsetof(.Llo59), %offsetof(.Llo60),4
	.d2locreg	%offsetof(.Llo61), %offsetof(.Llo62),4
	.d2locreg	%offsetof(.Llo63), %offsetof(.Llo64),4
	.d2locend
.L11627:
	.d2locreg	%offsetof(.Llo53), %offsetof(.Llo65),5
	.d2locreg	%offsetof(.Llo66), %offsetof(.Llo54),6
	.d2locreg	%offsetof(.Llo67), %offsetof(.Llo68),6
	.d2locend
.L11633:
	.d2locreg	%offsetof(.Llo69), %offsetof(.Llo70),5
	.d2locreg	%offsetof(.Llo71), %offsetof(.Llo72),5
	.d2locreg	%offsetof(.Llo73), %offsetof(.Llo60),5
	.d2locreg	%offsetof(.Llo74), %offsetof(.Llo62),5
	.d2locend
.L11635:
	.d2locreg	%offsetof(.Llo75), %offsetof(.Llo76),0
	.d2locreg	%offsetof(.Llo68), %offsetof(.Llo64),3
	.d2locend
.L11641:
	.d2locreg	%offsetof(.Llo58), %offsetof(.Llo70),3
	.d2locreg	%offsetof(.Llo77), %offsetof(.Llo60),6
	.d2locreg	%offsetof(.Llo61), %offsetof(.Llo64),3
	.d2locend
.L11643:
	.d2locreg	%offsetof(.Llo78), %offsetof(.Llo79),0
	.d2locreg	%offsetof(.Llo80), %offsetof(.Llo60),0
	.d2locend
.L11649:
	.d2locreg	%offsetof(.Llo81), %offsetof(.Llo82),3
	.d2locreg	%offsetof(.Llo83), %offsetof(.Llo84),3
	.d2locreg	%offsetof(.Llo85), %offsetof(.Llo86),3
	.d2locreg	%offsetof(.Llo87), %offsetof(.Llo88),3
	.d2locreg	%offsetof(.Llo89), %offsetof(.Llo90),3
	.d2locend
.L11650:
	.d2locreg	%offsetof(.Llo81), %offsetof(.Llo91),4
	.d2locreg	%offsetof(.Llo92), %offsetof(.Llo82),0
	.d2locreg	%offsetof(.Llo93), %offsetof(.Llo94),0
	.d2locreg	%offsetof(.Llo95), %offsetof(.Llo96),0
	.d2locreg	%offsetof(.Llo97), %offsetof(.Llo98),0
	.d2locreg	%offsetof(.Llo99), %offsetof(.Llo88),0
	.d2locreg	%offsetof(.Llo100), %offsetof(.Llo101),0
	.d2locreg	%offsetof(.Llo102), %offsetof(.Llo103),0
	.d2locreg	%offsetof(.Llo104), %offsetof(.Llo90),0
	.d2locend
.L11652:
	.d2locreg	%offsetof(.Llo81), %offsetof(.Llo105),31
	.d2locend
.L11654:
	.d2locreg	%offsetof(.Llo106), %offsetof(.Llo82),4
	.d2locreg	%offsetof(.Llo107), %offsetof(.Llo96),4
	.d2locreg	%offsetof(.Llo108), %offsetof(.Llo109),4
	.d2locreg	%offsetof(.Llo110), %offsetof(.Llo90),4
	.d2locend
.L11660:
	.d2locreg	%offsetof(.Llo111), %offsetof(.Llo112),3
	.d2locreg	%offsetof(.Llo113), %offsetof(.Llo114),3
	.d2locreg	%offsetof(.Llo115), %offsetof(.Llo116),3
	.d2locend
.L11661:
	.d2locreg	%offsetof(.Llo111), %offsetof(.Llo117),4
	.d2locreg	%offsetof(.Llo114), %offsetof(.Llo116),31
	.d2locend
.L11665:
	.d2locreg	%offsetof(.Llo111), %offsetof(.Llo113),5
	.d2locreg	%offsetof(.Llo114), %offsetof(.Llo118),30
	.d2locend
.L11667:
	.d2locreg	%offsetof(.Llo119), %offsetof(.Llo120),28
	.d2locend
.L11669:
	.d2locreg	%offsetof(.Llo121), %offsetof(.Llo116),29
	.d2locend
.L11675:
	.d2locreg	%offsetof(.Llo122), %offsetof(.Llo123),3
	.d2locreg	%offsetof(.Llo124), %offsetof(.Llo125),30
	.d2locend
.L11677:
	.d2locreg	%offsetof(.Llo124), %offsetof(.Llo126),31
	.d2locreg	%offsetof(.Llo127), %offsetof(.Llo128),4
	.d2locend
.L11683:
	.d2locreg	%offsetof(.Llo129), %offsetof(.Llo130),3
	.d2locreg	%offsetof(.Llo127), %offsetof(.Llo125),31
	.d2locend
.L11689:
	.d2locreg	%offsetof(.Llo131), %offsetof(.Llo132),3
	.d2locreg	%offsetof(.Llo133), %offsetof(.Llo134),0
	.d2locreg	%offsetof(.Llo135), %offsetof(.Llo136),0
	.d2locreg	%offsetof(.Llo137), %offsetof(.Llo138),0
	.d2locreg	%offsetof(.Llo139), %offsetof(.Llo140),0
	.d2locend
.L11691:
	.d2locreg	%offsetof(.Llo141), %offsetof(.Llo134),3
	.d2locreg	%offsetof(.Llo142), %offsetof(.Llo136),3
	.d2locreg	%offsetof(.Llo143), %offsetof(.Llo144),3
	.d2locreg	%offsetof(.Llo145), %offsetof(.Llo146),3
	.d2locreg	%offsetof(.Llo147), %offsetof(.Llo140),3
	.d2locreg	%offsetof(.Llo148), %offsetof(.Llo149),3
	.d2locend
.L11693:
	.d2locreg	%offsetof(.Llo150), %offsetof(.Llo140),6
	.d2locreg	%offsetof(.Llo151), %offsetof(.Llo149),6
	.d2locend
.L11697:
	.d2locreg	%offsetof(.Llo152), %offsetof(.Llo140),4
	.d2locreg	%offsetof(.Llo153), %offsetof(.Llo149),4
	.d2locend
.L11699:
	.d2locreg	%offsetof(.Llo154), %offsetof(.Llo155),3
	.d2locreg	%offsetof(.Llo156), %offsetof(.Llo149),5
	.d2locend
.L11705:
	.d2locreg	%offsetof(.Llo157), %offsetof(.Llo158),6
	.d2locreg	%offsetof(.Llo159), %offsetof(.Llo160),6
	.d2locreg	%offsetof(.Llo161), %offsetof(.Llo162),6
	.d2locreg	%offsetof(.Llo150), %offsetof(.Llo140),6
	.d2locend
.L11711:
	.d2locreg	%offsetof(.Llo163), %offsetof(.Llo164),7
	.d2locreg	%offsetof(.Llo165), %offsetof(.Llo166),7
	.d2locreg	%offsetof(.Llo167), %offsetof(.Llo162),7
	.d2locreg	%offsetof(.Llo168), %offsetof(.Llo146),7
	.d2locend
.L11717:
	.d2locreg	%offsetof(.Llo169), %offsetof(.Llo149),0
	.d2locend
.L11723:
	.d2locreg	%offsetof(.Llo170), %offsetof(.Llo171),3
	.d2locreg	%offsetof(.Llo172), %offsetof(.Llo173),3
	.d2locreg	%offsetof(.Llo174), %offsetof(.Llo175),3
	.d2locreg	%offsetof(.Llo176), %offsetof(.Llo177),3
	.d2locend
.L11725:
	.d2locreg	%offsetof(.Llo170), %offsetof(.Llo178),31
	.d2locend
.L11731:
	.d2locreg	%offsetof(.Llo179), %offsetof(.Llo180),3
	.d2locend
.L11738:
	.d2locreg	%offsetof(.Llo181), %offsetof(.Llo182),3
	.d2locend
.L11740:
	.d2locreg	%offsetof(.Llo183), %offsetof(.Llo184),4
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "Os_SchedulerIdle"
	.wrcm.nstrlist "calls", "Os_Core_Idle"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Os_SchedulerShutdown"
	.wrcm.nstrlist "calls", "Os_Scheduler_Init"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Os_Scheduler_Init"
	.wrcm.nstrlist "calls", "Os_SchedulerCleanUp","Os_SchedulerGetNextProc"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Os_SchedulerCleanUp"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Os_SchedulerTerminateProc"
	.wrcm.nstrlist "calls", "Os_SchedulerQueuePopFront","Os_ShutdownAllCores"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Os_SchedulerChangeProcPriority"
	.wrcm.nstrlist "calls", "Os_SchedulerQueuePopFront","Os_SchedulerQueuePushBack","Os_SchedulerQueuePushFront"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Os_SchedulerQueuePopFront"
	.wrcm.nstrlist "calls", "Os_ShutdownAllCores"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Os_SchedulerQueuePushFront"
	.wrcm.nstrlist "calls", "Os_ShutdownAllCores"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Os_SchedulerStartProc"
	.wrcm.nstrlist "calls", "Os_SchedulerQueuePushBack","Os_ShutdownAllCores"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Os_SchedulerQueuePushBack"
	.wrcm.nstrlist "calls", "Os_ShutdownAllCores"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Os_SchedulerUnScheduleProc"
	.wrcm.nstrlist "calls", "Os_SchedulerRemoveProc","Os_ShutdownAllCores"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Os_SchedulerRemoveProc"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Os_SchedulerGetNextProc"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Os_Scheduler.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Os_Scheduler.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Os_Scheduler.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Os_Scheduler.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Os_Scheduler.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Os_Scheduler.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\Os\Os\core\ssc\make\..\src\scheduler\Os_Scheduler.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
