#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Spi.c"
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
# LOCAL_INLINE FUNC(Spi_StatusType, SPI_CODE) Spi_GetAsyncStatus(void)
	.section	.invalid_TEXT,,c
	.align		1
	.section	.debug_line.invalid_TEXT,,n
	.sectionlink	.debug_line
.L722:
	.section	.invalid_TEXT,,c
#$$ld
.L718:
	.0byte		.L716
	.d2_line_start	.debug_line.invalid_TEXT
	.section	.invalid_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Spi\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Spi.c"
        .d2line         448,45
#$$ld
.L725:

#$$bf	Spi_GetAsyncStatus,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,cr0,lr
	.d2_cfa_start __cie
Spi_GetAsyncStatus:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     VAR(Spi_StatusType, AUTOMATIC) StatusFlag = SPI_IDLE;
	.d2line		450
	diab.li		r3,1		# StatusFlag=r3
#     VAR(Spi_HWUnitType, AUTOMATIC) HWUnit;
# 
#     for (HWUnit = 0u; HWUnit < (Spi_HWUnitType)SPI_MAX_HWUNIT; HWUnit++)
	.d2line		453
.Llo1:
	diab.li		r4,0		# HWUnit=r4
.L477:
.Llo3:
	rlwinm		r0,r4,0,24,31		# HWUnit=r4
	se_cmpi		r0,5
	bc		0,0,.L481	# ge
#     {
#         if ((SPI_BUSY == Spi_aSpiHWUnitQueueArray[HWUnit].Status) &&
	.d2line		455
	rlwinm		r0,r4,0,24,31		# HWUnit=r4
	lis		r5,(Spi_aSpiHWUnitQueueArray+20)@ha
	e_add16i		r5,r5,(Spi_aSpiHWUnitQueueArray+20)@l
	rlwinm		r6,r0,5,0,26
	se_slwi		r0,3
	subf		r0,r0,r6
	lwzx		r0,r5,r0
	se_cmpi		r0,2
	bc		0,2,.L480	# ne
	lis		r5,Spi_pcSpiConfigPtr@ha
	lwz		r5,Spi_pcSpiConfigPtr@l(r5)
	lwz		r0,24(r5)
	rlwinm		r5,r4,3,21,28		# HWUnit=r4
	se_add		r5,r0
	lwz		r0,4(r5)
	se_cmpi		r0,0
	bc		0,2,.L480	# ne
#             (SPI_PHYUNIT_ASYNC_U32 == (*Spi_pcSpiConfigPtr->pcHWUnitConfig)[HWUnit].u32IsSync))
#         {
#             StatusFlag = SPI_BUSY;
	.d2line		458
	diab.li		r3,2		# StatusFlag=r3
	b		.L481
.L480:
#             break;
#         }
#         else
#         {
#             /* Do nothing */
#         }
#     }
	.d2line		465
	diab.addi		r0,r4,1		# HWUnit=r4
	se_addi		r4,1		# HWUnit=r4 HWUnit=r4
	b		.L477
.L481:
#     return StatusFlag;
	.d2line		466
.Llo4:
	mr		r3,r3		# StatusFlag=r3 StatusFlag=r3
# }
	.d2line		467
	.d2epilogue_begin
.Llo2:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L726:
	.type		Spi_GetAsyncStatus,@function
	.size		Spi_GetAsyncStatus,.-Spi_GetAsyncStatus
# Number of nodes = 45

# Allocations for Spi_GetAsyncStatus
#	?a4		$$117
#	?a5		StatusFlag
#	?a6		HWUnit
# LOCAL_INLINE FUNC(Std_ReturnType, SPI_CODE) Spi_LockJobs
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         494,45
#$$ld
.L740:

#$$bf	Spi_LockJobs,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Spi_LockJobs:
.Llo5:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr
	stmw		r27,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	27,31,1,1
	stw		r0,52(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# Sequence=r31 Sequence=r3
	mr		r30,r4		# pcSequence=r30 pcSequence=r4
	.d2prologue_end
#     (
#         VAR(Spi_SequenceType, AUTOMATIC) Sequence,
#         P2CONST(Spi_SequenceConfigType, AUTOMATIC, SPI_APPL_CONST) pcSequence
#     )
# {
#     VAR(Std_ReturnType, AUTOMATIC) Status = (Std_ReturnType)E_OK;
	.d2line		500
	diab.li		r29,0		# Status=r29
#     VAR(Spi_JobType, AUTOMATIC) JobCount = pcSequence->NumJobs;
	.d2line		501
.Llo14:
	lhz		r28,0(r30)		# JobCount=r28 pcSequence=r30
.Llo18:
	mr		r28,r28		# JobCount=r28 JobCount=r28
#     P2CONST(Spi_JobType, AUTOMATIC, SPI_APPL_CONST) pcJobs = (*pcSequence->pcJobIndexList);
	.d2line		502
	lwz		r27,4(r30)		# pcSequence=r30
.Llo19:
	mr		r27,r27		# pcJobs=r27 pcJobs=r27
#     P2VAR(Spi_JobStateType, AUTOMATIC, SPI_APPL_DATA) pJobState;
#     P2VAR(Spi_SequenceStateType, AUTOMATIC, SPI_APPL_DATA) pSequenceState;
# 
#     SchM_Enter_Spi_SPI_EXCLUSIVE_AREA_05();
	.d2line		506
	bl		SchM_Enter_Spi_SPI_EXCLUSIVE_AREA_05
# 
#     /* use an optimized implementation for one job sequences */
#     if (1u == JobCount)
	.d2line		509
.Llo6:
	e_cmphl16i	r28,1		# JobCount=r28
	bc		0,2,.L487	# ne
#     {
#         pJobState = &Spi_aSpiJobState[*pcJobs];
	.d2line		511
.Llo7:
	lhz		r0,0(r27)		# pcJobs=r27
	lis		r3,Spi_aSpiJobState@ha
	e_add16i		r3,r3,Spi_aSpiJobState@l
	rlwinm		r4,r0,4,0,27		# pJobState=r4
.Llo20:
	se_slwi		r0,2
	subf		r0,r0,r4		# pJobState=r4
	se_add		r0,r3
	mr		r4,r0		# pJobState=r4 pJobState=r0
#         if (NULL_PTR == pJobState->pAsyncCrtSequenceState)
	.d2line		512
.Llo21:
	lwz		r0,4(r4)		# pJobState=r4
	se_cmpi		r0,0
	bc		0,2,.L488	# ne
#         {
#             /* job not yet linked => link it to the current sequence */
#             pJobState->pAsyncCrtSequenceState = &Spi_aSpiSequenceState[Sequence];
	.d2line		515
.Llo8:
	lis		r3,Spi_aSpiSequenceState@ha
	e_add16i		r3,r3,Spi_aSpiSequenceState@l
.Llo9:
	rlwinm		r31,r31,4,20,27		# Sequence=r31 Sequence=r31
	se_add		r3,r31		# Sequence=r31
	stw		r3,4(r4)		# pJobState=r4
	b		.L490
.L488:
#         }
#         else
#         {
#             /* the job is already locked by a pending sequence */
#             Status = (Std_ReturnType)E_NOT_OK;
	.d2line		520
	diab.li		r29,1		# Status=r29
	b		.L490
.L487:
#         }
#     }
#     else
#     {
#         pSequenceState = &Spi_aSpiSequenceState[Sequence];
	.d2line		525
.Llo10:
	lis		r4,Spi_aSpiSequenceState@ha
	e_add16i		r4,r4,Spi_aSpiSequenceState@l
.Llo11:
	rlwinm		r31,r31,4,20,27		# Sequence=r31 Sequence=r31
	se_add		r4,r31		# Sequence=r31
.Llo29:
	mr		r4,r4		# pSequenceState=r4 pSequenceState=r4
.L491:
#         while (0u < JobCount)
	.d2line		526
.Llo12:
	e_cmphl16i	r28,0		# JobCount=r28
	bc		1,2,.L490	# eq
#         {
#             pJobState = &Spi_aSpiJobState[*pcJobs];
	.d2line		528
	lhz		r0,0(r27)		# pcJobs=r27
	lis		r3,Spi_aSpiJobState@ha		# pJobState=r3
.Llo22:
	e_add16i		r3,r3,Spi_aSpiJobState@l		# pJobState=r3 pJobState=r3
	rlwinm		r5,r0,4,0,27
	se_slwi		r0,2
	subf		r0,r0,r5
	se_add		r0,r3		# pJobState=r3
	mr		r3,r0		# pJobState=r3 pJobState=r0
#             if (NULL_PTR == pJobState->pAsyncCrtSequenceState)
	.d2line		529
.Llo23:
	lwz		r0,4(r3)		# pJobState=r3
	se_cmpi		r0,0
	bc		0,2,.L493	# ne
#             {
#                 /* job not yet linked => link it to the current sequence */
#                 pJobState->pAsyncCrtSequenceState = pSequenceState;
	.d2line		532
.Llo24:
	stw		r4,4(r3)		# pJobState=r3 pSequenceState=r4
	b		.L494
.L493:
#             }
#             else
#             {
#                 /* the job is already locked by a pending sequence =>
#                    rollback all the previous locks */
#                 if (JobCount < pcSequence->NumJobs)
	.d2line		538
.Llo25:
	rlwinm		r0,r28,0,16,31		# JobCount=r28
	lhz		r3,0(r30)		# pJobState=r3 pcSequence=r30
.Llo26:
	se_cmp		r0,r3		# pJobState=r3
	bc		0,0,.L497	# ge
.L496:
#                 {
#                     do
#                     {
#                         JobCount++;
	.d2line		542
.Llo15:
	diab.addi		r0,r28,1		# JobCount=r28
	se_addi		r28,1		# JobCount=r28 JobCount=r28
#                         /*
#                         * @violates @ref Spi_c_REF_6 Array indexing shall be
#                         *       the only allowed form of pointer arithmetic.
#                         */
#                         pcJobs--;
#                         Spi_aSpiJobState[*pcJobs].pAsyncCrtSequenceState = NULL_PTR;
	.d2line		548
	lhzu		r0,-2(r27)		# pcJobs=r27
	diab.li		r5,0
	lis		r3,(Spi_aSpiJobState+4)@ha		# pJobState=r3
.Llo27:
	e_add16i		r3,r3,(Spi_aSpiJobState+4)@l		# pJobState=r3 pJobState=r3
	rlwinm		r4,r0,4,0,27		# pSequenceState=r4
.Llo30:
	se_slwi		r0,2
	subf		r0,r0,r4		# pSequenceState=r4
	stwx		r5,r3,r0		# pJobState=r3
#                     }
	.d2line		549
	rlwinm		r0,r28,0,16,31		# JobCount=r28
	lhz		r3,0(r30)		# pJobState=r3 pcSequence=r30
	se_cmp		r0,r3		# pJobState=r3
	bc		1,0,.L496	# lt
.L497:
#                     while (JobCount < pcSequence->NumJobs);
#                 }
#                 else
#                 {
#                     /* Do nothing */
#                 }
#                 Status = (Std_ReturnType)E_NOT_OK;
	.d2line		556
.Llo28:
	diab.li		r29,1		# Status=r29
.Llo16:
	b		.L490
.L494:
#                 break;
#             }
# 
#             /* next job */
#             JobCount--;
	.d2line		561
.Llo31:
	diab.li		r0,65535
	se_add		r0,r28		# JobCount=r28
	mr		r28,r0		# JobCount=r28 JobCount=r0
#             /*
#              * @violates @ref Spi_c_REF_6 Array indexing shall be
#              *       the only allowed form of pointer arithmetic.
#              */
#             pcJobs++;
	.d2line		566
	se_addi		r27,2		# pcJobs=r27 pcJobs=r27
	b		.L491
.L490:
#         }
#     }
#     SchM_Exit_Spi_SPI_EXCLUSIVE_AREA_05();
	.d2line		569
.Llo13:
	bl		SchM_Exit_Spi_SPI_EXCLUSIVE_AREA_05
#     return Status;
	.d2line		570
	rlwinm		r3,r29,0,24,31		# pJobState=r3 Status=r29
# }
	.d2line		571
	.d2epilogue_begin
	lmw		r27,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo17:
	lwz		r0,52(r1)
	mtspr		lr,r0
	diab.addi		r1,r1,48		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L741:
	.type		Spi_LockJobs,@function
	.size		Spi_LockJobs,.-Spi_LockJobs
# Number of nodes = 130

# Allocations for Spi_LockJobs
#	?a4		Sequence
#	?a5		pcSequence
#	?a6		$$120
#	?a7		$$119
#	?a8		$$118
#	?a9		Status
#	?a10		JobCount
#	?a11		pcJobs
#	?a12		pJobState
#	?a13		pSequenceState
# LOCAL_INLINE FUNC(void, SPI_CODE) Spi_UnlockRemainingJobs
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         588,35
#$$ld
.L774:

#$$bf	Spi_UnlockRemainingJobs,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Spi_UnlockRemainingJobs:
.Llo32:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# RemainingJobs=r31 RemainingJobs=r3
	mr		r30,r4		# pcSequence=r30 pcSequence=r4
	.d2prologue_end
#     (
#         VAR(Spi_JobType, AUTOMATIC) RemainingJobs,
#         P2CONST(Spi_SequenceConfigType, AUTOMATIC, SPI_APPL_CONST) pcSequence
#     )
# {
#     VAR(Spi_JobType, AUTOMATIC) NumJobsInSeq = pcSequence->NumJobs;
	.d2line		594
	lhz		r29,0(r30)		# NumJobsInSeq=r29 pcSequence=r30
	mr		r29,r29		# NumJobsInSeq=r29 NumJobsInSeq=r29
#     VAR(Spi_JobType, AUTOMATIC) JobIdx;
# 
#     SchM_Enter_Spi_SPI_EXCLUSIVE_AREA_06();
	.d2line		597
	bl		SchM_Enter_Spi_SPI_EXCLUSIVE_AREA_06
#     for (JobIdx = NumJobsInSeq-RemainingJobs; JobIdx < NumJobsInSeq; JobIdx++)
	.d2line		598
.Llo33:
	subf		r31,r31,r29		# RemainingJobs=r31 RemainingJobs=r31 NumJobsInSeq=r29
.Llo36:
	mr		r31,r31		# JobIdx=r31 JobIdx=r31
.L508:
.Llo34:
	rlwinm		r0,r31,0,16,31		# JobIdx=r31
	rlwinm		r3,r29,0,16,31		# NumJobsInSeq=r29
	se_cmp		r0,r3
	bc		0,0,.L510	# ge
#     {
#         Spi_aSpiJobState[(*pcSequence->pcJobIndexList)[JobIdx]].pAsyncCrtSequenceState = NULL_PTR;
	.d2line		600
	lwz		r3,4(r30)		# pcSequence=r30
	rlwinm		r0,r31,1,15,30		# JobIdx=r31
	lhzx		r0,r3,r0
	diab.li		r5,0
	lis		r3,(Spi_aSpiJobState+4)@ha
	e_add16i		r3,r3,(Spi_aSpiJobState+4)@l
	rlwinm		r4,r0,4,0,27
	se_slwi		r0,2
	subf		r0,r0,r4
	stwx		r5,r3,r0
#     }
	.d2line		601
	diab.addi		r0,r31,1		# JobIdx=r31
	se_addi		r31,1		# JobIdx=r31 JobIdx=r31
	b		.L508
.L510:
#     SchM_Exit_Spi_SPI_EXCLUSIVE_AREA_06();
	.d2line		602
.Llo35:
	bl		SchM_Exit_Spi_SPI_EXCLUSIVE_AREA_06
# }
	.d2line		603
	.d2epilogue_begin
	lmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L775:
	.type		Spi_UnlockRemainingJobs,@function
	.size		Spi_UnlockRemainingJobs,.-Spi_UnlockRemainingJobs
# Number of nodes = 42

# Allocations for Spi_UnlockRemainingJobs
#	?a4		RemainingJobs
#	?a5		pcSequence
#	?a6		$$121
#	?a7		NumJobsInSeq
#	?a8		JobIdx
# LOCAL_INLINE FUNC(void, SPI_CODE) Spi_ScheduleJob
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         624,35
#$$ld
.L785:

#$$bf	Spi_ScheduleJob,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Spi_ScheduleJob:
.Llo37:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# pHWUnitQueue=r31 pHWUnitQueue=r3
.Llo38:
	mr		r29,r4		# Job=r29 Job=r4
.Llo39:
	mr		r30,r5		# pcJobConfig=r30 pcJobConfig=r5
	.d2prologue_end
#     (
#         P2VAR(Spi_HWUnitQueue, AUTOMATIC, SPI_APPL_DATA) pHWUnitQueue,
#         VAR(Spi_JobType, AUTOMATIC) Job,
#         P2CONST(Spi_JobConfigType, AUTOMATIC, SPI_APPL_CONST) pcJobConfig
#     )
# {
#     VAR(sint8, AUTOMATIC) s8Priority;
#     P2VAR(Spi_JobType, AUTOMATIC, SPI_APPL_DATA) pJobListTail;
# 
#     SchM_Enter_Spi_SPI_EXCLUSIVE_AREA_03();
	.d2line		634
	bl		SchM_Enter_Spi_SPI_EXCLUSIVE_AREA_03
#     if (SPI_IDLE == pHWUnitQueue->Status)
	.d2line		635
.Llo41:
	lwz		r0,20(r31)		# pHWUnitQueue=r31
	se_cmpi		r0,1
	bc		0,2,.L514	# ne
#     {
#         /* idle unit => the job can be started */
#         pHWUnitQueue->Status = SPI_BUSY;
	.d2line		638
.Llo46:
	diab.li		r0,2
	stw		r0,20(r31)		# pHWUnitQueue=r31
#         SchM_Exit_Spi_SPI_EXCLUSIVE_AREA_03();
	.d2line		639
	bl		SchM_Exit_Spi_SPI_EXCLUSIVE_AREA_03
# 
#         /* mark the job as pending */
#         Spi_aSpiJobState[Job].Result = SPI_JOB_PENDING;
	.d2line		642
.Llo42:
	rlwinm		r29,r29,0,16,31		# Job=r29 Job=r29
	diab.li		r0,1
	lis		r3,Spi_aSpiJobState@ha
	e_add16i		r3,r3,Spi_aSpiJobState@l
	rlwinm		r4,r29,4,0,27		# Job=r29
	se_slwi		r29,2		# Job=r29 Job=r29
	subf		r29,r29,r4		# Job=r29 Job=r29
.Llo43:
	stwx		r0,r3,r29
#         Spi_Ipw_JobTransfer(pcJobConfig);
	.d2line		643
	mr		r3,r30		# pcJobConfig=r3 pcJobConfig=r30
	bl		Spi_Dspi_JobTransfer
	b		.L513
.L514:
#     }
#     else
#     {
#         /* add the job to the scheduling corresponding queue */
# 
#         /* retrieve the tail of the scheduling queue for the job priority */
#         s8Priority = pcJobConfig->s8Priority;
	.d2line		650
.Llo44:
	lbz		r5,16(r30)		# s8Priority=r5 pcJobConfig=r30
.Llo48:
	mr		r5,r5		# s8Priority=r5 s8Priority=r5
#         pJobListTail = &pHWUnitQueue->aScheduledJobsListTail[s8Priority];
	.d2line		651
	extsb		r4,r5		# pJobListTail=r4 s8Priority=r5
.Llo50:
	se_slwi		r4,1		# pJobListTail=r4 pJobListTail=r4
	se_add		r4,r31		# pJobListTail=r4 pJobListTail=r4 pHWUnitQueue=r31
	addi		r3,r4,8		# pJobListTail=r4
# 
#         if (SPI_JOB_NULL == *pJobListTail)
	.d2line		653
	lhz		r0,8(r4)		# pJobListTail=r4
	cmpli		0,0,r0,65535
	bc		0,2,.L516	# ne
#         {
#             /* the list is empty => set also the head of the list */
#             pHWUnitQueue->aScheduledJobsListHead[s8Priority] = Job;
	.d2line		656
.Llo47:
	extsb		r4,r5		# pJobListTail=r4 s8Priority=r5
.Llo51:
	se_slwi		r4,1		# pJobListTail=r4 pJobListTail=r4
	sthux		r29,r4,r31		# pJobListTail=r4 Job=r29
	b		.L517
.L516:
#         }
#         else
#         {
#             /* add the item at the end of the list */
#             Spi_aSpiJobState[*pJobListTail].AsyncNextJob = Job;
	.d2line		661
	lhz		r0,0(r3)		# pJobListTail=r3
	lis		r4,(Spi_aSpiJobState+8)@ha		# pJobListTail=r4
	e_add16i		r4,r4,(Spi_aSpiJobState+8)@l		# pJobListTail=r4 pJobListTail=r4
	rlwinm		r6,r0,4,0,27
	se_slwi		r0,2
	subf		r0,r0,r6
	sthx		r29,r4,r0		# pJobListTail=r4 Job=r29
.L517:
#         }
# 
#         /* set the new tail of the list */
#         *pJobListTail = Job;
	.d2line		665
	sth		r29,0(r3)		# pJobListTail=r3 Job=r29
# 
#         /* the new item will be the last element in the list */
#         Spi_aSpiJobState[Job].AsyncNextJob = SPI_JOB_NULL;
	.d2line		668
	rlwinm		r29,r29,0,16,31		# Job=r29 Job=r29
	diab.li		r4,65535		# pJobListTail=r4
	lis		r3,(Spi_aSpiJobState+8)@ha		# pJobListTail=r3
	e_add16i		r3,r3,(Spi_aSpiJobState+8)@l		# pJobListTail=r3 pJobListTail=r3
	rlwinm		r0,r29,4,0,27		# Job=r29
	se_slwi		r29,2		# Job=r29 Job=r29
	subf		r29,r29,r0		# Job=r29 Job=r29
.Llo45:
	sthx		r4,r3,r29		# pJobListTail=r3 pJobListTail=r4
# 
#         if (pHWUnitQueue->s8MaxScheduledPriority < s8Priority)
	.d2line		670
	lbz		r0,16(r31)		# pHWUnitQueue=r31
	extsb		r0,r0
	extsb		r4,r5		# pJobListTail=r4 s8Priority=r5
	se_cmp		r0,r4		# pJobListTail=r4
	bc		0,0,.L519	# ge
#         {
#             pHWUnitQueue->s8MaxScheduledPriority = s8Priority;
	.d2line		672
.Llo52:
	stb		r5,16(r31)		# pHWUnitQueue=r31 s8Priority=r5
.L519:
#         }
#         else
#         {
#             /* Do nothing */
#         }
#         SchM_Exit_Spi_SPI_EXCLUSIVE_AREA_03();
	.d2line		678
.Llo49:
	bl		SchM_Exit_Spi_SPI_EXCLUSIVE_AREA_03
.L513:
#     }
# }
	.d2line		680
	.d2epilogue_begin
.Llo40:
	lmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L786:
	.type		Spi_ScheduleJob,@function
	.size		Spi_ScheduleJob,.-Spi_ScheduleJob
# Number of nodes = 107

# Allocations for Spi_ScheduleJob
#	?a4		pHWUnitQueue
#	?a5		Job
#	?a6		pcJobConfig
#	?a7		$$124
#	?a8		$$123
#	?a9		$$122
#	?a10		s8Priority
#	?a11		pJobListTail
# FUNC(void, SPI_CODE) Spi_GetVersionInfo 
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         707,22
#$$ld
.L807:

#$$bf	Spi_GetVersionInfo,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,lr
	.globl		Spi_GetVersionInfo
	.d2_cfa_start __cie
Spi_GetVersionInfo:
.Llo53:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r4,r3		# versioninfo=r4 versioninfo=r3
	.d2prologue_end
#     (
#         P2VAR(Std_VersionInfoType, AUTOMATIC, SPI_APPL_DATA) versioninfo
#     )
# {      
# #if( SPI_DEV_ERROR_DETECT == STD_ON )
#     if(NULL_PTR == versioninfo)
#     {
#         /*
#         * @violates @ref Spi_c_REF_9 If a function returns error information,
#         *           then that error information shall be tested.
#         */
#         Det_ReportError((uint16)SPI_MODULE_ID,(uint8)0,SPI_GETVERSIONINFO_ID,SPI_E_PARAM_POINTER);
#     }
#     else
#     {
# #endif /* SPI_DEV_ERROR_DETECT == STD_ON */
#     versioninfo->vendorID = (uint16)SPI_VENDOR_ID;
	.d2line		724
.Llo54:
	diab.li		r3,43
.Llo55:
	sth		r3,0(r4)		# versioninfo=r4
#     versioninfo->moduleID = (uint8)SPI_MODULE_ID;
	.d2line		725
	diab.li		r3,83
	sth		r3,2(r4)		# versioninfo=r4
#     versioninfo->sw_major_version = (uint8)SPI_SW_MAJOR_VERSION;
	.d2line		726
	diab.li		r3,1
	stb		r3,4(r4)		# versioninfo=r4
#     versioninfo->sw_minor_version = (uint8)SPI_SW_MINOR_VERSION;
	.d2line		727
	diab.li		r3,0
	stb		r3,5(r4)		# versioninfo=r4
#     versioninfo->sw_patch_version = (uint8)SPI_SW_PATCH_VERSION;
	.d2line		728
	diab.li		r3,2
	stb		r3,6(r4)		# versioninfo=r4
# #if(SPI_DEV_ERROR_DETECT == STD_ON)
#     }
# #endif /* SPI_DEV_ERROR_DETECT == STD_ON */
# }
	.d2line		732
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo56:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L808:
	.type		Spi_GetVersionInfo,@function
	.size		Spi_GetVersionInfo,.-Spi_GetVersionInfo
# Number of nodes = 28

# Allocations for Spi_GetVersionInfo
#	?a4		versioninfo
# FUNC(void, SPI_CODE) Spi_Init
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         752,22
#$$ld
.L816:

#$$bf	Spi_Init,interprocedural,rasave,nostackparams
	.globl		Spi_Init
	.d2_cfa_start __cie
Spi_Init:
.Llo57:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
.Llo59:
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)		# u32Channel=r0
	.d2_cfa_offset    108,-1
	mr		r3,r3		# ConfigPtr=r3 ConfigPtr=r3
	.d2prologue_end
#     (
#         P2CONST(Spi_ConfigType, AUTOMATIC, SPI_APPL_CONST) ConfigPtr
#     )
# {
#     VAR(uint32, AUTOMATIC) u32Channel;
#     VAR(uint32, AUTOMATIC) u32Job;
#     VAR(uint32, AUTOMATIC) u32Sequence;
#     VAR(Spi_HWUnitType, AUTOMATIC) HWUnit;
# #if ((SPI_LEVEL_DELIVERED == LEVEL1) || (SPI_LEVEL_DELIVERED == LEVEL2))
#     VAR(sint8, AUTOMATIC) s8Priority;
# #endif
#     P2CONST(Spi_ChannelConfigType, AUTOMATIC, SPI_APPL_CONST) pcChannelConfig;
# #if ( (SPI_LEVEL_DELIVERED == LEVEL2) || (SPI_LEVEL_DELIVERED == LEVEL1) || \
#     ((SPI_LEVEL_DELIVERED == LEVEL0) && (SPI_SUPPORT_CONCURRENT_SYNC_TRANSMIT == STD_ON)))
#     P2CONST(Spi_SequenceConfigType, AUTOMATIC, SPI_APPL_CONST) pcSequenceConfig;
# #endif
# 
#  #if (SPI_CONFIG_VARIANT != SPI_VARIANT_PRECOMPILE)
#  #if (SPI_DEV_ERROR_DETECT == STD_ON)
#     /* If Development Error Detection is enabled, report error if ConfigPtr */
#     /* is passed as a NULL Pointer */
#     if (NULL_PTR != Spi_pcSpiConfigPtr)
#     {
#         /* Call Det_ReportError */
#         /*
#         * @violates @ref Spi_c_REF_9 If a function returns error information,
#         *           then that error information shall be tested.
#         */
#         Det_ReportError((uint16) SPI_MODULE_ID,(uint8) 0,SPI_INIT_ID,SPI_E_ALREADY_INITIALIZED);
#     }
#     else if (NULL_PTR == ConfigPtr)
#     {
#         /* Call Det_ReportError */
#         /*
#         * @violates @ref Spi_c_REF_9 If a function returns error information,
#         *           then that error information shall be tested.
#         */
#         Det_ReportError((uint16) SPI_MODULE_ID,(uint8) 0,SPI_INIT_ID,SPI_E_UNINIT);
#     }
#     else
#     {
# #endif
#     /* These defines use for fix compiler warning in the case that the */
#     /* right operand is higher */
#     u32Channel  = (uint32)(ConfigPtr->Spi_Max_Channel);
	.d2line		797
	lbz		r0,2(r3)		# u32Channel=r0 ConfigPtr=r3
	mr		r0,r0		# u32Channel=r0 u32Channel=r0
#     u32Job      = (uint32)(ConfigPtr->Spi_Max_Job);
	.d2line		798
	lhz		r5,4(r3)		# ConfigPtr=r3
.Llo78:
	mr		r5,r5		# u32Job=r5 u32Job=r5
#     u32Sequence = (uint32)(ConfigPtr->Spi_Max_Sequence);
	.d2line		799
	lbz		r4,6(r3)		# ConfigPtr=r3
.Llo91:
	mr		r4,r4		# u32Sequence=r4 u32Sequence=r4
# 
#     if ((u32Channel >= SPI_MAX_CHANNEL) || (u32Job >= SPI_MAX_JOB) || (u32Sequence >= SPI_MAX_SEQUENCE))
	.d2line		801
	se_cmpli	r0,6		# u32Channel=r0
	bc		0,0,.L526	# ge
.Llo60:
	se_cmpli	r5,6		# u32Job=r5
	bc		0,0,.L526	# ge
.Llo79:
	se_cmpli	r4,6		# u32Sequence=r4
	bc		0,0,.L526	# ge
#     {
#         /* configuration sizes must be checked for
#            Post Build & Link Time configurations */
# #if (SPI_DEV_ERROR_DETECT == STD_ON)
#         /* Call Det_ReportError */
#         /*
#         * @violates @ref Spi_c_REF_9 If a function returns error information,
#         *           then that error information shall be tested.
#         */
#         Det_ReportError((uint16) SPI_MODULE_ID,(uint8) 0,SPI_INIT_ID,SPI_E_CONFIG_OUT_OF_RANGE);
# #endif
#     }
#     else
#     {
#  #else /* (SPI_CONFIG_VARIANT == SPI_VARIANT_PRECOMPILE) */
#         if (NULL_PTR != Spi_pcSpiConfigPtr)
#         {
# 
# #if (SPI_DEV_ERROR_DETECT == STD_ON)
#             /* Call Det_ReportError */
#             /*
#             * @violates @ref Spi_c_REF_9 If a function returns error information,
#             *           then that error information shall be tested.
#             */
#             Det_ReportError((uint16) SPI_MODULE_ID,(uint8) 0,SPI_INIT_ID,SPI_E_ALREADY_INITIALIZED);
# #endif
#         }
#         else if (NULL_PTR == ConfigPtr)
#         {
#             Spi_pcSpiConfigPtr = &SpiDriverConfig_PC;
#         }
#         else
# #endif
#          {
#             Spi_pcSpiConfigPtr = ConfigPtr;
	.d2line		836
.Llo92:
	lis		r4,Spi_pcSpiConfigPtr@ha		# u32Sequence=r4
.Llo93:
	e_add16i		r4,r4,Spi_pcSpiConfigPtr@l		# u32Sequence=r4 u32Sequence=r4
	stw		r3,0(r4)		# u32Sequence=r4 ConfigPtr=r3
#         }
#         /* initialize buffer pointers to zero */
# 
#         for (u32Channel = 0u;
	.d2line		840
	diab.li		r3,0		# u32Channel=r3
.L529:
.Llo58:
	lis		r4,Spi_pcSpiConfigPtr@ha		# u32Sequence=r4
.Llo94:
	lwz		r4,Spi_pcSpiConfigPtr@l(r4)		# u32Sequence=r4 u32Sequence=r4
	lbz		r0,2(r4)		# u32Channel=r0 u32Sequence=r4
	se_cmpl		r0,r3		# u32Channel=r0 u32Channel=r3
	bc		1,0,.L531	# lt
#             u32Channel <= (uint32)(Spi_pcSpiConfigPtr->Spi_Max_Channel);
#             u32Channel++)
#         {
#             pcChannelConfig = &(*Spi_pcSpiConfigPtr->pcChannelConfig)[u32Channel];
	.d2line		844
.Llo95:
	lis		r4,Spi_pcSpiConfigPtr@ha		# u32Sequence=r4
.Llo96:
	lwz		r4,Spi_pcSpiConfigPtr@l(r4)		# u32Sequence=r4 u32Sequence=r4
	lwz		r4,8(r4)		# u32Sequence=r4 u32Sequence=r4
	rlwinm		r5,r3,4,0,27		# u32Job=r5 u32Channel=r3
.Llo80:
	se_add		r4,r5		# u32Sequence=r4 u32Sequence=r4 u32Job=r5
.Llo97:
	mr		r4,r4		# pcChannelConfig=r4 pcChannelConfig=r4
#             /* Check if configured buffers are External (EB) */
# 
#             if (EB == pcChannelConfig->BufferType)
	.d2line		847
	lwz		r0,0(r4)		# u32Channel=r0 pcChannelConfig=r4
	se_cmpi		r0,1		# u32Channel=r0
	bc		0,2,.L532	# ne
#             {
#                 /* Initialize all buffers */
#                 pcChannelConfig->pcBufferDescriptor->pBufferTX = NULL_PTR;
	.d2line		850
.Llo81:
	diab.li		r0,0		# u32Channel=r0
	lwz		r5,8(r4)		# u32Job=r5 pcChannelConfig=r4
.Llo82:
	stw		r0,0(r5)		# u32Job=r5 u32Channel=r0
#                 pcChannelConfig->pcBufferDescriptor->pBufferRX = NULL_PTR;
	.d2line		851
	lwz		r4,8(r4)		# pcChannelConfig=r4 pcChannelConfig=r4
	stw		r0,4(r4)		# pcChannelConfig=r4 u32Channel=r0
# 
#                 /* Channel length is zero for unconfigured external buffers */
#                 Spi_aSpiChannelState[u32Channel].Length = (Spi_NumberOfDataType) 0;
	.d2line		854
	lis		r4,(Spi_aSpiChannelState+2)@ha		# pcChannelConfig=r4
	e_add16i		r4,r4,(Spi_aSpiChannelState+2)@l		# pcChannelConfig=r4 pcChannelConfig=r4
	rlwinm		r5,r3,2,0,29		# u32Job=r5 u32Channel=r3
.Llo83:
	sthx		r0,r4,r5		# pcChannelConfig=r4 u32Channel=r0
	b		.L533
.L532:
#             }
#             else
#             {
#                 /* Setup channel length according to configuration */
#                 Spi_aSpiChannelState[u32Channel].Length = pcChannelConfig->Length;
	.d2line		859
	lhz		r0,6(r4)		# u32Channel=r0 pcChannelConfig=r4
	lis		r4,(Spi_aSpiChannelState+2)@ha		# pcChannelConfig=r4
	e_add16i		r4,r4,(Spi_aSpiChannelState+2)@l		# pcChannelConfig=r4 pcChannelConfig=r4
	rlwinm		r5,r3,2,0,29		# u32Job=r5 u32Channel=r3
	sthx		r0,r4,r5		# pcChannelConfig=r4 u32Channel=r0
.L533:
#             }
#             Spi_aSpiChannelState[u32Channel].u8Flags = (VAR(uint8, AUTOMATIC))SPI_CHANNEL_FLAG_TX_DEFAULT_U8;
	.d2line		861
.Llo112:
	diab.li		r0,1		# u32Channel=r0
	lis		r4,Spi_aSpiChannelState@ha		# pcChannelConfig=r4
.Llo113:
	e_add16i		r4,r4,Spi_aSpiChannelState@l		# pcChannelConfig=r4 pcChannelConfig=r4
	rlwinm		r5,r3,2,0,29		# u32Job=r5 u32Channel=r3
	stbx		r0,r4,r5		# pcChannelConfig=r4 u32Channel=r0
#         }
	.d2line		862
	diab.addi		r5,r3,1		# u32Job=r5 u32Channel=r3
	se_addi		r3,1		# u32Channel=r3 u32Channel=r3
	b		.L529
.L531:
# 
#         /* initialize job results */
#         for (u32Job = 0u;
	.d2line		865
.Llo61:
	diab.li		r3,0		# u32Job=r3
.L534:
.Llo84:
	lis		r4,Spi_pcSpiConfigPtr@ha		# u32Sequence=r4
.Llo98:
	lwz		r4,Spi_pcSpiConfigPtr@l(r4)		# u32Sequence=r4 u32Sequence=r4
	lhz		r0,4(r4)		# u32Channel=r0 u32Sequence=r4
.Llo62:
	se_cmpl		r0,r3		# u32Channel=r0 u32Job=r3
	bc		1,0,.L536	# lt
#             u32Job <= (uint32)( Spi_pcSpiConfigPtr->Spi_Max_Job);
#             u32Job++)
#         {
#             Spi_aSpiJobState[u32Job].Result = SPI_JOB_OK;
	.d2line		869
.Llo63:
	diab.li		r0,0		# u32Channel=r0
.Llo64:
	lis		r4,Spi_aSpiJobState@ha		# u32Sequence=r4
.Llo99:
	e_add16i		r4,r4,Spi_aSpiJobState@l		# u32Sequence=r4 u32Sequence=r4
	e_mulli		r5,r3,12		# u32Job=r5 u32Job=r3
	stwx		r0,r4,r5		# u32Sequence=r4 u32Channel=r0
# 
# #if ((SPI_LEVEL_DELIVERED == LEVEL1) || (SPI_LEVEL_DELIVERED == LEVEL2))
#             /* mark the job as unlocked / not linked to a pending async sequence */
#             Spi_aSpiJobState[u32Job].pAsyncCrtSequenceState = NULL_PTR;
	.d2line		873
	lis		r4,(Spi_aSpiJobState+4)@ha		# u32Sequence=r4
	e_add16i		r4,r4,(Spi_aSpiJobState+4)@l		# u32Sequence=r4 u32Sequence=r4
	stwx		r0,r4,r5		# u32Sequence=r4 u32Channel=r0
# #endif
#         }
	.d2line		875
	diab.addi		r5,r3,1		# u32Job=r5 u32Job=r3
	se_addi		r3,1		# u32Job=r3 u32Job=r3
	b		.L534
.L536:
# 
#         for (u32Sequence = 0u;
	.d2line		877
.Llo65:
	diab.li		r3,0		# u32Sequence=r3
.L537:
.Llo100:
	lis		r4,Spi_pcSpiConfigPtr@ha		# u32Sequence=r4
	lwz		r4,Spi_pcSpiConfigPtr@l(r4)		# u32Sequence=r4 u32Sequence=r4
	lbz		r0,6(r4)		# u32Channel=r0 u32Sequence=r4
.Llo66:
	se_cmpl		r0,r3		# u32Channel=r0 u32Sequence=r3
	bc		1,0,.L539	# lt
#             u32Sequence <= (uint32)(Spi_pcSpiConfigPtr->Spi_Max_Sequence);
#             u32Sequence++)
#         {
# #if ((SPI_LEVEL_DELIVERED == LEVEL1) || (SPI_LEVEL_DELIVERED == LEVEL2))
#             pcSequenceConfig = &(*Spi_pcSpiConfigPtr->pcSequenceConfig)[u32Sequence];
	.d2line		882
.Llo67:
	lis		r4,Spi_pcSpiConfigPtr@ha		# u32Sequence=r4
	lwz		r4,Spi_pcSpiConfigPtr@l(r4)		# u32Sequence=r4 u32Sequence=r4
	lwz		r0,16(r4)		# u32Channel=r0 u32Sequence=r4
.Llo68:
	rlwinm		r5,r3,4,0,27		# u32Job=r5 u32Sequence=r3
.Llo85:
	se_add		r0,r5		# u32Channel=r0 u32Channel=r0 u32Job=r5
.Llo69:
	mr		r0,r0		# pcSequenceConfig=r0 pcSequenceConfig=r0
#             Spi_aSpiSequenceState[u32Sequence].pcSequence = pcSequenceConfig;
	.d2line		883
	lis		r4,(Spi_aSpiSequenceState+4)@ha		# u32Sequence=r4
	e_add16i		r4,r4,(Spi_aSpiSequenceState+4)@l		# u32Sequence=r4 u32Sequence=r4
	stwux		r0,r4,r5		# u32Sequence=r4 pcSequenceConfig=r0
# #endif
# 
#             /* initialize sequence results */
#             Spi_aSpiSequenceState[u32Sequence].Result = SPI_SEQ_OK;
	.d2line		887
	diab.li		r0,0		# pcSequenceConfig=r0
	lis		r4,Spi_aSpiSequenceState@ha		# u32Sequence=r4
	e_add16i		r4,r4,Spi_aSpiSequenceState@l		# u32Sequence=r4 u32Sequence=r4
	stwx		r0,r4,r5		# u32Sequence=r4 pcSequenceConfig=r0
# 
# #if ( (SPI_LEVEL_DELIVERED == LEVEL2) || (SPI_LEVEL_DELIVERED == LEVEL0) )
# #if (SPI_SUPPORT_CONCURRENT_SYNC_TRANSMIT == STD_ON)
#             pcSequenceConfig = &(*Spi_pcSpiConfigPtr->pcSequenceConfig)[u32Sequence];
#             /* initialize the map of used HWUnits per sequence */
#             Spi_au32SpiSeqUsedHWUnits[u32Sequence] = (uint32)0;
# 
#             for (u32Job = 0u;(VAR(Spi_JobType, AUTOMATIC))u32Job < pcSequenceConfig->NumJobs; u32Job++)
#             {
#                 HWUnit = (*Spi_pcSpiConfigPtr->pcJobConfig)[(*pcSequenceConfig->pcJobIndexList)[u32Job]].HWUnit;
# 
#                 Spi_au32SpiSeqUsedHWUnits[u32Sequence] |=
#                     (uint32)((uint32)1 << ((*Spi_pcSpiConfigPtr->pcHWUnitConfig)[HWUnit].u8Offset));
#             }
# #else /* (SPI_SUPPORT_CONCURRENT_SYNC_TRANSMIT == STD_OFF) */
#             /* SPI135: Spi_SyncTransmit() must fail if an other sync transmission
#                    is ongoing.*/
#             /* mark all HW units as used by the sync transmission, in order to
#                 force the mutual exclusion of Spi_SyncTransmit() calls */
# 
#             Spi_au32SpiSeqUsedHWUnits[u32Sequence] = 0xFFFFFFFFU;
	.d2line		908
	diab.li		r0,-1		# pcSequenceConfig=r0
	lis		r4,Spi_au32SpiSeqUsedHWUnits@ha		# u32Sequence=r4
	e_add16i		r4,r4,Spi_au32SpiSeqUsedHWUnits@l		# u32Sequence=r4 u32Sequence=r4
	rlwinm		r5,r3,2,0,29		# u32Job=r5 u32Sequence=r3
.Llo86:
	stwx		r0,r4,r5		# u32Sequence=r4 pcSequenceConfig=r0
# #endif /* (SPI_SUPPORT_CONCURRENT_SYNC_TRANSMIT == STD_OFF) */
# #endif /* ( (SPI_LEVEL_DELIVERED == LEVEL2) || (SPI_LEVEL_DELIVERED == LEVEL0) ) */
# 
#         }
	.d2line		912
	diab.addi		r5,r3,1		# u32Job=r5 u32Sequence=r3
	se_addi		r3,1		# u32Sequence=r3 u32Sequence=r3
	b		.L537
.L539:
# 
#         /* De-initialize all physical HWUnits */
#         for (HWUnit = (VAR(Spi_HWUnitType, AUTOMATIC)) 0;
	.d2line		915
.Llo114:
	diab.li		r31,0		# HWUnit=r31
.L540:
.Llo101:
	rlwinm		r3,r31,0,24,31		# u32Sequence=r3 HWUnit=r31
.Llo102:
	se_cmpi		r3,5		# u32Sequence=r3
	bc		0,0,.L542	# ge
#             HWUnit < (VAR(Spi_HWUnitType, AUTOMATIC)) SPI_MAX_HWUNIT;
#             HWUnit++)
#         {        
#             Spi_Ipw_DeInit(HWUnit);
	.d2line		919
.Llo103:
	rlwinm		r3,r31,0,24,31		# u32Sequence=r3 HWUnit=r31
	bl		Spi_Dspi_DeInit
#         }
	.d2line		920
	diab.addi		r3,r31,1		# u32Sequence=r3 HWUnit=r31
	se_addi		r31,1		# HWUnit=r31 HWUnit=r31
	b		.L540
.L542:
#         
#         /* initialize all physical HWUnits */
#         for (HWUnit = (VAR(Spi_HWUnitType, AUTOMATIC)) 0;
	.d2line		923
.Llo108:
	diab.li		r31,0		# HWUnit=r31
.L543:
.Llo109:
	rlwinm		r0,r31,0,24,31		# u32Channel=r0 HWUnit=r31
.Llo70:
	se_cmpi		r0,5		# u32Channel=r0
	bc		0,0,.L526	# ge
#             HWUnit < (VAR(Spi_HWUnitType, AUTOMATIC)) SPI_MAX_HWUNIT;
#             HWUnit++)
#         {
#             Spi_Ipw_Init(HWUnit, &Spi_aSpiHWUnitQueueArray[HWUnit].Status);
	.d2line		927
.Llo71:
	rlwinm		r5,r31,0,24,31		# u32Job=r5 HWUnit=r31
.Llo87:
	lis		r4,(Spi_aSpiHWUnitQueueArray+20)@ha		# u32Sequence=r4
.Llo104:
	e_add16i		r4,r4,(Spi_aSpiHWUnitQueueArray+20)@l		# u32Sequence=r4 u32Sequence=r4
	rlwinm		r3,r5,5,0,26		# u32Sequence=r3 u32Job=r5
	rlwinm		r0,r5,3,0,28		# u32Channel=r0 u32Job=r5
.Llo72:
	subf		r0,r0,r3		# u32Channel=r0 u32Channel=r0 u32Sequence=r3
	se_add		r4,r0		# u32Sequence=r4 u32Sequence=r4 u32Channel=r0
.Llo105:
	mr		r3,r5		# u32Job=r3
	bl		Spi_Dspi_Init
#             
# #if (SPI_LEVEL_DELIVERED == LEVEL1)
#             /* handler uses interrupt mode only if LEVEL 1 is selected */
#             Spi_Ipw_IrqConfig(HWUnit, SPI_INTERRUPT_MODE);
# #endif            
# #if (SPI_LEVEL_DELIVERED == LEVEL2)
#             /* handler uses polling mode only if LEVEL 2 is selected */
#             Spi_Ipw_IrqConfig(HWUnit, SPI_POLLING_MODE);
	.d2line		935
.Llo73:
	rlwinm		r3,r31,0,24,31		# u32Job=r3 HWUnit=r31
	diab.li		r4,0		# u32Sequence=r4
	bl		Spi_Dspi_IrqConfig
# #endif
# 
# #if ((SPI_LEVEL_DELIVERED == LEVEL1) || (SPI_LEVEL_DELIVERED == LEVEL2))
#             /* initialize the Job lists => no scheduled job for the unit */
#             for (s8Priority = 0; s8Priority < SPI_JOB_PRIORITY_LEVELS_COUNT; s8Priority++)
	.d2line		940
	diab.li		r3,0		# s8Priority=r3
.L546:
.Llo110:
	extsb		r6,r3		# s8Priority=r3
	se_cmpi		r6,4
	bc		0,0,.L548	# ge
#             {
#                 Spi_aSpiHWUnitQueueArray[HWUnit].aScheduledJobsListHead[s8Priority] = SPI_JOB_NULL;
	.d2line		942
	rlwinm		r0,r31,0,24,31		# u32Channel=r0 HWUnit=r31
.Llo74:
	diab.li		r5,65535		# u32Job=r5
.Llo88:
	lis		r4,Spi_aSpiHWUnitQueueArray@ha		# u32Sequence=r4
.Llo106:
	e_add16i		r4,r4,Spi_aSpiHWUnitQueueArray@l		# u32Sequence=r4 u32Sequence=r4
	rlwinm		r6,r0,5,0,26		# u32Channel=r0
	se_slwi		r0,3		# u32Channel=r0 u32Channel=r0
	subf		r0,r0,r6		# u32Channel=r0 u32Channel=r0
	se_add		r4,r0		# u32Sequence=r4 u32Sequence=r4 u32Channel=r0
	extsb		r6,r3		# s8Priority=r3
	se_slwi		r6,1
	sthux		r5,r4,r6		# u32Sequence=r4 u32Job=r5
#                 Spi_aSpiHWUnitQueueArray[HWUnit].aScheduledJobsListTail[s8Priority] = SPI_JOB_NULL;
	.d2line		943
	lis		r4,(Spi_aSpiHWUnitQueueArray+8)@ha		# u32Sequence=r4
	e_add16i		r4,r4,(Spi_aSpiHWUnitQueueArray+8)@l		# u32Sequence=r4 u32Sequence=r4
	se_add		r4,r6		# u32Sequence=r4 u32Sequence=r4
	sthx		r5,r4,r0		# u32Sequence=r4 u32Job=r5
#             }
	.d2line		944
	diab.addi		r6,r3,1		# s8Priority=r3
	se_addi		r3,1		# s8Priority=r3 s8Priority=r3
	b		.L546
.L548:
# 
#             /* no scheduled job => s8MaxScheduledPriority is -1 */
#             Spi_aSpiHWUnitQueueArray[HWUnit].s8MaxScheduledPriority = -1;
	.d2line		947
.Llo75:
	rlwinm		r0,r31,0,24,31		# u32Channel=r0 HWUnit=r31
.Llo76:
	diab.li		r5,-1		# u32Job=r5
.Llo89:
	lis		r3,(Spi_aSpiHWUnitQueueArray+16)@ha		# s8Priority=r3
.Llo111:
	e_add16i		r3,r3,(Spi_aSpiHWUnitQueueArray+16)@l		# s8Priority=r3 s8Priority=r3
	rlwinm		r4,r0,5,0,26		# u32Sequence=r4 u32Channel=r0
.Llo107:
	se_slwi		r0,3		# u32Channel=r0 u32Channel=r0
	subf		r0,r0,r4		# u32Channel=r0 u32Channel=r0 u32Sequence=r4
.Llo77:
	stbx		r5,r3,r0		# s8Priority=r3 u32Job=r5
# #endif
#             Spi_aSpiHWUnitQueueArray[HWUnit].Status = SPI_IDLE;
	.d2line		949
	diab.li		r4,1		# u32Sequence=r4
	lis		r3,(Spi_aSpiHWUnitQueueArray+20)@ha		# s8Priority=r3
	e_add16i		r3,r3,(Spi_aSpiHWUnitQueueArray+20)@l		# s8Priority=r3 s8Priority=r3
	stwx		r4,r3,r0		# s8Priority=r3 u32Sequence=r4
#         }
	.d2line		950
	diab.addi		r0,r31,1		# u32Channel=r0 HWUnit=r31
	se_addi		r31,1		# HWUnit=r31 HWUnit=r31
	b		.L543
.L526:
# 
# #if ((SPI_LEVEL_DELIVERED != LEVEL1) && (SPI_OPTIMIZE_ONE_JOB_SEQUENCES == STD_ON))
#         /* cache information for sequences having only one job */
#         Spi_Ipw_PrepareCacheInformation();
# #endif
#  #if (SPI_CONFIG_VARIANT != SPI_VARIANT_PRECOMPILE)
#      }
# #if (SPI_DEV_ERROR_DETECT == STD_ON)    
#     }
# #endif
#  #endif
#  }
	.d2line		962
	.d2epilogue_begin
.Llo90:
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# u32Channel=r0
	mtspr		lr,r0		# u32Channel=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L817:
	.type		Spi_Init,@function
	.size		Spi_Init,.-Spi_Init
# Number of nodes = 309

# Allocations for Spi_Init
#	?a4		ConfigPtr
#	?a5		$$129
#	?a6		$$128
#	?a7		$$127
#	?a8		$$126
#	?a9		$$125
#	?a10		u32Channel
#	?a11		u32Job
#	?a12		u32Sequence
#	?a13		HWUnit
#	?a14		s8Priority
#	?a15		pcChannelConfig
#	?a16		pcSequenceConfig
# FUNC(Spi_StatusType, SPI_CODE) Spi_GetStatus(void)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1699,32
#$$ld
.L846:

#$$bf	Spi_GetStatus,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,cr0,lr
	.globl		Spi_GetStatus
	.d2_cfa_start __cie
Spi_GetStatus:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     VAR(Spi_StatusType, AUTOMATIC) StatusFlag = SPI_IDLE;
	.d2line		1701
	diab.li		r3,1		# StatusFlag=r3
#     VAR(Spi_HWUnitType, AUTOMATIC) HWUnit;
# 
#     if (NULL_PTR == Spi_pcSpiConfigPtr)
	.d2line		1704
.Llo115:
	lis		r4,Spi_pcSpiConfigPtr@ha
	lwz		r0,Spi_pcSpiConfigPtr@l(r4)
	se_cmpi		r0,0
	bc		0,2,.L624	# ne
#     {
# #if (SPI_DEV_ERROR_DETECT == STD_ON)
#         /* If Development Error Detection is enabled, report error if not */
#         /* initialized */
#         /* Call Det_ReportError */
#         /*
#         * @violates @ref Spi_c_REF_9 If a function returns error information,
#         *           then that error information shall be tested.
#         */
#         Det_ReportError((uint16) SPI_MODULE_ID,(uint8) 0,SPI_GETSTATUS_ID,SPI_E_UNINIT);
# #endif
#         StatusFlag = SPI_UNINIT;
	.d2line		1716
	diab.li		r3,0		# StatusFlag=r3
	b		.L625
.L624:
#     }
#     else
#     {
#         /* The SPI Handler Driver software module shall be busy when any
#            HWUnit is busy */
# 
#         if (0u != Spi_u32SpiBusySyncHWUnitsStatus)
	.d2line		1723
	lis		r4,Spi_u32SpiBusySyncHWUnitsStatus@ha
	lwz		r0,Spi_u32SpiBusySyncHWUnitsStatus@l(r4)
	se_cmpi		r0,0
	bc		1,2,.L626	# eq
#         {
#             /* a Spi_SyncTransmit() is pending */
#             StatusFlag = SPI_BUSY;
	.d2line		1726
	diab.li		r3,2		# StatusFlag=r3
	b		.L625
.L626:
#         }
#         else
#         {
#             /* check for busy HWUnit in async transmissions*/
#             /* Note: Checking for IsSync attribute for HWUnit is not really needed
#                  It is preferable to skip this check in order to have a more compact code
#             */
#             for (HWUnit = 0u; HWUnit < (Spi_HWUnitType)SPI_MAX_HWUNIT; HWUnit++)
	.d2line		1734
	diab.li		r4,0		# HWUnit=r4
.L628:
.Llo117:
	rlwinm		r0,r4,0,24,31		# HWUnit=r4
	se_cmpi		r0,5
	bc		0,0,.L625	# ge
#             {
#                 if (SPI_BUSY == Spi_aSpiHWUnitQueueArray[HWUnit].Status)
	.d2line		1736
	rlwinm		r0,r4,0,24,31		# HWUnit=r4
	lis		r5,(Spi_aSpiHWUnitQueueArray+20)@ha
	e_add16i		r5,r5,(Spi_aSpiHWUnitQueueArray+20)@l
	rlwinm		r6,r0,5,0,26
	se_slwi		r0,3
	subf		r0,r0,r6
	lwzx		r0,r5,r0
	se_cmpi		r0,2
	bc		0,2,.L631	# ne
#                 {
#                     StatusFlag = SPI_BUSY;
	.d2line		1738
	diab.li		r3,2		# StatusFlag=r3
	b		.L625
.L631:
#                     break;
#                 }
#                 else
#                 {
#                     /* Do nothing */
#                 }
#             }
	.d2line		1745
	diab.addi		r0,r4,1		# HWUnit=r4
	se_addi		r4,1		# HWUnit=r4 HWUnit=r4
	b		.L628
.L625:
#         }
#     }
#     return StatusFlag;
	.d2line		1748
.Llo118:
	mr		r3,r3		# StatusFlag=r3 StatusFlag=r3
# }
	.d2line		1749
	.d2epilogue_begin
.Llo116:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L847:
	.type		Spi_GetStatus,@function
	.size		Spi_GetStatus,.-Spi_GetStatus
# Number of nodes = 45

# Allocations for Spi_GetStatus
#	?a4		$$130
#	?a5		StatusFlag
#	?a6		HWUnit
# FUNC(Std_ReturnType, SPI_CODE) Spi_DeInit(void)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         986,32
#$$ld
.L855:

#$$bf	Spi_DeInit,interprocedural,rasave,nostackparams
	.globl		Spi_DeInit
	.d2_cfa_start __cie
Spi_DeInit:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     VAR(Std_ReturnType, AUTOMATIC) tempExit = (Std_ReturnType)E_OK;
	.d2line		988
	diab.li		r31,0		# tempExit=r31
#     VAR(Spi_HWUnitType, AUTOMATIC) HWUnit;
# 
# #if (SPI_DEV_ERROR_DETECT == STD_ON)
#     /* If Development Error Detection is enabled, report error if not */
#     /* initialized */
#     if (NULL_PTR == Spi_pcSpiConfigPtr)
#     {
#         /* Call Det_ReportError */                        
#         /*
#         * @violates @ref Spi_c_REF_9 If a function returns error information,
#         *           then that error information shall be tested.
#         */
#         Det_ReportError((uint16) SPI_MODULE_ID,(uint8) 0,SPI_DEINIT_ID,SPI_E_UNINIT);
#         tempExit = (Std_ReturnType)E_NOT_OK;
#     }
#     else
#     {
# #endif
#         /* Check if Spi Status is Busy */
#         if (SPI_BUSY == Spi_GetStatus())
	.d2line		1008
.Llo119:
	bl		Spi_GetStatus
	se_cmpi		r3,2
	bc		0,2,.L565	# ne
#         {
#             tempExit = (VAR(Std_ReturnType, AUTOMATIC)) E_NOT_OK;
	.d2line		1010
	diab.li		r31,1		# tempExit=r31
	b		.L566
.L565:
# #if (SPI_DEV_ERROR_DETECT == STD_ON)
#             /* Call Det_ReportError */
#             /*
#             * @violates @ref Spi_c_REF_9 If a function returns error information,
#             *           then that error information shall be tested.
#             */
#             Det_ReportError((uint16) SPI_MODULE_ID,(uint8) 0,SPI_DEINIT_ID,SPI_E_SEQ_PENDING);
# #endif
#         }
#         else
#         {
#             /* de-initialize all physical HWUnits */
#             for (HWUnit = (VAR(Spi_HWUnitType, AUTOMATIC)) 0;
	.d2line		1023
	diab.li		r30,0		# HWUnit=r30
.L567:
.Llo121:
	rlwinm		r0,r30,0,24,31		# HWUnit=r30
	se_cmpi		r0,5
	bc		0,0,.L569	# ge
#                  HWUnit < (VAR(Spi_HWUnitType, AUTOMATIC)) SPI_MAX_HWUNIT;
#                  HWUnit++)
#             {
#                 Spi_Ipw_DeInit(HWUnit);
	.d2line		1027
	rlwinm		r3,r30,0,24,31		# HWUnit=r30
	bl		Spi_Dspi_DeInit
# 
#                 Spi_aSpiHWUnitQueueArray[HWUnit].Status = SPI_UNINIT;
	.d2line		1029
	rlwinm		r0,r30,0,24,31		# HWUnit=r30
	diab.li		r5,0
	lis		r3,(Spi_aSpiHWUnitQueueArray+20)@ha
	e_add16i		r3,r3,(Spi_aSpiHWUnitQueueArray+20)@l
	rlwinm		r4,r0,5,0,26
	se_slwi		r0,3
	subf		r0,r0,r4
	stwx		r5,r3,r0
#             }
	.d2line		1030
	diab.addi		r0,r30,1		# HWUnit=r30
	se_addi		r30,1		# HWUnit=r30 HWUnit=r30
	b		.L567
.L569:
#             /* reset configuration pointer */
#             Spi_pcSpiConfigPtr = NULL_PTR;
	.d2line		1032
	diab.li		r0,0
	lis		r3,Spi_pcSpiConfigPtr@ha
	e_add16i		r3,r3,Spi_pcSpiConfigPtr@l
	stw		r0,0(r3)
.L566:
#         }
# 
# #if (SPI_DEV_ERROR_DETECT == STD_ON)
#     }
# #endif
# 
#     return tempExit;
	.d2line		1039
.Llo122:
	rlwinm		r3,r31,0,24,31		# tempExit=r31
# }
	.d2line		1040
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo120:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L856:
	.type		Spi_DeInit,@function
	.size		Spi_DeInit,.-Spi_DeInit
# Number of nodes = 43

# Allocations for Spi_DeInit
#	?a4		$$131
#	?a5		tempExit
#	?a6		HWUnit
# FUNC(Std_ReturnType, SPI_CODE) Spi_WriteIB
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1070,32
#$$ld
.L864:

#$$bf	Spi_WriteIB,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r30,r31,cr0,lr
	.globl		Spi_WriteIB
	.d2_cfa_start __cie
Spi_WriteIB:
.Llo123:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)		# Channel=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# Channel=r0 Channel=r3
.Llo124:
	mr		r31,r4		# DataBufferPtr=r31 DataBufferPtr=r4
	.d2prologue_end
#     (
#         VAR(Spi_ChannelType, AUTOMATIC) Channel,
#          P2CONST(Spi_DataType, AUTOMATIC, SPI_APPL_CONST) DataBufferPtr
#      )
# {
#     VAR(Std_ReturnType, AUTOMATIC) Status = (Std_ReturnType)E_OK;
	.d2line		1076
.Llo125:
	diab.li		r3,0		# Status=r3
#     VAR(uint16, AUTOMATIC) u16Index;
#     P2VAR(Spi_ChannelStateType, AUTOMATIC, SPI_APPL_DATA) pChannelState;
#     P2CONST(Spi_ChannelConfigType, AUTOMATIC, SPI_APPL_CONST) pcChannelConfig;
#      P2VAR(Spi_DataType, AUTOMATIC, SPI_APPL_DATA) pDataBufferDes;
#     P2CONST(Spi_DataType, AUTOMATIC, SPI_APPL_CONST) pcDataBufferSrc;
#  
# #if (SPI_DEV_ERROR_DETECT == STD_ON)
#     /* If Development Error Detection is enabled, report error if not */
#     /* initialized */
#     if (NULL_PTR == Spi_pcSpiConfigPtr)
#     {
#         /* Call Det_ReportError */
#         /*
#         * @violates @ref Spi_c_REF_9 If a function returns error information,
#         *           then that error information shall be tested.
#         */
#         Det_ReportError((uint16) SPI_MODULE_ID,(uint8) 0,SPI_WRITEIB_ID,SPI_E_UNINIT);
#         Status = (Std_ReturnType)E_NOT_OK;
#     }
# 
#     /* If Development Error Detection is enabled,
#        report error if invalid channel */
#     else if (Channel > (Spi_pcSpiConfigPtr->Spi_Max_Channel))
#     {
#         /* Call Det_ReportError */                        
#         /*
#         * @violates @ref Spi_c_REF_9 If a function returns error information,
#         *           then that error information shall be tested.
#         */
#         Det_ReportError((uint16) SPI_MODULE_ID,(uint8) 0,SPI_WRITEIB_ID,SPI_E_PARAM_CHANNEL);
#         Status = (Std_ReturnType)E_NOT_OK;
#     }
#     else
#     {
# #endif
#         pChannelState = &Spi_aSpiChannelState[Channel];
	.d2line		1112
.Llo140:
	lis		r5,Spi_aSpiChannelState@ha
	e_add16i		r5,r5,Spi_aSpiChannelState@l
	rlwinm		r4,r0,2,22,29		# Channel=r0
.Llo137:
	se_add		r4,r5
.Llo143:
	mr		r5,r4		# pChannelState=r5 pChannelState=r4
#         pcChannelConfig = &(*Spi_pcSpiConfigPtr->pcChannelConfig)[Channel];
	.d2line		1113
	lis		r4,Spi_pcSpiConfigPtr@ha
.Llo144:
	lwz		r4,Spi_pcSpiConfigPtr@l(r4)
	lwz		r6,8(r4)		# pcChannelConfig=r6
.Llo145:
	rlwinm		r0,r0,4,20,27		# Channel=r0 Channel=r0
	se_add		r0,r6		# Channel=r0 Channel=r0 pcChannelConfig=r6
.Llo126:
	mr		r6,r0		# pcChannelConfig=r6 pcChannelConfig=r0
# 
#         /* exit early if this is the wrong buffer type */
#         if (EB == pcChannelConfig->BufferType)
	.d2line		1116
.Llo146:
	lwz		r0,0(r6)		# Channel=r0 pcChannelConfig=r6
.Llo127:
	se_cmpi		r0,1		# Channel=r0
	bc		0,2,.L575	# ne
#         {
#             Status = (Std_ReturnType)E_NOT_OK;
	.d2line		1118
.Llo128:
	diab.li		r3,1		# Status=r3
	b		.L576
.L575:
#             /* Call Det_ReportError */
# #if (SPI_DEV_ERROR_DETECT == STD_ON)
#             /*
#             * @violates @ref Spi_c_REF_9 If a function returns error information,
#             *           then that error information shall be tested.
#             */
#             Det_ReportError((uint16) SPI_MODULE_ID,(uint8) 0,SPI_WRITEIB_ID,SPI_E_PARAM_CHANNEL);
# #endif
#         }
#         else
#         {
#             /* if DataBufferPtr is zero, then transmit default value */
#             if (NULL_PTR == DataBufferPtr)
	.d2line		1131
	se_cmpi		r31,0		# DataBufferPtr=r31
	bc		0,2,.L577	# ne
#             {
# 
#                 pChannelState->u8Flags |= SPI_CHANNEL_FLAG_TX_DEFAULT_U8;
	.d2line		1134
	lbz		r0,0(r5)		# Channel=r0 pChannelState=r5
.Llo129:
	.diab.bseti		r0,31		# Channel=r0
	stb		r0,0(r5)		# pChannelState=r5 Channel=r0
	b		.L576
.L577:
#             }
# 
#             /* otherwise, copy data from DataBufferPtr to IB */
#             else
#             {
#                 pDataBufferDes = pcChannelConfig->pcBufferDescriptor->pBufferTX;
	.d2line		1140
.Llo130:
	lwz		r4,8(r6)		# u16Index=r4 pcChannelConfig=r6
.Llo142:
	lwz		r7,0(r4)		# u16Index=r4
.Llo147:
	mr		r7,r7		# pDataBufferDes=r7 pDataBufferDes=r7
#                 pcDataBufferSrc = DataBufferPtr;
	.d2line		1141
.Llo138:
	mr		r31,r31		# pcDataBufferSrc=r31 pcDataBufferSrc=r31
#                 for (u16Index = 0u; u16Index < pcChannelConfig->Length; u16Index++)
	.d2line		1142
.Llo139:
	diab.li		r4,0		# u16Index=r4
.L579:
	rlwinm		r0,r4,0,16,31		# Channel=r0 u16Index=r4
.Llo131:
	lhz		r30,6(r6)		# pcChannelConfig=r6
	se_cmp		r0,r30		# Channel=r0
	bc		0,0,.L581	# ge
#                 {
#                     *pDataBufferDes=*pcDataBufferSrc;
	.d2line		1144
.Llo132:
	lbz		r0,0(r31)		# Channel=r0 pcDataBufferSrc=r31
.Llo133:
	stb		r0,0(r7)		# pDataBufferDes=r7 Channel=r0
#                     /*
#                     * @violates @ref Spi_c_REF_6 Array indexing shall be
#                     *       the only allowed form of pointer arithmetic.
#                     */
#                     pDataBufferDes++;
	.d2line		1149
	se_addi		r7,1		# pDataBufferDes=r7 pDataBufferDes=r7
#                     /*
#                     * @violates @ref Spi_c_REF_6 Array indexing shall be
#                     *       the only allowed form of pointer arithmetic.
#                     */
#                     pcDataBufferSrc++;
	.d2line		1154
	se_addi		r31,1		# pcDataBufferSrc=r31 pcDataBufferSrc=r31
#                 }
	.d2line		1155
	diab.addi		r0,r4,1		# Channel=r0 u16Index=r4
.Llo134:
	se_addi		r4,1		# u16Index=r4 u16Index=r4
	b		.L579
.L581:
#                 pChannelState->u8Flags = 
	.d2line		1156
	lbz		r0,0(r5)		# Channel=r0 pChannelState=r5
.Llo135:
	rlwinm		r0,r0,0,24,30		# Channel=r0 Channel=r0
	stb		r0,0(r5)		# pChannelState=r5 Channel=r0
.L576:
#                     (uint8)(pChannelState->u8Flags & ((uint8)(~SPI_CHANNEL_FLAG_TX_DEFAULT_U8)));
#             }
#         }
# #if (SPI_DEV_ERROR_DETECT == STD_ON)
#     }
# #endif
# 
#     /* Return status */
#     return Status;
	.d2line		1165
.Llo136:
	rlwinm		r3,r3,0,24,31		# Status=r3 Status=r3
# }
	.d2line		1166
	.d2epilogue_begin
.Llo141:
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# Channel=r0
	mtspr		lr,r0		# Channel=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L865:
	.type		Spi_WriteIB,@function
	.size		Spi_WriteIB,.-Spi_WriteIB
# Number of nodes = 81

# Allocations for Spi_WriteIB
#	?a4		Channel
#	?a5		DataBufferPtr
#	?a6		Status
#	?a7		u16Index
#	?a8		pChannelState
#	?a9		pcChannelConfig
#	?a10		pDataBufferDes
#	?a11		pcDataBufferSrc
# FUNC(Std_ReturnType, SPI_CODE) Spi_AsyncTransmit
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1194,32
#$$ld
.L891:

#$$bf	Spi_AsyncTransmit,interprocedural,rasave,nostackparams
	.globl		Spi_AsyncTransmit
	.d2_cfa_start __cie
Spi_AsyncTransmit:
.Llo148:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# Sequence=r31 Sequence=r3
	.d2prologue_end
#     (
#         VAR(Spi_SequenceType, AUTOMATIC) Sequence
#     )
# {
#     VAR(Std_ReturnType, AUTOMATIC) Status = (Std_ReturnType)E_OK;
	.d2line		1199
.Llo149:
	diab.li		r4,0		# Status=r4
#     VAR(Spi_JobType, AUTOMATIC) NumJobsInSequence;
#     VAR(Spi_JobType, AUTOMATIC) JobIndex;
#     VAR(Spi_JobType, AUTOMATIC) Job;
#     P2CONST(Spi_SequenceConfigType, AUTOMATIC, SPI_APPL_CONST) pcSequenceConfig;
#     P2VAR(Spi_SequenceStateType, AUTOMATIC, SPI_APPL_DATA) pSequenceState;
#     P2CONST(Spi_JobConfigType, AUTOMATIC, SPI_APPL_CONST) pcJobConfig;
#     P2CONST(Spi_JobType, AUTOMATIC, SPI_APPL_CONST) pcJob;
#     P2CONST(Spi_JobType, AUTOMATIC, SPI_APPL_CONST) pcJobCount;
# #if (SPI_DEV_ERROR_DETECT == STD_ON)
#     VAR(Spi_HWUnitType, AUTOMATIC) HWUnit;
# #if ( (SPI_CHANNEL_BUFFERS_ALLOWED == USAGE1) || (SPI_CHANNEL_BUFFERS_ALLOWED == USAGE2) )
#     VAR(Spi_ChannelType, AUTOMATIC) ChannelID;
#     VAR(Spi_ChannelType, AUTOMATIC) NumChannelsInJob;
#     VAR(Spi_ChannelType, AUTOMATIC) ChannelIndex;
# #endif
# #endif
# 
# #if (SPI_DEV_ERROR_DETECT == STD_ON)
#     /* If Development Error Detection is enabled, report error if not */
#     /* initialized */
#     if (NULL_PTR == Spi_pcSpiConfigPtr)
#     {
#         /* Call Det_ReportError */
#         /*
#         * @violates @ref Spi_c_REF_9 If a function returns error information,
#         *           then that error information shall be tested.
#         */
#         Det_ReportError((uint16) SPI_MODULE_ID,(uint8) 0,SPI_ASYNCTRANSMIT_ID,SPI_E_UNINIT);
#         Status = (Std_ReturnType)E_NOT_OK;
#     }
#     /* Sequence Valid Range */
#     else if (Sequence > (Spi_pcSpiConfigPtr->Spi_Max_Sequence))
#     {
#         /* Call Det_ReportError */
#         /*
#         * @violates @ref Spi_c_REF_9 If a function returns error information,
#         *           then that error information shall be tested.
#         */
#         Det_ReportError((uint16) SPI_MODULE_ID,(uint8) 0,SPI_ASYNCTRANSMIT_ID,SPI_E_PARAM_SEQ);
#         Status = (Std_ReturnType)E_NOT_OK;
#     }
#     else
#     {
# #endif /* (SPI_DEV_ERROR_DETECT == STD_OFF) */
#         pcSequenceConfig = &(*Spi_pcSpiConfigPtr->pcSequenceConfig)[Sequence];
	.d2line		1244
.Llo150:
	lis		r3,Spi_pcSpiConfigPtr@ha
	lwz		r3,Spi_pcSpiConfigPtr@l(r3)
	lwz		r28,16(r3)		# pcSequenceConfig=r28
	rlwinm		r3,r31,4,20,27		# Sequence=r31
	se_add		r3,r28		# pcSequenceConfig=r28
	mr		r28,r3		# pcSequenceConfig=r28 pcSequenceConfig=r3
#         /* Get the number of jobs in the sequence */
#         NumJobsInSequence = pcSequenceConfig->NumJobs;
	.d2line		1246
.Llo177:
	lhz		r29,0(r28)		# pcSequenceConfig=r28
.Llo157:
	mr		r29,r29		# NumJobsInSequence=r29 NumJobsInSequence=r29
# 
# #if (SPI_DEV_ERROR_DETECT == STD_ON)
#         /* check for empty sequence */
#         if (0u == NumJobsInSequence)
#         {
#             /* Call Det_ReportError */
#             /*
#             * @violates @ref Spi_c_REF_9 If a function returns error information,
#             *           then that error information shall be tested.
#             */
#             Det_ReportError((uint16) SPI_MODULE_ID,(uint8) 0,SPI_ASYNCTRANSMIT_ID,SPI_E_SEQ_EMPTY);
#             Status = (Std_ReturnType)E_NOT_OK;
#         }
#         else
#         {
#             /* Do nothing */
#         }
# #endif /* (SPI_DEV_ERROR_DETECT == STD_OFF) */
# 
#         JobIndex = 0u;
.L588:
#         while(JobIndex < NumJobsInSequence)
	.d2line		1267
.Llo178:
	rlwinm		r0,r4,0,16,31		# Job=r0 JobIndex=r4
.Llo165:
	rlwinm		r5,r29,0,16,31		# NumJobsInSequence=r29
	se_cmp		r0,r5		# Job=r0
	bc		0,0,.L589	# ge
#         {
#            /* Get the job id */
#             Job = (*pcSequenceConfig->pcJobIndexList)[JobIndex];
	.d2line		1270
.Llo166:
	lwz		r3,4(r28)		# pcSequenceConfig=r28
	rlwinm		r0,r4,1,15,30		# Job=r0 JobIndex=r4
.Llo167:
	lhzx		r0,r3,r0		# Job=r0
	mr		r0,r0		# Job=r0 Job=r0
# 
#             pcJobConfig = &(*Spi_pcSpiConfigPtr->pcJobConfig)[Job];
	.d2line		1272
	rlwinm		r0,r0,0,16,31		# Job=r0 Job=r0
	lis		r3,Spi_pcSpiConfigPtr@ha
	lwz		r3,Spi_pcSpiConfigPtr@l(r3)
	lwz		r3,12(r3)
	rlwinm		r5,r0,6,0,25		# Job=r0
	se_slwi		r0,4		# Job=r0 Job=r0
	subf		r0,r0,r5		# Job=r0 Job=r0
	se_add		r0,r3		# Job=r0 Job=r0
.Llo168:
	mr		r0,r0		# pcJobConfig=r0 pcJobConfig=r0
# 
# #if (SPI_DEV_ERROR_DETECT == STD_ON)
#             /* check for empty jobs */
#             if (0u == pcJobConfig->NumChannels)
#             {
#                 /* Call Det_ReportError */
#                 /*
#                 * @violates @ref Spi_c_REF_9 If a function returns error information,
#                 *           then that error information shall be tested.
#                 */
#                 Det_ReportError((uint16) SPI_MODULE_ID,(uint8) 0,SPI_ASYNCTRANSMIT_ID,SPI_E_JOB_EMPTY);
#                 Status = (Std_ReturnType)E_NOT_OK;
#             }
#             else
#             {
#                 /* Do nothing */
#             }
# 
#             /* Logical Spi HWUnit */
#             HWUnit = pcJobConfig->HWUnit;
# 
#             if (SPI_PHYUNIT_ASYNC_U32 != (*Spi_pcSpiConfigPtr->pcHWUnitConfig)[HWUnit].u32IsSync)
#             {
#                 /* HwUnit is not prearranged for dedicated Asynchronous
#                    transmission */
#                 /* Call Det_ReportError */
#                 /*
#                 * @violates @ref Spi_c_REF_9 If a function returns error information,
#                 *           then that error information shall be tested.
#                 */
#                 Det_ReportError((uint16) SPI_MODULE_ID,(uint8) 0,SPI_ASYNCTRANSMIT_ID,SPI_E_PARAM_UNIT);
#                 Status = (Std_ReturnType)E_NOT_OK;
#             }
#             else
#             {
#                 /* Do nothing */
#             }
# #if ( (SPI_CHANNEL_BUFFERS_ALLOWED == USAGE1) || (SPI_CHANNEL_BUFFERS_ALLOWED == USAGE2) )
#             if ((Std_ReturnType)E_OK == Status)
#             {
#                 /* Check if all EBs have been setup */
#                 NumChannelsInJob = pcJobConfig->NumChannels;
#                 for(ChannelIndex=(Spi_ChannelType)0;ChannelIndex < NumChannelsInJob; ChannelIndex++)
#                 {
#                     ChannelID = (*pcJobConfig->pcChannelIndexList)[ChannelIndex];
#                     if (EB == (*Spi_pcSpiConfigPtr->pcChannelConfig)[ChannelID].BufferType)
#                     {
#                         /* Length is 0 for unconfigured ext. buffers */
#                         if (0U == Spi_aSpiChannelState[ChannelID].Length)
#                         {
#                             /* An used EB not initialized  */
#                             /*
#                             * @violates @ref Spi_c_REF_9 If a function returns error information,
#                             *           then that error information shall be tested.
#                             */
#                             Det_ReportError((uint16) SPI_MODULE_ID,(uint8) 0,SPI_ASYNCTRANSMIT_ID,SPI_E_PARAM_EB_UNIT);
#                             Status = (Std_ReturnType)E_NOT_OK;
#                             break;
#                         }
#                         else
#                         {
#                             /* Do nothing */
#                         }
#                     }
#                     else
#                     {
#                         /* Do nothing */
#                     }
#                 }
#             }
#             else
#             {
#                 /* Do nothing */
#             }
# #endif /* ((SPI_CHANNEL_BUFFERS_ALLOWED == USAGE1) || (SPI_CHANNEL_BUFFERS_ALLOWED == USAGE2) ) */
#             if ((Std_ReturnType)E_OK != Status)
#             {
#                 /* break */
#                 break;
#             }
#             else
#             {
#                 /* Do nothing */
#             }
# #endif /* (SPI_DEV_ERROR_DETECT == STD_OFF) */
#             JobIndex++;
	.d2line		1358
.Llo180:
	diab.addi		r0,r4,1		# Job=r0 JobIndex=r4
	se_addi		r4,1		# JobIndex=r4 JobIndex=r4
	b		.L588
.L589:
#         }
# #if (SPI_DEV_ERROR_DETECT == STD_ON)
#         if ((Std_ReturnType)E_OK == Status)
#         {
# #endif /* (SPI_DEV_ERROR_DETECT == STD_OFF) */
# 
#             Status = Spi_LockJobs(Sequence, pcSequenceConfig);
	.d2line		1365
.Llo159:
	mr		r3,r31		# Sequence=r3 Sequence=r31
	mr		r4,r28		# pcSequenceConfig=r4 pcSequenceConfig=r28
	bl		Spi_LockJobs
.Llo154:
	mr		r30,r3		# Status=r30 Status=r3
#             if ((Std_ReturnType)E_OK == Status)
	.d2line		1366
	rlwinm		r3,r3,0,24,31		# Status=r3 Status=r3
	se_cmpi		r3,0		# Status=r3
	bc		0,2,.L590	# ne
#             {
#                 pSequenceState = &Spi_aSpiSequenceState[Sequence];
	.d2line		1368
.Llo151:
	lis		r3,Spi_aSpiSequenceState@ha		# Status=r3
.Llo155:
	e_add16i		r3,r3,Spi_aSpiSequenceState@l		# Status=r3 Status=r3
.Llo152:
	rlwinm		r31,r31,4,20,27		# Sequence=r31 Sequence=r31
	se_add		r3,r31		# Status=r3 Status=r3 Sequence=r31
.Llo179:
	mr		r3,r3		# pSequenceState=r3 pSequenceState=r3
#                 /* Mark sequence pending */
#                 pSequenceState->Result = SPI_SEQ_PENDING;
	.d2line		1370
	diab.li		r0,1		# Job=r0
.Llo169:
	stw		r0,0(r3)		# pSequenceState=r3 Job=r0
# 
#                 /* Initialize job related information */
#                 pSequenceState->RemainingJobs = pcSequenceConfig->NumJobs - 1u;
	.d2line		1373
	lhz		r0,0(r28)		# Job=r0 pcSequenceConfig=r28
	diab.li		r4,65535		# pcSequenceConfig=r4
	se_add		r0,r4		# Job=r0 Job=r0 pcSequenceConfig=r4
	sth		r0,12(r3)		# pSequenceState=r3 Job=r0
#                 pcJob = &(*pcSequenceConfig->pcJobIndexList)[0];
	.d2line		1374
	lwz		r4,4(r28)		# pcSequenceConfig=r4 pcSequenceConfig=r28
.Llo185:
	mr		r4,r4		# pcJob=r4 pcJob=r4
#                 pSequenceState->pcCurrentJobIndexPointer = pcJob;
	.d2line		1375
	stw		r4,8(r3)		# pSequenceState=r3 pcJob=r4
#                 for(JobIndex = 0u; JobIndex < NumJobsInSequence; JobIndex++)
	.d2line		1376
	diab.li		r3,0		# JobIndex=r3
.L591:
.Llo153:
	rlwinm		r0,r3,0,16,31		# Job=r0 JobIndex=r3
.Llo170:
	rlwinm		r5,r29,0,16,31		# pcJobCount=r5 NumJobsInSequence=r29
.Llo186:
	se_cmp		r0,r5		# Job=r0 pcJobCount=r5
	bc		0,0,.L593	# ge
#                 {
#                     pcJobCount = &(*pcSequenceConfig->pcJobIndexList)[JobIndex];
	.d2line		1378
.Llo171:
	lwz		r5,4(r28)		# pcJobCount=r5 pcSequenceConfig=r28
.Llo187:
	rlwinm		r0,r3,1,15,30		# Job=r0 JobIndex=r3
.Llo172:
	se_add		r0,r5		# Job=r0 Job=r0 pcJobCount=r5
.Llo173:
	mr		r5,r0		# pcJobCount=r5 pcJobCount=r0
#                     Spi_aSpiJobState[*pcJobCount].Result = SPI_JOB_QUEUED;
	.d2line		1379
.Llo188:
	lhz		r0,0(r5)		# Job=r0 pcJobCount=r5
.Llo174:
	diab.li		r6,3
	lis		r5,Spi_aSpiJobState@ha		# pcJobCount=r5
.Llo189:
	e_add16i		r5,r5,Spi_aSpiJobState@l		# pcJobCount=r5 pcJobCount=r5
	rlwinm		r7,r0,4,0,27		# Job=r0
	se_slwi		r0,2		# Job=r0 Job=r0
	subf		r0,r0,r7		# Job=r0 Job=r0
.Llo175:
	stwx		r6,r5,r0		# pcJobCount=r5
#                 }
	.d2line		1380
	diab.addi		r0,r3,1		# Job=r0 JobIndex=r3
	se_addi		r3,1		# JobIndex=r3 JobIndex=r3
	b		.L591
.L593:
#                 /* Schedule transmission of the first job */
#                 pcJobConfig = &(*Spi_pcSpiConfigPtr->pcJobConfig)[*pcJob];
	.d2line		1382
.Llo160:
	lhz		r4,0(r4)		# pcJob=r4 pcJob=r4
	lis		r3,Spi_pcSpiConfigPtr@ha		# JobIndex=r3
.Llo161:
	lwz		r3,Spi_pcSpiConfigPtr@l(r3)		# JobIndex=r3 JobIndex=r3
	lwz		r5,12(r3)		# pcJobConfig=r5 JobIndex=r3
.Llo181:
	rlwinm		r0,r4,6,0,25		# Job=r0 pcJob=r4
.Llo176:
	rlwinm		r3,r4,4,0,27		# JobIndex=r3 pcJob=r4
	subf		r3,r3,r0		# JobIndex=r3 JobIndex=r3 Job=r0
	se_add		r3,r5		# JobIndex=r3 JobIndex=r3 pcJobConfig=r5
.Llo162:
	mr		r5,r3		# pcJobConfig=r5 pcJobConfig=r3
#                 Spi_ScheduleJob(&Spi_aSpiHWUnitQueueArray[pcJobConfig->HWUnit],
	.d2line		1383
.Llo182:
	lbz		r0,24(r5)		# Job=r0 pcJobConfig=r5
.Llo183:
	lis		r3,Spi_aSpiHWUnitQueueArray@ha		# JobIndex=r3
.Llo163:
	e_add16i		r3,r3,Spi_aSpiHWUnitQueueArray@l		# JobIndex=r3 JobIndex=r3
	rlwinm		r6,r0,5,0,26		# Job=r0
	se_slwi		r0,3		# Job=r0 Job=r0
	subf		r0,r0,r6		# Job=r0 Job=r0
	se_add		r3,r0		# JobIndex=r3 JobIndex=r3 Job=r0
.Llo164:
	mr		r5,r5		# pcJobConfig=r5 pcJobConfig=r5
.Llo184:
	bl		Spi_ScheduleJob
.L590:
#                                 *pcJob, pcJobConfig);
#             }
# #if (SPI_DEV_ERROR_DETECT == STD_ON)
#             else
#             {
#                 /* Call Det_ReportError */
#                 /*
#                 * @violates @ref Spi_c_REF_9 If a function returns error information,
#                 *           then that error information shall be tested.
#                 */
#                 Det_ReportError((uint16) SPI_MODULE_ID,(uint8) 0,SPI_ASYNCTRANSMIT_ID,SPI_E_SEQ_PENDING);
#             }
#         }
#         else
#         {
#             /* Do nothing */
#         }
#     }
# #endif /* (SPI_DEV_ERROR_DETECT == STD_OFF) */
# 
#     return Status;
	.d2line		1404
.Llo158:
	rlwinm		r3,r30,0,24,31		# Status=r3 Status=r30
# }
	.d2line		1405
	.d2epilogue_begin
	lmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_restore_list	3,10
.Llo156:
	lwz		r0,36(r1)		# Job=r0
	mtspr		lr,r0		# Job=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L892:
	.type		Spi_AsyncTransmit,@function
	.size		Spi_AsyncTransmit,.-Spi_AsyncTransmit
# Number of nodes = 165

# Allocations for Spi_AsyncTransmit
#	?a4		Sequence
#	?a5		$$135
#	?a6		$$134
#	?a7		$$133
#	?a8		$$132
#	?a9		Status
#	?a10		NumJobsInSequence
#	?a11		JobIndex
#	?a12		Job
#	?a13		pcSequenceConfig
#	?a14		pSequenceState
#	?a15		pcJobConfig
#	?a16		pcJob
#	?a17		pcJobCount
# FUNC(Std_ReturnType, SPI_CODE) Spi_ReadIB
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1440,32
#$$ld
.L915:

#$$bf	Spi_ReadIB,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r31,cr0,lr
	.globl		Spi_ReadIB
	.d2_cfa_start __cie
Spi_ReadIB:
.Llo190:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)		# Channel=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# Channel=r0 Channel=r3
	mr		r7,r4		# DataBufferPointer=r7 DataBufferPointer=r4
	.d2prologue_end
#     (
#         VAR(Spi_ChannelType, AUTOMATIC) Channel,
#          P2VAR(Spi_DataType, AUTOMATIC, SPI_APPL_DATA) DataBufferPointer
#      )
# {
#     VAR(Std_ReturnType, AUTOMATIC) Status = (Std_ReturnType)E_OK;
	.d2line		1446
.Llo208:
	diab.li		r3,0		# Status=r3
#     VAR(Spi_NumberOfDataType, AUTOMATIC) Index;
#     P2CONST(Spi_ChannelConfigType, AUTOMATIC, SPI_APPL_CONST) pcChannelConfig;
#      P2VAR(Spi_DataType, AUTOMATIC, SPI_APPL_DATA) pDataBufferSrc;
#     P2VAR(Spi_DataType, AUTOMATIC, SPI_APPL_DATA) pDataBufferDes;
#  
# #if (SPI_DEV_ERROR_DETECT == STD_ON)
#     /* If Development Error Detection is enabled, report error if not */
#     /* initialized */
#     if (NULL_PTR == Spi_pcSpiConfigPtr)
#     {
#         /* Call Det_ReportError */
#         /*
#         * @violates @ref Spi_c_REF_9 If a function returns error information,
#         *           then that error information shall be tested.
#         */
#         Det_ReportError((uint16) SPI_MODULE_ID,(uint8) 0,SPI_READIB_ID,SPI_E_UNINIT);
#         Status = (Std_ReturnType)E_NOT_OK;
#     }
#     /* Channel valid range - Channels range is from 0 to Spi_Max_Channel */
#     else if (Channel > Spi_pcSpiConfigPtr->Spi_Max_Channel)
#     {
#         /* Call Det_ReportError */
#         /*
#         * @violates @ref Spi_c_REF_9 If a function returns error information,
#         *           then that error information shall be tested.
#         */
#         Det_ReportError((uint16) SPI_MODULE_ID,(uint8) 0,SPI_READIB_ID,SPI_E_PARAM_CHANNEL);
#         Status = (Std_ReturnType)E_NOT_OK;
#     }
#     else
#     {
# #endif
#         pcChannelConfig = &(*Spi_pcSpiConfigPtr->pcChannelConfig)[Channel];
	.d2line		1479
.Llo191:
	lis		r4,Spi_pcSpiConfigPtr@ha
.Llo200:
	lwz		r4,Spi_pcSpiConfigPtr@l(r4)
	lwz		r5,8(r4)		# pcChannelConfig=r5
.Llo192:
	rlwinm		r0,r0,4,20,27		# Channel=r0 Channel=r0
	se_add		r0,r5		# Channel=r0 Channel=r0 pcChannelConfig=r5
.Llo193:
	mr		r5,r0		# pcChannelConfig=r5 pcChannelConfig=r0
# 
#         /* exit early if this is the wrong buffer type or destination
#            is invalid */
#         if (EB == pcChannelConfig->BufferType)
	.d2line		1483
.Llo206:
	lwz		r0,0(r5)		# Channel=r0 pcChannelConfig=r5
.Llo194:
	se_cmpi		r0,1		# Channel=r0
	bc		0,2,.L600	# ne
#         {
#             /* Call Det_ReportError */
# #if (SPI_DEV_ERROR_DETECT == STD_ON)
#             /*
#             * @violates @ref Spi_c_REF_9 If a function returns error information,
#             *           then that error information shall be tested.
#             */
#             Det_ReportError((uint16) SPI_MODULE_ID,(uint8) 0,SPI_READIB_ID,SPI_E_PARAM_CHANNEL);
# #endif
#             Status = (Std_ReturnType)E_NOT_OK;
	.d2line		1493
.Llo195:
	diab.li		r3,1		# Status=r3
	b		.L601
.L600:
#         }
#         else if (NULL_PTR == DataBufferPointer)
	.d2line		1495
	se_cmpi		r7,0		# DataBufferPointer=r7
	bc		0,2,.L602	# ne
#         {
#             /* Call Det_ReportError */
# #if (SPI_DEV_ERROR_DETECT == STD_ON)
#             /*
#             * @violates @ref Spi_c_REF_9 If a function returns error information,
#             *           then that error information shall be tested.
#             */
#             Det_ReportError((uint16) SPI_MODULE_ID,(uint8) 0,SPI_READIB_ID,SPI_E_PARAM_CHANNEL);
# #endif
#             Status = (Std_ReturnType)E_NOT_OK;
	.d2line		1505
	diab.li		r3,1		# Status=r3
	b		.L601
.L602:
#         }
#         else
#         {
#             /* Copy Rx buffer to IB buffer */
#             pDataBufferSrc = pcChannelConfig->pcBufferDescriptor->pBufferRX;
	.d2line		1510
.Llo201:
	lwz		r4,8(r5)		# Index=r4 pcChannelConfig=r5
.Llo205:
	lwz		r6,4(r4)		# Index=r4
.Llo207:
	mr		r6,r6		# pDataBufferSrc=r6 pDataBufferSrc=r6
#             pDataBufferDes = DataBufferPointer;
	.d2line		1511
.Llo202:
	mr		r7,r7		# pDataBufferDes=r7 pDataBufferDes=r7
#             for (Index = 0u; Index < pcChannelConfig->Length; Index++)
	.d2line		1512
.Llo203:
	diab.li		r4,0		# Index=r4
.L604:
	rlwinm		r31,r4,0,16,31		# Index=r4
	lhz		r0,6(r5)		# Channel=r0 pcChannelConfig=r5
.Llo196:
	se_cmp		r31,r0		# Channel=r0
	bc		0,0,.L601	# ge
#             {
#                     *pDataBufferDes=*pDataBufferSrc;
	.d2line		1514
.Llo197:
	lbz		r0,0(r6)		# Channel=r0 pDataBufferSrc=r6
.Llo198:
	stb		r0,0(r7)		# pDataBufferDes=r7 Channel=r0
#                     /*
#                     * @violates @ref Spi_c_REF_6 Array indexing shall be
#                     *       the only allowed form of pointer arithmetic.
#                     */
#                     pDataBufferDes++;
	.d2line		1519
	se_addi		r7,1		# pDataBufferDes=r7 pDataBufferDes=r7
#                     /*
#                     * @violates @ref Spi_c_REF_6 Array indexing shall be
#                     *       the only allowed form of pointer arithmetic.
#                     */
#                     pDataBufferSrc++;
	.d2line		1524
	se_addi		r6,1		# pDataBufferSrc=r6 pDataBufferSrc=r6
#             }
	.d2line		1525
	diab.addi		r31,r4,1		# Index=r4
	se_addi		r4,1		# Index=r4 Index=r4
	b		.L604
.L601:
#         }
# 
# #if (SPI_DEV_ERROR_DETECT == STD_ON)
#     }
# #endif
# 
#     return Status;
	.d2line		1532
.Llo199:
	rlwinm		r3,r3,0,24,31		# Status=r3 Status=r3
# }
	.d2line		1533
	.d2epilogue_begin
.Llo204:
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# Channel=r0
	mtspr		lr,r0		# Channel=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L916:
	.type		Spi_ReadIB,@function
	.size		Spi_ReadIB,.-Spi_ReadIB
# Number of nodes = 66

# Allocations for Spi_ReadIB
#	?a4		Channel
#	?a5		DataBufferPointer
#	?a6		Status
#	?a7		Index
#	?a8		pcChannelConfig
#	?a9		pDataBufferSrc
#	?a10		pDataBufferDes
# FUNC(Std_ReturnType, SPI_CODE) Spi_SetupEB
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1567,32
#$$ld
.L933:

#$$bf	Spi_SetupEB,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r31,cr0,lr
	.globl		Spi_SetupEB
	.d2_cfa_start __cie
Spi_SetupEB:
.Llo209:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
.Llo225:
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)		# Status=r0
	.d2_cfa_offset    108,-1
	mr		r3,r3		# Channel=r3 Channel=r3
	mr		r4,r4		# SrcDataBufferPtr=r4 SrcDataBufferPtr=r4
	mr		r5,r5		# DesDataBufferPtr=r5 DesDataBufferPtr=r5
	mr		r0,r6		# Length=r0 Length=r6
	.d2prologue_end
#     (
#         VAR(Spi_ChannelType, AUTOMATIC) Channel,
#          P2CONST(Spi_DataType, AUTOMATIC, SPI_APPL_CONST) SrcDataBufferPtr,
#         P2VAR(Spi_DataType, AUTOMATIC, SPI_APPL_DATA) DesDataBufferPtr,
#          VAR(Spi_NumberOfDataType, AUTOMATIC) Length
#     )
# {
#     VAR(Std_ReturnType, AUTOMATIC) Status = (Std_ReturnType)E_OK;
	.d2line		1575
.Llo226:
	diab.li		r6,0		# Status=r6
#     P2VAR(Spi_ChannelStateType, AUTOMATIC, SPI_APPL_DATA) pChannelState;
#     P2CONST(Spi_ChannelConfigType, AUTOMATIC, SPI_APPL_CONST) pcChannelConfig;
#     
# #if (SPI_DEV_ERROR_DETECT == STD_ON)
#     /* If Development Error Detection is enabled, report error if not */
#     /* initialized */
#     if (NULL_PTR == Spi_pcSpiConfigPtr)
#     {
#         /* Call Det_ReportError */
#         /*
#         * @violates @ref Spi_c_REF_9 If a function returns error information,
#         *           then that error information shall be tested.
#         */
#         Det_ReportError((uint16) SPI_MODULE_ID,(uint8) 0,SPI_SETUPEB_ID,SPI_E_UNINIT);
#         Status = (Std_ReturnType)E_NOT_OK;
#     }
#     /* Channel ID - Valid channels range is from 0 to Spi_Max_Channel*/
#     else if (Channel > Spi_pcSpiConfigPtr->Spi_Max_Channel)
#     {
#         /* Call Det_ReportError */
#         /*
#         * @violates @ref Spi_c_REF_9 If a function returns error information,
#         *           then that error information shall be tested.
#         */
#         Det_ReportError((uint16) SPI_MODULE_ID,(uint8) 0,SPI_SETUPEB_ID,SPI_E_PARAM_CHANNEL);
#         Status = (Std_ReturnType)E_NOT_OK;
#     }
#     /* Length - Valid range */
#     else if ((Length > (*Spi_pcSpiConfigPtr->pcChannelConfig)[Channel].Length) || (0u == Length))
#     {
#         /* Call Det_ReportError */
#         /*
#         * @violates @ref Spi_c_REF_9 If a function returns error information,
#         *           then that error information shall be tested.
#         */
#         Det_ReportError((uint16) SPI_MODULE_ID,(uint8) 0,SPI_SETUPEB_ID,SPI_E_PARAM_LENGTH);
#         Status = (Std_ReturnType)E_NOT_OK;
#     }
#     else
#     {
# #endif
#         pChannelState = &Spi_aSpiChannelState[Channel];
	.d2line		1617
.Llo216:
	lis		r31,Spi_aSpiChannelState@ha		# pcChannelConfig=r31
	e_add16i		r31,r31,Spi_aSpiChannelState@l		# pcChannelConfig=r31 pcChannelConfig=r31
	rlwinm		r7,r3,2,22,29		# pcChannelConfig=r7 Channel=r3
	se_add		r7,r31		# pcChannelConfig=r7 pcChannelConfig=r7 pcChannelConfig=r31
.Llo228:
	mr		r31,r7		# pChannelState=r31 pChannelState=r7
#         pcChannelConfig = &(*Spi_pcSpiConfigPtr->pcChannelConfig)[Channel];
	.d2line		1618
.Llo230:
	lis		r7,Spi_pcSpiConfigPtr@ha		# pcChannelConfig=r7
.Llo229:
	lwz		r7,Spi_pcSpiConfigPtr@l(r7)		# pcChannelConfig=r7 pcChannelConfig=r7
	lwz		r7,8(r7)		# pcChannelConfig=r7 pcChannelConfig=r7
	rlwinm		r3,r3,4,20,27		# Channel=r3 Channel=r3
	se_add		r3,r7		# Channel=r3 Channel=r3 pcChannelConfig=r7
.Llo210:
	mr		r7,r3		# pcChannelConfig=r7 pcChannelConfig=r3
#         /* exit early if this is the wrong buffer type */
#         if (IB == pcChannelConfig->BufferType)
	.d2line		1620
.Llo231:
	lwz		r3,0(r7)		# Channel=r3 pcChannelConfig=r7
.Llo211:
	se_cmpi		r3,0		# Channel=r3
	bc		0,2,.L612	# ne
#         {
#             /* Call Det_ReportError */
# #if (SPI_DEV_ERROR_DETECT == STD_ON)
#             /*
#             * @violates @ref Spi_c_REF_9 If a function returns error information,
#             *           then that error information shall be tested.
#             */
#             Det_ReportError((uint16) SPI_MODULE_ID,(uint8) 0,SPI_SETUPEB_ID,SPI_E_PARAM_CHANNEL);
# #endif
#             Status = (Std_ReturnType)E_NOT_OK;
	.d2line		1630
.Llo212:
	diab.li		r6,1		# Status=r6
	b		.L613
.L612:
#         }
#         else
#         {
#             /* save the new parameters */
#              pcChannelConfig->pcBufferDescriptor->pBufferTX =
	.d2line		1635
	lwz		r3,8(r7)		# Channel=r3 pcChannelConfig=r7
.Llo213:
	stw		r4,0(r3)		# Channel=r3 SrcDataBufferPtr=r4
#              /*
#              * @violates @ref Spi_c_REF_3 A cast should not be performed between a pointer
#              *       to object type and a different pointer to object type.
#              */
#              /*
#              * @violates @ref Spi_c_REF_7 A cast shall not be performed that removes any const or volatile
#              * qualification from the type addressed by a pointer.
#              */
#                  (P2VAR(Spi_DataType, AUTOMATIC, SPI_APPL_DATA)) SrcDataBufferPtr;
#              pcChannelConfig->pcBufferDescriptor->pBufferRX = DesDataBufferPtr;
	.d2line		1645
	lwz		r3,8(r7)		# Channel=r3 pcChannelConfig=r7
	stw		r5,4(r3)		# Channel=r3 DesDataBufferPtr=r5
# 
#             pChannelState->Length = Length;
	.d2line		1647
	sth		r0,2(r31)		# pChannelState=r31 Length=r0
# 
#             /* if source data pointer is zero, transmit default value */
#             if (NULL_PTR == SrcDataBufferPtr)
	.d2line		1650
	se_cmpi		r4,0		# SrcDataBufferPtr=r4
	bc		0,2,.L614	# ne
#             {
#                 pChannelState->u8Flags |= SPI_CHANNEL_FLAG_TX_DEFAULT_U8;
	.d2line		1652
.Llo214:
	lbz		r0,0(r31)		# Length=r0 pChannelState=r31
.Llo217:
	.diab.bseti		r0,31		# Length=r0
	stb		r0,0(r31)		# pChannelState=r31 Length=r0
	b		.L615
.L614:
#             }
#             else
#             {
#                 pChannelState->u8Flags &= (uint8) (~SPI_CHANNEL_FLAG_TX_DEFAULT_U8);
	.d2line		1656
.Llo218:
	lbz		r0,0(r31)		# Length=r0 pChannelState=r31
.Llo219:
	rlwinm		r0,r0,0,24,30		# Length=r0 Length=r0
	stb		r0,0(r31)		# pChannelState=r31 Length=r0
.L615:
#             }
# 
#             /* if destination data pointer is zero, discard receiving data */
#             if (NULL_PTR == DesDataBufferPtr)
	.d2line		1660
.Llo220:
	se_cmpi		r5,0		# DesDataBufferPtr=r5
	bc		0,2,.L616	# ne
#             {
#                 pChannelState->u8Flags |= SPI_CHANNEL_FLAG_RX_DISCARD_U8;
	.d2line		1662
.Llo215:
	lbz		r0,0(r31)		# Length=r0 pChannelState=r31
.Llo221:
	.diab.bseti		r0,30		# Length=r0
	stb		r0,0(r31)		# pChannelState=r31 Length=r0
	b		.L613
.L616:
#             }
#             else
#             {
#                 pChannelState->u8Flags &= (uint8) (~SPI_CHANNEL_FLAG_RX_DISCARD_U8);
	.d2line		1666
.Llo222:
	lbz		r0,0(r31)		# Length=r0 pChannelState=r31
.Llo223:
	.diab.bclri		r0,30		# Length=r0
	stb		r0,0(r31)		# pChannelState=r31 Length=r0
.L613:
#             }
#         }
# #if (SPI_DEV_ERROR_DETECT == STD_ON)
#     }
# #endif
# 
#     return Status;
	.d2line		1673
.Llo224:
	rlwinm		r3,r6,0,24,31		# Channel=r3 Status=r6
# }
	.d2line		1674
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# Length=r0
	mtspr		lr,r0		# Length=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo227:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L934:
	.type		Spi_SetupEB,@function
	.size		Spi_SetupEB,.-Spi_SetupEB
# Number of nodes = 79

# Allocations for Spi_SetupEB
#	?a4		Channel
#	?a5		SrcDataBufferPtr
#	?a6		DesDataBufferPtr
#	?a7		Length
#	?a8		Status
#	?a9		pChannelState
#	?a10		pcChannelConfig
# FUNC(Spi_JobResultType, SPI_CODE) Spi_GetJobResult
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1775,35
#$$ld
.L948:

#$$bf	Spi_GetJobResult,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5
	.globl		Spi_GetJobResult
	.d2_cfa_start __cie
Spi_GetJobResult:
.Llo232:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# Job=r3 Job=r3
	.d2prologue_end
#     (
#         VAR(Spi_JobType, AUTOMATIC) Job
#     )
# {
#     VAR(Spi_JobResultType, AUTOMATIC) JobResult;
# 
# #if (SPI_DEV_ERROR_DETECT == STD_ON)
# 
#     /* If Development Error Detection is enabled, report error if not */
#     /* initialized */
#     if (NULL_PTR == Spi_pcSpiConfigPtr)
#     {
#         JobResult = SPI_JOB_FAILED;
#         /* Call Det_ReportError */
#         /*
#         * @violates @ref Spi_c_REF_9 If a function returns error information,
#         *           then that error information shall be tested.
#         */
#         Det_ReportError((uint16) SPI_MODULE_ID,(uint8) 0,SPI_GETJOBRESULT_ID,SPI_E_UNINIT);
#     }
#     /* Job Valid Range - from 0 to Spi_Max_Job*/
#     else if (Job > Spi_pcSpiConfigPtr->Spi_Max_Job)
#     {
#         JobResult = SPI_JOB_FAILED;
#         /* Call Det_ReportError */
#         /*
#         * @violates @ref Spi_c_REF_9 If a function returns error information,
#         *           then that error information shall be tested.
#         */
#         Det_ReportError((uint16) SPI_MODULE_ID,(uint8) 0,SPI_GETJOBRESULT_ID,SPI_E_PARAM_JOB);
#     }
#     else
#     {
# #endif
#         JobResult = Spi_aSpiJobState[Job].Result;
	.d2line		1810
	rlwinm		r3,r3,0,16,31		# Job=r3 Job=r3
	lis		r4,Spi_aSpiJobState@ha
	e_add16i		r4,r4,Spi_aSpiJobState@l
	rlwinm		r5,r3,4,0,27		# Job=r3
	se_slwi		r3,2		# Job=r3 Job=r3
	subf		r3,r3,r5		# Job=r3 Job=r3
	lwzx		r3,r4,r3		# Job=r3
.Llo233:
	mr		r3,r3		# JobResult=r3 JobResult=r3
# #if (SPI_DEV_ERROR_DETECT == STD_ON)
#     }
# #endif
# 
#     return JobResult;
	.d2line		1815
	mr		r3,r3		# JobResult=r3 JobResult=r3
# }
	.d2line		1816
	.d2epilogue_begin
.Llo234:
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L949:
	.type		Spi_GetJobResult,@function
	.size		Spi_GetJobResult,.-Spi_GetJobResult
# Number of nodes = 12

# Allocations for Spi_GetJobResult
#	?a4		Job
#	?a5		$$136
#	?a6		JobResult
# FUNC(Spi_SeqResultType, SPI_CODE) Spi_GetSequenceResult
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1842,35
#$$ld
.L958:

#$$bf	Spi_GetSequenceResult,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4
	.globl		Spi_GetSequenceResult
	.d2_cfa_start __cie
Spi_GetSequenceResult:
.Llo235:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# Sequence=r3 Sequence=r3
	.d2prologue_end
#     (
#         VAR(Spi_SequenceType, AUTOMATIC) Sequence
#     )
# {
#     VAR(Spi_SeqResultType, AUTOMATIC) SequenceResult;
# 
# #if (SPI_DEV_ERROR_DETECT == STD_ON)
#     /* If Development Error Detection is enabled, report error if not */
#     /* initialized */
#     if (NULL_PTR == Spi_pcSpiConfigPtr)
#     {
#         SequenceResult = SPI_SEQ_FAILED;
#         /* Call Det_ReportError */
#         /*
#         * @violates @ref Spi_c_REF_9 If a function returns error information,
#         *           then that error information shall be tested.
#         */
#         Det_ReportError((uint16) SPI_MODULE_ID,(uint8) 0,SPI_GETSEQUENCERESULT_ID,SPI_E_UNINIT);
#     }
#     /* Sequence Valid Range from 0 to Spi_Max_Sequence*/
#     else if (Sequence > Spi_pcSpiConfigPtr->Spi_Max_Sequence)
#     {
#         SequenceResult = SPI_SEQ_FAILED;
#         /* Call Det_ReportError */
#         /*
#         * @violates @ref Spi_c_REF_9 If a function returns error information,
#         *           then that error information shall be tested.
#         */
#         Det_ReportError((uint16) SPI_MODULE_ID,(uint8) 0,SPI_GETSEQUENCERESULT_ID,SPI_E_PARAM_SEQ);
#     }
#     else
#     {
# #endif
#         SequenceResult = Spi_aSpiSequenceState[Sequence].Result;
	.d2line		1876
	lis		r4,Spi_aSpiSequenceState@ha
	e_add16i		r4,r4,Spi_aSpiSequenceState@l
	rlwinm		r3,r3,4,20,27		# Sequence=r3 Sequence=r3
	lwzx		r3,r4,r3		# Sequence=r3
.Llo236:
	mr		r3,r3		# SequenceResult=r3 SequenceResult=r3
# 
# #if (SPI_DEV_ERROR_DETECT == STD_ON)
#     }
# #endif
# 
#     return SequenceResult;
	.d2line		1882
	mr		r3,r3		# SequenceResult=r3 SequenceResult=r3
# }
	.d2line		1883
	.d2epilogue_begin
.Llo237:
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L959:
	.type		Spi_GetSequenceResult,@function
	.size		Spi_GetSequenceResult,.-Spi_GetSequenceResult
# Number of nodes = 12

# Allocations for Spi_GetSequenceResult
#	?a4		Sequence
#	?a5		SequenceResult
# FUNC(Std_ReturnType, SPI_CODE) Spi_SyncTransmit
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1911,32
#$$ld
.L968:

#$$bf	Spi_SyncTransmit,interprocedural,rasave,nostackparams
	.globl		Spi_SyncTransmit
	.d2_cfa_start __cie
Spi_SyncTransmit:
.Llo238:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
.Llo250:
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)		# Status=r0
	.d2_cfa_offset    108,-1
	mr		r30,r3		# Sequence=r30 Sequence=r3
	.d2prologue_end
#     (
#         VAR(Spi_SequenceType, AUTOMATIC) Sequence
#     )
# {
#     P2VAR(Spi_SequenceStateType, AUTOMATIC, SPI_APPL_DATA) pSequenceState;
#     VAR(Std_ReturnType, AUTOMATIC) Status = (Std_ReturnType)E_OK;
	.d2line		1917
.Llo239:
	diab.li		r0,0		# Status=r0
#     VAR(uint32, AUTOMATIC) u32SpiSequenceUsedHWUnits;
# #if (SPI_OPTIMIZE_ONE_JOB_SEQUENCES == STD_ON)
#     P2VAR(Spi_HW_SequenceCacheAttrsType, AUTOMATIC, SPI_APPL_DATA) pSequenceCache;
# #endif
# #if ( (SPI_DEV_ERROR_DETECT == STD_ON) || (SPI_OPTIMIZE_ONE_JOB_SEQUENCES == STD_ON) )
#     VAR(Spi_JobType, AUTOMATIC) Job;
#     P2CONST(Spi_SequenceConfigType, AUTOMATIC, SPI_APPL_CONST) pcSequenceConfig;
#     P2CONST(Spi_JobConfigType, AUTOMATIC, SPI_APPL_CONST) pcJobConfig;
# #endif   
# #if (SPI_DEV_ERROR_DETECT == STD_ON)    
#     VAR(Spi_HWUnitType, AUTOMATIC) HWUnit;
#     VAR(uint32, AUTOMATIC) u32UnitIsSync;
#     VAR(Spi_JobType, AUTOMATIC) NumJobsInSequence;
#     VAR(Spi_JobType, AUTOMATIC) JobIndex;
# #if ( (SPI_CHANNEL_BUFFERS_ALLOWED == USAGE1) || (SPI_CHANNEL_BUFFERS_ALLOWED == USAGE2) )
#     VAR(Spi_ChannelType, AUTOMATIC)ChannelID;
#     VAR(Spi_ChannelType, AUTOMATIC) NumChannelsInJob;
#     VAR(Spi_ChannelType, AUTOMATIC)ChannelIndex;
# #endif
# #endif
# 
# #if (SPI_DEV_ERROR_DETECT == STD_ON)
#     /* If Development Error Detection is enabled, report error if not */
#     /* initialized */
#     if (NULL_PTR == Spi_pcSpiConfigPtr)
#     {
#         /* Call Det_ReportError */
#         /*
#         * @violates @ref Spi_c_REF_9 If a function returns error information,
#         *           then that error information shall be tested.
#         */
#         Det_ReportError((uint16) SPI_MODULE_ID,(uint8) 0,SPI_SYNCTRANSMIT_ID,SPI_E_UNINIT);
#         Status = (Std_ReturnType)E_NOT_OK;
#     }
#     /* Sequence Valid Range */
#     else if (Sequence > Spi_pcSpiConfigPtr->Spi_Max_Sequence)
#     {
#         /* Call Det_ReportError */
#         /*
#         * @violates @ref Spi_c_REF_9 If a function returns error information,
#         *           then that error information shall be tested.
#         */
#         Det_ReportError((uint16) SPI_MODULE_ID,(uint8) 0,SPI_SYNCTRANSMIT_ID,SPI_E_PARAM_SEQ);
#         Status = (Std_ReturnType)E_NOT_OK;
#     }
#     else
#     {
#         pcSequenceConfig = &(*Spi_pcSpiConfigPtr->pcSequenceConfig)[Sequence];
# 
#         /* Get the number of jobs in the sequence */
#         NumJobsInSequence = pcSequenceConfig->NumJobs;
# 
#         for (JobIndex = 0u; JobIndex < NumJobsInSequence; JobIndex++)
#         {
#             /* Get the job id */
#             Job = (*pcSequenceConfig->pcJobIndexList)[JobIndex];
#             pcJobConfig = &(*Spi_pcSpiConfigPtr->pcJobConfig)[Job];
#             /* Logical Spi HWUnit */
#             HWUnit = pcJobConfig->HWUnit;
#             u32UnitIsSync = (*Spi_pcSpiConfigPtr->pcHWUnitConfig)[HWUnit].u32IsSync;
#             if ((uint32)(SPI_PHYUNIT_ASYNC_U32) == (u32UnitIsSync))
#             {
#                 /* HwUnit is not prearranged for dedicated Synchronous
#                    transmission */
#                 /*
#                 * @violates @ref Spi_c_REF_9 If a function returns error information,
#                 *           then that error information shall be tested.
#                 */
#                 Det_ReportError((uint16) SPI_MODULE_ID,(uint8) 0,SPI_SYNCTRANSMIT_ID,SPI_E_PARAM_UNIT);
#                 Status = (Std_ReturnType)E_NOT_OK;
#             }
#             else
#             {
#                 /* Do nothing */
#             }
# #if ( (SPI_CHANNEL_BUFFERS_ALLOWED == USAGE1) || (SPI_CHANNEL_BUFFERS_ALLOWED == USAGE2) )
#             if ((Std_ReturnType)E_OK == Status)
#             {
#                 /* Check if all EBs have been setup */
#                 NumChannelsInJob = pcJobConfig->NumChannels;
#                 for(ChannelIndex=(Spi_ChannelType)0;ChannelIndex < NumChannelsInJob; ChannelIndex++)
#                 {
#                     ChannelID = (*pcJobConfig->pcChannelIndexList)[ChannelIndex];
#                     if (EB == (*Spi_pcSpiConfigPtr->pcChannelConfig)[ChannelID].BufferType)
#                     {
#                         /* Channel length is 0 for unconfigured ext. buffers */
#                         if (0U == Spi_aSpiChannelState[ChannelID].Length)
#                         {
#                             /* An used EB not initialized  */
#                             /*
#                             * @violates @ref Spi_c_REF_9 If a function returns error information,
#                             *           then that error information shall be tested.
#                             */
#                             Det_ReportError((uint16) SPI_MODULE_ID, (uint8) 0,SPI_SYNCTRANSMIT_ID,SPI_E_PARAM_EB_UNIT);
#                             Status = (Std_ReturnType)E_NOT_OK;
#                             break;
#                         }
#                         else
#                         {
#                             /* Do nothing */
#                         }
#                     }
#                     else
#                     {
#                         /* Do nothing */
#                     }
#                 }
#             }
#             else
#             {
#                 /* Do nothing */
#             }
# #endif /* ((SPI_CHANNEL_BUFFERS_ALLOWED == USAGE1) || (SPI_CHANNEL_BUFFERS_ALLOWED == USAGE2) ) */
#             if ((Std_ReturnType)E_NOT_OK == Status)
#             {
#                 /* break */
#                 break;
#             }
#             else
#             {
#                 /* Do nothing */
#             }           
#         }        
#         
#         if ((Std_ReturnType)E_NOT_OK != Status)
#         {
# #endif /* (SPI_DEV_ERROR_DETECT == STD_ON) */
#             u32SpiSequenceUsedHWUnits = Spi_au32SpiSeqUsedHWUnits[Sequence];
	.d2line		2045
.Llo240:
	lis		r3,Spi_au32SpiSeqUsedHWUnits@ha
	e_add16i		r3,r3,Spi_au32SpiSeqUsedHWUnits@l
	rlwinm		r0,r30,2,22,29		# Status=r0 Sequence=r30
	lwzx		r29,r3,r0		# u32SpiSequenceUsedHWUnits=r29
	mr		r29,r29		# u32SpiSequenceUsedHWUnits=r29 u32SpiSequenceUsedHWUnits=r29
# 
#             SchM_Enter_Spi_SPI_EXCLUSIVE_AREA_01();
	.d2line		2047
	bl		SchM_Enter_Spi_SPI_EXCLUSIVE_AREA_01
# 
#             /* check if there are HW units already running */
# 
#             if ( 0u != (Spi_u32SpiBusySyncHWUnitsStatus & u32SpiSequenceUsedHWUnits) )
	.d2line		2051
	lis		r3,Spi_u32SpiBusySyncHWUnitsStatus@ha
	lwz		r0,Spi_u32SpiBusySyncHWUnitsStatus@l(r3)		# Status=r0
.Llo251:
	and.		r0,r0,r29		# u32SpiSequenceUsedHWUnits=?a7
.Llo252:
	bc		1,2,.L642	# eq
#             {
#                 Status = (Std_ReturnType)E_NOT_OK;
	.d2line		2053
.Llo241:
	diab.li		r30,1		# Status=r30
# 
#                 SchM_Exit_Spi_SPI_EXCLUSIVE_AREA_01();
	.d2line		2055
.Llo253:
	bl		SchM_Exit_Spi_SPI_EXCLUSIVE_AREA_01
	b		.L643
.L642:
# 
# #if (SPI_DEV_ERROR_DETECT == STD_ON)
# 
#                 /* Call Det_ReportError */
#                 /*
#                 * @violates @ref Spi_c_REF_9 If a function returns error information,
#                 *           then that error information shall be tested.
#                 */
#                 Det_ReportError((uint16) SPI_MODULE_ID,(uint8) 0,SPI_SYNCTRANSMIT_ID,SPI_E_SEQ_IN_PROCESS);
# 
# #endif
#             }
#             else
#             {
#                 /* Set the sequence as pending */
#                 pSequenceState = &Spi_aSpiSequenceState[Sequence];
	.d2line		2071
.Llo242:
	lis		r31,Spi_aSpiSequenceState@ha		# pSequenceState=r31
.Llo244:
	e_add16i		r31,r31,Spi_aSpiSequenceState@l		# pSequenceState=r31 pSequenceState=r31
	rlwinm		r3,r30,4,20,27		# Sequence=r30
	se_add		r3,r31		# pSequenceState=r31
	mr		r31,r3		# pSequenceState=r31 pSequenceState=r3
#                 pSequenceState->Result = (Spi_SeqResultType) SPI_SEQ_PENDING;
	.d2line		2072
.Llo245:
	diab.li		r0,1		# Status=r0
.Llo246:
	stw		r0,0(r31)		# pSequenceState=r31 Status=r0
# 
#                 /* set used HW units as busy */
#                 Spi_u32SpiBusySyncHWUnitsStatus |= u32SpiSequenceUsedHWUnits;
	.d2line		2075
	lis		r3,Spi_u32SpiBusySyncHWUnitsStatus@ha
.Llo247:
	lwz		r0,Spi_u32SpiBusySyncHWUnitsStatus@l(r3)		# Status=r0
	or		r0,r0,r29		# Status=r0 Status=r0 u32SpiSequenceUsedHWUnits=r29
	e_add16i		r3,r3,Spi_u32SpiBusySyncHWUnitsStatus@l
	stw		r0,0(r3)		# Status=r0
# 
#                 SchM_Exit_Spi_SPI_EXCLUSIVE_AREA_01();
	.d2line		2077
	bl		SchM_Exit_Spi_SPI_EXCLUSIVE_AREA_01
# 
# #if (SPI_OPTIMIZE_ONE_JOB_SEQUENCES == STD_ON)
#                 pSequenceCache = Spi_Ipw_apOneJobSeqsOptimized[Sequence];
#                 if (NULL_PTR != pSequenceCache)
#                 {
#                     pcSequenceConfig = &(*Spi_pcSpiConfigPtr->pcSequenceConfig)[Sequence];
#                     /* Get the job id */
#                     Job = (*pcSequenceConfig->pcJobIndexList)[0];
#                     pcJobConfig = &(*Spi_pcSpiConfigPtr->pcJobConfig)[Job];
#                     /* start job notification to assert the non-cs pin,
#                             when non-cs pin is used as chipselect*/
#                     if (NULL_PTR != pcJobConfig->pfStartNotification)
#                     {
#                         pcJobConfig->pfStartNotification();
#                     }
#                     else
#                     {
#                         /* Do nothing */
#                     }
#                     Status = Spi_Ipw_SyncTransmit_Fast(pSequenceCache);
#                     /* end job notification to assert the non-cs pin,
#                     when non-cs pin is used as chipselect*/
#                     if (NULL_PTR != pcJobConfig->pfEndNotification)
#                     {
#                         pcJobConfig->pfEndNotification();
#                     }
#                     else
#                     {
#                         /* Do nothing */
#                     }
#                 }
#                 else
#                 {
#                     Status = Spi_Ipw_SyncTransmit(Sequence);
#                 }
# #else /* (SPI_OPTIMIZE_ONE_JOB_SEQUENCES != STD_ON) */
#                 Status = Spi_Ipw_SyncTransmit(Sequence);
	.d2line		2114
.Llo254:
	rlwinm		r3,r30,0,24,31		# Sequence=r30
	bl		Spi_Dspi_SyncTransmit
.Llo255:
	mr		r30,r3		# Status=r30 Status=r3
# #endif
# 
#                 SchM_Enter_Spi_SPI_EXCLUSIVE_AREA_02();
	.d2line		2117
.Llo243:
	bl		SchM_Enter_Spi_SPI_EXCLUSIVE_AREA_02
# 
#                 if ((Std_ReturnType)E_OK == Status)
	.d2line		2119
.Llo256:
	rlwinm		r3,r30,0,24,31		# Status=r30
	se_cmpi		r3,0
	bc		0,2,.L644	# ne
#                 {
#                     /* Set the sequence as OK */
#                     pSequenceState->Result = SPI_SEQ_OK;
	.d2line		2122
.Llo248:
	diab.li		r0,0		# Status=r0
	stw		r0,0(r31)		# pSequenceState=r31 Status=r0
	b		.L645
.L644:
#                 }
#                 else
#                 {
#                     /* Set the sequence as FAILED */
#                     pSequenceState->Result = SPI_SEQ_FAILED;
	.d2line		2127
	diab.li		r0,2		# Status=r0
	stw		r0,0(r31)		# pSequenceState=r31 Status=r0
.L645:
#                 }
# 
#                 /* set used HW units as idle */
#                 Spi_u32SpiBusySyncHWUnitsStatus &= (~u32SpiSequenceUsedHWUnits);
	.d2line		2131
.Llo249:
	lis		r3,Spi_u32SpiBusySyncHWUnitsStatus@ha
	lwz		r0,Spi_u32SpiBusySyncHWUnitsStatus@l(r3)		# Status=r0
	andc		r0,r0,r29		# Status=r0 Status=r0 u32SpiSequenceUsedHWUnits=r29
	e_add16i		r3,r3,Spi_u32SpiBusySyncHWUnitsStatus@l
	stw		r0,0(r3)		# Status=r0
# 
#                 SchM_Exit_Spi_SPI_EXCLUSIVE_AREA_02();
	.d2line		2133
	bl		SchM_Exit_Spi_SPI_EXCLUSIVE_AREA_02
.L643:
# 
#             }
# 
# #if (SPI_DEV_ERROR_DETECT == STD_ON)
#         }
#         else
#         {
#             /* Do nothing */
#         }
#     }
# #endif
# 
#     return Status;
	.d2line		2146
.Llo258:
	rlwinm		r3,r30,0,24,31		# Status=r30
# }
	.d2line		2147
	.d2epilogue_begin
	lmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	3,10
.Llo257:
	lwz		r0,36(r1)		# Status=r0
	mtspr		lr,r0		# Status=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L969:
	.type		Spi_SyncTransmit,@function
	.size		Spi_SyncTransmit,.-Spi_SyncTransmit
# Number of nodes = 74

# Allocations for Spi_SyncTransmit
#	?a4		Sequence
#	?a5		pSequenceState
#	?a6		Status
#	?a7		u32SpiSequenceUsedHWUnits
# FUNC(Spi_StatusType, SPI_CODE) Spi_GetHWUnitStatus
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         2177,32
#$$ld
.L980:

#$$bf	Spi_GetHWUnitStatus,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5
	.globl		Spi_GetHWUnitStatus
	.d2_cfa_start __cie
Spi_GetHWUnitStatus:
.Llo259:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# HWUnit=r3 HWUnit=r3
	.d2prologue_end
#     (
#         VAR(Spi_HWUnitType, AUTOMATIC) HWUnit
#     )
# {
#     VAR(Spi_StatusType, AUTOMATIC) Status;
# 
# #if (SPI_DEV_ERROR_DETECT == STD_ON)
#     /* If Development Error Detection is enabled, report error if not */
#     /* initialized */
#     if (Spi_pcSpiConfigPtr == NULL_PTR)
#     {
#         Status = SPI_UNINIT;
#         /* Call Det_ReportError */
#         /*
#         * @violates @ref Spi_c_REF_9 If a function returns error information,
#         *           then that error information shall be tested.
#         */
#         Det_ReportError((uint16) SPI_MODULE_ID,(uint8) 0,SPI_GETHWUNITSTATUS_ID,SPI_E_UNINIT);
# 
#     }
#     else if (HWUnit >= SPI_MAX_HWUNIT)
#     {
#         Status = SPI_UNINIT;
#         /* Call Det_ReportError */
#         /*
#         * @violates @ref Spi_c_REF_9 If a function returns error information,
#         *           then that error information shall be tested.
#         */
#         Det_ReportError((uint16) SPI_MODULE_ID,(uint8) 0,SPI_GETHWUNITSTATUS_ID,SPI_E_PARAM_UNIT);
#     }
#     else
#     {
# #endif
#         Status = Spi_aSpiHWUnitQueueArray[HWUnit].Status;
	.d2line		2211
	rlwinm		r3,r3,0,24,31		# HWUnit=r3 HWUnit=r3
	lis		r4,(Spi_aSpiHWUnitQueueArray+20)@ha
	e_add16i		r4,r4,(Spi_aSpiHWUnitQueueArray+20)@l
	rlwinm		r5,r3,5,0,26		# HWUnit=r3
	se_slwi		r3,3		# HWUnit=r3 HWUnit=r3
	subf		r3,r3,r5		# HWUnit=r3 HWUnit=r3
	lwzx		r3,r4,r3		# HWUnit=r3
.Llo260:
	mr		r3,r3		# Status=r3 Status=r3
# 
# #if (SPI_DEV_ERROR_DETECT == STD_ON)
#     }
# #endif
#     return Status;
	.d2line		2216
	mr		r3,r3		# Status=r3 Status=r3
# }
	.d2line		2217
	.d2epilogue_begin
.Llo261:
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L981:
	.type		Spi_GetHWUnitStatus,@function
	.size		Spi_GetHWUnitStatus,.-Spi_GetHWUnitStatus
# Number of nodes = 14

# Allocations for Spi_GetHWUnitStatus
#	?a4		HWUnit
#	?a5		$$137
#	?a6		Status
# FUNC(void, SPI_CODE) Spi_Cancel(VAR(Spi_SequenceType, AUTOMATIC) Sequence)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         2243,22
#$$ld
.L988:

#$$bf	Spi_Cancel,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,lr
	.globl		Spi_Cancel
	.d2_cfa_start __cie
Spi_Cancel:
.Llo262:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# Sequence=r3 Sequence=r3
	.d2prologue_end
# {
# #if (SPI_DEV_ERROR_DETECT == STD_ON)
#     /* If Development Error Detection is enabled, report error if not */
#     /* initialized */
#     if (Spi_pcSpiConfigPtr == NULL_PTR)
#     {
#         /* Call Det_ReportError */
#         /*
#         * @violates @ref Spi_c_REF_9 If a function returns error information,
#         *           then that error information shall be tested.
#         */
#         Det_ReportError((uint16) SPI_MODULE_ID,(uint8) 0,SPI_CANCEL_ID,SPI_E_UNINIT);
#     }
#     /* Sequence Valid Range  from 0 to Spi_Max_Sequence*/
#     else if (Sequence > Spi_pcSpiConfigPtr->Spi_Max_Sequence)
#     {
#         /* Call Det_ReportError */
#         /*
#         * @violates @ref Spi_c_REF_9 If a function returns error information,
#         *           then that error information shall be tested.
#         */
#         Det_ReportError((uint16) SPI_MODULE_ID,(uint8) 0,SPI_CANCEL_ID,SPI_E_PARAM_SEQ);
#     }
#     else
#     {
# #endif
#         /* Set sequence state to Cancel */
#         Spi_aSpiSequenceState[Sequence].Result = SPI_SEQ_CANCELLED;
	.d2line		2271
	diab.li		r4,3
	lis		r5,Spi_aSpiSequenceState@ha
	e_add16i		r5,r5,Spi_aSpiSequenceState@l
	rlwinm		r3,r3,4,20,27		# Sequence=r3 Sequence=r3
.Llo263:
	stwx		r4,r5,r3
# 
#         /* In Slave mode: Stop sequence immediately */
#         #if (SPI_SLAVE_SUPPORT == STD_ON)
#         Spi_Ipw_SlaveCancel(Sequence);
#         #endif
#         
# #if (SPI_DEV_ERROR_DETECT == STD_ON)
#     }
# #endif
# }
	.d2line		2281
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L989:
	.type		Spi_Cancel,@function
	.size		Spi_Cancel,.-Spi_Cancel
# Number of nodes = 10

# Allocations for Spi_Cancel
#	?a4		Sequence
# FUNC(Std_ReturnType, SPI_CODE) Spi_SetAsyncMode
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         2312,32
#$$ld
.L994:

#$$bf	Spi_SetAsyncMode,interprocedural,rasave,nostackparams
	.globl		Spi_SetAsyncMode
	.d2_cfa_start __cie
Spi_SetAsyncMode:
.Llo264:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# AsyncMode=r31 AsyncMode=r3
	.d2prologue_end
#     (
#         VAR(Spi_AsyncModeType, AUTOMATIC) AsyncMode
#     )
# {
#     VAR(Spi_HWUnitType, AUTOMATIC) HWUnit;
#     VAR(Std_ReturnType, AUTOMATIC) Status = (Std_ReturnType)E_OK;
	.d2line		2318
	diab.li		r29,0		# Status=r29
# 
# #if (SPI_DEV_ERROR_DETECT == STD_ON)
#     /* If Development Error Detection is enabled, report error if not */
#     /* initialized */
#     if (Spi_pcSpiConfigPtr == NULL_PTR)
#     {
#         /* Call Det_ReportError */
#         /*
#         * @violates @ref Spi_c_REF_9 If a function returns error information,
#         *           then that error information shall be tested.
#         */
#         Det_ReportError((uint16) SPI_MODULE_ID,(uint8) 0,SPI_SETASYNCMODE_ID,SPI_E_UNINIT);
#         Status = (Std_ReturnType)E_NOT_OK;
#     }
#     else
#     {
# #endif
#         if (SPI_BUSY == Spi_GetAsyncStatus())
	.d2line		2336
	bl		Spi_GetAsyncStatus
.Llo265:
	se_cmpi		r3,2
	bc		0,2,.L653	# ne
#         {
#             /* Call Det_ReportError */
# #if (SPI_DEV_ERROR_DETECT == STD_ON)
#             /*
#             * @violates @ref Spi_c_REF_9 If a function returns error information,
#             *           then that error information shall be tested.
#             */
#             Det_ReportError((uint16) SPI_MODULE_ID,(uint8) 0,SPI_SETASYNCMODE_ID,SPI_E_SEQ_PENDING);
# #endif
#             Status = (Std_ReturnType)E_NOT_OK;
	.d2line		2346
.Llo266:
	diab.li		r29,1		# Status=r29
	b		.L654
.L653:
#         }
#         else
#         {
#             /* set the async mode for each HW Unit;
#                activate/deactivate EOQ interrupts for Async HWUnits */
#             for (HWUnit = 0u; HWUnit < (Spi_HWUnitType) SPI_MAX_HWUNIT; HWUnit++)
	.d2line		2352
	diab.li		r30,0		# HWUnit=r30
.L655:
.Llo268:
	rlwinm		r3,r30,0,24,31		# HWUnit=r30
	se_cmpi		r3,5
	bc		0,0,.L654	# ge
#             {
#                 Spi_Ipw_IrqConfig(HWUnit, AsyncMode);
	.d2line		2354
	rlwinm		r3,r30,0,24,31		# HWUnit=r30
	mr		r4,r31		# AsyncMode=r4 AsyncMode=r31
	bl		Spi_Dspi_IrqConfig
#             }
	.d2line		2355
	diab.addi		r3,r30,1		# HWUnit=r30
	se_addi		r30,1		# HWUnit=r30 HWUnit=r30
	b		.L655
.L654:
#         }
# #if (SPI_DEV_ERROR_DETECT == STD_ON)
#     }
# #endif
# 
#     return Status;
	.d2line		2361
.Llo267:
	rlwinm		r3,r29,0,24,31		# Status=r29
# }
	.d2line		2362
	.d2epilogue_begin
	lmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	3,10
.Llo269:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L995:
	.type		Spi_SetAsyncMode,@function
	.size		Spi_SetAsyncMode,.-Spi_SetAsyncMode
# Number of nodes = 30

# Allocations for Spi_SetAsyncMode
#	?a4		AsyncMode
#	?a5		HWUnit
#	?a6		Status
# FUNC(Std_ReturnType, SPI_CODE) Spi_SetHWUnitAsyncMode
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         2395,32
#$$ld
.L1006:

#$$bf	Spi_SetHWUnitAsyncMode,interprocedural,rasave,nostackparams
	.globl		Spi_SetHWUnitAsyncMode
	.d2_cfa_start __cie
Spi_SetHWUnitAsyncMode:
.Llo270:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# HWUnit=r3 HWUnit=r3
	mr		r4,r4		# AsyncMode=r4 AsyncMode=r4
	.d2prologue_end
#     (
#         VAR(Spi_HWUnitType, AUTOMATIC) HWUnit,
#         VAR(Spi_AsyncModeType, AUTOMATIC) AsyncMode
#     )
# {
#     VAR(Std_ReturnType, AUTOMATIC) Status = (Std_ReturnType)E_OK;
	.d2line		2401
	diab.li		r31,0		# Status=r31
# 
# #if (SPI_DEV_ERROR_DETECT == STD_ON)
#     /* If Development Error Detection is enabled, report error if not */
#     /* initialized */
#     if (Spi_pcSpiConfigPtr == NULL_PTR)
#     {
#         /* Call Det_ReportError */
#         /*
#         * @violates @ref Spi_c_REF_9 If a function returns error information,
#         *           then that error information shall be tested.
#         */
#         Det_ReportError((uint16) SPI_MODULE_ID,(uint8) 0,SPI_SETHWUNITASYNCMODE_ID,SPI_E_UNINIT);
#         Status = (Std_ReturnType)E_NOT_OK;
#     }
#     else if (HWUnit >= SPI_MAX_HWUNIT)
#     {
#         /* Call Det_ReportError */
#         /*
#         * @violates @ref Spi_c_REF_9 If a function returns error information,
#         *           then that error information shall be tested.
#         */
#         Det_ReportError((uint16) SPI_MODULE_ID,(uint8) 0,SPI_SETHWUNITASYNCMODE_ID,SPI_E_PARAM_UNIT);
#         Status = (Std_ReturnType)E_NOT_OK;
#     }
#     else
#     {
# #endif
#         if (SPI_PHYUNIT_ASYNC_U32 != (*Spi_pcSpiConfigPtr->pcHWUnitConfig)[HWUnit].u32IsSync)
	.d2line		2429
	lis		r5,Spi_pcSpiConfigPtr@ha
	lwz		r5,Spi_pcSpiConfigPtr@l(r5)
	lwz		r5,24(r5)
	rlwinm		r0,r3,3,21,28		# HWUnit=r3
	se_add		r5,r0
	lwz		r0,4(r5)
	se_cmpi		r0,0
	bc		1,2,.L662	# eq
#         {
#             /* return E_NOT_OK if HWUnit is Sync */
# #if (SPI_DEV_ERROR_DETECT == STD_ON)
#             /* Call Det_ReportError */
#             /*
#             * @violates @ref Spi_c_REF_9 If a function returns error information,
#             *           then that error information shall be tested.
#             */
#             Det_ReportError((uint16) SPI_MODULE_ID,(uint8) 0,SPI_SETHWUNITASYNCMODE_ID,SPI_E_PARAM_UNIT);
# #endif
#             Status = (Std_ReturnType)E_NOT_OK;
	.d2line		2440
	diab.li		r31,1		# Status=r31
	b		.L663
.L662:
#         }
#         else if (SPI_BUSY == Spi_aSpiHWUnitQueueArray[HWUnit].Status)
	.d2line		2442
	rlwinm		r0,r3,0,24,31		# HWUnit=r3
	lis		r5,(Spi_aSpiHWUnitQueueArray+20)@ha
	e_add16i		r5,r5,(Spi_aSpiHWUnitQueueArray+20)@l
	rlwinm		r6,r0,5,0,26
	se_slwi		r0,3
	subf		r0,r0,r6
	lwzx		r0,r5,r0
	se_cmpi		r0,2
	bc		0,2,.L664	# ne
#         {
#         /* return E_NOT_OK if HWUnit is Async and Busy */
# #if (SPI_DEV_ERROR_DETECT == STD_ON)
#             /* Call Det_ReportError */
#             /*
#             * @violates @ref Spi_c_REF_9 If a function returns error information,
#             *           then that error information shall be tested.
#             */
#             Det_ReportError((uint16) SPI_MODULE_ID,(uint8) 0,SPI_SETHWUNITASYNCMODE_ID,SPI_E_SEQ_PENDING);
# #endif
#             Status = (Std_ReturnType)E_NOT_OK;
	.d2line		2453
	diab.li		r31,1		# Status=r31
	b		.L663
.L664:
#         }
#         else
#         {
#             /* set the async mode & activate/deactivate the interrupts for the HW Unit */
#             Spi_Ipw_IrqConfig(HWUnit, AsyncMode);
	.d2line		2458
.Llo272:
	rlwinm		r3,r3,0,24,31		# HWUnit=r3 HWUnit=r3
.Llo271:
	mr		r4,r4		# AsyncMode=r4 AsyncMode=r4
.Llo273:
	bl		Spi_Dspi_IrqConfig
.L663:
#         }
# #if (SPI_DEV_ERROR_DETECT == STD_ON)
#     }
# #endif
# 
#     return Status;
	.d2line		2464
	rlwinm		r3,r31,0,24,31		# HWUnit=r3 Status=r31
# }
	.d2line		2465
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo274:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L1007:
	.type		Spi_SetHWUnitAsyncMode,@function
	.size		Spi_SetHWUnitAsyncMode,.-Spi_SetHWUnitAsyncMode
# Number of nodes = 46

# Allocations for Spi_SetHWUnitAsyncMode
#	?a4		HWUnit
#	?a5		AsyncMode
#	?a6		$$138
#	?a7		Status
# FUNC(void, SPI_CODE) Spi_MainFunction_Handling(void)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         2484,22
#$$ld
.L1015:

#$$bf	Spi_MainFunction_Handling,interprocedural,rasave,nostackparams
	.globl		Spi_MainFunction_Handling
	.d2_cfa_start __cie
Spi_MainFunction_Handling:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     VAR(Spi_HWUnitType, AUTOMATIC) HWUnit;
# 
#     if (NULL_PTR != Spi_pcSpiConfigPtr)
	.d2line		2488
	lis		r3,Spi_pcSpiConfigPtr@ha
	lwz		r0,Spi_pcSpiConfigPtr@l(r3)
	se_cmpi		r0,0
	bc		1,2,.L669	# eq
#     {
#         for (HWUnit = 0u; HWUnit < (Spi_HWUnitType) SPI_MAX_HWUNIT; HWUnit++)
	.d2line		2490
	diab.li		r31,0		# HWUnit=r31
.L671:
.Llo275:
	rlwinm		r0,r31,0,24,31		# HWUnit=r31
	se_cmpi		r0,5
	bc		0,0,.L669	# ge
#         {
#             if (SPI_BUSY == Spi_aSpiHWUnitQueueArray[HWUnit].Status)
	.d2line		2492
	rlwinm		r0,r31,0,24,31		# HWUnit=r31
	lis		r3,(Spi_aSpiHWUnitQueueArray+20)@ha
	e_add16i		r3,r3,(Spi_aSpiHWUnitQueueArray+20)@l
	rlwinm		r4,r0,5,0,26
	se_slwi		r0,3
	subf		r0,r0,r4
	lwzx		r0,r3,r0
	se_cmpi		r0,2
	bc		0,2,.L675	# ne
#             {
#                 Spi_Ipw_IrqPoll(HWUnit);
	.d2line		2494
	rlwinm		r3,r31,0,24,31		# HWUnit=r31
	bl		Spi_Dspi_IrqPoll
.L675:
#             }
#             else
#             {
#                 /* Do nothing */
#             }
#         }
	.d2line		2500
	diab.addi		r0,r31,1		# HWUnit=r31
	se_addi		r31,1		# HWUnit=r31 HWUnit=r31
	b		.L671
.L669:
#     }
# }
	.d2line		2502
	.d2epilogue_begin
.Llo276:
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L1016:
	.type		Spi_MainFunction_Handling,@function
	.size		Spi_MainFunction_Handling,.-Spi_MainFunction_Handling
# Number of nodes = 30

# Allocations for Spi_MainFunction_Handling
#	?a4		$$139
#	?a5		HWUnit
# static FUNC(void, SPI_CODE) Spi_ScheduleNextJob
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         2517,29
#$$ld
.L1022:

#$$bf	Spi_ScheduleNextJob,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Spi_ScheduleNextJob:
.Llo277:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# pHWUnitQueue=r31 pHWUnitQueue=r3
	.d2prologue_end
#     (
#         P2VAR(Spi_HWUnitQueue, AUTOMATIC, SPI_APPL_DATA) pHWUnitQueue
#     )
# {
#     VAR(Spi_JobType, AUTOMATIC) Job;
#     P2VAR(Spi_JobType, AUTOMATIC, SPI_APPL_DATA) pJobListHead;
#     VAR(sint8, AUTOMATIC) s8Priority;
#     VAR(sint8, AUTOMATIC) s8MaxScheduledPriority = pHWUnitQueue->s8MaxScheduledPriority;
	.d2line		2525
	lbz		r29,16(r31)		# s8MaxScheduledPriority=r29 pHWUnitQueue=r31
	mr		r29,r29		# s8MaxScheduledPriority=r29 s8MaxScheduledPriority=r29
# 
#     SchM_Enter_Spi_SPI_EXCLUSIVE_AREA_04();
	.d2line		2527
	bl		SchM_Enter_Spi_SPI_EXCLUSIVE_AREA_04
#     if (0 > s8MaxScheduledPriority)
	.d2line		2528
.Llo278:
	extsb		r3,r29		# s8MaxScheduledPriority=r29
	se_cmpi		r3,0
	bc		0,0,.L680	# ge
#     {
#         /* no job waiting => mark the HWUnit as IDLE */
#         pHWUnitQueue->Status = SPI_IDLE;
	.d2line		2531
.Llo279:
	diab.li		r0,1
	stw		r0,20(r31)		# pHWUnitQueue=r31
#         SchM_Exit_Spi_SPI_EXCLUSIVE_AREA_04();
	.d2line		2532
	bl		SchM_Exit_Spi_SPI_EXCLUSIVE_AREA_04
	b		.L679
.L680:
#     }
#     else
#     {
#         /* a job is waiting => get the job ID from the highest priority queue */
#         pJobListHead = &pHWUnitQueue->aScheduledJobsListHead[s8MaxScheduledPriority];
	.d2line		2537
	extsb		r3,r29		# pJobListHead=r3 s8MaxScheduledPriority=r29
.Llo284:
	se_slwi		r3,1		# pJobListHead=r3 pJobListHead=r3
	se_add		r3,r31		# pJobListHead=r3 pJobListHead=r3 pHWUnitQueue=r31
	mr		r3,r3		# pJobListHead=r3 pJobListHead=r3
#         Job = *pJobListHead;
	.d2line		2538
	lhz		r30,0(r3)		# Job=r30 pJobListHead=r3
.Llo281:
	mr		r30,r30		# Job=r30 Job=r30
# 
#         /* set the new head of the list */
#         *pJobListHead = Spi_aSpiJobState[Job].AsyncNextJob;
	.d2line		2541
	rlwinm		r0,r30,0,16,31		# Job=r30
	lis		r4,(Spi_aSpiJobState+8)@ha
	e_add16i		r4,r4,(Spi_aSpiJobState+8)@l
	rlwinm		r5,r0,4,0,27
	se_slwi		r0,2
	subf		r0,r0,r5
	lhzx		r0,r4,r0
	sth		r0,0(r3)		# pJobListHead=r3
# 
#         /* if the list is empty, set the tail accordingly and adjust the
#            scheduled priority level */
#         if (SPI_JOB_NULL == *pJobListHead)
	.d2line		2545
	cmpli		0,0,r0,65535
	bc		0,2,.L689	# ne
#         {
#             /* reset the tail */
#             pHWUnitQueue->aScheduledJobsListTail[s8MaxScheduledPriority] = SPI_JOB_NULL;
	.d2line		2548
.Llo285:
	diab.li		r0,65535
	extsb		r3,r29		# pJobListHead=r3 s8MaxScheduledPriority=r29
.Llo286:
	se_slwi		r3,1		# pJobListHead=r3 pJobListHead=r3
	se_add		r3,r31		# pJobListHead=r3 pJobListHead=r3 pHWUnitQueue=r31
	sth		r0,8(r3)		# pJobListHead=r3
# 
#             /* find the first non empty scheduling queue */
#             for (s8Priority = s8MaxScheduledPriority - 1; s8Priority >= 0; s8Priority--)
	.d2line		2551
	diab.addi		r29,r29,-1		# s8MaxScheduledPriority=r29 s8MaxScheduledPriority=r29
.Llo292:
	mr		r29,r29		# s8Priority=r29 s8Priority=r29
.L683:
.Llo287:
	extsb		r0,r29		# s8Priority=r29
	se_cmpi		r0,0
	bc		1,0,.L687	# lt
#             {
#                 if (SPI_JOB_NULL != pHWUnitQueue->aScheduledJobsListHead[s8Priority])
	.d2line		2553
	extsb		r3,r29		# pJobListHead=r3 s8Priority=r29
.Llo288:
	se_slwi		r3,1		# pJobListHead=r3 pJobListHead=r3
	lhzux		r0,r3,r31		# pJobListHead=r3
	cmpli		0,0,r0,65535
	bc		0,2,.L687	# ne
#                 {
#                     /* there is a scheduled Job for this priority level */
#                     break;
#                 }
#                 else
#                 {
#                     /* Do nothing */
#                 }
#             }
	.d2line		2562
.Llo289:
	diab.addi		r0,r29,-1		# s8Priority=r29
	diab.addi		r29,r29,-1		# s8Priority=r29 s8Priority=r29
	b		.L683
.L687:
# 
#             /* Priority is set on the highest priority queue having
#                scheduled jobs, or -1 if no other jobs scheduled */
#             pHWUnitQueue->s8MaxScheduledPriority = s8Priority;
	.d2line		2566
	stb		r29,16(r31)		# pHWUnitQueue=r31 s8Priority=r29
.L689:
#         }
#         else
#         {
#             /* Do nothing */
#         }
#         SchM_Exit_Spi_SPI_EXCLUSIVE_AREA_04();
	.d2line		2572
.Llo282:
	bl		SchM_Exit_Spi_SPI_EXCLUSIVE_AREA_04
# 
#         /* mark the job as pending */
#         Spi_aSpiJobState[Job].Result = SPI_JOB_PENDING;
	.d2line		2575
.Llo283:
	rlwinm		r30,r30,0,16,31		# Job=r30 Job=r30
	diab.li		r5,1
	lis		r3,Spi_aSpiJobState@ha		# pJobListHead=r3
.Llo290:
	e_add16i		r3,r3,Spi_aSpiJobState@l		# pJobListHead=r3 pJobListHead=r3
	rlwinm		r0,r30,4,0,27		# Job=r30
	rlwinm		r4,r30,2,0,29		# Job=r30
	subf		r4,r4,r0
	stwx		r5,r3,r4		# pJobListHead=r3
#         Spi_Ipw_JobTransfer(&(*Spi_pcSpiConfigPtr->pcJobConfig)[Job]);
	.d2line		2576
	lis		r3,Spi_pcSpiConfigPtr@ha		# pJobListHead=r3
	lwz		r3,Spi_pcSpiConfigPtr@l(r3)		# pJobListHead=r3 pJobListHead=r3
	lwz		r3,12(r3)		# pJobListHead=r3 pJobListHead=r3
	se_slwi		r30,6		# Job=r30 Job=r30
	subf		r0,r0,r30		# Job=r30
	se_add		r3,r0		# pJobListHead=r3 pJobListHead=r3
.Llo291:
	bl		Spi_Dspi_JobTransfer
.L679:
#     }
# }
	.d2line		2578
	.d2epilogue_begin
.Llo280:
	lmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L1023:
	.type		Spi_ScheduleNextJob,@function
	.size		Spi_ScheduleNextJob,.-Spi_ScheduleNextJob
# Number of nodes = 114

# Allocations for Spi_ScheduleNextJob
#	?a4		pHWUnitQueue
#	?a5		$$142
#	?a6		$$141
#	?a7		$$140
#	?a8		Job
#	?a9		pJobListHead
#	?a10		s8Priority
#	?a11		s8MaxScheduledPriority
# FUNC(void, SPI_CODE) Spi_JobTransferFinished
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         2594,22
#$$ld
.L1036:

#$$bf	Spi_JobTransferFinished,interprocedural,rasave,nostackparams
	.globl		Spi_JobTransferFinished
	.d2_cfa_start __cie
Spi_JobTransferFinished:
.Llo293:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r4,r3		# pcJobConfig=r4 pcJobConfig=r3
	.d2prologue_end
#     (
#         P2CONST(Spi_JobConfigType, AUTOMATIC, SPI_APPL_CONST) pcJobConfig
#     )
# {
#     VAR(Spi_HWUnitType, AUTOMATIC) HWUnit = pcJobConfig->HWUnit;
	.d2line		2599
.Llo294:
	lbz		r31,24(r4)		# HWUnit=r31 pcJobConfig=r4
.Llo295:
	mr		r31,r31		# HWUnit=r31 HWUnit=r31
#     P2VAR(Spi_HWUnitQueue, AUTOMATIC, SPI_APPL_DATA) pHWUnitQueue = &Spi_aSpiHWUnitQueueArray[HWUnit];
	.d2line		2600
	rlwinm		r0,r31,0,24,31		# HWUnit=r31
	lis		r30,Spi_aSpiHWUnitQueueArray@ha
	e_add16i		r30,r30,Spi_aSpiHWUnitQueueArray@l
	rlwinm		r3,r0,5,0,26		# pJobState=r3
.Llo311:
	se_slwi		r0,3
	subf		r0,r0,r3		# pJobState=r3
	se_add		r0,r30
.Llo308:
	mr		r30,r0		# pHWUnitQueue=r30 pHWUnitQueue=r0
#     P2VAR(Spi_JobStateType, AUTOMATIC, SPI_APPL_DATA) pJobState = pcJobConfig->pJobState;
	.d2line		2601
	lwz		r3,20(r4)		# pJobState=r3 pcJobConfig=r4
	mr		r3,r3		# pJobState=r3 pJobState=r3
#     P2VAR(Spi_SequenceStateType, AUTOMATIC, SPI_APPL_DATA) pSequenceState = pJobState->pAsyncCrtSequenceState;
	.d2line		2602
	lwz		r29,4(r3)		# pSequenceState=r29 pJobState=r3
.Llo314:
	mr		r29,r29		# pSequenceState=r29 pSequenceState=r29
#     P2CONST(Spi_SequenceConfigType, AUTOMATIC, SPI_APPL_CONST) pcSequenceConfig = pSequenceState->pcSequence;
	.d2line		2603
	lwz		r28,4(r29)		# pSequenceState=r29
.Llo316:
	mr		r28,r28		# pcSequenceConfig=r28 pcSequenceConfig=r28
#     P2CONST(Spi_JobType, AUTOMATIC, SPI_APPL_CONST) pcJob;
#     VAR(Spi_JobType, AUTOMATIC) Job;
# 
#     pJobState->Result = SPI_JOB_OK;
	.d2line		2607
	diab.li		r0,0
.Llo309:
	stw		r0,0(r3)		# pJobState=r3
# 
#     /* unlink the job from its sequence */
#     pJobState->pAsyncCrtSequenceState = NULL_PTR;
	.d2line		2610
	stw		r0,4(r3)		# pJobState=r3
# 
#     /* Perform job EndNotification (if there is one) */
#     if (NULL_PTR != pcJobConfig->pfEndNotification)
	.d2line		2613
	lwz		r0,8(r4)		# pcJobConfig=r4
	se_cmpi		r0,0
	bc		1,2,.L697	# eq
#     {
#         pcJobConfig->pfEndNotification();
	.d2line		2615
.Llo310:
	lwz		r0,8(r4)		# pcJobConfig=r4
	mtspr		ctr,r0
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x0 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
.L697:
#     }
#     else
#     {
#         /* Do nothing */
#     }
# 
# #if (SPI_CANCEL_API == STD_ON)
#     /* Check if current sequence has been cancelled */
#     if (SPI_SEQ_CANCELLED == pSequenceState->Result)
	.d2line		2624
	lwz		r0,0(r29)		# pSequenceState=r29
	se_cmpi		r0,3
	bc		0,2,.L698	# ne
#     {
# 
#         /* unlock jobs */
#         Spi_UnlockRemainingJobs(pSequenceState->RemainingJobs, pcSequenceConfig);
	.d2line		2628
.Llo296:
	lhz		r3,12(r29)		# pJobState=r3 pSequenceState=r29
	mr		r4,r28		# pcSequenceConfig=r4 pcSequenceConfig=r28
	bl		Spi_UnlockRemainingJobs
# 
# 
#         if (NULL_PTR != pcSequenceConfig->pfEndNotification)
	.d2line		2631
	lwz		r0,8(r28)		# pcSequenceConfig=r28
	se_cmpi		r0,0
	bc		1,2,.L700	# eq
#         {
#             pcSequenceConfig->pfEndNotification();
	.d2line		2633
.Llo305:
	lwz		r0,8(r28)		# pcSequenceConfig=r28
	mtspr		ctr,r0
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x0 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
.L700:
#         }
#         else
#         {
#             /* Do nothing */
#         }
#         Spi_ScheduleNextJob(pHWUnitQueue);
	.d2line		2639
	mr		r3,r30		# pHWUnitQueue=r3 pHWUnitQueue=r30
	bl		Spi_ScheduleNextJob
	b		.L695
.L698:
#     }
#     else
#     {
# #endif
#         /* Check if this job is the last one */
#         if (0u == pSequenceState->RemainingJobs)
	.d2line		2645
.Llo306:
	lhz		r0,12(r29)		# pSequenceState=r29
	e_cmphl16i	r0,0
	bc		0,2,.L702	# ne
#         {
#             /* Reset sequence state */
#             pSequenceState->Result = SPI_SEQ_OK;
	.d2line		2648
	diab.li		r0,0
	stw		r0,0(r29)		# pSequenceState=r29
# 
#             /* SeqEndNotification */
#             if (NULL_PTR != pcSequenceConfig->pfEndNotification)
	.d2line		2651
	lwz		r0,8(r28)		# pcSequenceConfig=r28
	se_cmpi		r0,0
	bc		1,2,.L704	# eq
#             {
#                 pcSequenceConfig->pfEndNotification();
	.d2line		2653
.Llo307:
	lwz		r0,8(r28)		# pcSequenceConfig=r28
	mtspr		ctr,r0
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x0 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
.L704:
#             }
#             else
#             {
#                 /* Do nothing */
#             }
# 
#             Spi_ScheduleNextJob(pHWUnitQueue);
	.d2line		2660
	mr		r3,r30		# pHWUnitQueue=r3 pHWUnitQueue=r30
	bl		Spi_ScheduleNextJob
	b		.L695
.L702:
# 
#         }
#         else
#         {
#             /* advance to the next job */
#             /*
#             * @violates @ref Spi_c_REF_6 Array indexing shall be
#             *       the only allowed form of pointer arithmetic.
#             */
#             pSequenceState->pcCurrentJobIndexPointer++;
	.d2line		2670
.Llo315:
	lwz		r3,8(r29)		# pJobState=r3 pSequenceState=r29
.Llo312:
	diab.addi		r0,r3,2		# pJobState=r3
	stw		r0,8(r29)		# pSequenceState=r29
#             pcJob = pSequenceState->pcCurrentJobIndexPointer;
#             Job = *pcJob;
	.d2line		2672
	lhz		r4,2(r3)		# pcJobConfig=r4 pcJob=r3
.Llo321:
	mr		r4,r4		# Job=r4 Job=r4
#             pSequenceState->RemainingJobs--;
	.d2line		2673
	lhz		r0,12(r29)		# pSequenceState=r29
	diab.li		r3,65535		# pcJob=r3
.Llo313:
	se_add		r0,r3		# pcJob=r3
	sth		r0,12(r29)		# pSequenceState=r29
# 
#             pcJobConfig = &(*Spi_pcSpiConfigPtr->pcJobConfig)[Job];
	.d2line		2675
	rlwinm		r0,r4,0,16,31		# Job=r4
	lis		r3,Spi_pcSpiConfigPtr@ha		# pcJob=r3
	lwz		r3,Spi_pcSpiConfigPtr@l(r3)		# pcJob=r3 pcJob=r3
	lwz		r5,12(r3)		# pcJobConfig=r5 pcJob=r3
.Llo297:
	rlwinm		r3,r0,6,0,25		# pcJob=r3
	se_slwi		r0,4
	subf		r0,r0,r3		# pcJob=r3
	se_add		r0,r5		# pcJobConfig=r5
	mr		r5,r0		# pcJobConfig=r5 pcJobConfig=r0
#             if (HWUnit != pcJobConfig->HWUnit)
	.d2line		2676
.Llo298:
	rlwinm		r31,r31,0,24,31		# HWUnit=r31 HWUnit=r31
.Llo299:
	lbz		r0,24(r5)		# pcJobConfig=r5
.Llo300:
	se_cmp		r31,r0		# HWUnit=r31
	bc		1,2,.L706	# eq
#             {
#                 /* schedule the next job on the new DSPI unit */
#                 Spi_ScheduleJob(&Spi_aSpiHWUnitQueueArray[pcJobConfig->HWUnit], Job, pcJobConfig);
	.d2line		2679
.Llo301:
	lbz		r0,24(r5)		# pcJobConfig=r5
	lis		r3,Spi_aSpiHWUnitQueueArray@ha		# pcJob=r3
.Llo317:
	e_add16i		r3,r3,Spi_aSpiHWUnitQueueArray@l		# pcJob=r3 pcJob=r3
	rlwinm		r6,r0,5,0,26
	se_slwi		r0,3
	subf		r0,r0,r6
	se_add		r3,r0		# pcJob=r3 pcJob=r3
.Llo318:
	mr		r4,r4		# Job=r4 Job=r4
.Llo322:
	mr		r5,r5		# pcJobConfig=r5 pcJobConfig=r5
.Llo302:
	bl		Spi_ScheduleJob
# 
#                 /* transmit the next scheduled job on the current DSPI unit */
#                 Spi_ScheduleNextJob(pHWUnitQueue);
	.d2line		2682
	mr		r3,r30		# pHWUnitQueue=r3 pHWUnitQueue=r30
	bl		Spi_ScheduleNextJob
	b		.L695
.L706:
#             }
#             else
#             {
#                 /* the next job uses the same DSPI unit */
# 
# #if (SPI_INTERRUPTIBLE_SEQ_ALLOWED == STD_ON)
#                 if (pcSequenceConfig->u8Interruptible)
#                 {
#                     /* if the sequence is interruptible,
#                        then schedule the next job */
#                     /* DSPI is marked as BUSY => the new job is scheduled only */
#                     Spi_ScheduleJob(pHWUnitQueue, Job, pcJobConfig);
# 
#                     /* run the first eligible job */
#                     Spi_ScheduleNextJob(pHWUnitQueue);
#                 }
#                 else
# #endif
#                 {
#                     /* non-interruptible sequence =>
#                        start transmission without scheduling */
#                     /* mark the job as pending */
#                     Spi_aSpiJobState[Job].Result = SPI_JOB_PENDING;
	.d2line		2705
.Llo303:
	rlwinm		r4,r4,0,16,31		# Job=r4 Job=r4
	diab.li		r0,1
	lis		r3,Spi_aSpiJobState@ha		# pcJob=r3
.Llo319:
	e_add16i		r3,r3,Spi_aSpiJobState@l		# pcJob=r3 pcJob=r3
	rlwinm		r6,r4,4,0,27		# Job=r4
	se_slwi		r4,2		# Job=r4 Job=r4
	subf		r4,r4,r6		# Job=r4 Job=r4
.Llo323:
	stwx		r0,r3,r4		# pcJob=r3
#                     Spi_Ipw_JobTransfer(pcJobConfig);
	.d2line		2706
	mr		r3,r5		# pcJobConfig=r3 pcJobConfig=r5
.Llo320:
	bl		Spi_Dspi_JobTransfer
.L695:
#                 }
#             }
#         }
# #if (SPI_CANCEL_API == STD_ON)
#     }
# #endif
# }
	.d2line		2713
	.d2epilogue_begin
.Llo304:
	lmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L1037:
	.type		Spi_JobTransferFinished,@function
	.size		Spi_JobTransferFinished,.-Spi_JobTransferFinished
# Number of nodes = 190

# Allocations for Spi_JobTransferFinished
#	?a4		pcJobConfig
#	?a5		$$146
#	?a6		$$145
#	?a7		$$144
#	?a8		$$143
#	?a9		HWUnit
#	?a10		pHWUnitQueue
#	?a11		pJobState
#	?a12		pSequenceState
#	?a13		pcSequenceConfig
#	?a14		pcJob
#	?a15		Job

# Allocations for module
	.section	.mcal_bss,,b
	.0byte		.L1054
	.section	.mcal_bss,,b
	.type		Spi_aSpiHWUnitQueueArray,@object
	.size		Spi_aSpiHWUnitQueueArray,120
	.align		2
Spi_aSpiHWUnitQueueArray:
	.space		120
	.section	.mcal_data,,d
	.0byte		.L1058
	.section	.mcal_data,,d
	.type		Spi_pcSpiConfigPtr,@object
	.size		Spi_pcSpiConfigPtr,4
	.align		2
	.globl		Spi_pcSpiConfigPtr
Spi_pcSpiConfigPtr:
	.long		0
	.section	.mcal_bss,,b
	.0byte		.L1059
	.section	.mcal_bss,,b
	.type		Spi_aSpiSequenceState,@object
	.size		Spi_aSpiSequenceState,96
	.align		2
	.globl		Spi_aSpiSequenceState
Spi_aSpiSequenceState:
	.space		96
	.section	.mcal_bss,,b
	.type		Spi_aSpiJobState,@object
	.size		Spi_aSpiJobState,72
	.align		2
	.globl		Spi_aSpiJobState
Spi_aSpiJobState:
	.space		72
	.section	.mcal_bss,,b
	.type		Spi_aSpiChannelState,@object
	.size		Spi_aSpiChannelState,24
	.align		1
	.globl		Spi_aSpiChannelState
Spi_aSpiChannelState:
	.space		24
	.section	.mcal_bss,,b
	.0byte		.L1068
	.section	.mcal_bss,,b
	.type		Spi_au32SpiSeqUsedHWUnits,@object
	.size		Spi_au32SpiSeqUsedHWUnits,24
	.align		2
Spi_au32SpiSeqUsedHWUnits:
	.space		24
	.section	.mcal_data,,d
	.0byte		.L1071
	.section	.mcal_data,,d
	.type		Spi_u32SpiBusySyncHWUnitsStatus,@object
	.size		Spi_u32SpiBusySyncHWUnitsStatus,4
	.align		2
Spi_u32SpiBusySyncHWUnitsStatus:
	.long		0
	.section	.text_vle
#$$ld
.L5:
.L1148:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\PowerPC\\WindRiver\\AUTOSAR\\ar422\\MemMap.h"
.L1132:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_HookApiTypes.h"
.L1073:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Spi\\ssc\\make\\..\\..\\generator\\integration_package\\include\\Spi.h"
.L1055:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Spi\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Spi.c"
	.d2_line_end
	.section	.invalid_TEXT,,c
#$$ld
.L719:
.L727:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Spi\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Spi.c"
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
	.uleb128	4
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
	.uleb128	9
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	9
	.uleb128	52
	.byte		0x0
	.uleb128	63
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
	.uleb128	2
	.uleb128	9
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
	.uleb128	13
	.uleb128	40
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	28
	.uleb128	13
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	14
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	15
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
	.uleb128	16
	.uleb128	38
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	17
	.uleb128	15
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	18
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	19
	.uleb128	33
	.byte		0x0
	.uleb128	47
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	20
	.uleb128	53
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	21
	.uleb128	33
	.byte		0x0
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Spi\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Spi.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L4
	.4byte		.L5
	.4byte		.L8
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L716:
	.4byte		.L717-.L715
.L715:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L721-.L716
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Spi\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Spi.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L718
	.4byte		.L719
	.4byte		.L722
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L730:
	.sleb128	2
	.4byte		.L724-.L716
	.byte		"Spi_GetAsyncStatus"
	.byte		0
	.4byte		.L727
	.uleb128	448
	.uleb128	45
	.4byte		.L728
	.byte		0x1
	.4byte		.L725
	.4byte		.L726
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L731:
	.sleb128	3
	.4byte		.L727
	.uleb128	450
	.uleb128	36
	.byte		"StatusFlag"
	.byte		0
	.4byte		.L728
	.4byte		.L732
.L733:
	.sleb128	3
	.4byte		.L727
	.uleb128	451
	.uleb128	36
	.byte		"HWUnit"
	.byte		0
	.4byte		.L734
	.4byte		.L737
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L724:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L743:
	.sleb128	2
	.4byte		.L739-.L716
	.byte		"Spi_LockJobs"
	.byte		0
	.4byte		.L727
	.uleb128	494
	.uleb128	45
	.4byte		.L742
	.byte		0x1
	.4byte		.L740
	.4byte		.L741
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	4
	.4byte		.L727
	.uleb128	494
	.uleb128	45
	.byte		"Sequence"
	.byte		0
	.4byte		.L744
	.4byte		.L745
	.sleb128	4
	.4byte		.L727
	.uleb128	494
	.uleb128	45
	.byte		"pcSequence"
	.byte		0
	.4byte		.L746
	.4byte		.L750
.L751:
	.sleb128	3
	.4byte		.L727
	.uleb128	500
	.uleb128	36
	.byte		"Status"
	.byte		0
	.4byte		.L742
	.4byte		.L752
.L753:
	.sleb128	3
	.4byte		.L727
	.uleb128	501
	.uleb128	33
	.byte		"JobCount"
	.byte		0
	.4byte		.L754
	.4byte		.L757
.L758:
	.sleb128	3
	.4byte		.L727
	.uleb128	502
	.uleb128	53
	.byte		"pcJobs"
	.byte		0
	.4byte		.L759
	.4byte		.L761
.L762:
	.sleb128	3
	.4byte		.L727
	.uleb128	503
	.uleb128	55
	.byte		"pJobState"
	.byte		0
	.4byte		.L763
	.4byte		.L766
.L767:
	.sleb128	3
	.4byte		.L727
	.uleb128	504
	.uleb128	60
	.byte		"pSequenceState"
	.byte		0
	.4byte		.L768
	.4byte		.L771
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L739:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L776:
	.sleb128	5
	.4byte		.L773-.L716
	.byte		"Spi_UnlockRemainingJobs"
	.byte		0
	.4byte		.L727
	.uleb128	588
	.uleb128	35
	.byte		0x1
	.4byte		.L774
	.4byte		.L775
	.sleb128	4
	.4byte		.L727
	.uleb128	588
	.uleb128	35
	.byte		"RemainingJobs"
	.byte		0
	.4byte		.L754
	.4byte		.L777
	.sleb128	4
	.4byte		.L727
	.uleb128	588
	.uleb128	35
	.byte		"pcSequence"
	.byte		0
	.4byte		.L746
	.4byte		.L778
.L779:
	.sleb128	3
	.4byte		.L727
	.uleb128	594
	.uleb128	33
	.byte		"NumJobsInSeq"
	.byte		0
	.4byte		.L754
	.4byte		.L780
.L781:
	.sleb128	3
	.4byte		.L727
	.uleb128	595
	.uleb128	33
	.byte		"JobIdx"
	.byte		0
	.4byte		.L754
	.4byte		.L782
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L773:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L787:
	.sleb128	5
	.4byte		.L784-.L716
	.byte		"Spi_ScheduleJob"
	.byte		0
	.4byte		.L727
	.uleb128	624
	.uleb128	35
	.byte		0x1
	.4byte		.L785
	.4byte		.L786
	.sleb128	4
	.4byte		.L727
	.uleb128	624
	.uleb128	35
	.byte		"pHWUnitQueue"
	.byte		0
	.4byte		.L788
	.4byte		.L791
	.sleb128	4
	.4byte		.L727
	.uleb128	624
	.uleb128	35
	.byte		"Job"
	.byte		0
	.4byte		.L754
	.4byte		.L792
	.sleb128	4
	.4byte		.L727
	.uleb128	624
	.uleb128	35
	.byte		"pcJobConfig"
	.byte		0
	.4byte		.L793
	.4byte		.L797
.L798:
	.sleb128	3
	.4byte		.L727
	.uleb128	631
	.uleb128	27
	.byte		"s8Priority"
	.byte		0
	.4byte		.L799
	.4byte		.L801
.L802:
	.sleb128	3
	.4byte		.L727
	.uleb128	632
	.uleb128	50
	.byte		"pJobListTail"
	.byte		0
	.4byte		.L803
	.4byte		.L804
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L784:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L809:
	.sleb128	6
	.4byte		.L806-.L716
	.byte		"Spi_GetVersionInfo"
	.byte		0
	.4byte		.L727
	.uleb128	707
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L807
	.4byte		.L808
	.sleb128	4
	.4byte		.L727
	.uleb128	707
	.uleb128	22
	.byte		"versioninfo"
	.byte		0
	.4byte		.L810
	.4byte		.L813
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L806:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L818:
	.sleb128	6
	.4byte		.L815-.L716
	.byte		"Spi_Init"
	.byte		0
	.4byte		.L727
	.uleb128	752
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L816
	.4byte		.L817
	.sleb128	4
	.4byte		.L727
	.uleb128	752
	.uleb128	22
	.byte		"ConfigPtr"
	.byte		0
	.4byte		.L819
	.4byte		.L823
.L824:
	.sleb128	3
	.4byte		.L727
	.uleb128	757
	.uleb128	28
	.byte		"u32Channel"
	.byte		0
	.4byte		.L825
	.4byte		.L827
.L828:
	.sleb128	3
	.4byte		.L727
	.uleb128	758
	.uleb128	28
	.byte		"u32Job"
	.byte		0
	.4byte		.L825
	.4byte		.L829
.L830:
	.sleb128	3
	.4byte		.L727
	.uleb128	759
	.uleb128	28
	.byte		"u32Sequence"
	.byte		0
	.4byte		.L825
	.4byte		.L831
.L832:
	.sleb128	3
	.4byte		.L727
	.uleb128	760
	.uleb128	36
	.byte		"HWUnit"
	.byte		0
	.4byte		.L734
	.4byte		.L833
.L834:
	.sleb128	3
	.4byte		.L727
	.uleb128	762
	.uleb128	27
	.byte		"s8Priority"
	.byte		0
	.4byte		.L799
	.4byte		.L835
.L836:
	.sleb128	3
	.4byte		.L727
	.uleb128	764
	.uleb128	63
	.byte		"pcChannelConfig"
	.byte		0
	.4byte		.L837
	.4byte		.L841
.L842:
	.sleb128	3
	.4byte		.L727
	.uleb128	767
	.uleb128	64
	.byte		"pcSequenceConfig"
	.byte		0
	.4byte		.L746
	.4byte		.L843
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L815:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L848:
	.sleb128	7
	.4byte		.L845-.L716
	.byte		"Spi_GetStatus"
	.byte		0
	.4byte		.L727
	.uleb128	1699
	.uleb128	32
	.4byte		.L728
	.byte		0x1
	.byte		0x1
	.4byte		.L846
	.4byte		.L847
.L849:
	.sleb128	3
	.4byte		.L727
	.uleb128	1701
	.uleb128	36
	.byte		"StatusFlag"
	.byte		0
	.4byte		.L728
	.4byte		.L850
.L851:
	.sleb128	3
	.4byte		.L727
	.uleb128	1702
	.uleb128	36
	.byte		"HWUnit"
	.byte		0
	.4byte		.L734
	.4byte		.L852
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L845:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L857:
	.sleb128	7
	.4byte		.L854-.L716
	.byte		"Spi_DeInit"
	.byte		0
	.4byte		.L727
	.uleb128	986
	.uleb128	32
	.4byte		.L742
	.byte		0x1
	.byte		0x1
	.4byte		.L855
	.4byte		.L856
.L858:
	.sleb128	3
	.4byte		.L727
	.uleb128	988
	.uleb128	36
	.byte		"tempExit"
	.byte		0
	.4byte		.L742
	.4byte		.L859
.L860:
	.sleb128	3
	.4byte		.L727
	.uleb128	989
	.uleb128	36
	.byte		"HWUnit"
	.byte		0
	.4byte		.L734
	.4byte		.L861
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L854:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L866:
	.sleb128	7
	.4byte		.L863-.L716
	.byte		"Spi_WriteIB"
	.byte		0
	.4byte		.L727
	.uleb128	1070
	.uleb128	32
	.4byte		.L742
	.byte		0x1
	.byte		0x1
	.4byte		.L864
	.4byte		.L865
	.sleb128	4
	.4byte		.L727
	.uleb128	1070
	.uleb128	32
	.byte		"Channel"
	.byte		0
	.4byte		.L867
	.4byte		.L868
	.sleb128	4
	.4byte		.L727
	.uleb128	1070
	.uleb128	32
	.byte		"DataBufferPtr"
	.byte		0
	.4byte		.L869
	.4byte		.L872
.L873:
	.sleb128	3
	.4byte		.L727
	.uleb128	1076
	.uleb128	36
	.byte		"Status"
	.byte		0
	.4byte		.L742
	.4byte		.L874
.L875:
	.sleb128	3
	.4byte		.L727
	.uleb128	1077
	.uleb128	28
	.byte		"u16Index"
	.byte		0
	.4byte		.L755
	.4byte		.L876
.L877:
	.sleb128	3
	.4byte		.L727
	.uleb128	1078
	.uleb128	59
	.byte		"pChannelState"
	.byte		0
	.4byte		.L878
	.4byte		.L881
.L882:
	.sleb128	3
	.4byte		.L727
	.uleb128	1079
	.uleb128	63
	.byte		"pcChannelConfig"
	.byte		0
	.4byte		.L837
	.4byte		.L883
.L884:
	.sleb128	3
	.4byte		.L727
	.uleb128	1080
	.uleb128	52
	.byte		"pDataBufferDes"
	.byte		0
	.4byte		.L885
	.4byte		.L886
.L887:
	.sleb128	3
	.4byte		.L727
	.uleb128	1081
	.uleb128	54
	.byte		"pcDataBufferSrc"
	.byte		0
	.4byte		.L869
	.4byte		.L888
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L863:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L893:
	.sleb128	7
	.4byte		.L890-.L716
	.byte		"Spi_AsyncTransmit"
	.byte		0
	.4byte		.L727
	.uleb128	1194
	.uleb128	32
	.4byte		.L742
	.byte		0x1
	.byte		0x1
	.4byte		.L891
	.4byte		.L892
	.sleb128	4
	.4byte		.L727
	.uleb128	1194
	.uleb128	32
	.byte		"Sequence"
	.byte		0
	.4byte		.L744
	.4byte		.L894
.L895:
	.sleb128	3
	.4byte		.L727
	.uleb128	1199
	.uleb128	36
	.byte		"Status"
	.byte		0
	.4byte		.L742
	.4byte		.L896
.L897:
	.sleb128	3
	.4byte		.L727
	.uleb128	1200
	.uleb128	33
	.byte		"NumJobsInSequence"
	.byte		0
	.4byte		.L754
	.4byte		.L898
.L899:
	.sleb128	3
	.4byte		.L727
	.uleb128	1201
	.uleb128	33
	.byte		"JobIndex"
	.byte		0
	.4byte		.L754
	.4byte		.L900
.L901:
	.sleb128	3
	.4byte		.L727
	.uleb128	1202
	.uleb128	33
	.byte		"Job"
	.byte		0
	.4byte		.L754
	.4byte		.L902
.L903:
	.sleb128	3
	.4byte		.L727
	.uleb128	1203
	.uleb128	64
	.byte		"pcSequenceConfig"
	.byte		0
	.4byte		.L746
	.4byte		.L904
.L905:
	.sleb128	3
	.4byte		.L727
	.uleb128	1204
	.uleb128	60
	.byte		"pSequenceState"
	.byte		0
	.4byte		.L768
	.4byte		.L906
.L907:
	.sleb128	3
	.4byte		.L727
	.uleb128	1205
	.uleb128	59
	.byte		"pcJobConfig"
	.byte		0
	.4byte		.L793
	.4byte		.L908
.L909:
	.sleb128	3
	.4byte		.L727
	.uleb128	1206
	.uleb128	53
	.byte		"pcJob"
	.byte		0
	.4byte		.L759
	.4byte		.L910
.L911:
	.sleb128	3
	.4byte		.L727
	.uleb128	1207
	.uleb128	53
	.byte		"pcJobCount"
	.byte		0
	.4byte		.L759
	.4byte		.L912
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L890:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L917:
	.sleb128	7
	.4byte		.L914-.L716
	.byte		"Spi_ReadIB"
	.byte		0
	.4byte		.L727
	.uleb128	1440
	.uleb128	32
	.4byte		.L742
	.byte		0x1
	.byte		0x1
	.4byte		.L915
	.4byte		.L916
	.sleb128	4
	.4byte		.L727
	.uleb128	1440
	.uleb128	32
	.byte		"Channel"
	.byte		0
	.4byte		.L867
	.4byte		.L918
	.sleb128	4
	.4byte		.L727
	.uleb128	1440
	.uleb128	32
	.byte		"DataBufferPointer"
	.byte		0
	.4byte		.L885
	.4byte		.L919
.L920:
	.sleb128	3
	.4byte		.L727
	.uleb128	1446
	.uleb128	36
	.byte		"Status"
	.byte		0
	.4byte		.L742
	.4byte		.L921
.L922:
	.sleb128	3
	.4byte		.L727
	.uleb128	1447
	.uleb128	42
	.byte		"Index"
	.byte		0
	.4byte		.L923
	.4byte		.L924
.L925:
	.sleb128	3
	.4byte		.L727
	.uleb128	1448
	.uleb128	63
	.byte		"pcChannelConfig"
	.byte		0
	.4byte		.L837
	.4byte		.L926
.L927:
	.sleb128	3
	.4byte		.L727
	.uleb128	1449
	.uleb128	52
	.byte		"pDataBufferSrc"
	.byte		0
	.4byte		.L885
	.4byte		.L928
.L929:
	.sleb128	3
	.4byte		.L727
	.uleb128	1450
	.uleb128	51
	.byte		"pDataBufferDes"
	.byte		0
	.4byte		.L885
	.4byte		.L930
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L914:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L935:
	.sleb128	7
	.4byte		.L932-.L716
	.byte		"Spi_SetupEB"
	.byte		0
	.4byte		.L727
	.uleb128	1567
	.uleb128	32
	.4byte		.L742
	.byte		0x1
	.byte		0x1
	.4byte		.L933
	.4byte		.L934
	.sleb128	4
	.4byte		.L727
	.uleb128	1567
	.uleb128	32
	.byte		"Channel"
	.byte		0
	.4byte		.L867
	.4byte		.L936
	.sleb128	4
	.4byte		.L727
	.uleb128	1567
	.uleb128	32
	.byte		"SrcDataBufferPtr"
	.byte		0
	.4byte		.L869
	.4byte		.L937
	.sleb128	4
	.4byte		.L727
	.uleb128	1567
	.uleb128	32
	.byte		"DesDataBufferPtr"
	.byte		0
	.4byte		.L885
	.4byte		.L938
	.sleb128	4
	.4byte		.L727
	.uleb128	1567
	.uleb128	32
	.byte		"Length"
	.byte		0
	.4byte		.L923
	.4byte		.L939
.L940:
	.sleb128	3
	.4byte		.L727
	.uleb128	1575
	.uleb128	36
	.byte		"Status"
	.byte		0
	.4byte		.L742
	.4byte		.L941
.L942:
	.sleb128	3
	.4byte		.L727
	.uleb128	1576
	.uleb128	59
	.byte		"pChannelState"
	.byte		0
	.4byte		.L878
	.4byte		.L943
.L944:
	.sleb128	3
	.4byte		.L727
	.uleb128	1577
	.uleb128	63
	.byte		"pcChannelConfig"
	.byte		0
	.4byte		.L837
	.4byte		.L945
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L932:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L952:
	.sleb128	7
	.4byte		.L947-.L716
	.byte		"Spi_GetJobResult"
	.byte		0
	.4byte		.L727
	.uleb128	1775
	.uleb128	35
	.4byte		.L950
	.byte		0x1
	.byte		0x1
	.4byte		.L948
	.4byte		.L949
	.sleb128	4
	.4byte		.L727
	.uleb128	1775
	.uleb128	35
	.byte		"Job"
	.byte		0
	.4byte		.L754
	.4byte		.L953
.L954:
	.sleb128	3
	.4byte		.L727
	.uleb128	1780
	.uleb128	39
	.byte		"JobResult"
	.byte		0
	.4byte		.L950
	.4byte		.L955
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L947:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L962:
	.sleb128	7
	.4byte		.L957-.L716
	.byte		"Spi_GetSequenceResult"
	.byte		0
	.4byte		.L727
	.uleb128	1842
	.uleb128	35
	.4byte		.L960
	.byte		0x1
	.byte		0x1
	.4byte		.L958
	.4byte		.L959
	.sleb128	4
	.4byte		.L727
	.uleb128	1842
	.uleb128	35
	.byte		"Sequence"
	.byte		0
	.4byte		.L744
	.4byte		.L963
.L964:
	.sleb128	3
	.4byte		.L727
	.uleb128	1847
	.uleb128	39
	.byte		"SequenceResult"
	.byte		0
	.4byte		.L960
	.4byte		.L965
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L957:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L970:
	.sleb128	7
	.4byte		.L967-.L716
	.byte		"Spi_SyncTransmit"
	.byte		0
	.4byte		.L727
	.uleb128	1911
	.uleb128	32
	.4byte		.L742
	.byte		0x1
	.byte		0x1
	.4byte		.L968
	.4byte		.L969
	.sleb128	4
	.4byte		.L727
	.uleb128	1911
	.uleb128	32
	.byte		"Sequence"
	.byte		0
	.4byte		.L744
	.4byte		.L971
.L972:
	.sleb128	3
	.4byte		.L727
	.uleb128	1916
	.uleb128	60
	.byte		"pSequenceState"
	.byte		0
	.4byte		.L768
	.4byte		.L973
.L974:
	.sleb128	3
	.4byte		.L727
	.uleb128	1917
	.uleb128	36
	.byte		"Status"
	.byte		0
	.4byte		.L742
	.4byte		.L975
.L976:
	.sleb128	3
	.4byte		.L727
	.uleb128	1918
	.uleb128	28
	.byte		"u32SpiSequenceUsedHWUnits"
	.byte		0
	.4byte		.L825
	.4byte		.L977
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L967:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L982:
	.sleb128	7
	.4byte		.L979-.L716
	.byte		"Spi_GetHWUnitStatus"
	.byte		0
	.4byte		.L727
	.uleb128	2177
	.uleb128	32
	.4byte		.L728
	.byte		0x1
	.byte		0x1
	.4byte		.L980
	.4byte		.L981
	.sleb128	4
	.4byte		.L727
	.uleb128	2177
	.uleb128	32
	.byte		"HWUnit"
	.byte		0
	.4byte		.L734
	.4byte		.L983
.L984:
	.sleb128	3
	.4byte		.L727
	.uleb128	2182
	.uleb128	36
	.byte		"Status"
	.byte		0
	.4byte		.L728
	.4byte		.L985
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L979:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L990:
	.sleb128	6
	.4byte		.L987-.L716
	.byte		"Spi_Cancel"
	.byte		0
	.4byte		.L727
	.uleb128	2243
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L988
	.4byte		.L989
	.sleb128	4
	.4byte		.L727
	.uleb128	2243
	.uleb128	22
	.byte		"Sequence"
	.byte		0
	.4byte		.L744
	.4byte		.L991
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L987:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L996:
	.sleb128	7
	.4byte		.L993-.L716
	.byte		"Spi_SetAsyncMode"
	.byte		0
	.4byte		.L727
	.uleb128	2312
	.uleb128	32
	.4byte		.L742
	.byte		0x1
	.byte		0x1
	.4byte		.L994
	.4byte		.L995
	.sleb128	4
	.4byte		.L727
	.uleb128	2312
	.uleb128	32
	.byte		"AsyncMode"
	.byte		0
	.4byte		.L997
	.4byte		.L999
.L1000:
	.sleb128	3
	.4byte		.L727
	.uleb128	2317
	.uleb128	36
	.byte		"HWUnit"
	.byte		0
	.4byte		.L734
	.4byte		.L1001
.L1002:
	.sleb128	3
	.4byte		.L727
	.uleb128	2318
	.uleb128	36
	.byte		"Status"
	.byte		0
	.4byte		.L742
	.4byte		.L1003
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L993:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1008:
	.sleb128	7
	.4byte		.L1005-.L716
	.byte		"Spi_SetHWUnitAsyncMode"
	.byte		0
	.4byte		.L727
	.uleb128	2395
	.uleb128	32
	.4byte		.L742
	.byte		0x1
	.byte		0x1
	.4byte		.L1006
	.4byte		.L1007
	.sleb128	4
	.4byte		.L727
	.uleb128	2395
	.uleb128	32
	.byte		"HWUnit"
	.byte		0
	.4byte		.L734
	.4byte		.L1009
	.sleb128	4
	.4byte		.L727
	.uleb128	2395
	.uleb128	32
	.byte		"AsyncMode"
	.byte		0
	.4byte		.L997
	.4byte		.L1010
.L1011:
	.sleb128	3
	.4byte		.L727
	.uleb128	2401
	.uleb128	36
	.byte		"Status"
	.byte		0
	.4byte		.L742
	.4byte		.L1012
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1005:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1017:
	.sleb128	6
	.4byte		.L1014-.L716
	.byte		"Spi_MainFunction_Handling"
	.byte		0
	.4byte		.L727
	.uleb128	2484
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L1015
	.4byte		.L1016
.L1018:
	.sleb128	3
	.4byte		.L727
	.uleb128	2486
	.uleb128	36
	.byte		"HWUnit"
	.byte		0
	.4byte		.L734
	.4byte		.L1019
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1014:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1024:
	.sleb128	5
	.4byte		.L1021-.L716
	.byte		"Spi_ScheduleNextJob"
	.byte		0
	.4byte		.L727
	.uleb128	2517
	.uleb128	29
	.byte		0x1
	.4byte		.L1022
	.4byte		.L1023
	.sleb128	4
	.4byte		.L727
	.uleb128	2517
	.uleb128	29
	.byte		"pHWUnitQueue"
	.byte		0
	.4byte		.L788
	.4byte		.L1025
.L1026:
	.sleb128	3
	.4byte		.L727
	.uleb128	2522
	.uleb128	33
	.byte		"Job"
	.byte		0
	.4byte		.L754
	.4byte		.L1027
.L1028:
	.sleb128	3
	.4byte		.L727
	.uleb128	2523
	.uleb128	50
	.byte		"pJobListHead"
	.byte		0
	.4byte		.L803
	.4byte		.L1029
.L1030:
	.sleb128	3
	.4byte		.L727
	.uleb128	2524
	.uleb128	27
	.byte		"s8Priority"
	.byte		0
	.4byte		.L799
	.4byte		.L1031
.L1032:
	.sleb128	3
	.4byte		.L727
	.uleb128	2525
	.uleb128	27
	.byte		"s8MaxScheduledPriority"
	.byte		0
	.4byte		.L799
	.4byte		.L1033
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1021:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1038:
	.sleb128	6
	.4byte		.L1035-.L716
	.byte		"Spi_JobTransferFinished"
	.byte		0
	.4byte		.L727
	.uleb128	2594
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L1036
	.4byte		.L1037
	.sleb128	4
	.4byte		.L727
	.uleb128	2594
	.uleb128	22
	.byte		"pcJobConfig"
	.byte		0
	.4byte		.L793
	.4byte		.L1039
.L1040:
	.sleb128	3
	.4byte		.L727
	.uleb128	2599
	.uleb128	36
	.byte		"HWUnit"
	.byte		0
	.4byte		.L734
	.4byte		.L1041
.L1042:
	.sleb128	3
	.4byte		.L727
	.uleb128	2600
	.uleb128	54
	.byte		"pHWUnitQueue"
	.byte		0
	.4byte		.L788
	.4byte		.L1043
.L1044:
	.sleb128	3
	.4byte		.L727
	.uleb128	2601
	.uleb128	55
	.byte		"pJobState"
	.byte		0
	.4byte		.L763
	.4byte		.L1045
.L1046:
	.sleb128	3
	.4byte		.L727
	.uleb128	2602
	.uleb128	60
	.byte		"pSequenceState"
	.byte		0
	.4byte		.L768
	.4byte		.L1047
.L1048:
	.sleb128	3
	.4byte		.L727
	.uleb128	2603
	.uleb128	64
	.byte		"pcSequenceConfig"
	.byte		0
	.4byte		.L746
	.4byte		.L1049
.L1050:
	.sleb128	3
	.4byte		.L727
	.uleb128	2604
	.uleb128	53
	.byte		"pcJob"
	.byte		0
	.4byte		.L759
	.4byte		.L1051
.L1052:
	.sleb128	3
	.4byte		.L727
	.uleb128	2605
	.uleb128	33
	.byte		"Job"
	.byte		0
	.4byte		.L754
	.4byte		.L1053
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1035:
	.section	.debug_info,,n
.L1054:
	.sleb128	8
	.4byte		.L1055
	.uleb128	239
	.uleb128	38
	.byte		"Spi_aSpiHWUnitQueueArray"
	.byte		0
	.4byte		.L1056
	.sleb128	5
	.byte		0x3
	.4byte		Spi_aSpiHWUnitQueueArray
	.section	.debug_info,,n
	.section	.debug_info,,n
.L1058:
	.sleb128	9
	.byte		0x1
	.4byte		.L1055
	.uleb128	272
	.uleb128	50
	.byte		"Spi_pcSpiConfigPtr"
	.byte		0
	.4byte		.L819
	.sleb128	5
	.byte		0x3
	.4byte		Spi_pcSpiConfigPtr
	.section	.debug_info,,n
	.section	.debug_info,,n
.L1059:
	.sleb128	9
	.byte		0x1
	.4byte		.L1055
	.uleb128	299
	.uleb128	37
	.byte		"Spi_aSpiSequenceState"
	.byte		0
	.4byte		.L1060
	.sleb128	5
	.byte		0x3
	.4byte		Spi_aSpiSequenceState
	.section	.debug_info,,n
	.section	.debug_info,,n
.L1062:
	.sleb128	9
	.byte		0x1
	.4byte		.L1055
	.uleb128	305
	.uleb128	32
	.byte		"Spi_aSpiJobState"
	.byte		0
	.4byte		.L1063
	.sleb128	5
	.byte		0x3
	.4byte		Spi_aSpiJobState
	.section	.debug_info,,n
.L1065:
	.sleb128	9
	.byte		0x1
	.4byte		.L1055
	.uleb128	311
	.uleb128	36
	.byte		"Spi_aSpiChannelState"
	.byte		0
	.4byte		.L1066
	.sleb128	5
	.byte		0x3
	.4byte		Spi_aSpiChannelState
	.section	.debug_info,,n
.L1068:
	.sleb128	8
	.4byte		.L1055
	.uleb128	341
	.uleb128	29
	.byte		"Spi_au32SpiSeqUsedHWUnits"
	.byte		0
	.4byte		.L1069
	.sleb128	5
	.byte		0x3
	.4byte		Spi_au32SpiSeqUsedHWUnits
	.section	.debug_info,,n
	.section	.debug_info,,n
.L1071:
	.sleb128	8
	.4byte		.L1055
	.uleb128	368
	.uleb128	38
	.byte		"Spi_u32SpiBusySyncHWUnitsStatus"
	.byte		0
	.4byte		.L1072
	.sleb128	5
	.byte		0x3
	.4byte		Spi_u32SpiBusySyncHWUnitsStatus
	.section	.debug_info,,n
	.section	.debug_info,,n
.L790:
	.sleb128	10
	.4byte		.L1073
	.uleb128	495
	.uleb128	1
	.4byte		.L1074-.L2
	.uleb128	24
	.section	.debug_info,,n
.L472:
	.sleb128	11
	.byte		"aScheduledJobsListHead"
	.byte		0
	.4byte		.L1075
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L473:
	.sleb128	11
	.byte		"aScheduledJobsListTail"
	.byte		0
	.4byte		.L1077
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L474:
	.sleb128	11
	.byte		"s8MaxScheduledPriority"
	.byte		0
	.4byte		.L799
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L475:
	.sleb128	11
	.byte		"Status"
	.byte		0
	.4byte		.L728
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L1074:
.L822:
	.sleb128	10
	.4byte		.L1073
	.uleb128	495
	.uleb128	1
	.4byte		.L1079-.L2
	.uleb128	28
.L443:
	.sleb128	11
	.byte		"u16MaxExternalDevice"
	.byte		0
	.4byte		.L755
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L444:
	.sleb128	11
	.byte		"Spi_Max_Channel"
	.byte		0
	.4byte		.L867
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L445:
	.sleb128	11
	.byte		"Spi_Max_Job"
	.byte		0
	.4byte		.L754
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L446:
	.sleb128	11
	.byte		"Spi_Max_Sequence"
	.byte		0
	.4byte		.L744
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L447:
	.sleb128	11
	.byte		"pcChannelConfig"
	.byte		0
	.4byte		.L1080
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L448:
	.sleb128	11
	.byte		"pcJobConfig"
	.byte		0
	.4byte		.L1084
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L449:
	.sleb128	11
	.byte		"pcSequenceConfig"
	.byte		0
	.4byte		.L1088
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L450:
	.sleb128	11
	.byte		"pcAttributesConfig"
	.byte		0
	.4byte		.L1092
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L451:
	.sleb128	11
	.byte		"pcHWUnitConfig"
	.byte		0
	.4byte		.L1096
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
	.sleb128	0
.L1079:
.L1102:
	.sleb128	10
	.4byte		.L1073
	.uleb128	495
	.uleb128	1
	.4byte		.L1103-.L2
	.uleb128	8
.L439:
	.sleb128	11
	.byte		"u8Offset"
	.byte		0
	.4byte		.L735
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L440:
	.sleb128	11
	.byte		"u8NrOfCTAR"
	.byte		0
	.4byte		.L735
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L441:
	.sleb128	11
	.byte		"u8SpiPhyUnitMode"
	.byte		0
	.4byte		.L735
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L442:
	.sleb128	11
	.byte		"u32IsSync"
	.byte		0
	.4byte		.L825
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L1103:
.L840:
	.sleb128	10
	.4byte		.L1073
	.uleb128	495
	.uleb128	1
	.4byte		.L1104-.L2
	.uleb128	16
.L434:
	.sleb128	11
	.byte		"BufferType"
	.byte		0
	.4byte		.L1105
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L435:
	.sleb128	11
	.byte		"DefaultTransmitValue"
	.byte		0
	.4byte		.L871
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L436:
	.sleb128	11
	.byte		"Length"
	.byte		0
	.4byte		.L923
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L437:
	.sleb128	11
	.byte		"pcBufferDescriptor"
	.byte		0
	.4byte		.L1107
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L438:
	.sleb128	11
	.byte		"pChannelState"
	.byte		0
	.4byte		.L878
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L1104:
.L880:
	.sleb128	10
	.4byte		.L1073
	.uleb128	495
	.uleb128	1
	.4byte		.L1110-.L2
	.uleb128	4
.L432:
	.sleb128	11
	.byte		"u8Flags"
	.byte		0
	.4byte		.L735
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L433:
	.sleb128	11
	.byte		"Length"
	.byte		0
	.4byte		.L923
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L1110:
.L1109:
	.sleb128	10
	.4byte		.L1073
	.uleb128	495
	.uleb128	1
	.4byte		.L1111-.L2
	.uleb128	8
.L430:
	.sleb128	11
	.byte		"pBufferTX"
	.byte		0
	.4byte		.L885
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L431:
	.sleb128	11
	.byte		"pBufferRX"
	.byte		0
	.4byte		.L885
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L1111:
.L796:
	.sleb128	10
	.4byte		.L1073
	.uleb128	495
	.uleb128	1
	.4byte		.L1112-.L2
	.uleb128	48
.L420:
	.sleb128	11
	.byte		"NumChannels"
	.byte		0
	.4byte		.L867
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L421:
	.sleb128	11
	.byte		"pcChannelIndexList"
	.byte		0
	.4byte		.L1113
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L422:
	.sleb128	11
	.byte		"pfEndNotification"
	.byte		0
	.4byte		.L1118
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L423:
	.sleb128	11
	.byte		"pfStartNotification"
	.byte		0
	.4byte		.L1118
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L424:
	.sleb128	11
	.byte		"s8Priority"
	.byte		0
	.4byte		.L799
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L425:
	.sleb128	11
	.byte		"pJobState"
	.byte		0
	.4byte		.L763
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L426:
	.sleb128	11
	.byte		"HWUnit"
	.byte		0
	.4byte		.L734
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L427:
	.sleb128	11
	.byte		"u32HWoffset"
	.byte		0
	.4byte		.L825
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L428:
	.sleb128	11
	.byte		"ExternalDevice"
	.byte		0
	.4byte		.L1122
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L429:
	.sleb128	11
	.byte		"ExternalDeviceAttrs"
	.byte		0
	.4byte		.L1123
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
	.sleb128	0
.L1112:
.L765:
	.sleb128	10
	.4byte		.L1073
	.uleb128	495
	.uleb128	1
	.4byte		.L1125-.L2
	.uleb128	12
.L417:
	.sleb128	11
	.byte		"Result"
	.byte		0
	.4byte		.L950
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L418:
	.sleb128	11
	.byte		"pAsyncCrtSequenceState"
	.byte		0
	.4byte		.L768
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L419:
	.sleb128	11
	.byte		"AsyncNextJob"
	.byte		0
	.4byte		.L754
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L1125:
.L770:
	.sleb128	10
	.4byte		.L1073
	.uleb128	495
	.uleb128	1
	.4byte		.L1126-.L2
	.uleb128	16
.L413:
	.sleb128	11
	.byte		"Result"
	.byte		0
	.4byte		.L960
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L414:
	.sleb128	11
	.byte		"pcSequence"
	.byte		0
	.4byte		.L746
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L415:
	.sleb128	11
	.byte		"pcCurrentJobIndexPointer"
	.byte		0
	.4byte		.L759
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L416:
	.sleb128	11
	.byte		"RemainingJobs"
	.byte		0
	.4byte		.L754
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L1126:
.L749:
	.sleb128	10
	.4byte		.L1073
	.uleb128	495
	.uleb128	1
	.4byte		.L1127-.L2
	.uleb128	16
.L409:
	.sleb128	11
	.byte		"NumJobs"
	.byte		0
	.4byte		.L754
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L410:
	.sleb128	11
	.byte		"pcJobIndexList"
	.byte		0
	.4byte		.L1128
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L411:
	.sleb128	11
	.byte		"pfEndNotification"
	.byte		0
	.4byte		.L1118
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L412:
	.sleb128	11
	.byte		"u8Interruptible"
	.byte		0
	.4byte		.L735
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L1127:
.L1095:
	.sleb128	10
	.4byte		.L1132
	.uleb128	34
	.uleb128	14
	.4byte		.L1133-.L2
	.uleb128	8
.L407:
	.sleb128	11
	.byte		"pcChannelAttributesConfig"
	.byte		0
	.4byte		.L1134
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L408:
	.sleb128	11
	.byte		"pcDeviceAttributesConfig"
	.byte		0
	.4byte		.L1141
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L1133:
.L1124:
	.sleb128	10
	.4byte		.L1132
	.uleb128	34
	.uleb128	14
	.4byte		.L1146-.L2
	.uleb128	12
.L404:
	.sleb128	11
	.byte		"u32CTAR"
	.byte		0
	.4byte		.L825
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L405:
	.sleb128	11
	.byte		"u32CMD"
	.byte		0
	.4byte		.L825
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L406:
	.sleb128	11
	.byte		"u32MCR"
	.byte		0
	.4byte		.L825
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L1146:
.L1140:
	.sleb128	10
	.4byte		.L1132
	.uleb128	34
	.uleb128	14
	.4byte		.L1147-.L2
	.uleb128	8
.L402:
	.sleb128	11
	.byte		"u32CMD"
	.byte		0
	.4byte		.L825
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L403:
	.sleb128	11
	.byte		"u8DataWidth"
	.byte		0
	.4byte		.L735
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L1147:
.L812:
	.sleb128	10
	.4byte		.L1148
	.uleb128	3719
	.uleb128	5
	.4byte		.L1149-.L2
	.uleb128	8
.L228:
	.sleb128	11
	.byte		"vendorID"
	.byte		0
	.4byte		.L755
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L229:
	.sleb128	11
	.byte		"moduleID"
	.byte		0
	.4byte		.L755
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L230:
	.sleb128	11
	.byte		"sw_major_version"
	.byte		0
	.4byte		.L735
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L231:
	.sleb128	11
	.byte		"sw_minor_version"
	.byte		0
	.4byte		.L735
	.sleb128	2
	.byte		0x23
	.uleb128	5
	.byte		0x1
.L232:
	.sleb128	11
	.byte		"sw_patch_version"
	.byte		0
	.4byte		.L735
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
	.sleb128	0
.L1149:
	.section	.debug_info,,n
.L998:
	.sleb128	12
	.4byte		.L1073
	.uleb128	467
	.uleb128	1
	.4byte		.L1150-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	13
	.byte		"SPI_POLLING_MODE"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"SPI_INTERRUPT_MODE"
	.byte		0
	.sleb128	1
	.sleb128	0
.L1150:
.L1106:
	.sleb128	12
	.4byte		.L1073
	.uleb128	451
	.uleb128	1
	.4byte		.L1151-.L2
	.uleb128	4
	.sleb128	13
	.byte		"IB"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"EB"
	.byte		0
	.sleb128	1
	.sleb128	0
.L1151:
.L961:
	.sleb128	12
	.4byte		.L1073
	.uleb128	439
	.uleb128	1
	.4byte		.L1152-.L2
	.uleb128	4
	.sleb128	13
	.byte		"SPI_SEQ_OK"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"SPI_SEQ_PENDING"
	.byte		0
	.sleb128	1
	.sleb128	13
	.byte		"SPI_SEQ_FAILED"
	.byte		0
	.sleb128	2
	.sleb128	13
	.byte		"SPI_SEQ_CANCELLED"
	.byte		0
	.sleb128	3
	.sleb128	0
.L1152:
.L951:
	.sleb128	12
	.4byte		.L1073
	.uleb128	425
	.uleb128	1
	.4byte		.L1153-.L2
	.uleb128	4
	.sleb128	13
	.byte		"SPI_JOB_OK"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"SPI_JOB_PENDING"
	.byte		0
	.sleb128	1
	.sleb128	13
	.byte		"SPI_JOB_FAILED"
	.byte		0
	.sleb128	2
	.sleb128	13
	.byte		"SPI_JOB_QUEUED"
	.byte		0
	.sleb128	3
	.sleb128	0
.L1153:
.L729:
	.sleb128	12
	.4byte		.L1073
	.uleb128	413
	.uleb128	1
	.4byte		.L1154-.L2
	.uleb128	4
	.sleb128	13
	.byte		"SPI_UNINIT"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"SPI_IDLE"
	.byte		0
	.sleb128	1
	.sleb128	13
	.byte		"SPI_BUSY"
	.byte		0
	.sleb128	2
	.sleb128	0
.L1154:
	.section	.debug_info,,n
.L728:
	.sleb128	14
	.byte		"Spi_StatusType"
	.byte		0
	.4byte		.L729
	.section	.debug_info,,n
.L736:
	.sleb128	15
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L735:
	.sleb128	14
	.byte		"uint8"
	.byte		0
	.4byte		.L736
.L734:
	.sleb128	14
	.byte		"Spi_HWUnitType"
	.byte		0
	.4byte		.L735
.L742:
	.sleb128	14
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L735
.L744:
	.sleb128	14
	.byte		"Spi_SequenceType"
	.byte		0
	.4byte		.L735
.L748:
	.sleb128	14
	.byte		"Spi_SequenceConfigType"
	.byte		0
	.4byte		.L749
	.section	.debug_info,,n
.L747:
	.sleb128	16
	.4byte		.L748
	.section	.debug_info,,n
.L746:
	.sleb128	17
	.4byte		.L747
.L756:
	.sleb128	15
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L755:
	.sleb128	14
	.byte		"uint16"
	.byte		0
	.4byte		.L756
.L754:
	.sleb128	14
	.byte		"Spi_JobType"
	.byte		0
	.4byte		.L755
.L760:
	.sleb128	16
	.4byte		.L754
.L759:
	.sleb128	17
	.4byte		.L760
.L764:
	.sleb128	14
	.byte		"Spi_JobStateType"
	.byte		0
	.4byte		.L765
.L763:
	.sleb128	17
	.4byte		.L764
.L769:
	.sleb128	14
	.byte		"Spi_SequenceStateType"
	.byte		0
	.4byte		.L770
.L768:
	.sleb128	17
	.4byte		.L769
.L789:
	.sleb128	14
	.byte		"Spi_HWUnitQueue"
	.byte		0
	.4byte		.L790
.L788:
	.sleb128	17
	.4byte		.L789
.L795:
	.sleb128	14
	.byte		"Spi_JobConfigType"
	.byte		0
	.4byte		.L796
.L794:
	.sleb128	16
	.4byte		.L795
.L793:
	.sleb128	17
	.4byte		.L794
.L800:
	.sleb128	15
	.byte		"signed char"
	.byte		0
	.byte		0x6
	.byte		0x1
.L799:
	.sleb128	14
	.byte		"sint8"
	.byte		0
	.4byte		.L800
.L803:
	.sleb128	17
	.4byte		.L754
.L811:
	.sleb128	14
	.byte		"Std_VersionInfoType"
	.byte		0
	.4byte		.L812
.L810:
	.sleb128	17
	.4byte		.L811
.L821:
	.sleb128	14
	.byte		"Spi_ConfigType"
	.byte		0
	.4byte		.L822
.L820:
	.sleb128	16
	.4byte		.L821
.L819:
	.sleb128	17
	.4byte		.L820
.L826:
	.sleb128	15
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L825:
	.sleb128	14
	.byte		"uint32"
	.byte		0
	.4byte		.L826
.L839:
	.sleb128	14
	.byte		"Spi_ChannelConfigType"
	.byte		0
	.4byte		.L840
.L838:
	.sleb128	16
	.4byte		.L839
.L837:
	.sleb128	17
	.4byte		.L838
.L867:
	.sleb128	14
	.byte		"Spi_ChannelType"
	.byte		0
	.4byte		.L735
.L871:
	.sleb128	14
	.byte		"Spi_DataType"
	.byte		0
	.4byte		.L735
.L870:
	.sleb128	16
	.4byte		.L871
.L869:
	.sleb128	17
	.4byte		.L870
.L879:
	.sleb128	14
	.byte		"Spi_ChannelStateType"
	.byte		0
	.4byte		.L880
.L878:
	.sleb128	17
	.4byte		.L879
.L885:
	.sleb128	17
	.4byte		.L871
.L923:
	.sleb128	14
	.byte		"Spi_NumberOfDataType"
	.byte		0
	.4byte		.L755
.L950:
	.sleb128	14
	.byte		"Spi_JobResultType"
	.byte		0
	.4byte		.L951
.L960:
	.sleb128	14
	.byte		"Spi_SeqResultType"
	.byte		0
	.4byte		.L961
.L997:
	.sleb128	14
	.byte		"Spi_AsyncModeType"
	.byte		0
	.4byte		.L998
	.section	.debug_info,,n
.L1056:
	.sleb128	18
	.4byte		.L1057-.L2
	.4byte		.L789
	.section	.debug_info,,n
	.sleb128	19
	.uleb128	4
	.sleb128	0
.L1057:
.L1060:
	.sleb128	18
	.4byte		.L1061-.L2
	.4byte		.L769
	.sleb128	19
	.uleb128	5
	.sleb128	0
.L1061:
.L1063:
	.sleb128	18
	.4byte		.L1064-.L2
	.4byte		.L764
	.sleb128	19
	.uleb128	5
	.sleb128	0
.L1064:
.L1066:
	.sleb128	18
	.4byte		.L1067-.L2
	.4byte		.L879
	.sleb128	19
	.uleb128	5
	.sleb128	0
.L1067:
.L1069:
	.sleb128	18
	.4byte		.L1070-.L2
	.4byte		.L825
	.sleb128	19
	.uleb128	5
	.sleb128	0
.L1070:
	.section	.debug_info,,n
.L1072:
	.sleb128	20
	.4byte		.L825
.L1075:
	.sleb128	18
	.4byte		.L1076-.L2
	.4byte		.L754
	.sleb128	19
	.uleb128	3
	.sleb128	0
.L1076:
.L1077:
	.sleb128	18
	.4byte		.L1078-.L2
	.4byte		.L754
	.sleb128	19
	.uleb128	3
	.sleb128	0
.L1078:
.L1082:
	.sleb128	18
	.4byte		.L1083-.L2
	.4byte		.L838
	.section	.debug_info,,n
	.sleb128	21
	.sleb128	0
.L1083:
.L1081:
	.sleb128	17
	.4byte		.L1082
.L1080:
	.sleb128	16
	.4byte		.L1081
.L1086:
	.sleb128	18
	.4byte		.L1087-.L2
	.4byte		.L794
	.sleb128	21
	.sleb128	0
.L1087:
.L1085:
	.sleb128	17
	.4byte		.L1086
.L1084:
	.sleb128	16
	.4byte		.L1085
.L1090:
	.sleb128	18
	.4byte		.L1091-.L2
	.4byte		.L747
	.sleb128	21
	.sleb128	0
.L1091:
.L1089:
	.sleb128	17
	.4byte		.L1090
.L1088:
	.sleb128	16
	.4byte		.L1089
.L1094:
	.sleb128	14
	.byte		"Spi_AttributesConfigType"
	.byte		0
	.4byte		.L1095
.L1093:
	.sleb128	16
	.4byte		.L1094
.L1092:
	.sleb128	17
	.4byte		.L1093
.L1101:
	.sleb128	14
	.byte		"Spi_HWUnitConfigType"
	.byte		0
	.4byte		.L1102
.L1100:
	.sleb128	16
	.4byte		.L1101
.L1098:
	.sleb128	18
	.4byte		.L1099-.L2
	.4byte		.L1100
	.sleb128	21
	.sleb128	0
.L1099:
.L1097:
	.sleb128	17
	.4byte		.L1098
.L1096:
	.sleb128	16
	.4byte		.L1097
.L1105:
	.sleb128	14
	.byte		"Spi_BufferType"
	.byte		0
	.4byte		.L1106
.L1108:
	.sleb128	14
	.byte		"Spi_BufferDescriptorType"
	.byte		0
	.4byte		.L1109
.L1107:
	.sleb128	17
	.4byte		.L1108
.L1117:
	.sleb128	16
	.4byte		.L867
.L1115:
	.sleb128	18
	.4byte		.L1116-.L2
	.4byte		.L1117
	.sleb128	21
	.sleb128	0
.L1116:
.L1114:
	.sleb128	17
	.4byte		.L1115
.L1113:
	.sleb128	16
	.4byte		.L1114
	.section	.debug_info,,n
.L1120:
	.sleb128	22
	.4byte		.L1121-.L2
	.byte		0x1
	.sleb128	0
.L1121:
.L1119:
	.sleb128	14
	.byte		"Spi_NotifyType"
	.byte		0
	.4byte		.L1120
.L1118:
	.sleb128	17
	.4byte		.L1119
.L1122:
	.sleb128	14
	.byte		"Spi_ExternalDeviceType"
	.byte		0
	.4byte		.L735
.L1123:
	.sleb128	14
	.byte		"Spi_Ipw_DeviceAttributesConfigType"
	.byte		0
	.4byte		.L1124
.L1130:
	.sleb128	18
	.4byte		.L1131-.L2
	.4byte		.L760
	.sleb128	21
	.sleb128	0
.L1131:
.L1129:
	.sleb128	17
	.4byte		.L1130
.L1128:
	.sleb128	16
	.4byte		.L1129
.L1139:
	.sleb128	14
	.byte		"Spi_Ipw_ChannelAttributesConfigType"
	.byte		0
	.4byte		.L1140
.L1138:
	.sleb128	16
	.4byte		.L1139
.L1136:
	.sleb128	18
	.4byte		.L1137-.L2
	.4byte		.L1138
	.sleb128	21
	.sleb128	0
.L1137:
.L1135:
	.sleb128	17
	.4byte		.L1136
.L1134:
	.sleb128	16
	.4byte		.L1135
.L1145:
	.sleb128	16
	.4byte		.L1123
.L1143:
	.sleb128	18
	.4byte		.L1144-.L2
	.4byte		.L1145
	.sleb128	21
	.sleb128	0
.L1144:
.L1142:
	.sleb128	17
	.4byte		.L1143
.L1141:
	.sleb128	16
	.4byte		.L1142
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L721:
	.sleb128	0
.L717:

	.section	.debug_loc,,n
	.align	0
.L732:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locend
.L737:
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),4
	.d2locend
.L745:
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),3
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),31
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),31
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo12),31
	.d2locend
.L750:
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),4
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),30
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo13),30
	.d2locend
.L752:
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo15),29
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo17),29
	.d2locend
.L757:
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo8),28
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo13),28
	.d2locend
.L761:
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo8),27
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo13),27
	.d2locend
.L766:
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo21),4
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo10),4
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo23),3
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo25),3
	.d2locreg	%offsetof(.Llo26), %offsetof(.Llo15),3
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo28),3
	.d2locend
.L771:
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo15),4
	.d2locreg	%offsetof(.Llo30), %offsetof(.Llo28),4
	.d2locreg	%offsetof(.Llo31), %offsetof(.Llo13),4
	.d2locend
.L777:
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo33),3
	.d2locend
.L778:
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo33),4
	.d2locreg	%offsetof(.Llo34), %offsetof(.Llo35),30
	.d2locend
.L780:
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo35),29
	.d2locend
.L782:
	.d2locreg	%offsetof(.Llo36), %offsetof(.Llo35),31
	.d2locend
.L791:
	.d2locreg	%offsetof(.Llo37), %offsetof(.Llo38),3
	.d2locreg	%offsetof(.Llo39), %offsetof(.Llo40),31
	.d2locend
.L792:
	.d2locreg	%offsetof(.Llo37), %offsetof(.Llo41),4
	.d2locreg	%offsetof(.Llo42), %offsetof(.Llo43),29
	.d2locreg	%offsetof(.Llo44), %offsetof(.Llo45),29
	.d2locend
.L797:
	.d2locreg	%offsetof(.Llo37), %offsetof(.Llo41),5
	.d2locreg	%offsetof(.Llo46), %offsetof(.Llo47),30
	.d2locend
.L801:
	.d2locreg	%offsetof(.Llo48), %offsetof(.Llo49),5
	.d2locend
.L804:
	.d2locreg	%offsetof(.Llo50), %offsetof(.Llo47),4
	.d2locreg	%offsetof(.Llo51), %offsetof(.Llo52),3
	.d2locend
.L813:
	.d2locreg	%offsetof(.Llo53), %offsetof(.Llo54),3
	.d2locreg	%offsetof(.Llo55), %offsetof(.Llo56),4
	.d2locend
.L823:
	.d2locreg	%offsetof(.Llo57), %offsetof(.Llo58),3
	.d2locend
.L827:
	.d2locreg	%offsetof(.Llo59), %offsetof(.Llo60),0
	.d2locreg	%offsetof(.Llo58), %offsetof(.Llo61),3
	.d2locreg	%offsetof(.Llo62), %offsetof(.Llo63),0
	.d2locreg	%offsetof(.Llo64), %offsetof(.Llo65),0
	.d2locreg	%offsetof(.Llo66), %offsetof(.Llo67),0
	.d2locreg	%offsetof(.Llo68), %offsetof(.Llo69),0
	.d2locreg	%offsetof(.Llo70), %offsetof(.Llo71),0
	.d2locreg	%offsetof(.Llo72), %offsetof(.Llo73),0
	.d2locreg	%offsetof(.Llo74), %offsetof(.Llo75),0
	.d2locreg	%offsetof(.Llo76), %offsetof(.Llo77),0
	.d2locend
.L829:
	.d2locreg	%offsetof(.Llo78), %offsetof(.Llo79),5
	.d2locreg	%offsetof(.Llo80), %offsetof(.Llo81),5
	.d2locreg	%offsetof(.Llo82), %offsetof(.Llo83),5
	.d2locreg	%offsetof(.Llo84), %offsetof(.Llo65),3
	.d2locreg	%offsetof(.Llo85), %offsetof(.Llo86),5
	.d2locreg	%offsetof(.Llo87), %offsetof(.Llo73),5
	.d2locreg	%offsetof(.Llo88), %offsetof(.Llo75),5
	.d2locreg	%offsetof(.Llo89), %offsetof(.Llo90),5
	.d2locend
.L831:
	.d2locreg	%offsetof(.Llo91), %offsetof(.Llo92),4
	.d2locreg	%offsetof(.Llo93), %offsetof(.Llo58),4
	.d2locreg	%offsetof(.Llo94), %offsetof(.Llo95),4
	.d2locreg	%offsetof(.Llo96), %offsetof(.Llo97),4
	.d2locreg	%offsetof(.Llo98), %offsetof(.Llo63),4
	.d2locreg	%offsetof(.Llo99), %offsetof(.Llo65),4
	.d2locreg	%offsetof(.Llo100), %offsetof(.Llo101),3
	.d2locreg	%offsetof(.Llo102), %offsetof(.Llo103),3
	.d2locreg	%offsetof(.Llo104), %offsetof(.Llo105),4
	.d2locreg	%offsetof(.Llo106), %offsetof(.Llo75),4
	.d2locreg	%offsetof(.Llo107), %offsetof(.Llo90),4
	.d2locend
.L833:
	.d2locreg	%offsetof(.Llo101), %offsetof(.Llo108),31
	.d2locreg	%offsetof(.Llo109), %offsetof(.Llo90),31
	.d2locend
.L835:
	.d2locreg	%offsetof(.Llo110), %offsetof(.Llo75),3
	.d2locreg	%offsetof(.Llo111), %offsetof(.Llo90),3
	.d2locend
.L841:
	.d2locreg	%offsetof(.Llo97), %offsetof(.Llo112),4
	.d2locreg	%offsetof(.Llo113), %offsetof(.Llo61),4
	.d2locend
.L843:
	.d2locreg	%offsetof(.Llo69), %offsetof(.Llo114),0
	.d2locend
.L850:
	.d2locreg	%offsetof(.Llo115), %offsetof(.Llo116),3
	.d2locend
.L852:
	.d2locreg	%offsetof(.Llo117), %offsetof(.Llo118),4
	.d2locend
.L859:
	.d2locreg	%offsetof(.Llo119), %offsetof(.Llo120),31
	.d2locend
.L861:
	.d2locreg	%offsetof(.Llo121), %offsetof(.Llo122),30
	.d2locend
.L868:
	.d2locreg	%offsetof(.Llo123), %offsetof(.Llo124),3
	.d2locreg	%offsetof(.Llo125), %offsetof(.Llo126),0
	.d2locreg	%offsetof(.Llo127), %offsetof(.Llo128),0
	.d2locreg	%offsetof(.Llo129), %offsetof(.Llo130),0
	.d2locreg	%offsetof(.Llo131), %offsetof(.Llo132),0
	.d2locreg	%offsetof(.Llo133), %offsetof(.Llo134),0
	.d2locreg	%offsetof(.Llo135), %offsetof(.Llo136),0
	.d2locend
.L872:
	.d2locreg	%offsetof(.Llo123), %offsetof(.Llo137),4
	.d2locreg	%offsetof(.Llo128), %offsetof(.Llo130),31
	.d2locreg	%offsetof(.Llo138), %offsetof(.Llo139),31
	.d2locend
.L874:
	.d2locreg	%offsetof(.Llo140), %offsetof(.Llo141),3
	.d2locend
.L876:
	.d2locreg	%offsetof(.Llo142), %offsetof(.Llo136),4
	.d2locend
.L881:
	.d2locreg	%offsetof(.Llo143), %offsetof(.Llo144),4
	.d2locreg	%offsetof(.Llo128), %offsetof(.Llo136),5
	.d2locend
.L883:
	.d2locreg	%offsetof(.Llo145), %offsetof(.Llo146),6
	.d2locreg	%offsetof(.Llo128), %offsetof(.Llo136),6
	.d2locend
.L886:
	.d2locreg	%offsetof(.Llo147), %offsetof(.Llo136),7
	.d2locend
.L888:
	.d2locreg	%offsetof(.Llo125), %offsetof(.Llo130),31
	.d2locreg	%offsetof(.Llo138), %offsetof(.Llo136),31
	.d2locend
.L894:
	.d2locreg	%offsetof(.Llo148), %offsetof(.Llo149),3
	.d2locreg	%offsetof(.Llo150), %offsetof(.Llo151),31
	.d2locreg	%offsetof(.Llo152), %offsetof(.Llo153),31
	.d2locend
.L896:
	.d2locreg	%offsetof(.Llo154), %offsetof(.Llo151),3
	.d2locreg	%offsetof(.Llo155), %offsetof(.Llo156),30
	.d2locend
.L898:
	.d2locreg	%offsetof(.Llo157), %offsetof(.Llo158),29
	.d2locend
.L900:
	.d2locreg	%offsetof(.Llo150), %offsetof(.Llo159),4
	.d2locreg	%offsetof(.Llo153), %offsetof(.Llo160),3
	.d2locreg	%offsetof(.Llo161), %offsetof(.Llo162),3
	.d2locreg	%offsetof(.Llo163), %offsetof(.Llo164),3
	.d2locend
.L902:
	.d2locreg	%offsetof(.Llo165), %offsetof(.Llo166),0
	.d2locreg	%offsetof(.Llo167), %offsetof(.Llo168),0
	.d2locreg	%offsetof(.Llo169), %offsetof(.Llo153),0
	.d2locreg	%offsetof(.Llo170), %offsetof(.Llo171),0
	.d2locreg	%offsetof(.Llo172), %offsetof(.Llo173),0
	.d2locreg	%offsetof(.Llo174), %offsetof(.Llo175),0
	.d2locreg	%offsetof(.Llo176), %offsetof(.Llo158),0
	.d2locend
.L904:
	.d2locreg	%offsetof(.Llo148), %offsetof(.Llo177),28
	.d2locreg	%offsetof(.Llo157), %offsetof(.Llo178),3
	.d2locreg	%offsetof(.Llo165), %offsetof(.Llo158),28
	.d2locend
.L906:
	.d2locreg	%offsetof(.Llo179), %offsetof(.Llo153),3
	.d2locend
.L908:
	.d2locreg	%offsetof(.Llo168), %offsetof(.Llo180),0
	.d2locreg	%offsetof(.Llo181), %offsetof(.Llo182),5
	.d2locreg	%offsetof(.Llo183), %offsetof(.Llo163),3
	.d2locreg	%offsetof(.Llo164), %offsetof(.Llo184),5
	.d2locend
.L910:
	.d2locreg	%offsetof(.Llo185), %offsetof(.Llo158),4
	.d2locend
.L912:
	.d2locreg	%offsetof(.Llo186), %offsetof(.Llo171),5
	.d2locreg	%offsetof(.Llo187), %offsetof(.Llo188),5
	.d2locreg	%offsetof(.Llo189), %offsetof(.Llo160),5
	.d2locend
.L918:
	.d2locreg	%offsetof(.Llo190), %offsetof(.Llo191),3
	.d2locreg	%offsetof(.Llo192), %offsetof(.Llo193),0
	.d2locreg	%offsetof(.Llo194), %offsetof(.Llo195),0
	.d2locreg	%offsetof(.Llo196), %offsetof(.Llo197),0
	.d2locreg	%offsetof(.Llo198), %offsetof(.Llo199),0
	.d2locend
.L919:
	.d2locreg	%offsetof(.Llo190), %offsetof(.Llo200),4
	.d2locreg	%offsetof(.Llo195), %offsetof(.Llo201),7
	.d2locreg	%offsetof(.Llo202), %offsetof(.Llo203),7
	.d2locend
.L921:
	.d2locreg	%offsetof(.Llo191), %offsetof(.Llo204),3
	.d2locend
.L924:
	.d2locreg	%offsetof(.Llo205), %offsetof(.Llo199),4
	.d2locend
.L926:
	.d2locreg	%offsetof(.Llo192), %offsetof(.Llo206),5
	.d2locreg	%offsetof(.Llo195), %offsetof(.Llo199),5
	.d2locend
.L928:
	.d2locreg	%offsetof(.Llo207), %offsetof(.Llo199),6
	.d2locend
.L930:
	.d2locreg	%offsetof(.Llo208), %offsetof(.Llo201),7
	.d2locreg	%offsetof(.Llo202), %offsetof(.Llo199),7
	.d2locend
.L936:
	.d2locreg	%offsetof(.Llo209), %offsetof(.Llo210),3
	.d2locreg	%offsetof(.Llo211), %offsetof(.Llo212),3
	.d2locreg	%offsetof(.Llo213), %offsetof(.Llo214),3
	.d2locend
.L937:
	.d2locreg	%offsetof(.Llo209), %offsetof(.Llo214),4
	.d2locend
.L938:
	.d2locreg	%offsetof(.Llo209), %offsetof(.Llo215),5
	.d2locend
.L939:
	.d2locreg	%offsetof(.Llo209), %offsetof(.Llo216),6
	.d2locreg	%offsetof(.Llo212), %offsetof(.Llo214),0
	.d2locreg	%offsetof(.Llo217), %offsetof(.Llo218),0
	.d2locreg	%offsetof(.Llo219), %offsetof(.Llo220),0
	.d2locreg	%offsetof(.Llo221), %offsetof(.Llo222),0
	.d2locreg	%offsetof(.Llo223), %offsetof(.Llo224),0
	.d2locend
.L941:
	.d2locreg	%offsetof(.Llo225), %offsetof(.Llo226),0
	.d2locreg	%offsetof(.Llo216), %offsetof(.Llo227),6
	.d2locend
.L943:
	.d2locreg	%offsetof(.Llo228), %offsetof(.Llo229),7
	.d2locreg	%offsetof(.Llo212), %offsetof(.Llo224),31
	.d2locend
.L945:
	.d2locreg	%offsetof(.Llo209), %offsetof(.Llo230),31
	.d2locreg	%offsetof(.Llo229), %offsetof(.Llo231),7
	.d2locreg	%offsetof(.Llo212), %offsetof(.Llo214),7
	.d2locend
.L953:
	.d2locreg	%offsetof(.Llo232), %offsetof(.Llo233),3
	.d2locend
.L955:
	.d2locreg	%offsetof(.Llo233), %offsetof(.Llo234),3
	.d2locend
.L963:
	.d2locreg	%offsetof(.Llo235), %offsetof(.Llo236),3
	.d2locend
.L965:
	.d2locreg	%offsetof(.Llo236), %offsetof(.Llo237),3
	.d2locend
.L971:
	.d2locreg	%offsetof(.Llo238), %offsetof(.Llo239),3
	.d2locreg	%offsetof(.Llo240), %offsetof(.Llo241),30
	.d2locreg	%offsetof(.Llo242), %offsetof(.Llo243),30
	.d2locend
.L973:
	.d2locreg	%offsetof(.Llo244), %offsetof(.Llo245),31
	.d2locreg	%offsetof(.Llo246), %offsetof(.Llo247),3
	.d2locreg	%offsetof(.Llo248), %offsetof(.Llo249),31
	.d2locend
.L975:
	.d2locreg	%offsetof(.Llo250), %offsetof(.Llo240),0
	.d2locreg	%offsetof(.Llo251), %offsetof(.Llo252),0
	.d2locreg	%offsetof(.Llo253), %offsetof(.Llo242),30
	.d2locreg	%offsetof(.Llo246), %offsetof(.Llo254),0
	.d2locreg	%offsetof(.Llo255), %offsetof(.Llo243),3
	.d2locreg	%offsetof(.Llo256), %offsetof(.Llo257),30
	.d2locend
.L977:
	.d2locreg	%offsetof(.Llo238), %offsetof(.Llo258),29
	.d2locend
.L983:
	.d2locreg	%offsetof(.Llo259), %offsetof(.Llo260),3
	.d2locend
.L985:
	.d2locreg	%offsetof(.Llo260), %offsetof(.Llo261),3
	.d2locend
.L991:
	.d2locreg	%offsetof(.Llo262), %offsetof(.Llo263),3
	.d2locend
.L999:
	.d2locreg	%offsetof(.Llo264), %offsetof(.Llo265),3
	.d2locreg	%offsetof(.Llo266), %offsetof(.Llo267),31
	.d2locend
.L1001:
	.d2locreg	%offsetof(.Llo268), %offsetof(.Llo267),30
	.d2locend
.L1003:
	.d2locreg	%offsetof(.Llo264), %offsetof(.Llo269),29
	.d2locend
.L1009:
	.d2locreg	%offsetof(.Llo270), %offsetof(.Llo271),3
	.d2locend
.L1010:
	.d2locreg	%offsetof(.Llo270), %offsetof(.Llo272),4
	.d2locreg	%offsetof(.Llo271), %offsetof(.Llo273),4
	.d2locend
.L1012:
	.d2locreg	%offsetof(.Llo270), %offsetof(.Llo274),31
	.d2locend
.L1019:
	.d2locreg	%offsetof(.Llo275), %offsetof(.Llo276),31
	.d2locend
.L1025:
	.d2locreg	%offsetof(.Llo277), %offsetof(.Llo278),3
	.d2locreg	%offsetof(.Llo279), %offsetof(.Llo280),31
	.d2locend
.L1027:
	.d2locreg	%offsetof(.Llo281), %offsetof(.Llo282),30
	.d2locreg	%offsetof(.Llo283), %offsetof(.Llo280),30
	.d2locend
.L1029:
	.d2locreg	%offsetof(.Llo284), %offsetof(.Llo285),3
	.d2locreg	%offsetof(.Llo286), %offsetof(.Llo287),3
	.d2locreg	%offsetof(.Llo288), %offsetof(.Llo289),3
	.d2locreg	%offsetof(.Llo290), %offsetof(.Llo291),3
	.d2locend
.L1031:
	.d2locreg	%offsetof(.Llo292), %offsetof(.Llo282),29
	.d2locend
.L1033:
	.d2locreg	%offsetof(.Llo277), %offsetof(.Llo292),29
	.d2locreg	%offsetof(.Llo282), %offsetof(.Llo280),29
	.d2locend
.L1039:
	.d2locreg	%offsetof(.Llo293), %offsetof(.Llo294),3
	.d2locreg	%offsetof(.Llo295), %offsetof(.Llo296),4
	.d2locreg	%offsetof(.Llo297), %offsetof(.Llo298),5
	.d2locreg	%offsetof(.Llo299), %offsetof(.Llo300),0
	.d2locreg	%offsetof(.Llo301), %offsetof(.Llo302),5
	.d2locreg	%offsetof(.Llo303), %offsetof(.Llo304),5
	.d2locend
.L1041:
	.d2locreg	%offsetof(.Llo295), %offsetof(.Llo305),31
	.d2locreg	%offsetof(.Llo306), %offsetof(.Llo307),31
	.d2locreg	%offsetof(.Llo298), %offsetof(.Llo301),31
	.d2locend
.L1043:
	.d2locreg	%offsetof(.Llo308), %offsetof(.Llo309),0
	.d2locreg	%offsetof(.Llo310), %offsetof(.Llo304),30
	.d2locend
.L1045:
	.d2locreg	%offsetof(.Llo311), %offsetof(.Llo310),3
	.d2locreg	%offsetof(.Llo312), %offsetof(.Llo313),3
	.d2locend
.L1047:
	.d2locreg	%offsetof(.Llo314), %offsetof(.Llo305),29
	.d2locreg	%offsetof(.Llo306), %offsetof(.Llo307),29
	.d2locreg	%offsetof(.Llo315), %offsetof(.Llo301),29
	.d2locend
.L1049:
	.d2locreg	%offsetof(.Llo316), %offsetof(.Llo301),28
	.d2locend
.L1051:
	.d2locreg	%offsetof(.Llo312), %offsetof(.Llo301),3
	.d2locreg	%offsetof(.Llo317), %offsetof(.Llo318),3
	.d2locreg	%offsetof(.Llo319), %offsetof(.Llo320),3
	.d2locend
.L1053:
	.d2locreg	%offsetof(.Llo321), %offsetof(.Llo301),4
	.d2locreg	%offsetof(.Llo318), %offsetof(.Llo322),4
	.d2locreg	%offsetof(.Llo303), %offsetof(.Llo323),4
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "Spi_JobTransferFinished"
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nstrlist "calls", "Spi_Dspi_JobTransfer","Spi_ScheduleJob","Spi_ScheduleNextJob","Spi_UnlockRemainingJobs"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Spi_ScheduleNextJob"
	.wrcm.nstrlist "calls", "SchM_Enter_Spi_SPI_EXCLUSIVE_AREA_04","SchM_Exit_Spi_SPI_EXCLUSIVE_AREA_04","Spi_Dspi_JobTransfer"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Spi_MainFunction_Handling"
	.wrcm.nstrlist "calls", "Spi_Dspi_IrqPoll"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Spi_SetHWUnitAsyncMode"
	.wrcm.nstrlist "calls", "Spi_Dspi_IrqConfig"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Spi_SetAsyncMode"
	.wrcm.nstrlist "calls", "Spi_Dspi_IrqConfig","Spi_GetAsyncStatus"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Spi_Cancel"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Spi_GetHWUnitStatus"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Spi_SyncTransmit"
	.wrcm.nstrlist "calls", "SchM_Enter_Spi_SPI_EXCLUSIVE_AREA_01","SchM_Enter_Spi_SPI_EXCLUSIVE_AREA_02","SchM_Exit_Spi_SPI_EXCLUSIVE_AREA_01","SchM_Exit_Spi_SPI_EXCLUSIVE_AREA_02","Spi_Dspi_SyncTransmit"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Spi_GetSequenceResult"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Spi_GetJobResult"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Spi_SetupEB"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Spi_ReadIB"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Spi_AsyncTransmit"
	.wrcm.nstrlist "calls", "Spi_LockJobs","Spi_ScheduleJob"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Spi_WriteIB"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Spi_DeInit"
	.wrcm.nstrlist "calls", "Spi_Dspi_DeInit","Spi_GetStatus"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Spi_GetStatus"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Spi_Init"
	.wrcm.nstrlist "calls", "Spi_Dspi_DeInit","Spi_Dspi_Init","Spi_Dspi_IrqConfig"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Spi_GetVersionInfo"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Spi_ScheduleJob"
	.wrcm.nstrlist "calls", "SchM_Enter_Spi_SPI_EXCLUSIVE_AREA_03","SchM_Exit_Spi_SPI_EXCLUSIVE_AREA_03","Spi_Dspi_JobTransfer"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Spi_UnlockRemainingJobs"
	.wrcm.nstrlist "calls", "SchM_Enter_Spi_SPI_EXCLUSIVE_AREA_06","SchM_Exit_Spi_SPI_EXCLUSIVE_AREA_06"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Spi_LockJobs"
	.wrcm.nstrlist "calls", "SchM_Enter_Spi_SPI_EXCLUSIVE_AREA_05","SchM_Exit_Spi_SPI_EXCLUSIVE_AREA_05"
	.wrcm.nint32 "frameSize", 48
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Spi_GetAsyncStatus"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Spi.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Spi.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Spi.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Spi.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Spi.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Spi.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\MCAL\MPC5746R\Spi\ssc\make\..\..\generator\integration_package\src\Spi.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
