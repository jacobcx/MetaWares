#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Adc_Adcdig_Irq.c"
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
# LOCAL_INLINE FUNC(Std_ReturnType, ADC_CODE) Adc_Adcdig_RecordResult
	.section	.invalid_TEXT,,c
	.align		1
	.section	.debug_line.invalid_TEXT,,n
	.sectionlink	.debug_line
.L588:
	.section	.invalid_TEXT,,c
#$$ld
.L584:
	.0byte		.L582
	.d2_line_start	.debug_line.invalid_TEXT
	.section	.invalid_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Adc\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Adc_Adcdig_Irq.c"
        .d2line         527,45
#$$ld
.L591:

#$$bf	Adc_Adcdig_RecordResult,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Adc_Adcdig_RecordResult:
.Llo1:
	stwu		r1,-64(r1)		
	.d2_cfa_def_cfa_offset	64
	mfspr		r0,lr
.Llo31:
	stmw		r23,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	23,31,1,1
	stw		r0,68(r1)		# bFlag=r0
	.d2_cfa_offset    108,-1
	mr		r31,r3		# Unit=r31 Unit=r3
	mr		r30,r4		# Group=r30 Group=r4
.Llo5:
	mr		r29,r5		# GroupSamples=r29 GroupSamples=r5
	.d2prologue_end
# (
#     VAR(Adc_HwUnitType, AUTOMATIC) Unit,
#     VAR(Adc_GroupType, AUTOMATIC) Group,
#     VAR(Adc_StreamNumSampleType, AUTOMATIC) GroupSamples
# )
# {
#     VAR(Adc_ChannelIndexType, AUTOMATIC) Ch = 0U;
	.d2line		534
.Llo6:
	diab.li		r28,0		# Ch=r28
#     VAR(Adc_ChannelType, AUTOMATIC) ChIndex = 0U;
#     VAR(uint32, AUTOMATIC) u32CdrValue;
#     P2VAR(Adc_ValueGroupType, AUTOMATIC, ADC_APPL_DATA) pResult = NULL_PTR;
#     VAR(Std_ReturnType, AUTOMATIC) ReturnValue = (Std_ReturnType)E_OK;
	.d2line		538
.Llo12:
	diab.li		r25,0
#     VAR(uint32, AUTOMATIC) u32CdrMask = ADCDIG_CDR_DATA_MASK_U32;
	.d2line		539
.Llo29:
	diab.li		r24,4095		# u32CdrMask=r24
# #if (ADC_RESULT_ALIGNMENT == ADC_ALIGN_LEFT)
#     P2CONST(Adc_Adcdig_HwUnitConfigurationType, AUTOMATIC, ADC_APPL_CONST) pConfigPtr = Adc_pCfgPtr->pAdc;
#     VAR(Adc_ChannelType, AUTOMATIC) Shift = 0U;
#     VAR(Adc_HwUnitType, AUTOMATIC) HwIndex;
# #endif /* (ADC_RESULT_ALIGNMENT == ADC_ALIGN_LEFT) */
# #if (ADC_ENABLE_LIMIT_CHECK == STD_ON)
#     /* Flag to set if ADC results are in the range selected */
#     VAR(boolean,AUTOMATIC) bFlag = (boolean)TRUE;
	.d2line		547
.Llo30:
	diab.li		r0,1		# bFlag=r0
#     VAR(uint16, AUTOMATIC) u16CdrValueTemp;
# #endif /* ADC_ENABLE_LIMIT_CHECK == STD_ON */
#     VAR(Adc_ChannelIndexType, AUTOMATIC) ChannelCount;
# 
#     /** @violates @ref Adc_Adcdig_Irq_c_REF_8 Array indexing shall be the only allowed form of pointer arithmetic */
#     pResult = Adc_pCfgPtr->pGroups[Group].pResultsBufferPtr[Group] + Adc_aGroupStatus[Group].ResultIndex;
	.d2line		553
.Llo32:
	lis		r3,Adc_pCfgPtr@ha
.Llo2:
	lwz		r4,Adc_pCfgPtr@l(r3)
	lwz		r4,4(r4)
	rlwinm		r0,r30,0,16,31		# bFlag=r0 Group=r30
.Llo33:
	e_mulli		r0,r0,92		# bFlag=r0 bFlag=r0
	se_add		r4,r0		# bFlag=r0
	lwz		r4,64(r4)
	rlwinm		r5,r30,2,14,29		# Group=r30
.Llo11:
	lwzx		r26,r4,r5
	lis		r4,(Adc_aGroupStatus+12)@ha
	e_add16i		r4,r4,(Adc_aGroupStatus+12)@l
	rlwinm		r5,r30,4,12,27		# Group=r30
	se_add		r4,r5
	lhzx		r4,r0,r4		# bFlag=r0
	rlwinm		r4,r4,1,15,30
	se_add		r4,r26
.Llo27:
	mr		r26,r4		# pResult=r26 pResult=r4
# #if (ADC_RESULT_ALIGNMENT == ADC_ALIGN_LEFT)
#     /* Get the index of hardware Unit*/
#     HwIndex = Adc_pCfgPtr->Misc.aHwLogicalId[Unit];
#     /** @violates @ref Adc_Adcdig_Irq_c_REF_8 Array indexing shall be the only allowed form of pointer arithmetic */
#     Shift = (16U - (pConfigPtr[HwIndex].Res));
#     u32CdrMask = (uint32)(ADCDIG_CDR_DATA_MASK_U32 << Shift);
# #endif
# #if (ADC_SETCHANNEL_API == STD_ON)
#     /** @violates @ref Adc_Adcdig_Irq_c_REF_8 Array indexing shall be the only allowed form of pointer arithmetic */
#     ChannelCount = Adc_aRuntimeGroupChannel[Group].ChannelCount;
# #else
#     /** @violates @ref Adc_Adcdig_Irq_c_REF_8 Array indexing shall be the only allowed form of pointer arithmetic */
#     ChannelCount = Adc_pCfgPtr->pGroups[Group].AssignedChannelCount;
	.d2line		566
	lwz		r3,Adc_pCfgPtr@l(r3)
	lwz		r4,4(r3)
.Llo28:
	se_add		r4,r0		# bFlag=r0
	lhz		r23,80(r4)
.Llo37:
	mr		r23,r23		# ChannelCount=r23 ChannelCount=r23
# #endif
#     /** @violates @ref Adc_Adcdig_Irq_c_REF_8 Array indexing shall be the only allowed form of pointer arithmetic */
#     for (Ch = 0U; Ch < ChannelCount; Ch++)
.L518:
	.d2line		569
.Llo3:
	rlwinm		r0,r28,0,16,31		# u32CdrValue=r0 Ch=r28
.Llo20:
	rlwinm		r3,r23,0,16,31		# u32CdrValue=r3 ChannelCount=r23
	se_cmp		r0,r3		# u32CdrValue=r0 u32CdrValue=r3
	bc		0,0,.L520	# ge
#     {
# #if (ADC_SETCHANNEL_API == STD_ON)
#         /** @violates @ref Adc_Adcdig_Irq_c_REF_8 Array indexing shall be the only allowed form of pointer arithmetic */
#         ChIndex = Adc_aRuntimeGroupChannel[Group].pChannel[Ch];
# #else
#         /** @violates @ref Adc_Adcdig_Irq_c_REF_8 Array indexing shall be the only allowed form of pointer arithmetic */
#         ChIndex = Adc_pCfgPtr->pGroups[Group].pAssignment[Ch];
	.d2line		576
.Llo21:
	lis		r6,Adc_pCfgPtr@ha		# u32CdrValue=r6
.Llo22:
	lwz		r3,Adc_pCfgPtr@l(r6)		# u32CdrValue=r3 u32CdrValue=r6
	lwz		r0,4(r3)		# u32CdrValue=r0 u32CdrValue=r3
	rlwinm		r3,r30,0,16,31		# u32CdrValue=r3 Group=r30
	e_mulli		r3,r3,92		# u32CdrValue=r3 u32CdrValue=r3
	se_add		r3,r0		# u32CdrValue=r3 u32CdrValue=r3 u32CdrValue=r0
	lwz		r3,76(r3)		# u32CdrValue=r3 u32CdrValue=r3
	rlwinm		r0,r28,0,16,31		# u32CdrValue=r0 Ch=r28
	lbzx		r5,r3,r0		# ChIndex=r5 u32CdrValue=r3
.Llo13:
	mr		r5,r5		# ChIndex=r5 ChIndex=r5
# #endif        
#         /**
#         * @violates @ref Adc_Adcdig_Irq_c_REF_8 Array indexing shall be the only allowed form of pointer arithmetic
#         * @violates @ref Adc_Adcdig_Irq_c_REF_9 cast from unsigned int to pointer.
#         * @violates @ref Adc_Adcdig_Irq_c_REF_3 A cast should not be performed between a pointer type and an integral type.
#         */
#         u32CdrValue = REG_READ32(ADCDIG_CH_DATA_REG_ADDR32(Unit, (uint32)Adc_pCfgPtr->pChannels[Unit][ChIndex].ChId));
	.d2line		583
	lis		r3,ADCDIG_BASE_ADDR32@ha		# u32CdrValue=r3
	diab.addi		r3,r3,ADCDIG_BASE_ADDR32@l		# u32CdrValue=r3 u32CdrValue=r3
	rlwinm		r4,r31,2,22,29		# Unit=r31
	lwzux		r0,r3,r4		# u32CdrValue=r0 u32CdrValue=r3
	lwz		r3,Adc_pCfgPtr@l(r6)		# u32CdrValue=r3 u32CdrValue=r6
	lwz		r3,8(r3)		# u32CdrValue=r3 u32CdrValue=r3
	lwzux		r6,r3,r4		# u32CdrValue=r6 u32CdrValue=r3
.Llo23:
	rlwinm		r3,r5,1,23,30		# u32CdrValue=r3 ChIndex=r5
.Llo24:
	lbzx		r3,r6,r3		# u32CdrValue=r3 u32CdrValue=r6
	rlwinm		r3,r3,2,22,29		# u32CdrValue=r3 u32CdrValue=r3
	se_add		r3,r0		# u32CdrValue=r3 u32CdrValue=r3 u32CdrValue=r0
	lwz		r27,256(r3)		# u32CdrValue=r27 u32CdrValue=r3
	mr		r27,r27		# u32CdrValue=r27 u32CdrValue=r27
# 
# #if (ADC_ENABLE_LIMIT_CHECK == STD_ON)
#         /** @violates @ref Adc_Adcdig_Irq_c_REF_8 Array indexing shall be the only allowed form of pointer arithmetic */
#         if ((boolean)TRUE == Adc_ChannelsLimitCheckingCfg[Unit][ChIndex].bChannelLimitCheck)
	.d2line		587
	rlwinm		r0,r5,0,24,31		# u32CdrValue=r0 ChIndex=r5
	mr		r0,r0		# u32CdrValue=r0
	lis		r3,Adc_ChannelsLimitCheckingCfg@ha		# u32CdrValue=r3
	diab.addi		r3,r3,Adc_ChannelsLimitCheckingCfg@l		# u32CdrValue=r3 u32CdrValue=r3
	lwzx		r3,r3,r4		# u32CdrValue=r3 u32CdrValue=r3
	rlwinm		r4,r0,4,0,27		# u32CdrValue=r0
	se_slwi		r0,2		# u32CdrValue=r0 u32CdrValue=r0
	subf		r0,r0,r4		# u32CdrValue=r0 u32CdrValue=r0
	lbzx		r0,r3,r0		# u32CdrValue=r0 u32CdrValue=r3
	se_cmpi		r0,1		# u32CdrValue=r0
	bc		0,2,.L521	# ne
#         {
#     #if (ADC_RESULT_ALIGNMENT == ADC_ALIGN_LEFT)
#             u16CdrValueTemp = (uint16)((u32CdrValue & ADCDIG_SHIFT_MASK_U32) >> Shift);
#     #else
#             u16CdrValueTemp = (uint16)(u32CdrValue & ADCDIG_CDR_DATA_MASK_U32);
	.d2line		592
.Llo14:
	rlwinm		r3,r27,0,20,31		# u32CdrValue=r3 u32CdrValue=r27
.Llo25:
	mr		r3,r3		# u16CdrValueTemp=r3 u16CdrValueTemp=r3
#     #endif /* ADC_RESULT_ALIGNMENT == ADC_ALIGN_LEFT */
#             bFlag = (boolean)Adc_CheckConversionValuesInRange(u16CdrValueTemp, Unit, ChIndex);
	.d2line		594
	rlwinm		r3,r3,0,16,31		# u32CdrValue=r3 u16CdrValueTemp=r3
.Llo36:
	mr		r3,r3		# u32CdrValue=r3
	rlwinm		r4,r31,0,24,31		# Unit=r31
.Llo15:
	rlwinm		r5,r5,0,24,31		# ChIndex=r5 ChIndex=r5
.Llo16:
	bl		Adc_CheckConversionValuesInRange
.Llo34:
	mr		r3,r3		# bFlag=r3 bFlag=r3
#             if ((boolean)TRUE == bFlag)
	.d2line		595
	rlwinm		r3,r3,0,24,31		# u32CdrValue=r3 bFlag=r3
.Llo35:
	se_cmpi		r3,1		# u32CdrValue=r3
	bc		0,2,.L522	# ne
#             {
#                 /**
#                 * @violates @ref Adc_Adcdig_Irq_c_REF_8 Array indexing shall be the only allowed form of pointer arithmetic
#                 */
#                 *(pResult+(Ch*(GroupSamples))) = (uint16)(u32CdrValue & u32CdrMask);
	.d2line		600
	mr		r27,r27		# u32CdrValue=r27 u32CdrValue=r27
	and		r27,r27,r24		# u32CdrValue=r27 u32CdrValue=r27 u32CdrMask=r24
	rlwinm		r0,r28,0,16,31		# u32CdrValue=r0 Ch=r28
	rlwinm		r5,r29,0,16,31		# ChIndex=r5 GroupSamples=r29
.Llo17:
	mullw		r0,r0,r5		# u32CdrValue=r0 u32CdrValue=r0 ChIndex=r5
	se_slwi		r0,1		# u32CdrValue=r0 u32CdrValue=r0
	sthx		r27,r26,r0		# pResult=r26 u32CdrValue=r27
	b		.L524
.L522:
#             }
#             else
#             {
#                 Adc_aGroupStatus[Group].eAlreadyConverted = ADC_ALREADY_CONVERTED;
	.d2line		604
.Llo7:
	diab.li		r0,1		# u32CdrValue=r0
	lis		r3,(Adc_aGroupStatus+4)@ha		# u32CdrValue=r3
	e_add16i		r3,r3,(Adc_aGroupStatus+4)@l		# u32CdrValue=r3 u32CdrValue=r3
.Llo8:
	rlwinm		r30,r30,4,12,27		# Group=r30 Group=r30
.Llo9:
	stwx		r0,r3,r30		# u32CdrValue=r3 u32CdrValue=r0
#                 /** @violates @ref Adc_Adcdig_Irq_c_REF_4 Return statement before end of function. */
#                 return (Std_ReturnType)E_NOT_OK;
	.d2line		606
	diab.li		r3,1		# u32CdrValue=r3
	b		.L517
.L521:
#             }
#         }
#         else /* In case of bChannelLimitCheck = FALSE) */
#         {
#             /**
#             * @violates @ref Adc_Adcdig_Irq_c_REF_8 Array indexing shall be the only allowed form of pointer arithmetic
#             */
#             *(pResult+(Ch*(GroupSamples)))=(uint16)(u32CdrValue & u32CdrMask);
	.d2line		614
.Llo10:
	mr		r27,r27		# u32CdrValue=r27 u32CdrValue=r27
	and		r27,r27,r24		# u32CdrValue=r27 u32CdrValue=r27 u32CdrMask=r24
	rlwinm		r0,r28,0,16,31		# u32CdrValue=r0 Ch=r28
	rlwinm		r5,r29,0,16,31		# ChIndex=r5 GroupSamples=r29
.Llo18:
	mullw		r0,r0,r5		# u32CdrValue=r0 u32CdrValue=r0 ChIndex=r5
	se_slwi		r0,1		# u32CdrValue=r0 u32CdrValue=r0
	sthx		r27,r26,r0		# pResult=r26 u32CdrValue=r27
.L524:
#         }
# #else
#         /**
#         * @violates @ref Adc_Adcdig_Irq_c_REF_8 Array indexing shall be the only allowed form of pointer arithmetic
#         * @violates @ref Adc_Adcdig_Irq_c_REF_9 cast from unsigned int to pointer.
#         * @violates @ref Adc_Adcdig_Irq_c_REF_3 A cast should not be performed between a pointer type and an integral type.
#         */
#         *(pResult+(Ch*(GroupSamples))) = (uint16)(u32CdrValue & u32CdrMask);
# #endif /* ADC_ENABLE_LIMIT_CHECK == STD_ON */
#     }
	.d2line		624
.Llo19:
	diab.addi		r0,r28,1		# u32CdrValue=r0 Ch=r28
	se_addi		r28,1		# Ch=r28 Ch=r28
	b		.L518
.L520:
#     return ReturnValue;
	.d2line		625
	rlwinm		r3,r25,0,24,31		# u32CdrValue=r3 ReturnValue=r25
.Llo26:
	mr		r3,r3		# u32CdrValue=r3
.L517:
# }
	.d2line		626
	.d2epilogue_begin
.Llo4:
	lmw		r23,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	2,10
	lwz		r0,68(r1)		# u32CdrValue=r0
	mtspr		lr,r0		# u32CdrValue=lr
	diab.addi		r1,r1,64		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L592:
	.type		Adc_Adcdig_RecordResult,@function
	.size		Adc_Adcdig_RecordResult,.-Adc_Adcdig_RecordResult
# Number of nodes = 218

# Allocations for Adc_Adcdig_RecordResult
#	?a4		Unit
#	?a5		Group
#	?a6		GroupSamples
#	?a7		$$131
#	?a8		Ch
#	?a9		ChIndex
#	?a10		u32CdrValue
#	?a11		pResult
#	?a12		ReturnValue
#	?a13		u32CdrMask
#	?a14		bFlag
#	?a15		u16CdrValueTemp
#	?a16		ChannelCount
# LOCAL_INLINE FUNC(boolean, ADC_CODE) Adc_Adcdig_CheckNotification
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         634,38
#$$ld
.L633:

#$$bf	Adc_Adcdig_CheckNotification,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,cr0,lr
	.d2_cfa_start __cie
Adc_Adcdig_CheckNotification:
.Llo38:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)		# Group=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# Group=r0 Group=r3
	.d2prologue_end
# (
#     VAR(Adc_GroupType, AUTOMATIC) Group
# )
# {
#     VAR(boolean, AUTOMATIC) bCallNotification = (boolean) FALSE;
	.d2line		639
.Llo39:
	diab.li		r4,0		# bCallNotification=r4
# 
#     /** @violates @ref Adc_Adcdig_Irq_c_REF_8 Array indexing shall be the only allowed form of pointer arithmetic */
#     if ((ADC_NOTIFICATION_ENABLED == Adc_aGroupStatus[Group].eNotification) && \
	.d2line		642
.Llo40:
	lis		r3,(Adc_aGroupStatus+8)@ha
	e_add16i		r3,r3,(Adc_aGroupStatus+8)@l
	rlwinm		r5,r0,4,12,27		# Group=r0
	lwzx		r3,r3,r5
	se_cmpi		r3,1
	bc		0,2,.L532	# ne
.Llo41:
	lis		r3,Adc_pCfgPtr@ha
	lwz		r3,Adc_pCfgPtr@l(r3)
	lwz		r3,4(r3)
.Llo42:
	rlwinm		r0,r0,0,16,31		# Group=r0 Group=r0
	e_mulli		r0,r0,92		# Group=r0 Group=r0
	se_add		r3,r0		# Group=r0
	lwz		r0,24(r3)		# Group=r0
	se_cmpi		r0,0		# Group=r0
#         (NULL_PTR != Adc_pCfgPtr->pGroups[Group].Notification)
#        )
#     {
#         bCallNotification = (boolean) TRUE;
	.d2line		646
	diab.li		r0,1		# Group=r0
	isel		r4,r4,r0,2		# bCallNotification=r4 bCallNotification=r4 Group=r0
.L532:
#     }
#     return bCallNotification;
	.d2line		648
.Llo43:
	rlwinm		r3,r4,0,24,31		# bCallNotification=r4
# }
	.d2line		649
	.d2epilogue_begin
	lwz		r0,20(r1)		# Group=r0
	mtspr		lr,r0		# Group=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo44:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L634:
	.type		Adc_Adcdig_CheckNotification,@function
	.size		Adc_Adcdig_CheckNotification,.-Adc_Adcdig_CheckNotification
# Number of nodes = 34

# Allocations for Adc_Adcdig_CheckNotification
#	?a4		Group
#	?a5		bCallNotification
# LOCAL_INLINE FUNC(void, ADC_CODE) Adc_Adcdig_UpdateQueue
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         658,35
#$$ld
.L641:

#$$bf	Adc_Adcdig_UpdateQueue,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Adc_Adcdig_UpdateQueue:
.Llo45:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# Unit=r31 Unit=r3
	.d2prologue_end
# (
#     VAR(Adc_HwUnitType, AUTOMATIC) Unit
# )
# {
# #if (ADC_ENABLE_QUEUING == STD_ON)
#     Adc_RemoveFromQueue(Unit, 0U);
	.d2line		664
	rlwinm		r3,r3,0,24,31		# Unit=r3 Unit=r3
.Llo46:
	diab.li		r4,0
	bl		Adc_RemoveFromQueue
# #if (ADC_ENABLE_START_STOP_GROUP_API == STD_ON)
#     if (Adc_aUnitStatus[Unit].SwNormalQueueIndex > (Adc_QueueIndexType)0U)
	.d2line		666
	lis		r3,Adc_aUnitStatus@ha		# Unit=r3
.Llo47:
	e_add16i		r3,r3,Adc_aUnitStatus@l		# Unit=r3 Unit=r3
	rlwinm		r0,r31,3,21,28		# Unit=r31
	se_add		r0,r3		# Unit=r3
	lhzx		r0,r0,r0
	se_cmpi		r0,0
	bc		0,1,.L534	# le
#     {
#         Adc_Adcdig_StartNormalConversion((Adc_HwUnitType)Unit);
	.d2line		668
.Llo48:
	rlwinm		r3,r31,0,24,31		# Unit=r3 Unit=r31
.Llo49:
	bl		Adc_Adcdig_StartNormalConversion
.L534:
#     }
# #endif
# #else
#     /* no element will be present in the queue */
#     Adc_aUnitStatus[Unit].SwNormalQueueIndex= (Adc_QueueIndexType)0;
# #endif /* ADC_ENABLE_QUEUING == STD_ON */
# }
	.d2line		675
	.d2epilogue_begin
.Llo50:
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
.L642:
	.type		Adc_Adcdig_UpdateQueue,@function
	.size		Adc_Adcdig_UpdateQueue,.-Adc_Adcdig_UpdateQueue
# Number of nodes = 23

# Allocations for Adc_Adcdig_UpdateQueue
#	?a4		Unit
# LOCAL_INLINE FUNC(void, ADC_CODE) Adc_Adcdig_ClearValidBit
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         682,35
#$$ld
.L647:

#$$bf	Adc_Adcdig_ClearValidBit,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r29,r30,r31,cr0,lr
	.d2_cfa_start __cie
Adc_Adcdig_ClearValidBit:
.Llo51:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)		# Group=r0
	.d2_cfa_offset    108,-1
	mr		r3,r3		# Unit=r3 Unit=r3
	mr		r0,r4		# Group=r0 Group=r4
	.d2prologue_end
# (
#     VAR(Adc_HwUnitType, AUTOMATIC) Unit,
#     VAR(Adc_GroupType, AUTOMATIC) Group
# )
# {
#     VAR(Adc_ChannelIndexType, AUTOMATIC) ChTemp;
#     VAR(Adc_ChannelType, AUTOMATIC) ChIndexTemp;
#     VAR(Adc_ChannelIndexType, AUTOMATIC) ChannelCount;
# 
# #if (ADC_SETCHANNEL_API == STD_ON)
#     /** @violates @ref Adc_Adcdig_Irq_c_REF_8 Array indexing shall be the only allowed form of pointer arithmetic */
#     ChannelCount = Adc_aRuntimeGroupChannel[Group].ChannelCount;
# #else
#     /** @violates @ref Adc_Adcdig_Irq_c_REF_8 Array indexing shall be the only allowed form of pointer arithmetic */
#     ChannelCount = Adc_pCfgPtr->pGroups[Group].AssignedChannelCount;
	.d2line		697
.Llo53:
	lis		r4,Adc_pCfgPtr@ha		# ChTemp=r4
.Llo54:
	lwz		r4,Adc_pCfgPtr@l(r4)		# ChTemp=r4 ChTemp=r4
	lwz		r5,4(r4)		# ChTemp=r4
	rlwinm		r4,r0,0,16,31		# ChTemp=r4 Group=r0
	e_mulli		r4,r4,92		# ChTemp=r4 ChTemp=r4
	se_add		r4,r5		# ChTemp=r4 ChTemp=r4
	lhz		r31,80(r4)		# ChTemp=r4
.Llo59:
	mr		r31,r31		# ChannelCount=r31 ChannelCount=r31
# #endif 
#     
#     /* Clear VALID bit from ADC result registers for all channels assigned to the group when
#     conversion is aborted */
#     /** @violates @ref Adc_Adcdig_Irq_c_REF_8 Array indexing shall be the only allowed form of pointer arithmetic */
#         /** @violates @ref Adc_Adcdig_Irq_c_REF_8 Array indexing shall be the only allowed form of pointer arithmetic */
#     for (ChTemp = 0U; ChTemp < ChannelCount; ChTemp++)
	.d2line		704
	diab.li		r4,0		# ChTemp=r4
.L538:
	rlwinm		r7,r4,0,16,31		# ChIndexTemp=r7 ChTemp=r4
.Llo55:
	rlwinm		r5,r31,0,16,31		# ChannelCount=r31
	se_cmp		r7,r5		# ChIndexTemp=r7
	bc		0,0,.L537	# ge
#     {
# #if (ADC_SETCHANNEL_API == STD_ON)
#         /** @violates @ref Adc_Adcdig_Irq_c_REF_8 Array indexing shall be the only allowed form of pointer arithmetic */
#         ChIndexTemp = Adc_aRuntimeGroupChannel[Group].pChannel[ChTemp];
# #else
#         /** @violates @ref Adc_Adcdig_Irq_c_REF_8 Array indexing shall be the only allowed form of pointer arithmetic */
#         ChIndexTemp = Adc_pCfgPtr->pGroups[Group].pAssignment[ChTemp];
	.d2line		711
.Llo56:
	lis		r6,Adc_pCfgPtr@ha
	lwz		r5,Adc_pCfgPtr@l(r6)
	lwz		r7,4(r5)		# ChIndexTemp=r7
.Llo57:
	rlwinm		r5,r0,0,16,31		# Group=r0
	e_mulli		r5,r5,92
	se_add		r5,r7		# ChIndexTemp=r7
	lwz		r5,76(r5)
	rlwinm		r7,r4,0,16,31		# ChIndexTemp=r7 ChTemp=r4
	lbzx		r7,r5,r7		# ChIndexTemp=r7
	mr		r7,r7		# ChIndexTemp=r7 ChIndexTemp=r7
# #endif 
#         /**
#         * @violates @ref Adc_Adcdig_Irq_c_REF_8 Array indexing shall be the only allowed form of pointer arithmetic
#         * @violates @ref Adc_Adcdig_Irq_c_REF_9 cast from unsigned int to pointer
#         * @violates @ref Adc_Adcdig_Irq_c_REF_3 A cast should not be performed between a pointer type and an integral type.
#         */
#         REG_READ32(ADCDIG_CH_DATA_REG_ADDR32(Unit, (uint32)Adc_pCfgPtr->pChannels[Unit][ChIndexTemp].ChId));
	.d2line		718
	lis		r5,ADCDIG_BASE_ADDR32@ha
	e_add16i		r5,r5,ADCDIG_BASE_ADDR32@l
	rlwinm		r30,r3,2,22,29		# Unit=r3
	lwzux		r29,r5,r30
	lwz		r5,Adc_pCfgPtr@l(r6)
	lwz		r5,8(r5)
	lwzx		r5,r5,r30
	rlwinm		r7,r7,1,23,30		# ChIndexTemp=r7 ChIndexTemp=r7
.Llo58:
	lbzx		r5,r5,r7
	rlwinm		r5,r5,2,22,29
	se_add		r29,r5
	lwz		r5,256(r29)
#     }
	.d2line		719
	diab.addi		r7,r4,1		# ChIndexTemp=r7 ChTemp=r4
	se_addi		r4,1		# ChTemp=r4 ChTemp=r4
	b		.L538
.L537:
# }
	.d2line		720
	.d2epilogue_begin
.Llo52:
	lmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# Group=r0
	mtspr		lr,r0		# Group=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L648:
	.type		Adc_Adcdig_ClearValidBit,@function
	.size		Adc_Adcdig_ClearValidBit,.-Adc_Adcdig_ClearValidBit
# Number of nodes = 74

# Allocations for Adc_Adcdig_ClearValidBit
#	?a4		Unit
#	?a5		Group
#	?a6		ChTemp
#	?a7		ChIndexTemp
#	?a8		ChannelCount
# LOCAL_INLINE FUNC(void, ADC_CODE) Adc_Adcdig_UpdateGroupState
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         729,35
#$$ld
.L660:

#$$bf	Adc_Adcdig_UpdateGroupState,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Adc_Adcdig_UpdateGroupState:
.Llo60:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
.Llo80:
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)		# bCallNotification=r0
	.d2_cfa_offset    108,-1
	mr		r31,r3		# Unit=r31 Unit=r3
	mr		r29,r4		# Group=r29 Group=r4
	mr		r5,r5		# GroupSamples=r5 GroupSamples=r5
	mr		r6,r6		# bInjectedFlag=r6 bInjectedFlag=r6
	.d2prologue_end
# (
#     VAR(Adc_HwUnitType, AUTOMATIC) Unit,
#     VAR(Adc_GroupType, AUTOMATIC) Group,
#     VAR(Adc_StreamNumSampleType, AUTOMATIC) GroupSamples,
#     VAR(boolean, AUTOMATIC) bInjectedFlag
# )
# {
# #if (ADC_GRP_NOTIF_CAPABILITY == STD_ON)
#     VAR(boolean, AUTOMATIC)  bCallNotification = (boolean)FALSE;
	.d2line		738
	diab.li		r0,0		# bCallNotification=r0
# #endif
#     VAR(volatile uint32, AUTOMATIC) u32Timeout = ADC_TIMEOUT_COUNTER;
	.d2line		740
.Llo81:
	diab.li		r0,65535		# bCallNotification=r0
.Llo82:
	stw		r0,8(r1)		# bCallNotification=r0
#     VAR(uint32, AUTOMATIC) u32MsrStatus;
# 
#     /* At least once the group was converted */
#     Adc_aGroupStatus[Group].eAlreadyConverted = ADC_ALREADY_CONVERTED;
	.d2line		744
	diab.li		r0,1		# bCallNotification=r0
	lis		r3,(Adc_aGroupStatus+4)@ha
.Llo61:
	e_add16i		r3,r3,(Adc_aGroupStatus+4)@l
	rlwinm		r4,r4,4,12,27		# Group=r4 Group=r4
	stwx		r0,r3,r4		# bCallNotification=r0
# 
#     if(ADC_BUSY == Adc_aGroupStatus[Group].eConversion)
	.d2line		746
	lis		r3,Adc_aGroupStatus@ha
	e_add16i		r3,r3,Adc_aGroupStatus@l
	se_add		r3,r4		# Group=r4
	lwzx		r0,r0,r3		# bCallNotification=r0 bCallNotification=r0
	se_cmpi		r0,1		# bCallNotification=r0
	bc		0,2,.L544	# ne
#     {
#         Adc_aGroupStatus[Group].eConversion = ADC_COMPLETED;
	.d2line		748
.Llo62:
	diab.li		r0,2		# bCallNotification=r0
.Llo68:
	lis		r3,Adc_aGroupStatus@ha
	e_add16i		r3,r3,Adc_aGroupStatus@l
	rlwinm		r4,r29,4,12,27		# Group=r4 Group=r29
	stwx		r0,r3,r4		# bCallNotification=r0
.L544:
#     }
# 
#     if (GroupSamples <= Adc_aGroupStatus[Group].ResultIndex)
	.d2line		751
.Llo83:
	rlwinm		r5,r5,0,16,31		# GroupSamples=r5 GroupSamples=r5
	lis		r3,(Adc_aGroupStatus+12)@ha
	e_add16i		r3,r3,(Adc_aGroupStatus+12)@l
	rlwinm		r4,r29,4,12,27		# Group=r4 Group=r29
	se_add		r3,r4		# Group=r4
	lhzx		r0,r0,r3		# bCallNotification=r0 bCallNotification=r0
.Llo84:
	se_cmp		r5,r0		# GroupSamples=r5 bCallNotification=r0
	bc		1,1,.L545	# gt
#     {
#         Adc_aGroupStatus[Group].eConversion = ADC_STREAM_COMPLETED;
	.d2line		753
.Llo75:
	diab.li		r0,3		# bCallNotification=r0
.Llo85:
	lis		r3,Adc_aGroupStatus@ha
	e_add16i		r3,r3,Adc_aGroupStatus@l
	rlwinm		r4,r29,4,12,27		# Group=r4 Group=r29
	stwx		r0,r3,r4		# bCallNotification=r0
#         /** @violates @ref Adc_Adcdig_Irq_c_REF_8 Array indexing shall be the only allowed form of pointer arithmetic */
#         if((ADC_STREAM_BUFFER_LINEAR == Adc_pCfgPtr->pGroups[Group].eBufferMode) && \
	.d2line		755
	lis		r3,Adc_pCfgPtr@ha
	lwz		r3,Adc_pCfgPtr@l(r3)
	lwz		r0,4(r3)		# bCallNotification=r0
	rlwinm		r3,r29,0,16,31		# Group=r29
	e_mulli		r3,r3,92
	se_add		r3,r0		# bCallNotification=r0
	lwz		r0,68(r3)		# bCallNotification=r0
	se_cmpi		r0,0		# bCallNotification=r0
	bc		0,2,.L546	# ne
.Llo86:
	lis		r3,Adc_pCfgPtr@ha
	lwz		r3,Adc_pCfgPtr@l(r3)
	lwz		r0,4(r3)		# bCallNotification=r0
.Llo87:
	rlwinm		r3,r29,0,16,31		# Group=r29
	e_mulli		r3,r3,92
	se_add		r3,r0		# bCallNotification=r0
	lwz		r0,4(r3)		# bCallNotification=r0
	se_cmpi		r0,1		# bCallNotification=r0
	bc		0,2,.L546	# ne
#            (ADC_ACCESS_MODE_STREAMING == Adc_pCfgPtr->pGroups[Group].eAccessMode)
#           )
#         {
#             /** @violates @ref Adc_Adcdig_Irq_c_REF_9 cast from unsigned int to pointer. */
#             /** @violates @ref Adc_Adcdig_Irq_c_REF_3 A cast should not be performed between a pointer type and an integral type. */
#             u32MsrStatus = REG_READ32(ADCDIG_MSR_REG_ADDR32(Unit)) & ADCDIG_NORMAL_CONV_STATUS_U32;
	.d2line		761
.Llo88:
	lis		r3,ADCDIG_BASE_ADDR32@ha
	e_add16i		r3,r3,ADCDIG_BASE_ADDR32@l
	rlwinm		r5,r31,2,22,29		# GroupSamples=r5 Unit=r31
	lwzx		r3,r3,r5
	lwz		r0,4(r3)		# bCallNotification=r0
.Llo89:
	rlwinm		r0,r0,0,7,7		# bCallNotification=r0 bCallNotification=r0
.Llo90:
	mr		r0,r0		# u32MsrStatus=r0 u32MsrStatus=r0
.L547:
#             /* the following code stop the conversion and abort the current group conversion,
#                 is important to abort the current, otherwise, another interrupt occurs after the stop */
#             while(ADCDIG_NORMAL_CONV_ONGOING_U32 == u32MsrStatus)
	.d2line		764
.Llo76:
	diab.li		r3,16777216
	se_cmpl		r0,r3		# u32MsrStatus=r0
	bc		0,2,.L548	# ne
#             {
#                 /** @violates @ref Adc_Adcdig_Irq_c_REF_9 cast from unsigned int to pointer */
#                 /** @violates @ref Adc_Adcdig_Irq_c_REF_3 A cast should not be performed between a pointer type and an integral type. */
#                 REG_RMW32(ADCDIG_MCR_REG_ADDR32(Unit), ADCDIG_NORMAL_CONV_MASK_U32 | ADCDIG_ABORT_CHAIN_U32, ADCDIG_ABORT_CHAIN_U32);
	.d2line		768
.Llo103:
	lis		r3,ADCDIG_BASE_ADDR32@ha
	e_add16i		r3,r3,ADCDIG_BASE_ADDR32@l
	rlwinm		r5,r31,2,22,29		# GroupSamples=r5 Unit=r31
	lwzux		r4,r3,r5		# Group=r4
	lwz		r0,0(r4)		# u32MsrStatus=r0 Group=r4
.Llo104:
	e_lis		r3,65279
	e_or2i		r3,65407
	and		r0,r0,r3		# u32MsrStatus=r0 u32MsrStatus=r0
	.diab.bseti		r0,24		# u32MsrStatus=r0
	lis		r3,ADCDIG_BASE_ADDR32@ha
	e_add16i		r3,r3,ADCDIG_BASE_ADDR32@l
	lwzx		r3,r3,r5
	stw		r0,0(r3)		# u32MsrStatus=r0
#                 /* If the ongoing conversion is not aborted, report the production error */
#                 if (u32Timeout > 0UL)
	.d2line		770
	lwz		r0,8(r1)		# u32MsrStatus=r0
	se_cmpi		r0,0		# u32MsrStatus=r0
	bc		1,2,.L549	# eq
#                 {
#                     u32Timeout--;             
	.d2line		772
.Llo105:
	lwz		r3,8(r1)
	diab.addi		r3,r3,-1
	stw		r3,8(r1)
	b		.L550
.L549:
#                 }
#                 else
#                 {
#                     /* Exit critical region */
#                     SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_14();
	.d2line		777
	bl		SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_14
	.d2line		779
	b		.L543
.L550:
#                     /** @violates @ref Adc_Adcdig_Irq_c_REF_4 Return statement before end of function. */
#                     return;
#                 }
#                 /** @violates @ref Adc_Adcdig_Irq_c_REF_9 cast from unsigned int to pointer. */
#                 /** @violates @ref Adc_Adcdig_Irq_c_REF_3 A cast should not be performed between a pointer type and an integral type. */
#                 u32MsrStatus = REG_READ32(ADCDIG_MSR_REG_ADDR32(Unit)) & ADCDIG_NORMAL_CONV_STATUS_U32;
	.d2line		783
	lis		r3,ADCDIG_BASE_ADDR32@ha
	e_add16i		r3,r3,ADCDIG_BASE_ADDR32@l
	rlwinm		r5,r31,2,22,29		# GroupSamples=r5 Unit=r31
	lwzx		r3,r3,r5
	lwz		r0,4(r3)		# u32MsrStatus=r0
.Llo106:
	rlwinm		r0,r0,0,7,7		# u32MsrStatus=r0 u32MsrStatus=r0
	mr		r0,r0		# u32MsrStatus=r0 u32MsrStatus=r0
	b		.L547
.L548:
#             }
# 
#             Adc_Adcdig_ClearValidBit(Unit, Group);
	.d2line		786
.Llo107:
	mr		r3,r31		# Unit=r3 Unit=r31
	mr		r4,r29		# Group=r4 Group=r29
	bl		Adc_Adcdig_ClearValidBit
# 
#             /* Disable Interrupt Mask */
#             /** @violates @ref Adc_Adcdig_Irq_c_REF_9 cast from unsigned int to pointer */
#             /** @violates @ref Adc_Adcdig_Irq_c_REF_3 A cast should not be performed between a pointer type and an integral type. */
#             REG_BIT_CLEAR32(ADCDIG_IMR_REG_ADDR32(Unit), ADCDIG_ISR_END_CHAIN_NORM_CONV_MASK_U32);
	.d2line		791
	lis		r3,ADCDIG_BASE_ADDR32@ha		# Unit=r3
	e_add16i		r3,r3,ADCDIG_BASE_ADDR32@l		# Unit=r3 Unit=r3
	rlwinm		r5,r31,2,22,29		# GroupSamples=r5 Unit=r31
	lwzx		r4,r3,r5		# Group=r4 Unit=r3
	lwz		r0,32(r4)		# u32MsrStatus=r0 Group=r4
.Llo108:
	.diab.bclri		r0,31		# u32MsrStatus=r0
	stw		r0,32(r4)		# Group=r4 u32MsrStatus=r0
#             /** @violates @ref Adc_Adcdig_Irq_c_REF_9 cast from unsigned int to pointer */
#             /** @violates @ref Adc_Adcdig_Irq_c_REF_3 A cast should not be performed between a pointer type and an integral type. */
#             REG_WRITE32(ADCDIG_ISR_REG_ADDR32(Unit), ADCDIG_ISR_END_CHAIN_NORM_CONV_CLEAN_U32);
	.d2line		794
	diab.li		r0,1		# u32MsrStatus=r0
	lwzx		r3,r3,r5		# Unit=r3 Unit=r3
	stw		r0,16(r3)		# Unit=r3 u32MsrStatus=r0
# 
#             Adc_Adcdig_UpdateQueue(Unit);
	.d2line		796
	mr		r3,r31		# Unit=r3 Unit=r31
	bl		Adc_Adcdig_UpdateQueue
# 
# #if (ADC_GRP_NOTIF_CAPABILITY == STD_ON)
#             bCallNotification = Adc_Adcdig_CheckNotification(Group);
	.d2line		799
.Llo109:
	mr		r3,r29		# Group=r3 Group=r29
	bl		Adc_Adcdig_CheckNotification
.Llo91:
	mr		r31,r3		# bCallNotification=r31 bCallNotification=r3
# 
#             /* Exit critical region */
#             SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_14();
	.d2line		802
.Llo63:
	bl		SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_14
# 
#             if ((boolean)TRUE == bCallNotification)
	.d2line		804
.Llo92:
	rlwinm		r31,r31,0,24,31		# bCallNotification=r31 bCallNotification=r31
.Llo93:
	se_cmpi		r31,1		# bCallNotification=r31
	bc		0,2,.L543	# ne
#             {
#                 /** @violates @ref Adc_Adcdig_Irq_c_REF_8 Array indexing shall be the only allowed form of pointer arithmetic */
#                 Adc_pCfgPtr->pGroups[Group].Notification();
	.d2line		807
.Llo69:
	lis		r3,Adc_pCfgPtr@ha		# Group=r3
.Llo70:
	lwz		r3,Adc_pCfgPtr@l(r3)		# Group=r3 Group=r3
	lwz		r3,4(r3)		# Group=r3 Group=r3
	rlwinm		r29,r29,0,16,31		# Group=r29 Group=r29
	e_mulli		r29,r29,92		# Group=r29 Group=r29
	se_add		r3,r29		# Group=r3 Group=r3 Group=r29
	lwz		r0,24(r3)		# u32MsrStatus=r0 Group=r3
	mtspr		ctr,r0		# u32MsrStatus=ctr
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x0 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
	.d2line		815
.Llo71:
	b		.L543
.L546:
#             }
# #else
#             /* Exit critical region */
#             SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_14();
# #endif /* ADC_GRP_NOTIF_CAPABILITY == STD_ON */
# 
#             /** @violates @ref Adc_Adcdig_Irq_c_REF_4 Return statement before end of function. */
#             return;
#         }
#         Adc_aGroupStatus[Group].ResultIndex = 0U;
	.d2line		817
.Llo64:
	diab.li		r0,0		# bCallNotification=r0
.Llo94:
	lis		r3,(Adc_aGroupStatus+12)@ha
	e_add16i		r3,r3,(Adc_aGroupStatus+12)@l
	rlwinm		r4,r29,4,12,27		# Group=r4 Group=r29
	sthux		r0,r3,r4		# bCallNotification=r0
.L545:
#     }
# 
# #if (ADC_GRP_NOTIF_CAPABILITY == STD_ON)
#     bCallNotification = Adc_Adcdig_CheckNotification(Group);
	.d2line		821
.Llo95:
	mr		r3,r29		# Group=r3 Group=r29
	bl		Adc_Adcdig_CheckNotification
.Llo96:
	mr		r30,r3		# bCallNotification=r30 bCallNotification=r3
# #endif /* ADC_GRP_NOTIF_CAPABILITY == STD_ON */
# 
#     /** @violates @ref Adc_Adcdig_Irq_c_REF_8 Array indexing shall be the only allowed form of pointer arithmetic */
#     if (ADC_CONV_MODE_ONESHOT == Adc_pCfgPtr->pGroups[Group].eMode)
	.d2line		825
	lis		r3,Adc_pCfgPtr@ha		# Group=r3
.Llo97:
	lwz		r3,Adc_pCfgPtr@l(r3)		# Group=r3 Group=r3
	lwz		r0,4(r3)		# bCallNotification=r0 Group=r3
.Llo98:
	rlwinm		r3,r29,0,16,31		# Group=r3 Group=r29
	e_mulli		r3,r3,92		# Group=r3 Group=r3
	se_add		r3,r0		# Group=r3 Group=r3 bCallNotification=r0
	lwz		r0,8(r3)		# bCallNotification=r0 Group=r3
	se_cmpi		r0,0		# bCallNotification=r0
	bc		0,2,.L552	# ne
#     {
#         Adc_aGroupStatus[Group].eConversion = ADC_STREAM_COMPLETED;
	.d2line		827
.Llo77:
	diab.li		r0,3		# bCallNotification=r0
.Llo99:
	lis		r3,Adc_aGroupStatus@ha		# Group=r3
	e_add16i		r3,r3,Adc_aGroupStatus@l		# Group=r3 Group=r3
	rlwinm		r4,r29,4,12,27		# Group=r4 Group=r29
	stwx		r0,r3,r4		# Group=r3 bCallNotification=r0
# 
#         if((boolean)FALSE == bInjectedFlag)
	.d2line		829
.Llo78:
	rlwinm		r6,r6,0,24,31		# bInjectedFlag=r6 bInjectedFlag=r6
	se_cmpi		r6,0		# bInjectedFlag=r6
	bc		0,2,.L552	# ne
#         {
#             /* Disable Interrupt Mask*/
#             /** @violates @ref Adc_Adcdig_Irq_c_REF_9 cast from unsigned int to pointer */
#             /** @violates @ref Adc_Adcdig_Irq_c_REF_3 A cast should not be performed between a pointer type and an integral type. */
#             REG_BIT_CLEAR32(ADCDIG_IMR_REG_ADDR32(Unit), ADCDIG_ISR_END_CHAIN_NORM_CONV_MASK_U32);
	.d2line		834
.Llo79:
	lis		r3,ADCDIG_BASE_ADDR32@ha		# Group=r3
	e_add16i		r3,r3,ADCDIG_BASE_ADDR32@l		# Group=r3 Group=r3
	rlwinm		r5,r31,2,22,29		# GroupSamples=r5 Unit=r31
	lwzx		r3,r3,r5		# Group=r3 Group=r3
	lwz		r0,32(r3)		# bCallNotification=r0 Group=r3
	.diab.bclri		r0,31		# bCallNotification=r0
	stw		r0,32(r3)		# Group=r3 bCallNotification=r0
#             Adc_Adcdig_UpdateQueue(Unit);
	.d2line		835
	mr		r3,r31		# Unit=r3 Unit=r31
	bl		Adc_Adcdig_UpdateQueue
.L552:
#         }
# #if (ADC_SOFTWARE_INJECTED_CONVERSIONS_USED == STD_ON)         
#         else
#         {
#             /* Disable Interrupt*/
#             /** @violates @ref Adc_Adcdig_Irq_c_REF_9 cast from unsigned int to pointer */
#             /** @violates @ref Adc_Adcdig_Irq_c_REF_3 A cast should not be performed between a pointer type and an integral type. */
#             REG_BIT_CLEAR32(ADCDIG_IMR_REG_ADDR32(Unit), ADCDIG_ISR_END_CHAIN_INJ_CONV_EN_U32);
#             /* No element will be present in the sw inj queue */
#             Adc_aUnitStatus[Unit].SwInjectedQueueIndex = 0U;
#         }
# #endif /* ADC_SOFTWARE_INJECTED_CONVERSIONS_USED == STD_ON */        
#     }
# 
# #if (ADC_SOFTWARE_INJECTED_CONVERSIONS_USED == STD_ON)   
#     if((boolean)TRUE == bInjectedFlag)
#     {
#         /** @violates @ref Adc_Adcdig_Irq_c_REF_9 cast from unsigned int to pointer */
#         /** @violates @ref Adc_Adcdig_Irq_c_REF_3 A cast should not be performed between a pointer type and an integral type. */
#         REG_WRITE32(ADCDIG_ISR_REG_ADDR32(Unit), ADCDIG_ISR_END_CHAIN_INJ_CONV_CLEAN_U32);
#     }
#     else
#  #endif /* ADC_SOFTWARE_INJECTED_CONVERSIONS_USED == STD_ON */      
#     {
#         /** @violates @ref Adc_Adcdig_Irq_c_REF_9 cast from unsigned int to pointer */
#         /** @violates @ref Adc_Adcdig_Irq_c_REF_3 A cast should not be performed between a pointer type and an integral type. */
#         REG_WRITE32(ADCDIG_ISR_REG_ADDR32(Unit), ADCDIG_ISR_END_CHAIN_NORM_CONV_CLEAN_U32);
	.d2line		862
.Llo65:
	diab.li		r0,1		# bCallNotification=r0
.Llo100:
	lis		r3,ADCDIG_BASE_ADDR32@ha		# Group=r3
	e_add16i		r3,r3,ADCDIG_BASE_ADDR32@l		# Group=r3 Group=r3
.Llo66:
	rlwinm		r31,r31,2,22,29		# Unit=r31 Unit=r31
.Llo67:
	lwzx		r3,r3,r31		# Group=r3 Group=r3
	stw		r0,16(r3)		# Group=r3 bCallNotification=r0
#     }
# 
#     /* Exit critical region */
#     SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_14();
	.d2line		866
	bl		SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_14
# 
# #if (ADC_GRP_NOTIF_CAPABILITY == STD_ON)
#     if ((boolean)TRUE == bCallNotification)
	.d2line		869
.Llo101:
	rlwinm		r30,r30,0,24,31		# bCallNotification=r30 bCallNotification=r30
.Llo102:
	se_cmpi		r30,1		# bCallNotification=r30
	bc		0,2,.L543	# ne
#     {
#         /** @violates @ref Adc_Adcdig_Irq_c_REF_8 Array indexing shall be the only allowed form of pointer arithmetic */
#         Adc_pCfgPtr->pGroups[Group].Notification();
	.d2line		872
.Llo72:
	lis		r3,Adc_pCfgPtr@ha		# Group=r3
.Llo73:
	lwz		r3,Adc_pCfgPtr@l(r3)		# Group=r3 Group=r3
	lwz		r3,4(r3)		# Group=r3 Group=r3
	rlwinm		r29,r29,0,16,31		# Group=r29 Group=r29
	e_mulli		r29,r29,92		# Group=r29 Group=r29
	se_add		r3,r29		# Group=r3 Group=r3 Group=r29
	lwz		r0,24(r3)		# bCallNotification=r0 Group=r3
	mtspr		ctr,r0		# bCallNotification=ctr
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x0 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
.L543:
#     }
# #endif /* ADC_GRP_NOTIF_CAPABILITY == STD_ON */
# }
	.d2line		875
	.d2epilogue_begin
.Llo74:
	lmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# u32MsrStatus=r0
	mtspr		lr,r0		# u32MsrStatus=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L661:
	.type		Adc_Adcdig_UpdateGroupState,@function
	.size		Adc_Adcdig_UpdateGroupState,.-Adc_Adcdig_UpdateGroupState
# Number of nodes = 321

# Allocations for Adc_Adcdig_UpdateGroupState
#	?a4		Unit
#	?a5		Group
#	?a6		GroupSamples
#	?a7		bInjectedFlag
#	?a8		$$128
#	?a9		$$127
#	?a10		bCallNotification
#	SP,8		u32Timeout
#	?a11		u32MsrStatus
# LOCAL_INLINE FUNC(void, ADC_CODE) Adc_Adcdig_EndSoftwareConv
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         894,35
#$$ld
.L675:

#$$bf	Adc_Adcdig_EndSoftwareConv,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Adc_Adcdig_EndSoftwareConv:
.Llo110:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr
.Llo121:
	stmw		r27,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	27,31,1,1
	stw		r0,52(r1)		# Group=r0
	.d2_cfa_offset    108,-1
	mr		r31,r3		# Unit=r31 Unit=r3
.Llo111:
	mr		r30,r4		# bInjectedFlag=r30 bInjectedFlag=r4
	.d2prologue_end
# (
#     VAR(Adc_HwUnitType, AUTOMATIC) Unit,
#     VAR(boolean, AUTOMATIC) bInjectedFlag
# )
# {
#     VAR(Adc_GroupType, AUTOMATIC) Group = 0U;
	.d2line		900
.Llo112:
	diab.li		r0,0		# Group=r0
#     /* Streaming num samples should be at least 1U */
#     VAR(Adc_StreamNumSampleType, AUTOMATIC) GroupSamples = 1U;
	.d2line		902
.Llo122:
	diab.li		r3,1		# GroupSamples=r3
#     VAR(Std_ReturnType, AUTOMATIC) Test = (Std_ReturnType) E_OK;
# #if (ADC_SETCHANNEL_API == STD_ON)
#     VAR(Adc_NCMRType, AUTOMATIC) CMRMask;
#     VAR(uint32, AUTOMATIC) u32MsrStatus;
#     VAR(volatile uint32, AUTOMATIC) u32Timeout = ADC_TIMEOUT_COUNTER;
# #endif
#     
# #if (ADC_SOFTWARE_INJECTED_CONVERSIONS_USED == STD_ON)      
#     if ((boolean)TRUE == bInjectedFlag)
#     {
#         Group = Adc_aUnitStatus[Unit].SwInjectedQueue[0];
#     }
#     else
# #endif /* ADC_SOFTWARE_INJECTED_CONVERSIONS_USED == STD_ON */     
#     {
#         Group = Adc_aUnitStatus[Unit].SwNormalQueue[0];
	.d2line		918
	lis		r3,(Adc_aUnitStatus+2)@ha		# GroupSamples=r3
.Llo126:
	e_add16i		r3,r3,(Adc_aUnitStatus+2)@l		# GroupSamples=r3 GroupSamples=r3
	rlwinm		r0,r31,3,21,28		# Group=r0 Unit=r31
.Llo123:
	se_add		r0,r3		# Group=r0 Group=r0 GroupSamples=r3
	lhzx		r29,r0,r0		# Group=r29 Group=r0
	mr		r29,r29		# Group=r29 Group=r29
#     }
#     /** @violates @ref Adc_Adcdig_Irq_c_REF_8 Array indexing shall be the only allowed form of pointer arithmetic */
#     GroupSamples = Adc_pCfgPtr->pGroups[Group].NumSamples;
	.d2line		921
	lis		r3,Adc_pCfgPtr@ha		# GroupSamples=r3
	lwz		r3,Adc_pCfgPtr@l(r3)		# GroupSamples=r3 GroupSamples=r3
	lwz		r0,4(r3)		# Group=r0 GroupSamples=r3
	rlwinm		r3,r29,0,16,31		# GroupSamples=r3 Group=r29
	e_mulli		r3,r3,92		# GroupSamples=r3 GroupSamples=r3
	se_add		r3,r0		# GroupSamples=r3 GroupSamples=r3 Group=r0
	lhz		r27,72(r3)		# GroupSamples=r3
	mr		r27,r27		# GroupSamples=r27 GroupSamples=r27
#     Test = Adc_Adcdig_RecordResult(Unit, Group, GroupSamples);
	.d2line		922
.Llo127:
	mr		r3,r31		# Unit=r3 Unit=r31
.Llo128:
	mr		r4,r29		# Group=r4 Group=r29
.Llo118:
	mr		r5,r27		# GroupSamples=r5 GroupSamples=r27
	bl		Adc_Adcdig_RecordResult
.Llo124:
	mr		r28,r3		# Test=r28 Test=r3
# #if (ADC_ENABLE_INITIAL_NOTIFICATION == STD_ON)
#     Adc_Adcdig_CallExtraNotification(Group);
# #endif /* (ADC_ENABLE_INITIAL_NOTIFICATION == STD_ON) */
#     
#     /* Enter critical region */
#     SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_14();
	.d2line		928
	bl		SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_14
# #if (ADC_SOFTWARE_INJECTED_CONVERSIONS_USED == STD_ON)      
#     if ((boolean)TRUE == bInjectedFlag)
#     {
# #ifdef ADC_DMA_SUPPORTED
#     #if (ADC_ENABLE_START_STOP_GROUP_API == STD_ON)
#         if (ADC_DMA == Adc_pCfgPtr->Misc.u8Adc_DmaInterruptSoftware[Unit])
#         {
#             if (Adc_aUnitStatus[Unit].SwNormalQueueIndex > (Adc_QueueIndexType)0U)
#             {
#                 /* Restart normal conversion */
#                 Adc_Adcdig_StartNormalConversion((Adc_HwUnitType)Unit);
#             }
#         }
#     #endif /* (ADC_ENABLE_START_STOP_GROUP_API == STD_ON) */
# #endif /* ADC_DMA_SUPPORTED */
#         if ((Std_ReturnType)E_NOT_OK == Test)
#         {
#             Adc_aGroupStatus[Group].ResultIndex = 0U;
# 
#             SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_14();
#             /** @violates @ref Adc_Adcdig_Irq_c_REF_4 Return statement before end of function. */
#             return;
#         }
#     }
#     else
# #endif /* ADC_SOFTWARE_INJECTED_CONVERSIONS_USED == STD_ON */    
#     {
# #if (ADC_SETCHANNEL_API == STD_ON)
#         if ((boolean)TRUE == Adc_aRuntimeGroupChannel[Group].bRuntimeUpdated) 
#         {
#             do
#             {
#                 /** @violates @ref Adc_Adcdig_Irq_c_REF_9 cast from unsigned int to pointer. */
#                 /** @violates @ref Adc_Adcdig_Irq_c_REF_3 A cast should not be performed between a pointer type and an integral type. */
#                 REG_RMW32(ADCDIG_MCR_REG_ADDR32(Unit), ADCDIG_NORMAL_CONV_MASK_U32 | ADCDIG_ABORT_CHAIN_U32, ADCDIG_ABORT_CHAIN_U32);
#                 /** @violates @ref Adc_Adcdig_Irq_c_REF_9 cast from unsigned int to pointer. */
#                 /** @violates @ref Adc_Adcdig_Irq_c_REF_3 A cast should not be performed between a pointer type and an integral type. */
#                 u32MsrStatus = (REG_READ32(ADCDIG_MSR_REG_ADDR32(Unit))) & ADCDIG_STATUS_U32;
#                 if (u32Timeout > 0UL)
#                 {
#                     u32Timeout--;        
#                 }
#             }
#             while(ADCDIG_NORMAL_CONV_ONGOING_U32 == u32MsrStatus);
#             /** @violates @ref Adc_Adcdig_Irq_c_REF_6 It is needed for calculation value of go back space for source address.*/
#             Adc_GetCmrRegister(Unit, Group, &CMRMask);
#             Adc_Adcdig_SetNcmrRegisters(Unit, CMRMask.Adc_u32NCMR0, CMRMask.Adc_u32NCMR1, CMRMask.Adc_u32NCMR2);
#             Adc_aRuntimeGroupChannel[Group].bRuntimeUpdated = (boolean) FALSE;
#             /** @violates @ref Adc_Adcdig_Irq_c_REF_9 cast from unsigned int to pointer. */
#             /** @violates @ref Adc_Adcdig_Irq_c_REF_3 A cast should not be performed between a pointer type and an integral type. */
#             REG_BIT_SET32(ADCDIG_MCR_REG_ADDR32(Unit), ADCDIG_NORMAL_START_CONV_EN_U32);
#         }
# #endif
#         if ((Std_ReturnType)E_NOT_OK == Test)
	.d2line		982
.Llo129:
	rlwinm		r28,r28,0,24,31		# Test=r28 Test=r28
.Llo130:
	se_cmpi		r28,1		# Test=r28
	bc		0,2,.L565	# ne
#         {
#             /** @violates @ref Adc_Adcdig_Irq_c_REF_8 Array indexing shall be the only allowed form of pointer arithmetic */
#             if (ADC_CONV_MODE_ONESHOT == Adc_pCfgPtr->pGroups[Group].eMode)
	.d2line		985
.Llo119:
	lis		r3,Adc_pCfgPtr@ha		# Unit=r3
	lwz		r3,Adc_pCfgPtr@l(r3)		# Unit=r3 Unit=r3
	lwz		r0,4(r3)		# Group=r0 Unit=r3
	rlwinm		r3,r29,0,16,31		# Unit=r3 Group=r29
	e_mulli		r3,r3,92		# Unit=r3 Unit=r3
	se_add		r3,r0		# Unit=r3 Unit=r3 Group=r0
	lwz		r0,8(r3)		# Group=r0 Unit=r3
	se_cmpi		r0,0		# Group=r0
	bc		0,2,.L566	# ne
#             {
#                 /** @violates @ref Adc_Adcdig_Irq_c_REF_9 cast from unsigned int to pointer */
#                 /** @violates @ref Adc_Adcdig_Irq_c_REF_3 A cast should not be performed between a pointer type and an integral type. */
#                 REG_BIT_CLEAR32(ADCDIG_IMR_REG_ADDR32(Unit), ADCDIG_ISR_END_CHAIN_NORM_CONV_MASK_U32);
	.d2line		989
.Llo120:
	lis		r3,ADCDIG_BASE_ADDR32@ha		# Unit=r3
	e_add16i		r3,r3,ADCDIG_BASE_ADDR32@l		# Unit=r3 Unit=r3
	rlwinm		r0,r31,2,22,29		# Group=r0 Unit=r31
	lwzx		r3,r3,r0		# Unit=r3 Unit=r3
	lwz		r0,32(r3)		# Group=r0 Unit=r3
	.diab.bclri		r0,31		# Group=r0
	stw		r0,32(r3)		# Unit=r3 Group=r0
.L566:
#             }
#             /** @violates @ref Adc_Adcdig_Irq_c_REF_9 cast from unsigned int to pointer */
#             /** @violates @ref Adc_Adcdig_Irq_c_REF_3 A cast should not be performed between a pointer type and an integral type. */
#             REG_WRITE32(ADCDIG_ISR_REG_ADDR32(Unit), ADCDIG_ISR_END_CHAIN_NORM_CONV_CLEAN_U32);
	.d2line		993
.Llo113:
	diab.li		r0,1		# Group=r0
.Llo125:
	lis		r3,ADCDIG_BASE_ADDR32@ha		# Unit=r3
.Llo114:
	e_add16i		r3,r3,ADCDIG_BASE_ADDR32@l		# Unit=r3 Unit=r3
	rlwinm		r31,r31,2,22,29		# Unit=r31 Unit=r31
	lwzx		r3,r3,r31		# Unit=r3 Unit=r3
	stw		r0,16(r3)		# Unit=r3 Group=r0
# #if (ADC_ENABLE_LIMIT_CHECK == STD_ON)
#             Adc_aGroupStatus[Group].bLimitCheckFailed = (boolean)TRUE;
	.d2line		995
	lis		r3,(Adc_aGroupStatus+14)@ha		# Unit=r3
	e_add16i		r3,r3,(Adc_aGroupStatus+14)@l		# Unit=r3 Unit=r3
	rlwinm		r29,r29,4,12,27		# Group=r29 Group=r29
	stbux		r0,r3,r29		# Unit=r3 Group=r0
# #endif /* ADC_ENABLE_LIMIT_CHECK == STD_ON */
#             /* Exit critical region */
#             SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_14();
	.d2line		998
	bl		SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_14
	.d2line		1000
.Llo115:
	b		.L564
.L565:
#             /** @violates @ref Adc_Adcdig_Irq_c_REF_4 Return statement before end of function. */
#             return;
#         }
# #if (ADC_ENABLE_LIMIT_CHECK == STD_ON)
#         Adc_aGroupStatus[Group].bLimitCheckFailed = (boolean)FALSE;
	.d2line		1003
.Llo116:
	diab.li		r0,0		# Group=r0
	lis		r3,(Adc_aGroupStatus+14)@ha		# Unit=r3
	e_add16i		r3,r3,(Adc_aGroupStatus+14)@l		# Unit=r3 Unit=r3
	rlwinm		r4,r29,4,12,27		# Group=r4 Group=r29
	stbux		r0,r3,r4		# Unit=r3 Group=r0
# #endif /* ADC_ENABLE_LIMIT_CHECK == STD_ON */
# 
#         /* Increment ResultIndex with modulo 'NumSamples' to remember that another sample is completed */
#         Adc_aGroupStatus[Group].ResultIndex++;
	.d2line		1007
	lis		r3,(Adc_aGroupStatus+12)@ha		# Unit=r3
	e_add16i		r3,r3,(Adc_aGroupStatus+12)@l		# Unit=r3 Unit=r3
	se_add		r4,r3		# Group=r4 Group=r4 Unit=r3
	lhz		r3,0(r4)		# Unit=r3 Group=r4
	se_addi		r3,1		# Unit=r3 Unit=r3
	sth		r3,0(r4)		# Group=r4 Unit=r3
#     }
#     Adc_Adcdig_UpdateGroupState(Unit, Group, GroupSamples, bInjectedFlag);
	.d2line		1009
	mr		r3,r31		# Unit=r3 Unit=r31
	mr		r6,r30		# bInjectedFlag=r6 bInjectedFlag=r30
	mr		r4,r29		# Group=r4 Group=r29
	mr		r5,r27		# GroupSamples=r5 GroupSamples=r27
	bl		Adc_Adcdig_UpdateGroupState
.L564:
# }
	.d2line		1010
	.d2epilogue_begin
.Llo117:
	lmw		r27,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,52(r1)		# Group=r0
	mtspr		lr,r0		# Group=lr
	diab.addi		r1,r1,48		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L676:
	.type		Adc_Adcdig_EndSoftwareConv,@function
	.size		Adc_Adcdig_EndSoftwareConv,.-Adc_Adcdig_EndSoftwareConv
# Number of nodes = 146

# Allocations for Adc_Adcdig_EndSoftwareConv
#	?a4		Unit
#	?a5		bInjectedFlag
#	?a6		$$130
#	?a7		$$129
#	?a8		Group
#	?a9		GroupSamples
#	?a10		Test
# LOCAL_INLINE FUNC(void, ADC_CODE) Adc_Adcdig_EndGroupConversion
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         1738,35
#$$ld
.L688:

#$$bf	Adc_Adcdig_EndGroupConversion,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Adc_Adcdig_EndGroupConversion:
.Llo131:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# Unit=r31 Unit=r3
	.d2prologue_end
# (
#     VAR(Adc_HwUnitType, AUTOMATIC) Unit
# )
# {
#     /** @violates @ref Adc_Adcdig_Irq_c_REF_9 cast from unsigned int to pointer. */
#     /** @violates @ref Adc_Adcdig_Irq_c_REF_3 A cast should not be performed between a pointer type and an integral type. */
#     VAR(volatile uint32, AUTOMATIC) u32IsrValue = (uint32)REG_READ32(ADCDIG_ISR_REG_ADDR32(Unit));
#     /** @violates @ref Adc_Adcdig_Irq_c_REF_9 cast from unsigned int to pointer. */
#     /** @violates @ref Adc_Adcdig_Irq_c_REF_3 A cast should not be performed between a pointer type and an integral type. */
#     VAR(volatile uint32, AUTOMATIC) u32ImrValue = (uint32)REG_READ32(ADCDIG_IMR_REG_ADDR32(Unit));
#     VAR(boolean, AUTOMATIC) bIsrSpurious = (boolean)TRUE;
	.d2line		1749
.Llo132:
	diab.li		r3,1		# bIsrSpurious=r3
	.d2line		1745
.Llo133:
	lis		r4,ADCDIG_BASE_ADDR32@ha
	e_add16i		r4,r4,ADCDIG_BASE_ADDR32@l
	rlwinm		r0,r31,2,22,29		# Unit=r31
	lwzux		r5,r4,r0
	lwz		r4,16(r5)
	stw		r4,8(r1)
	.d2line		1748
	lis		r4,ADCDIG_BASE_ADDR32@ha
	e_add16i		r4,r4,ADCDIG_BASE_ADDR32@l
	lwzx		r4,r4,r0
	lwz		r0,32(r4)
	stw		r0,12(r1)
# #if (ADC_SOFTWARE_INJECTED_CONVERSIONS_USED == STD_ON)    
#     VAR(Adc_QueueIndexType, AUTOMATIC) SwInjectedQueueIndex;
# #endif /* ADC_SOFTWARE_INJECTED_CONVERSIONS_USED == STD_ON */
#     VAR(Adc_QueueIndexType, AUTOMATIC) SwNormalQueueIndex;
# #if (ADC_HW_TRIGGER_API == STD_ON)
#     VAR(Adc_QueueIndexType, AUTOMATIC) HwInjectedQueueIndex;
# #if (ADC_HARDWARE_NORMAL_CONVERSIONS_USED == STD_ON)
#     VAR(Adc_QueueIndexType, AUTOMATIC) HwNormalQueueIndex;
# #endif /* (ADC_HARDWARE_NORMAL_CONVERSIONS_USED == STD_ON) */
# #endif /* ADC_HW_TRIGGER_API == STD_ON */
# 
#     if(NULL_PTR != Adc_pCfgPtr)
	.d2line		1761
	lis		r4,Adc_pCfgPtr@ha
	lwz		r0,Adc_pCfgPtr@l(r4)
	se_cmpi		r0,0
	bc		1,2,.L571	# eq
#     {
# #if (ADC_SOFTWARE_INJECTED_CONVERSIONS_USED == STD_ON)
#         SwInjectedQueueIndex = Adc_aUnitStatus[Unit].SwInjectedQueueIndex;
#         if ((ADCDIG_ISR_END_CHAIN_INJ_CONV_U32 == (u32IsrValue & ADCDIG_ISR_END_CHAIN_INJ_CONV_U32)) && \
#             (SwInjectedQueueIndex > (Adc_QueueIndexType)0) \
#            )
#         {
#             if (ADCDIG_ISR_END_CHAIN_INJ_CONV_MASK_U32 == (u32ImrValue & ADCDIG_ISR_END_CHAIN_INJ_CONV_MASK_U32))
#             {
#                 Adc_Adcdig_EndSoftwareConv(Unit, (boolean)TRUE);
#                 /* To get again the right ISR status */
#                 /** @violates @ref Adc_Adcdig_Irq_c_REF_9 cast from unsigned int to pointer */
#                 /** @violates @ref Adc_Adcdig_Irq_c_REF_3 A cast should not be performed between a pointer type and an integral type. */
#                 REG_WRITE32(ADCDIG_ISR_REG_ADDR32(Unit), ADCDIG_ISR_END_CHAIN_INJ_CONV_CLEAN_U32);
#                 /** @violates @ref Adc_Adcdig_Irq_c_REF_9 cast from unsigned int to pointer. */
#                 /** @violates @ref Adc_Adcdig_Irq_c_REF_3 A cast should not be performed between a pointer type and an integral type. */
#                 u32IsrValue = REG_READ32(ADCDIG_ISR_REG_ADDR32(Unit));
#             }
#             else
#             {
#                 /** @violates @ref Adc_Adcdig_Irq_c_REF_9 cast from unsigned int to pointer */
#                 /** @violates @ref Adc_Adcdig_Irq_c_REF_3 A cast should not be performed between a pointer type and an integral type. */
#                 REG_WRITE32(ADCDIG_ISR_REG_ADDR32(Unit), ADCDIG_ISR_END_CHAIN_INJ_CONV_CLEAN_U32);
#             }
#             bIsrSpurious = (boolean)FALSE;
#         }
# #endif /* ADC_SOFTWARE_INJECTED_CONVERSIONS_USED == STD_ON */
#         SwNormalQueueIndex = Adc_aUnitStatus[Unit].SwNormalQueueIndex;
	.d2line		1789
	lis		r4,Adc_aUnitStatus@ha
	e_add16i		r4,r4,Adc_aUnitStatus@l
	rlwinm		r0,r31,3,21,28		# Unit=r31
	se_add		r0,r4
	lhzx		r4,r0,r0
.Llo143:
	mr		r4,r4		# SwNormalQueueIndex=r4 SwNormalQueueIndex=r4
#         if((ADCDIG_ISR_END_CHAIN_NORM_CONV_U32 == (u32IsrValue & ADCDIG_ISR_END_CHAIN_NORM_CONV_U32)) && \
	.d2line		1790
	lwz		r0,8(r1)
	se_btsti		r0,31
	bc		1,2,.L571	# eq
	rlwinm		r4,r4,0,16,31		# SwNormalQueueIndex=r4 SwNormalQueueIndex=r4
	se_cmpi		r4,0		# SwNormalQueueIndex=r4
	bc		0,1,.L571	# le
#            (SwNormalQueueIndex > (Adc_QueueIndexType)0) \
#           )
#         {
#             if (ADCDIG_ISR_END_CHAIN_NORM_CONV_MASK_U32 == (u32ImrValue & ADCDIG_ISR_END_CHAIN_NORM_CONV_MASK_U32))
	.d2line		1794
.Llo144:
	lwz		r0,12(r1)
	se_btsti		r0,31
	bc		1,2,.L573	# eq
#             {
#                 Adc_Adcdig_EndSoftwareConv(Unit, (boolean)FALSE);
	.d2line		1796
.Llo137:
	mr		r3,r31		# Unit=r3 Unit=r31
	diab.li		r4,0		# SwNormalQueueIndex=r4
	bl		Adc_Adcdig_EndSoftwareConv
	b		.L574
.L573:
#             }
#             else
#             {
#                 /** @violates @ref Adc_Adcdig_Irq_c_REF_9 cast from unsigned int to pointer */
#                 /** @violates @ref Adc_Adcdig_Irq_c_REF_3 A cast should not be performed between a pointer type and an integral type. */
#                 REG_WRITE32(ADCDIG_ISR_REG_ADDR32(Unit), ADCDIG_ISR_END_CHAIN_NORM_CONV_CLEAN_U32);
	.d2line		1802
	diab.li		r4,1		# SwNormalQueueIndex=r4
.Llo145:
	lis		r3,ADCDIG_BASE_ADDR32@ha		# bIsrSpurious=r3
.Llo138:
	e_add16i		r3,r3,ADCDIG_BASE_ADDR32@l		# bIsrSpurious=r3 bIsrSpurious=r3
	rlwinm		r0,r31,2,22,29		# Unit=r31
	lwzx		r3,r3,r0		# bIsrSpurious=r3 bIsrSpurious=r3
	stw		r4,16(r3)		# bIsrSpurious=r3 SwNormalQueueIndex=r4
.L574:
#             }
#             bIsrSpurious = (boolean)FALSE;
	.d2line		1804
.Llo139:
	diab.li		r3,0		# bIsrSpurious=r3
.L571:
#         }
# 
# #if (ADC_HW_TRIGGER_API == STD_ON)
#         HwInjectedQueueIndex = Adc_aUnitStatus[Unit].HwInjectedQueueIndex;
#         if ((ADCDIG_ISR_END_CHAIN_INJ_CONV_U32 == (u32IsrValue & ADCDIG_ISR_END_CHAIN_INJ_CONV_U32)) && \
#             (HwInjectedQueueIndex > (Adc_QueueIndexType)0) \
#            )
#         {
#             if (ADCDIG_ISR_END_CHAIN_INJ_CONV_MASK_U32 == (u32ImrValue & ADCDIG_ISR_END_CHAIN_INJ_CONV_MASK_U32))
#             {
#                 Adc_Adcdig_EndHardwareConv(Unit, (boolean)TRUE);
#             }
#             /** @violates @ref Adc_Adcdig_Irq_c_REF_9 cast from unsigned int to pointer */
#             /** @violates @ref Adc_Adcdig_Irq_c_REF_3 A cast should not be performed between a pointer type and an integral type. */
#             REG_WRITE32(ADCDIG_ISR_REG_ADDR32(Unit), ADCDIG_ISR_END_CHAIN_INJ_CONV_CLEAN_U32 | \
#                                                      ADCDIG_ISR_END_CHANNEL_INJ_CONV_CLEAN_U32 \
#                        );
#             bIsrSpurious = (boolean)FALSE;
#         }
# #if (ADC_HARDWARE_NORMAL_CONVERSIONS_USED == STD_ON)
#         HwNormalQueueIndex = Adc_aUnitStatus[Unit].HwNormalQueueIndex;
#         if ((ADCDIG_ISR_END_CHAIN_NORM_CONV_U32 == (u32IsrValue & ADCDIG_ISR_END_CHAIN_NORM_CONV_U32)) && \
#             (HwNormalQueueIndex > (Adc_QueueIndexType)0) \
#            )
#         {
#             if (ADCDIG_ISR_END_CHAIN_NORM_CONV_MASK_U32 == (u32ImrValue & ADCDIG_ISR_END_CHAIN_NORM_CONV_MASK_U32))
#             {
#                 Adc_Adcdig_EndHardwareConv(Unit, (boolean)FALSE);
#             }
#             /** @violates @ref Adc_Adcdig_Irq_c_REF_9 cast from unsigned int to pointer */
#             /** @violates @ref Adc_Adcdig_Irq_c_REF_3 A cast should not be performed between a pointer type and an integral type. */
#             REG_WRITE32(ADCDIG_ISR_REG_ADDR32(Unit), ADCDIG_ISR_END_CHAIN_NORM_CONV_CLEAN_U32 | ADCDIG_ISR_END_CHANNEL_NORM_CONV_U32);
#             bIsrSpurious = (boolean)FALSE;
#         }
# #endif /* (ADC_HARDWARE_NORMAL_CONVERSIONS_USED == STD_ON) */
# #endif /* ADC_HW_TRIGGER_API == STD_ON */
#     }
#     if ((boolean)TRUE == bIsrSpurious)
	.d2line		1842
.Llo140:
	rlwinm		r3,r3,0,24,31		# bIsrSpurious=r3 bIsrSpurious=r3
	se_cmpi		r3,1		# bIsrSpurious=r3
	bc		0,2,.L570	# ne
#     {
#         /* Clear Interrupt status flags */
#         /** @violates @ref Adc_Adcdig_Irq_c_REF_9 cast from unsigned int to pointer */
#         /** @violates @ref Adc_Adcdig_Irq_c_REF_3 A cast should not be performed between a pointer type and an integral type. */
#         REG_WRITE32(ADCDIG_ISR_REG_ADDR32(Unit), u32IsrValue);
	.d2line		1847
.Llo134:
	lwz		r0,8(r1)
	lis		r3,ADCDIG_BASE_ADDR32@ha		# bIsrSpurious=r3
.Llo141:
	e_add16i		r3,r3,ADCDIG_BASE_ADDR32@l		# bIsrSpurious=r3 bIsrSpurious=r3
.Llo135:
	rlwinm		r31,r31,2,22,29		# Unit=r31 Unit=r31
.Llo136:
	lwzx		r3,r3,r31		# bIsrSpurious=r3 bIsrSpurious=r3
	stw		r0,16(r3)		# bIsrSpurious=r3
.L570:
#     }
# }
	.d2line		1849
	.d2epilogue_begin
.Llo142:
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
.L689:
	.type		Adc_Adcdig_EndGroupConversion,@function
	.size		Adc_Adcdig_EndGroupConversion,.-Adc_Adcdig_EndGroupConversion
# Number of nodes = 97

# Allocations for Adc_Adcdig_EndGroupConversion
#	?a4		Unit
#	SP,8		u32IsrValue
#	SP,12		u32ImrValue
#	?a5		bIsrSpurious
#	?a6		SwNormalQueueIndex
# ISR(Adc_Adcdig_EndGroupConvUnit0)
	.section	.Os_PUBLIC_TEXT,,c
	.align		2
	.section	.debug_line.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_line
.L706:
	.section	.Os_PUBLIC_TEXT,,c
#$$ld
.L702:
	.0byte		.L700
	.d2_line_start	.debug_line.Os_PUBLIC_TEXT
	.section	.Os_PUBLIC_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Adc\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Adc_Adcdig_Irq.c"
        .d2line         2182,1
#$$ld
.L709:

#$$bf	OS_ISR_Adc_Adcdig_EndGroupConvUnit0,interprocedural,rasave,nostackparams
	.globl		OS_ISR_Adc_Adcdig_EndGroupConvUnit0
	.d2_cfa_start __cie
OS_ISR_Adc_Adcdig_EndGroupConvUnit0:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
# #ifdef ADC_WDG_GROUP_SHARED_ISR
# #ifdef ADC_WDG_SUPPORTED
#     Adc_Adcdig_WdgThresholdHandler((Adc_HwUnitType)ADC_UNIT_0);
# #endif
# #endif /* ADC_WDG_GROUP_SHARED_ISR */
#     Adc_Adcdig_EndGroupConversion((Adc_HwUnitType)ADC_UNIT_0);
	.d2line		2189
	diab.li		r3,0
	bl		Adc_Adcdig_EndGroupConversion
#     /**
#     * @violates @ref Adc_Adcdig_Irq_c_REF_9 cast from unsigned int to pointer.
#     * @violates @ref Adc_Adcdig_Irq_c_REF_11 cast from int to a different type
#     * @violates @ref Adc_Adcdig_Irq_c_REF_3 A cast should not be performed between a pointer type and an integral type.
#     */
#     EXIT_INTERRUPT();
# }
	.d2line		2196
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_PUBLIC_TEXT,,c
#$$ld
.L710:
	.type		OS_ISR_Adc_Adcdig_EndGroupConvUnit0,@function
	.size		OS_ISR_Adc_Adcdig_EndGroupConvUnit0,.-OS_ISR_Adc_Adcdig_EndGroupConvUnit0
# Number of nodes = 4

# Allocations for OS_ISR_Adc_Adcdig_EndGroupConvUnit0

# Allocations for module
	.section	.mcal_bss,,b
	.0byte		.L713
	.section	.text_vle
	.0byte		.L721
	.section	.mcal_bss,,b
	.0byte		.L726
	.section	.mcal_bss,,b
	.0byte		.L732
	.section	.text_vle
#$$ld
.L5:
.L820:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Adc\\ssc\\make\\..\\..\\generator\\integration_package\\include\\Adc_Types.h"
.L742:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_HookApiTypes.h"
.L727:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Adc\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Adc_Adcdig_Irq.c"
.L722:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Adc\\ssc\\make\\..\\..\\generator\\integration_package\\include\\Adc_Reg_eSys_Adcdig.h"
.L714:	.d2filenum "gen\\MPC5746R_ECU\\WindRiver\\include\\Adc_Cfg.h"
	.d2_line_end
	.section	.invalid_TEXT,,c
#$$ld
.L585:
.L593:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Adc\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Adc_Adcdig_Irq.c"
	.d2_line_end
	.section	.Os_PUBLIC_TEXT,,c
#$$ld
.L703:
.L711:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Adc\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Adc_Adcdig_Irq.c"
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
	.uleb128	12
	.uleb128	40
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	28
	.uleb128	13
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	13
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
	.uleb128	15
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	16
	.uleb128	53
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	17
	.uleb128	38
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
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	20
	.uleb128	33
	.byte		0x0
	.uleb128	47
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	21
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Adc\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Adc_Adcdig_Irq.c"
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
.L582:
	.4byte		.L583-.L581
.L581:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L587-.L582
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Adc\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Adc_Adcdig_Irq.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L584
	.4byte		.L585
	.4byte		.L588
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L597:
	.sleb128	2
	.4byte		.L590-.L582
	.byte		"Adc_Adcdig_RecordResult"
	.byte		0
	.4byte		.L593
	.uleb128	527
	.uleb128	45
	.4byte		.L594
	.byte		0x1
	.4byte		.L591
	.4byte		.L592
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L593
	.uleb128	527
	.uleb128	45
	.byte		"Unit"
	.byte		0
	.4byte		.L598
	.4byte		.L599
	.sleb128	3
	.4byte		.L593
	.uleb128	527
	.uleb128	45
	.byte		"Group"
	.byte		0
	.4byte		.L600
	.4byte		.L603
	.sleb128	3
	.4byte		.L593
	.uleb128	527
	.uleb128	45
	.byte		"GroupSamples"
	.byte		0
	.4byte		.L604
	.4byte		.L605
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L606:
	.sleb128	4
	.4byte		.L593
	.uleb128	534
	.uleb128	42
	.byte		"Ch"
	.byte		0
	.4byte		.L607
	.4byte		.L608
.L609:
	.sleb128	4
	.4byte		.L593
	.uleb128	535
	.uleb128	37
	.byte		"ChIndex"
	.byte		0
	.4byte		.L610
	.4byte		.L611
.L612:
	.sleb128	4
	.4byte		.L593
	.uleb128	536
	.uleb128	28
	.byte		"u32CdrValue"
	.byte		0
	.4byte		.L613
	.4byte		.L615
.L616:
	.sleb128	4
	.4byte		.L593
	.uleb128	537
	.uleb128	57
	.byte		"pResult"
	.byte		0
	.4byte		.L617
	.4byte		.L619
.L620:
	.sleb128	4
	.4byte		.L593
	.uleb128	538
	.uleb128	36
	.byte		"ReturnValue"
	.byte		0
	.4byte		.L594
	.4byte		.L621
.L622:
	.sleb128	4
	.4byte		.L593
	.uleb128	539
	.uleb128	28
	.byte		"u32CdrMask"
	.byte		0
	.4byte		.L613
	.4byte		.L623
.L624:
	.sleb128	4
	.4byte		.L593
	.uleb128	547
	.uleb128	28
	.byte		"bFlag"
	.byte		0
	.4byte		.L625
	.4byte		.L626
.L627:
	.sleb128	4
	.4byte		.L593
	.uleb128	548
	.uleb128	28
	.byte		"u16CdrValueTemp"
	.byte		0
	.4byte		.L601
	.4byte		.L628
.L629:
	.sleb128	4
	.4byte		.L593
	.uleb128	550
	.uleb128	42
	.byte		"ChannelCount"
	.byte		0
	.4byte		.L607
	.4byte		.L630
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L590:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L635:
	.sleb128	2
	.4byte		.L632-.L582
	.byte		"Adc_Adcdig_CheckNotification"
	.byte		0
	.4byte		.L593
	.uleb128	634
	.uleb128	38
	.4byte		.L625
	.byte		0x1
	.4byte		.L633
	.4byte		.L634
	.sleb128	3
	.4byte		.L593
	.uleb128	634
	.uleb128	38
	.byte		"Group"
	.byte		0
	.4byte		.L600
	.4byte		.L636
.L637:
	.sleb128	4
	.4byte		.L593
	.uleb128	639
	.uleb128	29
	.byte		"bCallNotification"
	.byte		0
	.4byte		.L625
	.4byte		.L638
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L632:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L643:
	.sleb128	5
	.4byte		.L640-.L582
	.byte		"Adc_Adcdig_UpdateQueue"
	.byte		0
	.4byte		.L593
	.uleb128	658
	.uleb128	35
	.byte		0x1
	.4byte		.L641
	.4byte		.L642
	.sleb128	3
	.4byte		.L593
	.uleb128	658
	.uleb128	35
	.byte		"Unit"
	.byte		0
	.4byte		.L598
	.4byte		.L644
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L640:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L649:
	.sleb128	5
	.4byte		.L646-.L582
	.byte		"Adc_Adcdig_ClearValidBit"
	.byte		0
	.4byte		.L593
	.uleb128	682
	.uleb128	35
	.byte		0x1
	.4byte		.L647
	.4byte		.L648
	.sleb128	3
	.4byte		.L593
	.uleb128	682
	.uleb128	35
	.byte		"Unit"
	.byte		0
	.4byte		.L598
	.4byte		.L650
	.sleb128	3
	.4byte		.L593
	.uleb128	682
	.uleb128	35
	.byte		"Group"
	.byte		0
	.4byte		.L600
	.4byte		.L651
.L652:
	.sleb128	4
	.4byte		.L593
	.uleb128	688
	.uleb128	42
	.byte		"ChTemp"
	.byte		0
	.4byte		.L607
	.4byte		.L653
.L654:
	.sleb128	4
	.4byte		.L593
	.uleb128	689
	.uleb128	37
	.byte		"ChIndexTemp"
	.byte		0
	.4byte		.L610
	.4byte		.L655
.L656:
	.sleb128	4
	.4byte		.L593
	.uleb128	690
	.uleb128	42
	.byte		"ChannelCount"
	.byte		0
	.4byte		.L607
	.4byte		.L657
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L646:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L662:
	.sleb128	5
	.4byte		.L659-.L582
	.byte		"Adc_Adcdig_UpdateGroupState"
	.byte		0
	.4byte		.L593
	.uleb128	729
	.uleb128	35
	.byte		0x1
	.4byte		.L660
	.4byte		.L661
	.sleb128	3
	.4byte		.L593
	.uleb128	729
	.uleb128	35
	.byte		"Unit"
	.byte		0
	.4byte		.L598
	.4byte		.L663
	.sleb128	3
	.4byte		.L593
	.uleb128	729
	.uleb128	35
	.byte		"Group"
	.byte		0
	.4byte		.L600
	.4byte		.L664
	.sleb128	3
	.4byte		.L593
	.uleb128	729
	.uleb128	35
	.byte		"GroupSamples"
	.byte		0
	.4byte		.L604
	.4byte		.L665
	.sleb128	3
	.4byte		.L593
	.uleb128	729
	.uleb128	35
	.byte		"bInjectedFlag"
	.byte		0
	.4byte		.L625
	.4byte		.L666
.L667:
	.sleb128	4
	.4byte		.L593
	.uleb128	738
	.uleb128	30
	.byte		"bCallNotification"
	.byte		0
	.4byte		.L625
	.4byte		.L668
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L669:
	.sleb128	6
	.4byte		.L593
	.uleb128	740
	.uleb128	37
	.byte		"u32Timeout"
	.byte		0
	.4byte		.L670
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
.L671:
	.sleb128	4
	.4byte		.L593
	.uleb128	741
	.uleb128	28
	.byte		"u32MsrStatus"
	.byte		0
	.4byte		.L613
	.4byte		.L672
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L659:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L677:
	.sleb128	5
	.4byte		.L674-.L582
	.byte		"Adc_Adcdig_EndSoftwareConv"
	.byte		0
	.4byte		.L593
	.uleb128	894
	.uleb128	35
	.byte		0x1
	.4byte		.L675
	.4byte		.L676
	.sleb128	3
	.4byte		.L593
	.uleb128	894
	.uleb128	35
	.byte		"Unit"
	.byte		0
	.4byte		.L598
	.4byte		.L678
	.sleb128	3
	.4byte		.L593
	.uleb128	894
	.uleb128	35
	.byte		"bInjectedFlag"
	.byte		0
	.4byte		.L625
	.4byte		.L679
.L680:
	.sleb128	4
	.4byte		.L593
	.uleb128	900
	.uleb128	35
	.byte		"Group"
	.byte		0
	.4byte		.L600
	.4byte		.L681
.L682:
	.sleb128	4
	.4byte		.L593
	.uleb128	902
	.uleb128	45
	.byte		"GroupSamples"
	.byte		0
	.4byte		.L604
	.4byte		.L683
.L684:
	.sleb128	4
	.4byte		.L593
	.uleb128	903
	.uleb128	36
	.byte		"Test"
	.byte		0
	.4byte		.L594
	.4byte		.L685
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L674:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L690:
	.sleb128	5
	.4byte		.L687-.L582
	.byte		"Adc_Adcdig_EndGroupConversion"
	.byte		0
	.4byte		.L593
	.uleb128	1738
	.uleb128	35
	.byte		0x1
	.4byte		.L688
	.4byte		.L689
	.sleb128	3
	.4byte		.L593
	.uleb128	1738
	.uleb128	35
	.byte		"Unit"
	.byte		0
	.4byte		.L598
	.4byte		.L691
.L692:
	.sleb128	6
	.4byte		.L593
	.uleb128	1745
	.uleb128	37
	.byte		"u32IsrValue"
	.byte		0
	.4byte		.L670
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
.L693:
	.sleb128	6
	.4byte		.L593
	.uleb128	1748
	.uleb128	37
	.byte		"u32ImrValue"
	.byte		0
	.4byte		.L670
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	12
.L694:
	.sleb128	4
	.4byte		.L593
	.uleb128	1749
	.uleb128	29
	.byte		"bIsrSpurious"
	.byte		0
	.4byte		.L625
	.4byte		.L695
.L696:
	.sleb128	4
	.4byte		.L593
	.uleb128	1753
	.uleb128	40
	.byte		"SwNormalQueueIndex"
	.byte		0
	.4byte		.L697
	.4byte		.L698
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L687:
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
.L700:
	.4byte		.L701-.L699
.L699:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L705-.L700
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Adc\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Adc_Adcdig_Irq.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L702
	.4byte		.L703
	.4byte		.L706
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
.L712:
	.sleb128	7
	.4byte		.L708-.L700
	.byte		"OS_ISR_Adc_Adcdig_EndGroupConvUnit0"
	.byte		0
	.4byte		.L711
	.uleb128	2182
	.uleb128	1
	.byte		0x1
	.byte		0x1
	.4byte		.L709
	.4byte		.L710
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L708:
	.section	.debug_info,,n
.L713:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L714
	.uleb128	256
	.uleb128	78
	.byte		"Adc_ChannelsLimitCheckingCfg"
	.byte		0
	.4byte		.L715
	.section	.debug_info,,n
.L721:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L722
	.uleb128	136
	.uleb128	33
	.byte		"ADCDIG_BASE_ADDR32"
	.byte		0
	.4byte		.L723
	.section	.debug_info,,n
.L726:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L727
	.uleb128	378
	.uleb128	57
	.byte		"Adc_pCfgPtr"
	.byte		0
	.4byte		.L728
	.section	.debug_info,,n
.L732:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L727
	.uleb128	394
	.uleb128	42
	.byte		"Adc_aGroupStatus"
	.byte		0
	.4byte		.L733
	.section	.debug_info,,n
.L737:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L727
	.uleb128	396
	.uleb128	42
	.byte		"Adc_aUnitStatus"
	.byte		0
	.4byte		.L738
	.section	.debug_info,,n
.L731:
	.sleb128	9
	.4byte		.L742
	.uleb128	34
	.uleb128	14
	.4byte		.L743-.L2
	.uleb128	44
	.section	.debug_info,,n
.L512:
	.sleb128	10
	.byte		"pAdc"
	.byte		0
	.4byte		.L744
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L513:
	.sleb128	10
	.byte		"pGroups"
	.byte		0
	.4byte		.L748
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L514:
	.sleb128	10
	.byte		"pChannels"
	.byte		0
	.4byte		.L752
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L515:
	.sleb128	10
	.byte		"GroupCount"
	.byte		0
	.4byte		.L600
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L516:
	.sleb128	10
	.byte		"Misc"
	.byte		0
	.4byte		.L757
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
	.sleb128	0
.L743:
.L759:
	.sleb128	9
	.4byte		.L742
	.uleb128	34
	.uleb128	14
	.4byte		.L760-.L2
	.uleb128	30
.L480:
	.sleb128	10
	.byte		"u8Adc_DmaInterruptSoftware"
	.byte		0
	.4byte		.L761
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L481:
	.sleb128	10
	.byte		"Adc_MaxHwCfg"
	.byte		0
	.4byte		.L764
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L482:
	.sleb128	10
	.byte		"aAdc_Groups"
	.byte		0
	.4byte		.L765
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L483:
	.sleb128	10
	.byte		"aAdc_Channels"
	.byte		0
	.4byte		.L768
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L484:
	.sleb128	10
	.byte		"au8Adc_DmaChannel"
	.byte		0
	.4byte		.L771
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L485:
	.sleb128	10
	.byte		"au8Adc_HwUnit"
	.byte		0
	.4byte		.L773
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L486:
	.sleb128	10
	.byte		"aHwLogicalId"
	.byte		0
	.4byte		.L775
	.sleb128	2
	.byte		0x23
	.uleb128	26
	.byte		0x1
	.sleb128	0
.L760:
.L751:
	.sleb128	9
	.4byte		.L742
	.uleb128	34
	.uleb128	14
	.4byte		.L777-.L2
	.uleb128	92
.L453:
	.sleb128	10
	.byte		"HwUnit"
	.byte		0
	.4byte		.L764
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L454:
	.sleb128	10
	.byte		"eAccessMode"
	.byte		0
	.4byte		.L778
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L455:
	.sleb128	10
	.byte		"eMode"
	.byte		0
	.4byte		.L781
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L456:
	.sleb128	10
	.byte		"eType"
	.byte		0
	.4byte		.L784
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L457:
	.sleb128	10
	.byte		"eReplecementMode"
	.byte		0
	.4byte		.L787
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L458:
	.sleb128	10
	.byte		"eTriggerSource"
	.byte		0
	.4byte		.L790
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L459:
	.sleb128	10
	.byte		"Notification"
	.byte		0
	.4byte		.L793
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L460:
	.sleb128	10
	.byte		"u32PrecisionChannel"
	.byte		0
	.4byte		.L725
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L461:
	.sleb128	10
	.byte		"u32ExtendedChannel"
	.byte		0
	.4byte		.L725
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L462:
	.sleb128	10
	.byte		"u32ExternalChannel"
	.byte		0
	.4byte		.L725
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L463:
	.sleb128	10
	.byte		"u32PrecisionPsr"
	.byte		0
	.4byte		.L725
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L464:
	.sleb128	10
	.byte		"u32ExtendedPsr"
	.byte		0
	.4byte		.L725
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L465:
	.sleb128	10
	.byte		"u32ExternalPsr"
	.byte		0
	.4byte		.L725
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L466:
	.sleb128	10
	.byte		"u32Wer0"
	.byte		0
	.4byte		.L725
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L467:
	.sleb128	10
	.byte		"u32Wer1"
	.byte		0
	.4byte		.L725
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L468:
	.sleb128	10
	.byte		"u32Wer2"
	.byte		0
	.4byte		.L725
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
.L469:
	.sleb128	10
	.byte		"pResultsBufferPtr"
	.byte		0
	.4byte		.L798
	.sleb128	2
	.byte		0x23
	.uleb128	64
	.byte		0x1
.L470:
	.sleb128	10
	.byte		"eBufferMode"
	.byte		0
	.4byte		.L799
	.sleb128	2
	.byte		0x23
	.uleb128	68
	.byte		0x1
.L471:
	.sleb128	10
	.byte		"NumSamples"
	.byte		0
	.4byte		.L802
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.byte		0x1
.L472:
	.sleb128	10
	.byte		"pAssignment"
	.byte		0
	.4byte		.L803
	.sleb128	2
	.byte		0x23
	.uleb128	76
	.byte		0x1
.L473:
	.sleb128	10
	.byte		"AssignedChannelCount"
	.byte		0
	.4byte		.L806
	.sleb128	2
	.byte		0x23
	.uleb128	80
	.byte		0x1
.L474:
	.sleb128	10
	.byte		"ConvTime"
	.byte		0
	.4byte		.L807
	.sleb128	2
	.byte		0x23
	.uleb128	82
	.byte		0x1
.L475:
	.sleb128	10
	.byte		"ConvTime1"
	.byte		0
	.4byte		.L807
	.sleb128	2
	.byte		0x23
	.uleb128	84
	.byte		0x1
.L476:
	.sleb128	10
	.byte		"ConvTime2"
	.byte		0
	.4byte		.L807
	.sleb128	2
	.byte		0x23
	.uleb128	86
	.byte		0x1
.L477:
	.sleb128	10
	.byte		"LastCh"
	.byte		0
	.4byte		.L770
	.sleb128	2
	.byte		0x23
	.uleb128	88
	.byte		0x1
.L478:
	.sleb128	10
	.byte		"FirstCh"
	.byte		0
	.4byte		.L770
	.sleb128	2
	.byte		0x23
	.uleb128	89
	.byte		0x1
.L479:
	.sleb128	10
	.byte		"u8AdcWithoutInterrupt"
	.byte		0
	.4byte		.L763
	.sleb128	2
	.byte		0x23
	.uleb128	90
	.byte		0x1
	.sleb128	0
.L777:
.L747:
	.sleb128	9
	.4byte		.L742
	.uleb128	34
	.uleb128	14
	.4byte		.L809-.L2
	.uleb128	36
.L437:
	.sleb128	10
	.byte		"AdcHardwareUnitId"
	.byte		0
	.4byte		.L764
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L438:
	.sleb128	10
	.byte		"u32AdcMainConfig"
	.byte		0
	.4byte		.L725
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L439:
	.sleb128	10
	.byte		"u32AdcPrescale"
	.byte		0
	.4byte		.L725
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L440:
	.sleb128	10
	.byte		"u8AdcPwrDownDelay"
	.byte		0
	.4byte		.L763
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L441:
	.sleb128	10
	.byte		"u16AdcMuxDelay"
	.byte		0
	.4byte		.L810
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L442:
	.sleb128	10
	.byte		"u8PreVal0"
	.byte		0
	.4byte		.L763
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L443:
	.sleb128	10
	.byte		"u8PreVal1"
	.byte		0
	.4byte		.L763
	.sleb128	2
	.byte		0x23
	.uleb128	17
	.byte		0x1
.L444:
	.sleb128	10
	.byte		"u8PreVal2"
	.byte		0
	.4byte		.L763
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L445:
	.sleb128	10
	.byte		"u8PreConv"
	.byte		0
	.4byte		.L763
	.sleb128	2
	.byte		0x23
	.uleb128	19
	.byte		0x1
.L446:
	.sleb128	10
	.byte		"ConvTimeNormal"
	.byte		0
	.4byte		.L807
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L447:
	.sleb128	10
	.byte		"ConvTimeAlternate"
	.byte		0
	.4byte		.L807
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L448:
	.sleb128	10
	.byte		"ConvTimeNormal1"
	.byte		0
	.4byte		.L807
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L449:
	.sleb128	10
	.byte		"ConvTimeAlternate1"
	.byte		0
	.4byte		.L807
	.sleb128	2
	.byte		0x23
	.uleb128	26
	.byte		0x1
.L450:
	.sleb128	10
	.byte		"ConvTimeNormal2"
	.byte		0
	.4byte		.L807
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L451:
	.sleb128	10
	.byte		"ConvTimeAlternate2"
	.byte		0
	.4byte		.L807
	.sleb128	2
	.byte		0x23
	.uleb128	30
	.byte		0x1
.L452:
	.sleb128	10
	.byte		"Res"
	.byte		0
	.4byte		.L811
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
	.sleb128	0
.L809:
.L720:
	.sleb128	9
	.4byte		.L742
	.uleb128	34
	.uleb128	14
	.4byte		.L813-.L2
	.uleb128	12
.L433:
	.sleb128	10
	.byte		"bChannelLimitCheck"
	.byte		0
	.4byte		.L814
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L434:
	.sleb128	10
	.byte		"eChannelRange"
	.byte		0
	.4byte		.L815
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L435:
	.sleb128	10
	.byte		"ChannelHighLimit"
	.byte		0
	.4byte		.L818
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L436:
	.sleb128	10
	.byte		"ChannelLowLimit"
	.byte		0
	.4byte		.L818
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
	.sleb128	0
.L813:
.L756:
	.sleb128	9
	.4byte		.L742
	.uleb128	34
	.uleb128	14
	.4byte		.L819-.L2
	.uleb128	2
.L431:
	.sleb128	10
	.byte		"ChId"
	.byte		0
	.4byte		.L770
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L432:
	.sleb128	10
	.byte		"u8EnablePresampling"
	.byte		0
	.4byte		.L763
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
	.sleb128	0
.L819:
.L741:
	.sleb128	9
	.4byte		.L820
	.uleb128	369
	.uleb128	1
	.4byte		.L821-.L2
	.uleb128	8
.L255:
	.sleb128	10
	.byte		"SwNormalQueueIndex"
	.byte		0
	.4byte		.L822
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L256:
	.sleb128	10
	.byte		"SwNormalQueue"
	.byte		0
	.4byte		.L823
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L257:
	.sleb128	10
	.byte		"SwInjectedQueue"
	.byte		0
	.4byte		.L826
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L258:
	.sleb128	10
	.byte		"SwInjectedQueueIndex"
	.byte		0
	.4byte		.L822
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
	.sleb128	0
.L821:
.L736:
	.sleb128	9
	.4byte		.L820
	.uleb128	369
	.uleb128	1
	.4byte		.L828-.L2
	.uleb128	16
.L250:
	.sleb128	10
	.byte		"eConversion"
	.byte		0
	.4byte		.L829
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L251:
	.sleb128	10
	.byte		"eAlreadyConverted"
	.byte		0
	.4byte		.L832
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L252:
	.sleb128	10
	.byte		"eNotification"
	.byte		0
	.4byte		.L835
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L253:
	.sleb128	10
	.byte		"ResultIndex"
	.byte		0
	.4byte		.L837
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L254:
	.sleb128	10
	.byte		"bLimitCheckFailed"
	.byte		0
	.4byte		.L838
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
	.sleb128	0
.L828:
	.section	.debug_info,,n
.L817:
	.sleb128	11
	.4byte		.L820
	.uleb128	369
	.uleb128	1
	.4byte		.L839-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	12
	.byte		"ADC_RANGE_ALWAYS"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"ADC_RANGE_BETWEEN"
	.byte		0
	.sleb128	1
	.sleb128	12
	.byte		"ADC_RANGE_NOT_BETWEEN"
	.byte		0
	.sleb128	2
	.sleb128	12
	.byte		"ADC_RANGE_NOT_OVER_HIGH"
	.byte		0
	.sleb128	3
	.sleb128	12
	.byte		"ADC_RANGE_NOT_UNDER_LOW"
	.byte		0
	.sleb128	4
	.sleb128	12
	.byte		"ADC_RANGE_OVER_HIGH"
	.byte		0
	.sleb128	5
	.sleb128	12
	.byte		"ADC_RANGE_UNDER_LOW"
	.byte		0
	.sleb128	6
	.sleb128	0
.L839:
.L792:
	.sleb128	11
	.4byte		.L820
	.uleb128	315
	.uleb128	1
	.4byte		.L840-.L2
	.uleb128	4
	.sleb128	12
	.byte		"ADC_TRIGG_SRC_SW"
	.byte		0
	.sleb128	0
	.sleb128	0
.L840:
.L836:
	.sleb128	11
	.4byte		.L820
	.uleb128	292
	.uleb128	1
	.4byte		.L841-.L2
	.uleb128	4
	.sleb128	12
	.byte		"ADC_NOTIFICATION_DISABLED"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"ADC_NOTIFICATION_ENABLED"
	.byte		0
	.sleb128	1
	.sleb128	0
.L841:
.L831:
	.sleb128	11
	.4byte		.L820
	.uleb128	279
	.uleb128	1
	.4byte		.L842-.L2
	.uleb128	4
	.sleb128	12
	.byte		"ADC_IDLE"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"ADC_BUSY"
	.byte		0
	.sleb128	1
	.sleb128	12
	.byte		"ADC_COMPLETED"
	.byte		0
	.sleb128	2
	.sleb128	12
	.byte		"ADC_STREAM_COMPLETED"
	.byte		0
	.sleb128	3
	.sleb128	0
.L842:
.L801:
	.sleb128	11
	.4byte		.L820
	.uleb128	268
	.uleb128	1
	.4byte		.L843-.L2
	.uleb128	4
	.sleb128	12
	.byte		"ADC_STREAM_BUFFER_LINEAR"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"ADC_STREAM_BUFFER_CIRCULAR"
	.byte		0
	.sleb128	1
	.sleb128	0
.L843:
.L789:
	.sleb128	11
	.4byte		.L820
	.uleb128	257
	.uleb128	1
	.4byte		.L844-.L2
	.uleb128	4
	.sleb128	12
	.byte		"ADC_GROUP_REPL_ABORT_RESTART"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"ADC_GROUP_REPL_SUSPEND_RESUME"
	.byte		0
	.sleb128	1
	.sleb128	0
.L844:
.L783:
	.sleb128	11
	.4byte		.L820
	.uleb128	246
	.uleb128	1
	.4byte		.L845-.L2
	.uleb128	4
	.sleb128	12
	.byte		"ADC_CONV_MODE_ONESHOT"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"ADC_CONV_MODE_CONTINUOUS"
	.byte		0
	.sleb128	1
	.sleb128	0
.L845:
.L786:
	.sleb128	11
	.4byte		.L820
	.uleb128	235
	.uleb128	1
	.4byte		.L846-.L2
	.uleb128	4
	.sleb128	12
	.byte		"ADC_CONV_TYPE_NORMAL"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"ADC_CONV_TYPE_INJECTED"
	.byte		0
	.sleb128	1
	.sleb128	0
.L846:
.L780:
	.sleb128	11
	.4byte		.L820
	.uleb128	224
	.uleb128	1
	.4byte		.L847-.L2
	.uleb128	4
	.sleb128	12
	.byte		"ADC_ACCESS_MODE_SINGLE"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"ADC_ACCESS_MODE_STREAMING"
	.byte		0
	.sleb128	1
	.sleb128	0
.L847:
.L834:
	.sleb128	11
	.4byte		.L820
	.uleb128	213
	.uleb128	1
	.4byte		.L848-.L2
	.uleb128	4
	.sleb128	12
	.byte		"ADC_NOT_YET_CONVERTED"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"ADC_ALREADY_CONVERTED"
	.byte		0
	.sleb128	1
	.sleb128	0
.L848:
	.section	.debug_info,,n
.L596:
	.sleb128	13
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L595:
	.sleb128	14
	.byte		"uint8"
	.byte		0
	.4byte		.L596
.L594:
	.sleb128	14
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L595
.L598:
	.sleb128	14
	.byte		"Adc_HwUnitType"
	.byte		0
	.4byte		.L595
.L602:
	.sleb128	13
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L601:
	.sleb128	14
	.byte		"uint16"
	.byte		0
	.4byte		.L602
.L600:
	.sleb128	14
	.byte		"Adc_GroupType"
	.byte		0
	.4byte		.L601
.L604:
	.sleb128	14
	.byte		"Adc_StreamNumSampleType"
	.byte		0
	.4byte		.L601
.L607:
	.sleb128	14
	.byte		"Adc_ChannelIndexType"
	.byte		0
	.4byte		.L601
.L610:
	.sleb128	14
	.byte		"Adc_ChannelType"
	.byte		0
	.4byte		.L595
.L614:
	.sleb128	13
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L613:
	.sleb128	14
	.byte		"uint32"
	.byte		0
	.4byte		.L614
.L618:
	.sleb128	14
	.byte		"Adc_ValueGroupType"
	.byte		0
	.4byte		.L601
	.section	.debug_info,,n
.L617:
	.sleb128	15
	.4byte		.L618
.L625:
	.sleb128	14
	.byte		"boolean"
	.byte		0
	.4byte		.L596
	.section	.debug_info,,n
.L670:
	.sleb128	16
	.4byte		.L613
.L697:
	.sleb128	14
	.byte		"Adc_QueueIndexType"
	.byte		0
	.4byte		.L601
.L719:
	.sleb128	14
	.byte		"Adc_Adcdig_ChannelLimitCheckingType"
	.byte		0
	.4byte		.L720
	.section	.debug_info,,n
.L718:
	.sleb128	17
	.4byte		.L719
.L717:
	.sleb128	15
	.4byte		.L718
	.section	.debug_info,,n
.L715:
	.sleb128	18
	.4byte		.L716-.L2
	.4byte		.L717
	.section	.debug_info,,n
	.sleb128	19
	.sleb128	0
.L716:
.L725:
	.sleb128	17
	.4byte		.L613
.L723:
	.sleb128	18
	.4byte		.L724-.L2
	.4byte		.L725
	.section	.debug_info,,n
	.sleb128	20
	.uleb128	3
	.sleb128	0
.L724:
.L730:
	.sleb128	14
	.byte		"Adc_ConfigType"
	.byte		0
	.4byte		.L731
.L729:
	.sleb128	17
	.4byte		.L730
.L728:
	.sleb128	15
	.4byte		.L729
.L735:
	.sleb128	14
	.byte		"Adc_GroupStatusType"
	.byte		0
	.4byte		.L736
.L733:
	.sleb128	18
	.4byte		.L734-.L2
	.4byte		.L735
	.sleb128	20
	.uleb128	0
	.sleb128	0
.L734:
.L740:
	.sleb128	14
	.byte		"Adc_UnitStatusType"
	.byte		0
	.4byte		.L741
.L738:
	.sleb128	18
	.4byte		.L739-.L2
	.4byte		.L740
	.sleb128	20
	.uleb128	3
	.sleb128	0
.L739:
.L746:
	.sleb128	14
	.byte		"Adc_Adcdig_HwUnitConfigurationType"
	.byte		0
	.4byte		.L747
.L745:
	.sleb128	17
	.4byte		.L746
.L744:
	.sleb128	15
	.4byte		.L745
.L750:
	.sleb128	14
	.byte		"Adc_GroupConfigurationType"
	.byte		0
	.4byte		.L751
.L749:
	.sleb128	17
	.4byte		.L750
.L748:
	.sleb128	15
	.4byte		.L749
.L755:
	.sleb128	14
	.byte		"Adc_Adcdig_ChannelConfigurationType"
	.byte		0
	.4byte		.L756
.L754:
	.sleb128	17
	.4byte		.L755
.L753:
	.sleb128	15
	.4byte		.L754
.L752:
	.sleb128	15
	.4byte		.L753
.L758:
	.sleb128	14
	.byte		"Adc_Adcdig_MultiConfigType"
	.byte		0
	.4byte		.L759
.L757:
	.sleb128	17
	.4byte		.L758
.L763:
	.sleb128	17
	.4byte		.L595
.L761:
	.sleb128	18
	.4byte		.L762-.L2
	.4byte		.L763
	.sleb128	20
	.uleb128	3
	.sleb128	0
.L762:
.L764:
	.sleb128	17
	.4byte		.L598
.L767:
	.sleb128	17
	.4byte		.L600
.L765:
	.sleb128	18
	.4byte		.L766-.L2
	.4byte		.L767
	.sleb128	20
	.uleb128	3
	.sleb128	0
.L766:
.L770:
	.sleb128	17
	.4byte		.L610
.L768:
	.sleb128	18
	.4byte		.L769-.L2
	.4byte		.L770
	.sleb128	20
	.uleb128	3
	.sleb128	0
.L769:
.L771:
	.sleb128	18
	.4byte		.L772-.L2
	.4byte		.L763
	.sleb128	20
	.uleb128	3
	.sleb128	0
.L772:
.L773:
	.sleb128	18
	.4byte		.L774-.L2
	.4byte		.L763
	.sleb128	20
	.uleb128	3
	.sleb128	0
.L774:
.L775:
	.sleb128	18
	.4byte		.L776-.L2
	.4byte		.L764
	.sleb128	20
	.uleb128	3
	.sleb128	0
.L776:
.L779:
	.sleb128	14
	.byte		"Adc_GroupAccessModeType"
	.byte		0
	.4byte		.L780
.L778:
	.sleb128	17
	.4byte		.L779
.L782:
	.sleb128	14
	.byte		"Adc_GroupConvModeType"
	.byte		0
	.4byte		.L783
.L781:
	.sleb128	17
	.4byte		.L782
.L785:
	.sleb128	14
	.byte		"Adc_GroupConvType"
	.byte		0
	.4byte		.L786
.L784:
	.sleb128	17
	.4byte		.L785
.L788:
	.sleb128	14
	.byte		"Adc_GroupReplacementType"
	.byte		0
	.4byte		.L789
.L787:
	.sleb128	17
	.4byte		.L788
.L791:
	.sleb128	14
	.byte		"Adc_TriggerSourceType"
	.byte		0
	.4byte		.L792
.L790:
	.sleb128	17
	.4byte		.L791
	.section	.debug_info,,n
.L796:
	.sleb128	21
	.4byte		.L797-.L2
	.byte		0x1
	.sleb128	0
.L797:
.L795:
	.sleb128	15
	.4byte		.L796
.L794:
	.sleb128	14
	.byte		"Adc_NotifyType"
	.byte		0
	.4byte		.L795
.L793:
	.sleb128	17
	.4byte		.L794
.L798:
	.sleb128	15
	.4byte		.L617
.L800:
	.sleb128	14
	.byte		"Adc_StreamBufferModeType"
	.byte		0
	.4byte		.L801
.L799:
	.sleb128	17
	.4byte		.L800
.L802:
	.sleb128	17
	.4byte		.L604
.L805:
	.sleb128	14
	.byte		"Adc_GroupDefType"
	.byte		0
	.4byte		.L610
.L804:
	.sleb128	17
	.4byte		.L805
.L803:
	.sleb128	15
	.4byte		.L804
.L806:
	.sleb128	17
	.4byte		.L607
.L808:
	.sleb128	14
	.byte		"Adc_ConversionTimeType"
	.byte		0
	.4byte		.L601
.L807:
	.sleb128	17
	.4byte		.L808
.L810:
	.sleb128	17
	.4byte		.L601
.L812:
	.sleb128	14
	.byte		"Adc_ResolutionType"
	.byte		0
	.4byte		.L595
.L811:
	.sleb128	17
	.4byte		.L812
.L814:
	.sleb128	17
	.4byte		.L625
.L816:
	.sleb128	14
	.byte		"Adc_ChannelRangeSelectType"
	.byte		0
	.4byte		.L817
.L815:
	.sleb128	17
	.4byte		.L816
.L818:
	.sleb128	17
	.4byte		.L618
.L822:
	.sleb128	16
	.4byte		.L697
.L825:
	.sleb128	16
	.4byte		.L600
.L823:
	.sleb128	18
	.4byte		.L824-.L2
	.4byte		.L825
	.sleb128	20
	.uleb128	0
	.sleb128	0
.L824:
.L826:
	.sleb128	18
	.4byte		.L827-.L2
	.4byte		.L825
	.sleb128	20
	.uleb128	0
	.sleb128	0
.L827:
.L830:
	.sleb128	14
	.byte		"Adc_StatusType"
	.byte		0
	.4byte		.L831
.L829:
	.sleb128	16
	.4byte		.L830
.L833:
	.sleb128	14
	.byte		"Adc_GroupConversionStateType"
	.byte		0
	.4byte		.L834
.L832:
	.sleb128	16
	.4byte		.L833
.L835:
	.sleb128	14
	.byte		"Adc_NotificationType"
	.byte		0
	.4byte		.L836
.L837:
	.sleb128	16
	.4byte		.L604
.L838:
	.sleb128	16
	.4byte		.L625
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L587:
	.sleb128	0
.L583:
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
.L705:
	.sleb128	0
.L701:

	.section	.debug_loc,,n
	.align	0
.L599:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),31
	.d2locend
.L603:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo5),4
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo7),30
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo9),30
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo4),30
	.d2locend
.L605:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo11),5
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),29
	.d2locend
.L608:
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo4),28
	.d2locend
.L611:
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo14),5
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo16),5
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo7),5
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo19),5
	.d2locend
.L615:
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo21),0
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo23),6
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo14),0
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo19),27
	.d2locreg	%offsetof(.Llo26), %offsetof(.Llo4),3
	.d2locend
.L619:
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo28),4
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),26
	.d2locend
.L621:
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo4),25
	.d2locend
.L623:
	.d2locreg	%offsetof(.Llo30), %offsetof(.Llo4),24
	.d2locend
.L626:
	.d2locreg	%offsetof(.Llo31), %offsetof(.Llo32),0
	.d2locreg	%offsetof(.Llo33), %offsetof(.Llo3),0
	.d2locreg	%offsetof(.Llo34), %offsetof(.Llo35),3
	.d2locend
.L628:
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo36),3
	.d2locend
.L630:
	.d2locreg	%offsetof(.Llo37), %offsetof(.Llo4),23
	.d2locend
.L636:
	.d2locreg	%offsetof(.Llo38), %offsetof(.Llo39),3
	.d2locreg	%offsetof(.Llo40), %offsetof(.Llo41),0
	.d2locreg	%offsetof(.Llo42), %offsetof(.Llo43),0
	.d2locend
.L638:
	.d2locreg	%offsetof(.Llo40), %offsetof(.Llo44),4
	.d2locend
.L644:
	.d2locreg	%offsetof(.Llo45), %offsetof(.Llo46),3
	.d2locreg	%offsetof(.Llo47), %offsetof(.Llo48),3
	.d2locreg	%offsetof(.Llo49), %offsetof(.Llo50),31
	.d2locend
.L650:
	.d2locreg	%offsetof(.Llo51), %offsetof(.Llo52),3
	.d2locend
.L651:
	.d2locreg	%offsetof(.Llo51), %offsetof(.Llo53),4
	.d2locreg	%offsetof(.Llo54), %offsetof(.Llo52),0
	.d2locend
.L653:
	.d2locreg	%offsetof(.Llo54), %offsetof(.Llo52),4
	.d2locend
.L655:
	.d2locreg	%offsetof(.Llo55), %offsetof(.Llo56),7
	.d2locreg	%offsetof(.Llo57), %offsetof(.Llo58),7
	.d2locend
.L657:
	.d2locreg	%offsetof(.Llo59), %offsetof(.Llo52),31
	.d2locend
.L663:
	.d2locreg	%offsetof(.Llo60), %offsetof(.Llo61),3
	.d2locreg	%offsetof(.Llo62), %offsetof(.Llo63),31
	.d2locreg	%offsetof(.Llo64), %offsetof(.Llo65),31
	.d2locreg	%offsetof(.Llo66), %offsetof(.Llo67),31
	.d2locend
.L664:
	.d2locreg	%offsetof(.Llo60), %offsetof(.Llo62),4
	.d2locreg	%offsetof(.Llo68), %offsetof(.Llo69),29
	.d2locreg	%offsetof(.Llo70), %offsetof(.Llo71),3
	.d2locreg	%offsetof(.Llo64), %offsetof(.Llo72),29
	.d2locreg	%offsetof(.Llo73), %offsetof(.Llo74),3
	.d2locend
.L665:
	.d2locreg	%offsetof(.Llo60), %offsetof(.Llo75),5
	.d2locend
.L666:
	.d2locreg	%offsetof(.Llo60), %offsetof(.Llo76),6
	.d2locreg	%offsetof(.Llo64), %offsetof(.Llo77),6
	.d2locreg	%offsetof(.Llo78), %offsetof(.Llo79),6
	.d2locend
.L668:
	.d2locreg	%offsetof(.Llo80), %offsetof(.Llo81),0
	.d2locreg	%offsetof(.Llo82), %offsetof(.Llo62),0
	.d2locreg	%offsetof(.Llo68), %offsetof(.Llo83),0
	.d2locreg	%offsetof(.Llo84), %offsetof(.Llo75),0
	.d2locreg	%offsetof(.Llo85), %offsetof(.Llo86),0
	.d2locreg	%offsetof(.Llo87), %offsetof(.Llo88),0
	.d2locreg	%offsetof(.Llo89), %offsetof(.Llo90),0
	.d2locreg	%offsetof(.Llo91), %offsetof(.Llo92),3
	.d2locreg	%offsetof(.Llo93), %offsetof(.Llo69),31
	.d2locreg	%offsetof(.Llo94), %offsetof(.Llo95),0
	.d2locreg	%offsetof(.Llo96), %offsetof(.Llo97),3
	.d2locreg	%offsetof(.Llo98), %offsetof(.Llo77),0
	.d2locreg	%offsetof(.Llo99), %offsetof(.Llo65),30
	.d2locreg	%offsetof(.Llo100), %offsetof(.Llo101),0
	.d2locreg	%offsetof(.Llo102), %offsetof(.Llo72),30
	.d2locend
.L672:
	.d2locreg	%offsetof(.Llo90), %offsetof(.Llo103),0
	.d2locreg	%offsetof(.Llo104), %offsetof(.Llo105),0
	.d2locreg	%offsetof(.Llo106), %offsetof(.Llo107),0
	.d2locreg	%offsetof(.Llo108), %offsetof(.Llo109),0
	.d2locend
.L678:
	.d2locreg	%offsetof(.Llo110), %offsetof(.Llo111),3
	.d2locreg	%offsetof(.Llo112), %offsetof(.Llo113),31
	.d2locreg	%offsetof(.Llo114), %offsetof(.Llo115),3
	.d2locreg	%offsetof(.Llo116), %offsetof(.Llo117),31
	.d2locend
.L679:
	.d2locreg	%offsetof(.Llo110), %offsetof(.Llo118),4
	.d2locreg	%offsetof(.Llo119), %offsetof(.Llo120),30
	.d2locreg	%offsetof(.Llo116), %offsetof(.Llo117),30
	.d2locend
.L681:
	.d2locreg	%offsetof(.Llo121), %offsetof(.Llo122),0
	.d2locreg	%offsetof(.Llo123), %offsetof(.Llo124),0
	.d2locreg	%offsetof(.Llo119), %offsetof(.Llo113),29
	.d2locreg	%offsetof(.Llo125), %offsetof(.Llo115),0
	.d2locreg	%offsetof(.Llo116), %offsetof(.Llo117),29
	.d2locend
.L683:
	.d2locreg	%offsetof(.Llo126), %offsetof(.Llo127),3
	.d2locreg	%offsetof(.Llo128), %offsetof(.Llo120),27
	.d2locreg	%offsetof(.Llo116), %offsetof(.Llo117),27
	.d2locend
.L685:
	.d2locreg	%offsetof(.Llo124), %offsetof(.Llo129),3
	.d2locreg	%offsetof(.Llo130), %offsetof(.Llo119),28
	.d2locend
.L691:
	.d2locreg	%offsetof(.Llo131), %offsetof(.Llo132),3
	.d2locreg	%offsetof(.Llo133), %offsetof(.Llo134),31
	.d2locreg	%offsetof(.Llo135), %offsetof(.Llo136),31
	.d2locend
.L695:
	.d2locreg	%offsetof(.Llo133), %offsetof(.Llo137),3
	.d2locreg	%offsetof(.Llo138), %offsetof(.Llo139),3
	.d2locreg	%offsetof(.Llo140), %offsetof(.Llo134),3
	.d2locreg	%offsetof(.Llo141), %offsetof(.Llo142),3
	.d2locend
.L698:
	.d2locreg	%offsetof(.Llo143), %offsetof(.Llo144),4
	.d2locreg	%offsetof(.Llo145), %offsetof(.Llo139),4
	.d2locreg	%offsetof(.Llo140), %offsetof(.Llo134),4
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "OS_ISR_Adc_Adcdig_EndGroupConvUnit0"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Adc_Adcdig_EndGroupConversion"
	.wrcm.end
	.wrcm.nelem "Adc_Adcdig_EndGroupConversion"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "Adc_Adcdig_EndSoftwareConv"
	.wrcm.end
	.wrcm.nelem "Adc_Adcdig_EndSoftwareConv"
	.wrcm.nint32 "frameSize", 48
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "Adc_Adcdig_RecordResult","Adc_Adcdig_UpdateGroupState","SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_14","SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_14"
	.wrcm.end
	.wrcm.nelem "Adc_Adcdig_UpdateGroupState"
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "Adc_Adcdig_CheckNotification","Adc_Adcdig_ClearValidBit","Adc_Adcdig_UpdateQueue","SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_14"
	.wrcm.end
	.wrcm.nelem "Adc_Adcdig_ClearValidBit"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Adc_Adcdig_UpdateQueue"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "Adc_Adcdig_StartNormalConversion","Adc_RemoveFromQueue"
	.wrcm.end
	.wrcm.nelem "Adc_Adcdig_CheckNotification"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Adc_Adcdig_RecordResult"
	.wrcm.nint32 "frameSize", 64
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "Adc_CheckConversionValuesInRange"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Adc_Adcdig_Irq.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Adc_Adcdig_Irq.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Adc_Adcdig_Irq.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Adc_Adcdig_Irq.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Adc_Adcdig_Irq.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Adc_Adcdig_Irq.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\MCAL\MPC5746R\Adc\ssc\make\..\..\generator\integration_package\src\Adc_Adcdig_Irq.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
