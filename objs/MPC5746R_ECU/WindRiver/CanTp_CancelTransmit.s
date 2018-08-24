#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"CanTp_CancelTransmit.c"
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
# extern FUNC(Std_ReturnType, CANTP_CODE) CanTp_CancelTransmit
	.align		2
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTp\\ssc\\make\\..\\src\\CanTp_CancelTransmit.c"
        .d2line         77,41
#$$ld
.L155:

#$$bf	CanTp_CancelTransmit,interprocedural,rasave,nostackparams
	.globl		CanTp_CancelTransmit
	.d2_cfa_start __cie
CanTp_CancelTransmit:
.Llo1:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# CanTpTxPduId=r31 CanTpTxPduId=r3
	.d2prologue_end
# (
#     /* PRQA S 3227 1 *//* API is defined as the standard specified (no const)*/
#     VAR(PduIdType, AUTOMATIC) CanTpTxPduId
# )
# {
#     /*Variable used to handle return value*/
#     VAR(Std_ReturnType, AUTOMATIC) ReturnVal = E_OK;
	.d2line		84
	diab.li		r30,0		# ReturnVal=r30
# 
#     /*Channel Number*/
#     VAR(uint8, AUTOMATIC) Channel_u8;
# 
#     /*Pointer to hold the Channel Structure address*/
#     P2VAR(CanTp_Channel_t, AUTOMATIC, CANTP_APPL_DATA) CanTpChannel_p;
# 
#     /*Check DET */
# #if (CANTP_DEV_ERROR_DETECT == STD_ON)
#     /*Check for whether CanTp module is initialised or not*/
#     if(CANTP_OFF == CanTp_Status)
	.d2line		95
.Llo7:
	lis		r3,CanTp_Status@ha
.Llo2:
	lwz		r0,CanTp_Status@l(r3)
	se_cmpi		r0,0
	bc		0,2,.L141	# ne
#     {
#         /* Report to DET */
#         (void)Det_ReportError(CANTP_MODULE_ID, CANTP_INSTANCE_ID,
	.d2line		98
.Llo3:
	diab.li		r3,35
	diab.li		r4,0
	diab.li		r5,8
	diab.li		r6,32
	bl		Det_ReportError
#                 CANTP_ID_CANCELTRANSMIT, CANTP_E_UNINIT);
#         /*Set the return value */
#         ReturnVal = E_NOT_OK;
	.d2line		101
	diab.li		r30,1		# ReturnVal=r30
	b		.L142
.L141:
#     }
#     else
#     {
#         /* Check if the parameter CanTpTxPduId is out of range */
#         if(CanTp_GeneralConfig_p->TxNSduId_Max <= CanTpTxPduId)
	.d2line		106
	lis		r3,CanTp_GeneralConfig_p@ha
	lwz		r3,CanTp_GeneralConfig_p@l(r3)
	lhz		r0,0(r3)
	rlwinm		r3,r31,0,16,31		# CanTpTxPduId=r31
	se_cmp		r0,r3
	bc		1,1,.L142	# gt
#         {
#             /*Report DET error*/
#             (void)Det_ReportError(CANTP_MODULE_ID, CANTP_INSTANCE_ID,
	.d2line		109
	diab.li		r3,35
	diab.li		r4,0
	diab.li		r5,8
	diab.li		r6,2
	bl		Det_ReportError
#                     CANTP_ID_CANCELTRANSMIT, CANTP_E_PARAM_ID);
# 
#             /*Set the return value */
#             ReturnVal = E_NOT_OK;
	.d2line		113
	diab.li		r30,1		# ReturnVal=r30
.L142:
#         }
#         else
#         {
#             /*Do Nothing*/
#         }
#     }
#     if(E_OK == ReturnVal)
	.d2line		120
	rlwinm		r3,r30,0,24,31		# ReturnVal=r30
	se_cmpi		r3,0
	bc		0,2,.L145	# ne
# #endif /* CANTP_DEV_ERROR_DETECT == STD_ON */
#     {
#         /*Identify the channel corresponds to TxNsdu */
#         Channel_u8 = CanTp_TxNSdu_p[CanTpTxPduId].CanTpTxChannel_u8;
	.d2line		124
	rlwinm		r0,r31,0,16,31		# CanTpTxPduId=r31
	lis		r3,CanTp_TxNSdu_p@ha
	lwz		r3,CanTp_TxNSdu_p@l(r3)
	rlwinm		r4,r0,5,0,26
	se_slwi		r0,2
	subf		r0,r0,r4
	se_add		r3,r0
	lbz		r29,4(r3)		# Channel_u8=r29
.Llo9:
	mr		r29,r29		# Channel_u8=r29 Channel_u8=r29
# 
#         /*Copy the Channel address*/
#         CanTpChannel_p = &CanTp_ChannelList_p[Channel_u8];
	.d2line		127
	lis		r3,CanTp_ChannelList_p@ha
	lwz		r28,CanTp_ChannelList_p@l(r3)		# CanTpChannel_p=r28
.Llo11:
	rlwinm		r3,r29,0,24,31		# Channel_u8=r29
	e_mulli		r0,r3,52
	se_add		r0,r28		# CanTpChannel_p=r28
	mr		r28,r0		# CanTpChannel_p=r28 CanTpChannel_p=r0
# 
#         /*Enter Critical Section*/
#         CanTp_Enter_Area(Channel_u8);
	.d2line		130
	bl		CanTp_Enter_Area
# 
#         /* The channel processing entered critical section */
#         CanTpChannel_p->CriticalSectionStatus_b = CANTP_TRUE;
	.d2line		133
	diab.li		r0,1
	stb		r0,50(r28)		# CanTpChannel_p=r28
# 
# #if (CANTP_DEV_ERROR_DETECT == STD_ON)
#         /* Save the caller Id in a global variable */
#         CanTp_ChannelList_p[Channel_u8].CallerApiId = CANTP_ID_CANCELTRANSMIT;
	.d2line		137
	diab.li		r0,8
	lis		r3,CanTp_ChannelList_p@ha
	lwz		r4,CanTp_ChannelList_p@l(r3)
	rlwinm		r3,r29,0,24,31		# Channel_u8=r29
	e_mulli		r3,r3,52
	se_add		r3,r4
	stb		r0,48(r3)
# #endif
# 
#         /*Check the Channel is currently handling the received Pduid and
#          *transmit cancellation is enabled for this PduId*/
#         if((CanTpTxPduId == CanTpChannel_p->IPduId) &&
	.d2line		142
	rlwinm		r0,r31,0,16,31		# CanTpTxPduId=r31
	lhz		r3,2(r28)		# CanTpChannel_p=r28
	se_cmp		r0,r3
	bc		0,2,.L146	# ne
	rlwinm		r0,r31,0,16,31		# CanTpTxPduId=r31
	lis		r3,CanTp_TxNSdu_p@ha
	lwz		r3,CanTp_TxNSdu_p@l(r3)
	rlwinm		r4,r0,5,0,26
	se_slwi		r0,2
	subf		r0,r0,r4
	se_add		r3,r0
	lwz		r0,12(r3)
	se_cmpi		r0,1
	bc		0,2,.L146	# ne
	lbz		r0,14(r28)		# CanTpChannel_p=r28
	rlwinm		r0,r0,0,24,27
	cmpi		0,0,r0,128
	bc		0,2,.L146	# ne
#                 (CANTP_ON == CanTp_TxNSdu_p[CanTpTxPduId].CanTpTc_b) &&
#                 (CANTP_CH_TX_PROCESSING == (uint8) (CanTpChannel_p->State_u8 & CANTP_UPPER_NIBBLE_MASK)))
#         {
#             /*Raise shut down request flag*/
#             CanTpChannel_p->ShutdownFlag_b = CANTP_TRUE;
	.d2line		147
.Llo4:
	diab.li		r0,1
	stb		r0,40(r28)		# CanTpChannel_p=r28
# 
#             /*Free Channel*/
#             CanTp_FreeChannel(CanTpChannel_p);
	.d2line		150
	mr		r3,r28		# CanTpChannel_p=r3 CanTpChannel_p=r28
	bl		CanTp_FreeChannel
# 
#             /* Remove the flag for checking that the CanIf Confirmation for this Pdu
#              is received or not */
#             CanTp_ConfirmationPending_p[CanTp_TxNSduConfig_p[CanTpChannel_p->IPduId].CanTpTxConfirmationId] = CANTP_FALSE;
	.d2line		154
	lhz		r6,2(r28)		# CanTpChannel_p=r28
	diab.li		r5,0
	lis		r3,CanTp_ConfirmationPending_p@ha		# CanTpChannel_p=r3
	lwz		r4,CanTp_ConfirmationPending_p@l(r3)		# CanTpChannel_p=r3
	lis		r3,CanTp_TxNSduConfig_p@ha		# CanTpChannel_p=r3
	lwz		r7,CanTp_TxNSduConfig_p@l(r3)		# CanTpChannel_p=r3
	rlwinm		r0,r6,4,0,27
	se_slwi		r6,2
	subf		r6,r6,r0
	se_add		r6,r7
	lhz		r0,8(r6)
	stbx		r5,r4,r0
# 
#             /*Inform upper Layer with ID */
#             PduR_CanTpTxConfirmation(CanTp_TxNSduConfig_p[CanTpTxPduId].CanTpPduRConfId, NTFRSLT_E_CANCELATION_OK);
	.d2line		157
.Llo5:
	rlwinm		r31,r31,0,16,31		# CanTpTxPduId=r31 CanTpTxPduId=r31
	lwz		r3,CanTp_TxNSduConfig_p@l(r3)		# CanTpChannel_p=r3 CanTpChannel_p=r3
	rlwinm		r0,r31,4,0,27		# CanTpTxPduId=r31
	se_slwi		r31,2		# CanTpTxPduId=r31 CanTpTxPduId=r31
	subf		r31,r31,r0		# CanTpTxPduId=r31 CanTpTxPduId=r31
	se_add		r3,r31		# CanTpChannel_p=r3 CanTpChannel_p=r3 CanTpTxPduId=r31
	lhz		r3,10(r3)		# CanTpChannel_p=r3 CanTpChannel_p=r3
	diab.li		r4,11
	bl		PduR_CanTpTxConfirmation
	b		.L147
.L146:
#         }
#         else
#         {
# #if (CANTP_DEV_ERROR_DETECT == STD_ON)
#             /*Report DET error*/
#             (void)Det_ReportError(CANTP_MODULE_ID, CANTP_INSTANCE_ID,
	.d2line		163
	diab.li		r3,35
	diab.li		r4,0
	diab.li		r5,8
	diab.li		r6,160
	bl		Det_ReportError
#                     CANTP_ID_CANCELTRANSMIT, CANTP_E_OPER_NOT_SUPPORTED);
# #endif
# 
#             /*Set the return value if no TxPduid is stopped */
#             ReturnVal = E_NOT_OK;
	.d2line		168
	diab.li		r30,1		# ReturnVal=r30
.L147:
#         }
# 
#         /* The channel processing is leaving critical section */
#         CanTpChannel_p->CriticalSectionStatus_b = CANTP_FALSE;
	.d2line		172
.Llo6:
	diab.li		r0,0
	stb		r0,50(r28)		# CanTpChannel_p=r28
# 
#         /*Exit Critical Section*/
#         CanTp_Exit_Area(Channel_u8);
	.d2line		175
	rlwinm		r3,r29,0,24,31		# CanTpChannel_p=r3 Channel_u8=r29
	bl		CanTp_Exit_Area
.L145:
#     }
#     /*Return with info*/
#     return ReturnVal;
	.d2line		178
.Llo10:
	rlwinm		r3,r30,0,24,31		# CanTpChannel_p=r3 ReturnVal=r30
# 
# }/*End of CanTp_CancelTransmit() */
	.d2line		180
	.d2epilogue_begin
	lmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_restore_list	3,10
.Llo8:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L156:
	.type		CanTp_CancelTransmit,@function
	.size		CanTp_CancelTransmit,.-CanTp_CancelTransmit
# Number of nodes = 182

# Allocations for CanTp_CancelTransmit
#	?a4		CanTpTxPduId
#	?a5		$$44
#	?a6		$$43
#	?a7		$$42
#	?a8		$$41
#	?a9		ReturnVal
#	?a10		Channel_u8
#	?a11		CanTpChannel_p

# Allocations for module
	.section	.text_vle
#$$ld
.L5:
.L198:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTp\\ssc\\make\\..\\inc\\CanTp_Types.h"
.L176:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTp\\ssc\\make\\..\\inc\\CanTp_Private.h"
.L157:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTp\\ssc\\make\\..\\src\\CanTp_CancelTransmit.c"
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
	.uleb128	15
	.byte		0x0
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTp\\ssc\\make\\..\\src\\CanTp_CancelTransmit.c"
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
.L161:
	.sleb128	2
	.4byte		.L154-.L2
	.byte		"CanTp_CancelTransmit"
	.byte		0
	.4byte		.L157
	.uleb128	77
	.uleb128	41
	.4byte		.L158
	.byte		0x1
	.byte		0x1
	.4byte		.L155
	.4byte		.L156
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L157
	.uleb128	77
	.uleb128	41
	.byte		"CanTpTxPduId"
	.byte		0
	.4byte		.L162
	.4byte		.L165
	.section	.debug_info,,n
.L166:
	.sleb128	4
	.4byte		.L157
	.uleb128	84
	.uleb128	36
	.byte		"ReturnVal"
	.byte		0
	.4byte		.L158
	.4byte		.L167
.L168:
	.sleb128	4
	.4byte		.L157
	.uleb128	87
	.uleb128	27
	.byte		"Channel_u8"
	.byte		0
	.4byte		.L159
	.4byte		.L169
.L170:
	.sleb128	4
	.4byte		.L157
	.uleb128	90
	.uleb128	56
	.byte		"CanTpChannel_p"
	.byte		0
	.4byte		.L171
	.4byte		.L174
	.section	.debug_info,,n
	.sleb128	0
.L154:
	.section	.debug_info,,n
.L175:
	.sleb128	5
	.byte		0x1
	.byte		0x1
	.4byte		.L176
	.uleb128	498
	.uleb128	61
	.byte		"CanTp_TxNSdu_p"
	.byte		0
	.4byte		.L177
	.0byte		.L175
.L181:
	.sleb128	5
	.byte		0x1
	.byte		0x1
	.4byte		.L176
	.uleb128	504
	.uleb128	67
	.byte		"CanTp_TxNSduConfig_p"
	.byte		0
	.4byte		.L182
.L186:
	.sleb128	5
	.byte		0x1
	.byte		0x1
	.4byte		.L176
	.uleb128	522
	.uleb128	68
	.byte		"CanTp_GeneralConfig_p"
	.byte		0
	.4byte		.L187
.L191:
	.sleb128	5
	.byte		0x1
	.byte		0x1
	.4byte		.L176
	.uleb128	528
	.uleb128	59
	.byte		"CanTp_ChannelList_p"
	.byte		0
	.4byte		.L171
.L192:
	.sleb128	5
	.byte		0x1
	.byte		0x1
	.4byte		.L176
	.uleb128	535
	.uleb128	51
	.byte		"CanTp_ConfirmationPending_p"
	.byte		0
	.4byte		.L193
.L195:
	.sleb128	5
	.byte		0x1
	.byte		0x1
	.4byte		.L176
	.uleb128	546
	.uleb128	39
	.byte		"CanTp_Status"
	.byte		0
	.4byte		.L196
	.section	.debug_info,,n
.L190:
	.sleb128	6
	.4byte		.L198
	.uleb128	117
	.uleb128	1
	.4byte		.L199-.L2
	.uleb128	16
	.section	.debug_info,,n
.L103:
	.sleb128	7
	.byte		"TxNSduId_Max"
	.byte		0
	.4byte		.L200
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L104:
	.sleb128	7
	.byte		"RxNPduId_Max"
	.byte		0
	.4byte		.L200
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L105:
	.sleb128	7
	.byte		"RxNSduId_Count"
	.byte		0
	.4byte		.L200
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L106:
	.sleb128	7
	.byte		"Channel_Max_u8"
	.byte		0
	.4byte		.L201
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L107:
	.sleb128	7
	.byte		"CanTp_Mf_Resolution_u16"
	.byte		0
	.4byte		.L202
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L108:
	.sleb128	7
	.byte		"CanTp_Cfg_PaddingByte_u8"
	.byte		0
	.4byte		.L201
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L109:
	.sleb128	7
	.byte		"RxNsduId_Max_u16"
	.byte		0
	.4byte		.L202
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L110:
	.sleb128	7
	.byte		"ConfirmationLength"
	.byte		0
	.4byte		.L202
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
	.sleb128	0
.L199:
.L185:
	.sleb128	6
	.4byte		.L198
	.uleb128	117
	.uleb128	1
	.4byte		.L203-.L2
	.uleb128	12
.L92:
	.sleb128	7
	.byte		"CanTpNas_u16"
	.byte		0
	.4byte		.L202
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L93:
	.sleb128	7
	.byte		"CanTpNbs_u16"
	.byte		0
	.4byte		.L202
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L94:
	.sleb128	7
	.byte		"CanTpNcs_u16"
	.byte		0
	.4byte		.L202
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L95:
	.sleb128	7
	.byte		"CanTpTxCanIfNPduId"
	.byte		0
	.4byte		.L200
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L96:
	.sleb128	7
	.byte		"CanTpTxConfirmationId"
	.byte		0
	.4byte		.L200
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L97:
	.sleb128	7
	.byte		"CanTpPduRConfId"
	.byte		0
	.4byte		.L202
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
	.sleb128	0
.L203:
.L180:
	.sleb128	6
	.4byte		.L198
	.uleb128	117
	.uleb128	1
	.4byte		.L204-.L2
	.uleb128	28
.L85:
	.sleb128	7
	.byte		"CanTpAddressingMode"
	.byte		0
	.4byte		.L205
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L86:
	.sleb128	7
	.byte		"CanTpTxChannel_u8"
	.byte		0
	.4byte		.L201
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L87:
	.sleb128	7
	.byte		"CanTpTxPaddingActivation"
	.byte		0
	.4byte		.L208
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L88:
	.sleb128	7
	.byte		"CanTpTc_b"
	.byte		0
	.4byte		.L208
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L89:
	.sleb128	7
	.byte		"CanTpTxTaType"
	.byte		0
	.4byte		.L209
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L90:
	.sleb128	7
	.byte		"CanTp_TargetAddress_u8"
	.byte		0
	.4byte		.L201
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L91:
	.sleb128	7
	.byte		"FrameType"
	.byte		0
	.4byte		.L212
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
	.sleb128	0
.L204:
.L173:
	.sleb128	6
	.4byte		.L198
	.uleb128	117
	.uleb128	1
	.4byte		.L215-.L2
	.uleb128	52
.L45:
	.sleb128	7
	.byte		"ChannelIdx_u8"
	.byte		0
	.4byte		.L159
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L46:
	.sleb128	7
	.byte		"IPduId"
	.byte		0
	.4byte		.L162
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L47:
	.sleb128	7
	.byte		"TimeoutTicks_u16"
	.byte		0
	.4byte		.L163
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L48:
	.sleb128	7
	.byte		"StMinTicks_u16"
	.byte		0
	.4byte		.L163
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L49:
	.sleb128	7
	.byte		"TotalLength"
	.byte		0
	.4byte		.L216
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L50:
	.sleb128	7
	.byte		"ProcessedLength"
	.byte		0
	.4byte		.L216
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L51:
	.sleb128	7
	.byte		"ProvidedBufferSize"
	.byte		0
	.4byte		.L216
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L52:
	.sleb128	7
	.byte		"State_u8"
	.byte		0
	.4byte		.L159
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L53:
	.sleb128	7
	.byte		"NextState_u8"
	.byte		0
	.4byte		.L159
	.sleb128	2
	.byte		0x23
	.uleb128	15
	.byte		0x1
.L54:
	.sleb128	7
	.byte		"BlockSize_u16"
	.byte		0
	.4byte		.L163
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L55:
	.sleb128	7
	.byte		"WftCounter_u16"
	.byte		0
	.4byte		.L163
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L56:
	.sleb128	7
	.byte		"SequenceNumber_u8"
	.byte		0
	.4byte		.L159
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L57:
	.sleb128	7
	.byte		"StMin_u8"
	.byte		0
	.4byte		.L159
	.sleb128	2
	.byte		0x23
	.uleb128	21
	.byte		0x1
.L58:
	.sleb128	7
	.byte		"TempBuffer_au8"
	.byte		0
	.4byte		.L217
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L59:
	.sleb128	7
	.byte		"TempLength_u8"
	.byte		0
	.4byte		.L159
	.sleb128	2
	.byte		0x23
	.uleb128	29
	.byte		0x1
.L60:
	.sleb128	7
	.byte		"CanIfDLC_u8"
	.byte		0
	.4byte		.L159
	.sleb128	2
	.byte		0x23
	.uleb128	30
	.byte		0x1
.L61:
	.sleb128	7
	.byte		"CanIfData_au8"
	.byte		0
	.4byte		.L219
	.sleb128	2
	.byte		0x23
	.uleb128	31
	.byte		0x1
.L62:
	.sleb128	7
	.byte		"ULayerIndFlag_b"
	.byte		0
	.4byte		.L194
	.sleb128	2
	.byte		0x23
	.uleb128	39
	.byte		0x1
.L63:
	.sleb128	7
	.byte		"ShutdownFlag_b"
	.byte		0
	.4byte		.L194
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L64:
	.sleb128	7
	.byte		"RemainingCFInBlock_u16"
	.byte		0
	.4byte		.L163
	.sleb128	2
	.byte		0x23
	.uleb128	42
	.byte		0x1
.L65:
	.sleb128	7
	.byte		"LastCFofNSduFlag_b"
	.byte		0
	.4byte		.L194
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L66:
	.sleb128	7
	.byte		"RequiredBufferSize"
	.byte		0
	.4byte		.L216
	.sleb128	2
	.byte		0x23
	.uleb128	46
	.byte		0x1
.L67:
	.sleb128	7
	.byte		"CallerApiId"
	.byte		0
	.4byte		.L159
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L68:
	.sleb128	7
	.byte		"FrameSize"
	.byte		0
	.4byte		.L159
	.sleb128	2
	.byte		0x23
	.uleb128	49
	.byte		0x1
.L69:
	.sleb128	7
	.byte		"CriticalSectionStatus_b"
	.byte		0
	.4byte		.L194
	.sleb128	2
	.byte		0x23
	.uleb128	50
	.byte		0x1
	.sleb128	0
.L215:
	.section	.debug_info,,n
.L214:
	.sleb128	8
	.4byte		.L198
	.uleb128	117
	.uleb128	1
	.4byte		.L221-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	9
	.byte		"CANTP_FRAME_TYPE_CAN20"
	.byte		0
	.sleb128	0
	.sleb128	9
	.byte		"CANTP_FRAME_TYPE_CANFD"
	.byte		0
	.sleb128	1
	.sleb128	0
.L221:
.L211:
	.sleb128	8
	.4byte		.L198
	.uleb128	108
	.uleb128	1
	.4byte		.L222-.L2
	.uleb128	4
	.sleb128	9
	.byte		"CANTP_FUNCTIONAL"
	.byte		0
	.sleb128	0
	.sleb128	9
	.byte		"CANTP_PHYSICAL"
	.byte		0
	.sleb128	1
	.sleb128	0
.L222:
.L197:
	.sleb128	8
	.4byte		.L198
	.uleb128	98
	.uleb128	1
	.4byte		.L223-.L2
	.uleb128	4
	.sleb128	9
	.byte		"CANTP_OFF"
	.byte		0
	.sleb128	0
	.sleb128	9
	.byte		"CANTP_ON"
	.byte		0
	.sleb128	1
	.sleb128	0
.L223:
.L207:
	.sleb128	8
	.4byte		.L198
	.uleb128	87
	.uleb128	1
	.4byte		.L224-.L2
	.uleb128	4
	.sleb128	9
	.byte		"CANTP_STANDARD"
	.byte		0
	.sleb128	0
	.sleb128	9
	.byte		"CANTP_EXTENDED"
	.byte		0
	.sleb128	1
	.sleb128	9
	.byte		"CANTP_MIXED"
	.byte		0
	.sleb128	2
	.sleb128	0
.L224:
	.section	.debug_info,,n
.L160:
	.sleb128	10
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L159:
	.sleb128	11
	.byte		"uint8"
	.byte		0
	.4byte		.L160
.L158:
	.sleb128	11
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L159
.L164:
	.sleb128	10
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L163:
	.sleb128	11
	.byte		"uint16"
	.byte		0
	.4byte		.L164
.L162:
	.sleb128	11
	.byte		"PduIdType"
	.byte		0
	.4byte		.L163
.L172:
	.sleb128	11
	.byte		"CanTp_Channel_t"
	.byte		0
	.4byte		.L173
	.section	.debug_info,,n
.L171:
	.sleb128	12
	.4byte		.L172
.L179:
	.sleb128	11
	.byte		"CanTp_TxNSdu_t"
	.byte		0
	.4byte		.L180
	.section	.debug_info,,n
.L178:
	.sleb128	13
	.4byte		.L179
.L177:
	.sleb128	12
	.4byte		.L178
.L184:
	.sleb128	11
	.byte		"CanTp_TxNSduConfig_t"
	.byte		0
	.4byte		.L185
.L183:
	.sleb128	13
	.4byte		.L184
.L182:
	.sleb128	12
	.4byte		.L183
.L189:
	.sleb128	11
	.byte		"CanTp_GeneralConfig_t"
	.byte		0
	.4byte		.L190
.L188:
	.sleb128	13
	.4byte		.L189
.L187:
	.sleb128	12
	.4byte		.L188
.L194:
	.sleb128	11
	.byte		"boolean"
	.byte		0
	.4byte		.L160
.L193:
	.sleb128	12
	.4byte		.L194
.L196:
	.sleb128	11
	.byte		"CanTp_Status_t"
	.byte		0
	.4byte		.L197
.L200:
	.sleb128	13
	.4byte		.L162
.L201:
	.sleb128	13
	.4byte		.L159
.L202:
	.sleb128	13
	.4byte		.L163
.L206:
	.sleb128	11
	.byte		"CanTp_AddressingMode_t"
	.byte		0
	.4byte		.L207
.L205:
	.sleb128	13
	.4byte		.L206
.L208:
	.sleb128	13
	.4byte		.L196
.L210:
	.sleb128	11
	.byte		"CanTp_TaType_t"
	.byte		0
	.4byte		.L211
.L209:
	.sleb128	13
	.4byte		.L210
.L213:
	.sleb128	11
	.byte		"CanTp_FrameType_t"
	.byte		0
	.4byte		.L214
.L212:
	.sleb128	13
	.4byte		.L213
.L216:
	.sleb128	11
	.byte		"PduLengthType"
	.byte		0
	.4byte		.L163
	.section	.debug_info,,n
.L217:
	.sleb128	14
	.4byte		.L218-.L2
	.4byte		.L159
	.section	.debug_info,,n
	.sleb128	15
	.uleb128	6
	.sleb128	0
.L218:
.L219:
	.sleb128	14
	.4byte		.L220-.L2
	.4byte		.L159
	.sleb128	15
	.uleb128	7
	.sleb128	0
.L220:
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L165:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),31
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),31
	.d2locend
.L167:
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),30
	.d2locend
.L169:
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),29
	.d2locend
.L174:
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo10),28
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "CanTp_CancelTransmit"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "CanTp_Enter_Area","CanTp_Exit_Area","CanTp_FreeChannel","Det_ReportError","PduR_CanTpTxConfirmation"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanTp_CancelTransmit.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanTp_CancelTransmit.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanTp_CancelTransmit.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanTp_CancelTransmit.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanTp_CancelTransmit.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanTp_CancelTransmit.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\CanTp\ssc\make\..\src\CanTp_CancelTransmit.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
