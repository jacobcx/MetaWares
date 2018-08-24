#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Os_Timer.c"
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
# LOCAL_INLINE FUNC(void, OS_CODE)    Os_Timer_StartTicklessFirstTime(
	.section	.Os_TEXT,,c
	.align		1
	.section	.debug_line.Os_TEXT,,n
	.sectionlink	.debug_line
.L11504:
	.section	.Os_TEXT,,c
#$$ld
.L11500:
	.0byte		.L11498
	.d2_line_start	.debug_line.Os_TEXT
	.section	.Os_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\timer\\Os_Timer.c"
        .d2line         454,37
#$$ld
.L11507:

#$$bf	Os_Timer_StartTicklessFirstTime,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Os_Timer_StartTicklessFirstTime:
.Llo1:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# timerId=r31 timerId=r3
	.d2prologue_end
#                                         CONST(Os_TimerType, AUTOMATIC) timerId
#                                     )
# {
#     CONSTP2VAR(Os_TimerCounterDynType, AUTOMATIC, OS_CONST) timerDyn = Os_TimerConf[timerId].Os_TimerDyn;
	.d2line		458
.Llo2:
	lis		r3,(Os_TimerConf+8)@ha
.Llo3:
	e_add16i		r3,r3,(Os_TimerConf+8)@l
	e_mulli		r0,r31,28		# timerId=r31
	lwzux		r30,r3,r0		# timerDyn=r30
	mr		r30,r30		# timerDyn=r30 timerDyn=r30
# 
#     /* Measures static jitter.
#      *  - Start measurement inside Os_Timer_Platform_StopAndGetElapsedIncrements after the timer has been stopped.
#      *  - Stop measurement inside Os_Timer_Platform_Start after the timer has been started.
#      */
# #if defined(OS_CONFIG_INTERRUPTIBLE_KERNEL_CONTEXT)
#     /* To keep the static jitter measurement correct, it must be done inside an atomic
#      * block.
#      */
#     OS_DISABLE_ALLINTR();
# #endif  /* defined(OS_CONFIG_INTERRUPTIBLE_KERNEL_CONTEXT) */
#     timerDyn->Os_TimerJitterIncrementsCount +=
	.d2line		470
	lis		r3,Os_TimerConf@ha
	e_add16i		r3,r3,Os_TimerConf@l
	se_add		r3,r0
	bl		Os_Timer_Platform_StopAndGetElapsedIncrements_MeasureStart
	lwz		r0,24(r30)		# timerDyn=r30
	se_add		r3,r0
	stw		r3,24(r30)		# timerDyn=r30
#             Os_Timer_Platform_StopAndGetElapsedIncrements_MeasureStart(&Os_TimerConf[timerId]);
# 
#     OS_ASSERT(((TickType)OS_TIMER_JITTER_MAX_VALUE) > timerDyn->Os_TimerJitterIncrementsCount,
	.d2line		473
	diab.li		r0,2147483647
	se_cmpl		r3,r0
	bc		1,0,.L11443	# lt
	diab.li		r4,56
	lis		r3,(Os_Core_DynShared+12)@ha
	e_add16i		r3,r3,(Os_Core_DynShared+12)@l
	mfspr		r0,286
	rlwinm		r0,r0,0,16,31
	e_mulli		r0,r0,152
	stwx		r4,r3,r0
	diab.li		r3,30
	bl		Os_ShutdownAllCores
.L11443:
#               E_OS_SYS_TIMER_TOO_MUCH_JITTER);
# 
#     if(timerDyn->Os_TimerRemainingIncrementsCount >= timerDyn->Os_TimerJitterIncrementsCount)
	.d2line		476
	lwz		r0,16(r30)		# timerDyn=r30
	lwz		r3,24(r30)		# timerDyn=r30
	se_cmpl		r0,r3
	bc		1,0,.L11446	# lt
#     {
#         timerDyn->Os_TimerRemainingIncrementsCount -= timerDyn->Os_TimerJitterIncrementsCount;
	.d2line		478
	lwz		r0,16(r30)		# timerDyn=r30
	lwz		r3,24(r30)		# timerDyn=r30
	subf		r3,r3,r0
	stw		r3,16(r30)		# timerDyn=r30
#         timerDyn->Os_TimerJitterIncrementsCount = (TickType)0U;
	.d2line		479
	diab.li		r0,0
	stw		r0,24(r30)		# timerDyn=r30
	b		.L11447
.L11446:
#     }
#     else
#     {
#         timerDyn->Os_TimerJitterIncrementsCount -= timerDyn->Os_TimerRemainingIncrementsCount;
	.d2line		483
	lwz		r0,24(r30)		# timerDyn=r30
	lwz		r3,16(r30)		# timerDyn=r30
	subf		r3,r3,r0
	stw		r3,24(r30)		# timerDyn=r30
#         timerDyn->Os_TimerRemainingIncrementsCount = (TickType)0U;
	.d2line		484
	diab.li		r0,0
	stw		r0,16(r30)		# timerDyn=r30
.L11447:
#     }
# 
#     timerDyn->Os_TimerJitterOffsetIncrementsCount =
	.d2line		487
.Llo4:
	lis		r3,Os_TimerConf@ha
	e_add16i		r3,r3,Os_TimerConf@l
.Llo5:
	e_mulli		r31,r31,28		# timerId=r31 timerId=r31
	se_add		r3,r31		# timerId=r31
	lwz		r4,16(r30)		# timerDyn=r30
	bl		Os_Timer_Platform_Start_MeasureStop
	stw		r3,28(r30)		# timerDyn=r30
#             Os_Timer_Platform_Start_MeasureStop(&Os_TimerConf[timerId], timerDyn->Os_TimerRemainingIncrementsCount);
# 
# #if defined(OS_CONFIG_INTERRUPTIBLE_KERNEL_CONTEXT)
#     OS_ENABLE_ALLINTR();
# #endif /* defined(OS_CONFIG_INTERRUPTIBLE_KERNEL_CONTEXT) */
# 
#     /* Reset calculated jitter */
#     timerDyn->Os_TimerJitterIncrementsCount = (TickType)0U;
	.d2line		495
	diab.li		r3,0
	stw		r3,24(r30)		# timerDyn=r30
# }
	.d2line		496
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo6:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11508:
	.type		Os_Timer_StartTicklessFirstTime,@function
	.size		Os_Timer_StartTicklessFirstTime,.-Os_Timer_StartTicklessFirstTime
# Number of nodes = 116

# Allocations for Os_Timer_StartTicklessFirstTime
#	?a4		timerId
#	?a5		timerDyn
# FUNC(void, OS_CODE) Os_Timer_Init(CONST(CoreIdType, AUTOMATIC) coreId)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         86,21
#$$ld
.L11524:

#$$bf	Os_Timer_Init,interprocedural,rasave,nostackparams
	.globl		Os_Timer_Init
	.d2_cfa_start __cie
Os_Timer_Init:
.Llo7:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# coreId=r3 coreId=r3
	.d2prologue_end
# {
#     CONSTP2CONST(Os_TimersListOnCoreType, AUTOMATIC, OS_CONST) timersListOnCores = &Os_TimersListOnCores[coreId];
	.d2line		88
	lis		r31,Os_TimersListOnCores@ha
	e_add16i		r31,r31,Os_TimersListOnCores@l
	rlwinm		r0,r3,3,13,28		# coreId=r3
	se_add		r0,r31
.Llo15:
	mr		r31,r0		# timersListOnCores=r31 timersListOnCores=r0
#     VAR         (uint8,                   AUTOMATIC)           timerIndex;
# 
#   #ifdef OS_MODULE_MULTICORE
#     if(OS_CORE_ID_MASTER != coreId)
	.d2line		92
	rlwinm		r3,r3,0,16,31		# coreId=r3 coreId=r3
	se_cmpi		r3,1		# coreId=r3
	bc		0,2,.L11349	# ne
#     {
#         /* Do nothing on purpose. */
#     }
#     else
#   #endif /* OS_MODULE_MULTICORE */
#     {
#         Os_Timer_Platform_Init();
	.d2line		99
.Llo8:
	bl		Os_Timer_Platform_Init
.L11349:
#     }
# 
#     for(timerIndex = (uint8)0; timerIndex < timersListOnCores->Os_NumberOfTimers; timerIndex++)
	.d2line		102
.Llo16:
	diab.li		r30,0		# timerIndex=r30
.L11350:
.Llo18:
	rlwinm		r0,r30,0,24,31		# timerIndex=r30
	lbz		r3,4(r31)		# coreId=r3 timersListOnCores=r31
.Llo9:
	se_cmp		r0,r3		# coreId=r3
	bc		0,0,.L11347	# ge
	.section	.Os_TEXT,,c
.L11543:
#     {
#         CONST(Os_TimerType, AUTOMATIC) timerConfIdx = timersListOnCores->Os_TimersList[timerIndex];
	.d2line		104
.Llo10:
	lwz		r3,0(r31)		# coreId=r3 timersListOnCores=r31
.Llo11:
	rlwinm		r0,r30,2,22,29		# timerIndex=r30
	lwzx		r29,r3,r0		# timerConfIdx=r29 coreId=r3
.Llo19:
	mr		r29,r29		# timerConfIdx=r29 timerConfIdx=r29
# 
#         Os_Isr_Platform_InitChannel(Os_TimerConf[timerConfIdx].Os_IsrPltConfig);
	.d2line		106
	lis		r3,(Os_TimerConf+12)@ha		# coreId=r3
	e_add16i		r3,r3,(Os_TimerConf+12)@l		# coreId=r3 coreId=r3
	e_mulli		r0,r29,28		# timerConfIdx=r29
	lwzx		r3,r3,r0		# coreId=r3 coreId=r3
.Llo12:
	bl		Os_Isr_Platform_InitChannel
#         Os_Timer_Platform_InitChannel(&Os_TimerConf[timerConfIdx]);
	.d2line		107
	lis		r3,Os_TimerConf@ha		# coreId=r3
.Llo13:
	e_add16i		r3,r3,Os_TimerConf@l		# coreId=r3 coreId=r3
	e_mulli		r0,r29,28		# timerConfIdx=r29
	se_add		r3,r0		# coreId=r3 coreId=r3
.Llo14:
	bl		Os_Timer_Platform_InitChannel
#         Os_Timer_StartTicklessFirstTime(timerConfIdx);
	.d2line		108
	mr		r3,r29		# timerConfIdx=r3 timerConfIdx=r29
	bl		Os_Timer_StartTicklessFirstTime
#         Os_TimerConf[timerConfIdx].Os_TimerDyn->Os_TimerTicked = Os_true;
	.d2line		109
	diab.li		r0,1
	lis		r3,(Os_TimerConf+8)@ha		# timerConfIdx=r3
	e_add16i		r3,r3,(Os_TimerConf+8)@l		# timerConfIdx=r3 timerConfIdx=r3
	e_mulli		r29,r29,28		# timerConfIdx=r29 timerConfIdx=r29
.Llo20:
	lwzux		r4,r3,r29		# timerConfIdx=r3
.Llo21:
	stw		r0,36(r4)
#         Os_TimerConf[timerConfIdx].Os_TimerDyn->Os_TimerRunning = Os_false;
	.d2line		110
	diab.li		r0,0
	lis		r3,(Os_TimerConf+8)@ha		# timerConfIdx=r3
	e_add16i		r3,r3,(Os_TimerConf+8)@l		# timerConfIdx=r3 timerConfIdx=r3
	lwzux		r4,r3,r29		# timerConfIdx=r3
	stw		r0,32(r4)
#         Os_TimerConf[timerConfIdx].Os_TimerDyn->Os_TimerRemainderIncrements = (TickType)0U;
	.d2line		111
	lis		r3,(Os_TimerConf+8)@ha		# timerConfIdx=r3
	e_add16i		r3,r3,(Os_TimerConf+8)@l		# timerConfIdx=r3 timerConfIdx=r3
	lwzx		r3,r3,r29		# timerConfIdx=r3 timerConfIdx=r3
	stw		r0,20(r3)		# timerConfIdx=r3
	.section	.Os_TEXT,,c
.L11544:
#     }
	.d2line		112
.Llo22:
	diab.addi		r0,r30,1		# timerIndex=r30
	se_addi		r30,1		# timerIndex=r30 timerIndex=r30
	b		.L11350
.L11347:
# }
	.d2line		113
	.d2epilogue_begin
.Llo17:
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
.L11525:
	.type		Os_Timer_Init,@function
	.size		Os_Timer_Init,.-Os_Timer_Init
# Number of nodes = 106

# Allocations for Os_Timer_Init
#	?a4		coreId
#	?a5		timersListOnCores
#	?a6		timerIndex
#	?a7		timerConfIdx
# LOCAL_INLINE FUNC(void, OS_CODE)    Os_Timer_CalculateTicklessValues(
	.align		1
	.section	.Os_TEXT,,c
        .d2line         503,37
#$$ld
.L11551:

#$$bf	Os_Timer_CalculateTicklessValues,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Os_Timer_CalculateTicklessValues:
.Llo23:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# timerId=r3 timerId=r3
	mr		r4,r4		# tickCount=r4 tickCount=r4
	mr		r5,r5		# remainingTickCount=r5 remainingTickCount=r5
	.d2prologue_end
#                                         CONST(Os_TimerType, AUTOMATIC) timerId,
#                                         CONST(TickType,     AUTOMATIC) tickCount,
#                                         CONST(TickType,     AUTOMATIC) remainingTickCount
#                                     )
# {
#     CONSTP2VAR(Os_TimerCounterDynType, AUTOMATIC, OS_CONST) timerDyn = Os_TimerConf[timerId].Os_TimerDyn;
	.d2line		509
	lis		r6,(Os_TimerConf+8)@ha
	e_add16i		r6,r6,(Os_TimerConf+8)@l
	e_mulli		r0,r3,28		# timerId=r3
	lwzux		r31,r6,r0		# timerDyn=r31
	mr		r31,r31		# timerDyn=r31 timerDyn=r31
# 
#     /* Initialize ticks: set the number of requested ticks */
#     timerDyn->Os_TimerTickCount               = tickCount;
	.d2line		512
	stw		r4,0(r31)		# timerDyn=r31 tickCount=r4
#     timerDyn->Os_TimerRemainingTicks          = remainingTickCount;
	.d2line		513
	stw		r5,4(r31)		# timerDyn=r31 remainingTickCount=r5
#     timerDyn->Os_TimerLastQueriedElapsedTicks = (TickType)0U;
	.d2line		514
	diab.li		r4,0		# tickCount=r4
	stw		r4,12(r31)		# timerDyn=r31 tickCount=r4
# 
#     /* Calculate the configurable amount of ticks */
#     timerDyn->Os_TimerConfiguredTicks = (remainingTickCount <= Os_TimerConf[timerId].Os_TimerMaxTickCount) ?
	.d2line		517
	lis		r4,(Os_TimerConf+24)@ha		# tickCount=r4
	e_add16i		r4,r4,(Os_TimerConf+24)@l		# tickCount=r4 tickCount=r4
	lwzx		r0,r4,r0		# tickCount=r4
	se_cmpl		r0,r5		# remainingTickCount=r5
	bc		1,0,.L11459	# lt
.Llo35:
	mr		r5,r5		# remainingTickCount=r5 remainingTickCount=r5
	b		.L11460
.L11459:
.Llo41:
	lis		r4,(Os_TimerConf+24)@ha		# tickCount=r4
.Llo36:
	e_add16i		r4,r4,(Os_TimerConf+24)@l		# tickCount=r4 tickCount=r4
	e_mulli		r0,r3,28		# timerId=r3
	lwzx		r5,r4,r0		# remainingTickCount=r5 tickCount=r4
.L11460:
.Llo37:
	stw		r5,8(r31)		# timerDyn=r31 remainingTickCount=r5
#                                         remainingTickCount :
#                                         Os_TimerConf[timerId].Os_TimerMaxTickCount;
# 
#     /* Initialize timer increments */
#     timerDyn->Os_TimerRemainingIncrementsCount =
	.d2line		522
	lis		r4,(Os_TimerConf+20)@ha		# tickCount=r4
.Llo38:
	e_add16i		r4,r4,(Os_TimerConf+20)@l		# tickCount=r4 tickCount=r4
	e_mulli		r0,r3,28		# timerId=r3
	lwzux		r3,r4,r0		# timerId=r3 tickCount=r4
	mullw		r5,r5,r3		# remainingTickCount=r5 remainingTickCount=r5 timerId=r3
	lwz		r4,20(r31)		# tickCount=r4 timerDyn=r31
	subf		r4,r4,r5		# tickCount=r4 tickCount=r4 remainingTickCount=r5
	stw		r4,16(r31)		# timerDyn=r31 tickCount=r4
#             ( timerDyn->Os_TimerConfiguredTicks * Os_TimerConf[timerId].Os_TimerMultiplicator ) -
#             timerDyn->Os_TimerRemainderIncrements;
#     timerDyn->Os_TimerRemainderIncrements      = (TickType)0U;
	.d2line		525
	diab.li		r3,0		# timerId=r3
	stw		r3,20(r31)		# timerDyn=r31 timerId=r3
# 
#     /* Set timer state */
#     timerDyn->Os_TimerTicked  = Os_false;
	.d2line		528
	stw		r3,36(r31)		# timerDyn=r31 timerId=r3
#     timerDyn->Os_TimerRunning = Os_true;
	.d2line		529
	diab.li		r3,1		# timerId=r3
	stw		r3,32(r31)		# timerDyn=r31 timerId=r3
# 
# #if defined(OS_CONFIG_INTERRUPTIBLE_KERNEL_CONTEXT)
#     /* To keep the dynamic jitter measurement correct, it must be done inside an atomic
#      * block.
#      */
#     OS_DISABLE_ALLINTR();
# #endif /* defined(OS_CONFIG_INTERRUPTIBLE_KERNEL_CONTEXT) */
#     /* Minimalize jitter: offset with elapsed time. */
#     timerDyn->Os_TimerJitterIncrementsCount +=
	.d2line		538
	lis		r3,Os_TimerConf@ha		# timerId=r3
	e_add16i		r3,r3,Os_TimerConf@l		# timerId=r3 timerId=r3
	se_add		r3,r0		# timerId=r3 timerId=r3
.Llo24:
	bl		Os_Timer_Platform_StopAndGetElapsedIncrements
.Llo25:
	lwz		r0,24(r31)		# timerDyn=r31
	se_add		r3,r0		# timerId=r3 timerId=r3
	stw		r3,24(r31)		# timerDyn=r31 timerId=r3
#             Os_Timer_Platform_StopAndGetElapsedIncrements(&Os_TimerConf[timerId]);
# 
#     OS_ASSERT(((TickType)OS_TIMER_JITTER_MAX_VALUE) > timerDyn->Os_TimerJitterIncrementsCount,
	.d2line		541
	diab.li		r0,2147483647
	se_cmpl		r3,r0		# timerId=r3
	bc		1,0,.L11454	# lt
.Llo26:
	diab.li		r4,56		# tickCount=r4
.Llo39:
	lis		r3,(Os_Core_DynShared+12)@ha		# timerId=r3
.Llo27:
	e_add16i		r3,r3,(Os_Core_DynShared+12)@l		# timerId=r3 timerId=r3
	mfspr		r0,286
	rlwinm		r0,r0,0,16,31
	e_mulli		r0,r0,152
	stwx		r4,r3,r0		# timerId=r3 tickCount=r4
	diab.li		r3,30		# timerId=r3
.Llo28:
	bl		Os_ShutdownAllCores
.L11454:
#               E_OS_SYS_TIMER_TOO_MUCH_JITTER);
# 
#     if(timerDyn->Os_TimerRemainingIncrementsCount >= timerDyn->Os_TimerJitterIncrementsCount)
	.d2line		544
.Llo40:
	lwz		r0,16(r31)		# timerDyn=r31
	lwz		r3,24(r31)		# timerId=r3 timerDyn=r31
.Llo29:
	se_cmpl		r0,r3		# timerId=r3
	bc		1,0,.L11457	# lt
#     {
#         timerDyn->Os_TimerRemainingIncrementsCount -= timerDyn->Os_TimerJitterIncrementsCount;
	.d2line		546
.Llo30:
	lwz		r0,16(r31)		# timerDyn=r31
	lwz		r3,24(r31)		# timerId=r3 timerDyn=r31
.Llo31:
	subf		r3,r3,r0		# timerId=r3 timerId=r3
	stw		r3,16(r31)		# timerDyn=r31 timerId=r3
#         timerDyn->Os_TimerJitterIncrementsCount = (TickType)0U;
	.d2line		547
	diab.li		r0,0
	stw		r0,24(r31)		# timerDyn=r31
	b		.L11451
.L11457:
#     }
#     else
#     {
#         timerDyn->Os_TimerJitterIncrementsCount -= timerDyn->Os_TimerRemainingIncrementsCount;
	.d2line		551
.Llo32:
	lwz		r0,24(r31)		# timerDyn=r31
	lwz		r3,16(r31)		# timerId=r3 timerDyn=r31
.Llo33:
	subf		r3,r3,r0		# timerId=r3 timerId=r3
	stw		r3,24(r31)		# timerDyn=r31 timerId=r3
#         timerDyn->Os_TimerRemainingIncrementsCount = (TickType)0U;
	.d2line		552
	diab.li		r0,0
	stw		r0,16(r31)		# timerDyn=r31
.L11451:
#     }
# }
	.d2line		554
	.d2epilogue_begin
.Llo34:
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
.L11552:
	.type		Os_Timer_CalculateTicklessValues,@function
	.size		Os_Timer_CalculateTicklessValues,.-Os_Timer_CalculateTicklessValues
# Number of nodes = 181

# Allocations for Os_Timer_CalculateTicklessValues
#	?a4		timerId
#	?a5		tickCount
#	?a6		remainingTickCount
#	?a7		$$2352
#	?a8		timerDyn
# LOCAL_INLINE FUNC(TickType, OS_CODE)    Os_Timer_QueryCounters(
	.align		1
	.section	.Os_TEXT,,c
        .d2line         620,41
#$$ld
.L11563:

#$$bf	Os_Timer_QueryCounters,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Os_Timer_QueryCounters:
.Llo42:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r4		# timerConf=r31 timerConf=r4
	.d2prologue_end
#                                             CONST       (Os_TimerType,     AUTOMATIC)           timerId,
#                                             CONSTP2CONST(Os_TimerConfType, AUTOMATIC, OS_CONST) timerConf
#                                         )
# {
#     VAR(TickType,    AUTOMATIC) nextTickCount = (TickType)~(TickType)0U; /* [D_OS0115] */
	.d2line		625
	diab.li		r30,-1		# nextTickCount=r30
#     VAR(TickType,    AUTOMATIC) tick;
#     VAR(CounterType, AUTOMATIC) counterIdx;
# 
#     OS_ASSERT(Os_false == timerConf->Os_TimerDyn->Os_TimerRunning, E_OS_SYS_TIMER_RUNNING);
	.d2line		629
.Llo48:
	lwz		r3,8(r31)		# timerConf=r31
	lwz		r0,32(r3)
	se_cmpi		r0,0
	bc		1,2,.L11485	# eq
.Llo43:
	diab.li		r4,54
.Llo44:
	lis		r3,(Os_Core_DynShared+12)@ha
	e_add16i		r3,r3,(Os_Core_DynShared+12)@l
	mfspr		r0,286
	rlwinm		r0,r0,0,16,31
	e_mulli		r0,r0,152
	stwx		r4,r3,r0
	diab.li		r3,30
	bl		Os_ShutdownAllCores
.L11485:
# 
#     for(counterIdx = (CounterType)0U; counterIdx < timerConf->Os_NumberOfCounters; counterIdx++)
	.d2line		631
	diab.li		r29,0		# counterIdx=r29
.L11488:
.Llo54:
	lwz		r0,0(r31)		# timerConf=r31
	se_cmpl		r0,r29		# counterIdx=r29
	bc		0,1,.L11490	# le
#     {
#         tick = Os_Counter_GetNextTicklessTicks(timerConf->Os_Counters[counterIdx]);
	.d2line		633
	lwz		r3,4(r31)		# tick=r3 timerConf=r31
.Llo50:
	rlwinm		r0,r29,2,0,29		# counterIdx=r29
	lwzx		r3,r3,r0		# tick=r3 tick=r3
.Llo51:
	bl		Os_Counter_GetNextTicklessTicks
.Llo52:
	mr		r3,r3		# tick=r3 tick=r3
# 
#         /* [D_OS0116] */
#         if(tick < nextTickCount)
	.d2line		636
	se_cmpl		r3,r30		# tick=r3 nextTickCount=r30
#         {
#             nextTickCount = tick;
	.d2line		638
	isel		r30,r3,r30,0		# nextTickCount=r30 tick=r3 nextTickCount=r30
.L11492:
#         }
#         else
#         {
#             /* Do nothing on purpose. */
#         }
#     }
	.d2line		644
.Llo53:
	diab.addi		r0,r29,1		# counterIdx=r29
	se_addi		r29,1		# counterIdx=r29 counterIdx=r29
	b		.L11488
.L11490:
# 
#     return nextTickCount;
	.d2line		646
.Llo45:
	mr		r3,r30		# nextTickCount=r3 nextTickCount=r30
# }
	.d2line		647
	.d2epilogue_begin
.Llo46:
	lmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	3,10
.Llo49:
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
.L11564:
	.type		Os_Timer_QueryCounters,@function
	.size		Os_Timer_QueryCounters,.-Os_Timer_QueryCounters
# Number of nodes = 64

# Allocations for Os_Timer_QueryCounters
#	not allocated	timerId
#	?a4		timerConf
#	?a5		nextTickCount
#	?a6		tick
#	?a7		counterIdx
# FUNC(void, OS_CODE) Os_Timer_PostInit(CONST(CoreIdType, AUTOMATIC) coreId)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         120,21
#$$ld
.L11581:

#$$bf	Os_Timer_PostInit,interprocedural,rasave,nostackparams
	.globl		Os_Timer_PostInit
	.d2_cfa_start __cie
Os_Timer_PostInit:
.Llo55:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# coreId=r31 coreId=r3
	.d2prologue_end
# {
#     CONSTP2CONST(Os_TimersListOnCoreType, AUTOMATIC, OS_CONST) timersListOnCores = &Os_TimersListOnCores[coreId];
	.d2line		122
	lis		r30,Os_TimersListOnCores@ha		# coreId=r30
	e_add16i		r30,r30,Os_TimersListOnCores@l		# coreId=r30 coreId=r30
	rlwinm		r3,r3,3,13,28		# coreId=r3 coreId=r3
	se_add		r3,r30		# coreId=r3 coreId=r3 coreId=r30
.Llo56:
	mr		r30,r3		# timersListOnCores=r30 timersListOnCores=r3
#     VAR         (uint8,                   AUTOMATIC)           timerIndex;
# 
#     for(timerIndex = (uint8)0; timerIndex < timersListOnCores->Os_NumberOfTimers; timerIndex++)
	.d2line		125
	diab.li		r29,0		# timerIndex=r29
.L11357:
.Llo57:
	rlwinm		r0,r29,0,24,31		# timerIndex=r29
.Llo59:
	lbz		r3,4(r30)		# coreId=r3 timersListOnCores=r30
	se_cmp		r0,r3		# coreId=r3
	bc		0,0,.L11359	# ge
	.section	.Os_TEXT,,c
.L11589:
#     {
#         CONST(Os_TimerType, AUTOMATIC) timerConfIdx = timersListOnCores->Os_TimersList[timerIndex];
	.d2line		127
	lwz		r3,0(r30)		# coreId=r3 timersListOnCores=r30
	rlwinm		r0,r29,2,22,29		# timerIndex=r29
	lwzx		r28,r3,r0		# timerConfIdx=r28 coreId=r3
.Llo61:
	mr		r28,r28		# timerConfIdx=r28 timerConfIdx=r28
#         CONST(TickType,     AUTOMATIC) nextTickCount = Os_Timer_QueryCounters(timerConfIdx,
	.d2line		128
	lis		r4,Os_TimerConf@ha		# timerConfIdx=r4
	e_add16i		r4,r4,Os_TimerConf@l		# timerConfIdx=r4 timerConfIdx=r4
	e_mulli		r3,r28,28		# coreId=r3 timerConfIdx=r28
	se_add		r4,r3		# timerConfIdx=r4 timerConfIdx=r4 coreId=r3
	mr		r3,r28		# timerConfIdx=r3 timerConfIdx=r28
	bl		Os_Timer_QueryCounters
.Llo65:
	mr		r4,r3		# nextTickCount=r4 nextTickCount=r3
#                                                                               &Os_TimerConf[timerConfIdx]);
#         Os_Timer_CalculateTicklessValues(timerConfIdx, nextTickCount, nextTickCount);
	.d2line		130
	mr		r3,r28		# timerConfIdx=r3 timerConfIdx=r28
.Llo66:
	mr		r4,r4		# nextTickCount=r4 nextTickCount=r4
.Llo67:
	mr		r5,r4		# nextTickCount=r5 nextTickCount=r4
	bl		Os_Timer_CalculateTicklessValues
#         Os_TimerConf[timerConfIdx].Os_TimerDyn->Os_TimerTicked = Os_false;
	.d2line		131
.Llo68:
	diab.li		r0,0
	lis		r3,(Os_TimerConf+8)@ha		# timerConfIdx=r3
	e_add16i		r3,r3,(Os_TimerConf+8)@l		# timerConfIdx=r3 timerConfIdx=r3
	e_mulli		r28,r28,28		# timerConfIdx=r28 timerConfIdx=r28
.Llo62:
	lwzx		r3,r3,r28		# timerConfIdx=r3 timerConfIdx=r3
.Llo63:
	stw		r0,36(r3)		# timerConfIdx=r3
	.section	.Os_TEXT,,c
.L11590:
#     }
	.d2line		132
.Llo64:
	diab.addi		r0,r29,1		# timerIndex=r29
	se_addi		r29,1		# timerIndex=r29 timerIndex=r29
	b		.L11357
.L11359:
# 
#     Os_Timer_Platform_PostInit(coreId);
	.d2line		134
.Llo60:
	rlwinm		r3,r31,0,16,31		# coreId=r3 coreId=r31
	bl		Os_Timer_Platform_PostInit
# }
	.d2line		135
	.d2epilogue_begin
	lmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_restore_list	3,10
.Llo58:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11582:
	.type		Os_Timer_PostInit,@function
	.size		Os_Timer_PostInit,.-Os_Timer_PostInit
# Number of nodes = 73

# Allocations for Os_Timer_PostInit
#	?a4		coreId
#	?a5		timersListOnCores
#	?a6		timerIndex
#	?a7		timerConfIdx
#	?a8		nextTickCount
# FUNC(void, OS_CODE) Os_Timer_StartFirstTime(CONST(CoreIdType, AUTOMATIC) coreId)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         142,21
#$$ld
.L11599:

#$$bf	Os_Timer_StartFirstTime,interprocedural,rasave,nostackparams
	.globl		Os_Timer_StartFirstTime
	.d2_cfa_start __cie
Os_Timer_StartFirstTime:
.Llo69:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# coreId=r3 coreId=r3
	.d2prologue_end
# {
#     CONSTP2CONST(Os_TimersListOnCoreType, AUTOMATIC, OS_CONST) timersListOnCores = &Os_TimersListOnCores[coreId];
	.d2line		144
	lis		r31,Os_TimersListOnCores@ha		# coreId=r31
	e_add16i		r31,r31,Os_TimersListOnCores@l		# coreId=r31 coreId=r31
	rlwinm		r3,r3,3,13,28		# coreId=r3 coreId=r3
	se_add		r3,r31		# coreId=r3 coreId=r3 coreId=r31
.Llo70:
	mr		r31,r3		# timersListOnCores=r31 timersListOnCores=r3
#     VAR         (uint8,                   AUTOMATIC)           timerIndex;
# 
#     for(timerIndex = (uint8)0; timerIndex < timersListOnCores->Os_NumberOfTimers; timerIndex++)
	.d2line		147
	diab.li		r30,0		# timerIndex=r30
.L11363:
.Llo75:
	rlwinm		r0,r30,0,24,31		# timerConfIdx=r0 timerIndex=r30
.Llo76:
	lbz		r3,4(r31)		# coreId=r3 timersListOnCores=r31
.Llo71:
	se_cmp		r0,r3		# timerConfIdx=r0 coreId=r3
	bc		0,0,.L11362	# ge
	.section	.Os_TEXT,,c
.L11607:
#     {
#         CONST(Os_TimerType, AUTOMATIC) timerConfIdx = timersListOnCores->Os_TimersList[timerIndex];
	.d2line		149
.Llo72:
	lwz		r3,0(r31)		# coreId=r3 timersListOnCores=r31
.Llo73:
	rlwinm		r0,r30,2,22,29		# timerConfIdx=r0 timerIndex=r30
.Llo78:
	lwzx		r0,r3,r0		# timerConfIdx=r0 coreId=r3
	mr		r0,r0		# timerConfIdx=r0 timerConfIdx=r0
#         Os_Timer_Platform_Start(&Os_TimerConf[timerConfIdx],
	.d2line		150
	lis		r4,(Os_TimerConf+8)@ha
	e_add16i		r4,r4,(Os_TimerConf+8)@l
	e_mulli		r0,r0,28		# timerConfIdx=r0 timerConfIdx=r0
	lwzux		r3,r4,r0		# coreId=r3
	lwz		r4,16(r3)		# coreId=r3
	lis		r3,Os_TimerConf@ha		# coreId=r3
	e_add16i		r3,r3,Os_TimerConf@l		# coreId=r3 coreId=r3
	se_add		r3,r0		# coreId=r3 coreId=r3 timerConfIdx=r0
.Llo74:
	bl		Os_Timer_Platform_Start
	.section	.Os_TEXT,,c
.L11608:
#                                 Os_TimerConf[timerConfIdx].Os_TimerDyn->Os_TimerRemainingIncrementsCount);
#     }
	.d2line		152
.Llo79:
	diab.addi		r0,r30,1		# timerConfIdx=r0 timerIndex=r30
	se_addi		r30,1		# timerIndex=r30 timerIndex=r30
	b		.L11363
.L11362:
# #if defined(OS_CONFIG_INTERRUPTIBLE_KERNEL_CONTEXT)
#     OS_ENABLE_ALLINTR();
# #endif /* defined(OS_CONFIG_INTERRUPTIBLE_KERNEL_CONTEXT) */
# }
	.d2line		156
	.d2epilogue_begin
.Llo77:
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# timerConfIdx=r0
	mtspr		lr,r0		# timerConfIdx=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11600:
	.type		Os_Timer_StartFirstTime,@function
	.size		Os_Timer_StartFirstTime,.-Os_Timer_StartFirstTime
# Number of nodes = 55

# Allocations for Os_Timer_StartFirstTime
#	?a4		coreId
#	?a5		timersListOnCores
#	?a6		timerIndex
#	?a7		timerConfIdx
# FUNC(void, OS_CODE) Os_Timer_UpdateTickless(
	.align		2
	.section	.Os_TEXT,,c
        .d2line         163,21
#$$ld
.L11615:

#$$bf	Os_Timer_UpdateTickless,interprocedural,rasave,nostackparams
	.globl		Os_Timer_UpdateTickless
	.d2_cfa_start __cie
Os_Timer_UpdateTickless:
.Llo80:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r29,r3		# timerId=r29 timerId=r3
	.d2prologue_end
#                         CONST(Os_TimerType, AUTOMATIC) timerId
#                     )
# {
#     CONSTP2CONST(Os_TimerConfType,       AUTOMATIC, OS_CONST) timerConfPtr = &Os_TimerConf[timerId];
	.d2line		167
	lis		r31,Os_TimerConf@ha		# timerConfPtr=r31
.Llo90:
	e_add16i		r31,r31,Os_TimerConf@l		# timerConfPtr=r31 timerConfPtr=r31
	e_mulli		r3,r3,28		# timerId=r3 timerId=r3
	se_add		r3,r31		# timerId=r3 timerId=r3 timerConfPtr=r31
.Llo81:
	mr		r31,r3		# timerConfPtr=r31 timerConfPtr=r3
#     CONSTP2VAR  (Os_TimerCounterDynType, AUTOMATIC, OS_CONST) timerDyn = timerConfPtr->Os_TimerDyn;
	.d2line		168
.Llo91:
	lwz		r30,8(r31)		# timerDyn=r30 timerConfPtr=r31
.Llo92:
	mr		r30,r30		# timerDyn=r30 timerDyn=r30
# 
#     OS_ASSERT(   (Os_true == timerDyn->Os_TimerRunning)
	.d2line		170
	lwz		r0,32(r30)		# timerDyn=r30
	se_cmpi		r0,1
	bc		1,2,.L11371	# eq
.Llo82:
	lwz		r0,36(r30)		# timerDyn=r30
.Llo93:
	se_cmpi		r0,1
	bc		1,2,.L11371	# eq
	diab.li		r4,55
	lis		r3,(Os_Core_DynShared+12)@ha		# timerId=r3
	e_add16i		r3,r3,(Os_Core_DynShared+12)@l		# timerId=r3 timerId=r3
	mfspr		r0,286
	rlwinm		r0,r0,0,16,31
	e_mulli		r0,r0,152
	stwx		r4,r3,r0		# timerId=r3
	diab.li		r3,30		# timerId=r3
	bl		Os_ShutdownAllCores
.L11371:
#               || (Os_true == timerDyn->Os_TimerTicked), E_OS_SYS_TIMER_STOPPED);
# 
#     if(Os_false == timerDyn->Os_TimerTicked)
	.d2line		173
	lwz		r0,36(r30)		# timerDyn=r30
	se_cmpi		r0,0
	bc		0,2,.L11374	# ne
	.section	.Os_TEXT,,c
.L11623:
#     {
#         CONST(TickType, AUTOMATIC) elapsedIncrements =
	.d2line		175
.Llo83:
	mr		r3,r31		# timerConfPtr=r3 timerConfPtr=r31
	bl		Os_Timer_Platform_GetElapsedIncrements
.Llo98:
	mr		r0,r3		# elapsedIncrements=r0 elapsedIncrements=r3
#                 Os_Timer_Platform_GetElapsedIncrements(timerConfPtr); /* [D_OS0107] */
#         CONST(TickType, AUTOMATIC) elapsedTicks = (TickType)(elapsedIncrements / Os_TimerConf[timerId].Os_TimerMultiplicator);
	.d2line		177
	lis		r3,(Os_TimerConf+20)@ha		# timerConfPtr=r3
.Llo99:
	e_add16i		r3,r3,(Os_TimerConf+20)@l		# timerConfPtr=r3 timerConfPtr=r3
.Llo84:
	e_mulli		r29,r29,28		# timerId=r29 timerId=r29
.Llo85:
	lwzx		r3,r3,r29		# timerConfPtr=r3 timerConfPtr=r3
	divwu		r0,r0,r3		# elapsedIncrements=r0 elapsedIncrements=r0 timerConfPtr=r3
.Llo100:
	mr		r0,r0		# elapsedTicks=r0 elapsedTicks=r0
#         CONST(TickType, AUTOMATIC) deltaElapsedTicks = (TickType)(
	.d2line		178
	lwz		r5,12(r30)		# timerDyn=r30
	subf		r5,r5,r0		# elapsedTicks=r0
	lwz		r4,0(r30)		# timerDyn=r30
	lwz		r3,4(r30)		# timerConfPtr=r3 timerDyn=r30
	subf		r4,r3,r4		# timerConfPtr=r3
	se_add		r4,r5
	.d2line		186
	mr.		r29,r4		# deltaElapsedTicks=?a9 deltaElapsedTicks=?a13
#                 (TickType)(elapsedTicks - timerDyn->Os_TimerLastQueriedElapsedTicks) +
#                 (TickType)(timerDyn->Os_TimerTickCount - timerDyn->Os_TimerRemainingTicks));
# 
#         timerDyn->Os_TimerTickCount = timerDyn->Os_TimerRemainingTicks;
	.d2line		182
.Llo103:
	stw		r3,0(r30)		# timerDyn=r30 timerConfPtr=r3
#         timerDyn->Os_TimerLastQueriedElapsedTicks = elapsedTicks;
	.d2line		183
	stw		r0,12(r30)		# timerDyn=r30 elapsedTicks=r0
# 
#         /* Just update counters but do nothing else */
#         if((TickType)0U != deltaElapsedTicks)
	bc		1,2,.L11368	# eq
	.section	.Os_TEXT,,c
.L11633:
#         {
#             VAR(CounterType, AUTOMATIC) counterIdx;
# 
#             for(counterIdx = (CounterType)0U; counterIdx < timerConfPtr->Os_NumberOfCounters; counterIdx++)
	.d2line		190
.Llo95:
	diab.li		r30,0		# counterIdx=r30
.L11376:
.Llo105:
	lwz		r0,0(r31)		# elapsedTicks=r0 timerConfPtr=r31
.Llo101:
	se_cmpl		r0,r30		# elapsedTicks=r0 counterIdx=r30
	bc		0,1,.L11368	# le
#             {
#                 /* [D_OS0106] */
#                 Os_Counter_UpdateTicklessCounters(timerConfPtr->Os_Counters[counterIdx], deltaElapsedTicks);
	.d2line		193
.Llo102:
	lwz		r3,4(r31)		# timerConfPtr=r3 timerConfPtr=r31
	rlwinm		r0,r30,2,0,29		# elapsedTicks=r0 counterIdx=r30
	lwzx		r3,r3,r0		# timerConfPtr=r3 timerConfPtr=r3
	mr		r4,r29		# deltaElapsedTicks=r4 deltaElapsedTicks=r29
	bl		Os_Counter_UpdateTicklessCounters
#             }
	.d2line		194
	diab.addi		r0,r30,1		# elapsedTicks=r0 counterIdx=r30
	se_addi		r30,1		# counterIdx=r30 counterIdx=r30
	b		.L11376
	.section	.Os_TEXT,,c
.L11634:
	.section	.Os_TEXT,,c
.L11624:
.L11374:
	.section	.Os_TEXT,,c
.L11639:
#         }
#         else
#         {
#             /* Do nothing on purpose. */
#         }
#     }
#     else
#     {
#         /* The timer has ticked, have to update the counters here. */
# 
#         VAR(CounterType, AUTOMATIC) counterIdx;
#         CONST(TickType, AUTOMATIC) timerTickCount = (TickType)(timerDyn->Os_TimerTickCount -
	.d2line		206
.Llo96:
	lwz		r0,0(r30)		# timerDyn=r30
	lwz		r29,12(r30)		# timerId=r29 timerDyn=r30
.Llo86:
	subf		r29,r29,r0		# timerId=r29 timerId=r29
.Llo87:
	mr		r29,r29		# timerTickCount=r29 timerTickCount=r29
#                 timerDyn->Os_TimerLastQueriedElapsedTicks);
# 
#         timerDyn->Os_TimerTickCount = (TickType)0U;
	.d2line		209
.Llo104:
	diab.li		r0,0
	stw		r0,0(r30)		# timerDyn=r30
#         timerDyn->Os_TimerLastQueriedElapsedTicks = (TickType)0U;
	.d2line		210
	stw		r0,12(r30)		# timerDyn=r30
# 
#         for(counterIdx = (CounterType)0U; counterIdx < timerConfPtr->Os_NumberOfCounters; counterIdx++)
	.d2line		212
	diab.li		r30,0		# timerDyn=r30
.L11381:
.Llo97:
	lwz		r0,0(r31)		# timerConfPtr=r31
	se_cmpl		r0,r30		# counterIdx=r30
	bc		0,1,.L11368	# le
#         {
#             /* [D_OS0106] */
#             Os_Counter_UpdateTicklessCounters(timerConfPtr->Os_Counters[counterIdx], timerTickCount);
	.d2line		215
	lwz		r3,4(r31)		# timerId=r3 timerConfPtr=r31
.Llo88:
	rlwinm		r0,r30,2,0,29		# counterIdx=r30
	lwzx		r3,r3,r0		# timerId=r3 timerId=r3
.Llo89:
	mr		r4,r29		# timerTickCount=r4 timerTickCount=r29
	bl		Os_Counter_UpdateTicklessCounters
#         }
	.d2line		216
	diab.addi		r0,r30,1		# counterIdx=r30
	se_addi		r30,1		# counterIdx=r30 counterIdx=r30
	b		.L11381
	.section	.Os_TEXT,,c
.L11640:
.L11368:
#     }
# }
	.d2line		218
	.d2epilogue_begin
.Llo94:
	lmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# elapsedTicks=r0
	mtspr		lr,r0		# elapsedTicks=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11616:
	.type		Os_Timer_UpdateTickless,@function
	.size		Os_Timer_UpdateTickless,.-Os_Timer_UpdateTickless
# Number of nodes = 170

# Allocations for Os_Timer_UpdateTickless
#	?a4		timerId
#	?a5		timerConfPtr
#	?a6		timerDyn
#	?a7		elapsedIncrements
#	?a8		elapsedTicks
#	?a9		deltaElapsedTicks
#	?a10		counterIdx
#	?a11		counterIdx
#	?a12		timerTickCount
# FUNC(void, OS_CODE) Os_Timer_SuspendTickless(
	.align		2
	.section	.Os_TEXT,,c
        .d2line         225,21
#$$ld
.L11649:

#$$bf	Os_Timer_SuspendTickless,interprocedural,rasave,nostackparams
	.globl		Os_Timer_SuspendTickless
	.d2_cfa_start __cie
Os_Timer_SuspendTickless:
.Llo106:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r29,r3		# timerId=r29 timerId=r3
	.d2prologue_end
#                         CONST(Os_TimerType, AUTOMATIC) timerId
#                     )
# {
#     CONSTP2CONST(Os_TimerConfType,       AUTOMATIC, OS_CONST) timerConfPtr = &Os_TimerConf[timerId];
	.d2line		229
.Llo122:
	lis		r31,Os_TimerConf@ha		# timerConfPtr=r31
.Llo110:
	e_add16i		r31,r31,Os_TimerConf@l		# timerConfPtr=r31 timerConfPtr=r31
	e_mulli		r3,r3,28		# timerId=r3 timerId=r3
	se_add		r3,r31		# timerId=r3 timerId=r3 timerConfPtr=r31
.Llo107:
	mr		r31,r3		# timerConfPtr=r31 timerConfPtr=r3
#     CONSTP2VAR  (Os_TimerCounterDynType, AUTOMATIC, OS_CONST) timerDyn = timerConfPtr->Os_TimerDyn;
	.d2line		230
.Llo111:
	lwz		r30,8(r31)		# timerDyn=r30 timerConfPtr=r31
.Llo112:
	mr		r30,r30		# timerDyn=r30 timerDyn=r30
# 
#     /* [D_OS0159] */
#     if(Os_true == timerDyn->Os_TimerRunning)
	.d2line		233
.Llo123:
	lwz		r0,32(r30)		# timerDyn=r30
	se_cmpi		r0,1
	bc		0,2,.L11390	# ne
	.section	.Os_TEXT,,c
.L11657:
#     {
#         VAR(TickType, AUTOMATIC) elapsedIncrements ;
# #if defined(OS_CONFIG_INTERRUPTIBLE_KERNEL_CONTEXT)
#         /* To keep the dynamic jitter measurement correct, it must be done inside an atomic
#          * block.
#          */
#         OS_DISABLE_ALLINTR();
# #endif /* defined(OS_CONFIG_INTERRUPTIBLE_KERNEL_CONTEXT) */
# 
#         /* [D_OS0109] */
#         elapsedIncrements =
	.d2line		244
.Llo108:
	diab.addi		r4,r30,40		# timerDyn=r30
.Llo113:
	mr		r3,r31		# timerConfPtr=r3 timerConfPtr=r31
	bl		Os_Timer_Platform_RestartAndGetElapsedIncrements
.Llo116:
	mr		r0,r3		# elapsedIncrements=r0 elapsedIncrements=r3
	.section	.Os_TEXT,,c
.L11663:
#                 Os_Timer_Platform_RestartAndGetElapsedIncrements(timerConfPtr,
#                                                                  &timerDyn->Os_TimerExpired);
# #if defined(OS_CONFIG_INTERRUPTIBLE_KERNEL_CONTEXT)
#         OS_ENABLE_ALLINTR();
# #endif /* defined(OS_CONFIG_INTERRUPTIBLE_KERNEL_CONTEXT) */
# 
#         /* [D_OS0151] */
#         {
#             CONST(TickType, AUTOMATIC) elapsedTicks = elapsedIncrements / Os_TimerConf[timerId].Os_TimerMultiplicator;
	.d2line		253
.Llo117:
	lis		r3,(Os_TimerConf+20)@ha		# timerConfPtr=r3
.Llo118:
	e_add16i		r3,r3,(Os_TimerConf+20)@l		# timerConfPtr=r3 timerConfPtr=r3
	e_mulli		r7,r29,28		# timerId=r29
	lwzx		r4,r3,r7		# elapsedTicks=r4 timerConfPtr=r3
.Llo121:
	divwu		r4,r0,r4		# elapsedTicks=r4 elapsedIncrements=r0 elapsedTicks=r4
	mr		r4,r4		# elapsedTicks=r4 elapsedTicks=r4
#             CONST(TickType, AUTOMATIC) deltaElapsedTicks = (TickType)(
	.d2line		254
	lwz		r6,12(r30)		# timerDyn=r30
	subf		r6,r6,r4		# elapsedTicks=r4
	lwz		r5,0(r30)		# timerDyn=r30
	lwz		r28,4(r30)		# timerDyn=r30
	subf		r5,r28,r5
	se_add		r5,r6
	.d2line		277
	mr.		r29,r5		# deltaElapsedTicks=?a9 deltaElapsedTicks=?a11
#             (TickType)(elapsedTicks - timerDyn->Os_TimerLastQueriedElapsedTicks) +
#             (TickType)(timerDyn->Os_TimerTickCount - timerDyn->Os_TimerRemainingTicks));
# 
#             /* Set timer state */
#             timerDyn->Os_TimerRunning = Os_false;
	.d2line		259
	diab.li		r6,0
	stw		r6,32(r30)		# timerDyn=r30
# 
#             /**
#             * Update ticks since the timer is going to be restarted anyway and
#             * a tick shall not be reported multiple times.
#             */
#             timerDyn->Os_TimerConfiguredTicks -= elapsedTicks;
	.d2line		265
	lwz		r5,8(r30)		# timerDyn=r30
	subf		r5,r4,r5		# elapsedTicks=r4
	stw		r5,8(r30)		# timerDyn=r30
#             timerDyn->Os_TimerRemainingTicks -= elapsedTicks;
	.d2line		266
	subf		r5,r4,r28		# elapsedTicks=r4
	stw		r5,4(r30)		# timerDyn=r30
#             timerDyn->Os_TimerTickCount = timerDyn->Os_TimerRemainingTicks;
	.d2line		267
	stw		r5,0(r30)		# timerDyn=r30
#             timerDyn->Os_TimerLastQueriedElapsedTicks = (TickType)0;
	.d2line		268
	stw		r6,12(r30)		# timerDyn=r30
# 
#             /* Update increments */
#             /* [D_OS0152] */
#             timerDyn->Os_TimerRemainingIncrementsCount -= elapsedIncrements;
	.d2line		272
	lwz		r5,16(r30)		# timerDyn=r30
	subf		r5,r0,r5		# elapsedIncrements=r0
	stw		r5,16(r30)		# timerDyn=r30
#             timerDyn->Os_TimerRemainderIncrements      = elapsedIncrements -
	.d2line		273
	lwzx		r3,r3,r7		# timerConfPtr=r3 timerConfPtr=r3
	mullw		r3,r3,r4		# timerConfPtr=r3 timerConfPtr=r3 elapsedTicks=r4
	subf		r3,r3,r0		# timerConfPtr=r3 timerConfPtr=r3 elapsedIncrements=r0
	stw		r3,20(r30)		# timerDyn=r30 timerConfPtr=r3
#                 (elapsedTicks * Os_TimerConf[timerId].Os_TimerMultiplicator);
# 
#             /* Just update counters but do nothing else */
#             if((TickType)0 != deltaElapsedTicks)
	.d2line		277
	bc		1,2,.L11390	# eq
	.section	.Os_TEXT,,c
.L11671:
#             {
#                 VAR(CounterType, AUTOMATIC) counterIdx;
# 
#                 for(counterIdx = (CounterType)0U; counterIdx < timerConfPtr->Os_NumberOfCounters; counterIdx++)
	.d2line		281
.Llo114:
	diab.li		r30,0		# counterIdx=r30
.L11393:
.Llo115:
	lwz		r0,0(r31)		# elapsedIncrements=r0 timerConfPtr=r31
.Llo119:
	se_cmpl		r0,r30		# elapsedIncrements=r0 counterIdx=r30
	bc		0,1,.L11390	# le
#                 {
#                     /* [D_OS0110] */
#                     Os_Counter_UpdateTicklessCounters(timerConfPtr->Os_Counters[counterIdx], deltaElapsedTicks);
	.d2line		284
.Llo120:
	lwz		r3,4(r31)		# timerConfPtr=r3 timerConfPtr=r31
	rlwinm		r0,r30,2,0,29		# elapsedIncrements=r0 counterIdx=r30
	lwzx		r3,r3,r0		# timerConfPtr=r3 timerConfPtr=r3
	mr		r4,r29		# deltaElapsedTicks=r4 deltaElapsedTicks=r29
	bl		Os_Counter_UpdateTicklessCounters
#                 }
	.d2line		285
	diab.addi		r0,r30,1		# elapsedIncrements=r0 counterIdx=r30
	se_addi		r30,1		# counterIdx=r30 counterIdx=r30
	b		.L11393
	.section	.Os_TEXT,,c
.L11672:
	.section	.Os_TEXT,,c
.L11664:
	.section	.Os_TEXT,,c
.L11658:
.L11390:
#             }
#     
#             else
#             {
#                 /* Do nothing on purpose. */
#             }
#         }
#     }
#     else
#     {
#         /* Do nothing on purpose. */
#     }
# }
	.d2line		298
	.d2epilogue_begin
.Llo109:
	lmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# elapsedIncrements=r0
	mtspr		lr,r0		# elapsedIncrements=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11650:
	.type		Os_Timer_SuspendTickless,@function
	.size		Os_Timer_SuspendTickless,.-Os_Timer_SuspendTickless
# Number of nodes = 141

# Allocations for Os_Timer_SuspendTickless
#	?a4		timerId
#	?a5		timerConfPtr
#	?a6		timerDyn
#	?a7		elapsedIncrements
#	?a8		elapsedTicks
#	?a9		deltaElapsedTicks
#	?a10		counterIdx
# FUNC(void, OS_CODE) Os_Timer_ResumeTickless(
	.align		2
	.section	.Os_TEXT,,c
        .d2line         305,21
#$$ld
.L11679:

#$$bf	Os_Timer_ResumeTickless,interprocedural,rasave,nostackparams
	.globl		Os_Timer_ResumeTickless
	.d2_cfa_start __cie
Os_Timer_ResumeTickless:
.Llo124:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# timerId=r31 timerId=r3
	.d2prologue_end
#                         CONST(Os_TimerType, AUTOMATIC) timerId
#                     )
# {
#     CONSTP2VAR(Os_TimerCounterDynType, AUTOMATIC, OS_CONST) timerDyn = Os_TimerConf[timerId].Os_TimerDyn;
	.d2line		309
.Llo125:
	lis		r3,(Os_TimerConf+8)@ha
.Llo126:
	e_add16i		r3,r3,(Os_TimerConf+8)@l
	e_mulli		r0,r31,28		# timerId=r31
	lwzx		r30,r3,r0		# timerDyn=r30
	mr		r30,r30		# timerDyn=r30 timerDyn=r30
# 
#     OS_ASSERT(Os_false == timerDyn->Os_TimerRunning, E_OS_SYS_TIMER_RUNNING);
	.d2line		311
	lwz		r0,32(r30)		# timerDyn=r30
	se_cmpi		r0,0
	bc		1,2,.L11403	# eq
	diab.li		r4,54
	lis		r3,(Os_Core_DynShared+12)@ha
	e_add16i		r3,r3,(Os_Core_DynShared+12)@l
	mfspr		r0,286
	rlwinm		r0,r0,0,16,31
	e_mulli		r0,r0,152
	stwx		r4,r3,r0
	diab.li		r3,30
	bl		Os_ShutdownAllCores
.L11403:
# 
#     if(Os_false == timerDyn->Os_TimerTicked)
	.d2line		313
	lwz		r0,36(r30)		# timerDyn=r30
	se_cmpi		r0,0
	bc		0,2,.L11400	# ne
#     {
#         /* Set timer state */
#         timerDyn->Os_TimerRunning = Os_true;
	.d2line		316
	diab.li		r0,1
	stw		r0,32(r30)		# timerDyn=r30
# 
#         /* Reset increment remainder */
#         timerDyn->Os_TimerRemainderIncrements = (TickType)0U;
	.d2line		319
	diab.li		r0,0
	stw		r0,20(r30)		# timerDyn=r30
# 
#         /* [D_OS0160] */
#         if(Os_false == timerDyn->Os_TimerExpired)
	.d2line		322
	lwz		r0,40(r30)		# timerDyn=r30
	se_cmpi		r0,0
	bc		0,2,.L11400	# ne
#         {
# #if defined(OS_CONFIG_INTERRUPTIBLE_KERNEL_CONTEXT)
#             /* To keep the dynamic jitter measurement correct, it must be done inside an atomic
#              * block.
#              */
#             OS_DISABLE_ALLINTR();
# #endif /* defined(OS_CONFIG_INTERRUPTIBLE_KERNEL_CONTEXT) */
#             timerDyn->Os_TimerJitterIncrementsCount +=
	.d2line		330
	lis		r3,Os_TimerConf@ha
	e_add16i		r3,r3,Os_TimerConf@l
	e_mulli		r0,r31,28		# timerId=r31
	se_add		r3,r0
	bl		Os_Timer_Platform_StopAndGetElapsedIncrements
	lwz		r0,24(r30)		# timerDyn=r30
	se_add		r3,r0
	stw		r3,24(r30)		# timerDyn=r30
#                     Os_Timer_Platform_StopAndGetElapsedIncrements(&Os_TimerConf[timerId]);
# 
#             OS_ASSERT(((TickType)OS_TIMER_JITTER_MAX_VALUE) > timerDyn->Os_TimerJitterIncrementsCount,
	.d2line		333
	diab.li		r0,2147483647
	se_cmpl		r3,r0
	bc		1,0,.L11410	# lt
	diab.li		r4,56
	lis		r3,(Os_Core_DynShared+12)@ha
	e_add16i		r3,r3,(Os_Core_DynShared+12)@l
	mfspr		r0,286
	rlwinm		r0,r0,0,16,31
	e_mulli		r0,r0,152
	stwx		r4,r3,r0
	diab.li		r3,30
	bl		Os_ShutdownAllCores
.L11410:
#                       E_OS_SYS_TIMER_TOO_MUCH_JITTER);
# 
#             if(timerDyn->Os_TimerRemainingIncrementsCount >= timerDyn->Os_TimerJitterIncrementsCount)
	.d2line		336
	lwz		r0,16(r30)		# timerDyn=r30
	lwz		r3,24(r30)		# timerDyn=r30
	se_cmpl		r0,r3
	bc		1,0,.L11413	# lt
#             {
#                 timerDyn->Os_TimerRemainingIncrementsCount -= timerDyn->Os_TimerJitterIncrementsCount;
	.d2line		338
	lwz		r0,16(r30)		# timerDyn=r30
	lwz		r3,24(r30)		# timerDyn=r30
	subf		r3,r3,r0
	stw		r3,16(r30)		# timerDyn=r30
#                 timerDyn->Os_TimerJitterIncrementsCount = (TickType)0U;
	.d2line		339
	diab.li		r0,0
	stw		r0,24(r30)		# timerDyn=r30
	b		.L11414
.L11413:
#             }
#             else
#             {
#                 timerDyn->Os_TimerJitterIncrementsCount -= timerDyn->Os_TimerRemainingIncrementsCount;
	.d2line		343
	lwz		r0,24(r30)		# timerDyn=r30
	lwz		r3,16(r30)		# timerDyn=r30
	subf		r3,r3,r0
	stw		r3,24(r30)		# timerDyn=r30
#                 timerDyn->Os_TimerRemainingIncrementsCount = (TickType)0U;
	.d2line		344
	diab.li		r0,0
	stw		r0,16(r30)		# timerDyn=r30
.L11414:
#             }
# 
#             /* [D_OS0148] */
#             Os_Timer_Platform_Start(&Os_TimerConf[timerId], timerDyn->Os_TimerRemainingIncrementsCount);
	.d2line		348
.Llo127:
	lis		r3,Os_TimerConf@ha
	e_add16i		r3,r3,Os_TimerConf@l
.Llo128:
	e_mulli		r31,r31,28		# timerId=r31 timerId=r31
	se_add		r3,r31		# timerId=r31
	lwz		r4,16(r30)		# timerDyn=r30
	bl		Os_Timer_Platform_Start
.L11400:
# #if defined(OS_CONFIG_INTERRUPTIBLE_KERNEL_CONTEXT)
#             OS_ENABLE_ALLINTR();
# #endif /* defined(OS_CONFIG_INTERRUPTIBLE_KERNEL_CONTEXT) */
#         }
#         else
#         {
#             /* Timer has already expired. Do not reconfigure it, but let the corresponding interrupt handle the rest. */
#         }
#     }
#     else
#     {
#         /* Timer has ticked, do not start as it will be started automatically again. */
#     }
# }
	.d2line		362
	.d2epilogue_begin
.Llo129:
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
.L11680:
	.type		Os_Timer_ResumeTickless,@function
	.size		Os_Timer_ResumeTickless,.-Os_Timer_ResumeTickless
# Number of nodes = 156

# Allocations for Os_Timer_ResumeTickless
#	?a4		timerId
#	?a5		timerDyn
# LOCAL_INLINE FUNC(void, OS_CODE)    Os_Timer_StartTickless(
	.align		1
	.section	.Os_TEXT,,c
        .d2line         561,37
#$$ld
.L11687:

#$$bf	Os_Timer_StartTickless,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Os_Timer_StartTickless:
.Llo130:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# timerId=r31 timerId=r3
	.d2prologue_end
#                                         CONST(Os_TimerType, AUTOMATIC) timerId,
#                                         CONST(TickType,     AUTOMATIC) tickCount,
#                                         CONST(TickType,     AUTOMATIC) remainingTickCount
#                                     )
# {
#     CONSTP2VAR(Os_TimerCounterDynType, AUTOMATIC, OS_CONST) timerDyn = Os_TimerConf[timerId].Os_TimerDyn;
	.d2line		567
	lis		r3,(Os_TimerConf+8)@ha		# timerId=r3
	e_add16i		r3,r3,(Os_TimerConf+8)@l		# timerId=r3 timerId=r3
	e_mulli		r0,r31,28		# timerId=r31
	lwzx		r30,r3,r0		# timerDyn=r30 timerId=r3
	mr		r30,r30		# timerDyn=r30 timerDyn=r30
#     Os_Timer_CalculateTicklessValues(timerId, tickCount, remainingTickCount);
	.d2line		568
	mr		r3,r31		# timerId=r3 timerId=r31
.Llo131:
	mr		r0,r4		# tickCount=r0 tickCount=r4
	mr		r0,r5		# remainingTickCount=r0 remainingTickCount=r5
	bl		Os_Timer_CalculateTicklessValues
#     Os_Timer_Platform_Start(&Os_TimerConf[timerId], timerDyn->Os_TimerRemainingIncrementsCount);
	.d2line		569
.Llo134:
	lis		r3,Os_TimerConf@ha		# timerId=r3
.Llo132:
	e_add16i		r3,r3,Os_TimerConf@l		# timerId=r3 timerId=r3
	e_mulli		r31,r31,28		# timerId=r31 timerId=r31
	se_add		r3,r31		# timerId=r3 timerId=r3 timerId=r31
.Llo133:
	lwz		r4,16(r30)		# timerDyn=r30
	bl		Os_Timer_Platform_Start
# #if defined(OS_CONFIG_INTERRUPTIBLE_KERNEL_CONTEXT)
#     OS_ENABLE_ALLINTR();
# #endif /* defined(OS_CONFIG_INTERRUPTIBLE_KERNEL_CONTEXT) */
# }
	.d2line		573
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo135:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11688:
	.type		Os_Timer_StartTickless,@function
	.size		Os_Timer_StartTickless,.-Os_Timer_StartTickless
# Number of nodes = 33

# Allocations for Os_Timer_StartTickless
#	?a4		timerId
#	?a5		tickCount
#	?a6		remainingTickCount
#	?a7		timerDyn
# FUNC(void, OS_CODE) Os_Timer_RestartTickless(
	.align		2
	.section	.Os_TEXT,,c
        .d2line         370,21
#$$ld
.L11697:

#$$bf	Os_Timer_RestartTickless,interprocedural,rasave,nostackparams
	.globl		Os_Timer_RestartTickless
	.d2_cfa_start __cie
Os_Timer_RestartTickless:
.Llo136:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# timerId=r31 timerId=r3
	.d2prologue_end
#                         CONST(Os_TimerType, AUTOMATIC) timerId
#                     )
# {
#     CONSTP2CONST(Os_TimerConfType,       AUTOMATIC, OS_CONST) timerCounterConf = &Os_TimerConf[timerId];
	.d2line		374
	lis		r30,Os_TimerConf@ha		# timerCounterConf=r30
.Llo140:
	e_add16i		r30,r30,Os_TimerConf@l		# timerCounterConf=r30 timerCounterConf=r30
	e_mulli		r3,r3,28		# timerId=r3 timerId=r3
	se_add		r3,r30		# timerId=r3 timerId=r3 timerCounterConf=r30
.Llo137:
	mr		r30,r3		# timerCounterConf=r30 timerCounterConf=r3
#     CONSTP2VAR  (Os_TimerCounterDynType, AUTOMATIC, OS_CONST) timerDyn = timerCounterConf->Os_TimerDyn;
	.d2line		375
.Llo141:
	lwz		r29,8(r30)		# timerDyn=r29 timerCounterConf=r30
.Llo142:
	mr		r29,r29		# timerDyn=r29 timerDyn=r29
# 
#     OS_ASSERT(Os_false == timerDyn->Os_TimerRunning, E_OS_SYS_TIMER_RUNNING);
	.d2line		377
	lwz		r0,32(r29)		# timerDyn=r29
	se_cmpi		r0,0
	bc		1,2,.L11425	# eq
.Llo138:
	diab.li		r4,54
.Llo143:
	lis		r3,(Os_Core_DynShared+12)@ha		# timerId=r3
	e_add16i		r3,r3,(Os_Core_DynShared+12)@l		# timerId=r3 timerId=r3
	mfspr		r0,286
	rlwinm		r0,r0,0,16,31
	e_mulli		r0,r0,152
	stwx		r4,r3,r0		# timerId=r3
	diab.li		r3,30		# timerId=r3
	bl		Os_ShutdownAllCores
.L11425:
# 
#     if(Os_false == timerDyn->Os_TimerTicked)
	.d2line		379
	lwz		r0,36(r29)		# timerDyn=r29
	se_cmpi		r0,0
	bc		0,2,.L11422	# ne
#     {
#         /* [D_OS0161] */
#         if(Os_false == timerDyn->Os_TimerExpired)
	.d2line		382
	lwz		r0,40(r29)		# timerDyn=r29
	se_cmpi		r0,0
	bc		0,2,.L11422	# ne
	.section	.Os_TEXT,,c
.L11705:
#         {
#             /* [D_OS0114] [D_OS0115] [D_OS0116] */
#             CONST(TickType, AUTOMATIC) nextTickCount = Os_Timer_QueryCounters(timerId, timerCounterConf);
	.d2line		385
	mr		r3,r31		# timerId=r3 timerId=r31
	mr		r4,r30		# timerCounterConf=r4 timerCounterConf=r30
	bl		Os_Timer_QueryCounters
.Llo144:
	mr		r4,r3		# nextTickCount=r4 nextTickCount=r3
#             timerDyn->Os_TimerTickCount = (TickType)0U;
	.d2line		386
	diab.li		r0,0
	stw		r0,0(r29)		# timerDyn=r29
#             Os_Timer_StartTickless(timerId, nextTickCount, nextTickCount);
	.d2line		387
	mr		r3,r31		# timerId=r3 timerId=r31
.Llo145:
	mr		r4,r4		# nextTickCount=r4 nextTickCount=r4
.Llo146:
	mr		r5,r4		# nextTickCount=r5 nextTickCount=r4
	bl		Os_Timer_StartTickless
	.section	.Os_TEXT,,c
.L11706:
.L11422:
#         }
#         else
#         {
#             /* Timer has already expired. Do not reconfigure it, but let the corresponding interrupt handle the rest. */
#         }
#     }
#     else
#     {
#         /* Timer has ticked, do not start as it will be started automatically again. */
#     }
# }
	.d2line		398
	.d2epilogue_begin
.Llo139:
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
.L11698:
	.type		Os_Timer_RestartTickless,@function
	.size		Os_Timer_RestartTickless,.-Os_Timer_RestartTickless
# Number of nodes = 73

# Allocations for Os_Timer_RestartTickless
#	?a4		timerId
#	?a5		timerCounterConf
#	?a6		timerDyn
#	?a7		nextTickCount
# LOCAL_INLINE FUNC(void, OS_CODE)    Os_Timer_UpdateCounters(
	.align		1
	.section	.Os_TEXT,,c
        .d2line         582,37
#$$ld
.L11713:

#$$bf	Os_Timer_UpdateCounters,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Os_Timer_UpdateCounters:
.Llo147:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr
	stmw		r27,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	27,31,1,1
	stw		r0,52(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# timerId=r31 timerId=r3
	mr		r30,r4		# timerConf=r30 timerConf=r4
	.d2prologue_end
#                                         CONST       (Os_TimerType,     AUTOMATIC)           timerId,
#                                         CONSTP2CONST(Os_TimerConfType, AUTOMATIC, OS_CONST) timerConf
#                                     )
# {
#     CONST(TickType, AUTOMATIC) timerTickCount = timerConf->Os_TimerDyn->Os_TimerTickCount;
#     VAR(TickType,   AUTOMATIC) nextTickCount = (TickType)~(TickType)0U; /* [D_OS0119] */
	.d2line		588
	diab.li		r28,-1		# nextTickCount=r28
	.d2line		587
.Llo156:
	lwz		r3,8(r30)		# timerConf=r30
.Llo148:
	lwz		r29,0(r3)
.Llo155:
	mr		r29,r29		# timerTickCount=r29 timerTickCount=r29
#     VAR(TickType,   AUTOMATIC) tick;
#     VAR(CounterType,AUTOMATIC) counterIdx;
# 
#     OS_ASSERT(Os_false == timerConf->Os_TimerDyn->Os_TimerRunning, E_OS_SYS_TIMER_RUNNING);
	.d2line		592
	lwz		r0,32(r3)
	se_cmpi		r0,0
	bc		1,2,.L11470	# eq
.Llo149:
	diab.li		r4,54
.Llo151:
	lis		r3,(Os_Core_DynShared+12)@ha
	e_add16i		r3,r3,(Os_Core_DynShared+12)@l
	mfspr		r0,286
	rlwinm		r0,r0,0,16,31
	e_mulli		r0,r0,152
	stwx		r4,r3,r0
	diab.li		r3,30
	bl		Os_ShutdownAllCores
.L11470:
# 
#     for(counterIdx = (CounterType)0U; counterIdx < timerConf->Os_NumberOfCounters; counterIdx++)
	.d2line		594
	diab.li		r27,0		# counterIdx=r27
.L11473:
.Llo161:
	lwz		r0,0(r30)		# timerConf=r30
	se_cmpl		r0,r27		# counterIdx=r27
	bc		0,1,.L11475	# le
#     {
#         /* [D_OS0118] */
#         tick = Os_Counter_IncrementTicklessTicks(timerConf->Os_Counters[counterIdx], timerTickCount);
	.d2line		597
	lwz		r3,4(r30)		# tick=r3 timerConf=r30
.Llo157:
	rlwinm		r0,r27,2,0,29		# counterIdx=r27
	lwzx		r3,r3,r0		# tick=r3 tick=r3
.Llo158:
	mr		r4,r29		# timerTickCount=r4 timerTickCount=r29
	bl		Os_Counter_IncrementTicklessTicks
.Llo159:
	mr		r3,r3		# tick=r3 tick=r3
# 
#         /* [D_OS0120] */
#         if(tick < nextTickCount)
	.d2line		600
	se_cmpl		r3,r28		# tick=r3 nextTickCount=r28
#         {
#             nextTickCount = tick;
	.d2line		602
	isel		r28,r3,r28,0		# nextTickCount=r28 tick=r3 nextTickCount=r28
.L11477:
#         }
#         else
#         {
#             /* Do nothing on purpose. */
#         }
#     }
	.d2line		608
.Llo160:
	diab.addi		r0,r27,1		# counterIdx=r27
	se_addi		r27,1		# counterIdx=r27 counterIdx=r27
	b		.L11473
.L11475:
# 
#     Os_Timer_StartTickless(timerId, nextTickCount, nextTickCount);
	.d2line		610
.Llo152:
	mr		r3,r31		# timerId=r3 timerId=r31
.Llo153:
	mr		r4,r28		# nextTickCount=r4 nextTickCount=r28
.Llo154:
	mr		r5,r4		# nextTickCount=r5 nextTickCount=r4
	bl		Os_Timer_StartTickless
# }
	.d2line		611
	.d2epilogue_begin
	lmw		r27,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo150:
	lwz		r0,52(r1)
	mtspr		lr,r0
	diab.addi		r1,r1,48		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11714:
	.type		Os_Timer_UpdateCounters,@function
	.size		Os_Timer_UpdateCounters,.-Os_Timer_UpdateCounters
# Number of nodes = 79

# Allocations for Os_Timer_UpdateCounters
#	?a4		timerId
#	?a5		timerConf
#	?a6		timerTickCount
#	?a7		nextTickCount
#	?a8		tick
#	?a9		counterIdx
# FUNC(void, OS_CODE) Os_Timer_Tick(
	.align		2
	.section	.Os_TEXT,,c
        .d2line         405,21
#$$ld
.L11728:

#$$bf	Os_Timer_Tick,interprocedural,rasave,nostackparams
	.globl		Os_Timer_Tick
	.d2_cfa_start __cie
Os_Timer_Tick:
.Llo162:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# timerId=r31 timerId=r3
	.d2prologue_end
#                         CONST(Os_TimerType, AUTOMATIC) timerId
#                     )
# {
#     CONST       (CoreIdType,             AUTOMATIC)           coreId = OS_GETCOREID();
	.d2line		409
.Llo163:
	mfspr		r30,286		# coreId=r30
.Llo164:
	mr		r30,r30		# coreId=r30 coreId=r30
#     CONSTP2CONST(Os_TimerConfType,       AUTOMATIC, OS_CONST) timerCounterConf = &Os_TimerConf[timerId];
	.d2line		410
	lis		r29,Os_TimerConf@ha		# timerCounterConf=r29
.Llo167:
	e_add16i		r29,r29,Os_TimerConf@l		# timerCounterConf=r29 timerCounterConf=r29
	e_mulli		r0,r31,28		# timerId=r31
	se_add		r0,r29		# timerCounterConf=r29
	mr		r29,r0		# timerCounterConf=r29 timerCounterConf=r0
#     CONSTP2VAR  (Os_TimerCounterDynType, AUTOMATIC, OS_CONST) timerDyn = timerCounterConf->Os_TimerDyn;
	.d2line		411
.Llo168:
	lwz		r28,8(r29)		# timerDyn=r28 timerCounterConf=r29
.Llo169:
	mr		r28,r28		# timerDyn=r28 timerDyn=r28
# 
#     Os_Timer_Platform_Tick(timerCounterConf);
	.d2line		413
	mr		r3,r29		# timerCounterConf=r3 timerCounterConf=r29
	bl		Os_Timer_Platform_Tick
#     OS_GET_CORE_ISR_DYN(coreId)->Os_IsrNeedToClear = Os_TimerConf[timerId].Os_IsrPltConfig;
	.d2line		414
.Llo170:
	lis		r3,(Os_TimerConf+12)@ha		# timerCounterConf=r3
.Llo171:
	e_add16i		r3,r3,(Os_TimerConf+12)@l		# timerCounterConf=r3 timerCounterConf=r3
	e_mulli		r0,r31,28		# timerId=r31
	lwzx		r0,r3,r0		# timerCounterConf=r3
	lis		r3,(Os_Core_Stat+4)@ha		# timerCounterConf=r3
	e_add16i		r3,r3,(Os_Core_Stat+4)@l		# timerCounterConf=r3 timerCounterConf=r3
	rlwinm		r30,r30,0,16,31		# coreId=r30 coreId=r30
	e_mulli		r30,r30,20		# coreId=r30 coreId=r30
.Llo166:
	lwzx		r3,r3,r30		# timerCounterConf=r3 timerCounterConf=r3
	stw		r0,52(r3)		# timerCounterConf=r3
# 
#     /* Set timer state */
#     timerDyn->Os_TimerTicked  = Os_true;
	.d2line		417
	diab.li		r0,1
	stw		r0,36(r28)		# timerDyn=r28
#     timerDyn->Os_TimerRunning = Os_false;
	.d2line		418
	diab.li		r0,0
	stw		r0,32(r28)		# timerDyn=r28
# 
#     /* Update ticks */
#     timerDyn->Os_TimerTickCount      -= timerDyn->Os_TimerLastQueriedElapsedTicks;
	.d2line		421
	lwz		r0,0(r28)		# timerDyn=r28
	lwz		r3,12(r28)		# timerCounterConf=r3 timerDyn=r28
	subf		r3,r3,r0		# timerCounterConf=r3 timerCounterConf=r3
	stw		r3,0(r28)		# timerDyn=r28 timerCounterConf=r3
#     timerDyn->Os_TimerRemainingTicks -= timerDyn->Os_TimerConfiguredTicks;
	.d2line		422
	lwz		r0,4(r28)		# timerDyn=r28
	lwz		r3,8(r28)		# timerCounterConf=r3 timerDyn=r28
	.d2line		424
	subf.		r3,r3,r0		# timerCounterConf=r3 timerCounterConf=r3
	stw		r3,4(r28)		# timerDyn=r28 timerCounterConf=r3
# 
#     if((TickType)0U == timerDyn->Os_TimerRemainingTicks)
	bc		0,2,.L11435	# ne
#     {
#         Os_Timer_UpdateCounters(timerId, timerCounterConf); /* [D_OS0118] [D_OS0119] [D_OS0120] */
	.d2line		426
.Llo172:
	mr		r3,r31		# timerId=r3 timerId=r31
.Llo173:
	mr		r4,r29		# timerCounterConf=r4 timerCounterConf=r29
	bl		Os_Timer_UpdateCounters
	b		.L11434
.L11435:
#     }
#     else
#     {
#         Os_Timer_StartTickless(timerId, timerDyn->Os_TimerTickCount, timerDyn->Os_TimerRemainingTicks);
	.d2line		430
	lwz		r5,4(r28)		# timerDyn=r28
	lwz		r4,0(r28)		# timerDyn=r28
	mr		r3,r31		# timerId=r3 timerId=r31
	bl		Os_Timer_StartTickless
.L11434:
#     }
# }
	.d2line		432
	.d2epilogue_begin
.Llo165:
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
.L11729:
	.type		Os_Timer_Tick,@function
	.size		Os_Timer_Tick,.-Os_Timer_Tick
# Number of nodes = 101

# Allocations for Os_Timer_Tick
#	?a4		timerId
#	?a5		coreId
#	?a6		timerCounterConf
#	?a7		timerDyn
# FUNC(Os_BoolType, OS_CODE)  Os_Timer_HasExpired(
	.align		2
	.section	.Os_TEXT,,c
        .d2line         439,29
#$$ld
.L11740:

#$$bf	Os_Timer_HasExpired,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4
	.globl		Os_Timer_HasExpired
	.d2_cfa_start __cie
Os_Timer_HasExpired:
.Llo174:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# timerId=r3 timerId=r3
	.d2prologue_end
#                                 CONST(Os_TimerType, AUTOMATIC) timerId
#                             )
# {
#     return Os_TimerConf[timerId].Os_TimerDyn->Os_TimerExpired;
	.d2line		443
	lis		r4,(Os_TimerConf+8)@ha
	e_add16i		r4,r4,(Os_TimerConf+8)@l
	e_mulli		r3,r3,28		# timerId=r3 timerId=r3
	lwzx		r3,r4,r3		# timerId=r3
	lwz		r3,40(r3)		# timerId=r3 timerId=r3
# }
	.d2line		444
	.d2epilogue_begin
.Llo175:
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11741:
	.type		Os_Timer_HasExpired,@function
	.size		Os_Timer_HasExpired,.-Os_Timer_HasExpired
# Number of nodes = 13

# Allocations for Os_Timer_HasExpired
#	?a4		timerId

# Allocations for module
	.section	.text_vle
	.0byte		.L11746
	.section	.text_vle
	.0byte		.L11753
	.section	.Os_BSS,,b
	.0byte		.L11760
	.section	.text_vle
#$$ld
.L5:
.L12299:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_Types.h"
.L12295:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ApplicationApiTypes.h"
.L12293:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ScheduleTableApiTypes.h"
.L12291:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_TaskApiTypes.h"
.L12289:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_SpinlockApiTypes.h"
.L12271:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\PowerPC\\WindRiver\\AUTOSAR\\ar422\\MemMap.h"
.L12269:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_InternalTypes.h"
.L12252:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ErrorApiTypes.h"
.L12232:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ExceptionApiTypes.h"
.L12161:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_CounterCfgTypes.h"
.L12146:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_ApplicationCfgTypes.h"
.L12098:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_TaskCfgTypes.h"
.L12095:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_HookApiTypes.h"
.L12070:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_TrustedFunctionCfgTypes.h"
.L11826:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_ApiDispatchCfgTypes.h"
.L11765:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_SchedulerCfgTypes.h"
.L11754:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_CoreCfgTypes.h"
.L11747:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_TimerCfgTypes.h"
	.d2_line_end
	.section	.Os_TEXT,,c
#$$ld
.L11501:
.L11509:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\timer\\Os_Timer.c"
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
	.uleb128	33
	.byte		0x0
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\timer\\Os_Timer.c"
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
.L11498:
	.4byte		.L11499-.L11497
.L11497:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L11503-.L11498
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\timer\\Os_Timer.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L11500
	.4byte		.L11501
	.4byte		.L11504
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11510:
	.sleb128	2
	.4byte		.L11506-.L11498
	.byte		"Os_Timer_StartTicklessFirstTime"
	.byte		0
	.4byte		.L11509
	.uleb128	454
	.uleb128	37
	.byte		0x1
	.4byte		.L11507
	.4byte		.L11508
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L11509
	.uleb128	454
	.uleb128	37
	.byte		"timerId"
	.byte		0
	.4byte		.L11511
	.4byte		.L11515
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11516:
	.sleb128	4
	.4byte		.L11509
	.uleb128	458
	.uleb128	61
	.byte		"timerDyn"
	.byte		0
	.4byte		.L11517
	.4byte		.L11521
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11506:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11526:
	.sleb128	5
	.4byte		.L11523-.L11498
	.byte		"Os_Timer_Init"
	.byte		0
	.4byte		.L11509
	.uleb128	86
	.uleb128	21
	.byte		0x1
	.byte		0x1
	.4byte		.L11524
	.4byte		.L11525
	.sleb128	3
	.4byte		.L11509
	.uleb128	86
	.uleb128	21
	.byte		"coreId"
	.byte		0
	.4byte		.L11527
	.4byte		.L11531
.L11532:
	.sleb128	4
	.4byte		.L11509
	.uleb128	88
	.uleb128	64
	.byte		"timersListOnCores"
	.byte		0
	.4byte		.L11533
	.4byte		.L11538
.L11539:
	.sleb128	4
	.4byte		.L11509
	.uleb128	89
	.uleb128	64
	.byte		"timerIndex"
	.byte		0
	.4byte		.L11540
	.4byte		.L11542
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	6
	.4byte		.L11546
	.4byte		.L11543
	.4byte		.L11544
.L11547:
	.sleb128	4
	.4byte		.L11509
	.uleb128	104
	.uleb128	40
	.byte		"timerConfIdx"
	.byte		0
	.4byte		.L11511
	.4byte		.L11548
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11546:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11523:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11553:
	.sleb128	2
	.4byte		.L11550-.L11498
	.byte		"Os_Timer_CalculateTicklessValues"
	.byte		0
	.4byte		.L11509
	.uleb128	503
	.uleb128	37
	.byte		0x1
	.4byte		.L11551
	.4byte		.L11552
	.sleb128	3
	.4byte		.L11509
	.uleb128	503
	.uleb128	37
	.byte		"timerId"
	.byte		0
	.4byte		.L11511
	.4byte		.L11554
	.sleb128	3
	.4byte		.L11509
	.uleb128	503
	.uleb128	37
	.byte		"tickCount"
	.byte		0
	.4byte		.L11555
	.4byte		.L11557
	.sleb128	3
	.4byte		.L11509
	.uleb128	503
	.uleb128	37
	.byte		"remainingTickCount"
	.byte		0
	.4byte		.L11555
	.4byte		.L11558
.L11559:
	.sleb128	4
	.4byte		.L11509
	.uleb128	509
	.uleb128	61
	.byte		"timerDyn"
	.byte		0
	.4byte		.L11517
	.4byte		.L11560
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11550:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11565:
	.sleb128	7
	.4byte		.L11562-.L11498
	.byte		"Os_Timer_QueryCounters"
	.byte		0
	.4byte		.L11509
	.uleb128	620
	.uleb128	41
	.4byte		.L11556
	.byte		0x1
	.4byte		.L11563
	.4byte		.L11564
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	8
	.4byte		.L11509
	.uleb128	620
	.uleb128	41
	.byte		"timerId"
	.byte		0
	.4byte		.L11511
	.sleb128	2
	.byte		0x90
	.uleb128	3
	.sleb128	3
	.4byte		.L11509
	.uleb128	620
	.uleb128	41
	.byte		"timerConf"
	.byte		0
	.4byte		.L11566
	.4byte		.L11571
.L11572:
	.sleb128	4
	.4byte		.L11509
	.uleb128	625
	.uleb128	33
	.byte		"nextTickCount"
	.byte		0
	.4byte		.L11556
	.4byte		.L11573
.L11574:
	.sleb128	4
	.4byte		.L11509
	.uleb128	626
	.uleb128	33
	.byte		"tick"
	.byte		0
	.4byte		.L11556
	.4byte		.L11575
.L11576:
	.sleb128	4
	.4byte		.L11509
	.uleb128	627
	.uleb128	33
	.byte		"counterIdx"
	.byte		0
	.4byte		.L11577
	.4byte		.L11578
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11562:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11583:
	.sleb128	5
	.4byte		.L11580-.L11498
	.byte		"Os_Timer_PostInit"
	.byte		0
	.4byte		.L11509
	.uleb128	120
	.uleb128	21
	.byte		0x1
	.byte		0x1
	.4byte		.L11581
	.4byte		.L11582
	.sleb128	3
	.4byte		.L11509
	.uleb128	120
	.uleb128	21
	.byte		"coreId"
	.byte		0
	.4byte		.L11527
	.4byte		.L11584
.L11585:
	.sleb128	4
	.4byte		.L11509
	.uleb128	122
	.uleb128	64
	.byte		"timersListOnCores"
	.byte		0
	.4byte		.L11533
	.4byte		.L11586
.L11587:
	.sleb128	4
	.4byte		.L11509
	.uleb128	123
	.uleb128	64
	.byte		"timerIndex"
	.byte		0
	.4byte		.L11540
	.4byte		.L11588
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	6
	.4byte		.L11592
	.4byte		.L11589
	.4byte		.L11590
.L11593:
	.sleb128	4
	.4byte		.L11509
	.uleb128	127
	.uleb128	40
	.byte		"timerConfIdx"
	.byte		0
	.4byte		.L11511
	.4byte		.L11594
.L11595:
	.sleb128	4
	.4byte		.L11509
	.uleb128	128
	.uleb128	40
	.byte		"nextTickCount"
	.byte		0
	.4byte		.L11555
	.4byte		.L11596
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11592:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11580:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11601:
	.sleb128	5
	.4byte		.L11598-.L11498
	.byte		"Os_Timer_StartFirstTime"
	.byte		0
	.4byte		.L11509
	.uleb128	142
	.uleb128	21
	.byte		0x1
	.byte		0x1
	.4byte		.L11599
	.4byte		.L11600
	.sleb128	3
	.4byte		.L11509
	.uleb128	142
	.uleb128	21
	.byte		"coreId"
	.byte		0
	.4byte		.L11527
	.4byte		.L11602
.L11603:
	.sleb128	4
	.4byte		.L11509
	.uleb128	144
	.uleb128	64
	.byte		"timersListOnCores"
	.byte		0
	.4byte		.L11533
	.4byte		.L11604
.L11605:
	.sleb128	4
	.4byte		.L11509
	.uleb128	145
	.uleb128	64
	.byte		"timerIndex"
	.byte		0
	.4byte		.L11540
	.4byte		.L11606
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	6
	.4byte		.L11610
	.4byte		.L11607
	.4byte		.L11608
.L11611:
	.sleb128	4
	.4byte		.L11509
	.uleb128	149
	.uleb128	40
	.byte		"timerConfIdx"
	.byte		0
	.4byte		.L11511
	.4byte		.L11612
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11610:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11598:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11617:
	.sleb128	5
	.4byte		.L11614-.L11498
	.byte		"Os_Timer_UpdateTickless"
	.byte		0
	.4byte		.L11509
	.uleb128	163
	.uleb128	21
	.byte		0x1
	.byte		0x1
	.4byte		.L11615
	.4byte		.L11616
	.sleb128	3
	.4byte		.L11509
	.uleb128	163
	.uleb128	21
	.byte		"timerId"
	.byte		0
	.4byte		.L11511
	.4byte		.L11618
.L11619:
	.sleb128	4
	.4byte		.L11509
	.uleb128	167
	.uleb128	63
	.byte		"timerConfPtr"
	.byte		0
	.4byte		.L11566
	.4byte		.L11620
.L11621:
	.sleb128	4
	.4byte		.L11509
	.uleb128	168
	.uleb128	63
	.byte		"timerDyn"
	.byte		0
	.4byte		.L11517
	.4byte		.L11622
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	6
	.4byte		.L11626
	.4byte		.L11623
	.4byte		.L11624
.L11627:
	.sleb128	4
	.4byte		.L11509
	.uleb128	175
	.uleb128	36
	.byte		"elapsedIncrements"
	.byte		0
	.4byte		.L11555
	.4byte		.L11628
.L11629:
	.sleb128	4
	.4byte		.L11509
	.uleb128	177
	.uleb128	36
	.byte		"elapsedTicks"
	.byte		0
	.4byte		.L11555
	.4byte		.L11630
.L11631:
	.sleb128	4
	.4byte		.L11509
	.uleb128	178
	.uleb128	36
	.byte		"deltaElapsedTicks"
	.byte		0
	.4byte		.L11555
	.4byte		.L11632
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	6
	.4byte		.L11636
	.4byte		.L11633
	.4byte		.L11634
.L11637:
	.sleb128	4
	.4byte		.L11509
	.uleb128	188
	.uleb128	41
	.byte		"counterIdx"
	.byte		0
	.4byte		.L11577
	.4byte		.L11638
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11636:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11626:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	6
	.4byte		.L11642
	.4byte		.L11639
	.4byte		.L11640
.L11643:
	.sleb128	4
	.4byte		.L11509
	.uleb128	205
	.uleb128	37
	.byte		"counterIdx"
	.byte		0
	.4byte		.L11577
	.4byte		.L11644
.L11645:
	.sleb128	4
	.4byte		.L11509
	.uleb128	206
	.uleb128	36
	.byte		"timerTickCount"
	.byte		0
	.4byte		.L11555
	.4byte		.L11646
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11642:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11614:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11651:
	.sleb128	5
	.4byte		.L11648-.L11498
	.byte		"Os_Timer_SuspendTickless"
	.byte		0
	.4byte		.L11509
	.uleb128	225
	.uleb128	21
	.byte		0x1
	.byte		0x1
	.4byte		.L11649
	.4byte		.L11650
	.sleb128	3
	.4byte		.L11509
	.uleb128	225
	.uleb128	21
	.byte		"timerId"
	.byte		0
	.4byte		.L11511
	.4byte		.L11652
.L11653:
	.sleb128	4
	.4byte		.L11509
	.uleb128	229
	.uleb128	63
	.byte		"timerConfPtr"
	.byte		0
	.4byte		.L11566
	.4byte		.L11654
.L11655:
	.sleb128	4
	.4byte		.L11509
	.uleb128	230
	.uleb128	63
	.byte		"timerDyn"
	.byte		0
	.4byte		.L11517
	.4byte		.L11656
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	6
	.4byte		.L11660
	.4byte		.L11657
	.4byte		.L11658
.L11661:
	.sleb128	4
	.4byte		.L11509
	.uleb128	235
	.uleb128	34
	.byte		"elapsedIncrements"
	.byte		0
	.4byte		.L11556
	.4byte		.L11662
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	6
	.4byte		.L11666
	.4byte		.L11663
	.4byte		.L11664
.L11667:
	.sleb128	4
	.4byte		.L11509
	.uleb128	253
	.uleb128	40
	.byte		"elapsedTicks"
	.byte		0
	.4byte		.L11555
	.4byte		.L11668
.L11669:
	.sleb128	4
	.4byte		.L11509
	.uleb128	254
	.uleb128	40
	.byte		"deltaElapsedTicks"
	.byte		0
	.4byte		.L11555
	.4byte		.L11670
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	6
	.4byte		.L11674
	.4byte		.L11671
	.4byte		.L11672
.L11675:
	.sleb128	4
	.4byte		.L11509
	.uleb128	279
	.uleb128	45
	.byte		"counterIdx"
	.byte		0
	.4byte		.L11577
	.4byte		.L11676
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11674:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11666:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11660:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11648:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11681:
	.sleb128	5
	.4byte		.L11678-.L11498
	.byte		"Os_Timer_ResumeTickless"
	.byte		0
	.4byte		.L11509
	.uleb128	305
	.uleb128	21
	.byte		0x1
	.byte		0x1
	.4byte		.L11679
	.4byte		.L11680
	.sleb128	3
	.4byte		.L11509
	.uleb128	305
	.uleb128	21
	.byte		"timerId"
	.byte		0
	.4byte		.L11511
	.4byte		.L11682
.L11683:
	.sleb128	4
	.4byte		.L11509
	.uleb128	309
	.uleb128	61
	.byte		"timerDyn"
	.byte		0
	.4byte		.L11517
	.4byte		.L11684
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11678:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11689:
	.sleb128	2
	.4byte		.L11686-.L11498
	.byte		"Os_Timer_StartTickless"
	.byte		0
	.4byte		.L11509
	.uleb128	561
	.uleb128	37
	.byte		0x1
	.4byte		.L11687
	.4byte		.L11688
	.sleb128	3
	.4byte		.L11509
	.uleb128	561
	.uleb128	37
	.byte		"timerId"
	.byte		0
	.4byte		.L11511
	.4byte		.L11690
	.sleb128	3
	.4byte		.L11509
	.uleb128	561
	.uleb128	37
	.byte		"tickCount"
	.byte		0
	.4byte		.L11555
	.4byte		.L11691
	.sleb128	3
	.4byte		.L11509
	.uleb128	561
	.uleb128	37
	.byte		"remainingTickCount"
	.byte		0
	.4byte		.L11555
	.4byte		.L11692
.L11693:
	.sleb128	4
	.4byte		.L11509
	.uleb128	567
	.uleb128	61
	.byte		"timerDyn"
	.byte		0
	.4byte		.L11517
	.4byte		.L11694
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11686:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11699:
	.sleb128	5
	.4byte		.L11696-.L11498
	.byte		"Os_Timer_RestartTickless"
	.byte		0
	.4byte		.L11509
	.uleb128	370
	.uleb128	21
	.byte		0x1
	.byte		0x1
	.4byte		.L11697
	.4byte		.L11698
	.sleb128	3
	.4byte		.L11509
	.uleb128	370
	.uleb128	21
	.byte		"timerId"
	.byte		0
	.4byte		.L11511
	.4byte		.L11700
.L11701:
	.sleb128	4
	.4byte		.L11509
	.uleb128	374
	.uleb128	63
	.byte		"timerCounterConf"
	.byte		0
	.4byte		.L11566
	.4byte		.L11702
.L11703:
	.sleb128	4
	.4byte		.L11509
	.uleb128	375
	.uleb128	63
	.byte		"timerDyn"
	.byte		0
	.4byte		.L11517
	.4byte		.L11704
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	6
	.4byte		.L11708
	.4byte		.L11705
	.4byte		.L11706
.L11709:
	.sleb128	4
	.4byte		.L11509
	.uleb128	385
	.uleb128	40
	.byte		"nextTickCount"
	.byte		0
	.4byte		.L11555
	.4byte		.L11710
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11708:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11696:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11715:
	.sleb128	2
	.4byte		.L11712-.L11498
	.byte		"Os_Timer_UpdateCounters"
	.byte		0
	.4byte		.L11509
	.uleb128	582
	.uleb128	37
	.byte		0x1
	.4byte		.L11713
	.4byte		.L11714
	.sleb128	3
	.4byte		.L11509
	.uleb128	582
	.uleb128	37
	.byte		"timerId"
	.byte		0
	.4byte		.L11511
	.4byte		.L11716
	.sleb128	3
	.4byte		.L11509
	.uleb128	582
	.uleb128	37
	.byte		"timerConf"
	.byte		0
	.4byte		.L11566
	.4byte		.L11717
.L11718:
	.sleb128	4
	.4byte		.L11509
	.uleb128	587
	.uleb128	32
	.byte		"timerTickCount"
	.byte		0
	.4byte		.L11555
	.4byte		.L11719
.L11720:
	.sleb128	4
	.4byte		.L11509
	.uleb128	588
	.uleb128	32
	.byte		"nextTickCount"
	.byte		0
	.4byte		.L11556
	.4byte		.L11721
.L11722:
	.sleb128	4
	.4byte		.L11509
	.uleb128	589
	.uleb128	32
	.byte		"tick"
	.byte		0
	.4byte		.L11556
	.4byte		.L11723
.L11724:
	.sleb128	4
	.4byte		.L11509
	.uleb128	590
	.uleb128	32
	.byte		"counterIdx"
	.byte		0
	.4byte		.L11577
	.4byte		.L11725
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11712:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11730:
	.sleb128	5
	.4byte		.L11727-.L11498
	.byte		"Os_Timer_Tick"
	.byte		0
	.4byte		.L11509
	.uleb128	405
	.uleb128	21
	.byte		0x1
	.byte		0x1
	.4byte		.L11728
	.4byte		.L11729
	.sleb128	3
	.4byte		.L11509
	.uleb128	405
	.uleb128	21
	.byte		"timerId"
	.byte		0
	.4byte		.L11511
	.4byte		.L11731
.L11732:
	.sleb128	4
	.4byte		.L11509
	.uleb128	409
	.uleb128	63
	.byte		"coreId"
	.byte		0
	.4byte		.L11527
	.4byte		.L11733
.L11734:
	.sleb128	4
	.4byte		.L11509
	.uleb128	410
	.uleb128	63
	.byte		"timerCounterConf"
	.byte		0
	.4byte		.L11566
	.4byte		.L11735
.L11736:
	.sleb128	4
	.4byte		.L11509
	.uleb128	411
	.uleb128	63
	.byte		"timerDyn"
	.byte		0
	.4byte		.L11517
	.4byte		.L11737
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11727:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11744:
	.sleb128	9
	.4byte		.L11739-.L11498
	.byte		"Os_Timer_HasExpired"
	.byte		0
	.4byte		.L11509
	.uleb128	439
	.uleb128	29
	.4byte		.L11742
	.byte		0x1
	.byte		0x1
	.4byte		.L11740
	.4byte		.L11741
	.sleb128	3
	.4byte		.L11509
	.uleb128	439
	.uleb128	29
	.byte		"timerId"
	.byte		0
	.4byte		.L11511
	.4byte		.L11745
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11739:
	.section	.debug_info,,n
.L11746:
	.sleb128	10
	.byte		0x1
	.byte		0x1
	.4byte		.L11747
	.uleb128	95
	.uleb128	49
	.byte		"Os_TimersListOnCores"
	.byte		0
	.4byte		.L11748
	.section	.debug_info,,n
.L11750:
	.sleb128	10
	.byte		0x1
	.byte		0x1
	.4byte		.L11747
	.uleb128	97
	.uleb128	42
	.byte		"Os_TimerConf"
	.byte		0
	.4byte		.L11751
.L11753:
	.sleb128	10
	.byte		0x1
	.byte		0x1
	.4byte		.L11754
	.uleb128	169
	.uleb128	42
	.byte		"Os_Core_Stat"
	.byte		0
	.4byte		.L11755
	.section	.debug_info,,n
.L11760:
	.sleb128	10
	.byte		0x1
	.byte		0x1
	.4byte		.L11754
	.uleb128	181
	.uleb128	45
	.byte		"Os_Core_DynShared"
	.byte		0
	.4byte		.L11761
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11759:
	.sleb128	11
	.4byte		.L11765
	.uleb128	69
	.uleb128	1
	.4byte		.L11766-.L2
	.uleb128	20
	.section	.debug_info,,n
.L786:
	.sleb128	12
	.byte		"Os_Core_DynInit"
	.byte		0
	.4byte		.L11767
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L787:
	.sleb128	12
	.byte		"Os_Core_Dyn"
	.byte		0
	.4byte		.L11771
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L788:
	.sleb128	12
	.byte		"Os_DispatchElement"
	.byte		0
	.4byte		.L11775
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L789:
	.sleb128	12
	.byte		"Os_PrepareContextFunction"
	.byte		0
	.4byte		.L11779
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L790:
	.sleb128	12
	.byte		"Os_GetStackPointerFunction"
	.byte		0
	.4byte		.L11789
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11766:
.L11770:
	.sleb128	11
	.4byte		.L11765
	.uleb128	69
	.uleb128	1
	.4byte		.L11796-.L2
	.uleb128	36
.L783:
	.sleb128	12
	.byte		"Os_IsrDynInit"
	.byte		0
	.4byte		.L11797
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L784:
	.sleb128	12
	.byte		"Os_SchedulerDynInit"
	.byte		0
	.4byte		.L11799
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L785:
	.sleb128	12
	.byte		"Os_CurrentApp"
	.byte		0
	.4byte		.L11801
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
	.sleb128	0
.L11796:
.L11764:
	.sleb128	11
	.4byte		.L11765
	.uleb128	69
	.uleb128	1
	.4byte		.L11805-.L2
	.uleb128	152
.L776:
	.sleb128	12
	.byte		"Os_Dispatcher"
	.byte		0
	.4byte		.L11806
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L777:
	.sleb128	12
	.byte		"Os_PublicDataNoInit"
	.byte		0
	.4byte		.L11808
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11805:
.L11774:
	.sleb128	11
	.4byte		.L11765
	.uleb128	69
	.uleb128	1
	.4byte		.L11810-.L2
	.uleb128	104
.L773:
	.sleb128	12
	.byte		"Os_SchedulerDyn"
	.byte		0
	.4byte		.L11811
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L774:
	.sleb128	12
	.byte		"Os_IsrDyn"
	.byte		0
	.4byte		.L11813
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L775:
	.sleb128	12
	.byte		"Os_HooksDyn"
	.byte		0
	.4byte		.L11815
	.sleb128	2
	.byte		0x23
	.uleb128	100
	.byte		0x1
	.sleb128	0
.L11810:
.L11800:
	.sleb128	11
	.4byte		.L11765
	.uleb128	69
	.uleb128	1
	.4byte		.L11817-.L2
	.uleb128	4
.L772:
	.sleb128	12
	.byte		"Os_SchedulerCurrentProc"
	.byte		0
	.4byte		.L11818
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11817:
.L11812:
	.sleb128	11
	.4byte		.L11765
	.uleb128	69
	.uleb128	1
	.4byte		.L11820-.L2
	.uleb128	48
.L764:
	.sleb128	12
	.byte		"Os_CurrentContext"
	.byte		0
	.4byte		.L11794
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L765:
	.sleb128	12
	.byte		"Os_PreviousContext"
	.byte		0
	.4byte		.L11794
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L766:
	.sleb128	12
	.byte		"Os_SchedulerScheduleAction"
	.byte		0
	.4byte		.L11821
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L767:
	.sleb128	12
	.byte		"Os_SchedulerLastScheduledPriority"
	.byte		0
	.4byte		.L11823
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L768:
	.sleb128	12
	.byte		"Os_SchedulerCurrentTask"
	.byte		0
	.4byte		.L11818
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L769:
	.sleb128	12
	.byte		"Os_SchedulerLastScheduledProc"
	.byte		0
	.4byte		.L11818
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L770:
	.sleb128	12
	.byte		"Os_SchedulerHeadPivot"
	.byte		0
	.4byte		.L11824
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L771:
	.sleb128	12
	.byte		"Os_SchedulerTailPivot"
	.byte		0
	.4byte		.L11824
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
	.sleb128	0
.L11820:
	.section	.debug_info,,n
.L11825:
	.sleb128	13
	.4byte		.L11826
	.uleb128	612
	.uleb128	1
	.4byte		.L11827-.L2
	.byte		"Os_SchedulerQueueElementType_s"
	.byte		0
	.uleb128	12
.L750:
	.sleb128	12
	.byte		"Os_QueueProc"
	.byte		0
	.4byte		.L11818
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L751:
	.sleb128	12
	.byte		"Os_QueueFrontElement"
	.byte		0
	.4byte		.L11828
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L752:
	.sleb128	12
	.byte		"Os_QueueBackElement"
	.byte		0
	.4byte		.L11828
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11827:
.L11798:
	.sleb128	11
	.4byte		.L11826
	.uleb128	612
	.uleb128	1
	.4byte		.L11829-.L2
	.uleb128	28
.L743:
	.sleb128	12
	.byte		"Os_CurrentUserModePriority"
	.byte		0
	.4byte		.L11830
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L744:
	.sleb128	12
	.byte		"Os_UserModePriorityChanged"
	.byte		0
	.4byte		.L11831
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L745:
	.sleb128	12
	.byte		"Os_DisableAllCount"
	.byte		0
	.4byte		.L11513
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L746:
	.sleb128	12
	.byte		"Os_SuspendAllCount"
	.byte		0
	.4byte		.L11513
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L747:
	.sleb128	12
	.byte		"Os_SuspendOSCount"
	.byte		0
	.4byte		.L11513
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L748:
	.sleb128	12
	.byte		"Os_SavedIsrLevel"
	.byte		0
	.4byte		.L11830
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L749:
	.sleb128	12
	.byte		"Os_SavedOSIsrLevel"
	.byte		0
	.4byte		.L11830
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
	.sleb128	0
.L11829:
.L11814:
	.sleb128	11
	.4byte		.L11826
	.uleb128	612
	.uleb128	1
	.4byte		.L11832-.L2
	.uleb128	52
.L737:
	.sleb128	12
	.byte		"Os_IsrRunningIsr"
	.byte		0
	.4byte		.L11818
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L738:
	.sleb128	12
	.byte		"Os_IsrNeedToClear"
	.byte		0
	.4byte		.L11833
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L739:
	.sleb128	12
	.byte		"Os_Isr_NestLevel"
	.byte		0
	.4byte		.L11513
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L740:
	.sleb128	12
	.byte		"Os_Isr_ServicesBackup"
	.byte		0
	.4byte		.L11837
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L741:
	.sleb128	12
	.byte		"Os_SuspendAllPrevIsrState"
	.byte		0
	.4byte		.L11830
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L742:
	.sleb128	12
	.byte		"Os_SuspendCounterpartTrack"
	.byte		0
	.4byte		.L11841
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L11832:
.L11807:
	.sleb128	11
	.4byte		.L11826
	.uleb128	612
	.uleb128	1
	.4byte		.L11843-.L2
	.uleb128	8
.L735:
	.sleb128	12
	.byte		"Os_DHead"
	.byte		0
	.4byte		.L11513
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L736:
	.sleb128	12
	.byte		"Os_DTail"
	.byte		0
	.4byte		.L11513
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11843:
.L11778:
	.sleb128	13
	.4byte		.L11826
	.uleb128	612
	.uleb128	1
	.4byte		.L11844-.L2
	.byte		"Os_DispatchElementType_s"
	.byte		0
	.uleb128	56
.L730:
	.sleb128	12
	.byte		"Os_DispatchKind"
	.byte		0
	.4byte		.L11845
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L731:
	.sleb128	12
	.byte		"Os_DispatcherLockCoreId"
	.byte		0
	.4byte		.L11528
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L732:
	.sleb128	12
	.byte		"Os_DispatchIsrId"
	.byte		0
	.4byte		.L11847
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L733:
	.sleb128	12
	.byte		"Os_DispatchApiCall"
	.byte		0
	.4byte		.L11850
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L734:
	.sleb128	12
	.byte		"Os_DispatchApiInternal"
	.byte		0
	.4byte		.L11851
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11844:
.L11852:
	.sleb128	13
	.4byte		.L11826
	.uleb128	60
	.uleb128	1
	.4byte		.L11853-.L2
	.byte		"Os_APICallType_struct"
	.byte		0
	.uleb128	40
.L725:
	.sleb128	12
	.byte		"Os_API_Magic"
	.byte		0
	.4byte		.L11513
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L726:
	.sleb128	12
	.byte		"Os_API_ReturnValue"
	.byte		0
	.4byte		.L11854
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L727:
	.sleb128	12
	.byte		"Os_API_Lock"
	.byte		0
	.4byte		.L11855
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L728:
	.sleb128	12
	.byte		"Os_API_Func"
	.byte		0
	.4byte		.L11857
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L729:
	.sleb128	12
	.byte		"Os_API_Data"
	.byte		0
	.4byte		.L11863
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11853:
	.section	.debug_info,,n
.L11863:
	.sleb128	14
	.4byte		.L11826
	.uleb128	60
	.uleb128	1
	.4byte		.L11864-.L2
	.uleb128	24
.L677:
	.sleb128	12
	.byte		"Os_ApiStartOs"
	.byte		0
	.4byte		.L11865
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L678:
	.sleb128	12
	.byte		"Os_ApiShutdownOs"
	.byte		0
	.4byte		.L11867
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L679:
	.sleb128	12
	.byte		"Os_ApiShutdownOsInternal"
	.byte		0
	.4byte		.L11869
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L680:
	.sleb128	12
	.byte		"Os_ApiShutdownAllCores"
	.byte		0
	.4byte		.L11871
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L681:
	.sleb128	12
	.byte		"Os_ApiGetNumberOfActivatedCores"
	.byte		0
	.4byte		.L11873
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L682:
	.sleb128	12
	.byte		"Os_ApiStartCore"
	.byte		0
	.4byte		.L11875
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L683:
	.sleb128	12
	.byte		"Os_ApiStartNonAutosarCore"
	.byte		0
	.4byte		.L11877
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L684:
	.sleb128	12
	.byte		"Os_ApiGetCoreID"
	.byte		0
	.4byte		.L11879
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L685:
	.sleb128	12
	.byte		"Os_ApiActivateTask"
	.byte		0
	.4byte		.L11881
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L686:
	.sleb128	12
	.byte		"Os_ApiChainTask"
	.byte		0
	.4byte		.L11883
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L687:
	.sleb128	12
	.byte		"Os_ApiGetTaskID"
	.byte		0
	.4byte		.L11885
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L688:
	.sleb128	12
	.byte		"Os_ApiGetTaskState"
	.byte		0
	.4byte		.L11887
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L689:
	.sleb128	12
	.byte		"Os_ApiSetEvent"
	.byte		0
	.4byte		.L11889
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L690:
	.sleb128	12
	.byte		"Os_ApiClearEvent"
	.byte		0
	.4byte		.L11891
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L691:
	.sleb128	12
	.byte		"Os_ApiGetEvent"
	.byte		0
	.4byte		.L11893
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L692:
	.sleb128	12
	.byte		"Os_ApiWaitEvent"
	.byte		0
	.4byte		.L11895
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L693:
	.sleb128	12
	.byte		"Os_ApiGetResource"
	.byte		0
	.4byte		.L11897
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L694:
	.sleb128	12
	.byte		"Os_ApiReleaseResource"
	.byte		0
	.4byte		.L11899
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L695:
	.sleb128	12
	.byte		"Os_ApiGetAlarmBase"
	.byte		0
	.4byte		.L11901
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L696:
	.sleb128	12
	.byte		"Os_ApiGetAlarm"
	.byte		0
	.4byte		.L11903
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L697:
	.sleb128	12
	.byte		"Os_ApiSetRelAlarm"
	.byte		0
	.4byte		.L11905
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L698:
	.sleb128	12
	.byte		"Os_ApiSetAbsAlarm"
	.byte		0
	.4byte		.L11907
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L699:
	.sleb128	12
	.byte		"Os_ApiCancelAlarm"
	.byte		0
	.4byte		.L11909
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L700:
	.sleb128	12
	.byte		"Os_ApiGetApplicationState"
	.byte		0
	.4byte		.L11911
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L701:
	.sleb128	12
	.byte		"Os_ApiTerminateApplication"
	.byte		0
	.4byte		.L11913
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L702:
	.sleb128	12
	.byte		"Os_ApiGetApplicationID"
	.byte		0
	.4byte		.L11915
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L703:
	.sleb128	12
	.byte		"Os_ApiGetISRID"
	.byte		0
	.4byte		.L11917
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L704:
	.sleb128	12
	.byte		"Os_ApiGetActiveApplicationMode"
	.byte		0
	.4byte		.L11919
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L705:
	.sleb128	12
	.byte		"Os_ApiIncrementCounter"
	.byte		0
	.4byte		.L11921
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L706:
	.sleb128	12
	.byte		"Os_ApiGetCounterValue"
	.byte		0
	.4byte		.L11923
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L707:
	.sleb128	12
	.byte		"Os_ApiGetElapsedValue"
	.byte		0
	.4byte		.L11925
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L708:
	.sleb128	12
	.byte		"Os_ApiStartScheduleTableAbs"
	.byte		0
	.4byte		.L11927
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L709:
	.sleb128	12
	.byte		"Os_ApiStartScheduleTableRel"
	.byte		0
	.4byte		.L11929
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L710:
	.sleb128	12
	.byte		"Os_ApiStopScheduleTable"
	.byte		0
	.4byte		.L11931
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L711:
	.sleb128	12
	.byte		"Os_ApiGetScheduleTableStatus"
	.byte		0
	.4byte		.L11933
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L712:
	.sleb128	12
	.byte		"Os_ApiNextScheduleTable"
	.byte		0
	.4byte		.L11935
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L713:
	.sleb128	12
	.byte		"Os_ApiStartScheduleTableSynchron"
	.byte		0
	.4byte		.L11937
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L714:
	.sleb128	12
	.byte		"Os_ApiSyncScheduleTable"
	.byte		0
	.4byte		.L11939
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L715:
	.sleb128	12
	.byte		"Os_ApiSetScheduleTableAsync"
	.byte		0
	.4byte		.L11941
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L716:
	.sleb128	12
	.byte		"Os_ApiCheckObjectAccess"
	.byte		0
	.4byte		.L11943
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L717:
	.sleb128	12
	.byte		"Os_ApiCheckObjectOwnership"
	.byte		0
	.4byte		.L11945
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L718:
	.sleb128	12
	.byte		"Os_ApiCallTrustedFunction"
	.byte		0
	.4byte		.L11947
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L719:
	.sleb128	12
	.byte		"Os_ApiStackUsage"
	.byte		0
	.4byte		.L11949
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L720:
	.sleb128	12
	.byte		"Os_API_GetSpinlock"
	.byte		0
	.4byte		.L11951
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L721:
	.sleb128	12
	.byte		"Os_API_ReleaseSpinlock"
	.byte		0
	.4byte		.L11953
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L722:
	.sleb128	12
	.byte		"Os_API_TryToGetSpinlock"
	.byte		0
	.4byte		.L11955
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L723:
	.sleb128	12
	.byte		"Os_API_IOCTransfer"
	.byte		0
	.4byte		.L11957
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L724:
	.sleb128	12
	.byte		"Os_ApiControlIdle"
	.byte		0
	.4byte		.L11959
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11864:
.L11960:
	.sleb128	11
	.4byte		.L11826
	.uleb128	60
	.uleb128	1
	.4byte		.L11961-.L2
	.uleb128	8
.L675:
	.sleb128	12
	.byte		"CoreID"
	.byte		0
	.4byte		.L11528
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L676:
	.sleb128	12
	.byte		"IdleMode"
	.byte		0
	.4byte		.L11962
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11961:
.L11958:
	.sleb128	11
	.4byte		.L11826
	.uleb128	60
	.uleb128	1
	.4byte		.L11964-.L2
	.uleb128	8
.L673:
	.sleb128	12
	.byte		"Ioc_Channel"
	.byte		0
	.4byte		.L11965
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L674:
	.sleb128	12
	.byte		"Ioc_Data"
	.byte		0
	.4byte		.L11969
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11964:
.L11956:
	.sleb128	11
	.4byte		.L11826
	.uleb128	60
	.uleb128	1
	.4byte		.L11975-.L2
	.uleb128	8
.L671:
	.sleb128	12
	.byte		"SpinlockId"
	.byte		0
	.4byte		.L11976
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L672:
	.sleb128	12
	.byte		"Success"
	.byte		0
	.4byte		.L11977
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11975:
.L11954:
	.sleb128	11
	.4byte		.L11826
	.uleb128	60
	.uleb128	1
	.4byte		.L11980-.L2
	.uleb128	2
.L670:
	.sleb128	12
	.byte		"SpinlockId"
	.byte		0
	.4byte		.L11976
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11980:
.L11952:
	.sleb128	11
	.4byte		.L11826
	.uleb128	60
	.uleb128	1
	.4byte		.L11981-.L2
	.uleb128	2
.L669:
	.sleb128	12
	.byte		"SpinlockId"
	.byte		0
	.4byte		.L11976
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11981:
.L11950:
	.sleb128	11
	.4byte		.L11826
	.uleb128	60
	.uleb128	1
	.4byte		.L11982-.L2
	.uleb128	20
.L664:
	.sleb128	12
	.byte		"ProcId"
	.byte		0
	.4byte		.L11983
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L665:
	.sleb128	12
	.byte		"MaxUsage"
	.byte		0
	.4byte		.L11540
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L666:
	.sleb128	12
	.byte		"MaxUsageRef"
	.byte		0
	.4byte		.L11984
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L667:
	.sleb128	12
	.byte		"CurrentUsage"
	.byte		0
	.4byte		.L11540
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L668:
	.sleb128	12
	.byte		"CurrentUsageRef"
	.byte		0
	.4byte		.L11984
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11982:
.L11948:
	.sleb128	11
	.4byte		.L11826
	.uleb128	60
	.uleb128	1
	.4byte		.L11985-.L2
	.uleb128	12
.L661:
	.sleb128	12
	.byte		"FunctionIndex"
	.byte		0
	.4byte		.L11986
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L662:
	.sleb128	12
	.byte		"ParamRef"
	.byte		0
	.4byte		.L11987
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L663:
	.sleb128	12
	.byte		"ReturnValue"
	.byte		0
	.4byte		.L11988
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11985:
.L11946:
	.sleb128	11
	.4byte		.L11826
	.uleb128	60
	.uleb128	1
	.4byte		.L11990-.L2
	.uleb128	12
.L658:
	.sleb128	12
	.byte		"AppID"
	.byte		0
	.4byte		.L11991
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L659:
	.sleb128	12
	.byte		"ObjectType"
	.byte		0
	.4byte		.L11992
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L660:
	.sleb128	12
	.byte		"Object"
	.byte		0
	.4byte		.L11849
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11990:
.L11944:
	.sleb128	11
	.4byte		.L11826
	.uleb128	60
	.uleb128	1
	.4byte		.L11994-.L2
	.uleb128	12
.L655:
	.sleb128	12
	.byte		"AppID"
	.byte		0
	.4byte		.L11991
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L656:
	.sleb128	12
	.byte		"ObjectType"
	.byte		0
	.4byte		.L11992
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L657:
	.sleb128	12
	.byte		"Object"
	.byte		0
	.4byte		.L11849
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11994:
.L11910:
	.sleb128	11
	.4byte		.L11826
	.uleb128	60
	.uleb128	1
	.4byte		.L11995-.L2
	.uleb128	4
.L654:
	.sleb128	12
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11996
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11995:
.L11908:
	.sleb128	11
	.4byte		.L11826
	.uleb128	60
	.uleb128	1
	.4byte		.L11997-.L2
	.uleb128	12
.L651:
	.sleb128	12
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11996
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L652:
	.sleb128	12
	.byte		"Start"
	.byte		0
	.4byte		.L11556
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L653:
	.sleb128	12
	.byte		"Cycle"
	.byte		0
	.4byte		.L11556
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11997:
.L11906:
	.sleb128	11
	.4byte		.L11826
	.uleb128	60
	.uleb128	1
	.4byte		.L11998-.L2
	.uleb128	12
.L648:
	.sleb128	12
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11996
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L649:
	.sleb128	12
	.byte		"Increment"
	.byte		0
	.4byte		.L11556
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L650:
	.sleb128	12
	.byte		"Cycle"
	.byte		0
	.4byte		.L11556
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11998:
.L11904:
	.sleb128	11
	.4byte		.L11826
	.uleb128	60
	.uleb128	1
	.4byte		.L11999-.L2
	.uleb128	8
.L646:
	.sleb128	12
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11996
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L647:
	.sleb128	12
	.byte		"TickRef"
	.byte		0
	.4byte		.L12000
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11999:
.L11902:
	.sleb128	11
	.4byte		.L11826
	.uleb128	60
	.uleb128	1
	.4byte		.L12002-.L2
	.uleb128	8
.L644:
	.sleb128	12
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11996
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L645:
	.sleb128	12
	.byte		"AlarmBaseTypeRef"
	.byte		0
	.4byte		.L12003
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12002:
.L11942:
	.sleb128	11
	.4byte		.L11826
	.uleb128	60
	.uleb128	1
	.4byte		.L12007-.L2
	.uleb128	4
.L643:
	.sleb128	12
	.byte		"SchTblId"
	.byte		0
	.4byte		.L12008
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12007:
.L11940:
	.sleb128	11
	.4byte		.L11826
	.uleb128	60
	.uleb128	1
	.4byte		.L12009-.L2
	.uleb128	8
.L641:
	.sleb128	12
	.byte		"SchTblId"
	.byte		0
	.4byte		.L12008
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L642:
	.sleb128	12
	.byte		"SyncValue"
	.byte		0
	.4byte		.L11556
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12009:
.L11938:
	.sleb128	11
	.4byte		.L11826
	.uleb128	60
	.uleb128	1
	.4byte		.L12010-.L2
	.uleb128	4
.L640:
	.sleb128	12
	.byte		"SchTblId"
	.byte		0
	.4byte		.L12008
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12010:
.L11936:
	.sleb128	11
	.4byte		.L11826
	.uleb128	60
	.uleb128	1
	.4byte		.L12011-.L2
	.uleb128	8
.L638:
	.sleb128	12
	.byte		"SchTblIdFrom"
	.byte		0
	.4byte		.L12008
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L639:
	.sleb128	12
	.byte		"SchTblIdTo"
	.byte		0
	.4byte		.L12008
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12011:
.L11934:
	.sleb128	11
	.4byte		.L11826
	.uleb128	60
	.uleb128	1
	.4byte		.L12012-.L2
	.uleb128	8
.L636:
	.sleb128	12
	.byte		"SchTblId"
	.byte		0
	.4byte		.L12008
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L637:
	.sleb128	12
	.byte		"SchTblStatus"
	.byte		0
	.4byte		.L12013
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12012:
.L11932:
	.sleb128	11
	.4byte		.L11826
	.uleb128	60
	.uleb128	1
	.4byte		.L12017-.L2
	.uleb128	4
.L635:
	.sleb128	12
	.byte		"SchTblId"
	.byte		0
	.4byte		.L12008
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12017:
.L11930:
	.sleb128	11
	.4byte		.L11826
	.uleb128	60
	.uleb128	1
	.4byte		.L12018-.L2
	.uleb128	8
.L633:
	.sleb128	12
	.byte		"SchTblId"
	.byte		0
	.4byte		.L12008
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L634:
	.sleb128	12
	.byte		"Offset"
	.byte		0
	.4byte		.L11556
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12018:
.L11928:
	.sleb128	11
	.4byte		.L11826
	.uleb128	60
	.uleb128	1
	.4byte		.L12019-.L2
	.uleb128	8
.L631:
	.sleb128	12
	.byte		"SchTblId"
	.byte		0
	.4byte		.L12008
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L632:
	.sleb128	12
	.byte		"Start"
	.byte		0
	.4byte		.L11556
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12019:
.L11926:
	.sleb128	11
	.4byte		.L11826
	.uleb128	60
	.uleb128	1
	.4byte		.L12020-.L2
	.uleb128	12
.L628:
	.sleb128	12
	.byte		"CounterId"
	.byte		0
	.4byte		.L11577
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L629:
	.sleb128	12
	.byte		"ValuePtr"
	.byte		0
	.4byte		.L12000
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L630:
	.sleb128	12
	.byte		"ElapsedValuePtr"
	.byte		0
	.4byte		.L12000
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L12020:
.L11924:
	.sleb128	11
	.4byte		.L11826
	.uleb128	60
	.uleb128	1
	.4byte		.L12021-.L2
	.uleb128	12
.L625:
	.sleb128	12
	.byte		"CounterId"
	.byte		0
	.4byte		.L11577
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L626:
	.sleb128	12
	.byte		"ValuePtr"
	.byte		0
	.4byte		.L12000
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L627:
	.sleb128	12
	.byte		"LightServiceFunction"
	.byte		0
	.4byte		.L12022
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L12021:
.L11922:
	.sleb128	11
	.4byte		.L11826
	.uleb128	60
	.uleb128	1
	.4byte		.L12026-.L2
	.uleb128	4
.L624:
	.sleb128	12
	.byte		"CounterId"
	.byte		0
	.4byte		.L11577
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12026:
.L11918:
	.sleb128	11
	.4byte		.L11826
	.uleb128	60
	.uleb128	1
	.4byte		.L12027-.L2
	.uleb128	4
.L623:
	.sleb128	12
	.byte		"ISRId"
	.byte		0
	.4byte		.L11847
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12027:
.L11914:
	.sleb128	11
	.4byte		.L11826
	.uleb128	60
	.uleb128	1
	.4byte		.L12028-.L2
	.uleb128	2
.L621:
	.sleb128	12
	.byte		"Application"
	.byte		0
	.4byte		.L11991
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L622:
	.sleb128	12
	.byte		"RestartOption"
	.byte		0
	.4byte		.L12029
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
	.sleb128	0
.L12028:
.L11916:
	.sleb128	11
	.4byte		.L11826
	.uleb128	60
	.uleb128	1
	.4byte		.L12030-.L2
	.uleb128	1
.L620:
	.sleb128	12
	.byte		"Application"
	.byte		0
	.4byte		.L11991
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12030:
.L11912:
	.sleb128	11
	.4byte		.L11826
	.uleb128	60
	.uleb128	1
	.4byte		.L12031-.L2
	.uleb128	8
.L618:
	.sleb128	12
	.byte		"Application"
	.byte		0
	.4byte		.L11991
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L619:
	.sleb128	12
	.byte		"AppStateRef"
	.byte		0
	.4byte		.L12032
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12031:
.L11896:
	.sleb128	11
	.4byte		.L11826
	.uleb128	60
	.uleb128	1
	.4byte		.L12035-.L2
	.uleb128	8
.L617:
	.sleb128	12
	.byte		"EventMask"
	.byte		0
	.4byte		.L12036
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12035:
.L11894:
	.sleb128	11
	.4byte		.L11826
	.uleb128	60
	.uleb128	1
	.4byte		.L12039-.L2
	.uleb128	24
.L614:
	.sleb128	12
	.byte		"TaskId"
	.byte		0
	.4byte		.L11983
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L615:
	.sleb128	12
	.byte		"EventMask"
	.byte		0
	.4byte		.L12036
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L616:
	.sleb128	12
	.byte		"EventMaskRef"
	.byte		0
	.4byte		.L12040
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L12039:
.L11892:
	.sleb128	11
	.4byte		.L11826
	.uleb128	60
	.uleb128	1
	.4byte		.L12042-.L2
	.uleb128	8
.L613:
	.sleb128	12
	.byte		"EventMask"
	.byte		0
	.4byte		.L12036
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12042:
.L11890:
	.sleb128	11
	.4byte		.L11826
	.uleb128	60
	.uleb128	1
	.4byte		.L12043-.L2
	.uleb128	16
.L611:
	.sleb128	12
	.byte		"TaskId"
	.byte		0
	.4byte		.L11983
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L612:
	.sleb128	12
	.byte		"EventMask"
	.byte		0
	.4byte		.L12036
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L12043:
.L11888:
	.sleb128	11
	.4byte		.L11826
	.uleb128	60
	.uleb128	1
	.4byte		.L12044-.L2
	.uleb128	8
.L609:
	.sleb128	12
	.byte		"TaskId"
	.byte		0
	.4byte		.L11983
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L610:
	.sleb128	12
	.byte		"TaskStateRef"
	.byte		0
	.4byte		.L12045
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12044:
.L11886:
	.sleb128	11
	.4byte		.L11826
	.uleb128	60
	.uleb128	1
	.4byte		.L12049-.L2
	.uleb128	4
.L608:
	.sleb128	12
	.byte		"TaskIdRef"
	.byte		0
	.4byte		.L12050
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12049:
.L11884:
	.sleb128	11
	.4byte		.L11826
	.uleb128	60
	.uleb128	1
	.4byte		.L12052-.L2
	.uleb128	4
.L607:
	.sleb128	12
	.byte		"TaskId"
	.byte		0
	.4byte		.L11983
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12052:
.L11882:
	.sleb128	11
	.4byte		.L11826
	.uleb128	60
	.uleb128	1
	.4byte		.L12053-.L2
	.uleb128	4
.L606:
	.sleb128	12
	.byte		"TaskId"
	.byte		0
	.4byte		.L11983
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12053:
.L11900:
	.sleb128	11
	.4byte		.L11826
	.uleb128	60
	.uleb128	1
	.4byte		.L12054-.L2
	.uleb128	4
.L605:
	.sleb128	12
	.byte		"ResourceId"
	.byte		0
	.4byte		.L12055
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12054:
.L11898:
	.sleb128	11
	.4byte		.L11826
	.uleb128	60
	.uleb128	1
	.4byte		.L12056-.L2
	.uleb128	4
.L604:
	.sleb128	12
	.byte		"ResourceId"
	.byte		0
	.4byte		.L12055
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12056:
.L11920:
	.sleb128	11
	.4byte		.L11826
	.uleb128	60
	.uleb128	1
	.4byte		.L12057-.L2
	.uleb128	4
.L603:
	.sleb128	12
	.byte		"AppMode"
	.byte		0
	.4byte		.L12058
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12057:
.L11880:
	.sleb128	11
	.4byte		.L11826
	.uleb128	60
	.uleb128	1
	.4byte		.L12059-.L2
	.uleb128	2
.L602:
	.sleb128	12
	.byte		"CoreID"
	.byte		0
	.4byte		.L11528
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12059:
.L11874:
	.sleb128	11
	.4byte		.L11826
	.uleb128	60
	.uleb128	1
	.4byte		.L12060-.L2
	.uleb128	2
.L601:
	.sleb128	12
	.byte		"NumberOfActivatedCores"
	.byte		0
	.4byte		.L11528
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12060:
.L11872:
	.sleb128	11
	.4byte		.L11826
	.uleb128	60
	.uleb128	1
	.4byte		.L12061-.L2
	.uleb128	1
.L600:
	.sleb128	12
	.byte		"Error"
	.byte		0
	.4byte		.L11854
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12061:
.L11870:
	.sleb128	11
	.4byte		.L11826
	.uleb128	60
	.uleb128	1
	.4byte		.L12062-.L2
	.uleb128	8
.L598:
	.sleb128	12
	.byte		"ShutdownType"
	.byte		0
	.4byte		.L12063
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L599:
	.sleb128	12
	.byte		"Error"
	.byte		0
	.4byte		.L11854
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12062:
.L11868:
	.sleb128	11
	.4byte		.L11826
	.uleb128	60
	.uleb128	1
	.4byte		.L12065-.L2
	.uleb128	1
.L597:
	.sleb128	12
	.byte		"Error"
	.byte		0
	.4byte		.L11854
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12065:
.L11878:
	.sleb128	11
	.4byte		.L11826
	.uleb128	60
	.uleb128	1
	.4byte		.L12066-.L2
	.uleb128	8
.L595:
	.sleb128	12
	.byte		"CoreID"
	.byte		0
	.4byte		.L11528
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L596:
	.sleb128	12
	.byte		"StatusRef"
	.byte		0
	.4byte		.L12067
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12066:
.L11876:
	.sleb128	11
	.4byte		.L11826
	.uleb128	60
	.uleb128	1
	.4byte		.L12068-.L2
	.uleb128	8
.L593:
	.sleb128	12
	.byte		"CoreID"
	.byte		0
	.4byte		.L11528
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L594:
	.sleb128	12
	.byte		"StatusRef"
	.byte		0
	.4byte		.L12067
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12068:
.L11866:
	.sleb128	11
	.4byte		.L11826
	.uleb128	60
	.uleb128	1
	.4byte		.L12069-.L2
	.uleb128	4
.L592:
	.sleb128	12
	.byte		"AppMode"
	.byte		0
	.4byte		.L12058
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12069:
.L11968:
	.sleb128	11
	.4byte		.L12070
	.uleb128	33
	.uleb128	14
	.4byte		.L12071-.L2
	.uleb128	24
.L585:
	.sleb128	12
	.byte		"Os_IOC_ChannelDyn"
	.byte		0
	.4byte		.L12072
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L586:
	.sleb128	12
	.byte		"Os_IOC_ChannelLength"
	.byte		0
	.4byte		.L12076
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L587:
	.sleb128	12
	.byte		"Os_IOC_ChannelBuffer"
	.byte		0
	.4byte		.L12077
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L588:
	.sleb128	12
	.byte		"Os_IOC_ChannelElementSize"
	.byte		0
	.4byte		.L12078
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L589:
	.sleb128	12
	.byte		"Os_IOC_DataCount"
	.byte		0
	.4byte		.L12079
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L590:
	.sleb128	12
	.byte		"Os_IOC_DataDescriptor"
	.byte		0
	.4byte		.L12081
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L591:
	.sleb128	12
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
	.sleb128	11
	.4byte		.L12070
	.uleb128	33
	.uleb128	14
	.4byte		.L12089-.L2
	.uleb128	4
.L581:
	.sleb128	12
	.byte		"Os_IOC_DataLength"
	.byte		0
	.4byte		.L12090
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L582:
	.sleb128	12
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
	.sleb128	11
	.4byte		.L12070
	.uleb128	33
	.uleb128	14
	.4byte		.L12094-.L2
	.uleb128	6
.L578:
	.sleb128	12
	.byte		"Os_IOC_ChannelHead"
	.byte		0
	.4byte		.L12076
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L579:
	.sleb128	12
	.byte		"Os_IOC_ChannelMessageCount"
	.byte		0
	.4byte		.L12076
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L580:
	.sleb128	12
	.byte		"Os_IOC_Status"
	.byte		0
	.4byte		.L11854
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12094:
.L11816:
	.sleb128	11
	.4byte		.L12095
	.uleb128	34
	.uleb128	14
	.4byte		.L12096-.L2
	.uleb128	2
.L529:
	.sleb128	12
	.byte		"Os_HookID"
	.byte		0
	.4byte		.L12097
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12096:
.L11788:
	.sleb128	13
	.4byte		.L12098
	.uleb128	80
	.uleb128	13
	.4byte		.L12099-.L2
	.byte		"Os_ProcStatType_s"
	.byte		0
	.uleb128	80
.L511:
	.sleb128	12
	.byte		"Os_ProcId"
	.byte		0
	.4byte		.L12100
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L512:
	.sleb128	12
	.byte		"Os_ProcCoreID"
	.byte		0
	.4byte		.L11527
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L513:
	.sleb128	12
	.byte		"Os_ProcDyn"
	.byte		0
	.4byte		.L12101
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L514:
	.sleb128	12
	.byte		"Os_ProcStack"
	.byte		0
	.4byte		.L12105
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L515:
	.sleb128	12
	.byte		"Os_ProcKind"
	.byte		0
	.4byte		.L12110
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L516:
	.sleb128	12
	.byte		"Os_ProcEventRights"
	.byte		0
	.4byte		.L12113
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L517:
	.sleb128	12
	.byte		"Os_ProcPriority"
	.byte		0
	.4byte		.L12114
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L518:
	.sleb128	12
	.byte		"Os_ProcRunPriority"
	.byte		0
	.4byte		.L12114
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L519:
	.sleb128	12
	.byte		"Os_ProcMaxActivations"
	.byte		0
	.4byte		.L12115
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L520:
	.sleb128	12
	.byte		"Os_ProcContext"
	.byte		0
	.4byte		.L12117
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L521:
	.sleb128	12
	.byte		"Os_ProcOwnerApp"
	.byte		0
	.4byte		.L12118
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L522:
	.sleb128	12
	.byte		"Os_ProcAppAccess"
	.byte		0
	.4byte		.L12119
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L523:
	.sleb128	12
	.byte		"Os_ProcEntryPoint"
	.byte		0
	.4byte		.L12123
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L524:
	.sleb128	12
	.byte		"Os_ProcAutoStart"
	.byte		0
	.4byte		.L12119
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
.L525:
	.sleb128	12
	.byte		"Os_ProcResourceCount"
	.byte		0
	.4byte		.L12128
	.sleb128	2
	.byte		0x23
	.uleb128	64
	.byte		0x1
.L526:
	.sleb128	12
	.byte		"Os_ProcResourceStack"
	.byte		0
	.4byte		.L12129
	.sleb128	2
	.byte		0x23
	.uleb128	68
	.byte		0x1
.L527:
	.sleb128	12
	.byte		"Os_ProcQueueElements"
	.byte		0
	.4byte		.L12135
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.byte		0x1
.L528:
	.sleb128	12
	.byte		"Os_ProcIsrPlatformConfig"
	.byte		0
	.4byte		.L12136
	.sleb128	2
	.byte		0x23
	.uleb128	76
	.byte		0x1
	.sleb128	0
.L12099:
.L12109:
	.sleb128	13
	.4byte		.L12098
	.uleb128	80
	.uleb128	13
	.4byte		.L12137-.L2
	.byte		"Os_ProcStackStruct"
	.byte		0
	.uleb128	8
.L509:
	.sleb128	12
	.byte		"Os_ProcStackSize"
	.byte		0
	.4byte		.L12138
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L510:
	.sleb128	12
	.byte		"Os_ProcStackBase"
	.byte		0
	.4byte		.L12117
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12137:
.L12104:
	.sleb128	11
	.4byte		.L12098
	.uleb128	80
	.uleb128	13
	.4byte		.L12140-.L2
	.uleb128	56
.L496:
	.sleb128	12
	.byte		"Os_ProcState"
	.byte		0
	.4byte		.L12047
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L497:
	.sleb128	12
	.byte		"Os_ProcContextState"
	.byte		0
	.4byte		.L12141
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L498:
	.sleb128	12
	.byte		"Os_ProcEvents"
	.byte		0
	.4byte		.L12036
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L499:
	.sleb128	12
	.byte		"Os_ProcEventWaitingFor"
	.byte		0
	.4byte		.L12036
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L500:
	.sleb128	12
	.byte		"Os_ProcActivations"
	.byte		0
	.4byte		.L12116
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L501:
	.sleb128	12
	.byte		"Os_ProcResourcesAllocated"
	.byte		0
	.4byte		.L12055
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L502:
	.sleb128	12
	.byte		"Os_ProcEnabled"
	.byte		0
	.4byte		.L11540
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L503:
	.sleb128	12
	.byte		"Os_ProcCurrentApp"
	.byte		0
	.4byte		.L11801
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L504:
	.sleb128	12
	.byte		"Os_ProcSpinlock"
	.byte		0
	.4byte		.L12143
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L505:
	.sleb128	12
	.byte		"Os_ProcFreeQueueElements"
	.byte		0
	.4byte		.L11828
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L506:
	.sleb128	12
	.byte		"Os_ProcCurrentPriority"
	.byte		0
	.4byte		.L11823
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L507:
	.sleb128	12
	.byte		"Os_ProcTFCallCount"
	.byte		0
	.4byte		.L11540
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L508:
	.sleb128	12
	.byte		"Os_FatalErrorOccured"
	.byte		0
	.4byte		.L11854
	.sleb128	2
	.byte		0x23
	.uleb128	53
	.byte		0x1
	.sleb128	0
.L12140:
.L11570:
	.sleb128	13
	.4byte		.L12146
	.uleb128	52
	.uleb128	1
	.4byte		.L12147-.L2
	.byte		"Os_TimerConfStruct"
	.byte		0
	.uleb128	28
.L466:
	.sleb128	12
	.byte		"Os_NumberOfCounters"
	.byte		0
	.4byte		.L12148
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L467:
	.sleb128	12
	.byte		"Os_Counters"
	.byte		0
	.4byte		.L12149
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L468:
	.sleb128	12
	.byte		"Os_TimerDyn"
	.byte		0
	.4byte		.L11517
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L469:
	.sleb128	12
	.byte		"Os_IsrPltConfig"
	.byte		0
	.4byte		.L12136
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L470:
	.sleb128	12
	.byte		"Os_TimerPltConf"
	.byte		0
	.4byte		.L12156
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L471:
	.sleb128	12
	.byte		"Os_TimerMultiplicator"
	.byte		0
	.4byte		.L11555
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L472:
	.sleb128	12
	.byte		"Os_TimerMaxTickCount"
	.byte		0
	.4byte		.L11555
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
	.sleb128	0
.L12147:
.L12155:
	.sleb128	13
	.4byte		.L12161
	.uleb128	44
	.uleb128	14
	.4byte		.L12162-.L2
	.byte		"Os_CounterStatStruct"
	.byte		0
	.uleb128	48
.L484:
	.sleb128	12
	.byte		"Os_CounterKind"
	.byte		0
	.4byte		.L12163
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L485:
	.sleb128	12
	.byte		"Os_CounterMaxAllowedValue"
	.byte		0
	.4byte		.L11555
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L486:
	.sleb128	12
	.byte		"Os_CounterMinCycle"
	.byte		0
	.4byte		.L11555
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L487:
	.sleb128	12
	.byte		"Os_CounterTicksPerBase"
	.byte		0
	.4byte		.L11555
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L488:
	.sleb128	12
	.byte		"Os_CounterPoolSize"
	.byte		0
	.4byte		.L12166
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L489:
	.sleb128	12
	.byte		"Os_CounterRegistry"
	.byte		0
	.4byte		.L12167
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L490:
	.sleb128	12
	.byte		"Os_CounterEPs"
	.byte		0
	.4byte		.L12171
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L491:
	.sleb128	12
	.byte		"Os_CounterActions"
	.byte		0
	.4byte		.L12175
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L492:
	.sleb128	12
	.byte		"Os_TimerId"
	.byte		0
	.4byte		.L11511
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L493:
	.sleb128	12
	.byte		"Os_CounterCoreId"
	.byte		0
	.4byte		.L11527
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L494:
	.sleb128	12
	.byte		"Os_CounterAppAccess"
	.byte		0
	.4byte		.L12119
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L495:
	.sleb128	12
	.byte		"Os_CounterOwnerApp"
	.byte		0
	.4byte		.L12118
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
	.sleb128	0
.L12162:
.L12178:
	.sleb128	13
	.4byte		.L12161
	.uleb128	44
	.uleb128	14
	.4byte		.L12179-.L2
	.byte		"Os_CounterEPActionStruct"
	.byte		0
	.uleb128	12
.L473:
	.sleb128	12
	.byte		"Os_CounterActionOwner"
	.byte		0
	.4byte		.L12180
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L474:
	.sleb128	12
	.byte		"Os_CounterActionObject"
	.byte		0
	.4byte		.L11849
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L475:
	.sleb128	12
	.byte		"Os_CounterActionNextAction"
	.byte		0
	.4byte		.L12176
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L12179:
.L12174:
	.sleb128	13
	.4byte		.L12161
	.uleb128	44
	.uleb128	14
	.4byte		.L12182-.L2
	.byte		"Os_CounterEPStruct"
	.byte		0
	.uleb128	16
.L476:
	.sleb128	12
	.byte		"Os_CounterEPDueValue"
	.byte		0
	.4byte		.L11556
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L477:
	.sleb128	12
	.byte		"Os_CounterNextAction"
	.byte		0
	.4byte		.L12176
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L478:
	.sleb128	12
	.byte		"Os_CounterLastAction"
	.byte		0
	.4byte		.L12176
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L479:
	.sleb128	12
	.byte		"Os_CounterEPNextEP"
	.byte		0
	.4byte		.L12172
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L12182:
.L12170:
	.sleb128	13
	.4byte		.L12161
	.uleb128	44
	.uleb128	14
	.4byte		.L12183-.L2
	.byte		"Os_CounterDynStruct"
	.byte		0
	.uleb128	16
.L480:
	.sleb128	12
	.byte		"Os_CounterValue"
	.byte		0
	.4byte		.L11556
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L481:
	.sleb128	12
	.byte		"Os_CounterNextEP"
	.byte		0
	.4byte		.L12172
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L482:
	.sleb128	12
	.byte		"Os_CounterNextFreeEP"
	.byte		0
	.4byte		.L12172
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L483:
	.sleb128	12
	.byte		"Os_CounterNextFreeAction"
	.byte		0
	.4byte		.L12176
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L12183:
.L11537:
	.sleb128	13
	.4byte		.L12146
	.uleb128	52
	.uleb128	1
	.4byte		.L12184-.L2
	.byte		"Os_TimersListOnCoreStruct"
	.byte		0
	.uleb128	8
.L464:
	.sleb128	12
	.byte		"Os_TimersList"
	.byte		0
	.4byte		.L12185
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L465:
	.sleb128	12
	.byte		"Os_NumberOfTimers"
	.byte		0
	.4byte		.L12187
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12184:
.L11520:
	.sleb128	13
	.4byte		.L12146
	.uleb128	52
	.uleb128	1
	.4byte		.L12188-.L2
	.byte		"Os_TimerCounterDynStruct"
	.byte		0
	.uleb128	44
.L453:
	.sleb128	12
	.byte		"Os_TimerTickCount"
	.byte		0
	.4byte		.L11556
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L454:
	.sleb128	12
	.byte		"Os_TimerRemainingTicks"
	.byte		0
	.4byte		.L11556
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L455:
	.sleb128	12
	.byte		"Os_TimerConfiguredTicks"
	.byte		0
	.4byte		.L11556
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L456:
	.sleb128	12
	.byte		"Os_TimerLastQueriedElapsedTicks"
	.byte		0
	.4byte		.L11556
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L457:
	.sleb128	12
	.byte		"Os_TimerRemainingIncrementsCount"
	.byte		0
	.4byte		.L11556
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L458:
	.sleb128	12
	.byte		"Os_TimerRemainderIncrements"
	.byte		0
	.4byte		.L11556
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L459:
	.sleb128	12
	.byte		"Os_TimerJitterIncrementsCount"
	.byte		0
	.4byte		.L11556
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L460:
	.sleb128	12
	.byte		"Os_TimerJitterOffsetIncrementsCount"
	.byte		0
	.4byte		.L11556
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L461:
	.sleb128	12
	.byte		"Os_TimerRunning"
	.byte		0
	.4byte		.L11742
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L462:
	.sleb128	12
	.byte		"Os_TimerTicked"
	.byte		0
	.4byte		.L11742
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L463:
	.sleb128	12
	.byte		"Os_TimerExpired"
	.byte		0
	.4byte		.L11742
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
	.sleb128	0
.L12188:
.L12145:
	.sleb128	13
	.4byte		.L12146
	.uleb128	52
	.uleb128	1
	.4byte		.L12189-.L2
	.byte		"Os_SpinlockStatType_s"
	.byte		0
	.uleb128	16
.L448:
	.sleb128	12
	.byte		"Os_SpinlockId"
	.byte		0
	.4byte		.L12190
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L449:
	.sleb128	12
	.byte		"Os_SpinlockChainId"
	.byte		0
	.4byte		.L12190
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L450:
	.sleb128	12
	.byte		"Os_SpinlockDyn"
	.byte		0
	.4byte		.L12191
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L451:
	.sleb128	12
	.byte		"Os_SpinlockAccess"
	.byte		0
	.4byte		.L12119
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L452:
	.sleb128	12
	.byte		"Os_SpinlockLockResourceAddress"
	.byte		0
	.4byte		.L12086
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L12189:
.L12194:
	.sleb128	11
	.4byte		.L12146
	.uleb128	52
	.uleb128	1
	.4byte		.L12195-.L2
	.uleb128	12
.L445:
	.sleb128	12
	.byte		"Os_SpinlockLockerProc"
	.byte		0
	.4byte		.L11818
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L446:
	.sleb128	12
	.byte		"Os_SpinlockSuperseded"
	.byte		0
	.4byte		.L12143
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L447:
	.sleb128	12
	.byte		"Os_ResourceDependency"
	.byte		0
	.4byte		.L12131
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L12195:
.L11804:
	.sleb128	13
	.4byte		.L12146
	.uleb128	52
	.uleb128	1
	.4byte		.L12196-.L2
	.byte		"Os_ApplicationStatType_s"
	.byte		0
	.uleb128	48
.L433:
	.sleb128	12
	.byte		"Os_AppDyn"
	.byte		0
	.4byte		.L12197
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L434:
	.sleb128	12
	.byte		"Os_AppId"
	.byte		0
	.4byte		.L12201
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L435:
	.sleb128	12
	.byte		"Os_AppRestartTask"
	.byte		0
	.4byte		.L12100
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L436:
	.sleb128	12
	.byte		"Os_AppKind"
	.byte		0
	.4byte		.L12202
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L437:
	.sleb128	12
	.byte		"Os_AppShutdownHook"
	.byte		0
	.4byte		.L12205
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L438:
	.sleb128	12
	.byte		"Os_AppStartupHook"
	.byte		0
	.4byte		.L12210
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L439:
	.sleb128	12
	.byte		"Os_AppErrorHook"
	.byte		0
	.4byte		.L12215
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L440:
	.sleb128	12
	.byte		"Os_AppProcIDs"
	.byte		0
	.4byte		.L12220
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L441:
	.sleb128	12
	.byte		"Os_AppCounterIDs"
	.byte		0
	.4byte		.L12223
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L442:
	.sleb128	12
	.byte		"Os_AppAlarmIDs"
	.byte		0
	.4byte		.L12225
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L443:
	.sleb128	12
	.byte		"Os_AppSchTblIDs"
	.byte		0
	.4byte		.L12228
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L444:
	.sleb128	12
	.byte		"Os_CoreAssigment"
	.byte		0
	.4byte		.L11527
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
	.sleb128	0
.L12196:
.L12200:
	.sleb128	11
	.4byte		.L12146
	.uleb128	52
	.uleb128	1
	.4byte		.L12231-.L2
	.uleb128	1
.L432:
	.sleb128	12
	.byte		"Os_AppState"
	.byte		0
	.4byte		.L12034
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12231:
.L12134:
	.sleb128	11
	.4byte		.L12232
	.uleb128	32
	.uleb128	1
	.4byte		.L12233-.L2
	.uleb128	12
.L429:
	.sleb128	12
	.byte		"Os_ResourcePriority"
	.byte		0
	.4byte		.L12114
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L430:
	.sleb128	12
	.byte		"Os_ResourceAccessRights"
	.byte		0
	.4byte		.L12120
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L431:
	.sleb128	12
	.byte		"Os_ResourceDyn"
	.byte		0
	.4byte		.L12234
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L12233:
.L12236:
	.sleb128	11
	.4byte		.L12232
	.uleb128	32
	.uleb128	1
	.4byte		.L12237-.L2
	.uleb128	4
.L428:
	.sleb128	12
	.byte		"Os_LockerProc"
	.byte		0
	.4byte		.L11818
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12237:
.L11809:
	.sleb128	11
	.4byte		.L12232
	.uleb128	32
	.uleb128	1
	.4byte		.L12238-.L2
	.uleb128	144
.L423:
	.sleb128	12
	.byte		"Os_Error"
	.byte		0
	.4byte		.L12239
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L424:
	.sleb128	12
	.byte		"Os_ExceptionStatus"
	.byte		0
	.4byte		.L12241
	.sleb128	2
	.byte		0x23
	.uleb128	120
	.byte		0x1
	.sleb128	0
.L12238:
.L11840:
	.sleb128	11
	.4byte		.L12232
	.uleb128	32
	.uleb128	1
	.4byte		.L12243-.L2
	.uleb128	24
.L417:
	.sleb128	12
	.byte		"Os_DisAllInt"
	.byte		0
	.4byte		.L12244
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L418:
	.sleb128	12
	.byte		"Os_EnAllInt"
	.byte		0
	.4byte		.L12244
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L419:
	.sleb128	12
	.byte		"Os_SusAllInt"
	.byte		0
	.4byte		.L12244
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L420:
	.sleb128	12
	.byte		"Os_ResAllInt"
	.byte		0
	.4byte		.L12244
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L421:
	.sleb128	12
	.byte		"Os_SusOsInt"
	.byte		0
	.4byte		.L12244
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L422:
	.sleb128	12
	.byte		"Os_ResOsInt"
	.byte		0
	.4byte		.L12244
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L12243:
.L12242:
	.sleb128	11
	.4byte		.L12232
	.uleb128	32
	.uleb128	1
	.4byte		.L12249-.L2
	.uleb128	20
.L412:
	.sleb128	12
	.byte		"Os_ExceptionType"
	.byte		0
	.4byte		.L12250
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L413:
	.sleb128	12
	.byte		"Os_ExceptionCause"
	.byte		0
	.4byte		.L11513
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L414:
	.sleb128	12
	.byte		"Os_ExceptionAuxiliaryCause"
	.byte		0
	.4byte		.L11513
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L415:
	.sleb128	12
	.byte		"Os_ExceptionExecutionAddress"
	.byte		0
	.4byte		.L11795
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L416:
	.sleb128	12
	.byte		"Os_ExceptionAccessAddress"
	.byte		0
	.4byte		.L11795
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L12249:
.L12240:
	.sleb128	11
	.4byte		.L12252
	.uleb128	174
	.uleb128	1
	.4byte		.L12253-.L2
	.uleb128	120
.L409:
	.sleb128	12
	.byte		"Os_ShutdownError"
	.byte		0
	.4byte		.L12254
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L410:
	.sleb128	12
	.byte		"Os_ParameterError"
	.byte		0
	.4byte		.L12256
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L411:
	.sleb128	12
	.byte		"Os_ServiceError"
	.byte		0
	.4byte		.L12258
	.sleb128	2
	.byte		0x23
	.uleb128	112
	.byte		0x1
	.sleb128	0
.L12253:
.L12259:
	.sleb128	11
	.4byte		.L12252
	.uleb128	174
	.uleb128	1
	.4byte		.L12260-.L2
	.uleb128	8
.L406:
	.sleb128	12
	.byte		"Os_ServiceTrace"
	.byte		0
	.4byte		.L12261
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L407:
	.sleb128	12
	.byte		"Os_LastError"
	.byte		0
	.4byte		.L11854
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L408:
	.sleb128	12
	.byte		"Os_FaultyServiceId"
	.byte		0
	.4byte		.L12262
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12260:
.L12257:
	.sleb128	11
	.4byte		.L12252
	.uleb128	174
	.uleb128	1
	.4byte		.L12264-.L2
	.uleb128	104
.L381:
	.sleb128	12
	.byte		"Os_Err_TaskID"
	.byte		0
	.4byte		.L11983
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L382:
	.sleb128	12
	.byte		"Os_Err_ResID"
	.byte		0
	.4byte		.L12055
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L383:
	.sleb128	12
	.byte		"Os_Err_MaskType_Mask"
	.byte		0
	.4byte		.L12036
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L384:
	.sleb128	12
	.byte		"Os_Err_AlarmID"
	.byte		0
	.4byte		.L11996
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L385:
	.sleb128	12
	.byte		"Os_Err_TicksStart"
	.byte		0
	.4byte		.L11556
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L386:
	.sleb128	12
	.byte		"Os_Err_TicksCycle"
	.byte		0
	.4byte		.L11556
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L387:
	.sleb128	12
	.byte		"Os_Err_FuncIndex"
	.byte		0
	.4byte		.L11986
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L388:
	.sleb128	12
	.byte		"Os_Err_FuncParamRefType"
	.byte		0
	.4byte		.L11987
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L389:
	.sleb128	12
	.byte		"Os_Err_ApplID"
	.byte		0
	.4byte		.L11991
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L390:
	.sleb128	12
	.byte		"Os_Err_ApplStateRefType"
	.byte		0
	.4byte		.L12032
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L391:
	.sleb128	12
	.byte		"Os_Err_ObjType"
	.byte		0
	.4byte		.L11992
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L392:
	.sleb128	12
	.byte		"Os_Err_SchedID"
	.byte		0
	.4byte		.L12008
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L393:
	.sleb128	12
	.byte		"Os_Err_SchedID_Next"
	.byte		0
	.4byte		.L12008
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L394:
	.sleb128	12
	.byte		"Os_Err_CntID"
	.byte		0
	.4byte		.L11577
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L395:
	.sleb128	12
	.byte		"Os_Err_RestartType"
	.byte		0
	.4byte		.L12029
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
.L396:
	.sleb128	12
	.byte		"Os_Err_MaskRefType"
	.byte		0
	.4byte		.L12040
	.sleb128	2
	.byte		0x23
	.uleb128	64
	.byte		0x1
.L397:
	.sleb128	12
	.byte		"Os_Err_TaskStateRef"
	.byte		0
	.4byte		.L12045
	.sleb128	2
	.byte		0x23
	.uleb128	68
	.byte		0x1
.L398:
	.sleb128	12
	.byte		"Os_Err_TickRef_Ticks"
	.byte		0
	.4byte		.L12000
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.byte		0x1
.L399:
	.sleb128	12
	.byte		"Os_Err_AlarmBaseRefType_Info"
	.byte		0
	.4byte		.L12003
	.sleb128	2
	.byte		0x23
	.uleb128	76
	.byte		0x1
.L400:
	.sleb128	12
	.byte		"Os_Err_TaskIDRef"
	.byte		0
	.4byte		.L12050
	.sleb128	2
	.byte		0x23
	.uleb128	80
	.byte		0x1
.L401:
	.sleb128	12
	.byte		"Os_Err_TblStatusRefType"
	.byte		0
	.4byte		.L12013
	.sleb128	2
	.byte		0x23
	.uleb128	84
	.byte		0x1
.L402:
	.sleb128	12
	.byte		"Os_Err_TickRef_ElapsedTicks"
	.byte		0
	.4byte		.L12000
	.sleb128	2
	.byte		0x23
	.uleb128	88
	.byte		0x1
.L403:
	.sleb128	12
	.byte		"Os_Err_ObjObj"
	.byte		0
	.4byte		.L11849
	.sleb128	2
	.byte		0x23
	.uleb128	92
	.byte		0x1
.L404:
	.sleb128	12
	.byte		"Os_Err_SpinlockID"
	.byte		0
	.4byte		.L11976
	.sleb128	2
	.byte		0x23
	.uleb128	96
	.byte		0x1
.L405:
	.sleb128	12
	.byte		"Os_Err_TryToGetSpinlockRef"
	.byte		0
	.4byte		.L12265
	.sleb128	2
	.byte		0x23
	.uleb128	100
	.byte		0x1
	.sleb128	0
.L12264:
.L12255:
	.sleb128	11
	.4byte		.L12252
	.uleb128	174
	.uleb128	1
	.4byte		.L12266-.L2
	.uleb128	8
.L379:
	.sleb128	12
	.byte		"Os_ShutdownErrorCode"
	.byte		0
	.4byte		.L11854
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L380:
	.sleb128	12
	.byte		"Os_ShutdownInternalErrorCode"
	.byte		0
	.4byte		.L12267
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12266:
.L12006:
	.sleb128	11
	.4byte		.L12269
	.uleb128	50
	.uleb128	1
	.4byte		.L12270-.L2
	.uleb128	12
.L376:
	.sleb128	12
	.byte		"maxallowedvalue"
	.byte		0
	.4byte		.L11556
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L377:
	.sleb128	12
	.byte		"ticksperbase"
	.byte		0
	.4byte		.L11556
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L378:
	.sleb128	12
	.byte		"mincycle"
	.byte		0
	.4byte		.L11556
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L12270:
.L12160:
	.sleb128	11
	.4byte		.L12271
	.uleb128	87
	.uleb128	7
	.4byte		.L12272-.L2
	.uleb128	2
.L366:
	.sleb128	12
	.byte		"Os_TimerChannelId"
	.byte		0
	.4byte		.L12078
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L12272:
.L11836:
	.sleb128	11
	.4byte		.L12271
	.uleb128	87
	.uleb128	7
	.4byte		.L12273-.L2
	.uleb128	8
.L364:
	.sleb128	12
	.byte		"Os_IsrPltId"
	.byte		0
	.4byte		.L12274
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L365:
	.sleb128	12
	.byte		"Os_IsrPltLevel"
	.byte		0
	.4byte		.L12275
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L12273:
	.section	.debug_info,,n
.L11822:
	.sleb128	15
	.4byte		.L11765
	.uleb128	69
	.uleb128	1
	.4byte		.L12277-.L2
	.uleb128	4
	.section	.debug_info,,n
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
.L12277:
.L11846:
	.sleb128	15
	.4byte		.L11826
	.uleb128	612
	.uleb128	1
	.4byte		.L12278-.L2
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
.L12278:
.L11856:
	.sleb128	15
	.4byte		.L11826
	.uleb128	60
	.uleb128	1
	.4byte		.L12279-.L2
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
.L12279:
	.section	.debug_info,,n
.L11989:
	.sleb128	17
	.4byte		.L12070
	.uleb128	33
	.uleb128	14
	.4byte		.L12280-.L2
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
.L12280:
.L12142:
	.sleb128	15
	.4byte		.L12098
	.uleb128	80
	.uleb128	13
	.4byte		.L12281-.L2
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
.L12281:
.L12112:
	.sleb128	15
	.4byte		.L12098
	.uleb128	61
	.uleb128	1
	.4byte		.L12282-.L2
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
.L12282:
.L12181:
	.sleb128	17
	.4byte		.L12161
	.uleb128	44
	.uleb128	14
	.4byte		.L12283-.L2
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
.L12283:
.L12165:
	.sleb128	17
	.4byte		.L12161
	.uleb128	36
	.uleb128	14
	.4byte		.L12284-.L2
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
.L12284:
.L12204:
	.sleb128	15
	.4byte		.L12146
	.uleb128	52
	.uleb128	1
	.4byte		.L12285-.L2
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
.L12285:
.L12251:
	.sleb128	15
	.4byte		.L12232
	.uleb128	32
	.uleb128	1
	.4byte		.L12286-.L2
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
.L12286:
.L12268:
	.sleb128	15
	.4byte		.L12252
	.uleb128	174
	.uleb128	1
	.4byte		.L12287-.L2
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
.L12287:
.L12263:
	.sleb128	15
	.4byte		.L12252
	.uleb128	86
	.uleb128	1
	.4byte		.L12288-.L2
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
.L12288:
.L11979:
	.sleb128	15
	.4byte		.L12289
	.uleb128	43
	.uleb128	1
	.4byte		.L12290-.L2
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
.L12290:
.L12048:
	.sleb128	15
	.4byte		.L12291
	.uleb128	37
	.uleb128	1
	.4byte		.L12292-.L2
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
.L12292:
.L12016:
	.sleb128	15
	.4byte		.L12293
	.uleb128	40
	.uleb128	1
	.4byte		.L12294-.L2
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
.L12294:
.L11993:
	.sleb128	15
	.4byte		.L12295
	.uleb128	47
	.uleb128	1
	.4byte		.L12296-.L2
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
.L12296:
.L11743:
	.sleb128	15
	.4byte		.L12269
	.uleb128	50
	.uleb128	1
	.4byte		.L12297-.L2
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
.L12297:
.L12064:
	.sleb128	15
	.4byte		.L12269
	.uleb128	42
	.uleb128	13
	.4byte		.L12298-.L2
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
.L12298:
.L11963:
	.sleb128	15
	.4byte		.L12299
	.uleb128	83
	.uleb128	14
	.4byte		.L12300-.L2
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
.L12300:
	.section	.debug_info,,n
.L11514:
	.sleb128	18
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
	.section	.debug_info,,n
.L11513:
	.sleb128	19
	.byte		"uint32"
	.byte		0
	.4byte		.L11514
.L11512:
	.sleb128	19
	.byte		"Os_TimerType"
	.byte		0
	.4byte		.L11513
	.section	.debug_info,,n
.L11511:
	.sleb128	20
	.4byte		.L11512
.L11519:
	.sleb128	19
	.byte		"Os_TimerCounterDynType"
	.byte		0
	.4byte		.L11520
	.section	.debug_info,,n
.L11518:
	.sleb128	21
	.4byte		.L11519
.L11517:
	.sleb128	20
	.4byte		.L11518
.L11530:
	.sleb128	18
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L11529:
	.sleb128	19
	.byte		"uint16"
	.byte		0
	.4byte		.L11530
.L11528:
	.sleb128	19
	.byte		"CoreIdType"
	.byte		0
	.4byte		.L11529
.L11527:
	.sleb128	20
	.4byte		.L11528
.L11536:
	.sleb128	19
	.byte		"Os_TimersListOnCoreType"
	.byte		0
	.4byte		.L11537
.L11535:
	.sleb128	20
	.4byte		.L11536
.L11534:
	.sleb128	21
	.4byte		.L11535
.L11533:
	.sleb128	20
	.4byte		.L11534
.L11541:
	.sleb128	18
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L11540:
	.sleb128	19
	.byte		"uint8"
	.byte		0
	.4byte		.L11541
.L11556:
	.sleb128	19
	.byte		"TickType"
	.byte		0
	.4byte		.L11513
.L11555:
	.sleb128	20
	.4byte		.L11556
.L11569:
	.sleb128	19
	.byte		"Os_TimerConfType"
	.byte		0
	.4byte		.L11570
.L11568:
	.sleb128	20
	.4byte		.L11569
.L11567:
	.sleb128	21
	.4byte		.L11568
.L11566:
	.sleb128	20
	.4byte		.L11567
.L11577:
	.sleb128	19
	.byte		"CounterType"
	.byte		0
	.4byte		.L11513
.L11742:
	.sleb128	19
	.byte		"Os_BoolType"
	.byte		0
	.4byte		.L11743
	.section	.debug_info,,n
.L11748:
	.sleb128	22
	.4byte		.L11749-.L2
	.4byte		.L11535
	.section	.debug_info,,n
	.sleb128	23
	.uleb128	1
	.sleb128	0
.L11749:
.L11751:
	.sleb128	22
	.4byte		.L11752-.L2
	.4byte		.L11568
	.section	.debug_info,,n
	.sleb128	24
	.sleb128	0
.L11752:
.L11758:
	.sleb128	19
	.byte		"Os_Core_StatType"
	.byte		0
	.4byte		.L11759
.L11757:
	.sleb128	20
	.4byte		.L11758
.L11755:
	.sleb128	22
	.4byte		.L11756-.L2
	.4byte		.L11757
	.sleb128	23
	.uleb128	1
	.sleb128	0
.L11756:
.L11763:
	.sleb128	19
	.byte		"Os_Core_DynSharedType"
	.byte		0
	.4byte		.L11764
.L11761:
	.sleb128	22
	.4byte		.L11762-.L2
	.4byte		.L11763
	.sleb128	23
	.uleb128	1
	.sleb128	0
.L11762:
.L11769:
	.sleb128	19
	.byte		"Os_Core_DynInitType"
	.byte		0
	.4byte		.L11770
.L11768:
	.sleb128	21
	.4byte		.L11769
.L11767:
	.sleb128	20
	.4byte		.L11768
.L11773:
	.sleb128	19
	.byte		"Os_Core_DynType"
	.byte		0
	.4byte		.L11774
.L11772:
	.sleb128	21
	.4byte		.L11773
.L11771:
	.sleb128	20
	.4byte		.L11772
.L11777:
	.sleb128	19
	.byte		"Os_DispatchElementType"
	.byte		0
	.4byte		.L11778
.L11776:
	.sleb128	21
	.4byte		.L11777
.L11775:
	.sleb128	20
	.4byte		.L11776
	.section	.debug_info,,n
.L11782:
	.sleb128	25
	.4byte		.L11783-.L2
	.byte		0x1
.L11787:
	.sleb128	19
	.byte		"Os_ProcStatType"
	.byte		0
	.4byte		.L11788
.L11786:
	.sleb128	20
	.4byte		.L11787
.L11785:
	.sleb128	21
	.4byte		.L11786
.L11784:
	.sleb128	20
	.4byte		.L11785
	.section	.debug_info,,n
	.sleb128	26
	.4byte		.L11784
	.sleb128	0
.L11783:
.L11781:
	.sleb128	21
	.4byte		.L11782
.L11780:
	.sleb128	19
	.byte		"Os_PrepareContextFunctionType"
	.byte		0
	.4byte		.L11781
.L11779:
	.sleb128	20
	.4byte		.L11780
.L11795:
	.sleb128	19
	.byte		"Os_StackType"
	.byte		0
	.4byte		.L11513
.L11794:
	.sleb128	21
	.4byte		.L11795
	.section	.debug_info,,n
.L11792:
	.sleb128	27
	.4byte		.L11793-.L2
	.4byte		.L11794
	.byte		0x1
	.sleb128	26
	.4byte		.L11785
	.sleb128	0
.L11793:
.L11791:
	.sleb128	21
	.4byte		.L11792
.L11790:
	.sleb128	19
	.byte		"Os_GetStackPointerFunctionType"
	.byte		0
	.4byte		.L11791
.L11789:
	.sleb128	20
	.4byte		.L11790
.L11797:
	.sleb128	19
	.byte		"Os_IsrDynInitType"
	.byte		0
	.4byte		.L11798
.L11799:
	.sleb128	19
	.byte		"Os_SchedulerDynInitType"
	.byte		0
	.4byte		.L11800
.L11803:
	.sleb128	19
	.byte		"Os_ApplicationStatType"
	.byte		0
	.4byte		.L11804
.L11802:
	.sleb128	20
	.4byte		.L11803
.L11801:
	.sleb128	21
	.4byte		.L11802
.L11806:
	.sleb128	19
	.byte		"Os_DispatcherType"
	.byte		0
	.4byte		.L11807
.L11808:
	.sleb128	19
	.byte		"Os_PublicData_NoInitType"
	.byte		0
	.4byte		.L11809
.L11811:
	.sleb128	19
	.byte		"Os_SchedulerDynType"
	.byte		0
	.4byte		.L11812
.L11813:
	.sleb128	19
	.byte		"Os_IsrDynType"
	.byte		0
	.4byte		.L11814
.L11815:
	.sleb128	19
	.byte		"Os_HooksDynType"
	.byte		0
	.4byte		.L11816
.L11819:
	.sleb128	20
	.4byte		.L11788
.L11818:
	.sleb128	21
	.4byte		.L11819
.L11821:
	.sleb128	19
	.byte		"Os_ScheduleType"
	.byte		0
	.4byte		.L11822
.L11823:
	.sleb128	19
	.byte		"Os_PriorityType"
	.byte		0
	.4byte		.L11513
.L11824:
	.sleb128	19
	.byte		"Os_SchedulerQueueElementType"
	.byte		0
	.4byte		.L11825
.L11828:
	.sleb128	21
	.4byte		.L11825
.L11830:
	.sleb128	19
	.byte		"Os_IsrRegister_t"
	.byte		0
	.4byte		.L11513
.L11831:
	.sleb128	19
	.byte		"boolean"
	.byte		0
	.4byte		.L11541
.L11835:
	.sleb128	19
	.byte		"Os_IsrPlatformConfigType"
	.byte		0
	.4byte		.L11836
.L11834:
	.sleb128	20
	.4byte		.L11835
.L11833:
	.sleb128	21
	.4byte		.L11834
.L11839:
	.sleb128	19
	.byte		"Os_IsrApiTable"
	.byte		0
	.4byte		.L11840
.L11838:
	.sleb128	20
	.4byte		.L11839
.L11837:
	.sleb128	21
	.4byte		.L11838
.L11841:
	.sleb128	22
	.4byte		.L11842-.L2
	.4byte		.L11513
	.sleb128	23
	.uleb128	7
	.sleb128	0
.L11842:
.L11845:
	.sleb128	19
	.byte		"Os_DispatchKindType"
	.byte		0
	.4byte		.L11846
.L11849:
	.sleb128	19
	.byte		"Os_ObjectType"
	.byte		0
	.4byte		.L11513
.L11848:
	.sleb128	19
	.byte		"ProcType"
	.byte		0
	.4byte		.L11849
.L11847:
	.sleb128	19
	.byte		"ISRType"
	.byte		0
	.4byte		.L11848
.L11851:
	.sleb128	19
	.byte		"Os_APICallType"
	.byte		0
	.4byte		.L11852
.L11850:
	.sleb128	21
	.4byte		.L11851
.L11854:
	.sleb128	19
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L11540
.L11855:
	.sleb128	19
	.byte		"Os_API_LockType"
	.byte		0
	.4byte		.L11856
.L11859:
	.sleb128	25
	.4byte		.L11860-.L2
	.byte		0x1
.L11861:
	.sleb128	21
	.4byte		.L11852
	.sleb128	26
	.4byte		.L11861
.L11862:
	.sleb128	20
	.4byte		.L11818
	.sleb128	26
	.4byte		.L11862
	.sleb128	0
.L11860:
.L11858:
	.sleb128	21
	.4byte		.L11859
.L11857:
	.sleb128	19
	.byte		"Os_API_Func_Type"
	.byte		0
	.4byte		.L11858
.L11865:
	.sleb128	19
	.byte		"Os_API_StartOsType"
	.byte		0
	.4byte		.L11866
.L11867:
	.sleb128	19
	.byte		"Os_API_ShutdownOsType"
	.byte		0
	.4byte		.L11868
.L11869:
	.sleb128	19
	.byte		"Os_API_ShutdownOsInternalType"
	.byte		0
	.4byte		.L11870
.L11871:
	.sleb128	19
	.byte		"Os_API_ShutdownAllCoresType"
	.byte		0
	.4byte		.L11872
.L11873:
	.sleb128	19
	.byte		"Os_API_GetNumberOfActivatedCoresType"
	.byte		0
	.4byte		.L11874
.L11875:
	.sleb128	19
	.byte		"Os_API_ApiStartCoreType"
	.byte		0
	.4byte		.L11876
.L11877:
	.sleb128	19
	.byte		"Os_API_StartNonAutosarCoreType"
	.byte		0
	.4byte		.L11878
.L11879:
	.sleb128	19
	.byte		"Os_API_GetCoreIDType"
	.byte		0
	.4byte		.L11880
.L11881:
	.sleb128	19
	.byte		"Os_API_ActivateTaskType"
	.byte		0
	.4byte		.L11882
.L11883:
	.sleb128	19
	.byte		"Os_API_ChainTaskType"
	.byte		0
	.4byte		.L11884
.L11885:
	.sleb128	19
	.byte		"Os_API_GetTaskIDType"
	.byte		0
	.4byte		.L11886
.L11887:
	.sleb128	19
	.byte		"Os_API_GetTaskStateType"
	.byte		0
	.4byte		.L11888
.L11889:
	.sleb128	19
	.byte		"Os_API_SetEventType"
	.byte		0
	.4byte		.L11890
.L11891:
	.sleb128	19
	.byte		"Os_API_ClearEventType"
	.byte		0
	.4byte		.L11892
.L11893:
	.sleb128	19
	.byte		"Os_API_GetEventType"
	.byte		0
	.4byte		.L11894
.L11895:
	.sleb128	19
	.byte		"Os_API_WaitEventType"
	.byte		0
	.4byte		.L11896
.L11897:
	.sleb128	19
	.byte		"Os_API_GetResourceType"
	.byte		0
	.4byte		.L11898
.L11899:
	.sleb128	19
	.byte		"Os_API_ReleaseResourceType"
	.byte		0
	.4byte		.L11900
.L11901:
	.sleb128	19
	.byte		"Os_API_GetAlarmBaseType"
	.byte		0
	.4byte		.L11902
.L11903:
	.sleb128	19
	.byte		"Os_API_GetAlarmType"
	.byte		0
	.4byte		.L11904
.L11905:
	.sleb128	19
	.byte		"Os_API_SetRelAlarmType"
	.byte		0
	.4byte		.L11906
.L11907:
	.sleb128	19
	.byte		"Os_API_SetAbsAlarmType"
	.byte		0
	.4byte		.L11908
.L11909:
	.sleb128	19
	.byte		"Os_API_CancelAlarmType"
	.byte		0
	.4byte		.L11910
.L11911:
	.sleb128	19
	.byte		"Os_API_GetApplicationStateType"
	.byte		0
	.4byte		.L11912
.L11913:
	.sleb128	19
	.byte		"Os_API_TerminateApplicationType"
	.byte		0
	.4byte		.L11914
.L11915:
	.sleb128	19
	.byte		"Os_API_GetApplicationIDType"
	.byte		0
	.4byte		.L11916
.L11917:
	.sleb128	19
	.byte		"Os_API_GetISRIDType"
	.byte		0
	.4byte		.L11918
.L11919:
	.sleb128	19
	.byte		"Os_API_GetActiveApplicationModeType"
	.byte		0
	.4byte		.L11920
.L11921:
	.sleb128	19
	.byte		"Os_API_IncrementCounterType"
	.byte		0
	.4byte		.L11922
.L11923:
	.sleb128	19
	.byte		"Os_API_GetCounterValueType"
	.byte		0
	.4byte		.L11924
.L11925:
	.sleb128	19
	.byte		"Os_API_GetElapsedValueType"
	.byte		0
	.4byte		.L11926
.L11927:
	.sleb128	19
	.byte		"Os_API_StartScheduleTableAbsType"
	.byte		0
	.4byte		.L11928
.L11929:
	.sleb128	19
	.byte		"Os_API_StartScheduleTableRelType"
	.byte		0
	.4byte		.L11930
.L11931:
	.sleb128	19
	.byte		"Os_API_StopScheduleTableType"
	.byte		0
	.4byte		.L11932
.L11933:
	.sleb128	19
	.byte		"Os_API_GetScheduleTableStatusType"
	.byte		0
	.4byte		.L11934
.L11935:
	.sleb128	19
	.byte		"Os_API_NextScheduleTableType"
	.byte		0
	.4byte		.L11936
.L11937:
	.sleb128	19
	.byte		"Os_API_StartScheduleTableSynchronType"
	.byte		0
	.4byte		.L11938
.L11939:
	.sleb128	19
	.byte		"Os_API_SyncScheduleTableType"
	.byte		0
	.4byte		.L11940
.L11941:
	.sleb128	19
	.byte		"Os_API_SetScheduleTableAsyncType"
	.byte		0
	.4byte		.L11942
.L11943:
	.sleb128	19
	.byte		"Os_API_CheckObjectAccessType"
	.byte		0
	.4byte		.L11944
.L11945:
	.sleb128	19
	.byte		"Os_API_CheckObjectOwnershipType"
	.byte		0
	.4byte		.L11946
.L11947:
	.sleb128	19
	.byte		"Os_API_CallTrustedFunctionType"
	.byte		0
	.4byte		.L11948
.L11949:
	.sleb128	19
	.byte		"Os_API_StackUsageType"
	.byte		0
	.4byte		.L11950
.L11951:
	.sleb128	19
	.byte		"Os_API_GetSpinlockType"
	.byte		0
	.4byte		.L11952
.L11953:
	.sleb128	19
	.byte		"Os_API_ReleaseSpinlockType"
	.byte		0
	.4byte		.L11954
.L11955:
	.sleb128	19
	.byte		"Os_API_TryToGetSpinlockType"
	.byte		0
	.4byte		.L11956
.L11957:
	.sleb128	19
	.byte		"Os_API_IocTransferType"
	.byte		0
	.4byte		.L11958
.L11959:
	.sleb128	19
	.byte		"Os_API_ControlIdleType"
	.byte		0
	.4byte		.L11960
.L11962:
	.sleb128	19
	.byte		"IdleModeType"
	.byte		0
	.4byte		.L11963
.L11967:
	.sleb128	19
	.byte		"Os_IOC_ChannelStatType"
	.byte		0
	.4byte		.L11968
.L11966:
	.sleb128	20
	.4byte		.L11967
.L11965:
	.sleb128	21
	.4byte		.L11966
	.section	.debug_info,,n
.L11974:
	.sleb128	28
	.byte		"void"
	.byte		0
	.byte		0x0
.L11973:
	.sleb128	21
	.4byte		.L11974
.L11971:
	.sleb128	22
	.4byte		.L11972-.L2
	.4byte		.L11973
	.sleb128	23
	.uleb128	1
	.sleb128	0
.L11972:
.L11970:
	.sleb128	19
	.byte		"Os_IOC_DataType"
	.byte		0
	.4byte		.L11971
.L11969:
	.sleb128	21
	.4byte		.L11970
.L11976:
	.sleb128	19
	.byte		"SpinlockIdType"
	.byte		0
	.4byte		.L11529
.L11978:
	.sleb128	19
	.byte		"TryToGetSpinlockType"
	.byte		0
	.4byte		.L11979
.L11977:
	.sleb128	21
	.4byte		.L11978
.L11983:
	.sleb128	19
	.byte		"TaskType"
	.byte		0
	.4byte		.L11848
.L11984:
	.sleb128	21
	.4byte		.L11540
.L11986:
	.sleb128	19
	.byte		"TrustedFunctionIndexType"
	.byte		0
	.4byte		.L11513
.L11987:
	.sleb128	19
	.byte		"TrustedFunctionParameterRefType"
	.byte		0
	.4byte		.L11973
.L11988:
	.sleb128	19
	.byte		"Os_TrustedFunctionReturnValueType"
	.byte		0
	.4byte		.L11989
.L11991:
	.sleb128	19
	.byte		"ApplicationType"
	.byte		0
	.4byte		.L11540
.L11992:
	.sleb128	19
	.byte		"ObjectTypeType"
	.byte		0
	.4byte		.L11993
.L11996:
	.sleb128	19
	.byte		"AlarmType"
	.byte		0
	.4byte		.L11849
.L12001:
	.sleb128	21
	.4byte		.L11556
.L12000:
	.sleb128	19
	.byte		"TickRefType"
	.byte		0
	.4byte		.L12001
.L12005:
	.sleb128	19
	.byte		"AlarmBaseType"
	.byte		0
	.4byte		.L12006
.L12004:
	.sleb128	21
	.4byte		.L12005
.L12003:
	.sleb128	19
	.byte		"AlarmBaseRefType"
	.byte		0
	.4byte		.L12004
.L12008:
	.sleb128	19
	.byte		"ScheduleTableType"
	.byte		0
	.4byte		.L11513
.L12015:
	.sleb128	19
	.byte		"ScheduleTableStatusType"
	.byte		0
	.4byte		.L12016
.L12014:
	.sleb128	21
	.4byte		.L12015
.L12013:
	.sleb128	19
	.byte		"ScheduleTableStatusRefType"
	.byte		0
	.4byte		.L12014
.L12024:
	.sleb128	25
	.4byte		.L12025-.L2
	.byte		0x1
	.sleb128	26
	.4byte		.L11861
	.sleb128	0
.L12025:
.L12023:
	.sleb128	21
	.4byte		.L12024
.L12022:
	.sleb128	19
	.byte		"LightServiceFunctionType"
	.byte		0
	.4byte		.L12023
.L12029:
	.sleb128	19
	.byte		"RestartType"
	.byte		0
	.4byte		.L11540
.L12034:
	.sleb128	19
	.byte		"ApplicationStateType"
	.byte		0
	.4byte		.L11540
.L12033:
	.sleb128	21
	.4byte		.L12034
.L12032:
	.sleb128	19
	.byte		"ApplicationStateRefType"
	.byte		0
	.4byte		.L12033
.L12038:
	.sleb128	18
	.byte		"unsigned long long"
	.byte		0
	.byte		0x7
	.byte		0x8
.L12037:
	.sleb128	19
	.byte		"uint64"
	.byte		0
	.4byte		.L12038
.L12036:
	.sleb128	19
	.byte		"EventMaskType"
	.byte		0
	.4byte		.L12037
.L12041:
	.sleb128	21
	.4byte		.L12036
.L12040:
	.sleb128	19
	.byte		"EventMaskRefType"
	.byte		0
	.4byte		.L12041
.L12047:
	.sleb128	19
	.byte		"TaskStateType"
	.byte		0
	.4byte		.L12048
.L12046:
	.sleb128	21
	.4byte		.L12047
.L12045:
	.sleb128	19
	.byte		"TaskStateRefType"
	.byte		0
	.4byte		.L12046
.L12051:
	.sleb128	21
	.4byte		.L11983
.L12050:
	.sleb128	19
	.byte		"TaskRefType"
	.byte		0
	.4byte		.L12051
.L12055:
	.sleb128	19
	.byte		"ResourceType"
	.byte		0
	.4byte		.L11513
.L12058:
	.sleb128	19
	.byte		"AppModeType"
	.byte		0
	.4byte		.L11513
.L12063:
	.sleb128	19
	.byte		"Os_CoreShutdownType"
	.byte		0
	.4byte		.L12064
.L12067:
	.sleb128	21
	.4byte		.L11854
.L12074:
	.sleb128	19
	.byte		"Os_IOC_ChannelDynType"
	.byte		0
	.4byte		.L12075
.L12073:
	.sleb128	21
	.4byte		.L12074
.L12072:
	.sleb128	20
	.4byte		.L12073
.L12076:
	.sleb128	19
	.byte		"Os_IOC_ChannelSizeType"
	.byte		0
	.4byte		.L11529
.L12077:
	.sleb128	20
	.4byte		.L11973
.L12078:
	.sleb128	20
	.4byte		.L11529
.L12080:
	.sleb128	19
	.byte		"Os_IOC_DataCountType"
	.byte		0
	.4byte		.L11540
.L12079:
	.sleb128	20
	.4byte		.L12080
.L12084:
	.sleb128	19
	.byte		"Os_IOC_DataDescriptorType"
	.byte		0
	.4byte		.L12085
.L12083:
	.sleb128	20
	.4byte		.L12084
.L12082:
	.sleb128	21
	.4byte		.L12083
.L12081:
	.sleb128	20
	.4byte		.L12082
.L12088:
	.sleb128	19
	.byte		"Os_LockResourceType"
	.byte		0
	.4byte		.L11540
.L12087:
	.sleb128	21
	.4byte		.L12088
.L12086:
	.sleb128	20
	.4byte		.L12087
.L12091:
	.sleb128	19
	.byte		"Os_IOC_DataLengthType"
	.byte		0
	.4byte		.L11529
.L12090:
	.sleb128	20
	.4byte		.L12091
.L12093:
	.sleb128	19
	.byte		"Os_IOC_DataOffsetType"
	.byte		0
	.4byte		.L11529
.L12092:
	.sleb128	20
	.4byte		.L12093
.L12097:
	.sleb128	19
	.byte		"Os_HookIDType"
	.byte		0
	.4byte		.L11529
.L12100:
	.sleb128	20
	.4byte		.L11983
.L12103:
	.sleb128	19
	.byte		"Os_ProcDynType"
	.byte		0
	.4byte		.L12104
.L12102:
	.sleb128	21
	.4byte		.L12103
.L12101:
	.sleb128	20
	.4byte		.L12102
.L12108:
	.sleb128	19
	.byte		"Os_ProcStackType"
	.byte		0
	.4byte		.L12109
.L12107:
	.sleb128	20
	.4byte		.L12108
.L12106:
	.sleb128	21
	.4byte		.L12107
.L12105:
	.sleb128	20
	.4byte		.L12106
.L12111:
	.sleb128	19
	.byte		"Os_ProcKindType"
	.byte		0
	.4byte		.L12112
.L12110:
	.sleb128	20
	.4byte		.L12111
.L12113:
	.sleb128	20
	.4byte		.L12036
.L12114:
	.sleb128	20
	.4byte		.L11823
.L12116:
	.sleb128	19
	.byte		"Os_ActivationCountType"
	.byte		0
	.4byte		.L11513
.L12115:
	.sleb128	20
	.4byte		.L12116
.L12117:
	.sleb128	20
	.4byte		.L11794
.L12118:
	.sleb128	20
	.4byte		.L11801
.L12122:
	.sleb128	19
	.byte		"Os_AccessStorageType"
	.byte		0
	.4byte		.L11513
.L12121:
	.sleb128	20
	.4byte		.L12122
.L12120:
	.sleb128	21
	.4byte		.L12121
.L12119:
	.sleb128	20
	.4byte		.L12120
.L12126:
	.sleb128	25
	.4byte		.L12127-.L2
	.byte		0x1
	.sleb128	0
.L12127:
.L12125:
	.sleb128	21
	.4byte		.L12126
.L12124:
	.sleb128	19
	.byte		"Os_ProcEntryPointType"
	.byte		0
	.4byte		.L12125
.L12123:
	.sleb128	20
	.4byte		.L12124
.L12128:
	.sleb128	20
	.4byte		.L12055
.L12133:
	.sleb128	19
	.byte		"Os_ResourceStatType"
	.byte		0
	.4byte		.L12134
.L12132:
	.sleb128	20
	.4byte		.L12133
.L12131:
	.sleb128	21
	.4byte		.L12132
.L12130:
	.sleb128	19
	.byte		"Os_ResourceStack"
	.byte		0
	.4byte		.L12131
.L12129:
	.sleb128	21
	.4byte		.L12130
.L12135:
	.sleb128	20
	.4byte		.L11828
.L12136:
	.sleb128	20
	.4byte		.L11833
.L12139:
	.sleb128	19
	.byte		"Os_StackSizeType"
	.byte		0
	.4byte		.L11513
.L12138:
	.sleb128	20
	.4byte		.L12139
.L12141:
	.sleb128	19
	.byte		"Os_ProcContexStateType"
	.byte		0
	.4byte		.L12142
.L12144:
	.sleb128	20
	.4byte		.L12145
.L12143:
	.sleb128	21
	.4byte		.L12144
.L12148:
	.sleb128	20
	.4byte		.L11577
.L12154:
	.sleb128	19
	.byte		"Os_CounterStatType"
	.byte		0
	.4byte		.L12155
.L12153:
	.sleb128	20
	.4byte		.L12154
.L12152:
	.sleb128	21
	.4byte		.L12153
.L12151:
	.sleb128	20
	.4byte		.L12152
.L12150:
	.sleb128	21
	.4byte		.L12151
.L12149:
	.sleb128	20
	.4byte		.L12150
.L12159:
	.sleb128	19
	.byte		"Os_TimerPlatformConfigType"
	.byte		0
	.4byte		.L12160
.L12158:
	.sleb128	20
	.4byte		.L12159
.L12157:
	.sleb128	21
	.4byte		.L12158
.L12156:
	.sleb128	20
	.4byte		.L12157
.L12164:
	.sleb128	19
	.byte		"Os_CounterKindType"
	.byte		0
	.4byte		.L12165
.L12163:
	.sleb128	20
	.4byte		.L12164
.L12166:
	.sleb128	20
	.4byte		.L11849
.L12169:
	.sleb128	19
	.byte		"Os_CounterDynType"
	.byte		0
	.4byte		.L12170
.L12168:
	.sleb128	21
	.4byte		.L12169
.L12167:
	.sleb128	20
	.4byte		.L12168
.L12173:
	.sleb128	19
	.byte		"Os_CounterEPType"
	.byte		0
	.4byte		.L12174
.L12172:
	.sleb128	21
	.4byte		.L12173
.L12171:
	.sleb128	20
	.4byte		.L12172
.L12177:
	.sleb128	19
	.byte		"Os_CounterEPActionType"
	.byte		0
	.4byte		.L12178
.L12176:
	.sleb128	21
	.4byte		.L12177
.L12175:
	.sleb128	20
	.4byte		.L12176
.L12180:
	.sleb128	19
	.byte		"Os_CounterActionOwnerType"
	.byte		0
	.4byte		.L12181
.L12186:
	.sleb128	21
	.4byte		.L11511
.L12185:
	.sleb128	20
	.4byte		.L12186
.L12187:
	.sleb128	20
	.4byte		.L11540
.L12190:
	.sleb128	20
	.4byte		.L11976
.L12193:
	.sleb128	19
	.byte		"Os_SpinlockDynType"
	.byte		0
	.4byte		.L12194
.L12192:
	.sleb128	21
	.4byte		.L12193
.L12191:
	.sleb128	20
	.4byte		.L12192
.L12199:
	.sleb128	19
	.byte		"Os_ApplicationDynType"
	.byte		0
	.4byte		.L12200
.L12198:
	.sleb128	21
	.4byte		.L12199
.L12197:
	.sleb128	20
	.4byte		.L12198
.L12201:
	.sleb128	20
	.4byte		.L11991
.L12203:
	.sleb128	19
	.byte		"Os_ApplicationKindType"
	.byte		0
	.4byte		.L12204
.L12202:
	.sleb128	20
	.4byte		.L12203
.L12208:
	.sleb128	25
	.4byte		.L12209-.L2
	.byte		0x1
	.sleb128	26
	.4byte		.L11854
	.sleb128	0
.L12209:
.L12207:
	.sleb128	21
	.4byte		.L12208
.L12206:
	.sleb128	19
	.byte		"Os_ShutdownHookFuncType"
	.byte		0
	.4byte		.L12207
.L12205:
	.sleb128	20
	.4byte		.L12206
.L12213:
	.sleb128	25
	.4byte		.L12214-.L2
	.byte		0x1
	.sleb128	0
.L12214:
.L12212:
	.sleb128	21
	.4byte		.L12213
.L12211:
	.sleb128	19
	.byte		"Os_StartUpHookFuncType"
	.byte		0
	.4byte		.L12212
.L12210:
	.sleb128	20
	.4byte		.L12211
.L12218:
	.sleb128	25
	.4byte		.L12219-.L2
	.byte		0x1
	.sleb128	26
	.4byte		.L11854
	.sleb128	0
.L12219:
.L12217:
	.sleb128	21
	.4byte		.L12218
.L12216:
	.sleb128	19
	.byte		"Os_ErrorHookFuncType"
	.byte		0
	.4byte		.L12217
.L12215:
	.sleb128	20
	.4byte		.L12216
.L12222:
	.sleb128	20
	.4byte		.L11848
.L12221:
	.sleb128	21
	.4byte		.L12222
.L12220:
	.sleb128	20
	.4byte		.L12221
.L12224:
	.sleb128	21
	.4byte		.L12148
.L12223:
	.sleb128	20
	.4byte		.L12224
.L12227:
	.sleb128	20
	.4byte		.L11996
.L12226:
	.sleb128	21
	.4byte		.L12227
.L12225:
	.sleb128	20
	.4byte		.L12226
.L12230:
	.sleb128	20
	.4byte		.L12008
.L12229:
	.sleb128	21
	.4byte		.L12230
.L12228:
	.sleb128	20
	.4byte		.L12229
.L12235:
	.sleb128	19
	.byte		"Os_ResourceDynType"
	.byte		0
	.4byte		.L12236
.L12234:
	.sleb128	21
	.4byte		.L12235
.L12239:
	.sleb128	19
	.byte		"Os_ErrorType"
	.byte		0
	.4byte		.L12240
.L12241:
	.sleb128	19
	.byte		"Os_ExceptionStatusType"
	.byte		0
	.4byte		.L12242
.L12247:
	.sleb128	25
	.4byte		.L12248-.L2
	.byte		0x1
	.sleb128	0
.L12248:
.L12246:
	.sleb128	21
	.4byte		.L12247
.L12245:
	.sleb128	19
	.byte		"Os_IsrHandlerFuncType"
	.byte		0
	.4byte		.L12246
.L12244:
	.sleb128	20
	.4byte		.L12245
.L12250:
	.sleb128	19
	.byte		"Os_ExceptionTypeType"
	.byte		0
	.4byte		.L12251
.L12254:
	.sleb128	19
	.byte		"Os_ShudownErrorType"
	.byte		0
	.4byte		.L12255
.L12256:
	.sleb128	19
	.byte		"Os_ParameterErrorType"
	.byte		0
	.4byte		.L12257
.L12258:
	.sleb128	19
	.byte		"Os_ServiceErrorType"
	.byte		0
	.4byte		.L12259
.L12261:
	.sleb128	19
	.byte		"ServiceTraceType"
	.byte		0
	.4byte		.L11540
.L12262:
	.sleb128	19
	.byte		"OSServiceIdType"
	.byte		0
	.4byte		.L12263
.L12265:
	.sleb128	19
	.byte		"TryToGetSpinlockRefType"
	.byte		0
	.4byte		.L11977
.L12267:
	.sleb128	19
	.byte		"Os_SystemInternalErrorType"
	.byte		0
	.4byte		.L12268
.L12274:
	.sleb128	20
	.4byte		.L11513
.L12276:
	.sleb128	19
	.byte		"Os_IsrPlatformLevelType"
	.byte		0
	.4byte		.L11529
.L12275:
	.sleb128	20
	.4byte		.L12276
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11503:
	.sleb128	0
.L11499:

	.section	.debug_loc,,n
	.align	0
.L11515:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),31
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),31
	.d2locend
.L11521:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo6),30
	.d2locend
.L11531:
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),3
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),3
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo12),3
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo14),3
	.d2locend
.L11538:
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo8),0
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo17),31
	.d2locend
.L11542:
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo17),30
	.d2locend
.L11548:
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo20),29
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo22),3
	.d2locend
.L11554:
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo24),3
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo26),3
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo28),3
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo30),3
	.d2locreg	%offsetof(.Llo31), %offsetof(.Llo32),3
	.d2locreg	%offsetof(.Llo33), %offsetof(.Llo34),3
	.d2locend
.L11557:
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo35),4
	.d2locreg	%offsetof(.Llo36), %offsetof(.Llo37),4
	.d2locreg	%offsetof(.Llo38), %offsetof(.Llo25),4
	.d2locreg	%offsetof(.Llo39), %offsetof(.Llo40),4
	.d2locend
.L11558:
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo41),5
	.d2locreg	%offsetof(.Llo37), %offsetof(.Llo25),5
	.d2locend
.L11560:
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo34),31
	.d2locend
.L11571:
	.d2locreg	%offsetof(.Llo42), %offsetof(.Llo43),4
	.d2locreg	%offsetof(.Llo44), %offsetof(.Llo45),31
	.d2locreg	%offsetof(.Llo46), %offsetof(.Llo47),4
	.d2locend
.L11573:
	.d2locreg	%offsetof(.Llo48), %offsetof(.Llo49),30
	.d2locend
.L11575:
	.d2locreg	%offsetof(.Llo50), %offsetof(.Llo51),3
	.d2locreg	%offsetof(.Llo52), %offsetof(.Llo53),3
	.d2locend
.L11578:
	.d2locreg	%offsetof(.Llo54), %offsetof(.Llo45),29
	.d2locend
.L11584:
	.d2locreg	%offsetof(.Llo55), %offsetof(.Llo56),3
	.d2locreg	%offsetof(.Llo57), %offsetof(.Llo58),31
	.d2locend
.L11586:
	.d2locreg	%offsetof(.Llo56), %offsetof(.Llo57),3
	.d2locreg	%offsetof(.Llo59), %offsetof(.Llo60),30
	.d2locend
.L11588:
	.d2locreg	%offsetof(.Llo57), %offsetof(.Llo60),29
	.d2locend
.L11594:
	.d2locreg	%offsetof(.Llo61), %offsetof(.Llo62),28
	.d2locreg	%offsetof(.Llo63), %offsetof(.Llo64),3
	.d2locend
.L11596:
	.d2locreg	%offsetof(.Llo65), %offsetof(.Llo66),3
	.d2locreg	%offsetof(.Llo67), %offsetof(.Llo68),4
	.d2locend
.L11602:
	.d2locreg	%offsetof(.Llo69), %offsetof(.Llo70),3
	.d2locreg	%offsetof(.Llo71), %offsetof(.Llo72),3
	.d2locreg	%offsetof(.Llo73), %offsetof(.Llo74),3
	.d2locend
.L11604:
	.d2locreg	%offsetof(.Llo70), %offsetof(.Llo75),3
	.d2locreg	%offsetof(.Llo76), %offsetof(.Llo77),31
	.d2locend
.L11606:
	.d2locreg	%offsetof(.Llo69), %offsetof(.Llo77),30
	.d2locend
.L11612:
	.d2locreg	%offsetof(.Llo76), %offsetof(.Llo72),0
	.d2locreg	%offsetof(.Llo78), %offsetof(.Llo79),0
	.d2locend
.L11618:
	.d2locreg	%offsetof(.Llo80), %offsetof(.Llo81),3
	.d2locreg	%offsetof(.Llo82), %offsetof(.Llo83),29
	.d2locreg	%offsetof(.Llo84), %offsetof(.Llo85),29
	.d2locreg	%offsetof(.Llo86), %offsetof(.Llo87),29
	.d2locreg	%offsetof(.Llo88), %offsetof(.Llo89),3
	.d2locend
.L11620:
	.d2locreg	%offsetof(.Llo90), %offsetof(.Llo91),31
	.d2locreg	%offsetof(.Llo92), %offsetof(.Llo82),3
	.d2locreg	%offsetof(.Llo93), %offsetof(.Llo94),31
	.d2locend
.L11622:
	.d2locreg	%offsetof(.Llo92), %offsetof(.Llo95),30
	.d2locreg	%offsetof(.Llo96), %offsetof(.Llo97),30
	.d2locend
.L11628:
	.d2locreg	%offsetof(.Llo98), %offsetof(.Llo99),3
	.d2locreg	%offsetof(.Llo84), %offsetof(.Llo100),0
	.d2locend
.L11630:
	.d2locreg	%offsetof(.Llo100), %offsetof(.Llo95),0
	.d2locreg	%offsetof(.Llo101), %offsetof(.Llo102),0
	.d2locend
.L11632:
	.d2locreg	%offsetof(.Llo103), %offsetof(.Llo96),29
	.d2locreg	%offsetof(.Llo104), %offsetof(.Llo94),29
	.d2locend
.L11638:
	.d2locreg	%offsetof(.Llo105), %offsetof(.Llo96),30
	.d2locreg	%offsetof(.Llo97), %offsetof(.Llo94),30
	.d2locend
.L11644:
	.d2locreg	%offsetof(.Llo105), %offsetof(.Llo96),30
	.d2locreg	%offsetof(.Llo97), %offsetof(.Llo94),30
	.d2locend
.L11646:
	.d2locreg	%offsetof(.Llo103), %offsetof(.Llo96),29
	.d2locreg	%offsetof(.Llo87), %offsetof(.Llo94),29
	.d2locend
.L11652:
	.d2locreg	%offsetof(.Llo106), %offsetof(.Llo107),3
	.d2locreg	%offsetof(.Llo108), %offsetof(.Llo109),29
	.d2locend
.L11654:
	.d2locreg	%offsetof(.Llo110), %offsetof(.Llo111),31
	.d2locreg	%offsetof(.Llo112), %offsetof(.Llo108),3
	.d2locreg	%offsetof(.Llo113), %offsetof(.Llo109),31
	.d2locend
.L11656:
	.d2locreg	%offsetof(.Llo112), %offsetof(.Llo114),30
	.d2locreg	%offsetof(.Llo115), %offsetof(.Llo109),30
	.d2locend
.L11662:
	.d2locreg	%offsetof(.Llo116), %offsetof(.Llo117),3
	.d2locreg	%offsetof(.Llo118), %offsetof(.Llo114),0
	.d2locreg	%offsetof(.Llo119), %offsetof(.Llo120),0
	.d2locend
.L11668:
	.d2locreg	%offsetof(.Llo121), %offsetof(.Llo114),4
	.d2locend
.L11670:
	.d2locreg	%offsetof(.Llo122), %offsetof(.Llo109),29
	.d2locend
.L11676:
	.d2locreg	%offsetof(.Llo123), %offsetof(.Llo114),30
	.d2locreg	%offsetof(.Llo115), %offsetof(.Llo109),30
	.d2locend
.L11682:
	.d2locreg	%offsetof(.Llo124), %offsetof(.Llo125),3
	.d2locreg	%offsetof(.Llo126), %offsetof(.Llo127),31
	.d2locreg	%offsetof(.Llo128), %offsetof(.Llo129),31
	.d2locend
.L11684:
	.d2locreg	%offsetof(.Llo124), %offsetof(.Llo129),30
	.d2locend
.L11690:
	.d2locreg	%offsetof(.Llo130), %offsetof(.Llo131),3
	.d2locreg	%offsetof(.Llo132), %offsetof(.Llo133),3
	.d2locend
.L11691:
	.d2locreg	%offsetof(.Llo130), %offsetof(.Llo134),4
	.d2locend
.L11692:
	.d2locreg	%offsetof(.Llo130), %offsetof(.Llo134),5
	.d2locend
.L11694:
	.d2locreg	%offsetof(.Llo130), %offsetof(.Llo135),30
	.d2locend
.L11700:
	.d2locreg	%offsetof(.Llo136), %offsetof(.Llo137),3
	.d2locreg	%offsetof(.Llo138), %offsetof(.Llo139),31
	.d2locend
.L11702:
	.d2locreg	%offsetof(.Llo140), %offsetof(.Llo141),30
	.d2locreg	%offsetof(.Llo142), %offsetof(.Llo138),3
	.d2locreg	%offsetof(.Llo143), %offsetof(.Llo139),30
	.d2locend
.L11704:
	.d2locreg	%offsetof(.Llo136), %offsetof(.Llo139),29
	.d2locend
.L11710:
	.d2locreg	%offsetof(.Llo144), %offsetof(.Llo145),3
	.d2locreg	%offsetof(.Llo146), %offsetof(.Llo139),4
	.d2locend
.L11716:
	.d2locreg	%offsetof(.Llo147), %offsetof(.Llo148),3
	.d2locreg	%offsetof(.Llo149), %offsetof(.Llo150),31
	.d2locend
.L11717:
	.d2locreg	%offsetof(.Llo147), %offsetof(.Llo149),4
	.d2locreg	%offsetof(.Llo151), %offsetof(.Llo152),30
	.d2locreg	%offsetof(.Llo153), %offsetof(.Llo154),4
	.d2locend
.L11719:
	.d2locreg	%offsetof(.Llo155), %offsetof(.Llo152),29
	.d2locend
.L11721:
	.d2locreg	%offsetof(.Llo156), %offsetof(.Llo150),28
	.d2locend
.L11723:
	.d2locreg	%offsetof(.Llo157), %offsetof(.Llo158),3
	.d2locreg	%offsetof(.Llo159), %offsetof(.Llo160),3
	.d2locend
.L11725:
	.d2locreg	%offsetof(.Llo161), %offsetof(.Llo152),27
	.d2locend
.L11731:
	.d2locreg	%offsetof(.Llo162), %offsetof(.Llo163),3
	.d2locreg	%offsetof(.Llo164), %offsetof(.Llo165),31
	.d2locend
.L11733:
	.d2locreg	%offsetof(.Llo164), %offsetof(.Llo166),30
	.d2locend
.L11735:
	.d2locreg	%offsetof(.Llo167), %offsetof(.Llo168),29
	.d2locreg	%offsetof(.Llo169), %offsetof(.Llo170),0
	.d2locreg	%offsetof(.Llo171), %offsetof(.Llo172),3
	.d2locreg	%offsetof(.Llo173), %offsetof(.Llo165),29
	.d2locend
.L11737:
	.d2locreg	%offsetof(.Llo162), %offsetof(.Llo165),28
	.d2locend
.L11745:
	.d2locreg	%offsetof(.Llo174), %offsetof(.Llo175),3
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "Os_Timer_HasExpired"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Os_Timer_Tick"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Os_Timer_Platform_Tick","Os_Timer_StartTickless","Os_Timer_UpdateCounters"
	.wrcm.end
	.wrcm.nelem "Os_Timer_UpdateCounters"
	.wrcm.nint32 "frameSize", 48
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "Os_Counter_IncrementTicklessTicks","Os_ShutdownAllCores","Os_Timer_StartTickless"
	.wrcm.end
	.wrcm.nelem "Os_Timer_RestartTickless"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Os_ShutdownAllCores","Os_Timer_QueryCounters","Os_Timer_StartTickless"
	.wrcm.end
	.wrcm.nelem "Os_Timer_StartTickless"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "Os_Timer_CalculateTicklessValues","Os_Timer_Platform_Start"
	.wrcm.end
	.wrcm.nelem "Os_Timer_ResumeTickless"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Os_ShutdownAllCores","Os_Timer_Platform_Start","Os_Timer_Platform_StopAndGetElapsedIncrements"
	.wrcm.end
	.wrcm.nelem "Os_Timer_SuspendTickless"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Os_Counter_UpdateTicklessCounters","Os_Timer_Platform_RestartAndGetElapsedIncrements"
	.wrcm.end
	.wrcm.nelem "Os_Timer_UpdateTickless"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Os_Counter_UpdateTicklessCounters","Os_ShutdownAllCores","Os_Timer_Platform_GetElapsedIncrements"
	.wrcm.end
	.wrcm.nelem "Os_Timer_StartFirstTime"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Os_Timer_Platform_Start"
	.wrcm.end
	.wrcm.nelem "Os_Timer_PostInit"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Os_Timer_CalculateTicklessValues","Os_Timer_Platform_PostInit","Os_Timer_QueryCounters"
	.wrcm.end
	.wrcm.nelem "Os_Timer_QueryCounters"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "Os_Counter_GetNextTicklessTicks","Os_ShutdownAllCores"
	.wrcm.end
	.wrcm.nelem "Os_Timer_CalculateTicklessValues"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "Os_ShutdownAllCores","Os_Timer_Platform_StopAndGetElapsedIncrements"
	.wrcm.end
	.wrcm.nelem "Os_Timer_Init"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Os_Isr_Platform_InitChannel","Os_Timer_Platform_Init","Os_Timer_Platform_InitChannel","Os_Timer_StartTicklessFirstTime"
	.wrcm.end
	.wrcm.nelem "Os_Timer_StartTicklessFirstTime"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "Os_ShutdownAllCores","Os_Timer_Platform_Start_MeasureStop","Os_Timer_Platform_StopAndGetElapsedIncrements_MeasureStart"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Os_Timer.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Os_Timer.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Os_Timer.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Os_Timer.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Os_Timer.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Os_Timer.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\Os\Os\core\ssc\make\..\src\timer\Os_Timer.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
