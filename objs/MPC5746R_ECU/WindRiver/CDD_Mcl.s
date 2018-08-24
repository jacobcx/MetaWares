#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"CDD_Mcl.c"
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
# FUNC(void, MCL_CODE) Mcl_Init(P2CONST( Mcl_ConfigType, AUTOMATIC, MCL_APPL_CONST) ConfigPtr)
	.section	.invalid_TEXT,,c
	.align		2
	.section	.debug_line.invalid_TEXT,,n
	.sectionlink	.debug_line
.L503:
	.section	.invalid_TEXT,,c
#$$ld
.L499:
	.0byte		.L497
	.d2_line_start	.debug_line.invalid_TEXT
	.section	.invalid_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Mcl\\ssc\\make\\..\\..\\generator\\integration_package\\src\\CDD_Mcl.c"
        .d2line         623,22
#$$ld
.L506:

#$$bf	Mcl_Init,interprocedural,rasave,nostackparams
	.globl		Mcl_Init
	.d2_cfa_start __cie
Mcl_Init:
.Llo1:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# ConfigPtr=r3 ConfigPtr=r3
	.d2prologue_end
# {
# #if (MCL_VALIDATE_GLOBAL_CALL == STD_ON) || (MCL_VALIDATE_PARAMS == STD_ON)
#     VAR(Std_ReturnType, AUTOMATIC)valid;
# #endif
# 
# #if (MCL_VALIDATE_GLOBAL_CALL == STD_ON)
#     valid = Mcl_ValidateGlobalCall(MCL_INIT_ID_U8);
#     if ((Std_ReturnType)E_OK == valid)
#     {
# #endif /* (MCL_VALIDATE_GLOBAL_CALL == STD_ON */
# #if (MCL_VALIDATE_PARAMS == STD_ON)
#         valid = Mcl_ValidatePtrInit(ConfigPtr);
#         if ((Std_ReturnType)E_OK == valid)
#         {
# #endif /* (MCL_VALIDATE_PARAMS == STD_ON) */
# #if (MCL_PRECOMPILE_SUPPORT == STD_ON)
#             Mcl_pConfig = &Mcl_InitConfig_PC;
#            (void)ConfigPtr;
# #else
#             Mcl_pConfig = ConfigPtr;
	.d2line		643
	lis		r4,Mcl_pConfig@ha
	e_add16i		r4,r4,Mcl_pConfig@l
	stw		r3,0(r4)		# ConfigPtr=r3
# #endif /* MCL_PRECOMPILE_SUPPORT */
# #if (MCL_ENABLE_DMA == STD_ON)
# 
# #if (MCL_DISABLE_DEM_REPORT_ERROR_STATUS == STD_OFF)
#             /* Get a local copy of the DEM error reporting structure. */
#             Mcl_pDemCfgPtr = Mcl_pConfig->Mcl_pDemConfig;
# #endif 
#             /* Init eDMA controllers and channels. */
#             Mcl_IPW_Init(Mcl_pConfig->pMclDmaConfig->pMclDmaHwIpsConfig);
	.d2line		652
	lwz		r3,0(r3)		# ConfigPtr=r3 ConfigPtr=r3
	lwz		r3,8(r3)		# ConfigPtr=r3 ConfigPtr=r3
.Llo2:
	bl		Mcl_IPW_Init
# #endif
# #if (MCL_ENABLE_CROSSBAR == STD_ON)
#             /* Init Crossbar registers */
#             Mcl_IPW_Crossbar_Init(Mcl_pConfig->pMclCrossbarConfig);
# #endif 
# #ifdef MCL_ENABLE_CROSSBAR_LITE
# #if (MCL_ENABLE_CROSSBAR_LITE == STD_ON)
#             /* Init Crossbar registers */
#             Mcl_IPW_Crossbar_Init();
# #endif
# #endif
# 
# #if (MCL_VALIDATE_PARAMS == STD_ON)
#         }
# #endif
# #if (MCL_VALIDATE_GLOBAL_CALL == STD_ON)
#     }
#     MCL_ENDVALIDATEGLOBALCALL();
# #endif
# }
	.d2line		672
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
.L507:
	.type		Mcl_Init,@function
	.size		Mcl_Init,.-Mcl_Init
# Number of nodes = 11

# Allocations for Mcl_Init
#	?a4		ConfigPtr
# FUNC(void, MCL_CODE) Mcl_GetVersionInfo(P2VAR(Std_VersionInfoType, AUTOMATIC, MCL_APPL_DATA)versioninfo)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         742,22
#$$ld
.L517:

#$$bf	Mcl_GetVersionInfo,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,lr
	.globl		Mcl_GetVersionInfo
	.d2_cfa_start __cie
Mcl_GetVersionInfo:
.Llo3:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r4,r3		# versioninfo=r4 versioninfo=r3
	.d2prologue_end
# {
# #if (MCL_VALIDATE_PARAMS == STD_ON)
#     if ((Std_ReturnType)E_OK == Mcl_ValidateVersionInfoCall(versioninfo))
#     {
# #endif
#         (versioninfo)->vendorID         = (uint16)MCL_VENDOR_ID;
	.d2line		748
.Llo4:
	diab.li		r3,43
.Llo5:
	sth		r3,0(r4)		# versioninfo=r4
#         (versioninfo)->moduleID         = (uint8)MCL_MODULE_ID;
	.d2line		749
	diab.li		r3,255
	sth		r3,2(r4)		# versioninfo=r4
#         (versioninfo)->sw_major_version = (uint8)MCL_SW_MAJOR_VERSION;
	.d2line		750
	diab.li		r3,1
	stb		r3,4(r4)		# versioninfo=r4
#         (versioninfo)->sw_minor_version = (uint8)MCL_SW_MINOR_VERSION;
	.d2line		751
	diab.li		r3,0
	stb		r3,5(r4)		# versioninfo=r4
#         (versioninfo)->sw_patch_version = (uint8)MCL_SW_PATCH_VERSION;
	.d2line		752
	diab.li		r3,2
	stb		r3,6(r4)		# versioninfo=r4
# #if (MCL_VALIDATE_PARAMS == STD_ON)
#     }
# #endif
# }
	.d2line		756
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo6:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L518:
	.type		Mcl_GetVersionInfo,@function
	.size		Mcl_GetVersionInfo,.-Mcl_GetVersionInfo
# Number of nodes = 28

# Allocations for Mcl_GetVersionInfo
#	?a4		versioninfo
# FUNC(void, MCL_CODE) Mcl_DmaConfigChannel( VAR(Mcl_ChannelType, AUTOMATIC) dma_channel, 
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         777,22
#$$ld
.L526:

#$$bf	Mcl_DmaConfigChannel,interprocedural,rasave,nostackparams
	.globl		Mcl_DmaConfigChannel
	.d2_cfa_start __cie
Mcl_DmaConfigChannel:
.Llo7:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr		# dma_channel=r0
	stw		r0,20(r1)		# dma_channel=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# dma_channel=r0 dma_channel=r3
.Llo8:
	mr		r5,r4		# config_descriptor=r5 config_descriptor=r4
	.d2prologue_end
#                                            P2CONST(Mcl_DmaTcdAttributesType, AUTOMATIC, MCL_APPL_CONST) config_descriptor)
# {
# #if (MCL_VALIDATE_GLOBAL_CALL == STD_ON)
#     VAR(Std_ReturnType, AUTOMATIC)valid;
#     
#     valid = Mcl_ValidateGlobalCall(MCL_CONFIG_CH_ID_U8);
#     if ((Std_ReturnType)E_OK == valid)
#     {
# #endif /* (MCL_VALIDATE_GLOBAL_CALL == STD_ON */
# #if (MCL_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#         if((Std_ReturnType)E_OK == Mcl_ValidateChannelConfigCall(dma_channel, MCL_CONFIG_CH_ID_U8))
#         {
# #endif /* (MCL_VALIDATE_CALL_AND_CHANNEL == STD_ON */
# #if (MCL_DEV_ERROR_DETECT == STD_ON) 
#         if (NULL_PTR == config_descriptor)
#         {
#             (void)Det_ReportError((uint16)MCL_MODULE_ID, 0U, MCL_CONFIG_CH_ID_U8, MCL_E_PARAM_POINTER_U8);
#         }
#         else
#         {
# #endif        
#             /* Call IPW config channel function*/
#             Mcl_IPW_DmaConfigChannel(Mcl_pConfig->pMclDmaConfig->pMclDmaHwIpsConfig->pDma_Config, dma_channel, config_descriptor);
	.d2line		800
.Llo9:
	lis		r3,Mcl_pConfig@ha
	lwz		r3,Mcl_pConfig@l(r3)
	lwz		r3,0(r3)
	lwz		r3,8(r3)
	lwz		r3,0(r3)
	rlwinm		r4,r0,0,24,31		# dma_channel=r0
.Llo11:
	mr		r5,r5		# config_descriptor=r5 config_descriptor=r5
	bl		Mcl_IPW_DmaConfigChannel
# #if (MCL_DEV_ERROR_DETECT == STD_ON)             
#         }
# #endif        
# #if (MCL_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#         }
#         MCL_ENDVALIDATECHANNELCONFIGCALL(dma_channel);
# #endif /* (MCL_VALIDATE_CALL_AND_CHANNEL == STD_ON */           
# #if (MCL_VALIDATE_GLOBAL_CALL == STD_ON)
#     }
#     MCL_ENDVALIDATEGLOBALCALL();
# #endif /* (MCL_VALIDATE_GLOBAL_CALL == STD_ON */   
# }                                            
	.d2line		812
	.d2epilogue_begin
.Llo10:
	lwz		r0,20(r1)		# dma_channel=r0
	mtspr		lr,r0		# dma_channel=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L527:
	.type		Mcl_DmaConfigChannel,@function
	.size		Mcl_DmaConfigChannel,.-Mcl_DmaConfigChannel
# Number of nodes = 14

# Allocations for Mcl_DmaConfigChannel
#	?a4		dma_channel
#	?a5		config_descriptor
# FUNC(void, MCL_CODE) Mcl_DmaConfigLinkedChannel( VAR(Mcl_ChannelType, AUTOMATIC) dma_channel, 
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         832,22
#$$ld
.L540:

#$$bf	Mcl_DmaConfigLinkedChannel,interprocedural,rasave,nostackparams
	.globl		Mcl_DmaConfigLinkedChannel
	.d2_cfa_start __cie
Mcl_DmaConfigLinkedChannel:
.Llo12:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr		# dma_channel=r0
	stw		r0,20(r1)		# dma_channel=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# dma_channel=r0 dma_channel=r3
.Llo13:
	mr		r7,r4		# config_descriptor=r7 config_descriptor=r4
.Llo14:
	mr		r6,r5		# next_channel=r6 next_channel=r5
	.d2prologue_end
#                                                  P2CONST(Mcl_DmaTcdAttributesType, AUTOMATIC, MCL_APPL_CONST) config_descriptor, 
#                                                  VAR(Mcl_ChannelType, AUTOMATIC) next_channel)
# {
# #if (MCL_VALIDATE_GLOBAL_CALL == STD_ON)
#     VAR(Std_ReturnType, AUTOMATIC)valid;
#     
#     valid = Mcl_ValidateGlobalCall(MCL_CONFIG_LINK_CH_ID_U8);
#     if ((Std_ReturnType)E_OK == valid)
#     {
# #endif /* (MCL_VALIDATE_GLOBAL_CALL == STD_ON */
# #if (MCL_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#         if((Std_ReturnType)E_OK == Mcl_ValidateChannelConfigCall(dma_channel, MCL_CONFIG_LINK_CH_ID_U8))
#         {
# #endif /* (MCL_VALIDATE_CALL_AND_CHANNEL == STD_ON */
# #if (MCL_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#             if((Std_ReturnType)E_OK == Mcl_ValidateChannelConfigCall(next_channel, MCL_CONFIG_LINK_CH_ID_U8))
#             {
# #endif /* (MCL_VALIDATE_CALL_AND_CHANNEL == STD_ON */
# #if (MCL_DEV_ERROR_DETECT == STD_ON)
#             if (NULL_PTR == config_descriptor)
#             {
#                 (void)Det_ReportError((uint16)MCL_MODULE_ID, 0U, MCL_CONFIG_LINK_CH_ID_U8, MCL_E_PARAM_POINTER_U8);
#             }
#             else
#             {
# #endif         
#                 /* Call IPW config linked channel function*/
#                 Mcl_IPW_DmaConfigLinkedChannel(Mcl_pConfig->pMclDmaConfig->pMclDmaHwIpsConfig->pDma_Config, dma_channel, config_descriptor, next_channel);
	.d2line		860
.Llo16:
	lis		r3,Mcl_pConfig@ha
	lwz		r3,Mcl_pConfig@l(r3)
	lwz		r3,0(r3)
	lwz		r3,8(r3)
	lwz		r3,0(r3)
	rlwinm		r4,r0,0,24,31		# dma_channel=r0
	rlwinm		r6,r6,0,24,31		# next_channel=r6 next_channel=r6
	mr		r5,r7		# config_descriptor=r5 config_descriptor=r7
.Llo17:
	bl		Mcl_IPW_DmaConfigLinkedChannel
# #if (MCL_DEV_ERROR_DETECT == STD_ON)                
#             }
# #endif            
# #if (MCL_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#             }
#             MCL_ENDVALIDATECHANNELCONFIGCALL(next_channel);
# #endif /* (MCL_VALIDATE_CALL_AND_CHANNEL == STD_ON */        
# #if (MCL_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#         }
#         MCL_ENDVALIDATECHANNELCONFIGCALL(dma_channel);
# #endif /* (MCL_VALIDATE_CALL_AND_CHANNEL == STD_ON */                        
# #if (MCL_VALIDATE_GLOBAL_CALL == STD_ON)
#     }
#     MCL_ENDVALIDATEGLOBALCALL();
# #endif /* (MCL_VALIDATE_GLOBAL_CALL == STD_ON */   
# } 
	.d2line		876
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
.L541:
	.type		Mcl_DmaConfigLinkedChannel,@function
	.size		Mcl_DmaConfigLinkedChannel,.-Mcl_DmaConfigLinkedChannel
# Number of nodes = 17

# Allocations for Mcl_DmaConfigLinkedChannel
#	?a4		dma_channel
#	?a5		config_descriptor
#	?a6		next_channel
# FUNC(void, MCL_CODE) Mcl_DmaConfigTcd( P2VAR(Mcl_DmaTcdType, AUTOMATIC, MCL_APPL_DATA) pTcdAddress,
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         895,22
#$$ld
.L548:

#$$bf	Mcl_DmaConfigTcd,interprocedural,rasave,nostackparams
	.globl		Mcl_DmaConfigTcd
	.d2_cfa_start __cie
Mcl_DmaConfigTcd:
.Llo18:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
#                                        P2CONST(Mcl_DmaTcdAttributesType, AUTOMATIC, MCL_APPL_CONST) config_descriptor)
# {
# #if (MCL_DEV_ERROR_DETECT == STD_ON)
#     if ((NULL_PTR == config_descriptor) || (NULL_PTR == pTcdAddress))
#     {
#         (void)Det_ReportError((uint16)MCL_MODULE_ID, 0U, MCL_CONFIG_TCD_ID_U8, MCL_E_PARAM_POINTER_U8);
#     }
#     else
#     {
# #endif    
#         /* Call IPW config tcd function*/
#         Mcl_IPW_DmaConfigTcd(pTcdAddress, config_descriptor);
	.d2line		907
	mr		r0,r3		# pTcdAddress=r0 pTcdAddress=r3
	mr		r0,r4		# config_descriptor=r0 config_descriptor=r4
	bl		Mcl_IPW_DmaConfigTcd
# #if (MCL_DEV_ERROR_DETECT == STD_ON)        
#     }
# #endif    
# } 
	.d2line		911
	.d2epilogue_begin
.Llo19:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L549:
	.type		Mcl_DmaConfigTcd,@function
	.size		Mcl_DmaConfigTcd,.-Mcl_DmaConfigTcd
# Number of nodes = 6

# Allocations for Mcl_DmaConfigTcd
#	?a4		pTcdAddress
#	?a5		config_descriptor
# FUNC(void, MCL_CODE) Mcl_DmaConfigScatterGatherChannel( VAR(Mcl_ChannelType, AUTOMATIC) dma_channel, 
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         931,22
#$$ld
.L559:

#$$bf	Mcl_DmaConfigScatterGatherChannel,interprocedural,rasave,nostackparams
	.globl		Mcl_DmaConfigScatterGatherChannel
	.d2_cfa_start __cie
Mcl_DmaConfigScatterGatherChannel:
.Llo20:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r6,r3		# dma_channel=r6 dma_channel=r3
.Llo21:
	mr		r0,r4		# config_descriptor=r0 config_descriptor=r4
.Llo22:
	mr		r5,r5		# pNext_tcd=r5 pNext_tcd=r5
	.d2prologue_end
#                                                         P2CONST(Mcl_DmaTcdAttributesType, AUTOMATIC, MCL_APPL_CONST) config_descriptor, 
#                                                         P2VAR(Mcl_DmaTcdType, AUTOMATIC, MCL_APPL_DATA) pNext_tcd)
# {
# #if (MCL_VALIDATE_GLOBAL_CALL == STD_ON)
#     VAR(Std_ReturnType, AUTOMATIC)valid;
#     
#     valid = Mcl_ValidateGlobalCall(MCL_CONFIG_SCA_CH_ID_U8);
#     if ((Std_ReturnType)E_OK == valid)
#     {
# #endif /* (MCL_VALIDATE_GLOBAL_CALL == STD_ON */
# #if (MCL_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#         if((Std_ReturnType)E_OK == Mcl_ValidateChannelConfigCall(dma_channel, MCL_CONFIG_SCA_CH_ID_U8))
#         {
# #endif /* (MCL_VALIDATE_CALL_AND_CHANNEL == STD_ON */
# #if (MCL_DEV_ERROR_DETECT == STD_ON)
#         if ((NULL_PTR == config_descriptor) || (NULL_PTR == pNext_tcd))
#         {
#             (void)Det_ReportError((uint16)MCL_MODULE_ID, 0U, MCL_CONFIG_SCA_CH_ID_U8, MCL_E_PARAM_POINTER_U8);
#         }
#         else
#         {
# #endif        
#             /* Call IPW config scatter gather channel function*/
#             Mcl_IPW_DmaConfigScatterGatherChannel(Mcl_pConfig->pMclDmaConfig->pMclDmaHwIpsConfig->pDma_Config, dma_channel, config_descriptor, pNext_tcd);
	.d2line		955
.Llo24:
	lis		r3,Mcl_pConfig@ha
	lwz		r3,Mcl_pConfig@l(r3)
	lwz		r3,0(r3)
	lwz		r3,8(r3)
	lwz		r3,0(r3)
	rlwinm		r4,r6,0,24,31		# dma_channel=r6
	mr		r6,r5		# pNext_tcd=r6 pNext_tcd=r5
.Llo23:
	mr		r5,r0		# config_descriptor=r5 config_descriptor=r0
.Llo26:
	bl		Mcl_IPW_DmaConfigScatterGatherChannel
# #if (MCL_DEV_ERROR_DETECT == STD_ON)            
#         }
# #endif        
# #if (MCL_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#         }
#         MCL_ENDVALIDATECHANNELCONFIGCALL(dma_channel);
# #endif /* (MCL_VALIDATE_CALL_AND_CHANNEL == STD_ON */     
# #if (MCL_VALIDATE_GLOBAL_CALL == STD_ON)
#     }
#     MCL_ENDVALIDATEGLOBALCALL();
# #endif /* (MCL_VALIDATE_GLOBAL_CALL == STD_ON */       
# } 
	.d2line		967
	.d2epilogue_begin
.Llo25:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L560:
	.type		Mcl_DmaConfigScatterGatherChannel,@function
	.size		Mcl_DmaConfigScatterGatherChannel,.-Mcl_DmaConfigScatterGatherChannel
# Number of nodes = 16

# Allocations for Mcl_DmaConfigScatterGatherChannel
#	?a4		dma_channel
#	?a5		config_descriptor
#	?a6		pNext_tcd
# FUNC(void, MCL_CODE) Mcl_DmaConfigLinkedTcd( P2VAR(Mcl_DmaTcdType, AUTOMATIC, MCL_APPL_DATA) pTcdAddress, 
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         987,22
#$$ld
.L567:

#$$bf	Mcl_DmaConfigLinkedTcd,interprocedural,rasave,nostackparams
	.globl		Mcl_DmaConfigLinkedTcd
	.d2_cfa_start __cie
Mcl_DmaConfigLinkedTcd:
.Llo27:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r0,r3		# pTcdAddress=r0 pTcdAddress=r3
.Llo28:
	mr		r4,r4		# config_descriptor=r4 config_descriptor=r4
.Llo29:
	mr		r6,r5		# next_channel=r6 next_channel=r5
	.d2prologue_end
#                                              P2CONST(Mcl_DmaTcdAttributesType, AUTOMATIC, MCL_APPL_CONST) config_descriptor, 
#                                              VAR(Mcl_ChannelType, AUTOMATIC) next_channel)
# {
# 
# #if (MCL_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#     if((Std_ReturnType)E_OK == Mcl_ValidateChannelConfigCall(next_channel, MCL_CONFIG_LINK_TCD_ID_U8))
#     {
# #endif /* (MCL_VALIDATE_CALL_AND_CHANNEL == STD_ON */
# #if (MCL_DEV_ERROR_DETECT == STD_ON)
#     if ((NULL_PTR == config_descriptor) || (NULL_PTR == pTcdAddress))
#     {
#         (void)Det_ReportError((uint16)MCL_MODULE_ID, 0U, MCL_CONFIG_LINK_TCD_ID_U8, MCL_E_PARAM_POINTER_U8);
#     }
#     else
#     {
# #endif    
#         /* Call IPW config linked tcd function*/
#         Mcl_IPW_DmaConfigLinkedTcd(Mcl_pConfig->pMclDmaConfig->pMclDmaHwIpsConfig->pDma_Config, pTcdAddress, config_descriptor, next_channel);
	.d2line		1005
	lis		r3,Mcl_pConfig@ha
	lwz		r3,Mcl_pConfig@l(r3)
	lwz		r3,0(r3)
	lwz		r3,8(r3)
	lwz		r3,0(r3)
	rlwinm		r6,r6,0,24,31		# next_channel=r6 next_channel=r6
	mr		r5,r4		# config_descriptor=r5 config_descriptor=r4
.Llo32:
	mr		r4,r0		# pTcdAddress=r4 pTcdAddress=r0
.Llo31:
	bl		Mcl_IPW_DmaConfigLinkedTcd
# #if (MCL_DEV_ERROR_DETECT == STD_ON)        
#     }
# #endif    
# #if (MCL_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#     }
#     MCL_ENDVALIDATECHANNELCONFIGCALL(next_channel);
# #endif /* (MCL_VALIDATE_CALL_AND_CHANNEL == STD_ON */             
# } 
	.d2line		1013
	.d2epilogue_begin
.Llo30:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L568:
	.type		Mcl_DmaConfigLinkedTcd,@function
	.size		Mcl_DmaConfigLinkedTcd,.-Mcl_DmaConfigLinkedTcd
# Number of nodes = 16

# Allocations for Mcl_DmaConfigLinkedTcd
#	?a4		pTcdAddress
#	?a5		config_descriptor
#	?a6		next_channel
# FUNC(void, MCL_CODE) Mcl_DmaConfigScatterGatherTcd( P2VAR(Mcl_DmaTcdType, AUTOMATIC, MCL_APPL_DATA) pTcdAddress, 
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1033,22
#$$ld
.L575:

#$$bf	Mcl_DmaConfigScatterGatherTcd,interprocedural,rasave,nostackparams
	.globl		Mcl_DmaConfigScatterGatherTcd
	.d2_cfa_start __cie
Mcl_DmaConfigScatterGatherTcd:
.Llo33:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
#                                                     P2CONST(Mcl_DmaTcdAttributesType, AUTOMATIC, MCL_APPL_CONST) config_descriptor, 
#                                                     P2VAR(Mcl_DmaTcdType, AUTOMATIC, MCL_APPL_DATA) pNext_tcd)
# {
# #if (MCL_DEV_ERROR_DETECT == STD_ON)
#     if ((NULL_PTR == config_descriptor) || (NULL_PTR == pTcdAddress) || (NULL_PTR == pNext_tcd))
#     {
#         (void)Det_ReportError((uint16)MCL_MODULE_ID, 0U, MCL_CONFIG_SCA_TCD_ID_U8, MCL_E_PARAM_POINTER_U8);
#     }
#     else
#     {
# #endif    
#         /* Call IPW config scatter gather tcd function*/
#         Mcl_IPW_DmaConfigScatterGatherTcd(pTcdAddress, config_descriptor, pNext_tcd);
	.d2line		1046
	mr		r0,r3		# pTcdAddress=r0 pTcdAddress=r3
	mr		r0,r4		# config_descriptor=r0 config_descriptor=r4
	mr		r0,r5		# pNext_tcd=r0 pNext_tcd=r5
	bl		Mcl_IPW_DmaConfigScatterGatherTcd
# #if (MCL_DEV_ERROR_DETECT == STD_ON)        
#     }
# #endif    
# } 
	.d2line		1050
	.d2epilogue_begin
.Llo34:
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
	.type		Mcl_DmaConfigScatterGatherTcd,@function
	.size		Mcl_DmaConfigScatterGatherTcd,.-Mcl_DmaConfigScatterGatherTcd
# Number of nodes = 8

# Allocations for Mcl_DmaConfigScatterGatherTcd
#	?a4		pTcdAddress
#	?a5		config_descriptor
#	?a6		pNext_tcd
# FUNC(void, MCL_CODE) Mcl_DmaConfigScatterGatherLinkedChannel( VAR(Mcl_ChannelType, AUTOMATIC) dma_channel, 
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1071,22
#$$ld
.L583:

#$$bf	Mcl_DmaConfigScatterGatherLinkedChannel,interprocedural,rasave,nostackparams
	.globl		Mcl_DmaConfigScatterGatherLinkedChannel
	.d2_cfa_start __cie
Mcl_DmaConfigScatterGatherLinkedChannel:
.Llo35:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr		# dma_channel=r0
	stw		r0,20(r1)		# dma_channel=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# dma_channel=r0 dma_channel=r3
.Llo36:
	mr		r8,r4		# config_descriptor=r8 config_descriptor=r4
.Llo37:
	mr		r5,r5		# pNext_tcd=r5 pNext_tcd=r5
.Llo39:
	mr		r7,r6		# next_channel=r7 next_channel=r6
	.d2prologue_end
#                                                               P2CONST(Mcl_DmaTcdAttributesType, AUTOMATIC, MCL_APPL_CONST) config_descriptor, 
#                                                               P2VAR(Mcl_DmaTcdType, AUTOMATIC, MCL_APPL_DATA) pNext_tcd,
#                                                               VAR(Mcl_ChannelType, AUTOMATIC) next_channel)
# {
# #if (MCL_VALIDATE_GLOBAL_CALL == STD_ON)
#     VAR(Std_ReturnType, AUTOMATIC)valid;
#     
#     valid = Mcl_ValidateGlobalCall(MCL_CONFIG_SCA_LINK_CH_ID_U8);
#     if ((Std_ReturnType)E_OK == valid)
#     {
# #endif /* (MCL_VALIDATE_GLOBAL_CALL == STD_ON */
# #if (MCL_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#         if((Std_ReturnType)E_OK == Mcl_ValidateChannelConfigCall(dma_channel, MCL_CONFIG_SCA_LINK_CH_ID_U8))
#         {
# #endif /* (MCL_VALIDATE_CALL_AND_CHANNEL == STD_ON */
# #if (MCL_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#             if((Std_ReturnType)E_OK == Mcl_ValidateChannelConfigCall(next_channel, MCL_CONFIG_SCA_LINK_CH_ID_U8))
#             {
# #endif /* (MCL_VALIDATE_CALL_AND_CHANNEL == STD_ON */
# #if (MCL_DEV_ERROR_DETECT == STD_ON)
#             if ((NULL_PTR == config_descriptor) || (NULL_PTR == pNext_tcd))
#             {
#                 (void)Det_ReportError((uint16)MCL_MODULE_ID, 0U, MCL_CONFIG_SCA_LINK_CH_ID_U8, MCL_E_PARAM_POINTER_U8);
#             }
#             else
#             {
# #endif            
#                 /* Call IPW config scatter gather channel function*/
#                 Mcl_IPW_DmaConfigScatterGatherLinkedChannel(Mcl_pConfig->pMclDmaConfig->pMclDmaHwIpsConfig->pDma_Config, dma_channel, config_descriptor, pNext_tcd, next_channel);
	.d2line		1100
	lis		r3,Mcl_pConfig@ha
	lwz		r3,Mcl_pConfig@l(r3)
	lwz		r3,0(r3)
	lwz		r3,8(r3)
	lwz		r3,0(r3)
	rlwinm		r4,r0,0,24,31		# dma_channel=r0
	rlwinm		r7,r7,0,24,31		# next_channel=r7 next_channel=r7
	mr		r6,r5		# pNext_tcd=r6 pNext_tcd=r5
.Llo41:
	mr		r5,r8		# config_descriptor=r5 config_descriptor=r8
.Llo40:
	bl		Mcl_IPW_DmaConfigScatterGatherLinkedChannel
# #if (MCL_DEV_ERROR_DETECT == STD_ON)                
#             }
# #endif            
# #if (MCL_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#             }
#             MCL_ENDVALIDATECHANNELCONFIGCALL(next_channel);
# #endif /* (MCL_VALIDATE_CALL_AND_CHANNEL == STD_ON */    
# #if (MCL_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#         }
#         MCL_ENDVALIDATECHANNELCONFIGCALL(dma_channel);
# #endif /* (MCL_VALIDATE_CALL_AND_CHANNEL == STD_ON */     
# #if (MCL_VALIDATE_GLOBAL_CALL == STD_ON)
#     }
#     MCL_ENDVALIDATEGLOBALCALL();
# #endif /* (MCL_VALIDATE_GLOBAL_CALL == STD_ON */       
# } 
	.d2line		1116
	.d2epilogue_begin
.Llo38:
	lwz		r0,20(r1)		# dma_channel=r0
	mtspr		lr,r0		# dma_channel=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L584:
	.type		Mcl_DmaConfigScatterGatherLinkedChannel,@function
	.size		Mcl_DmaConfigScatterGatherLinkedChannel,.-Mcl_DmaConfigScatterGatherLinkedChannel
# Number of nodes = 19

# Allocations for Mcl_DmaConfigScatterGatherLinkedChannel
#	?a4		dma_channel
#	?a5		config_descriptor
#	?a6		pNext_tcd
#	?a7		next_channel
# FUNC(void, MCL_CODE) Mcl_DmaConfigScatterGatherLinkedTcd( P2VAR(Mcl_DmaTcdType, AUTOMATIC, MCL_APPL_DATA) pTcdAddress, 
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1139,22
#$$ld
.L592:

#$$bf	Mcl_DmaConfigScatterGatherLinkedTcd,interprocedural,rasave,nostackparams
	.globl		Mcl_DmaConfigScatterGatherLinkedTcd
	.d2_cfa_start __cie
Mcl_DmaConfigScatterGatherLinkedTcd:
.Llo42:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r0,r3		# pTcdAddress=r0 pTcdAddress=r3
.Llo43:
	mr		r4,r4		# config_descriptor=r4 config_descriptor=r4
.Llo44:
	mr		r5,r5		# pNext_tcd=r5 pNext_tcd=r5
	mr		r7,r6		# next_channel=r7 next_channel=r6
	.d2prologue_end
#                                                           P2CONST(Mcl_DmaTcdAttributesType, AUTOMATIC, MCL_APPL_CONST) config_descriptor, 
#                                                           P2VAR(Mcl_DmaTcdType, AUTOMATIC, MCL_APPL_DATA) pNext_tcd,
#                                                           VAR(Mcl_ChannelType, AUTOMATIC) next_channel)
# {
# #if (MCL_VALIDATE_GLOBAL_CALL == STD_ON)
#     VAR(Std_ReturnType, AUTOMATIC)valid;
#     
#     valid = Mcl_ValidateGlobalCall(MCL_CONFIG_SCA_LINK_TCD_ID_U8);
#     if ((Std_ReturnType)E_OK == valid)
#     {
# #endif /* (MCL_VALIDATE_GLOBAL_CALL == STD_ON */
# #if (MCL_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#         if((Std_ReturnType)E_OK == Mcl_ValidateChannelConfigCall(next_channel, MCL_CONFIG_SCA_LINK_TCD_ID_U8))
#         {
# #endif /* (MCL_VALIDATE_CALL_AND_CHANNEL == STD_ON */
# #if (MCL_DEV_ERROR_DETECT == STD_ON)
#         if ((NULL_PTR == config_descriptor) || (NULL_PTR == pTcdAddress) || (NULL_PTR == pNext_tcd))
#         {
#             (void)Det_ReportError((uint16)MCL_MODULE_ID, 0U, MCL_CONFIG_SCA_LINK_TCD_ID_U8, MCL_E_PARAM_POINTER_U8);
#         }
#         else
#         {
# #endif        
#             /* Call IPW config scatter gather channel function*/
#             Mcl_IPW_DmaConfigScatterGatherLinkedTcd(Mcl_pConfig->pMclDmaConfig->pMclDmaHwIpsConfig->pDma_Config, pTcdAddress, config_descriptor, pNext_tcd, next_channel);
	.d2line		1164
	lis		r3,Mcl_pConfig@ha
	lwz		r3,Mcl_pConfig@l(r3)
	lwz		r3,0(r3)
	lwz		r3,8(r3)
	lwz		r3,0(r3)
	rlwinm		r7,r7,0,24,31		# next_channel=r7 next_channel=r7
	mr		r6,r5		# pNext_tcd=r6 pNext_tcd=r5
.Llo48:
	mr		r5,r4		# config_descriptor=r5 config_descriptor=r4
.Llo47:
	mr		r4,r0		# pTcdAddress=r4 pTcdAddress=r0
.Llo46:
	bl		Mcl_IPW_DmaConfigScatterGatherLinkedTcd
# #if (MCL_DEV_ERROR_DETECT == STD_ON)            
#         }
# #endif        
# #if (MCL_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#         }
#         MCL_ENDVALIDATECHANNELCONFIGCALL(next_channel);
# #endif /* (MCL_VALIDATE_CALL_AND_CHANNEL == STD_ON */     
# #if (MCL_VALIDATE_GLOBAL_CALL == STD_ON)
#     }
#     MCL_ENDVALIDATEGLOBALCALL();
# #endif /* (MCL_VALIDATE_GLOBAL_CALL == STD_ON */       
# } 
	.d2line		1176
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
.L593:
	.type		Mcl_DmaConfigScatterGatherLinkedTcd,@function
	.size		Mcl_DmaConfigScatterGatherLinkedTcd,.-Mcl_DmaConfigScatterGatherLinkedTcd
# Number of nodes = 18

# Allocations for Mcl_DmaConfigScatterGatherLinkedTcd
#	?a4		pTcdAddress
#	?a5		config_descriptor
#	?a6		pNext_tcd
#	?a7		next_channel
# FUNC(void, MCL_CODE) Mcl_DmaSetChannelPriority( VAR(Mcl_ChannelType, AUTOMATIC) nChannel, 
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1196,22
#$$ld
.L601:

#$$bf	Mcl_DmaSetChannelPriority,interprocedural,rasave,nostackparams
	.globl		Mcl_DmaSetChannelPriority
	.d2_cfa_start __cie
Mcl_DmaSetChannelPriority:
.Llo49:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr		# nChannel=r0
	stw		r0,20(r1)		# nChannel=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# nChannel=r0 nChannel=r3
.Llo50:
	mr		r5,r4		# nPriority=r5 nPriority=r4
	.d2prologue_end
#                                                 VAR(Mcl_DmaPriorityType, AUTOMATIC) nPriority)
# {
# #if (MCL_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#     if((Std_ReturnType)E_OK == Mcl_ValidateChannelConfigCall(nChannel, MCL_SET_PRI_ID_U8))
#     {
# #endif /* (MCL_VALIDATE_CALL_AND_CHANNEL == STD_ON */
# 
#         /* Call IPW set channel priority function*/    
#         Mcl_IPW_DmaSetChannelPriority(Mcl_pConfig->pMclDmaConfig->pMclDmaHwIpsConfig->pDma_Config, nChannel, nPriority);
	.d2line		1205
.Llo51:
	lis		r3,Mcl_pConfig@ha
	lwz		r3,Mcl_pConfig@l(r3)
	lwz		r3,0(r3)
	lwz		r3,8(r3)
	lwz		r3,0(r3)
	rlwinm		r4,r0,0,24,31		# nChannel=r0
.Llo53:
	rlwinm		r5,r5,0,24,31		# nPriority=r5 nPriority=r5
	bl		Mcl_IPW_DmaSetChannelPriority
#         
# #if (MCL_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#     }
#     MCL_ENDVALIDATECHANNELCONFIGCALL(nChannel);
# #endif /* (MCL_VALIDATE_CALL_AND_CHANNEL == STD_ON */       
# } 
	.d2line		1211
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
.L602:
	.type		Mcl_DmaSetChannelPriority,@function
	.size		Mcl_DmaSetChannelPriority,.-Mcl_DmaSetChannelPriority
# Number of nodes = 15

# Allocations for Mcl_DmaSetChannelPriority
#	?a4		nChannel
#	?a5		nPriority
# FUNC(void, MCL_CODE) Mcl_DmaStartChannel( VAR(Mcl_ChannelType, AUTOMATIC) nChannel)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1229,22
#$$ld
.L609:

#$$bf	Mcl_DmaStartChannel,interprocedural,rasave,nostackparams
	.globl		Mcl_DmaStartChannel
	.d2_cfa_start __cie
Mcl_DmaStartChannel:
.Llo54:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r4,r3		# nChannel=r4 nChannel=r3
	.d2prologue_end
# {
# #if (MCL_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#     if((Std_ReturnType)E_OK == Mcl_ValidateChannelConfigCall(nChannel, MCL_START_CH_ID_U8))
#     {
# #endif /* (MCL_VALIDATE_CALL_AND_CHANNEL == STD_ON */
# 
#         /* Call IPW start channel function*/
#         Mcl_IPW_DmaStartChannel(Mcl_pConfig->pMclDmaConfig->pMclDmaHwIpsConfig->pDma_Config, nChannel);
	.d2line		1237
	lis		r3,Mcl_pConfig@ha
.Llo55:
	lwz		r3,Mcl_pConfig@l(r3)
	lwz		r3,0(r3)
	lwz		r3,8(r3)
	lwz		r3,0(r3)
.Llo56:
	rlwinm		r4,r4,0,24,31		# nChannel=r4 nChannel=r4
.Llo57:
	bl		Mcl_IPW_DmaStartChannel
#         
# #if (MCL_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#     }
#     MCL_ENDVALIDATECHANNELCONFIGCALL(nChannel);
# #endif /* (MCL_VALIDATE_CALL_AND_CHANNEL == STD_ON */
# } 
	.d2line		1243
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
.L610:
	.type		Mcl_DmaStartChannel,@function
	.size		Mcl_DmaStartChannel,.-Mcl_DmaStartChannel
# Number of nodes = 12

# Allocations for Mcl_DmaStartChannel
#	?a4		nChannel
# FUNC(boolean, MCL_CODE) Mcl_DmaIsTransferCompleted( VAR(Mcl_ChannelType, AUTOMATIC) nChannel)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1261,25
#$$ld
.L615:

#$$bf	Mcl_DmaIsTransferCompleted,interprocedural,rasave,nostackparams
	.globl		Mcl_DmaIsTransferCompleted
	.d2_cfa_start __cie
Mcl_DmaIsTransferCompleted:
.Llo58:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr		# bCompleted=r0
.Llo62:
	stw		r0,20(r1)		# bCompleted=r0
	.d2_cfa_offset    108,-1
	mr		r4,r3		# nChannel=r4 nChannel=r3
	.d2prologue_end
# {
#     VAR(boolean, AUTOMATIC) bCompleted = (boolean)FALSE;
	.d2line		1263
	diab.li		r0,0		# bCompleted=r0
# #if (MCL_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#     if((Std_ReturnType)E_OK == Mcl_ValidateChannelConfigCall(nChannel, MCL_TRANSF_COMPL_ID_U8))
#     {
# #endif /* (MCL_VALIDATE_CALL_AND_CHANNEL == STD_ON */
#     
#         bCompleted = Mcl_IPW_DmaIsTransferCompleted(Mcl_pConfig->pMclDmaConfig->pMclDmaHwIpsConfig->pDma_Config, nChannel);
	.d2line		1269
.Llo63:
	lis		r3,Mcl_pConfig@ha		# bCompleted=r3
.Llo59:
	lwz		r3,Mcl_pConfig@l(r3)		# bCompleted=r3 bCompleted=r3
	lwz		r3,0(r3)		# bCompleted=r3 bCompleted=r3
	lwz		r3,8(r3)		# bCompleted=r3 bCompleted=r3
	lwz		r3,0(r3)		# bCompleted=r3 bCompleted=r3
.Llo60:
	rlwinm		r4,r4,0,24,31		# nChannel=r4 nChannel=r4
.Llo61:
	bl		Mcl_IPW_DmaIsTransferCompleted
#         
# #if (MCL_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#     }
#     MCL_ENDVALIDATECHANNELCONFIGCALL(nChannel);
# #endif /* (MCL_VALIDATE_CALL_AND_CHANNEL == STD_ON */
#     
#     return (bCompleted);
	.d2line		1276
.Llo64:
	rlwinm		r3,r3,0,24,31		# bCompleted=r3 bCompleted=r3
# 
# } 
	.d2line		1278
	.d2epilogue_begin
.Llo65:
	lwz		r0,20(r1)		# bCompleted=r0
	mtspr		lr,r0		# bCompleted=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L616:
	.type		Mcl_DmaIsTransferCompleted,@function
	.size		Mcl_DmaIsTransferCompleted,.-Mcl_DmaIsTransferCompleted
# Number of nodes = 19

# Allocations for Mcl_DmaIsTransferCompleted
#	?a4		nChannel
#	?a5		bCompleted
# FUNC(boolean, MCL_CODE) Mcl_DmaIsTransferActive( VAR(Mcl_ChannelType, AUTOMATIC) nChannel)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1296,25
#$$ld
.L624:

#$$bf	Mcl_DmaIsTransferActive,interprocedural,rasave,nostackparams
	.globl		Mcl_DmaIsTransferActive
	.d2_cfa_start __cie
Mcl_DmaIsTransferActive:
.Llo66:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr		# bActive=r0
.Llo70:
	stw		r0,20(r1)		# bActive=r0
	.d2_cfa_offset    108,-1
	mr		r4,r3		# nChannel=r4 nChannel=r3
	.d2prologue_end
# {
#     VAR(boolean, AUTOMATIC) bActive = (boolean)FALSE;
	.d2line		1298
	diab.li		r0,0		# bActive=r0
#     
# #if (MCL_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#     if((Std_ReturnType)E_OK == Mcl_ValidateChannelConfigCall(nChannel, MCL_TRANSF_ACTIVE_ID_U8))
#     {
# #endif /* (MCL_VALIDATE_CALL_AND_CHANNEL == STD_ON */   
#  
#         bActive = Mcl_IPW_DmaIsTransferActive(Mcl_pConfig->pMclDmaConfig->pMclDmaHwIpsConfig->pDma_Config, nChannel);
	.d2line		1305
.Llo71:
	lis		r3,Mcl_pConfig@ha		# bActive=r3
.Llo67:
	lwz		r3,Mcl_pConfig@l(r3)		# bActive=r3 bActive=r3
	lwz		r3,0(r3)		# bActive=r3 bActive=r3
	lwz		r3,8(r3)		# bActive=r3 bActive=r3
	lwz		r3,0(r3)		# bActive=r3 bActive=r3
.Llo68:
	rlwinm		r4,r4,0,24,31		# nChannel=r4 nChannel=r4
.Llo69:
	bl		Mcl_IPW_DmaIsTransferActive
#     
# #if (MCL_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#     }
#     MCL_ENDVALIDATECHANNELCONFIGCALL(nChannel);
# #endif /* (MCL_VALIDATE_CALL_AND_CHANNEL == STD_ON */   
#  
#     return (bActive);
	.d2line		1312
.Llo72:
	rlwinm		r3,r3,0,24,31		# bActive=r3 bActive=r3
# 
# } 
	.d2line		1314
	.d2epilogue_begin
.Llo73:
	lwz		r0,20(r1)		# bActive=r0
	mtspr		lr,r0		# bActive=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L625:
	.type		Mcl_DmaIsTransferActive,@function
	.size		Mcl_DmaIsTransferActive,.-Mcl_DmaIsTransferActive
# Number of nodes = 19

# Allocations for Mcl_DmaIsTransferActive
#	?a4		nChannel
#	?a5		bActive
# FUNC(void, MCL_CODE) Mcl_DmaEnableNotification
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1351,22
#$$ld
.L632:

#$$bf	Mcl_DmaEnableNotification,interprocedural,rasave,nostackparams
	.globl		Mcl_DmaEnableNotification
	.d2_cfa_start __cie
Mcl_DmaEnableNotification:
.Llo74:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr		# ChannelNumber=r0
	stw		r0,20(r1)		# ChannelNumber=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# ChannelNumber=r0 ChannelNumber=r3
.Llo75:
	mr		r5,r4		# Notification=r5 Notification=r4
	.d2prologue_end
# (
#     VAR(Mcl_ChannelType,          AUTOMATIC)     ChannelNumber,
#     VAR(Mcl_DmaTransferNotifType, AUTOMATIC)     Notification
# )
# {
# #if (MCL_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#     if((Std_ReturnType)E_OK == Mcl_ValidateChannelConfigCall(ChannelNumber, MCL_ENABLENOTIFICATION_ID_U8))
#     {
# #endif /* MCL_VALIDATE_CALL_AND_CHANNEL */
# 
# #if ((MCL_VALIDATE_PARAMS == STD_ON) && (MCL_DMA_NOTIFICATION_SUPPORTED == STD_ON))
#         if((Std_ReturnType)E_OK == Mcl_ValidateParamNotification((*(Mcl_pConfig->pMclDmaConfig->pMclDmaChannelsConfig))[ChannelNumber].pfDmaChannelNotification))
#         {
# #endif /* (MCL_VALIDATE_PARAMS == STD_ON && MCL_DMA_NOTIFICATION_SUPPORTED == STD_ON) */
# 
#             /* All validations passed. Here starts the actual
#             functional code of the function */
#             Mcl_IPW_EnableNotification(Mcl_pConfig->pMclDmaConfig->pMclDmaHwIpsConfig->pDma_Config,
	.d2line		1369
.Llo76:
	lis		r3,Mcl_pConfig@ha
	lwz		r3,Mcl_pConfig@l(r3)
	lwz		r3,0(r3)
	lwz		r3,8(r3)
	lwz		r3,0(r3)
	rlwinm		r4,r0,0,24,31		# ChannelNumber=r0
.Llo78:
	mr		r5,r5		# Notification=r5 Notification=r5
	bl		Mcl_IPW_EnableNotification
#                                         ChannelNumber,
#                                        Notification);
# #if ((MCL_VALIDATE_PARAMS == STD_ON) && (MCL_DMA_NOTIFICATION_SUPPORTED == STD_ON))
#         }
# #endif /* (MCL_VALIDATE_PARAMS == STD_ON && MCL_DMA_NOTIFICATION_SUPPORTED == STD_ON) */
#         
# 
# #if (MCL_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#     }
#     MCL_ENDVALIDATECHANNELCONFIGCALL(ChannelNumber);   
# #endif /* MCL_VALIDATE_CALL_AND_CHANNEL */  
# }
	.d2line		1381
	.d2epilogue_begin
.Llo77:
	lwz		r0,20(r1)		# ChannelNumber=r0
	mtspr		lr,r0		# ChannelNumber=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L633:
	.type		Mcl_DmaEnableNotification,@function
	.size		Mcl_DmaEnableNotification,.-Mcl_DmaEnableNotification
# Number of nodes = 14

# Allocations for Mcl_DmaEnableNotification
#	?a4		ChannelNumber
#	?a5		Notification
# FUNC(void, MCL_CODE) Mcl_DmaDisableNotification(VAR(Mcl_ChannelType,AUTOMATIC) ChannelNumber)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1416,22
#$$ld
.L641:

#$$bf	Mcl_DmaDisableNotification,interprocedural,rasave,nostackparams
	.globl		Mcl_DmaDisableNotification
	.d2_cfa_start __cie
Mcl_DmaDisableNotification:
.Llo79:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r4,r3		# ChannelNumber=r4 ChannelNumber=r3
	.d2prologue_end
# {
# #if (MCL_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#     if((Std_ReturnType)E_OK == Mcl_ValidateChannelConfigCall(ChannelNumber, MCL_DISABLENOTIFICATION_ID_U8))
#     {
# #endif /* MCL_VALIDATE_CALL_AND_CHANNEL */
# 
#             /* All validations passed. Here starts the actual
#             functional code of the function */
#             Mcl_IPW_DisableNotification(Mcl_pConfig->pMclDmaConfig->pMclDmaHwIpsConfig->pDma_Config,
	.d2line		1425
	lis		r3,Mcl_pConfig@ha
.Llo80:
	lwz		r3,Mcl_pConfig@l(r3)
	lwz		r3,0(r3)
	lwz		r3,8(r3)
	lwz		r3,0(r3)
.Llo81:
	rlwinm		r4,r4,0,24,31		# ChannelNumber=r4 ChannelNumber=r4
.Llo82:
	bl		Mcl_IPW_DisableNotification
#                                         ChannelNumber);
# 
# #if (MCL_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#     }
#     MCL_ENDVALIDATECHANNELCONFIGCALL(ChannelNumber);   
# #endif /* MCL_VALIDATE_CALL_AND_CHANNEL */  
# }
	.d2line		1432
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
.L642:
	.type		Mcl_DmaDisableNotification,@function
	.size		Mcl_DmaDisableNotification,.-Mcl_DmaDisableNotification
# Number of nodes = 12

# Allocations for Mcl_DmaDisableNotification
#	?a4		ChannelNumber
# FUNC(void, MCL_CODE) Mcl_DmaAcknowledgeInterrupt(VAR(Mcl_ChannelType,AUTOMATIC) ChannelNumber)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1467,22
#$$ld
.L647:

#$$bf	Mcl_DmaAcknowledgeInterrupt,interprocedural,rasave,nostackparams
	.globl		Mcl_DmaAcknowledgeInterrupt
	.d2_cfa_start __cie
Mcl_DmaAcknowledgeInterrupt:
.Llo83:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r4,r3		# ChannelNumber=r4 ChannelNumber=r3
	.d2prologue_end
# {
# #if (MCL_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#     if((Std_ReturnType)E_OK == Mcl_ValidateChannelConfigCall(ChannelNumber, MCL_ACKNOWLEDGEINTERRUPT_ID_U8))
#     {
# #endif /* MCL_VALIDATE_CALL_AND_CHANNEL */
# 
#             /* All validations passed. Here starts the actual
#             functional code of the function */
#             Mcl_IPW_DmaAcknowledgeInterrupt(Mcl_pConfig->pMclDmaConfig->pMclDmaHwIpsConfig->pDma_Config,
	.d2line		1476
	lis		r3,Mcl_pConfig@ha
.Llo84:
	lwz		r3,Mcl_pConfig@l(r3)
	lwz		r3,0(r3)
	lwz		r3,8(r3)
	lwz		r3,0(r3)
.Llo85:
	rlwinm		r4,r4,0,24,31		# ChannelNumber=r4 ChannelNumber=r4
.Llo86:
	bl		Mcl_IPW_DmaAcknowledgeInterrupt
#                                             ChannelNumber);
# 
# #if (MCL_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#     }
#     MCL_ENDVALIDATECHANNELCONFIGCALL(ChannelNumber);   
# #endif /* MCL_VALIDATE_CALL_AND_CHANNEL */  
# }
	.d2line		1483
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
.L648:
	.type		Mcl_DmaAcknowledgeInterrupt,@function
	.size		Mcl_DmaAcknowledgeInterrupt,.-Mcl_DmaAcknowledgeInterrupt
# Number of nodes = 12

# Allocations for Mcl_DmaAcknowledgeInterrupt
#	?a4		ChannelNumber
# FUNC(void, MCL_CODE) Mcl_Notification
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1526,22
#$$ld
.L653:

#$$bf	Mcl_Notification,interprocedural,rasave,nostackparams
	.globl		Mcl_Notification
	.d2_cfa_start __cie
Mcl_Notification:
.Llo87:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r0,r3		# Channel=r0 Channel=r3
	.d2prologue_end
# (
#     VAR(Mcl_ChannelType, AUTOMATIC) Channel
# )
# {
#     VAR(uint8,          AUTOMATIC) u8LogicChannel;
#     VAR(Mcl_NotifyType, AUTOMATIC) pfNotify;
#     
#     /* Check if the driver is initialized */
#     if(NULL_PTR != Mcl_pConfig)    
	.d2line		1535
.Llo91:
	lis		r3,Mcl_pConfig@ha
.Llo88:
	lwz		r3,Mcl_pConfig@l(r3)
	se_cmpi		r3,0
	bc		1,2,.L454	# eq
#     {
#         u8LogicChannel = Mcl_pConfig->pMclDmaConfig->MclDmaHwToLogicChannelMap[Channel];
	.d2line		1537
.Llo89:
	lis		r3,Mcl_pConfig@ha
	lwz		r3,Mcl_pConfig@l(r3)
	lwz		r3,0(r3)
	rlwinm		r0,r0,0,24,31		# Channel=r0 Channel=r0
	se_add		r3,r0		# Channel=r0
	lbz		r0,12(r3)		# Channel=r0
	mr		r0,r0		# u8LogicChannel=r0 u8LogicChannel=r0
#         /* Check that there is a logic channel associated with the Hw one */
#         if (0xFFU != u8LogicChannel) 
	.d2line		1539
	rlwinm		r3,r0,0,24,31		# u8LogicChannel=r0
	cmpi		0,0,r3,255
	bc		1,2,.L454	# eq
#         {
#             pfNotify = (*(Mcl_pConfig->pMclDmaConfig->pMclDmaChannelsConfig))[u8LogicChannel].pfDmaChannelNotification;
	.d2line		1541
	lis		r3,Mcl_pConfig@ha
	lwz		r3,Mcl_pConfig@l(r3)
	lwz		r3,0(r3)
	lwz		r3,4(r3)
	rlwinm		r0,r0,3,21,28		# u8LogicChannel=r0 u8LogicChannel=r0
	se_add		r3,r0		# u8LogicChannel=r0
	lwz		r0,4(r3)		# u8LogicChannel=r0
	.d2line		1544
	mr.		r0,r0		# pfNotify=?a6 pfNotify=?a11
#             /* Check that a notification is defined for the associated 
#             logic channel */
#             if(NULL_PTR != pfNotify)
	bc		1,2,.L454	# eq
#             {
#                 pfNotify();   
	.d2line		1546
	mtspr		ctr,r0		# pfNotify=ctr pfNotify=r0
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x0 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
.L454:
#             }
# #if (MCL_REPORT_UNEXPECTED_ISR == STD_ON)
#             else
#             {
#                 /* Associated logic channel has no notification handler defined */
#                 Mcl_ReportUnexpectedIsrError();
#             }
# #endif /* (MCL_REPORT_UNEXPECTED_ISR == STD_ON) */
#         }
# #if (MCL_REPORT_UNEXPECTED_ISR == STD_ON)
#         else
#         {
#             /* Hw channel has no associated logic channel */
#             Mcl_ReportUnexpectedIsrError();
#         }
# #endif /* (MCL_REPORT_UNEXPECTED_ISR == STD_ON) */
#     }
# }
	.d2line		1564
	.d2epilogue_begin
.Llo90:
	lwz		r0,20(r1)		# u8LogicChannel=r0
	mtspr		lr,r0		# u8LogicChannel=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L654:
	.type		Mcl_Notification,@function
	.size		Mcl_Notification,.-Mcl_Notification
# Number of nodes = 38

# Allocations for Mcl_Notification
#	?a4		Channel
#	?a5		u8LogicChannel
#	?a6		pfNotify
# FUNC(void, MCL_CODE) Mcl_ErrorNotification(VAR(Mcl_DmaInstanceType, AUTOMATIC) DmaHwInstance, VAR(Mcl_DmaChannelErrorStatusType, AUTOMATIC) Error)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1580,22
#$$ld
.L667:

#$$bf	Mcl_ErrorNotification,interprocedural,rasave,nostackparams
	.globl		Mcl_ErrorNotification
	.d2_cfa_start __cie
Mcl_ErrorNotification:
.Llo92:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
.Llo97:
	stw		r0,20(r1)		# pfNotify=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# DmaHwInstance=r0 DmaHwInstance=r3
.Llo98:
	mr		r4,r4		# Error=r4 Error=r4
	.d2prologue_end
# {
#     VAR(Mcl_DmaErrNotifyType, AUTOMATIC) pfNotify = (*(Mcl_pConfig->pMclDmaConfig->pMclDmaHwIpsConfig->pDma_Config->pDmaConfigInstance))[DmaHwInstance].pfDmaInstanceErrNotif;
	.d2line		1582
	rlwinm		r0,r0,0,24,31		# DmaHwInstance=r0 DmaHwInstance=r0
.Llo93:
	lis		r3,Mcl_pConfig@ha
.Llo94:
	lwz		r3,Mcl_pConfig@l(r3)
	lwz		r3,0(r3)
	lwz		r3,8(r3)
	lwz		r3,0(r3)
	lwz		r5,4(r3)
	rlwinm		r3,r0,4,0,27		# DmaHwInstance=r0
	se_slwi		r0,2		# DmaHwInstance=r0 DmaHwInstance=r0
	subf		r0,r0,r3		# DmaHwInstance=r0 DmaHwInstance=r0
	se_add		r5,r0		# DmaHwInstance=r0
	lwz		r0,8(r5)		# DmaHwInstance=r0
	.d2line		1584
.Llo99:
	mr.		r0,r0		# pfNotify=?a7 pfNotify=?a15
# 
#     if (NULL_PTR != pfNotify)
.Llo95:
	bc		1,2,.L459	# eq
#     {
#         /** call user function */
#         pfNotify(Error);
	.d2line		1587
	mtspr		ctr,r0		# pfNotify=ctr pfNotify=r0
	mr		r3,r4		# Error=r3 Error=r4
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x8 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
.L459:
#     }
# 
# }
	.d2line		1590
	.d2epilogue_begin
.Llo96:
	lwz		r0,20(r1)		# pfNotify=r0
	mtspr		lr,r0		# pfNotify=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L668:
	.type		Mcl_ErrorNotification,@function
	.size		Mcl_ErrorNotification,.-Mcl_ErrorNotification
# Number of nodes = 27

# Allocations for Mcl_ErrorNotification
#	?a4		DmaHwInstance
#	?a5		Error
#	?a6		$$107
#	?a7		pfNotify
# FUNC(Mcl_DmaTcdType, MCL_CODE) Mcl_DmaGetChannelTcdAddress(VAR(Mcl_ChannelType,AUTOMATIC) ChannelNumber)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1608,32
#$$ld
.L683:

#$$bf	Mcl_DmaGetChannelTcdAddress,interprocedural,rasave,nostackparams
	.globl		Mcl_DmaGetChannelTcdAddress
	.d2_cfa_start __cie
Mcl_DmaGetChannelTcdAddress:
.Llo100:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr		# returnValue=r0
.Llo104:
	stw		r0,20(r1)		# returnValue=r0
	.d2_cfa_offset    108,-1
	mr		r4,r3		# ChannelNumber=r4 ChannelNumber=r3
	.d2prologue_end
# {
# 
#     VAR(Mcl_DmaTcdType,AUTOMATIC) returnValue = 0U;
	.d2line		1611
	diab.li		r0,0		# returnValue=r0
#     
# #if (MCL_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#     if((Std_ReturnType)E_OK == Mcl_ValidateChannelConfigCall(ChannelNumber, MCL_DMAGETCHANNELTCDADDRESS_ID_U8))
#     {
# #endif /* MCL_VALIDATE_CALL_AND_CHANNEL */
# 
#             /* All validations passed. Here starts the actual
#             functional code of the function */
#             returnValue = Mcl_IPW_DmaGetChannelTcdAddress(Mcl_pConfig->pMclDmaConfig->pMclDmaHwIpsConfig->pDma_Config,
	.d2line		1620
.Llo105:
	lis		r3,Mcl_pConfig@ha
.Llo101:
	lwz		r3,Mcl_pConfig@l(r3)
	lwz		r3,0(r3)
	lwz		r3,8(r3)
	lwz		r3,0(r3)
.Llo102:
	rlwinm		r4,r4,0,24,31		# ChannelNumber=r4 ChannelNumber=r4
.Llo103:
	bl		Mcl_IPW_DmaGetChannelTcdAddress
#                                         ChannelNumber);
# 
# #if (MCL_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#     }
#     MCL_ENDVALIDATECHANNELCONFIGCALL(ChannelNumber);   
# #endif /* MCL_VALIDATE_CALL_AND_CHANNEL */     
# 
#     return returnValue;
	.d2line		1628
.Llo106:
	mr		r4,r3		# returnValue=r4 returnValue=r3
# } 
	.d2line		1629
	.d2epilogue_begin
	lwz		r0,20(r1)		# returnValue=r0
	mtspr		lr,r0		# returnValue=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo107:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L684:
	.type		Mcl_DmaGetChannelTcdAddress,@function
	.size		Mcl_DmaGetChannelTcdAddress,.-Mcl_DmaGetChannelTcdAddress
# Number of nodes = 19

# Allocations for Mcl_DmaGetChannelTcdAddress
#	?a4		ChannelNumber
#	?a5		returnValue
# FUNC(void, MCL_CODE) Mcl_DmaTcdSetSaddr( P2VAR(Mcl_DmaTcdType, AUTOMATIC, MCL_APPL_DATA) pTcdAddress,
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1648,22
#$$ld
.L691:

#$$bf	Mcl_DmaTcdSetSaddr,interprocedural,rasave,nostackparams
	.globl		Mcl_DmaTcdSetSaddr
	.d2_cfa_start __cie
Mcl_DmaTcdSetSaddr:
.Llo108:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
#                                          VAR(uint32, AUTOMATIC) u32Saddr)
# {
# #if (MCL_DEV_ERROR_DETECT == STD_ON)
#     if (NULL_PTR == pTcdAddress)
#     {
#         (void)Det_ReportError((uint16)MCL_MODULE_ID, 0U, MCL_TCD_SET_SADDR_ID_U8, MCL_E_PARAM_POINTER_U8);
#     }
#     else
#     {
# #endif    
#         /* Call the IPW function for setting the SADDR */
#         Mcl_IPW_DmaSetSaddr(pTcdAddress, u32Saddr);
	.d2line		1660
	mr		r0,r3		# pTcdAddress=r0 pTcdAddress=r3
	mr		r0,r4		# u32Saddr=r0 u32Saddr=r4
	bl		Mcl_IPW_DmaSetSaddr
# #if (MCL_DEV_ERROR_DETECT == STD_ON)        
#     }
# #endif    
# }                                     
	.d2line		1664
	.d2epilogue_begin
.Llo109:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L692:
	.type		Mcl_DmaTcdSetSaddr,@function
	.size		Mcl_DmaTcdSetSaddr,.-Mcl_DmaTcdSetSaddr
# Number of nodes = 6

# Allocations for Mcl_DmaTcdSetSaddr
#	?a4		pTcdAddress
#	?a5		u32Saddr
# FUNC(void, MCL_CODE) Mcl_DmaTcdSetSoff( P2VAR(Mcl_DmaTcdType, AUTOMATIC, MCL_APPL_DATA) pTcdAddress,
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1682,22
#$$ld
.L698:

#$$bf	Mcl_DmaTcdSetSoff,interprocedural,rasave,nostackparams
	.globl		Mcl_DmaTcdSetSoff
	.d2_cfa_start __cie
Mcl_DmaTcdSetSoff:
.Llo110:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r4,r4		# s16Soff=r4 s16Soff=r4
	.d2prologue_end
#                                         VAR(sint16, AUTOMATIC) s16Soff)
# {
# #if (MCL_DEV_ERROR_DETECT == STD_ON)
#     if (NULL_PTR == pTcdAddress)
#     {
#         (void)Det_ReportError((uint16)MCL_MODULE_ID, 0U, MCL_TCD_SET_SOFF_ID_U8, MCL_E_PARAM_POINTER_U8);
#     }
#     else
#     {
# #endif    
#         /* Call the IPW function for setting the SOFF */
#         Mcl_IPW_DmaSetSoff(pTcdAddress, s16Soff);
	.d2line		1694
	extsh		r4,r4		# s16Soff=r4 s16Soff=r4
.Llo112:
	mr		r0,r3		# pTcdAddress=r0 pTcdAddress=r3
	bl		Mcl_IPW_DmaSetSoff
# #if (MCL_DEV_ERROR_DETECT == STD_ON)        
#     }
# #endif    
# }
	.d2line		1698
	.d2epilogue_begin
.Llo111:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L699:
	.type		Mcl_DmaTcdSetSoff,@function
	.size		Mcl_DmaTcdSetSoff,.-Mcl_DmaTcdSetSoff
# Number of nodes = 7

# Allocations for Mcl_DmaTcdSetSoff
#	?a4		pTcdAddress
#	?a5		s16Soff
# FUNC(void, MCL_CODE) Mcl_DmaTcdSetDlast( P2VAR(Mcl_DmaTcdType, AUTOMATIC, MCL_APPL_DATA) pTcdAddress,
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1717,22
#$$ld
.L707:

#$$bf	Mcl_DmaTcdSetDlast,interprocedural,rasave,nostackparams
	.globl		Mcl_DmaTcdSetDlast
	.d2_cfa_start __cie
Mcl_DmaTcdSetDlast:
.Llo113:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
#                                          VAR(sint32, AUTOMATIC) s32Dlast)
# {
# #if (MCL_DEV_ERROR_DETECT == STD_ON)
#     if (NULL_PTR == pTcdAddress)
#     {
#         (void)Det_ReportError((uint16)MCL_MODULE_ID, 0U, MCL_TCD_SET_DLAST_ID_U8, MCL_E_PARAM_POINTER_U8);
#     }
#     else
#     {
# #endif    
#         /* Call the IPW function for setting the DLAST */
#         Mcl_IPW_DmaSetDlast(pTcdAddress, s32Dlast);
	.d2line		1729
	mr		r0,r3		# pTcdAddress=r0 pTcdAddress=r3
	mr		r0,r4		# s32Dlast=r0 s32Dlast=r4
	bl		Mcl_IPW_DmaSetDlast
# #if (MCL_DEV_ERROR_DETECT == STD_ON)        
#     }
# #endif    
# }                                        
	.d2line		1733
	.d2epilogue_begin
.Llo114:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L708:
	.type		Mcl_DmaTcdSetDlast,@function
	.size		Mcl_DmaTcdSetDlast,.-Mcl_DmaTcdSetDlast
# Number of nodes = 6

# Allocations for Mcl_DmaTcdSetDlast
#	?a4		pTcdAddress
#	?a5		s32Dlast
# FUNC(void, MCL_CODE) Mcl_DmaTcdSetSga( P2VAR(Mcl_DmaTcdType, AUTOMATIC, MCL_APPL_DATA) pTcdAddress,
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1751,22
#$$ld
.L716:

#$$bf	Mcl_DmaTcdSetSga,interprocedural,rasave,nostackparams
	.globl		Mcl_DmaTcdSetSga
	.d2_cfa_start __cie
Mcl_DmaTcdSetSga:
.Llo115:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
#                                        VAR(uint32, AUTOMATIC) u32Sga)
# {
# #if (MCL_DEV_ERROR_DETECT == STD_ON)
#     if (NULL_PTR == pTcdAddress)
#     {
#         (void)Det_ReportError((uint16)MCL_MODULE_ID, 0U, MCL_TCD_SET_SGA_ID_U8, MCL_E_PARAM_POINTER_U8);
#     }
#     else
#     {
# #endif    
#         /* Call the IPW function for setting the SGA */
#         Mcl_IPW_DmaSetSga(pTcdAddress, u32Sga);
	.d2line		1763
	mr		r0,r3		# pTcdAddress=r0 pTcdAddress=r3
	mr		r0,r4		# u32Sga=r0 u32Sga=r4
	bl		Mcl_IPW_DmaSetSga
# #if (MCL_DEV_ERROR_DETECT == STD_ON)        
#     }
# #endif    
# } 
	.d2line		1767
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
.L717:
	.type		Mcl_DmaTcdSetSga,@function
	.size		Mcl_DmaTcdSetSga,.-Mcl_DmaTcdSetSga
# Number of nodes = 6

# Allocations for Mcl_DmaTcdSetSga
#	?a4		pTcdAddress
#	?a5		u32Sga
# FUNC(void, MCL_CODE) Mcl_DmaTcdSetDaddr( P2VAR(Mcl_DmaTcdType, AUTOMATIC, MCL_APPL_DATA) pTcdAddress,
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1785,22
#$$ld
.L723:

#$$bf	Mcl_DmaTcdSetDaddr,interprocedural,rasave,nostackparams
	.globl		Mcl_DmaTcdSetDaddr
	.d2_cfa_start __cie
Mcl_DmaTcdSetDaddr:
.Llo117:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
#                                          VAR(uint32, AUTOMATIC) u32Daddr)
# {
# #if (MCL_DEV_ERROR_DETECT == STD_ON)
#     if (NULL_PTR == pTcdAddress)
#     {
#         (void)Det_ReportError((uint16)MCL_MODULE_ID, 0U, MCL_TCD_SET_DADDR_ID_U8, MCL_E_PARAM_POINTER_U8);
#     }
#     else
#     {
# #endif    
#         /* Call the IPW function for setting the DADDR */
#         Mcl_IPW_DmaSetDaddr(pTcdAddress, u32Daddr);
	.d2line		1797
	mr		r0,r3		# pTcdAddress=r0 pTcdAddress=r3
	mr		r0,r4		# u32Daddr=r0 u32Daddr=r4
	bl		Mcl_IPW_DmaSetDaddr
# #if (MCL_DEV_ERROR_DETECT == STD_ON)        
#     }
# #endif    
# }                                     
	.d2line		1801
	.d2epilogue_begin
.Llo118:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L724:
	.type		Mcl_DmaTcdSetDaddr,@function
	.size		Mcl_DmaTcdSetDaddr,.-Mcl_DmaTcdSetDaddr
# Number of nodes = 6

# Allocations for Mcl_DmaTcdSetDaddr
#	?a4		pTcdAddress
#	?a5		u32Daddr
# FUNC(void, MCL_CODE) Mcl_DmaTcdSetDoff( P2VAR(Mcl_DmaTcdType, AUTOMATIC, MCL_APPL_DATA) pTcdAddress,
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1820,22
#$$ld
.L730:

#$$bf	Mcl_DmaTcdSetDoff,interprocedural,rasave,nostackparams
	.globl		Mcl_DmaTcdSetDoff
	.d2_cfa_start __cie
Mcl_DmaTcdSetDoff:
.Llo119:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r4,r4		# s16Doff=r4 s16Doff=r4
	.d2prologue_end
#                                         VAR(sint16, AUTOMATIC) s16Doff)
# {
# #if (MCL_DEV_ERROR_DETECT == STD_ON)
#     if (NULL_PTR == pTcdAddress)
#     {
#         (void)Det_ReportError((uint16)MCL_MODULE_ID, 0U, MCL_TCD_SET_DOFF_ID_U8, MCL_E_PARAM_POINTER_U8);
#     }
#     else
#     {
# #endif    
#         /* Call the IPW function for setting the DOFF */
#         Mcl_IPW_DmaSetDoff(pTcdAddress, s16Doff);
	.d2line		1832
	extsh		r4,r4		# s16Doff=r4 s16Doff=r4
.Llo121:
	mr		r0,r3		# pTcdAddress=r0 pTcdAddress=r3
	bl		Mcl_IPW_DmaSetDoff
# #if (MCL_DEV_ERROR_DETECT == STD_ON)        
#     }
# #endif    
# }                                     
	.d2line		1836
	.d2epilogue_begin
.Llo120:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L731:
	.type		Mcl_DmaTcdSetDoff,@function
	.size		Mcl_DmaTcdSetDoff,.-Mcl_DmaTcdSetDoff
# Number of nodes = 7

# Allocations for Mcl_DmaTcdSetDoff
#	?a4		pTcdAddress
#	?a5		s16Doff
# FUNC(void, MCL_CODE) Mcl_DmaTcdSetIterCount( P2VAR(Mcl_DmaTcdType, AUTOMATIC, MCL_APPL_DATA) pTcdAddress,
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1855,22
#$$ld
.L737:

#$$bf	Mcl_DmaTcdSetIterCount,interprocedural,rasave,nostackparams
	.globl		Mcl_DmaTcdSetIterCount
	.d2_cfa_start __cie
Mcl_DmaTcdSetIterCount:
.Llo122:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# pTcdAddress=r31 pTcdAddress=r3
.Llo123:
	mr		r30,r4		# u16Iter=r30 u16Iter=r4
	.d2prologue_end
#                                              VAR(uint16, AUTOMATIC) u16Iter)
# {
# #if (MCL_DEV_ERROR_DETECT == STD_ON)
#     if (NULL_PTR == pTcdAddress)
#     {
#         (void)Det_ReportError((uint16)MCL_MODULE_ID, 0U, MCL_TCD_SET_ITER_COUNT_ID_U8, MCL_E_PARAM_POINTER_U8);
#     }
#     else
#     {
# #endif    
#         /* Call the IPW function for setting the CITER */
#         Mcl_IPW_DmaSetCiter(pTcdAddress, u16Iter);
	.d2line		1867
.Llo124:
	rlwinm		r4,r4,0,16,31		# u16Iter=r4 u16Iter=r4
.Llo126:
	mr		r3,r31		# pTcdAddress=r3 pTcdAddress=r31
	bl		Mcl_IPW_DmaSetCiter
#         
#        /* Call the IPW function for setting the BITER with the same value as CITER*/
#         Mcl_IPW_DmaSetBiter(pTcdAddress, u16Iter);
	.d2line		1870
	rlwinm		r4,r30,0,16,31		# u16Iter=r4 u16Iter=r30
	mr		r3,r31		# pTcdAddress=r3 pTcdAddress=r31
	bl		Mcl_IPW_DmaSetBiter
# #if (MCL_DEV_ERROR_DETECT == STD_ON)        
#     }
# #endif     
# } 
	.d2line		1874
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo125:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L738:
	.type		Mcl_DmaTcdSetIterCount,@function
	.size		Mcl_DmaTcdSetIterCount,.-Mcl_DmaTcdSetIterCount
# Number of nodes = 14

# Allocations for Mcl_DmaTcdSetIterCount
#	?a4		pTcdAddress
#	?a5		u16Iter
# FUNC(void, MCL_CODE) Mcl_DmaTcdSetLinkAndIterCount( P2VAR(Mcl_DmaTcdType, AUTOMATIC, MCL_APPL_DATA) pTcdAddress,
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1895,22
#$$ld
.L746:

#$$bf	Mcl_DmaTcdSetLinkAndIterCount,interprocedural,rasave,nostackparams
	.globl		Mcl_DmaTcdSetLinkAndIterCount
	.d2_cfa_start __cie
Mcl_DmaTcdSetLinkAndIterCount:
.Llo127:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r0,r3		# pTcdAddress=r0 pTcdAddress=r3
.Llo128:
	mr		r4,r4		# LinkCh=r4 LinkCh=r4
.Llo129:
	mr		r6,r5		# u16Iter=r6 u16Iter=r5
	.d2prologue_end
#                                                     VAR(Mcl_ChannelType, AUTOMATIC) LinkCh,
#                                                     VAR(uint16, AUTOMATIC) u16Iter)
# {
# #if (MCL_DEV_ERROR_DETECT == STD_ON)
#     if (NULL_PTR == pTcdAddress)
#     {
#         (void)Det_ReportError((uint16)MCL_MODULE_ID, 0U, MCL_TCD_SET_LINK_ITER_COUNT_ID_U8, MCL_E_PARAM_POINTER_U8);
#     }
#     else
#     {
# #endif    
#         /* Call the IPW function for setting the ELINK, LINKCH, BITER and CITER */
#         Mcl_IPW_DmaSetLinkAndIterCount(Mcl_pConfig->pMclDmaConfig->pMclDmaHwIpsConfig->pDma_Config, pTcdAddress, LinkCh, u16Iter);
	.d2line		1908
	lis		r3,Mcl_pConfig@ha
	lwz		r3,Mcl_pConfig@l(r3)
	lwz		r3,0(r3)
	lwz		r3,8(r3)
	lwz		r3,0(r3)
	rlwinm		r5,r4,0,24,31		# LinkCh=r4
.Llo132:
	rlwinm		r6,r6,0,16,31		# u16Iter=r6 u16Iter=r6
	mr		r4,r0		# pTcdAddress=r4 pTcdAddress=r0
.Llo131:
	bl		Mcl_IPW_DmaSetLinkAndIterCount
# #if (MCL_DEV_ERROR_DETECT == STD_ON)        
#     }
# #endif     
# }                                                            
	.d2line		1912
	.d2epilogue_begin
.Llo130:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L747:
	.type		Mcl_DmaTcdSetLinkAndIterCount,@function
	.size		Mcl_DmaTcdSetLinkAndIterCount,.-Mcl_DmaTcdSetLinkAndIterCount
# Number of nodes = 17

# Allocations for Mcl_DmaTcdSetLinkAndIterCount
#	?a4		pTcdAddress
#	?a5		LinkCh
#	?a6		u16Iter
# FUNC(void, MCL_CODE) Mcl_DmaTcdSetSModuloAndSize( P2VAR(Mcl_DmaTcdType, AUTOMATIC, MCL_APPL_DATA) pTcdAddress,
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1932,22
#$$ld
.L754:

#$$bf	Mcl_DmaTcdSetSModuloAndSize,interprocedural,rasave,nostackparams
	.globl		Mcl_DmaTcdSetSModuloAndSize
	.d2_cfa_start __cie
Mcl_DmaTcdSetSModuloAndSize:
.Llo133:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
#                                                   VAR(uint8, AUTOMATIC) u8SModulo,
#                                                   VAR(Mcl_DmaSizeType, AUTOMATIC) SSize)
# {
# #if (MCL_DEV_ERROR_DETECT == STD_ON)
#     if (NULL_PTR == pTcdAddress)
#     {
#         (void)Det_ReportError((uint16)MCL_MODULE_ID, 0U, MCL_TCD_SET_SMOD_SIZE_ID_U8, MCL_E_PARAM_POINTER_U8);
#     }
#     else
#     {
# #endif /* MCL_DEV_ERROR_DETECT == STD_ON */     
#         /* Call the IPW function for setting the SMOD and SSIZE */
#         Mcl_IPW_DmaSetSModSize(pTcdAddress, u8SModulo, SSize);
	.d2line		1945
	rlwinm		r4,r4,0,24,31		# u8SModulo=r4 u8SModulo=r4
.Llo135:
	mr		r0,r3		# pTcdAddress=r0 pTcdAddress=r3
	mr		r0,r5		# SSize=r0 SSize=r5
	bl		Mcl_IPW_DmaSetSModSize
# #if (MCL_DEV_ERROR_DETECT == STD_ON)        
#     }
# #endif /* MCL_DEV_ERROR_DETECT == STD_ON */     
# }                                        
	.d2line		1949
	.d2epilogue_begin
.Llo134:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L755:
	.type		Mcl_DmaTcdSetSModuloAndSize,@function
	.size		Mcl_DmaTcdSetSModuloAndSize,.-Mcl_DmaTcdSetSModuloAndSize
# Number of nodes = 9

# Allocations for Mcl_DmaTcdSetSModuloAndSize
#	?a4		pTcdAddress
#	?a5		u8SModulo
#	?a6		SSize
# FUNC(void, MCL_CODE) Mcl_DmaTcdSetDModuloAndSize( P2VAR(Mcl_DmaTcdType, AUTOMATIC, MCL_APPL_DATA) pTcdAddress,
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1969,22
#$$ld
.L764:

#$$bf	Mcl_DmaTcdSetDModuloAndSize,interprocedural,rasave,nostackparams
	.globl		Mcl_DmaTcdSetDModuloAndSize
	.d2_cfa_start __cie
Mcl_DmaTcdSetDModuloAndSize:
.Llo136:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
#                                                   VAR(uint8, AUTOMATIC) u8DModulo,
#                                                   VAR(Mcl_DmaSizeType, AUTOMATIC) DSize)
# {
# #if (MCL_DEV_ERROR_DETECT == STD_ON)
#     if (NULL_PTR == pTcdAddress)
#     {
#         (void)Det_ReportError((uint16)MCL_MODULE_ID, 0U, MCL_TCD_SET_DMOD_SIZE_ID_U8, MCL_E_PARAM_POINTER_U8);
#     }
#     else
#     {
# #endif /* MCL_DEV_ERROR_DETECT == STD_ON */      
#         /* Call the IPW function for setting the DMOD and DSIZE */
#         Mcl_IPW_DmaSetDModSize(pTcdAddress, u8DModulo, DSize);
	.d2line		1982
	rlwinm		r4,r4,0,24,31		# u8DModulo=r4 u8DModulo=r4
.Llo138:
	mr		r0,r3		# pTcdAddress=r0 pTcdAddress=r3
	mr		r0,r5		# DSize=r0 DSize=r5
	bl		Mcl_IPW_DmaSetDModSize
# #if (MCL_DEV_ERROR_DETECT == STD_ON)        
#     }
# #endif /* MCL_DEV_ERROR_DETECT == STD_ON */      
# }
	.d2line		1986
	.d2epilogue_begin
.Llo137:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L765:
	.type		Mcl_DmaTcdSetDModuloAndSize,@function
	.size		Mcl_DmaTcdSetDModuloAndSize,.-Mcl_DmaTcdSetDModuloAndSize
# Number of nodes = 9

# Allocations for Mcl_DmaTcdSetDModuloAndSize
#	?a4		pTcdAddress
#	?a5		u8DModulo
#	?a6		DSize
# FUNC(void, MCL_CODE) Mcl_DmaTcdSetMinorLoop( P2VAR(Mcl_DmaTcdType, AUTOMATIC, MCL_APPL_DATA) pTcdAddress,
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         2011,22
#$$ld
.L772:

#$$bf	Mcl_DmaTcdSetMinorLoop,interprocedural,rasave,nostackparams
	.globl		Mcl_DmaTcdSetMinorLoop
	.d2_cfa_start __cie
Mcl_DmaTcdSetMinorLoop:
.Llo139:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# pTcdAddress=r3 pTcdAddress=r3
	mr		r4,r4		# bSmloe=r4 bSmloe=r4
	mr		r5,r5		# bDmloe=r5 bDmloe=r5
	mr		r6,r6		# s32Mloff=r6 s32Mloff=r6
	mr		r7,r7		# u32NBytes=r7 u32NBytes=r7
	.d2prologue_end
#                                              VAR(boolean, AUTOMATIC) bSmloe,
#                                              VAR(boolean, AUTOMATIC) bDmloe,
#                                              VAR(sint32, AUTOMATIC) s32Mloff,
#                                              VAR(uint32, AUTOMATIC) u32NBytes) 
# {
# #if (MCL_DEV_ERROR_DETECT == STD_ON)    
#     if (NULL_PTR == pTcdAddress)
#     {
#         (void)Det_ReportError((uint16)MCL_MODULE_ID, 0U, MCL_TCD_SET_MINOR_LOOP_ID_U8, MCL_E_PARAM_POINTER_U8);
#     }
#     else
#     {
# #endif /* MCL_DEV_ERROR_DETECT == STD_ON */    
#         if (((boolean)TRUE != bSmloe) && ((boolean)TRUE !=bDmloe))
	.d2line		2025
	rlwinm		r0,r4,0,24,31		# bSmloe=r4
	se_cmpi		r0,1
	bc		1,2,.L474	# eq
	rlwinm		r0,r5,0,24,31		# bDmloe=r5
	se_cmpi		r0,1
	bc		1,2,.L474	# eq
#         {
#             /* No offset enabled, call IPW function that sets Minor Byte Transfer Count */
#             Mcl_IPW_DmaSetMlnoNBytes(pTcdAddress, u32NBytes);
	.d2line		2028
.Llo143:
	mr		r3,r3		# pTcdAddress=r3 pTcdAddress=r3
.Llo140:
	mr		r4,r7		# u32NBytes=r4 u32NBytes=r7
	bl		Mcl_IPW_DmaSetMlnoNBytes
.Llo147:
	b		.L473
.L474:
#         }
#         else
#         {
#             /* Offset enabled, call IPW function that sets Smloe, Dmloe, Mloff and NBytes */
#             Mcl_IPW_DmaSetMloffen(pTcdAddress, bSmloe, bDmloe, s32Mloff, u32NBytes);
	.d2line		2033
.Llo144:
	rlwinm		r4,r4,0,24,31		# bSmloe=r4 bSmloe=r4
.Llo145:
	rlwinm		r5,r5,0,24,31		# bDmloe=r5 bDmloe=r5
.Llo141:
	mr		r3,r3		# pTcdAddress=r3 pTcdAddress=r3
.Llo142:
	mr		r6,r6		# s32Mloff=r6 s32Mloff=r6
.Llo146:
	mr		r7,r7		# u32NBytes=r7 u32NBytes=r7
.Llo148:
	bl		Mcl_IPW_DmaSetMloffen
.L473:
#         }
# #if (MCL_DEV_ERROR_DETECT == STD_ON)        
#     }
# #endif /* MCL_DEV_ERROR_DETECT == STD_ON */    
# }                                     
	.d2line		2038
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
.L773:
	.type		Mcl_DmaTcdSetMinorLoop,@function
	.size		Mcl_DmaTcdSetMinorLoop,.-Mcl_DmaTcdSetMinorLoop
# Number of nodes = 29

# Allocations for Mcl_DmaTcdSetMinorLoop
#	?a4		pTcdAddress
#	?a5		bSmloe
#	?a6		bDmloe
#	?a7		s32Mloff
#	?a8		u32NBytes
# FUNC(void, MCL_CODE) Mcl_DmaTcdSetSlast( P2VAR(Mcl_DmaTcdType, AUTOMATIC, MCL_APPL_DATA) pTcdAddress,
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         2056,22
#$$ld
.L782:

#$$bf	Mcl_DmaTcdSetSlast,interprocedural,rasave,nostackparams
	.globl		Mcl_DmaTcdSetSlast
	.d2_cfa_start __cie
Mcl_DmaTcdSetSlast:
.Llo149:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
#                                          VAR(sint32, AUTOMATIC) s32Slast)
# {
# #if (MCL_DEV_ERROR_DETECT == STD_ON)
#     if (NULL_PTR == pTcdAddress)
#     {
#         (void)Det_ReportError((uint16)MCL_MODULE_ID, 0U, MCL_TCD_SET_SLAST_ID_U8, MCL_E_PARAM_POINTER_U8);
#     }
#     else
#     {
# #endif /* MCL_DEV_ERROR_DETECT == STD_ON */      
#         /* Call the IPW function for setting the SLAST NBytes */
#         Mcl_IPW_DmaSetSlast(pTcdAddress, s32Slast);
	.d2line		2068
	mr		r0,r3		# pTcdAddress=r0 pTcdAddress=r3
	mr		r0,r4		# s32Slast=r0 s32Slast=r4
	bl		Mcl_IPW_DmaSetSlast
# #if (MCL_DEV_ERROR_DETECT == STD_ON)        
#     }
# #endif /* MCL_DEV_ERROR_DETECT == STD_ON */      
# }
	.d2line		2072
	.d2epilogue_begin
.Llo150:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L783:
	.type		Mcl_DmaTcdSetSlast,@function
	.size		Mcl_DmaTcdSetSlast,.-Mcl_DmaTcdSetSlast
# Number of nodes = 6

# Allocations for Mcl_DmaTcdSetSlast
#	?a4		pTcdAddress
#	?a5		s32Slast
# FUNC(void, MCL_CODE) Mcl_DmaTcdSetFlags( P2VAR(Mcl_DmaTcdType, AUTOMATIC, MCL_APPL_DATA) pTcdAddress,
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         2095,22
#$$ld
.L789:

#$$bf	Mcl_DmaTcdSetFlags,interprocedural,rasave,nostackparams
	.globl		Mcl_DmaTcdSetFlags
	.d2_cfa_start __cie
Mcl_DmaTcdSetFlags:
.Llo151:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
#                                          VAR(uint8, AUTOMATIC) u8Flags)
# {
# #if (MCL_DEV_ERROR_DETECT == STD_ON)
#     if (NULL_PTR == pTcdAddress)
#     {
#         (void)Det_ReportError((uint16)MCL_MODULE_ID, 0U, MCL_TCD_SET_FLAGS_ID_U8, MCL_E_PARAM_POINTER_U8);
#     }
#     else
#     {
# #endif /* MCL_DEV_ERROR_DETECT == STD_ON */     
#         /* Call the IPW function for setting the Flags in CSR */
#         Mcl_IPW_DmaSetFlags(pTcdAddress, u8Flags);
	.d2line		2107
	rlwinm		r4,r4,0,24,31		# u8Flags=r4 u8Flags=r4
.Llo153:
	mr		r0,r3		# pTcdAddress=r0 pTcdAddress=r3
	bl		Mcl_IPW_DmaSetFlags
# #if (MCL_DEV_ERROR_DETECT == STD_ON)        
#     }
# #endif /* MCL_DEV_ERROR_DETECT == STD_ON */    
# }
	.d2line		2111
	.d2epilogue_begin
.Llo152:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L790:
	.type		Mcl_DmaTcdSetFlags,@function
	.size		Mcl_DmaTcdSetFlags,.-Mcl_DmaTcdSetFlags
# Number of nodes = 7

# Allocations for Mcl_DmaTcdSetFlags
#	?a4		pTcdAddress
#	?a5		u8Flags
# FUNC(uint8, MCL_CODE) Mcl_DmaTcdGetFlags( P2VAR(Mcl_DmaTcdType, AUTOMATIC, MCL_APPL_DATA) pTcdAddress)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         2133,23
#$$ld
.L796:

#$$bf	Mcl_DmaTcdGetFlags,interprocedural,rasave,nostackparams
	.globl		Mcl_DmaTcdGetFlags
	.d2_cfa_start __cie
Mcl_DmaTcdGetFlags:
.Llo154:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr		# u8returnValue=r0
.Llo156:
	stw		r0,20(r1)		# u8returnValue=r0
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     VAR(uint8, AUTOMATIC) u8returnValue = 0U;
	.d2line		2135
	diab.li		r0,0		# u8returnValue=r0
# 
# #if (MCL_DEV_ERROR_DETECT == STD_ON)    
#     if (NULL_PTR == pTcdAddress)
#     {
#         (void)Det_ReportError((uint16)MCL_MODULE_ID, 0U, MCL_TCD_GET_FLAGS_ID_U8, MCL_E_PARAM_POINTER_U8);
#     }
#     else
#     {
# #endif /* MCL_DEV_ERROR_DETECT == STD_ON */    
#         /* Call the IPW function for getting the Flags in CSR */
#         u8returnValue = Mcl_IPW_DmaGetFlags(pTcdAddress);
	.d2line		2146
.Llo157:
	mr		r0,r3		# pTcdAddress=r0 pTcdAddress=r3
	bl		Mcl_IPW_DmaGetFlags
# #if (MCL_DEV_ERROR_DETECT == STD_ON)        
#     }
# #endif /* MCL_DEV_ERROR_DETECT == STD_ON */ 
#     return u8returnValue;
	.d2line		2150
.Llo155:
	rlwinm		r3,r3,0,24,31		# u8returnValue=r3 u8returnValue=r3
# }
	.d2line		2151
	.d2epilogue_begin
.Llo158:
	lwz		r0,20(r1)		# u8returnValue=r0
	mtspr		lr,r0		# u8returnValue=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L797:
	.type		Mcl_DmaTcdGetFlags,@function
	.size		Mcl_DmaTcdGetFlags,.-Mcl_DmaTcdGetFlags
# Number of nodes = 11

# Allocations for Mcl_DmaTcdGetFlags
#	?a4		pTcdAddress
#	?a5		u8returnValue
# FUNC(void, MCL_CODE) Mcl_DmaTcdClearIntMaj( P2VAR(Mcl_DmaTcdType, AUTOMATIC, MCL_APPL_DATA) pTcdAddress)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         2169,22
#$$ld
.L804:

#$$bf	Mcl_DmaTcdClearIntMaj,interprocedural,rasave,nostackparams
	.globl		Mcl_DmaTcdClearIntMaj
	.d2_cfa_start __cie
Mcl_DmaTcdClearIntMaj:
.Llo159:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
# 
# #if (MCL_DEV_ERROR_DETECT == STD_ON)
#     if (NULL_PTR == pTcdAddress)
#     {
#         (void)Det_ReportError((uint16)MCL_MODULE_ID, 0U, MCL_TCD_CLEAR_INT_MAJ_ID_U8, MCL_E_PARAM_POINTER_U8);
#     }
#     else
#     {
# #endif /* MCL_DEV_ERROR_DETECT == STD_ON */    
#         /* Call the IPW function for disabling the interupts  when major iteration count completes */
#         Mcl_IPW_DmaClearIntMaj(pTcdAddress);
	.d2line		2181
	mr		r0,r3		# pTcdAddress=r0 pTcdAddress=r3
	bl		Mcl_IPW_DmaClearIntMaj
# #if (MCL_DEV_ERROR_DETECT == STD_ON)        
#     }
# #endif /* MCL_DEV_ERROR_DETECT == STD_ON */    
# }
	.d2line		2185
	.d2epilogue_begin
.Llo160:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L805:
	.type		Mcl_DmaTcdClearIntMaj,@function
	.size		Mcl_DmaTcdClearIntMaj,.-Mcl_DmaTcdClearIntMaj
# Number of nodes = 4

# Allocations for Mcl_DmaTcdClearIntMaj
#	?a4		pTcdAddress
# FUNC(void, MCL_CODE) Mcl_DmaTcdSetIntMaj( P2VAR(Mcl_DmaTcdType, AUTOMATIC, MCL_APPL_DATA) pTcdAddress)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         2203,22
#$$ld
.L810:

#$$bf	Mcl_DmaTcdSetIntMaj,interprocedural,rasave,nostackparams
	.globl		Mcl_DmaTcdSetIntMaj
	.d2_cfa_start __cie
Mcl_DmaTcdSetIntMaj:
.Llo161:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
# 
# #if (MCL_DEV_ERROR_DETECT == STD_ON)
#     if (NULL_PTR == pTcdAddress)
#     {
#         (void)Det_ReportError((uint16)MCL_MODULE_ID, 0U, MCL_TCD_SET_INT_MAJ_ID_U8, MCL_E_PARAM_POINTER_U8);
#     }
#     else
#     {
# #endif /* MCL_DEV_ERROR_DETECT == STD_ON */
#     
#         /* Call the IPW function for enabling the interupts  when major iteration count completes */
#         Mcl_IPW_DmaSetIntMaj(pTcdAddress);
	.d2line		2216
	mr		r0,r3		# pTcdAddress=r0 pTcdAddress=r3
	bl		Mcl_IPW_DmaSetIntMaj
#         
# #if (MCL_DEV_ERROR_DETECT == STD_ON)        
#     }
# #endif /* MCL_DEV_ERROR_DETECT == STD_ON */
# }
	.d2line		2221
	.d2epilogue_begin
.Llo162:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L811:
	.type		Mcl_DmaTcdSetIntMaj,@function
	.size		Mcl_DmaTcdSetIntMaj,.-Mcl_DmaTcdSetIntMaj
# Number of nodes = 4

# Allocations for Mcl_DmaTcdSetIntMaj
#	?a4		pTcdAddress
# FUNC(boolean, MCL_CODE) Mcl_DmaTcdGetIntMaj(VAR(Mcl_ChannelType,AUTOMATIC) ChannelNumber)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         2239,25
#$$ld
.L816:

#$$bf	Mcl_DmaTcdGetIntMaj,interprocedural,rasave,nostackparams
	.globl		Mcl_DmaTcdGetIntMaj
	.d2_cfa_start __cie
Mcl_DmaTcdGetIntMaj:
.Llo163:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr		# bReturnValue=r0
.Llo167:
	stw		r0,20(r1)		# bReturnValue=r0
	.d2_cfa_offset    108,-1
	mr		r4,r3		# ChannelNumber=r4 ChannelNumber=r3
	.d2prologue_end
# {
#     VAR(boolean,AUTOMATIC) bReturnValue = (boolean)FALSE;
	.d2line		2241
	diab.li		r0,0		# bReturnValue=r0
#     
# #if (MCL_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#     if((Std_ReturnType)E_OK == Mcl_ValidateChannelConfigCall(ChannelNumber, MCL_DMATCDGETINTMAJ_ID_U8))
#     {
# #endif /* MCL_VALIDATE_CALL_AND_CHANNEL */
# 
#             /* All validations passed. Here starts the actual
#             functional code of the function */
#             bReturnValue = Mcl_IPW_DmaTcdGetIntMaj(Mcl_pConfig->pMclDmaConfig->pMclDmaHwIpsConfig->pDma_Config,
	.d2line		2250
.Llo168:
	lis		r3,Mcl_pConfig@ha		# bReturnValue=r3
.Llo164:
	lwz		r3,Mcl_pConfig@l(r3)		# bReturnValue=r3 bReturnValue=r3
	lwz		r3,0(r3)		# bReturnValue=r3 bReturnValue=r3
	lwz		r3,8(r3)		# bReturnValue=r3 bReturnValue=r3
	lwz		r3,0(r3)		# bReturnValue=r3 bReturnValue=r3
.Llo165:
	rlwinm		r4,r4,0,24,31		# ChannelNumber=r4 ChannelNumber=r4
.Llo166:
	bl		Mcl_IPW_DmaTcdGetIntMaj
#                                         ChannelNumber);
# 
# #if (MCL_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#     }
#     MCL_ENDVALIDATECHANNELCONFIGCALL(ChannelNumber);   
# #endif /* MCL_VALIDATE_CALL_AND_CHANNEL */     
# 
#     return bReturnValue;
	.d2line		2258
.Llo169:
	rlwinm		r3,r3,0,24,31		# bReturnValue=r3 bReturnValue=r3
# }
	.d2line		2259
	.d2epilogue_begin
.Llo170:
	lwz		r0,20(r1)		# bReturnValue=r0
	mtspr		lr,r0		# bReturnValue=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L817:
	.type		Mcl_DmaTcdGetIntMaj,@function
	.size		Mcl_DmaTcdGetIntMaj,.-Mcl_DmaTcdGetIntMaj
# Number of nodes = 19

# Allocations for Mcl_DmaTcdGetIntMaj
#	?a4		ChannelNumber
#	?a5		bReturnValue
# FUNC(void, MCL_CODE) Mcl_DmaTcdClearDone(VAR(Mcl_ChannelType, AUTOMATIC) nChannel)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         2281,22
#$$ld
.L824:

#$$bf	Mcl_DmaTcdClearDone,interprocedural,rasave,nostackparams
	.globl		Mcl_DmaTcdClearDone
	.d2_cfa_start __cie
Mcl_DmaTcdClearDone:
.Llo171:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r4,r3		# nChannel=r4 nChannel=r3
	.d2prologue_end
# {
# 
# #if (MCL_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#     if((Std_ReturnType)E_OK == Mcl_ValidateChannelConfigCall(nChannel, MCL_DMACLEARDONE_ID_U8))
#     {
# #endif /* MCL_VALIDATE_CALL_AND_CHANNEL */
# 
#         /* Call the IPW function for setting the Flags in CSR */
#         Mcl_IPW_DmaClearDone(Mcl_pConfig->pMclDmaConfig->pMclDmaHwIpsConfig->pDma_Config, nChannel);
	.d2line		2290
	lis		r3,Mcl_pConfig@ha
.Llo172:
	lwz		r3,Mcl_pConfig@l(r3)
	lwz		r3,0(r3)
	lwz		r3,8(r3)
	lwz		r3,0(r3)
.Llo173:
	rlwinm		r4,r4,0,24,31		# nChannel=r4 nChannel=r4
.Llo174:
	bl		Mcl_IPW_DmaClearDone
#         
# #if (MCL_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#     }
#     MCL_ENDVALIDATECHANNELCONFIGCALL(nChannel);   
# #endif /* MCL_VALIDATE_CALL_AND_CHANNEL */         
# }       
	.d2line		2296
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
.L825:
	.type		Mcl_DmaTcdClearDone,@function
	.size		Mcl_DmaTcdClearDone,.-Mcl_DmaTcdClearDone
# Number of nodes = 12

# Allocations for Mcl_DmaTcdClearDone
#	?a4		nChannel
# FUNC(uint16, MCL_CODE) Mcl_DmaTcdGetIterCount(P2VAR(Mcl_DmaTcdType, AUTOMATIC, MCL_APPL_DATA) pTcdAddress)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         2313,24
#$$ld
.L830:

#$$bf	Mcl_DmaTcdGetIterCount,interprocedural,rasave,nostackparams
	.globl		Mcl_DmaTcdGetIterCount
	.d2_cfa_start __cie
Mcl_DmaTcdGetIterCount:
.Llo175:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr		# u16returnValue=r0
.Llo177:
	stw		r0,20(r1)		# u16returnValue=r0
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     VAR(uint16, AUTOMATIC) u16returnValue = 0U;
	.d2line		2315
	diab.li		r0,0		# u16returnValue=r0
#  
# #if (MCL_DEV_ERROR_DETECT == STD_ON)  
#     if (NULL_PTR == pTcdAddress)
#     {
#         (void)Det_ReportError((uint16)MCL_MODULE_ID, 0U, MCL_TCD_GET_ITER_COUNT_ID_U8, MCL_E_PARAM_POINTER_U8);
#     }
#     else
#     {
# #endif /* MCL_DEV_ERROR_DETECT == STD_ON */    
# 
#         /* Call the IPW function for getting the CITER field */
#         u16returnValue = Mcl_IPW_DmaGetCiter(pTcdAddress);
	.d2line		2327
.Llo178:
	mr		r0,r3		# pTcdAddress=r0 pTcdAddress=r3
	bl		Mcl_IPW_DmaGetCiter
#         
# #if (MCL_DEV_ERROR_DETECT == STD_ON)          
#     }
# #endif /* MCL_DEV_ERROR_DETECT == STD_ON */      
#     
#     return u16returnValue;
	.d2line		2333
.Llo176:
	rlwinm		r3,r3,0,16,31		# u16returnValue=r3 u16returnValue=r3
# }
	.d2line		2334
	.d2epilogue_begin
.Llo179:
	lwz		r0,20(r1)		# u16returnValue=r0
	mtspr		lr,r0		# u16returnValue=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L831:
	.type		Mcl_DmaTcdGetIterCount,@function
	.size		Mcl_DmaTcdGetIterCount,.-Mcl_DmaTcdGetIterCount
# Number of nodes = 11

# Allocations for Mcl_DmaTcdGetIterCount
#	?a4		pTcdAddress
#	?a5		u16returnValue
# FUNC(uint16, MCL_CODE) Mcl_DmaGetStartIterCount(VAR(Mcl_ChannelType, AUTOMATIC) ChannelNumber)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         2350,24
#$$ld
.L838:

#$$bf	Mcl_DmaGetStartIterCount,interprocedural,rasave,nostackparams
	.globl		Mcl_DmaGetStartIterCount
	.d2_cfa_start __cie
Mcl_DmaGetStartIterCount:
.Llo180:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr		# ChannelNumber=r0
	stw		r0,20(r1)		# ChannelNumber=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# ChannelNumber=r0 ChannelNumber=r3
	.d2prologue_end
# {
#      VAR(uint16, AUTOMATIC) u16returnValue = 0U;
	.d2line		2352
	diab.li		r3,0		# u16returnValue=r3
#      
# #if (MCL_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#     if((Std_ReturnType)E_OK == Mcl_ValidateChannelConfigCall(ChannelNumber, MCL_GET_STRT_ITER_CH_ID_U8))
#     {
# #endif /* MCL_VALIDATE_CALL_AND_CHANNEL */
# 
#         /* All validations passed. Here starts the actual
#         functional code of the function */
#       
#         /* Call the IPW functionss for getting the CITER and BITER*/
#         u16returnValue =(uint16)Mcl_IPW_DmaGetChBiter((Mcl_DmaChannelType)(*(Mcl_pConfig->pMclDmaConfig->pMclDmaHwIpsConfig->pDma_Config->pChannelsConfig))[ChannelNumber].Dma_Channel);
	.d2line		2363
.Llo181:
	lis		r3,Mcl_pConfig@ha		# u16returnValue=r3
.Llo184:
	lwz		r3,Mcl_pConfig@l(r3)		# u16returnValue=r3 u16returnValue=r3
	lwz		r3,0(r3)		# u16returnValue=r3 u16returnValue=r3
	lwz		r3,8(r3)		# u16returnValue=r3 u16returnValue=r3
	lwz		r3,0(r3)		# u16returnValue=r3 u16returnValue=r3
	lwz		r3,8(r3)		# u16returnValue=r3 u16returnValue=r3
.Llo182:
	rlwinm		r0,r0,0,24,31		# ChannelNumber=r0 ChannelNumber=r0
	e_mulli		r0,r0,3		# ChannelNumber=r0 ChannelNumber=r0
	se_add		r3,r0		# u16returnValue=r3 u16returnValue=r3 ChannelNumber=r0
	lbz		r3,1(r3)		# u16returnValue=r3 u16returnValue=r3
.Llo185:
	bl		Mcl_IPW_DmaGetChBiter
#         
#                      
# #if (MCL_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#     }
#     MCL_ENDVALIDATECHANNELCONFIGCALL(ChannelNumber);   
# #endif /* MCL_VALIDATE_CALL_AND_CHANNEL */   
# 
#     return u16returnValue;
	.d2line		2371
.Llo183:
	rlwinm		r3,r3,0,16,31		# u16returnValue=r3 u16returnValue=r3
# }
	.d2line		2372
	.d2epilogue_begin
.Llo186:
	lwz		r0,20(r1)		# ChannelNumber=r0
	mtspr		lr,r0		# ChannelNumber=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L839:
	.type		Mcl_DmaGetStartIterCount,@function
	.size		Mcl_DmaGetStartIterCount,.-Mcl_DmaGetStartIterCount
# Number of nodes = 28

# Allocations for Mcl_DmaGetStartIterCount
#	?a4		ChannelNumber
#	?a5		u16returnValue
# FUNC(uint16, MCL_CODE) Mcl_DmaGetCrtIterCount(VAR(Mcl_ChannelType, AUTOMATIC) ChannelNumber)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         2386,24
#$$ld
.L846:

#$$bf	Mcl_DmaGetCrtIterCount,interprocedural,rasave,nostackparams
	.globl		Mcl_DmaGetCrtIterCount
	.d2_cfa_start __cie
Mcl_DmaGetCrtIterCount:
.Llo187:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr		# ChannelNumber=r0
	stw		r0,20(r1)		# ChannelNumber=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# ChannelNumber=r0 ChannelNumber=r3
	.d2prologue_end
# {
#      VAR(uint16, AUTOMATIC) u16returnValue = 0U;
	.d2line		2388
	diab.li		r3,0		# u16returnValue=r3
#      
# #if (MCL_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#     if((Std_ReturnType)E_OK == Mcl_ValidateChannelConfigCall(ChannelNumber, MCL_GET_CRT_ITER_CH_ID_U8))
#     {
# #endif /* MCL_VALIDATE_CALL_AND_CHANNEL */
# 
#         /* All validations passed. Here starts the actual
#         functional code of the function */
#       
#         /* Call the IPW functionss for getting the CITER and BITER*/
#         u16returnValue =(uint16)Mcl_IPW_DmaGetChCiter((Mcl_DmaChannelType)(*(Mcl_pConfig->pMclDmaConfig->pMclDmaHwIpsConfig->pDma_Config->pChannelsConfig))[ChannelNumber].Dma_Channel);
	.d2line		2399
.Llo188:
	lis		r3,Mcl_pConfig@ha		# u16returnValue=r3
.Llo191:
	lwz		r3,Mcl_pConfig@l(r3)		# u16returnValue=r3 u16returnValue=r3
	lwz		r3,0(r3)		# u16returnValue=r3 u16returnValue=r3
	lwz		r3,8(r3)		# u16returnValue=r3 u16returnValue=r3
	lwz		r3,0(r3)		# u16returnValue=r3 u16returnValue=r3
	lwz		r3,8(r3)		# u16returnValue=r3 u16returnValue=r3
.Llo189:
	rlwinm		r0,r0,0,24,31		# ChannelNumber=r0 ChannelNumber=r0
	e_mulli		r0,r0,3		# ChannelNumber=r0 ChannelNumber=r0
	se_add		r3,r0		# u16returnValue=r3 u16returnValue=r3 ChannelNumber=r0
	lbz		r3,1(r3)		# u16returnValue=r3 u16returnValue=r3
.Llo192:
	bl		Mcl_IPW_DmaGetChCiter
#                     
# #if (MCL_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#     }
#     MCL_ENDVALIDATECHANNELCONFIGCALL(ChannelNumber);   
# #endif /* MCL_VALIDATE_CALL_AND_CHANNEL */   
# 
#     return u16returnValue;
	.d2line		2406
.Llo190:
	rlwinm		r3,r3,0,16,31		# u16returnValue=r3 u16returnValue=r3
# 
# }
	.d2line		2408
	.d2epilogue_begin
.Llo193:
	lwz		r0,20(r1)		# ChannelNumber=r0
	mtspr		lr,r0		# ChannelNumber=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L847:
	.type		Mcl_DmaGetCrtIterCount,@function
	.size		Mcl_DmaGetCrtIterCount,.-Mcl_DmaGetCrtIterCount
# Number of nodes = 28

# Allocations for Mcl_DmaGetCrtIterCount
#	?a4		ChannelNumber
#	?a5		u16returnValue
# FUNC(uint32, MCL_CODE) Mcl_DmaTcdGetSaddr(P2VAR(Mcl_DmaTcdType, AUTOMATIC, MCL_APPL_DATA) pTcdAddress)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         2425,24
#$$ld
.L854:

#$$bf	Mcl_DmaTcdGetSaddr,interprocedural,rasave,nostackparams
	.globl		Mcl_DmaTcdGetSaddr
	.d2_cfa_start __cie
Mcl_DmaTcdGetSaddr:
.Llo194:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr		# u32returnValue=r0
.Llo196:
	stw		r0,20(r1)		# u32returnValue=r0
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     VAR(uint32, AUTOMATIC) u32returnValue = 0U;
	.d2line		2427
	diab.li		r0,0		# u32returnValue=r0
#  
# #if (MCL_DEV_ERROR_DETECT == STD_ON) 
#     if (NULL_PTR == pTcdAddress)
#     {
#         (void)Det_ReportError((uint16)MCL_MODULE_ID, 0U, MCL_TCD_GET_SADDR_ID_U8, MCL_E_PARAM_POINTER_U8);
#     }
#     else
#     {
# #endif /* MCL_DEV_ERROR_DETECT == STD_ON */    
#         /* Call the IPW function for getting the SADDR field */
#         u32returnValue = Mcl_IPW_DmaGetSaddr(pTcdAddress);
	.d2line		2438
.Llo197:
	mr		r0,r3		# pTcdAddress=r0 pTcdAddress=r3
	bl		Mcl_IPW_DmaGetSaddr
# #if (MCL_DEV_ERROR_DETECT == STD_ON)         
#     }
# #endif /* MCL_DEV_ERROR_DETECT == STD_ON */
#     
#     return u32returnValue;
	.d2line		2443
.Llo195:
	mr		r4,r3		# u32returnValue=r4 u32returnValue=r3
# }
	.d2line		2444
	.d2epilogue_begin
	lwz		r0,20(r1)		# u32returnValue=r0
	mtspr		lr,r0		# u32returnValue=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo198:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L855:
	.type		Mcl_DmaTcdGetSaddr,@function
	.size		Mcl_DmaTcdGetSaddr,.-Mcl_DmaTcdGetSaddr
# Number of nodes = 11

# Allocations for Mcl_DmaTcdGetSaddr
#	?a4		pTcdAddress
#	?a5		u32returnValue
# FUNC(uint32, MCL_CODE) Mcl_DmaTcdGetDaddr(P2VAR(Mcl_DmaTcdType, AUTOMATIC, MCL_APPL_DATA) pTcdAddress)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         2462,24
#$$ld
.L862:

#$$bf	Mcl_DmaTcdGetDaddr,interprocedural,rasave,nostackparams
	.globl		Mcl_DmaTcdGetDaddr
	.d2_cfa_start __cie
Mcl_DmaTcdGetDaddr:
.Llo199:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr		# u32returnValue=r0
.Llo201:
	stw		r0,20(r1)		# u32returnValue=r0
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#  
#     VAR(uint32, AUTOMATIC) u32returnValue = 0U;
	.d2line		2465
	diab.li		r0,0		# u32returnValue=r0
#  
# #if (MCL_DEV_ERROR_DETECT == STD_ON)
#     if (NULL_PTR == pTcdAddress)
#     {
#         (void)Det_ReportError((uint16)MCL_MODULE_ID, 0U, MCL_TCD_GET_DADDR_ID_U8, MCL_E_PARAM_POINTER_U8);
#     }
#     else
#     {
# #endif /* MCL_DEV_ERROR_DETECT == STD_ON */
#         /* Call the IPW function for getting the DADDR field */
#         u32returnValue = Mcl_IPW_DmaGetDaddr(pTcdAddress);
	.d2line		2476
.Llo202:
	mr		r0,r3		# pTcdAddress=r0 pTcdAddress=r3
	bl		Mcl_IPW_DmaGetDaddr
# #if (MCL_DEV_ERROR_DETECT == STD_ON)        
#     }
# #endif /* MCL_DEV_ERROR_DETECT == STD_ON */     
#     
#     return u32returnValue;
	.d2line		2481
.Llo200:
	mr		r4,r3		# u32returnValue=r4 u32returnValue=r3
# }    
	.d2line		2482
	.d2epilogue_begin
	lwz		r0,20(r1)		# u32returnValue=r0
	mtspr		lr,r0		# u32returnValue=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo203:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L863:
	.type		Mcl_DmaTcdGetDaddr,@function
	.size		Mcl_DmaTcdGetDaddr,.-Mcl_DmaTcdGetDaddr
# Number of nodes = 11

# Allocations for Mcl_DmaTcdGetDaddr
#	?a4		pTcdAddress
#	?a5		u32returnValue
# FUNC(boolean, MCL_CODE) Mcl_DmaGetInterruptRequest(VAR(Mcl_ChannelType,AUTOMATIC) ChannelNumber)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         2500,25
#$$ld
.L870:

#$$bf	Mcl_DmaGetInterruptRequest,interprocedural,rasave,nostackparams
	.globl		Mcl_DmaGetInterruptRequest
	.d2_cfa_start __cie
Mcl_DmaGetInterruptRequest:
.Llo204:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr		# bReturnValue=r0
.Llo208:
	stw		r0,20(r1)		# bReturnValue=r0
	.d2_cfa_offset    108,-1
	mr		r4,r3		# ChannelNumber=r4 ChannelNumber=r3
	.d2prologue_end
# {
#     VAR(boolean,AUTOMATIC) bReturnValue = (boolean)FALSE;
	.d2line		2502
	diab.li		r0,0		# bReturnValue=r0
#     
# #if (MCL_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#     if((Std_ReturnType)E_OK == Mcl_ValidateChannelConfigCall(ChannelNumber, MCL_DMAGETINTERRUPTREQUEST_ID_U8))
#     {
# #endif /* MCL_VALIDATE_CALL_AND_CHANNEL */
# 
#             /* All validations passed. Here starts the actual
#             functional code of the function */
#             bReturnValue = Mcl_IPW_DmaGetInterruptRequest(Mcl_pConfig->pMclDmaConfig->pMclDmaHwIpsConfig->pDma_Config,
	.d2line		2511
.Llo209:
	lis		r3,Mcl_pConfig@ha		# bReturnValue=r3
.Llo205:
	lwz		r3,Mcl_pConfig@l(r3)		# bReturnValue=r3 bReturnValue=r3
	lwz		r3,0(r3)		# bReturnValue=r3 bReturnValue=r3
	lwz		r3,8(r3)		# bReturnValue=r3 bReturnValue=r3
	lwz		r3,0(r3)		# bReturnValue=r3 bReturnValue=r3
.Llo206:
	rlwinm		r4,r4,0,24,31		# ChannelNumber=r4 ChannelNumber=r4
.Llo207:
	bl		Mcl_IPW_DmaGetInterruptRequest
#                                                          ChannelNumber);
# 
# #if (MCL_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#     }
#     MCL_ENDVALIDATECHANNELCONFIGCALL(ChannelNumber);   
# #endif /* MCL_VALIDATE_CALL_AND_CHANNEL */     
# 
#     return bReturnValue;
	.d2line		2519
.Llo210:
	rlwinm		r3,r3,0,24,31		# bReturnValue=r3 bReturnValue=r3
# }   
	.d2line		2520
	.d2epilogue_begin
.Llo211:
	lwz		r0,20(r1)		# bReturnValue=r0
	mtspr		lr,r0		# bReturnValue=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L871:
	.type		Mcl_DmaGetInterruptRequest,@function
	.size		Mcl_DmaGetInterruptRequest,.-Mcl_DmaGetInterruptRequest
# Number of nodes = 19

# Allocations for Mcl_DmaGetInterruptRequest
#	?a4		ChannelNumber
#	?a5		bReturnValue
# FUNC(Mcl_DmaChannelType, MCL_CODE) Mcl_DmaGetPhysicalChannel(VAR(Mcl_ChannelType,AUTOMATIC) ChannelNumber)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         2537,36
#$$ld
.L878:

#$$bf	Mcl_DmaGetPhysicalChannel,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4
	.globl		Mcl_DmaGetPhysicalChannel
	.d2_cfa_start __cie
Mcl_DmaGetPhysicalChannel:
.Llo212:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r4,r3		# ChannelNumber=r4 ChannelNumber=r3
	.d2prologue_end
# {
#     VAR(Mcl_DmaChannelType,AUTOMATIC) returnChannel = (Mcl_DmaChannelType)255;
	.d2line		2539
	diab.li		r3,255		# returnChannel=r3
#     
# #if (MCL_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#     if((Std_ReturnType)E_OK == Mcl_ValidateChannelConfigCall(ChannelNumber, MCL_DMAGETPHYSICALCHANNEL_ID_U8))
#     {
# #endif /* MCL_VALIDATE_CALL_AND_CHANNEL */
# 
#             /* All validations passed. Here starts the actual
#             functional code of the function */
#             returnChannel = (*(Mcl_pConfig->pMclDmaConfig->pMclDmaHwIpsConfig->pDma_Config->pChannelsConfig))[ChannelNumber].Dma_Channel;
	.d2line		2548
.Llo213:
	lis		r3,Mcl_pConfig@ha		# returnChannel=r3
.Llo216:
	lwz		r3,Mcl_pConfig@l(r3)		# returnChannel=r3 returnChannel=r3
	lwz		r3,0(r3)		# returnChannel=r3 returnChannel=r3
	lwz		r3,8(r3)		# returnChannel=r3 returnChannel=r3
	lwz		r3,0(r3)		# returnChannel=r3 returnChannel=r3
	lwz		r3,8(r3)		# returnChannel=r3 returnChannel=r3
.Llo214:
	rlwinm		r4,r4,0,24,31		# ChannelNumber=r4 ChannelNumber=r4
	e_mulli		r4,r4,3		# ChannelNumber=r4 ChannelNumber=r4
	se_add		r3,r4		# returnChannel=r3 returnChannel=r3 ChannelNumber=r4
	lbz		r3,1(r3)		# returnChannel=r3 returnChannel=r3
	mr		r3,r3		# returnChannel=r3 returnChannel=r3
# 
# #if (MCL_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#     }
#     MCL_ENDVALIDATECHANNELCONFIGCALL(ChannelNumber);   
# #endif /* MCL_VALIDATE_CALL_AND_CHANNEL */     
# 
#     return returnChannel;
	.d2line		2555
	rlwinm		r3,r3,0,24,31		# returnChannel=r3 returnChannel=r3
# }   
	.d2line		2556
	.d2epilogue_begin
.Llo217:
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo215:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L879:
	.type		Mcl_DmaGetPhysicalChannel,@function
	.size		Mcl_DmaGetPhysicalChannel,.-Mcl_DmaGetPhysicalChannel
# Number of nodes = 24

# Allocations for Mcl_DmaGetPhysicalChannel
#	?a4		ChannelNumber
#	?a5		returnChannel
# FUNC(void, MCL_CODE) Mcl_DmaEnableHwRequest(VAR(Mcl_ChannelType,AUTOMATIC) ChannelNumber)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         2572,22
#$$ld
.L887:

#$$bf	Mcl_DmaEnableHwRequest,interprocedural,rasave,nostackparams
	.globl		Mcl_DmaEnableHwRequest
	.d2_cfa_start __cie
Mcl_DmaEnableHwRequest:
.Llo218:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r4,r3		# ChannelNumber=r4 ChannelNumber=r3
	.d2prologue_end
# {
#     
# #if (MCL_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#     if((Std_ReturnType)E_OK == Mcl_ValidateChannelConfigCall(ChannelNumber, MCL_ENABLE_HW_REQ_ID_U8))
#     {
# #endif /* MCL_VALIDATE_CALL_AND_CHANNEL */
# 
#         /* All validations passed. Here starts the actual
#         functional code of the function */
#         
#         /* Call the IPW function for hardware request enable */
#         Mcl_IPW_DmaEnableHwRequest(Mcl_pConfig->pMclDmaConfig->pMclDmaHwIpsConfig->pDma_Config, ChannelNumber);
	.d2line		2584
	lis		r3,Mcl_pConfig@ha
.Llo219:
	lwz		r3,Mcl_pConfig@l(r3)
	lwz		r3,0(r3)
	lwz		r3,8(r3)
	lwz		r3,0(r3)
.Llo220:
	rlwinm		r4,r4,0,24,31		# ChannelNumber=r4 ChannelNumber=r4
.Llo221:
	bl		Mcl_IPW_DmaEnableHwRequest
# 
# #if (MCL_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#     }
#     MCL_ENDVALIDATECHANNELCONFIGCALL(ChannelNumber);   
# #endif /* MCL_VALIDATE_CALL_AND_CHANNEL */     
# 
# }   
	.d2line		2591
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
.L888:
	.type		Mcl_DmaEnableHwRequest,@function
	.size		Mcl_DmaEnableHwRequest,.-Mcl_DmaEnableHwRequest
# Number of nodes = 12

# Allocations for Mcl_DmaEnableHwRequest
#	?a4		ChannelNumber
# FUNC(void, MCL_CODE) Mcl_DmaDisableHwRequest(VAR(Mcl_ChannelType,AUTOMATIC) ChannelNumber)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         2607,22
#$$ld
.L893:

#$$bf	Mcl_DmaDisableHwRequest,interprocedural,rasave,nostackparams
	.globl		Mcl_DmaDisableHwRequest
	.d2_cfa_start __cie
Mcl_DmaDisableHwRequest:
.Llo222:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r4,r3		# ChannelNumber=r4 ChannelNumber=r3
	.d2prologue_end
# {
#     
# #if (MCL_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#     if((Std_ReturnType)E_OK == Mcl_ValidateChannelConfigCall(ChannelNumber, MCL_DISABLE_HW_REQ_ID_U8))
#     {
# #endif /* MCL_VALIDATE_CALL_AND_CHANNEL */
# 
#         /* All validations passed. Here starts the actual
#         functional code of the function */
#         
#         /* Call the IPW function for hardware request enable */
#         Mcl_IPW_DmaDisableHwRequest(Mcl_pConfig->pMclDmaConfig->pMclDmaHwIpsConfig->pDma_Config, ChannelNumber);
	.d2line		2619
	lis		r3,Mcl_pConfig@ha
.Llo223:
	lwz		r3,Mcl_pConfig@l(r3)
	lwz		r3,0(r3)
	lwz		r3,8(r3)
	lwz		r3,0(r3)
.Llo224:
	rlwinm		r4,r4,0,24,31		# ChannelNumber=r4 ChannelNumber=r4
.Llo225:
	bl		Mcl_IPW_DmaDisableHwRequest
# 
# #if (MCL_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#     }
#     MCL_ENDVALIDATECHANNELCONFIGCALL(ChannelNumber);   
# #endif /* MCL_VALIDATE_CALL_AND_CHANNEL */     
# 
# }  
	.d2line		2626
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
.L894:
	.type		Mcl_DmaDisableHwRequest,@function
	.size		Mcl_DmaDisableHwRequest,.-Mcl_DmaDisableHwRequest
# Number of nodes = 12

# Allocations for Mcl_DmaDisableHwRequest
#	?a4		ChannelNumber
# FUNC(void, MCL_CODE) Mcl_DmaUpdateIterCount( VAR(Mcl_ChannelType, AUTOMATIC) ChannelNumber ,
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         2641,22
#$$ld
.L899:

#$$bf	Mcl_DmaUpdateIterCount,interprocedural,rasave,nostackparams
	.globl		Mcl_DmaUpdateIterCount
	.d2_cfa_start __cie
Mcl_DmaUpdateIterCount:
.Llo226:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr		# ChannelNumber=r0
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)		# ChannelNumber=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# ChannelNumber=r0 ChannelNumber=r3
.Llo227:
	mr		r30,r4		# u16Iter=r30 u16Iter=r4
	.d2prologue_end
#                                              VAR(uint16, AUTOMATIC) u16Iter)
# {
#     VAR(Mcl_DmaTcdType, AUTOMATIC)tcd_address;
# #if (MCL_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#     if((Std_ReturnType)E_OK == Mcl_ValidateChannelConfigCall(ChannelNumber, MCL_UPDATE_ITER_ID_U8))
#     {
# #endif /* MCL_VALIDATE_CALL_AND_CHANNEL */
#        
#        tcd_address = Mcl_IPW_DmaGetChannelTcdAddress(Mcl_pConfig->pMclDmaConfig->pMclDmaHwIpsConfig->pDma_Config, ChannelNumber);
	.d2line		2650
.Llo228:
	lis		r3,Mcl_pConfig@ha
.Llo230:
	lwz		r3,Mcl_pConfig@l(r3)
	lwz		r3,0(r3)
	lwz		r3,8(r3)
	lwz		r3,0(r3)
	rlwinm		r4,r0,0,24,31		# ChannelNumber=r0
	bl		Mcl_IPW_DmaGetChannelTcdAddress
.Llo229:
	mr		r31,r3		# tcd_address=r31 tcd_address=r3
#        /* All validations passed. Here starts the actual
#        functional code of the function */
# 
#        /* Call the IPW function for setting the CITER */
#        /** @violates @ref Mcl_c_7 Violates MISRA 2004 Rule 11.1 */ 
#        /** @violates @ref Mcl_c_8 Violates MISRA 2004 Rule 11.3*/
#        Mcl_IPW_DmaSetCiter((Mcl_DmaTcdType*)tcd_address, u16Iter);
	.d2line		2657
.Llo232:
	rlwinm		r4,r30,0,16,31		# u16Iter=r30
.Llo233:
	mr		r3,r31		# tcd_address=r3 tcd_address=r31
	bl		Mcl_IPW_DmaSetCiter
#        
#        /* Call the IPW function for setting the BITER with the same value as CITER */
#        /** @violates @ref Mcl_c_7 Violates MISRA 2004 Rule 11.1 */
#        /** @violates @ref Mcl_c_8 Violates MISRA 2004 Rule 11.3*/
#        Mcl_IPW_DmaSetBiter((Mcl_DmaTcdType*)tcd_address, u16Iter);
	.d2line		2662
	rlwinm		r4,r30,0,16,31		# u16Iter=r30
	mr		r3,r31		# tcd_address=r3 tcd_address=r31
	bl		Mcl_IPW_DmaSetBiter
# 
# #if (MCL_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#     }
#     MCL_ENDVALIDATECHANNELCONFIGCALL(ChannelNumber);   
# #endif /* MCL_VALIDATE_CALL_AND_CHANNEL */     
# }
	.d2line		2668
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo231:
	lwz		r0,36(r1)		# ChannelNumber=r0
	mtspr		lr,r0		# ChannelNumber=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L900:
	.type		Mcl_DmaUpdateIterCount,@function
	.size		Mcl_DmaUpdateIterCount,.-Mcl_DmaUpdateIterCount
# Number of nodes = 28

# Allocations for Mcl_DmaUpdateIterCount
#	?a4		ChannelNumber
#	?a5		u16Iter
#	?a6		tcd_address
# FUNC(void, MCL_CODE) Mcl_DmaUpdateDestAddress(VAR(Mcl_ChannelType, AUTOMATIC) ChannelNumber,
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         2685,22
#$$ld
.L908:

#$$bf	Mcl_DmaUpdateDestAddress,interprocedural,rasave,nostackparams
	.globl		Mcl_DmaUpdateDestAddress
	.d2_cfa_start __cie
Mcl_DmaUpdateDestAddress:
.Llo234:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr		# ChannelNumber=r0
	stw		r0,20(r1)		# ChannelNumber=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# ChannelNumber=r0 ChannelNumber=r3
	.d2prologue_end
#                                                 VAR(uint32, AUTOMATIC) daddr)
# {
# #if (MCL_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#     if((Std_ReturnType)E_OK == Mcl_ValidateChannelConfigCall(ChannelNumber, MCL_UPDATE_DEST_CH_ID_U8))
#     {
# #endif /* MCL_VALIDATE_CALL_AND_CHANNEL */
# 
#         /* All validations passed. Here starts the actual
#         functional code of the function */
#      
#         /* Call the IPW function for updating the destination addr */
#  
# 
#         Mcl_IPW_DmaUpdateDestAddress((uint32)(*(Mcl_pConfig->pMclDmaConfig->pMclDmaHwIpsConfig->pDma_Config->pChannelsConfig))[ChannelNumber].Dma_Channel, (uint32)daddr);
	.d2line		2699
	lis		r3,Mcl_pConfig@ha
.Llo235:
	lwz		r3,Mcl_pConfig@l(r3)
	lwz		r3,0(r3)
	lwz		r3,8(r3)
	lwz		r3,0(r3)
	lwz		r3,8(r3)
.Llo236:
	rlwinm		r0,r0,0,24,31		# ChannelNumber=r0 ChannelNumber=r0
	e_mulli		r0,r0,3		# ChannelNumber=r0 ChannelNumber=r0
	se_add		r3,r0		# ChannelNumber=r0
	lbz		r3,1(r3)
	mr		r0,r4		# daddr=r0 daddr=r4
.Llo237:
	bl		Mcl_IPW_DmaUpdateDestAddress
#       
# #if (MCL_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#     }
#     MCL_ENDVALIDATECHANNELCONFIGCALL(ChannelNumber);   
# #endif /* MCL_VALIDATE_CALL_AND_CHANNEL */ 
# }
	.d2line		2705
	.d2epilogue_begin
.Llo238:
	lwz		r0,20(r1)		# ChannelNumber=r0
	mtspr		lr,r0		# ChannelNumber=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L909:
	.type		Mcl_DmaUpdateDestAddress,@function
	.size		Mcl_DmaUpdateDestAddress,.-Mcl_DmaUpdateDestAddress
# Number of nodes = 23

# Allocations for Mcl_DmaUpdateDestAddress
#	?a4		ChannelNumber
#	?a5		daddr

# Allocations for module
	.section	.mcal_data,,d
	.0byte		.L913
	.section	.mcal_data,,d
	.type		Mcl_pConfig,@object
	.size		Mcl_pConfig,4
	.align		2
Mcl_pConfig:
	.long		0
	.section	.text_vle
#$$ld
.L5:
.L985:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\PowerPC\\WindRiver\\AUTOSAR\\ar422\\MemMap.h"
.L915:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Mcl\\ssc\\make\\..\\..\\generator\\integration_package\\include\\Mcl_Dma_Types.h"
.L914:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Mcl\\ssc\\make\\..\\..\\generator\\integration_package\\src\\CDD_Mcl.c"
	.d2_line_end
	.section	.invalid_TEXT,,c
#$$ld
.L500:
.L508:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Mcl\\ssc\\make\\..\\..\\generator\\integration_package\\src\\CDD_Mcl.c"
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
	.uleb128	21
	.byte		0x1
	.uleb128	1
	.uleb128	16
	.uleb128	39
	.uleb128	12
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	16
	.uleb128	5
	.byte		0x0
	.uleb128	73
	.uleb128	16
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Mcl\\ssc\\make\\..\\..\\generator\\integration_package\\src\\CDD_Mcl.c"
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
.L497:
	.4byte		.L498-.L496
.L496:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L502-.L497
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Mcl\\ssc\\make\\..\\..\\generator\\integration_package\\src\\CDD_Mcl.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L499
	.4byte		.L500
	.4byte		.L503
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L509:
	.sleb128	2
	.4byte		.L505-.L497
	.byte		"Mcl_Init"
	.byte		0
	.4byte		.L508
	.uleb128	623
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L506
	.4byte		.L507
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L508
	.uleb128	623
	.uleb128	22
	.byte		"ConfigPtr"
	.byte		0
	.4byte		.L510
	.4byte		.L514
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L505:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L519:
	.sleb128	2
	.4byte		.L516-.L497
	.byte		"Mcl_GetVersionInfo"
	.byte		0
	.4byte		.L508
	.uleb128	742
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L517
	.4byte		.L518
	.sleb128	3
	.4byte		.L508
	.uleb128	742
	.uleb128	22
	.byte		"versioninfo"
	.byte		0
	.4byte		.L520
	.4byte		.L523
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L516:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L528:
	.sleb128	2
	.4byte		.L525-.L497
	.byte		"Mcl_DmaConfigChannel"
	.byte		0
	.4byte		.L508
	.uleb128	777
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L526
	.4byte		.L527
	.sleb128	3
	.4byte		.L508
	.uleb128	777
	.uleb128	22
	.byte		"dma_channel"
	.byte		0
	.4byte		.L529
	.4byte		.L532
	.sleb128	3
	.4byte		.L508
	.uleb128	777
	.uleb128	22
	.byte		"config_descriptor"
	.byte		0
	.4byte		.L533
	.4byte		.L537
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L525:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L542:
	.sleb128	2
	.4byte		.L539-.L497
	.byte		"Mcl_DmaConfigLinkedChannel"
	.byte		0
	.4byte		.L508
	.uleb128	832
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L540
	.4byte		.L541
	.sleb128	3
	.4byte		.L508
	.uleb128	832
	.uleb128	22
	.byte		"dma_channel"
	.byte		0
	.4byte		.L529
	.4byte		.L543
	.sleb128	3
	.4byte		.L508
	.uleb128	832
	.uleb128	22
	.byte		"config_descriptor"
	.byte		0
	.4byte		.L533
	.4byte		.L544
	.sleb128	3
	.4byte		.L508
	.uleb128	832
	.uleb128	22
	.byte		"next_channel"
	.byte		0
	.4byte		.L529
	.4byte		.L545
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L539:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L550:
	.sleb128	2
	.4byte		.L547-.L497
	.byte		"Mcl_DmaConfigTcd"
	.byte		0
	.4byte		.L508
	.uleb128	895
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L548
	.4byte		.L549
	.sleb128	3
	.4byte		.L508
	.uleb128	895
	.uleb128	22
	.byte		"pTcdAddress"
	.byte		0
	.4byte		.L551
	.4byte		.L555
	.sleb128	3
	.4byte		.L508
	.uleb128	895
	.uleb128	22
	.byte		"config_descriptor"
	.byte		0
	.4byte		.L533
	.4byte		.L556
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L547:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L561:
	.sleb128	2
	.4byte		.L558-.L497
	.byte		"Mcl_DmaConfigScatterGatherChannel"
	.byte		0
	.4byte		.L508
	.uleb128	931
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L559
	.4byte		.L560
	.sleb128	3
	.4byte		.L508
	.uleb128	931
	.uleb128	22
	.byte		"dma_channel"
	.byte		0
	.4byte		.L529
	.4byte		.L562
	.sleb128	3
	.4byte		.L508
	.uleb128	931
	.uleb128	22
	.byte		"config_descriptor"
	.byte		0
	.4byte		.L533
	.4byte		.L563
	.sleb128	3
	.4byte		.L508
	.uleb128	931
	.uleb128	22
	.byte		"pNext_tcd"
	.byte		0
	.4byte		.L551
	.4byte		.L564
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L558:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L569:
	.sleb128	2
	.4byte		.L566-.L497
	.byte		"Mcl_DmaConfigLinkedTcd"
	.byte		0
	.4byte		.L508
	.uleb128	987
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L567
	.4byte		.L568
	.sleb128	3
	.4byte		.L508
	.uleb128	987
	.uleb128	22
	.byte		"pTcdAddress"
	.byte		0
	.4byte		.L551
	.4byte		.L570
	.sleb128	3
	.4byte		.L508
	.uleb128	987
	.uleb128	22
	.byte		"config_descriptor"
	.byte		0
	.4byte		.L533
	.4byte		.L571
	.sleb128	3
	.4byte		.L508
	.uleb128	987
	.uleb128	22
	.byte		"next_channel"
	.byte		0
	.4byte		.L529
	.4byte		.L572
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L566:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L577:
	.sleb128	2
	.4byte		.L574-.L497
	.byte		"Mcl_DmaConfigScatterGatherTcd"
	.byte		0
	.4byte		.L508
	.uleb128	1033
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L575
	.4byte		.L576
	.sleb128	3
	.4byte		.L508
	.uleb128	1033
	.uleb128	22
	.byte		"pTcdAddress"
	.byte		0
	.4byte		.L551
	.4byte		.L578
	.sleb128	3
	.4byte		.L508
	.uleb128	1033
	.uleb128	22
	.byte		"config_descriptor"
	.byte		0
	.4byte		.L533
	.4byte		.L579
	.sleb128	3
	.4byte		.L508
	.uleb128	1033
	.uleb128	22
	.byte		"pNext_tcd"
	.byte		0
	.4byte		.L551
	.4byte		.L580
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L574:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L585:
	.sleb128	2
	.4byte		.L582-.L497
	.byte		"Mcl_DmaConfigScatterGatherLinkedChannel"
	.byte		0
	.4byte		.L508
	.uleb128	1071
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L583
	.4byte		.L584
	.sleb128	3
	.4byte		.L508
	.uleb128	1071
	.uleb128	22
	.byte		"dma_channel"
	.byte		0
	.4byte		.L529
	.4byte		.L586
	.sleb128	3
	.4byte		.L508
	.uleb128	1071
	.uleb128	22
	.byte		"config_descriptor"
	.byte		0
	.4byte		.L533
	.4byte		.L587
	.sleb128	3
	.4byte		.L508
	.uleb128	1071
	.uleb128	22
	.byte		"pNext_tcd"
	.byte		0
	.4byte		.L551
	.4byte		.L588
	.sleb128	3
	.4byte		.L508
	.uleb128	1071
	.uleb128	22
	.byte		"next_channel"
	.byte		0
	.4byte		.L529
	.4byte		.L589
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L582:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L594:
	.sleb128	2
	.4byte		.L591-.L497
	.byte		"Mcl_DmaConfigScatterGatherLinkedTcd"
	.byte		0
	.4byte		.L508
	.uleb128	1139
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L592
	.4byte		.L593
	.sleb128	3
	.4byte		.L508
	.uleb128	1139
	.uleb128	22
	.byte		"pTcdAddress"
	.byte		0
	.4byte		.L551
	.4byte		.L595
	.sleb128	3
	.4byte		.L508
	.uleb128	1139
	.uleb128	22
	.byte		"config_descriptor"
	.byte		0
	.4byte		.L533
	.4byte		.L596
	.sleb128	3
	.4byte		.L508
	.uleb128	1139
	.uleb128	22
	.byte		"pNext_tcd"
	.byte		0
	.4byte		.L551
	.4byte		.L597
	.sleb128	3
	.4byte		.L508
	.uleb128	1139
	.uleb128	22
	.byte		"next_channel"
	.byte		0
	.4byte		.L529
	.4byte		.L598
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L591:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L603:
	.sleb128	2
	.4byte		.L600-.L497
	.byte		"Mcl_DmaSetChannelPriority"
	.byte		0
	.4byte		.L508
	.uleb128	1196
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L601
	.4byte		.L602
	.sleb128	3
	.4byte		.L508
	.uleb128	1196
	.uleb128	22
	.byte		"nChannel"
	.byte		0
	.4byte		.L529
	.4byte		.L604
	.sleb128	3
	.4byte		.L508
	.uleb128	1196
	.uleb128	22
	.byte		"nPriority"
	.byte		0
	.4byte		.L605
	.4byte		.L606
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L600:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L611:
	.sleb128	2
	.4byte		.L608-.L497
	.byte		"Mcl_DmaStartChannel"
	.byte		0
	.4byte		.L508
	.uleb128	1229
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L609
	.4byte		.L610
	.sleb128	3
	.4byte		.L508
	.uleb128	1229
	.uleb128	22
	.byte		"nChannel"
	.byte		0
	.4byte		.L529
	.4byte		.L612
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L608:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L618:
	.sleb128	4
	.4byte		.L614-.L497
	.byte		"Mcl_DmaIsTransferCompleted"
	.byte		0
	.4byte		.L508
	.uleb128	1261
	.uleb128	25
	.4byte		.L617
	.byte		0x1
	.byte		0x1
	.4byte		.L615
	.4byte		.L616
	.sleb128	3
	.4byte		.L508
	.uleb128	1261
	.uleb128	25
	.byte		"nChannel"
	.byte		0
	.4byte		.L529
	.4byte		.L619
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L620:
	.sleb128	5
	.4byte		.L508
	.uleb128	1263
	.uleb128	29
	.byte		"bCompleted"
	.byte		0
	.4byte		.L617
	.4byte		.L621
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L614:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L626:
	.sleb128	4
	.4byte		.L623-.L497
	.byte		"Mcl_DmaIsTransferActive"
	.byte		0
	.4byte		.L508
	.uleb128	1296
	.uleb128	25
	.4byte		.L617
	.byte		0x1
	.byte		0x1
	.4byte		.L624
	.4byte		.L625
	.sleb128	3
	.4byte		.L508
	.uleb128	1296
	.uleb128	25
	.byte		"nChannel"
	.byte		0
	.4byte		.L529
	.4byte		.L627
.L628:
	.sleb128	5
	.4byte		.L508
	.uleb128	1298
	.uleb128	29
	.byte		"bActive"
	.byte		0
	.4byte		.L617
	.4byte		.L629
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L623:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L634:
	.sleb128	2
	.4byte		.L631-.L497
	.byte		"Mcl_DmaEnableNotification"
	.byte		0
	.4byte		.L508
	.uleb128	1351
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L632
	.4byte		.L633
	.sleb128	3
	.4byte		.L508
	.uleb128	1351
	.uleb128	22
	.byte		"ChannelNumber"
	.byte		0
	.4byte		.L529
	.4byte		.L635
	.sleb128	3
	.4byte		.L508
	.uleb128	1351
	.uleb128	22
	.byte		"Notification"
	.byte		0
	.4byte		.L636
	.4byte		.L638
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L631:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L643:
	.sleb128	2
	.4byte		.L640-.L497
	.byte		"Mcl_DmaDisableNotification"
	.byte		0
	.4byte		.L508
	.uleb128	1416
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L641
	.4byte		.L642
	.sleb128	3
	.4byte		.L508
	.uleb128	1416
	.uleb128	22
	.byte		"ChannelNumber"
	.byte		0
	.4byte		.L529
	.4byte		.L644
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L640:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L649:
	.sleb128	2
	.4byte		.L646-.L497
	.byte		"Mcl_DmaAcknowledgeInterrupt"
	.byte		0
	.4byte		.L508
	.uleb128	1467
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L647
	.4byte		.L648
	.sleb128	3
	.4byte		.L508
	.uleb128	1467
	.uleb128	22
	.byte		"ChannelNumber"
	.byte		0
	.4byte		.L529
	.4byte		.L650
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L646:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L655:
	.sleb128	2
	.4byte		.L652-.L497
	.byte		"Mcl_Notification"
	.byte		0
	.4byte		.L508
	.uleb128	1526
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L653
	.4byte		.L654
	.sleb128	3
	.4byte		.L508
	.uleb128	1526
	.uleb128	22
	.byte		"Channel"
	.byte		0
	.4byte		.L529
	.4byte		.L656
.L657:
	.sleb128	5
	.4byte		.L508
	.uleb128	1531
	.uleb128	36
	.byte		"u8LogicChannel"
	.byte		0
	.4byte		.L530
	.4byte		.L658
.L659:
	.sleb128	5
	.4byte		.L508
	.uleb128	1532
	.uleb128	36
	.byte		"pfNotify"
	.byte		0
	.4byte		.L660
	.4byte		.L664
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L652:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L669:
	.sleb128	2
	.4byte		.L666-.L497
	.byte		"Mcl_ErrorNotification"
	.byte		0
	.4byte		.L508
	.uleb128	1580
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L667
	.4byte		.L668
	.sleb128	3
	.4byte		.L508
	.uleb128	1580
	.uleb128	22
	.byte		"DmaHwInstance"
	.byte		0
	.4byte		.L670
	.4byte		.L671
	.sleb128	3
	.4byte		.L508
	.uleb128	1580
	.uleb128	22
	.byte		"Error"
	.byte		0
	.4byte		.L672
	.4byte		.L674
.L675:
	.sleb128	5
	.4byte		.L508
	.uleb128	1582
	.uleb128	42
	.byte		"pfNotify"
	.byte		0
	.4byte		.L676
	.4byte		.L680
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L666:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L685:
	.sleb128	4
	.4byte		.L682-.L497
	.byte		"Mcl_DmaGetChannelTcdAddress"
	.byte		0
	.4byte		.L508
	.uleb128	1608
	.uleb128	32
	.4byte		.L552
	.byte		0x1
	.byte		0x1
	.4byte		.L683
	.4byte		.L684
	.sleb128	3
	.4byte		.L508
	.uleb128	1608
	.uleb128	32
	.byte		"ChannelNumber"
	.byte		0
	.4byte		.L529
	.4byte		.L686
.L687:
	.sleb128	5
	.4byte		.L508
	.uleb128	1611
	.uleb128	35
	.byte		"returnValue"
	.byte		0
	.4byte		.L552
	.4byte		.L688
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L682:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L693:
	.sleb128	2
	.4byte		.L690-.L497
	.byte		"Mcl_DmaTcdSetSaddr"
	.byte		0
	.4byte		.L508
	.uleb128	1648
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L691
	.4byte		.L692
	.sleb128	3
	.4byte		.L508
	.uleb128	1648
	.uleb128	22
	.byte		"pTcdAddress"
	.byte		0
	.4byte		.L551
	.4byte		.L694
	.sleb128	3
	.4byte		.L508
	.uleb128	1648
	.uleb128	22
	.byte		"u32Saddr"
	.byte		0
	.4byte		.L553
	.4byte		.L695
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L690:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L700:
	.sleb128	2
	.4byte		.L697-.L497
	.byte		"Mcl_DmaTcdSetSoff"
	.byte		0
	.4byte		.L508
	.uleb128	1682
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L698
	.4byte		.L699
	.sleb128	3
	.4byte		.L508
	.uleb128	1682
	.uleb128	22
	.byte		"pTcdAddress"
	.byte		0
	.4byte		.L551
	.4byte		.L701
	.sleb128	3
	.4byte		.L508
	.uleb128	1682
	.uleb128	22
	.byte		"s16Soff"
	.byte		0
	.4byte		.L702
	.4byte		.L704
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L697:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L709:
	.sleb128	2
	.4byte		.L706-.L497
	.byte		"Mcl_DmaTcdSetDlast"
	.byte		0
	.4byte		.L508
	.uleb128	1717
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L707
	.4byte		.L708
	.sleb128	3
	.4byte		.L508
	.uleb128	1717
	.uleb128	22
	.byte		"pTcdAddress"
	.byte		0
	.4byte		.L551
	.4byte		.L710
	.sleb128	3
	.4byte		.L508
	.uleb128	1717
	.uleb128	22
	.byte		"s32Dlast"
	.byte		0
	.4byte		.L711
	.4byte		.L713
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L706:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L718:
	.sleb128	2
	.4byte		.L715-.L497
	.byte		"Mcl_DmaTcdSetSga"
	.byte		0
	.4byte		.L508
	.uleb128	1751
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L716
	.4byte		.L717
	.sleb128	3
	.4byte		.L508
	.uleb128	1751
	.uleb128	22
	.byte		"pTcdAddress"
	.byte		0
	.4byte		.L551
	.4byte		.L719
	.sleb128	3
	.4byte		.L508
	.uleb128	1751
	.uleb128	22
	.byte		"u32Sga"
	.byte		0
	.4byte		.L553
	.4byte		.L720
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L715:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L725:
	.sleb128	2
	.4byte		.L722-.L497
	.byte		"Mcl_DmaTcdSetDaddr"
	.byte		0
	.4byte		.L508
	.uleb128	1785
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L723
	.4byte		.L724
	.sleb128	3
	.4byte		.L508
	.uleb128	1785
	.uleb128	22
	.byte		"pTcdAddress"
	.byte		0
	.4byte		.L551
	.4byte		.L726
	.sleb128	3
	.4byte		.L508
	.uleb128	1785
	.uleb128	22
	.byte		"u32Daddr"
	.byte		0
	.4byte		.L553
	.4byte		.L727
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L722:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L732:
	.sleb128	2
	.4byte		.L729-.L497
	.byte		"Mcl_DmaTcdSetDoff"
	.byte		0
	.4byte		.L508
	.uleb128	1820
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L730
	.4byte		.L731
	.sleb128	3
	.4byte		.L508
	.uleb128	1820
	.uleb128	22
	.byte		"pTcdAddress"
	.byte		0
	.4byte		.L551
	.4byte		.L733
	.sleb128	3
	.4byte		.L508
	.uleb128	1820
	.uleb128	22
	.byte		"s16Doff"
	.byte		0
	.4byte		.L702
	.4byte		.L734
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L729:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L739:
	.sleb128	2
	.4byte		.L736-.L497
	.byte		"Mcl_DmaTcdSetIterCount"
	.byte		0
	.4byte		.L508
	.uleb128	1855
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L737
	.4byte		.L738
	.sleb128	3
	.4byte		.L508
	.uleb128	1855
	.uleb128	22
	.byte		"pTcdAddress"
	.byte		0
	.4byte		.L551
	.4byte		.L740
	.sleb128	3
	.4byte		.L508
	.uleb128	1855
	.uleb128	22
	.byte		"u16Iter"
	.byte		0
	.4byte		.L741
	.4byte		.L743
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L736:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L748:
	.sleb128	2
	.4byte		.L745-.L497
	.byte		"Mcl_DmaTcdSetLinkAndIterCount"
	.byte		0
	.4byte		.L508
	.uleb128	1895
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L746
	.4byte		.L747
	.sleb128	3
	.4byte		.L508
	.uleb128	1895
	.uleb128	22
	.byte		"pTcdAddress"
	.byte		0
	.4byte		.L551
	.4byte		.L749
	.sleb128	3
	.4byte		.L508
	.uleb128	1895
	.uleb128	22
	.byte		"LinkCh"
	.byte		0
	.4byte		.L529
	.4byte		.L750
	.sleb128	3
	.4byte		.L508
	.uleb128	1895
	.uleb128	22
	.byte		"u16Iter"
	.byte		0
	.4byte		.L741
	.4byte		.L751
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L745:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L756:
	.sleb128	2
	.4byte		.L753-.L497
	.byte		"Mcl_DmaTcdSetSModuloAndSize"
	.byte		0
	.4byte		.L508
	.uleb128	1932
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L754
	.4byte		.L755
	.sleb128	3
	.4byte		.L508
	.uleb128	1932
	.uleb128	22
	.byte		"pTcdAddress"
	.byte		0
	.4byte		.L551
	.4byte		.L757
	.sleb128	3
	.4byte		.L508
	.uleb128	1932
	.uleb128	22
	.byte		"u8SModulo"
	.byte		0
	.4byte		.L530
	.4byte		.L758
	.sleb128	3
	.4byte		.L508
	.uleb128	1932
	.uleb128	22
	.byte		"SSize"
	.byte		0
	.4byte		.L759
	.4byte		.L761
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L753:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L766:
	.sleb128	2
	.4byte		.L763-.L497
	.byte		"Mcl_DmaTcdSetDModuloAndSize"
	.byte		0
	.4byte		.L508
	.uleb128	1969
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L764
	.4byte		.L765
	.sleb128	3
	.4byte		.L508
	.uleb128	1969
	.uleb128	22
	.byte		"pTcdAddress"
	.byte		0
	.4byte		.L551
	.4byte		.L767
	.sleb128	3
	.4byte		.L508
	.uleb128	1969
	.uleb128	22
	.byte		"u8DModulo"
	.byte		0
	.4byte		.L530
	.4byte		.L768
	.sleb128	3
	.4byte		.L508
	.uleb128	1969
	.uleb128	22
	.byte		"DSize"
	.byte		0
	.4byte		.L759
	.4byte		.L769
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L763:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L774:
	.sleb128	2
	.4byte		.L771-.L497
	.byte		"Mcl_DmaTcdSetMinorLoop"
	.byte		0
	.4byte		.L508
	.uleb128	2011
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L772
	.4byte		.L773
	.sleb128	3
	.4byte		.L508
	.uleb128	2011
	.uleb128	22
	.byte		"pTcdAddress"
	.byte		0
	.4byte		.L551
	.4byte		.L775
	.sleb128	3
	.4byte		.L508
	.uleb128	2011
	.uleb128	22
	.byte		"bSmloe"
	.byte		0
	.4byte		.L617
	.4byte		.L776
	.sleb128	3
	.4byte		.L508
	.uleb128	2011
	.uleb128	22
	.byte		"bDmloe"
	.byte		0
	.4byte		.L617
	.4byte		.L777
	.sleb128	3
	.4byte		.L508
	.uleb128	2011
	.uleb128	22
	.byte		"s32Mloff"
	.byte		0
	.4byte		.L711
	.4byte		.L778
	.sleb128	3
	.4byte		.L508
	.uleb128	2011
	.uleb128	22
	.byte		"u32NBytes"
	.byte		0
	.4byte		.L553
	.4byte		.L779
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L771:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L784:
	.sleb128	2
	.4byte		.L781-.L497
	.byte		"Mcl_DmaTcdSetSlast"
	.byte		0
	.4byte		.L508
	.uleb128	2056
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L782
	.4byte		.L783
	.sleb128	3
	.4byte		.L508
	.uleb128	2056
	.uleb128	22
	.byte		"pTcdAddress"
	.byte		0
	.4byte		.L551
	.4byte		.L785
	.sleb128	3
	.4byte		.L508
	.uleb128	2056
	.uleb128	22
	.byte		"s32Slast"
	.byte		0
	.4byte		.L711
	.4byte		.L786
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L781:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L791:
	.sleb128	2
	.4byte		.L788-.L497
	.byte		"Mcl_DmaTcdSetFlags"
	.byte		0
	.4byte		.L508
	.uleb128	2095
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L789
	.4byte		.L790
	.sleb128	3
	.4byte		.L508
	.uleb128	2095
	.uleb128	22
	.byte		"pTcdAddress"
	.byte		0
	.4byte		.L551
	.4byte		.L792
	.sleb128	3
	.4byte		.L508
	.uleb128	2095
	.uleb128	22
	.byte		"u8Flags"
	.byte		0
	.4byte		.L530
	.4byte		.L793
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L788:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L798:
	.sleb128	4
	.4byte		.L795-.L497
	.byte		"Mcl_DmaTcdGetFlags"
	.byte		0
	.4byte		.L508
	.uleb128	2133
	.uleb128	23
	.4byte		.L530
	.byte		0x1
	.byte		0x1
	.4byte		.L796
	.4byte		.L797
	.sleb128	3
	.4byte		.L508
	.uleb128	2133
	.uleb128	23
	.byte		"pTcdAddress"
	.byte		0
	.4byte		.L551
	.4byte		.L799
.L800:
	.sleb128	5
	.4byte		.L508
	.uleb128	2135
	.uleb128	27
	.byte		"u8returnValue"
	.byte		0
	.4byte		.L530
	.4byte		.L801
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L795:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L806:
	.sleb128	2
	.4byte		.L803-.L497
	.byte		"Mcl_DmaTcdClearIntMaj"
	.byte		0
	.4byte		.L508
	.uleb128	2169
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L804
	.4byte		.L805
	.sleb128	3
	.4byte		.L508
	.uleb128	2169
	.uleb128	22
	.byte		"pTcdAddress"
	.byte		0
	.4byte		.L551
	.4byte		.L807
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L803:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L812:
	.sleb128	2
	.4byte		.L809-.L497
	.byte		"Mcl_DmaTcdSetIntMaj"
	.byte		0
	.4byte		.L508
	.uleb128	2203
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L810
	.4byte		.L811
	.sleb128	3
	.4byte		.L508
	.uleb128	2203
	.uleb128	22
	.byte		"pTcdAddress"
	.byte		0
	.4byte		.L551
	.4byte		.L813
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L809:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L818:
	.sleb128	4
	.4byte		.L815-.L497
	.byte		"Mcl_DmaTcdGetIntMaj"
	.byte		0
	.4byte		.L508
	.uleb128	2239
	.uleb128	25
	.4byte		.L617
	.byte		0x1
	.byte		0x1
	.4byte		.L816
	.4byte		.L817
	.sleb128	3
	.4byte		.L508
	.uleb128	2239
	.uleb128	25
	.byte		"ChannelNumber"
	.byte		0
	.4byte		.L529
	.4byte		.L819
.L820:
	.sleb128	5
	.4byte		.L508
	.uleb128	2241
	.uleb128	28
	.byte		"bReturnValue"
	.byte		0
	.4byte		.L617
	.4byte		.L821
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L815:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L826:
	.sleb128	2
	.4byte		.L823-.L497
	.byte		"Mcl_DmaTcdClearDone"
	.byte		0
	.4byte		.L508
	.uleb128	2281
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L824
	.4byte		.L825
	.sleb128	3
	.4byte		.L508
	.uleb128	2281
	.uleb128	22
	.byte		"nChannel"
	.byte		0
	.4byte		.L529
	.4byte		.L827
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L823:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L832:
	.sleb128	4
	.4byte		.L829-.L497
	.byte		"Mcl_DmaTcdGetIterCount"
	.byte		0
	.4byte		.L508
	.uleb128	2313
	.uleb128	24
	.4byte		.L741
	.byte		0x1
	.byte		0x1
	.4byte		.L830
	.4byte		.L831
	.sleb128	3
	.4byte		.L508
	.uleb128	2313
	.uleb128	24
	.byte		"pTcdAddress"
	.byte		0
	.4byte		.L551
	.4byte		.L833
.L834:
	.sleb128	5
	.4byte		.L508
	.uleb128	2315
	.uleb128	28
	.byte		"u16returnValue"
	.byte		0
	.4byte		.L741
	.4byte		.L835
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L829:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L840:
	.sleb128	4
	.4byte		.L837-.L497
	.byte		"Mcl_DmaGetStartIterCount"
	.byte		0
	.4byte		.L508
	.uleb128	2350
	.uleb128	24
	.4byte		.L741
	.byte		0x1
	.byte		0x1
	.4byte		.L838
	.4byte		.L839
	.sleb128	3
	.4byte		.L508
	.uleb128	2350
	.uleb128	24
	.byte		"ChannelNumber"
	.byte		0
	.4byte		.L529
	.4byte		.L841
.L842:
	.sleb128	5
	.4byte		.L508
	.uleb128	2352
	.uleb128	29
	.byte		"u16returnValue"
	.byte		0
	.4byte		.L741
	.4byte		.L843
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L837:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L848:
	.sleb128	4
	.4byte		.L845-.L497
	.byte		"Mcl_DmaGetCrtIterCount"
	.byte		0
	.4byte		.L508
	.uleb128	2386
	.uleb128	24
	.4byte		.L741
	.byte		0x1
	.byte		0x1
	.4byte		.L846
	.4byte		.L847
	.sleb128	3
	.4byte		.L508
	.uleb128	2386
	.uleb128	24
	.byte		"ChannelNumber"
	.byte		0
	.4byte		.L529
	.4byte		.L849
.L850:
	.sleb128	5
	.4byte		.L508
	.uleb128	2388
	.uleb128	29
	.byte		"u16returnValue"
	.byte		0
	.4byte		.L741
	.4byte		.L851
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L845:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L856:
	.sleb128	4
	.4byte		.L853-.L497
	.byte		"Mcl_DmaTcdGetSaddr"
	.byte		0
	.4byte		.L508
	.uleb128	2425
	.uleb128	24
	.4byte		.L553
	.byte		0x1
	.byte		0x1
	.4byte		.L854
	.4byte		.L855
	.sleb128	3
	.4byte		.L508
	.uleb128	2425
	.uleb128	24
	.byte		"pTcdAddress"
	.byte		0
	.4byte		.L551
	.4byte		.L857
.L858:
	.sleb128	5
	.4byte		.L508
	.uleb128	2427
	.uleb128	28
	.byte		"u32returnValue"
	.byte		0
	.4byte		.L553
	.4byte		.L859
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L853:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L864:
	.sleb128	4
	.4byte		.L861-.L497
	.byte		"Mcl_DmaTcdGetDaddr"
	.byte		0
	.4byte		.L508
	.uleb128	2462
	.uleb128	24
	.4byte		.L553
	.byte		0x1
	.byte		0x1
	.4byte		.L862
	.4byte		.L863
	.sleb128	3
	.4byte		.L508
	.uleb128	2462
	.uleb128	24
	.byte		"pTcdAddress"
	.byte		0
	.4byte		.L551
	.4byte		.L865
.L866:
	.sleb128	5
	.4byte		.L508
	.uleb128	2465
	.uleb128	28
	.byte		"u32returnValue"
	.byte		0
	.4byte		.L553
	.4byte		.L867
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L861:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L872:
	.sleb128	4
	.4byte		.L869-.L497
	.byte		"Mcl_DmaGetInterruptRequest"
	.byte		0
	.4byte		.L508
	.uleb128	2500
	.uleb128	25
	.4byte		.L617
	.byte		0x1
	.byte		0x1
	.4byte		.L870
	.4byte		.L871
	.sleb128	3
	.4byte		.L508
	.uleb128	2500
	.uleb128	25
	.byte		"ChannelNumber"
	.byte		0
	.4byte		.L529
	.4byte		.L873
.L874:
	.sleb128	5
	.4byte		.L508
	.uleb128	2502
	.uleb128	28
	.byte		"bReturnValue"
	.byte		0
	.4byte		.L617
	.4byte		.L875
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L869:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L881:
	.sleb128	4
	.4byte		.L877-.L497
	.byte		"Mcl_DmaGetPhysicalChannel"
	.byte		0
	.4byte		.L508
	.uleb128	2537
	.uleb128	36
	.4byte		.L880
	.byte		0x1
	.byte		0x1
	.4byte		.L878
	.4byte		.L879
	.sleb128	3
	.4byte		.L508
	.uleb128	2537
	.uleb128	36
	.byte		"ChannelNumber"
	.byte		0
	.4byte		.L529
	.4byte		.L882
.L883:
	.sleb128	5
	.4byte		.L508
	.uleb128	2539
	.uleb128	39
	.byte		"returnChannel"
	.byte		0
	.4byte		.L880
	.4byte		.L884
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L877:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L889:
	.sleb128	2
	.4byte		.L886-.L497
	.byte		"Mcl_DmaEnableHwRequest"
	.byte		0
	.4byte		.L508
	.uleb128	2572
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L887
	.4byte		.L888
	.sleb128	3
	.4byte		.L508
	.uleb128	2572
	.uleb128	22
	.byte		"ChannelNumber"
	.byte		0
	.4byte		.L529
	.4byte		.L890
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L886:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L895:
	.sleb128	2
	.4byte		.L892-.L497
	.byte		"Mcl_DmaDisableHwRequest"
	.byte		0
	.4byte		.L508
	.uleb128	2607
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L893
	.4byte		.L894
	.sleb128	3
	.4byte		.L508
	.uleb128	2607
	.uleb128	22
	.byte		"ChannelNumber"
	.byte		0
	.4byte		.L529
	.4byte		.L896
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L892:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L901:
	.sleb128	2
	.4byte		.L898-.L497
	.byte		"Mcl_DmaUpdateIterCount"
	.byte		0
	.4byte		.L508
	.uleb128	2641
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L899
	.4byte		.L900
	.sleb128	3
	.4byte		.L508
	.uleb128	2641
	.uleb128	22
	.byte		"ChannelNumber"
	.byte		0
	.4byte		.L529
	.4byte		.L902
	.sleb128	3
	.4byte		.L508
	.uleb128	2641
	.uleb128	22
	.byte		"u16Iter"
	.byte		0
	.4byte		.L741
	.4byte		.L903
.L904:
	.sleb128	5
	.4byte		.L508
	.uleb128	2644
	.uleb128	35
	.byte		"tcd_address"
	.byte		0
	.4byte		.L552
	.4byte		.L905
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L898:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L910:
	.sleb128	2
	.4byte		.L907-.L497
	.byte		"Mcl_DmaUpdateDestAddress"
	.byte		0
	.4byte		.L508
	.uleb128	2685
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L908
	.4byte		.L909
	.sleb128	3
	.4byte		.L508
	.uleb128	2685
	.uleb128	22
	.byte		"ChannelNumber"
	.byte		0
	.4byte		.L529
	.4byte		.L911
	.sleb128	3
	.4byte		.L508
	.uleb128	2685
	.uleb128	22
	.byte		"daddr"
	.byte		0
	.4byte		.L553
	.4byte		.L912
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L907:
	.section	.debug_info,,n
.L913:
	.sleb128	6
	.4byte		.L914
	.uleb128	259
	.uleb128	59
	.byte		"Mcl_pConfig"
	.byte		0
	.4byte		.L510
	.sleb128	5
	.byte		0x3
	.4byte		Mcl_pConfig
	.section	.debug_info,,n
	.section	.debug_info,,n
.L513:
	.sleb128	7
	.4byte		.L915
	.uleb128	575
	.uleb128	1
	.4byte		.L916-.L2
	.uleb128	4
	.section	.debug_info,,n
.L436:
	.sleb128	8
	.byte		"pMclDmaConfig"
	.byte		0
	.4byte		.L917
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L916:
.L920:
	.sleb128	7
	.4byte		.L915
	.uleb128	575
	.uleb128	1
	.4byte		.L921-.L2
	.uleb128	76
.L432:
	.sleb128	8
	.byte		"MclDmaNumchannels"
	.byte		0
	.4byte		.L922
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L433:
	.sleb128	8
	.byte		"pMclDmaChannelsConfig"
	.byte		0
	.4byte		.L923
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L434:
	.sleb128	8
	.byte		"pMclDmaHwIpsConfig"
	.byte		0
	.4byte		.L930
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L435:
	.sleb128	8
	.byte		"MclDmaHwToLogicChannelMap"
	.byte		0
	.4byte		.L934
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L921:
.L929:
	.sleb128	7
	.4byte		.L915
	.uleb128	575
	.uleb128	1
	.4byte		.L936-.L2
	.uleb128	8
.L430:
	.sleb128	8
	.byte		"Mcl_ChannelIndex"
	.byte		0
	.4byte		.L922
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L431:
	.sleb128	8
	.byte		"pfDmaChannelNotification"
	.byte		0
	.4byte		.L937
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L936:
.L933:
	.sleb128	7
	.4byte		.L915
	.uleb128	575
	.uleb128	1
	.4byte		.L938-.L2
	.uleb128	8
.L428:
	.sleb128	8
	.byte		"pDma_Config"
	.byte		0
	.4byte		.L939
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L429:
	.sleb128	8
	.byte		"pDmaMux_Config"
	.byte		0
	.4byte		.L943
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L938:
.L946:
	.sleb128	7
	.4byte		.L915
	.uleb128	575
	.uleb128	1
	.4byte		.L947-.L2
	.uleb128	8
.L426:
	.sleb128	8
	.byte		"NumChannels"
	.byte		0
	.4byte		.L948
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L427:
	.sleb128	8
	.byte		"pDmaMuxChannelsConfig"
	.byte		0
	.4byte		.L950
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L947:
.L956:
	.sleb128	7
	.4byte		.L915
	.uleb128	575
	.uleb128	1
	.4byte		.L957-.L2
	.uleb128	3
.L423:
	.sleb128	8
	.byte		"DmaMux_Channel"
	.byte		0
	.4byte		.L948
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L424:
	.sleb128	8
	.byte		"DmaMux_Instance"
	.byte		0
	.4byte		.L958
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L425:
	.sleb128	8
	.byte		"DmaMux_ChannelConfig"
	.byte		0
	.4byte		.L948
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L957:
.L536:
	.sleb128	7
	.4byte		.L915
	.uleb128	575
	.uleb128	1
	.4byte		.L960-.L2
	.uleb128	40
.L413:
	.sleb128	8
	.byte		"u32saddr"
	.byte		0
	.4byte		.L553
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L414:
	.sleb128	8
	.byte		"u32daddr"
	.byte		0
	.4byte		.L553
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L415:
	.sleb128	8
	.byte		"u32ssize"
	.byte		0
	.4byte		.L553
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L416:
	.sleb128	8
	.byte		"u32dsize"
	.byte		0
	.4byte		.L553
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L417:
	.sleb128	8
	.byte		"u32soff"
	.byte		0
	.4byte		.L553
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L418:
	.sleb128	8
	.byte		"u32doff"
	.byte		0
	.4byte		.L553
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L419:
	.sleb128	8
	.byte		"u32smod"
	.byte		0
	.4byte		.L553
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L420:
	.sleb128	8
	.byte		"u32dmod"
	.byte		0
	.4byte		.L553
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L421:
	.sleb128	8
	.byte		"u32num_bytes"
	.byte		0
	.4byte		.L553
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L422:
	.sleb128	8
	.byte		"u32iter"
	.byte		0
	.4byte		.L553
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
	.sleb128	0
.L960:
.L942:
	.sleb128	7
	.4byte		.L915
	.uleb128	575
	.uleb128	1
	.4byte		.L961-.L2
	.uleb128	12
.L410:
	.sleb128	8
	.byte		"NumChannels"
	.byte		0
	.4byte		.L962
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L411:
	.sleb128	8
	.byte		"pDmaConfigInstance"
	.byte		0
	.4byte		.L963
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L412:
	.sleb128	8
	.byte		"pChannelsConfig"
	.byte		0
	.4byte		.L970
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L961:
.L969:
	.sleb128	7
	.4byte		.L915
	.uleb128	575
	.uleb128	1
	.4byte		.L977-.L2
	.uleb128	12
.L407:
	.sleb128	8
	.byte		"pDmaControl"
	.byte		0
	.4byte		.L978
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L408:
	.sleb128	8
	.byte		"pDmaUsed"
	.byte		0
	.4byte		.L980
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L409:
	.sleb128	8
	.byte		"pfDmaInstanceErrNotif"
	.byte		0
	.4byte		.L982
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L977:
.L976:
	.sleb128	7
	.4byte		.L915
	.uleb128	575
	.uleb128	1
	.4byte		.L983-.L2
	.uleb128	3
.L404:
	.sleb128	8
	.byte		"Dma_ChannelPriority"
	.byte		0
	.4byte		.L984
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L405:
	.sleb128	8
	.byte		"Dma_Channel"
	.byte		0
	.4byte		.L962
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L406:
	.sleb128	8
	.byte		"Dma_MasterId"
	.byte		0
	.4byte		.L962
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L983:
.L522:
	.sleb128	7
	.4byte		.L985
	.uleb128	5558
	.uleb128	5
	.4byte		.L986-.L2
	.uleb128	8
.L228:
	.sleb128	8
	.byte		"vendorID"
	.byte		0
	.4byte		.L741
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L229:
	.sleb128	8
	.byte		"moduleID"
	.byte		0
	.4byte		.L741
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L230:
	.sleb128	8
	.byte		"sw_major_version"
	.byte		0
	.4byte		.L530
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L231:
	.sleb128	8
	.byte		"sw_minor_version"
	.byte		0
	.4byte		.L530
	.sleb128	2
	.byte		0x23
	.uleb128	5
	.byte		0x1
.L232:
	.sleb128	8
	.byte		"sw_patch_version"
	.byte		0
	.4byte		.L530
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
	.sleb128	0
.L986:
	.section	.debug_info,,n
.L673:
	.sleb128	9
	.4byte		.L915
	.uleb128	561
	.uleb128	1
	.4byte		.L987-.L2
	.uleb128	4
	.section	.debug_info,,n
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
.L987:
.L760:
	.sleb128	9
	.4byte		.L915
	.uleb128	528
	.uleb128	1
	.4byte		.L988-.L2
	.uleb128	4
	.sleb128	10
	.byte		"DMA_SIZE_1BYTE"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"DMA_SIZE_2BYTES"
	.byte		0
	.sleb128	1
	.sleb128	10
	.byte		"DMA_SIZE_4BYTES"
	.byte		0
	.sleb128	2
	.sleb128	10
	.byte		"DMA_SIZE_16BYTES"
	.byte		0
	.sleb128	4
	.sleb128	10
	.byte		"DMA_SIZE_32BYTES"
	.byte		0
	.sleb128	5
	.sleb128	0
.L988:
.L637:
	.sleb128	9
	.4byte		.L915
	.uleb128	517
	.uleb128	1
	.4byte		.L989-.L2
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
.L989:
	.section	.debug_info,,n
.L512:
	.sleb128	11
	.byte		"Mcl_ConfigType"
	.byte		0
	.4byte		.L513
	.section	.debug_info,,n
.L511:
	.sleb128	12
	.4byte		.L512
	.section	.debug_info,,n
.L510:
	.sleb128	13
	.4byte		.L511
.L521:
	.sleb128	11
	.byte		"Std_VersionInfoType"
	.byte		0
	.4byte		.L522
.L520:
	.sleb128	13
	.4byte		.L521
	.section	.debug_info,,n
.L531:
	.sleb128	14
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L530:
	.sleb128	11
	.byte		"uint8"
	.byte		0
	.4byte		.L531
.L529:
	.sleb128	11
	.byte		"Mcl_ChannelType"
	.byte		0
	.4byte		.L530
.L535:
	.sleb128	11
	.byte		"Mcl_DmaTcdAttributesType"
	.byte		0
	.4byte		.L536
.L534:
	.sleb128	12
	.4byte		.L535
.L533:
	.sleb128	13
	.4byte		.L534
.L554:
	.sleb128	14
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L553:
	.sleb128	11
	.byte		"uint32"
	.byte		0
	.4byte		.L554
.L552:
	.sleb128	11
	.byte		"Mcl_DmaTcdType"
	.byte		0
	.4byte		.L553
.L551:
	.sleb128	13
	.4byte		.L552
.L605:
	.sleb128	11
	.byte		"Mcl_DmaPriorityType"
	.byte		0
	.4byte		.L530
.L617:
	.sleb128	11
	.byte		"boolean"
	.byte		0
	.4byte		.L531
.L636:
	.sleb128	11
	.byte		"Mcl_DmaTransferNotifType"
	.byte		0
	.4byte		.L637
	.section	.debug_info,,n
.L662:
	.sleb128	15
	.4byte		.L663
	.byte		0x1
	.sleb128	0
.L663:
.L661:
	.sleb128	13
	.4byte		.L662
.L660:
	.sleb128	11
	.byte		"Mcl_NotifyType"
	.byte		0
	.4byte		.L661
.L670:
	.sleb128	11
	.byte		"Mcl_DmaInstanceType"
	.byte		0
	.4byte		.L530
.L672:
	.sleb128	11
	.byte		"Mcl_DmaChannelErrorStatusType"
	.byte		0
	.4byte		.L673
.L678:
	.sleb128	15
	.4byte		.L679
	.byte		0x1
	.section	.debug_info,,n
	.sleb128	16
	.4byte		.L672
	.sleb128	0
.L679:
.L677:
	.sleb128	13
	.4byte		.L678
.L676:
	.sleb128	11
	.byte		"Mcl_DmaErrNotifyType"
	.byte		0
	.4byte		.L677
.L703:
	.sleb128	14
	.byte		"short"
	.byte		0
	.byte		0x5
	.byte		0x2
.L702:
	.sleb128	11
	.byte		"sint16"
	.byte		0
	.4byte		.L703
.L712:
	.sleb128	14
	.byte		"long"
	.byte		0
	.byte		0x5
	.byte		0x4
.L711:
	.sleb128	11
	.byte		"sint32"
	.byte		0
	.4byte		.L712
.L742:
	.sleb128	14
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L741:
	.sleb128	11
	.byte		"uint16"
	.byte		0
	.4byte		.L742
.L759:
	.sleb128	11
	.byte		"Mcl_DmaSizeType"
	.byte		0
	.4byte		.L760
.L880:
	.sleb128	11
	.byte		"Mcl_DmaChannelType"
	.byte		0
	.4byte		.L530
.L919:
	.sleb128	11
	.byte		"Mcl_DmaInitConfigType"
	.byte		0
	.4byte		.L920
.L918:
	.sleb128	12
	.4byte		.L919
.L917:
	.sleb128	13
	.4byte		.L918
.L922:
	.sleb128	12
	.4byte		.L529
.L928:
	.sleb128	11
	.byte		"Mcl_ChannelConfigType"
	.byte		0
	.4byte		.L929
.L927:
	.sleb128	12
	.4byte		.L928
	.section	.debug_info,,n
.L925:
	.sleb128	17
	.4byte		.L926-.L2
	.4byte		.L927
	.section	.debug_info,,n
	.sleb128	18
	.sleb128	0
.L926:
.L924:
	.sleb128	13
	.4byte		.L925
.L923:
	.sleb128	12
	.4byte		.L924
.L932:
	.sleb128	11
	.byte		"Mcl_DmaHwIpsConfigType"
	.byte		0
	.4byte		.L933
.L931:
	.sleb128	12
	.4byte		.L932
.L930:
	.sleb128	13
	.4byte		.L931
.L934:
	.sleb128	17
	.4byte		.L935-.L2
	.4byte		.L922
	.section	.debug_info,,n
	.sleb128	19
	.uleb128	63
	.sleb128	0
.L935:
.L937:
	.sleb128	12
	.4byte		.L660
.L941:
	.sleb128	11
	.byte		"Mcl_DmaConfigType"
	.byte		0
	.4byte		.L942
.L940:
	.sleb128	12
	.4byte		.L941
.L939:
	.sleb128	13
	.4byte		.L940
.L945:
	.sleb128	11
	.byte		"Mcl_DmaMuxConfigType"
	.byte		0
	.4byte		.L946
.L944:
	.sleb128	12
	.4byte		.L945
.L943:
	.sleb128	13
	.4byte		.L944
.L949:
	.sleb128	11
	.byte		"Mcl_DmaMuxChannelType"
	.byte		0
	.4byte		.L530
.L948:
	.sleb128	12
	.4byte		.L949
.L955:
	.sleb128	11
	.byte		"Mcl_DmaMuxChannelConfigType"
	.byte		0
	.4byte		.L956
.L954:
	.sleb128	12
	.4byte		.L955
.L952:
	.sleb128	17
	.4byte		.L953-.L2
	.4byte		.L954
	.sleb128	18
	.sleb128	0
.L953:
.L951:
	.sleb128	13
	.4byte		.L952
.L950:
	.sleb128	12
	.4byte		.L951
.L959:
	.sleb128	11
	.byte		"Mcl_DmaMuxInstanceType"
	.byte		0
	.4byte		.L530
.L958:
	.sleb128	12
	.4byte		.L959
.L962:
	.sleb128	12
	.4byte		.L880
.L968:
	.sleb128	11
	.byte		"Mcl_DmaConfigInstanceType"
	.byte		0
	.4byte		.L969
.L967:
	.sleb128	12
	.4byte		.L968
.L965:
	.sleb128	17
	.4byte		.L966-.L2
	.4byte		.L967
	.sleb128	18
	.sleb128	0
.L966:
.L964:
	.sleb128	13
	.4byte		.L965
.L963:
	.sleb128	12
	.4byte		.L964
.L975:
	.sleb128	11
	.byte		"Mcl_DmaChannelConfigType"
	.byte		0
	.4byte		.L976
.L974:
	.sleb128	12
	.4byte		.L975
.L972:
	.sleb128	17
	.4byte		.L973-.L2
	.4byte		.L974
	.sleb128	18
	.sleb128	0
.L973:
.L971:
	.sleb128	13
	.4byte		.L972
.L970:
	.sleb128	12
	.4byte		.L971
.L979:
	.sleb128	11
	.byte		"Mcl_DmaControlType"
	.byte		0
	.4byte		.L553
.L978:
	.sleb128	12
	.4byte		.L979
.L981:
	.sleb128	11
	.byte		"Mcl_DmaUsedType"
	.byte		0
	.4byte		.L530
.L980:
	.sleb128	12
	.4byte		.L981
.L982:
	.sleb128	12
	.4byte		.L676
.L984:
	.sleb128	12
	.4byte		.L605
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L502:
	.sleb128	0
.L498:

	.section	.debug_loc,,n
	.align	0
.L514:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locend
.L523:
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),3
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),4
	.d2locend
.L532:
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),3
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),0
	.d2locend
.L537:
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo11),4
	.d2locend
.L543:
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo13),3
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo15),0
	.d2locend
.L544:
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo14),4
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo15),7
	.d2locend
.L545:
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo17),5
	.d2locend
.L555:
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo19),3
	.d2locend
.L556:
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo19),4
	.d2locend
.L562:
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo21),3
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo23),6
	.d2locend
.L563:
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo22),4
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo25),0
	.d2locend
.L564:
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo26),5
	.d2locend
.L570:
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo28),3
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo30),0
	.d2locend
.L571:
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo31),4
	.d2locend
.L572:
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo32),5
	.d2locend
.L578:
	.d2locreg	%offsetof(.Llo33), %offsetof(.Llo34),3
	.d2locend
.L579:
	.d2locreg	%offsetof(.Llo33), %offsetof(.Llo34),4
	.d2locend
.L580:
	.d2locreg	%offsetof(.Llo33), %offsetof(.Llo34),5
	.d2locend
.L586:
	.d2locreg	%offsetof(.Llo35), %offsetof(.Llo36),3
	.d2locreg	%offsetof(.Llo37), %offsetof(.Llo38),0
	.d2locend
.L587:
	.d2locreg	%offsetof(.Llo35), %offsetof(.Llo37),4
	.d2locreg	%offsetof(.Llo39), %offsetof(.Llo38),8
	.d2locend
.L588:
	.d2locreg	%offsetof(.Llo35), %offsetof(.Llo40),5
	.d2locend
.L589:
	.d2locreg	%offsetof(.Llo35), %offsetof(.Llo41),6
	.d2locend
.L595:
	.d2locreg	%offsetof(.Llo42), %offsetof(.Llo43),3
	.d2locreg	%offsetof(.Llo44), %offsetof(.Llo45),0
	.d2locend
.L596:
	.d2locreg	%offsetof(.Llo42), %offsetof(.Llo46),4
	.d2locend
.L597:
	.d2locreg	%offsetof(.Llo42), %offsetof(.Llo47),5
	.d2locend
.L598:
	.d2locreg	%offsetof(.Llo42), %offsetof(.Llo48),6
	.d2locend
.L604:
	.d2locreg	%offsetof(.Llo49), %offsetof(.Llo50),3
	.d2locreg	%offsetof(.Llo51), %offsetof(.Llo52),0
	.d2locend
.L606:
	.d2locreg	%offsetof(.Llo49), %offsetof(.Llo53),4
	.d2locend
.L612:
	.d2locreg	%offsetof(.Llo54), %offsetof(.Llo55),3
	.d2locreg	%offsetof(.Llo56), %offsetof(.Llo57),4
	.d2locend
.L619:
	.d2locreg	%offsetof(.Llo58), %offsetof(.Llo59),3
	.d2locreg	%offsetof(.Llo60), %offsetof(.Llo61),4
	.d2locend
.L621:
	.d2locreg	%offsetof(.Llo62), %offsetof(.Llo63),0
	.d2locreg	%offsetof(.Llo59), %offsetof(.Llo60),3
	.d2locreg	%offsetof(.Llo64), %offsetof(.Llo65),3
	.d2locend
.L627:
	.d2locreg	%offsetof(.Llo66), %offsetof(.Llo67),3
	.d2locreg	%offsetof(.Llo68), %offsetof(.Llo69),4
	.d2locend
.L629:
	.d2locreg	%offsetof(.Llo70), %offsetof(.Llo71),0
	.d2locreg	%offsetof(.Llo67), %offsetof(.Llo68),3
	.d2locreg	%offsetof(.Llo72), %offsetof(.Llo73),3
	.d2locend
.L635:
	.d2locreg	%offsetof(.Llo74), %offsetof(.Llo75),3
	.d2locreg	%offsetof(.Llo76), %offsetof(.Llo77),0
	.d2locend
.L638:
	.d2locreg	%offsetof(.Llo74), %offsetof(.Llo78),4
	.d2locend
.L644:
	.d2locreg	%offsetof(.Llo79), %offsetof(.Llo80),3
	.d2locreg	%offsetof(.Llo81), %offsetof(.Llo82),4
	.d2locend
.L650:
	.d2locreg	%offsetof(.Llo83), %offsetof(.Llo84),3
	.d2locreg	%offsetof(.Llo85), %offsetof(.Llo86),4
	.d2locend
.L656:
	.d2locreg	%offsetof(.Llo87), %offsetof(.Llo88),3
	.d2locreg	%offsetof(.Llo89), %offsetof(.Llo90),0
	.d2locend
.L658:
	.d2locreg	%offsetof(.Llo91), %offsetof(.Llo90),0
	.d2locend
.L664:
	.d2locreg	%offsetof(.Llo91), %offsetof(.Llo90),0
	.d2locend
.L671:
	.d2locreg	%offsetof(.Llo92), %offsetof(.Llo93),3
	.d2locreg	%offsetof(.Llo94), %offsetof(.Llo95),0
	.d2locend
.L674:
	.d2locreg	%offsetof(.Llo92), %offsetof(.Llo96),4
	.d2locend
.L680:
	.d2locreg	%offsetof(.Llo97), %offsetof(.Llo98),0
	.d2locreg	%offsetof(.Llo99), %offsetof(.Llo96),0
	.d2locend
.L686:
	.d2locreg	%offsetof(.Llo100), %offsetof(.Llo101),3
	.d2locreg	%offsetof(.Llo102), %offsetof(.Llo103),4
	.d2locend
.L688:
	.d2locreg	%offsetof(.Llo104), %offsetof(.Llo105),0
	.d2locreg	%offsetof(.Llo106), %offsetof(.Llo107),3
	.d2locend
.L694:
	.d2locreg	%offsetof(.Llo108), %offsetof(.Llo109),3
	.d2locend
.L695:
	.d2locreg	%offsetof(.Llo108), %offsetof(.Llo109),4
	.d2locend
.L701:
	.d2locreg	%offsetof(.Llo110), %offsetof(.Llo111),3
	.d2locend
.L704:
	.d2locreg	%offsetof(.Llo110), %offsetof(.Llo112),4
	.d2locend
.L710:
	.d2locreg	%offsetof(.Llo113), %offsetof(.Llo114),3
	.d2locend
.L713:
	.d2locreg	%offsetof(.Llo113), %offsetof(.Llo114),4
	.d2locend
.L719:
	.d2locreg	%offsetof(.Llo115), %offsetof(.Llo116),3
	.d2locend
.L720:
	.d2locreg	%offsetof(.Llo115), %offsetof(.Llo116),4
	.d2locend
.L726:
	.d2locreg	%offsetof(.Llo117), %offsetof(.Llo118),3
	.d2locend
.L727:
	.d2locreg	%offsetof(.Llo117), %offsetof(.Llo118),4
	.d2locend
.L733:
	.d2locreg	%offsetof(.Llo119), %offsetof(.Llo120),3
	.d2locend
.L734:
	.d2locreg	%offsetof(.Llo119), %offsetof(.Llo121),4
	.d2locend
.L740:
	.d2locreg	%offsetof(.Llo122), %offsetof(.Llo123),3
	.d2locreg	%offsetof(.Llo124), %offsetof(.Llo125),31
	.d2locend
.L743:
	.d2locreg	%offsetof(.Llo122), %offsetof(.Llo124),4
	.d2locreg	%offsetof(.Llo126), %offsetof(.Llo125),30
	.d2locend
.L749:
	.d2locreg	%offsetof(.Llo127), %offsetof(.Llo128),3
	.d2locreg	%offsetof(.Llo129), %offsetof(.Llo130),0
	.d2locend
.L750:
	.d2locreg	%offsetof(.Llo127), %offsetof(.Llo131),4
	.d2locend
.L751:
	.d2locreg	%offsetof(.Llo127), %offsetof(.Llo132),5
	.d2locend
.L757:
	.d2locreg	%offsetof(.Llo133), %offsetof(.Llo134),3
	.d2locend
.L758:
	.d2locreg	%offsetof(.Llo133), %offsetof(.Llo135),4
	.d2locend
.L761:
	.d2locreg	%offsetof(.Llo133), %offsetof(.Llo134),5
	.d2locend
.L767:
	.d2locreg	%offsetof(.Llo136), %offsetof(.Llo137),3
	.d2locend
.L768:
	.d2locreg	%offsetof(.Llo136), %offsetof(.Llo138),4
	.d2locend
.L769:
	.d2locreg	%offsetof(.Llo136), %offsetof(.Llo137),5
	.d2locend
.L775:
	.d2locreg	%offsetof(.Llo139), %offsetof(.Llo140),3
	.d2locreg	%offsetof(.Llo141), %offsetof(.Llo142),3
	.d2locend
.L776:
	.d2locreg	%offsetof(.Llo139), %offsetof(.Llo143),4
	.d2locreg	%offsetof(.Llo144), %offsetof(.Llo145),4
	.d2locend
.L777:
	.d2locreg	%offsetof(.Llo139), %offsetof(.Llo143),5
	.d2locreg	%offsetof(.Llo145), %offsetof(.Llo141),5
	.d2locend
.L778:
	.d2locreg	%offsetof(.Llo139), %offsetof(.Llo143),6
	.d2locreg	%offsetof(.Llo142), %offsetof(.Llo146),6
	.d2locend
.L779:
	.d2locreg	%offsetof(.Llo139), %offsetof(.Llo147),7
	.d2locreg	%offsetof(.Llo146), %offsetof(.Llo148),7
	.d2locend
.L785:
	.d2locreg	%offsetof(.Llo149), %offsetof(.Llo150),3
	.d2locend
.L786:
	.d2locreg	%offsetof(.Llo149), %offsetof(.Llo150),4
	.d2locend
.L792:
	.d2locreg	%offsetof(.Llo151), %offsetof(.Llo152),3
	.d2locend
.L793:
	.d2locreg	%offsetof(.Llo151), %offsetof(.Llo153),4
	.d2locend
.L799:
	.d2locreg	%offsetof(.Llo154), %offsetof(.Llo155),3
	.d2locend
.L801:
	.d2locreg	%offsetof(.Llo156), %offsetof(.Llo157),0
	.d2locreg	%offsetof(.Llo155), %offsetof(.Llo158),3
	.d2locend
.L807:
	.d2locreg	%offsetof(.Llo159), %offsetof(.Llo160),3
	.d2locend
.L813:
	.d2locreg	%offsetof(.Llo161), %offsetof(.Llo162),3
	.d2locend
.L819:
	.d2locreg	%offsetof(.Llo163), %offsetof(.Llo164),3
	.d2locreg	%offsetof(.Llo165), %offsetof(.Llo166),4
	.d2locend
.L821:
	.d2locreg	%offsetof(.Llo167), %offsetof(.Llo168),0
	.d2locreg	%offsetof(.Llo164), %offsetof(.Llo165),3
	.d2locreg	%offsetof(.Llo169), %offsetof(.Llo170),3
	.d2locend
.L827:
	.d2locreg	%offsetof(.Llo171), %offsetof(.Llo172),3
	.d2locreg	%offsetof(.Llo173), %offsetof(.Llo174),4
	.d2locend
.L833:
	.d2locreg	%offsetof(.Llo175), %offsetof(.Llo176),3
	.d2locend
.L835:
	.d2locreg	%offsetof(.Llo177), %offsetof(.Llo178),0
	.d2locreg	%offsetof(.Llo176), %offsetof(.Llo179),3
	.d2locend
.L841:
	.d2locreg	%offsetof(.Llo180), %offsetof(.Llo181),3
	.d2locreg	%offsetof(.Llo182), %offsetof(.Llo183),0
	.d2locend
.L843:
	.d2locreg	%offsetof(.Llo184), %offsetof(.Llo185),3
	.d2locreg	%offsetof(.Llo183), %offsetof(.Llo186),3
	.d2locend
.L849:
	.d2locreg	%offsetof(.Llo187), %offsetof(.Llo188),3
	.d2locreg	%offsetof(.Llo189), %offsetof(.Llo190),0
	.d2locend
.L851:
	.d2locreg	%offsetof(.Llo191), %offsetof(.Llo192),3
	.d2locreg	%offsetof(.Llo190), %offsetof(.Llo193),3
	.d2locend
.L857:
	.d2locreg	%offsetof(.Llo194), %offsetof(.Llo195),3
	.d2locend
.L859:
	.d2locreg	%offsetof(.Llo196), %offsetof(.Llo197),0
	.d2locreg	%offsetof(.Llo195), %offsetof(.Llo198),3
	.d2locend
.L865:
	.d2locreg	%offsetof(.Llo199), %offsetof(.Llo200),3
	.d2locend
.L867:
	.d2locreg	%offsetof(.Llo201), %offsetof(.Llo202),0
	.d2locreg	%offsetof(.Llo200), %offsetof(.Llo203),3
	.d2locend
.L873:
	.d2locreg	%offsetof(.Llo204), %offsetof(.Llo205),3
	.d2locreg	%offsetof(.Llo206), %offsetof(.Llo207),4
	.d2locend
.L875:
	.d2locreg	%offsetof(.Llo208), %offsetof(.Llo209),0
	.d2locreg	%offsetof(.Llo205), %offsetof(.Llo206),3
	.d2locreg	%offsetof(.Llo210), %offsetof(.Llo211),3
	.d2locend
.L882:
	.d2locreg	%offsetof(.Llo212), %offsetof(.Llo213),3
	.d2locreg	%offsetof(.Llo214), %offsetof(.Llo215),4
	.d2locend
.L884:
	.d2locreg	%offsetof(.Llo216), %offsetof(.Llo217),3
	.d2locend
.L890:
	.d2locreg	%offsetof(.Llo218), %offsetof(.Llo219),3
	.d2locreg	%offsetof(.Llo220), %offsetof(.Llo221),4
	.d2locend
.L896:
	.d2locreg	%offsetof(.Llo222), %offsetof(.Llo223),3
	.d2locreg	%offsetof(.Llo224), %offsetof(.Llo225),4
	.d2locend
.L902:
	.d2locreg	%offsetof(.Llo226), %offsetof(.Llo227),3
	.d2locreg	%offsetof(.Llo228), %offsetof(.Llo229),0
	.d2locend
.L903:
	.d2locreg	%offsetof(.Llo226), %offsetof(.Llo228),4
	.d2locreg	%offsetof(.Llo230), %offsetof(.Llo231),30
	.d2locend
.L905:
	.d2locreg	%offsetof(.Llo229), %offsetof(.Llo232),3
	.d2locreg	%offsetof(.Llo233), %offsetof(.Llo231),31
	.d2locend
.L911:
	.d2locreg	%offsetof(.Llo234), %offsetof(.Llo235),3
	.d2locreg	%offsetof(.Llo236), %offsetof(.Llo237),0
	.d2locend
.L912:
	.d2locreg	%offsetof(.Llo234), %offsetof(.Llo238),4
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "Mcl_DmaUpdateDestAddress"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Mcl_IPW_DmaUpdateDestAddress"
	.wrcm.end
	.wrcm.nelem "Mcl_DmaUpdateIterCount"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Mcl_IPW_DmaGetChannelTcdAddress","Mcl_IPW_DmaSetBiter","Mcl_IPW_DmaSetCiter"
	.wrcm.end
	.wrcm.nelem "Mcl_DmaDisableHwRequest"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Mcl_IPW_DmaDisableHwRequest"
	.wrcm.end
	.wrcm.nelem "Mcl_DmaEnableHwRequest"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Mcl_IPW_DmaEnableHwRequest"
	.wrcm.end
	.wrcm.nelem "Mcl_DmaGetPhysicalChannel"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Mcl_DmaGetInterruptRequest"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Mcl_IPW_DmaGetInterruptRequest"
	.wrcm.end
	.wrcm.nelem "Mcl_DmaTcdGetDaddr"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Mcl_IPW_DmaGetDaddr"
	.wrcm.end
	.wrcm.nelem "Mcl_DmaTcdGetSaddr"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Mcl_IPW_DmaGetSaddr"
	.wrcm.end
	.wrcm.nelem "Mcl_DmaGetCrtIterCount"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Mcl_IPW_DmaGetChCiter"
	.wrcm.end
	.wrcm.nelem "Mcl_DmaGetStartIterCount"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Mcl_IPW_DmaGetChBiter"
	.wrcm.end
	.wrcm.nelem "Mcl_DmaTcdGetIterCount"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Mcl_IPW_DmaGetCiter"
	.wrcm.end
	.wrcm.nelem "Mcl_DmaTcdClearDone"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Mcl_IPW_DmaClearDone"
	.wrcm.end
	.wrcm.nelem "Mcl_DmaTcdGetIntMaj"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Mcl_IPW_DmaTcdGetIntMaj"
	.wrcm.end
	.wrcm.nelem "Mcl_DmaTcdSetIntMaj"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Mcl_IPW_DmaSetIntMaj"
	.wrcm.end
	.wrcm.nelem "Mcl_DmaTcdClearIntMaj"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Mcl_IPW_DmaClearIntMaj"
	.wrcm.end
	.wrcm.nelem "Mcl_DmaTcdGetFlags"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Mcl_IPW_DmaGetFlags"
	.wrcm.end
	.wrcm.nelem "Mcl_DmaTcdSetFlags"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Mcl_IPW_DmaSetFlags"
	.wrcm.end
	.wrcm.nelem "Mcl_DmaTcdSetSlast"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Mcl_IPW_DmaSetSlast"
	.wrcm.end
	.wrcm.nelem "Mcl_DmaTcdSetMinorLoop"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Mcl_IPW_DmaSetMlnoNBytes","Mcl_IPW_DmaSetMloffen"
	.wrcm.end
	.wrcm.nelem "Mcl_DmaTcdSetDModuloAndSize"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Mcl_IPW_DmaSetDModSize"
	.wrcm.end
	.wrcm.nelem "Mcl_DmaTcdSetSModuloAndSize"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Mcl_IPW_DmaSetSModSize"
	.wrcm.end
	.wrcm.nelem "Mcl_DmaTcdSetLinkAndIterCount"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Mcl_IPW_DmaSetLinkAndIterCount"
	.wrcm.end
	.wrcm.nelem "Mcl_DmaTcdSetIterCount"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Mcl_IPW_DmaSetBiter","Mcl_IPW_DmaSetCiter"
	.wrcm.end
	.wrcm.nelem "Mcl_DmaTcdSetDoff"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Mcl_IPW_DmaSetDoff"
	.wrcm.end
	.wrcm.nelem "Mcl_DmaTcdSetDaddr"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Mcl_IPW_DmaSetDaddr"
	.wrcm.end
	.wrcm.nelem "Mcl_DmaTcdSetSga"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Mcl_IPW_DmaSetSga"
	.wrcm.end
	.wrcm.nelem "Mcl_DmaTcdSetDlast"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Mcl_IPW_DmaSetDlast"
	.wrcm.end
	.wrcm.nelem "Mcl_DmaTcdSetSoff"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Mcl_IPW_DmaSetSoff"
	.wrcm.end
	.wrcm.nelem "Mcl_DmaTcdSetSaddr"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Mcl_IPW_DmaSetSaddr"
	.wrcm.end
	.wrcm.nelem "Mcl_DmaGetChannelTcdAddress"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Mcl_IPW_DmaGetChannelTcdAddress"
	.wrcm.end
	.wrcm.nelem "Mcl_ErrorNotification"
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Mcl_Notification"
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Mcl_DmaAcknowledgeInterrupt"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Mcl_IPW_DmaAcknowledgeInterrupt"
	.wrcm.end
	.wrcm.nelem "Mcl_DmaDisableNotification"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Mcl_IPW_DisableNotification"
	.wrcm.end
	.wrcm.nelem "Mcl_DmaEnableNotification"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Mcl_IPW_EnableNotification"
	.wrcm.end
	.wrcm.nelem "Mcl_DmaIsTransferActive"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Mcl_IPW_DmaIsTransferActive"
	.wrcm.end
	.wrcm.nelem "Mcl_DmaIsTransferCompleted"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Mcl_IPW_DmaIsTransferCompleted"
	.wrcm.end
	.wrcm.nelem "Mcl_DmaStartChannel"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Mcl_IPW_DmaStartChannel"
	.wrcm.end
	.wrcm.nelem "Mcl_DmaSetChannelPriority"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Mcl_IPW_DmaSetChannelPriority"
	.wrcm.end
	.wrcm.nelem "Mcl_DmaConfigScatterGatherLinkedTcd"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Mcl_IPW_DmaConfigScatterGatherLinkedTcd"
	.wrcm.end
	.wrcm.nelem "Mcl_DmaConfigScatterGatherLinkedChannel"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Mcl_IPW_DmaConfigScatterGatherLinkedChannel"
	.wrcm.end
	.wrcm.nelem "Mcl_DmaConfigScatterGatherTcd"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Mcl_IPW_DmaConfigScatterGatherTcd"
	.wrcm.end
	.wrcm.nelem "Mcl_DmaConfigLinkedTcd"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Mcl_IPW_DmaConfigLinkedTcd"
	.wrcm.end
	.wrcm.nelem "Mcl_DmaConfigScatterGatherChannel"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Mcl_IPW_DmaConfigScatterGatherChannel"
	.wrcm.end
	.wrcm.nelem "Mcl_DmaConfigTcd"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Mcl_IPW_DmaConfigTcd"
	.wrcm.end
	.wrcm.nelem "Mcl_DmaConfigLinkedChannel"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Mcl_IPW_DmaConfigLinkedChannel"
	.wrcm.end
	.wrcm.nelem "Mcl_DmaConfigChannel"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Mcl_IPW_DmaConfigChannel"
	.wrcm.end
	.wrcm.nelem "Mcl_GetVersionInfo"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Mcl_Init"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Mcl_IPW_Init"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CDD_Mcl.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CDD_Mcl.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CDD_Mcl.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CDD_Mcl.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CDD_Mcl.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CDD_Mcl.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\MCAL\MPC5746R\Mcl\ssc\make\..\..\generator\integration_package\src\CDD_Mcl.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
