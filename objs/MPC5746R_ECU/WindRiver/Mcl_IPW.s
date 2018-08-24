#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Mcl_IPW.c"
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
# FUNC(void, MCL_CODE) Mcl_IPW_Init( P2CONST( Mcl_DmaHwIpsConfigType, AUTOMATIC, MCL_APPL_CONST) Mcl_HwIPs_ConfigPtr)
	.section	.invalid_TEXT,,c
	.align		2
	.section	.debug_line.invalid_TEXT,,n
	.sectionlink	.debug_line
.L514:
	.section	.invalid_TEXT,,c
#$$ld
.L510:
	.0byte		.L508
	.d2_line_start	.debug_line.invalid_TEXT
	.section	.invalid_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Mcl\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Mcl_IPW.c"
        .d2line         247,22
#$$ld
.L517:

#$$bf	Mcl_IPW_Init,interprocedural,rasave,nostackparams
	.globl		Mcl_IPW_Init
	.d2_cfa_start __cie
Mcl_IPW_Init:
.Llo1:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# Mcl_HwIPs_ConfigPtr=r31 Mcl_HwIPs_ConfigPtr=r3
	.d2prologue_end
# {   
#     VAR(uint8, AUTOMATIC) u8Instance = 0U;
	.d2line		249
	diab.li		r30,0		# u8Instance=r30
#     
#     /* Initialize the eDMA controllers */
#     for (u8Instance=0U; u8Instance<=(MCL_DMA_NB_CONTROLLERS-1U); u8Instance++)
.L431:
	.d2line		252
.Llo2:
	rlwinm		r4,r30,0,24,31		# u8Instance=r30
.Llo3:
	se_cmpi		r4,0
	bc		0,2,.L433	# ne
#     {
#         /* Check if instance is used in the configuration */
#         if (DMA_INSTANCE_USED == (*(Mcl_HwIPs_ConfigPtr->pDma_Config->pDmaConfigInstance))[u8Instance].pDmaUsed)
	.d2line		255
	rlwinm		r4,r30,0,24,31		# u8Instance=r30
	lwz		r3,0(r31)		# Mcl_HwIPs_ConfigPtr=r31
	lwz		r3,4(r3)
	rlwinm		r0,r4,4,0,27
	se_slwi		r4,2
	subf		r4,r4,r0
	se_add		r3,r4
	lbz		r0,4(r3)
	se_cmpi		r0,1
	bc		0,2,.L434	# ne
#         {
#             Mcl_Dma_Init(Mcl_HwIPs_ConfigPtr->pDma_Config, u8Instance);
	.d2line		257
	lwz		r3,0(r31)		# Mcl_HwIPs_ConfigPtr=r31
	rlwinm		r4,r30,0,24,31		# u8Instance=r30
	bl		Mcl_Dma_Init
.L434:
#         }
#     }
	.d2line		259
	diab.addi		r4,r30,1		# u8Instance=r30
	se_addi		r30,1		# u8Instance=r30 u8Instance=r30
	b		.L431
.L433:
#     /* Initialize the DMA_MUX channels */
#     Mcl_DmaMux_Init(Mcl_HwIPs_ConfigPtr->pDmaMux_Config);
	.d2line		261
.Llo4:
	lwz		r3,4(r31)		# Mcl_HwIPs_ConfigPtr=r31
	bl		Mcl_DmaMux_Init
# }
	.d2line		262
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
.L518:
	.type		Mcl_IPW_Init,@function
	.size		Mcl_IPW_Init,.-Mcl_IPW_Init
# Number of nodes = 44

# Allocations for Mcl_IPW_Init
#	?a4		Mcl_HwIPs_ConfigPtr
#	?a5		$$103
#	?a6		u8Instance
# FUNC(void, MCL_CODE) Mcl_IPW_DmaConfigChannel( P2CONST(Mcl_DmaConfigType, AUTOMATIC, MCL_APPL_CONST) Mcl_DmaConfigPtr,
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         307,22
#$$ld
.L532:

#$$bf	Mcl_IPW_DmaConfigChannel,interprocedural,rasave,nostackparams
	.globl		Mcl_IPW_DmaConfigChannel
	.d2_cfa_start __cie
Mcl_IPW_DmaConfigChannel:
.Llo5:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# Mcl_DmaConfigPtr=r3 Mcl_DmaConfigPtr=r3
	mr		r4,r4		# dma_channel=r4 dma_channel=r4
	mr		r5,r5		# config_descriptor=r5 config_descriptor=r5
	.d2prologue_end
#                                                VAR(Mcl_ChannelType, AUTOMATIC) dma_channel, 
#                                                P2CONST(Mcl_DmaTcdAttributesType, AUTOMATIC, MCL_APPL_CONST) config_descriptor)
# {
#     /*  Basic channel configuration  */
#     Mcl_Dma_ConfigChannel((*(Mcl_DmaConfigPtr->pChannelsConfig))[dma_channel].Dma_Channel, config_descriptor);
	.d2line		312
	lwz		r3,8(r3)		# Mcl_DmaConfigPtr=r3 Mcl_DmaConfigPtr=r3
	rlwinm		r4,r4,0,24,31		# dma_channel=r4 dma_channel=r4
	e_mulli		r4,r4,3		# dma_channel=r4 dma_channel=r4
	se_add		r3,r4		# Mcl_DmaConfigPtr=r3 Mcl_DmaConfigPtr=r3 dma_channel=r4
	lbz		r3,1(r3)		# Mcl_DmaConfigPtr=r3 Mcl_DmaConfigPtr=r3
.Llo6:
	mr		r4,r5		# config_descriptor=r4 config_descriptor=r5
.Llo7:
	bl		Mcl_Dma_ConfigChannel
# }
	.d2line		313
	.d2epilogue_begin
.Llo8:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L533:
	.type		Mcl_IPW_DmaConfigChannel,@function
	.size		Mcl_IPW_DmaConfigChannel,.-Mcl_IPW_DmaConfigChannel
# Number of nodes = 18

# Allocations for Mcl_IPW_DmaConfigChannel
#	?a4		Mcl_DmaConfigPtr
#	?a5		dma_channel
#	?a6		config_descriptor
# FUNC(void, MCL_CODE) Mcl_IPW_DmaConfigTcd( P2VAR(Mcl_DmaTcdType, AUTOMATIC, MCL_APPL_DATA) pTcdAddress,
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         330,22
#$$ld
.L549:

#$$bf	Mcl_IPW_DmaConfigTcd,interprocedural,rasave,nostackparams
	.globl		Mcl_IPW_DmaConfigTcd
	.d2_cfa_start __cie
Mcl_IPW_DmaConfigTcd:
.Llo9:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
#                                            P2CONST(Mcl_DmaTcdAttributesType, AUTOMATIC, MCL_APPL_CONST) config_descriptor)
# {
#     /*  Basic TCD configuration  */
#     Mcl_Dma_ConfigTcd(pTcdAddress, config_descriptor);
	.d2line		334
	mr		r0,r3		# pTcdAddress=r0 pTcdAddress=r3
	mr		r0,r4		# config_descriptor=r0 config_descriptor=r4
	bl		Mcl_Dma_ConfigTcd
# }
	.d2line		335
	.d2epilogue_begin
.Llo10:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L550:
	.type		Mcl_IPW_DmaConfigTcd,@function
	.size		Mcl_IPW_DmaConfigTcd,.-Mcl_IPW_DmaConfigTcd
# Number of nodes = 6

# Allocations for Mcl_IPW_DmaConfigTcd
#	?a4		pTcdAddress
#	?a5		config_descriptor
# FUNC(void, MCL_CODE) Mcl_IPW_DmaConfigLinkedChannel( P2CONST(Mcl_DmaConfigType, AUTOMATIC, MCL_APPL_CONST) Mcl_DmaConfigPtr,
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         354,22
#$$ld
.L560:

#$$bf	Mcl_IPW_DmaConfigLinkedChannel,interprocedural,rasave,nostackparams
	.globl		Mcl_IPW_DmaConfigLinkedChannel
	.d2_cfa_start __cie
Mcl_IPW_DmaConfigLinkedChannel:
.Llo11:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr		# dma_channel=r0
	stw		r0,20(r1)		# dma_channel=r0
	.d2_cfa_offset    108,-1
	mr		r3,r3		# Mcl_DmaConfigPtr=r3 Mcl_DmaConfigPtr=r3
	mr		r0,r4		# dma_channel=r0 dma_channel=r4
	mr		r4,r5		# config_descriptor=r4 config_descriptor=r5
.Llo13:
	mr		r6,r6		# next_channel=r6 next_channel=r6
	.d2prologue_end
#                                                      VAR(Mcl_ChannelType, AUTOMATIC) dma_channel, 
#                                                      P2CONST(Mcl_DmaTcdAttributesType, AUTOMATIC, MCL_APPL_CONST) config_descriptor, 
#                                                      VAR(Mcl_ChannelType, AUTOMATIC) next_channel)
# {
#     /*  Configures the linkange between two DMA channels  */
#     Mcl_Dma_ConfigLinkedChannel((*(Mcl_DmaConfigPtr->pChannelsConfig))[dma_channel].Dma_Channel, 
	.d2line		360
	lwz		r5,8(r3)		# Mcl_DmaConfigPtr=r3
.Llo14:
	rlwinm		r0,r0,0,24,31		# dma_channel=r0 dma_channel=r0
	e_mulli		r0,r0,3		# dma_channel=r0 dma_channel=r0
	add		r3,r5,r0		# Mcl_DmaConfigPtr=r3 dma_channel=r0
	lbz		r3,1(r3)		# Mcl_DmaConfigPtr=r3 Mcl_DmaConfigPtr=r3
.Llo12:
	rlwinm		r6,r6,0,24,31		# next_channel=r6 next_channel=r6
	e_mulli		r6,r6,3		# next_channel=r6 next_channel=r6
	se_add		r5,r6		# next_channel=r6
	lbz		r5,1(r5)
.Llo16:
	mr		r4,r4		# config_descriptor=r4 config_descriptor=r4
.Llo17:
	bl		Mcl_Dma_ConfigLinkedChannel
#                             config_descriptor,
#     (*(Mcl_DmaConfigPtr->pChannelsConfig))[next_channel].Dma_Channel);
# }
	.d2line		363
	.d2epilogue_begin
.Llo15:
	lwz		r0,20(r1)		# dma_channel=r0
	mtspr		lr,r0		# dma_channel=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L561:
	.type		Mcl_IPW_DmaConfigLinkedChannel,@function
	.size		Mcl_IPW_DmaConfigLinkedChannel,.-Mcl_IPW_DmaConfigLinkedChannel
# Number of nodes = 32

# Allocations for Mcl_IPW_DmaConfigLinkedChannel
#	?a4		Mcl_DmaConfigPtr
#	?a5		dma_channel
#	?a6		config_descriptor
#	?a7		next_channel
# FUNC(void, MCL_CODE) Mcl_IPW_DmaConfigScatterGatherChannel( P2CONST(Mcl_DmaConfigType, AUTOMATIC, MCL_APPL_CONST) Mcl_DmaConfigPtr,
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         382,22
#$$ld
.L569:

#$$bf	Mcl_IPW_DmaConfigScatterGatherChannel,interprocedural,rasave,nostackparams
	.globl		Mcl_IPW_DmaConfigScatterGatherChannel
	.d2_cfa_start __cie
Mcl_IPW_DmaConfigScatterGatherChannel:
.Llo18:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# Mcl_DmaConfigPtr=r3 Mcl_DmaConfigPtr=r3
	mr		r4,r4		# dma_channel=r4 dma_channel=r4
	mr		r5,r5		# config_descriptor=r5 config_descriptor=r5
	mr		r6,r6		# pNext_tcd=r6 pNext_tcd=r6
	.d2prologue_end
#                                                             VAR(Mcl_ChannelType, AUTOMATIC) dma_channel, 
#                                                             P2CONST(Mcl_DmaTcdAttributesType, AUTOMATIC, MCL_APPL_CONST) config_descriptor, 
#                                                             P2VAR(Mcl_DmaTcdType, AUTOMATIC, MCL_APPL_DATA) pNext_tcd)
# {
#     /*  Configures a DMA channel for a scatter/gather operation  */
#     Mcl_Dma_ConfigScatterGatherChannel((*(Mcl_DmaConfigPtr->pChannelsConfig))[dma_channel].Dma_Channel, config_descriptor, pNext_tcd);
	.d2line		388
	lwz		r3,8(r3)		# Mcl_DmaConfigPtr=r3 Mcl_DmaConfigPtr=r3
	rlwinm		r4,r4,0,24,31		# dma_channel=r4 dma_channel=r4
	e_mulli		r4,r4,3		# dma_channel=r4 dma_channel=r4
	se_add		r3,r4		# Mcl_DmaConfigPtr=r3 Mcl_DmaConfigPtr=r3 dma_channel=r4
	lbz		r3,1(r3)		# Mcl_DmaConfigPtr=r3 Mcl_DmaConfigPtr=r3
.Llo19:
	mr		r4,r5		# config_descriptor=r4 config_descriptor=r5
.Llo20:
	mr		r5,r6		# pNext_tcd=r5 pNext_tcd=r6
.Llo21:
	bl		Mcl_Dma_ConfigScatterGatherChannel
# }
	.d2line		389
	.d2epilogue_begin
.Llo22:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L570:
	.type		Mcl_IPW_DmaConfigScatterGatherChannel,@function
	.size		Mcl_IPW_DmaConfigScatterGatherChannel,.-Mcl_IPW_DmaConfigScatterGatherChannel
# Number of nodes = 20

# Allocations for Mcl_IPW_DmaConfigScatterGatherChannel
#	?a4		Mcl_DmaConfigPtr
#	?a5		dma_channel
#	?a6		config_descriptor
#	?a7		pNext_tcd
# FUNC(void, MCL_CODE) Mcl_IPW_DmaConfigLinkedTcd( P2CONST(Mcl_DmaConfigType, AUTOMATIC, MCL_APPL_CONST) Mcl_DmaConfigPtr,
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         408,22
#$$ld
.L578:

#$$bf	Mcl_IPW_DmaConfigLinkedTcd,interprocedural,rasave,nostackparams
	.globl		Mcl_IPW_DmaConfigLinkedTcd
	.d2_cfa_start __cie
Mcl_IPW_DmaConfigLinkedTcd:
.Llo23:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# Mcl_DmaConfigPtr=r3 Mcl_DmaConfigPtr=r3
	mr		r0,r4		# pTcdAddress=r0 pTcdAddress=r4
.Llo25:
	mr		r4,r5		# config_descriptor=r4 config_descriptor=r5
.Llo26:
	mr		r6,r6		# next_channel=r6 next_channel=r6
	.d2prologue_end
#                                                  P2VAR(Mcl_DmaTcdType, AUTOMATIC, MCL_APPL_DATA) pTcdAddress, 
#                                                  P2CONST(Mcl_DmaTcdAttributesType, AUTOMATIC, MCL_APPL_CONST) config_descriptor, 
#                                                  VAR(Mcl_ChannelType, AUTOMATIC) next_channel)
# {
#     /*  Configures a TCD for a channel-linking operation */
#     Mcl_Dma_ConfigLinkedTcd(pTcdAddress, config_descriptor, (*(Mcl_DmaConfigPtr->pChannelsConfig))[next_channel].Dma_Channel);
	.d2line		414
	lwz		r3,8(r3)		# Mcl_DmaConfigPtr=r3 Mcl_DmaConfigPtr=r3
	rlwinm		r6,r6,0,24,31		# next_channel=r6 next_channel=r6
	e_mulli		r6,r6,3		# next_channel=r6 next_channel=r6
	se_add		r3,r6		# Mcl_DmaConfigPtr=r3 Mcl_DmaConfigPtr=r3 next_channel=r6
	lbz		r5,1(r3)		# Mcl_DmaConfigPtr=r3
.Llo28:
	mr		r3,r0		# pTcdAddress=r3 pTcdAddress=r0
.Llo24:
	mr		r4,r4		# config_descriptor=r4 config_descriptor=r4
.Llo29:
	bl		Mcl_Dma_ConfigLinkedTcd
# }
	.d2line		415
	.d2epilogue_begin
.Llo27:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L579:
	.type		Mcl_IPW_DmaConfigLinkedTcd,@function
	.size		Mcl_IPW_DmaConfigLinkedTcd,.-Mcl_IPW_DmaConfigLinkedTcd
# Number of nodes = 20

# Allocations for Mcl_IPW_DmaConfigLinkedTcd
#	?a4		Mcl_DmaConfigPtr
#	?a5		pTcdAddress
#	?a6		config_descriptor
#	?a7		next_channel
# FUNC(void, MCL_CODE) Mcl_IPW_DmaConfigScatterGatherTcd( P2VAR(Mcl_DmaTcdType, AUTOMATIC, MCL_APPL_DATA) pTcdAddress, 
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         433,22
#$$ld
.L587:

#$$bf	Mcl_IPW_DmaConfigScatterGatherTcd,interprocedural,rasave,nostackparams
	.globl		Mcl_IPW_DmaConfigScatterGatherTcd
	.d2_cfa_start __cie
Mcl_IPW_DmaConfigScatterGatherTcd:
.Llo30:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
#                                                         P2CONST(Mcl_DmaTcdAttributesType, AUTOMATIC, MCL_APPL_CONST) config_descriptor, 
#                                                         P2VAR(Mcl_DmaTcdType, AUTOMATIC, MCL_APPL_DATA) pNext_tcd)
# {
#     /*  Configures a TCD linkage through scatter-gather  */
#     Mcl_Dma_ConfigScatterGatherTcd(pTcdAddress, config_descriptor, pNext_tcd);
	.d2line		438
	mr		r0,r3		# pTcdAddress=r0 pTcdAddress=r3
	mr		r0,r4		# config_descriptor=r0 config_descriptor=r4
	mr		r0,r5		# pNext_tcd=r0 pNext_tcd=r5
	bl		Mcl_Dma_ConfigScatterGatherTcd
# 
# }
	.d2line		440
	.d2epilogue_begin
.Llo31:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L588:
	.type		Mcl_IPW_DmaConfigScatterGatherTcd,@function
	.size		Mcl_IPW_DmaConfigScatterGatherTcd,.-Mcl_IPW_DmaConfigScatterGatherTcd
# Number of nodes = 8

# Allocations for Mcl_IPW_DmaConfigScatterGatherTcd
#	?a4		pTcdAddress
#	?a5		config_descriptor
#	?a6		pNext_tcd
# FUNC(void, MCL_CODE) Mcl_IPW_DmaConfigScatterGatherLinkedChannel( P2CONST(Mcl_DmaConfigType, AUTOMATIC, MCL_APPL_CONST) Mcl_DmaConfigPtr,
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         459,22
#$$ld
.L595:

#$$bf	Mcl_IPW_DmaConfigScatterGatherLinkedChannel,interprocedural,rasave,nostackparams
	.globl		Mcl_IPW_DmaConfigScatterGatherLinkedChannel
	.d2_cfa_start __cie
Mcl_IPW_DmaConfigScatterGatherLinkedChannel:
.Llo32:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# Mcl_DmaConfigPtr=r3 Mcl_DmaConfigPtr=r3
	mr		r4,r4		# dma_channel=r4 dma_channel=r4
	mr		r0,r5		# config_descriptor=r0 config_descriptor=r5
.Llo35:
	mr		r5,r6		# pNext_tcd=r5 pNext_tcd=r6
.Llo36:
	mr		r7,r7		# next_channel=r7 next_channel=r7
	.d2prologue_end
#                                                                   VAR(Mcl_ChannelType, AUTOMATIC) dma_channel, 
#                                                                   P2CONST(Mcl_DmaTcdAttributesType, AUTOMATIC, MCL_APPL_CONST) config_descriptor, 
#                                                                   P2VAR(Mcl_DmaTcdType, AUTOMATIC, MCL_APPL_DATA) pNext_tcd,
#                                                                   VAR(Mcl_ChannelType, AUTOMATIC) next_channel)
# {
#     /*  Configures the scatter-gather and linkange between two DMA channels  */
#     Mcl_Dma_ConfigScatterGatherLinkedChannel((*(Mcl_DmaConfigPtr->pChannelsConfig))[dma_channel].Dma_Channel, 
	.d2line		466
	lwz		r6,8(r3)		# Mcl_DmaConfigPtr=r3
.Llo38:
	rlwinm		r4,r4,0,24,31		# dma_channel=r4 dma_channel=r4
	e_mulli		r4,r4,3		# dma_channel=r4 dma_channel=r4
	add		r3,r6,r4		# Mcl_DmaConfigPtr=r3 dma_channel=r4
	lbz		r3,1(r3)		# Mcl_DmaConfigPtr=r3 Mcl_DmaConfigPtr=r3
.Llo33:
	rlwinm		r7,r7,0,24,31		# next_channel=r7 next_channel=r7
	e_mulli		r7,r7,3		# next_channel=r7 next_channel=r7
	se_add		r6,r7		# next_channel=r7
	lbz		r6,1(r6)
	mr		r4,r0		# config_descriptor=r4 config_descriptor=r0
.Llo34:
	mr		r5,r5		# pNext_tcd=r5 pNext_tcd=r5
.Llo39:
	bl		Mcl_Dma_ConfigScatterGatherLinkedChannel
#                                          config_descriptor,
#                                          pNext_tcd,
#     (*(Mcl_DmaConfigPtr->pChannelsConfig))[next_channel].Dma_Channel);
# }
	.d2line		470
	.d2epilogue_begin
.Llo37:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L596:
	.type		Mcl_IPW_DmaConfigScatterGatherLinkedChannel,@function
	.size		Mcl_IPW_DmaConfigScatterGatherLinkedChannel,.-Mcl_IPW_DmaConfigScatterGatherLinkedChannel
# Number of nodes = 34

# Allocations for Mcl_IPW_DmaConfigScatterGatherLinkedChannel
#	?a4		Mcl_DmaConfigPtr
#	?a5		dma_channel
#	?a6		config_descriptor
#	?a7		pNext_tcd
#	?a8		next_channel
# FUNC(void, MCL_CODE) Mcl_IPW_DmaConfigScatterGatherLinkedTcd( P2CONST(Mcl_DmaConfigType, AUTOMATIC, MCL_APPL_CONST) Mcl_DmaConfigPtr,
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         490,22
#$$ld
.L605:

#$$bf	Mcl_IPW_DmaConfigScatterGatherLinkedTcd,interprocedural,rasave,nostackparams
	.globl		Mcl_IPW_DmaConfigScatterGatherLinkedTcd
	.d2_cfa_start __cie
Mcl_IPW_DmaConfigScatterGatherLinkedTcd:
.Llo40:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# Mcl_DmaConfigPtr=r3 Mcl_DmaConfigPtr=r3
	mr		r4,r4		# pTcdAddress=r4 pTcdAddress=r4
	mr		r0,r5		# config_descriptor=r0 config_descriptor=r5
.Llo43:
	mr		r5,r6		# pNext_tcd=r5 pNext_tcd=r6
.Llo44:
	mr		r7,r7		# next_channel=r7 next_channel=r7
	.d2prologue_end
#                                                               P2VAR(Mcl_DmaTcdType, AUTOMATIC, MCL_APPL_DATA) pTcdAddress, 
#                                                               P2CONST(Mcl_DmaTcdAttributesType, AUTOMATIC, MCL_APPL_CONST) config_descriptor, 
#                                                               P2VAR(Mcl_DmaTcdType, AUTOMATIC, MCL_APPL_DATA) pNext_tcd,
#                                                               VAR(Mcl_ChannelType, AUTOMATIC) next_channel)
# {
#     /*  Configures the scatter-gather and linkange for a TCD  */
#     Mcl_Dma_ConfigScatterGatherLinkedTcd(pTcdAddress,
	.d2line		497
	lwz		r3,8(r3)		# Mcl_DmaConfigPtr=r3 Mcl_DmaConfigPtr=r3
	rlwinm		r7,r7,0,24,31		# next_channel=r7 next_channel=r7
	e_mulli		r7,r7,3		# next_channel=r7 next_channel=r7
	se_add		r3,r7		# Mcl_DmaConfigPtr=r3 Mcl_DmaConfigPtr=r3 next_channel=r7
	lbz		r6,1(r3)		# Mcl_DmaConfigPtr=r3
.Llo46:
	mr		r3,r4		# pTcdAddress=r3 pTcdAddress=r4
.Llo41:
	mr		r4,r0		# config_descriptor=r4 config_descriptor=r0
.Llo42:
	mr		r5,r5		# pNext_tcd=r5 pNext_tcd=r5
.Llo47:
	bl		Mcl_Dma_ConfigScatterGatherLinkedTcd
#                                      config_descriptor,
#                                      pNext_tcd,
#     (*(Mcl_DmaConfigPtr->pChannelsConfig))[next_channel].Dma_Channel);
# }
	.d2line		501
	.d2epilogue_begin
.Llo45:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L606:
	.type		Mcl_IPW_DmaConfigScatterGatherLinkedTcd,@function
	.size		Mcl_IPW_DmaConfigScatterGatherLinkedTcd,.-Mcl_IPW_DmaConfigScatterGatherLinkedTcd
# Number of nodes = 22

# Allocations for Mcl_IPW_DmaConfigScatterGatherLinkedTcd
#	?a4		Mcl_DmaConfigPtr
#	?a5		pTcdAddress
#	?a6		config_descriptor
#	?a7		pNext_tcd
#	?a8		next_channel
# FUNC(void, MCL_CODE) Mcl_IPW_DmaSetChannelPriority( P2CONST(Mcl_DmaConfigType, AUTOMATIC, MCL_APPL_CONST) Mcl_DmaConfigPtr,
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         517,22
#$$ld
.L615:

#$$bf	Mcl_IPW_DmaSetChannelPriority,interprocedural,rasave,nostackparams
	.globl		Mcl_IPW_DmaSetChannelPriority
	.d2_cfa_start __cie
Mcl_IPW_DmaSetChannelPriority:
.Llo48:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr		# nChannel=r0
	stw		r0,20(r1)		# nChannel=r0
	.d2_cfa_offset    108,-1
	mr		r3,r3		# Mcl_DmaConfigPtr=r3 Mcl_DmaConfigPtr=r3
	mr		r0,r4		# nChannel=r0 nChannel=r4
	mr		r4,r5		# nPriority=r4 nPriority=r5
	.d2prologue_end
#                                                     VAR(Mcl_ChannelType, AUTOMATIC) nChannel, 
#                                                     VAR(Mcl_DmaPriorityType, AUTOMATIC) nPriority)
# {
#     /*  Set the priority for the DMA channel passed as parameter.  */
#     Mcl_Dma_SetChannelPriority((*(Mcl_DmaConfigPtr->pChannelsConfig))[nChannel].Dma_Channel, nPriority);
	.d2line		522
.Llo50:
	lwz		r3,8(r3)		# Mcl_DmaConfigPtr=r3 Mcl_DmaConfigPtr=r3
.Llo51:
	rlwinm		r0,r0,0,24,31		# nChannel=r0 nChannel=r0
	e_mulli		r0,r0,3		# nChannel=r0 nChannel=r0
	se_add		r3,r0		# Mcl_DmaConfigPtr=r3 Mcl_DmaConfigPtr=r3 nChannel=r0
	lbz		r3,1(r3)		# Mcl_DmaConfigPtr=r3 Mcl_DmaConfigPtr=r3
.Llo49:
	rlwinm		r4,r4,0,24,31		# nPriority=r4 nPriority=r4
	bl		Mcl_Dma_SetChannelPriority
# }
	.d2line		523
	.d2epilogue_begin
.Llo52:
	lwz		r0,20(r1)		# nChannel=r0
	mtspr		lr,r0		# nChannel=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L616:
	.type		Mcl_IPW_DmaSetChannelPriority,@function
	.size		Mcl_IPW_DmaSetChannelPriority,.-Mcl_IPW_DmaSetChannelPriority
# Number of nodes = 19

# Allocations for Mcl_IPW_DmaSetChannelPriority
#	?a4		Mcl_DmaConfigPtr
#	?a5		nChannel
#	?a6		nPriority
# FUNC(void, MCL_CODE) Mcl_IPW_DmaStartChannel( P2CONST(Mcl_DmaConfigType, AUTOMATIC, MCL_APPL_CONST) Mcl_DmaConfigPtr,
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         539,22
#$$ld
.L624:

#$$bf	Mcl_IPW_DmaStartChannel,interprocedural,rasave,nostackparams
	.globl		Mcl_IPW_DmaStartChannel
	.d2_cfa_start __cie
Mcl_IPW_DmaStartChannel:
.Llo53:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# Mcl_DmaConfigPtr=r3 Mcl_DmaConfigPtr=r3
	mr		r4,r4		# nChannel=r4 nChannel=r4
	.d2prologue_end
#                                               VAR(Mcl_ChannelType, AUTOMATIC) nChannel)
# {
#     /*  Start a transfer on a DMA channel.  */
#     Mcl_Dma_StartChannel((*(Mcl_DmaConfigPtr->pChannelsConfig))[nChannel].Dma_Channel);
	.d2line		543
	lwz		r3,8(r3)		# Mcl_DmaConfigPtr=r3 Mcl_DmaConfigPtr=r3
	rlwinm		r4,r4,0,24,31		# nChannel=r4 nChannel=r4
	e_mulli		r4,r4,3		# nChannel=r4 nChannel=r4
	se_add		r3,r4		# Mcl_DmaConfigPtr=r3 Mcl_DmaConfigPtr=r3 nChannel=r4
	lbz		r3,1(r3)		# Mcl_DmaConfigPtr=r3 Mcl_DmaConfigPtr=r3
.Llo54:
	bl		Mcl_Dma_StartChannel
# }
	.d2line		544
	.d2epilogue_begin
.Llo55:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L625:
	.type		Mcl_IPW_DmaStartChannel,@function
	.size		Mcl_IPW_DmaStartChannel,.-Mcl_IPW_DmaStartChannel
# Number of nodes = 16

# Allocations for Mcl_IPW_DmaStartChannel
#	?a4		Mcl_DmaConfigPtr
#	?a5		nChannel
# FUNC(boolean, MCL_CODE) Mcl_IPW_DmaIsTransferCompleted( P2CONST(Mcl_DmaConfigType, AUTOMATIC, MCL_APPL_CONST) Mcl_DmaConfigPtr,
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         560,25
#$$ld
.L631:

#$$bf	Mcl_IPW_DmaIsTransferCompleted,interprocedural,rasave,nostackparams
	.globl		Mcl_IPW_DmaIsTransferCompleted
	.d2_cfa_start __cie
Mcl_IPW_DmaIsTransferCompleted:
.Llo56:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# Mcl_DmaConfigPtr=r3 Mcl_DmaConfigPtr=r3
	mr		r4,r4		# nChannel=r4 nChannel=r4
	.d2prologue_end
#                                                         VAR(Mcl_ChannelType, AUTOMATIC) nChannel)
# {
#    /* Returns TRUE if transfer is completed, FALSE otherwise */
#     return (Mcl_Dma_IsTransferCompleted((*(Mcl_DmaConfigPtr->pChannelsConfig))[nChannel].Dma_Channel));
	.d2line		564
	lwz		r3,8(r3)		# Mcl_DmaConfigPtr=r3 Mcl_DmaConfigPtr=r3
	rlwinm		r4,r4,0,24,31		# nChannel=r4 nChannel=r4
	e_mulli		r4,r4,3		# nChannel=r4 nChannel=r4
	se_add		r3,r4		# Mcl_DmaConfigPtr=r3 Mcl_DmaConfigPtr=r3 nChannel=r4
	lbz		r3,1(r3)		# Mcl_DmaConfigPtr=r3 Mcl_DmaConfigPtr=r3
.Llo57:
	bl		Mcl_Dma_IsTransferCompleted
.Llo58:
	rlwinm		r3,r3,0,24,31		# Mcl_DmaConfigPtr=r3 Mcl_DmaConfigPtr=r3
# }
	.d2line		565
	.d2epilogue_begin
.Llo59:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L632:
	.type		Mcl_IPW_DmaIsTransferCompleted,@function
	.size		Mcl_IPW_DmaIsTransferCompleted,.-Mcl_IPW_DmaIsTransferCompleted
# Number of nodes = 17

# Allocations for Mcl_IPW_DmaIsTransferCompleted
#	?a4		Mcl_DmaConfigPtr
#	?a5		nChannel
# FUNC(boolean, MCL_CODE) Mcl_IPW_DmaIsTransferActive( P2CONST(Mcl_DmaConfigType, AUTOMATIC, MCL_APPL_CONST) Mcl_DmaConfigPtr,
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         582,25
#$$ld
.L639:

#$$bf	Mcl_IPW_DmaIsTransferActive,interprocedural,rasave,nostackparams
	.globl		Mcl_IPW_DmaIsTransferActive
	.d2_cfa_start __cie
Mcl_IPW_DmaIsTransferActive:
.Llo60:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# Mcl_DmaConfigPtr=r3 Mcl_DmaConfigPtr=r3
	mr		r4,r4		# nChannel=r4 nChannel=r4
	.d2prologue_end
#                                                      VAR(Mcl_ChannelType, AUTOMATIC) nChannel)
# {
#     /* Returns TRUE if transfer is in execution, FALSE otherwise */
#     return (Mcl_Dma_IsTransferActive((*(Mcl_DmaConfigPtr->pChannelsConfig))[nChannel].Dma_Channel));
	.d2line		586
	lwz		r3,8(r3)		# Mcl_DmaConfigPtr=r3 Mcl_DmaConfigPtr=r3
	rlwinm		r4,r4,0,24,31		# nChannel=r4 nChannel=r4
	e_mulli		r4,r4,3		# nChannel=r4 nChannel=r4
	se_add		r3,r4		# Mcl_DmaConfigPtr=r3 Mcl_DmaConfigPtr=r3 nChannel=r4
	lbz		r3,1(r3)		# Mcl_DmaConfigPtr=r3 Mcl_DmaConfigPtr=r3
.Llo61:
	bl		Mcl_Dma_IsTransferActive
.Llo62:
	rlwinm		r3,r3,0,24,31		# Mcl_DmaConfigPtr=r3 Mcl_DmaConfigPtr=r3
# }
	.d2line		587
	.d2epilogue_begin
.Llo63:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L640:
	.type		Mcl_IPW_DmaIsTransferActive,@function
	.size		Mcl_IPW_DmaIsTransferActive,.-Mcl_IPW_DmaIsTransferActive
# Number of nodes = 17

# Allocations for Mcl_IPW_DmaIsTransferActive
#	?a4		Mcl_DmaConfigPtr
#	?a5		nChannel
# FUNC (void, MCL_CODE) Mcl_IPW_EnableNotification
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         601,23
#$$ld
.L646:

#$$bf	Mcl_IPW_EnableNotification,interprocedural,rasave,nostackparams
	.globl		Mcl_IPW_EnableNotification
	.d2_cfa_start __cie
Mcl_IPW_EnableNotification:
.Llo64:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# Mcl_DmaConfigPtr=r3 Mcl_DmaConfigPtr=r3
	mr		r4,r4		# ChannelNumber=r4 ChannelNumber=r4
	mr		r5,r5		# Notification=r5 Notification=r5
	.d2prologue_end
# (
#     P2CONST(Mcl_DmaConfigType, AUTOMATIC, MCL_APPL_CONST)       Mcl_DmaConfigPtr,
#     VAR         (Mcl_ChannelType,        AUTOMATIC)            ChannelNumber,
#     VAR         (Mcl_DmaTransferNotifType,  AUTOMATIC)         Notification
# )
# {
#     /* Call Dma IP enable notification function */
#     Mcl_Dma_EnableNotification((*(Mcl_DmaConfigPtr->pChannelsConfig))[ChannelNumber].Dma_Channel, Notification);
	.d2line		609
	lwz		r3,8(r3)		# Mcl_DmaConfigPtr=r3 Mcl_DmaConfigPtr=r3
	rlwinm		r4,r4,0,24,31		# ChannelNumber=r4 ChannelNumber=r4
	e_mulli		r4,r4,3		# ChannelNumber=r4 ChannelNumber=r4
	se_add		r3,r4		# Mcl_DmaConfigPtr=r3 Mcl_DmaConfigPtr=r3 ChannelNumber=r4
	lbz		r3,1(r3)		# Mcl_DmaConfigPtr=r3 Mcl_DmaConfigPtr=r3
.Llo65:
	mr		r4,r5		# Notification=r4 Notification=r5
.Llo66:
	bl		Mcl_Dma_EnableNotification
# }
	.d2line		610
	.d2epilogue_begin
.Llo67:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L647:
	.type		Mcl_IPW_EnableNotification,@function
	.size		Mcl_IPW_EnableNotification,.-Mcl_IPW_EnableNotification
# Number of nodes = 18

# Allocations for Mcl_IPW_EnableNotification
#	?a4		Mcl_DmaConfigPtr
#	?a5		ChannelNumber
#	?a6		Notification
# FUNC (void, MCL_CODE) Mcl_IPW_DisableNotification
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         621,23
#$$ld
.L656:

#$$bf	Mcl_IPW_DisableNotification,interprocedural,rasave,nostackparams
	.globl		Mcl_IPW_DisableNotification
	.d2_cfa_start __cie
Mcl_IPW_DisableNotification:
.Llo68:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# Mcl_DmaConfigPtr=r3 Mcl_DmaConfigPtr=r3
	mr		r4,r4		# ChannelNumber=r4 ChannelNumber=r4
	.d2prologue_end
# (
#     P2CONST(Mcl_DmaConfigType, AUTOMATIC, MCL_APPL_CONST)   Mcl_DmaConfigPtr,
#     VAR  (Mcl_ChannelType,        AUTOMATIC)               ChannelNumber
# )
# {    
#     /* Call Dma IP disable notification function */
#     Mcl_Dma_DisableNotification((*(Mcl_DmaConfigPtr->pChannelsConfig))[ChannelNumber].Dma_Channel);
	.d2line		628
	lwz		r3,8(r3)		# Mcl_DmaConfigPtr=r3 Mcl_DmaConfigPtr=r3
	rlwinm		r4,r4,0,24,31		# ChannelNumber=r4 ChannelNumber=r4
	e_mulli		r4,r4,3		# ChannelNumber=r4 ChannelNumber=r4
	se_add		r3,r4		# Mcl_DmaConfigPtr=r3 Mcl_DmaConfigPtr=r3 ChannelNumber=r4
	lbz		r3,1(r3)		# Mcl_DmaConfigPtr=r3 Mcl_DmaConfigPtr=r3
.Llo69:
	bl		Mcl_Dma_DisableNotification
# }
	.d2line		629
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
.L657:
	.type		Mcl_IPW_DisableNotification,@function
	.size		Mcl_IPW_DisableNotification,.-Mcl_IPW_DisableNotification
# Number of nodes = 16

# Allocations for Mcl_IPW_DisableNotification
#	?a4		Mcl_DmaConfigPtr
#	?a5		ChannelNumber
# FUNC(void, MCL_CODE) Mcl_IPW_DmaAcknowledgeInterrupt( P2CONST(Mcl_DmaConfigType, AUTOMATIC, MCL_APPL_CONST) Mcl_DmaConfigPtr,
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         640,22
#$$ld
.L663:

#$$bf	Mcl_IPW_DmaAcknowledgeInterrupt,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,lr
	.globl		Mcl_IPW_DmaAcknowledgeInterrupt
	.d2_cfa_start __cie
Mcl_IPW_DmaAcknowledgeInterrupt:
.Llo71:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# Mcl_DmaConfigPtr=r3 Mcl_DmaConfigPtr=r3
	mr		r4,r4		# ChannelNumber=r4 ChannelNumber=r4
	.d2prologue_end
#                                                       VAR(Mcl_ChannelType,AUTOMATIC) ChannelNumber)
# {    
#     /* Call Dma acknowledge interrupt macro */
#     /** @violates @ref Mcl_IPW_c_REF_5 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */ 
# /** @violates @ref Mcl_IPW_c_REF_13 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#     DMA_CLEAR_INT_REQ((*(Mcl_DmaConfigPtr->pChannelsConfig))[ChannelNumber].Dma_Channel);
	.d2line		646
	lwz		r3,8(r3)		# Mcl_DmaConfigPtr=r3 Mcl_DmaConfigPtr=r3
	rlwinm		r4,r4,0,24,31		# ChannelNumber=r4 ChannelNumber=r4
	e_mulli		r4,r4,3		# ChannelNumber=r4 ChannelNumber=r4
	se_add		r3,r4		# Mcl_DmaConfigPtr=r3 Mcl_DmaConfigPtr=r3 ChannelNumber=r4
	lbz		r3,1(r3)		# Mcl_DmaConfigPtr=r3 Mcl_DmaConfigPtr=r3
	rlwinm		r3,r3,0,26,31		# Mcl_DmaConfigPtr=r3 Mcl_DmaConfigPtr=r3
	e_lis		r4,-1014		# ChannelNumber=r4
	stb		r3,28(r4)		# ChannelNumber=r4 Mcl_DmaConfigPtr=r3
# }
	.d2line		647
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo72:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L664:
	.type		Mcl_IPW_DmaAcknowledgeInterrupt,@function
	.size		Mcl_IPW_DmaAcknowledgeInterrupt,.-Mcl_IPW_DmaAcknowledgeInterrupt
# Number of nodes = 17

# Allocations for Mcl_IPW_DmaAcknowledgeInterrupt
#	?a4		Mcl_DmaConfigPtr
#	?a5		ChannelNumber
# FUNC(Mcl_DmaTcdType, MCL_CODE) Mcl_IPW_DmaGetChannelTcdAddress
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         666,32
#$$ld
.L670:

#$$bf	Mcl_IPW_DmaGetChannelTcdAddress,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4
	.globl		Mcl_IPW_DmaGetChannelTcdAddress
	.d2_cfa_start __cie
Mcl_IPW_DmaGetChannelTcdAddress:
.Llo73:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# Mcl_DmaConfigPtr=r3 Mcl_DmaConfigPtr=r3
	mr		r4,r4		# ChannelNumber=r4 ChannelNumber=r4
	.d2prologue_end
# (
#     P2CONST(Mcl_DmaConfigType, AUTOMATIC, MCL_APPL_CONST)             Mcl_DmaConfigPtr,
#     VAR      (Mcl_ChannelType,        AUTOMATIC)                     ChannelNumber
# )
# {
#     /* Return the TCD address for the hw channel corresponding to ChannelNumber */
#     return (DMA_TCD((uint32)(*(Mcl_DmaConfigPtr->pChannelsConfig))[ChannelNumber].Dma_Channel));
	.d2line		673
	lwz		r3,8(r3)		# Mcl_DmaConfigPtr=r3 Mcl_DmaConfigPtr=r3
	rlwinm		r4,r4,0,24,31		# ChannelNumber=r4 ChannelNumber=r4
	e_mulli		r4,r4,3		# ChannelNumber=r4 ChannelNumber=r4
	se_add		r3,r4		# Mcl_DmaConfigPtr=r3 Mcl_DmaConfigPtr=r3 ChannelNumber=r4
	lbz		r4,1(r3)		# ChannelNumber=r4 Mcl_DmaConfigPtr=r3
	rlwinm		r4,r4,5,21,26		# ChannelNumber=r4 ChannelNumber=r4
	e_lis		r3,64522		# Mcl_DmaConfigPtr=r3
	.diab.bseti		r3,19		# Mcl_DmaConfigPtr=r3
	se_add		r3,r4		# Mcl_DmaConfigPtr=r3 Mcl_DmaConfigPtr=r3 ChannelNumber=r4
# }
	.d2line		674
	.d2epilogue_begin
.Llo74:
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo75:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L671:
	.type		Mcl_IPW_DmaGetChannelTcdAddress,@function
	.size		Mcl_IPW_DmaGetChannelTcdAddress,.-Mcl_IPW_DmaGetChannelTcdAddress
# Number of nodes = 20

# Allocations for Mcl_IPW_DmaGetChannelTcdAddress
#	?a4		Mcl_DmaConfigPtr
#	?a5		ChannelNumber
# FUNC(void, MCL_CODE) Mcl_IPW_DmaSetSaddr(P2VAR(Mcl_DmaTcdType, AUTOMATIC, MCL_APPL_DATA) TcdAddr,
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         690,22
#$$ld
.L677:

#$$bf	Mcl_IPW_DmaSetSaddr,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,lr
	.globl		Mcl_IPW_DmaSetSaddr
	.d2_cfa_start __cie
Mcl_IPW_DmaSetSaddr:
.Llo76:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# TcdAddr=r3 TcdAddr=r3
	mr		r4,r4		# Saddr=r4 Saddr=r4
	.d2prologue_end
#                                          VAR(uint32, AUTOMATIC) Saddr)
# {
#     /* Call the DMA macro for setting the SADDR */
#     /** @violates @ref Mcl_IPW_c_REF_5 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */ 
# /** @violates @ref Mcl_IPW_c_REF_13 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#     /* Compiler_Warning: This warning is thrown because TcdAddr, but the purpose of the instruction writes to an address */
#     DMA_TCD_UPDATE_SADDR((uint32)(TcdAddr), (uint32)(Saddr));
	.d2line		697
	stw		r4,0(r3)		# TcdAddr=r3 Saddr=r4
# }  
	.d2line		698
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo77:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L678:
	.type		Mcl_IPW_DmaSetSaddr,@function
	.size		Mcl_IPW_DmaSetSaddr,.-Mcl_IPW_DmaSetSaddr
# Number of nodes = 4

# Allocations for Mcl_IPW_DmaSetSaddr
#	?a4		TcdAddr
#	?a5		Saddr
# FUNC(void, MCL_CODE) Mcl_IPW_DmaSetSoff(P2VAR(Mcl_DmaTcdType, AUTOMATIC, MCL_APPL_DATA) TcdAddr,
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         715,22
#$$ld
.L684:

#$$bf	Mcl_IPW_DmaSetSoff,interprocedural,rasave,nostackparams
	.globl		Mcl_IPW_DmaSetSoff
	.d2_cfa_start __cie
Mcl_IPW_DmaSetSoff:
.Llo78:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# TcdAddr=r31 TcdAddr=r3
.Llo79:
	mr		r30,r4		# Soff=r30 Soff=r4
	.d2prologue_end
#                                         VAR(sint16, AUTOMATIC) Soff)
# {
#     /* Enter exclusive area to protect TCD words 2,6,8 */
#     SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_18();
	.d2line		719
.Llo80:
	bl		SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_18
#     
#     /* Call the DMA macro for setting the SOFF */
#     /** @violates @ref Mcl_IPW_c_REF_5 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */ 
# /** @violates @ref Mcl_IPW_c_REF_13 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#     /** @violates @ref Mcl_IPW_c_REF_6 MISRA 2004 Rule 10.1, Implicit conversion */
#     /** @violates @ref Mcl_IPW_c_REF_7 MISRA 2004 Rule 12.7, Bitwise operators */
#     /* Compiler_Warning: This warning is thrown because TcdAddr, but the purpose of the instruction writes to an address */
#     DMA_TCD_UPDATE_SOFF((uint32)(TcdAddr), (sint16)Soff);
	.d2line		727
.Llo82:
	lwz		r0,4(r31)		# TcdAddr=r31
	rlwinm		r0,r0,0,0,15
.Llo83:
	extsh		r30,r30		# Soff=r30 Soff=r30
	or		r0,r0,r30		# Soff=r30
	stw		r0,4(r31)		# TcdAddr=r31
#     /* Enter exclusive area to protect TCD words 2,6,8 */
#     SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_18();
	.d2line		729
	bl		SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_18
# }                                        
	.d2line		730
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo81:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L685:
	.type		Mcl_IPW_DmaSetSoff,@function
	.size		Mcl_IPW_DmaSetSoff,.-Mcl_IPW_DmaSetSoff
# Number of nodes = 18

# Allocations for Mcl_IPW_DmaSetSoff
#	?a4		TcdAddr
#	?a5		Soff
# FUNC(void, MCL_CODE) Mcl_IPW_DmaSetSga(P2VAR(Mcl_DmaTcdType, AUTOMATIC, MCL_APPL_DATA) TcdAddr,
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         747,22
#$$ld
.L693:

#$$bf	Mcl_IPW_DmaSetSga,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,lr
	.globl		Mcl_IPW_DmaSetSga
	.d2_cfa_start __cie
Mcl_IPW_DmaSetSga:
.Llo84:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# TcdAddr=r3 TcdAddr=r3
	mr		r4,r4		# Sga=r4 Sga=r4
	.d2prologue_end
#                                        VAR(uint32, AUTOMATIC) Sga)
# {
#     /* Call the DMA macro for setting the DLASTSGA */
#     /** @violates @ref Mcl_IPW_c_REF_5 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */ 
#     /** @violates @ref Mcl_IPW_c_REF_13 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#     /** @violates @ref Mcl_IPW_c_REF_6 MISRA 2004 Required Rule 10.1, Implicit conversion */
#     /* Compiler_Warning: This warning is thrown because TcdAddr, but the purpose of the instruction writes to an address */
#     DMA_TCD_UPDATE_DLAST_SGA((uint32)(TcdAddr), (sint32)(Sga));
	.d2line		755
	stw		r4,24(r3)		# TcdAddr=r3 Sga=r4
# }
	.d2line		756
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo85:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L694:
	.type		Mcl_IPW_DmaSetSga,@function
	.size		Mcl_IPW_DmaSetSga,.-Mcl_IPW_DmaSetSga
# Number of nodes = 6

# Allocations for Mcl_IPW_DmaSetSga
#	?a4		TcdAddr
#	?a5		Sga
# FUNC(void, MCL_CODE) Mcl_IPW_DmaSetDlast(P2VAR(Mcl_DmaTcdType, AUTOMATIC, MCL_APPL_DATA) TcdAddr,
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         772,22
#$$ld
.L700:

#$$bf	Mcl_IPW_DmaSetDlast,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,lr
	.globl		Mcl_IPW_DmaSetDlast
	.d2_cfa_start __cie
Mcl_IPW_DmaSetDlast:
.Llo86:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# TcdAddr=r3 TcdAddr=r3
	mr		r4,r4		# Dlast=r4 Dlast=r4
	.d2prologue_end
#                                          VAR(sint32, AUTOMATIC) Dlast)
# {
#     /* Call the DMA macro for setting the DLASTSGA */
#     /** @violates @ref Mcl_IPW_c_REF_5 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */ 
#     /** @violates @ref Mcl_IPW_c_REF_13 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#     /** @violates @ref Mcl_IPW_c_REF_6 MISRA 2004 Required Rule 10.1, Implicit conversion */
#     /* Compiler_Warning: This warning is thrown because TcdAddr, but the purpose of the instruction writes to an address */
#     DMA_TCD_UPDATE_DLAST_SGA((uint32)(TcdAddr), (sint32)(Dlast));
	.d2line		780
	stw		r4,24(r3)		# TcdAddr=r3 Dlast=r4
# }
	.d2line		781
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo87:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L701:
	.type		Mcl_IPW_DmaSetDlast,@function
	.size		Mcl_IPW_DmaSetDlast,.-Mcl_IPW_DmaSetDlast
# Number of nodes = 6

# Allocations for Mcl_IPW_DmaSetDlast
#	?a4		TcdAddr
#	?a5		Dlast
# FUNC(void, MCL_CODE) Mcl_IPW_DmaSetDaddr(P2VAR(Mcl_DmaTcdType, AUTOMATIC, MCL_APPL_DATA) TcdAddr,
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         797,22
#$$ld
.L709:

#$$bf	Mcl_IPW_DmaSetDaddr,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,lr
	.globl		Mcl_IPW_DmaSetDaddr
	.d2_cfa_start __cie
Mcl_IPW_DmaSetDaddr:
.Llo88:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# TcdAddr=r3 TcdAddr=r3
	mr		r4,r4		# Daddr=r4 Daddr=r4
	.d2prologue_end
#                                          VAR(uint32, AUTOMATIC) Daddr)
# {
#     /* Call the DMA macro for setting the DADDR */
#     /** @violates @ref Mcl_IPW_c_REF_5 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */ 
#     /** @violates @ref Mcl_IPW_c_REF_13 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#     /* Compiler_Warning: This warning is thrown because TcdAddr, but the purpose of the instruction writes to an address */
#     DMA_TCD_UPDATE_DADDR((uint32)(TcdAddr), (uint32)(Daddr));
	.d2line		804
	stw		r4,16(r3)		# TcdAddr=r3 Daddr=r4
# }
	.d2line		805
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo89:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L710:
	.type		Mcl_IPW_DmaSetDaddr,@function
	.size		Mcl_IPW_DmaSetDaddr,.-Mcl_IPW_DmaSetDaddr
# Number of nodes = 6

# Allocations for Mcl_IPW_DmaSetDaddr
#	?a4		TcdAddr
#	?a5		Daddr
# FUNC(void, MCL_CODE) Mcl_IPW_DmaSetDoff(P2VAR(Mcl_DmaTcdType, AUTOMATIC, MCL_APPL_DATA) TcdAddr,
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         822,22
#$$ld
.L716:

#$$bf	Mcl_IPW_DmaSetDoff,interprocedural,rasave,nostackparams
	.globl		Mcl_IPW_DmaSetDoff
	.d2_cfa_start __cie
Mcl_IPW_DmaSetDoff:
.Llo90:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# TcdAddr=r31 TcdAddr=r3
.Llo91:
	mr		r30,r4		# Doff=r30 Doff=r4
	.d2prologue_end
#                                         VAR(sint16, AUTOMATIC) Doff)
# {   
#     /* Enter exclusive area to protect TCD words 2,6,8 */
#     SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_21();
	.d2line		826
.Llo92:
	bl		SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_21
#     
#     /* Call the DMA macro for setting the DOFF */
#     /** @violates @ref Mcl_IPW_c_REF_5 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */ 
#     /** @violates @ref Mcl_IPW_c_REF_13 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#     /** @violates @ref Mcl_IPW_c_REF_6 MISRA 2004 Rule 10.1, Implicit conversion */
#     /** @violates @ref Mcl_IPW_c_REF_7 MISRA 2004 Rule 12.7, Bitwise operators */
#     /* Compiler_Warning: This warning is thrown because TcdAddr, but the purpose of the instruction writes to an address */  
#     DMA_TCD_UPDATE_DOFF((uint32)(TcdAddr), (sint16)(Doff));
	.d2line		834
.Llo94:
	lwz		r0,20(r31)		# TcdAddr=r31
	rlwinm		r0,r0,0,0,15
.Llo95:
	extsh		r30,r30		# Doff=r30 Doff=r30
	or		r0,r0,r30		# Doff=r30
	stw		r0,20(r31)		# TcdAddr=r31
#     /* Exit exclusive area to protect TCD words 2,6,8 */
#     SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_21();    
	.d2line		836
	bl		SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_21
# }                                        
	.d2line		837
	.d2epilogue_begin
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
.L717:
	.type		Mcl_IPW_DmaSetDoff,@function
	.size		Mcl_IPW_DmaSetDoff,.-Mcl_IPW_DmaSetDoff
# Number of nodes = 18

# Allocations for Mcl_IPW_DmaSetDoff
#	?a4		TcdAddr
#	?a5		Doff
# FUNC(void, MCL_CODE) Mcl_IPW_DmaSetCiter(P2VAR(Mcl_DmaTcdType, AUTOMATIC, MCL_APPL_DATA) TcdAddr,
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         853,22
#$$ld
.L723:

#$$bf	Mcl_IPW_DmaSetCiter,interprocedural,rasave,nostackparams
	.globl		Mcl_IPW_DmaSetCiter
	.d2_cfa_start __cie
Mcl_IPW_DmaSetCiter:
.Llo96:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# TcdAddr=r31 TcdAddr=r3
.Llo97:
	mr		r30,r4		# Citer=r30 Citer=r4
	.d2prologue_end
#                                          VAR(uint16, AUTOMATIC) Citer)
# {
#     /* Enter exclusive area to protect TCD words 2,6,8 */
#     SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_19();
	.d2line		857
.Llo98:
	bl		SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_19
#     
#     /* Call the DMA macro for setting the CITER */
#     /** @violates @ref Mcl_IPW_c_REF_5 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */ 
#     /** @violates @ref Mcl_IPW_c_REF_13 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#     /* Compiler_Warning: This warning is thrown because TcdAddr, but the purpose of the instruction read a bit from an address */
#     if((0U) != (uint16)DMA_TCD_GET_CITER_ELINK((uint32)(TcdAddr)))
	.d2line		863
.Llo100:
	lhz		r0,20(r31)		# TcdAddr=r31
	rlwinm		r0,r0,0,16,16
	e_cmphl16i	r0,0
	bc		1,2,.L461	# eq
#     {
#         /** @violates @ref Mcl_IPW_c_REF_5 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */ 
#         /** @violates @ref Mcl_IPW_c_REF_13 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#         /* Compiler_Warning: This warning is thrown because TcdAddr, but the purpose of the instruction writes to an address */
#         DMA_TCD_SET_CITER_ELINK_ON((uint32)(TcdAddr), (uint32)(Citer));
	.d2line		868
	lwz		r0,20(r31)		# TcdAddr=r31
	rlwinm		r0,r0,0,16,6
.Llo101:
	se_slwi		r30,16		# Citer=r30 Citer=r30
	or		r0,r0,r30		# Citer=r30
	stw		r0,20(r31)		# TcdAddr=r31
	b		.L462
.L461:
#     }
#     else
#     {   
#         /** @violates @ref Mcl_IPW_c_REF_5 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */ 
#         /** @violates @ref Mcl_IPW_c_REF_13 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#         /* Compiler_Warning: This warning is thrown because TcdAddr, but the purpose of the instruction writes to an address */
#         DMA_TCD_SET_CITER_ELINK_OFF((uint32)(TcdAddr), (uint32)(Citer));
	.d2line		875
.Llo102:
	lwz		r0,20(r31)		# TcdAddr=r31
	rlwinm		r0,r0,0,16,0
.Llo103:
	se_slwi		r30,16		# Citer=r30 Citer=r30
	or		r0,r0,r30		# Citer=r30
	stw		r0,20(r31)		# TcdAddr=r31
.L462:
#     }
#     
#     /* Exit exclusive area to protect TCD words 2,6,8 */
#     SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_19();
	.d2line		879
.Llo99:
	bl		SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_19
# }        
	.d2line		880
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
.L724:
	.type		Mcl_IPW_DmaSetCiter,@function
	.size		Mcl_IPW_DmaSetCiter,.-Mcl_IPW_DmaSetCiter
# Number of nodes = 46

# Allocations for Mcl_IPW_DmaSetCiter
#	?a4		TcdAddr
#	?a5		Citer
# FUNC(void, MCL_CODE) Mcl_IPW_DmaSetBiter(P2VAR(Mcl_DmaTcdType, AUTOMATIC, MCL_APPL_DATA) TcdAddr,
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         897,22
#$$ld
.L732:

#$$bf	Mcl_IPW_DmaSetBiter,interprocedural,rasave,nostackparams
	.globl		Mcl_IPW_DmaSetBiter
	.d2_cfa_start __cie
Mcl_IPW_DmaSetBiter:
.Llo104:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# TcdAddr=r31 TcdAddr=r3
.Llo105:
	mr		r30,r4		# Biter=r30 Biter=r4
	.d2prologue_end
#                                          VAR(uint16, AUTOMATIC) Biter)
# {
#     /* Enter exclusive area to protect TCD words 2,6,8 */
#     SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_25();
	.d2line		901
.Llo106:
	bl		SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_25
#     
#     /* Call the DMA macro for setting the BITER */
#     /** @violates @ref Mcl_IPW_c_REF_5 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */ 
#     /** @violates @ref Mcl_IPW_c_REF_13 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#     /* Compiler_Warning: The cast is needed to access only 2 bytes of the word without accessing the flags. */
#     if((0U) != (uint16)DMA_TCD_GET_BITER_ELINK((uint32)(TcdAddr)))
	.d2line		907
.Llo108:
	lhz		r0,28(r31)		# TcdAddr=r31
	rlwinm		r0,r0,0,16,16
	e_cmphl16i	r0,0
	bc		1,2,.L466	# eq
#     {
#         /** @violates @ref Mcl_IPW_c_REF_5 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */ 
#         /** @violates @ref Mcl_IPW_c_REF_13 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#         /* Compiler_Warning: The cast is needed to access only 2 bytes of the word without accessing the flags. */
#         DMA_TCD_SET_BITER_ELINK_ON((uint32)(TcdAddr), (uint32)(Biter));       
	.d2line		912
	lwz		r0,28(r31)		# TcdAddr=r31
	rlwinm		r0,r0,0,16,6
.Llo109:
	se_slwi		r30,16		# Biter=r30 Biter=r30
	or		r0,r0,r30		# Biter=r30
	stw		r0,28(r31)		# TcdAddr=r31
	b		.L467
.L466:
#     }
#     else
#     {
#         /** @violates @ref Mcl_IPW_c_REF_5 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */ 
#         /** @violates @ref Mcl_IPW_c_REF_13 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#         /* Compiler_Warning: The cast is needed to access only 2 bytes of the word without accessing the flags. */
#         DMA_TCD_SET_BITER_ELINK_OFF((uint32)(TcdAddr), (uint32)(Biter));
	.d2line		919
.Llo110:
	lwz		r0,28(r31)		# TcdAddr=r31
	rlwinm		r0,r0,0,16,0
.Llo111:
	se_slwi		r30,16		# Biter=r30 Biter=r30
	or		r0,r0,r30		# Biter=r30
	stw		r0,28(r31)		# TcdAddr=r31
.L467:
#     }
#     
#     /* Exit exclusive area to protect TCD words 2,6,8 */
#     SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_25();
	.d2line		923
.Llo107:
	bl		SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_25
# } 
	.d2line		924
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
.L733:
	.type		Mcl_IPW_DmaSetBiter,@function
	.size		Mcl_IPW_DmaSetBiter,.-Mcl_IPW_DmaSetBiter
# Number of nodes = 46

# Allocations for Mcl_IPW_DmaSetBiter
#	?a4		TcdAddr
#	?a5		Biter
# FUNC(void, MCL_CODE) Mcl_IPW_DmaSetLinkAndIterCount(P2CONST(Mcl_DmaConfigType, AUTOMATIC, MCL_APPL_CONST) Mcl_DmaConfigPtr,
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         942,22
#$$ld
.L739:

#$$bf	Mcl_IPW_DmaSetLinkAndIterCount,interprocedural,rasave,nostackparams
	.globl		Mcl_IPW_DmaSetLinkAndIterCount
	.d2_cfa_start __cie
Mcl_IPW_DmaSetLinkAndIterCount:
.Llo112:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# Mcl_DmaConfigPtr=r31 Mcl_DmaConfigPtr=r3
.Llo113:
	mr		r30,r4		# TcdAddr=r30 TcdAddr=r4
.Llo114:
	mr		r29,r5		# LinkCh=r29 LinkCh=r5
.Llo116:
	mr		r28,r6		# Iter=r28 Iter=r6
	.d2prologue_end
#                                                     P2VAR(Mcl_DmaTcdType, AUTOMATIC, MCL_APPL_DATA) TcdAddr,
#                                                     VAR(Mcl_ChannelType, AUTOMATIC) LinkCh,
#                                                     VAR(uint16, AUTOMATIC) Iter)
# {
# 
#     /* Enter exclusive area to protect TCD words 2,6,8 */
#     SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_20();
	.d2line		949
.Llo119:
	bl		SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_20
#     
#     /* Call the DMA macro for setting the ELINK, LINKCH, CITER */
#     /** @violates @ref Mcl_IPW_c_REF_5 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */ 
#     /** @violates @ref Mcl_IPW_c_REF_13 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */ 
#     /* Compiler_Warning: The cast is needed to access only 2 bytes of the word without accessing the flags. */
#     DMA_TCD_UPDATE_CITER((uint32)(TcdAddr),(DMA_TCD_ITER_ELINK_U32 | \
	.d2line		955
.Llo117:
	lwz		r0,20(r30)		# TcdAddr=r30
	rlwinm		r0,r0,0,16,31
	lwz		r3,8(r31)		# Mcl_DmaConfigPtr=r31
.Llo118:
	rlwinm		r29,r29,0,24,31		# LinkCh=r29 LinkCh=r29
	e_mulli		r29,r29,3		# LinkCh=r29 LinkCh=r29
	se_add		r3,r29		# LinkCh=r29
	lbz		r3,1(r3)
	rlwinm		r3,r3,25,1,6
	or		r0,r0,r3
	rlwinm		r6,r28,16,7,15		# Iter=r28
	or		r0,r0,r6
	.diab.bseti		r0,0
	stw		r0,20(r30)		# TcdAddr=r30
#                                            ((((uint32)(*(Mcl_DmaConfigPtr->pChannelsConfig))[LinkCh].Dma_Channel) & DMA_TCD_MAX_LINKCH_MASK_U32) << 25) | \
#                                             (((uint32)Iter & DMA_TCD_MAX_ITER_MASK_U32) << 16)));
#     
#      /* Call the DMA macro for setting the ELINK, LINKCH, BITER */    
#     /** @violates @ref Mcl_IPW_c_REF_5 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#     /** @violates @ref Mcl_IPW_c_REF_13 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#     /* Compiler_Warning: The cast is needed to access only 2 bytes of the word without accessing the flags. */
#     DMA_TCD_UPDATE_BITER((uint32)(TcdAddr), (uint16)(DMA_TCD_ITER_ELINK_U16 | \
	.d2line		963
	lwz		r0,8(r31)		# Mcl_DmaConfigPtr=r31
	se_add		r29,r0		# LinkCh=r29 LinkCh=r29
	lbz		r0,1(r29)		# LinkCh=r29
	rlwinm		r0,r0,9,17,22
	rlwinm		r28,r28,0,23,31		# Iter=r28 Iter=r28
	or		r0,r0,r28		# Iter=r28
	.diab.bseti		r0,16
	sth		r0,28(r30)		# TcdAddr=r30
#                                                     ((((*(Mcl_DmaConfigPtr->pChannelsConfig))[LinkCh].Dma_Channel) & DMA_TCD_MAX_LINKCH_MASK_U32) << 9)| \
#                                                     ((uint32)Iter & DMA_TCD_MAX_ITER_MASK_U32)));
# 
#     /* Exit exclusive area to protect TCD words 2,6,8 */
#     SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_20();
	.d2line		968
	bl		SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_20
# }  
	.d2line		969
	.d2epilogue_begin
	lmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_restore_list	3,10
.Llo115:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L740:
	.type		Mcl_IPW_DmaSetLinkAndIterCount,@function
	.size		Mcl_IPW_DmaSetLinkAndIterCount,.-Mcl_IPW_DmaSetLinkAndIterCount
# Number of nodes = 70

# Allocations for Mcl_IPW_DmaSetLinkAndIterCount
#	?a4		Mcl_DmaConfigPtr
#	?a5		TcdAddr
#	?a6		LinkCh
#	?a7		Iter
# FUNC(void, MCL_CODE) Mcl_IPW_DmaSetSModSize(P2VAR(Mcl_DmaTcdType, AUTOMATIC, MCL_APPL_DATA) TcdAddr,
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         986,22
#$$ld
.L748:

#$$bf	Mcl_IPW_DmaSetSModSize,interprocedural,rasave,nostackparams
	.globl		Mcl_IPW_DmaSetSModSize
	.d2_cfa_start __cie
Mcl_IPW_DmaSetSModSize:
.Llo120:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# TcdAddr=r31 TcdAddr=r3
.Llo121:
	mr		r30,r4		# SModSize=r30 SModSize=r4
.Llo122:
	mr		r29,r5		# SSize=r29 SSize=r5
	.d2prologue_end
#                                             VAR(uint8, AUTOMATIC) SModSize,
#                                             VAR(Mcl_DmaSizeType, AUTOMATIC) SSize)
# {
#     /* Enter exclusive area to protect TCD words 2,6,8 */
#     SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_16();
	.d2line		991
	bl		SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_16
#     
#     /* Call the DMA macro for setting the SMOD and SSIZE */
#     /** @violates @ref Mcl_IPW_c_REF_5 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */ 
#     /** @violates @ref Mcl_IPW_c_REF_13 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#     /* Compiler_Warning: This warning is thrown because TcdAddr, but the purpose of the instruction writes to an address */
#     DMA_TCD_UPDATE_SMOD((uint32)TcdAddr, (uint32)(SModSize));
	.d2line		997
.Llo124:
	lwz		r0,4(r31)		# TcdAddr=r31
	rlwinm		r0,r0,0,5,31
.Llo125:
	se_slwi		r30,27		# SModSize=r30 SModSize=r30
	or		r0,r0,r30		# SModSize=r30
	stw		r0,4(r31)		# TcdAddr=r31
#     /** @violates @ref Mcl_IPW_c_REF_13 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#     /** @violates @ref Mcl_IPW_c_REF_5 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#     DMA_TCD_UPDATE_SSIZE((uint32)TcdAddr, (uint32)(SSize));
	.d2line		1000
	lwz		r0,4(r31)		# TcdAddr=r31
	rlwinm		r0,r0,0,8,4
.Llo126:
	se_slwi		r29,24		# SSize=r29 SSize=r29
	or		r0,r0,r29		# SSize=r29
	stw		r0,4(r31)		# TcdAddr=r31
#     /* Exit exclusive area to protect TCD words 2,6,8 */
#     SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_16();
	.d2line		1002
	bl		SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_16
# } 
	.d2line		1003
	.d2epilogue_begin
	lmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	3,10
.Llo123:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L749:
	.type		Mcl_IPW_DmaSetSModSize,@function
	.size		Mcl_IPW_DmaSetSModSize,.-Mcl_IPW_DmaSetSModSize
# Number of nodes = 35

# Allocations for Mcl_IPW_DmaSetSModSize
#	?a4		TcdAddr
#	?a5		SModSize
#	?a6		SSize
# FUNC(void, MCL_CODE) Mcl_IPW_DmaSetDModSize(P2VAR(Mcl_DmaTcdType, AUTOMATIC, MCL_APPL_DATA) TcdAddr,
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1021,22
#$$ld
.L758:

#$$bf	Mcl_IPW_DmaSetDModSize,interprocedural,rasave,nostackparams
	.globl		Mcl_IPW_DmaSetDModSize
	.d2_cfa_start __cie
Mcl_IPW_DmaSetDModSize:
.Llo127:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# TcdAddr=r31 TcdAddr=r3
.Llo128:
	mr		r30,r4		# DModSize=r30 DModSize=r4
.Llo129:
	mr		r29,r5		# DSize=r29 DSize=r5
	.d2prologue_end
#                                             VAR(uint8, AUTOMATIC) DModSize,
#                                             VAR(Mcl_DmaSizeType, AUTOMATIC) DSize)
# {
#     /* Enter exclusive area to protect TCD words 2,6,8 */
#     SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_17();
	.d2line		1026
	bl		SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_17
#     
#     /* Call the DMA macro for setting the DMOD and DSIZE */
#     /** @violates @ref Mcl_IPW_c_REF_5 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */ 
#     /** @violates @ref Mcl_IPW_c_REF_13 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#     /* Compiler_Warning: This warning is thrown because TcdAddr, but the purpose of the instruction writes to an address */
#     DMA_TCD_UPDATE_DMOD((uint32)TcdAddr, (uint32)(DModSize));
	.d2line		1032
.Llo131:
	lwz		r0,4(r31)		# TcdAddr=r31
	rlwinm		r0,r0,0,13,7
.Llo132:
	rlwinm		r30,r30,19,5,12		# DModSize=r30 DModSize=r30
	or		r0,r0,r30		# DModSize=r30
	stw		r0,4(r31)		# TcdAddr=r31
#     /** @violates @ref Mcl_IPW_c_REF_13 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#     /** @violates @ref Mcl_IPW_c_REF_5 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */ 
#     DMA_TCD_UPDATE_DSIZE((uint32)TcdAddr, (uint32)(DSize));
	.d2line		1035
	lwz		r0,4(r31)		# TcdAddr=r31
	rlwinm		r0,r0,0,16,12
.Llo133:
	se_slwi		r29,16		# DSize=r29 DSize=r29
	or		r0,r0,r29		# DSize=r29
	stw		r0,4(r31)		# TcdAddr=r31
#     
#     /* Exit exclusive area to protect TCD words 2,6,8 */
#     SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_17();
	.d2line		1038
	bl		SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_17
# } 
	.d2line		1039
	.d2epilogue_begin
	lmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	3,10
.Llo130:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L759:
	.type		Mcl_IPW_DmaSetDModSize,@function
	.size		Mcl_IPW_DmaSetDModSize,.-Mcl_IPW_DmaSetDModSize
# Number of nodes = 35

# Allocations for Mcl_IPW_DmaSetDModSize
#	?a4		TcdAddr
#	?a5		DModSize
#	?a6		DSize
# FUNC(void, MCL_CODE) Mcl_IPW_DmaSetMlnoNBytes(P2VAR(Mcl_DmaTcdType, AUTOMATIC, MCL_APPL_DATA) TcdAddr,
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1056,22
#$$ld
.L766:

#$$bf	Mcl_IPW_DmaSetMlnoNBytes,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,lr
	.globl		Mcl_IPW_DmaSetMlnoNBytes
	.d2_cfa_start __cie
Mcl_IPW_DmaSetMlnoNBytes:
.Llo134:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# TcdAddr=r3 TcdAddr=r3
	mr		r4,r4		# MlnoNBytes=r4 MlnoNBytes=r4
	.d2prologue_end
#                                               VAR(uint32, AUTOMATIC) MlnoNBytes)
# {
#     /* Call the DMA macro for setting the NBytes for Mlno */
#     /** @violates @ref Mcl_IPW_c_REF_5 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */ 
#     /** @violates @ref Mcl_IPW_c_REF_13 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#     /* Compiler_Warning: This warning is thrown because TcdAddr, but the purpose of the instruction writes to an address */
#     DMA_TCD_UPDATE_NBYTES((uint32)(TcdAddr), MlnoNBytes);
	.d2line		1063
	stw		r4,8(r3)		# TcdAddr=r3 MlnoNBytes=r4
# } 
	.d2line		1064
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo135:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L767:
	.type		Mcl_IPW_DmaSetMlnoNBytes,@function
	.size		Mcl_IPW_DmaSetMlnoNBytes,.-Mcl_IPW_DmaSetMlnoNBytes
# Number of nodes = 6

# Allocations for Mcl_IPW_DmaSetMlnoNBytes
#	?a4		TcdAddr
#	?a5		MlnoNBytes
# FUNC(void, MCL_CODE) Mcl_IPW_DmaSetMloffen(P2VAR(Mcl_DmaTcdType, AUTOMATIC, MCL_APPL_DATA) TcdAddr,
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1085,22
#$$ld
.L773:

#$$bf	Mcl_IPW_DmaSetMloffen,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,lr
	.globl		Mcl_IPW_DmaSetMloffen
	.d2_cfa_start __cie
Mcl_IPW_DmaSetMloffen:
.Llo136:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# TcdAddr=r3 TcdAddr=r3
	mr		r4,r4		# Smloe=r4 Smloe=r4
	mr		r5,r5		# Dmloe=r5 Dmloe=r5
	mr		r6,r6		# Mloff=r6 Mloff=r6
	mr		r7,r7		# NBytes=r7 NBytes=r7
	.d2prologue_end
#                                            VAR(boolean, AUTOMATIC) Smloe,
#                                            VAR(boolean, AUTOMATIC) Dmloe,
#                                            VAR(sint32, AUTOMATIC) Mloff,
#                                            VAR(uint32, AUTOMATIC) NBytes)
# {
#     /* Call the DMA macro for setting the fields when offset is enabled and minor loop is enabled */
#     /** @violates @ref Mcl_IPW_c_REF_5 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */ 
#     /** @violates @ref Mcl_IPW_c_REF_13 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#     /** @violates @ref Mcl_IPW_c_REF_6 MISRA 2004 Required Rule 10.1, Implicit conversion */
#     /** @violates @ref Mcl_IPW_c_REF_7 MISRA 2004 Required Rule 12.7, Bitwise operators */
#     /* Compiler_Warning: This warning is thrown because TcdAddr, but the purpose of the instruction writes to an address */
#     DMA_TCD_UPDATE_MLOFFYES((uint32)(TcdAddr), (uint32)(((uint32)(Smloe) << 31) | ((uint32)(Dmloe) << 30) | (((Mloff) & DMA_TCD_MAX_MLOFF_MASK_U32) << 10) | ((NBytes) & DMA_TCD_MAX_MLOFF_NBYTES_MASK_U16)));
	.d2line		1097
	se_slwi		r4,31		# Smloe=r4 Smloe=r4
	se_slwi		r5,30		# Dmloe=r5 Dmloe=r5
	or		r4,r4,r5		# Smloe=r4 Smloe=r4 Dmloe=r5
	rlwinm		r6,r6,10,2,21		# Mloff=r6 Mloff=r6
	or		r4,r4,r6		# Smloe=r4 Smloe=r4 Mloff=r6
	rlwinm		r7,r7,0,22,31		# NBytes=r7 NBytes=r7
	or		r4,r4,r7		# Smloe=r4 Smloe=r4 NBytes=r7
	stw		r4,8(r3)		# TcdAddr=r3 Smloe=r4
# }                                            
	.d2line		1098
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo137:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L774:
	.type		Mcl_IPW_DmaSetMloffen,@function
	.size		Mcl_IPW_DmaSetMloffen,.-Mcl_IPW_DmaSetMloffen
# Number of nodes = 24

# Allocations for Mcl_IPW_DmaSetMloffen
#	?a4		TcdAddr
#	?a5		Smloe
#	?a6		Dmloe
#	?a7		Mloff
#	?a8		NBytes
# FUNC(void, MCL_CODE) Mcl_IPW_DmaSetSlast(P2VAR(Mcl_DmaTcdType, AUTOMATIC, MCL_APPL_DATA) TcdAddr,
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1114,22
#$$ld
.L783:

#$$bf	Mcl_IPW_DmaSetSlast,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,lr
	.globl		Mcl_IPW_DmaSetSlast
	.d2_cfa_start __cie
Mcl_IPW_DmaSetSlast:
.Llo138:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# TcdAddr=r3 TcdAddr=r3
	mr		r4,r4		# Slast=r4 Slast=r4
	.d2prologue_end
#                                          VAR(sint32, AUTOMATIC) Slast)
# {
#     /* Call the DMA macro for setting the SLAST  */
#     /** @violates @ref Mcl_IPW_c_REF_5 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */ 
#     /** @violates @ref Mcl_IPW_c_REF_13 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#     /* Compiler_Warning: This warning is thrown because TcdAddr, but the purpose of the instruction writes to an address */
#     DMA_TCD_UPDATE_SLAST((uint32)(TcdAddr), (uint32)(Slast));
	.d2line		1121
	stw		r4,12(r3)		# TcdAddr=r3 Slast=r4
# }
	.d2line		1122
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo139:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L784:
	.type		Mcl_IPW_DmaSetSlast,@function
	.size		Mcl_IPW_DmaSetSlast,.-Mcl_IPW_DmaSetSlast
# Number of nodes = 6

# Allocations for Mcl_IPW_DmaSetSlast
#	?a4		TcdAddr
#	?a5		Slast
# FUNC(void, MCL_CODE) Mcl_IPW_DmaSetFlags(P2VAR(Mcl_DmaTcdType, AUTOMATIC, MCL_APPL_DATA) TcdAddr,
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1143,22
#$$ld
.L790:

#$$bf	Mcl_IPW_DmaSetFlags,interprocedural,rasave,nostackparams
	.globl		Mcl_IPW_DmaSetFlags
	.d2_cfa_start __cie
Mcl_IPW_DmaSetFlags:
.Llo140:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# TcdAddr=r31 TcdAddr=r3
.Llo141:
	mr		r30,r4		# Flags=r30 Flags=r4
	.d2prologue_end
#                                          VAR(uint8, AUTOMATIC) Flags)
# {
# 
#     
#     #ifdef MCAL_CACHE_RUNTIME_MNGMNT
#     #if (STD_ON == MCAL_CACHE_RUNTIME_MNGMNT)
#     #if (STD_ON == MCL_SYNCRONIZE_CACHE) 
#     VAR(Std_ReturnType, AUTOMATIC) retVal = (Std_ReturnType)E_NOT_OK;
#         
#     if (DMA_TCD_START_U32  == ((uint32)Flags & DMA_TCD_START_U32))
#     {
#         /* Flush DCACHE to synchronize data */
#         retVal = Mcl_IPW_CacheFlush(MCL_LMEM_CACHE_ALL);
#         if ((Std_ReturnType)E_NOT_OK == retVal)
#         {   
#             #if (MCL_DMA_ERROR_INTERRUPTS_USED == STD_ON)
#                 /* TcdAddr may reside in RAM, affected instance is unknown */
#                 /* call error notifications of both instances */
#                 Mcl_ErrorNotification((Mcl_DmaInstanceType)DMA_INSTANCE0, MCL_DMA_MEM_SYNC_ERROR);
#                 #if (MCL_DMA_NB_CONTROLLERS == 0x02U)
#                 Mcl_ErrorNotification((Mcl_DmaInstanceType)DMA_INSTANCE1, MCL_DMA_MEM_SYNC_ERROR);
#                 #endif
#             #endif
#         }
#         else
#         {
#             /* cache memory sync successful */
#         }
#     }
#     #endif
#     #endif
#     #endif
#     
#     /* Enter exclusive area to protect TCD words 2,6,8 */
#     SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_24();
	.d2line		1178
.Llo142:
	bl		SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_24
#     
#     /* Call the DMA macro for setting the flags  */
#     /** @violates @ref Mcl_IPW_c_REF_5 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */ 
#     /** @violates @ref Mcl_IPW_c_REF_13 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#     /* Compiler_Warning: This warning is thrown because TcdAddr, but the purpose of the instruction writes to an address */
#     DMA_TCD_SET_FLAGS((uint32)(TcdAddr), (uint32)(Flags));
	.d2line		1184
.Llo144:
	lwz		r0,28(r31)		# TcdAddr=r31
	rlwinm		r0,r0,0,0,23
.Llo145:
	rlwinm		r30,r30,0,24,31		# Flags=r30 Flags=r30
	or		r0,r0,r30		# Flags=r30
	stw		r0,28(r31)		# TcdAddr=r31
#     
#     /* Exit exclusive area to protect TCD words 2,6,8 */
#     SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_24();
	.d2line		1187
	bl		SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_24
# }
	.d2line		1188
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo143:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L791:
	.type		Mcl_IPW_DmaSetFlags,@function
	.size		Mcl_IPW_DmaSetFlags,.-Mcl_IPW_DmaSetFlags
# Number of nodes = 18

# Allocations for Mcl_IPW_DmaSetFlags
#	?a4		TcdAddr
#	?a5		Flags
# FUNC(uint8, MCL_CODE) Mcl_IPW_DmaGetFlags(P2VAR(Mcl_DmaTcdType, AUTOMATIC, MCL_APPL_DATA) TcdAddr)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1207,23
#$$ld
.L797:

#$$bf	Mcl_IPW_DmaGetFlags,interprocedural,nostackparams

# Regs written: r0,r1,r3
	.globl		Mcl_IPW_DmaGetFlags
	.d2_cfa_start __cie
Mcl_IPW_DmaGetFlags:
.Llo146:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# TcdAddr=r3 TcdAddr=r3
	.d2prologue_end
# {
#     /* Call the DMA macro for getting the flags  */
#     /** @violates @ref Mcl_IPW_c_REF_5 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */ 
#     /** @violates @ref Mcl_IPW_c_REF_13 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#     /* Compiler_Warning: This warning is thrown because TcdAddr, but the purpose of the instruction writes to an address */
#     return (uint8)DMA_TCD_GET_FLAGS((uint32)(TcdAddr));
	.d2line		1213
	lwz		r3,28(r3)		# TcdAddr=r3 TcdAddr=r3
	rlwinm		r3,r3,0,24,31		# TcdAddr=r3 TcdAddr=r3
# }
	.d2line		1214
	.d2epilogue_begin
.Llo147:
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L798:
	.type		Mcl_IPW_DmaGetFlags,@function
	.size		Mcl_IPW_DmaGetFlags,.-Mcl_IPW_DmaGetFlags
# Number of nodes = 8

# Allocations for Mcl_IPW_DmaGetFlags
#	?a4		TcdAddr
# FUNC(void, MCL_CODE) Mcl_IPW_DmaClearIntMaj(P2VAR(Mcl_DmaTcdType, AUTOMATIC, MCL_APPL_DATA) TcdAddr)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1230,22
#$$ld
.L803:

#$$bf	Mcl_IPW_DmaClearIntMaj,interprocedural,rasave,nostackparams
	.globl		Mcl_IPW_DmaClearIntMaj
	.d2_cfa_start __cie
Mcl_IPW_DmaClearIntMaj:
.Llo148:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# TcdAddr=r31 TcdAddr=r3
	.d2prologue_end
# {
#     /* Enter exclusive area to protect TCD words 2,6,8 */
#     SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_23();
	.d2line		1233
.Llo149:
	bl		SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_23
#     
#     /* Call the DMA macro for clearing the enable interrupt on major iteration count complete  */
#     /** @violates @ref Mcl_IPW_c_REF_5 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */ 
#     /** @violates @ref Mcl_IPW_c_REF_13 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#     /* Compiler_Warning: This warning is thrown because TcdAddr, but the purpose of the instruction writes to an address */
#     DMA_TCD_CLR_INT_MAJ((uint32)(TcdAddr));
	.d2line		1239
.Llo150:
	lwz		r0,28(r31)		# TcdAddr=r31
	.diab.bclri		r0,30
	stw		r0,28(r31)		# TcdAddr=r31
#     
#     /* Exit exclusive area to protect TCD words 2,6,8 */
#     SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_23();
	.d2line		1242
	bl		SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_23
# }
	.d2line		1243
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo151:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L804:
	.type		Mcl_IPW_DmaClearIntMaj,@function
	.size		Mcl_IPW_DmaClearIntMaj,.-Mcl_IPW_DmaClearIntMaj
# Number of nodes = 10

# Allocations for Mcl_IPW_DmaClearIntMaj
#	?a4		TcdAddr
# FUNC(void, MCL_CODE) Mcl_IPW_DmaSetIntMaj(P2VAR(Mcl_DmaTcdType, AUTOMATIC, MCL_APPL_DATA) TcdAddr)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1259,22
#$$ld
.L809:

#$$bf	Mcl_IPW_DmaSetIntMaj,interprocedural,rasave,nostackparams
	.globl		Mcl_IPW_DmaSetIntMaj
	.d2_cfa_start __cie
Mcl_IPW_DmaSetIntMaj:
.Llo152:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# TcdAddr=r31 TcdAddr=r3
	.d2prologue_end
# {
#     /* Enter exclusive area to protect TCD words 2,6,8 */
#     SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_22();
	.d2line		1262
.Llo153:
	bl		SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_22
#     
#     /* Call the DMA macro for enabling interrupt on major iteration count complete  */
#     /** @violates @ref Mcl_IPW_c_REF_5 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */ 
#     /** @violates @ref Mcl_IPW_c_REF_13 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#     /* Compiler_Warning: This warning is thrown because TcdAddr, but the purpose of the instruction writes to an address */
#     DMA_TCD_SET_INT_MAJ((uint32)(TcdAddr));
	.d2line		1268
.Llo154:
	lwz		r0,28(r31)		# TcdAddr=r31
	.diab.bseti		r0,30
	stw		r0,28(r31)		# TcdAddr=r31
#     
#     /* Exit exclusive area to protect TCD words 2,6,8 */
#     SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_22();
	.d2line		1271
	bl		SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_22
# }
	.d2line		1272
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo155:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L810:
	.type		Mcl_IPW_DmaSetIntMaj,@function
	.size		Mcl_IPW_DmaSetIntMaj,.-Mcl_IPW_DmaSetIntMaj
# Number of nodes = 10

# Allocations for Mcl_IPW_DmaSetIntMaj
#	?a4		TcdAddr
# FUNC(boolean, MCL_CODE) Mcl_IPW_DmaTcdGetIntMaj(P2CONST(Mcl_DmaConfigType, AUTOMATIC, MCL_APPL_CONST) Mcl_DmaConfigPtr,
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1289,25
#$$ld
.L815:

#$$bf	Mcl_IPW_DmaTcdGetIntMaj,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,cr0,lr
	.globl		Mcl_IPW_DmaTcdGetIntMaj
	.d2_cfa_start __cie
Mcl_IPW_DmaTcdGetIntMaj:
.Llo156:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# Mcl_DmaConfigPtr=r3 Mcl_DmaConfigPtr=r3
	mr		r4,r4		# nChannel=r4 nChannel=r4
	.d2prologue_end
#                                                 VAR(Mcl_ChannelType, AUTOMATIC) nChannel)
# {
#     /* Call the DMA macro for getting interrupt state  */
#     /** @violates @ref Mcl_IPW_c_REF_5 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */ 
#     /** @violates @ref Mcl_IPW_c_REF_13 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#     return (DMA_TCD_GET_INT_MAJ((*(Mcl_DmaConfigPtr->pChannelsConfig))[nChannel].Dma_Channel));  
	.d2line		1295
	lwz		r3,8(r3)		# Mcl_DmaConfigPtr=r3 Mcl_DmaConfigPtr=r3
	rlwinm		r4,r4,0,24,31		# nChannel=r4 nChannel=r4
	e_mulli		r4,r4,3		# nChannel=r4 nChannel=r4
	se_add		r3,r4		# Mcl_DmaConfigPtr=r3 Mcl_DmaConfigPtr=r3 nChannel=r4
	lbz		r0,1(r3)		# Mcl_DmaConfigPtr=r3
	rlwinm		r0,r0,5,21,26
	e_lis		r3,64522		# Mcl_DmaConfigPtr=r3
	e_or2i		r3,4124		# Mcl_DmaConfigPtr=r3
	se_add		r0,r3		# Mcl_DmaConfigPtr=r3
	lwzx		r0,r0,r0
	se_btsti		r0,30
	diab.li		r0,1
	isel		r0,r3,r0,2		# Mcl_DmaConfigPtr=r3
.L481:
.Llo157:
	isel		r3,0,r0,2		# Mcl_DmaConfigPtr=r3
.L482:
.Llo158:
	rlwinm		r3,r3,0,24,31		# Mcl_DmaConfigPtr=r3 Mcl_DmaConfigPtr=r3
# }
	.d2line		1296
	.d2epilogue_begin
.Llo159:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L816:
	.type		Mcl_IPW_DmaTcdGetIntMaj,@function
	.size		Mcl_IPW_DmaTcdGetIntMaj,.-Mcl_IPW_DmaTcdGetIntMaj
# Number of nodes = 33

# Allocations for Mcl_IPW_DmaTcdGetIntMaj
#	?a4		Mcl_DmaConfigPtr
#	?a5		nChannel
#	?a6		$$101
# FUNC(void, MCL_CODE) Mcl_IPW_DmaClearDone(P2CONST(Mcl_DmaConfigType, AUTOMATIC, MCL_APPL_CONST) Mcl_DmaConfigPtr,
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1312,22
#$$ld
.L822:

#$$bf	Mcl_IPW_DmaClearDone,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,lr
	.globl		Mcl_IPW_DmaClearDone
	.d2_cfa_start __cie
Mcl_IPW_DmaClearDone:
.Llo160:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# Mcl_DmaConfigPtr=r3 Mcl_DmaConfigPtr=r3
	mr		r4,r4		# nChannel=r4 nChannel=r4
	.d2prologue_end
#                                           VAR(Mcl_ChannelType, AUTOMATIC) nChannel)
# {
# 
#     /* Call the DMA macro for clearing DONE bit for nChannel  */
#     /** @violates @ref Mcl_IPW_c_REF_5 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */ 
#     /** @violates @ref Mcl_IPW_c_REF_13 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#     DMA_CLR_DONE((*(Mcl_DmaConfigPtr->pChannelsConfig))[nChannel].Dma_Channel);
	.d2line		1319
	lwz		r3,8(r3)		# Mcl_DmaConfigPtr=r3 Mcl_DmaConfigPtr=r3
	rlwinm		r4,r4,0,24,31		# nChannel=r4 nChannel=r4
	e_mulli		r4,r4,3		# nChannel=r4 nChannel=r4
	se_add		r3,r4		# Mcl_DmaConfigPtr=r3 Mcl_DmaConfigPtr=r3 nChannel=r4
	lbz		r4,1(r3)		# nChannel=r4 Mcl_DmaConfigPtr=r3
	rlwinm		r4,r4,5,21,26		# nChannel=r4 nChannel=r4
	e_lis		r3,64522		# Mcl_DmaConfigPtr=r3
	e_or2i		r3,4124		# Mcl_DmaConfigPtr=r3
	se_add		r4,r3		# nChannel=r4 nChannel=r4 Mcl_DmaConfigPtr=r3
	lwz		r3,0(r4)		# Mcl_DmaConfigPtr=r3 nChannel=r4
	.diab.bclri		r3,24		# Mcl_DmaConfigPtr=r3
	stw		r3,0(r4)		# nChannel=r4 Mcl_DmaConfigPtr=r3
# }
	.d2line		1320
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo161:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L823:
	.type		Mcl_IPW_DmaClearDone,@function
	.size		Mcl_IPW_DmaClearDone,.-Mcl_IPW_DmaClearDone
# Number of nodes = 22

# Allocations for Mcl_IPW_DmaClearDone
#	?a4		Mcl_DmaConfigPtr
#	?a5		nChannel
#	?a6		$$102
# FUNC(uint16, MCL_CODE) Mcl_IPW_DmaGetCiter(P2VAR(Mcl_DmaTcdType, AUTOMATIC, MCL_APPL_DATA) TcdAddr)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1335,24
#$$ld
.L829:

#$$bf	Mcl_IPW_DmaGetCiter,interprocedural,nostackparams

# Regs written: r0,r1,r3,cr0,lr
	.globl		Mcl_IPW_DmaGetCiter
	.d2_cfa_start __cie
Mcl_IPW_DmaGetCiter:
.Llo162:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
.Llo166:
	stw		r0,20(r1)		# returnValue=r0
	.d2_cfa_offset    108,-1
	mr		r3,r3		# TcdAddr=r3 TcdAddr=r3
	.d2prologue_end
# {
#     VAR(uint16, AUTOMATIC) returnValue = 0U;
	.d2line		1337
	diab.li		r0,0		# returnValue=r0
#     /* Call the DMA macro for getting the flags  */
#     /** @violates @ref Mcl_IPW_c_REF_5 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */ 
#     /** @violates @ref Mcl_IPW_c_REF_13 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#     /* Compiler_Warning: This warning is thrown because TcdAddr, but the purpose of the instruction Read bit from an address */
#     if((0U)!=(uint16)DMA_TCD_GET_CITER_ELINK((uint32)(TcdAddr)))
	.d2line		1342
.Llo167:
	lhz		r0,20(r3)		# returnValue=r0 TcdAddr=r3
.Llo168:
	rlwinm		r0,r0,0,16,16		# returnValue=r0 returnValue=r0
	e_cmphl16i	r0,0		# returnValue=r0
	bc		1,2,.L487	# eq
#     {
#         /** @violates @ref Mcl_IPW_c_REF_5 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */ 
#         /** @violates @ref Mcl_IPW_c_REF_13 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#         /* Compiler_Warning: This warning is thrown because TcdAddr, but the purpose of the instruction Read to an address */
#         returnValue = (uint16)DMA_TCD_GET_CITER_ON((uint32)(TcdAddr)); 
	.d2line		1347
.Llo169:
	lhz		r3,20(r3)		# TcdAddr=r3 TcdAddr=r3
	rlwinm		r3,r3,0,23,31		# TcdAddr=r3 TcdAddr=r3
.Llo163:
	mr		r3,r3		# returnValue=r3 returnValue=r3
	b		.L488
.L487:
#     }
#     else
#     {
#         /** @violates @ref Mcl_IPW_c_REF_5 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */ 
#         /** @violates @ref Mcl_IPW_c_REF_13 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#         /* Compiler_Warning: This warning is thrown because TcdAddr, but the purpose of the instruction Read to an address */
#         returnValue = (uint16)DMA_TCD_GET_CITER_OFF((uint32)(TcdAddr));
	.d2line		1354
.Llo164:
	lhz		r3,20(r3)		# TcdAddr=r3 TcdAddr=r3
	rlwinm		r3,r3,0,17,31		# TcdAddr=r3 TcdAddr=r3
.Llo165:
	mr		r3,r3		# returnValue=r3 returnValue=r3
.L488:
#     }
#     
#     return returnValue;
	.d2line		1357
	rlwinm		r3,r3,0,16,31		# returnValue=r3 returnValue=r3
# }
	.d2line		1358
	.d2epilogue_begin
.Llo170:
	lwz		r0,20(r1)		# returnValue=r0
	mtspr		lr,r0		# returnValue=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L830:
	.type		Mcl_IPW_DmaGetCiter,@function
	.size		Mcl_IPW_DmaGetCiter,.-Mcl_IPW_DmaGetCiter
# Number of nodes = 31

# Allocations for Mcl_IPW_DmaGetCiter
#	?a4		TcdAddr
#	?a5		returnValue
# FUNC(uint32, MCL_CODE) Mcl_IPW_DmaGetSaddr(P2VAR(Mcl_DmaTcdType, AUTOMATIC, MCL_APPL_DATA) TcdAddr)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1373,24
#$$ld
.L837:

#$$bf	Mcl_IPW_DmaGetSaddr,interprocedural,nostackparams

# Regs written: r0,r1,r3
	.globl		Mcl_IPW_DmaGetSaddr
	.d2_cfa_start __cie
Mcl_IPW_DmaGetSaddr:
.Llo171:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# TcdAddr=r3 TcdAddr=r3
	.d2prologue_end
# {
#     /* Call the DMA macro for getting the SADDR field  */
#     /** @violates @ref Mcl_IPW_c_REF_5 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */ 
#     /** @violates @ref Mcl_IPW_c_REF_13 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#     /* Compiler_Warning: This warning is thrown because TcdAddr, but the purpose of the instruction writes to an address */
#     return (DMA_GET_SADDR((uint32)(TcdAddr))); 
	.d2line		1379
	lwz		r3,0(r3)		# TcdAddr=r3 TcdAddr=r3
# }
	.d2line		1380
	.d2epilogue_begin
.Llo172:
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L838:
	.type		Mcl_IPW_DmaGetSaddr,@function
	.size		Mcl_IPW_DmaGetSaddr,.-Mcl_IPW_DmaGetSaddr
# Number of nodes = 3

# Allocations for Mcl_IPW_DmaGetSaddr
#	?a4		TcdAddr
# FUNC(uint32, MCL_CODE) Mcl_IPW_DmaGetDaddr(P2VAR(Mcl_DmaTcdType, AUTOMATIC, MCL_APPL_DATA) TcdAddr)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1395,24
#$$ld
.L843:

#$$bf	Mcl_IPW_DmaGetDaddr,interprocedural,nostackparams

# Regs written: r0,r1,r3
	.globl		Mcl_IPW_DmaGetDaddr
	.d2_cfa_start __cie
Mcl_IPW_DmaGetDaddr:
.Llo173:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# TcdAddr=r3 TcdAddr=r3
	.d2prologue_end
# {
#     /* Call the DMA macro for getting the DADDR field  */
#     /** @violates @ref Mcl_IPW_c_REF_5 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */ 
#     /** @violates @ref Mcl_IPW_c_REF_13 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#     /* Compiler_Warning: This warning is thrown because TcdAddr, but the purpose of the instruction writes to an address */
#     return (DMA_GET_DADDR((uint32)(TcdAddr)));  
	.d2line		1401
	lwz		r3,16(r3)		# TcdAddr=r3 TcdAddr=r3
# }
	.d2line		1402
	.d2epilogue_begin
.Llo174:
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L844:
	.type		Mcl_IPW_DmaGetDaddr,@function
	.size		Mcl_IPW_DmaGetDaddr,.-Mcl_IPW_DmaGetDaddr
# Number of nodes = 5

# Allocations for Mcl_IPW_DmaGetDaddr
#	?a4		TcdAddr
# FUNC(boolean, MCL_CODE) Mcl_IPW_DmaGetInterruptRequest(P2CONST(Mcl_DmaConfigType, AUTOMATIC, MCL_APPL_CONST) Mcl_DmaConfigPtr,
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1419,25
#$$ld
.L849:

#$$bf	Mcl_IPW_DmaGetInterruptRequest,interprocedural,rasave,nostackparams
	.globl		Mcl_IPW_DmaGetInterruptRequest
	.d2_cfa_start __cie
Mcl_IPW_DmaGetInterruptRequest:
.Llo175:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# Mcl_DmaConfigPtr=r3 Mcl_DmaConfigPtr=r3
	mr		r4,r4		# nChannel=r4 nChannel=r4
	.d2prologue_end
#                                                        VAR(Mcl_ChannelType, AUTOMATIC) nChannel)
# {
#     /* Call the DMA function for getting the interrupt request for the specified channel  */
#     return Mcl_Dma_GetMultiRegChInfo((*(Mcl_DmaConfigPtr->pChannelsConfig))[nChannel].Dma_Channel, MCL_DMA_GET_INT);    
	.d2line		1423
	lwz		r3,8(r3)		# Mcl_DmaConfigPtr=r3 Mcl_DmaConfigPtr=r3
	rlwinm		r4,r4,0,24,31		# nChannel=r4 nChannel=r4
	e_mulli		r4,r4,3		# nChannel=r4 nChannel=r4
	se_add		r3,r4		# Mcl_DmaConfigPtr=r3 Mcl_DmaConfigPtr=r3 nChannel=r4
	lbz		r3,1(r3)		# Mcl_DmaConfigPtr=r3 Mcl_DmaConfigPtr=r3
.Llo176:
	diab.li		r4,1		# nChannel=r4
.Llo179:
	bl		Mcl_Dma_GetMultiRegChInfo
.Llo177:
	rlwinm		r3,r3,0,24,31		# Mcl_DmaConfigPtr=r3 Mcl_DmaConfigPtr=r3
# }
	.d2line		1424
	.d2epilogue_begin
.Llo178:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L850:
	.type		Mcl_IPW_DmaGetInterruptRequest,@function
	.size		Mcl_IPW_DmaGetInterruptRequest,.-Mcl_IPW_DmaGetInterruptRequest
# Number of nodes = 19

# Allocations for Mcl_IPW_DmaGetInterruptRequest
#	?a4		Mcl_DmaConfigPtr
#	?a5		nChannel
# FUNC(void, MCL_CODE) Mcl_IPW_DmaEnableHwRequest(P2CONST(Mcl_DmaConfigType, AUTOMATIC, MCL_APPL_CONST) Mcl_DmaConfigPtr,
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1439,22
#$$ld
.L856:

#$$bf	Mcl_IPW_DmaEnableHwRequest,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,lr
	.globl		Mcl_IPW_DmaEnableHwRequest
	.d2_cfa_start __cie
Mcl_IPW_DmaEnableHwRequest:
.Llo180:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# Mcl_DmaConfigPtr=r3 Mcl_DmaConfigPtr=r3
	mr		r4,r4		# ChannelNumber=r4 ChannelNumber=r4
	.d2prologue_end
#                                                 VAR(Mcl_ChannelType, AUTOMATIC) ChannelNumber)
# {
# 
#     #ifdef MCAL_CACHE_RUNTIME_MNGMNT
#     #if (STD_ON == MCAL_CACHE_RUNTIME_MNGMNT)
#     #if (STD_ON == MCL_SYNCRONIZE_CACHE) 
#         VAR(Std_ReturnType, AUTOMATIC) retVal = (Std_ReturnType)E_NOT_OK;
#     
#         /* Invalidate DCACHE to synchronize data */
#         retVal = Mcl_IPW_CacheClear(MCL_LMEM_CACHE_ALL);
#         if ((Std_ReturnType)E_NOT_OK == retVal)
#         {  
#             /* memory synchronization failed, notify user */
#             #if (MCL_DMA_ERROR_INTERRUPTS_USED == STD_ON)
#             /** @violates @ref Mcl_IPW_c_REF_5 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */ 
#             /** @violates @ref Mcl_IPW_c_REF_13 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#             Mcl_ErrorNotification(DMA_MOD_IDX_U8((uint32)(*(Mcl_DmaConfigPtr->pChannelsConfig))[ChannelNumber].Dma_Channel) , MCL_DMA_MEM_SYNC_ERROR);
#             #endif
#         }
#         else
#         {
#             /* cache memory sync successful */
#         }
#     #endif
#     #endif
#     #endif
#     
#     /* Call the DMA macro for enabling the hardware request for ChannelNumber  */
#     /** @violates @ref Mcl_IPW_c_REF_5 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */ 
#     /** @violates @ref Mcl_IPW_c_REF_13 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#     DMA_ENABLE_REQUEST((uint32)(*(Mcl_DmaConfigPtr->pChannelsConfig))[ChannelNumber].Dma_Channel);  
	.d2line		1470
	lwz		r3,8(r3)		# Mcl_DmaConfigPtr=r3 Mcl_DmaConfigPtr=r3
	rlwinm		r4,r4,0,24,31		# ChannelNumber=r4 ChannelNumber=r4
	e_mulli		r4,r4,3		# ChannelNumber=r4 ChannelNumber=r4
	se_add		r3,r4		# Mcl_DmaConfigPtr=r3 Mcl_DmaConfigPtr=r3 ChannelNumber=r4
	lbz		r3,1(r3)		# Mcl_DmaConfigPtr=r3 Mcl_DmaConfigPtr=r3
	rlwinm		r3,r3,0,26,31		# Mcl_DmaConfigPtr=r3 Mcl_DmaConfigPtr=r3
	e_lis		r4,-1014		# ChannelNumber=r4
	stb		r3,24(r4)		# ChannelNumber=r4 Mcl_DmaConfigPtr=r3
# }
	.d2line		1471
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo181:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L857:
	.type		Mcl_IPW_DmaEnableHwRequest,@function
	.size		Mcl_IPW_DmaEnableHwRequest,.-Mcl_IPW_DmaEnableHwRequest
# Number of nodes = 17

# Allocations for Mcl_IPW_DmaEnableHwRequest
#	?a4		Mcl_DmaConfigPtr
#	?a5		ChannelNumber
# FUNC(void, MCL_CODE) Mcl_IPW_DmaDisableHwRequest(P2CONST(Mcl_DmaConfigType, AUTOMATIC, MCL_APPL_CONST) Mcl_DmaConfigPtr,
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1485,22
#$$ld
.L863:

#$$bf	Mcl_IPW_DmaDisableHwRequest,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,lr
	.globl		Mcl_IPW_DmaDisableHwRequest
	.d2_cfa_start __cie
Mcl_IPW_DmaDisableHwRequest:
.Llo182:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# Mcl_DmaConfigPtr=r3 Mcl_DmaConfigPtr=r3
	mr		r4,r4		# ChannelNumber=r4 ChannelNumber=r4
	.d2prologue_end
#                                                 VAR(Mcl_ChannelType, AUTOMATIC) ChannelNumber)
# {
# 
#     /* Call the DMA macro for disabling the hardware request for ChannelNumber  */
#     /** @violates @ref Mcl_IPW_c_REF_5 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */ 
#     /** @violates @ref Mcl_IPW_c_REF_13 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#     DMA_DISABLE_REQUEST((uint32)(*(Mcl_DmaConfigPtr->pChannelsConfig))[ChannelNumber].Dma_Channel);  
	.d2line		1492
	lwz		r3,8(r3)		# Mcl_DmaConfigPtr=r3 Mcl_DmaConfigPtr=r3
	rlwinm		r4,r4,0,24,31		# ChannelNumber=r4 ChannelNumber=r4
	e_mulli		r4,r4,3		# ChannelNumber=r4 ChannelNumber=r4
	se_add		r3,r4		# Mcl_DmaConfigPtr=r3 Mcl_DmaConfigPtr=r3 ChannelNumber=r4
	lbz		r3,1(r3)		# Mcl_DmaConfigPtr=r3 Mcl_DmaConfigPtr=r3
	rlwinm		r3,r3,0,26,31		# Mcl_DmaConfigPtr=r3 Mcl_DmaConfigPtr=r3
	e_lis		r4,-1014		# ChannelNumber=r4
	stb		r3,25(r4)		# ChannelNumber=r4 Mcl_DmaConfigPtr=r3
# }
	.d2line		1493
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo183:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L864:
	.type		Mcl_IPW_DmaDisableHwRequest,@function
	.size		Mcl_IPW_DmaDisableHwRequest,.-Mcl_IPW_DmaDisableHwRequest
# Number of nodes = 17

# Allocations for Mcl_IPW_DmaDisableHwRequest
#	?a4		Mcl_DmaConfigPtr
#	?a5		ChannelNumber
# FUNC(void, MCL_CODE)Mcl_IPW_DmaUpdateDestAddress(VAR(uint32, AUTOMATIC)channel, VAR(uint32, AUTOMATIC) daddr)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1509,21
#$$ld
.L870:

#$$bf	Mcl_IPW_DmaUpdateDestAddress,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,lr
	.globl		Mcl_IPW_DmaUpdateDestAddress
	.d2_cfa_start __cie
Mcl_IPW_DmaUpdateDestAddress:
.Llo184:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r5,r3		# channel=r5 channel=r3
	mr		r4,r4		# daddr=r4 daddr=r4
	.d2prologue_end
# {
# 
#     /* Call the DMA macro for updating the destination address for channel  */
#     /** @violates @ref Mcl_IPW_c_REF_4 Array indexing shall be the only allowed form of pointer arithmetic. */
#     /** @violates @ref Mcl_IPW_c_REF_5 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */
#     /** @violates @ref Mcl_IPW_c_REF_13 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#     /** @violates @ref Mcl_IPW_c_REF_6 MISRA 2004 Rule 10.1, Implicit conversion */
#     DMA_UPDATE_DADDR(channel,daddr);  
	.d2line		1517
	rlwinm		r5,r5,5,21,26		# channel=r5 channel=r5
.Llo185:
	e_lis		r3,64522
.Llo186:
	e_or2i		r3,4112
	se_add		r3,r5		# channel=r5
	stwx		r4,r0,r3		# daddr=r4
# }
	.d2line		1518
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo187:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L871:
	.type		Mcl_IPW_DmaUpdateDestAddress,@function
	.size		Mcl_IPW_DmaUpdateDestAddress,.-Mcl_IPW_DmaUpdateDestAddress
# Number of nodes = 10

# Allocations for Mcl_IPW_DmaUpdateDestAddress
#	?a4		channel
#	?a5		daddr
# FUNC(uint16, MCL_CODE) Mcl_IPW_DmaGetChBiter (VAR(Mcl_ChannelType, AUTOMATIC) ChannelNumber)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1579,24
#$$ld
.L877:

#$$bf	Mcl_IPW_DmaGetChBiter,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,cr0,lr
	.globl		Mcl_IPW_DmaGetChBiter
	.d2_cfa_start __cie
Mcl_IPW_DmaGetChBiter:
.Llo188:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
.Llo192:
	stw		r0,20(r1)		# returnValue=r0
	.d2_cfa_offset    108,-1
	mr		r4,r3		# ChannelNumber=r4 ChannelNumber=r3
	.d2prologue_end
# {
#     VAR(uint16, AUTOMATIC) returnValue = 0U;
	.d2line		1581
	diab.li		r0,0		# returnValue=r0
#     /** @violates @ref Mcl_IPW_c_REF_5 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */ 
#     /** @violates @ref Mcl_IPW_c_REF_13 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#     if((0U) != (uint16)DMA_TCD_GET_BITER_ELINK((uint32)(DMA_TCD(ChannelNumber))))
	.d2line		1584
.Llo193:
	rlwinm		r3,r3,5,21,26		# ChannelNumber=r3 ChannelNumber=r3
	e_lis		r0,64522		# returnValue=r0
.Llo194:
	e_or2i		r0,4124		# returnValue=r0
	se_add		r0,r3		# returnValue=r0 returnValue=r0 ChannelNumber=r3
	lhzx		r0,r0,r0		# returnValue=r0 returnValue=r0
	rlwinm		r0,r0,0,16,16		# returnValue=r0 returnValue=r0
	e_cmphl16i	r0,0		# returnValue=r0
	bc		1,2,.L498	# eq
#     {
#         /** @violates @ref Mcl_IPW_c_REF_5 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */ 
#         /** @violates @ref Mcl_IPW_c_REF_13 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#         returnValue = (uint16)(DMA_GET_CH_BITER(ChannelNumber) & DMA_TCD_BITER_ELINK_YES_MASK_U16);    
	.d2line		1588
.Llo189:
	rlwinm		r4,r4,5,21,26		# ChannelNumber=r4 ChannelNumber=r4
.Llo190:
	e_lis		r0,64522		# returnValue=r0
.Llo195:
	e_or2i		r0,4124		# returnValue=r0
	se_add		r0,r4		# returnValue=r0 returnValue=r0 ChannelNumber=r4
	lwzx		r3,r0,r0		# ChannelNumber=r3 returnValue=r0
	rlwinm		r3,r3,16,23,31		# ChannelNumber=r3 ChannelNumber=r3
	mr		r3,r3		# returnValue=r3 returnValue=r3
	b		.L499
.L498:
#     }
#     else
#     {
#         /** @violates @ref Mcl_IPW_c_REF_5 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */ 
#         /** @violates @ref Mcl_IPW_c_REF_13 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#         returnValue = (uint16)(DMA_GET_CH_BITER(ChannelNumber) & DMA_TCD_BITER_ELINK_NO_MASK_U16);
	.d2line		1594
.Llo196:
	rlwinm		r4,r4,5,21,26		# ChannelNumber=r4 ChannelNumber=r4
	e_lis		r0,64522		# returnValue=r0
.Llo197:
	e_or2i		r0,4124		# returnValue=r0
	se_add		r0,r4		# returnValue=r0 returnValue=r0 ChannelNumber=r4
	lwzx		r3,r0,r0		# ChannelNumber=r3 returnValue=r0
	rlwinm		r3,r3,16,17,31		# ChannelNumber=r3 ChannelNumber=r3
	mr		r3,r3		# returnValue=r3 returnValue=r3
.L499:
#     }
#     return returnValue;
	.d2line		1596
.Llo191:
	rlwinm		r3,r3,0,16,31		# returnValue=r3 returnValue=r3
# }
	.d2line		1597
	.d2epilogue_begin
	lwz		r0,20(r1)		# returnValue=r0
	mtspr		lr,r0		# returnValue=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L878:
	.type		Mcl_IPW_DmaGetChBiter,@function
	.size		Mcl_IPW_DmaGetChBiter,.-Mcl_IPW_DmaGetChBiter
# Number of nodes = 52

# Allocations for Mcl_IPW_DmaGetChBiter
#	?a4		ChannelNumber
#	?a5		returnValue
# FUNC(uint16, MCL_CODE) Mcl_IPW_DmaGetChCiter (VAR(Mcl_ChannelType, AUTOMATIC) ChannelNumber)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1611,24
#$$ld
.L885:

#$$bf	Mcl_IPW_DmaGetChCiter,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,cr0,lr
	.globl		Mcl_IPW_DmaGetChCiter
	.d2_cfa_start __cie
Mcl_IPW_DmaGetChCiter:
.Llo198:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
.Llo202:
	stw		r0,20(r1)		# returnValue=r0
	.d2_cfa_offset    108,-1
	mr		r4,r3		# ChannelNumber=r4 ChannelNumber=r3
	.d2prologue_end
# {
#     VAR(uint16, AUTOMATIC) returnValue = 0U;
	.d2line		1613
	diab.li		r0,0		# returnValue=r0
#     /** @violates @ref Mcl_IPW_c_REF_5 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */ 
#     /** @violates @ref Mcl_IPW_c_REF_13 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#     if((0U) != (uint16)DMA_TCD_GET_CITER_ELINK((uint32)(DMA_TCD(ChannelNumber))))
	.d2line		1616
.Llo203:
	rlwinm		r3,r3,5,21,26		# ChannelNumber=r3 ChannelNumber=r3
	e_lis		r0,64522		# returnValue=r0
.Llo204:
	e_or2i		r0,4116		# returnValue=r0
	se_add		r0,r3		# returnValue=r0 returnValue=r0 ChannelNumber=r3
	lhzx		r0,r0,r0		# returnValue=r0 returnValue=r0
	rlwinm		r0,r0,0,16,16		# returnValue=r0 returnValue=r0
	e_cmphl16i	r0,0		# returnValue=r0
	bc		1,2,.L503	# eq
#     {
#         /** @violates @ref Mcl_IPW_c_REF_5 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */ 
#         /** @violates @ref Mcl_IPW_c_REF_13 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#         returnValue = (uint16)(DMA_GET_CH_CITER(ChannelNumber) & DMA_TCD_BITER_ELINK_YES_MASK_U16);    
	.d2line		1620
.Llo199:
	rlwinm		r4,r4,5,21,26		# ChannelNumber=r4 ChannelNumber=r4
.Llo200:
	e_lis		r0,64522		# returnValue=r0
.Llo205:
	e_or2i		r0,4116		# returnValue=r0
	se_add		r0,r4		# returnValue=r0 returnValue=r0 ChannelNumber=r4
	lwzx		r3,r0,r0		# ChannelNumber=r3 returnValue=r0
	rlwinm		r3,r3,16,23,31		# ChannelNumber=r3 ChannelNumber=r3
	mr		r3,r3		# returnValue=r3 returnValue=r3
	b		.L504
.L503:
#     }
#     else
#     {
#         /** @violates @ref Mcl_IPW_c_REF_5 MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer. */ 
#         /** @violates @ref Mcl_IPW_c_REF_13 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#         returnValue = (uint16)(DMA_GET_CH_CITER(ChannelNumber) & DMA_TCD_BITER_ELINK_NO_MASK_U16);
	.d2line		1626
.Llo206:
	rlwinm		r4,r4,5,21,26		# ChannelNumber=r4 ChannelNumber=r4
	e_lis		r0,64522		# returnValue=r0
.Llo207:
	e_or2i		r0,4116		# returnValue=r0
	se_add		r0,r4		# returnValue=r0 returnValue=r0 ChannelNumber=r4
	lwzx		r3,r0,r0		# ChannelNumber=r3 returnValue=r0
	rlwinm		r3,r3,16,17,31		# ChannelNumber=r3 ChannelNumber=r3
	mr		r3,r3		# returnValue=r3 returnValue=r3
.L504:
#     }
#     return returnValue;
	.d2line		1628
.Llo201:
	rlwinm		r3,r3,0,16,31		# returnValue=r3 returnValue=r3
# }
	.d2line		1629
	.d2epilogue_begin
	lwz		r0,20(r1)		# returnValue=r0
	mtspr		lr,r0		# returnValue=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L886:
	.type		Mcl_IPW_DmaGetChCiter,@function
	.size		Mcl_IPW_DmaGetChCiter,.-Mcl_IPW_DmaGetChCiter
# Number of nodes = 52

# Allocations for Mcl_IPW_DmaGetChCiter
#	?a4		ChannelNumber
#	?a5		returnValue

# Allocations for module
	.section	.text_vle
#$$ld
.L5:
.L891:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Mcl\\ssc\\make\\..\\..\\generator\\integration_package\\include\\Mcl_Dma_Types.h"
	.d2_line_end
	.section	.invalid_TEXT,,c
#$$ld
.L511:
.L519:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Mcl\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Mcl_IPW.c"
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
	.uleb128	7
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
	.uleb128	8
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
	.uleb128	9
	.uleb128	40
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	28
	.uleb128	13
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	10
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
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
	.uleb128	15
	.byte		0x0
	.uleb128	73
	.uleb128	16
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
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	15
	.uleb128	33
	.byte		0x0
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	16
	.uleb128	21
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	39
	.uleb128	12
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	17
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Mcl\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Mcl_IPW.c"
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
.L508:
	.4byte		.L509-.L507
.L507:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L513-.L508
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Mcl\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Mcl_IPW.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L510
	.4byte		.L511
	.4byte		.L514
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L520:
	.sleb128	2
	.4byte		.L516-.L508
	.byte		"Mcl_IPW_Init"
	.byte		0
	.4byte		.L519
	.uleb128	247
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L517
	.4byte		.L518
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L519
	.uleb128	247
	.uleb128	22
	.byte		"Mcl_HwIPs_ConfigPtr"
	.byte		0
	.4byte		.L521
	.4byte		.L525
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L526:
	.sleb128	4
	.4byte		.L519
	.uleb128	249
	.uleb128	27
	.byte		"u8Instance"
	.byte		0
	.4byte		.L527
	.4byte		.L529
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L516:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L534:
	.sleb128	2
	.4byte		.L531-.L508
	.byte		"Mcl_IPW_DmaConfigChannel"
	.byte		0
	.4byte		.L519
	.uleb128	307
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L532
	.4byte		.L533
	.sleb128	3
	.4byte		.L519
	.uleb128	307
	.uleb128	22
	.byte		"Mcl_DmaConfigPtr"
	.byte		0
	.4byte		.L535
	.4byte		.L539
	.sleb128	3
	.4byte		.L519
	.uleb128	307
	.uleb128	22
	.byte		"dma_channel"
	.byte		0
	.4byte		.L540
	.4byte		.L541
	.sleb128	3
	.4byte		.L519
	.uleb128	307
	.uleb128	22
	.byte		"config_descriptor"
	.byte		0
	.4byte		.L542
	.4byte		.L546
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L531:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L551:
	.sleb128	2
	.4byte		.L548-.L508
	.byte		"Mcl_IPW_DmaConfigTcd"
	.byte		0
	.4byte		.L519
	.uleb128	330
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L549
	.4byte		.L550
	.sleb128	3
	.4byte		.L519
	.uleb128	330
	.uleb128	22
	.byte		"pTcdAddress"
	.byte		0
	.4byte		.L552
	.4byte		.L556
	.sleb128	3
	.4byte		.L519
	.uleb128	330
	.uleb128	22
	.byte		"config_descriptor"
	.byte		0
	.4byte		.L542
	.4byte		.L557
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L548:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L562:
	.sleb128	2
	.4byte		.L559-.L508
	.byte		"Mcl_IPW_DmaConfigLinkedChannel"
	.byte		0
	.4byte		.L519
	.uleb128	354
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L560
	.4byte		.L561
	.sleb128	3
	.4byte		.L519
	.uleb128	354
	.uleb128	22
	.byte		"Mcl_DmaConfigPtr"
	.byte		0
	.4byte		.L535
	.4byte		.L563
	.sleb128	3
	.4byte		.L519
	.uleb128	354
	.uleb128	22
	.byte		"dma_channel"
	.byte		0
	.4byte		.L540
	.4byte		.L564
	.sleb128	3
	.4byte		.L519
	.uleb128	354
	.uleb128	22
	.byte		"config_descriptor"
	.byte		0
	.4byte		.L542
	.4byte		.L565
	.sleb128	3
	.4byte		.L519
	.uleb128	354
	.uleb128	22
	.byte		"next_channel"
	.byte		0
	.4byte		.L540
	.4byte		.L566
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L559:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L571:
	.sleb128	2
	.4byte		.L568-.L508
	.byte		"Mcl_IPW_DmaConfigScatterGatherChannel"
	.byte		0
	.4byte		.L519
	.uleb128	382
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L569
	.4byte		.L570
	.sleb128	3
	.4byte		.L519
	.uleb128	382
	.uleb128	22
	.byte		"Mcl_DmaConfigPtr"
	.byte		0
	.4byte		.L535
	.4byte		.L572
	.sleb128	3
	.4byte		.L519
	.uleb128	382
	.uleb128	22
	.byte		"dma_channel"
	.byte		0
	.4byte		.L540
	.4byte		.L573
	.sleb128	3
	.4byte		.L519
	.uleb128	382
	.uleb128	22
	.byte		"config_descriptor"
	.byte		0
	.4byte		.L542
	.4byte		.L574
	.sleb128	3
	.4byte		.L519
	.uleb128	382
	.uleb128	22
	.byte		"pNext_tcd"
	.byte		0
	.4byte		.L552
	.4byte		.L575
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L568:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L580:
	.sleb128	2
	.4byte		.L577-.L508
	.byte		"Mcl_IPW_DmaConfigLinkedTcd"
	.byte		0
	.4byte		.L519
	.uleb128	408
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L578
	.4byte		.L579
	.sleb128	3
	.4byte		.L519
	.uleb128	408
	.uleb128	22
	.byte		"Mcl_DmaConfigPtr"
	.byte		0
	.4byte		.L535
	.4byte		.L581
	.sleb128	3
	.4byte		.L519
	.uleb128	408
	.uleb128	22
	.byte		"pTcdAddress"
	.byte		0
	.4byte		.L552
	.4byte		.L582
	.sleb128	3
	.4byte		.L519
	.uleb128	408
	.uleb128	22
	.byte		"config_descriptor"
	.byte		0
	.4byte		.L542
	.4byte		.L583
	.sleb128	3
	.4byte		.L519
	.uleb128	408
	.uleb128	22
	.byte		"next_channel"
	.byte		0
	.4byte		.L540
	.4byte		.L584
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L577:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L589:
	.sleb128	2
	.4byte		.L586-.L508
	.byte		"Mcl_IPW_DmaConfigScatterGatherTcd"
	.byte		0
	.4byte		.L519
	.uleb128	433
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L587
	.4byte		.L588
	.sleb128	3
	.4byte		.L519
	.uleb128	433
	.uleb128	22
	.byte		"pTcdAddress"
	.byte		0
	.4byte		.L552
	.4byte		.L590
	.sleb128	3
	.4byte		.L519
	.uleb128	433
	.uleb128	22
	.byte		"config_descriptor"
	.byte		0
	.4byte		.L542
	.4byte		.L591
	.sleb128	3
	.4byte		.L519
	.uleb128	433
	.uleb128	22
	.byte		"pNext_tcd"
	.byte		0
	.4byte		.L552
	.4byte		.L592
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L586:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L597:
	.sleb128	2
	.4byte		.L594-.L508
	.byte		"Mcl_IPW_DmaConfigScatterGatherLinkedChannel"
	.byte		0
	.4byte		.L519
	.uleb128	459
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L595
	.4byte		.L596
	.sleb128	3
	.4byte		.L519
	.uleb128	459
	.uleb128	22
	.byte		"Mcl_DmaConfigPtr"
	.byte		0
	.4byte		.L535
	.4byte		.L598
	.sleb128	3
	.4byte		.L519
	.uleb128	459
	.uleb128	22
	.byte		"dma_channel"
	.byte		0
	.4byte		.L540
	.4byte		.L599
	.sleb128	3
	.4byte		.L519
	.uleb128	459
	.uleb128	22
	.byte		"config_descriptor"
	.byte		0
	.4byte		.L542
	.4byte		.L600
	.sleb128	3
	.4byte		.L519
	.uleb128	459
	.uleb128	22
	.byte		"pNext_tcd"
	.byte		0
	.4byte		.L552
	.4byte		.L601
	.sleb128	3
	.4byte		.L519
	.uleb128	459
	.uleb128	22
	.byte		"next_channel"
	.byte		0
	.4byte		.L540
	.4byte		.L602
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L594:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L607:
	.sleb128	2
	.4byte		.L604-.L508
	.byte		"Mcl_IPW_DmaConfigScatterGatherLinkedTcd"
	.byte		0
	.4byte		.L519
	.uleb128	490
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L605
	.4byte		.L606
	.sleb128	3
	.4byte		.L519
	.uleb128	490
	.uleb128	22
	.byte		"Mcl_DmaConfigPtr"
	.byte		0
	.4byte		.L535
	.4byte		.L608
	.sleb128	3
	.4byte		.L519
	.uleb128	490
	.uleb128	22
	.byte		"pTcdAddress"
	.byte		0
	.4byte		.L552
	.4byte		.L609
	.sleb128	3
	.4byte		.L519
	.uleb128	490
	.uleb128	22
	.byte		"config_descriptor"
	.byte		0
	.4byte		.L542
	.4byte		.L610
	.sleb128	3
	.4byte		.L519
	.uleb128	490
	.uleb128	22
	.byte		"pNext_tcd"
	.byte		0
	.4byte		.L552
	.4byte		.L611
	.sleb128	3
	.4byte		.L519
	.uleb128	490
	.uleb128	22
	.byte		"next_channel"
	.byte		0
	.4byte		.L540
	.4byte		.L612
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L604:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L617:
	.sleb128	2
	.4byte		.L614-.L508
	.byte		"Mcl_IPW_DmaSetChannelPriority"
	.byte		0
	.4byte		.L519
	.uleb128	517
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L615
	.4byte		.L616
	.sleb128	3
	.4byte		.L519
	.uleb128	517
	.uleb128	22
	.byte		"Mcl_DmaConfigPtr"
	.byte		0
	.4byte		.L535
	.4byte		.L618
	.sleb128	3
	.4byte		.L519
	.uleb128	517
	.uleb128	22
	.byte		"nChannel"
	.byte		0
	.4byte		.L540
	.4byte		.L619
	.sleb128	3
	.4byte		.L519
	.uleb128	517
	.uleb128	22
	.byte		"nPriority"
	.byte		0
	.4byte		.L620
	.4byte		.L621
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L614:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L626:
	.sleb128	2
	.4byte		.L623-.L508
	.byte		"Mcl_IPW_DmaStartChannel"
	.byte		0
	.4byte		.L519
	.uleb128	539
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L624
	.4byte		.L625
	.sleb128	3
	.4byte		.L519
	.uleb128	539
	.uleb128	22
	.byte		"Mcl_DmaConfigPtr"
	.byte		0
	.4byte		.L535
	.4byte		.L627
	.sleb128	3
	.4byte		.L519
	.uleb128	539
	.uleb128	22
	.byte		"nChannel"
	.byte		0
	.4byte		.L540
	.4byte		.L628
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L623:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L634:
	.sleb128	5
	.4byte		.L630-.L508
	.byte		"Mcl_IPW_DmaIsTransferCompleted"
	.byte		0
	.4byte		.L519
	.uleb128	560
	.uleb128	25
	.4byte		.L633
	.byte		0x1
	.byte		0x1
	.4byte		.L631
	.4byte		.L632
	.sleb128	3
	.4byte		.L519
	.uleb128	560
	.uleb128	25
	.byte		"Mcl_DmaConfigPtr"
	.byte		0
	.4byte		.L535
	.4byte		.L635
	.sleb128	3
	.4byte		.L519
	.uleb128	560
	.uleb128	25
	.byte		"nChannel"
	.byte		0
	.4byte		.L540
	.4byte		.L636
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L630:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L641:
	.sleb128	5
	.4byte		.L638-.L508
	.byte		"Mcl_IPW_DmaIsTransferActive"
	.byte		0
	.4byte		.L519
	.uleb128	582
	.uleb128	25
	.4byte		.L633
	.byte		0x1
	.byte		0x1
	.4byte		.L639
	.4byte		.L640
	.sleb128	3
	.4byte		.L519
	.uleb128	582
	.uleb128	25
	.byte		"Mcl_DmaConfigPtr"
	.byte		0
	.4byte		.L535
	.4byte		.L642
	.sleb128	3
	.4byte		.L519
	.uleb128	582
	.uleb128	25
	.byte		"nChannel"
	.byte		0
	.4byte		.L540
	.4byte		.L643
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L638:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L648:
	.sleb128	2
	.4byte		.L645-.L508
	.byte		"Mcl_IPW_EnableNotification"
	.byte		0
	.4byte		.L519
	.uleb128	601
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L646
	.4byte		.L647
	.sleb128	3
	.4byte		.L519
	.uleb128	601
	.uleb128	23
	.byte		"Mcl_DmaConfigPtr"
	.byte		0
	.4byte		.L535
	.4byte		.L649
	.sleb128	3
	.4byte		.L519
	.uleb128	601
	.uleb128	23
	.byte		"ChannelNumber"
	.byte		0
	.4byte		.L540
	.4byte		.L650
	.sleb128	3
	.4byte		.L519
	.uleb128	601
	.uleb128	23
	.byte		"Notification"
	.byte		0
	.4byte		.L651
	.4byte		.L653
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L645:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L658:
	.sleb128	2
	.4byte		.L655-.L508
	.byte		"Mcl_IPW_DisableNotification"
	.byte		0
	.4byte		.L519
	.uleb128	621
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L656
	.4byte		.L657
	.sleb128	3
	.4byte		.L519
	.uleb128	621
	.uleb128	23
	.byte		"Mcl_DmaConfigPtr"
	.byte		0
	.4byte		.L535
	.4byte		.L659
	.sleb128	3
	.4byte		.L519
	.uleb128	621
	.uleb128	23
	.byte		"ChannelNumber"
	.byte		0
	.4byte		.L540
	.4byte		.L660
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L655:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L665:
	.sleb128	2
	.4byte		.L662-.L508
	.byte		"Mcl_IPW_DmaAcknowledgeInterrupt"
	.byte		0
	.4byte		.L519
	.uleb128	640
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L663
	.4byte		.L664
	.sleb128	3
	.4byte		.L519
	.uleb128	640
	.uleb128	22
	.byte		"Mcl_DmaConfigPtr"
	.byte		0
	.4byte		.L535
	.4byte		.L666
	.sleb128	3
	.4byte		.L519
	.uleb128	640
	.uleb128	22
	.byte		"ChannelNumber"
	.byte		0
	.4byte		.L540
	.4byte		.L667
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L662:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L672:
	.sleb128	5
	.4byte		.L669-.L508
	.byte		"Mcl_IPW_DmaGetChannelTcdAddress"
	.byte		0
	.4byte		.L519
	.uleb128	666
	.uleb128	32
	.4byte		.L553
	.byte		0x1
	.byte		0x1
	.4byte		.L670
	.4byte		.L671
	.sleb128	3
	.4byte		.L519
	.uleb128	666
	.uleb128	32
	.byte		"Mcl_DmaConfigPtr"
	.byte		0
	.4byte		.L535
	.4byte		.L673
	.sleb128	3
	.4byte		.L519
	.uleb128	666
	.uleb128	32
	.byte		"ChannelNumber"
	.byte		0
	.4byte		.L540
	.4byte		.L674
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L669:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L679:
	.sleb128	2
	.4byte		.L676-.L508
	.byte		"Mcl_IPW_DmaSetSaddr"
	.byte		0
	.4byte		.L519
	.uleb128	690
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L677
	.4byte		.L678
	.sleb128	3
	.4byte		.L519
	.uleb128	690
	.uleb128	22
	.byte		"TcdAddr"
	.byte		0
	.4byte		.L552
	.4byte		.L680
	.sleb128	3
	.4byte		.L519
	.uleb128	690
	.uleb128	22
	.byte		"Saddr"
	.byte		0
	.4byte		.L554
	.4byte		.L681
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L676:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L686:
	.sleb128	2
	.4byte		.L683-.L508
	.byte		"Mcl_IPW_DmaSetSoff"
	.byte		0
	.4byte		.L519
	.uleb128	715
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L684
	.4byte		.L685
	.sleb128	3
	.4byte		.L519
	.uleb128	715
	.uleb128	22
	.byte		"TcdAddr"
	.byte		0
	.4byte		.L552
	.4byte		.L687
	.sleb128	3
	.4byte		.L519
	.uleb128	715
	.uleb128	22
	.byte		"Soff"
	.byte		0
	.4byte		.L688
	.4byte		.L690
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L683:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L695:
	.sleb128	2
	.4byte		.L692-.L508
	.byte		"Mcl_IPW_DmaSetSga"
	.byte		0
	.4byte		.L519
	.uleb128	747
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L693
	.4byte		.L694
	.sleb128	3
	.4byte		.L519
	.uleb128	747
	.uleb128	22
	.byte		"TcdAddr"
	.byte		0
	.4byte		.L552
	.4byte		.L696
	.sleb128	3
	.4byte		.L519
	.uleb128	747
	.uleb128	22
	.byte		"Sga"
	.byte		0
	.4byte		.L554
	.4byte		.L697
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L692:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L702:
	.sleb128	2
	.4byte		.L699-.L508
	.byte		"Mcl_IPW_DmaSetDlast"
	.byte		0
	.4byte		.L519
	.uleb128	772
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L700
	.4byte		.L701
	.sleb128	3
	.4byte		.L519
	.uleb128	772
	.uleb128	22
	.byte		"TcdAddr"
	.byte		0
	.4byte		.L552
	.4byte		.L703
	.sleb128	3
	.4byte		.L519
	.uleb128	772
	.uleb128	22
	.byte		"Dlast"
	.byte		0
	.4byte		.L704
	.4byte		.L706
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L699:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L711:
	.sleb128	2
	.4byte		.L708-.L508
	.byte		"Mcl_IPW_DmaSetDaddr"
	.byte		0
	.4byte		.L519
	.uleb128	797
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L709
	.4byte		.L710
	.sleb128	3
	.4byte		.L519
	.uleb128	797
	.uleb128	22
	.byte		"TcdAddr"
	.byte		0
	.4byte		.L552
	.4byte		.L712
	.sleb128	3
	.4byte		.L519
	.uleb128	797
	.uleb128	22
	.byte		"Daddr"
	.byte		0
	.4byte		.L554
	.4byte		.L713
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L708:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L718:
	.sleb128	2
	.4byte		.L715-.L508
	.byte		"Mcl_IPW_DmaSetDoff"
	.byte		0
	.4byte		.L519
	.uleb128	822
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L716
	.4byte		.L717
	.sleb128	3
	.4byte		.L519
	.uleb128	822
	.uleb128	22
	.byte		"TcdAddr"
	.byte		0
	.4byte		.L552
	.4byte		.L719
	.sleb128	3
	.4byte		.L519
	.uleb128	822
	.uleb128	22
	.byte		"Doff"
	.byte		0
	.4byte		.L688
	.4byte		.L720
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L715:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L725:
	.sleb128	2
	.4byte		.L722-.L508
	.byte		"Mcl_IPW_DmaSetCiter"
	.byte		0
	.4byte		.L519
	.uleb128	853
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L723
	.4byte		.L724
	.sleb128	3
	.4byte		.L519
	.uleb128	853
	.uleb128	22
	.byte		"TcdAddr"
	.byte		0
	.4byte		.L552
	.4byte		.L726
	.sleb128	3
	.4byte		.L519
	.uleb128	853
	.uleb128	22
	.byte		"Citer"
	.byte		0
	.4byte		.L727
	.4byte		.L729
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L722:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L734:
	.sleb128	2
	.4byte		.L731-.L508
	.byte		"Mcl_IPW_DmaSetBiter"
	.byte		0
	.4byte		.L519
	.uleb128	897
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L732
	.4byte		.L733
	.sleb128	3
	.4byte		.L519
	.uleb128	897
	.uleb128	22
	.byte		"TcdAddr"
	.byte		0
	.4byte		.L552
	.4byte		.L735
	.sleb128	3
	.4byte		.L519
	.uleb128	897
	.uleb128	22
	.byte		"Biter"
	.byte		0
	.4byte		.L727
	.4byte		.L736
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L731:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L741:
	.sleb128	2
	.4byte		.L738-.L508
	.byte		"Mcl_IPW_DmaSetLinkAndIterCount"
	.byte		0
	.4byte		.L519
	.uleb128	942
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L739
	.4byte		.L740
	.sleb128	3
	.4byte		.L519
	.uleb128	942
	.uleb128	22
	.byte		"Mcl_DmaConfigPtr"
	.byte		0
	.4byte		.L535
	.4byte		.L742
	.sleb128	3
	.4byte		.L519
	.uleb128	942
	.uleb128	22
	.byte		"TcdAddr"
	.byte		0
	.4byte		.L552
	.4byte		.L743
	.sleb128	3
	.4byte		.L519
	.uleb128	942
	.uleb128	22
	.byte		"LinkCh"
	.byte		0
	.4byte		.L540
	.4byte		.L744
	.sleb128	3
	.4byte		.L519
	.uleb128	942
	.uleb128	22
	.byte		"Iter"
	.byte		0
	.4byte		.L727
	.4byte		.L745
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L738:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L750:
	.sleb128	2
	.4byte		.L747-.L508
	.byte		"Mcl_IPW_DmaSetSModSize"
	.byte		0
	.4byte		.L519
	.uleb128	986
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L748
	.4byte		.L749
	.sleb128	3
	.4byte		.L519
	.uleb128	986
	.uleb128	22
	.byte		"TcdAddr"
	.byte		0
	.4byte		.L552
	.4byte		.L751
	.sleb128	3
	.4byte		.L519
	.uleb128	986
	.uleb128	22
	.byte		"SModSize"
	.byte		0
	.4byte		.L527
	.4byte		.L752
	.sleb128	3
	.4byte		.L519
	.uleb128	986
	.uleb128	22
	.byte		"SSize"
	.byte		0
	.4byte		.L753
	.4byte		.L755
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L747:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L760:
	.sleb128	2
	.4byte		.L757-.L508
	.byte		"Mcl_IPW_DmaSetDModSize"
	.byte		0
	.4byte		.L519
	.uleb128	1021
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L758
	.4byte		.L759
	.sleb128	3
	.4byte		.L519
	.uleb128	1021
	.uleb128	22
	.byte		"TcdAddr"
	.byte		0
	.4byte		.L552
	.4byte		.L761
	.sleb128	3
	.4byte		.L519
	.uleb128	1021
	.uleb128	22
	.byte		"DModSize"
	.byte		0
	.4byte		.L527
	.4byte		.L762
	.sleb128	3
	.4byte		.L519
	.uleb128	1021
	.uleb128	22
	.byte		"DSize"
	.byte		0
	.4byte		.L753
	.4byte		.L763
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L757:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L768:
	.sleb128	2
	.4byte		.L765-.L508
	.byte		"Mcl_IPW_DmaSetMlnoNBytes"
	.byte		0
	.4byte		.L519
	.uleb128	1056
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L766
	.4byte		.L767
	.sleb128	3
	.4byte		.L519
	.uleb128	1056
	.uleb128	22
	.byte		"TcdAddr"
	.byte		0
	.4byte		.L552
	.4byte		.L769
	.sleb128	3
	.4byte		.L519
	.uleb128	1056
	.uleb128	22
	.byte		"MlnoNBytes"
	.byte		0
	.4byte		.L554
	.4byte		.L770
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L765:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L775:
	.sleb128	2
	.4byte		.L772-.L508
	.byte		"Mcl_IPW_DmaSetMloffen"
	.byte		0
	.4byte		.L519
	.uleb128	1085
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L773
	.4byte		.L774
	.sleb128	3
	.4byte		.L519
	.uleb128	1085
	.uleb128	22
	.byte		"TcdAddr"
	.byte		0
	.4byte		.L552
	.4byte		.L776
	.sleb128	3
	.4byte		.L519
	.uleb128	1085
	.uleb128	22
	.byte		"Smloe"
	.byte		0
	.4byte		.L633
	.4byte		.L777
	.sleb128	3
	.4byte		.L519
	.uleb128	1085
	.uleb128	22
	.byte		"Dmloe"
	.byte		0
	.4byte		.L633
	.4byte		.L778
	.sleb128	3
	.4byte		.L519
	.uleb128	1085
	.uleb128	22
	.byte		"Mloff"
	.byte		0
	.4byte		.L704
	.4byte		.L779
	.sleb128	3
	.4byte		.L519
	.uleb128	1085
	.uleb128	22
	.byte		"NBytes"
	.byte		0
	.4byte		.L554
	.4byte		.L780
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L772:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L785:
	.sleb128	2
	.4byte		.L782-.L508
	.byte		"Mcl_IPW_DmaSetSlast"
	.byte		0
	.4byte		.L519
	.uleb128	1114
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L783
	.4byte		.L784
	.sleb128	3
	.4byte		.L519
	.uleb128	1114
	.uleb128	22
	.byte		"TcdAddr"
	.byte		0
	.4byte		.L552
	.4byte		.L786
	.sleb128	3
	.4byte		.L519
	.uleb128	1114
	.uleb128	22
	.byte		"Slast"
	.byte		0
	.4byte		.L704
	.4byte		.L787
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L782:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L792:
	.sleb128	2
	.4byte		.L789-.L508
	.byte		"Mcl_IPW_DmaSetFlags"
	.byte		0
	.4byte		.L519
	.uleb128	1143
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L790
	.4byte		.L791
	.sleb128	3
	.4byte		.L519
	.uleb128	1143
	.uleb128	22
	.byte		"TcdAddr"
	.byte		0
	.4byte		.L552
	.4byte		.L793
	.sleb128	3
	.4byte		.L519
	.uleb128	1143
	.uleb128	22
	.byte		"Flags"
	.byte		0
	.4byte		.L527
	.4byte		.L794
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L789:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L799:
	.sleb128	5
	.4byte		.L796-.L508
	.byte		"Mcl_IPW_DmaGetFlags"
	.byte		0
	.4byte		.L519
	.uleb128	1207
	.uleb128	23
	.4byte		.L527
	.byte		0x1
	.byte		0x1
	.4byte		.L797
	.4byte		.L798
	.sleb128	3
	.4byte		.L519
	.uleb128	1207
	.uleb128	23
	.byte		"TcdAddr"
	.byte		0
	.4byte		.L552
	.4byte		.L800
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L796:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L805:
	.sleb128	2
	.4byte		.L802-.L508
	.byte		"Mcl_IPW_DmaClearIntMaj"
	.byte		0
	.4byte		.L519
	.uleb128	1230
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L803
	.4byte		.L804
	.sleb128	3
	.4byte		.L519
	.uleb128	1230
	.uleb128	22
	.byte		"TcdAddr"
	.byte		0
	.4byte		.L552
	.4byte		.L806
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L802:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L811:
	.sleb128	2
	.4byte		.L808-.L508
	.byte		"Mcl_IPW_DmaSetIntMaj"
	.byte		0
	.4byte		.L519
	.uleb128	1259
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L809
	.4byte		.L810
	.sleb128	3
	.4byte		.L519
	.uleb128	1259
	.uleb128	22
	.byte		"TcdAddr"
	.byte		0
	.4byte		.L552
	.4byte		.L812
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L808:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L817:
	.sleb128	5
	.4byte		.L814-.L508
	.byte		"Mcl_IPW_DmaTcdGetIntMaj"
	.byte		0
	.4byte		.L519
	.uleb128	1289
	.uleb128	25
	.4byte		.L633
	.byte		0x1
	.byte		0x1
	.4byte		.L815
	.4byte		.L816
	.sleb128	3
	.4byte		.L519
	.uleb128	1289
	.uleb128	25
	.byte		"Mcl_DmaConfigPtr"
	.byte		0
	.4byte		.L535
	.4byte		.L818
	.sleb128	3
	.4byte		.L519
	.uleb128	1289
	.uleb128	25
	.byte		"nChannel"
	.byte		0
	.4byte		.L540
	.4byte		.L819
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L814:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L824:
	.sleb128	2
	.4byte		.L821-.L508
	.byte		"Mcl_IPW_DmaClearDone"
	.byte		0
	.4byte		.L519
	.uleb128	1312
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L822
	.4byte		.L823
	.sleb128	3
	.4byte		.L519
	.uleb128	1312
	.uleb128	22
	.byte		"Mcl_DmaConfigPtr"
	.byte		0
	.4byte		.L535
	.4byte		.L825
	.sleb128	3
	.4byte		.L519
	.uleb128	1312
	.uleb128	22
	.byte		"nChannel"
	.byte		0
	.4byte		.L540
	.4byte		.L826
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L821:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L831:
	.sleb128	5
	.4byte		.L828-.L508
	.byte		"Mcl_IPW_DmaGetCiter"
	.byte		0
	.4byte		.L519
	.uleb128	1335
	.uleb128	24
	.4byte		.L727
	.byte		0x1
	.byte		0x1
	.4byte		.L829
	.4byte		.L830
	.sleb128	3
	.4byte		.L519
	.uleb128	1335
	.uleb128	24
	.byte		"TcdAddr"
	.byte		0
	.4byte		.L552
	.4byte		.L832
.L833:
	.sleb128	4
	.4byte		.L519
	.uleb128	1337
	.uleb128	28
	.byte		"returnValue"
	.byte		0
	.4byte		.L727
	.4byte		.L834
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L828:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L839:
	.sleb128	5
	.4byte		.L836-.L508
	.byte		"Mcl_IPW_DmaGetSaddr"
	.byte		0
	.4byte		.L519
	.uleb128	1373
	.uleb128	24
	.4byte		.L554
	.byte		0x1
	.byte		0x1
	.4byte		.L837
	.4byte		.L838
	.sleb128	3
	.4byte		.L519
	.uleb128	1373
	.uleb128	24
	.byte		"TcdAddr"
	.byte		0
	.4byte		.L552
	.4byte		.L840
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L836:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L845:
	.sleb128	5
	.4byte		.L842-.L508
	.byte		"Mcl_IPW_DmaGetDaddr"
	.byte		0
	.4byte		.L519
	.uleb128	1395
	.uleb128	24
	.4byte		.L554
	.byte		0x1
	.byte		0x1
	.4byte		.L843
	.4byte		.L844
	.sleb128	3
	.4byte		.L519
	.uleb128	1395
	.uleb128	24
	.byte		"TcdAddr"
	.byte		0
	.4byte		.L552
	.4byte		.L846
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L842:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L851:
	.sleb128	5
	.4byte		.L848-.L508
	.byte		"Mcl_IPW_DmaGetInterruptRequest"
	.byte		0
	.4byte		.L519
	.uleb128	1419
	.uleb128	25
	.4byte		.L633
	.byte		0x1
	.byte		0x1
	.4byte		.L849
	.4byte		.L850
	.sleb128	3
	.4byte		.L519
	.uleb128	1419
	.uleb128	25
	.byte		"Mcl_DmaConfigPtr"
	.byte		0
	.4byte		.L535
	.4byte		.L852
	.sleb128	3
	.4byte		.L519
	.uleb128	1419
	.uleb128	25
	.byte		"nChannel"
	.byte		0
	.4byte		.L540
	.4byte		.L853
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L848:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L858:
	.sleb128	2
	.4byte		.L855-.L508
	.byte		"Mcl_IPW_DmaEnableHwRequest"
	.byte		0
	.4byte		.L519
	.uleb128	1439
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L856
	.4byte		.L857
	.sleb128	3
	.4byte		.L519
	.uleb128	1439
	.uleb128	22
	.byte		"Mcl_DmaConfigPtr"
	.byte		0
	.4byte		.L535
	.4byte		.L859
	.sleb128	3
	.4byte		.L519
	.uleb128	1439
	.uleb128	22
	.byte		"ChannelNumber"
	.byte		0
	.4byte		.L540
	.4byte		.L860
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L855:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L865:
	.sleb128	2
	.4byte		.L862-.L508
	.byte		"Mcl_IPW_DmaDisableHwRequest"
	.byte		0
	.4byte		.L519
	.uleb128	1485
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L863
	.4byte		.L864
	.sleb128	3
	.4byte		.L519
	.uleb128	1485
	.uleb128	22
	.byte		"Mcl_DmaConfigPtr"
	.byte		0
	.4byte		.L535
	.4byte		.L866
	.sleb128	3
	.4byte		.L519
	.uleb128	1485
	.uleb128	22
	.byte		"ChannelNumber"
	.byte		0
	.4byte		.L540
	.4byte		.L867
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L862:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L872:
	.sleb128	2
	.4byte		.L869-.L508
	.byte		"Mcl_IPW_DmaUpdateDestAddress"
	.byte		0
	.4byte		.L519
	.uleb128	1509
	.uleb128	21
	.byte		0x1
	.byte		0x1
	.4byte		.L870
	.4byte		.L871
	.sleb128	3
	.4byte		.L519
	.uleb128	1509
	.uleb128	21
	.byte		"channel"
	.byte		0
	.4byte		.L554
	.4byte		.L873
	.sleb128	3
	.4byte		.L519
	.uleb128	1509
	.uleb128	21
	.byte		"daddr"
	.byte		0
	.4byte		.L554
	.4byte		.L874
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L869:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L879:
	.sleb128	5
	.4byte		.L876-.L508
	.byte		"Mcl_IPW_DmaGetChBiter"
	.byte		0
	.4byte		.L519
	.uleb128	1579
	.uleb128	24
	.4byte		.L727
	.byte		0x1
	.byte		0x1
	.4byte		.L877
	.4byte		.L878
	.sleb128	3
	.4byte		.L519
	.uleb128	1579
	.uleb128	24
	.byte		"ChannelNumber"
	.byte		0
	.4byte		.L540
	.4byte		.L880
.L881:
	.sleb128	4
	.4byte		.L519
	.uleb128	1581
	.uleb128	28
	.byte		"returnValue"
	.byte		0
	.4byte		.L727
	.4byte		.L882
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L876:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L887:
	.sleb128	5
	.4byte		.L884-.L508
	.byte		"Mcl_IPW_DmaGetChCiter"
	.byte		0
	.4byte		.L519
	.uleb128	1611
	.uleb128	24
	.4byte		.L727
	.byte		0x1
	.byte		0x1
	.4byte		.L885
	.4byte		.L886
	.sleb128	3
	.4byte		.L519
	.uleb128	1611
	.uleb128	24
	.byte		"ChannelNumber"
	.byte		0
	.4byte		.L540
	.4byte		.L888
.L889:
	.sleb128	4
	.4byte		.L519
	.uleb128	1613
	.uleb128	28
	.byte		"returnValue"
	.byte		0
	.4byte		.L727
	.4byte		.L890
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L884:
	.section	.debug_info,,n
.L524:
	.sleb128	6
	.4byte		.L891
	.uleb128	575
	.uleb128	1
	.4byte		.L892-.L2
	.uleb128	8
	.section	.debug_info,,n
.L428:
	.sleb128	7
	.byte		"pDma_Config"
	.byte		0
	.4byte		.L535
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L429:
	.sleb128	7
	.byte		"pDmaMux_Config"
	.byte		0
	.4byte		.L893
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L892:
.L896:
	.sleb128	6
	.4byte		.L891
	.uleb128	575
	.uleb128	1
	.4byte		.L897-.L2
	.uleb128	8
.L426:
	.sleb128	7
	.byte		"NumChannels"
	.byte		0
	.4byte		.L898
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L427:
	.sleb128	7
	.byte		"pDmaMuxChannelsConfig"
	.byte		0
	.4byte		.L900
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L897:
.L906:
	.sleb128	6
	.4byte		.L891
	.uleb128	575
	.uleb128	1
	.4byte		.L907-.L2
	.uleb128	3
.L423:
	.sleb128	7
	.byte		"DmaMux_Channel"
	.byte		0
	.4byte		.L898
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L424:
	.sleb128	7
	.byte		"DmaMux_Instance"
	.byte		0
	.4byte		.L908
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L425:
	.sleb128	7
	.byte		"DmaMux_ChannelConfig"
	.byte		0
	.4byte		.L898
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L907:
.L545:
	.sleb128	6
	.4byte		.L891
	.uleb128	575
	.uleb128	1
	.4byte		.L910-.L2
	.uleb128	40
.L413:
	.sleb128	7
	.byte		"u32saddr"
	.byte		0
	.4byte		.L554
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L414:
	.sleb128	7
	.byte		"u32daddr"
	.byte		0
	.4byte		.L554
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L415:
	.sleb128	7
	.byte		"u32ssize"
	.byte		0
	.4byte		.L554
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L416:
	.sleb128	7
	.byte		"u32dsize"
	.byte		0
	.4byte		.L554
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L417:
	.sleb128	7
	.byte		"u32soff"
	.byte		0
	.4byte		.L554
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L418:
	.sleb128	7
	.byte		"u32doff"
	.byte		0
	.4byte		.L554
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L419:
	.sleb128	7
	.byte		"u32smod"
	.byte		0
	.4byte		.L554
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L420:
	.sleb128	7
	.byte		"u32dmod"
	.byte		0
	.4byte		.L554
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L421:
	.sleb128	7
	.byte		"u32num_bytes"
	.byte		0
	.4byte		.L554
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L422:
	.sleb128	7
	.byte		"u32iter"
	.byte		0
	.4byte		.L554
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
	.sleb128	0
.L910:
.L538:
	.sleb128	6
	.4byte		.L891
	.uleb128	575
	.uleb128	1
	.4byte		.L911-.L2
	.uleb128	12
.L410:
	.sleb128	7
	.byte		"NumChannels"
	.byte		0
	.4byte		.L912
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L411:
	.sleb128	7
	.byte		"pDmaConfigInstance"
	.byte		0
	.4byte		.L914
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L412:
	.sleb128	7
	.byte		"pChannelsConfig"
	.byte		0
	.4byte		.L921
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L911:
.L920:
	.sleb128	6
	.4byte		.L891
	.uleb128	575
	.uleb128	1
	.4byte		.L928-.L2
	.uleb128	12
.L407:
	.sleb128	7
	.byte		"pDmaControl"
	.byte		0
	.4byte		.L929
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L408:
	.sleb128	7
	.byte		"pDmaUsed"
	.byte		0
	.4byte		.L931
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L409:
	.sleb128	7
	.byte		"pfDmaInstanceErrNotif"
	.byte		0
	.4byte		.L933
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L928:
.L927:
	.sleb128	6
	.4byte		.L891
	.uleb128	575
	.uleb128	1
	.4byte		.L940-.L2
	.uleb128	3
.L404:
	.sleb128	7
	.byte		"Dma_ChannelPriority"
	.byte		0
	.4byte		.L941
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L405:
	.sleb128	7
	.byte		"Dma_Channel"
	.byte		0
	.4byte		.L912
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L406:
	.sleb128	7
	.byte		"Dma_MasterId"
	.byte		0
	.4byte		.L912
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L940:
	.section	.debug_info,,n
.L939:
	.sleb128	8
	.4byte		.L891
	.uleb128	561
	.uleb128	1
	.4byte		.L942-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	9
	.byte		"MCL_DMA_NO_ERROR"
	.byte		0
	.sleb128	0
	.sleb128	9
	.byte		"MCL_DMA_HW_INCONSISTENCY_ERROR"
	.byte		0
	.sleb128	1
	.sleb128	9
	.byte		"MCL_DMA_ECC_ERROR"
	.byte		0
	.sleb128	2
	.sleb128	9
	.byte		"MCL_DMA_BUS_ERROR"
	.byte		0
	.sleb128	3
	.sleb128	9
	.byte		"MCL_DMA_DESCRIPTOR_ERROR"
	.byte		0
	.sleb128	4
	.sleb128	9
	.byte		"MCL_DMA_PRIORITY_ERROR"
	.byte		0
	.sleb128	5
	.sleb128	9
	.byte		"MCL_DMA_UNRECOGNIZED_ERROR"
	.byte		0
	.sleb128	6
	.sleb128	9
	.byte		"MCL_DMA_MEM_SYNC_ERROR"
	.byte		0
	.sleb128	7
	.sleb128	0
.L942:
.L754:
	.sleb128	8
	.4byte		.L891
	.uleb128	528
	.uleb128	1
	.4byte		.L943-.L2
	.uleb128	4
	.sleb128	9
	.byte		"DMA_SIZE_1BYTE"
	.byte		0
	.sleb128	0
	.sleb128	9
	.byte		"DMA_SIZE_2BYTES"
	.byte		0
	.sleb128	1
	.sleb128	9
	.byte		"DMA_SIZE_4BYTES"
	.byte		0
	.sleb128	2
	.sleb128	9
	.byte		"DMA_SIZE_16BYTES"
	.byte		0
	.sleb128	4
	.sleb128	9
	.byte		"DMA_SIZE_32BYTES"
	.byte		0
	.sleb128	5
	.sleb128	0
.L943:
.L652:
	.sleb128	8
	.4byte		.L891
	.uleb128	517
	.uleb128	1
	.4byte		.L944-.L2
	.uleb128	4
	.sleb128	9
	.byte		"MCL_DMA_TRANSFER_COMPLETE"
	.byte		0
	.sleb128	0
	.sleb128	9
	.byte		"MCL_DMA_TRANSFER_HALF_COMPLETE"
	.byte		0
	.sleb128	1
	.sleb128	0
.L944:
	.section	.debug_info,,n
.L523:
	.sleb128	10
	.byte		"Mcl_DmaHwIpsConfigType"
	.byte		0
	.4byte		.L524
	.section	.debug_info,,n
.L522:
	.sleb128	11
	.4byte		.L523
	.section	.debug_info,,n
.L521:
	.sleb128	12
	.4byte		.L522
	.section	.debug_info,,n
.L528:
	.sleb128	13
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L527:
	.sleb128	10
	.byte		"uint8"
	.byte		0
	.4byte		.L528
.L537:
	.sleb128	10
	.byte		"Mcl_DmaConfigType"
	.byte		0
	.4byte		.L538
.L536:
	.sleb128	11
	.4byte		.L537
.L535:
	.sleb128	12
	.4byte		.L536
.L540:
	.sleb128	10
	.byte		"Mcl_ChannelType"
	.byte		0
	.4byte		.L527
.L544:
	.sleb128	10
	.byte		"Mcl_DmaTcdAttributesType"
	.byte		0
	.4byte		.L545
.L543:
	.sleb128	11
	.4byte		.L544
.L542:
	.sleb128	12
	.4byte		.L543
.L555:
	.sleb128	13
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L554:
	.sleb128	10
	.byte		"uint32"
	.byte		0
	.4byte		.L555
.L553:
	.sleb128	10
	.byte		"Mcl_DmaTcdType"
	.byte		0
	.4byte		.L554
.L552:
	.sleb128	12
	.4byte		.L553
.L620:
	.sleb128	10
	.byte		"Mcl_DmaPriorityType"
	.byte		0
	.4byte		.L527
.L633:
	.sleb128	10
	.byte		"boolean"
	.byte		0
	.4byte		.L528
.L651:
	.sleb128	10
	.byte		"Mcl_DmaTransferNotifType"
	.byte		0
	.4byte		.L652
.L689:
	.sleb128	13
	.byte		"short"
	.byte		0
	.byte		0x5
	.byte		0x2
.L688:
	.sleb128	10
	.byte		"sint16"
	.byte		0
	.4byte		.L689
.L705:
	.sleb128	13
	.byte		"long"
	.byte		0
	.byte		0x5
	.byte		0x4
.L704:
	.sleb128	10
	.byte		"sint32"
	.byte		0
	.4byte		.L705
.L728:
	.sleb128	13
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L727:
	.sleb128	10
	.byte		"uint16"
	.byte		0
	.4byte		.L728
.L753:
	.sleb128	10
	.byte		"Mcl_DmaSizeType"
	.byte		0
	.4byte		.L754
.L895:
	.sleb128	10
	.byte		"Mcl_DmaMuxConfigType"
	.byte		0
	.4byte		.L896
.L894:
	.sleb128	11
	.4byte		.L895
.L893:
	.sleb128	12
	.4byte		.L894
.L899:
	.sleb128	10
	.byte		"Mcl_DmaMuxChannelType"
	.byte		0
	.4byte		.L527
.L898:
	.sleb128	11
	.4byte		.L899
.L905:
	.sleb128	10
	.byte		"Mcl_DmaMuxChannelConfigType"
	.byte		0
	.4byte		.L906
.L904:
	.sleb128	11
	.4byte		.L905
	.section	.debug_info,,n
.L902:
	.sleb128	14
	.4byte		.L903-.L2
	.4byte		.L904
	.section	.debug_info,,n
	.sleb128	15
	.sleb128	0
.L903:
.L901:
	.sleb128	12
	.4byte		.L902
.L900:
	.sleb128	11
	.4byte		.L901
.L909:
	.sleb128	10
	.byte		"Mcl_DmaMuxInstanceType"
	.byte		0
	.4byte		.L527
.L908:
	.sleb128	11
	.4byte		.L909
.L913:
	.sleb128	10
	.byte		"Mcl_DmaChannelType"
	.byte		0
	.4byte		.L527
.L912:
	.sleb128	11
	.4byte		.L913
.L919:
	.sleb128	10
	.byte		"Mcl_DmaConfigInstanceType"
	.byte		0
	.4byte		.L920
.L918:
	.sleb128	11
	.4byte		.L919
.L916:
	.sleb128	14
	.4byte		.L917-.L2
	.4byte		.L918
	.sleb128	15
	.sleb128	0
.L917:
.L915:
	.sleb128	12
	.4byte		.L916
.L914:
	.sleb128	11
	.4byte		.L915
.L926:
	.sleb128	10
	.byte		"Mcl_DmaChannelConfigType"
	.byte		0
	.4byte		.L927
.L925:
	.sleb128	11
	.4byte		.L926
.L923:
	.sleb128	14
	.4byte		.L924-.L2
	.4byte		.L925
	.sleb128	15
	.sleb128	0
.L924:
.L922:
	.sleb128	12
	.4byte		.L923
.L921:
	.sleb128	11
	.4byte		.L922
.L930:
	.sleb128	10
	.byte		"Mcl_DmaControlType"
	.byte		0
	.4byte		.L554
.L929:
	.sleb128	11
	.4byte		.L930
.L932:
	.sleb128	10
	.byte		"Mcl_DmaUsedType"
	.byte		0
	.4byte		.L527
.L931:
	.sleb128	11
	.4byte		.L932
	.section	.debug_info,,n
.L936:
	.sleb128	16
	.4byte		.L937-.L2
	.byte		0x1
.L938:
	.sleb128	10
	.byte		"Mcl_DmaChannelErrorStatusType"
	.byte		0
	.4byte		.L939
	.section	.debug_info,,n
	.sleb128	17
	.4byte		.L938
	.sleb128	0
.L937:
.L935:
	.sleb128	12
	.4byte		.L936
.L934:
	.sleb128	10
	.byte		"Mcl_DmaErrNotifyType"
	.byte		0
	.4byte		.L935
.L933:
	.sleb128	11
	.4byte		.L934
.L941:
	.sleb128	11
	.4byte		.L620
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L513:
	.sleb128	0
.L509:

	.section	.debug_loc,,n
	.align	0
.L525:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),31
	.d2locend
.L529:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo4),30
	.d2locend
.L539:
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),3
	.d2locend
.L541:
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo7),4
	.d2locend
.L546:
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo8),5
	.d2locend
.L556:
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),3
	.d2locend
.L557:
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),4
	.d2locend
.L563:
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo12),3
	.d2locend
.L564:
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo13),4
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo15),0
	.d2locend
.L565:
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo14),5
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo17),4
	.d2locend
.L566:
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo15),6
	.d2locend
.L572:
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo19),3
	.d2locend
.L573:
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo20),4
	.d2locend
.L574:
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo21),5
	.d2locend
.L575:
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo22),6
	.d2locend
.L581:
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo24),3
	.d2locend
.L582:
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo25),4
	.d2locreg	%offsetof(.Llo26), %offsetof(.Llo27),0
	.d2locend
.L583:
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo28),5
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo29),4
	.d2locend
.L584:
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo27),6
	.d2locend
.L590:
	.d2locreg	%offsetof(.Llo30), %offsetof(.Llo31),3
	.d2locend
.L591:
	.d2locreg	%offsetof(.Llo30), %offsetof(.Llo31),4
	.d2locend
.L592:
	.d2locreg	%offsetof(.Llo30), %offsetof(.Llo31),5
	.d2locend
.L598:
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo33),3
	.d2locend
.L599:
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo34),4
	.d2locend
.L600:
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo35),5
	.d2locreg	%offsetof(.Llo36), %offsetof(.Llo37),0
	.d2locend
.L601:
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo38),6
	.d2locreg	%offsetof(.Llo34), %offsetof(.Llo39),5
	.d2locend
.L602:
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo37),7
	.d2locend
.L608:
	.d2locreg	%offsetof(.Llo40), %offsetof(.Llo41),3
	.d2locend
.L609:
	.d2locreg	%offsetof(.Llo40), %offsetof(.Llo42),4
	.d2locend
.L610:
	.d2locreg	%offsetof(.Llo40), %offsetof(.Llo43),5
	.d2locreg	%offsetof(.Llo44), %offsetof(.Llo45),0
	.d2locend
.L611:
	.d2locreg	%offsetof(.Llo40), %offsetof(.Llo46),6
	.d2locreg	%offsetof(.Llo42), %offsetof(.Llo47),5
	.d2locend
.L612:
	.d2locreg	%offsetof(.Llo40), %offsetof(.Llo45),7
	.d2locend
.L618:
	.d2locreg	%offsetof(.Llo48), %offsetof(.Llo49),3
	.d2locend
.L619:
	.d2locreg	%offsetof(.Llo48), %offsetof(.Llo50),4
	.d2locreg	%offsetof(.Llo51), %offsetof(.Llo52),0
	.d2locend
.L621:
	.d2locreg	%offsetof(.Llo48), %offsetof(.Llo52),5
	.d2locend
.L627:
	.d2locreg	%offsetof(.Llo53), %offsetof(.Llo54),3
	.d2locend
.L628:
	.d2locreg	%offsetof(.Llo53), %offsetof(.Llo55),4
	.d2locend
.L635:
	.d2locreg	%offsetof(.Llo56), %offsetof(.Llo57),3
	.d2locreg	%offsetof(.Llo58), %offsetof(.Llo59),3
	.d2locend
.L636:
	.d2locreg	%offsetof(.Llo56), %offsetof(.Llo58),4
	.d2locend
.L642:
	.d2locreg	%offsetof(.Llo60), %offsetof(.Llo61),3
	.d2locreg	%offsetof(.Llo62), %offsetof(.Llo63),3
	.d2locend
.L643:
	.d2locreg	%offsetof(.Llo60), %offsetof(.Llo62),4
	.d2locend
.L649:
	.d2locreg	%offsetof(.Llo64), %offsetof(.Llo65),3
	.d2locend
.L650:
	.d2locreg	%offsetof(.Llo64), %offsetof(.Llo66),4
	.d2locend
.L653:
	.d2locreg	%offsetof(.Llo64), %offsetof(.Llo67),5
	.d2locend
.L659:
	.d2locreg	%offsetof(.Llo68), %offsetof(.Llo69),3
	.d2locend
.L660:
	.d2locreg	%offsetof(.Llo68), %offsetof(.Llo70),4
	.d2locend
.L666:
	.d2locreg	%offsetof(.Llo71), %offsetof(.Llo72),3
	.d2locend
.L667:
	.d2locreg	%offsetof(.Llo71), %offsetof(.Llo72),4
	.d2locend
.L673:
	.d2locreg	%offsetof(.Llo73), %offsetof(.Llo74),3
	.d2locend
.L674:
	.d2locreg	%offsetof(.Llo73), %offsetof(.Llo75),4
	.d2locend
.L680:
	.d2locreg	%offsetof(.Llo76), %offsetof(.Llo77),3
	.d2locend
.L681:
	.d2locreg	%offsetof(.Llo76), %offsetof(.Llo77),4
	.d2locend
.L687:
	.d2locreg	%offsetof(.Llo78), %offsetof(.Llo79),3
	.d2locreg	%offsetof(.Llo80), %offsetof(.Llo81),31
	.d2locend
.L690:
	.d2locreg	%offsetof(.Llo78), %offsetof(.Llo82),4
	.d2locreg	%offsetof(.Llo83), %offsetof(.Llo81),30
	.d2locend
.L696:
	.d2locreg	%offsetof(.Llo84), %offsetof(.Llo85),3
	.d2locend
.L697:
	.d2locreg	%offsetof(.Llo84), %offsetof(.Llo85),4
	.d2locend
.L703:
	.d2locreg	%offsetof(.Llo86), %offsetof(.Llo87),3
	.d2locend
.L706:
	.d2locreg	%offsetof(.Llo86), %offsetof(.Llo87),4
	.d2locend
.L712:
	.d2locreg	%offsetof(.Llo88), %offsetof(.Llo89),3
	.d2locend
.L713:
	.d2locreg	%offsetof(.Llo88), %offsetof(.Llo89),4
	.d2locend
.L719:
	.d2locreg	%offsetof(.Llo90), %offsetof(.Llo91),3
	.d2locreg	%offsetof(.Llo92), %offsetof(.Llo93),31
	.d2locend
.L720:
	.d2locreg	%offsetof(.Llo90), %offsetof(.Llo94),4
	.d2locreg	%offsetof(.Llo95), %offsetof(.Llo93),30
	.d2locend
.L726:
	.d2locreg	%offsetof(.Llo96), %offsetof(.Llo97),3
	.d2locreg	%offsetof(.Llo98), %offsetof(.Llo99),31
	.d2locend
.L729:
	.d2locreg	%offsetof(.Llo96), %offsetof(.Llo100),4
	.d2locreg	%offsetof(.Llo101), %offsetof(.Llo102),30
	.d2locreg	%offsetof(.Llo103), %offsetof(.Llo99),30
	.d2locend
.L735:
	.d2locreg	%offsetof(.Llo104), %offsetof(.Llo105),3
	.d2locreg	%offsetof(.Llo106), %offsetof(.Llo107),31
	.d2locend
.L736:
	.d2locreg	%offsetof(.Llo104), %offsetof(.Llo108),4
	.d2locreg	%offsetof(.Llo109), %offsetof(.Llo110),30
	.d2locreg	%offsetof(.Llo111), %offsetof(.Llo107),30
	.d2locend
.L742:
	.d2locreg	%offsetof(.Llo112), %offsetof(.Llo113),3
	.d2locreg	%offsetof(.Llo114), %offsetof(.Llo115),31
	.d2locend
.L743:
	.d2locreg	%offsetof(.Llo112), %offsetof(.Llo114),4
	.d2locreg	%offsetof(.Llo116), %offsetof(.Llo115),30
	.d2locend
.L744:
	.d2locreg	%offsetof(.Llo112), %offsetof(.Llo117),5
	.d2locreg	%offsetof(.Llo118), %offsetof(.Llo115),29
	.d2locend
.L745:
	.d2locreg	%offsetof(.Llo112), %offsetof(.Llo119),6
	.d2locreg	%offsetof(.Llo117), %offsetof(.Llo115),28
	.d2locend
.L751:
	.d2locreg	%offsetof(.Llo120), %offsetof(.Llo121),3
	.d2locreg	%offsetof(.Llo122), %offsetof(.Llo123),31
	.d2locend
.L752:
	.d2locreg	%offsetof(.Llo120), %offsetof(.Llo124),4
	.d2locreg	%offsetof(.Llo125), %offsetof(.Llo123),30
	.d2locend
.L755:
	.d2locreg	%offsetof(.Llo120), %offsetof(.Llo124),5
	.d2locreg	%offsetof(.Llo126), %offsetof(.Llo123),29
	.d2locend
.L761:
	.d2locreg	%offsetof(.Llo127), %offsetof(.Llo128),3
	.d2locreg	%offsetof(.Llo129), %offsetof(.Llo130),31
	.d2locend
.L762:
	.d2locreg	%offsetof(.Llo127), %offsetof(.Llo131),4
	.d2locreg	%offsetof(.Llo132), %offsetof(.Llo130),30
	.d2locend
.L763:
	.d2locreg	%offsetof(.Llo127), %offsetof(.Llo131),5
	.d2locreg	%offsetof(.Llo133), %offsetof(.Llo130),29
	.d2locend
.L769:
	.d2locreg	%offsetof(.Llo134), %offsetof(.Llo135),3
	.d2locend
.L770:
	.d2locreg	%offsetof(.Llo134), %offsetof(.Llo135),4
	.d2locend
.L776:
	.d2locreg	%offsetof(.Llo136), %offsetof(.Llo137),3
	.d2locend
.L777:
	.d2locreg	%offsetof(.Llo136), %offsetof(.Llo137),4
	.d2locend
.L778:
	.d2locreg	%offsetof(.Llo136), %offsetof(.Llo137),5
	.d2locend
.L779:
	.d2locreg	%offsetof(.Llo136), %offsetof(.Llo137),6
	.d2locend
.L780:
	.d2locreg	%offsetof(.Llo136), %offsetof(.Llo137),7
	.d2locend
.L786:
	.d2locreg	%offsetof(.Llo138), %offsetof(.Llo139),3
	.d2locend
.L787:
	.d2locreg	%offsetof(.Llo138), %offsetof(.Llo139),4
	.d2locend
.L793:
	.d2locreg	%offsetof(.Llo140), %offsetof(.Llo141),3
	.d2locreg	%offsetof(.Llo142), %offsetof(.Llo143),31
	.d2locend
.L794:
	.d2locreg	%offsetof(.Llo140), %offsetof(.Llo144),4
	.d2locreg	%offsetof(.Llo145), %offsetof(.Llo143),30
	.d2locend
.L800:
	.d2locreg	%offsetof(.Llo146), %offsetof(.Llo147),3
	.d2locend
.L806:
	.d2locreg	%offsetof(.Llo148), %offsetof(.Llo149),3
	.d2locreg	%offsetof(.Llo150), %offsetof(.Llo151),31
	.d2locend
.L812:
	.d2locreg	%offsetof(.Llo152), %offsetof(.Llo153),3
	.d2locreg	%offsetof(.Llo154), %offsetof(.Llo155),31
	.d2locend
.L818:
	.d2locreg	%offsetof(.Llo156), %offsetof(.Llo157),3
	.d2locreg	%offsetof(.Llo158), %offsetof(.Llo159),3
	.d2locend
.L819:
	.d2locreg	%offsetof(.Llo156), %offsetof(.Llo157),4
	.d2locend
.L825:
	.d2locreg	%offsetof(.Llo160), %offsetof(.Llo161),3
	.d2locend
.L826:
	.d2locreg	%offsetof(.Llo160), %offsetof(.Llo161),4
	.d2locend
.L832:
	.d2locreg	%offsetof(.Llo162), %offsetof(.Llo163),3
	.d2locreg	%offsetof(.Llo164), %offsetof(.Llo165),3
	.d2locend
.L834:
	.d2locreg	%offsetof(.Llo166), %offsetof(.Llo167),0
	.d2locreg	%offsetof(.Llo168), %offsetof(.Llo169),0
	.d2locreg	%offsetof(.Llo163), %offsetof(.Llo164),3
	.d2locreg	%offsetof(.Llo165), %offsetof(.Llo170),3
	.d2locend
.L840:
	.d2locreg	%offsetof(.Llo171), %offsetof(.Llo172),3
	.d2locend
.L846:
	.d2locreg	%offsetof(.Llo173), %offsetof(.Llo174),3
	.d2locend
.L852:
	.d2locreg	%offsetof(.Llo175), %offsetof(.Llo176),3
	.d2locreg	%offsetof(.Llo177), %offsetof(.Llo178),3
	.d2locend
.L853:
	.d2locreg	%offsetof(.Llo175), %offsetof(.Llo179),4
	.d2locend
.L859:
	.d2locreg	%offsetof(.Llo180), %offsetof(.Llo181),3
	.d2locend
.L860:
	.d2locreg	%offsetof(.Llo180), %offsetof(.Llo181),4
	.d2locend
.L866:
	.d2locreg	%offsetof(.Llo182), %offsetof(.Llo183),3
	.d2locend
.L867:
	.d2locreg	%offsetof(.Llo182), %offsetof(.Llo183),4
	.d2locend
.L873:
	.d2locreg	%offsetof(.Llo184), %offsetof(.Llo185),3
	.d2locreg	%offsetof(.Llo186), %offsetof(.Llo187),5
	.d2locend
.L874:
	.d2locreg	%offsetof(.Llo184), %offsetof(.Llo187),4
	.d2locend
.L880:
	.d2locreg	%offsetof(.Llo188), %offsetof(.Llo189),3
	.d2locreg	%offsetof(.Llo190), %offsetof(.Llo191),4
	.d2locend
.L882:
	.d2locreg	%offsetof(.Llo192), %offsetof(.Llo193),0
	.d2locreg	%offsetof(.Llo194), %offsetof(.Llo189),0
	.d2locreg	%offsetof(.Llo195), %offsetof(.Llo196),0
	.d2locreg	%offsetof(.Llo197), %offsetof(.Llo191),0
	.d2locend
.L888:
	.d2locreg	%offsetof(.Llo198), %offsetof(.Llo199),3
	.d2locreg	%offsetof(.Llo200), %offsetof(.Llo201),4
	.d2locend
.L890:
	.d2locreg	%offsetof(.Llo202), %offsetof(.Llo203),0
	.d2locreg	%offsetof(.Llo204), %offsetof(.Llo199),0
	.d2locreg	%offsetof(.Llo205), %offsetof(.Llo206),0
	.d2locreg	%offsetof(.Llo207), %offsetof(.Llo201),0
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "Mcl_IPW_DmaGetChCiter"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Mcl_IPW_DmaGetChBiter"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Mcl_IPW_DmaUpdateDestAddress"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Mcl_IPW_DmaDisableHwRequest"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Mcl_IPW_DmaEnableHwRequest"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Mcl_IPW_DmaGetInterruptRequest"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Mcl_Dma_GetMultiRegChInfo"
	.wrcm.end
	.wrcm.nelem "Mcl_IPW_DmaGetDaddr"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Mcl_IPW_DmaGetSaddr"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Mcl_IPW_DmaGetCiter"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Mcl_IPW_DmaClearDone"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Mcl_IPW_DmaTcdGetIntMaj"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Mcl_IPW_DmaSetIntMaj"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_22","SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_22"
	.wrcm.end
	.wrcm.nelem "Mcl_IPW_DmaClearIntMaj"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_23","SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_23"
	.wrcm.end
	.wrcm.nelem "Mcl_IPW_DmaGetFlags"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Mcl_IPW_DmaSetFlags"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_24","SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_24"
	.wrcm.end
	.wrcm.nelem "Mcl_IPW_DmaSetSlast"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Mcl_IPW_DmaSetMloffen"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Mcl_IPW_DmaSetMlnoNBytes"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Mcl_IPW_DmaSetDModSize"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_17","SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_17"
	.wrcm.end
	.wrcm.nelem "Mcl_IPW_DmaSetSModSize"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_16","SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_16"
	.wrcm.end
	.wrcm.nelem "Mcl_IPW_DmaSetLinkAndIterCount"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_20","SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_20"
	.wrcm.end
	.wrcm.nelem "Mcl_IPW_DmaSetBiter"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_25","SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_25"
	.wrcm.end
	.wrcm.nelem "Mcl_IPW_DmaSetCiter"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_19","SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_19"
	.wrcm.end
	.wrcm.nelem "Mcl_IPW_DmaSetDoff"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_21","SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_21"
	.wrcm.end
	.wrcm.nelem "Mcl_IPW_DmaSetDaddr"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Mcl_IPW_DmaSetDlast"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Mcl_IPW_DmaSetSga"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Mcl_IPW_DmaSetSoff"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_18","SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_18"
	.wrcm.end
	.wrcm.nelem "Mcl_IPW_DmaSetSaddr"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Mcl_IPW_DmaGetChannelTcdAddress"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Mcl_IPW_DmaAcknowledgeInterrupt"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Mcl_IPW_DisableNotification"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Mcl_Dma_DisableNotification"
	.wrcm.end
	.wrcm.nelem "Mcl_IPW_EnableNotification"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Mcl_Dma_EnableNotification"
	.wrcm.end
	.wrcm.nelem "Mcl_IPW_DmaIsTransferActive"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Mcl_Dma_IsTransferActive"
	.wrcm.end
	.wrcm.nelem "Mcl_IPW_DmaIsTransferCompleted"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Mcl_Dma_IsTransferCompleted"
	.wrcm.end
	.wrcm.nelem "Mcl_IPW_DmaStartChannel"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Mcl_Dma_StartChannel"
	.wrcm.end
	.wrcm.nelem "Mcl_IPW_DmaSetChannelPriority"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Mcl_Dma_SetChannelPriority"
	.wrcm.end
	.wrcm.nelem "Mcl_IPW_DmaConfigScatterGatherLinkedTcd"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Mcl_Dma_ConfigScatterGatherLinkedTcd"
	.wrcm.end
	.wrcm.nelem "Mcl_IPW_DmaConfigScatterGatherLinkedChannel"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Mcl_Dma_ConfigScatterGatherLinkedChannel"
	.wrcm.end
	.wrcm.nelem "Mcl_IPW_DmaConfigScatterGatherTcd"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Mcl_Dma_ConfigScatterGatherTcd"
	.wrcm.end
	.wrcm.nelem "Mcl_IPW_DmaConfigLinkedTcd"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Mcl_Dma_ConfigLinkedTcd"
	.wrcm.end
	.wrcm.nelem "Mcl_IPW_DmaConfigScatterGatherChannel"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Mcl_Dma_ConfigScatterGatherChannel"
	.wrcm.end
	.wrcm.nelem "Mcl_IPW_DmaConfigLinkedChannel"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Mcl_Dma_ConfigLinkedChannel"
	.wrcm.end
	.wrcm.nelem "Mcl_IPW_DmaConfigTcd"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Mcl_Dma_ConfigTcd"
	.wrcm.end
	.wrcm.nelem "Mcl_IPW_DmaConfigChannel"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Mcl_Dma_ConfigChannel"
	.wrcm.end
	.wrcm.nelem "Mcl_IPW_Init"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Mcl_DmaMux_Init","Mcl_Dma_Init"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Mcl_IPW.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Mcl_IPW.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Mcl_IPW.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Mcl_IPW.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Mcl_IPW.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Mcl_IPW.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\MCAL\MPC5746R\Mcl\ssc\make\..\..\generator\integration_package\src\Mcl_IPW.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
