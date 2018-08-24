#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Gpt_eMios.c"
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
# FUNC(void, GPT_CODE) Gpt_eMios_Init (VAR(uint8, AUTOMATIC) u8HwChannel,
	.section	.invalid_TEXT,,c
	.align		2
	.section	.debug_line.invalid_TEXT,,n
	.sectionlink	.debug_line
.L407:
	.section	.invalid_TEXT,,c
#$$ld
.L403:
	.0byte		.L401
	.d2_line_start	.debug_line.invalid_TEXT
	.section	.invalid_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Gpt\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Gpt_eMios.c"
        .d2line         239,22
#$$ld
.L410:

#$$bf	Gpt_eMios_Init,interprocedural,rasave,nostackparams
	.globl		Gpt_eMios_Init
	.d2_cfa_start __cie
Gpt_eMios_Init:
.Llo1:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# u8HwChannel=r3 u8HwChannel=r3
	mr		r31,r4		# u8Prescaler=r31 u8Prescaler=r4
	mr		r30,r5		# bFreezeEnable=r30 bFreezeEnable=r5
	.d2prologue_end
#                                      VAR(uint8, AUTOMATIC) u8Prescaler,
#                                      VAR(boolean, AUTOMATIC) bFreezeEnable
#                                     )
# {
#     VAR(uint8, AUTOMATIC) u8ModuleIdx;   /**< @brief assigned eMios HW module  index */
#     VAR(uint8, AUTOMATIC) u8ChannelIdx;  /**< @brief assigned eMios HW channel index */
#     VAR(uint32,AUTOMATIC) u32Temp;
# 
#     u8ModuleIdx  = (uint8)EMIOS_MODULE_INDEX_U8(u8HwChannel);
	.d2line		248
	rlwinm		r0,r3,0,24,31		# u8HwChannel=r3
	rlwinm		r29,r0,27,29,31		# u8ModuleIdx=r29
.Llo10:
	mr		r29,r29		# u8ModuleIdx=r29 u8ModuleIdx=r29
#     u8ChannelIdx = (uint8)EMIOS_CHANNEL_INDEX_U8(u8HwChannel);
	.d2line		249
	rlwinm		r3,r3,0,27,31		# u8HwChannel=r3 u8HwChannel=r3
.Llo2:
	mr		r28,r3		# u8ChannelIdx=r28 u8ChannelIdx=r3
# 
#     /* Only write UCDIS register if it_s available */
# #ifdef EMIOS_UCDIS_AVAILABLE
#     #if (EMIOS_UCDIS_AVAILABLE == STD_ON)
#     /* Enable eMIOS Channel */
#     eMios_StartChannel(u8HwChannel);
	.d2line		255
	mr		r3,r0
	bl		eMios_StartChannel
#     #endif
# #endif  /* EMIOS_UCDIS_AVAILABLE */
# 
#     /** @violates @ref Gpt_eMios_C_REF_1 Cast from unsigned long to pointer */
#     /** @violates @ref Gpt_eMios_C_REF_7 Cast from unsigned long to pointer */
#     REG_BIT_CLEAR32(EMIOS_CCR_ADDR32(u8ModuleIdx, u8ChannelIdx),CCR_FEN_MASK_U32);
	.d2line		261
.Llo7:
	lis		r4,EMIOS_BASE_ADDR32@ha
	e_add16i		r4,r4,EMIOS_BASE_ADDR32@l
	rlwinm		r5,r29,2,22,29		# u8ModuleIdx=r29
	lwzx		r3,r4,r5		# u8HwChannel=r3
.Llo3:
	rlwinm		r6,r28,5,19,26		# u8ChannelIdx=r28
	se_add		r3,r6		# u8HwChannel=r3 u8HwChannel=r3
	lwz		r0,44(r3)		# u8HwChannel=r3
	.diab.bclri		r0,14
	stw		r0,44(r3)		# u8HwChannel=r3
# 
#     /* Stop Channel to Configure Channel */
#     /** @violates @ref Gpt_eMios_C_REF_1 Cast from unsigned long to pointer */
#     /** @violates @ref Gpt_eMios_C_REF_7 Cast from unsigned long to pointer */
#     REG_RMW32(EMIOS_CCR_ADDR32(u8ModuleIdx, u8ChannelIdx), (CCR_MODE_MASK_U32|CCR_EDSEL_MASK_U32), (CCR_MODE_GPI_U32|CCR_EDSEL_MASK_U32));
	.d2line		266
	mr		r3,r4
	lwzux		r0,r3,r5		# u8HwChannel=r3
	add		r3,r0,r6		# u8HwChannel=r3
	lwz		r0,44(r3)		# u8HwChannel=r3
	diab.li		r3,-384		# u8HwChannel=r3
	and		r0,r0,r3		# u8HwChannel=r3
	.diab.bseti		r0,23
	lwzx		r3,r4,r5		# u8HwChannel=r3
	se_add		r6,r3		# u8HwChannel=r3
	stw		r0,44(r6)
# 
#     /* Save current emios channel param value in local variable */
#     if ((boolean)TRUE == bFreezeEnable)
	.d2line		269
.Llo9:
	rlwinm		r30,r30,0,24,31		# bFreezeEnable=r30 bFreezeEnable=r30
	se_cmpi		r30,1		# bFreezeEnable=r30
	bc		0,2,.L386	# ne
#     {
#         u32Temp = (((uint32)u8Prescaler<<CCR_UCPRE_SHIFT) | CCR_FREN_MASK_U32 | CCR_BSL_MASK_U32);
	.d2line		271
.Llo4:
	se_slwi		r31,26		# u8Prescaler=r31 u8Prescaler=r31
	diab.li		r4,2147483648
	e_ori		r4,r4,1536
	or		r4,r4,r31		# u8Prescaler=r31
.Llo15:
	mr		r4,r4		# u32Temp=r4 u32Temp=r4
	b		.L387
.L386:
#     }
#     else
#     {
#         u32Temp = (((uint32)u8Prescaler<<CCR_UCPRE_SHIFT) | CCR_BSL_MASK_U32);
	.d2line		275
.Llo16:
	se_slwi		r31,26		# u8Prescaler=r31 u8Prescaler=r31
	e_ori		r4,r31,1536		# u8Prescaler=r31
.Llo17:
	mr		r4,r4		# u32Temp=r4 u32Temp=r4
.L387:
#     }
# 
#     /* Initialize prescale value, channel filter, freeze enable, and bus select and disable the prescaler */
#     /** @violates @ref Gpt_eMios_C_REF_1 Cast from unsigned long to pointer */
#     /** @violates @ref Gpt_eMios_C_REF_7 Cast from unsigned long to pointer */
#     REG_RMW32 \
	.d2line		281
.Llo8:
	lis		r3,EMIOS_BASE_ADDR32@ha		# u8HwChannel=r3
.Llo5:
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# u8HwChannel=r3 u8HwChannel=r3
.Llo11:
	rlwinm		r29,r29,2,22,29		# u8ModuleIdx=r29 u8ModuleIdx=r29
.Llo12:
	lwzux		r5,r3,r29		# u8HwChannel=r3
.Llo13:
	rlwinm		r28,r28,5,19,26		# u8ChannelIdx=r28 u8ChannelIdx=r28
	se_add		r5,r28		# u8ChannelIdx=r28
	lwz		r5,44(r5)
	e_lis		r3,29059		# u8HwChannel=r3
	e_or2i		r3,63999		# u8HwChannel=r3
	and		r5,r5,r3		# u8HwChannel=r3
	e_lis		r3,36476		# u8HwChannel=r3
	e_ori		r3,r3,1536		# u8HwChannel=r3 u8HwChannel=r3
	and		r3,r3,r4		# u8HwChannel=r3 u8HwChannel=r3 u32Temp=r4
	or		r3,r3,r5		# u8HwChannel=r3 u8HwChannel=r3
	lis		r6,EMIOS_BASE_ADDR32@ha
	e_add16i		r6,r6,EMIOS_BASE_ADDR32@l
	lwzx		r5,r6,r29
	se_add		r5,r28		# u8ChannelIdx=r28
	stw		r3,44(r5)		# u8HwChannel=r3
#     ( \
#         EMIOS_CCR_ADDR32(u8ModuleIdx, u8ChannelIdx), \
#         (CCR_FREN_MASK_U32|CCR_UCPRE_MASK_U32|CCR_UCPREN_MASK_U32|CCR_IF_MASK_U32|CCR_FCK_MASK_U32|CCR_BSL_MASK_U32), \
#         ((u32Temp)&(CCR_FREN_MASK_U32|CCR_UCPRE_MASK_U32|CCR_UCPREN_MASK_U32|CCR_IF_MASK_U32|CCR_FCK_MASK_U32|CCR_BSL_MASK_U32)) \
#      );
# 
#     /* Clear pending interrupts */
#     /** @violates @ref Gpt_eMios_C_REF_1 Cast from unsigned long to pointer */
#     /** @violates @ref Gpt_eMios_C_REF_7 Cast from unsigned long to pointer */
#     REG_WRITE32(EMIOS_CSR_ADDR32(u8ModuleIdx, u8ChannelIdx), CSR_FLAG_MASK_U32);
	.d2line		291
	diab.li		r3,1		# u8HwChannel=r3
	mr		r4,r6
	lwzux		r5,r4,r29		# u32Temp=r4
	se_add		r5,r28		# u8ChannelIdx=r28
	stw		r3,48(r5)		# u8HwChannel=r3
# 
#     /* Set Compare Value to 1 (writing 0 may lead to unpredictable result ) */
#     /** @violates @ref Gpt_eMios_C_REF_1 Cast from unsigned long to pointer */
#     /** @violates @ref Gpt_eMios_C_REF_7 Cast from unsigned long to pointer */
#     REG_WRITE32(EMIOS_CADR_ADDR32(u8ModuleIdx, u8ChannelIdx), 1U);
	.d2line		296
	lwzx		r4,r6,r29		# u32Temp=r4
	se_add		r4,r28		# u32Temp=r4 u32Temp=r4 u8ChannelIdx=r28
	stw		r3,32(r4)		# u32Temp=r4 u8HwChannel=r3
# }
	.d2line		297
	.d2epilogue_begin
	lmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_restore_list	3,10
.Llo14:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo6:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L411:
	.type		Gpt_eMios_Init,@function
	.size		Gpt_eMios_Init,.-Gpt_eMios_Init
# Number of nodes = 172

# Allocations for Gpt_eMios_Init
#	?a4		u8HwChannel
#	?a5		u8Prescaler
#	?a6		bFreezeEnable
#	?a7		$$77
#	?a8		u8ModuleIdx
#	?a9		u8ChannelIdx
#	?a10		u32Temp
# FUNC(void, GPT_CODE) Gpt_eMios_DeInit (VAR(uint8, AUTOMATIC) u8HwChannel)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         313,22
#$$ld
.L430:

#$$bf	Gpt_eMios_DeInit,interprocedural,rasave,nostackparams
	.globl		Gpt_eMios_DeInit
	.d2_cfa_start __cie
Gpt_eMios_DeInit:
.Llo18:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr		# u8HwChannel=r0
	stw		r0,20(r1)		# u8HwChannel=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# u8HwChannel=r0 u8HwChannel=r3
	.d2prologue_end
# {
#     VAR(uint8, AUTOMATIC) u8ModuleIdx;   /**< @brief assigned eMios HW module  index */
#     VAR(uint8, AUTOMATIC) u8ChannelIdx;  /**< @brief assigned eMios HW channel index */
# 
#     u8ModuleIdx  = (uint8)EMIOS_MODULE_INDEX_U8(u8HwChannel);
	.d2line		318
.Llo19:
	rlwinm		r5,r0,27,29,31		# u8ModuleIdx=r5 u8HwChannel=r0
.Llo20:
	mr		r5,r5		# u8ModuleIdx=r5 u8ModuleIdx=r5
#     u8ChannelIdx = (uint8)EMIOS_CHANNEL_INDEX_U8(u8HwChannel);
	.d2line		319
	rlwinm		r6,r0,0,27,31		# u8ChannelIdx=r6 u8HwChannel=r0
.Llo23:
	mr		r6,r6		# u8ChannelIdx=r6 u8ChannelIdx=r6
# 
#     /* Reset Timer control register */
#     /* Internal Counter is also cleared when entering GPIO Mode */
#     /* This is applicable for the following lines of code */
#     /** @violates @ref Gpt_eMios_C_REF_1 Cast from unsigned long to pointer */
#     /** @violates @ref Gpt_eMios_C_REF_7 Cast from unsigned long to pointer */
#     REG_WRITE32(EMIOS_CCR_ADDR32(u8ModuleIdx, u8ChannelIdx), 0U);
	.d2line		326
	diab.li		r4,0
	lis		r3,EMIOS_BASE_ADDR32@ha
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l
	rlwinm		r5,r5,2,22,29		# u8ModuleIdx=r5 u8ModuleIdx=r5
.Llo22:
	lwzux		r7,r3,r5
	rlwinm		r6,r6,5,19,26		# u8ChannelIdx=r6 u8ChannelIdx=r6
	add		r3,r7,r6		# u8ChannelIdx=r6
	stw		r4,44(r3)
# 
#     /* Set Compare Value to 1 (writing 0 may lead to unpredictable result ) */
#     /** @violates @ref Gpt_eMios_C_REF_1 Cast from unsigned long to pointer */
#     /** @violates @ref Gpt_eMios_C_REF_7 Cast from unsigned long to pointer */
#     REG_WRITE32(EMIOS_CADR_ADDR32(u8ModuleIdx, u8ChannelIdx), 1U);
	.d2line		331
	diab.li		r4,1
	lis		r3,EMIOS_BASE_ADDR32@ha
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l
	lwzux		r7,r3,r5
	add		r3,r7,r6		# u8ChannelIdx=r6
	stw		r4,32(r3)
# 
#     /* Clear Interrupt Flag */
#     /** @violates @ref Gpt_eMios_C_REF_1 Cast from unsigned long to pointer */
#     /** @violates @ref Gpt_eMios_C_REF_7 Cast from unsigned long to pointer */
#     REG_WRITE32(EMIOS_CSR_ADDR32(u8ModuleIdx, u8ChannelIdx), CSR_FLAG_MASK_U32);
	.d2line		336
	lis		r3,EMIOS_BASE_ADDR32@ha
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l
	lwzx		r3,r3,r5
	se_add		r6,r3		# u8ChannelIdx=r6 u8ChannelIdx=r6
	stw		r4,48(r6)		# u8ChannelIdx=r6
# 
#     /* Only write UCDIS register if it_s available */
# #ifdef EMIOS_UCDIS_AVAILABLE
#     #if (EMIOS_UCDIS_AVAILABLE == STD_ON)
#     /* Disable eMIOS Channel */
#     eMios_StopChannel(u8HwChannel);
	.d2line		342
	rlwinm		r3,r0,0,24,31		# u8HwChannel=r0
	bl		eMios_StopChannel
#     #endif
# #endif  /* EMIOS_UCDIS_AVAILABLE */
# }
	.d2line		345
	.d2epilogue_begin
.Llo21:
	lwz		r0,20(r1)		# u8HwChannel=r0
	mtspr		lr,r0		# u8HwChannel=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L431:
	.type		Gpt_eMios_DeInit,@function
	.size		Gpt_eMios_DeInit,.-Gpt_eMios_DeInit
# Number of nodes = 75

# Allocations for Gpt_eMios_DeInit
#	?a4		u8HwChannel
#	?a5		u8ModuleIdx
#	?a6		u8ChannelIdx
# FUNC(void, GPT_CODE) Gpt_eMios_StartTimer (VAR(uint8, AUTOMATIC) u8HwChannel,
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         364,22
#$$ld
.L440:

#$$bf	Gpt_eMios_StartTimer,interprocedural,rasave,nostackparams
	.globl		Gpt_eMios_StartTimer
	.d2_cfa_start __cie
Gpt_eMios_StartTimer:
.Llo24:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# u8HwChannel=r3 u8HwChannel=r3
	mr		r29,r4		# u32Value=r29 u32Value=r4
	.d2prologue_end
#                                            VAR(uint32, AUTOMATIC) u32Value
#                                           )
# {
#     VAR(uint8, AUTOMATIC) u8ModuleIdx;   /**< @brief assigned eMios HW module  index */
#     VAR(uint8, AUTOMATIC) u8ChannelIdx;  /**< @brief assigned eMios HW channel index */
# #ifdef ERR_IPV_EMIOS_0001
# #if STD_ON == ERR_IPV_EMIOS_0001
#     VAR(uint32, AUTOMATIC) u32EnableInterrupt;  /**< @brief assigned FLAG Enable bit */
# #endif
# #endif
#     u8ModuleIdx  = (uint8)EMIOS_MODULE_INDEX_U8(u8HwChannel);
	.d2line		375
.Llo28:
	rlwinm		r31,r3,27,29,31		# u8ModuleIdx=r31 u8HwChannel=r3
.Llo29:
	mr		r31,r31		# u8ModuleIdx=r31 u8ModuleIdx=r31
#     u8ChannelIdx = (uint8)EMIOS_CHANNEL_INDEX_U8(u8HwChannel);
	.d2line		376
	rlwinm		r3,r3,0,27,31		# u8HwChannel=r3 u8HwChannel=r3
.Llo25:
	mr		r30,r3		# u8ChannelIdx=r30 u8ChannelIdx=r3
#     
#         
#     SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_14();
	.d2line		379
.Llo32:
	bl		SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_14
#     {
# #ifdef ERR_IPV_EMIOS_0001
# #if STD_ON == ERR_IPV_EMIOS_0001
#     /* Get FLAG interrupt enable bit */
#     /** @violates @ref Gpt_eMios_C_REF_1 Cast from unsigned long to pointer */
#     /** @violates @ref Gpt_eMios_C_REF_7 Cast from unsigned long to pointer */
#     u32EnableInterrupt = REG_BIT_GET32(EMIOS_CCR_ADDR32(u8ModuleIdx, u8ChannelIdx), CCR_FEN_MASK_U32);
	.d2line		386
.Llo33:
	lis		r3,EMIOS_BASE_ADDR32@ha		# u8HwChannel=r3
.Llo26:
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# u8HwChannel=r3 u8HwChannel=r3
	rlwinm		r31,r31,2,22,29		# u8ModuleIdx=r31 u8ModuleIdx=r31
.Llo31:
	lwzux		r0,r3,r31		# u8HwChannel=r3
	rlwinm		r4,r30,5,19,26		# u8ChannelIdx=r30
	add		r30,r0,r4		# u8ChannelIdx=r30
	lwz		r0,44(r30)		# u8ChannelIdx=r30
	rlwinm		r0,r0,0,14,14
.Llo34:
	mr		r0,r0		# u32EnableInterrupt=r0 u32EnableInterrupt=r0
#     /* Disable Interrupt */
#     /** @violates @ref Gpt_eMios_C_REF_1 Cast from unsigned long to pointer */
#     /** @violates @ref Gpt_eMios_C_REF_7 Cast from unsigned long to pointer */
#     REG_BIT_CLEAR32(EMIOS_CCR_ADDR32(u8ModuleIdx, u8ChannelIdx), CCR_FEN_MASK_U32);
	.d2line		390
.Llo35:
	lis		r3,EMIOS_BASE_ADDR32@ha		# u8HwChannel=r3
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# u8HwChannel=r3 u8HwChannel=r3
	lwzx		r30,r3,r31		# u8ChannelIdx=r30 u8HwChannel=r3
	se_add		r30,r4		# u8ChannelIdx=r30 u8ChannelIdx=r30
	lwz		r5,44(r30)		# u32EnableInterrupt=r5 u8ChannelIdx=r30
.Llo36:
	.diab.bclri		r5,14		# u32EnableInterrupt=r5
	stw		r5,44(r30)		# u8ChannelIdx=r30 u32EnableInterrupt=r5
# #endif
# #endif
#     /** @violates @ref Gpt_eMios_C_REF_1 Cast from unsigned long to pointer */
#     /** @violates @ref Gpt_eMios_C_REF_7 Cast from unsigned long to pointer */
#     REG_RMW32(EMIOS_CCR_ADDR32(u8ModuleIdx, u8ChannelIdx), (CCR_MODE_MASK_U32|CCR_EDSEL_MASK_U32), (CCR_MODE_GPI_U32|CCR_EDSEL_MASK_U32));
	.d2line		395
	mr		r6,r3		# u8HwChannel=r6
	lwzux		r30,r6,r31		# u8ChannelIdx=r30 u8HwChannel=r6
	se_add		r30,r4		# u8ChannelIdx=r30 u8ChannelIdx=r30
	lwz		r5,44(r30)		# u32EnableInterrupt=r5 u8ChannelIdx=r30
	diab.li		r6,-384		# u8HwChannel=r6
	and		r5,r5,r6		# u32EnableInterrupt=r5 u32EnableInterrupt=r5 u8HwChannel=r6
	.diab.bseti		r5,23		# u32EnableInterrupt=r5
	mr		r6,r3		# u8HwChannel=r6
	lwzux		r30,r6,r31		# u8ChannelIdx=r30 u8HwChannel=r6
	se_add		r30,r4		# u8ChannelIdx=r30 u8ChannelIdx=r30
	stw		r5,44(r30)		# u8ChannelIdx=r30 u32EnableInterrupt=r5
# 
#     /** @violates @ref Gpt_eMios_C_REF_1 Cast from unsigned long to pointer */
#     /** @violates @ref Gpt_eMios_C_REF_7 Cast from unsigned long to pointer */
#     REG_BIT_SET32(EMIOS_CCR_ADDR32(u8ModuleIdx, u8ChannelIdx), CCR_UCPREN_MASK_U32);
	.d2line		399
	lwzx		r30,r3,r31		# u8ChannelIdx=r30 u8HwChannel=r3
	se_add		r30,r4		# u8ChannelIdx=r30 u8ChannelIdx=r30
	lwz		r5,44(r30)		# u32EnableInterrupt=r5 u8ChannelIdx=r30
	.diab.bseti		r5,6		# u32EnableInterrupt=r5
	stw		r5,44(r30)		# u8ChannelIdx=r30 u32EnableInterrupt=r5
# 
#     /** @violates @ref Gpt_eMios_C_REF_1 Cast from unsigned long to pointer */
#     /** @violates @ref Gpt_eMios_C_REF_7 Cast from unsigned long to pointer */
#     REG_WRITE32(EMIOS_CADR_ADDR32(u8ModuleIdx, u8ChannelIdx), u32Value);
	.d2line		403
	mr		r6,r3		# u8HwChannel=r6
	lwzux		r30,r6,r31		# u8ChannelIdx=r30 u8HwChannel=r6
	se_add		r30,r4		# u8ChannelIdx=r30 u8ChannelIdx=r30
	stw		r29,32(r30)		# u8ChannelIdx=r30 u32Value=r29
# 
#     /** @violates @ref Gpt_eMios_C_REF_1 Cast from unsigned long to pointer */
#     /** @violates @ref Gpt_eMios_C_REF_7 Cast from unsigned long to pointer */
#     REG_RMW32(EMIOS_CCR_ADDR32(u8ModuleIdx, u8ChannelIdx), CCR_MODE_MASK_U32, CCR_MODE_MCB_INT_CLOCK_U32);
	.d2line		407
	mr		r6,r3		# u8HwChannel=r6
	lwzux		r30,r6,r31		# u8ChannelIdx=r30 u8HwChannel=r6
	se_add		r30,r4		# u8ChannelIdx=r30 u8ChannelIdx=r30
	lwz		r5,44(r30)		# u32EnableInterrupt=r5 u8ChannelIdx=r30
	rlwinm		r5,r5,0,0,24		# u32EnableInterrupt=r5 u32EnableInterrupt=r5
	e_ori		r5,r5,80		# u32EnableInterrupt=r5 u32EnableInterrupt=r5
	mr		r6,r3		# u8HwChannel=r6
	lwzx		r30,r3,r31		# u8ChannelIdx=r30 u8HwChannel=r3
	se_add		r30,r4		# u8ChannelIdx=r30 u8ChannelIdx=r30
	stw		r5,44(r30)		# u8ChannelIdx=r30 u32EnableInterrupt=r5
#     
# #ifdef ERR_IPV_EMIOS_0001
# #if STD_ON == ERR_IPV_EMIOS_0001
#     /* Clear Interrupt Flag */
#     /** @violates @ref Gpt_eMios_C_REF_1 Cast from unsigned long to pointer */
#     /** @violates @ref Gpt_eMios_C_REF_7 Cast from unsigned long to pointer */
#     REG_WRITE32(EMIOS_CSR_ADDR32(u8ModuleIdx, u8ChannelIdx), CSR_FLAG_MASK_U32);
	.d2line		414
	diab.li		r5,1		# u32EnableInterrupt=r5
	lwzux		r30,r6,r31		# u8ChannelIdx=r30 u8HwChannel=r6
	se_add		r30,r4		# u8ChannelIdx=r30 u8ChannelIdx=r30
	stw		r5,48(r30)		# u8ChannelIdx=r30 u32EnableInterrupt=r5
#     /* Restore FLAG interrupt enable bit*/
#     /** @violates @ref Gpt_eMios_C_REF_1 Cast from unsigned long to pointer */
#     /** @violates @ref Gpt_eMios_C_REF_7 Cast from unsigned long to pointer */
#     REG_RMW32(EMIOS_CCR_ADDR32(u8ModuleIdx, u8ChannelIdx), CCR_FEN_MASK_U32, u32EnableInterrupt);
	.d2line		418
	lwzx		r30,r3,r31		# u8ChannelIdx=r30 u8HwChannel=r3
	se_add		r30,r4		# u8ChannelIdx=r30 u8ChannelIdx=r30
	lwz		r5,44(r30)		# u32EnableInterrupt=r5 u8ChannelIdx=r30
	.diab.bclri		r5,14		# u32EnableInterrupt=r5
	or		r0,r0,r5		# u32EnableInterrupt=r5
	lwzx		r3,r3,r31		# u8HwChannel=r3 u8HwChannel=r3
	se_add		r4,r3		# u8HwChannel=r3
	stw		r0,44(r4)
# #endif
# #endif
#     }
#     SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_14();
	.d2line		422
	bl		SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_14
# }
	.d2line		423
	.d2epilogue_begin
.Llo27:
	lmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	3,10
.Llo30:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L441:
	.type		Gpt_eMios_StartTimer,@function
	.size		Gpt_eMios_StartTimer,.-Gpt_eMios_StartTimer
# Number of nodes = 223

# Allocations for Gpt_eMios_StartTimer
#	?a4		u8HwChannel
#	?a5		u32Value
#	?a6		$$79
#	?a7		$$78
#	?a8		u8ModuleIdx
#	?a9		u8ChannelIdx
#	?a10		u32EnableInterrupt
# FUNC(void, GPT_CODE) Gpt_eMios_StopTimer (VAR(uint8, AUTOMATIC) u8HwChannel)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         434,22
#$$ld
.L453:

#$$bf	Gpt_eMios_StopTimer,interprocedural,rasave,nostackparams
	.globl		Gpt_eMios_StopTimer
	.d2_cfa_start __cie
Gpt_eMios_StopTimer:
.Llo37:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# u8HwChannel=r3 u8HwChannel=r3
	.d2prologue_end
# {
#     VAR(uint8, AUTOMATIC) u8ModuleIdx;   /**< @brief assigned eMios HW module  index */
#     VAR(uint8, AUTOMATIC) u8ChannelIdx;  /**< @brief assigned eMios HW channel index */
# 
#     u8ModuleIdx  = (uint8)EMIOS_MODULE_INDEX_U8(u8HwChannel);
	.d2line		439
	rlwinm		r31,r3,27,29,31		# u8ModuleIdx=r31 u8HwChannel=r3
.Llo43:
	mr		r31,r31		# u8ModuleIdx=r31 u8ModuleIdx=r31
#     u8ChannelIdx = (uint8)EMIOS_CHANNEL_INDEX_U8(u8HwChannel);
	.d2line		440
	rlwinm		r30,r3,0,27,31		# u8ChannelIdx=r30 u8HwChannel=r3
	mr		r30,r30		# u8ChannelIdx=r30 u8ChannelIdx=r30
# 
#     SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_15();
	.d2line		442
	bl		SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_15
#     {
#         /** @violates @ref Gpt_eMios_C_REF_1 Cast from unsigned long to pointer */
#         /** @violates @ref Gpt_eMios_C_REF_7 Cast from unsigned long to pointer */
#         REG_RMW32(EMIOS_CCR_ADDR32(u8ModuleIdx, u8ChannelIdx), (CCR_MODE_MASK_U32|CCR_EDSEL_MASK_U32), (CCR_MODE_GPI_U32|CCR_EDSEL_MASK_U32));
	.d2line		446
.Llo38:
	lis		r3,EMIOS_BASE_ADDR32@ha		# u8HwChannel=r3
.Llo39:
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# u8HwChannel=r3 u8HwChannel=r3
	rlwinm		r0,r31,2,22,29		# u8ModuleIdx=r31
	lwzux		r4,r3,r0		# u8HwChannel=r3
	rlwinm		r5,r30,5,19,26		# u8ChannelIdx=r30
	add		r3,r4,r5		# u8HwChannel=r3
	lwz		r4,44(r3)		# u8HwChannel=r3
	diab.li		r3,-384		# u8HwChannel=r3
	and		r3,r3,r4		# u8HwChannel=r3 u8HwChannel=r3
	e_ori		r4,r3,256		# u8HwChannel=r3
	lis		r3,EMIOS_BASE_ADDR32@ha		# u8HwChannel=r3
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# u8HwChannel=r3 u8HwChannel=r3
	lwzx		r0,r3,r0		# u8HwChannel=r3
	se_add		r5,r0
	stw		r4,44(r5)
#     }
#     SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_15();
	.d2line		448
	bl		SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_15
#     
#     /** @violates @ref Gpt_eMios_C_REF_1 Cast from unsigned long to pointer */
#     /** @violates @ref Gpt_eMios_C_REF_7 Cast from unsigned long to pointer */
#     REG_WRITE32(EMIOS_CSR_ADDR32(u8ModuleIdx, u8ChannelIdx), CSR_FLAG_MASK_U32);
	.d2line		452
.Llo40:
	diab.li		r3,1		# u8HwChannel=r3
.Llo41:
	lis		r4,EMIOS_BASE_ADDR32@ha
	e_add16i		r4,r4,EMIOS_BASE_ADDR32@l
	rlwinm		r31,r31,2,22,29		# u8ModuleIdx=r31 u8ModuleIdx=r31
.Llo44:
	lwzx		r4,r4,r31
	rlwinm		r30,r30,5,19,26		# u8ChannelIdx=r30 u8ChannelIdx=r30
	se_add		r4,r30		# u8ChannelIdx=r30
	stw		r3,48(r4)		# u8HwChannel=r3
# }
	.d2line		453
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo45:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo42:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L454:
	.type		Gpt_eMios_StopTimer,@function
	.size		Gpt_eMios_StopTimer,.-Gpt_eMios_StopTimer
# Number of nodes = 75

# Allocations for Gpt_eMios_StopTimer
#	?a4		u8HwChannel
#	?a5		u8ModuleIdx
#	?a6		u8ChannelIdx
# FUNC(uint32, GPT_CODE) Gpt_eMios_GetTimeElapsed (VAR(uint8, AUTOMATIC) u8HwChannel,
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         466,24
#$$ld
.L463:

#$$bf	Gpt_eMios_GetTimeElapsed,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,cr0,lr
	.globl		Gpt_eMios_GetTimeElapsed
	.d2_cfa_start __cie
Gpt_eMios_GetTimeElapsed:
.Llo46:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# u8HwChannel=r3 u8HwChannel=r3
	mr		r4,r4		# pbReturnChannelRollover=r4 pbReturnChannelRollover=r4
	mr		r5,r5		# pu32TargetValue=r5 pu32TargetValue=r5
	.d2prologue_end
#                                                  P2VAR(boolean, AUTOMATIC, GPT_APPL_DATA) pbReturnChannelRollover,
#                                                  P2VAR(uint32, AUTOMATIC, GPT_APPL_DATA) pu32TargetValue
#                                                 )
# {
#     VAR(uint8, AUTOMATIC) u8ModuleIdx;   /**< @brief assigned eMios HW module  index */
#     VAR(uint8, AUTOMATIC) u8ChannelIdx;  /**< @brief assigned eMios HW channel index */
#     VAR(uint32,AUTOMATIC) u32ReturnValue;
# 
#     u8ModuleIdx  = (uint8)EMIOS_MODULE_INDEX_U8(u8HwChannel);
	.d2line		475
	rlwinm		r0,r3,27,29,31		# u8HwChannel=r3
.Llo51:
	mr		r7,r0		# u8ModuleIdx=r7 u8ModuleIdx=r0
#     u8ChannelIdx = (uint8)EMIOS_CHANNEL_INDEX_U8(u8HwChannel);
	.d2line		476
	rlwinm		r3,r3,0,27,31		# u8HwChannel=r3 u8HwChannel=r3
.Llo47:
	mr		r6,r3		# u8ChannelIdx=r6 u8ChannelIdx=r3
# 
#     /* Read the current target time before to read the elapsed time. */
#     /** @violates @ref Gpt_eMios_C_REF_1 Cast from unsigned long to pointer */
#     /** @violates @ref Gpt_eMios_C_REF_7 Cast from unsigned long to pointer */
#     *pu32TargetValue = REG_READ32(EMIOS_CADR_ADDR32(u8ModuleIdx, u8ChannelIdx));
	.d2line		481
.Llo53:
	lis		r3,EMIOS_BASE_ADDR32@ha		# u8HwChannel=r3
.Llo48:
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# u8HwChannel=r3 u8HwChannel=r3
	rlwinm		r7,r7,2,22,29		# u8ModuleIdx=r7 u8ModuleIdx=r7
	lwzux		r0,r3,r7		# u8HwChannel=r3
.Llo52:
	rlwinm		r3,r6,5,19,26		# u8HwChannel=r3 u8ChannelIdx=r6
	add		r6,r0,r3		# u8ChannelIdx=r6 u8HwChannel=r3
	lwz		r0,32(r6)		# u8ChannelIdx=r6
	stw		r0,0(r5)		# pu32TargetValue=r5
# 
#     /** @violates @ref Gpt_eMios_C_REF_1 Cast from unsigned long to pointer */
#     /** @violates @ref Gpt_eMios_C_REF_7 Cast from unsigned long to pointer */
#     u32ReturnValue = REG_READ32(EMIOS_CCNTR_ADDR32(u8ModuleIdx, u8ChannelIdx));
	.d2line		485
	lis		r5,EMIOS_BASE_ADDR32@ha		# pu32TargetValue=r5
	e_add16i		r5,r5,EMIOS_BASE_ADDR32@l		# pu32TargetValue=r5 pu32TargetValue=r5
	lwzux		r6,r5,r7		# u8ChannelIdx=r6 pu32TargetValue=r5
	se_add		r6,r3		# u8ChannelIdx=r6 u8ChannelIdx=r6 u8HwChannel=r3
	lwz		r6,40(r6)		# u8ChannelIdx=r6 u8ChannelIdx=r6
.Llo54:
	mr		r6,r6		# u32ReturnValue=r6 u32ReturnValue=r6
# 
#     /* Check for interrupt status flag */
#     /** @violates @ref Gpt_eMios_C_REF_1 Cast from unsigned long to pointer */
#     /** @violates @ref Gpt_eMios_C_REF_7 Cast from unsigned long to pointer */
#     if (REG_READ32(EMIOS_CSR_ADDR32(u8ModuleIdx, u8ChannelIdx)) & (uint32)CSR_FLAG_MASK_U32)
	.d2line		490
	lis		r5,EMIOS_BASE_ADDR32@ha		# pu32TargetValue=r5
	e_add16i		r5,r5,EMIOS_BASE_ADDR32@l		# pu32TargetValue=r5 pu32TargetValue=r5
	lwzx		r0,r5,r7		# pu32TargetValue=r5
	se_add		r3,r0		# u8HwChannel=r3 u8HwChannel=r3
	lwz		r0,48(r3)		# u8HwChannel=r3
	se_btsti		r0,31
	bc		1,2,.L394	# eq
#     {
#         /* Channel counter was rollover */
#         *pbReturnChannelRollover = (boolean)TRUE;
	.d2line		493
.Llo49:
	diab.li		r0,1
	stb		r0,0(r4)		# pbReturnChannelRollover=r4
	b		.L395
.L394:
#     }
#     else
#     {
#         /* Channel counter was not rollover */
#         *pbReturnChannelRollover = (boolean)FALSE;
	.d2line		498
	diab.li		r0,0
	stb		r0,0(r4)		# pbReturnChannelRollover=r4
.L395:
#     }
# 
#     return(u32ReturnValue);
	.d2line		501
.Llo50:
	mr		r3,r6		# u32ReturnValue=r3 u32ReturnValue=r6
# }
	.d2line		502
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo55:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L464:
	.type		Gpt_eMios_GetTimeElapsed,@function
	.size		Gpt_eMios_GetTimeElapsed,.-Gpt_eMios_GetTimeElapsed
# Number of nodes = 84

# Allocations for Gpt_eMios_GetTimeElapsed
#	?a4		u8HwChannel
#	?a5		pbReturnChannelRollover
#	?a6		pu32TargetValue
#	?a7		u8ModuleIdx
#	?a8		u8ChannelIdx
#	?a9		u32ReturnValue
# FUNC(void, GPT_CODE) Gpt_eMios_EnableInterrupt (VAR(uint8, AUTOMATIC) u8HwChannel)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         516,22
#$$ld
.L479:

#$$bf	Gpt_eMios_EnableInterrupt,interprocedural,rasave,nostackparams
	.globl		Gpt_eMios_EnableInterrupt
	.d2_cfa_start __cie
Gpt_eMios_EnableInterrupt:
.Llo56:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# u8HwChannel=r3 u8HwChannel=r3
	.d2prologue_end
# {
#     VAR(uint8, AUTOMATIC) u8ModuleIdx;   /**< @brief assigned eMios HW module  index */
#     VAR(uint8, AUTOMATIC) u8ChannelIdx;  /**< @brief assigned eMios HW channel index */
# 
#     u8ModuleIdx  = (uint8)EMIOS_MODULE_INDEX_U8(u8HwChannel);
	.d2line		521
	rlwinm		r31,r3,27,29,31		# u8ModuleIdx=r31 u8HwChannel=r3
.Llo60:
	mr		r31,r31		# u8ModuleIdx=r31 u8ModuleIdx=r31
#     u8ChannelIdx = (uint8)EMIOS_CHANNEL_INDEX_U8(u8HwChannel);
	.d2line		522
	rlwinm		r30,r3,0,27,31		# u8ChannelIdx=r30 u8HwChannel=r3
	mr		r30,r30		# u8ChannelIdx=r30 u8ChannelIdx=r30
# 
#     /* Clear interrupt flag */
#     /** @violates @ref Gpt_eMios_C_REF_1 Cast from unsigned long to pointer */
#     /** @violates @ref Gpt_eMios_C_REF_7 Cast from unsigned long to pointer */
#     REG_WRITE32(EMIOS_CSR_ADDR32(u8ModuleIdx, u8ChannelIdx), CSR_FLAG_MASK_U32);
	.d2line		527
	diab.li		r4,1
	lis		r3,EMIOS_BASE_ADDR32@ha		# u8HwChannel=r3
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# u8HwChannel=r3 u8HwChannel=r3
	rlwinm		r0,r31,2,22,29		# u8ModuleIdx=r31
	lwzx		r0,r3,r0		# u8HwChannel=r3
	rlwinm		r3,r30,5,19,26		# u8HwChannel=r3 u8ChannelIdx=r30
	se_add		r3,r0		# u8HwChannel=r3 u8HwChannel=r3
	stw		r4,48(r3)		# u8HwChannel=r3
# 
#     SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_16();
	.d2line		529
	bl		SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_16
#     {
#         /* Enable timer interrupt if it_s not already enabled */
#         /** @violates @ref Gpt_eMios_C_REF_1 Cast from unsigned long to pointer */
#         /** @violates @ref Gpt_eMios_C_REF_7 Cast from unsigned long to pointer */
#         REG_BIT_SET32(EMIOS_CCR_ADDR32(u8ModuleIdx, u8ChannelIdx), CCR_FEN_MASK_U32);
	.d2line		534
.Llo57:
	lis		r3,EMIOS_BASE_ADDR32@ha		# u8HwChannel=r3
.Llo58:
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# u8HwChannel=r3 u8HwChannel=r3
	rlwinm		r31,r31,2,22,29		# u8ModuleIdx=r31 u8ModuleIdx=r31
.Llo61:
	lwzx		r0,r3,r31		# u8HwChannel=r3
	rlwinm		r30,r30,5,19,26		# u8ChannelIdx=r30 u8ChannelIdx=r30
	se_add		r30,r0		# u8ChannelIdx=r30 u8ChannelIdx=r30
	lwz		r0,44(r30)		# u8ChannelIdx=r30
	.diab.bseti		r0,14
	stw		r0,44(r30)		# u8ChannelIdx=r30
#     }
#     SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_16();
	.d2line		536
	bl		SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_16
# }
	.d2line		537
	.d2epilogue_begin
.Llo59:
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
.L480:
	.type		Gpt_eMios_EnableInterrupt,@function
	.size		Gpt_eMios_EnableInterrupt,.-Gpt_eMios_EnableInterrupt
# Number of nodes = 56

# Allocations for Gpt_eMios_EnableInterrupt
#	?a4		u8HwChannel
#	?a5		$$80
#	?a6		u8ModuleIdx
#	?a7		u8ChannelIdx
# FUNC(void, GPT_CODE) Gpt_eMios_DisableInterrupt (VAR(uint8, AUTOMATIC) u8HwChannel)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         576,22
#$$ld
.L489:

#$$bf	Gpt_eMios_DisableInterrupt,interprocedural,rasave,nostackparams
	.globl		Gpt_eMios_DisableInterrupt
	.d2_cfa_start __cie
Gpt_eMios_DisableInterrupt:
.Llo63:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# u8HwChannel=r3 u8HwChannel=r3
	.d2prologue_end
# {
#     VAR(uint8, AUTOMATIC) u8ModuleIdx;   /**< @brief assigned eMios HW module  index */
#     VAR(uint8, AUTOMATIC) u8ChannelIdx;  /**< @brief assigned eMios HW channel index */
# 
#     u8ModuleIdx  = (uint8)EMIOS_MODULE_INDEX_U8(u8HwChannel);
	.d2line		581
	rlwinm		r31,r3,27,29,31		# u8ModuleIdx=r31 u8HwChannel=r3
.Llo69:
	mr		r31,r31		# u8ModuleIdx=r31 u8ModuleIdx=r31
#     u8ChannelIdx = (uint8)EMIOS_CHANNEL_INDEX_U8(u8HwChannel);
	.d2line		582
	rlwinm		r30,r3,0,27,31		# u8ChannelIdx=r30 u8HwChannel=r3
	mr		r30,r30		# u8ChannelIdx=r30 u8ChannelIdx=r30
# 
#     SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_17();
	.d2line		584
	bl		SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_17
#     {
#         /* Disable timer interrupt */
#         /** @violates @ref Gpt_eMios_C_REF_1 Cast from unsigned long to pointer */
#         /** @violates @ref Gpt_eMios_C_REF_7 Cast from unsigned long to pointer */
#         REG_BIT_CLEAR32(EMIOS_CCR_ADDR32(u8ModuleIdx, u8ChannelIdx), CCR_FEN_MASK_U32);
	.d2line		589
.Llo64:
	lis		r3,EMIOS_BASE_ADDR32@ha		# u8HwChannel=r3
.Llo65:
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# u8HwChannel=r3 u8HwChannel=r3
	rlwinm		r0,r31,2,22,29		# u8ModuleIdx=r31
	lwzx		r3,r3,r0		# u8HwChannel=r3 u8HwChannel=r3
	rlwinm		r0,r30,5,19,26		# u8ChannelIdx=r30
	se_add		r3,r0		# u8HwChannel=r3 u8HwChannel=r3
	lwz		r0,44(r3)		# u8HwChannel=r3
	.diab.bclri		r0,14
	stw		r0,44(r3)		# u8HwChannel=r3
#     }
#     SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_17();
	.d2line		591
	bl		SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_17
#     
#     /* Clear interrupt flag */
#     /** @violates @ref Gpt_eMios_C_REF_1 Cast from unsigned long to pointer */
#     /** @violates @ref Gpt_eMios_C_REF_7 Cast from unsigned long to pointer */
#     REG_WRITE32(EMIOS_CSR_ADDR32(u8ModuleIdx, u8ChannelIdx), CSR_FLAG_MASK_U32);
	.d2line		596
.Llo66:
	diab.li		r3,1		# u8HwChannel=r3
.Llo67:
	lis		r4,EMIOS_BASE_ADDR32@ha
	e_add16i		r4,r4,EMIOS_BASE_ADDR32@l
	rlwinm		r31,r31,2,22,29		# u8ModuleIdx=r31 u8ModuleIdx=r31
.Llo70:
	lwzx		r4,r4,r31
	rlwinm		r30,r30,5,19,26		# u8ChannelIdx=r30 u8ChannelIdx=r30
	se_add		r4,r30		# u8ChannelIdx=r30
	stw		r3,48(r4)		# u8HwChannel=r3
# }
	.d2line		597
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo71:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo68:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L490:
	.type		Gpt_eMios_DisableInterrupt,@function
	.size		Gpt_eMios_DisableInterrupt,.-Gpt_eMios_DisableInterrupt
# Number of nodes = 56

# Allocations for Gpt_eMios_DisableInterrupt
#	?a4		u8HwChannel
#	?a5		$$81
#	?a6		u8ModuleIdx
#	?a7		u8ChannelIdx

# Allocations for module
	.section	.text_vle
	.0byte		.L497
	.section	.text_vle
#$$ld
.L5:
.L498:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Mcl\\ssc\\make\\..\\..\\generator\\integration_package\\include\\Reg_eSys_eMios.h"
	.d2_line_end
	.section	.invalid_TEXT,,c
#$$ld
.L404:
.L412:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Gpt\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Gpt_eMios.c"
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
	.uleb128	6
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
	.uleb128	7
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
	.uleb128	8
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	9
	.uleb128	15
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	10
	.uleb128	38
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	11
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	12
	.uleb128	33
	.byte		0x0
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Gpt\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Gpt_eMios.c"
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
.L401:
	.4byte		.L402-.L400
.L400:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L406-.L401
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Gpt\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Gpt_eMios.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L403
	.4byte		.L404
	.4byte		.L407
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L413:
	.sleb128	2
	.4byte		.L409-.L401
	.byte		"Gpt_eMios_Init"
	.byte		0
	.4byte		.L412
	.uleb128	239
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L410
	.4byte		.L411
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L412
	.uleb128	239
	.uleb128	22
	.byte		"u8HwChannel"
	.byte		0
	.4byte		.L414
	.4byte		.L416
	.sleb128	3
	.4byte		.L412
	.uleb128	239
	.uleb128	22
	.byte		"u8Prescaler"
	.byte		0
	.4byte		.L414
	.4byte		.L417
	.sleb128	3
	.4byte		.L412
	.uleb128	239
	.uleb128	22
	.byte		"bFreezeEnable"
	.byte		0
	.4byte		.L418
	.4byte		.L419
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L420:
	.sleb128	4
	.4byte		.L412
	.uleb128	244
	.uleb128	27
	.byte		"u8ModuleIdx"
	.byte		0
	.4byte		.L414
	.4byte		.L421
.L422:
	.sleb128	4
	.4byte		.L412
	.uleb128	245
	.uleb128	27
	.byte		"u8ChannelIdx"
	.byte		0
	.4byte		.L414
	.4byte		.L423
.L424:
	.sleb128	4
	.4byte		.L412
	.uleb128	246
	.uleb128	27
	.byte		"u32Temp"
	.byte		0
	.4byte		.L425
	.4byte		.L427
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L409:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L432:
	.sleb128	2
	.4byte		.L429-.L401
	.byte		"Gpt_eMios_DeInit"
	.byte		0
	.4byte		.L412
	.uleb128	313
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L430
	.4byte		.L431
	.sleb128	3
	.4byte		.L412
	.uleb128	313
	.uleb128	22
	.byte		"u8HwChannel"
	.byte		0
	.4byte		.L414
	.4byte		.L433
.L434:
	.sleb128	4
	.4byte		.L412
	.uleb128	315
	.uleb128	27
	.byte		"u8ModuleIdx"
	.byte		0
	.4byte		.L414
	.4byte		.L435
.L436:
	.sleb128	4
	.4byte		.L412
	.uleb128	316
	.uleb128	27
	.byte		"u8ChannelIdx"
	.byte		0
	.4byte		.L414
	.4byte		.L437
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L429:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L442:
	.sleb128	2
	.4byte		.L439-.L401
	.byte		"Gpt_eMios_StartTimer"
	.byte		0
	.4byte		.L412
	.uleb128	364
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L440
	.4byte		.L441
	.sleb128	3
	.4byte		.L412
	.uleb128	364
	.uleb128	22
	.byte		"u8HwChannel"
	.byte		0
	.4byte		.L414
	.4byte		.L443
	.sleb128	3
	.4byte		.L412
	.uleb128	364
	.uleb128	22
	.byte		"u32Value"
	.byte		0
	.4byte		.L425
	.4byte		.L444
.L445:
	.sleb128	4
	.4byte		.L412
	.uleb128	368
	.uleb128	27
	.byte		"u8ModuleIdx"
	.byte		0
	.4byte		.L414
	.4byte		.L446
.L447:
	.sleb128	4
	.4byte		.L412
	.uleb128	369
	.uleb128	27
	.byte		"u8ChannelIdx"
	.byte		0
	.4byte		.L414
	.4byte		.L448
.L449:
	.sleb128	4
	.4byte		.L412
	.uleb128	372
	.uleb128	28
	.byte		"u32EnableInterrupt"
	.byte		0
	.4byte		.L425
	.4byte		.L450
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L439:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L455:
	.sleb128	2
	.4byte		.L452-.L401
	.byte		"Gpt_eMios_StopTimer"
	.byte		0
	.4byte		.L412
	.uleb128	434
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L453
	.4byte		.L454
	.sleb128	3
	.4byte		.L412
	.uleb128	434
	.uleb128	22
	.byte		"u8HwChannel"
	.byte		0
	.4byte		.L414
	.4byte		.L456
.L457:
	.sleb128	4
	.4byte		.L412
	.uleb128	436
	.uleb128	27
	.byte		"u8ModuleIdx"
	.byte		0
	.4byte		.L414
	.4byte		.L458
.L459:
	.sleb128	4
	.4byte		.L412
	.uleb128	437
	.uleb128	27
	.byte		"u8ChannelIdx"
	.byte		0
	.4byte		.L414
	.4byte		.L460
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L452:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L465:
	.sleb128	5
	.4byte		.L462-.L401
	.byte		"Gpt_eMios_GetTimeElapsed"
	.byte		0
	.4byte		.L412
	.uleb128	466
	.uleb128	24
	.4byte		.L425
	.byte		0x1
	.byte		0x1
	.4byte		.L463
	.4byte		.L464
	.sleb128	3
	.4byte		.L412
	.uleb128	466
	.uleb128	24
	.byte		"u8HwChannel"
	.byte		0
	.4byte		.L414
	.4byte		.L466
	.sleb128	3
	.4byte		.L412
	.uleb128	466
	.uleb128	24
	.byte		"pbReturnChannelRollover"
	.byte		0
	.4byte		.L467
	.4byte		.L468
	.sleb128	3
	.4byte		.L412
	.uleb128	466
	.uleb128	24
	.byte		"pu32TargetValue"
	.byte		0
	.4byte		.L469
	.4byte		.L470
.L471:
	.sleb128	4
	.4byte		.L412
	.uleb128	471
	.uleb128	27
	.byte		"u8ModuleIdx"
	.byte		0
	.4byte		.L414
	.4byte		.L472
.L473:
	.sleb128	4
	.4byte		.L412
	.uleb128	472
	.uleb128	27
	.byte		"u8ChannelIdx"
	.byte		0
	.4byte		.L414
	.4byte		.L474
.L475:
	.sleb128	4
	.4byte		.L412
	.uleb128	473
	.uleb128	27
	.byte		"u32ReturnValue"
	.byte		0
	.4byte		.L425
	.4byte		.L476
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L462:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L481:
	.sleb128	2
	.4byte		.L478-.L401
	.byte		"Gpt_eMios_EnableInterrupt"
	.byte		0
	.4byte		.L412
	.uleb128	516
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L479
	.4byte		.L480
	.sleb128	3
	.4byte		.L412
	.uleb128	516
	.uleb128	22
	.byte		"u8HwChannel"
	.byte		0
	.4byte		.L414
	.4byte		.L482
.L483:
	.sleb128	4
	.4byte		.L412
	.uleb128	518
	.uleb128	27
	.byte		"u8ModuleIdx"
	.byte		0
	.4byte		.L414
	.4byte		.L484
.L485:
	.sleb128	4
	.4byte		.L412
	.uleb128	519
	.uleb128	27
	.byte		"u8ChannelIdx"
	.byte		0
	.4byte		.L414
	.4byte		.L486
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L478:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L491:
	.sleb128	2
	.4byte		.L488-.L401
	.byte		"Gpt_eMios_DisableInterrupt"
	.byte		0
	.4byte		.L412
	.uleb128	576
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L489
	.4byte		.L490
	.sleb128	3
	.4byte		.L412
	.uleb128	576
	.uleb128	22
	.byte		"u8HwChannel"
	.byte		0
	.4byte		.L414
	.4byte		.L492
.L493:
	.sleb128	4
	.4byte		.L412
	.uleb128	578
	.uleb128	27
	.byte		"u8ModuleIdx"
	.byte		0
	.4byte		.L414
	.4byte		.L494
.L495:
	.sleb128	4
	.4byte		.L412
	.uleb128	579
	.uleb128	27
	.byte		"u8ChannelIdx"
	.byte		0
	.4byte		.L414
	.4byte		.L496
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L488:
	.section	.debug_info,,n
.L497:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L498
	.uleb128	134
	.uleb128	33
	.byte		"EMIOS_BASE_ADDR32"
	.byte		0
	.4byte		.L499
	.section	.debug_info,,n
	.section	.debug_info,,n
.L415:
	.sleb128	7
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L414:
	.sleb128	8
	.byte		"uint8"
	.byte		0
	.4byte		.L415
.L418:
	.sleb128	8
	.byte		"boolean"
	.byte		0
	.4byte		.L415
.L426:
	.sleb128	7
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L425:
	.sleb128	8
	.byte		"uint32"
	.byte		0
	.4byte		.L426
	.section	.debug_info,,n
.L467:
	.sleb128	9
	.4byte		.L418
.L469:
	.sleb128	9
	.4byte		.L425
	.section	.debug_info,,n
.L501:
	.sleb128	10
	.4byte		.L425
	.section	.debug_info,,n
.L499:
	.sleb128	11
	.4byte		.L500-.L2
	.4byte		.L501
	.section	.debug_info,,n
	.sleb128	12
	.sleb128	0
.L500:
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L406:
	.sleb128	0
.L402:

	.section	.debug_loc,,n
	.align	0
.L416:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),3
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),3
	.d2locend
.L417:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo7),4
	.d2locreg	%offsetof(.Llo4), %offsetof(.Llo8),31
	.d2locend
.L419:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo7),5
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo4),30
	.d2locend
.L421:
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo8),29
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo12),29
	.d2locend
.L423:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo8),28
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo14),28
	.d2locend
.L427:
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo16),4
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo6),4
	.d2locend
.L433:
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo19),3
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo21),0
	.d2locend
.L435:
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo22),5
	.d2locend
.L437:
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo21),6
	.d2locend
.L443:
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo25),3
	.d2locreg	%offsetof(.Llo26), %offsetof(.Llo27),3
	.d2locend
.L444:
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo28),4
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo30),29
	.d2locend
.L446:
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo31),31
	.d2locend
.L448:
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo32),3
	.d2locreg	%offsetof(.Llo33), %offsetof(.Llo30),30
	.d2locend
.L450:
	.d2locreg	%offsetof(.Llo34), %offsetof(.Llo35),0
	.d2locreg	%offsetof(.Llo36), %offsetof(.Llo27),5
	.d2locend
.L456:
	.d2locreg	%offsetof(.Llo37), %offsetof(.Llo38),3
	.d2locreg	%offsetof(.Llo39), %offsetof(.Llo40),3
	.d2locreg	%offsetof(.Llo41), %offsetof(.Llo42),3
	.d2locend
.L458:
	.d2locreg	%offsetof(.Llo43), %offsetof(.Llo44),31
	.d2locend
.L460:
	.d2locreg	%offsetof(.Llo37), %offsetof(.Llo45),30
	.d2locend
.L466:
	.d2locreg	%offsetof(.Llo46), %offsetof(.Llo47),3
	.d2locreg	%offsetof(.Llo48), %offsetof(.Llo49),3
	.d2locend
.L468:
	.d2locreg	%offsetof(.Llo46), %offsetof(.Llo50),4
	.d2locend
.L470:
	.d2locreg	%offsetof(.Llo46), %offsetof(.Llo49),5
	.d2locend
.L472:
	.d2locreg	%offsetof(.Llo51), %offsetof(.Llo52),0
	.d2locend
.L474:
	.d2locreg	%offsetof(.Llo47), %offsetof(.Llo53),3
	.d2locreg	%offsetof(.Llo48), %offsetof(.Llo54),6
	.d2locend
.L476:
	.d2locreg	%offsetof(.Llo54), %offsetof(.Llo55),6
	.d2locend
.L482:
	.d2locreg	%offsetof(.Llo56), %offsetof(.Llo57),3
	.d2locreg	%offsetof(.Llo58), %offsetof(.Llo59),3
	.d2locend
.L484:
	.d2locreg	%offsetof(.Llo60), %offsetof(.Llo61),31
	.d2locend
.L486:
	.d2locreg	%offsetof(.Llo56), %offsetof(.Llo62),30
	.d2locend
.L492:
	.d2locreg	%offsetof(.Llo63), %offsetof(.Llo64),3
	.d2locreg	%offsetof(.Llo65), %offsetof(.Llo66),3
	.d2locreg	%offsetof(.Llo67), %offsetof(.Llo68),3
	.d2locend
.L494:
	.d2locreg	%offsetof(.Llo69), %offsetof(.Llo70),31
	.d2locend
.L496:
	.d2locreg	%offsetof(.Llo63), %offsetof(.Llo71),30
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "Gpt_eMios_DisableInterrupt"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_17","SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_17"
	.wrcm.end
	.wrcm.nelem "Gpt_eMios_EnableInterrupt"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_16","SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_16"
	.wrcm.end
	.wrcm.nelem "Gpt_eMios_GetTimeElapsed"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Gpt_eMios_StopTimer"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_15","SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_15"
	.wrcm.end
	.wrcm.nelem "Gpt_eMios_StartTimer"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_14","SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_14"
	.wrcm.end
	.wrcm.nelem "Gpt_eMios_DeInit"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "eMios_StopChannel"
	.wrcm.end
	.wrcm.nelem "Gpt_eMios_Init"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "eMios_StartChannel"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Gpt_eMios.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Gpt_eMios.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Gpt_eMios.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Gpt_eMios.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Gpt_eMios.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Gpt_eMios.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\MCAL\MPC5746R\Gpt\ssc\make\..\..\generator\integration_package\src\Gpt_eMios.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
