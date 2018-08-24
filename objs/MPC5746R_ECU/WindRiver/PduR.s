#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"PduR.c"
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
# FUNC(Std_ReturnType, PDUR_CODE) PduR_ConsistencyCheck(P2CONST(PduR_PBConfigType, AUTOMATIC,PDUR_CONST_PB) ConfigPtr)
	.align		2
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\PduR\\ssc\\make\\..\\src\\PduR.c"
        .d2line         255,33
#$$ld
.L59:

#$$bf	PduR_ConsistencyCheck,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,cr0,lr
	.globl		PduR_ConsistencyCheck
	.d2_cfa_start __cie
PduR_ConsistencyCheck:
.Llo1:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# ConfigPtr=r3 ConfigPtr=r3
	.d2prologue_end
# {
#     VAR( Std_ReturnType, AUTOMATIC )    Retval = E_NOT_OK;
	.d2line		257
	diab.li		r5,1		# Retval=r5
# 
#     if((PDUR_PC_HASH_VALUE == PduR_LTtoPCHashValue)
	.d2line		259
.Llo3:
	lis		r4,PduR_LTtoPCHashValue@ha
	lwz		r0,PduR_LTtoPCHashValue@l(r4)
	e_lis		r4,3238
	e_or2i		r4,12387
	se_cmpl		r0,r4
	bc		0,2,.L53	# ne
	se_cmpi		r3,0		# ConfigPtr=r3
	bc		1,2,.L53	# eq
	lwz		r4,8(r3)		# ConfigPtr=r3
	lwz		r0,0(r4)
	e_lis		r4,3238
	e_or2i		r4,12387
	se_cmpl		r0,r4
	bc		0,2,.L53	# ne
	lwz		r3,4(r3)		# ConfigPtr=r3 ConfigPtr=r3
	lwz		r0,0(r3)		# ConfigPtr=r3
	lis		r3,PduR_LTHashValue@ha		# ConfigPtr=r3
	lwz		r3,PduR_LTHashValue@l(r3)		# ConfigPtr=r3 ConfigPtr=r3
	se_cmpl		r0,r3		# ConfigPtr=r3
#     && ( NULL_PTR != ConfigPtr )
#     && (*(ConfigPtr->PBtoPCHashValue_P) == PDUR_PC_HASH_VALUE)
#     && (*(ConfigPtr->PBtoLTHashValue_P) == PduR_LTHashValue)
#     )
#     {
#         Retval = E_OK;
	.d2line		265
	isel		r5,0,r5,2		# Retval=r5 Retval=r5
.L53:
#     }
# 
#     return Retval;
	.d2line		268
.Llo2:
	rlwinm		r3,r5,0,24,31		# ConfigPtr=r3 Retval=r5
# }
	.d2line		269
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo4:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L60:
	.type		PduR_ConsistencyCheck,@function
	.size		PduR_ConsistencyCheck,.-PduR_ConsistencyCheck
# Number of nodes = 28

# Allocations for PduR_ConsistencyCheck
#	?a4		ConfigPtr
#	?a5		Retval
# FUNC(void, PDUR_CODE) PduR_Init(P2CONST(PduR_PBConfigType, AUTOMATIC,PDUR_CONST_PB) ConfigPtr)
	.align		2
	.section	.text_vle
        .d2line         66,23
#$$ld
.L75:

#$$bf	PduR_Init,interprocedural,rasave,nostackparams

# Regs written: r0,r1,r3,r4,r5,cr0,lr
	.globl		PduR_Init
	.d2_cfa_start __cie
PduR_Init:
.Llo5:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)		# ConfigPtr=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# ConfigPtr=r0 ConfigPtr=r3
	.d2prologue_end
# {
# #if ( (PDUR_MULTICAST_OPERATION_IF == STD_ON)   || \
#     (PDUR_MULTICAST_OPERATION_TP == STD_ON )    || \
#     (PDUR_GATEWAY_OPERATION_IF == STD_ON)       || \
#     (PDUR_GATEWAY_OPERATION_TP == STD_ON )      || \
#     (PDUR_ENABLE_ROUTING_GROUPS == STD_ON ))
#     VAR(uint16,AUTOMATIC) Index;
# #endif
# #if(PDUR_ENABLE_ROUTING_GROUPS == STD_ON)
#     VAR(uint8,AUTOMATIC) rPGModuleIdx;
#     VAR(uint16,AUTOMATIC) byteIdx;
#     VAR(uint16,AUTOMATIC) Count;
# #endif
# 
# #if PDUR_DEV_ERROR_DETECT == STD_ON
#     if(ConfigPtr == NULL_PTR)
#     {
#         (void)Det_ReportError(PDUR_MODULE_ID,
#                         PDUR_INSTANCE_ID,
#                         PDUR_INIT_ID,
#                         PDUR_E_CONFIG_PTR_INVALID);
#     }
#     else if (PduR_Status != PDUR_UNINIT) /* (ConfigPtr!=NULL_PTR) */
#     {
#         (void)Det_ReportError(PDUR_MODULE_ID,
#                         PDUR_INSTANCE_ID,
#                         PDUR_INIT_ID,
#                         PDUR_E_INVALID_REQUEST);
#     }
#     else /* (ConfigPtr!=NULL_PTR) && (PduR_Status == PDUR_UNINIT) */
# #endif /* PDUR_DEV_ERROR_DETECT */
#     {
#         PduR_Main = ConfigPtr;
	.d2line		99
.Llo6:
	lis		r3,PduR_Main@ha		# ConfigPtr=r3
.Llo7:
	e_add16i		r3,r3,PduR_Main@l		# ConfigPtr=r3 ConfigPtr=r3
	stw		r0,0(r3)		# ConfigPtr=r3 ConfigPtr=r0
# 
#         if (E_OK == PduR_ConsistencyCheck(ConfigPtr))
	.d2line		101
	mr		r3,r0		# ConfigPtr=r3 ConfigPtr=r0
	bl		PduR_ConsistencyCheck
.Llo8:
	rlwinm		r3,r3,0,24,31		# ConfigPtr=r3 ConfigPtr=r3
.Llo9:
	se_cmpi		r3,0		# ConfigPtr=r3
	bc		0,2,.L48	# ne
#         {
#             /* Get PB Routing Arrays Info*/
#             RoutingArraysRef = PduR_Main->RoutingArraysCfg;
	.d2line		104
.Llo10:
	lis		r4,PduR_Main@ha
	lwz		r3,PduR_Main@l(r4)		# ConfigPtr=r3
.Llo11:
	lwz		r0,12(r3)		# ConfigPtr=r0 ConfigPtr=r3
	lis		r3,RoutingArraysRef@ha		# ConfigPtr=r3
.Llo12:
	e_add16i		r3,r3,RoutingArraysRef@l		# ConfigPtr=r3 ConfigPtr=r3
.Llo13:
	stw		r0,0(r3)		# ConfigPtr=r3 ConfigPtr=r0
#             RoutingArraysSizeRef = PduR_Main->RoutingArraysSizesCfg;
	.d2line		105
	lwz		r3,PduR_Main@l(r4)		# ConfigPtr=r3
	lwz		r0,16(r3)		# ConfigPtr=r0 ConfigPtr=r3
	lis		r3,RoutingArraysSizeRef@ha		# ConfigPtr=r3
	e_add16i		r3,r3,RoutingArraysSizeRef@l		# ConfigPtr=r3 ConfigPtr=r3
	stw		r0,0(r3)		# ConfigPtr=r3 ConfigPtr=r0
# 
# #if(PDUR_ENABLE_ROUTING_GROUPS == STD_ON)
#             RoutingPathGroupsRef = PduR_Main->RoutingPathGroupsCfg;
#             RoutingDestRamRef = PduR_Main->RoutingDestRamCfg;
# 
#             /* used for the DestHandleId */
#             RoutingDestRamRefHandleId = PduR_Main->RoutingDestRamCfgHandleId;
# 
#             /* 1: representing enabled 0: disabled*/
#             /*Initializing the Routing Paths RAM Array */
#             for(Index=0; Index<PduR_Main->DestModulesCountCfg; Index++)
#             {
#                 if(0!=RoutingDestRamRef[Index])
#                 {
#                     vstar_set(RoutingDestRamRef[Index], (uint8)0xFF, (uint32)PduR_Main->RoutingDestRamSizeCfg[Index]);
#                 }
# 
#                 /* used for the DestHandleId*/
#                 if(0!=RoutingDestRamRefHandleId[Index])
#                 {
#                     vstar_set(RoutingDestRamRefHandleId[Index], (uint8)0xFF , (uint32)PduR_Main->RoutingDestRamSizeCfgHandleId[Index]);
#                 }
# 
#             }
# 
#             /* Here we complete the initialization of the Ram Area*/
# 
#             /* here we will activate the Routing Group Pahts At Init */
#             if(PduR_Main->RoutingPathGroupCountCfg!=0)
#             {
#                 for(Index=0; Index<PduR_Main->RoutingPathGroupCountCfg; Index++)
#                 {
#                     /*has no meaning*/
#                     if(TRUE == RoutingPathGroupsRef[Index].EnabledAtInit)
#                     {
#                         for(rPGModuleIdx=0; rPGModuleIdx<RoutingPathGroupsRef[Index].Length; rPGModuleIdx++)
#                         {
#                             Count = RoutingPathGroupsRef[Index].RoutingGroupsSizesCfg[rPGModuleIdx];
#                             for(byteIdx=0; byteIdx<Count; byteIdx++)
#                             {
#                                 RoutingPathGroupsRef[Index].RoutingGroupsCfg[rPGModuleIdx].RamGroup[byteIdx] |=
#                                         RoutingPathGroupsRef[Index].RoutingGroupsCfg[rPGModuleIdx].RomGroup[byteIdx];
#                             }
# 
#                             Count = RoutingPathGroupsRef[Index].RoutingGroupsSizesCfgHandleId[rPGModuleIdx];
#                             for(byteIdx=0; byteIdx<Count; byteIdx++)
#                             {
#                                 RoutingPathGroupsRef[Index].RoutingGroupsCfg[rPGModuleIdx].RamGroupHandleId[byteIdx] |=
#                                         RoutingPathGroupsRef[Index].RoutingGroupsCfg[rPGModuleIdx].RomGroupHandleId[byteIdx];
#                             }
#                         }
#                     }
#                     else
#                     {
#                         for(rPGModuleIdx=0; rPGModuleIdx<RoutingPathGroupsRef[Index].Length; rPGModuleIdx++)
#                         {
#                             Count = RoutingPathGroupsRef[Index].RoutingGroupsSizesCfg[rPGModuleIdx];
#                             for(byteIdx=0; byteIdx<Count; byteIdx++)
#                             {
#                                 RoutingPathGroupsRef[Index].RoutingGroupsCfg[rPGModuleIdx].RamGroup[byteIdx] &=
#                                         (uint8)~RoutingPathGroupsRef[Index].RoutingGroupsCfg[rPGModuleIdx].RomGroup[byteIdx];
#                             }
# 
#                             Count = RoutingPathGroupsRef[Index].RoutingGroupsSizesCfgHandleId[rPGModuleIdx];
#                             for(byteIdx=0; byteIdx<Count; byteIdx++)
#                             {
#                                 RoutingPathGroupsRef[Index].RoutingGroupsCfg[rPGModuleIdx].RamGroupHandleId[byteIdx] &=
#                                         (uint8)~RoutingPathGroupsRef[Index].RoutingGroupsCfg[rPGModuleIdx].RomGroupHandleId[byteIdx];
#                             }
#                         }
#                     }
#                 }
#             }
# #endif
# 
# #if ((PDUR_MULTICAST_OPERATION_IF == STD_ON)  || (PDUR_MULTICAST_OPERATION_TP == STD_ON ))
#             vstar_set(PduR_Main->PduR_IfMcLoConfFlags, IF_TX_CONF_CLEARED , PduR_Main->PduR_IfMcLoFlagsCount);
# #endif
# 
# #if (PDUR_GATEWAY_OPERATION_IF == STD_ON)
#             for(Index=0; Index<PduR_Main->GWIfBuffers_Number; Index++)
#             {
#                 /*PduR_IfBufferInfo Array*/
#                 (PduR_Main->GwIfBuffer_Ref[Index].Info) -> TxConfirmationPending = TX_CONFIRMATION_PENDING_CLEAR;
# 
#                 (PduR_Main->GwIfBuffer_Ref[Index].Info) -> TxIndex = PDUR_NO_IFBUFFER_DEPTH_IDX;
# 
#                 (PduR_Main->GwIfBuffer_Ref[Index].Info) -> Position = PDUR_NO_IFBUFFER_DEPTH_IDX;
#                 /*If buffer Data Array*/
#                 if (PduR_Main->GwIfBuffer_Ref[Index].DefaultValue != NULL_PTR)
#                 {
#                     /* Initialize buffer data for default value related buffers */
#                     vstar_copy(PduR_Main->GwIfBuffer_Ref[Index].Data,PduR_Main->GwIfBuffer_Ref[Index].DefaultValue,PduR_Main->GwIfBuffer_Ref[Index].Length);
#                 }
#                 /* Initialize Length too */
#                 PduR_Main->GwIfBuffer_Ref[Index].DataLength[0] = PduR_Main->GwIfBuffer_Ref[Index].Length;
#             }
# #endif /* PDUR_GATEWAY_OPERATION_IF */
# 
# #if (PDUR_GATEWAY_OPERATION_TP == STD_ON)
#             /*PduR_TpSingleGwInfo*/
#             for(Index = 0; Index < (uint16)PduR_Main->TpGwInternalID_Offset ;Index++)
#             {
#                 PduR_Main->TpSingleGwInfo_Ref[Index].TpGw_OperationStatus = TP_SINGLE_GW_OPERATION_CLEAR;
#                 PduR_Main->TpSingleGwInfo_Ref[Index].BufferID_UsedForTx = NO_BUFFERID_STORED;
#                 PduR_Main->TpSingleGwInfo_Ref[Index].BufferID_UsedForRx = NO_BUFFERID_STORED;
#                 PduR_Main->TpSingleGwInfo_Ref[Index].DataRxIndex = 0;
#                 PduR_Main->TpSingleGwInfo_Ref[Index].DataTxIndex = 0;
#                 PduR_Main->TpSingleGwInfo_Ref[Index].RxRemainingLength = 0;
#                 PduR_Main->TpSingleGwInfo_Ref[Index].TotalPduLength = 0;
#                 PduR_Main->TpSingleGwInfo_Ref[Index].LastProvidedRxBuffer = 0;
#             }
#             /*PduR_TpBufferInfo*/
#             for(Index = 0; Index<PduR_Main->TpBuffers_Number; Index++)
#             {
#                 PduR_Main->TpBufferInfo_Ref[Index].Buffer_Info.SduDataPtr = NULL_PTR;
#                 PduR_Main->TpBufferInfo_Ref[Index].Buffer_Info.SduLength = 0;
#                 PduR_Main->TpBufferInfo_Ref[Index].SequenceNumber = MAX_SEQUENCE_NUMBER_OF_TPBUFFER;
#                 PduR_Main->TpBufferInfo_Ref[Index].TpGwInternalID = INTERNAL_ID_OF_UNUSED_TPBUFFER;
#             }
# #endif /* PDUR_GATEWAY_OPERATION_TP */
# 
#             PduR_Status = PDUR_ONLINE;
	.d2line		228
	diab.li		r0,1		# ConfigPtr=r0
	lis		r3,PduR_Status@ha		# ConfigPtr=r3
	e_add16i		r3,r3,PduR_Status@l		# ConfigPtr=r3 ConfigPtr=r3
	stw		r0,0(r3)		# ConfigPtr=r3 ConfigPtr=r0
	b		.L47
.L48:
#         }
#         else
#         {
#             PduR_Status = PDUR_REDUCED;
	.d2line		232
.Llo14:
	diab.li		r0,2		# ConfigPtr=r0
.Llo15:
	lis		r3,PduR_Status@ha		# ConfigPtr=r3
	e_add16i		r3,r3,PduR_Status@l		# ConfigPtr=r3 ConfigPtr=r3
	stw		r0,0(r3)		# ConfigPtr=r3 ConfigPtr=r0
.L47:
# #if PDUR_DEV_ERROR_DETECT == STD_ON
#         (void)Det_ReportError(PDUR_MODULE_ID,
#                         PDUR_INSTANCE_ID,
#                         PDUR_INIT_ID,
#                         PDUR_E_INIT_FAILED);
# #endif
#         }
#     }
# }
	.d2line		241
	.d2epilogue_begin
.Llo16:
	lwz		r0,20(r1)		# ConfigPtr=r0
	mtspr		lr,r0		# ConfigPtr=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L76:
	.type		PduR_Init,@function
	.size		PduR_Init,.-PduR_Init
# Number of nodes = 29

# Allocations for PduR_Init
#	?a4		ConfigPtr
# FUNC(void, PDUR_CODE) PduR_GetVersionInfo(P2VAR(Std_VersionInfoType,AUTOMATIC,PDUR_APPL_DATA) versionInfo)
	.align		2
	.section	.text_vle
        .d2line         294,23
#$$ld
.L81:

#$$bf	PduR_GetVersionInfo,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,lr
	.globl		PduR_GetVersionInfo
	.d2_cfa_start __cie
PduR_GetVersionInfo:
.Llo17:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r4,r3		# versionInfo=r4 versionInfo=r3
	.d2prologue_end
# {
# #if PDUR_DEV_ERROR_DETECT == STD_ON
#     if((NULL_PTR == versionInfo))
#     {
#         (void)Det_ReportError(PDUR_MODULE_ID,
#                         PDUR_INSTANCE_ID,
#                         PDUR_GET_VERSION_INFO_ID,
#                         PDUR_E_NULL_POINTER);
#     }
#     else
# #endif /* PDUR_DEV_ERROR_DETECT = ON */
#     {
#         versionInfo->vendorID         = PDUR_VENDOR_ID;
	.d2line		307
.Llo18:
	diab.li		r3,31
.Llo19:
	sth		r3,0(r4)		# versionInfo=r4
#         versionInfo->moduleID         = PDUR_MODULE_ID;
	.d2line		308
	diab.li		r3,51
	sth		r3,2(r4)		# versionInfo=r4
#         versionInfo->sw_major_version = (uint8)PDUR_SW_MAJOR_VERSION;
	.d2line		309
	diab.li		r3,5
	stb		r3,4(r4)		# versionInfo=r4
#         versionInfo->sw_minor_version = (uint8)PDUR_SW_MINOR_VERSION;
	.d2line		310
	diab.li		r3,1
	stb		r3,5(r4)		# versionInfo=r4
#         versionInfo->sw_patch_version = (uint8)PDUR_SW_PATCH_VERSION;
	.d2line		311
	diab.li		r3,0
	stb		r3,6(r4)		# versionInfo=r4
#     }
#     return;
# }
	.d2line		314
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo20:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L82:
	.type		PduR_GetVersionInfo,@function
	.size		PduR_GetVersionInfo,.-PduR_GetVersionInfo
# Number of nodes = 28

# Allocations for PduR_GetVersionInfo
#	?a4		versionInfo
# FUNC(PduR_PBConfigIdType, PDUR_CODE)PduR_GetConfigurationId(void)
	.align		2
	.section	.text_vle
        .d2line         334,37
#$$ld
.L90:

#$$bf	PduR_GetConfigurationId,interprocedural,nostackparams

# Regs written: r0,r1,r3
	.globl		PduR_GetConfigurationId
	.d2_cfa_start __cie
PduR_GetConfigurationId:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     VAR(PduR_PBConfigIdType,AUTOMATIC) ReturnValue;
# 
# #if PDUR_DEV_ERROR_DETECT == STD_ON
#     if (PduR_Status == PDUR_UNINIT)
#     {
#         (void)Det_ReportError(PDUR_MODULE_ID,
#                         PDUR_INSTANCE_ID,
#                         PDUR_GET_CONFIGURATION_ID_ID,
#                         PDUR_E_INVALID_REQUEST);
#         ReturnValue = 0U; /*this is not in SWS but it is done here to   */
#                           /*avoid returning unspecified value           */
#     }
#     else
# #endif /* PDUR_DEV_ERROR_DETECT = ON */
#     {
#         ReturnValue = PduR_Main->ConfigurationId;
	.d2line		351
	lis		r3,PduR_Main@ha
	lwz		r3,PduR_Main@l(r3)
	lwz		r3,0(r3)
.Llo21:
	mr		r3,r3		# ReturnValue=r3 ReturnValue=r3
#     }
#     return ReturnValue;
	.d2line		353
	mr		r3,r3		# ReturnValue=r3 ReturnValue=r3
# } /* PduR_GetConfigurationId */
	.d2line		354
	.d2epilogue_begin
.Llo22:
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L91:
	.type		PduR_GetConfigurationId,@function
	.size		PduR_GetConfigurationId,.-PduR_GetConfigurationId
# Number of nodes = 6

# Allocations for PduR_GetConfigurationId
#	?a4		ReturnValue

# Allocations for module
	.section	.text_vle
	.0byte		.L98
	.section	.text_vle
#$$ld
.L5:
.L123:	.d2filenum "C:\\WINDRI~1\\COMPIL~1\\DIAB-5~1.4\\include\\diab/lpragma.h"
.L118:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\PduR\\ssc\\make\\..\\inc\\PduR_Types.h"
.L103:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\PduR\\ssc\\make\\..\\inc\\PduR_i.h"
.L99:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\PduR\\ssc\\make\\..\\inc\\PduR.h"
.L61:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\PduR\\ssc\\make\\..\\src\\PduR.c"
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
	.uleb128	12
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	13
	.uleb128	38
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	14
	.uleb128	15
	.byte		0x0
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\PduR\\ssc\\make\\..\\src\\PduR.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L4
	.4byte		.L5
	.4byte		.L8
	.section	.debug_info,,n
.L65:
	.sleb128	2
	.4byte		.L58-.L2
	.byte		"PduR_ConsistencyCheck"
	.byte		0
	.4byte		.L61
	.uleb128	255
	.uleb128	33
	.4byte		.L62
	.byte		0x1
	.byte		0x1
	.4byte		.L59
	.4byte		.L60
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L61
	.uleb128	255
	.uleb128	33
	.byte		"ConfigPtr"
	.byte		0
	.4byte		.L66
	.4byte		.L70
	.section	.debug_info,,n
.L71:
	.sleb128	4
	.4byte		.L61
	.uleb128	257
	.uleb128	41
	.byte		"Retval"
	.byte		0
	.4byte		.L62
	.4byte		.L72
	.section	.debug_info,,n
	.sleb128	0
.L58:
	.section	.debug_info,,n
.L77:
	.sleb128	5
	.4byte		.L74-.L2
	.byte		"PduR_Init"
	.byte		0
	.4byte		.L61
	.uleb128	66
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L75
	.4byte		.L76
	.sleb128	3
	.4byte		.L61
	.uleb128	66
	.uleb128	23
	.byte		"ConfigPtr"
	.byte		0
	.4byte		.L66
	.4byte		.L78
	.section	.debug_info,,n
	.sleb128	0
.L74:
	.section	.debug_info,,n
.L83:
	.sleb128	5
	.4byte		.L80-.L2
	.byte		"PduR_GetVersionInfo"
	.byte		0
	.4byte		.L61
	.uleb128	294
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L81
	.4byte		.L82
	.sleb128	3
	.4byte		.L61
	.uleb128	294
	.uleb128	23
	.byte		"versionInfo"
	.byte		0
	.4byte		.L84
	.4byte		.L87
	.section	.debug_info,,n
	.sleb128	0
.L80:
	.section	.debug_info,,n
.L95:
	.sleb128	2
	.4byte		.L89-.L2
	.byte		"PduR_GetConfigurationId"
	.byte		0
	.4byte		.L61
	.uleb128	334
	.uleb128	37
	.4byte		.L92
	.byte		0x1
	.byte		0x1
	.4byte		.L90
	.4byte		.L91
.L96:
	.sleb128	4
	.4byte		.L61
	.uleb128	336
	.uleb128	40
	.byte		"ReturnValue"
	.byte		0
	.4byte		.L92
	.4byte		.L97
	.section	.debug_info,,n
	.sleb128	0
.L89:
	.section	.debug_info,,n
.L98:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L99
	.uleb128	73
	.uleb128	34
	.byte		"PduR_LTtoPCHashValue"
	.byte		0
	.4byte		.L100
	.section	.debug_info,,n
.L101:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L99
	.uleb128	74
	.uleb128	34
	.byte		"PduR_LTHashValue"
	.byte		0
	.4byte		.L100
.L102:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L103
	.uleb128	516
	.uleb128	39
	.byte		"PduR_Status"
	.byte		0
	.4byte		.L104
	.0byte		.L102
.L106:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L103
	.uleb128	517
	.uleb128	59
	.byte		"PduR_Main"
	.byte		0
	.4byte		.L66
.L107:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L103
	.uleb128	518
	.uleb128	83
	.byte		"RoutingArraysRef"
	.byte		0
	.4byte		.L108
.L113:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L103
	.uleb128	519
	.uleb128	49
	.byte		"RoutingArraysSizeRef"
	.byte		0
	.4byte		.L114
	.section	.debug_info,,n
.L69:
	.sleb128	7
	.4byte		.L118
	.uleb128	53
	.uleb128	1
	.4byte		.L119-.L2
	.uleb128	20
	.section	.debug_info,,n
.L38:
	.sleb128	8
	.byte		"ConfigurationId"
	.byte		0
	.4byte		.L92
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L39:
	.sleb128	8
	.byte		"PBtoLTHashValue_P"
	.byte		0
	.4byte		.L120
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L40:
	.sleb128	8
	.byte		"PBtoPCHashValue_P"
	.byte		0
	.4byte		.L120
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L41:
	.sleb128	8
	.byte		"RoutingArraysCfg"
	.byte		0
	.4byte		.L121
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L42:
	.sleb128	8
	.byte		"RoutingArraysSizesCfg"
	.byte		0
	.4byte		.L122
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L119:
.L86:
	.sleb128	7
	.4byte		.L123
	.uleb128	69
	.uleb128	1
	.4byte		.L124-.L2
	.uleb128	8
.L27:
	.sleb128	8
	.byte		"vendorID"
	.byte		0
	.4byte		.L116
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L28:
	.sleb128	8
	.byte		"moduleID"
	.byte		0
	.4byte		.L116
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L29:
	.sleb128	8
	.byte		"sw_major_version"
	.byte		0
	.4byte		.L63
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L30:
	.sleb128	8
	.byte		"sw_minor_version"
	.byte		0
	.4byte		.L63
	.sleb128	2
	.byte		0x23
	.uleb128	5
	.byte		0x1
.L31:
	.sleb128	8
	.byte		"sw_patch_version"
	.byte		0
	.4byte		.L63
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
	.sleb128	0
.L124:
	.section	.debug_info,,n
.L105:
	.sleb128	9
	.4byte		.L118
	.uleb128	53
	.uleb128	1
	.4byte		.L125-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	10
	.byte		"PDUR_UNINIT"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"PDUR_ONLINE"
	.byte		0
	.sleb128	1
	.sleb128	10
	.byte		"PDUR_REDUCED"
	.byte		0
	.sleb128	2
	.sleb128	0
.L125:
	.section	.debug_info,,n
.L64:
	.sleb128	11
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L63:
	.sleb128	12
	.byte		"uint8"
	.byte		0
	.4byte		.L64
.L62:
	.sleb128	12
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L63
.L68:
	.sleb128	12
	.byte		"PduR_PBConfigType"
	.byte		0
	.4byte		.L69
	.section	.debug_info,,n
.L67:
	.sleb128	13
	.4byte		.L68
	.section	.debug_info,,n
.L66:
	.sleb128	14
	.4byte		.L67
.L85:
	.sleb128	12
	.byte		"Std_VersionInfoType"
	.byte		0
	.4byte		.L86
.L84:
	.sleb128	14
	.4byte		.L85
.L94:
	.sleb128	11
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L93:
	.sleb128	12
	.byte		"uint32"
	.byte		0
	.4byte		.L94
.L92:
	.sleb128	12
	.byte		"PduR_PBConfigIdType"
	.byte		0
	.4byte		.L93
.L100:
	.sleb128	13
	.4byte		.L93
.L104:
	.sleb128	12
	.byte		"PduR_StateType"
	.byte		0
	.4byte		.L105
	.section	.debug_info,,n
.L112:
	.sleb128	15
	.byte		"void"
	.byte		0
	.byte		0x0
.L111:
	.sleb128	13
	.4byte		.L112
.L110:
	.sleb128	14
	.4byte		.L111
.L109:
	.sleb128	13
	.4byte		.L110
.L108:
	.sleb128	14
	.4byte		.L109
.L117:
	.sleb128	11
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L116:
	.sleb128	12
	.byte		"uint16"
	.byte		0
	.4byte		.L117
.L115:
	.sleb128	13
	.4byte		.L116
.L114:
	.sleb128	14
	.4byte		.L115
.L120:
	.sleb128	14
	.4byte		.L100
.L121:
	.sleb128	13
	.4byte		.L108
.L122:
	.sleb128	13
	.4byte		.L114
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L70:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locend
.L72:
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),5
	.d2locend
.L78:
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),3
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),0
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),3
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo12),3
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo14),0
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo16),0
	.d2locend
.L87:
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo18),3
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo20),4
	.d2locend
.L97:
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo22),3
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "PduR_GetConfigurationId"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "PduR_GetVersionInfo"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "PduR_Init"
	.wrcm.nstrlist "calls", "PduR_ConsistencyCheck"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "PduR_ConsistencyCheck"
	.wrcm.nint32 "frameSize", 16
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\PduR.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\PduR.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\PduR.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\PduR.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\PduR.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\PduR.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\PduR\ssc\make\..\src\PduR.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
