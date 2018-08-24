#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Mcl_Dma.c"
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
# FUNC(void, MCL_CODE) Mcl_Dma_Init( P2CONST(Mcl_DmaConfigType, AUTOMATIC, MCL_APPL_CONST) pConfig, Mcl_DmaInstanceType dma_instance)
	.section	.invalid_TEXT,,c
	.align		2
	.section	.debug_line.invalid_TEXT,,n
	.sectionlink	.debug_line
.L534:
	.section	.invalid_TEXT,,c
#$$ld
.L530:
	.0byte		.L528
	.d2_line_start	.debug_line.invalid_TEXT
	.section	.invalid_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Mcl\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Mcl_Dma.c"
        .d2line         216,22
#$$ld
.L537:

#$$bf	Mcl_Dma_Init,interprocedural,rasave,nostackparams
	.globl		Mcl_Dma_Init
	.d2_cfa_start __cie
Mcl_Dma_Init:
.Llo1:
	stwu		r1,-64(r1)		
	.d2_cfa_def_cfa_offset	64
	mfspr		r0,lr
	stmw		r27,44(r1)		# offset r1+44  0x2c
	.d2_cfa_offset_list	27,31,1,1
	stw		r0,68(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# pConfig=r31 pConfig=r3
.Llo2:
	mr		r30,r4		# dma_instance=r30 dma_instance=r4
	.d2prologue_end
# {
#     /* @brief Variable used for storing used priorities flags */
#     VAR(uint16, AUTOMATIC) u16PriorityGrFlags[DMA_GROUPS] = {0U, 0U, 0U, 0U};
	.d2line		219
.Llo3:
	lis		r7,.L438@ha
.Llo5:
	e_add16i		r7,r7,.L438@l
	lhz		r4,0(r7)
	lhz		r5,2(r7)		# u8Counter=r5
.Llo35:
	sth		r4,8(r1)
	sth		r5,10(r1)		# u8Counter=r5
	lhz		r4,4(r7)
	lhz		r5,6(r7)		# u8Counter=r5
	sth		r4,12(r1)
	sth		r5,14(r1)		# u8Counter=r5
#     /* @brief Variable used for storing used channels flags */
#     VAR(uint16, AUTOMATIC) u16ChannelGrFlags[DMA_GROUPS] = {0U, 0U, 0U, 0U};
	.d2line		221
	lis		r7,.L439@ha
	e_add16i		r7,r7,.L439@l
	lhz		r4,0(r7)
	lhz		r5,2(r7)		# u8Counter=r5
	sth		r4,16(r1)
	sth		r5,18(r1)		# u8Counter=r5
	lhz		r4,4(r7)
	lhz		r5,6(r7)		# u8Counter=r5
	sth		r4,20(r1)
	sth		r5,22(r1)		# u8Counter=r5
#     /* @brief Variable used for storing current available priority */
#     VAR(uint8, AUTOMATIC) u8CurrentPriority = 0U;
	.d2line		223
	diab.li		r29,0		# u8CurrentPriority=r29
#     /* @brief Variable used for storing the current channel number from within a DMA instance */
#     VAR(uint8, AUTOMATIC) u8CurrentRelativeChannel = 0U;
#     /* @brief Variable used for storing the current absolute channel number from all DMA instances */
#     VAR(uint8, AUTOMATIC) u8CurrentAbsoluteChannel = 0U;
#      /* @brief Variable used for storing the current group from the current DMA instances */
#     VAR(uint8, AUTOMATIC) u8CurrentGroup = 0U;
#     /* @brief Counter value used in loops */
#     VAR(uint8, AUTOMATIC) u8Counter;
#     /* @brief u8Reach value used in loops*/
#     VAR(uint8, AUTOMATIC) u8Reach = 0U;
#     /* @brief Pointer to DMA channel specific configuration */
#     P2CONST(Mcl_DmaChannelConfigType, AUTOMATIC, MCL_APPL_CONST) pDmaChannelConfig;
#     
#      /* Enter exclusive area to protect DMA_CR and DMA_CPR */
#      SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_12();
	.d2line		238
.Llo28:
	bl		SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_12
#      /* Dma_Init() should enable minor loop mapping*/
#      /** @violates @ref Mcl_DMA_c_REF_2 Cast from unsigned long to pointer. */
#      /** @violates @ref Mcl_DMA_c_REF_10 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#      REG_WRITE32(DMA_CR_ADDR32((uint32)(dma_instance)), (uint32)(*(pConfig->pDmaConfigInstance))[dma_instance].pDmaControl | DMA_MINOR_LOOP_MAPPING_EN_U32);   
	.d2line		242
.Llo36:
	rlwinm		r0,r30,0,24,31		# dma_instance=r30
	lwz		r3,4(r31)		# pConfig=r31
	rlwinm		r4,r0,4,0,27
	se_slwi		r0,2
	subf		r0,r0,r4
	lwzx		r0,r3,r0
	.diab.bseti		r0,24
	e_lis		r3,-1014
	stw		r0,0(r3)
#     
# 
#     /* Initializing channels priorities, ECP and DPA */
#     for (u8Counter = 0U; u8Counter < pConfig->NumChannels; u8Counter++)
	.d2line		246
	diab.li		r5,0		# u8Counter=r5
.L440:
.Llo37:
	rlwinm		r0,r5,0,24,31		# u8CurrentRelativeChannel=r0 u8Counter=r5
.Llo15:
	lbz		r4,0(r31)		# pDmaChannelConfig=r4 pConfig=r31
.Llo39:
	se_cmp		r0,r4		# u8CurrentRelativeChannel=r0 pDmaChannelConfig=r4
	bc		0,0,.L442	# ge
#     {
#         
#         pDmaChannelConfig = &((*(pConfig->pChannelsConfig))[u8Counter]);
	.d2line		249
.Llo16:
	lwz		r4,8(r31)		# pDmaChannelConfig=r4 pConfig=r31
.Llo40:
	rlwinm		r0,r5,0,24,31		# u8CurrentRelativeChannel=r0 u8Counter=r5
.Llo17:
	e_mulli		r0,r0,3		# u8CurrentRelativeChannel=r0 u8CurrentRelativeChannel=r0
	se_add		r0,r4		# u8CurrentRelativeChannel=r0 u8CurrentRelativeChannel=r0 pDmaChannelConfig=r4
.Llo18:
	mr		r4,r0		# pDmaChannelConfig=r4 pDmaChannelConfig=r0
#         
#         if (DMA_MOD_IDX_U8((uint32)pDmaChannelConfig->Dma_Channel) == dma_instance)
	.d2line		251
.Llo41:
	lbz		r0,1(r4)		# u8CurrentRelativeChannel=r0 pDmaChannelConfig=r4
.Llo19:
	rlwinm		r0,r0,0,0,25		# u8CurrentRelativeChannel=r0 u8CurrentRelativeChannel=r0
	se_cmpi		r0,0		# u8CurrentRelativeChannel=r0
	diab.li		r0,1		# u8CurrentRelativeChannel=r0
	isel		r0,r3,r0,2		# u8CurrentRelativeChannel=r0 u8CurrentRelativeChannel=r0
.L454:
.Llo42:
	isel		r3,0,r0,2		# u8CurrentRelativeChannel=r0
.L455:
.Llo20:
	rlwinm		r0,r30,0,24,31		# u8CurrentRelativeChannel=r0 dma_instance=r30
.Llo21:
	se_cmp		r0,r3		# u8CurrentRelativeChannel=r0
	bc		0,2,.L444	# ne
#         {
#             /* Update the DCHPRIn registers. */
#             /** @violates @ref Mcl_DMA_c_REF_2 Violates MISRA 2004 Rule 11.1, Cast from unsigned long to pointer.*/
#             /** @violates @ref Mcl_DMA_c_REF_10 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#             /** @violates @ref Mcl_DMA_c_REF_11 MISRA 2004 Required Rule 10.1, The value of expression of integer type shall not be implicity to different underlying*/
#             REG_WRITE8(DMA_CPR((uint32)pDmaChannelConfig->Dma_Channel), pDmaChannelConfig->Dma_ChannelPriority); 
	.d2line		257
.Llo22:
	lbz		r7,0(r4)		# u8CurrentRelativeChannel=r7 pDmaChannelConfig=r4
.Llo23:
	lbz		r0,1(r4)		# u8CurrentRelativeChannel=r0 pDmaChannelConfig=r4
	rlwinm		r0,r0,0,26,31		# u8CurrentRelativeChannel=r0 u8CurrentRelativeChannel=r0
	e_lis		r6,64522
	.diab.bseti		r6,23
	stbux		r7,r6,r0		# u8CurrentRelativeChannel=r7
# #ifdef MCL_DMA_ENABLE_INIT_DCHMID
# #if (MCL_DMA_ENABLE_INIT_DCHMID == STD_ON)   
#             /* Update the DCHMIDn registers. */
#             /** @violates @ref Mcl_DMA_c_REF_2 Violates MISRA 2004 Rule 11.1, Cast from unsigned long to pointer.*/
#             /** @violates @ref Mcl_DMA_c_REF_10 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#             REG_WRITE8(DMA_DCHMID((uint32)pDmaChannelConfig->Dma_Channel), pDmaChannelConfig->Dma_MasterId);
	.d2line		263
	lbz		r7,2(r4)		# u8CurrentRelativeChannel=r7 pDmaChannelConfig=r4
	lbz		r0,1(r4)		# u8CurrentRelativeChannel=r0 pDmaChannelConfig=r4
	rlwinm		r0,r0,0,26,31		# u8CurrentRelativeChannel=r0 u8CurrentRelativeChannel=r0
	e_lis		r6,64522
	e_or2i		r6,320
	stbux		r7,r6,r0		# u8CurrentRelativeChannel=r7
# #endif
# #endif
# 
# #ifdef MCL_DMA_SETUP_EARS
# #if (MCL_DMA_SETUP_EARS == STD_ON)   
#             /* Update the EARS register. */
#             /** @violates @ref Mcl_DMA_c_REF_2 Violates MISRA 2004 Rule 11.1, Cast from unsigned long to pointer.*/
#             /** @violates @ref Mcl_DMA_c_REF_10 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#             REG_RMW32(DMA_EARS((uint32)pDmaChannelConfig->Dma_Channel), ((1UL) << (uint32)pDmaChannelConfig->Dma_Channel), pDmaChannelConfig->Dma_AsynchronousRequest);
# #endif
# #endif
#     
#      
# #if (MCL_DMA_NB_CONTROLLERS == 0x02U) 
#             if (DMA_INSTANCE0 == dma_instance)
# #endif            
#             {
#                 u8CurrentRelativeChannel = pDmaChannelConfig->Dma_Channel;
	.d2line		281
	lbz		r7,1(r4)		# u8CurrentRelativeChannel=r7 pDmaChannelConfig=r4
	mr		r0,r7		# u8CurrentRelativeChannel=r0 u8CurrentRelativeChannel=r7
#             }
# #if (MCL_DMA_NB_CONTROLLERS == 0x02U)          
#             else  if (DMA_INSTANCE1 == dma_instance)
#             {
#                 if (DMA_CHANNELS_PER_MODULE_U8 <= pDmaChannelConfig->Dma_Channel)
#                 {
#                     u8CurrentRelativeChannel = (uint8)(pDmaChannelConfig->Dma_Channel - DMA_CHANNELS_PER_MODULE_U8 );
#                 }
#                 else
#                 {
#                   /* Empty else to fix misra */
#                 }
#             }
#             else
#             {
#               /* Empty else to fix misra */
#             }
# #endif
# 
# #if ( MCL_DMA_ERROR_INTERRUPTS_USED == STD_ON )
#             /* Set Error Enable Interrupts register for the corresponding configured channel */
#             /** @violates @ref Mcl_DMA_c_REF_2 Violates MISRA 2004 Rule 11.1, Cast from unsigned long to pointer.*/
#             /** @violates @ref Mcl_DMA_c_REF_10 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#             REG_WRITE8(DMA_SEEI_ADDR32((uint32)(dma_instance)), u8CurrentRelativeChannel);
	.d2line		305
	e_lis		r6,-1014
	stb		r7,26(r6)		# u8CurrentRelativeChannel=r7
# #endif            
#             /* calculate to which group u8CurrentRelativeChannel belongs */  
#             u8CurrentGroup = (uint8)(u8CurrentRelativeChannel / MCL_EDMA_CHANNELS_IN_GROUP) ;
	.d2line		308
	rlwinm		r27,r0,28,28,31		# u8CurrentGroup=r27 u8CurrentRelativeChannel=r0
.Llo29:
	mr		r27,r27		# u8CurrentGroup=r27 u8CurrentGroup=r27
#             /* Set the corresponding priority flags - keep only last 4 bits from Dma_ChannelPriority */
#             u16PriorityGrFlags[u8CurrentGroup] |=  (uint16)((uint16)0x1U << (pDmaChannelConfig->Dma_ChannelPriority & ((uint16)((uint16)0x1U << DMA_CH_PRI_MASK_U8) - (uint16)0x1U)));
	.d2line		310
	diab.addi		r6,r1,8
	rlwinm		r27,r27,1,23,30		# u8CurrentGroup=r27 u8CurrentGroup=r27
.Llo30:
	lhzx		r7,r6,r27		# u8CurrentRelativeChannel=r7
.Llo24:
	diab.li		r28,1
.Llo25:
	lbz		r4,0(r4)		# pDmaChannelConfig=r4 pDmaChannelConfig=r4
	rlwinm		r4,r4,0,28,31		# pDmaChannelConfig=r4 pDmaChannelConfig=r4
	slw		r4,r28,r4		# pDmaChannelConfig=r4 pDmaChannelConfig=r4
	or		r7,r7,r4		# u8CurrentRelativeChannel=r7 u8CurrentRelativeChannel=r7 pDmaChannelConfig=r4
	sthx		r7,r6,r27		# u8CurrentRelativeChannel=r7
#             /* Set the corresponding used channel flags */
#             u16ChannelGrFlags[u8CurrentGroup] |=  (uint16)((uint32)0x1U << (u8CurrentRelativeChannel % MCL_EDMA_CHANNELS_IN_GROUP));
	.d2line		312
	diab.addi		r4,r1,16		# pDmaChannelConfig=r4
	lhzx		r6,r4,r27		# pDmaChannelConfig=r4
	rlwinm		r0,r0,0,28,31		# u8CurrentRelativeChannel=r0 u8CurrentRelativeChannel=r0
	slw		r28,r28,r0		# u8CurrentRelativeChannel=r0
	or		r6,r6,r28
	sthx		r6,r4,r27		# pDmaChannelConfig=r4
.L444:
#         }
#         else
#         {
#           /* Empty else to fix misra */
#         }
#     }
	.d2line		318
.Llo26:
	diab.addi		r0,r5,1		# u8CurrentRelativeChannel=r0 u8Counter=r5
	se_addi		r5,1		# u8Counter=r5 u8Counter=r5
	b		.L440
.L442:
#     
#     /* If dma channels corresponding to Dma instances are different, the ending value for loop is different*/
# #ifdef MCL_DIFFERENT_CH_NUMBER_PER_INSTANCE
#     if (DMA_INSTANCE0 == dma_instance)
#     {
#          u8Reach = MCL_DMA_NB_CHANNELS_OF_INSTANCE0;
#     } 
#     else if (DMA_INSTANCE1 == dma_instance)
#     {
#          u8Reach = MCL_DMA_NB_CHANNELS_OF_INSTANCE1;
#     }
#     else
#     {
#       /* Empty else to fix misra */
#     }
# #else
#     u8Reach = DMA_CHANNELS_PER_MODULE_U8;
	.d2line		335
.Llo43:
	diab.li		r0,64		# u8Reach=r0
# #endif
# 
#    /*  the following loop is used for computing the priorities for the channels which didn't have prio configured, 
#     *  considering the already configured priorities and the fact that all priorities from within a group
#     *  must be different, higher than 0, lower than 16 */
#     for (u8Counter = 0U; u8Counter < u8Reach; u8Counter++)
	.d2line		341
.Llo38:
	diab.li		r4,0		# u8Counter=r4
.L445:
.Llo4:
	rlwinm		r3,r4,0,24,31		# u8CurrentPriority=r3 u8Counter=r4
.Llo7:
	rlwinm		r5,r0,0,24,31		# u8Counter=r5 u8Reach=r0
	se_cmp		r3,r5		# u8CurrentPriority=r3 u8Counter=r5
	bc		0,0,.L447	# ge
#     {
#         if (DMA_INSTANCE0 == dma_instance)
	.d2line		343
.Llo8:
	rlwinm		r3,r30,0,24,31		# u8CurrentPriority=r3 dma_instance=r30
.Llo9:
	se_cmpi		r3,0		# u8CurrentPriority=r3
#         {
#              u8CurrentAbsoluteChannel = u8Counter;
	.d2line		345
	isel		r29,r4,r29,2		# u8CurrentAbsoluteChannel=r29 u8Counter=r4 u8CurrentAbsoluteChannel=r29
.L449:
# 
#         }
# #if (MCL_DMA_NB_CONTROLLERS == 0x02U)   
#         else if (DMA_INSTANCE1 == dma_instance)
#         {
#              u8CurrentAbsoluteChannel = (uint8)(u8Counter + DMA_CHANNELS_PER_MODULE_U8);
#         }
# #endif
#         else
#         {
#           /* Empty else to fix misra */
#         }
#         
#         /* calculate to which group u8Counter belongs */ 
#         u8CurrentGroup = (uint8)(u8Counter / MCL_EDMA_CHANNELS_IN_GROUP);
	.d2line		360
.Llo10:
	rlwinm		r31,r4,28,28,31		# pConfig=r31 u8Counter=r4
.Llo31:
	mr		r31,r31		# u8CurrentGroup=r31 u8CurrentGroup=r31
#         
#         /* if channel has no priority assigned */
#         if((uint16)0x0U == (u16ChannelGrFlags[u8CurrentGroup] & (uint16)((uint32)0x1U << (u8Counter % MCL_EDMA_CHANNELS_IN_GROUP))))
	.d2line		363
	diab.addi		r3,r1,16		# u8CurrentPriority=r3
.Llo11:
	rlwinm		r6,r31,1,23,30		# u8CurrentGroup=r31
	lhzx		r6,r3,r6		# u8CurrentPriority=r3
	diab.li		r5,1		# u8Counter=r5
	rlwinm		r3,r4,0,28,31		# u8CurrentPriority=r3 u8Counter=r4
	slw		r5,r5,r3		# u8Counter=r5 u8Counter=r5 u8CurrentPriority=r3
	rlwinm		r5,r5,0,16,31		# u8Counter=r5 u8Counter=r5
	and.		r5,r5,r6		# u8Counter=r5 u8Counter=r5
	bc		0,2,.L453	# ne
#         {
#             u8CurrentPriority = 0U;
	.d2line		365
.Llo12:
	diab.li		r3,0		# u8CurrentPriority=r3
.L451:
#             /* Priority not configured for channel, compute corresponding priority */
#             while(((uint16)0x0U != (u16PriorityGrFlags[u8CurrentGroup] & (uint16)((uint32)0x1U << u8CurrentPriority))) && (MCL_EDMA_CHANNELS_IN_GROUP >= u8CurrentPriority))
	.d2line		367
.Llo13:
	diab.addi		r5,r1,8		# u8Counter=r5
	rlwinm		r6,r31,1,23,30		# u8CurrentGroup=r31
	lhzx		r6,r5,r6		# u8Counter=r5
	diab.li		r5,1		# u8Counter=r5
	slw		r5,r5,r3		# u8Counter=r5 u8Counter=r5 u8CurrentPriority=r3
	rlwinm		r5,r5,0,16,31		# u8Counter=r5 u8Counter=r5
	and.		r5,r5,r6		# u8Counter=r5 u8Counter=r5
	bc		1,2,.L452	# eq
	rlwinm		r5,r3,0,24,31		# u8Counter=r5 u8CurrentPriority=r3
	se_cmpli	r5,16		# u8Counter=r5
	bc		1,1,.L452	# gt
#             {
#                 /* Priority flag is set, increase current priority */
#                 u8CurrentPriority++;
	.d2line		370
	diab.addi		r5,r3,1		# u8Counter=r5 u8CurrentPriority=r3
	se_addi		r3,1		# u8CurrentPriority=r3 u8CurrentPriority=r3
	b		.L451
.L452:
#             }
#             
#             /* Set the flag for the corresponding found priority */            
#             u16PriorityGrFlags[u8CurrentGroup] |= (uint16)((uint32)0x1U << u8CurrentPriority);
	.d2line		374
.Llo32:
	diab.addi		r5,r1,8		# u8Counter=r5
.Llo33:
	rlwinm		r31,r31,1,23,30		# u8CurrentGroup=r31 u8CurrentGroup=r31
.Llo34:
	lhzx		r6,r5,r31		# u8Counter=r5
	diab.li		r7,1		# u8CurrentRelativeChannel=r7
.Llo27:
	slw		r7,r7,r3		# u8CurrentRelativeChannel=r7 u8CurrentRelativeChannel=r7 u8CurrentPriority=r3
	or		r6,r6,r7		# u8CurrentRelativeChannel=r7
	sthx		r6,r5,r31		# u8Counter=r5
#             /* Update the DCHPRIn register. */
#             /** @violates @ref Mcl_DMA_c_REF_2 Violates MISRA 2004 Rule 11.1, Cast from unsigned long to pointer.*/
#             /** @violates @ref Mcl_DMA_c_REF_10 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#             /** @violates @ref Mcl_DMA_c_REF_11 MISRA 2004 Required Rule 10.1, The value of expression of integer type shall not be implicity to different underlying*/
#             REG_WRITE8(DMA_CPR((uint32)u8CurrentAbsoluteChannel), u8CurrentPriority); 
	.d2line		379
	rlwinm		r5,r29,0,26,31		# u8Counter=r5 u8CurrentAbsoluteChannel=r29
	e_lis		r6,64522
	.diab.bseti		r6,23
	se_add		r5,r6		# u8Counter=r5 u8Counter=r5
	stbx		r3,r0,r5		# u8Reach=r0 u8CurrentPriority=r3
.L453:
#         }
#         else
#         {
#           /* Empty else to fix misra */
#         }
#     }
	.d2line		385
.Llo14:
	diab.addi		r3,r4,1		# u8CurrentPriority=r3 u8Counter=r4
	se_addi		r4,1		# u8Counter=r4 u8Counter=r4
	b		.L445
.L447:
# 
#     /* Exit exclusive area */
#     SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_12();    
	.d2line		388
.Llo6:
	bl		SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_12
#     
# }
	.d2line		390
	.d2epilogue_begin
	lmw		r27,44(r1)		# offset r1+44  0x2c
	.d2_cfa_restore_list	3,10
	lwz		r0,68(r1)		# u8Reach=r0
	mtspr		lr,r0		# u8Reach=lr
	diab.addi		r1,r1,64		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L538:
	.type		Mcl_Dma_Init,@function
	.size		Mcl_Dma_Init,.-Mcl_Dma_Init
# Number of nodes = 257

# Allocations for Mcl_Dma_Init
#	?a4		pConfig
#	?a5		dma_instance
#	?a6		$$120
#	?a7		$$110
#	?a8		$$109
#	?a9		$$108
#	?a10		$$107
#	SP,8		u16PriorityGrFlags
#	SP,16		u16ChannelGrFlags
#	?a11		u8CurrentPriority
#	?a12		u8CurrentRelativeChannel
#	?a13		u8CurrentAbsoluteChannel
#	?a14		u8CurrentGroup
#	?a15		u8Counter
#	?a16		u8Reach
#	?a17		pDmaChannelConfig
# FUNC(void, MCL_CODE) Mcl_Dma_ConfigTcd( P2VAR(Mcl_DmaTcdType, AUTOMATIC, MCL_APPL_DATA) pTcdAddress,
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         519,22
#$$ld
.L578:

#$$bf	Mcl_Dma_ConfigTcd,interprocedural,rasave,nostackparams
	.globl		Mcl_Dma_ConfigTcd
	.d2_cfa_start __cie
Mcl_Dma_ConfigTcd:
.Llo44:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr		# u32Reg_value=r0
.Llo49:
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)		# u32Reg_value=r0
	.d2_cfa_offset    108,-1
	mr		r31,r3		# pTcdAddress=r31 pTcdAddress=r3
.Llo45:
	mr		r29,r4		# config_descriptor=r29 config_descriptor=r4
	.d2prologue_end
#                                     P2CONST(Mcl_DmaTcdAttributesType, AUTOMATIC, MCL_APPL_CONST) config_descriptor)
# {
#     VAR(uint32, AUTOMATIC) u32Reg_value;
#   
#     /* Set saddr */
#     /** @violates @ref Mcl_DMA_c_REF_2 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#     /** @violates @ref Mcl_DMA_c_REF_10 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#     /* Compiler_Warning: This warning is thrown because pTcdAddress, but the purpose of the instruction writes to an address */
#     REG_WRITE32((uint32)pTcdAddress + DMA_TCD_1ST_WORD_OFFSET_U32, (uint32)(config_descriptor->u32saddr));      
	.d2line		528
.Llo46:
	lwz		r0,0(r29)		# u32Reg_value=r0 config_descriptor=r29
.Llo48:
	stw		r0,0(r31)		# pTcdAddress=r31 u32Reg_value=r0
#     
#     u32Reg_value = (config_descriptor->u32smod<<DMA_SMOD_SHIFT_MASK_U32) | 
	.d2line		530
	lwz		r0,24(r29)		# u32Reg_value=r0 config_descriptor=r29
	se_slwi		r0,27		# u32Reg_value=r0 u32Reg_value=r0
	lwz		r3,8(r29)		# config_descriptor=r29
	se_slwi		r3,24
	or		r3,r3,r0		# u32Reg_value=r0
	lwz		r0,28(r29)		# u32Reg_value=r0 config_descriptor=r29
	se_slwi		r0,19		# u32Reg_value=r0 u32Reg_value=r0
	or		r3,r3,r0		# u32Reg_value=r0
	lwz		r0,12(r29)		# u32Reg_value=r0 config_descriptor=r29
	se_slwi		r0,16		# u32Reg_value=r0 u32Reg_value=r0
	or		r3,r3,r0		# u32Reg_value=r0
	lwz		r30,16(r29)		# u32Reg_value=r30 config_descriptor=r29
	or		r0,r3,r30		# u32Reg_value=r0 u32Reg_value=r30
	mr		r30,r0		# u32Reg_value=r30 u32Reg_value=r0
#                    (config_descriptor->u32ssize<<DMA_SSIZE_SHIFT_MASK_U32) | 
#                    (config_descriptor->u32dmod<<DMA_DMOD_SHIFT_MASK_U32) | 
#                    (config_descriptor->u32dsize<<DMA_DSIZE_SHIFT_MASK_U32) | 
#                    (config_descriptor->u32soff);
#     /* Enter exclusive area to protect words 2,6,8 */
#     SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_15();
	.d2line		536
.Llo50:
	bl		SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_15
#     
#     /* Set smod, ssize, dmod, dsize, soff */
#     /** @violates @ref Mcl_DMA_c_REF_2 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#     /** @violates @ref Mcl_DMA_c_REF_10 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#     /* Compiler_Warning: This warning is thrown because pTcdAddress, but the purpose of the instruction writes to an address */
#     REG_WRITE32((uint32)pTcdAddress + DMA_TCD_2ND_WORD_OFFSET_U32, (uint32)u32Reg_value);                   
	.d2line		542
.Llo51:
	stw		r30,4(r31)		# pTcdAddress=r31 u32Reg_value=r30
#     /* Set nbytes */
#     /** @violates @ref Mcl_DMA_c_REF_2 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#     /** @violates @ref Mcl_DMA_c_REF_10 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#     /* Compiler_Warning: This warning is thrown because pTcdAddress, but the purpose of the instruction writes to an address */
#     REG_WRITE32((uint32)pTcdAddress + DMA_TCD_3RD_WORD_OFFSET_U32, (uint32)(config_descriptor->u32num_bytes));  
	.d2line		547
	lwz		r0,32(r29)		# u32Reg_value=r0 config_descriptor=r29
	stw		r0,8(r31)		# pTcdAddress=r31 u32Reg_value=r0
#     /** @violates @ref Mcl_DMA_c_REF_2 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#     /** @violates @ref Mcl_DMA_c_REF_10 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */    
#     /* Compiler_Warning: This warning is thrown because pTcdAddress, but the purpose of the instruction writes to an address */
#     REG_WRITE32((uint32)pTcdAddress + DMA_TCD_4TH_WORD_OFFSET_U32, (uint32)(0x0U));   
	.d2line		551
	diab.li		r4,0
	stw		r4,12(r31)		# pTcdAddress=r31
#     /* Set daddr */   
#     /** @violates @ref Mcl_DMA_c_REF_2 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */ 
#     /** @violates @ref Mcl_DMA_c_REF_10 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#     /* Compiler_Warning: This warning is thrown because pTcdAddress, but the purpose of the instruction writes to an address */
#     REG_WRITE32((uint32)pTcdAddress + DMA_TCD_5TH_WORD_OFFSET_U32, (uint32)(config_descriptor->u32daddr));       
	.d2line		556
	lwz		r0,4(r29)		# u32Reg_value=r0 config_descriptor=r29
	stw		r0,16(r31)		# pTcdAddress=r31 u32Reg_value=r0
#     
#     u32Reg_value = (config_descriptor->u32iter<<DMA_ITER_SHIFT_MASK_U32) | config_descriptor->u32doff;
	.d2line		558
	lwz		r3,36(r29)		# config_descriptor=r29
	se_slwi		r3,16
	lwz		r0,20(r29)		# u32Reg_value=r0 config_descriptor=r29
	or		r0,r0,r3		# u32Reg_value=r0 u32Reg_value=r0
	mr		r0,r0		# u32Reg_value=r0 u32Reg_value=r0
#     /* Set citer and doff */
#     /** @violates @ref Mcl_DMA_c_REF_2 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#     /** @violates @ref Mcl_DMA_c_REF_10 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#     /* Compiler_Warning: This warning is thrown because pTcdAddress, but the purpose of the instruction writes to an address */
#     REG_WRITE32((uint32)pTcdAddress + DMA_TCD_6TH_WORD_OFFSET_U32, u32Reg_value);                   
	.d2line		563
	stw		r0,20(r31)		# pTcdAddress=r31 u32Reg_value=r0
#     /** @violates @ref Mcl_DMA_c_REF_2 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */ 
#     /** @violates @ref Mcl_DMA_c_REF_10 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#     /* Compiler_Warning: This warning is thrown because pTcdAddress, but the purpose of the instruction writes to an address */
#     REG_WRITE32((uint32)pTcdAddress + DMA_TCD_7TH_WORD_OFFSET_U32, (uint32)(0x0U));  
	.d2line		567
	stw		r4,24(r31)		# pTcdAddress=r31
#     
#     u32Reg_value = (uint32)0x0U | (config_descriptor->u32iter<<DMA_ITER_SHIFT_MASK_U32);
	.d2line		569
	lwz		r0,36(r29)		# u32Reg_value=r0 config_descriptor=r29
	se_slwi		r0,16		# u32Reg_value=r0 u32Reg_value=r0
	mr		r0,r0		# u32Reg_value=r0 u32Reg_value=r0
#     /* Set biter */
#     /** @violates @ref Mcl_DMA_c_REF_2 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#     /** @violates @ref Mcl_DMA_c_REF_10 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#     /* Compiler_Warning: This warning is thrown because pTcdAddress, but the purpose of the instruction writes to an address */
#     REG_WRITE32((uint32)pTcdAddress + DMA_TCD_8TH_WORD_OFFSET_U32, u32Reg_value);   
	.d2line		574
	stw		r0,28(r31)		# pTcdAddress=r31 u32Reg_value=r0
#     
#     /* Exit exclusive area to protect words 2,6,8 */
#     SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_15();    
	.d2line		577
	bl		SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_15
# 
# }
	.d2line		579
	.d2epilogue_begin
	lmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	3,10
.Llo47:
	lwz		r0,36(r1)		# u32Reg_value=r0
	mtspr		lr,r0		# u32Reg_value=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L579:
	.type		Mcl_Dma_ConfigTcd,@function
	.size		Mcl_Dma_ConfigTcd,.-Mcl_Dma_ConfigTcd
# Number of nodes = 112

# Allocations for Mcl_Dma_ConfigTcd
#	?a4		pTcdAddress
#	?a5		config_descriptor
#	?a6		u32Reg_value
# FUNC(void, MCL_CODE) Mcl_Dma_ConfigChannel( VAR(Mcl_DmaChannelType, AUTOMATIC) dma_channel, 
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         594,22
#$$ld
.L595:

#$$bf	Mcl_Dma_ConfigChannel,interprocedural,rasave,nostackparams
	.globl		Mcl_Dma_ConfigChannel
	.d2_cfa_start __cie
Mcl_Dma_ConfigChannel:
.Llo52:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr		# dma_channel=r0
	stw		r0,20(r1)		# dma_channel=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# dma_channel=r0 dma_channel=r3
	.d2prologue_end
#                                         P2CONST(Mcl_DmaTcdAttributesType, AUTOMATIC, MCL_APPL_CONST) config_descriptor)
# {
#     /* Call ConfigTcd with the corresponding channel's TCD address */
#     /** @violates @ref Mcl_DMA_c_REF_2 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#     /** @violates @ref Mcl_DMA_c_REF_10 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#     Mcl_Dma_ConfigTcd((Mcl_DmaTcdType *)DMA_TCD((uint32)(dma_channel)), config_descriptor);
	.d2line		600
	rlwinm		r0,r0,5,21,26		# dma_channel=r0 dma_channel=r0
.Llo53:
	e_lis		r3,64522
.Llo54:
	.diab.bseti		r3,19
	se_add		r3,r0		# dma_channel=r0
	mr		r0,r4		# config_descriptor=r0 config_descriptor=r4
.Llo55:
	bl		Mcl_Dma_ConfigTcd
#    
# }
	.d2line		602
	.d2epilogue_begin
.Llo56:
	lwz		r0,20(r1)		# dma_channel=r0
	mtspr		lr,r0		# dma_channel=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L596:
	.type		Mcl_Dma_ConfigChannel,@function
	.size		Mcl_Dma_ConfigChannel,.-Mcl_Dma_ConfigChannel
# Number of nodes = 13

# Allocations for Mcl_Dma_ConfigChannel
#	?a4		dma_channel
#	?a5		config_descriptor
# FUNC(void, MCL_CODE) Mcl_Dma_ConfigLinkedChannel( VAR(Mcl_DmaChannelType, AUTOMATIC) dma_channel, 
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         618,22
#$$ld
.L603:

#$$bf	Mcl_Dma_ConfigLinkedChannel,interprocedural,rasave,nostackparams
	.globl		Mcl_Dma_ConfigLinkedChannel
	.d2_cfa_start __cie
Mcl_Dma_ConfigLinkedChannel:
.Llo57:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# dma_channel=r31 dma_channel=r3
.Llo58:
	mr		r30,r5		# next_channel=r30 next_channel=r5
	.d2prologue_end
#                                               P2CONST(Mcl_DmaTcdAttributesType, AUTOMATIC, MCL_APPL_CONST) config_descriptor, 
#                                               VAR(Mcl_DmaChannelType, AUTOMATIC) next_channel)  
# {
#     /* Config TCD according to config_descriptor */
#     /** @violates @ref Mcl_DMA_c_REF_2 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer */  
#     /** @violates @ref Mcl_DMA_c_REF_10 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */    
#     Mcl_Dma_ConfigTcd((Mcl_DmaTcdType *)DMA_TCD((uint32)(dma_channel)), config_descriptor);
	.d2line		625
.Llo59:
	rlwinm		r0,r31,5,21,26		# dma_channel=r31
.Llo64:
	e_lis		r3,64522
	.diab.bseti		r3,19
	se_add		r3,r0
	mr		r0,r4		# config_descriptor=r0 config_descriptor=r4
	bl		Mcl_Dma_ConfigTcd
#     
#     /* Enter exclusive area to protect TCD words 2,6,8 */
#     SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_31();
	.d2line		628
.Llo63:
	bl		SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_31
#     
#     /* set major_linkch */
#     /** @violates @ref Mcl_DMA_c_REF_2 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#     /** @violates @ref Mcl_DMA_c_REF_10 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#     REG_WRITE8(DMA_TCD((uint32)(dma_channel)) + DMA_TCD_8TH_WORD_OFFSET_U32 + DMA_TCD_CSR_OFFSET_U32, (uint8)next_channel);  
	.d2line		633
	rlwinm		r0,r31,5,21,26		# dma_channel=r31
	e_lis		r31,64522		# dma_channel=r31
	e_or2i		r31,4126		# dma_channel=r31
	se_add		r31,r0		# dma_channel=r31 dma_channel=r31
.Llo60:
	stbx		r30,r0,r31		# next_channel=r30
#     
#     /** @brief  set the TCD.major_elink bit. */
#     /** @violates @ref Mcl_DMA_c_REF_2 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#     /** @violates @ref Mcl_DMA_c_REF_10 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#     DMA_SET_MAJOR_ELINK((uint32)dma_channel);
	.d2line		638
	e_lis		r31,64522		# dma_channel=r31
.Llo61:
	e_or2i		r31,4124		# dma_channel=r31
	lwzux		r0,r31,r0		# dma_channel=r31
	.diab.bseti		r0,26
	stw		r0,0(r31)		# dma_channel=r31
#     
#     /* Exit exclusive area to protect TCD words 2,6,8 */
#     SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_31();
	.d2line		641
	bl		SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_31
# }
	.d2line		642
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo62:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L604:
	.type		Mcl_Dma_ConfigLinkedChannel,@function
	.size		Mcl_Dma_ConfigLinkedChannel,.-Mcl_Dma_ConfigLinkedChannel
# Number of nodes = 39

# Allocations for Mcl_Dma_ConfigLinkedChannel
#	?a4		dma_channel
#	?a5		config_descriptor
#	?a6		next_channel
#	?a7		$$111
# FUNC(void, MCL_CODE) Mcl_Dma_ConfigScatterGatherChannel( VAR(Mcl_DmaChannelType, AUTOMATIC) dma_channel, 
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         659,22
#$$ld
.L611:

#$$bf	Mcl_Dma_ConfigScatterGatherChannel,interprocedural,rasave,nostackparams
	.globl		Mcl_Dma_ConfigScatterGatherChannel
	.d2_cfa_start __cie
Mcl_Dma_ConfigScatterGatherChannel:
.Llo65:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# dma_channel=r31 dma_channel=r3
.Llo66:
	mr		r30,r5		# pNext_tcd=r30 pNext_tcd=r5
	.d2prologue_end
#                                                      P2CONST(Mcl_DmaTcdAttributesType, AUTOMATIC, MCL_APPL_CONST) config_descriptor, 
#                                                      P2VAR(Mcl_DmaTcdType, AUTOMATIC, MCL_APPL_DATA) pNext_tcd)
# {   
#     /* Config TCD according to config_descriptor */
#     /** @violates @ref Mcl_DMA_c_REF_2 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#     /** @violates @ref Mcl_DMA_c_REF_10 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#     Mcl_Dma_ConfigTcd((Mcl_DmaTcdType *)DMA_TCD((uint32)(dma_channel)), config_descriptor);
	.d2line		666
.Llo67:
	rlwinm		r0,r31,5,21,26		# dma_channel=r31
.Llo70:
	e_lis		r3,64522
	.diab.bseti		r3,19
	se_add		r3,r0
	mr		r0,r4		# config_descriptor=r0 config_descriptor=r4
	bl		Mcl_Dma_ConfigTcd
#     
#     /* Set Scatter Gather Address with the address of the next TCD */
#     /** @violates @ref Mcl_DMA_c_REF_2 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#     /** @violates @ref Mcl_DMA_c_REF_10 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#     /* Compiler_Warning: This warning is thrown because pNext_tcd, but the purpose of the instruction is to write an address */
#     REG_WRITE32((uint32)(DMA_TCD((uint32)(dma_channel))) + DMA_TCD_7TH_WORD_OFFSET_U32, (uint32)(pNext_tcd));
	.d2line		672
.Llo69:
	rlwinm		r0,r31,5,21,26		# dma_channel=r31
	e_lis		r3,64522
	e_or2i		r3,4120
	se_add		r0,r3
	stwx		r30,r0,r0		# pNext_tcd=r30
#     
#     /* Enter exclusive area to protect TCD words 2,6,8 */
#     SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_30();
	.d2line		675
	bl		SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_30
#     
#     /** @brief set the e_sg bit */
#     /** @violates @ref Mcl_DMA_c_REF_2 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#     /** @violates @ref Mcl_DMA_c_REF_10 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#     DMA_SET_E_SG((uint32)dma_channel);    
	.d2line		680
	rlwinm		r31,r31,5,21,26		# dma_channel=r31 dma_channel=r31
	e_lis		r0,64522
	e_or2i		r0,4124
	se_add		r31,r0		# dma_channel=r31 dma_channel=r31
	lwz		r0,0(r31)		# dma_channel=r31
	.diab.bseti		r0,27
	stw		r0,0(r31)		# dma_channel=r31
#     
#     /* Exit exclusive area to protect TCD words 2,6,8 */
#     SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_30();
	.d2line		683
	bl		SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_30
# }
	.d2line		684
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo68:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L612:
	.type		Mcl_Dma_ConfigScatterGatherChannel,@function
	.size		Mcl_Dma_ConfigScatterGatherChannel,.-Mcl_Dma_ConfigScatterGatherChannel
# Number of nodes = 39

# Allocations for Mcl_Dma_ConfigScatterGatherChannel
#	?a4		dma_channel
#	?a5		config_descriptor
#	?a6		pNext_tcd
#	?a7		$$112
# FUNC(void, MCL_CODE) Mcl_Dma_ConfigLinkedTcd( P2VAR(Mcl_DmaTcdType, AUTOMATIC, MCL_APPL_DATA) pTcdAddress, 
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         702,22
#$$ld
.L619:

#$$bf	Mcl_Dma_ConfigLinkedTcd,interprocedural,rasave,nostackparams
	.globl		Mcl_Dma_ConfigLinkedTcd
	.d2_cfa_start __cie
Mcl_Dma_ConfigLinkedTcd:
.Llo71:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# pTcdAddress=r31 pTcdAddress=r3
.Llo72:
	mr		r30,r5		# next_channel=r30 next_channel=r5
	.d2prologue_end
#                                           P2CONST(Mcl_DmaTcdAttributesType, AUTOMATIC, MCL_APPL_CONST) config_descriptor, 
#                                           VAR(Mcl_DmaChannelType, AUTOMATIC) next_channel)  
# {
# 
#     /* Config TCD according to config_descriptor */
#     /** @violates @ref Mcl_DMA_c_REF_2 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#     /** @violates @ref Mcl_DMA_c_REF_10 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#     Mcl_Dma_ConfigTcd(pTcdAddress, config_descriptor);
	.d2line		710
.Llo73:
	mr		r3,r31		# pTcdAddress=r3 pTcdAddress=r31
.Llo76:
	mr		r0,r4		# config_descriptor=r0 config_descriptor=r4
	bl		Mcl_Dma_ConfigTcd
#     
#     /* Enter exclusive area to protect TCD words 2,6,8 */
#     SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_26();
	.d2line		713
.Llo75:
	bl		SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_26
#     /* set major_linkch */
#     /** @violates @ref Mcl_DMA_c_REF_2 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#     /** @violates @ref Mcl_DMA_c_REF_10 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#     /* Compiler_Warning: The cast is needed to access only the major link part of the word without accessing the flags. */
#     REG_WRITE8((uint32)((uint32)pTcdAddress + DMA_TCD_8TH_WORD_OFFSET_U32 + DMA_TCD_CSR_OFFSET_U32), (uint8)next_channel);  
	.d2line		718
	stb		r30,30(r31)		# pTcdAddress=r31 next_channel=r30
#     
#     /** @brief  set the TCD.major_elink bit. */
#     /** @violates @ref Mcl_DMA_c_REF_2 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#     /** @violates @ref Mcl_DMA_c_REF_10 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#     /* Compiler_Warning: The cast is needed to access only the major link part of the word without accessing the flags. */
#     REG_BIT_SET32((uint32)pTcdAddress + DMA_TCD_8TH_WORD_OFFSET_U32, (uint32)DMA_TCD_MAJOR_E_LINK_MASK_U32);   
	.d2line		724
	lwz		r0,28(r31)		# pTcdAddress=r31
	.diab.bseti		r0,26
	stw		r0,28(r31)		# pTcdAddress=r31
#     
#     /* Exit exclusive area to protect TCD words 2,6,8 */
#     SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_26();
	.d2line		727
	bl		SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_26
# }
	.d2line		728
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo74:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L620:
	.type		Mcl_Dma_ConfigLinkedTcd,@function
	.size		Mcl_Dma_ConfigLinkedTcd,.-Mcl_Dma_ConfigLinkedTcd
# Number of nodes = 22

# Allocations for Mcl_Dma_ConfigLinkedTcd
#	?a4		pTcdAddress
#	?a5		config_descriptor
#	?a6		next_channel
# FUNC(void, MCL_CODE) Mcl_Dma_ConfigScatterGatherTcd( P2VAR(Mcl_DmaTcdType, AUTOMATIC, MCL_APPL_DATA) pTcdAddress, 
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         745,22
#$$ld
.L627:

#$$bf	Mcl_Dma_ConfigScatterGatherTcd,interprocedural,rasave,nostackparams
	.globl		Mcl_Dma_ConfigScatterGatherTcd
	.d2_cfa_start __cie
Mcl_Dma_ConfigScatterGatherTcd:
.Llo77:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# pTcdAddress=r31 pTcdAddress=r3
.Llo78:
	mr		r30,r5		# pNext_tcd=r30 pNext_tcd=r5
	.d2prologue_end
#                                                  P2CONST(Mcl_DmaTcdAttributesType, AUTOMATIC, MCL_APPL_CONST) config_descriptor, 
#                                                  P2VAR(Mcl_DmaTcdType, AUTOMATIC, MCL_APPL_DATA) pNext_tcd)
# {   
# 
#     /* Config TCD according to config_descriptor */
#     /** @violates @ref Mcl_DMA_c_REF_2 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#     /** @violates @ref Mcl_DMA_c_REF_10 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#     Mcl_Dma_ConfigTcd(pTcdAddress, config_descriptor);
	.d2line		753
.Llo79:
	mr		r3,r31		# pTcdAddress=r3 pTcdAddress=r31
.Llo82:
	mr		r0,r4		# config_descriptor=r0 config_descriptor=r4
	bl		Mcl_Dma_ConfigTcd
#     
#     /* Set Scatter Gather Address with the address of the next TCD */
#     /** @violates @ref Mcl_DMA_c_REF_2 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#     /** @violates @ref Mcl_DMA_c_REF_10 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#     /* Compiler_Warning: This warning is thrown because pNext_tcd, but the purpose of the instruction is to write an address */
#     REG_WRITE32((uint32)pTcdAddress + DMA_TCD_7TH_WORD_OFFSET_U32, (uint32)(pNext_tcd));
	.d2line		759
.Llo81:
	stw		r30,24(r31)		# pTcdAddress=r31 pNext_tcd=r30
#  
#     /* Enter exclusive area to protect TCD words 2,6,8 */
#     SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_27();
	.d2line		762
	bl		SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_27
#     
#     /* Set Enable Scatter/Gather Processing */ 
#     /** @violates @ref Mcl_DMA_c_REF_2 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#     /** @violates @ref Mcl_DMA_c_REF_10 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#     /* Compiler_Warning: This warning is thrown because pTcdAddress, but the purpose of the instruction writes to an address */
#     REG_BIT_SET32((uint32)pTcdAddress + DMA_TCD_8TH_WORD_OFFSET_U32, (uint32)DMA_TCD_E_SG_MASK_U32);
	.d2line		768
	lwz		r0,28(r31)		# pTcdAddress=r31
	.diab.bseti		r0,27
	stw		r0,28(r31)		# pTcdAddress=r31
#     
#     /* Exit exclusive area to protect TCD words 2,6,8 */
#     SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_27();
	.d2line		771
	bl		SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_27
# }
	.d2line		772
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo80:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L628:
	.type		Mcl_Dma_ConfigScatterGatherTcd,@function
	.size		Mcl_Dma_ConfigScatterGatherTcd,.-Mcl_Dma_ConfigScatterGatherTcd
# Number of nodes = 22

# Allocations for Mcl_Dma_ConfigScatterGatherTcd
#	?a4		pTcdAddress
#	?a5		config_descriptor
#	?a6		pNext_tcd
# FUNC(void, MCL_CODE) Mcl_Dma_ConfigScatterGatherLinkedChannel( VAR(Mcl_DmaChannelType, AUTOMATIC) dma_channel, 
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         787,22
#$$ld
.L635:

#$$bf	Mcl_Dma_ConfigScatterGatherLinkedChannel,interprocedural,rasave,nostackparams
	.globl		Mcl_Dma_ConfigScatterGatherLinkedChannel
	.d2_cfa_start __cie
Mcl_Dma_ConfigScatterGatherLinkedChannel:
.Llo83:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# dma_channel=r31 dma_channel=r3
.Llo84:
	mr		r30,r5		# pNext_tcd=r30 pNext_tcd=r5
.Llo85:
	mr		r5,r6		# next_channel=r5 next_channel=r6
	.d2prologue_end
#                                                            P2CONST(Mcl_DmaTcdAttributesType, AUTOMATIC, MCL_APPL_CONST) config_descriptor, 
#                                                            P2VAR(Mcl_DmaTcdType, AUTOMATIC, MCL_APPL_DATA) pNext_tcd,
#                                                            VAR(Mcl_DmaChannelType, AUTOMATIC) next_channel)
# {
# 
#     /* Configure linked channel */
#     /** @violates @ref Mcl_DMA_c_REF_2 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#     Mcl_Dma_ConfigLinkedChannel(dma_channel, config_descriptor, next_channel);
	.d2line		795
.Llo90:
	mr		r3,r31		# dma_channel=r3 dma_channel=r31
	mr		r0,r4		# config_descriptor=r0 config_descriptor=r4
	mr		r5,r5		# next_channel=r5 next_channel=r5
	bl		Mcl_Dma_ConfigLinkedChannel
#     
#     /* Set Scatter Gather Address with the address of the next TCD */
#     /** @violates @ref Mcl_DMA_c_REF_2 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */ 
#     /** @violates @ref Mcl_DMA_c_REF_10 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#     /* Compiler_Warning: This warning is thrown because pNext_tcd, but the purpose of the instruction is to write an address */
#     REG_WRITE32((uint32)(DMA_TCD(dma_channel)) + DMA_TCD_7TH_WORD_OFFSET_U32, (uint32)(pNext_tcd));
	.d2line		801
.Llo89:
	rlwinm		r3,r31,5,21,26		# dma_channel=r3 dma_channel=r31
	e_lis		r31,64522		# dma_channel=r31
.Llo86:
	e_or2i		r31,4120		# dma_channel=r31
.Llo87:
	se_add		r31,r3		# dma_channel=r31 dma_channel=r31 dma_channel=r3
	stwx		r30,r0,r31		# pNext_tcd=r30
#     
#     /** @brief  set the TCD.esg bit. */
#     /** @violates @ref Mcl_DMA_c_REF_2 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */ 
#     /** @violates @ref Mcl_DMA_c_REF_10 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#     DMA_SET_E_SG((uint32)dma_channel);
	.d2line		806
	e_lis		r31,64522		# dma_channel=r31
	e_or2i		r31,4124		# dma_channel=r31
	lwzux		r3,r31,r3		# dma_channel=r3 dma_channel=r31
	.diab.bseti		r3,27		# dma_channel=r3
	stw		r3,0(r31)		# dma_channel=r31 dma_channel=r3
#     
# }
	.d2line		808
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo91:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo88:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L636:
	.type		Mcl_Dma_ConfigScatterGatherLinkedChannel,@function
	.size		Mcl_Dma_ConfigScatterGatherLinkedChannel,.-Mcl_Dma_ConfigScatterGatherLinkedChannel
# Number of nodes = 32

# Allocations for Mcl_Dma_ConfigScatterGatherLinkedChannel
#	?a4		dma_channel
#	?a5		config_descriptor
#	?a6		pNext_tcd
#	?a7		next_channel
#	?a8		$$113
# FUNC(void, MCL_CODE) Mcl_Dma_ConfigScatterGatherLinkedTcd( P2VAR(Mcl_DmaTcdType, AUTOMATIC, MCL_APPL_DATA) pTcdAddress,
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         824,22
#$$ld
.L644:

#$$bf	Mcl_Dma_ConfigScatterGatherLinkedTcd,interprocedural,rasave,nostackparams
	.globl		Mcl_Dma_ConfigScatterGatherLinkedTcd
	.d2_cfa_start __cie
Mcl_Dma_ConfigScatterGatherLinkedTcd:
.Llo92:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# pTcdAddress=r31 pTcdAddress=r3
.Llo93:
	mr		r30,r5		# pNext_tcd=r30 pNext_tcd=r5
.Llo94:
	mr		r5,r6		# next_channel=r5 next_channel=r6
	.d2prologue_end
#                                                        P2CONST(Mcl_DmaTcdAttributesType, AUTOMATIC, MCL_APPL_CONST) config_descriptor, 
#                                                        P2VAR(Mcl_DmaTcdType, AUTOMATIC, MCL_APPL_DATA) pNext_tcd,
#                                                        VAR(Mcl_DmaChannelType, AUTOMATIC) next_channel)
# {
#     /* Configure linked channel */
#     /** @violates @ref Mcl_DMA_c_REF_2 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */ 
#     /** @violates @ref Mcl_DMA_c_REF_10 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#     Mcl_Dma_ConfigLinkedTcd(pTcdAddress, config_descriptor, next_channel);
	.d2line		832
.Llo99:
	mr		r3,r31		# pTcdAddress=r3 pTcdAddress=r31
	mr		r0,r4		# config_descriptor=r0 config_descriptor=r4
	mr		r5,r5		# next_channel=r5 next_channel=r5
	bl		Mcl_Dma_ConfigLinkedTcd
#     
#     /* Set Scatter Gather Address with the address of the next TCD */
#     /** @violates @ref Mcl_DMA_c_REF_2 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */ 
#     /** @violates @ref Mcl_DMA_c_REF_10 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#     /* Compiler_Warning: This warning is thrown because pNext_tcd, but the purpose of the instruction is to write an address */
#     REG_WRITE32((uint32)pTcdAddress + DMA_TCD_7TH_WORD_OFFSET_U32, (uint32)(pNext_tcd));
	.d2line		838
.Llo98:
	stw		r30,24(r31)		# pTcdAddress=r31 pNext_tcd=r30
#     
#     /* Set Enable Scatter/Gather Processing */ 
#     /** @violates @ref Mcl_DMA_c_REF_2 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */ 
#     /** @violates @ref Mcl_DMA_c_REF_10 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#     /* Compiler_Warning: This warning is thrown because pTcdAddress, but the purpose of the instruction writes to an address */
#     REG_BIT_SET32((uint32)pTcdAddress + DMA_TCD_8TH_WORD_OFFSET_U32, (uint32)DMA_TCD_E_SG_MASK_U32);
	.d2line		844
	lwz		r3,28(r31)		# pTcdAddress=r3 pTcdAddress=r31
	.diab.bseti		r3,27		# pTcdAddress=r3
	stw		r3,28(r31)		# pTcdAddress=r31 pTcdAddress=r3
# }
	.d2line		845
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo95:
	lwz		r0,36(r1)
.Llo96:
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo97:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L645:
	.type		Mcl_Dma_ConfigScatterGatherLinkedTcd,@function
	.size		Mcl_Dma_ConfigScatterGatherLinkedTcd,.-Mcl_Dma_ConfigScatterGatherLinkedTcd
# Number of nodes = 21

# Allocations for Mcl_Dma_ConfigScatterGatherLinkedTcd
#	?a4		pTcdAddress
#	?a5		config_descriptor
#	?a6		pNext_tcd
#	?a7		next_channel
# FUNC(void, MCL_CODE) Mcl_Dma_SetChannelPriority( VAR(Mcl_DmaChannelType, AUTOMATIC) nChannel, 
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         858,22
#$$ld
.L653:

#$$bf	Mcl_Dma_SetChannelPriority,interprocedural,rasave,nostackparams
	.globl		Mcl_Dma_SetChannelPriority
	.d2_cfa_start __cie
Mcl_Dma_SetChannelPriority:
.Llo100:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr		# u32ChArbitration=r0
.Llo106:
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)		# u32ChArbitration=r0
	.d2_cfa_offset    108,-1
	mr		r31,r3		# nChannel=r31 nChannel=r3
.Llo101:
	mr		r30,r4		# nPriority=r30 nPriority=r4
	.d2prologue_end
#                                              VAR(Mcl_DmaPriorityType, AUTOMATIC) nPriority)
# {
#     VAR(uint32, AUTOMATIC) u32ChArbitration = 0UL;
	.d2line		861
.Llo102:
	diab.li		r0,0		# u32ChArbitration=r0
# 
#     /* Enter exclusive area to protect DMA_CR and DMA_CPR */
#     SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_14();
	.d2line		864
.Llo104:
	bl		SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_14
#     
#     /** @violates @ref Mcl_DMA_c_REF_2 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */ 
#     /** @violates @ref Mcl_DMA_c_REF_10 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#     u32ChArbitration = REG_READ32(DMA_CR_ADDR32((uint32)(DMA_MOD_IDX_U8((uint32)nChannel))));
	.d2line		868
	e_lis		r3,-1014
	lwz		r0,0(r3)		# u32ChArbitration=r0
.Llo107:
	mr		r0,r0		# u32ChArbitration=r0 u32ChArbitration=r0
#     
#     /* Switch to Round Robin channel arbitration*/
#     /** @violates @ref Mcl_DMA_c_REF_2 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */ 
#     /** @violates @ref Mcl_DMA_c_REF_10 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#     REG_RMW32(DMA_CR_ADDR32((uint32)DMA_MOD_IDX_U8((uint32)nChannel)), DMA_CR_ERCA_U32, DMA_CR_ERCA_U32);
	.d2line		873
	lwz		r4,0(r3)
	.diab.bclri		r4,29
	.diab.bseti		r4,29
	stw		r4,0(r3)
#     
#     /* Set DMA_CPR with the priority specified by nPriority to channel nChannel*/
#     /** @violates @ref Mcl_DMA_c_REF_2 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */ 
#     /** @violates @ref Mcl_DMA_c_REF_10 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#     /** @violates @ref Mcl_DMA_c_REF_11 MISRA 2004 Required Rule 10.1, The value of expression of integer type shall not be implicity to different underlying*/
#     REG_RMW8(DMA_CPR((uint32)(nChannel)), DMA_PRIORITY_MASK_U8, nPriority);
	.d2line		879
	rlwinm		r5,r31,0,26,31		# nChannel=r31
	e_lis		r4,64522
	.diab.bseti		r4,23
	add		r31,r4,r5		# nChannel=r31
.Llo103:
	lbzx		r6,r0,r31		# u32ChArbitration=r0
	rlwinm		r6,r6,0,24,27
	or		r6,r6,r30		# nPriority=r30
	stbux		r6,r4,r5
#     
#     /* Switch back to initial channel arbitration */
#     /** @violates @ref Mcl_DMA_c_REF_2 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */ 
#     /** @violates @ref Mcl_DMA_c_REF_10 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#     REG_RMW32(DMA_CR_ADDR32((uint32)DMA_MOD_IDX_U8((uint32)nChannel)), DMA_CR_ERCA_U32, (uint32)(u32ChArbitration & DMA_CR_ERCA_U32));
	.d2line		884
	lwz		r4,0(r3)
	.diab.bclri		r4,29
	rlwinm		r0,r0,0,29,29		# u32ChArbitration=r0 u32ChArbitration=r0
	or		r0,r0,r4		# u32ChArbitration=r0 u32ChArbitration=r0
	stw		r0,0(r3)		# u32ChArbitration=r0
#     
#     /* Exit exclusive area to protect DMA_CR and DMA_CPR */
#     SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_14();
	.d2line		887
	bl		SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_14
# }
	.d2line		888
	.d2epilogue_begin
.Llo108:
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo105:
	lwz		r0,36(r1)		# u32ChArbitration=r0
	mtspr		lr,r0		# u32ChArbitration=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L654:
	.type		Mcl_Dma_SetChannelPriority,@function
	.size		Mcl_Dma_SetChannelPriority,.-Mcl_Dma_SetChannelPriority
# Number of nodes = 50

# Allocations for Mcl_Dma_SetChannelPriority
#	?a4		nChannel
#	?a5		nPriority
#	?a6		u32ChArbitration
# FUNC(void, MCL_CODE) Mcl_Dma_StartChannel( VAR(Mcl_DmaChannelType, AUTOMATIC) nChannel)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         901,22
#$$ld
.L663:

#$$bf	Mcl_Dma_StartChannel,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,lr
	.globl		Mcl_Dma_StartChannel
	.d2_cfa_start __cie
Mcl_Dma_StartChannel:
.Llo109:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# nChannel=r3 nChannel=r3
	.d2prologue_end
# {
# 
#     
#     #ifdef MCAL_CACHE_RUNTIME_MNGMNT
#     #if (STD_ON == MCAL_CACHE_RUNTIME_MNGMNT)
#     #if (STD_ON == MCL_SYNCRONIZE_CACHE) 
#     VAR(Std_ReturnType, AUTOMATIC) retVal = (Std_ReturnType)E_NOT_OK;
#     /* Flush DCACHE to synchronize data */
#     retVal = Mcl_IPW_CacheFlush(MCL_LMEM_CACHE_ALL);
#     if ((Std_ReturnType)E_NOT_OK == retVal)
#     {   /* memory synchronization failed, notify user */
#         #if (MCL_DMA_ERROR_INTERRUPTS_USED == STD_ON)
#         /** @violates @ref Mcl_DMA_c_REF_2 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */ 
#         /** @violates @ref Mcl_DMA_c_REF_10 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#         Mcl_IPW_ErrorNotification(DMA_MOD_IDX_U8((uint32)nChannel) , MCL_DMA_MEM_SYNC_ERROR);
#         #endif
#     }
#     else
#     {
#         /* cache memory sync successful */
#     }
#     #endif
#     #endif
#     #endif
#     /* Start the DMA channel nChannel*/
#     /** @violates @ref Mcl_DMA_c_REF_2 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */ 
#     /** @violates @ref Mcl_DMA_c_REF_10 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#     REG_WRITE8(DMA_SSRT_ADDR32((uint32)DMA_MOD_IDX_U8((uint32)nChannel)), (nChannel & DMA_CTRL_MAX_CHANNELS_MASK_U8));
	.d2line		929
	rlwinm		r3,r3,0,26,31		# nChannel=r3 nChannel=r3
	e_lis		r4,-1014
	stb		r3,30(r4)		# nChannel=r3
# 
# }
	.d2line		931
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo110:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L664:
	.type		Mcl_Dma_StartChannel,@function
	.size		Mcl_Dma_StartChannel,.-Mcl_Dma_StartChannel
# Number of nodes = 6

# Allocations for Mcl_Dma_StartChannel
#	?a4		nChannel
# FUNC(boolean, MCL_CODE) Mcl_Dma_IsTransferCompleted( VAR(Mcl_DmaChannelType, AUTOMATIC) nChannel)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         945,25
#$$ld
.L669:

#$$bf	Mcl_Dma_IsTransferCompleted,interprocedural,nostackparams

# Regs written: r0,r1,r3,cr0,lr
	.globl		Mcl_Dma_IsTransferCompleted
	.d2_cfa_start __cie
Mcl_Dma_IsTransferCompleted:
.Llo111:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
.Llo113:
	stw		r0,20(r1)		# bCompleted=r0
	.d2_cfa_offset    108,-1
	mr		r3,r3		# nChannel=r3 nChannel=r3
	.d2prologue_end
# {
#     VAR(boolean, AUTOMATIC) bCompleted = (boolean)FALSE;
	.d2line		947
	diab.li		r0,0		# bCompleted=r0
#     #ifdef MCAL_CACHE_RUNTIME_MNGMNT
#     #if (STD_ON == MCAL_CACHE_RUNTIME_MNGMNT)
#     #if (STD_ON == MCL_SYNCRONIZE_CACHE) 
#     VAR(Std_ReturnType, AUTOMATIC) retVal = (Std_ReturnType)E_NOT_OK;
#     #endif
#     #endif
#     #endif
#         
# 
#     /* Check DONE bit from DMA_TCD_CSR */
#     /** @violates @ref Mcl_DMA_c_REF_2 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */ 
#     /** @violates @ref Mcl_DMA_c_REF_10 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#     if(0UL != REG_BIT_GET32(DMA_TCD_CHANNEL(nChannel, (uint32)DMA_TCD_8TH_WORD_OFFSET_U32), DMA_TCD_DONE_U32)) 
	.d2line		960
.Llo114:
	rlwinm		r3,r3,5,21,26		# nChannel=r3 nChannel=r3
.Llo115:
	e_lis		r0,64522		# bCompleted=r0
	e_or2i		r0,4124		# bCompleted=r0
	se_add		r0,r3		# bCompleted=r0 bCompleted=r0 nChannel=r3
	lwzx		r0,r0,r0		# bCompleted=r0 bCompleted=r0
	se_btsti		r0,24		# bCompleted=r0
#     {
#         /* Transfer is completed */
#         bCompleted = (boolean)TRUE;
	.d2line		963
	diab.li		r0,1		# bCompleted=r0
	isel		r0,r3,r0,2		# bCompleted=r0 bCompleted=r3 bCompleted=r0
.L478:
#         
#         #ifdef MCAL_CACHE_RUNTIME_MNGMNT
#         #if (STD_ON == MCAL_CACHE_RUNTIME_MNGMNT)
#         #if (STD_ON == MCL_SYNCRONIZE_CACHE) 
#         /* invalidate DCACHE to synchronize data */
#         retVal = Mcl_IPW_CacheClear(MCL_LMEM_CACHE_ALL);
#         if ((Std_ReturnType)E_NOT_OK == retVal)
#         {   /* memory synchronization failed, notify user */
#             #if (MCL_DMA_ERROR_INTERRUPTS_USED == STD_ON)
#             /** @violates @ref Mcl_DMA_c_REF_2 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */ 
#             /** @violates @ref Mcl_DMA_c_REF_10 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#             Mcl_IPW_ErrorNotification(DMA_MOD_IDX_U8((uint32)nChannel) , MCL_DMA_MEM_SYNC_ERROR);
#             #endif
#         }
#         else
#         {
#             /* cache memory sync successful */
#         }
#         #endif
#         #endif
#         #endif
#     }
#     else
#     {
#         /* Transfer is not completed */
#         bCompleted = (boolean)FALSE;
	.d2line		989
.Llo112:
	isel		r3,0,r0,2		# bCompleted=r3 bCompleted=r0
.L479:
#     }
#     /* Return the transfer status */
#     return (bCompleted);
	.d2line		992
.Llo116:
	rlwinm		r3,r3,0,24,31		# bCompleted=r3 bCompleted=r3
# 
# }
	.d2line		994
	.d2epilogue_begin
.Llo117:
	lwz		r0,20(r1)		# bCompleted=r0
	mtspr		lr,r0		# bCompleted=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L670:
	.type		Mcl_Dma_IsTransferCompleted,@function
	.size		Mcl_Dma_IsTransferCompleted,.-Mcl_Dma_IsTransferCompleted
# Number of nodes = 25

# Allocations for Mcl_Dma_IsTransferCompleted
#	?a4		nChannel
#	?a5		bCompleted
# FUNC(boolean, MCL_CODE) Mcl_Dma_IsTransferActive( VAR(Mcl_DmaChannelType, AUTOMATIC) nChannel)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1009,25
#$$ld
.L678:

#$$bf	Mcl_Dma_IsTransferActive,interprocedural,nostackparams

# Regs written: r0,r1,r3,cr0,lr
	.globl		Mcl_Dma_IsTransferActive
	.d2_cfa_start __cie
Mcl_Dma_IsTransferActive:
.Llo118:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
.Llo120:
	stw		r0,20(r1)		# bActive=r0
	.d2_cfa_offset    108,-1
	mr		r3,r3		# nChannel=r3 nChannel=r3
	.d2prologue_end
# {
#     VAR(boolean, AUTOMATIC) bActive = (boolean)FALSE;
	.d2line		1011
	diab.li		r0,0		# bActive=r0
#     
#     /* Check ACTIVE bit from DMA_TCD_CSR */
#     /** @violates @ref Mcl_DMA_c_REF_2 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */ 
#     /** @violates @ref Mcl_DMA_c_REF_10 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#     if(0UL != REG_BIT_GET32(DMA_TCD_CHANNEL(nChannel, (uint32)DMA_TCD_8TH_WORD_OFFSET_U32), DMA_TCD_ACTIVE_U32)) 
	.d2line		1016
.Llo121:
	rlwinm		r3,r3,5,21,26		# nChannel=r3 nChannel=r3
.Llo122:
	e_lis		r0,64522		# bActive=r0
	e_or2i		r0,4124		# bActive=r0
	se_add		r0,r3		# bActive=r0 bActive=r0 nChannel=r3
	lwzx		r0,r0,r0		# bActive=r0 bActive=r0
	se_btsti		r0,25		# bActive=r0
#     {
#         /* Transfer is active */
#         bActive = (boolean)TRUE;
	.d2line		1019
	diab.li		r0,1		# bActive=r0
	isel		r0,r3,r0,2		# bActive=r0 bActive=r3 bActive=r0
.L483:
#     }
#     else
#     {
#         /* Transfer is not active */
#         bActive = (boolean)FALSE;
	.d2line		1024
.Llo119:
	isel		r3,0,r0,2		# bActive=r3 bActive=r0
.L484:
#     }
#     /* Return the transfer status */
#     return (bActive);
	.d2line		1027
.Llo123:
	rlwinm		r3,r3,0,24,31		# bActive=r3 bActive=r3
# }
	.d2line		1028
	.d2epilogue_begin
.Llo124:
	lwz		r0,20(r1)		# bActive=r0
	mtspr		lr,r0		# bActive=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L679:
	.type		Mcl_Dma_IsTransferActive,@function
	.size		Mcl_Dma_IsTransferActive,.-Mcl_Dma_IsTransferActive
# Number of nodes = 25

# Allocations for Mcl_Dma_IsTransferActive
#	?a4		nChannel
#	?a5		bActive
# FUNC (void, MCL_CODE) Mcl_Dma_EnableNotification( VAR(Mcl_DmaChannelType,AUTOMATIC) nChannel,
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1047,23
#$$ld
.L686:

#$$bf	Mcl_Dma_EnableNotification,interprocedural,rasave,nostackparams
	.globl		Mcl_Dma_EnableNotification
	.d2_cfa_start __cie
Mcl_Dma_EnableNotification:
.Llo125:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# nChannel=r31 nChannel=r3
	mr		r30,r4		# Notification=r30 Notification=r4
	.d2prologue_end
#                                               VAR(Mcl_DmaTransferNotifType,AUTOMATIC) Notification)
# {  
#     /* Clear Dma interrupt request for the corresponging channel */
#     /** @violates @ref Mcl_DMA_c_REF_2 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */ 
#     /** @violates @ref Mcl_DMA_c_REF_10 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#     DMA_CLEAR_INT_REQ(nChannel);
	.d2line		1053
.Llo129:
	rlwinm		r0,r31,0,26,31		# nChannel=r31
.Llo130:
	e_lis		r3,-1014
.Llo126:
	stb		r0,28(r3)
#     
#     /* Enter exclusive area to protect TCD words 2,6,8 */
#     SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_29();
	.d2line		1056
	bl		SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_29
#     
#     if(MCL_DMA_TRANSFER_COMPLETE == Notification)
	.d2line		1058
	se_cmpi		r30,0		# Notification=r30
	bc		0,2,.L488	# ne
#     {
#         /** @violates @ref Mcl_DMA_c_REF_2 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */ 
#         /** @violates @ref Mcl_DMA_c_REF_10 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#         DMA_SET_INT_MAJ((uint32)nChannel);
	.d2line		1062
.Llo127:
	rlwinm		r31,r31,5,21,26		# nChannel=r31 nChannel=r31
	e_lis		r0,64522
	e_or2i		r0,4124
	se_add		r31,r0		# nChannel=r31 nChannel=r31
	lwz		r0,0(r31)		# nChannel=r31
	.diab.bseti		r0,30
	stw		r0,0(r31)		# nChannel=r31
	b		.L489
.L488:
#     }
#     else if (MCL_DMA_TRANSFER_HALF_COMPLETE == Notification)
	.d2line		1064
	se_cmpi		r30,1		# Notification=r30
	bc		0,2,.L489	# ne
#     {
#         /** @violates @ref Mcl_DMA_c_REF_2 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */ 
#         /** @violates @ref Mcl_DMA_c_REF_10 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#         DMA_SET_INT_HALF((uint32)nChannel);
	.d2line		1068
.Llo131:
	rlwinm		r31,r31,5,21,26		# nChannel=r31 nChannel=r31
	e_lis		r0,64522
	e_or2i		r0,4124
	se_add		r31,r0		# nChannel=r31 nChannel=r31
	lwz		r0,0(r31)		# nChannel=r31
	.diab.bseti		r0,29
	stw		r0,0(r31)		# nChannel=r31
.L489:
#     }
#     else
#     {
#         /*Empty else to fix misra*/
#     }
# 
#     /* Exit exclusive area to protect TCD words 2,6,8 */
#     SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_29();
	.d2line		1076
.Llo128:
	bl		SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_29
# }
	.d2line		1077
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
	.section	.invalid_TEXT,,c
#$$ld
.L687:
	.type		Mcl_Dma_EnableNotification,@function
	.size		Mcl_Dma_EnableNotification,.-Mcl_Dma_EnableNotification
# Number of nodes = 39

# Allocations for Mcl_Dma_EnableNotification
#	?a4		nChannel
#	?a5		Notification
#	?a6		$$115
#	?a7		$$114
# FUNC (void, MCL_CODE) Mcl_Dma_DisableNotification( VAR(Mcl_DmaChannelType,AUTOMATIC) nChannel)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1092,23
#$$ld
.L695:

#$$bf	Mcl_Dma_DisableNotification,interprocedural,rasave,nostackparams
	.globl		Mcl_Dma_DisableNotification
	.d2_cfa_start __cie
Mcl_Dma_DisableNotification:
.Llo132:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# nChannel=r31 nChannel=r3
	.d2prologue_end
# {
#     /* Clear Dma interrupt request for the corresponging channel */
#     /** @violates @ref Mcl_DMA_c_REF_2 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */ 
#     /** @violates @ref Mcl_DMA_c_REF_10 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#     DMA_CLEAR_INT_REQ(nChannel);
	.d2line		1097
.Llo133:
	rlwinm		r0,r31,0,26,31		# nChannel=r31
.Llo134:
	e_lis		r3,-1014
	stb		r0,28(r3)
#     
#     /* Enter exclusive area to protect TCD words 2,6,8 */
#     SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_28();
	.d2line		1100
	bl		SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_28
#     
#     /* Clear the transfer completion inetrrupt flag */
#     /** @violates @ref Mcl_DMA_c_REF_2 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */ 
#     /** @violates @ref Mcl_DMA_c_REF_10 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#     if((boolean)TRUE == DMA_TCD_GET_INT_MAJ(nChannel))
	.d2line		1105
	rlwinm		r0,r31,5,21,26		# nChannel=r31
	e_lis		r3,64522
	e_or2i		r3,4124
	se_add		r0,r3
	lwzx		r0,r0,r0
	se_btsti		r0,30
	diab.li		r0,1
	isel		r0,r3,r0,2
.L497:
	isel		r0,0,r0,2
.L498:
	se_cmpi		r0,1
	bc		0,2,.L495	# ne
#     {
#     /** @violates @ref Mcl_DMA_c_REF_2 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */ 
#     /** @violates @ref Mcl_DMA_c_REF_10 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#         DMA_CLR_INT_MAJ((uint32)nChannel);
	.d2line		1109
	rlwinm		r3,r31,5,21,26		# nChannel=r31
	e_lis		r0,64522
	e_or2i		r0,4124
	se_add		r3,r0
	lwz		r0,0(r3)
	.diab.bclri		r0,30
	stw		r0,0(r3)
.L495:
#     }
#     
#     /* Clear the half transfer completion interrupt flag */
#     /** @violates @ref Mcl_DMA_c_REF_2 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */ 
#     /** @violates @ref Mcl_DMA_c_REF_10 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#     if((boolean)TRUE == DMA_TCD_GET_INT_HALF(nChannel))
	.d2line		1115
	rlwinm		r0,r31,5,21,26		# nChannel=r31
	e_lis		r3,64522
	e_or2i		r3,4124
	se_add		r0,r3
	lwzx		r0,r0,r0
	se_btsti		r0,29
	diab.li		r0,1
	isel		r0,r3,r0,2
.L499:
	isel		r0,0,r0,2
.L500:
	se_cmpi		r0,1
	bc		0,2,.L496	# ne
#     {
#         /** @violates @ref Mcl_DMA_c_REF_2 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */ 
#         /** @violates @ref Mcl_DMA_c_REF_10 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#         DMA_CLR_INT_HALF((uint32)nChannel);
	.d2line		1119
	rlwinm		r31,r31,5,21,26		# nChannel=r31 nChannel=r31
	e_lis		r0,64522
	e_or2i		r0,4124
	se_add		r31,r0		# nChannel=r31 nChannel=r31
	lwz		r0,0(r31)		# nChannel=r31
	.diab.bclri		r0,29
	stw		r0,0(r31)		# nChannel=r31
.L496:
#     }
#     
#     /* Exit exclusive area to protect TCD words 2,6,8 */
#     SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_28();
	.d2line		1123
.Llo135:
	bl		SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_28
# }
	.d2line		1124
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
	.section	.invalid_TEXT,,c
#$$ld
.L696:
	.type		Mcl_Dma_DisableNotification,@function
	.size		Mcl_Dma_DisableNotification,.-Mcl_Dma_DisableNotification
# Number of nodes = 78

# Allocations for Mcl_Dma_DisableNotification
#	?a4		nChannel
#	?a5		$$119
#	?a6		$$118
#	?a7		$$117
#	?a8		$$116
# FUNC (boolean, MCL_CODE) Mcl_Dma_GetMultiRegChInfo(VAR(Mcl_DmaChannelType,AUTOMATIC) nChannel, VAR(Mcl_DmaRequestType,AUTOMATIC) request)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1138,26
#$$ld
.L701:

#$$bf	Mcl_Dma_GetMultiRegChInfo,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,cr0,xer,lr
	.globl		Mcl_Dma_GetMultiRegChInfo
	.d2_cfa_start __cie
Mcl_Dma_GetMultiRegChInfo:
.Llo136:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
.Llo158:
	stw		r0,20(r1)		# u8lastChannelInIntLowRegister=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# nChannel=r0 nChannel=r3
.Llo137:
	mr		r4,r4		# request=r4 request=r4
	.d2prologue_end
# {
#     VAR(boolean, AUTOMATIC) bChBitSet = (boolean)FALSE;
	.d2line		1140
.Llo138:
	diab.li		r3,0		# bChBitSet=r3
#     VAR(uint8, AUTOMATIC) u8relativeChannelInDmaInstance = (uint8)(nChannel % DMA_CHANNELS_PER_MODULE_U8) ;
#     VAR(uint8, AUTOMATIC) u8lastChannelInIntLowRegister = (uint8)(DMA_CHANNELS_PER_MODULE_U8);
	.d2line		1142
.Llo153:
	diab.li		r5,64		# u8lastChannelInIntLowRegister=r5
#     VAR(uint32, AUTOMATIC) u32multiRegisterValue = (uint32)0;
	.d2line		1141
	rlwinm		r5,r0,0,24,31		# u8lastChannelInIntLowRegister=r5 nChannel=r0
.Llo159:
	srawi		r0,r5,6		# nChannel=r0 u8lastChannelInIntLowRegister=r5
	addze		r0,r0		# nChannel=r0 nChannel=r0
	se_slwi		r0,6		# nChannel=r0 nChannel=r0
	subf		r0,r0,r5		# nChannel=r0 nChannel=r0 u8lastChannelInIntLowRegister=r5
.Llo139:
	mr		r6,r0		# u8relativeChannelInDmaInstance=r6 u8relativeChannelInDmaInstance=r0
#     
# #if (MCL_DMA_NB_CHANNELS == 0x40UL)
#     u8lastChannelInIntLowRegister = (uint8)(DMA_CHANNELS_PER_MODULE_U8 / 2U);
	.d2line		1146
	diab.li		r0,32		# u8lastChannelInIntLowRegister=r0
# #endif
#     if ((MCL_DMA_GET_INT == request) || (MCL_DMA_GET_ERR == request))
	.d2line		1148
.Llo155:
	se_cmpi		r4,1		# request=r4
	bc		1,2,.L519	# eq
.Llo156:
	se_cmpi		r4,0		# request=r4
.Llo160:
	bc		0,2,.L508	# ne
.L519:
#     {
#         if((u8lastChannelInIntLowRegister) > (u8relativeChannelInDmaInstance)) 
	.d2line		1150
	rlwinm		r0,r0,0,24,31		# u8lastChannelInIntLowRegister=r0 u8lastChannelInIntLowRegister=r0
	rlwinm		r5,r6,0,24,31		# u8lastChannelInIntLowRegister=r5 u8relativeChannelInDmaInstance=r6
	se_cmp		r0,r5		# u8lastChannelInIntLowRegister=r0 u8lastChannelInIntLowRegister=r5
	bc		0,1,.L509	# le
#         {
#             /* find register*/
#             if (MCL_DMA_GET_INT == request)
	.d2line		1153
.Llo161:
	se_cmpi		r4,1		# request=r4
	bc		0,2,.L510	# ne
#             {
#                 /** @violates @ref Mcl_DMA_c_REF_2 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */ 
#                 /** @violates @ref Mcl_DMA_c_REF_10 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#                 u32multiRegisterValue = REG_READ32(DMA_INTL_ADDR32(DMA_MOD_IDX_U8((uint32)nChannel))) ;
	.d2line		1157
.Llo140:
	e_lis		r4,-1014		# request=r4
.Llo141:
	lwz		r4,36(r4)		# request=r4 request=r4
.Llo142:
	mr		r4,r4		# u32multiRegisterValue=r4 u32multiRegisterValue=r4
	b		.L511
.L510:
#                 
#             }else /* (MCL_DMA_GET_ERR == request) */
#             {
#                 /** @violates @ref Mcl_DMA_c_REF_2 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */ 
#                 /** @violates @ref Mcl_DMA_c_REF_10 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#                 u32multiRegisterValue = REG_READ32(DMA_EERL_ADDR32(DMA_MOD_IDX_U8((uint32)nChannel))) ;
	.d2line		1163
.Llo166:
	e_lis		r4,-1014		# request=r4
.Llo143:
	lwz		r4,44(r4)		# request=r4 request=r4
.Llo144:
	mr		r4,r4		# u32multiRegisterValue=r4 u32multiRegisterValue=r4
.L511:
#             }
#            
#             /** @violates @ref Mcl_DMA_c_REF_2 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */ 
#             /** @violates @ref Mcl_DMA_c_REF_10 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#             if (0UL != (u32multiRegisterValue & (uint32)((uint32)1u << u8relativeChannelInDmaInstance)))
	.d2line		1168
	diab.li		r0,1		# u8lastChannelInIntLowRegister=r0
.Llo162:
	slw		r0,r0,r6		# u8lastChannelInIntLowRegister=r0 u8lastChannelInIntLowRegister=r0 u8relativeChannelInDmaInstance=r6
	and.		r0,r0,r4		# u32multiRegisterValue=?a9
.Llo163:
	bc		1,2,.L508	# eq
#             {
#                 /* Interrupt request is set. */
#                 bChBitSet = (boolean)TRUE;
	.d2line		1171
.Llo157:
	diab.li		r3,1		# bChBitSet=r3
	b		.L508
.L509:
#             }
#             else
#             {
#                 /* do nothing */
#             }
#         }
#         else
#         {
#             if (MCL_DMA_GET_INT == request)
	.d2line		1180
.Llo145:
	se_cmpi		r4,1		# request=r4
	bc		0,2,.L515	# ne
#             {
#                 /** @violates @ref Mcl_DMA_c_REF_2 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */ 
#                 /** @violates @ref Mcl_DMA_c_REF_10 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#                 u32multiRegisterValue = REG_READ32(DMA_INTH_ADDR32(DMA_MOD_IDX_U8((uint32)nChannel))) ;
	.d2line		1184
.Llo146:
	e_lis		r4,-1014		# request=r4
.Llo147:
	lwz		r0,32(r4)		# u8lastChannelInIntLowRegister=r0 request=r4
.Llo167:
	mr		r0,r0		# u32multiRegisterValue=r0 u32multiRegisterValue=r0
.Llo164:
	b		.L516
.L515:
#                 
#             }else /*(MCL_DMA_GET_ERR == request)*/
#             {
#                 /** @violates @ref Mcl_DMA_c_REF_2 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */ 
#                 /** @violates @ref Mcl_DMA_c_REF_10 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#                 u32multiRegisterValue = REG_READ32(DMA_EERH_ADDR32(DMA_MOD_IDX_U8((uint32)nChannel))) ;
	.d2line		1190
.Llo148:
	e_lis		r4,-1014		# request=r4
.Llo149:
	lwz		r0,40(r4)		# u8lastChannelInIntLowRegister=r0 request=r4
.Llo168:
	mr		r0,r0		# u32multiRegisterValue=r0 u32multiRegisterValue=r0
.L516:
#             }
#            
#             /** @violates @ref Mcl_DMA_c_REF_2 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */ 
#             /** @violates @ref Mcl_DMA_c_REF_10 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#             if (0UL != (u32multiRegisterValue & (uint32)((uint32)1U << (u8relativeChannelInDmaInstance % (DMA_CHANNELS_PER_MODULE_U8 / 2U)))))
	.d2line		1195
.Llo150:
	diab.li		r4,1		# request=r4
.Llo151:
	rlwinm		r6,r6,0,27,31		# u8relativeChannelInDmaInstance=r6 u8relativeChannelInDmaInstance=r6
	slw		r5,r4,r6		# u8lastChannelInIntLowRegister=r5 request=r4 u8relativeChannelInDmaInstance=r6
.Llo169:
	and.		r0,r0,r5		# u32multiRegisterValue=?a9
#             {
#                 /* Interrupt request is set. */
#                 bChBitSet = (boolean)TRUE;
.Llo165:
	isel		r3,r3,r4,2		# bChBitSet=r3 bChBitSet=r3 request=r4
.L508:
#             }
#             else
#             {
#                 /* do nothing */
#             }
#         }
#     }
#     /* Return the interrupt request status */
#     return (bChBitSet);
	.d2line		1207
.Llo152:
	rlwinm		r3,r3,0,24,31		# bChBitSet=r3 bChBitSet=r3
# }
	.d2line		1208
	.d2epilogue_begin
.Llo154:
	lwz		r0,20(r1)		# u8lastChannelInIntLowRegister=r0
	mtspr		lr,r0		# u8lastChannelInIntLowRegister=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L702:
	.type		Mcl_Dma_GetMultiRegChInfo,@function
	.size		Mcl_Dma_GetMultiRegChInfo,.-Mcl_Dma_GetMultiRegChInfo
# Number of nodes = 81

# Allocations for Mcl_Dma_GetMultiRegChInfo
#	?a4		nChannel
#	?a5		request
#	?a6		bChBitSet
#	?a7		u8relativeChannelInDmaInstance
#	?a8		u8lastChannelInIntLowRegister
#	?a9		u32multiRegisterValue

# Allocations for module
	.section	.text_vle
	.type		.L438,@object
	.size		.L438,8
	.align		1
#	static		__static_init1
.L438:
	.short		0
	.short		0
	.short		0
	.short		0
	.section	.text_vle
	.type		.L439,@object
	.size		.L439,8
	.align		1
#	static		__static_init2
.L439:
	.short		0
	.short		0
	.short		0
	.short		0
	.section	.text_vle
#$$ld
.L5:
.L716:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Mcl\\ssc\\make\\..\\..\\generator\\integration_package\\include\\Mcl_Dma_Types.h"
	.d2_line_end
	.section	.invalid_TEXT,,c
#$$ld
.L531:
.L539:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Mcl\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Mcl_Dma.c"
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
	.uleb128	9
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
	.uleb128	8
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
	.uleb128	9
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
	.uleb128	10
	.uleb128	40
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	28
	.uleb128	13
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	11
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	12
	.uleb128	38
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	13
	.uleb128	15
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	14
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
	.uleb128	15
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	16
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	16
	.uleb128	33
	.byte		0x0
	.uleb128	47
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	17
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	18
	.uleb128	33
	.byte		0x0
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	19
	.uleb128	21
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	39
	.uleb128	12
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	20
	.uleb128	5
	.byte		0x0
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Mcl\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Mcl_Dma.c"
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
.L528:
	.4byte		.L529-.L527
.L527:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L533-.L528
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Mcl\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Mcl_Dma.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L530
	.4byte		.L531
	.4byte		.L534
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L540:
	.sleb128	2
	.4byte		.L536-.L528
	.byte		"Mcl_Dma_Init"
	.byte		0
	.4byte		.L539
	.uleb128	216
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L537
	.4byte		.L538
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L539
	.uleb128	216
	.uleb128	22
	.byte		"pConfig"
	.byte		0
	.4byte		.L541
	.4byte		.L545
	.sleb128	3
	.4byte		.L539
	.uleb128	216
	.uleb128	22
	.byte		"dma_instance"
	.byte		0
	.4byte		.L546
	.4byte		.L549
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L550:
	.sleb128	4
	.4byte		.L539
	.uleb128	219
	.uleb128	28
	.byte		"u16PriorityGrFlags"
	.byte		0
	.4byte		.L551
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
.L555:
	.sleb128	4
	.4byte		.L539
	.uleb128	221
	.uleb128	28
	.byte		"u16ChannelGrFlags"
	.byte		0
	.4byte		.L556
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	16
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L558:
	.sleb128	5
	.4byte		.L539
	.uleb128	223
	.uleb128	27
	.byte		"u8CurrentPriority"
	.byte		0
	.4byte		.L547
	.4byte		.L559
.L560:
	.sleb128	5
	.4byte		.L539
	.uleb128	225
	.uleb128	27
	.byte		"u8CurrentRelativeChannel"
	.byte		0
	.4byte		.L547
	.4byte		.L561
.L562:
	.sleb128	5
	.4byte		.L539
	.uleb128	227
	.uleb128	27
	.byte		"u8CurrentAbsoluteChannel"
	.byte		0
	.4byte		.L547
	.4byte		.L563
.L564:
	.sleb128	5
	.4byte		.L539
	.uleb128	229
	.uleb128	27
	.byte		"u8CurrentGroup"
	.byte		0
	.4byte		.L547
	.4byte		.L565
.L566:
	.sleb128	5
	.4byte		.L539
	.uleb128	231
	.uleb128	27
	.byte		"u8Counter"
	.byte		0
	.4byte		.L547
	.4byte		.L567
.L568:
	.sleb128	5
	.4byte		.L539
	.uleb128	233
	.uleb128	27
	.byte		"u8Reach"
	.byte		0
	.4byte		.L547
	.4byte		.L569
.L570:
	.sleb128	5
	.4byte		.L539
	.uleb128	235
	.uleb128	66
	.byte		"pDmaChannelConfig"
	.byte		0
	.4byte		.L571
	.4byte		.L575
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L536:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L580:
	.sleb128	2
	.4byte		.L577-.L528
	.byte		"Mcl_Dma_ConfigTcd"
	.byte		0
	.4byte		.L539
	.uleb128	519
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L578
	.4byte		.L579
	.sleb128	3
	.4byte		.L539
	.uleb128	519
	.uleb128	22
	.byte		"pTcdAddress"
	.byte		0
	.4byte		.L581
	.4byte		.L585
	.sleb128	3
	.4byte		.L539
	.uleb128	519
	.uleb128	22
	.byte		"config_descriptor"
	.byte		0
	.4byte		.L586
	.4byte		.L590
.L591:
	.sleb128	5
	.4byte		.L539
	.uleb128	522
	.uleb128	28
	.byte		"u32Reg_value"
	.byte		0
	.4byte		.L583
	.4byte		.L592
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L577:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L597:
	.sleb128	2
	.4byte		.L594-.L528
	.byte		"Mcl_Dma_ConfigChannel"
	.byte		0
	.4byte		.L539
	.uleb128	594
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L595
	.4byte		.L596
	.sleb128	3
	.4byte		.L539
	.uleb128	594
	.uleb128	22
	.byte		"dma_channel"
	.byte		0
	.4byte		.L598
	.4byte		.L599
	.sleb128	3
	.4byte		.L539
	.uleb128	594
	.uleb128	22
	.byte		"config_descriptor"
	.byte		0
	.4byte		.L586
	.4byte		.L600
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L594:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L605:
	.sleb128	2
	.4byte		.L602-.L528
	.byte		"Mcl_Dma_ConfigLinkedChannel"
	.byte		0
	.4byte		.L539
	.uleb128	618
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L603
	.4byte		.L604
	.sleb128	3
	.4byte		.L539
	.uleb128	618
	.uleb128	22
	.byte		"dma_channel"
	.byte		0
	.4byte		.L598
	.4byte		.L606
	.sleb128	3
	.4byte		.L539
	.uleb128	618
	.uleb128	22
	.byte		"config_descriptor"
	.byte		0
	.4byte		.L586
	.4byte		.L607
	.sleb128	3
	.4byte		.L539
	.uleb128	618
	.uleb128	22
	.byte		"next_channel"
	.byte		0
	.4byte		.L598
	.4byte		.L608
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L602:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L613:
	.sleb128	2
	.4byte		.L610-.L528
	.byte		"Mcl_Dma_ConfigScatterGatherChannel"
	.byte		0
	.4byte		.L539
	.uleb128	659
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L611
	.4byte		.L612
	.sleb128	3
	.4byte		.L539
	.uleb128	659
	.uleb128	22
	.byte		"dma_channel"
	.byte		0
	.4byte		.L598
	.4byte		.L614
	.sleb128	3
	.4byte		.L539
	.uleb128	659
	.uleb128	22
	.byte		"config_descriptor"
	.byte		0
	.4byte		.L586
	.4byte		.L615
	.sleb128	3
	.4byte		.L539
	.uleb128	659
	.uleb128	22
	.byte		"pNext_tcd"
	.byte		0
	.4byte		.L581
	.4byte		.L616
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L610:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L621:
	.sleb128	2
	.4byte		.L618-.L528
	.byte		"Mcl_Dma_ConfigLinkedTcd"
	.byte		0
	.4byte		.L539
	.uleb128	702
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L619
	.4byte		.L620
	.sleb128	3
	.4byte		.L539
	.uleb128	702
	.uleb128	22
	.byte		"pTcdAddress"
	.byte		0
	.4byte		.L581
	.4byte		.L622
	.sleb128	3
	.4byte		.L539
	.uleb128	702
	.uleb128	22
	.byte		"config_descriptor"
	.byte		0
	.4byte		.L586
	.4byte		.L623
	.sleb128	3
	.4byte		.L539
	.uleb128	702
	.uleb128	22
	.byte		"next_channel"
	.byte		0
	.4byte		.L598
	.4byte		.L624
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L618:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L629:
	.sleb128	2
	.4byte		.L626-.L528
	.byte		"Mcl_Dma_ConfigScatterGatherTcd"
	.byte		0
	.4byte		.L539
	.uleb128	745
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L627
	.4byte		.L628
	.sleb128	3
	.4byte		.L539
	.uleb128	745
	.uleb128	22
	.byte		"pTcdAddress"
	.byte		0
	.4byte		.L581
	.4byte		.L630
	.sleb128	3
	.4byte		.L539
	.uleb128	745
	.uleb128	22
	.byte		"config_descriptor"
	.byte		0
	.4byte		.L586
	.4byte		.L631
	.sleb128	3
	.4byte		.L539
	.uleb128	745
	.uleb128	22
	.byte		"pNext_tcd"
	.byte		0
	.4byte		.L581
	.4byte		.L632
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L626:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L637:
	.sleb128	2
	.4byte		.L634-.L528
	.byte		"Mcl_Dma_ConfigScatterGatherLinkedChannel"
	.byte		0
	.4byte		.L539
	.uleb128	787
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L635
	.4byte		.L636
	.sleb128	3
	.4byte		.L539
	.uleb128	787
	.uleb128	22
	.byte		"dma_channel"
	.byte		0
	.4byte		.L598
	.4byte		.L638
	.sleb128	3
	.4byte		.L539
	.uleb128	787
	.uleb128	22
	.byte		"config_descriptor"
	.byte		0
	.4byte		.L586
	.4byte		.L639
	.sleb128	3
	.4byte		.L539
	.uleb128	787
	.uleb128	22
	.byte		"pNext_tcd"
	.byte		0
	.4byte		.L581
	.4byte		.L640
	.sleb128	3
	.4byte		.L539
	.uleb128	787
	.uleb128	22
	.byte		"next_channel"
	.byte		0
	.4byte		.L598
	.4byte		.L641
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L634:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L646:
	.sleb128	2
	.4byte		.L643-.L528
	.byte		"Mcl_Dma_ConfigScatterGatherLinkedTcd"
	.byte		0
	.4byte		.L539
	.uleb128	824
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L644
	.4byte		.L645
	.sleb128	3
	.4byte		.L539
	.uleb128	824
	.uleb128	22
	.byte		"pTcdAddress"
	.byte		0
	.4byte		.L581
	.4byte		.L647
	.sleb128	3
	.4byte		.L539
	.uleb128	824
	.uleb128	22
	.byte		"config_descriptor"
	.byte		0
	.4byte		.L586
	.4byte		.L648
	.sleb128	3
	.4byte		.L539
	.uleb128	824
	.uleb128	22
	.byte		"pNext_tcd"
	.byte		0
	.4byte		.L581
	.4byte		.L649
	.sleb128	3
	.4byte		.L539
	.uleb128	824
	.uleb128	22
	.byte		"next_channel"
	.byte		0
	.4byte		.L598
	.4byte		.L650
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L643:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L655:
	.sleb128	2
	.4byte		.L652-.L528
	.byte		"Mcl_Dma_SetChannelPriority"
	.byte		0
	.4byte		.L539
	.uleb128	858
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L653
	.4byte		.L654
	.sleb128	3
	.4byte		.L539
	.uleb128	858
	.uleb128	22
	.byte		"nChannel"
	.byte		0
	.4byte		.L598
	.4byte		.L656
	.sleb128	3
	.4byte		.L539
	.uleb128	858
	.uleb128	22
	.byte		"nPriority"
	.byte		0
	.4byte		.L657
	.4byte		.L658
.L659:
	.sleb128	5
	.4byte		.L539
	.uleb128	861
	.uleb128	28
	.byte		"u32ChArbitration"
	.byte		0
	.4byte		.L583
	.4byte		.L660
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L652:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L665:
	.sleb128	2
	.4byte		.L662-.L528
	.byte		"Mcl_Dma_StartChannel"
	.byte		0
	.4byte		.L539
	.uleb128	901
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L663
	.4byte		.L664
	.sleb128	3
	.4byte		.L539
	.uleb128	901
	.uleb128	22
	.byte		"nChannel"
	.byte		0
	.4byte		.L598
	.4byte		.L666
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L662:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L672:
	.sleb128	6
	.4byte		.L668-.L528
	.byte		"Mcl_Dma_IsTransferCompleted"
	.byte		0
	.4byte		.L539
	.uleb128	945
	.uleb128	25
	.4byte		.L671
	.byte		0x1
	.byte		0x1
	.4byte		.L669
	.4byte		.L670
	.sleb128	3
	.4byte		.L539
	.uleb128	945
	.uleb128	25
	.byte		"nChannel"
	.byte		0
	.4byte		.L598
	.4byte		.L673
.L674:
	.sleb128	5
	.4byte		.L539
	.uleb128	947
	.uleb128	29
	.byte		"bCompleted"
	.byte		0
	.4byte		.L671
	.4byte		.L675
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L668:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L680:
	.sleb128	6
	.4byte		.L677-.L528
	.byte		"Mcl_Dma_IsTransferActive"
	.byte		0
	.4byte		.L539
	.uleb128	1009
	.uleb128	25
	.4byte		.L671
	.byte		0x1
	.byte		0x1
	.4byte		.L678
	.4byte		.L679
	.sleb128	3
	.4byte		.L539
	.uleb128	1009
	.uleb128	25
	.byte		"nChannel"
	.byte		0
	.4byte		.L598
	.4byte		.L681
.L682:
	.sleb128	5
	.4byte		.L539
	.uleb128	1011
	.uleb128	29
	.byte		"bActive"
	.byte		0
	.4byte		.L671
	.4byte		.L683
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L677:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L688:
	.sleb128	2
	.4byte		.L685-.L528
	.byte		"Mcl_Dma_EnableNotification"
	.byte		0
	.4byte		.L539
	.uleb128	1047
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L686
	.4byte		.L687
	.sleb128	3
	.4byte		.L539
	.uleb128	1047
	.uleb128	23
	.byte		"nChannel"
	.byte		0
	.4byte		.L598
	.4byte		.L689
	.sleb128	3
	.4byte		.L539
	.uleb128	1047
	.uleb128	23
	.byte		"Notification"
	.byte		0
	.4byte		.L690
	.4byte		.L692
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L685:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L697:
	.sleb128	2
	.4byte		.L694-.L528
	.byte		"Mcl_Dma_DisableNotification"
	.byte		0
	.4byte		.L539
	.uleb128	1092
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L695
	.4byte		.L696
	.sleb128	3
	.4byte		.L539
	.uleb128	1092
	.uleb128	23
	.byte		"nChannel"
	.byte		0
	.4byte		.L598
	.4byte		.L698
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L694:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L703:
	.sleb128	6
	.4byte		.L700-.L528
	.byte		"Mcl_Dma_GetMultiRegChInfo"
	.byte		0
	.4byte		.L539
	.uleb128	1138
	.uleb128	26
	.4byte		.L671
	.byte		0x1
	.byte		0x1
	.4byte		.L701
	.4byte		.L702
	.sleb128	3
	.4byte		.L539
	.uleb128	1138
	.uleb128	26
	.byte		"nChannel"
	.byte		0
	.4byte		.L598
	.4byte		.L704
	.sleb128	3
	.4byte		.L539
	.uleb128	1138
	.uleb128	26
	.byte		"request"
	.byte		0
	.4byte		.L705
	.4byte		.L707
.L708:
	.sleb128	5
	.4byte		.L539
	.uleb128	1140
	.uleb128	29
	.byte		"bChBitSet"
	.byte		0
	.4byte		.L671
	.4byte		.L709
.L710:
	.sleb128	5
	.4byte		.L539
	.uleb128	1141
	.uleb128	27
	.byte		"u8relativeChannelInDmaInstance"
	.byte		0
	.4byte		.L547
	.4byte		.L711
.L712:
	.sleb128	5
	.4byte		.L539
	.uleb128	1142
	.uleb128	27
	.byte		"u8lastChannelInIntLowRegister"
	.byte		0
	.4byte		.L547
	.4byte		.L713
.L714:
	.sleb128	5
	.4byte		.L539
	.uleb128	1143
	.uleb128	28
	.byte		"u32multiRegisterValue"
	.byte		0
	.4byte		.L583
	.4byte		.L715
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L700:
	.section	.debug_info,,n
.L589:
	.sleb128	7
	.4byte		.L716
	.uleb128	575
	.uleb128	1
	.4byte		.L717-.L2
	.uleb128	40
	.section	.debug_info,,n
.L413:
	.sleb128	8
	.byte		"u32saddr"
	.byte		0
	.4byte		.L583
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L414:
	.sleb128	8
	.byte		"u32daddr"
	.byte		0
	.4byte		.L583
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L415:
	.sleb128	8
	.byte		"u32ssize"
	.byte		0
	.4byte		.L583
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L416:
	.sleb128	8
	.byte		"u32dsize"
	.byte		0
	.4byte		.L583
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L417:
	.sleb128	8
	.byte		"u32soff"
	.byte		0
	.4byte		.L583
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L418:
	.sleb128	8
	.byte		"u32doff"
	.byte		0
	.4byte		.L583
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L419:
	.sleb128	8
	.byte		"u32smod"
	.byte		0
	.4byte		.L583
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L420:
	.sleb128	8
	.byte		"u32dmod"
	.byte		0
	.4byte		.L583
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L421:
	.sleb128	8
	.byte		"u32num_bytes"
	.byte		0
	.4byte		.L583
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L422:
	.sleb128	8
	.byte		"u32iter"
	.byte		0
	.4byte		.L583
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
	.sleb128	0
.L717:
.L544:
	.sleb128	7
	.4byte		.L716
	.uleb128	575
	.uleb128	1
	.4byte		.L718-.L2
	.uleb128	12
.L410:
	.sleb128	8
	.byte		"NumChannels"
	.byte		0
	.4byte		.L719
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L411:
	.sleb128	8
	.byte		"pDmaConfigInstance"
	.byte		0
	.4byte		.L720
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L412:
	.sleb128	8
	.byte		"pChannelsConfig"
	.byte		0
	.4byte		.L727
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L718:
.L726:
	.sleb128	7
	.4byte		.L716
	.uleb128	575
	.uleb128	1
	.4byte		.L731-.L2
	.uleb128	12
.L407:
	.sleb128	8
	.byte		"pDmaControl"
	.byte		0
	.4byte		.L732
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L408:
	.sleb128	8
	.byte		"pDmaUsed"
	.byte		0
	.4byte		.L734
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L409:
	.sleb128	8
	.byte		"pfDmaInstanceErrNotif"
	.byte		0
	.4byte		.L736
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L731:
.L574:
	.sleb128	7
	.4byte		.L716
	.uleb128	575
	.uleb128	1
	.4byte		.L743-.L2
	.uleb128	3
.L404:
	.sleb128	8
	.byte		"Dma_ChannelPriority"
	.byte		0
	.4byte		.L744
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L405:
	.sleb128	8
	.byte		"Dma_Channel"
	.byte		0
	.4byte		.L719
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L406:
	.sleb128	8
	.byte		"Dma_MasterId"
	.byte		0
	.4byte		.L719
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L743:
	.section	.debug_info,,n
.L706:
	.sleb128	9
	.4byte		.L716
	.uleb128	575
	.uleb128	1
	.4byte		.L745-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	10
	.byte		"MCL_DMA_GET_ERR"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"MCL_DMA_GET_INT"
	.byte		0
	.sleb128	1
	.sleb128	0
.L745:
.L742:
	.sleb128	9
	.4byte		.L716
	.uleb128	561
	.uleb128	1
	.4byte		.L746-.L2
	.uleb128	4
	.sleb128	10
	.byte		"MCL_DMA_NO_ERROR"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"MCL_DMA_HW_INCONSISTENCY_ERROR"
	.byte		0
	.sleb128	1
	.sleb128	10
	.byte		"MCL_DMA_ECC_ERROR"
	.byte		0
	.sleb128	2
	.sleb128	10
	.byte		"MCL_DMA_BUS_ERROR"
	.byte		0
	.sleb128	3
	.sleb128	10
	.byte		"MCL_DMA_DESCRIPTOR_ERROR"
	.byte		0
	.sleb128	4
	.sleb128	10
	.byte		"MCL_DMA_PRIORITY_ERROR"
	.byte		0
	.sleb128	5
	.sleb128	10
	.byte		"MCL_DMA_UNRECOGNIZED_ERROR"
	.byte		0
	.sleb128	6
	.sleb128	10
	.byte		"MCL_DMA_MEM_SYNC_ERROR"
	.byte		0
	.sleb128	7
	.sleb128	0
.L746:
.L691:
	.sleb128	9
	.4byte		.L716
	.uleb128	517
	.uleb128	1
	.4byte		.L747-.L2
	.uleb128	4
	.sleb128	10
	.byte		"MCL_DMA_TRANSFER_COMPLETE"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"MCL_DMA_TRANSFER_HALF_COMPLETE"
	.byte		0
	.sleb128	1
	.sleb128	0
.L747:
	.section	.debug_info,,n
.L543:
	.sleb128	11
	.byte		"Mcl_DmaConfigType"
	.byte		0
	.4byte		.L544
	.section	.debug_info,,n
.L542:
	.sleb128	12
	.4byte		.L543
	.section	.debug_info,,n
.L541:
	.sleb128	13
	.4byte		.L542
	.section	.debug_info,,n
.L548:
	.sleb128	14
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L547:
	.sleb128	11
	.byte		"uint8"
	.byte		0
	.4byte		.L548
.L546:
	.sleb128	11
	.byte		"Mcl_DmaInstanceType"
	.byte		0
	.4byte		.L547
.L554:
	.sleb128	14
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L553:
	.sleb128	11
	.byte		"uint16"
	.byte		0
	.4byte		.L554
	.section	.debug_info,,n
.L551:
	.sleb128	15
	.4byte		.L552
	.4byte		.L553
	.section	.debug_info,,n
	.sleb128	16
	.uleb128	3
	.sleb128	0
.L552:
.L556:
	.sleb128	15
	.4byte		.L557
	.4byte		.L553
	.sleb128	16
	.uleb128	3
	.sleb128	0
.L557:
.L573:
	.sleb128	11
	.byte		"Mcl_DmaChannelConfigType"
	.byte		0
	.4byte		.L574
.L572:
	.sleb128	12
	.4byte		.L573
.L571:
	.sleb128	13
	.4byte		.L572
.L584:
	.sleb128	14
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L583:
	.sleb128	11
	.byte		"uint32"
	.byte		0
	.4byte		.L584
.L582:
	.sleb128	11
	.byte		"Mcl_DmaTcdType"
	.byte		0
	.4byte		.L583
.L581:
	.sleb128	13
	.4byte		.L582
.L588:
	.sleb128	11
	.byte		"Mcl_DmaTcdAttributesType"
	.byte		0
	.4byte		.L589
.L587:
	.sleb128	12
	.4byte		.L588
.L586:
	.sleb128	13
	.4byte		.L587
.L598:
	.sleb128	11
	.byte		"Mcl_DmaChannelType"
	.byte		0
	.4byte		.L547
.L657:
	.sleb128	11
	.byte		"Mcl_DmaPriorityType"
	.byte		0
	.4byte		.L547
.L671:
	.sleb128	11
	.byte		"boolean"
	.byte		0
	.4byte		.L548
.L690:
	.sleb128	11
	.byte		"Mcl_DmaTransferNotifType"
	.byte		0
	.4byte		.L691
.L705:
	.sleb128	11
	.byte		"Mcl_DmaRequestType"
	.byte		0
	.4byte		.L706
.L719:
	.sleb128	12
	.4byte		.L598
.L725:
	.sleb128	11
	.byte		"Mcl_DmaConfigInstanceType"
	.byte		0
	.4byte		.L726
.L724:
	.sleb128	12
	.4byte		.L725
	.section	.debug_info,,n
.L722:
	.sleb128	17
	.4byte		.L723-.L2
	.4byte		.L724
	.section	.debug_info,,n
	.sleb128	18
	.sleb128	0
.L723:
.L721:
	.sleb128	13
	.4byte		.L722
.L720:
	.sleb128	12
	.4byte		.L721
.L729:
	.sleb128	17
	.4byte		.L730-.L2
	.4byte		.L572
	.sleb128	18
	.sleb128	0
.L730:
.L728:
	.sleb128	13
	.4byte		.L729
.L727:
	.sleb128	12
	.4byte		.L728
.L733:
	.sleb128	11
	.byte		"Mcl_DmaControlType"
	.byte		0
	.4byte		.L583
.L732:
	.sleb128	12
	.4byte		.L733
.L735:
	.sleb128	11
	.byte		"Mcl_DmaUsedType"
	.byte		0
	.4byte		.L547
.L734:
	.sleb128	12
	.4byte		.L735
	.section	.debug_info,,n
.L739:
	.sleb128	19
	.4byte		.L740-.L2
	.byte		0x1
.L741:
	.sleb128	11
	.byte		"Mcl_DmaChannelErrorStatusType"
	.byte		0
	.4byte		.L742
	.section	.debug_info,,n
	.sleb128	20
	.4byte		.L741
	.sleb128	0
.L740:
.L738:
	.sleb128	13
	.4byte		.L739
.L737:
	.sleb128	11
	.byte		"Mcl_DmaErrNotifyType"
	.byte		0
	.4byte		.L738
.L736:
	.sleb128	12
	.4byte		.L737
.L744:
	.sleb128	12
	.4byte		.L657
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L533:
	.sleb128	0
.L529:

	.section	.debug_loc,,n
	.align	0
.L545:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),31
	.d2locend
.L549:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo3),4
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),30
	.d2locend
.L559:
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),3
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),3
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo12),3
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo14),3
	.d2locend
.L561:
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo16),0
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo18),0
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo20),0
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo22),0
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo24),7
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo26),0
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo14),7
	.d2locend
.L563:
	.d2locreg	%offsetof(.Llo28), %offsetof(.Llo6),29
	.d2locend
.L565:
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo30),27
	.d2locreg	%offsetof(.Llo31), %offsetof(.Llo32),31
	.d2locreg	%offsetof(.Llo33), %offsetof(.Llo34),31
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo6),31
	.d2locend
.L567:
	.d2locreg	%offsetof(.Llo35), %offsetof(.Llo36),5
	.d2locreg	%offsetof(.Llo37), %offsetof(.Llo4),5
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo6),4
	.d2locend
.L569:
	.d2locreg	%offsetof(.Llo38), %offsetof(.Llo6),0
	.d2locend
.L575:
	.d2locreg	%offsetof(.Llo39), %offsetof(.Llo16),4
	.d2locreg	%offsetof(.Llo40), %offsetof(.Llo41),4
	.d2locreg	%offsetof(.Llo42), %offsetof(.Llo43),4
	.d2locend
.L585:
	.d2locreg	%offsetof(.Llo44), %offsetof(.Llo45),3
	.d2locreg	%offsetof(.Llo46), %offsetof(.Llo47),31
	.d2locend
.L590:
	.d2locreg	%offsetof(.Llo44), %offsetof(.Llo46),4
	.d2locreg	%offsetof(.Llo48), %offsetof(.Llo47),29
	.d2locend
.L592:
	.d2locreg	%offsetof(.Llo49), %offsetof(.Llo50),0
	.d2locreg	%offsetof(.Llo51), %offsetof(.Llo47),30
	.d2locend
.L599:
	.d2locreg	%offsetof(.Llo52), %offsetof(.Llo53),3
	.d2locreg	%offsetof(.Llo54), %offsetof(.Llo55),0
	.d2locend
.L600:
	.d2locreg	%offsetof(.Llo52), %offsetof(.Llo56),4
	.d2locend
.L606:
	.d2locreg	%offsetof(.Llo57), %offsetof(.Llo58),3
	.d2locreg	%offsetof(.Llo59), %offsetof(.Llo60),31
	.d2locreg	%offsetof(.Llo61), %offsetof(.Llo62),31
	.d2locend
.L607:
	.d2locreg	%offsetof(.Llo57), %offsetof(.Llo63),4
	.d2locend
.L608:
	.d2locreg	%offsetof(.Llo57), %offsetof(.Llo59),5
	.d2locreg	%offsetof(.Llo64), %offsetof(.Llo62),30
	.d2locend
.L614:
	.d2locreg	%offsetof(.Llo65), %offsetof(.Llo66),3
	.d2locreg	%offsetof(.Llo67), %offsetof(.Llo68),31
	.d2locend
.L615:
	.d2locreg	%offsetof(.Llo65), %offsetof(.Llo69),4
	.d2locend
.L616:
	.d2locreg	%offsetof(.Llo65), %offsetof(.Llo67),5
	.d2locreg	%offsetof(.Llo70), %offsetof(.Llo68),30
	.d2locend
.L622:
	.d2locreg	%offsetof(.Llo71), %offsetof(.Llo72),3
	.d2locreg	%offsetof(.Llo73), %offsetof(.Llo74),31
	.d2locend
.L623:
	.d2locreg	%offsetof(.Llo71), %offsetof(.Llo75),4
	.d2locend
.L624:
	.d2locreg	%offsetof(.Llo71), %offsetof(.Llo73),5
	.d2locreg	%offsetof(.Llo76), %offsetof(.Llo74),30
	.d2locend
.L630:
	.d2locreg	%offsetof(.Llo77), %offsetof(.Llo78),3
	.d2locreg	%offsetof(.Llo79), %offsetof(.Llo80),31
	.d2locend
.L631:
	.d2locreg	%offsetof(.Llo77), %offsetof(.Llo81),4
	.d2locend
.L632:
	.d2locreg	%offsetof(.Llo77), %offsetof(.Llo79),5
	.d2locreg	%offsetof(.Llo82), %offsetof(.Llo80),30
	.d2locend
.L638:
	.d2locreg	%offsetof(.Llo83), %offsetof(.Llo84),3
	.d2locreg	%offsetof(.Llo85), %offsetof(.Llo86),31
	.d2locreg	%offsetof(.Llo87), %offsetof(.Llo88),3
	.d2locend
.L639:
	.d2locreg	%offsetof(.Llo83), %offsetof(.Llo89),4
	.d2locend
.L640:
	.d2locreg	%offsetof(.Llo83), %offsetof(.Llo85),5
	.d2locreg	%offsetof(.Llo90), %offsetof(.Llo91),30
	.d2locend
.L641:
	.d2locreg	%offsetof(.Llo83), %offsetof(.Llo89),6
	.d2locend
.L647:
	.d2locreg	%offsetof(.Llo92), %offsetof(.Llo93),3
	.d2locreg	%offsetof(.Llo94), %offsetof(.Llo95),31
	.d2locreg	%offsetof(.Llo96), %offsetof(.Llo97),3
	.d2locend
.L648:
	.d2locreg	%offsetof(.Llo92), %offsetof(.Llo98),4
	.d2locend
.L649:
	.d2locreg	%offsetof(.Llo92), %offsetof(.Llo94),5
	.d2locreg	%offsetof(.Llo99), %offsetof(.Llo95),30
	.d2locend
.L650:
	.d2locreg	%offsetof(.Llo92), %offsetof(.Llo98),6
	.d2locend
.L656:
	.d2locreg	%offsetof(.Llo100), %offsetof(.Llo101),3
	.d2locreg	%offsetof(.Llo102), %offsetof(.Llo103),31
	.d2locend
.L658:
	.d2locreg	%offsetof(.Llo100), %offsetof(.Llo102),4
	.d2locreg	%offsetof(.Llo104), %offsetof(.Llo105),30
	.d2locend
.L660:
	.d2locreg	%offsetof(.Llo106), %offsetof(.Llo104),0
	.d2locreg	%offsetof(.Llo107), %offsetof(.Llo108),0
	.d2locend
.L666:
	.d2locreg	%offsetof(.Llo109), %offsetof(.Llo110),3
	.d2locend
.L673:
	.d2locreg	%offsetof(.Llo111), %offsetof(.Llo112),3
	.d2locend
.L675:
	.d2locreg	%offsetof(.Llo113), %offsetof(.Llo114),0
	.d2locreg	%offsetof(.Llo115), %offsetof(.Llo112),3
	.d2locreg	%offsetof(.Llo116), %offsetof(.Llo117),3
	.d2locend
.L681:
	.d2locreg	%offsetof(.Llo118), %offsetof(.Llo119),3
	.d2locend
.L683:
	.d2locreg	%offsetof(.Llo120), %offsetof(.Llo121),0
	.d2locreg	%offsetof(.Llo122), %offsetof(.Llo119),3
	.d2locreg	%offsetof(.Llo123), %offsetof(.Llo124),3
	.d2locend
.L689:
	.d2locreg	%offsetof(.Llo125), %offsetof(.Llo126),3
	.d2locreg	%offsetof(.Llo127), %offsetof(.Llo128),31
	.d2locend
.L692:
	.d2locreg	%offsetof(.Llo125), %offsetof(.Llo129),4
	.d2locreg	%offsetof(.Llo130), %offsetof(.Llo131),30
	.d2locend
.L698:
	.d2locreg	%offsetof(.Llo132), %offsetof(.Llo133),3
	.d2locreg	%offsetof(.Llo134), %offsetof(.Llo135),31
	.d2locend
.L704:
	.d2locreg	%offsetof(.Llo136), %offsetof(.Llo137),3
	.d2locreg	%offsetof(.Llo138), %offsetof(.Llo139),0
	.d2locend
.L707:
	.d2locreg	%offsetof(.Llo136), %offsetof(.Llo140),4
	.d2locreg	%offsetof(.Llo141), %offsetof(.Llo142),4
	.d2locreg	%offsetof(.Llo143), %offsetof(.Llo144),4
	.d2locreg	%offsetof(.Llo145), %offsetof(.Llo146),4
	.d2locreg	%offsetof(.Llo147), %offsetof(.Llo148),4
	.d2locreg	%offsetof(.Llo149), %offsetof(.Llo150),4
	.d2locreg	%offsetof(.Llo151), %offsetof(.Llo152),4
	.d2locend
.L709:
	.d2locreg	%offsetof(.Llo153), %offsetof(.Llo154),3
	.d2locend
.L711:
	.d2locreg	%offsetof(.Llo139), %offsetof(.Llo155),0
	.d2locreg	%offsetof(.Llo156), %offsetof(.Llo157),6
	.d2locreg	%offsetof(.Llo145), %offsetof(.Llo150),6
	.d2locreg	%offsetof(.Llo151), %offsetof(.Llo152),6
	.d2locend
.L713:
	.d2locreg	%offsetof(.Llo158), %offsetof(.Llo137),0
	.d2locreg	%offsetof(.Llo159), %offsetof(.Llo156),5
	.d2locreg	%offsetof(.Llo160), %offsetof(.Llo161),0
	.d2locreg	%offsetof(.Llo162), %offsetof(.Llo163),0
	.d2locreg	%offsetof(.Llo164), %offsetof(.Llo148),0
	.d2locreg	%offsetof(.Llo150), %offsetof(.Llo165),0
	.d2locend
.L715:
	.d2locreg	%offsetof(.Llo142), %offsetof(.Llo166),4
	.d2locreg	%offsetof(.Llo144), %offsetof(.Llo157),4
	.d2locreg	%offsetof(.Llo167), %offsetof(.Llo164),0
	.d2locreg	%offsetof(.Llo168), %offsetof(.Llo150),0
	.d2locreg	%offsetof(.Llo169), %offsetof(.Llo152),5
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "Mcl_Dma_GetMultiRegChInfo"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Mcl_Dma_DisableNotification"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_28","SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_28"
	.wrcm.end
	.wrcm.nelem "Mcl_Dma_EnableNotification"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_29","SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_29"
	.wrcm.end
	.wrcm.nelem "Mcl_Dma_IsTransferActive"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Mcl_Dma_IsTransferCompleted"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Mcl_Dma_StartChannel"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Mcl_Dma_SetChannelPriority"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_14","SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_14"
	.wrcm.end
	.wrcm.nelem "Mcl_Dma_ConfigScatterGatherLinkedTcd"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Mcl_Dma_ConfigLinkedTcd"
	.wrcm.end
	.wrcm.nelem "Mcl_Dma_ConfigScatterGatherLinkedChannel"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Mcl_Dma_ConfigLinkedChannel"
	.wrcm.end
	.wrcm.nelem "Mcl_Dma_ConfigScatterGatherTcd"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Mcl_Dma_ConfigTcd","SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_27","SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_27"
	.wrcm.end
	.wrcm.nelem "Mcl_Dma_ConfigLinkedTcd"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Mcl_Dma_ConfigTcd","SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_26","SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_26"
	.wrcm.end
	.wrcm.nelem "Mcl_Dma_ConfigScatterGatherChannel"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Mcl_Dma_ConfigTcd","SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_30","SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_30"
	.wrcm.end
	.wrcm.nelem "Mcl_Dma_ConfigLinkedChannel"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Mcl_Dma_ConfigTcd","SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_31","SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_31"
	.wrcm.end
	.wrcm.nelem "Mcl_Dma_ConfigChannel"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Mcl_Dma_ConfigTcd"
	.wrcm.end
	.wrcm.nelem "Mcl_Dma_ConfigTcd"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_15","SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_15"
	.wrcm.end
	.wrcm.nelem "Mcl_Dma_Init"
	.wrcm.nint32 "frameSize", 64
	.wrcm.nstrlist "calls", "SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_12","SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_12"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Mcl_Dma.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Mcl_Dma.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Mcl_Dma.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Mcl_Dma.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Mcl_Dma.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Mcl_Dma.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\MCAL\MPC5746R\Mcl\ssc\make\..\..\generator\integration_package\src\Mcl_Dma.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
