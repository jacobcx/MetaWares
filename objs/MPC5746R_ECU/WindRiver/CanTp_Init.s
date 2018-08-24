#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"CanTp_Init.c"
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
# extern FUNC(Std_ReturnType, CANTP_CODE) CanTp_ConsistencyCheck
	.align		2
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTp\\ssc\\make\\..\\src\\CanTp_Init.c"
        .d2line         197,41
#$$ld
.L164:

#$$bf	CanTp_ConsistencyCheck,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,cr0,lr
	.globl		CanTp_ConsistencyCheck
	.d2_cfa_start __cie
CanTp_ConsistencyCheck:
.Llo1:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# ConfigPtr=r3 ConfigPtr=r3
	.d2prologue_end
# (
#     CONSTP2CONST(CanTp_ConfigType, AUTOMATIC, AUTOMATIC) ConfigPtr
# )
# {
#     VAR(Std_ReturnType, AUTOMATIC) Retval = E_NOT_OK;
	.d2line		202
	diab.li		r5,1		# Retval=r5
# 
#     if((CANTP_PC_HASH_VALUE == CanTp_LTtoPCHashValue)
	.d2line		204
.Llo3:
	lis		r4,CanTp_LTtoPCHashValue@ha
	lwz		r0,CanTp_LTtoPCHashValue@l(r4)
	e_lis		r4,8400
	e_or2i		r4,40617
	se_cmpl		r0,r4
	bc		0,2,.L149	# ne
	se_cmpi		r3,0		# ConfigPtr=r3
	bc		1,2,.L149	# eq
	lwz		r4,24(r3)		# ConfigPtr=r3
	lwz		r0,0(r4)
	e_lis		r4,8400
	e_or2i		r4,40617
	se_cmpl		r0,r4
	bc		0,2,.L149	# ne
	lwz		r3,28(r3)		# ConfigPtr=r3 ConfigPtr=r3
	lwz		r0,0(r3)		# ConfigPtr=r3
	lis		r3,CanTp_LTHashValue@ha		# ConfigPtr=r3
	lwz		r3,CanTp_LTHashValue@l(r3)		# ConfigPtr=r3 ConfigPtr=r3
	se_cmpl		r0,r3		# ConfigPtr=r3
#             && (NULL_PTR != ConfigPtr)
#             && (CANTP_PC_HASH_VALUE == *(ConfigPtr->PBtoPCHashValue_P))
#             && (CanTp_LTHashValue == *(ConfigPtr->PBtoLTHashValue_P))
#     )
#     {
#         Retval = E_OK;
	.d2line		210
	isel		r5,0,r5,2		# Retval=r5 Retval=r5
.L149:
#     }
# 
#     return Retval;
	.d2line		213
.Llo2:
	rlwinm		r3,r5,0,24,31		# ConfigPtr=r3 Retval=r5
# }
	.d2line		214
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
.L165:
	.type		CanTp_ConsistencyCheck,@function
	.size		CanTp_ConsistencyCheck,.-CanTp_ConsistencyCheck
# Number of nodes = 28

# Allocations for CanTp_ConsistencyCheck
#	?a4		ConfigPtr
#	?a5		Retval
# static FUNC(Std_ReturnType, CANTP_CODE) CanTp_VersionAndDetCheck
	.align		1
	.section	.text_vle
        .d2line         231,41
#$$ld
.L181:

#$$bf	CanTp_VersionAndDetCheck,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
CanTp_VersionAndDetCheck:
.Llo5:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr.		r6,r3		# ConfigPtr=?a4 ConfigPtr=r3
	.d2prologue_end
# (
#     CONSTP2CONST(CanTp_ConfigType, AUTOMATIC, AUTOMATIC) ConfigPtr
# )
# {
#     /* the return value */
#     VAR(Std_ReturnType, AUTOMATIC) CanTpRetVal = E_NOT_OK;
	.d2line		237
	diab.li		r31,1		# CanTpRetVal=r31
# 
# #if (CANTP_DEV_ERROR_DETECT == STD_ON)
#     /* Check if the input is a NULL pointer */
#     if(NULL_PTR == ConfigPtr)
	.d2line		241
	bc		0,2,.L152	# ne
#     {
#         /* Report to DET */
#         (void)Det_ReportError(CANTP_MODULE_ID, CANTP_INSTANCE_ID, CANTP_ID_INIT, CANTP_E_PARAM_POINTER);
	.d2line		244
	diab.li		r3,35
.Llo6:
	diab.li		r4,0
	diab.li		r5,1
	diab.li		r6,3		# ConfigPtr=r6
	bl		Det_ReportError
	b		.L153
.L152:
#     }
#     else
# #endif
#     {
#         if(E_OK == CanTp_ConsistencyCheck(ConfigPtr))
	.d2line		249
.Llo7:
	mr		r3,r6		# ConfigPtr=r3 ConfigPtr=r6
	bl		CanTp_ConsistencyCheck
	rlwinm		r3,r3,0,24,31		# ConfigPtr=r3 ConfigPtr=r3
	se_cmpi		r3,0		# ConfigPtr=r3
	bc		0,2,.L154	# ne
#         {
#             if(CANTP_OFF == CanTp_Status)
	.d2line		251
	lis		r3,CanTp_Status@ha		# ConfigPtr=r3
	lwz		r0,CanTp_Status@l(r3)		# ConfigPtr=r3
	se_cmpi		r0,0
	bc		0,2,.L156	# ne
#             {
#                 /* Get the RxNSdu Information */
#                 CanTp_RxNSduConfig_p = ConfigPtr->CanTp_RxConfig_p;
	.d2line		254
.Llo9:
	lwz		r0,0(r6)		# ConfigPtr=r6
	lis		r3,CanTp_RxNSduConfig_p@ha		# ConfigPtr=r3
	e_add16i		r3,r3,CanTp_RxNSduConfig_p@l		# ConfigPtr=r3 ConfigPtr=r3
	stw		r0,0(r3)		# ConfigPtr=r3
# 
#                 /* Get the TxNSdu Information */
#                 CanTp_TxNSduConfig_p = ConfigPtr->CanTp_TxConfig_p;
	.d2line		257
	lwz		r0,4(r6)		# ConfigPtr=r6
	lis		r3,CanTp_TxNSduConfig_p@ha		# ConfigPtr=r3
	e_add16i		r3,r3,CanTp_TxNSduConfig_p@l		# ConfigPtr=r3 ConfigPtr=r3
	stw		r0,0(r3)		# ConfigPtr=r3
# 
#                 /* Get the RxNSdu Information */
#                 CanTp_RxNSdu_p = ConfigPtr->CanTp_CfgRxNSdu_p;
	.d2line		260
	lwz		r0,8(r6)		# ConfigPtr=r6
	lis		r3,CanTp_RxNSdu_p@ha		# ConfigPtr=r3
	e_add16i		r3,r3,CanTp_RxNSdu_p@l		# ConfigPtr=r3 ConfigPtr=r3
	stw		r0,0(r3)		# ConfigPtr=r3
# 
#                 /* Get the TxNSdu Information */
#                 CanTp_TxNSdu_p = ConfigPtr->CanTp_CfgTxNSdu_p;
	.d2line		263
	lwz		r0,12(r6)		# ConfigPtr=r6
	lis		r3,CanTp_TxNSdu_p@ha		# ConfigPtr=r3
	e_add16i		r3,r3,CanTp_TxNSdu_p@l		# ConfigPtr=r3 ConfigPtr=r3
	stw		r0,0(r3)		# ConfigPtr=r3
# 
#                 /* Get the CanTp_CfgRxLookup_p Information */
#                 CanTp_RxLookup_p = ConfigPtr->CanTp_CfgRxLookup_p;
	.d2line		266
	lwz		r0,16(r6)		# ConfigPtr=r6
	lis		r3,CanTp_RxLookup_p@ha		# ConfigPtr=r3
	e_add16i		r3,r3,CanTp_RxLookup_p@l		# ConfigPtr=r3 ConfigPtr=r3
	stw		r0,0(r3)		# ConfigPtr=r3
# 
#                 /*Get the CanTp_RxNsduFound_p information */
#                 CanTp_RxNsduFound_p = ConfigPtr->CanTp_CfgRxNsduFound_p;
	.d2line		269
	lwz		r0,40(r6)		# ConfigPtr=r6
	lis		r3,CanTp_RxNsduFound_p@ha		# ConfigPtr=r3
	e_add16i		r3,r3,CanTp_RxNsduFound_p@l		# ConfigPtr=r3 ConfigPtr=r3
	stw		r0,0(r3)		# ConfigPtr=r3
# 
#                 CanTp_GeneralConfig_p = ConfigPtr-> CanTp_CfgGeneralConfig_p;
	.d2line		271
	lwz		r0,20(r6)		# ConfigPtr=r6
	lis		r3,CanTp_GeneralConfig_p@ha		# ConfigPtr=r3
	e_add16i		r3,r3,CanTp_GeneralConfig_p@l		# ConfigPtr=r3 ConfigPtr=r3
	stw		r0,0(r3)		# ConfigPtr=r3
# 
#                 /* Get CanTp_RxNSdu_BS_STmin Information */
#                 CanTp_RxNSduParams_p = ConfigPtr->CanTp_RxNSduParamsConfig_p;
	.d2line		274
	lwz		r0,32(r6)		# ConfigPtr=r6
	lis		r3,CanTp_RxNSduParams_p@ha		# ConfigPtr=r3
	e_add16i		r3,r3,CanTp_RxNSduParams_p@l		# ConfigPtr=r3 ConfigPtr=r3
	stw		r0,0(r3)		# ConfigPtr=r3
# 
#                 /* Get CanTp_Channel information */
#                 CanTp_ChannelList_p = ConfigPtr->CanTp_CfgChannel_p;
	.d2line		277
	lwz		r0,36(r6)		# ConfigPtr=r6
	lis		r3,CanTp_ChannelList_p@ha		# ConfigPtr=r3
	e_add16i		r3,r3,CanTp_ChannelList_p@l		# ConfigPtr=r3 ConfigPtr=r3
	stw		r0,0(r3)		# ConfigPtr=r3
# 
#                 /* Get the confirmation pending Ram array */
#                 CanTp_ConfirmationPending_p = ConfigPtr->CanTp_CfgConfirmationPending_p;
	.d2line		280
	lwz		r0,44(r6)		# ConfigPtr=r6
	lis		r3,CanTp_ConfirmationPending_p@ha		# ConfigPtr=r3
	e_add16i		r3,r3,CanTp_ConfirmationPending_p@l		# ConfigPtr=r3 ConfigPtr=r3
	stw		r0,0(r3)		# ConfigPtr=r3
.L156:
#             }
#             else
#             {
#                 /* already initialized */
#             }
# 
#             CanTpRetVal = E_OK;
	.d2line		287
	diab.li		r31,0		# CanTpRetVal=r31
.Llo10:
	b		.L153
.L154:
#         }
# #if (CANTP_DEV_ERROR_DETECT == STD_ON)
#         else
#         {
#             /* Report to DET */
#             (void)Det_ReportError(CANTP_MODULE_ID, CANTP_INSTANCE_ID, CANTP_ID_INIT, CANTP_E_INIT_FAILED);
	.d2line		293
.Llo8:
	diab.li		r3,35		# ConfigPtr=r3
	diab.li		r4,0
	diab.li		r5,1
	diab.li		r6,4		# ConfigPtr=r6
	bl		Det_ReportError
.L153:
#         }
# #endif
#     }
# 
#     return CanTpRetVal;
	.d2line		298
	rlwinm		r3,r31,0,24,31		# ConfigPtr=r3 CanTpRetVal=r31
# }/* End of CanTp_VersionAndDetCheck () */
	.d2line		299
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo11:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L182:
	.type		CanTp_VersionAndDetCheck,@function
	.size		CanTp_VersionAndDetCheck,.-CanTp_VersionAndDetCheck
# Number of nodes = 101

# Allocations for CanTp_VersionAndDetCheck
#	?a4		ConfigPtr
#	?a5		CanTpRetVal
# FUNC(void, CANTP_CODE) CanTp_Init
	.align		2
	.section	.text_vle
        .d2line         78,24
#$$ld
.L189:

#$$bf	CanTp_Init,interprocedural,rasave,nostackparams
	.globl		CanTp_Init
	.d2_cfa_start __cie
CanTp_Init:
.Llo12:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
.Llo28:
	stw		r0,20(r1)		# ReturnVal=r0
	.d2_cfa_offset    108,-1
	.d2prologue_end
# (
#     /* PRQA S 3227 1 *//* API is defined as the standard specified (no const)*/
#     P2CONST(CanTp_ConfigType, AUTOMATIC, AUTOMATIC) ConfigPtr
# )
# {
#     /*Counter variable for identifying channel*/
#     VAR(uint8, AUTOMATIC) Channel_u8;
# 
#     /*Counter variable for identifying RxNSdu */
#     VAR(PduIdType, AUTOMATIC) RxNSdu_u8;
# 
#     /*Pointer to hold the Channel Structure address*/
#     P2VAR(CanTp_Channel_t, AUTOMATIC, CANTP_APPL_DATA) CanTpChannel_p;
# 
#     /*Pointer to hold the RxNSdu_BS_STmin Structure address*/
#     P2VAR(CanTp_RxNSduParams_t, AUTOMATIC, CANTP_APPL_DATA) CanTpRxNSdu_BS_STmin_p;
# 
#     /*Counter variable for identifying channel*/
#     VAR(Std_ReturnType, AUTOMATIC) ReturnVal;
# 
#     /*Counter variable for identifying Confirmation pending array */
#     VAR(PduIdType, AUTOMATIC) ConfArrayIdx;
# 
#     /* Check for DET and Version info details */
#     ReturnVal = CanTp_VersionAndDetCheck(ConfigPtr);
	.d2line		103
	mr		r0,r3		# ConfigPtr=r0 ConfigPtr=r3
.Llo29:
	bl		CanTp_VersionAndDetCheck
.Llo13:
	mr		r3,r3		# ReturnVal=r3 ReturnVal=r3
# 
#     if(E_OK == ReturnVal)
	.d2line		105
	rlwinm		r3,r3,0,24,31		# ReturnVal=r3 ReturnVal=r3
	se_cmpi		r3,0		# ReturnVal=r3
	bc		0,2,.L127	# ne
#     {
#         /*Check whether the  module is already on OFF state*/
#         if(CANTP_OFF == CanTp_Status)
	.d2line		108
.Llo30:
	lis		r3,CanTp_Status@ha		# ReturnVal=r3
.Llo31:
	lwz		r0,CanTp_Status@l(r3)		# ReturnVal=r0 ReturnVal=r3
	se_cmpi		r0,0		# ReturnVal=r0
	bc		0,2,.L129	# ne
#         {
# 
#             /*Initialise the Connection channel - Set to default values*/
#             for(Channel_u8 = CANTP_CHANNEL_INDEX_START_ZERO;
	.d2line		112
.Llo32:
	diab.li		r3,0		# Channel_u8=r3
.L130:
.Llo14:
	rlwinm		r0,r3,0,24,31		# ReturnVal=r0 Channel_u8=r3
.Llo33:
	lis		r4,CanTp_GeneralConfig_p@ha		# CanTpChannel_p=r4
.Llo18:
	lwz		r4,CanTp_GeneralConfig_p@l(r4)		# CanTpChannel_p=r4 CanTpChannel_p=r4
	lbz		r4,6(r4)		# CanTpChannel_p=r4 CanTpChannel_p=r4
	se_cmp		r0,r4		# ReturnVal=r0 CanTpChannel_p=r4
	bc		0,0,.L132	# ge
#                     Channel_u8 < CanTp_GeneralConfig_p->Channel_Max_u8;
#                     Channel_u8++)
#             {
#                 /*Copy the Channel address*/
#                 CanTpChannel_p = &CanTp_ChannelList_p[Channel_u8];
	.d2line		117
.Llo19:
	lis		r4,CanTp_ChannelList_p@ha		# CanTpChannel_p=r4
.Llo20:
	lwz		r4,CanTp_ChannelList_p@l(r4)		# CanTpChannel_p=r4 CanTpChannel_p=r4
	rlwinm		r0,r3,0,24,31		# ReturnVal=r0 Channel_u8=r3
.Llo34:
	e_mulli		r0,r0,52		# ReturnVal=r0 ReturnVal=r0
	se_add		r0,r4		# ReturnVal=r0 ReturnVal=r0 CanTpChannel_p=r4
.Llo35:
	mr		r4,r0		# CanTpChannel_p=r4 CanTpChannel_p=r0
# 
#                 /* set Channel to initial state*/
#                 CanTpChannel_p->ChannelIdx_u8 = Channel_u8;
	.d2line		120
	stb		r3,0(r4)		# CanTpChannel_p=r4 Channel_u8=r3
#                 CanTpChannel_p->IPduId = 0U;
	.d2line		121
	diab.li		r5,0
	sth		r5,2(r4)		# CanTpChannel_p=r4
#                 CanTpChannel_p->ProcessedLength = 0U;
	.d2line		122
	sth		r5,10(r4)		# CanTpChannel_p=r4
#                 CanTpChannel_p->SequenceNumber_u8 = CANTP_SEQUENCE_START_ONE;
	.d2line		123
	diab.li		r0,1		# ReturnVal=r0
.Llo36:
	stb		r0,20(r4)		# CanTpChannel_p=r4 ReturnVal=r0
#                 CanTpChannel_p->ProvidedBufferSize = 0U;
	.d2line		124
	sth		r5,12(r4)		# CanTpChannel_p=r4
#                 CanTpChannel_p->BlockSize_u16 = 0U;
	.d2line		125
	sth		r5,16(r4)		# CanTpChannel_p=r4
#                 CanTpChannel_p->TempLength_u8 = 0U;
	.d2line		126
	stb		r5,29(r4)		# CanTpChannel_p=r4
#                 CanTpChannel_p->WftCounter_u16 = 0U;
	.d2line		127
	sth		r5,18(r4)		# CanTpChannel_p=r4
#                 CanTpChannel_p->ULayerIndFlag_b = CANTP_TRUE;
	.d2line		128
	stb		r0,39(r4)		# CanTpChannel_p=r4 ReturnVal=r0
#                 CanTpChannel_p->TimeoutTicks_u16 = 0U;
	.d2line		129
	sth		r5,4(r4)		# CanTpChannel_p=r4
#                 CanTpChannel_p->StMin_u8 = CANTP_STMIN_MAX_MS;
	.d2line		130
	diab.li		r0,127		# ReturnVal=r0
	stb		r0,21(r4)		# CanTpChannel_p=r4 ReturnVal=r0
#                 CanTpChannel_p->ShutdownFlag_b = CANTP_FALSE;
	.d2line		131
	stb		r5,40(r4)		# CanTpChannel_p=r4
#                 CanTpChannel_p->State_u8 = CANTP_CH_IDLE;
	.d2line		132
	stb		r5,14(r4)		# CanTpChannel_p=r4
#                 CanTpChannel_p->NextState_u8 = CANTP_CH_IDLE;
	.d2line		133
	stb		r5,15(r4)		# CanTpChannel_p=r4
#                 CanTpChannel_p->StMinTicks_u16 = 0U;
	.d2line		134
	sth		r5,6(r4)		# CanTpChannel_p=r4
#                 CanTpChannel_p->RequiredBufferSize = 0U;
	.d2line		135
	sth		r5,46(r4)		# CanTpChannel_p=r4
#                 CanTpChannel_p->LastCFofNSduFlag_b = CANTP_FALSE;
	.d2line		136
	stb		r5,44(r4)		# CanTpChannel_p=r4
#                 CanTpChannel_p->TotalLength = 0U;
	.d2line		137
	sth		r5,8(r4)		# CanTpChannel_p=r4
#                 CanTpChannel_p->CanIfDLC_u8 = 0U;
	.d2line		138
	stb		r5,30(r4)		# CanTpChannel_p=r4
#                 CanTpChannel_p->RemainingCFInBlock_u16 = 0U;
	.d2line		139
	sth		r5,42(r4)		# CanTpChannel_p=r4
#                 CanTpChannel_p->CriticalSectionStatus_b = CANTP_FALSE;
	.d2line		140
	stb		r5,50(r4)		# CanTpChannel_p=r4
# 
# #if (CANTP_DEV_ERROR_DETECT == STD_ON)
#                 CanTpChannel_p->CallerApiId = CANTP_GENERAL_ZERO;
	.d2line		143
	stb		r5,48(r4)		# CanTpChannel_p=r4
# #endif
#             }
	.d2line		145
	diab.addi		r0,r3,1		# ReturnVal=r0 Channel_u8=r3
.Llo37:
	se_addi		r3,1		# Channel_u8=r3 Channel_u8=r3
	b		.L130
.L132:
# 
#             /*Initialize values for TP_BS and TP_STmin*/
#             for(RxNSdu_u8 = 0U;
	.d2line		148
.Llo15:
	diab.li		r3,0		# RxNSdu_u8=r3
.L133:
.Llo16:
	rlwinm		r7,r3,0,16,31		# RxNSdu_u8=r3
	lis		r4,CanTp_GeneralConfig_p@ha		# CanTpChannel_p=r4
.Llo21:
	lwz		r4,CanTp_GeneralConfig_p@l(r4)		# CanTpChannel_p=r4 CanTpChannel_p=r4
	lhz		r0,4(r4)		# ReturnVal=r0 CanTpChannel_p=r4
.Llo38:
	se_cmp		r7,r0		# ReturnVal=r0
	bc		0,0,.L135	# ge
#                     RxNSdu_u8 < CanTp_GeneralConfig_p->RxNSduId_Count;
#                     RxNSdu_u8++)
#             {
#                 /*Copy the CanTpRxNSdu_BS_STmin address*/
#                 CanTpRxNSdu_BS_STmin_p = &CanTp_RxNSduParams_p[RxNSdu_u8];
	.d2line		153
.Llo22:
	lis		r4,CanTp_RxNSduParams_p@ha		# CanTpRxNSdu_BS_STmin_p=r4
.Llo27:
	lwz		r4,CanTp_RxNSduParams_p@l(r4)		# CanTpRxNSdu_BS_STmin_p=r4 CanTpRxNSdu_BS_STmin_p=r4
	rlwinm		r7,r3,1,15,30		# RxNSdu_u8=r3
	se_add		r4,r7		# CanTpRxNSdu_BS_STmin_p=r4 CanTpRxNSdu_BS_STmin_p=r4
	mr		r4,r4		# CanTpRxNSdu_BS_STmin_p=r4 CanTpRxNSdu_BS_STmin_p=r4
# 
#                 /* set CanTpRxNSdu_BS_STmin to initial values (BS and STmin) from configuration values*/
#                 CanTpRxNSdu_BS_STmin_p->CanTpBs_u8 = CanTp_RxNSduConfig_p[RxNSdu_u8].CanTpBsConf_u8;
	.d2line		156
	lis		r5,CanTp_RxNSduConfig_p@ha
	lwz		r6,CanTp_RxNSduConfig_p@l(r5)
	rlwinm		r7,r3,4,12,27		# RxNSdu_u8=r3
	lbzux		r0,r6,r7		# ReturnVal=r0
.Llo39:
	stb		r0,0(r4)		# CanTpRxNSdu_BS_STmin_p=r4 ReturnVal=r0
#                 CanTpRxNSdu_BS_STmin_p->CanTpSTmin_u8 = CanTp_RxNSduConfig_p[RxNSdu_u8].CanTpSTminConf_u8;
	.d2line		157
	lwz		r0,CanTp_RxNSduConfig_p@l(r5)		# ReturnVal=r0
	se_add		r7,r0		# ReturnVal=r0
	lbz		r0,10(r7)		# ReturnVal=r0
	stb		r0,1(r4)		# CanTpRxNSdu_BS_STmin_p=r4 ReturnVal=r0
# 
#             }
	.d2line		159
	diab.addi		r7,r3,1		# RxNSdu_u8=r3
	se_addi		r3,1		# RxNSdu_u8=r3 RxNSdu_u8=r3
	b		.L133
.L135:
#             /*Initialize values of confirmation flags*/
#             for(ConfArrayIdx = 0U;
	.d2line		161
.Llo17:
	diab.li		r3,0		# ConfArrayIdx=r3
.L136:
.Llo43:
	rlwinm		r0,r3,0,16,31		# ReturnVal=r0 ConfArrayIdx=r3
.Llo40:
	lis		r4,CanTp_GeneralConfig_p@ha		# CanTpChannel_p=r4
.Llo23:
	lwz		r4,CanTp_GeneralConfig_p@l(r4)		# CanTpChannel_p=r4 CanTpChannel_p=r4
	lhz		r4,14(r4)		# CanTpChannel_p=r4 CanTpChannel_p=r4
	se_cmp		r0,r4		# ReturnVal=r0 CanTpChannel_p=r4
	bc		0,0,.L138	# ge
#                     ConfArrayIdx < CanTp_GeneralConfig_p->ConfirmationLength;
#                     ConfArrayIdx++)
#             {
#                 /*Set the module to ON state*/
#                 CanTp_ConfirmationPending_p[ConfArrayIdx] = CANTP_FALSE;
	.d2line		166
.Llo24:
	diab.li		r5,0
	lis		r4,CanTp_ConfirmationPending_p@ha		# CanTpChannel_p=r4
.Llo25:
	lwz		r4,CanTp_ConfirmationPending_p@l(r4)		# CanTpChannel_p=r4 CanTpChannel_p=r4
	rlwinm		r0,r3,0,16,31		# ReturnVal=r0 ConfArrayIdx=r3
	stbx		r5,r4,r0		# CanTpChannel_p=r4
#             }
	.d2line		167
	diab.addi		r0,r3,1		# ReturnVal=r0 ConfArrayIdx=r3
	se_addi		r3,1		# ConfArrayIdx=r3 ConfArrayIdx=r3
	b		.L136
.L138:
# 
#             /*Set the module to ON state*/
#             CanTp_Status = CANTP_ON;
	.d2line		170
.Llo26:
	diab.li		r0,1		# ReturnVal=r0
.Llo41:
	lis		r3,CanTp_Status@ha		# ConfArrayIdx=r3
.Llo44:
	e_add16i		r3,r3,CanTp_Status@l		# ConfArrayIdx=r3 ConfArrayIdx=r3
	stw		r0,0(r3)		# ConfArrayIdx=r3 ReturnVal=r0
	b		.L127
.L129:
# 
#         }
#         else
#         {
#             /* Reset the Channels */
#             CanTp_ResetChannels(
	.d2line		176
.Llo42:
	diab.li		r3,1		# ReturnVal=r3
	bl		CanTp_ResetChannels
.L127:
# #if (CANTP_DEV_ERROR_DETECT == STD_ON)
#                     CANTP_ID_INIT
# #endif
#             );
#         }
#     }/* End if(E_OK == CanTp_VersionAndDetCheck(ConfigPtr)) */
# } /* End of CanTp_Init( ) */
	.d2line		183
	.d2epilogue_begin
	lwz		r0,20(r1)		# ReturnVal=r0
	mtspr		lr,r0		# ReturnVal=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L190:
	.type		CanTp_Init,@function
	.size		CanTp_Init,.-CanTp_Init
# Number of nodes = 240

# Allocations for CanTp_Init
#	?a4		ConfigPtr
#	?a5		Channel_u8
#	?a6		RxNSdu_u8
#	?a7		CanTpChannel_p
#	?a8		CanTpRxNSdu_BS_STmin_p
#	?a9		ReturnVal
#	?a10		ConfArrayIdx

# Allocations for module
	.section	.text_vle
	.0byte		.L214
	.section	.text_vle
#$$ld
.L5:
.L262:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTp\\ssc\\make\\..\\inc\\CanTp_Types.h"
.L221:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTp\\ssc\\make\\..\\inc\\CanTp_Private.h"
.L215:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTp\\ssc\\make\\..\\inc\\CanTp.h"
.L166:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTp\\ssc\\make\\..\\src\\CanTp_Init.c"
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTp\\ssc\\make\\..\\src\\CanTp_Init.c"
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
.L170:
	.sleb128	2
	.4byte		.L163-.L2
	.byte		"CanTp_ConsistencyCheck"
	.byte		0
	.4byte		.L166
	.uleb128	197
	.uleb128	41
	.4byte		.L167
	.byte		0x1
	.byte		0x1
	.4byte		.L164
	.4byte		.L165
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L166
	.uleb128	197
	.uleb128	41
	.byte		"ConfigPtr"
	.byte		0
	.4byte		.L171
	.4byte		.L176
	.section	.debug_info,,n
.L177:
	.sleb128	4
	.4byte		.L166
	.uleb128	202
	.uleb128	36
	.byte		"Retval"
	.byte		0
	.4byte		.L167
	.4byte		.L178
	.section	.debug_info,,n
	.sleb128	0
.L163:
	.section	.debug_info,,n
.L183:
	.sleb128	5
	.4byte		.L180-.L2
	.byte		"CanTp_VersionAndDetCheck"
	.byte		0
	.4byte		.L166
	.uleb128	231
	.uleb128	41
	.4byte		.L167
	.byte		0x1
	.4byte		.L181
	.4byte		.L182
	.sleb128	3
	.4byte		.L166
	.uleb128	231
	.uleb128	41
	.byte		"ConfigPtr"
	.byte		0
	.4byte		.L171
	.4byte		.L184
.L185:
	.sleb128	4
	.4byte		.L166
	.uleb128	237
	.uleb128	36
	.byte		"CanTpRetVal"
	.byte		0
	.4byte		.L167
	.4byte		.L186
	.section	.debug_info,,n
	.sleb128	0
.L180:
	.section	.debug_info,,n
.L191:
	.sleb128	6
	.4byte		.L188-.L2
	.byte		"CanTp_Init"
	.byte		0
	.4byte		.L166
	.uleb128	78
	.uleb128	24
	.byte		0x1
	.byte		0x1
	.4byte		.L189
	.4byte		.L190
	.sleb128	3
	.4byte		.L166
	.uleb128	78
	.uleb128	24
	.byte		"ConfigPtr"
	.byte		0
	.4byte		.L172
	.4byte		.L192
.L193:
	.sleb128	4
	.4byte		.L166
	.uleb128	85
	.uleb128	27
	.byte		"Channel_u8"
	.byte		0
	.4byte		.L168
	.4byte		.L194
.L195:
	.sleb128	4
	.4byte		.L166
	.uleb128	88
	.uleb128	31
	.byte		"RxNSdu_u8"
	.byte		0
	.4byte		.L196
	.4byte		.L199
.L200:
	.sleb128	4
	.4byte		.L166
	.uleb128	91
	.uleb128	56
	.byte		"CanTpChannel_p"
	.byte		0
	.4byte		.L201
	.4byte		.L204
.L205:
	.sleb128	4
	.4byte		.L166
	.uleb128	94
	.uleb128	61
	.byte		"CanTpRxNSdu_BS_STmin_p"
	.byte		0
	.4byte		.L206
	.4byte		.L209
.L210:
	.sleb128	4
	.4byte		.L166
	.uleb128	97
	.uleb128	36
	.byte		"ReturnVal"
	.byte		0
	.4byte		.L167
	.4byte		.L211
.L212:
	.sleb128	4
	.4byte		.L166
	.uleb128	100
	.uleb128	31
	.byte		"ConfArrayIdx"
	.byte		0
	.4byte		.L196
	.4byte		.L213
	.section	.debug_info,,n
	.sleb128	0
.L188:
	.section	.debug_info,,n
.L214:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L215
	.uleb128	494
	.uleb128	35
	.byte		"CanTp_LTtoPCHashValue"
	.byte		0
	.4byte		.L216
	.section	.debug_info,,n
.L219:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L215
	.uleb128	497
	.uleb128	35
	.byte		"CanTp_LTHashValue"
	.byte		0
	.4byte		.L216
.L220:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L221
	.uleb128	481
	.uleb128	53
	.byte		"CanTp_RxNsduFound_p"
	.byte		0
	.4byte		.L222
	.0byte		.L220
.L224:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L221
	.uleb128	487
	.uleb128	61
	.byte		"CanTp_RxNSdu_p"
	.byte		0
	.4byte		.L225
.L229:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L221
	.uleb128	493
	.uleb128	67
	.byte		"CanTp_RxNSduConfig_p"
	.byte		0
	.4byte		.L230
.L234:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L221
	.uleb128	498
	.uleb128	61
	.byte		"CanTp_TxNSdu_p"
	.byte		0
	.4byte		.L235
.L239:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L221
	.uleb128	504
	.uleb128	67
	.byte		"CanTp_TxNSduConfig_p"
	.byte		0
	.4byte		.L240
.L244:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L221
	.uleb128	510
	.uleb128	64
	.byte		"CanTp_RxNSduParams_p"
	.byte		0
	.4byte		.L206
.L245:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L221
	.uleb128	516
	.uleb128	63
	.byte		"CanTp_RxLookup_p"
	.byte		0
	.4byte		.L246
.L250:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L221
	.uleb128	522
	.uleb128	68
	.byte		"CanTp_GeneralConfig_p"
	.byte		0
	.4byte		.L251
.L255:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L221
	.uleb128	528
	.uleb128	59
	.byte		"CanTp_ChannelList_p"
	.byte		0
	.4byte		.L201
.L256:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L221
	.uleb128	535
	.uleb128	51
	.byte		"CanTp_ConfirmationPending_p"
	.byte		0
	.4byte		.L257
.L259:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L221
	.uleb128	546
	.uleb128	39
	.byte		"CanTp_Status"
	.byte		0
	.4byte		.L260
	.section	.debug_info,,n
.L175:
	.sleb128	8
	.4byte		.L262
	.uleb128	117
	.uleb128	1
	.4byte		.L263-.L2
	.uleb128	48
	.section	.debug_info,,n
.L107:
	.sleb128	9
	.byte		"CanTp_RxConfig_p"
	.byte		0
	.4byte		.L230
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L108:
	.sleb128	9
	.byte		"CanTp_TxConfig_p"
	.byte		0
	.4byte		.L240
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L109:
	.sleb128	9
	.byte		"CanTp_CfgRxNSdu_p"
	.byte		0
	.4byte		.L225
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L110:
	.sleb128	9
	.byte		"CanTp_CfgTxNSdu_p"
	.byte		0
	.4byte		.L235
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L111:
	.sleb128	9
	.byte		"CanTp_CfgRxLookup_p"
	.byte		0
	.4byte		.L246
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L112:
	.sleb128	9
	.byte		"CanTp_CfgGeneralConfig_p"
	.byte		0
	.4byte		.L251
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L113:
	.sleb128	9
	.byte		"PBtoPCHashValue_P"
	.byte		0
	.4byte		.L264
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L114:
	.sleb128	9
	.byte		"PBtoLTHashValue_P"
	.byte		0
	.4byte		.L264
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L115:
	.sleb128	9
	.byte		"CanTp_RxNSduParamsConfig_p"
	.byte		0
	.4byte		.L206
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L116:
	.sleb128	9
	.byte		"CanTp_CfgChannel_p"
	.byte		0
	.4byte		.L201
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L117:
	.sleb128	9
	.byte		"CanTp_CfgRxNsduFound_p"
	.byte		0
	.4byte		.L222
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L118:
	.sleb128	9
	.byte		"CanTp_CfgConfirmationPending_p"
	.byte		0
	.4byte		.L257
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
	.sleb128	0
.L263:
.L208:
	.sleb128	8
	.4byte		.L262
	.uleb128	117
	.uleb128	1
	.4byte		.L265-.L2
	.uleb128	2
.L105:
	.sleb128	9
	.byte		"CanTpBs_u8"
	.byte		0
	.4byte		.L168
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L106:
	.sleb128	9
	.byte		"CanTpSTmin_u8"
	.byte		0
	.4byte		.L168
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
	.sleb128	0
.L265:
.L254:
	.sleb128	8
	.4byte		.L262
	.uleb128	117
	.uleb128	1
	.4byte		.L266-.L2
	.uleb128	16
.L97:
	.sleb128	9
	.byte		"TxNSduId_Max"
	.byte		0
	.4byte		.L267
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L98:
	.sleb128	9
	.byte		"RxNPduId_Max"
	.byte		0
	.4byte		.L267
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L99:
	.sleb128	9
	.byte		"RxNSduId_Count"
	.byte		0
	.4byte		.L267
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L100:
	.sleb128	9
	.byte		"Channel_Max_u8"
	.byte		0
	.4byte		.L268
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L101:
	.sleb128	9
	.byte		"CanTp_Mf_Resolution_u16"
	.byte		0
	.4byte		.L223
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L102:
	.sleb128	9
	.byte		"CanTp_Cfg_PaddingByte_u8"
	.byte		0
	.4byte		.L268
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L103:
	.sleb128	9
	.byte		"RxNsduId_Max_u16"
	.byte		0
	.4byte		.L223
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L104:
	.sleb128	9
	.byte		"ConfirmationLength"
	.byte		0
	.4byte		.L223
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
	.sleb128	0
.L266:
.L249:
	.sleb128	8
	.4byte		.L262
	.uleb128	117
	.uleb128	1
	.4byte		.L269-.L2
	.uleb128	12
.L92:
	.sleb128	9
	.byte		"PduIndex"
	.byte		0
	.4byte		.L267
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L93:
	.sleb128	9
	.byte		"NextPdu"
	.byte		0
	.4byte		.L267
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L94:
	.sleb128	9
	.byte		"AddressingFormat"
	.byte		0
	.4byte		.L270
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L95:
	.sleb128	9
	.byte		"N_SA_AE_u8"
	.byte		0
	.4byte		.L268
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L96:
	.sleb128	9
	.byte		"Direction_b"
	.byte		0
	.4byte		.L273
	.sleb128	2
	.byte		0x23
	.uleb128	9
	.byte		0x1
	.sleb128	0
.L269:
.L243:
	.sleb128	8
	.4byte		.L262
	.uleb128	117
	.uleb128	1
	.4byte		.L274-.L2
	.uleb128	12
.L86:
	.sleb128	9
	.byte		"CanTpNas_u16"
	.byte		0
	.4byte		.L223
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L87:
	.sleb128	9
	.byte		"CanTpNbs_u16"
	.byte		0
	.4byte		.L223
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L88:
	.sleb128	9
	.byte		"CanTpNcs_u16"
	.byte		0
	.4byte		.L223
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L89:
	.sleb128	9
	.byte		"CanTpTxCanIfNPduId"
	.byte		0
	.4byte		.L267
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L90:
	.sleb128	9
	.byte		"CanTpTxConfirmationId"
	.byte		0
	.4byte		.L267
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L91:
	.sleb128	9
	.byte		"CanTpPduRConfId"
	.byte		0
	.4byte		.L223
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
	.sleb128	0
.L274:
.L238:
	.sleb128	8
	.4byte		.L262
	.uleb128	117
	.uleb128	1
	.4byte		.L275-.L2
	.uleb128	28
.L79:
	.sleb128	9
	.byte		"CanTpAddressingMode"
	.byte		0
	.4byte		.L270
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L80:
	.sleb128	9
	.byte		"CanTpTxChannel_u8"
	.byte		0
	.4byte		.L268
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L81:
	.sleb128	9
	.byte		"CanTpTxPaddingActivation"
	.byte		0
	.4byte		.L276
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L82:
	.sleb128	9
	.byte		"CanTpTc_b"
	.byte		0
	.4byte		.L276
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L83:
	.sleb128	9
	.byte		"CanTpTxTaType"
	.byte		0
	.4byte		.L277
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L84:
	.sleb128	9
	.byte		"CanTp_TargetAddress_u8"
	.byte		0
	.4byte		.L268
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L85:
	.sleb128	9
	.byte		"FrameType"
	.byte		0
	.4byte		.L280
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
	.sleb128	0
.L275:
.L233:
	.sleb128	8
	.4byte		.L262
	.uleb128	117
	.uleb128	1
	.4byte		.L283-.L2
	.uleb128	16
.L71:
	.sleb128	9
	.byte		"CanTpBsConf_u8"
	.byte		0
	.4byte		.L268
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L72:
	.sleb128	9
	.byte		"CanTpNar_u16"
	.byte		0
	.4byte		.L223
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L73:
	.sleb128	9
	.byte		"CanTpNbr_u16"
	.byte		0
	.4byte		.L223
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L74:
	.sleb128	9
	.byte		"CanTpNcr_u16"
	.byte		0
	.4byte		.L223
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L75:
	.sleb128	9
	.byte		"CanTpRxWftMax_u16"
	.byte		0
	.4byte		.L223
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L76:
	.sleb128	9
	.byte		"CanTpSTminConf_u8"
	.byte		0
	.4byte		.L268
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L77:
	.sleb128	9
	.byte		"CanTpTxFcNPduIdConf"
	.byte		0
	.4byte		.L267
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L78:
	.sleb128	9
	.byte		"CanTpTxFcNPduCanIf"
	.byte		0
	.4byte		.L267
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
	.sleb128	0
.L283:
.L228:
	.sleb128	8
	.4byte		.L262
	.uleb128	117
	.uleb128	1
	.4byte		.L284-.L2
	.uleb128	24
.L64:
	.sleb128	9
	.byte		"CanTpAddressingMode"
	.byte		0
	.4byte		.L270
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L65:
	.sleb128	9
	.byte		"CanTpRxChannel_u8"
	.byte		0
	.4byte		.L268
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L66:
	.sleb128	9
	.byte		"CanTpRxPaddingActivation"
	.byte		0
	.4byte		.L276
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L67:
	.sleb128	9
	.byte		"CanTpRxTaType"
	.byte		0
	.4byte		.L277
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L68:
	.sleb128	9
	.byte		"CanTp_TargetAddress_u8"
	.byte		0
	.4byte		.L268
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L69:
	.sleb128	9
	.byte		"CanTpRxNSduId"
	.byte		0
	.4byte		.L267
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L70:
	.sleb128	9
	.byte		"FrameType"
	.byte		0
	.4byte		.L280
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L284:
.L203:
	.sleb128	8
	.4byte		.L262
	.uleb128	117
	.uleb128	1
	.4byte		.L285-.L2
	.uleb128	52
.L39:
	.sleb128	9
	.byte		"ChannelIdx_u8"
	.byte		0
	.4byte		.L168
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L40:
	.sleb128	9
	.byte		"IPduId"
	.byte		0
	.4byte		.L196
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L41:
	.sleb128	9
	.byte		"TimeoutTicks_u16"
	.byte		0
	.4byte		.L197
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L42:
	.sleb128	9
	.byte		"StMinTicks_u16"
	.byte		0
	.4byte		.L197
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L43:
	.sleb128	9
	.byte		"TotalLength"
	.byte		0
	.4byte		.L286
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L44:
	.sleb128	9
	.byte		"ProcessedLength"
	.byte		0
	.4byte		.L286
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L45:
	.sleb128	9
	.byte		"ProvidedBufferSize"
	.byte		0
	.4byte		.L286
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L46:
	.sleb128	9
	.byte		"State_u8"
	.byte		0
	.4byte		.L168
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L47:
	.sleb128	9
	.byte		"NextState_u8"
	.byte		0
	.4byte		.L168
	.sleb128	2
	.byte		0x23
	.uleb128	15
	.byte		0x1
.L48:
	.sleb128	9
	.byte		"BlockSize_u16"
	.byte		0
	.4byte		.L197
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L49:
	.sleb128	9
	.byte		"WftCounter_u16"
	.byte		0
	.4byte		.L197
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L50:
	.sleb128	9
	.byte		"SequenceNumber_u8"
	.byte		0
	.4byte		.L168
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L51:
	.sleb128	9
	.byte		"StMin_u8"
	.byte		0
	.4byte		.L168
	.sleb128	2
	.byte		0x23
	.uleb128	21
	.byte		0x1
.L52:
	.sleb128	9
	.byte		"TempBuffer_au8"
	.byte		0
	.4byte		.L287
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L53:
	.sleb128	9
	.byte		"TempLength_u8"
	.byte		0
	.4byte		.L168
	.sleb128	2
	.byte		0x23
	.uleb128	29
	.byte		0x1
.L54:
	.sleb128	9
	.byte		"CanIfDLC_u8"
	.byte		0
	.4byte		.L168
	.sleb128	2
	.byte		0x23
	.uleb128	30
	.byte		0x1
.L55:
	.sleb128	9
	.byte		"CanIfData_au8"
	.byte		0
	.4byte		.L289
	.sleb128	2
	.byte		0x23
	.uleb128	31
	.byte		0x1
.L56:
	.sleb128	9
	.byte		"ULayerIndFlag_b"
	.byte		0
	.4byte		.L258
	.sleb128	2
	.byte		0x23
	.uleb128	39
	.byte		0x1
.L57:
	.sleb128	9
	.byte		"ShutdownFlag_b"
	.byte		0
	.4byte		.L258
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L58:
	.sleb128	9
	.byte		"RemainingCFInBlock_u16"
	.byte		0
	.4byte		.L197
	.sleb128	2
	.byte		0x23
	.uleb128	42
	.byte		0x1
.L59:
	.sleb128	9
	.byte		"LastCFofNSduFlag_b"
	.byte		0
	.4byte		.L258
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L60:
	.sleb128	9
	.byte		"RequiredBufferSize"
	.byte		0
	.4byte		.L286
	.sleb128	2
	.byte		0x23
	.uleb128	46
	.byte		0x1
.L61:
	.sleb128	9
	.byte		"CallerApiId"
	.byte		0
	.4byte		.L168
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L62:
	.sleb128	9
	.byte		"FrameSize"
	.byte		0
	.4byte		.L168
	.sleb128	2
	.byte		0x23
	.uleb128	49
	.byte		0x1
.L63:
	.sleb128	9
	.byte		"CriticalSectionStatus_b"
	.byte		0
	.4byte		.L258
	.sleb128	2
	.byte		0x23
	.uleb128	50
	.byte		0x1
	.sleb128	0
.L285:
	.section	.debug_info,,n
.L282:
	.sleb128	10
	.4byte		.L262
	.uleb128	117
	.uleb128	1
	.4byte		.L291-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	11
	.byte		"CANTP_FRAME_TYPE_CAN20"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"CANTP_FRAME_TYPE_CANFD"
	.byte		0
	.sleb128	1
	.sleb128	0
.L291:
.L279:
	.sleb128	10
	.4byte		.L262
	.uleb128	108
	.uleb128	1
	.4byte		.L292-.L2
	.uleb128	4
	.sleb128	11
	.byte		"CANTP_FUNCTIONAL"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"CANTP_PHYSICAL"
	.byte		0
	.sleb128	1
	.sleb128	0
.L292:
.L261:
	.sleb128	10
	.4byte		.L262
	.uleb128	98
	.uleb128	1
	.4byte		.L293-.L2
	.uleb128	4
	.sleb128	11
	.byte		"CANTP_OFF"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"CANTP_ON"
	.byte		0
	.sleb128	1
	.sleb128	0
.L293:
.L272:
	.sleb128	10
	.4byte		.L262
	.uleb128	87
	.uleb128	1
	.4byte		.L294-.L2
	.uleb128	4
	.sleb128	11
	.byte		"CANTP_STANDARD"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"CANTP_EXTENDED"
	.byte		0
	.sleb128	1
	.sleb128	11
	.byte		"CANTP_MIXED"
	.byte		0
	.sleb128	2
	.sleb128	0
.L294:
	.section	.debug_info,,n
.L169:
	.sleb128	12
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L168:
	.sleb128	13
	.byte		"uint8"
	.byte		0
	.4byte		.L169
.L167:
	.sleb128	13
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L168
.L174:
	.sleb128	13
	.byte		"CanTp_ConfigType"
	.byte		0
	.4byte		.L175
	.section	.debug_info,,n
.L173:
	.sleb128	14
	.4byte		.L174
	.section	.debug_info,,n
.L172:
	.sleb128	15
	.4byte		.L173
.L171:
	.sleb128	14
	.4byte		.L172
.L198:
	.sleb128	12
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L197:
	.sleb128	13
	.byte		"uint16"
	.byte		0
	.4byte		.L198
.L196:
	.sleb128	13
	.byte		"PduIdType"
	.byte		0
	.4byte		.L197
.L202:
	.sleb128	13
	.byte		"CanTp_Channel_t"
	.byte		0
	.4byte		.L203
.L201:
	.sleb128	15
	.4byte		.L202
.L207:
	.sleb128	13
	.byte		"CanTp_RxNSduParams_t"
	.byte		0
	.4byte		.L208
.L206:
	.sleb128	15
	.4byte		.L207
.L218:
	.sleb128	12
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L217:
	.sleb128	13
	.byte		"uint32"
	.byte		0
	.4byte		.L218
.L216:
	.sleb128	14
	.4byte		.L217
.L223:
	.sleb128	14
	.4byte		.L197
.L222:
	.sleb128	15
	.4byte		.L223
.L227:
	.sleb128	13
	.byte		"CanTp_RxNSdu_t"
	.byte		0
	.4byte		.L228
.L226:
	.sleb128	14
	.4byte		.L227
.L225:
	.sleb128	15
	.4byte		.L226
.L232:
	.sleb128	13
	.byte		"CanTp_RxNSduConfig_t"
	.byte		0
	.4byte		.L233
.L231:
	.sleb128	14
	.4byte		.L232
.L230:
	.sleb128	15
	.4byte		.L231
.L237:
	.sleb128	13
	.byte		"CanTp_TxNSdu_t"
	.byte		0
	.4byte		.L238
.L236:
	.sleb128	14
	.4byte		.L237
.L235:
	.sleb128	15
	.4byte		.L236
.L242:
	.sleb128	13
	.byte		"CanTp_TxNSduConfig_t"
	.byte		0
	.4byte		.L243
.L241:
	.sleb128	14
	.4byte		.L242
.L240:
	.sleb128	15
	.4byte		.L241
.L248:
	.sleb128	13
	.byte		"CanTp_RxLookup_t"
	.byte		0
	.4byte		.L249
.L247:
	.sleb128	14
	.4byte		.L248
.L246:
	.sleb128	15
	.4byte		.L247
.L253:
	.sleb128	13
	.byte		"CanTp_GeneralConfig_t"
	.byte		0
	.4byte		.L254
.L252:
	.sleb128	14
	.4byte		.L253
.L251:
	.sleb128	15
	.4byte		.L252
.L258:
	.sleb128	13
	.byte		"boolean"
	.byte		0
	.4byte		.L169
.L257:
	.sleb128	15
	.4byte		.L258
.L260:
	.sleb128	13
	.byte		"CanTp_Status_t"
	.byte		0
	.4byte		.L261
.L264:
	.sleb128	15
	.4byte		.L216
.L267:
	.sleb128	14
	.4byte		.L196
.L268:
	.sleb128	14
	.4byte		.L168
.L271:
	.sleb128	13
	.byte		"CanTp_AddressingMode_t"
	.byte		0
	.4byte		.L272
.L270:
	.sleb128	14
	.4byte		.L271
.L273:
	.sleb128	14
	.4byte		.L258
.L276:
	.sleb128	14
	.4byte		.L260
.L278:
	.sleb128	13
	.byte		"CanTp_TaType_t"
	.byte		0
	.4byte		.L279
.L277:
	.sleb128	14
	.4byte		.L278
.L281:
	.sleb128	13
	.byte		"CanTp_FrameType_t"
	.byte		0
	.4byte		.L282
.L280:
	.sleb128	14
	.4byte		.L281
.L286:
	.sleb128	13
	.byte		"PduLengthType"
	.byte		0
	.4byte		.L197
	.section	.debug_info,,n
.L287:
	.sleb128	16
	.4byte		.L288-.L2
	.4byte		.L168
	.section	.debug_info,,n
	.sleb128	17
	.uleb128	6
	.sleb128	0
.L288:
.L289:
	.sleb128	16
	.4byte		.L290-.L2
	.4byte		.L168
	.sleb128	17
	.uleb128	7
	.sleb128	0
.L290:
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L176:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locend
.L178:
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),5
	.d2locend
.L184:
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),3
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),6
	.d2locend
.L186:
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo9),31
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo11),31
	.d2locend
.L192:
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo13),3
	.d2locend
.L194:
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo15),3
	.d2locend
.L199:
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo17),3
	.d2locend
.L204:
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo19),4
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo15),4
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo22),4
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo24),4
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo26),4
	.d2locend
.L209:
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo17),4
	.d2locend
.L211:
	.d2locreg	%offsetof(.Llo28), %offsetof(.Llo29),0
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo30),3
	.d2locreg	%offsetof(.Llo31), %offsetof(.Llo32),3
	.d2locreg	%offsetof(.Llo33), %offsetof(.Llo19),0
	.d2locreg	%offsetof(.Llo34), %offsetof(.Llo35),0
	.d2locreg	%offsetof(.Llo36), %offsetof(.Llo37),0
	.d2locreg	%offsetof(.Llo38), %offsetof(.Llo22),0
	.d2locreg	%offsetof(.Llo39), %offsetof(.Llo17),0
	.d2locreg	%offsetof(.Llo40), %offsetof(.Llo24),0
	.d2locreg	%offsetof(.Llo41), %offsetof(.Llo42),0
	.d2locend
.L213:
	.d2locreg	%offsetof(.Llo43), %offsetof(.Llo26),3
	.d2locreg	%offsetof(.Llo44), %offsetof(.Llo42),3
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "CanTp_Init"
	.wrcm.nstrlist "calls", "CanTp_ResetChannels","CanTp_VersionAndDetCheck"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "CanTp_VersionAndDetCheck"
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "CanTp_ConsistencyCheck","Det_ReportError"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "CanTp_ConsistencyCheck"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanTp_Init.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanTp_Init.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanTp_Init.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanTp_Init.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanTp_Init.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanTp_Init.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\CanTp\ssc\make\..\src\CanTp_Init.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
