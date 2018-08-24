#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"CanTp_CancelReceive.c"
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
# extern FUNC(Std_ReturnType, CANTP_CODE) CanTp_CancelReceive
	.align		2
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTp\\ssc\\make\\..\\src\\CanTp_CancelReceive.c"
        .d2line         74,41
#$$ld
.L171:

#$$bf	CanTp_CancelReceive,interprocedural,rasave,nostackparams
	.globl		CanTp_CancelReceive
	.d2_cfa_start __cie
CanTp_CancelReceive:
.Llo1:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r30,r3		# CanTpRxSduId=r30 CanTpRxSduId=r3
	.d2prologue_end
# (
#     /* PRQA S 3227 1 *//* API is defined as the standard specified (no const)*/
#     VAR(PduIdType, AUTOMATIC) CanTpRxSduId
# )
# {
#     /*Variable used to handle return value*/
#     VAR(Std_ReturnType, AUTOMATIC) ReturnVal = E_OK;
	.d2line		81
	diab.li		r31,0		# ReturnVal=r31
# 
#     /*Channel Number*/
#     VAR(uint8, AUTOMATIC) Channel_u8;
# 
#     /*Pointer to hold the Channel Structure address*/
#     P2VAR(CanTp_Channel_t, AUTOMATIC, CANTP_APPL_DATA) CanTpChannel_p;
# 
#     /*variable to hold the Id of CanTp_RxNSdu_p structure*/
#     VAR(PduIdType, AUTOMATIC) TempId_u16;
# 
#     /* Variable to identify whether the incoming PduId is find or not */
#     VAR(boolean, AUTOMATIC) IdFound_b;
# 
#     /*Max data it can copy in this call */
#     VAR(PduLengthType, AUTOMATIC) MaxData;
# 
# #if (CANTP_DEV_ERROR_DETECT == STD_ON)
#     /*Check for whether CanTp module is initialised or not*/
#     if(CANTP_OFF == CanTp_Status)
	.d2line		100
.Llo7:
	lis		r3,CanTp_Status@ha
.Llo2:
	lwz		r0,CanTp_Status@l(r3)
	se_cmpi		r0,0
	bc		0,2,.L141	# ne
#     {
#         /* Report to DET */
#         (void)Det_ReportError(CANTP_MODULE_ID,CANTP_INSTANCE_ID,
	.d2line		103
.Llo3:
	diab.li		r3,35
	diab.li		r4,0
	diab.li		r5,9
	diab.li		r6,32
	bl		Det_ReportError
#                 CANTP_ID_CANCELRECEIVE,CANTP_E_UNINIT);
#         /*Set the return value */
#         ReturnVal = E_NOT_OK;
	.d2line		106
	diab.li		r31,1		# ReturnVal=r31
.L141:
#     }
# #endif
# 
#     /* PRQA S 2995, 2991 1 *//* Misra 13.7 violation MISRA C ADC R5: Alternative build configurations */
#     if(E_OK == ReturnVal)
	.d2line		111
	rlwinm		r3,r31,0,24,31		# ReturnVal=r31
	se_cmpi		r3,0
	bc		0,2,.L142	# ne
#     {
#         if((CanTpRxSduId > CanTp_GeneralConfig_p->RxNsduId_Max_u16) ||
	.d2line		113
	rlwinm		r0,r30,0,16,31		# CanTpRxSduId=r30
	lis		r3,CanTp_GeneralConfig_p@ha
	lwz		r3,CanTp_GeneralConfig_p@l(r3)
	lhz		r3,12(r3)
	se_cmp		r0,r3
	bc		1,1,.L152	# gt
	lis		r3,CanTp_RxNsduFound_p@ha
	lwz		r3,CanTp_RxNsduFound_p@l(r3)
	rlwinm		r0,r30,1,15,30		# CanTpRxSduId=r30
	lhzx		r0,r3,r0
	cmpli		0,0,r0,65535
	bc		0,2,.L143	# ne
.L152:
#                 (CanTp_RxNsduFound_p[CanTpRxSduId] == CANTP_RX_NSDU_ID_INVALID))
#         {
#             IdFound_b = CANTP_FALSE;
	.d2line		116
	diab.li		r0,0		# IdFound_b=r0
.Llo15:
	b		.L144
.L143:
#         }
#         else
#         {
#             IdFound_b = CANTP_TRUE;
	.d2line		120
.Llo4:
	diab.li		r0,1		# IdFound_b=r0
#             TempId_u16 = CanTp_RxNsduFound_p[CanTpRxSduId];
	.d2line		121
.Llo16:
	lis		r3,CanTp_RxNsduFound_p@ha
	lwz		r3,CanTp_RxNsduFound_p@l(r3)
.Llo5:
	rlwinm		r30,r30,1,15,30		# CanTpRxSduId=r30 CanTpRxSduId=r30
.Llo6:
	lhzx		r28,r3,r30
.Llo12:
	mr		r28,r28		# TempId_u16=r28 TempId_u16=r28
.L144:
#         }
# 
#         if(CANTP_FALSE == IdFound_b)
	.d2line		124
	rlwinm		r0,r0,0,24,31		# IdFound_b=r0 IdFound_b=r0
	se_cmpi		r0,0		# IdFound_b=r0
	bc		0,2,.L145	# ne
#         {
# #if (CANTP_DEV_ERROR_DETECT == STD_ON)
#             /*Report DET error*/
#             (void)Det_ReportError(CANTP_MODULE_ID, CANTP_INSTANCE_ID,
	.d2line		128
.Llo17:
	diab.li		r3,35
	diab.li		r4,0
	diab.li		r5,9
	diab.li		r6,2
	bl		Det_ReportError
#                     CANTP_ID_CANCELRECEIVE, CANTP_E_PARAM_ID);
# #endif
# 
#             /*Set the return value */
#             ReturnVal = E_NOT_OK;
	.d2line		133
	diab.li		r31,1		# ReturnVal=r31
	b		.L142
.L145:
#         }
#         else
#         {
#             /*Identify the channel corresponds to RxNsdu */
#             Channel_u8 = CanTp_RxNSdu_p[TempId_u16].CanTpRxChannel_u8;
	.d2line		138
	rlwinm		r0,r28,0,16,31		# IdFound_b=r0 TempId_u16=r28
.Llo18:
	lis		r3,CanTp_RxNSdu_p@ha
	lwz		r3,CanTp_RxNSdu_p@l(r3)
	rlwinm		r4,r0,5,0,26		# IdFound_b=r0
	se_slwi		r0,3		# IdFound_b=r0 IdFound_b=r0
	subf		r0,r0,r4		# IdFound_b=r0 IdFound_b=r0
	se_add		r3,r0		# IdFound_b=r0
	lbz		r30,4(r3)		# CanTpRxSduId=r30
.Llo9:
	mr		r30,r30		# Channel_u8=r30 Channel_u8=r30
# 
#             /*Copy the Channel address*/
#             CanTpChannel_p = &CanTp_ChannelList_p[Channel_u8];
	.d2line		141
	lis		r3,CanTp_ChannelList_p@ha
	lwz		r29,CanTp_ChannelList_p@l(r3)		# CanTpChannel_p=r29
.Llo11:
	rlwinm		r3,r30,0,24,31		# Channel_u8=r30
	e_mulli		r0,r3,52		# IdFound_b=r0
	se_add		r0,r29		# IdFound_b=r0 IdFound_b=r0 CanTpChannel_p=r29
.Llo19:
	mr		r29,r0		# CanTpChannel_p=r29 CanTpChannel_p=r0
# 
#             /*Enter Critical Section*/
#             CanTp_Enter_Area(Channel_u8);
	.d2line		144
	bl		CanTp_Enter_Area
# 
#             /* The channel processing entered critical section */
#             CanTpChannel_p->CriticalSectionStatus_b = CANTP_TRUE;
	.d2line		147
	diab.li		r0,1		# IdFound_b=r0
.Llo20:
	stb		r0,50(r29)		# CanTpChannel_p=r29 IdFound_b=r0
# 
# #if (CANTP_DEV_ERROR_DETECT == STD_ON)
#             /* Save the caller Id in a global variable */
#             CanTp_ChannelList_p[Channel_u8].CallerApiId = CANTP_ID_CANCELRECEIVE;
	.d2line		151
	diab.li		r0,9		# IdFound_b=r0
	lis		r3,CanTp_ChannelList_p@ha
	lwz		r4,CanTp_ChannelList_p@l(r3)
	rlwinm		r3,r30,0,24,31		# Channel_u8=r30
	e_mulli		r3,r3,52
	se_add		r3,r4
	stb		r0,48(r3)		# IdFound_b=r0
# #endif
# 
#             /*Check the Channel is currently handling the received Pduid*/
#             if((TempId_u16 == CanTpChannel_p->IPduId) &&
	.d2line		155
	rlwinm		r0,r28,0,16,31		# IdFound_b=r0 TempId_u16=r28
	lhz		r3,2(r29)		# CanTpChannel_p=r29
	se_cmp		r0,r3		# IdFound_b=r0
	bc		0,2,.L147	# ne
.Llo21:
	lbz		r0,14(r29)		# IdFound_b=r0 CanTpChannel_p=r29
.Llo22:
	rlwinm		r0,r0,0,24,27		# IdFound_b=r0 IdFound_b=r0
	cmpi		0,0,r0,64		# IdFound_b=r0
	bc		0,2,.L147	# ne
	.section	.text_vle
.L199:
#                     (CANTP_CH_RX_PROCESSING == (uint8) (CanTpChannel_p->State_u8 & CANTP_UPPER_NIBBLE_MASK)))
#             {
#                 /* Constant which contains the frame data length correction because of the addressing mode */
#                 CONST(uint8, AUTOMATIC) addrInfoLength =
	.d2line		159
.Llo23:
	lhz		r0,2(r29)		# IdFound_b=r0 CanTpChannel_p=r29
.Llo24:
	lis		r3,CanTp_RxNSdu_p@ha		# addrInfoLength=r3
.Llo30:
	lwz		r3,CanTp_RxNSdu_p@l(r3)		# addrInfoLength=r3 addrInfoLength=r3
	rlwinm		r4,r0,5,0,26		# IdFound_b=r0
	se_slwi		r0,3		# IdFound_b=r0 IdFound_b=r0
	subf		r0,r0,r4		# IdFound_b=r0 IdFound_b=r0
	lwzx		r0,r3,r0		# IdFound_b=r0 addrInfoLength=r3
	se_cmpi		r0,0		# IdFound_b=r0
	isel		r3,0,r0,2		# addrInfoLength=r3 addrInfoLength=r0
.L153:
.Llo25:
	diab.li		r0,1		# addrInfoLength=r0
	isel		r0,r3,r0,2		# addrInfoLength=r0 addrInfoLength=r3 addrInfoLength=r0
.L154:
#                 (uint8) (CANTP_STANDARD == CanTp_RxNSdu_p[CanTpChannel_p->IPduId].CanTpAddressingMode) ? 0U : 1U;
# 
#                 /* Maximum data length that can be processed now */
#                 MaxData = CANTP_CF_MAX_DATA(CanTpChannel_p->FrameSize, addrInfoLength);
	.d2line		163
.Llo31:
	lbz		r3,49(r29)		# addrInfoLength=r3 CanTpChannel_p=r29
.Llo32:
	subf		r0,r0,r3		# addrInfoLength=r0 addrInfoLength=r0 addrInfoLength=r3
	rlwinm		r0,r0,0,24,31		# addrInfoLength=r0 addrInfoLength=r0
	diab.li		r4,65535		# addrInfoLength=r4
	se_add		r0,r4		# addrInfoLength=r0 addrInfoLength=r0 addrInfoLength=r4
.Llo26:
	mr		r4,r0		# MaxData=r4 MaxData=r0
# 
#                 /*check for that SF Reception or last CF processing*/
#                 if((CANTP_CH_RX_UNSEGMENTED_UPLOAD_SF_DATA == CanTpChannel_p->State_u8) ||
	.d2line		166
	lbz		r0,14(r29)		# addrInfoLength=r0 CanTpChannel_p=r29
.Llo27:
	cmpi		0,0,r0,77		# addrInfoLength=r0
	bc		1,2,.L155	# eq
.Llo28:
	rlwinm		r4,r4,0,16,31		# MaxData=r4 MaxData=r4
	lhz		r0,8(r29)		# addrInfoLength=r0 CanTpChannel_p=r29
.Llo33:
	lhz		r3,10(r29)		# addrInfoLength=r3 CanTpChannel_p=r29
	subf		r3,r3,r0		# addrInfoLength=r3 addrInfoLength=r3 addrInfoLength=r0
	rlwinm		r3,r3,0,16,31		# addrInfoLength=r3 addrInfoLength=r3
	se_cmp		r4,r3		# MaxData=r4 addrInfoLength=r3
	bc		1,0,.L148	# lt
.L155:
#                         (MaxData >= (PduLengthType) (CanTpChannel_p->TotalLength - CanTpChannel_p->ProcessedLength)))
#                 {
#                     /*Set the return value if no RxPduid is stopped */
#                     ReturnVal = E_NOT_OK;
	.d2line		170
.Llo34:
	diab.li		r31,1		# ReturnVal=r31
	b		.L149
.L148:
#                 }
#                 else
#                 {
#                     /*Raise shut down request flag*/
#                     CanTpChannel_p->ShutdownFlag_b = CANTP_TRUE;
	.d2line		175
.Llo29:
	diab.li		r0,1		# addrInfoLength=r0
.Llo35:
	stb		r0,40(r29)		# CanTpChannel_p=r29 addrInfoLength=r0
# 
#                     /*Free Channel*/
#                     CanTp_FreeChannel(CanTpChannel_p);
	.d2line		178
	mr		r3,r29		# CanTpChannel_p=r3 CanTpChannel_p=r29
	bl		CanTp_FreeChannel
.L149:
#                 }
# 
#                 if(E_OK == ReturnVal)
	.d2line		181
.Llo36:
	rlwinm		r3,r31,0,24,31		# addrInfoLength=r3 ReturnVal=r31
.Llo37:
	se_cmpi		r3,0		# addrInfoLength=r3
	bc		0,2,.L151	# ne
#                 {
#                     /*Inform upper Layer with ID */
#                     PduR_CanTpRxIndication(CanTp_RxNSdu_p[TempId_u16].CanTpRxNSduId, NTFRSLT_E_CANCELATION_OK);
	.d2line		184
.Llo38:
	rlwinm		r28,r28,0,16,31		# TempId_u16=r28 TempId_u16=r28
	lis		r3,CanTp_RxNSdu_p@ha		# addrInfoLength=r3
.Llo39:
	lwz		r3,CanTp_RxNSdu_p@l(r3)		# addrInfoLength=r3 addrInfoLength=r3
	rlwinm		r0,r28,5,0,26		# addrInfoLength=r0 TempId_u16=r28
	se_slwi		r28,3		# TempId_u16=r28 TempId_u16=r28
	subf		r28,r28,r0		# TempId_u16=r28 TempId_u16=r28 addrInfoLength=r0
	se_add		r3,r28		# addrInfoLength=r3 addrInfoLength=r3 TempId_u16=r28
.Llo40:
	lhz		r3,18(r3)		# addrInfoLength=r3 addrInfoLength=r3
.Llo41:
	diab.li		r4,11		# addrInfoLength=r4
	bl		PduR_CanTpRxIndication
	.section	.text_vle
.L200:
.Llo13:
	b		.L151
.L147:
#                 }
#             }
#             else
#             {
# #if (CANTP_DEV_ERROR_DETECT == STD_ON)
#                 /* Report DET error that this opreation is not supported */
#                 (void)Det_ReportError(CANTP_MODULE_ID, CANTP_INSTANCE_ID,
	.d2line		191
.Llo14:
	diab.li		r3,35
	diab.li		r4,0
	diab.li		r5,9
	diab.li		r6,160
	bl		Det_ReportError
#                         CANTP_ID_CANCELRECEIVE, CANTP_E_OPER_NOT_SUPPORTED);
# #endif
# 
#                 /*Set the return value if no RxPduid is stopped */
#                 ReturnVal = E_NOT_OK;
	.d2line		196
	diab.li		r31,1		# ReturnVal=r31
.L151:
#             }
# 
#             /* The channel processing is leaving critical section */
#             CanTpChannel_p->CriticalSectionStatus_b = CANTP_FALSE;
	.d2line		200
	diab.li		r0,0		# addrInfoLength=r0
.Llo42:
	stb		r0,50(r29)		# CanTpChannel_p=r29 addrInfoLength=r0
# 
#             /*Enter Critical Section*/
#             CanTp_Exit_Area(Channel_u8);
	.d2line		203
	rlwinm		r3,r30,0,24,31		# addrInfoLength=r3 Channel_u8=r30
	bl		CanTp_Exit_Area
.L142:
#         }
#     }
#     /*Return with info*/
#     return ReturnVal;
	.d2line		207
.Llo10:
	rlwinm		r3,r31,0,24,31		# addrInfoLength=r3 ReturnVal=r31
# 
# }/*End of CanTp_CancelReceive() */
	.d2line		209
	.d2epilogue_begin
	lmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_restore_list	3,10
.Llo8:
	lwz		r0,36(r1)		# IdFound_b=r0
	mtspr		lr,r0		# IdFound_b=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L172:
	.type		CanTp_CancelReceive,@function
	.size		CanTp_CancelReceive,.-CanTp_CancelReceive
# Number of nodes = 243

# Allocations for CanTp_CancelReceive
#	?a4		CanTpRxSduId
#	?a5		$$43
#	?a6		$$42
#	?a7		$$41
#	?a8		ReturnVal
#	?a9		Channel_u8
#	?a10		CanTpChannel_p
#	?a11		TempId_u16
#	?a12		IdFound_b
#	?a13		MaxData
#	?a14		addrInfoLength

# Allocations for module
	.section	.text_vle
#$$ld
.L5:
.L224:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTp\\ssc\\make\\..\\inc\\CanTp_Types.h"
.L207:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTp\\ssc\\make\\..\\inc\\CanTp_Private.h"
.L173:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTp\\ssc\\make\\..\\src\\CanTp_CancelReceive.c"
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTp\\ssc\\make\\..\\src\\CanTp_CancelReceive.c"
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
.L177:
	.sleb128	2
	.4byte		.L170-.L2
	.byte		"CanTp_CancelReceive"
	.byte		0
	.4byte		.L173
	.uleb128	74
	.uleb128	41
	.4byte		.L174
	.byte		0x1
	.byte		0x1
	.4byte		.L171
	.4byte		.L172
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L173
	.uleb128	74
	.uleb128	41
	.byte		"CanTpRxSduId"
	.byte		0
	.4byte		.L178
	.4byte		.L181
	.section	.debug_info,,n
.L182:
	.sleb128	4
	.4byte		.L173
	.uleb128	81
	.uleb128	36
	.byte		"ReturnVal"
	.byte		0
	.4byte		.L174
	.4byte		.L183
.L184:
	.sleb128	4
	.4byte		.L173
	.uleb128	84
	.uleb128	27
	.byte		"Channel_u8"
	.byte		0
	.4byte		.L175
	.4byte		.L185
.L186:
	.sleb128	4
	.4byte		.L173
	.uleb128	87
	.uleb128	56
	.byte		"CanTpChannel_p"
	.byte		0
	.4byte		.L187
	.4byte		.L190
.L191:
	.sleb128	4
	.4byte		.L173
	.uleb128	90
	.uleb128	31
	.byte		"TempId_u16"
	.byte		0
	.4byte		.L178
	.4byte		.L192
.L193:
	.sleb128	4
	.4byte		.L173
	.uleb128	93
	.uleb128	29
	.byte		"IdFound_b"
	.byte		0
	.4byte		.L194
	.4byte		.L195
.L196:
	.sleb128	4
	.4byte		.L173
	.uleb128	96
	.uleb128	35
	.byte		"MaxData"
	.byte		0
	.4byte		.L197
	.4byte		.L198
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L202
	.4byte		.L199
	.4byte		.L200
.L203:
	.sleb128	4
	.4byte		.L173
	.uleb128	159
	.uleb128	41
	.byte		"addrInfoLength"
	.byte		0
	.4byte		.L204
	.4byte		.L205
	.section	.debug_info,,n
	.sleb128	0
.L202:
	.section	.debug_info,,n
	.sleb128	0
.L170:
	.section	.debug_info,,n
.L206:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L207
	.uleb128	481
	.uleb128	53
	.byte		"CanTp_RxNsduFound_p"
	.byte		0
	.4byte		.L208
	.0byte		.L206
.L210:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L207
	.uleb128	487
	.uleb128	61
	.byte		"CanTp_RxNSdu_p"
	.byte		0
	.4byte		.L211
.L215:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L207
	.uleb128	522
	.uleb128	68
	.byte		"CanTp_GeneralConfig_p"
	.byte		0
	.4byte		.L216
.L220:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L207
	.uleb128	528
	.uleb128	59
	.byte		"CanTp_ChannelList_p"
	.byte		0
	.4byte		.L187
.L221:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L207
	.uleb128	546
	.uleb128	39
	.byte		"CanTp_Status"
	.byte		0
	.4byte		.L222
	.section	.debug_info,,n
.L219:
	.sleb128	7
	.4byte		.L224
	.uleb128	117
	.uleb128	1
	.4byte		.L225-.L2
	.uleb128	16
	.section	.debug_info,,n
.L103:
	.sleb128	8
	.byte		"TxNSduId_Max"
	.byte		0
	.4byte		.L226
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L104:
	.sleb128	8
	.byte		"RxNPduId_Max"
	.byte		0
	.4byte		.L226
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L105:
	.sleb128	8
	.byte		"RxNSduId_Count"
	.byte		0
	.4byte		.L226
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L106:
	.sleb128	8
	.byte		"Channel_Max_u8"
	.byte		0
	.4byte		.L204
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L107:
	.sleb128	8
	.byte		"CanTp_Mf_Resolution_u16"
	.byte		0
	.4byte		.L209
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L108:
	.sleb128	8
	.byte		"CanTp_Cfg_PaddingByte_u8"
	.byte		0
	.4byte		.L204
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L109:
	.sleb128	8
	.byte		"RxNsduId_Max_u16"
	.byte		0
	.4byte		.L209
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L110:
	.sleb128	8
	.byte		"ConfirmationLength"
	.byte		0
	.4byte		.L209
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
	.sleb128	0
.L225:
.L214:
	.sleb128	7
	.4byte		.L224
	.uleb128	117
	.uleb128	1
	.4byte		.L227-.L2
	.uleb128	24
.L70:
	.sleb128	8
	.byte		"CanTpAddressingMode"
	.byte		0
	.4byte		.L228
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L71:
	.sleb128	8
	.byte		"CanTpRxChannel_u8"
	.byte		0
	.4byte		.L204
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L72:
	.sleb128	8
	.byte		"CanTpRxPaddingActivation"
	.byte		0
	.4byte		.L231
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L73:
	.sleb128	8
	.byte		"CanTpRxTaType"
	.byte		0
	.4byte		.L232
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L74:
	.sleb128	8
	.byte		"CanTp_TargetAddress_u8"
	.byte		0
	.4byte		.L204
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L75:
	.sleb128	8
	.byte		"CanTpRxNSduId"
	.byte		0
	.4byte		.L226
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L76:
	.sleb128	8
	.byte		"FrameType"
	.byte		0
	.4byte		.L235
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L227:
.L189:
	.sleb128	7
	.4byte		.L224
	.uleb128	117
	.uleb128	1
	.4byte		.L238-.L2
	.uleb128	52
.L45:
	.sleb128	8
	.byte		"ChannelIdx_u8"
	.byte		0
	.4byte		.L175
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L46:
	.sleb128	8
	.byte		"IPduId"
	.byte		0
	.4byte		.L178
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L47:
	.sleb128	8
	.byte		"TimeoutTicks_u16"
	.byte		0
	.4byte		.L179
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L48:
	.sleb128	8
	.byte		"StMinTicks_u16"
	.byte		0
	.4byte		.L179
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L49:
	.sleb128	8
	.byte		"TotalLength"
	.byte		0
	.4byte		.L197
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L50:
	.sleb128	8
	.byte		"ProcessedLength"
	.byte		0
	.4byte		.L197
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L51:
	.sleb128	8
	.byte		"ProvidedBufferSize"
	.byte		0
	.4byte		.L197
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L52:
	.sleb128	8
	.byte		"State_u8"
	.byte		0
	.4byte		.L175
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L53:
	.sleb128	8
	.byte		"NextState_u8"
	.byte		0
	.4byte		.L175
	.sleb128	2
	.byte		0x23
	.uleb128	15
	.byte		0x1
.L54:
	.sleb128	8
	.byte		"BlockSize_u16"
	.byte		0
	.4byte		.L179
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L55:
	.sleb128	8
	.byte		"WftCounter_u16"
	.byte		0
	.4byte		.L179
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L56:
	.sleb128	8
	.byte		"SequenceNumber_u8"
	.byte		0
	.4byte		.L175
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L57:
	.sleb128	8
	.byte		"StMin_u8"
	.byte		0
	.4byte		.L175
	.sleb128	2
	.byte		0x23
	.uleb128	21
	.byte		0x1
.L58:
	.sleb128	8
	.byte		"TempBuffer_au8"
	.byte		0
	.4byte		.L239
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L59:
	.sleb128	8
	.byte		"TempLength_u8"
	.byte		0
	.4byte		.L175
	.sleb128	2
	.byte		0x23
	.uleb128	29
	.byte		0x1
.L60:
	.sleb128	8
	.byte		"CanIfDLC_u8"
	.byte		0
	.4byte		.L175
	.sleb128	2
	.byte		0x23
	.uleb128	30
	.byte		0x1
.L61:
	.sleb128	8
	.byte		"CanIfData_au8"
	.byte		0
	.4byte		.L241
	.sleb128	2
	.byte		0x23
	.uleb128	31
	.byte		0x1
.L62:
	.sleb128	8
	.byte		"ULayerIndFlag_b"
	.byte		0
	.4byte		.L194
	.sleb128	2
	.byte		0x23
	.uleb128	39
	.byte		0x1
.L63:
	.sleb128	8
	.byte		"ShutdownFlag_b"
	.byte		0
	.4byte		.L194
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L64:
	.sleb128	8
	.byte		"RemainingCFInBlock_u16"
	.byte		0
	.4byte		.L179
	.sleb128	2
	.byte		0x23
	.uleb128	42
	.byte		0x1
.L65:
	.sleb128	8
	.byte		"LastCFofNSduFlag_b"
	.byte		0
	.4byte		.L194
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L66:
	.sleb128	8
	.byte		"RequiredBufferSize"
	.byte		0
	.4byte		.L197
	.sleb128	2
	.byte		0x23
	.uleb128	46
	.byte		0x1
.L67:
	.sleb128	8
	.byte		"CallerApiId"
	.byte		0
	.4byte		.L175
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L68:
	.sleb128	8
	.byte		"FrameSize"
	.byte		0
	.4byte		.L175
	.sleb128	2
	.byte		0x23
	.uleb128	49
	.byte		0x1
.L69:
	.sleb128	8
	.byte		"CriticalSectionStatus_b"
	.byte		0
	.4byte		.L194
	.sleb128	2
	.byte		0x23
	.uleb128	50
	.byte		0x1
	.sleb128	0
.L238:
	.section	.debug_info,,n
.L237:
	.sleb128	9
	.4byte		.L224
	.uleb128	117
	.uleb128	1
	.4byte		.L243-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	10
	.byte		"CANTP_FRAME_TYPE_CAN20"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"CANTP_FRAME_TYPE_CANFD"
	.byte		0
	.sleb128	1
	.sleb128	0
.L243:
.L234:
	.sleb128	9
	.4byte		.L224
	.uleb128	108
	.uleb128	1
	.4byte		.L244-.L2
	.uleb128	4
	.sleb128	10
	.byte		"CANTP_FUNCTIONAL"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"CANTP_PHYSICAL"
	.byte		0
	.sleb128	1
	.sleb128	0
.L244:
.L223:
	.sleb128	9
	.4byte		.L224
	.uleb128	98
	.uleb128	1
	.4byte		.L245-.L2
	.uleb128	4
	.sleb128	10
	.byte		"CANTP_OFF"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"CANTP_ON"
	.byte		0
	.sleb128	1
	.sleb128	0
.L245:
.L230:
	.sleb128	9
	.4byte		.L224
	.uleb128	87
	.uleb128	1
	.4byte		.L246-.L2
	.uleb128	4
	.sleb128	10
	.byte		"CANTP_STANDARD"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"CANTP_EXTENDED"
	.byte		0
	.sleb128	1
	.sleb128	10
	.byte		"CANTP_MIXED"
	.byte		0
	.sleb128	2
	.sleb128	0
.L246:
	.section	.debug_info,,n
.L176:
	.sleb128	11
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L175:
	.sleb128	12
	.byte		"uint8"
	.byte		0
	.4byte		.L176
.L174:
	.sleb128	12
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L175
.L180:
	.sleb128	11
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L179:
	.sleb128	12
	.byte		"uint16"
	.byte		0
	.4byte		.L180
.L178:
	.sleb128	12
	.byte		"PduIdType"
	.byte		0
	.4byte		.L179
.L188:
	.sleb128	12
	.byte		"CanTp_Channel_t"
	.byte		0
	.4byte		.L189
	.section	.debug_info,,n
.L187:
	.sleb128	13
	.4byte		.L188
.L194:
	.sleb128	12
	.byte		"boolean"
	.byte		0
	.4byte		.L176
.L197:
	.sleb128	12
	.byte		"PduLengthType"
	.byte		0
	.4byte		.L179
	.section	.debug_info,,n
.L204:
	.sleb128	14
	.4byte		.L175
.L209:
	.sleb128	14
	.4byte		.L179
.L208:
	.sleb128	13
	.4byte		.L209
.L213:
	.sleb128	12
	.byte		"CanTp_RxNSdu_t"
	.byte		0
	.4byte		.L214
.L212:
	.sleb128	14
	.4byte		.L213
.L211:
	.sleb128	13
	.4byte		.L212
.L218:
	.sleb128	12
	.byte		"CanTp_GeneralConfig_t"
	.byte		0
	.4byte		.L219
.L217:
	.sleb128	14
	.4byte		.L218
.L216:
	.sleb128	13
	.4byte		.L217
.L222:
	.sleb128	12
	.byte		"CanTp_Status_t"
	.byte		0
	.4byte		.L223
.L226:
	.sleb128	14
	.4byte		.L178
.L229:
	.sleb128	12
	.byte		"CanTp_AddressingMode_t"
	.byte		0
	.4byte		.L230
.L228:
	.sleb128	14
	.4byte		.L229
.L231:
	.sleb128	14
	.4byte		.L222
.L233:
	.sleb128	12
	.byte		"CanTp_TaType_t"
	.byte		0
	.4byte		.L234
.L232:
	.sleb128	14
	.4byte		.L233
.L236:
	.sleb128	12
	.byte		"CanTp_FrameType_t"
	.byte		0
	.4byte		.L237
.L235:
	.sleb128	14
	.4byte		.L236
	.section	.debug_info,,n
.L239:
	.sleb128	15
	.4byte		.L240-.L2
	.4byte		.L175
	.section	.debug_info,,n
	.sleb128	16
	.uleb128	6
	.sleb128	0
.L240:
.L241:
	.sleb128	15
	.4byte		.L242-.L2
	.4byte		.L175
	.sleb128	16
	.uleb128	7
	.sleb128	0
.L242:
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L181:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),30
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),30
	.d2locend
.L183:
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),31
	.d2locend
.L185:
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),30
	.d2locend
.L190:
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo10),29
	.d2locend
.L192:
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo13),28
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo10),28
	.d2locend
.L195:
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo4),0
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo17),0
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo19),0
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo21),0
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo23),0
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo25),0
	.d2locend
.L198:
	.d2locreg	%offsetof(.Llo26), %offsetof(.Llo27),0
	.d2locreg	%offsetof(.Llo28), %offsetof(.Llo29),4
	.d2locend
.L205:
	.d2locreg	%offsetof(.Llo30), %offsetof(.Llo31),3
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo26),0
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo28),0
	.d2locreg	%offsetof(.Llo33), %offsetof(.Llo34),0
	.d2locreg	%offsetof(.Llo35), %offsetof(.Llo36),0
	.d2locreg	%offsetof(.Llo37), %offsetof(.Llo38),3
	.d2locreg	%offsetof(.Llo39), %offsetof(.Llo40),3
	.d2locreg	%offsetof(.Llo41), %offsetof(.Llo13),0
	.d2locreg	%offsetof(.Llo42), %offsetof(.Llo10),0
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "CanTp_CancelReceive"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "CanTp_Enter_Area","CanTp_Exit_Area","CanTp_FreeChannel","Det_ReportError","PduR_CanTpRxIndication"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanTp_CancelReceive.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanTp_CancelReceive.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanTp_CancelReceive.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanTp_CancelReceive.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanTp_CancelReceive.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanTp_CancelReceive.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\CanTp\ssc\make\..\src\CanTp_CancelReceive.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
