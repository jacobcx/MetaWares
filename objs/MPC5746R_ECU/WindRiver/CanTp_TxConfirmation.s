#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"CanTp_TxConfirmation.c"
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
# FUNC(void, CANTP_CODE) CanTp_TxConfirmation
	.align		2
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTp\\ssc\\make\\..\\src\\CanTp_TxConfirmation.c"
        .d2line         68,24
#$$ld
.L142:

#$$bf	CanTp_TxConfirmation,interprocedural,rasave,nostackparams
	.globl		CanTp_TxConfirmation
	.d2_cfa_start __cie
CanTp_TxConfirmation:
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
#     /* counter for channels      */
#     VAR(uint8, AUTOMATIC) Channel_u8;
# 
#     /*Flag to detect whether the PDUID is found or not*/
#     /*This Same Flag will be used for DET checking also*/
#     VAR(boolean, AUTOMATIC) PduExecutedFlag_b = CANTP_FALSE;
	.d2line		79
	diab.li		r29,0		# PduExecutedFlag_b=r29
# 
# #if (CANTP_DEV_ERROR_DETECT == STD_ON)
#     /* Check if the CANTP module is not initialized */
#     if(CANTP_OFF == CanTp_Status)
	.d2line		83
.Llo6:
	lis		r3,CanTp_Status@ha
.Llo2:
	lwz		r0,CanTp_Status@l(r3)
	se_cmpi		r0,0
	bc		0,2,.L128	# ne
#     {
#         /* Report to DET */
#         (void)Det_ReportError(CANTP_MODULE_ID, CANTP_INSTANCE_ID,
	.d2line		86
.Llo3:
	diab.li		r3,35
	diab.li		r4,0
	diab.li		r5,64
	diab.li		r6,32
	bl		Det_ReportError
	b		.L127
.L128:
#                 CANTP_ID_TXCONFIRMATION, CANTP_E_UNINIT);
#     }
#     else
# #endif
#     {
#         /*Search through the Configured Channels, Once the PDUID is found
#          *process it and get out of this loop*/
#         for(Channel_u8 = CANTP_CHANNEL_INDEX_START_ZERO;
	.d2line		94
	diab.li		r30,0		# Channel_u8=r30
.L130:
.Llo5:
	rlwinm		r0,r30,0,24,31		# Channel_u8=r30
	lis		r3,CanTp_GeneralConfig_p@ha		# CanTpChannel_p=r3
.Llo13:
	lwz		r3,CanTp_GeneralConfig_p@l(r3)		# CanTpChannel_p=r3 CanTpChannel_p=r3
	lbz		r3,6(r3)		# CanTpChannel_p=r3 CanTpChannel_p=r3
	se_cmp		r0,r3		# CanTpChannel_p=r3
	bc		0,0,.L132	# ge
.Llo14:
	rlwinm		r3,r29,0,24,31		# CanTpChannel_p=r3 PduExecutedFlag_b=r29
.Llo15:
	se_cmpi		r3,0		# CanTpChannel_p=r3
	bc		0,2,.L132	# ne
	.section	.text_vle
.L157:
#                 (Channel_u8 < CanTp_GeneralConfig_p->Channel_Max_u8) && (CANTP_FALSE == PduExecutedFlag_b);
#                 Channel_u8++)
#         {
#             CONSTP2VAR(CanTp_Channel_t, AUTOMATIC, CANTP_APPL_DATA) CanTpChannel_p = &CanTp_ChannelList_p[Channel_u8];
	.d2line		98
.Llo7:
	lis		r3,CanTp_ChannelList_p@ha		# PduExecutedFlag_b=r3
.Llo8:
	lwz		r28,CanTp_ChannelList_p@l(r3)		# CanTpChannel_p=r28 PduExecutedFlag_b=r3
.Llo16:
	rlwinm		r3,r30,0,24,31		# PduExecutedFlag_b=r3 Channel_u8=r30
	e_mulli		r0,r3,52		# PduExecutedFlag_b=r3
	se_add		r0,r28		# CanTpChannel_p=r28
	mr		r28,r0		# CanTpChannel_p=r28 CanTpChannel_p=r0
# 
#             /*Enter Critical Section*/
#             CanTp_Enter_Area(Channel_u8);
	.d2line		101
	bl		CanTp_Enter_Area
# 
#             /* The channel processing entered critical section */
#             CanTpChannel_p->CriticalSectionStatus_b = CANTP_TRUE;
	.d2line		104
.Llo9:
	diab.li		r0,1
	stb		r0,50(r28)		# CanTpChannel_p=r28
# 
# #if (CANTP_DEV_ERROR_DETECT == STD_ON)
#             /* Save the caller Id in a global variable */
#             CanTpChannel_p->CallerApiId = CANTP_ID_TXCONFIRMATION;
	.d2line		108
	diab.li		r0,64
	stb		r0,48(r28)		# CanTpChannel_p=r28
# #endif
# 
#             /* Process the TX Confirmation */
#             PduExecutedFlag_b = CanTp_IntTxConf(CanTpChannel_p, CanTpTxPduId);
	.d2line		112
	rlwinm		r4,r31,0,16,31		# CanTpTxPduId=r31
	mr		r3,r28		# CanTpChannel_p=r3 CanTpChannel_p=r28
	bl		CanTp_IntTxConf
.Llo10:
	mr		r29,r3		# PduExecutedFlag_b=r29 PduExecutedFlag_b=r3
# 
#             if(PduExecutedFlag_b != FALSE)
	.d2line		114
	rlwinm		r3,r3,0,24,31		# PduExecutedFlag_b=r3 PduExecutedFlag_b=r3
	se_cmpi		r3,0		# PduExecutedFlag_b=r3
	bc		1,2,.L133	# eq
#             {
#                 /* Clear the confirmation pending flag for this NPdu*/
#                 CanTp_ConfirmationPending_p[CanTpTxPduId] = CANTP_FALSE;
	.d2line		117
.Llo11:
	diab.li		r0,0
.Llo12:
	lis		r3,CanTp_ConfirmationPending_p@ha		# PduExecutedFlag_b=r3
	lwz		r3,CanTp_ConfirmationPending_p@l(r3)		# PduExecutedFlag_b=r3 PduExecutedFlag_b=r3
	rlwinm		r4,r31,0,16,31		# CanTpTxPduId=r31
	stbx		r0,r3,r4		# PduExecutedFlag_b=r3
.L133:
#             }
# 
#             /*Free Channel*/
#             CanTp_FreeChannel(CanTpChannel_p);
	.d2line		121
	mr		r3,r28		# CanTpChannel_p=r3 CanTpChannel_p=r28
	bl		CanTp_FreeChannel
# 
#             /* The channel processing is leaving critical section */
#             CanTpChannel_p->CriticalSectionStatus_b = CANTP_FALSE;
	.d2line		124
	diab.li		r0,0
	stb		r0,50(r28)		# CanTpChannel_p=r28
# 
#             /*Exit Critical Section*/
#             CanTp_Exit_Area(Channel_u8);
	.d2line		127
	rlwinm		r3,r30,0,24,31		# CanTpChannel_p=r3 Channel_u8=r30
	bl		CanTp_Exit_Area
	.section	.text_vle
.L158:
#         }
	.d2line		128
.Llo17:
	diab.addi		r0,r30,1		# Channel_u8=r30
	se_addi		r30,1		# Channel_u8=r30 Channel_u8=r30
	b		.L130
.L132:
# 
# #if (CANTP_DEV_ERROR_DETECT == STD_ON)
#         if(CANTP_FALSE == PduExecutedFlag_b)
	.d2line		131
	rlwinm		r29,r29,0,24,31		# PduExecutedFlag_b=r29 PduExecutedFlag_b=r29
	se_cmpi		r29,0		# PduExecutedFlag_b=r29
	bc		0,2,.L127	# ne
#         {
#             /* call DET with error CANTP_E_INVALID_TX_ID */
#             (void)Det_ReportError(CANTP_MODULE_ID, CANTP_INSTANCE_ID,
	.d2line		134
.Llo4:
	diab.li		r3,35		# CanTpChannel_p=r3
	diab.li		r4,0
	diab.li		r5,64
	diab.li		r6,48
	bl		Det_ReportError
.L127:
#                     CANTP_ID_TXCONFIRMATION, CANTP_E_INVALID_TX_ID);
#         }
# #endif
#     }
# }/* End of CanTp_TxConfirmation() */
	.d2line		139
	.d2epilogue_begin
	lmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L143:
	.type		CanTp_TxConfirmation,@function
	.size		CanTp_TxConfirmation,.-CanTp_TxConfirmation
# Number of nodes = 109

# Allocations for CanTp_TxConfirmation
#	?a4		CanTpTxPduId
#	?a5		Channel_u8
#	?a6		PduExecutedFlag_b
#	?a7		CanTpChannel_p

# Allocations for module
	.section	.text_vle
#$$ld
.L5:
.L179:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTp\\ssc\\make\\..\\inc\\CanTp_Types.h"
.L168:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTp\\ssc\\make\\..\\inc\\CanTp_Private.h"
.L144:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTp\\ssc\\make\\..\\src\\CanTp_TxConfirmation.c"
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
	.uleb128	11
	.byte		0x1
	.uleb128	1
	.uleb128	16
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
	.uleb128	15
	.byte		0x0
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
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	19
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTp\\ssc\\make\\..\\src\\CanTp_TxConfirmation.c"
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
.L145:
	.sleb128	2
	.4byte		.L141-.L2
	.byte		"CanTp_TxConfirmation"
	.byte		0
	.4byte		.L144
	.uleb128	68
	.uleb128	24
	.byte		0x1
	.byte		0x1
	.4byte		.L142
	.4byte		.L143
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L144
	.uleb128	68
	.uleb128	24
	.byte		"CanTpTxPduId"
	.byte		0
	.4byte		.L146
	.4byte		.L149
	.section	.debug_info,,n
.L150:
	.sleb128	4
	.4byte		.L144
	.uleb128	75
	.uleb128	27
	.byte		"Channel_u8"
	.byte		0
	.4byte		.L151
	.4byte		.L153
.L154:
	.sleb128	4
	.4byte		.L144
	.uleb128	79
	.uleb128	29
	.byte		"PduExecutedFlag_b"
	.byte		0
	.4byte		.L155
	.4byte		.L156
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L160
	.4byte		.L157
	.4byte		.L158
.L161:
	.sleb128	4
	.4byte		.L144
	.uleb128	98
	.uleb128	69
	.byte		"CanTpChannel_p"
	.byte		0
	.4byte		.L162
	.4byte		.L166
	.section	.debug_info,,n
	.sleb128	0
.L160:
	.section	.debug_info,,n
	.sleb128	0
.L141:
	.section	.debug_info,,n
.L167:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L168
	.uleb128	522
	.uleb128	68
	.byte		"CanTp_GeneralConfig_p"
	.byte		0
	.4byte		.L169
	.0byte		.L167
.L173:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L168
	.uleb128	528
	.uleb128	59
	.byte		"CanTp_ChannelList_p"
	.byte		0
	.4byte		.L163
.L174:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L168
	.uleb128	535
	.uleb128	51
	.byte		"CanTp_ConfirmationPending_p"
	.byte		0
	.4byte		.L175
.L176:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L168
	.uleb128	546
	.uleb128	39
	.byte		"CanTp_Status"
	.byte		0
	.4byte		.L177
	.section	.debug_info,,n
.L172:
	.sleb128	7
	.4byte		.L179
	.uleb128	117
	.uleb128	1
	.4byte		.L180-.L2
	.uleb128	16
	.section	.debug_info,,n
.L97:
	.sleb128	8
	.byte		"TxNSduId_Max"
	.byte		0
	.4byte		.L181
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L98:
	.sleb128	8
	.byte		"RxNPduId_Max"
	.byte		0
	.4byte		.L181
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L99:
	.sleb128	8
	.byte		"RxNSduId_Count"
	.byte		0
	.4byte		.L181
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L100:
	.sleb128	8
	.byte		"Channel_Max_u8"
	.byte		0
	.4byte		.L182
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L101:
	.sleb128	8
	.byte		"CanTp_Mf_Resolution_u16"
	.byte		0
	.4byte		.L183
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L102:
	.sleb128	8
	.byte		"CanTp_Cfg_PaddingByte_u8"
	.byte		0
	.4byte		.L182
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L103:
	.sleb128	8
	.byte		"RxNsduId_Max_u16"
	.byte		0
	.4byte		.L183
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L104:
	.sleb128	8
	.byte		"ConfirmationLength"
	.byte		0
	.4byte		.L183
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
	.sleb128	0
.L180:
.L165:
	.sleb128	7
	.4byte		.L179
	.uleb128	117
	.uleb128	1
	.4byte		.L184-.L2
	.uleb128	52
.L39:
	.sleb128	8
	.byte		"ChannelIdx_u8"
	.byte		0
	.4byte		.L151
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L40:
	.sleb128	8
	.byte		"IPduId"
	.byte		0
	.4byte		.L146
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L41:
	.sleb128	8
	.byte		"TimeoutTicks_u16"
	.byte		0
	.4byte		.L147
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L42:
	.sleb128	8
	.byte		"StMinTicks_u16"
	.byte		0
	.4byte		.L147
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L43:
	.sleb128	8
	.byte		"TotalLength"
	.byte		0
	.4byte		.L185
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L44:
	.sleb128	8
	.byte		"ProcessedLength"
	.byte		0
	.4byte		.L185
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L45:
	.sleb128	8
	.byte		"ProvidedBufferSize"
	.byte		0
	.4byte		.L185
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L46:
	.sleb128	8
	.byte		"State_u8"
	.byte		0
	.4byte		.L151
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L47:
	.sleb128	8
	.byte		"NextState_u8"
	.byte		0
	.4byte		.L151
	.sleb128	2
	.byte		0x23
	.uleb128	15
	.byte		0x1
.L48:
	.sleb128	8
	.byte		"BlockSize_u16"
	.byte		0
	.4byte		.L147
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L49:
	.sleb128	8
	.byte		"WftCounter_u16"
	.byte		0
	.4byte		.L147
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L50:
	.sleb128	8
	.byte		"SequenceNumber_u8"
	.byte		0
	.4byte		.L151
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L51:
	.sleb128	8
	.byte		"StMin_u8"
	.byte		0
	.4byte		.L151
	.sleb128	2
	.byte		0x23
	.uleb128	21
	.byte		0x1
.L52:
	.sleb128	8
	.byte		"TempBuffer_au8"
	.byte		0
	.4byte		.L186
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L53:
	.sleb128	8
	.byte		"TempLength_u8"
	.byte		0
	.4byte		.L151
	.sleb128	2
	.byte		0x23
	.uleb128	29
	.byte		0x1
.L54:
	.sleb128	8
	.byte		"CanIfDLC_u8"
	.byte		0
	.4byte		.L151
	.sleb128	2
	.byte		0x23
	.uleb128	30
	.byte		0x1
.L55:
	.sleb128	8
	.byte		"CanIfData_au8"
	.byte		0
	.4byte		.L188
	.sleb128	2
	.byte		0x23
	.uleb128	31
	.byte		0x1
.L56:
	.sleb128	8
	.byte		"ULayerIndFlag_b"
	.byte		0
	.4byte		.L155
	.sleb128	2
	.byte		0x23
	.uleb128	39
	.byte		0x1
.L57:
	.sleb128	8
	.byte		"ShutdownFlag_b"
	.byte		0
	.4byte		.L155
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L58:
	.sleb128	8
	.byte		"RemainingCFInBlock_u16"
	.byte		0
	.4byte		.L147
	.sleb128	2
	.byte		0x23
	.uleb128	42
	.byte		0x1
.L59:
	.sleb128	8
	.byte		"LastCFofNSduFlag_b"
	.byte		0
	.4byte		.L155
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L60:
	.sleb128	8
	.byte		"RequiredBufferSize"
	.byte		0
	.4byte		.L185
	.sleb128	2
	.byte		0x23
	.uleb128	46
	.byte		0x1
.L61:
	.sleb128	8
	.byte		"CallerApiId"
	.byte		0
	.4byte		.L151
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L62:
	.sleb128	8
	.byte		"FrameSize"
	.byte		0
	.4byte		.L151
	.sleb128	2
	.byte		0x23
	.uleb128	49
	.byte		0x1
.L63:
	.sleb128	8
	.byte		"CriticalSectionStatus_b"
	.byte		0
	.4byte		.L155
	.sleb128	2
	.byte		0x23
	.uleb128	50
	.byte		0x1
	.sleb128	0
.L184:
	.section	.debug_info,,n
.L178:
	.sleb128	9
	.4byte		.L179
	.uleb128	98
	.uleb128	1
	.4byte		.L190-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	10
	.byte		"CANTP_OFF"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"CANTP_ON"
	.byte		0
	.sleb128	1
	.sleb128	0
.L190:
	.section	.debug_info,,n
.L148:
	.sleb128	11
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
	.section	.debug_info,,n
.L147:
	.sleb128	12
	.byte		"uint16"
	.byte		0
	.4byte		.L148
.L146:
	.sleb128	12
	.byte		"PduIdType"
	.byte		0
	.4byte		.L147
.L152:
	.sleb128	11
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L151:
	.sleb128	12
	.byte		"uint8"
	.byte		0
	.4byte		.L152
.L155:
	.sleb128	12
	.byte		"boolean"
	.byte		0
	.4byte		.L152
.L164:
	.sleb128	12
	.byte		"CanTp_Channel_t"
	.byte		0
	.4byte		.L165
	.section	.debug_info,,n
.L163:
	.sleb128	13
	.4byte		.L164
	.section	.debug_info,,n
.L162:
	.sleb128	14
	.4byte		.L163
.L171:
	.sleb128	12
	.byte		"CanTp_GeneralConfig_t"
	.byte		0
	.4byte		.L172
.L170:
	.sleb128	14
	.4byte		.L171
.L169:
	.sleb128	13
	.4byte		.L170
.L175:
	.sleb128	13
	.4byte		.L155
.L177:
	.sleb128	12
	.byte		"CanTp_Status_t"
	.byte		0
	.4byte		.L178
.L181:
	.sleb128	14
	.4byte		.L146
.L182:
	.sleb128	14
	.4byte		.L151
.L183:
	.sleb128	14
	.4byte		.L147
.L185:
	.sleb128	12
	.byte		"PduLengthType"
	.byte		0
	.4byte		.L147
	.section	.debug_info,,n
.L186:
	.sleb128	15
	.4byte		.L187-.L2
	.4byte		.L151
	.section	.debug_info,,n
	.sleb128	16
	.uleb128	6
	.sleb128	0
.L187:
.L188:
	.sleb128	15
	.4byte		.L189-.L2
	.4byte		.L151
	.sleb128	16
	.uleb128	7
	.sleb128	0
.L189:
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L149:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),31
	.d2locend
.L153:
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo4),30
	.d2locend
.L156:
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo7),29
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo9),3
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo11),3
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo4),29
	.d2locend
.L166:
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo14),3
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo7),3
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo17),28
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "CanTp_TxConfirmation"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "CanTp_Enter_Area","CanTp_Exit_Area","CanTp_FreeChannel","CanTp_IntTxConf","Det_ReportError"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanTp_TxConfirmation.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanTp_TxConfirmation.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanTp_TxConfirmation.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanTp_TxConfirmation.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanTp_TxConfirmation.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanTp_TxConfirmation.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\CanTp\ssc\make\..\src\CanTp_TxConfirmation.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
