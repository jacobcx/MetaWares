#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Icu_Siul2.c"
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
# LOCAL_INLINE FUNC (void, ICU_CODE) Icu_Siul2_EnableInterrupt(VAR(uint32, AUTOMATIC) u32ChannelMask)
	.section	.invalid_TEXT,,c
	.align		1
	.section	.debug_line.invalid_TEXT,,n
	.sectionlink	.debug_line
.L490:
	.section	.invalid_TEXT,,c
#$$ld
.L486:
	.0byte		.L484
	.d2_line_start	.debug_line.invalid_TEXT
	.section	.invalid_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Icu\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Icu_Siul2.c"
        .d2line         273,36
#$$ld
.L493:

#$$bf	Icu_Siul2_EnableInterrupt,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Icu_Siul2_EnableInterrupt:
.Llo1:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# u32ChannelMask=r31 u32ChannelMask=r3
	.d2prologue_end
# {
#     SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_28();
	.d2line		275
.Llo2:
	bl		SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_28
#     {
#         /* Enable interrupt */
#         /** @violates @ref Icu_SIUL2_c_REF_4 Violates MISRA 2004 Rule 11.1, Cast from unsigned long to pointer.*/
#         /** @violates @ref Icu_SIUL2_c_REF_8 Violates MISRA 2004 Rule 11.3, Cast from pointer type and integral type.*/
#         REG_BIT_SET32(ICU_SIUL2_DIRER0_LOCKABLE_ADDR32, u32ChannelMask);
	.d2line		280
.Llo3:
	diab.li		r3,-262144
	lwz		r0,24(r3)
	or		r0,r0,r31		# u32ChannelMask=r31
	stw		r0,24(r3)
# 
#         /* Clear pending flag */
#         /** @violates @ref Icu_SIUL2_c_REF_4 Violates MISRA 2004 Rule 11.1, Cast from unsigned long to pointer.*/
#         /** @violates @ref Icu_SIUL2_c_REF_8 Violates MISRA 2004 Rule 11.3, Cast from pointer type and integral type.*/
#         REG_WRITE32(ICU_SIUL2_DISR0_ADDR32, u32ChannelMask);
	.d2line		285
	stw		r31,16(r3)		# u32ChannelMask=r31
#     }
#     SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_28();
	.d2line		287
	bl		SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_28
# }
	.d2line		288
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo4:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L494:
	.type		Icu_Siul2_EnableInterrupt,@function
	.size		Icu_Siul2_EnableInterrupt,.-Icu_Siul2_EnableInterrupt
# Number of nodes = 12

# Allocations for Icu_Siul2_EnableInterrupt
#	?a4		u32ChannelMask
# LOCAL_INLINE FUNC (void, ICU_CODE) Icu_Siul2_DisableInterrupt(VAR(uint32, AUTOMATIC) u32ChannelMask)
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         301,36
#$$ld
.L502:

#$$bf	Icu_Siul2_DisableInterrupt,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Icu_Siul2_DisableInterrupt:
.Llo5:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# u32ChannelMask=r31 u32ChannelMask=r3
	.d2prologue_end
# {
#     SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_27();
	.d2line		303
.Llo6:
	bl		SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_27
#     {
#         /* Disable interrupt */
#         /** @violates @ref Icu_SIUL2_c_REF_4 Violates MISRA 2004 Rule 11.1, Cast from unsigned long to pointer.*/
#         /** @violates @ref Icu_SIUL2_c_REF_8 Violates MISRA 2004 Rule 11.3, Cast from pointer type and integral type.*/
#         REG_BIT_CLEAR32(ICU_SIUL2_DIRER0_LOCKABLE_ADDR32, u32ChannelMask);
	.d2line		308
.Llo7:
	diab.li		r3,-262144
	lwz		r0,24(r3)
	andc		r0,r0,r31		# u32ChannelMask=r31
	stw		r0,24(r3)
# 
#         /* Clear pending flag */
#         /** @violates @ref Icu_SIUL2_c_REF_4 Violates MISRA 2004 Rule 11.1, Cast from unsigned long to pointer.*/
#         /** @violates @ref Icu_SIUL2_c_REF_8 Violates MISRA 2004 Rule 11.3, Cast from pointer type and integral type.*/
#         REG_WRITE32(ICU_SIUL2_DISR0_ADDR32, u32ChannelMask);
	.d2line		313
	stw		r31,16(r3)		# u32ChannelMask=r31
#     }
#     SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_27();
	.d2line		315
	bl		SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_27
# }
	.d2line		316
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo8:
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
	.type		Icu_Siul2_DisableInterrupt,@function
	.size		Icu_Siul2_DisableInterrupt,.-Icu_Siul2_DisableInterrupt
# Number of nodes = 13

# Allocations for Icu_Siul2_DisableInterrupt
#	?a4		u32ChannelMask
# FUNC(boolean, ICU_CODE) Icu_Siul2_GetChInit(CONST(Icu_Siul2_ChannelType, AUTOMATIC) HwChannel)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         352,25
#$$ld
.L508:

#$$bf	Icu_Siul2_GetChInit,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,cr0,lr
	.globl		Icu_Siul2_GetChInit
	.d2_cfa_start __cie
Icu_Siul2_GetChInit:
.Llo9:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r4,r3		# HwChannel=r4 HwChannel=r3
	.d2prologue_end
# {
#     return ((Icu_Siul2_u32ChInit  & (BIT0 << HwChannel)) == (BIT0 << HwChannel)) ? \
	.d2line		354
	lis		r3,Icu_Siul2_u32ChInit@ha
.Llo10:
	lwz		r0,Icu_Siul2_u32ChInit@l(r3)
	diab.li		r3,1
.Llo11:
	slw		r4,r3,r4		# HwChannel=r4 HwChannel=r4
	and		r0,r0,r4		# HwChannel=r4
	se_cmpl		r0,r4		# HwChannel=r4
	isel		r3,r3,r0,2
.L447:
.Llo12:
	diab.li		r0,0
	isel		r3,r3,r0,2
.L448:
	rlwinm		r3,r3,0,24,31
#                                            (boolean)TRUE : (boolean)FALSE;
# }
	.d2line		356
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
.L509:
	.type		Icu_Siul2_GetChInit,@function
	.size		Icu_Siul2_GetChInit,.-Icu_Siul2_GetChInit
# Number of nodes = 20

# Allocations for Icu_Siul2_GetChInit
#	?a4		HwChannel
#	?a5		$$113
# FUNC (void, ICU_CODE) Icu_Siul2_SetActivationCondition
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         600,23
#$$ld
.L519:

#$$bf	Icu_Siul2_SetActivationCondition,interprocedural,rasave,nostackparams
	.globl		Icu_Siul2_SetActivationCondition
	.d2_cfa_start __cie
Icu_Siul2_SetActivationCondition:
.Llo13:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# HwChannel=r3 HwChannel=r3
	mr		r30,r4		# Activation=r30 Activation=r4
	.d2prologue_end
# (
#     VAR(Icu_Siul2_ChannelType, AUTOMATIC) HwChannel,
#     VAR(Icu_Siul2_ActivationType, AUTOMATIC) Activation
# )
# {
#     CONST(uint32, ICU_CONST) u32ChannelMask = ICU_SIUL2_CHANNEL_MASK_U32((uint32)HwChannel);
	.d2line		606
.Llo21:
	diab.li		r31,1
.Llo22:
	slw		r31,r31,r3		# HwChannel=r3
.Llo24:
	mr		r31,r31		# u32ChannelMask=r31 u32ChannelMask=r31
# 
#     SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_26();
	.d2line		608
	bl		SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_26
#     {
#         switch (Activation)
	.d2line		610
.Llo14:
	mr.		r6,r30		# Activation=r6 Activation=?a5
	bc		1,2,.L472	# eq
.Llo23:
	se_cmpi		r6,1
	bc		1,2,.L470	# eq
	b		.L473
.L470:
#         {
#             case SIUL2_RISING_EDGE:
#             {
#                 /** @violates @ref Icu_SIUL2_c_REF_4 Violates MISRA 2004 Rule 11.1, Cast from unsigned long to pointer.*/
#                 /** @violates @ref Icu_SIUL2_c_REF_8 Violates MISRA 2004 Rule 11.3, Cast from pointer type and integral type.*/
#                 REG_BIT_SET32(ICU_SIUL2_IREER0_LOCKABLE_ADDR32, u32ChannelMask);
	.d2line		616
	diab.li		r3,-262144		# HwChannel=r3
.Llo15:
	lwz		r0,40(r3)		# HwChannel=r3
	or		r0,r0,r31		# u32ChannelMask=r31
	stw		r0,40(r3)		# HwChannel=r3
#                 /** @violates @ref Icu_SIUL2_c_REF_4 Violates MISRA 2004 Rule 11.1, Cast from unsigned long to pointer.*/
#                 /** @violates @ref Icu_SIUL2_c_REF_8 Violates MISRA 2004 Rule 11.3, Cast from pointer type and integral type.*/
#                 REG_BIT_CLEAR32(ICU_SIUL2_IFEER0_LOCKABLE_ADDR32, u32ChannelMask);
	.d2line		619
	lwz		r0,48(r3)		# HwChannel=r3
	andc		r0,r0,r31		# u32ChannelMask=r31
	stw		r0,48(r3)		# HwChannel=r3
	b		.L471
.L472:
#             }
#             break;
# 
#             case SIUL2_FALLING_EDGE:
#             {
#                 /** @violates @ref Icu_SIUL2_c_REF_4 Violates MISRA 2004 Rule 11.1, Cast from unsigned long to pointer.*/
#                 /** @violates @ref Icu_SIUL2_c_REF_8 Violates MISRA 2004 Rule 11.3, Cast from pointer type and integral type.*/
#                 REG_BIT_CLEAR32(ICU_SIUL2_IREER0_LOCKABLE_ADDR32, u32ChannelMask);
	.d2line		627
.Llo16:
	diab.li		r3,-262144		# HwChannel=r3
.Llo17:
	lwz		r0,40(r3)		# HwChannel=r3
	andc		r0,r0,r31		# u32ChannelMask=r31
	stw		r0,40(r3)		# HwChannel=r3
#                 /** @violates @ref Icu_SIUL2_c_REF_4 Violates MISRA 2004 Rule 11.1, Cast from unsigned long to pointer.*/
#                 /** @violates @ref Icu_SIUL2_c_REF_8 Violates MISRA 2004 Rule 11.3, Cast from pointer type and integral type.*/
#                 REG_BIT_SET32(ICU_SIUL2_IFEER0_LOCKABLE_ADDR32, u32ChannelMask);
	.d2line		630
	lwz		r0,48(r3)		# HwChannel=r3
	or		r0,r0,r31		# u32ChannelMask=r31
	stw		r0,48(r3)		# HwChannel=r3
	b		.L471
.L473:
#             }
#             break;
# 
#             default:
#             {
#                 /** @violates @ref Icu_SIUL2_c_REF_4 Violates MISRA 2004 Rule 11.1, Cast from unsigned long to pointer.*/
#                 /** @violates @ref Icu_SIUL2_c_REF_8 Violates MISRA 2004 Rule 11.3, Cast from pointer type and integral type.*/
#                 REG_BIT_SET32(ICU_SIUL2_IREER0_LOCKABLE_ADDR32, u32ChannelMask);
	.d2line		638
.Llo18:
	diab.li		r3,-262144		# HwChannel=r3
.Llo19:
	lwz		r0,40(r3)		# HwChannel=r3
	or		r0,r0,r31		# u32ChannelMask=r31
	stw		r0,40(r3)		# HwChannel=r3
#                 /** @violates @ref Icu_SIUL2_c_REF_4 Violates MISRA 2004 Rule 11.1, Cast from unsigned long to pointer.*/
#                 /** @violates @ref Icu_SIUL2_c_REF_8 Violates MISRA 2004 Rule 11.3, Cast from pointer type and integral type.*/
#                 REG_BIT_SET32(ICU_SIUL2_IFEER0_LOCKABLE_ADDR32, u32ChannelMask);
	.d2line		641
	lwz		r0,48(r3)		# HwChannel=r3
	or		r0,r0,r31		# u32ChannelMask=r31
	stw		r0,48(r3)		# HwChannel=r3
.L471:
#             }
#             break;
#         }
#     }
#     SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_26();
	.d2line		646
.Llo20:
	bl		SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_26
# }
	.d2line		647
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
.L520:
	.type		Icu_Siul2_SetActivationCondition,@function
	.size		Icu_Siul2_SetActivationCondition,.-Icu_Siul2_SetActivationCondition
# Number of nodes = 42

# Allocations for Icu_Siul2_SetActivationCondition
#	?a4		HwChannel
#	?a5		Activation
#	?a6		u32ChannelMask
# FUNC (void, ICU_CODE) Icu_Siul2_Init
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         398,23
#$$ld
.L531:

#$$bf	Icu_Siul2_Init,interprocedural,rasave,nostackparams
	.globl		Icu_Siul2_Init
	.d2_cfa_start __cie
Icu_Siul2_Init:
.Llo25:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr
.Llo40:
	stmw		r26,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	26,31,1,1
	stw		r0,52(r1)		# nGlobalConfig=r0
	.d2_cfa_offset    108,-1
	mr		r31,r3		# pSiul2IpConfig=r31 pSiul2IpConfig=r3
	.d2prologue_end
# (
#     P2CONST(Icu_Siul2_IpConfigType,      AUTOMATIC, ICU_APPL_CONST) pSiul2IpConfig
# )
# {
#     /* @brief Pointer to Siul2 channel specific configuration */
#     P2CONST(Icu_Siul2_ChannelConfigType,AUTOMATIC,ICU_APPL_CONST) pSiul2ChannelConfig;
# 
#     VAR(Icu_Siul2_ControlType, AUTOMATIC)   nCtrlRegVal;
#     /* logical channel */
#     VAR(Icu_Siul2_ChannelType, AUTOMATIC)   nCounter;
#     VAR(Icu_Siul2_ChannelType, AUTOMATIC)   HwChannel;
#     VAR(uint32,                AUTOMATIC)   u32ChannelMask;
#     
#     VAR(Icu_Siul2_GlobalConfigurationType, AUTOMATIC) nGlobalConfig;
#     nGlobalConfig = pSiul2IpConfig->Icu_GlobalConfiguration;
	.d2line		413
	lhz		r0,2(r31)		# nGlobalConfig=r0 pSiul2IpConfig=r31
	mr		r0,r0		# nGlobalConfig=r0 nGlobalConfig=r0
# 
#     /* Enable register access from user mode, if enabled from configuration file */
# #ifdef ICU_ENABLE_USER_MODE_SUPPORT
# #if (ICU_ENABLE_USER_MODE_SUPPORT == STD_ON)
#     /** 
#     * @violates @ref Icu_SIUL2_c_REF_6 Violates MISRA 2004 Rule 12.10, The comma operator is needed for implementing some functionalities
#     * @violates @ref Icu_SIUL2_c_REF_7 Violates MISRA 2004 Rule 16.10, The return value of this function is not an error
#     */
#     Mcal_Trusted_Call(Icu_Siul2_SetUserAccessAllowed,());
# #endif /* (ICU_ENABLE_USER_MODE_SUPPORT == STD_ON) */
# #endif /* ICU_ENABLE_USER_MODE_SUPPORT */
# 
#     /** @violates @ref Icu_SIUL2_c_REF_4 Violates MISRA 2004 Rule 11.1, Cast from unsigned long to pointer.*/
#     /** @violates @ref Icu_SIUL2_c_REF_8 Violates MISRA 2004 Rule 11.3, Cast from pointer type and integral type.*/
#     REG_WRITE32(ICU_SIUL2_IFCPR_LOCKABLE_ADDR32, (uint32)((nGlobalConfig & ICU_SIUL2_INT_FILTER_COUNTER_PARAM_MASK) >> \
	.d2line		428
	rlwinm		r0,r0,0,28,31		# nGlobalConfig=r0 nGlobalConfig=r0
	diab.li		r3,-262144
.Llo26:
	stw		r0,192(r3)		# nGlobalConfig=r0
#                                                                      ICU_SIUL2_INT_FILTER_COUNTER_PARAM_SHIFT));
# 
#     for (nCounter=0U; nCounter < pSiul2IpConfig->nNumChannels; nCounter++)
	.d2line		431
	diab.li		r28,0		# nCounter=r28
.L452:
.Llo27:
	rlwinm		r0,r28,0,24,31		# nGlobalConfig=r0 nCounter=r28
.Llo41:
	lbz		r3,0(r31)		# HwChannel=r3 pSiul2IpConfig=r31
.Llo32:
	se_cmp		r0,r3		# nGlobalConfig=r0 HwChannel=r3
	bc		0,0,.L451	# ge
#     {
#         /* only handle SIUL2 channels */
#         pSiul2ChannelConfig = &(*pSiul2IpConfig->pChannelsConfig)[nCounter];
	.d2line		434
.Llo33:
	rlwinm		r0,r28,0,24,31		# nGlobalConfig=r0 nCounter=r28
.Llo42:
	lwz		r30,4(r31)		# pSiul2ChannelConfig=r30 pSiul2IpConfig=r31
.Llo29:
	rlwinm		r3,r0,3,0,28		# HwChannel=r3 nGlobalConfig=r0
.Llo34:
	se_slwi		r0,1		# nGlobalConfig=r0 nGlobalConfig=r0
	subf		r0,r0,r3		# nGlobalConfig=r0 nGlobalConfig=r0 HwChannel=r3
	se_add		r0,r30		# nGlobalConfig=r0 nGlobalConfig=r0 pSiul2ChannelConfig=r30
.Llo43:
	mr		r30,r0		# pSiul2ChannelConfig=r30 pSiul2ChannelConfig=r0
#         nCtrlRegVal  = pSiul2ChannelConfig->nControlValue;
	.d2line		435
	lhz		r29,2(r30)		# nCtrlRegVal=r29 pSiul2ChannelConfig=r30
.Llo30:
	mr		r29,r29		# nCtrlRegVal=r29 nCtrlRegVal=r29
#         u32ChannelMask = (uint32)0U;
	.d2line		436
	diab.li		r0,0		# u32ChannelMask=r0
#         HwChannel = (Icu_Siul2_ChannelType)ICU_IRQ_CHANNELS(pSiul2ChannelConfig->nHwChannel);
	.d2line		437
	lbz		r27,0(r30)		# HwChannel=r27 pSiul2ChannelConfig=r30
	diab.addi		r27,r27,192		# HwChannel=r27 HwChannel=r27
# 
#         u32ChannelMask = ICU_SIUL2_CHANNEL_MASK_U32((uint32)HwChannel);
	.d2line		439
	diab.li		r26,1		# u32ChannelMask=r26
.Llo37:
	slw		r26,r26,r27		# u32ChannelMask=r26 u32ChannelMask=r26 HwChannel=r27
	mr		r26,r26		# u32ChannelMask=r26 u32ChannelMask=r26
# 
#         /* Disable IRQ Interrupt */
#         Icu_Siul2_DisableInterrupt(u32ChannelMask);
	.d2line		442
	mr		r3,r26		# u32ChannelMask=r3 u32ChannelMask=r26
.Llo35:
	bl		Icu_Siul2_DisableInterrupt
# 
#         /* Set Interrupt Filter Enable Register */
#         if (ICU_SIUL2_INT_FILTER_ENABLE == ((nCtrlRegVal & ICU_SIUL2_INT_FILTER_ENABLE_PARAM_MASK) >> 
	.d2line		445
	rlwinm		r0,r29,0,16,31		# u32ChannelMask=r0 nCtrlRegVal=r29
	se_btsti		r0,27		# u32ChannelMask=r0
	bc		1,2,.L455	# eq
#                                         ICU_SIUL2_INT_FILTER_ENABLE_PARAM_SHIFT
#                                        )
#            )
#         {
#             /* Set Interrupt Filter Clock Prescaler Register */
#             /** @violates @ref Icu_SIUL2_c_REF_4 Violates MISRA 2004 Rule 11.1, Cast from unsigned long to pointer.*/
#             /** @violates @ref Icu_SIUL2_c_REF_8 Violates MISRA 2004 Rule 11.3, Cast from pointer type and integral type.*/
#             REG_WRITE32(ICU_SIUL2_IFMCR_LOCKABLE_ADDR32((uint32)((uint32)HwChannel << (uint32)2U)),\
	.d2line		453
.Llo36:
	rlwinm		r29,r29,0,28,31		# nCtrlRegVal=r29 nCtrlRegVal=r29
	rlwinm		r0,r27,2,22,29		# u32ChannelMask=r0 HwChannel=r27
	diab.li		r3,64		# u32ChannelMask=r3
	e_add2is		r3,-4		# u32ChannelMask=r3
	stwx		r29,r3,r0		# u32ChannelMask=r3 nCtrlRegVal=r29
#                         (uint32)((nCtrlRegVal & ICU_SIUL2_INT_FILTER_COUNTER_PARAM_MASK) >> \
#                         ICU_SIUL2_INT_FILTER_COUNTER_PARAM_SHIFT) \
#                        );
# 
#             /** @violates @ref Icu_SIUL2_c_REF_4 Violates MISRA 2004 Rule 11.1, Cast from unsigned long to pointer.*/
#             /** @violates @ref Icu_SIUL2_c_REF_8 Violates MISRA 2004 Rule 11.3, Cast from pointer type and integral type.*/
#             REG_BIT_SET32(ICU_SIUL2_IFER0_LOCKABLE_ADDR32, u32ChannelMask);
	.d2line		460
	diab.li		r3,-262144		# u32ChannelMask=r3
	lwz		r0,56(r3)		# u32ChannelMask=r0 u32ChannelMask=r3
	or		r0,r0,r26		# u32ChannelMask=r0 u32ChannelMask=r0 u32ChannelMask=r26
	stw		r0,56(r3)		# u32ChannelMask=r3 u32ChannelMask=r0
	b		.L456
.L455:
#         }
#         else
#         {
#             /** @violates @ref Icu_SIUL2_c_REF_4 Violates MISRA 2004 Rule 11.1, Cast from unsigned long to pointer.*/
#             /** @violates @ref Icu_SIUL2_c_REF_8 Violates MISRA 2004 Rule 11.3, Cast from pointer type and integral type.*/
#             REG_BIT_CLEAR32(ICU_SIUL2_IFER0_LOCKABLE_ADDR32, u32ChannelMask);
	.d2line		466
	diab.li		r3,-262144		# u32ChannelMask=r3
	lwz		r0,56(r3)		# u32ChannelMask=r0 u32ChannelMask=r3
	andc		r0,r0,r26		# u32ChannelMask=r0 u32ChannelMask=r0 u32ChannelMask=r26
	stw		r0,56(r3)		# u32ChannelMask=r3 u32ChannelMask=r0
.L456:
#         }
# 
# 
#         /* Set Activation Condition */
#         Icu_Siul2_SetActivationCondition 
	.d2line		471
.Llo31:
	lbz		r4,4(r30)		# pSiul2ChannelConfig=r30
	mr		r3,r27		# HwChannel=r3 HwChannel=r27
	bl		Icu_Siul2_SetActivationCondition
#         (
#             HwChannel, 
#             (Icu_Siul2_ActivationType)(pSiul2ChannelConfig->nDefaultStartEdge)
#         );
# 
#         Icu_Siul2_u32ChInit |= (uint32) (BIT0 << HwChannel);
	.d2line		477
	lis		r3,Icu_Siul2_u32ChInit@ha		# HwChannel=r3
	lwz		r3,Icu_Siul2_u32ChInit@l(r3)		# HwChannel=r3 HwChannel=r3
	diab.li		r0,1		# u32ChannelMask=r0
.Llo38:
	slw		r0,r0,r27		# u32ChannelMask=r0 u32ChannelMask=r0 HwChannel=r27
	or		r0,r0,r3		# u32ChannelMask=r0 u32ChannelMask=r0 HwChannel=r3
	lis		r3,Icu_Siul2_u32ChInit@ha		# HwChannel=r3
	e_add16i		r3,r3,Icu_Siul2_u32ChInit@l		# HwChannel=r3 HwChannel=r3
	stw		r0,0(r3)		# HwChannel=r3 u32ChannelMask=r0
#     }
	.d2line		478
	diab.addi		r0,r28,1		# u32ChannelMask=r0 nCounter=r28
.Llo39:
	se_addi		r28,1		# nCounter=r28 nCounter=r28
	b		.L452
.L451:
# }
	.d2line		479
	.d2epilogue_begin
.Llo28:
	lmw		r26,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	2,10
	lwz		r0,52(r1)		# nGlobalConfig=r0
	mtspr		lr,r0		# nGlobalConfig=lr
	diab.addi		r1,r1,48		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L532:
	.type		Icu_Siul2_Init,@function
	.size		Icu_Siul2_Init,.-Icu_Siul2_Init
# Number of nodes = 108

# Allocations for Icu_Siul2_Init
#	?a4		pSiul2IpConfig
#	?a5		$$114
#	?a6		pSiul2ChannelConfig
#	?a7		nCtrlRegVal
#	?a8		nCounter
#	?a9		HwChannel
#	?a10		u32ChannelMask
#	?a11		nGlobalConfig
# FUNC (void, ICU_CODE) Icu_Siul2_DeInit
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         498,23
#$$ld
.L561:

#$$bf	Icu_Siul2_DeInit,interprocedural,rasave,nostackparams
	.globl		Icu_Siul2_DeInit
	.d2_cfa_start __cie
Icu_Siul2_DeInit:
.Llo44:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# pSiul2IpConfig=r31 pSiul2IpConfig=r3
	.d2prologue_end
# (
#     P2CONST(Icu_Siul2_IpConfigType,      AUTOMATIC, ICU_APPL_CONST) pSiul2IpConfig
# )
# {
#     /* @brief Pointer to Siul2 channel specific configuration */
#     P2CONST(Icu_Siul2_ChannelConfigType,AUTOMATIC,ICU_APPL_CONST) pSiul2ChannelConfig;
# 
#     /* logical channel */
#     VAR(Icu_Siul2_ChannelType, AUTOMATIC)   nCounter;
#     VAR(Icu_Siul2_ChannelType, AUTOMATIC)   HwChannel;
#     VAR(uint32,                AUTOMATIC)   u32ChannelMask;
#     
#     for (nCounter=0U; nCounter < pSiul2IpConfig->nNumChannels; nCounter++)
	.d2line		511
	diab.li		r30,0		# nCounter=r30
.L462:
.Llo45:
	rlwinm		r0,r30,0,24,31		# u32ChannelMask=r0 nCounter=r30
.Llo46:
	lbz		r3,0(r31)		# pSiul2ChannelConfig=r3 pSiul2IpConfig=r31
.Llo48:
	se_cmp		r0,r3		# u32ChannelMask=r0 pSiul2ChannelConfig=r3
	bc		0,0,.L464	# ge
#     {
#         /* only handle SIUL2 channels */
#         pSiul2ChannelConfig = &(*pSiul2IpConfig->pChannelsConfig)[nCounter];
	.d2line		514
.Llo49:
	rlwinm		r0,r30,0,24,31		# u32ChannelMask=r0 nCounter=r30
.Llo56:
	lwz		r3,4(r31)		# pSiul2ChannelConfig=r3 pSiul2IpConfig=r31
.Llo50:
	rlwinm		r4,r0,3,0,28		# u32ChannelMask=r0
	se_slwi		r0,1		# u32ChannelMask=r0 u32ChannelMask=r0
	subf		r0,r0,r4		# u32ChannelMask=r0 u32ChannelMask=r0
	se_add		r0,r3		# u32ChannelMask=r0 u32ChannelMask=r0 pSiul2ChannelConfig=r3
.Llo57:
	mr		r3,r0		# pSiul2ChannelConfig=r3 pSiul2ChannelConfig=r0
#         u32ChannelMask = (uint32)0U;
	.d2line		515
	diab.li		r0,0		# u32ChannelMask=r0
#         HwChannel = (Icu_Siul2_ChannelType)ICU_IRQ_CHANNELS(pSiul2ChannelConfig->nHwChannel);
	.d2line		516
	lbz		r28,0(r3)		# HwChannel=r28 pSiul2ChannelConfig=r3
.Llo55:
	diab.addi		r28,r28,192		# HwChannel=r28 HwChannel=r28
#         u32ChannelMask = ICU_SIUL2_CHANNEL_MASK_U32((uint32)HwChannel);
	.d2line		517
	diab.li		r29,1		# u32ChannelMask=r29
.Llo58:
	slw		r29,r29,r28		# u32ChannelMask=r29 u32ChannelMask=r29 HwChannel=r28
	mr		r29,r29		# u32ChannelMask=r29 u32ChannelMask=r29
# 
#         /* Disable IRQ Interrupt */
#         Icu_Siul2_DisableInterrupt(u32ChannelMask);
	.d2line		520
	mr		r3,r29		# u32ChannelMask=r3 u32ChannelMask=r29
.Llo51:
	bl		Icu_Siul2_DisableInterrupt
#         /* Clear edge event enable registers */
#         /** @violates @ref Icu_SIUL2_c_REF_4 Violates MISRA 2004 Rule 11.1, Cast from unsigned long to pointer.*/
#         /** @violates @ref Icu_SIUL2_c_REF_8 Violates MISRA 2004 Rule 11.3, Cast from pointer type and integral type.*/
#         REG_BIT_CLEAR32(ICU_SIUL2_IREER0_LOCKABLE_ADDR32, u32ChannelMask);
	.d2line		524
	diab.li		r3,-262144		# pSiul2ChannelConfig=r3
.Llo52:
	lwz		r0,40(r3)		# u32ChannelMask=r0 pSiul2ChannelConfig=r3
	andc		r0,r0,r29		# u32ChannelMask=r0 u32ChannelMask=r0 u32ChannelMask=r29
	stw		r0,40(r3)		# pSiul2ChannelConfig=r3 u32ChannelMask=r0
#         /** @violates @ref Icu_SIUL2_c_REF_4 Violates MISRA 2004 Rule 11.1, Cast from unsigned long to pointer.*/
#         /** @violates @ref Icu_SIUL2_c_REF_8 Violates MISRA 2004 Rule 11.3, Cast from pointer type and integral type.*/
#         REG_BIT_CLEAR32(ICU_SIUL2_IFEER0_LOCKABLE_ADDR32, u32ChannelMask);
	.d2line		527
	lwz		r0,48(r3)		# u32ChannelMask=r0 pSiul2ChannelConfig=r3
	andc		r0,r0,r29		# u32ChannelMask=r0 u32ChannelMask=r0 u32ChannelMask=r29
	stw		r0,48(r3)		# pSiul2ChannelConfig=r3 u32ChannelMask=r0
#         /* Clear Interrupt Filter Enable Register */
#         /** @violates @ref Icu_SIUL2_c_REF_4 Violates MISRA 2004 Rule 11.1, Cast from unsigned long to pointer.*/
#         /** @violates @ref Icu_SIUL2_c_REF_8 Violates MISRA 2004 Rule 11.3, Cast from pointer type and integral type.*/
#         REG_BIT_CLEAR32(ICU_SIUL2_IFER0_LOCKABLE_ADDR32, u32ChannelMask);
	.d2line		531
	lwz		r0,56(r3)		# u32ChannelMask=r0 pSiul2ChannelConfig=r3
	andc		r0,r0,r29		# u32ChannelMask=r0 u32ChannelMask=r0 u32ChannelMask=r29
	stw		r0,56(r3)		# pSiul2ChannelConfig=r3 u32ChannelMask=r0
#         /* Clear Interrupt Filter Clock Prescaler Register */
#         /** @violates @ref Icu_SIUL2_c_REF_4 Violates MISRA 2004 Rule 11.1, Cast from unsigned long to pointer.*/
#         /** @violates @ref Icu_SIUL2_c_REF_8 Violates MISRA 2004 Rule 11.3, Cast from pointer type and integral type.*/
#         REG_WRITE32(ICU_SIUL2_IFMCR_LOCKABLE_ADDR32((uint32)((uint32)HwChannel << 2U)), 0x00U);
	.d2line		535
	diab.li		r0,0		# u32ChannelMask=r0
	rlwinm		r4,r28,2,22,29		# HwChannel=r28
	diab.li		r3,64		# pSiul2ChannelConfig=r3
	e_add2is		r3,-4		# pSiul2ChannelConfig=r3
	stwx		r0,r3,r4		# pSiul2ChannelConfig=r3 u32ChannelMask=r0
#         Icu_Siul2_u32ChInit &= (uint32)(~(BIT0 << HwChannel));
	.d2line		536
	lis		r3,Icu_Siul2_u32ChInit@ha		# pSiul2ChannelConfig=r3
	lwz		r3,Icu_Siul2_u32ChInit@l(r3)		# pSiul2ChannelConfig=r3 pSiul2ChannelConfig=r3
	diab.li		r0,1		# u32ChannelMask=r0
	slw		r0,r0,r28		# u32ChannelMask=r0 u32ChannelMask=r0 HwChannel=r28
	andc		r0,r3,r0		# u32ChannelMask=r0 pSiul2ChannelConfig=r3 u32ChannelMask=r0
	lis		r3,Icu_Siul2_u32ChInit@ha		# pSiul2ChannelConfig=r3
	e_add16i		r3,r3,Icu_Siul2_u32ChInit@l		# pSiul2ChannelConfig=r3 pSiul2ChannelConfig=r3
	stw		r0,0(r3)		# pSiul2ChannelConfig=r3 u32ChannelMask=r0
#     }
	.d2line		537
	diab.addi		r0,r30,1		# u32ChannelMask=r0 nCounter=r30
	se_addi		r30,1		# nCounter=r30 nCounter=r30
	b		.L462
.L464:
#     /** @violates @ref Icu_SIUL2_c_REF_4 Violates MISRA 2004 Rule 11.1, Cast from unsigned long to pointer.*/
#     /** @violates @ref Icu_SIUL2_c_REF_8 Violates MISRA 2004 Rule 11.3, Cast from pointer type and integral type.*/
#     REG_WRITE32(ICU_SIUL2_IFCPR_LOCKABLE_ADDR32, (uint32)0U);
	.d2line		540
.Llo47:
	diab.li		r3,0		# pSiul2ChannelConfig=r3
.Llo53:
	diab.li		r4,-262144
	stw		r3,192(r4)		# pSiul2ChannelConfig=r3
# }
	.d2line		541
	.d2epilogue_begin
	lmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# u32ChannelMask=r0
	mtspr		lr,r0		# u32ChannelMask=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo54:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L562:
	.type		Icu_Siul2_DeInit,@function
	.size		Icu_Siul2_DeInit,.-Icu_Siul2_DeInit
# Number of nodes = 79

# Allocations for Icu_Siul2_DeInit
#	?a4		pSiul2IpConfig
#	?a5		$$115
#	?a6		pSiul2ChannelConfig
#	?a7		nCounter
#	?a8		HwChannel
#	?a9		u32ChannelMask
# FUNC (void, ICU_CODE) Icu_Siul2_SetSleepMode(VAR(Icu_Siul2_ChannelType, AUTOMATIC) HwChannel)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         558,23
#$$ld
.L575:

#$$bf	Icu_Siul2_SetSleepMode,interprocedural,rasave,nostackparams
	.globl		Icu_Siul2_SetSleepMode
	.d2_cfa_start __cie
Icu_Siul2_SetSleepMode:
.Llo59:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# HwChannel=r3 HwChannel=r3
	.d2prologue_end
# {
#     CONST(uint32, ICU_CONST) u32ChannelMask = ICU_SIUL2_CHANNEL_MASK_U32((uint32)HwChannel);
	.d2line		560
	diab.li		r0,1
	slw		r0,r0,r3		# HwChannel=r3
.Llo61:
	mr		r3,r0		# u32ChannelMask=r3 u32ChannelMask=r0
# 
#     /* Disable IRQ Interrupt */
#     Icu_Siul2_DisableInterrupt(u32ChannelMask);
	.d2line		563
.Llo60:
	mr		r3,r3		# u32ChannelMask=r3 u32ChannelMask=r3
	bl		Icu_Siul2_DisableInterrupt
# }
	.d2line		564
	.d2epilogue_begin
.Llo62:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L576:
	.type		Icu_Siul2_SetSleepMode,@function
	.size		Icu_Siul2_SetSleepMode,.-Icu_Siul2_SetSleepMode
# Number of nodes = 12

# Allocations for Icu_Siul2_SetSleepMode
#	?a4		HwChannel
#	?a5		u32ChannelMask
# FUNC (void, ICU_CODE) Icu_Siul2_SetNormalMode(VAR(Icu_Siul2_ChannelType, AUTOMATIC) HwChannel)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         579,23
#$$ld
.L583:

#$$bf	Icu_Siul2_SetNormalMode,interprocedural,rasave,nostackparams
	.globl		Icu_Siul2_SetNormalMode
	.d2_cfa_start __cie
Icu_Siul2_SetNormalMode:
.Llo63:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# HwChannel=r3 HwChannel=r3
	.d2prologue_end
# {
#     CONST(uint32, ICU_CONST) u32ChannelMask = ICU_SIUL2_CHANNEL_MASK_U32((uint32)HwChannel);
	.d2line		581
	diab.li		r0,1
	slw		r0,r0,r3		# HwChannel=r3
.Llo65:
	mr		r3,r0		# u32ChannelMask=r3 u32ChannelMask=r0
# 
#     /* Enable IRQ Interrupt */
#     Icu_Siul2_EnableInterrupt(u32ChannelMask);
	.d2line		584
.Llo64:
	mr		r3,r3		# u32ChannelMask=r3 u32ChannelMask=r3
	bl		Icu_Siul2_EnableInterrupt
# }
	.d2line		585
	.d2epilogue_begin
.Llo66:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L584:
	.type		Icu_Siul2_SetNormalMode,@function
	.size		Icu_Siul2_SetNormalMode,.-Icu_Siul2_SetNormalMode
# Number of nodes = 12

# Allocations for Icu_Siul2_SetNormalMode
#	?a4		HwChannel
#	?a5		u32ChannelMask
# FUNC (void, ICU_CODE) Icu_Siul2_EnableEdgeDetection(VAR(Icu_Siul2_ChannelType, AUTOMATIC) HwChannel)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         661,23
#$$ld
.L591:

#$$bf	Icu_Siul2_EnableEdgeDetection,interprocedural,rasave,nostackparams
	.globl		Icu_Siul2_EnableEdgeDetection
	.d2_cfa_start __cie
Icu_Siul2_EnableEdgeDetection:
.Llo67:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# HwChannel=r3 HwChannel=r3
	.d2prologue_end
# {
#     CONST(uint32, ICU_CONST) u32ChannelMask = ICU_SIUL2_CHANNEL_MASK_U32((uint32)HwChannel);
	.d2line		663
	diab.li		r0,1
	slw		r0,r0,r3		# HwChannel=r3
.Llo69:
	mr		r3,r0		# u32ChannelMask=r3 u32ChannelMask=r0
# 
#     /* Enable IRQ Interrupt */
#     Icu_Siul2_EnableInterrupt(u32ChannelMask);
	.d2line		666
.Llo68:
	mr		r3,r3		# u32ChannelMask=r3 u32ChannelMask=r3
	bl		Icu_Siul2_EnableInterrupt
# }
	.d2line		667
	.d2epilogue_begin
.Llo70:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L592:
	.type		Icu_Siul2_EnableEdgeDetection,@function
	.size		Icu_Siul2_EnableEdgeDetection,.-Icu_Siul2_EnableEdgeDetection
# Number of nodes = 12

# Allocations for Icu_Siul2_EnableEdgeDetection
#	?a4		HwChannel
#	?a5		u32ChannelMask
# FUNC (void, ICU_CODE) Icu_Siul2_DisableEdgeDetection(VAR(Icu_Siul2_ChannelType, AUTOMATIC) HwChannel)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         683,23
#$$ld
.L599:

#$$bf	Icu_Siul2_DisableEdgeDetection,interprocedural,rasave,nostackparams
	.globl		Icu_Siul2_DisableEdgeDetection
	.d2_cfa_start __cie
Icu_Siul2_DisableEdgeDetection:
.Llo71:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# HwChannel=r3 HwChannel=r3
	.d2prologue_end
# {
#     CONST(uint32, ICU_CONST) u32ChannelMask = ICU_SIUL2_CHANNEL_MASK_U32((uint32)HwChannel);
	.d2line		685
	diab.li		r0,1
	slw		r0,r0,r3		# HwChannel=r3
.Llo73:
	mr		r3,r0		# u32ChannelMask=r3 u32ChannelMask=r0
# 
#     /* Disable IRQ Interrupt */
#     Icu_Siul2_DisableInterrupt(u32ChannelMask);
	.d2line		688
.Llo72:
	mr		r3,r3		# u32ChannelMask=r3 u32ChannelMask=r3
	bl		Icu_Siul2_DisableInterrupt
# }
	.d2line		689
	.d2epilogue_begin
.Llo74:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L600:
	.type		Icu_Siul2_DisableEdgeDetection,@function
	.size		Icu_Siul2_DisableEdgeDetection,.-Icu_Siul2_DisableEdgeDetection
# Number of nodes = 12

# Allocations for Icu_Siul2_DisableEdgeDetection
#	?a4		HwChannel
#	?a5		u32ChannelMask
# FUNC (boolean, ICU_CODE) Icu_Siul2_GetInputState(VAR(Icu_Siul2_ChannelType, AUTOMATIC) HwChannel)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         694,26
#$$ld
.L607:

#$$bf	Icu_Siul2_GetInputState,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,cr0,lr
	.globl		Icu_Siul2_GetInputState
	.d2_cfa_start __cie
Icu_Siul2_GetInputState:
.Llo75:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
.Llo81:
	stw		r0,20(r1)		# u32ChannelMask=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# HwChannel=r0 HwChannel=r3
	.d2prologue_end
# {
#     VAR(uint32, AUTOMATIC) u32RegSiul2DISR;
#     VAR(boolean,AUTOMATIC) bStatus = (boolean)FALSE;
	.d2line		697
.Llo82:
	diab.li		r3,0		# bStatus=r3
#     CONST(uint32, ICU_CONST) u32ChannelMask = (uint32)(BIT0 << HwChannel);
	.d2line		698
.Llo76:
	diab.li		r4,1		# u32RegSiul2DISR=r4
.Llo77:
	slw		r0,r4,r0		# HwChannel=r0 u32RegSiul2DISR=r4 HwChannel=r0
.Llo78:
	mr		r0,r0		# u32ChannelMask=r0 u32ChannelMask=r0
#     /** @violates @ref Icu_SIUL2_c_REF_4 Violates MISRA 2004 Rule 11.1, Cast from unsigned long to pointer.*/
#     /** @violates @ref Icu_SIUL2_c_REF_8 Violates MISRA 2004 Rule 11.3, Cast from pointer type and integral type.*/
#     CONST(uint32, ICU_CONST) u32RegSiul2DIRER = \
	.d2line		701
	diab.li		r4,-262144		# u32RegSiul2DISR=r4
	lwz		r5,24(r4)		# u32RegSiul2DISR=r4
	and		r5,r5,r0		# u32ChannelMask=r0
.Llo84:
	mr		r5,r5		# u32RegSiul2DIRER=r5 u32RegSiul2DIRER=r5
#                             REG_BIT_GET32(ICU_SIUL2_DIRER0_LOCKABLE_ADDR32, u32ChannelMask);
# 
#     /** @violates @ref Icu_SIUL2_c_REF_4 Violates MISRA 2004 Rule 11.1, Cast from unsigned long to pointer.*/
#     /** @violates @ref Icu_SIUL2_c_REF_8 Violates MISRA 2004 Rule 11.3, Cast from pointer type and integral type.*/
#     u32RegSiul2DISR = REG_BIT_GET32(ICU_SIUL2_DISR0_ADDR32, u32ChannelMask);
	.d2line		706
	lwz		r4,16(r4)		# u32RegSiul2DISR=r4 u32RegSiul2DISR=r4
	and		r4,r4,r0		# u32RegSiul2DISR=r4 u32RegSiul2DISR=r4 u32ChannelMask=r0
	.d2line		709
	mr.		r4,r4		# u32RegSiul2DISR=?a5 u32RegSiul2DISR=?a10
# 
#     /* Interrupt condition activated (ISR), interrupt not enabled (IRER) */
#     if ((0x0U !=  u32RegSiul2DISR) && (0x0U == u32RegSiul2DIRER))
.Llo79:
	bc		1,2,.L481	# eq
	se_cmpi		r5,0		# u32RegSiul2DIRER=r5
	bc		0,2,.L481	# ne
#     {
#         /* Clear IRQ Flag */
#         /** @violates @ref Icu_SIUL2_c_REF_4 Violates MISRA 2004 Rule 11.1, Cast from unsigned long to pointer.*/
#         /** @violates @ref Icu_SIUL2_c_REF_8 Violates MISRA 2004 Rule 11.3, Cast from pointer type and integral type.*/
#         REG_WRITE32(ICU_SIUL2_DISR0_ADDR32, u32ChannelMask);
	.d2line		714
.Llo85:
	diab.li		r3,-262144		# bStatus=r3
	stw		r0,16(r3)		# bStatus=r3 u32ChannelMask=r0
#         bStatus = (boolean)TRUE;
	.d2line		715
	diab.li		r3,1		# bStatus=r3
.L481:
#     }
#     return bStatus;
	.d2line		717
.Llo83:
	rlwinm		r3,r3,0,24,31		# bStatus=r3 bStatus=r3
# }
	.d2line		718
	.d2epilogue_begin
.Llo80:
	lwz		r0,20(r1)		# u32ChannelMask=r0
	mtspr		lr,r0		# u32ChannelMask=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L608:
	.type		Icu_Siul2_GetInputState,@function
	.size		Icu_Siul2_GetInputState,.-Icu_Siul2_GetInputState
# Number of nodes = 36

# Allocations for Icu_Siul2_GetInputState
#	?a4		HwChannel
#	?a5		u32RegSiul2DISR
#	?a6		bStatus
#	?a7		u32ChannelMask
#	?a8		u32RegSiul2DIRER

# Allocations for module
	.section	.invalid_DATA,,d
	.0byte		.L619
	.section	.invalid_DATA,,d
	.type		Icu_Siul2_u32ChInit,@object
	.size		Icu_Siul2_u32ChInit,4
	.align		2
Icu_Siul2_u32ChInit:
	.long		0
	.section	.text_vle
#$$ld
.L5:
.L630:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Icu\\ssc\\make\\..\\..\\generator\\integration_package\\include\\Icu_Siul2.h"
.L621:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_HookApiTypes.h"
.L620:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Icu\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Icu_Siul2.c"
	.d2_line_end
	.section	.invalid_TEXT,,c
#$$ld
.L487:
.L495:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Icu\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Icu_Siul2.c"
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
	.uleb128	9
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
	.uleb128	10
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
	.uleb128	11
	.uleb128	40
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	28
	.uleb128	13
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	12
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
	.uleb128	13
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	14
	.uleb128	38
	.byte		0x0
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
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	17
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Icu\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Icu_Siul2.c"
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
.L484:
	.4byte		.L485-.L483
.L483:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L489-.L484
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Icu\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Icu_Siul2.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L486
	.4byte		.L487
	.4byte		.L490
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L496:
	.sleb128	2
	.4byte		.L492-.L484
	.byte		"Icu_Siul2_EnableInterrupt"
	.byte		0
	.4byte		.L495
	.uleb128	273
	.uleb128	36
	.byte		0x1
	.4byte		.L493
	.4byte		.L494
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L495
	.uleb128	273
	.uleb128	36
	.byte		"u32ChannelMask"
	.byte		0
	.4byte		.L497
	.4byte		.L499
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L492:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L504:
	.sleb128	2
	.4byte		.L501-.L484
	.byte		"Icu_Siul2_DisableInterrupt"
	.byte		0
	.4byte		.L495
	.uleb128	301
	.uleb128	36
	.byte		0x1
	.4byte		.L502
	.4byte		.L503
	.sleb128	3
	.4byte		.L495
	.uleb128	301
	.uleb128	36
	.byte		"u32ChannelMask"
	.byte		0
	.4byte		.L497
	.4byte		.L505
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L501:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L512:
	.sleb128	4
	.4byte		.L507-.L484
	.byte		"Icu_Siul2_GetChInit"
	.byte		0
	.4byte		.L495
	.uleb128	352
	.uleb128	25
	.4byte		.L510
	.byte		0x1
	.byte		0x1
	.4byte		.L508
	.4byte		.L509
	.sleb128	3
	.4byte		.L495
	.uleb128	352
	.uleb128	25
	.byte		"HwChannel"
	.byte		0
	.4byte		.L513
	.4byte		.L516
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L507:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L521:
	.sleb128	5
	.4byte		.L518-.L484
	.byte		"Icu_Siul2_SetActivationCondition"
	.byte		0
	.4byte		.L495
	.uleb128	600
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L519
	.4byte		.L520
	.sleb128	3
	.4byte		.L495
	.uleb128	600
	.uleb128	23
	.byte		"HwChannel"
	.byte		0
	.4byte		.L514
	.4byte		.L522
	.sleb128	3
	.4byte		.L495
	.uleb128	600
	.uleb128	23
	.byte		"Activation"
	.byte		0
	.4byte		.L523
	.4byte		.L525
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L526:
	.sleb128	6
	.4byte		.L495
	.uleb128	606
	.uleb128	30
	.byte		"u32ChannelMask"
	.byte		0
	.4byte		.L527
	.4byte		.L528
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L518:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L533:
	.sleb128	5
	.4byte		.L530-.L484
	.byte		"Icu_Siul2_Init"
	.byte		0
	.4byte		.L495
	.uleb128	398
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L531
	.4byte		.L532
	.sleb128	3
	.4byte		.L495
	.uleb128	398
	.uleb128	23
	.byte		"pSiul2IpConfig"
	.byte		0
	.4byte		.L534
	.4byte		.L538
.L539:
	.sleb128	6
	.4byte		.L495
	.uleb128	404
	.uleb128	67
	.byte		"pSiul2ChannelConfig"
	.byte		0
	.4byte		.L540
	.4byte		.L544
.L545:
	.sleb128	6
	.4byte		.L495
	.uleb128	406
	.uleb128	45
	.byte		"nCtrlRegVal"
	.byte		0
	.4byte		.L546
	.4byte		.L549
.L550:
	.sleb128	6
	.4byte		.L495
	.uleb128	408
	.uleb128	45
	.byte		"nCounter"
	.byte		0
	.4byte		.L514
	.4byte		.L551
.L552:
	.sleb128	6
	.4byte		.L495
	.uleb128	409
	.uleb128	45
	.byte		"HwChannel"
	.byte		0
	.4byte		.L514
	.4byte		.L553
.L554:
	.sleb128	6
	.4byte		.L495
	.uleb128	410
	.uleb128	45
	.byte		"u32ChannelMask"
	.byte		0
	.4byte		.L497
	.4byte		.L555
.L556:
	.sleb128	6
	.4byte		.L495
	.uleb128	412
	.uleb128	55
	.byte		"nGlobalConfig"
	.byte		0
	.4byte		.L557
	.4byte		.L558
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L530:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L563:
	.sleb128	5
	.4byte		.L560-.L484
	.byte		"Icu_Siul2_DeInit"
	.byte		0
	.4byte		.L495
	.uleb128	498
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L561
	.4byte		.L562
	.sleb128	3
	.4byte		.L495
	.uleb128	498
	.uleb128	23
	.byte		"pSiul2IpConfig"
	.byte		0
	.4byte		.L534
	.4byte		.L564
.L565:
	.sleb128	6
	.4byte		.L495
	.uleb128	504
	.uleb128	67
	.byte		"pSiul2ChannelConfig"
	.byte		0
	.4byte		.L540
	.4byte		.L566
.L567:
	.sleb128	6
	.4byte		.L495
	.uleb128	507
	.uleb128	45
	.byte		"nCounter"
	.byte		0
	.4byte		.L514
	.4byte		.L568
.L569:
	.sleb128	6
	.4byte		.L495
	.uleb128	508
	.uleb128	45
	.byte		"HwChannel"
	.byte		0
	.4byte		.L514
	.4byte		.L570
.L571:
	.sleb128	6
	.4byte		.L495
	.uleb128	509
	.uleb128	45
	.byte		"u32ChannelMask"
	.byte		0
	.4byte		.L497
	.4byte		.L572
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L560:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L577:
	.sleb128	5
	.4byte		.L574-.L484
	.byte		"Icu_Siul2_SetSleepMode"
	.byte		0
	.4byte		.L495
	.uleb128	558
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L575
	.4byte		.L576
	.sleb128	3
	.4byte		.L495
	.uleb128	558
	.uleb128	23
	.byte		"HwChannel"
	.byte		0
	.4byte		.L514
	.4byte		.L578
.L579:
	.sleb128	6
	.4byte		.L495
	.uleb128	560
	.uleb128	30
	.byte		"u32ChannelMask"
	.byte		0
	.4byte		.L527
	.4byte		.L580
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L574:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L585:
	.sleb128	5
	.4byte		.L582-.L484
	.byte		"Icu_Siul2_SetNormalMode"
	.byte		0
	.4byte		.L495
	.uleb128	579
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L583
	.4byte		.L584
	.sleb128	3
	.4byte		.L495
	.uleb128	579
	.uleb128	23
	.byte		"HwChannel"
	.byte		0
	.4byte		.L514
	.4byte		.L586
.L587:
	.sleb128	6
	.4byte		.L495
	.uleb128	581
	.uleb128	30
	.byte		"u32ChannelMask"
	.byte		0
	.4byte		.L527
	.4byte		.L588
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L582:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L593:
	.sleb128	5
	.4byte		.L590-.L484
	.byte		"Icu_Siul2_EnableEdgeDetection"
	.byte		0
	.4byte		.L495
	.uleb128	661
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L591
	.4byte		.L592
	.sleb128	3
	.4byte		.L495
	.uleb128	661
	.uleb128	23
	.byte		"HwChannel"
	.byte		0
	.4byte		.L514
	.4byte		.L594
.L595:
	.sleb128	6
	.4byte		.L495
	.uleb128	663
	.uleb128	30
	.byte		"u32ChannelMask"
	.byte		0
	.4byte		.L527
	.4byte		.L596
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L590:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L601:
	.sleb128	5
	.4byte		.L598-.L484
	.byte		"Icu_Siul2_DisableEdgeDetection"
	.byte		0
	.4byte		.L495
	.uleb128	683
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L599
	.4byte		.L600
	.sleb128	3
	.4byte		.L495
	.uleb128	683
	.uleb128	23
	.byte		"HwChannel"
	.byte		0
	.4byte		.L514
	.4byte		.L602
.L603:
	.sleb128	6
	.4byte		.L495
	.uleb128	685
	.uleb128	30
	.byte		"u32ChannelMask"
	.byte		0
	.4byte		.L527
	.4byte		.L604
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L598:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L609:
	.sleb128	4
	.4byte		.L606-.L484
	.byte		"Icu_Siul2_GetInputState"
	.byte		0
	.4byte		.L495
	.uleb128	694
	.uleb128	26
	.4byte		.L510
	.byte		0x1
	.byte		0x1
	.4byte		.L607
	.4byte		.L608
	.sleb128	3
	.4byte		.L495
	.uleb128	694
	.uleb128	26
	.byte		"HwChannel"
	.byte		0
	.4byte		.L514
	.4byte		.L610
.L611:
	.sleb128	6
	.4byte		.L495
	.uleb128	696
	.uleb128	28
	.byte		"u32RegSiul2DISR"
	.byte		0
	.4byte		.L497
	.4byte		.L612
.L613:
	.sleb128	6
	.4byte		.L495
	.uleb128	697
	.uleb128	28
	.byte		"bStatus"
	.byte		0
	.4byte		.L510
	.4byte		.L614
.L615:
	.sleb128	6
	.4byte		.L495
	.uleb128	698
	.uleb128	30
	.byte		"u32ChannelMask"
	.byte		0
	.4byte		.L527
	.4byte		.L616
.L617:
	.sleb128	6
	.4byte		.L495
	.uleb128	701
	.uleb128	30
	.byte		"u32RegSiul2DIRER"
	.byte		0
	.4byte		.L527
	.4byte		.L618
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L606:
	.section	.debug_info,,n
.L619:
	.sleb128	7
	.4byte		.L620
	.uleb128	223
	.uleb128	29
	.byte		"Icu_Siul2_u32ChInit"
	.byte		0
	.4byte		.L497
	.sleb128	5
	.byte		0x3
	.4byte		Icu_Siul2_u32ChInit
	.section	.debug_info,,n
	.section	.debug_info,,n
.L537:
	.sleb128	8
	.4byte		.L621
	.uleb128	34
	.uleb128	14
	.4byte		.L622-.L2
	.uleb128	8
	.section	.debug_info,,n
.L424:
	.sleb128	9
	.byte		"nNumChannels"
	.byte		0
	.4byte		.L513
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L425:
	.sleb128	9
	.byte		"Icu_GlobalConfiguration"
	.byte		0
	.4byte		.L623
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L426:
	.sleb128	9
	.byte		"pChannelsConfig"
	.byte		0
	.4byte		.L624
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L622:
.L543:
	.sleb128	8
	.4byte		.L621
	.uleb128	34
	.uleb128	14
	.4byte		.L627-.L2
	.uleb128	6
.L421:
	.sleb128	9
	.byte		"nHwChannel"
	.byte		0
	.4byte		.L513
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L422:
	.sleb128	9
	.byte		"nControlValue"
	.byte		0
	.4byte		.L628
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L423:
	.sleb128	9
	.byte		"nDefaultStartEdge"
	.byte		0
	.4byte		.L629
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L627:
	.section	.debug_info,,n
.L524:
	.sleb128	10
	.4byte		.L630
	.uleb128	154
	.uleb128	1
	.4byte		.L631-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	11
	.byte		"SIUL2_FALLING_EDGE"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"SIUL2_RISING_EDGE"
	.byte		0
	.sleb128	1
	.sleb128	11
	.byte		"SIUL2_BOTH_EDGES"
	.byte		0
	.sleb128	2
	.sleb128	0
.L631:
	.section	.debug_info,,n
.L498:
	.sleb128	12
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
	.section	.debug_info,,n
.L497:
	.sleb128	13
	.byte		"uint32"
	.byte		0
	.4byte		.L498
.L511:
	.sleb128	12
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L510:
	.sleb128	13
	.byte		"boolean"
	.byte		0
	.4byte		.L511
.L515:
	.sleb128	13
	.byte		"uint8"
	.byte		0
	.4byte		.L511
.L514:
	.sleb128	13
	.byte		"Icu_Siul2_ChannelType"
	.byte		0
	.4byte		.L515
	.section	.debug_info,,n
.L513:
	.sleb128	14
	.4byte		.L514
.L523:
	.sleb128	13
	.byte		"Icu_Siul2_ActivationType"
	.byte		0
	.4byte		.L524
.L527:
	.sleb128	14
	.4byte		.L497
.L536:
	.sleb128	13
	.byte		"Icu_Siul2_IpConfigType"
	.byte		0
	.4byte		.L537
.L535:
	.sleb128	14
	.4byte		.L536
	.section	.debug_info,,n
.L534:
	.sleb128	15
	.4byte		.L535
.L542:
	.sleb128	13
	.byte		"Icu_Siul2_ChannelConfigType"
	.byte		0
	.4byte		.L543
.L541:
	.sleb128	14
	.4byte		.L542
.L540:
	.sleb128	15
	.4byte		.L541
.L548:
	.sleb128	12
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L547:
	.sleb128	13
	.byte		"uint16"
	.byte		0
	.4byte		.L548
.L546:
	.sleb128	13
	.byte		"Icu_Siul2_ControlType"
	.byte		0
	.4byte		.L547
.L557:
	.sleb128	13
	.byte		"Icu_Siul2_GlobalConfigurationType"
	.byte		0
	.4byte		.L547
.L623:
	.sleb128	14
	.4byte		.L557
	.section	.debug_info,,n
.L625:
	.sleb128	16
	.4byte		.L626-.L2
	.4byte		.L541
	.section	.debug_info,,n
	.sleb128	17
	.sleb128	0
.L626:
.L624:
	.sleb128	15
	.4byte		.L625
.L628:
	.sleb128	14
	.4byte		.L546
.L629:
	.sleb128	14
	.4byte		.L515
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L489:
	.sleb128	0
.L485:

	.section	.debug_loc,,n
	.align	0
.L499:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),31
	.d2locend
.L505:
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),3
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),31
	.d2locend
.L516:
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),3
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo12),4
	.d2locend
.L522:
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo14),3
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo16),3
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo18),3
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo20),3
	.d2locend
.L525:
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo21),4
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo23),30
	.d2locend
.L528:
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo20),31
	.d2locend
.L538:
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo26),3
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo28),31
	.d2locend
.L544:
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo28),30
	.d2locend
.L549:
	.d2locreg	%offsetof(.Llo30), %offsetof(.Llo31),29
	.d2locend
.L551:
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo28),28
	.d2locend
.L553:
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo33),3
	.d2locreg	%offsetof(.Llo34), %offsetof(.Llo35),3
	.d2locreg	%offsetof(.Llo36), %offsetof(.Llo28),27
	.d2locend
.L555:
	.d2locreg	%offsetof(.Llo37), %offsetof(.Llo31),26
	.d2locreg	%offsetof(.Llo38), %offsetof(.Llo39),0
	.d2locend
.L558:
	.d2locreg	%offsetof(.Llo40), %offsetof(.Llo27),0
	.d2locreg	%offsetof(.Llo41), %offsetof(.Llo33),0
	.d2locreg	%offsetof(.Llo42), %offsetof(.Llo43),0
	.d2locend
.L564:
	.d2locreg	%offsetof(.Llo44), %offsetof(.Llo45),3
	.d2locreg	%offsetof(.Llo46), %offsetof(.Llo47),31
	.d2locend
.L566:
	.d2locreg	%offsetof(.Llo48), %offsetof(.Llo49),3
	.d2locreg	%offsetof(.Llo50), %offsetof(.Llo51),3
	.d2locreg	%offsetof(.Llo52), %offsetof(.Llo47),3
	.d2locreg	%offsetof(.Llo53), %offsetof(.Llo54),3
	.d2locend
.L568:
	.d2locreg	%offsetof(.Llo45), %offsetof(.Llo47),30
	.d2locend
.L570:
	.d2locreg	%offsetof(.Llo55), %offsetof(.Llo47),28
	.d2locend
.L572:
	.d2locreg	%offsetof(.Llo46), %offsetof(.Llo49),0
	.d2locreg	%offsetof(.Llo56), %offsetof(.Llo57),0
	.d2locreg	%offsetof(.Llo58), %offsetof(.Llo47),29
	.d2locend
.L578:
	.d2locreg	%offsetof(.Llo59), %offsetof(.Llo60),3
	.d2locend
.L580:
	.d2locreg	%offsetof(.Llo61), %offsetof(.Llo62),0
	.d2locend
.L586:
	.d2locreg	%offsetof(.Llo63), %offsetof(.Llo64),3
	.d2locend
.L588:
	.d2locreg	%offsetof(.Llo65), %offsetof(.Llo66),0
	.d2locend
.L594:
	.d2locreg	%offsetof(.Llo67), %offsetof(.Llo68),3
	.d2locend
.L596:
	.d2locreg	%offsetof(.Llo69), %offsetof(.Llo70),0
	.d2locend
.L602:
	.d2locreg	%offsetof(.Llo71), %offsetof(.Llo72),3
	.d2locend
.L604:
	.d2locreg	%offsetof(.Llo73), %offsetof(.Llo74),0
	.d2locend
.L610:
	.d2locreg	%offsetof(.Llo75), %offsetof(.Llo76),3
	.d2locreg	%offsetof(.Llo77), %offsetof(.Llo78),0
	.d2locend
.L612:
	.d2locreg	%offsetof(.Llo77), %offsetof(.Llo79),4
	.d2locend
.L614:
	.d2locreg	%offsetof(.Llo76), %offsetof(.Llo80),3
	.d2locend
.L616:
	.d2locreg	%offsetof(.Llo81), %offsetof(.Llo82),0
	.d2locreg	%offsetof(.Llo78), %offsetof(.Llo83),0
	.d2locend
.L618:
	.d2locreg	%offsetof(.Llo84), %offsetof(.Llo85),5
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "Icu_Siul2_GetInputState"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Icu_Siul2_DisableEdgeDetection"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Icu_Siul2_DisableInterrupt"
	.wrcm.end
	.wrcm.nelem "Icu_Siul2_EnableEdgeDetection"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Icu_Siul2_EnableInterrupt"
	.wrcm.end
	.wrcm.nelem "Icu_Siul2_SetNormalMode"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Icu_Siul2_EnableInterrupt"
	.wrcm.end
	.wrcm.nelem "Icu_Siul2_SetSleepMode"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Icu_Siul2_DisableInterrupt"
	.wrcm.end
	.wrcm.nelem "Icu_Siul2_DeInit"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Icu_Siul2_DisableInterrupt"
	.wrcm.end
	.wrcm.nelem "Icu_Siul2_Init"
	.wrcm.nint32 "frameSize", 48
	.wrcm.nstrlist "calls", "Icu_Siul2_DisableInterrupt","Icu_Siul2_SetActivationCondition"
	.wrcm.end
	.wrcm.nelem "Icu_Siul2_SetActivationCondition"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_26","SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_26"
	.wrcm.end
	.wrcm.nelem "Icu_Siul2_GetChInit"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Icu_Siul2_DisableInterrupt"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_27","SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_27"
	.wrcm.end
	.wrcm.nelem "Icu_Siul2_EnableInterrupt"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_28","SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_28"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Icu_Siul2.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Icu_Siul2.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Icu_Siul2.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Icu_Siul2.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Icu_Siul2.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Icu_Siul2.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\MCAL\MPC5746R\Icu\ssc\make\..\..\generator\integration_package\src\Icu_Siul2.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
