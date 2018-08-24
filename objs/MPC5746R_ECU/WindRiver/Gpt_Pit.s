#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Gpt_Pit.c"
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
# static FUNC(void, GPT_CODE) Gpt_Pit_ProcessCommonInterrupt(VAR(uint8, AUTOMATIC) u8HwChannel)
	.section	.invalid_TEXT,,c
	.align		1
	.section	.debug_line.invalid_TEXT,,n
	.sectionlink	.debug_line
.L419:
	.section	.invalid_TEXT,,c
#$$ld
.L415:
	.0byte		.L413
	.d2_line_start	.debug_line.invalid_TEXT
	.section	.invalid_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Gpt\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Gpt_Pit.c"
        .d2line         448,29
#$$ld
.L422:

#$$bf	Gpt_Pit_ProcessCommonInterrupt,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Gpt_Pit_ProcessCommonInterrupt:
.Llo1:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr
	stmw		r27,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	27,31,1,1
	stw		r0,52(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# u8HwChannel=r31 u8HwChannel=r3
	.d2prologue_end
# {
#     VAR(uint32,AUTOMATIC) u32Temp1;
#     VAR(uint32,AUTOMATIC) u32Temp2;
#     VAR(uint8, AUTOMATIC) u8ModuleIdx  = (uint8)PIT_MODULE_INDEX_U32(u8HwChannel);
	.d2line		452
	rlwinm		r28,r31,27,29,31		# u8ModuleIdx=r28 u8HwChannel=r31
.Llo8:
	mr		r28,r28		# u8ModuleIdx=r28 u8ModuleIdx=r28
#     VAR(uint8, AUTOMATIC) u8ChannelIdx = (uint8)PIT_CHANNEL_INDEX_U32(u8HwChannel);
	.d2line		453
	rlwinm		r27,r31,0,27,31		# u8ChannelIdx=r27 u8HwChannel=r31
	mr		r27,r27		# u8ChannelIdx=r27 u8ChannelIdx=r27
#     
#     SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_10();
	.d2line		455
	bl		SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_10
#     {
#         /*Checks for spurious interrupts*/
#     
#         /** @violates @ref GPT_PIT_C_REF_3 MISRA 2004 Rule 11.1, Cast from unsigned long to pointer*/
#         /** @violates @ref GPT_PIT_C_REF_8 Cast from unsigned long to pointer */
#         u32Temp1 = REG_BIT_GET32(PIT_TFLG_ADDR32(u8ModuleIdx,u8ChannelIdx),PIT_TFLG_TIF_MASK_U32);
	.d2line		461
.Llo2:
	lis		r3,PIT_BASE_ADDR32@ha
	e_add16i		r3,r3,PIT_BASE_ADDR32@l
	rlwinm		r0,r28,2,22,29		# u8ModuleIdx=r28
	lwzux		r5,r3,r0
	rlwinm		r4,r27,4,20,27		# u8ChannelIdx=r27
	add		r3,r5,r4
	lwz		r30,252(r3)		# u32Temp1=r30
.Llo5:
	rlwinm		r30,r30,0,31,31		# u32Temp1=r30 u32Temp1=r30
	mr		r30,r30		# u32Temp1=r30 u32Temp1=r30
#     
#         /** @violates @ref GPT_PIT_C_REF_3 MISRA 2004 Rule 11.1, Cast from unsigned long to pointer*/
#         /** @violates @ref GPT_PIT_C_REF_8 Cast from unsigned long to pointer */
#         u32Temp2 = REG_BIT_GET32(PIT_TCTRL_LOCKABLE_ADDR32(u8ModuleIdx,u8ChannelIdx),PIT_TCTRL_TIE_MASK_U32);
	.d2line		465
	lis		r3,PIT_BASE_ADDR32@ha
	e_add16i		r3,r3,PIT_BASE_ADDR32@l
	lwzx		r0,r3,r0
	se_add		r4,r0
	lwz		r29,248(r4)
	rlwinm		r29,r29,0,30,30
.Llo6:
	mr		r29,r29		# u32Temp2=r29 u32Temp2=r29
#     }
#     SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_10();
	.d2line		467
	bl		SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_10
# 
#     if ((PIT_TFLG_TIF_ON_U32 == u32Temp1) && (((uint32)PIT_TCTRL_TIE_ON_U32 << PIT_TCTRL_TIE_SHIFT) == u32Temp2))
	.d2line		469
	se_cmpi		r30,1		# u32Temp1=r30
	bc		0,2,.L386	# ne
.Llo3:
	se_cmpi		r29,2		# u32Temp2=r29
	bc		0,2,.L386	# ne
#     {
#         /* Call GPT upper layer handler */
#         Gpt_Ipw_ProcessCommonInterrupt(u8HwChannel, (uint8)GPT_PIT_MODULE);
	.d2line		472
.Llo7:
	diab.addi		r3,r31,8		# u8HwChannel=r31
	rlwinm		r3,r3,0,24,31
	bl		Gpt_ProcessCommonInterrupt
.L386:
#     }
# 
#     /*Clear interrupt flag*/
#     /** @violates @ref GPT_PIT_C_REF_3 MISRA 2004 Rule 11.1, Cast from unsigned long to pointer*/
#     /** @violates @ref GPT_PIT_C_REF_8 Cast from unsigned long to pointer */
#     REG_BIT_SET32(PIT_TFLG_ADDR32(u8ModuleIdx,u8ChannelIdx), PIT_TFLG_TIF_MASK_U32);
	.d2line		478
.Llo4:
	lis		r3,PIT_BASE_ADDR32@ha
	e_add16i		r3,r3,PIT_BASE_ADDR32@l
.Llo9:
	rlwinm		r28,r28,2,22,29		# u8ModuleIdx=r28 u8ModuleIdx=r28
.Llo10:
	lwzx		r3,r3,r28
.Llo11:
	rlwinm		r27,r27,4,20,27		# u8ChannelIdx=r27 u8ChannelIdx=r27
	se_add		r27,r3		# u8ChannelIdx=r27 u8ChannelIdx=r27
	lwz		r3,252(r27)		# u8ChannelIdx=r27
	.diab.bseti		r3,31
	stw		r3,252(r27)		# u8ChannelIdx=r27
# }
	.d2line		479
	.d2epilogue_begin
	lmw		r27,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo12:
	lwz		r0,52(r1)
	mtspr		lr,r0
	diab.addi		r1,r1,48		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L423:
	.type		Gpt_Pit_ProcessCommonInterrupt,@function
	.size		Gpt_Pit_ProcessCommonInterrupt,.-Gpt_Pit_ProcessCommonInterrupt
# Number of nodes = 91

# Allocations for Gpt_Pit_ProcessCommonInterrupt
#	?a4		u8HwChannel
#	?a5		$$77
#	?a6		u32Temp1
#	?a7		u32Temp2
#	?a8		u8ModuleIdx
#	?a9		u8ChannelIdx
# FUNC(void, GPT_CODE) Gpt_Pit_Init(VAR(uint8, AUTOMATIC) u8HwChannel, VAR(boolean, AUTOMATIC) bFreezeEnable)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         502,22
#$$ld
.L441:

#$$bf	Gpt_Pit_Init,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r31,cr0,lr
	.globl		Gpt_Pit_Init
	.d2_cfa_start __cie
Gpt_Pit_Init:
.Llo13:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# u8HwChannel=r3 u8HwChannel=r3
	mr		r0,r4		# bFreezeEnable=r0 bFreezeEnable=r4
	.d2prologue_end
# {
#     VAR(uint8, AUTOMATIC) u8ModuleIdx  = (uint8)PIT_MODULE_INDEX_U32(u8HwChannel);
	.d2line		504
	rlwinm		r5,r3,27,29,31		# u8HwChannel=r3
.Llo29:
	mr		r5,r5		# u8ModuleIdx=r5 u8ModuleIdx=r5
#     VAR(uint8, AUTOMATIC) u8ChannelIdx = (uint8)PIT_CHANNEL_INDEX_U32(u8HwChannel);
	.d2line		505
	rlwinm		r3,r3,0,27,31		# u8HwChannel=r3 u8HwChannel=r3
.Llo34:
	mr		r31,r3		# u8ChannelIdx=r31 u8ChannelIdx=r3
#     
# #ifdef ERR_IPV_PIT_0002
#   #if (ERR_IPV_PIT_0002 == STD_ON)
#     /* Insert a minimum delay of two bus clocks to guarantee the write is not ignored */
#     /** @violates @ref GPT_PIT_C_REF_3 MISRA 2004 Rule 11.1, Cast from unsigned long to pointer*/
#     /** @violates @ref GPT_PIT_C_REF_8 Cast from unsigned long to pointer */
#     REG_RMW_LOCK32(PIT_BASE_ADDR32[u8ModuleIdx], PIT_MCR_LOCKABLE_ADDR32(u8ModuleIdx), (uint32)0UL, (uint32)0UL);
#   #endif
# #endif /*ERR_IPV_PIT_0002*/
# 
#     /* Enable hardware module clock. This shall be be executed before any other setup is made */
#     if((uint32)0 == (uint32)PIT_CHANNEL_INDEX_U32((uint32)u8ChannelIdx))
	.d2line		517
	e_andi.		r3,r3,31		# u8HwChannel=r3 u8HwChannel=r3
.Llo14:
	bc		0,2,.L389	# ne
#     {
#         /** @violates @ref GPT_PIT_C_REF_3 MISRA 2004 Rule 11.1, Cast from unsigned long to pointer*/
#         /** @violates @ref GPT_PIT_C_REF_8 Cast from unsigned long to pointer */
#         REG_BIT_CLEAR_LOCK32(PIT_BASE_ADDR32[u8ModuleIdx],PIT_MCR_LOCKABLE_ADDR32(u8ModuleIdx),PIT_MCR_MDIS_RTI_MASK_U32);
	.d2line		521
.Llo25:
	lis		r3,PIT_BASE_ADDR32@ha		# u8HwChannel=r3
.Llo15:
	e_add16i		r3,r3,PIT_BASE_ADDR32@l		# u8HwChannel=r3 u8HwChannel=r3
	rlwinm		r7,r5,2,22,29		# u8ModuleIdx=r5
	lwzx		r3,r3,r7		# u8HwChannel=r3 u8HwChannel=r3
	lwz		r4,0(r3)		# u8HwChannel=r3
	.diab.bclri		r4,29
	stw		r4,0(r3)		# u8HwChannel=r3
	b		.L390
.L389:
#     }
#     else
#     {
#         /** @violates @ref GPT_PIT_C_REF_3 MISRA 2004 Rule 11.1, Cast from unsigned long to pointer*/
#         /** @violates @ref GPT_PIT_C_REF_8 Cast from unsigned long to pointer */
#         REG_BIT_CLEAR_LOCK32(PIT_BASE_ADDR32[u8ModuleIdx],PIT_MCR_LOCKABLE_ADDR32(u8ModuleIdx),PIT_MCR_MDIS_MASK_U32);
	.d2line		527
.Llo16:
	lis		r3,PIT_BASE_ADDR32@ha		# u8HwChannel=r3
.Llo17:
	e_add16i		r3,r3,PIT_BASE_ADDR32@l		# u8HwChannel=r3 u8HwChannel=r3
	rlwinm		r7,r5,2,22,29		# u8ModuleIdx=r5
	lwzx		r3,r3,r7		# u8HwChannel=r3 u8HwChannel=r3
	lwz		r4,0(r3)		# u8HwChannel=r3
	.diab.bclri		r4,30
	stw		r4,0(r3)		# u8HwChannel=r3
.L390:
#     }
# 
#     /* Stop Channel to Configure Channel */
#     /** @violates @ref GPT_PIT_C_REF_3 MISRA 2004 Rule 11.1, Cast from unsigned long to pointer*/
#     /** @violates @ref GPT_PIT_C_REF_8 Cast from unsigned long to pointer */
#     REG_BIT_CLEAR_LOCK32(PIT_BASE_ADDR32[u8ModuleIdx],PIT_TCTRL_LOCKABLE_ADDR32(u8ModuleIdx,u8ChannelIdx),(uint32)PIT_TCTRL_TEN_MASK_U32);
	.d2line		533
.Llo18:
	lis		r3,PIT_BASE_ADDR32@ha		# u8HwChannel=r3
.Llo19:
	e_add16i		r3,r3,PIT_BASE_ADDR32@l		# u8HwChannel=r3 u8HwChannel=r3
	rlwinm		r7,r5,2,22,29		# u8ModuleIdx=r5
	lwzx		r4,r3,r7		# u8HwChannel=r3
.Llo35:
	rlwinm		r31,r31,4,20,27		# u8ChannelIdx=r31 u8ChannelIdx=r31
	se_add		r4,r31		# u8ChannelIdx=r31
	lwz		r6,248(r4)
	.diab.bclri		r6,31
	stw		r6,248(r4)
# 
#     /* Disable interrupts*/
#     /** @violates @ref GPT_PIT_C_REF_3 MISRA 2004 Rule 11.1, Cast from unsigned long to pointer*/
#     /** @violates @ref GPT_PIT_C_REF_8 Cast from unsigned long to pointer */
#     REG_BIT_CLEAR_LOCK32(PIT_BASE_ADDR32[u8ModuleIdx],PIT_TCTRL_LOCKABLE_ADDR32(u8ModuleIdx,u8ChannelIdx),(uint32)PIT_TCTRL_TIE_MASK_U32);
	.d2line		538
	lwzx		r4,r3,r7		# u8HwChannel=r3
	se_add		r4,r31		# u8ChannelIdx=r31
	lwz		r6,248(r4)
	.diab.bclri		r6,30
	stw		r6,248(r4)
# 
#     /* Clear pending interrupts */
#     /** @violates @ref GPT_PIT_C_REF_3 MISRA 2004 Rule 11.1, Cast from unsigned long to pointer*/
#     /** @violates @ref GPT_PIT_C_REF_8 Cast from unsigned long to pointer */
#     REG_BIT_SET32(PIT_TFLG_ADDR32(u8ModuleIdx,u8ChannelIdx),PIT_TFLG_TIF_MASK_U32);
	.d2line		543
	lwzx		r4,r3,r7		# u8HwChannel=r3
	se_add		r4,r31		# u8ChannelIdx=r31
	lwz		r6,252(r4)
	.diab.bseti		r6,31
	stw		r6,252(r4)
# 
#     /* Set Compare Value to 0 */
#     /** @violates @ref GPT_PIT_C_REF_3 MISRA 2004 Rule 11.1, Cast from unsigned long to pointer*/
#     /** @violates @ref GPT_PIT_C_REF_8 Cast from unsigned long to pointer */
#     REG_WRITE_LOCK32(PIT_BASE_ADDR32[u8ModuleIdx],PIT_LDVAL_LOCKABLE_ADDR32(u8ModuleIdx,u8ChannelIdx), 0xFFFFFFFFU);
	.d2line		548
	diab.li		r4,-1
	lwzx		r3,r3,r7		# u8HwChannel=r3 u8HwChannel=r3
	se_add		r31,r3		# u8ChannelIdx=r31 u8ChannelIdx=r31 u8HwChannel=r3
	stw		r4,240(r31)		# u8ChannelIdx=r31
# 
#     if ((boolean)TRUE == bFreezeEnable)
	.d2line		550
.Llo26:
	rlwinm		r0,r0,0,24,31		# bFreezeEnable=r0 bFreezeEnable=r0
	se_cmpi		r0,1		# bFreezeEnable=r0
	bc		0,2,.L391	# ne
#     {
#         /** @violates @ref GPT_PIT_C_REF_3 MISRA 2004 Rule 11.1, Cast from unsigned long to pointer*/
#         /** @violates @ref GPT_PIT_C_REF_8 Cast from unsigned long to pointer */
#         REG_BIT_SET_LOCK32(PIT_BASE_ADDR32[u8ModuleIdx],PIT_MCR_LOCKABLE_ADDR32(u8ModuleIdx),PIT_MCR_FRZ_MASK_U32);
	.d2line		554
.Llo20:
	lis		r3,PIT_BASE_ADDR32@ha		# u8HwChannel=r3
.Llo21:
	e_add16i		r3,r3,PIT_BASE_ADDR32@l		# u8HwChannel=r3 u8HwChannel=r3
.Llo30:
	rlwinm		r5,r5,2,22,29		# u8ModuleIdx=r5 u8ModuleIdx=r5
.Llo31:
	lwzx		r3,r3,r5		# u8HwChannel=r3 u8HwChannel=r3
	lwz		r0,0(r3)		# bFreezeEnable=r0 u8HwChannel=r3
.Llo27:
	.diab.bseti		r0,31		# bFreezeEnable=r0
	stw		r0,0(r3)		# u8HwChannel=r3 bFreezeEnable=r0
	b		.L388
.L391:
#     }
#     else
#     {
#         /** @violates @ref GPT_PIT_C_REF_3 MISRA 2004 Rule 11.1, Cast from unsigned long to pointer*/
#         /** @violates @ref GPT_PIT_C_REF_8 Cast from unsigned long to pointer */
#         REG_BIT_CLEAR_LOCK32(PIT_BASE_ADDR32[u8ModuleIdx],PIT_MCR_LOCKABLE_ADDR32(u8ModuleIdx),PIT_MCR_FRZ_MASK_U32);
	.d2line		560
.Llo22:
	lis		r3,PIT_BASE_ADDR32@ha		# u8HwChannel=r3
.Llo23:
	e_add16i		r3,r3,PIT_BASE_ADDR32@l		# u8HwChannel=r3 u8HwChannel=r3
.Llo32:
	rlwinm		r5,r5,2,22,29		# u8ModuleIdx=r5 u8ModuleIdx=r5
.Llo33:
	lwzx		r3,r3,r5		# u8HwChannel=r3 u8HwChannel=r3
	lwz		r0,0(r3)		# bFreezeEnable=r0 u8HwChannel=r3
.Llo28:
	.diab.bclri		r0,31		# bFreezeEnable=r0
	stw		r0,0(r3)		# u8HwChannel=r3 bFreezeEnable=r0
.L388:
#     }
#     
#     return;
# }
	.d2line		564
	.d2epilogue_begin
.Llo24:
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# bFreezeEnable=r0
	mtspr		lr,r0		# bFreezeEnable=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L442:
	.type		Gpt_Pit_Init,@function
	.size		Gpt_Pit_Init,.-Gpt_Pit_Init
# Number of nodes = 144

# Allocations for Gpt_Pit_Init
#	?a4		u8HwChannel
#	?a5		bFreezeEnable
#	?a6		$$84
#	?a7		$$83
#	?a8		$$82
#	?a9		$$81
#	?a10		$$80
#	?a11		$$79
#	?a12		$$78
#	?a13		u8ModuleIdx
#	?a14		u8ChannelIdx
# FUNC(void, GPT_CODE) Gpt_Pit_DeInit(VAR(uint8, AUTOMATIC) u8HwChannel)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         582,22
#$$ld
.L453:

#$$bf	Gpt_Pit_DeInit,interprocedural,rasave,nostackparams
	.globl		Gpt_Pit_DeInit
	.d2_cfa_start __cie
Gpt_Pit_DeInit:
.Llo36:
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
#     VAR(uint8, AUTOMATIC) u8ModuleIdx  = (uint8)PIT_MODULE_INDEX_U32(u8HwChannel);
	.d2line		584
	rlwinm		r31,r3,27,29,31		# u8HwChannel=r3
.Llo46:
	mr		r31,r31		# u8ModuleIdx=r31 u8ModuleIdx=r31
#     VAR(uint8, AUTOMATIC) u8ChannelIdx = (uint8)PIT_CHANNEL_INDEX_U32(u8HwChannel);
	.d2line		585
	rlwinm		r30,r3,0,27,31		# u8ChannelIdx=r30 u8HwChannel=r3
	mr		r30,r30		# u8ChannelIdx=r30 u8ChannelIdx=r30
#     
#     /* Enable hardware module clock. This shall be be executed before any other setup is made */
#     if((uint32)0 == (uint32)PIT_CHANNEL_INDEX_U32((uint32)u8ChannelIdx))
	.d2line		588
	rlwinm		r0,r30,0,24,31		# u8ChannelIdx=r30
	e_andi.		r0,r0,31
	bc		0,2,.L398	# ne
#     {
#         /** @violates @ref GPT_PIT_C_REF_3 MISRA 2004 Rule 11.1, Cast from unsigned long to pointer*/
#         /** @violates @ref GPT_PIT_C_REF_8 Cast from unsigned long to pointer */
#         REG_BIT_SET_LOCK32(PIT_BASE_ADDR32[u8ModuleIdx],PIT_MCR_LOCKABLE_ADDR32(u8ModuleIdx),PIT_MCR_MDIS_RTI_MASK_U32);
	.d2line		592
.Llo37:
	lis		r3,PIT_BASE_ADDR32@ha		# u8HwChannel=r3
.Llo38:
	e_add16i		r3,r3,PIT_BASE_ADDR32@l		# u8HwChannel=r3 u8HwChannel=r3
	rlwinm		r0,r31,2,22,29		# u8ModuleIdx=r31
	lwzx		r3,r3,r0		# u8HwChannel=r3 u8HwChannel=r3
	lwz		r0,0(r3)		# u8HwChannel=r3
	.diab.bseti		r0,29
	stw		r0,0(r3)		# u8HwChannel=r3
	b		.L399
.L398:
#     }
#     else
#     {
#         /** @violates @ref GPT_PIT_C_REF_3 MISRA 2004 Rule 11.1, Cast from unsigned long to pointer*/
#         /** @violates @ref GPT_PIT_C_REF_8 Cast from unsigned long to pointer */
#         REG_BIT_SET_LOCK32(PIT_BASE_ADDR32[u8ModuleIdx],PIT_MCR_LOCKABLE_ADDR32(u8ModuleIdx),PIT_MCR_MDIS_MASK_U32);
	.d2line		598
.Llo39:
	lis		r3,PIT_BASE_ADDR32@ha		# u8HwChannel=r3
.Llo40:
	e_add16i		r3,r3,PIT_BASE_ADDR32@l		# u8HwChannel=r3 u8HwChannel=r3
	rlwinm		r0,r31,2,22,29		# u8ModuleIdx=r31
	lwzx		r3,r3,r0		# u8HwChannel=r3 u8HwChannel=r3
	lwz		r0,0(r3)		# u8HwChannel=r3
	.diab.bseti		r0,30
	stw		r0,0(r3)		# u8HwChannel=r3
.L399:
#     }
#     SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_11();
	.d2line		600
.Llo41:
	bl		SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_11
#     {
#         /* Reset Status and Control Register */
#         /** @violates @ref GPT_PIT_C_REF_3 MISRA 2004 Rule 11.1, Cast from unsigned long to pointer*/
#         /** @violates @ref GPT_PIT_C_REF_8 Cast from unsigned long to pointer */
#         REG_BIT_CLEAR_LOCK32(PIT_BASE_ADDR32[u8ModuleIdx],PIT_TCTRL_LOCKABLE_ADDR32(u8ModuleIdx,u8ChannelIdx),(uint32)PIT_TCTRL_TEN_MASK_U32);
	.d2line		605
	lis		r3,PIT_BASE_ADDR32@ha		# u8HwChannel=r3
.Llo42:
	e_add16i		r3,r3,PIT_BASE_ADDR32@l		# u8HwChannel=r3 u8HwChannel=r3
	rlwinm		r0,r31,2,22,29		# u8ModuleIdx=r31
	lwzx		r4,r3,r0		# u8HwChannel=r3
	rlwinm		r6,r30,4,20,27		# u8ChannelIdx=r30
	add		r30,r4,r6		# u8ChannelIdx=r30
	lwz		r4,248(r30)		# u8ChannelIdx=r30
	.diab.bclri		r4,31
	stw		r4,248(r30)		# u8ChannelIdx=r30
#         
#         /* Disable channel interrupts*/
#         /** @violates @ref GPT_PIT_C_REF_3 MISRA 2004 Rule 11.1, Cast from unsigned long to pointer*/
#         /** @violates @ref GPT_PIT_C_REF_8 Cast from unsigned long to pointer */
#         REG_BIT_CLEAR_LOCK32(PIT_BASE_ADDR32[u8ModuleIdx],PIT_TCTRL_LOCKABLE_ADDR32(u8ModuleIdx,u8ChannelIdx),(uint32)PIT_TCTRL_TIE_MASK_U32);
	.d2line		610
	lwzx		r30,r3,r0		# u8ChannelIdx=r30 u8HwChannel=r3
	se_add		r30,r6		# u8ChannelIdx=r30 u8ChannelIdx=r30
	lwz		r4,248(r30)		# u8ChannelIdx=r30
	.diab.bclri		r4,30
	stw		r4,248(r30)		# u8ChannelIdx=r30
#         
#         /* Clear Load Value Register */
#         /** @violates @ref GPT_PIT_C_REF_3 MISRA 2004 Rule 11.1, Cast from unsigned long to pointer*/
#         /** @violates @ref GPT_PIT_C_REF_8 Cast from unsigned long to pointer */
#         REG_WRITE_LOCK32(PIT_BASE_ADDR32[u8ModuleIdx],PIT_LDVAL_LOCKABLE_ADDR32(u8ModuleIdx,u8ChannelIdx), 0x0UL);
	.d2line		615
	diab.li		r4,0
	mr		r5,r3		# u8HwChannel=r5
	lwzux		r30,r5,r0		# u8ChannelIdx=r30 u8HwChannel=r5
	se_add		r30,r6		# u8ChannelIdx=r30 u8ChannelIdx=r30
	stw		r4,240(r30)		# u8ChannelIdx=r30
#         
#         /* Clear Interrupt Flag */
#         /** @violates @ref GPT_PIT_C_REF_3 MISRA 2004 Rule 11.1, Cast from unsigned long to pointer*/
#         /** @violates @ref GPT_PIT_C_REF_8 Cast from unsigned long to pointer */
#         REG_BIT_SET32(PIT_TFLG_ADDR32(u8ModuleIdx,u8ChannelIdx),PIT_TFLG_TIF_MASK_U32);
	.d2line		620
	lwzx		r0,r3,r0		# u8HwChannel=r3
	se_add		r6,r0
	lwz		r0,252(r6)
	.diab.bseti		r0,31
	stw		r0,252(r6)
#     }
#     SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_11();
	.d2line		622
	bl		SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_11
# 
#     /** @violates @ref GPT_PIT_C_REF_3 MISRA 2004 Rule 11.1, Cast from unsigned long to pointer*/
#     /** @violates @ref GPT_PIT_C_REF_8 Cast from unsigned long to pointer */
#     REG_BIT_CLEAR_LOCK32(PIT_BASE_ADDR32[u8ModuleIdx],PIT_MCR_LOCKABLE_ADDR32(u8ModuleIdx),PIT_MCR_FRZ_MASK_U32);
	.d2line		626
.Llo43:
	lis		r3,PIT_BASE_ADDR32@ha		# u8HwChannel=r3
.Llo44:
	e_add16i		r3,r3,PIT_BASE_ADDR32@l		# u8HwChannel=r3 u8HwChannel=r3
	rlwinm		r31,r31,2,22,29		# u8ModuleIdx=r31 u8ModuleIdx=r31
.Llo47:
	lwzx		r4,r3,r31		# u8HwChannel=r3
	lwz		r3,0(r4)		# u8HwChannel=r3
	.diab.bclri		r3,31		# u8HwChannel=r3
	stw		r3,0(r4)		# u8HwChannel=r3
# 
#     return;
# }
	.d2line		629
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo48:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo45:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L454:
	.type		Gpt_Pit_DeInit,@function
	.size		Gpt_Pit_DeInit,.-Gpt_Pit_DeInit
# Number of nodes = 132

# Allocations for Gpt_Pit_DeInit
#	?a4		u8HwChannel
#	?a5		$$90
#	?a6		$$89
#	?a7		$$88
#	?a8		$$87
#	?a9		$$86
#	?a10		$$85
#	?a11		u8ModuleIdx
#	?a12		u8ChannelIdx
# FUNC(void, GPT_CODE) Gpt_Pit_StartTimer(VAR(uint8, AUTOMATIC) u8HwChannel, VAR(uint32, AUTOMATIC) u32Value)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         648,22
#$$ld
.L463:

#$$bf	Gpt_Pit_StartTimer,interprocedural,rasave,nostackparams
	.globl		Gpt_Pit_StartTimer
	.d2_cfa_start __cie
Gpt_Pit_StartTimer:
.Llo49:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# u8HwChannel=r3 u8HwChannel=r3
	mr		r31,r4		# u32Value=r31 u32Value=r4
	.d2prologue_end
# {
# #ifdef GPT_PIT_RTI_USED
# #if (GPT_PIT_RTI_USED == STD_ON)
#     VAR(volatile uint32, AUTOMATIC) u32Timeout;
# #endif
# #endif
#     VAR(uint8, AUTOMATIC) u8ModuleIdx  = (uint8)PIT_MODULE_INDEX_U32(u8HwChannel);
	.d2line		655
.Llo53:
	rlwinm		r30,r3,27,29,31		# u8ModuleIdx=r30 u8HwChannel=r3
.Llo54:
	mr		r30,r30		# u8ModuleIdx=r30 u8ModuleIdx=r30
#     VAR(uint8, AUTOMATIC) u8ChannelIdx = (uint8)PIT_CHANNEL_INDEX_U32(u8HwChannel);
	.d2line		656
	rlwinm		r3,r3,0,27,31		# u8HwChannel=r3 u8HwChannel=r3
.Llo50:
	mr		r29,r3		# u8ChannelIdx=r29 u8ChannelIdx=r3
#     
#     SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_12();
	.d2line		658
	bl		SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_12
#     {
#         /** @violates @ref GPT_PIT_C_REF_3 MISRA 2004 Rule 11.1, Cast from unsigned long to pointer*/
#         /** @violates @ref GPT_PIT_C_REF_8 Cast from unsigned long to pointer */
#         REG_BIT_CLEAR_LOCK32(PIT_BASE_ADDR32[u8ModuleIdx],PIT_TCTRL_LOCKABLE_ADDR32(u8ModuleIdx,u8ChannelIdx),(uint32)PIT_TCTRL_TEN_MASK_U32);
	.d2line		662
	lis		r3,PIT_BASE_ADDR32@ha		# u8HwChannel=r3
.Llo51:
	e_add16i		r3,r3,PIT_BASE_ADDR32@l		# u8HwChannel=r3 u8HwChannel=r3
	rlwinm		r30,r30,2,22,29		# u8ModuleIdx=r30 u8ModuleIdx=r30
.Llo56:
	lwzx		r0,r3,r30		# u8HwChannel=r3
	rlwinm		r4,r29,4,20,27		# u8ChannelIdx=r29
	add		r29,r0,r4		# u8ChannelIdx=r29
	lwz		r0,248(r29)		# u8ChannelIdx=r29
	.diab.bclri		r0,31
	stw		r0,248(r29)		# u8ChannelIdx=r29
#         
#         /** @violates @ref GPT_PIT_C_REF_3 MISRA 2004 Rule 11.1, Cast from unsigned long to pointer*/
#         /** @violates @ref GPT_PIT_C_REF_8 Cast from unsigned long to pointer */
#         REG_WRITE_LOCK32(PIT_BASE_ADDR32[u8ModuleIdx],PIT_LDVAL_LOCKABLE_ADDR32(u8ModuleIdx,u8ChannelIdx), u32Value);
	.d2line		666
	mr		r5,r3		# u8HwChannel=r5
	lwzux		r29,r5,r30		# u8ChannelIdx=r29 u8HwChannel=r5
	se_add		r29,r4		# u8ChannelIdx=r29 u8ChannelIdx=r29
	stw		r31,240(r29)		# u8ChannelIdx=r29 u32Value=r31
# 
# #ifdef GPT_PIT_RTI_USED
# #if (GPT_PIT_RTI_USED == STD_ON)
#     if (((uint8)PIT_0_CH_RTI == u8HwChannel) || ((uint8)PIT_1_CH_RTI == u8HwChannel))
#     {
#         u32Timeout = (uint32)GPT_TIMEOUT_COUNTER;
#         /** @violates @ref GPT_PIT_C_REF_3 MISRA 2004 Rule 11.1, Cast from unsigned long to pointer*/
#         /** @violates @ref GPT_PIT_C_REF_8 Cast from unsigned long to pointer */
#         while ((u32Value != REG_READ32(PIT_LDVAL_LOCKABLE_ADDR32(u8ModuleIdx,u8ChannelIdx))) && (u32Timeout > 0UL))
#         {
#             u32Timeout--;
#         }
#         if (0UL == u32Timeout)
#         {
#         #if (GPT_DISABLE_DEM_REPORT_ERROR_STATUS == STD_OFF)
#             if((uint32)STD_ON == Gpt_E_TimeoutCfg.state)
#             {
#                 /* Report production error and return from function. */
#                 Dem_ReportErrorStatus((Dem_EventIdType)Gpt_E_TimeoutCfg.id, DEM_EVENT_STATUS_FAILED);
#             }
#         #endif /* (GPT_DISABLE_DEM_REPORT_ERROR_STATUS == STD_OFF) */
#             
#             SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_12();
#             /** @violates @ref GPT_PIT_C_REF_9 Return statement before end of function. */
#             return;
#         }
#     }
# #endif
# #endif
# 
#         /** @violates @ref GPT_PIT_C_REF_3 MISRA 2004 Rule 11.1, Cast from unsigned long to pointer*/
#         /** @violates @ref GPT_PIT_C_REF_8 Cast from unsigned long to pointer */
#         REG_BIT_SET_LOCK32(PIT_BASE_ADDR32[u8ModuleIdx],PIT_TCTRL_LOCKABLE_ADDR32(u8ModuleIdx,u8ChannelIdx),(uint32)PIT_TCTRL_TEN_MASK_U32);
	.d2line		699
	lwzx		r0,r3,r30		# u8HwChannel=r3
	se_add		r4,r0
	lwz		r0,248(r4)
	.diab.bseti		r0,31
	stw		r0,248(r4)
#     }
#     SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_12();
	.d2line		701
	bl		SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_12
#     
#     return;
# }
	.d2line		704
	.d2epilogue_begin
.Llo52:
	lmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	3,10
.Llo55:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L464:
	.type		Gpt_Pit_StartTimer,@function
	.size		Gpt_Pit_StartTimer,.-Gpt_Pit_StartTimer
# Number of nodes = 74

# Allocations for Gpt_Pit_StartTimer
#	?a4		u8HwChannel
#	?a5		u32Value
#	?a6		$$92
#	?a7		$$91
#	?a8		u8ModuleIdx
#	?a9		u8ChannelIdx
# FUNC(void, GPT_CODE) Gpt_Pit_StopTimer(VAR(uint8, AUTOMATIC) u8HwChannel)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         743,22
#$$ld
.L474:

#$$bf	Gpt_Pit_StopTimer,interprocedural,rasave,nostackparams
	.globl		Gpt_Pit_StopTimer
	.d2_cfa_start __cie
Gpt_Pit_StopTimer:
.Llo57:
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
#     VAR(uint8, AUTOMATIC) u8ModuleIdx  = (uint8)PIT_MODULE_INDEX_U32(u8HwChannel);
	.d2line		745
	rlwinm		r31,r3,27,29,31		# u8ModuleIdx=r31 u8HwChannel=r3
.Llo61:
	mr		r31,r31		# u8ModuleIdx=r31 u8ModuleIdx=r31
#     VAR(uint8, AUTOMATIC) u8ChannelIdx = (uint8)PIT_CHANNEL_INDEX_U32(u8HwChannel);
	.d2line		746
	rlwinm		r30,r3,0,27,31		# u8ChannelIdx=r30 u8HwChannel=r3
	mr		r30,r30		# u8ChannelIdx=r30 u8ChannelIdx=r30
# 
#     SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_13();
	.d2line		748
	bl		SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_13
#     {
#         /** @violates @ref GPT_PIT_C_REF_3 MISRA 2004 Rule 11.1, Cast from unsigned long to pointer*/
#         /** @violates @ref GPT_PIT_C_REF_8 Cast from unsigned long to pointer */
#         REG_BIT_CLEAR_LOCK32(PIT_BASE_ADDR32[u8ModuleIdx],PIT_TCTRL_LOCKABLE_ADDR32(u8ModuleIdx,u8ChannelIdx),(uint32)PIT_TCTRL_TEN_MASK_U32);
	.d2line		752
.Llo58:
	lis		r3,PIT_BASE_ADDR32@ha		# u8HwChannel=r3
.Llo59:
	e_add16i		r3,r3,PIT_BASE_ADDR32@l		# u8HwChannel=r3 u8HwChannel=r3
	rlwinm		r31,r31,2,22,29		# u8ModuleIdx=r31 u8ModuleIdx=r31
.Llo62:
	lwzx		r0,r3,r31		# u8HwChannel=r3
	rlwinm		r4,r30,4,20,27		# u8ChannelIdx=r30
	add		r30,r0,r4		# u8ChannelIdx=r30
	lwz		r0,248(r30)		# u8ChannelIdx=r30
	.diab.bclri		r0,31
	stw		r0,248(r30)		# u8ChannelIdx=r30
#         /** @violates @ref GPT_PIT_C_REF_3 MISRA 2004 Rule 11.1, Cast from unsigned long to pointer*/
#         /** @violates @ref GPT_PIT_C_REF_8 Cast from unsigned long to pointer */
#         REG_BIT_SET32(PIT_TFLG_ADDR32(u8ModuleIdx,u8ChannelIdx),PIT_TFLG_TIF_MASK_U32);
	.d2line		755
	lwzx		r0,r3,r31		# u8HwChannel=r3
	se_add		r4,r0
	lwz		r0,252(r4)
	.diab.bseti		r0,31
	stw		r0,252(r4)
#     }
#     SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_13();
	.d2line		757
	bl		SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_13
#     
#     return;
# }
	.d2line		760
	.d2epilogue_begin
.Llo60:
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo63:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L475:
	.type		Gpt_Pit_StopTimer,@function
	.size		Gpt_Pit_StopTimer,.-Gpt_Pit_StopTimer
# Number of nodes = 56

# Allocations for Gpt_Pit_StopTimer
#	?a4		u8HwChannel
#	?a5		$$94
#	?a6		$$93
#	?a7		u8ModuleIdx
#	?a8		u8ChannelIdx
# FUNC(uint32, GPT_CODE) Gpt_Pit_GetTimeElapsed(VAR(uint8, AUTOMATIC) u8HwChannel,
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         780,24
#$$ld
.L484:

#$$bf	Gpt_Pit_GetTimeElapsed,interprocedural,rasave,nostackparams
	.globl		Gpt_Pit_GetTimeElapsed
	.d2_cfa_start __cie
Gpt_Pit_GetTimeElapsed:
.Llo64:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# u8HwChannel=r3 u8HwChannel=r3
	mr		r31,r4		# pbReturnChannelRollover=r31 pbReturnChannelRollover=r4
	mr		r5,r5		# pu32TargetValue=r5 pu32TargetValue=r5
	.d2prologue_end
#                                               P2VAR(boolean, AUTOMATIC, GPT_APPL_DATA) pbReturnChannelRollover,
#                                               P2VAR(uint32, AUTOMATIC, GPT_APPL_DATA) pu32TargetValue
#                                              )
# {
#     VAR(uint8, AUTOMATIC) u8ModuleIdx  = (uint8)PIT_MODULE_INDEX_U32(u8HwChannel);
	.d2line		785
	rlwinm		r30,r3,27,29,31		# u32Flag=r30 u8HwChannel=r3
.Llo73:
	mr		r30,r30		# u8ModuleIdx=r30 u8ModuleIdx=r30
#     VAR(uint8, AUTOMATIC) u8ChannelIdx = (uint8)PIT_CHANNEL_INDEX_U32(u8HwChannel);
	.d2line		786
	rlwinm		r3,r3,0,27,31		# u8HwChannel=r3 u8HwChannel=r3
.Llo65:
	mr		r29,r3		# u8ChannelIdx=r29 u8ChannelIdx=r3
#     
#     VAR(uint32, AUTOMATIC)  u32ReturnValue;
#     VAR(uint32, AUTOMATIC)  u32Flag;
#     
#     /** @violates @ref GPT_PIT_C_REF_3 MISRA 2004 Rule 11.1, Cast from unsigned long to pointer*/
#     /** @violates @ref GPT_PIT_C_REF_8 Cast from unsigned long to pointer */
#     *pu32TargetValue = REG_READ32(PIT_LDVAL_LOCKABLE_ADDR32(u8ModuleIdx,u8ChannelIdx));
	.d2line		793
.Llo77:
	lis		r3,PIT_BASE_ADDR32@ha		# u8HwChannel=r3
.Llo66:
	e_add16i		r3,r3,PIT_BASE_ADDR32@l		# u8HwChannel=r3 u8HwChannel=r3
	rlwinm		r0,r30,2,22,29		# u8ModuleIdx=r30
	lwzx		r4,r3,r0		# u8HwChannel=r3
.Llo70:
	rlwinm		r6,r29,4,20,27		# u8ChannelIdx=r29
	se_add		r4,r6
	lwz		r4,240(r4)
	stw		r4,0(r5)		# pu32TargetValue=r5
#     
#     /** @violates @ref GPT_PIT_C_REF_3 MISRA 2004 Rule 11.1, Cast from unsigned long to pointer*/
#     /** @violates @ref GPT_PIT_C_REF_8 Cast from unsigned long to pointer */
#     u32ReturnValue = *pu32TargetValue - REG_READ32(PIT_CVAL_LOCKABLE_ADDR32(u8ModuleIdx,u8ChannelIdx));
	.d2line		797
	lwzx		r0,r3,r0		# u8HwChannel=r3
	se_add		r6,r0
	lwz		r28,244(r6)
	subf		r28,r28,r4
.Llo78:
	mr		r28,r28		# u32ReturnValue=r28 u32ReturnValue=r28
#     
#     SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_14();
	.d2line		799
	bl		SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_14
#     {
#         /*Check interrupt status flag*/
#         /** @violates @ref GPT_PIT_C_REF_3 MISRA 2004 Rule 11.1, Cast from unsigned long to pointer*/
#         /** @violates @ref GPT_PIT_C_REF_8 Cast from unsigned long to pointer */
#         u32Flag = (uint32)(REG_BIT_GET32(PIT_TFLG_ADDR32(u8ModuleIdx,u8ChannelIdx),PIT_TFLG_TIF_MASK_U32));
	.d2line		804
.Llo67:
	lis		r3,PIT_BASE_ADDR32@ha		# u8HwChannel=r3
.Llo68:
	e_add16i		r3,r3,PIT_BASE_ADDR32@l		# u8HwChannel=r3 u8HwChannel=r3
	rlwinm		r30,r30,2,22,29		# u8ModuleIdx=r30 u8ModuleIdx=r30
.Llo74:
	lwzx		r0,r3,r30		# u8HwChannel=r3
	rlwinm		r29,r29,4,20,27		# u8ChannelIdx=r29 u8ChannelIdx=r29
	se_add		r29,r0		# u8ChannelIdx=r29 u8ChannelIdx=r29
	lwz		r30,252(r29)		# u8ModuleIdx=r30 u8ChannelIdx=r29
.Llo75:
	rlwinm		r30,r30,0,31,31		# u8ModuleIdx=r30 u8ModuleIdx=r30
.Llo76:
	mr		r30,r30		# u32Flag=r30 u32Flag=r30
#     }
#     SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_14();
	.d2line		806
	bl		SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_14
#     
#     if (u32Flag != 0U)
	.d2line		808
.Llo69:
	se_cmpi		r30,0		# u32Flag=r30
	bc		1,2,.L405	# eq
#     {
#         /* Channel counter was roll-over */
#         *pbReturnChannelRollover = (boolean)TRUE;
	.d2line		811
.Llo71:
	diab.li		r0,1
	stb		r0,0(r31)		# pbReturnChannelRollover=r31
	b		.L406
.L405:
#     }
#     else
#     {
#         /* Channel counter was not roll-over */
#         *pbReturnChannelRollover = (boolean)FALSE;
	.d2line		816
	diab.li		r0,0
	stb		r0,0(r31)		# pbReturnChannelRollover=r31
.L406:
#     }
#     
#     return u32ReturnValue;
	.d2line		819
.Llo72:
	mr		r3,r28		# u32ReturnValue=r3 u32ReturnValue=r28
# }
	.d2line		820
	.d2epilogue_begin
	lmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_restore_list	3,10
.Llo79:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L485:
	.type		Gpt_Pit_GetTimeElapsed,@function
	.size		Gpt_Pit_GetTimeElapsed,.-Gpt_Pit_GetTimeElapsed
# Number of nodes = 94

# Allocations for Gpt_Pit_GetTimeElapsed
#	?a4		u8HwChannel
#	?a5		pbReturnChannelRollover
#	?a6		pu32TargetValue
#	?a7		u8ModuleIdx
#	?a8		u8ChannelIdx
#	?a9		u32ReturnValue
#	?a10		u32Flag
# FUNC(void, GPT_CODE) Gpt_Pit_EnableInterrupt(VAR(uint8, AUTOMATIC) u8HwChannel)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         831,22
#$$ld
.L502:

#$$bf	Gpt_Pit_EnableInterrupt,interprocedural,rasave,nostackparams
	.globl		Gpt_Pit_EnableInterrupt
	.d2_cfa_start __cie
Gpt_Pit_EnableInterrupt:
.Llo80:
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
#     VAR(uint8, AUTOMATIC) u8ModuleIdx  = (uint8)PIT_MODULE_INDEX_U32(u8HwChannel);
	.d2line		833
	rlwinm		r31,r3,27,29,31		# u8ModuleIdx=r31 u8HwChannel=r3
.Llo84:
	mr		r31,r31		# u8ModuleIdx=r31 u8ModuleIdx=r31
#     VAR(uint8, AUTOMATIC) u8ChannelIdx = (uint8)PIT_CHANNEL_INDEX_U32(u8HwChannel);
	.d2line		834
	rlwinm		r30,r3,0,27,31		# u8ChannelIdx=r30 u8HwChannel=r3
	mr		r30,r30		# u8ChannelIdx=r30 u8ChannelIdx=r30
#     
#     SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_15();
	.d2line		836
	bl		SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_15
#     {
#         /** @violates @ref GPT_PIT_C_REF_3 MISRA 2004 Rule 11.1, Cast from unsigned long to pointer*/
#         /** @violates @ref GPT_PIT_C_REF_8 Cast from unsigned long to pointer */
#         REG_BIT_SET32(PIT_TFLG_ADDR32(u8ModuleIdx,u8ChannelIdx),PIT_TFLG_TIF_MASK_U32);
	.d2line		840
.Llo81:
	lis		r3,PIT_BASE_ADDR32@ha		# u8HwChannel=r3
.Llo82:
	e_add16i		r3,r3,PIT_BASE_ADDR32@l		# u8HwChannel=r3 u8HwChannel=r3
	rlwinm		r31,r31,2,22,29		# u8ModuleIdx=r31 u8ModuleIdx=r31
.Llo85:
	lwzx		r0,r3,r31		# u8HwChannel=r3
	rlwinm		r4,r30,4,20,27		# u8ChannelIdx=r30
	add		r30,r0,r4		# u8ChannelIdx=r30
	lwz		r0,252(r30)		# u8ChannelIdx=r30
	.diab.bseti		r0,31
	stw		r0,252(r30)		# u8ChannelIdx=r30
#         
#         /** @violates @ref GPT_PIT_C_REF_3 MISRA 2004 Rule 11.1, Cast from unsigned long to pointer*/
#         /** @violates @ref GPT_PIT_C_REF_8 Cast from unsigned long to pointer */
#         REG_BIT_SET_LOCK32(PIT_BASE_ADDR32[u8ModuleIdx],PIT_TCTRL_LOCKABLE_ADDR32(u8ModuleIdx,u8ChannelIdx),(uint32)PIT_TCTRL_TIE_MASK_U32);
	.d2line		844
	lwzx		r0,r3,r31		# u8HwChannel=r3
	se_add		r4,r0
	lwz		r0,248(r4)
	.diab.bseti		r0,30
	stw		r0,248(r4)
#     }
#     SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_15();
	.d2line		846
	bl		SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_15
#     
#     return;
# }
	.d2line		849
	.d2epilogue_begin
.Llo83:
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo86:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L503:
	.type		Gpt_Pit_EnableInterrupt,@function
	.size		Gpt_Pit_EnableInterrupt,.-Gpt_Pit_EnableInterrupt
# Number of nodes = 56

# Allocations for Gpt_Pit_EnableInterrupt
#	?a4		u8HwChannel
#	?a5		$$96
#	?a6		$$95
#	?a7		u8ModuleIdx
#	?a8		u8ChannelIdx
# FUNC(void, GPT_CODE) Gpt_Pit_DisableInterrupt(VAR(uint8, AUTOMATIC) u8HwChannel)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         861,22
#$$ld
.L512:

#$$bf	Gpt_Pit_DisableInterrupt,interprocedural,rasave,nostackparams
	.globl		Gpt_Pit_DisableInterrupt
	.d2_cfa_start __cie
Gpt_Pit_DisableInterrupt:
.Llo87:
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
#     VAR(uint8, AUTOMATIC) u8ModuleIdx  = (uint8)PIT_MODULE_INDEX_U32(u8HwChannel);
	.d2line		863
	rlwinm		r31,r3,27,29,31		# u8ModuleIdx=r31 u8HwChannel=r3
.Llo91:
	mr		r31,r31		# u8ModuleIdx=r31 u8ModuleIdx=r31
#     VAR(uint8, AUTOMATIC) u8ChannelIdx = (uint8)PIT_CHANNEL_INDEX_U32(u8HwChannel);
	.d2line		864
	rlwinm		r30,r3,0,27,31		# u8ChannelIdx=r30 u8HwChannel=r3
	mr		r30,r30		# u8ChannelIdx=r30 u8ChannelIdx=r30
#     
#     SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_16();
	.d2line		866
	bl		SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_16
#     {
#         /** @violates @ref GPT_PIT_C_REF_3 MISRA 2004 Rule 11.1, Cast from unsigned long to pointer*/
#         /** @violates @ref GPT_PIT_C_REF_8 Cast from unsigned long to pointer */
#         REG_BIT_CLEAR_LOCK32(PIT_BASE_ADDR32[u8ModuleIdx],PIT_TCTRL_LOCKABLE_ADDR32(u8ModuleIdx,u8ChannelIdx),(uint32)PIT_TCTRL_TIE_MASK_U32);
	.d2line		870
.Llo88:
	lis		r3,PIT_BASE_ADDR32@ha		# u8HwChannel=r3
.Llo89:
	e_add16i		r3,r3,PIT_BASE_ADDR32@l		# u8HwChannel=r3 u8HwChannel=r3
	rlwinm		r31,r31,2,22,29		# u8ModuleIdx=r31 u8ModuleIdx=r31
.Llo92:
	lwzx		r0,r3,r31		# u8HwChannel=r3
	rlwinm		r4,r30,4,20,27		# u8ChannelIdx=r30
	add		r30,r0,r4		# u8ChannelIdx=r30
	lwz		r0,248(r30)		# u8ChannelIdx=r30
	.diab.bclri		r0,30
	stw		r0,248(r30)		# u8ChannelIdx=r30
#         
#         /** @violates @ref GPT_PIT_C_REF_3 MISRA 2004 Rule 11.1, Cast from unsigned long to pointer*/
#         /** @violates @ref GPT_PIT_C_REF_8 Cast from unsigned long to pointer */
#         REG_BIT_SET32(PIT_TFLG_ADDR32(u8ModuleIdx,u8ChannelIdx),PIT_TFLG_TIF_MASK_U32);
	.d2line		874
	lwzx		r0,r3,r31		# u8HwChannel=r3
	se_add		r4,r0
	lwz		r0,252(r4)
	.diab.bseti		r0,31
	stw		r0,252(r4)
#     }
#     SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_16();
	.d2line		876
	bl		SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_16
# }
	.d2line		877
	.d2epilogue_begin
.Llo90:
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo93:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L513:
	.type		Gpt_Pit_DisableInterrupt,@function
	.size		Gpt_Pit_DisableInterrupt,.-Gpt_Pit_DisableInterrupt
# Number of nodes = 56

# Allocations for Gpt_Pit_DisableInterrupt
#	?a4		u8HwChannel
#	?a5		$$98
#	?a6		$$97
#	?a7		u8ModuleIdx
#	?a8		u8ChannelIdx
# ISR(Gpt_PIT_0_TIMER_7_ISR)
	.section	.Os_PUBLIC_TEXT,,c
	.align		2
	.section	.debug_line.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_line
.L527:
	.section	.Os_PUBLIC_TEXT,,c
#$$ld
.L523:
	.0byte		.L521
	.d2_line_start	.debug_line.Os_PUBLIC_TEXT
	.section	.Os_PUBLIC_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Gpt\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Gpt_Pit.c"
        .d2line         1099,1
#$$ld
.L530:

#$$bf	OS_ISR_Gpt_PIT_0_TIMER_7_ISR,interprocedural,rasave,nostackparams
	.globl		OS_ISR_Gpt_PIT_0_TIMER_7_ISR
	.d2_cfa_start __cie
OS_ISR_Gpt_PIT_0_TIMER_7_ISR:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     Gpt_Pit_ProcessCommonInterrupt((uint8)PIT_0_CH_7);
	.d2line		1101
	diab.li		r3,8
	bl		Gpt_Pit_ProcessCommonInterrupt
#     /** @violates @ref GPT_PIT_IRQ_C_REF_3 MISRA 2004 Rule 11.1, Cast from unsigned long to pointer*/
#     EXIT_INTERRUPT();
# 
# }
	.d2line		1105
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
.L531:
	.type		OS_ISR_Gpt_PIT_0_TIMER_7_ISR,@function
	.size		OS_ISR_Gpt_PIT_0_TIMER_7_ISR,.-OS_ISR_Gpt_PIT_0_TIMER_7_ISR
# Number of nodes = 4

# Allocations for OS_ISR_Gpt_PIT_0_TIMER_7_ISR

# Allocations for module
	.section	.mcal_const,,r
	.0byte		.L534
	.section	.mcal_const,,r
	.type		PIT_BASE_ADDR32,@object
	.size		PIT_BASE_ADDR32,8
	.align		2
	.globl		PIT_BASE_ADDR32
PIT_BASE_ADDR32:
	.long		-507904
	.long		-524288
	.section	.text_vle
#$$ld
.L5:
.L535:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Gpt\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Gpt_Pit.c"
	.d2_line_end
	.section	.invalid_TEXT,,c
#$$ld
.L416:
.L424:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Gpt\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Gpt_Pit.c"
	.d2_line_end
	.section	.Os_PUBLIC_TEXT,,c
#$$ld
.L524:
.L532:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Gpt\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Gpt_Pit.c"
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
	.uleb128	8
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
	.uleb128	9
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	10
	.uleb128	15
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	11
	.uleb128	38
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	12
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	13
	.uleb128	33
	.byte		0x0
	.uleb128	47
	.uleb128	15
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Gpt\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Gpt_Pit.c"
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
.L413:
	.4byte		.L414-.L412
.L412:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L418-.L413
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Gpt\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Gpt_Pit.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L415
	.4byte		.L416
	.4byte		.L419
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L425:
	.sleb128	2
	.4byte		.L421-.L413
	.byte		"Gpt_Pit_ProcessCommonInterrupt"
	.byte		0
	.4byte		.L424
	.uleb128	448
	.uleb128	29
	.byte		0x1
	.4byte		.L422
	.4byte		.L423
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L424
	.uleb128	448
	.uleb128	29
	.byte		"u8HwChannel"
	.byte		0
	.4byte		.L426
	.4byte		.L428
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L429:
	.sleb128	4
	.4byte		.L424
	.uleb128	450
	.uleb128	27
	.byte		"u32Temp1"
	.byte		0
	.4byte		.L430
	.4byte		.L432
.L433:
	.sleb128	4
	.4byte		.L424
	.uleb128	451
	.uleb128	27
	.byte		"u32Temp2"
	.byte		0
	.4byte		.L430
	.4byte		.L434
.L435:
	.sleb128	4
	.4byte		.L424
	.uleb128	452
	.uleb128	27
	.byte		"u8ModuleIdx"
	.byte		0
	.4byte		.L426
	.4byte		.L436
.L437:
	.sleb128	4
	.4byte		.L424
	.uleb128	453
	.uleb128	27
	.byte		"u8ChannelIdx"
	.byte		0
	.4byte		.L426
	.4byte		.L438
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L421:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L443:
	.sleb128	5
	.4byte		.L440-.L413
	.byte		"Gpt_Pit_Init"
	.byte		0
	.4byte		.L424
	.uleb128	502
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L441
	.4byte		.L442
	.sleb128	3
	.4byte		.L424
	.uleb128	502
	.uleb128	22
	.byte		"u8HwChannel"
	.byte		0
	.4byte		.L426
	.4byte		.L444
	.sleb128	3
	.4byte		.L424
	.uleb128	502
	.uleb128	22
	.byte		"bFreezeEnable"
	.byte		0
	.4byte		.L445
	.4byte		.L446
.L447:
	.sleb128	4
	.4byte		.L424
	.uleb128	504
	.uleb128	27
	.byte		"u8ModuleIdx"
	.byte		0
	.4byte		.L426
	.4byte		.L448
.L449:
	.sleb128	4
	.4byte		.L424
	.uleb128	505
	.uleb128	27
	.byte		"u8ChannelIdx"
	.byte		0
	.4byte		.L426
	.4byte		.L450
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L440:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L455:
	.sleb128	5
	.4byte		.L452-.L413
	.byte		"Gpt_Pit_DeInit"
	.byte		0
	.4byte		.L424
	.uleb128	582
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L453
	.4byte		.L454
	.sleb128	3
	.4byte		.L424
	.uleb128	582
	.uleb128	22
	.byte		"u8HwChannel"
	.byte		0
	.4byte		.L426
	.4byte		.L456
.L457:
	.sleb128	4
	.4byte		.L424
	.uleb128	584
	.uleb128	27
	.byte		"u8ModuleIdx"
	.byte		0
	.4byte		.L426
	.4byte		.L458
.L459:
	.sleb128	4
	.4byte		.L424
	.uleb128	585
	.uleb128	27
	.byte		"u8ChannelIdx"
	.byte		0
	.4byte		.L426
	.4byte		.L460
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L452:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L465:
	.sleb128	5
	.4byte		.L462-.L413
	.byte		"Gpt_Pit_StartTimer"
	.byte		0
	.4byte		.L424
	.uleb128	648
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L463
	.4byte		.L464
	.sleb128	3
	.4byte		.L424
	.uleb128	648
	.uleb128	22
	.byte		"u8HwChannel"
	.byte		0
	.4byte		.L426
	.4byte		.L466
	.sleb128	3
	.4byte		.L424
	.uleb128	648
	.uleb128	22
	.byte		"u32Value"
	.byte		0
	.4byte		.L430
	.4byte		.L467
.L468:
	.sleb128	4
	.4byte		.L424
	.uleb128	655
	.uleb128	27
	.byte		"u8ModuleIdx"
	.byte		0
	.4byte		.L426
	.4byte		.L469
.L470:
	.sleb128	4
	.4byte		.L424
	.uleb128	656
	.uleb128	27
	.byte		"u8ChannelIdx"
	.byte		0
	.4byte		.L426
	.4byte		.L471
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L462:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L476:
	.sleb128	5
	.4byte		.L473-.L413
	.byte		"Gpt_Pit_StopTimer"
	.byte		0
	.4byte		.L424
	.uleb128	743
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L474
	.4byte		.L475
	.sleb128	3
	.4byte		.L424
	.uleb128	743
	.uleb128	22
	.byte		"u8HwChannel"
	.byte		0
	.4byte		.L426
	.4byte		.L477
.L478:
	.sleb128	4
	.4byte		.L424
	.uleb128	745
	.uleb128	27
	.byte		"u8ModuleIdx"
	.byte		0
	.4byte		.L426
	.4byte		.L479
.L480:
	.sleb128	4
	.4byte		.L424
	.uleb128	746
	.uleb128	27
	.byte		"u8ChannelIdx"
	.byte		0
	.4byte		.L426
	.4byte		.L481
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L473:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L486:
	.sleb128	6
	.4byte		.L483-.L413
	.byte		"Gpt_Pit_GetTimeElapsed"
	.byte		0
	.4byte		.L424
	.uleb128	780
	.uleb128	24
	.4byte		.L430
	.byte		0x1
	.byte		0x1
	.4byte		.L484
	.4byte		.L485
	.sleb128	3
	.4byte		.L424
	.uleb128	780
	.uleb128	24
	.byte		"u8HwChannel"
	.byte		0
	.4byte		.L426
	.4byte		.L487
	.sleb128	3
	.4byte		.L424
	.uleb128	780
	.uleb128	24
	.byte		"pbReturnChannelRollover"
	.byte		0
	.4byte		.L488
	.4byte		.L489
	.sleb128	3
	.4byte		.L424
	.uleb128	780
	.uleb128	24
	.byte		"pu32TargetValue"
	.byte		0
	.4byte		.L490
	.4byte		.L491
.L492:
	.sleb128	4
	.4byte		.L424
	.uleb128	785
	.uleb128	27
	.byte		"u8ModuleIdx"
	.byte		0
	.4byte		.L426
	.4byte		.L493
.L494:
	.sleb128	4
	.4byte		.L424
	.uleb128	786
	.uleb128	27
	.byte		"u8ChannelIdx"
	.byte		0
	.4byte		.L426
	.4byte		.L495
.L496:
	.sleb128	4
	.4byte		.L424
	.uleb128	788
	.uleb128	29
	.byte		"u32ReturnValue"
	.byte		0
	.4byte		.L430
	.4byte		.L497
.L498:
	.sleb128	4
	.4byte		.L424
	.uleb128	789
	.uleb128	29
	.byte		"u32Flag"
	.byte		0
	.4byte		.L430
	.4byte		.L499
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L483:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L504:
	.sleb128	5
	.4byte		.L501-.L413
	.byte		"Gpt_Pit_EnableInterrupt"
	.byte		0
	.4byte		.L424
	.uleb128	831
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L502
	.4byte		.L503
	.sleb128	3
	.4byte		.L424
	.uleb128	831
	.uleb128	22
	.byte		"u8HwChannel"
	.byte		0
	.4byte		.L426
	.4byte		.L505
.L506:
	.sleb128	4
	.4byte		.L424
	.uleb128	833
	.uleb128	27
	.byte		"u8ModuleIdx"
	.byte		0
	.4byte		.L426
	.4byte		.L507
.L508:
	.sleb128	4
	.4byte		.L424
	.uleb128	834
	.uleb128	27
	.byte		"u8ChannelIdx"
	.byte		0
	.4byte		.L426
	.4byte		.L509
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L501:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L514:
	.sleb128	5
	.4byte		.L511-.L413
	.byte		"Gpt_Pit_DisableInterrupt"
	.byte		0
	.4byte		.L424
	.uleb128	861
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L512
	.4byte		.L513
	.sleb128	3
	.4byte		.L424
	.uleb128	861
	.uleb128	22
	.byte		"u8HwChannel"
	.byte		0
	.4byte		.L426
	.4byte		.L515
.L516:
	.sleb128	4
	.4byte		.L424
	.uleb128	863
	.uleb128	27
	.byte		"u8ModuleIdx"
	.byte		0
	.4byte		.L426
	.4byte		.L517
.L518:
	.sleb128	4
	.4byte		.L424
	.uleb128	864
	.uleb128	27
	.byte		"u8ChannelIdx"
	.byte		0
	.4byte		.L426
	.4byte		.L519
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L511:
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
.L521:
	.4byte		.L522-.L520
.L520:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L526-.L521
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Gpt\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Gpt_Pit.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L523
	.4byte		.L524
	.4byte		.L527
.L533:
	.sleb128	5
	.4byte		.L529-.L521
	.byte		"OS_ISR_Gpt_PIT_0_TIMER_7_ISR"
	.byte		0
	.4byte		.L532
	.uleb128	1099
	.uleb128	1
	.byte		0x1
	.byte		0x1
	.4byte		.L530
	.4byte		.L531
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L529:
	.section	.debug_info,,n
.L534:
	.sleb128	7
	.byte		0x1
	.4byte		.L535
	.uleb128	241
	.uleb128	26
	.byte		"PIT_BASE_ADDR32"
	.byte		0
	.4byte		.L536
	.sleb128	5
	.byte		0x3
	.4byte		PIT_BASE_ADDR32
	.section	.debug_info,,n
	.section	.debug_info,,n
.L427:
	.sleb128	8
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L426:
	.sleb128	9
	.byte		"uint8"
	.byte		0
	.4byte		.L427
.L431:
	.sleb128	8
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L430:
	.sleb128	9
	.byte		"uint32"
	.byte		0
	.4byte		.L431
.L445:
	.sleb128	9
	.byte		"boolean"
	.byte		0
	.4byte		.L427
	.section	.debug_info,,n
.L488:
	.sleb128	10
	.4byte		.L445
.L490:
	.sleb128	10
	.4byte		.L430
	.section	.debug_info,,n
.L538:
	.sleb128	11
	.4byte		.L430
	.section	.debug_info,,n
.L536:
	.sleb128	12
	.4byte		.L537-.L2
	.4byte		.L538
	.section	.debug_info,,n
	.sleb128	13
	.uleb128	1
	.sleb128	0
.L537:
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L418:
	.sleb128	0
.L414:
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
.L526:
	.sleb128	0
.L522:

	.section	.debug_loc,,n
	.align	0
.L428:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),31
	.d2locend
.L432:
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo3),30
	.d2locend
.L434:
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo7),29
	.d2locend
.L436:
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo4),28
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),28
	.d2locend
.L438:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo4),27
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo12),27
	.d2locend
.L444:
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo14),3
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo16),3
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo18),3
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo20),3
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo22),3
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo24),3
	.d2locend
.L446:
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo25),4
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo18),0
	.d2locreg	%offsetof(.Llo26), %offsetof(.Llo20),0
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo22),0
	.d2locreg	%offsetof(.Llo28), %offsetof(.Llo24),0
	.d2locend
.L448:
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo20),5
	.d2locreg	%offsetof(.Llo30), %offsetof(.Llo31),5
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo33),5
	.d2locend
.L450:
	.d2locreg	%offsetof(.Llo34), %offsetof(.Llo14),3
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo18),31
	.d2locreg	%offsetof(.Llo35), %offsetof(.Llo20),31
	.d2locend
.L456:
	.d2locreg	%offsetof(.Llo36), %offsetof(.Llo37),3
	.d2locreg	%offsetof(.Llo38), %offsetof(.Llo39),3
	.d2locreg	%offsetof(.Llo40), %offsetof(.Llo41),3
	.d2locreg	%offsetof(.Llo42), %offsetof(.Llo43),3
	.d2locreg	%offsetof(.Llo44), %offsetof(.Llo45),3
	.d2locend
.L458:
	.d2locreg	%offsetof(.Llo46), %offsetof(.Llo47),31
	.d2locend
.L460:
	.d2locreg	%offsetof(.Llo36), %offsetof(.Llo48),30
	.d2locend
.L466:
	.d2locreg	%offsetof(.Llo49), %offsetof(.Llo50),3
	.d2locreg	%offsetof(.Llo51), %offsetof(.Llo52),3
	.d2locend
.L467:
	.d2locreg	%offsetof(.Llo49), %offsetof(.Llo53),4
	.d2locreg	%offsetof(.Llo54), %offsetof(.Llo55),31
	.d2locend
.L469:
	.d2locreg	%offsetof(.Llo54), %offsetof(.Llo56),30
	.d2locend
.L471:
	.d2locreg	%offsetof(.Llo49), %offsetof(.Llo55),29
	.d2locend
.L477:
	.d2locreg	%offsetof(.Llo57), %offsetof(.Llo58),3
	.d2locreg	%offsetof(.Llo59), %offsetof(.Llo60),3
	.d2locend
.L479:
	.d2locreg	%offsetof(.Llo61), %offsetof(.Llo62),31
	.d2locend
.L481:
	.d2locreg	%offsetof(.Llo57), %offsetof(.Llo63),30
	.d2locend
.L487:
	.d2locreg	%offsetof(.Llo64), %offsetof(.Llo65),3
	.d2locreg	%offsetof(.Llo66), %offsetof(.Llo67),3
	.d2locreg	%offsetof(.Llo68), %offsetof(.Llo69),3
	.d2locend
.L489:
	.d2locreg	%offsetof(.Llo64), %offsetof(.Llo70),4
	.d2locreg	%offsetof(.Llo71), %offsetof(.Llo72),31
	.d2locend
.L491:
	.d2locreg	%offsetof(.Llo64), %offsetof(.Llo67),5
	.d2locend
.L493:
	.d2locreg	%offsetof(.Llo73), %offsetof(.Llo74),30
	.d2locreg	%offsetof(.Llo75), %offsetof(.Llo76),30
	.d2locend
.L495:
	.d2locreg	%offsetof(.Llo65), %offsetof(.Llo77),3
	.d2locreg	%offsetof(.Llo66), %offsetof(.Llo71),29
	.d2locend
.L497:
	.d2locreg	%offsetof(.Llo78), %offsetof(.Llo79),28
	.d2locend
.L499:
	.d2locreg	%offsetof(.Llo76), %offsetof(.Llo71),30
	.d2locend
.L505:
	.d2locreg	%offsetof(.Llo80), %offsetof(.Llo81),3
	.d2locreg	%offsetof(.Llo82), %offsetof(.Llo83),3
	.d2locend
.L507:
	.d2locreg	%offsetof(.Llo84), %offsetof(.Llo85),31
	.d2locend
.L509:
	.d2locreg	%offsetof(.Llo80), %offsetof(.Llo86),30
	.d2locend
.L515:
	.d2locreg	%offsetof(.Llo87), %offsetof(.Llo88),3
	.d2locreg	%offsetof(.Llo89), %offsetof(.Llo90),3
	.d2locend
.L517:
	.d2locreg	%offsetof(.Llo91), %offsetof(.Llo92),31
	.d2locend
.L519:
	.d2locreg	%offsetof(.Llo87), %offsetof(.Llo93),30
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "OS_ISR_Gpt_PIT_0_TIMER_7_ISR"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Gpt_Pit_ProcessCommonInterrupt"
	.wrcm.end
	.wrcm.nelem "Gpt_Pit_DisableInterrupt"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_16","SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_16"
	.wrcm.end
	.wrcm.nelem "Gpt_Pit_EnableInterrupt"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_15","SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_15"
	.wrcm.end
	.wrcm.nelem "Gpt_Pit_GetTimeElapsed"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_14","SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_14"
	.wrcm.end
	.wrcm.nelem "Gpt_Pit_StopTimer"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_13","SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_13"
	.wrcm.end
	.wrcm.nelem "Gpt_Pit_StartTimer"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_12","SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_12"
	.wrcm.end
	.wrcm.nelem "Gpt_Pit_DeInit"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_11","SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_11"
	.wrcm.end
	.wrcm.nelem "Gpt_Pit_Init"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Gpt_Pit_ProcessCommonInterrupt"
	.wrcm.nint32 "frameSize", 48
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "Gpt_ProcessCommonInterrupt","SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_10","SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_10"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Gpt_Pit.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Gpt_Pit.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Gpt_Pit.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Gpt_Pit.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Gpt_Pit.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Gpt_Pit.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\MCAL\MPC5746R\Gpt\ssc\make\..\..\generator\integration_package\src\Gpt_Pit.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
