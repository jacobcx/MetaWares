#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Mcl_Dma_Irq.c"
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
#     LOCAL_INLINE FUNC (void, MCL_CODE) Mcl_DmaProcessInterrupt
	.section	.invalid_TEXT,,c
	.align		1
	.section	.debug_line.invalid_TEXT,,n
	.sectionlink	.debug_line
.L472:
	.section	.invalid_TEXT,,c
#$$ld
.L468:
	.0byte		.L466
	.d2_line_start	.debug_line.invalid_TEXT
	.section	.invalid_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Mcl\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Mcl_Dma_Irq.c"
        .d2line         820,40
#$$ld
.L475:

#$$bf	Mcl_DmaProcessInterrupt,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Mcl_DmaProcessInterrupt:
.Llo1:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# HwChannel=r31 HwChannel=r3
	.d2prologue_end
#     (
#         VAR(Mcl_DmaChannelType, AUTOMATIC) HwChannel
#     )
#     {
#         /* @brief Variable storing content of Status register */
#         VAR(boolean, AUTOMATIC) bIsrStatus = (boolean)FALSE;
	.d2line		826
.Llo2:
	diab.li		r3,0		# bIsrStatus=r3
# 
#         /* Check that the interrupt was enabled for the corresponding DMA channel */
#         /** @violates @ref MCL_DMA_IRQ_C_REF_1 A cast should not be performed between a pointer type and an integral type. */
#         /** @violates @ref MCL_DMA_IRQ_C_REF_6 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#         if (((boolean)TRUE==DMA_TCD_GET_INT_MAJ(HwChannel)) || ((boolean)TRUE==DMA_TCD_GET_INT_HALF(HwChannel)))
	.d2line		831
.Llo3:
	rlwinm		r0,r31,5,21,26		# HwChannel=r31
	e_lis		r4,64522
	e_or2i		r4,4124
	se_add		r0,r4
	lwzx		r0,r0,r0
	se_btsti		r0,30
	diab.li		r0,1
	isel		r0,r4,r0,2
.L436:
	isel		r0,0,r0,2
.L437:
	se_cmpi		r0,1
	bc		1,2,.L435	# eq
	rlwinm		r0,r31,5,21,26		# HwChannel=r31
	e_lis		r4,64522
	e_or2i		r4,4124
	se_add		r0,r4
	lwzx		r0,r0,r0
	se_btsti		r0,29
	diab.li		r0,1
	isel		r0,r4,r0,2
.L438:
	isel		r0,0,r0,2
.L439:
	se_cmpi		r0,1
	bc		0,2,.L432	# ne
.L435:
#         {
#             /* Get the interrupt request for the corresponding DMA channel */
#             bIsrStatus = Mcl_Dma_GetMultiRegChInfo(HwChannel, MCL_DMA_GET_INT);
	.d2line		834
	rlwinm		r3,r31,0,24,31		# bIsrStatus=r3 HwChannel=r31
	diab.li		r4,1
	bl		Mcl_Dma_GetMultiRegChInfo
	mr		r3,r3		# bIsrStatus=r3 bIsrStatus=r3
.L432:
#         }
#         else
#         {
#           /*Empty else to fix misra*/
#         }
#         /** @violates @ref MCL_DMA_IRQ_C_REF_1 A cast should not be performed between a pointer type and an integral type. */
#         /** @violates @ref MCL_DMA_IRQ_C_REF_6 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#         DMA_CLEAR_INT_REQ(HwChannel);    
	.d2line		842
	rlwinm		r0,r31,0,26,31		# HwChannel=r31
	e_lis		r4,-1014
	stb		r0,28(r4)
#         
#         /* Check if isr was enabled on the corresponding channel and interrupt request was set */
#         if (bIsrStatus)
	.d2line		845
	rlwinm		r3,r3,0,24,31		# bIsrStatus=r3 bIsrStatus=r3
	se_cmpi		r3,0		# bIsrStatus=r3
	bc		1,2,.L430	# eq
#         {
#             /* Call Dma channel notification */ 
#             Mcl_IPW_DmaChannelNotification(HwChannel);
	.d2line		848
.Llo5:
	rlwinm		r3,r31,0,24,31		# bIsrStatus=r3 HwChannel=r31
	bl		Mcl_Notification
.L430:
#         }
#         else
#         {
#           /*Empty else to fix misra*/
#         }
#     }
	.d2line		854
	.d2epilogue_begin
.Llo4:
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
.L476:
	.type		Mcl_DmaProcessInterrupt,@function
	.size		Mcl_DmaProcessInterrupt,.-Mcl_DmaProcessInterrupt
# Number of nodes = 74

# Allocations for Mcl_DmaProcessInterrupt
#	?a4		HwChannel
#	?a5		$$102
#	?a6		$$101
#	?a7		bIsrStatus
# LOCAL_INLINE FUNC(void, MCL_CODE) Mcl_DmaProcessErrorInterrupt
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         872,35
#$$ld
.L488:

#$$bf	Mcl_DmaProcessErrorInterrupt,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Mcl_DmaProcessErrorInterrupt:
.Llo6:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# DmaHwInstance=r3 DmaHwInstance=r3
	.d2prologue_end
# (
#     VAR(Mcl_DmaInstanceType, AUTOMATIC) DmaHwInstance
# )
# {
#     /** @violates @ref MCL_DMA_IRQ_C_REF_1 cast from unsigned int to pointer */
#     /** @violates @ref MCL_DMA_IRQ_C_REF_6 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#     VAR(uint32,AUTOMATIC) u32ErrorStatus = REG_READ32(DMA_ES_ADDR32((uint32)(DmaHwInstance)));
	.d2line		879
	e_lis		r5,-1014
	lwz		r0,4(r5)
	.d2line		886
	mr.		r4,r0		# u32ErrorStatus=?a5 u32ErrorStatus=?a7
#     
#     /* Clear all error indicators */
#     /** @violates @ref MCL_DMA_IRQ_C_REF_1 cast from unsigned int to pointer */
#     /** @violates @ref MCL_DMA_IRQ_C_REF_6 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#     REG_WRITE8(DMA_CERR_ADDR32((uint32)(DmaHwInstance)), DMA_CERR_CAEI_U8);
	.d2line		884
.Llo16:
	diab.li		r0,64
	stb		r0,29(r5)
#  
#     if ((uint32)0U != u32ErrorStatus )
	bc		1,2,.L447	# eq
#     {
#         #if (MCL_DMA_ECC_REPORTING_ENABLED == STD_ON)    
#         if(0U != (u32ErrorStatus & DMA_ES_UCE_U32))
	.d2line		889
	se_btsti		r4,14		# u32ErrorStatus=r4
	bc		1,2,.L449	# eq
#         {
#             /* Uncorrectable  ECC error detected */
#             Mcl_IPW_ErrorNotification(DmaHwInstance,MCL_DMA_ECC_ERROR);
	.d2line		892
.Llo17:
	rlwinm		r3,r3,0,24,31		# DmaHwInstance=r3 DmaHwInstance=r3
.Llo7:
	diab.li		r4,2		# u32ErrorStatus=r4
	bl		Mcl_ErrorNotification
	b		.L447
.L449:
#         }
#         else 
#         #endif
#         if((uint32)0U != (u32ErrorStatus & DMA_ES_BUS_U32)) 
	.d2line		896
.Llo8:
	rlwinm		r0,r4,0,30,31		# u32ErrorStatus=r4
	se_cmpi		r0,0
	bc		1,2,.L451	# eq
#         {
#             /* Source or destination bus error detected */
#             Mcl_IPW_ErrorNotification(DmaHwInstance,MCL_DMA_BUS_ERROR);
	.d2line		899
.Llo18:
	rlwinm		r3,r3,0,24,31		# DmaHwInstance=r3 DmaHwInstance=r3
.Llo9:
	diab.li		r4,3		# u32ErrorStatus=r4
	bl		Mcl_ErrorNotification
	b		.L447
.L451:
#         }
#         else if((uint32)0U != (u32ErrorStatus & DMA_ES_DESCRIPTOR_U32)) 
	.d2line		901
.Llo10:
	rlwinm		r0,r4,0,24,29		# u32ErrorStatus=r4
	se_cmpi		r0,0
	bc		1,2,.L453	# eq
#         {
#             /* Descriptor error detected */
#             Mcl_IPW_ErrorNotification(DmaHwInstance,MCL_DMA_DESCRIPTOR_ERROR);
	.d2line		904
.Llo19:
	rlwinm		r3,r3,0,24,31		# DmaHwInstance=r3 DmaHwInstance=r3
.Llo11:
	diab.li		r4,4		# u32ErrorStatus=r4
	bl		Mcl_ErrorNotification
	b		.L447
.L453:
#         }
#         else if((uint32)0U != (u32ErrorStatus & (DMA_ES_GPE_U32 | DMA_ES_CPE_U32)))
	.d2line		906
.Llo12:
	rlwinm		r4,r4,0,16,17		# u32ErrorStatus=r4 u32ErrorStatus=r4
	se_cmpi		r4,0		# u32ErrorStatus=r4
	bc		1,2,.L455	# eq
#         {
#             /* Priority error detected */
#             Mcl_IPW_ErrorNotification(DmaHwInstance,MCL_DMA_PRIORITY_ERROR);
	.d2line		909
.Llo20:
	rlwinm		r3,r3,0,24,31		# DmaHwInstance=r3 DmaHwInstance=r3
.Llo13:
	diab.li		r4,5		# u32ErrorStatus=r4
	bl		Mcl_ErrorNotification
	b		.L447
.L455:
#         }
#         else
#         { 
#             /* Unrecognized error detected */ 
#             Mcl_IPW_ErrorNotification(DmaHwInstance,MCL_DMA_UNRECOGNIZED_ERROR); 
	.d2line		914
.Llo14:
	rlwinm		r3,r3,0,24,31		# DmaHwInstance=r3 DmaHwInstance=r3
.Llo15:
	diab.li		r4,6		# u32ErrorStatus=r4
	bl		Mcl_ErrorNotification
.L447:
#             
#             /* Comment added to workaround MISRA tool check bug, which failed to detect a final 'else'
#                block if that block ended with a preprocessing directive.*/
#         } 
#     }
#     else
#     {
#         /* No errors present */
#     }
# }
	.d2line		924
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
.L489:
	.type		Mcl_DmaProcessErrorInterrupt,@function
	.size		Mcl_DmaProcessErrorInterrupt,.-Mcl_DmaProcessErrorInterrupt
# Number of nodes = 71

# Allocations for Mcl_DmaProcessErrorInterrupt
#	?a4		DmaHwInstance
#	?a5		u32ErrorStatus
#     ISR(MCL_DMA_CH_0_ISR)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         991,5
#$$ld
.L499:

#$$bf	OS_ISR_MCL_DMA_CH_0_ISR,interprocedural,rasave,nostackparams
	.globl		OS_ISR_MCL_DMA_CH_0_ISR
	.d2_cfa_start __cie
OS_ISR_MCL_DMA_CH_0_ISR:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
#     {
#         Mcl_DmaProcessInterrupt(DMA_HW_CHANNEL_0);
	.d2line		993
	diab.li		r3,0
	bl		Mcl_DmaProcessInterrupt
#         /** @violates @ref MCL_DMA_IRQ_C_REF_1 cast from unsigned int to pointer */
#         EXIT_INTERRUPT();
#     }
	.d2line		996
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
.L500:
	.type		OS_ISR_MCL_DMA_CH_0_ISR,@function
	.size		OS_ISR_MCL_DMA_CH_0_ISR,.-OS_ISR_MCL_DMA_CH_0_ISR
# Number of nodes = 4

# Allocations for OS_ISR_MCL_DMA_CH_0_ISR
#     ISR(MCL_DMA0_ERROR_ISR)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         3045,5
#$$ld
.L504:

#$$bf	OS_ISR_MCL_DMA0_ERROR_ISR,interprocedural,rasave,nostackparams
	.globl		OS_ISR_MCL_DMA0_ERROR_ISR
	.d2_cfa_start __cie
OS_ISR_MCL_DMA0_ERROR_ISR:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
#     {
#         Mcl_DmaProcessErrorInterrupt(DMA_INSTANCE0);
	.d2line		3047
	diab.li		r3,0
	bl		Mcl_DmaProcessErrorInterrupt
#         /** @violates @ref MCL_DMA_IRQ_C_REF_1 cast from unsigned int to pointer */
#         EXIT_INTERRUPT();
#     }
	.d2line		3050
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
.L505:
	.type		OS_ISR_MCL_DMA0_ERROR_ISR,@function
	.size		OS_ISR_MCL_DMA0_ERROR_ISR,.-OS_ISR_MCL_DMA0_ERROR_ISR
# Number of nodes = 4

# Allocations for OS_ISR_MCL_DMA0_ERROR_ISR

# Allocations for module
	.section	.text_vle
#$$ld
.L5:
	.d2_line_end
	.section	.invalid_TEXT,,c
#$$ld
.L469:
.L477:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Mcl\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Mcl_Dma_Irq.c"
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
	.uleb128	7
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Mcl\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Mcl_Dma_Irq.c"
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
.L466:
	.4byte		.L467-.L465
.L465:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L471-.L466
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Mcl\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Mcl_Dma_Irq.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L468
	.4byte		.L469
	.4byte		.L472
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L478:
	.sleb128	2
	.4byte		.L474-.L466
	.byte		"Mcl_DmaProcessInterrupt"
	.byte		0
	.4byte		.L477
	.uleb128	820
	.uleb128	40
	.byte		0x1
	.4byte		.L475
	.4byte		.L476
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L477
	.uleb128	820
	.uleb128	40
	.byte		"HwChannel"
	.byte		0
	.4byte		.L479
	.4byte		.L482
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L483:
	.sleb128	4
	.4byte		.L477
	.uleb128	826
	.uleb128	33
	.byte		"bIsrStatus"
	.byte		0
	.4byte		.L484
	.4byte		.L485
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L474:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L490:
	.sleb128	2
	.4byte		.L487-.L466
	.byte		"Mcl_DmaProcessErrorInterrupt"
	.byte		0
	.4byte		.L477
	.uleb128	872
	.uleb128	35
	.byte		0x1
	.4byte		.L488
	.4byte		.L489
	.sleb128	3
	.4byte		.L477
	.uleb128	872
	.uleb128	35
	.byte		"DmaHwInstance"
	.byte		0
	.4byte		.L491
	.4byte		.L492
.L493:
	.sleb128	4
	.4byte		.L477
	.uleb128	879
	.uleb128	27
	.byte		"u32ErrorStatus"
	.byte		0
	.4byte		.L494
	.4byte		.L496
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L487:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L501:
	.sleb128	5
	.4byte		.L498-.L466
	.byte		"OS_ISR_MCL_DMA_CH_0_ISR"
	.byte		0
	.4byte		.L477
	.uleb128	991
	.uleb128	5
	.byte		0x1
	.byte		0x1
	.4byte		.L499
	.4byte		.L500
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L498:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L506:
	.sleb128	5
	.4byte		.L503-.L466
	.byte		"OS_ISR_MCL_DMA0_ERROR_ISR"
	.byte		0
	.4byte		.L477
	.uleb128	3045
	.uleb128	5
	.byte		0x1
	.byte		0x1
	.4byte		.L504
	.4byte		.L505
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L503:
	.section	.debug_info,,n
.L481:
	.sleb128	6
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L480:
	.sleb128	7
	.byte		"uint8"
	.byte		0
	.4byte		.L481
.L479:
	.sleb128	7
	.byte		"Mcl_DmaChannelType"
	.byte		0
	.4byte		.L480
.L484:
	.sleb128	7
	.byte		"boolean"
	.byte		0
	.4byte		.L481
.L491:
	.sleb128	7
	.byte		"Mcl_DmaInstanceType"
	.byte		0
	.4byte		.L480
.L495:
	.sleb128	6
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L494:
	.sleb128	7
	.byte		"uint32"
	.byte		0
	.4byte		.L495
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L471:
	.sleb128	0
.L467:

	.section	.debug_loc,,n
	.align	0
.L482:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),31
	.d2locend
.L485:
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo5),3
	.d2locend
.L492:
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo7),3
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo9),3
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo11),3
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo13),3
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo15),3
	.d2locend
.L496:
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo17),4
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo18),4
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo19),4
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo20),4
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "OS_ISR_MCL_DMA0_ERROR_ISR"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Mcl_DmaProcessErrorInterrupt"
	.wrcm.end
	.wrcm.nelem "OS_ISR_MCL_DMA_CH_0_ISR"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Mcl_DmaProcessInterrupt"
	.wrcm.end
	.wrcm.nelem "Mcl_DmaProcessErrorInterrupt"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "Mcl_ErrorNotification"
	.wrcm.end
	.wrcm.nelem "Mcl_DmaProcessInterrupt"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "Mcl_Dma_GetMultiRegChInfo","Mcl_Notification"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Mcl_Dma_Irq.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Mcl_Dma_Irq.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Mcl_Dma_Irq.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Mcl_Dma_Irq.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Mcl_Dma_Irq.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Mcl_Dma_Irq.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\MCAL\MPC5746R\Mcl\ssc\make\..\..\generator\integration_package\src\Mcl_Dma_Irq.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
