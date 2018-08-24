#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"CanTp_Transmit.c"
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
# FUNC(Std_ReturnType, CANTP_CODE) CanTp_Transmit
	.align		2
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTp\\ssc\\make\\..\\src\\CanTp_Transmit.c"
        .d2line         73,34
#$$ld
.L166:

#$$bf	CanTp_Transmit,interprocedural,rasave,nostackparams
	.globl		CanTp_Transmit
	.d2_cfa_start __cie
CanTp_Transmit:
.Llo1:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr
	stmw		r27,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	27,31,1,1
	stw		r0,52(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# CanTpTxSduId=r31 CanTpTxSduId=r3
	mr		r30,r4		# CanTpTxInfoPtr=r30 CanTpTxInfoPtr=r4
	.d2prologue_end
# (
#     /* PRQA S 3227 2 *//* API is defined as the standard specified (no const)*/
#     VAR(PduIdType, AUTOMATIC) CanTpTxSduId,
#     P2CONST(PduInfoType, AUTOMATIC, CANTP_APPL_DATA) CanTpTxInfoPtr
# )
# {
#     /*Variable to identify channel*/
#     VAR(uint8, AUTOMATIC) Channel_u8;
# 
#     /*Pointer to hold the Channel Structure address*/
#     P2VAR(CanTp_Channel_t, AUTOMATIC, CANTP_APPL_DATA) CanTpChannel_p;
# 
#     /*Variable to Return error value*/
#     VAR(Std_ReturnType, AUTOMATIC) ErrRetVal = E_OK;
	.d2line		87
	diab.li		r27,0		# ErrRetVal=r27
# 
# #if (CANTP_DEV_ERROR_DETECT == STD_ON)
# 
#     /* Check if the CANTP module is not initialized */
#     if(CANTP_OFF == CanTp_Status)
	.d2line		92
	lis		r3,CanTp_Status@ha
.Llo2:
	lwz		r0,CanTp_Status@l(r3)
	se_cmpi		r0,0
	bc		0,2,.L128	# ne
#     {
#         /* Report to DET */
#         (void)Det_ReportError(CANTP_MODULE_ID, CANTP_INSTANCE_ID,
	.d2line		95
.Llo3:
	diab.li		r3,35
.Llo7:
	diab.li		r4,0
	diab.li		r5,3
	diab.li		r6,32
	bl		Det_ReportError
#                 CANTP_ID_TRANSMIT, CANTP_E_UNINIT);
#         /*Set the return value */
#         ErrRetVal = E_NOT_OK;
	.d2line		98
	diab.li		r27,1		# ErrRetVal=r27
	b		.L129
.L128:
#     }
#     else
#     {
#         /* Check if the parameter TXPduId is out of range */
#         if(CanTp_GeneralConfig_p->TxNSduId_Max <= CanTpTxSduId)
	.d2line		103
	lis		r3,CanTp_GeneralConfig_p@ha
	lwz		r3,CanTp_GeneralConfig_p@l(r3)
	lhz		r0,0(r3)
	rlwinm		r3,r31,0,16,31		# CanTpTxSduId=r31
	se_cmp		r0,r3
	bc		1,1,.L130	# gt
#         {
#             /*Report DET error*/
#             (void)Det_ReportError(CANTP_MODULE_ID, CANTP_INSTANCE_ID,
	.d2line		106
	diab.li		r3,35
	diab.li		r4,0
	diab.li		r5,3
	diab.li		r6,48
	bl		Det_ReportError
#                     CANTP_ID_TRANSMIT, CANTP_E_INVALID_TX_ID);
# 
#             /*Set the return value */
#             ErrRetVal = E_NOT_OK;
	.d2line		110
	diab.li		r27,1		# ErrRetVal=r27
	b		.L129
.L130:
#         }
# 
#         /* Check if the parameter CanTpTxInfoPtr is NULL*/
#         else if(NULL_PTR == CanTpTxInfoPtr)
	.d2line		114
	se_cmpi		r30,0		# CanTpTxInfoPtr=r30
	bc		0,2,.L129	# ne
#         {
#             /*Report DET error*/
#             (void)Det_ReportError(CANTP_MODULE_ID, CANTP_INSTANCE_ID,
	.d2line		117
	diab.li		r3,35
	diab.li		r4,0
	diab.li		r5,3
	diab.li		r6,3
	bl		Det_ReportError
#                     CANTP_ID_TRANSMIT, CANTP_E_PARAM_POINTER);
#             /*Set the return value */
#             ErrRetVal = E_NOT_OK;
	.d2line		120
	diab.li		r27,1		# ErrRetVal=r27
.L129:
#         }
# 
#         else
#         {
#             /* No error to report to DET - do nothing */
#         }
# 
#         /* the CanTpTxInfoPtr is not NULL and the CanTpTxSduId is correct
#          * so the length can be checked */
#         if(E_OK == ErrRetVal)
#         {
#             /* In AR422 it is not necessary to check the maximum of SduLength because
#              * CanTp can handle 2^32 byte long messages and PduLengthType can't be wider
#              * than uint32 ([SWS_COMTYPE_00008]) */
#         }
#     }
# 
#     if(E_OK == ErrRetVal)
	.d2line		138
	rlwinm		r3,r27,0,24,31		# ErrRetVal=r27
	se_cmpi		r3,0
	bc		0,2,.L135	# ne
# #endif /* CANTP_DEV_ERROR_DETECT == STD_ON */
#     {
# 
#         /*Identify the channel corresponds to TxNsdu */
#         Channel_u8 = CanTp_TxNSdu_p[CanTpTxSduId].CanTpTxChannel_u8;
	.d2line		143
	rlwinm		r4,r31,0,16,31		# CanTpTxSduId=r31
	lis		r3,CanTp_TxNSdu_p@ha
	lwz		r0,CanTp_TxNSdu_p@l(r3)
	rlwinm		r3,r4,5,0,26
	se_slwi		r4,2
	subf		r4,r4,r3
	se_add		r4,r0
	lbz		r29,4(r4)		# Channel_u8=r29
.Llo11:
	mr		r29,r29		# Channel_u8=r29 Channel_u8=r29
# 
#         CanTpChannel_p = &CanTp_ChannelList_p[Channel_u8];
	.d2line		145
	lis		r3,CanTp_ChannelList_p@ha
	lwz		r28,CanTp_ChannelList_p@l(r3)		# CanTpChannel_p=r28
.Llo12:
	rlwinm		r3,r29,0,24,31		# Channel_u8=r29
	e_mulli		r0,r3,52
	se_add		r0,r28		# CanTpChannel_p=r28
	mr		r28,r0		# CanTpChannel_p=r28 CanTpChannel_p=r0
# 
#         /*Enter Critical Section*/
#         CanTp_Enter_Area(Channel_u8);
	.d2line		148
	bl		CanTp_Enter_Area
# 
#         /* The channel processing entered critical section */
#         CanTpChannel_p->CriticalSectionStatus_b = CANTP_TRUE;
	.d2line		151
	diab.li		r0,1
	stb		r0,50(r28)		# CanTpChannel_p=r28
# 
# #if (CANTP_DEV_ERROR_DETECT == STD_ON)
#         /* Save the caller Id in a global variable */
#         CanTpChannel_p->CallerApiId = CANTP_ID_TRANSMIT;
	.d2line		155
	diab.li		r0,3
	stb		r0,48(r28)		# CanTpChannel_p=r28
# #endif
# 
#         /*Check whether the channel is free*/
#         if(CANTP_CH_IDLE == CanTpChannel_p->State_u8)
	.d2line		159
	lbz		r0,14(r28)		# CanTpChannel_p=r28
	se_cmpi		r0,0
	bc		0,2,.L136	# ne
	.section	.text_vle
.L191:
#         {
#             /* Constant which contains the frame data length correction because of the addressing mode */
#             CONST(uint8, AUTOMATIC) addrInfoLength =
	.d2line		162
	rlwinm		r4,r31,0,16,31		# CanTpTxSduId=r31
	lis		r3,CanTp_TxNSdu_p@ha		# addrInfoLength=r3
.Llo14:
	lwz		r3,CanTp_TxNSdu_p@l(r3)		# addrInfoLength=r3 addrInfoLength=r3
	rlwinm		r0,r4,5,0,26		# addrInfoLength=r0
	se_slwi		r4,2
	subf		r4,r4,r0		# addrInfoLength=r0
	lwzx		r0,r3,r4		# addrInfoLength=r0 addrInfoLength=r3
	se_cmpi		r0,0		# addrInfoLength=r0
	isel		r3,0,r0,2		# addrInfoLength=r3 addrInfoLength=r0
.L142:
	diab.li		r0,1		# addrInfoLength=r0
	isel		r0,r3,r0,2		# addrInfoLength=r0 addrInfoLength=r3 addrInfoLength=r0
.L143:
#             (uint8) (CANTP_STANDARD == CanTp_TxNSdu_p[CanTpTxSduId].CanTpAddressingMode) ? 0U : 1U;
# 
#             /*Copy the TxSduId to the local variable */
#             CanTpChannel_p->IPduId = CanTpTxSduId;
	.d2line		166
.Llo15:
	sth		r31,2(r28)		# CanTpChannel_p=r28 CanTpTxSduId=r31
# 
#             /*Copy the Length information to the local variable */
#             /* MISRA Rule 1.2 VIOLATION:
#              * Reasoning: Null pointer checking for CanTpTxInfoPtr is already conducted in DET checking
#              * Approved/Verified by: Faisal N I */
#             /* PRQA S 505 1 *//* Misra 1.2 Verified suppression*/
#             CanTpChannel_p->TotalLength = CanTpTxInfoPtr->SduLength;
	.d2line		173
.Llo16:
	lhz		r3,4(r30)		# addrInfoLength=r3 CanTpTxInfoPtr=r30
	sth		r3,8(r28)		# CanTpChannel_p=r28 addrInfoLength=r3
# 
#             CanTpChannel_p->FrameSize = (CanTp_TxNSdu_p[CanTpTxSduId].FrameType == CANTP_FRAME_TYPE_CANFD)?
	.d2line		175
	rlwinm		r4,r31,0,16,31		# CanTpTxSduId=r31
	lis		r3,CanTp_TxNSdu_p@ha		# addrInfoLength=r3
	lwz		r3,CanTp_TxNSdu_p@l(r3)		# addrInfoLength=r3 addrInfoLength=r3
	rlwinm		r5,r4,5,0,26
	se_slwi		r4,2
	subf		r4,r4,r5
	se_add		r3,r4		# addrInfoLength=r3 addrInfoLength=r3
	lwz		r3,24(r3)		# addrInfoLength=r3 addrInfoLength=r3
	se_cmpi		r3,1		# addrInfoLength=r3
	diab.li		r3,64		# addrInfoLength=r3
	isel		r3,r3,r4,2		# addrInfoLength=r3 addrInfoLength=r3
.L144:
.Llo8:
	diab.li		r4,8
	isel		r3,r3,r4,2		# addrInfoLength=r3 addrInfoLength=r3
.L145:
	stb		r3,49(r28)		# CanTpChannel_p=r28 addrInfoLength=r3
#             CANTP_MAX_CANFD_LENGTH : CANTP_MAX_CAN20_LENGTH;
# 
#             /* Check if the frame is of SF */
#             if(CANTP_SF_MAX_DATA(CanTpChannel_p->FrameSize, addrInfoLength) >= CanTpChannel_p->TotalLength)
	.d2line		179
	rlwinm		r3,r3,0,24,31		# addrInfoLength=r3 addrInfoLength=r3
	se_cmpi		r3,8		# addrInfoLength=r3
	diab.li		r3,2		# addrInfoLength=r3
	isel		r3,r3,r4,1		# addrInfoLength=r3 addrInfoLength=r3
.L146:
.Llo17:
	diab.li		r4,1
.Llo18:
	isel		r4,r3,r4,1		# addrInfoLength=r3
.L147:
.Llo19:
	lbz		r3,49(r28)		# addrInfoLength=r3 CanTpChannel_p=r28
.Llo20:
	subf		r0,r0,r3		# addrInfoLength=r0 addrInfoLength=r0 addrInfoLength=r3
	rlwinm		r0,r0,0,24,31		# addrInfoLength=r0 addrInfoLength=r0
	subf		r4,r4,r0		# addrInfoLength=r0
	rlwinm		r4,r4,0,16,31
	lhz		r0,8(r28)		# addrInfoLength=r0 CanTpChannel_p=r28
	se_cmp		r4,r0		# addrInfoLength=r0
	bc		1,0,.L137	# lt
#             {
#                 CanTpChannel_p->TimeoutTicks_u16 = CanTp_TxNSduConfig_p[CanTpTxSduId].CanTpNcs_u16;
	.d2line		181
.Llo21:
	rlwinm		r31,r31,0,16,31		# CanTpTxSduId=r31 CanTpTxSduId=r31
	lis		r3,CanTp_TxNSduConfig_p@ha		# addrInfoLength=r3
.Llo22:
	lwz		r0,CanTp_TxNSduConfig_p@l(r3)		# addrInfoLength=r0 addrInfoLength=r3
	rlwinm		r3,r31,4,0,27		# addrInfoLength=r3 CanTpTxSduId=r31
.Llo23:
	se_slwi		r31,2		# CanTpTxSduId=r31 CanTpTxSduId=r31
.Llo24:
	subf		r31,r31,r3		# CanTpTxSduId=r31 CanTpTxSduId=r31 addrInfoLength=r3
	se_add		r31,r0		# CanTpTxSduId=r31 CanTpTxSduId=r31 addrInfoLength=r0
	lhz		r0,4(r31)		# addrInfoLength=r0 CanTpTxSduId=r31
	sth		r0,4(r28)		# CanTpChannel_p=r28 addrInfoLength=r0
# 
#                 /*Set the mode buffer request SF*/
#                 CanTpChannel_p->State_u8 = CANTP_CH_TX_REQBUF_SF;
	.d2line		184
	diab.li		r0,136		# addrInfoLength=r0
	stb		r0,14(r28)		# CanTpChannel_p=r28 addrInfoLength=r0
	b		.L138
.L137:
#             }
#             /*If frame is not SF the check for functional or physical,
#              *if functional abort transmission*/
#             else if(CANTP_FUNCTIONAL == CanTp_TxNSdu_p[CanTpTxSduId].CanTpTxTaType)
	.d2line		188
.Llo25:
	rlwinm		r4,r31,0,16,31		# CanTpTxSduId=r31
	lis		r3,CanTp_TxNSdu_p@ha		# addrInfoLength=r3
.Llo26:
	lwz		r0,CanTp_TxNSdu_p@l(r3)		# addrInfoLength=r0 addrInfoLength=r3
	rlwinm		r3,r4,5,0,26		# addrInfoLength=r3
.Llo27:
	se_slwi		r4,2
.Llo28:
	subf		r4,r4,r3		# addrInfoLength=r3
	se_add		r4,r0		# addrInfoLength=r0
	lwz		r0,16(r4)		# addrInfoLength=r0
	se_cmpi		r0,0		# addrInfoLength=r0
	bc		0,2,.L139	# ne
#             {
# #if (CANTP_DEV_ERROR_DETECT == STD_ON)
#                 /* Report to DET */
#                 (void)Det_ReportError(CANTP_MODULE_ID, CANTP_INSTANCE_ID,
	.d2line		192
.Llo29:
	diab.li		r3,35		# addrInfoLength=r3
	diab.li		r4,0
	diab.li		r5,3
	diab.li		r6,144
	bl		Det_ReportError
#                         CANTP_ID_TRANSMIT, CANTP_E_INVALID_TATYPE);
# #endif
# 
#                 /*Memorize that a shutdown request is made for this channel*/
#                 CanTpChannel_p->ShutdownFlag_b = CANTP_TRUE;
	.d2line		197
	diab.li		r27,1		# ErrRetVal=r27
	stb		r27,40(r28)		# CanTpChannel_p=r28 ErrRetVal=r27
# 
#                 /*Set the return value */
#                 ErrRetVal = E_NOT_OK;
	.d2line		200
	b		.L138
.L139:
#             }
#             /*If frame is type of physical and not short frame */
#             else
#             {
#                 /*Start time out N_Cs*/
#                 CanTpChannel_p->TimeoutTicks_u16 = CanTp_TxNSduConfig_p[CanTpTxSduId].CanTpNcs_u16;
	.d2line		206
	rlwinm		r31,r31,0,16,31		# CanTpTxSduId=r31 CanTpTxSduId=r31
	lis		r3,CanTp_TxNSduConfig_p@ha		# addrInfoLength=r3
.Llo30:
	lwz		r3,CanTp_TxNSduConfig_p@l(r3)		# addrInfoLength=r3 addrInfoLength=r3
	rlwinm		r0,r31,4,0,27		# addrInfoLength=r0 CanTpTxSduId=r31
	se_slwi		r31,2		# CanTpTxSduId=r31 CanTpTxSduId=r31
	subf		r31,r31,r0		# CanTpTxSduId=r31 CanTpTxSduId=r31 addrInfoLength=r0
	se_add		r3,r31		# addrInfoLength=r3 addrInfoLength=r3 CanTpTxSduId=r31
.Llo31:
	lhz		r0,4(r3)		# addrInfoLength=r0 addrInfoLength=r3
.Llo32:
	sth		r0,4(r28)		# CanTpChannel_p=r28 addrInfoLength=r0
# 
#                 /*Set the mode buffer request FF*/
#                 CanTpChannel_p->State_u8 = CANTP_CH_TX_REQBUF_FF;
	.d2line		209
	diab.li		r0,137		# addrInfoLength=r0
	stb		r0,14(r28)		# CanTpChannel_p=r28 addrInfoLength=r0
.L138:
#             }
#             /*Free Channel*/
#             CanTp_FreeChannel(CanTpChannel_p);
	.d2line		212
.Llo4:
	mr		r3,r28		# CanTpChannel_p=r3 CanTpChannel_p=r28
	bl		CanTp_FreeChannel
	.section	.text_vle
.L192:
	b		.L141
.L136:
#         }
#         else
#         {
#             /*return with error value*/
#             ErrRetVal = E_NOT_OK;
	.d2line		217
.Llo5:
	diab.li		r27,1		# ErrRetVal=r27
.L141:
#         }
# 
#         /* The channel processing is leaving critical section */
#         CanTpChannel_p->CriticalSectionStatus_b = CANTP_FALSE;
	.d2line		221
.Llo6:
	diab.li		r0,0		# addrInfoLength=r0
.Llo33:
	stb		r0,50(r28)		# CanTpChannel_p=r28 addrInfoLength=r0
# 
#         /*Exit Critical Section*/
#         CanTp_Exit_Area(Channel_u8);
	.d2line		224
	rlwinm		r3,r29,0,24,31		# CanTpChannel_p=r3 Channel_u8=r29
	bl		CanTp_Exit_Area
.L135:
#     }
#     /*return with error value*/
#     return ErrRetVal;
	.d2line		227
.Llo9:
	rlwinm		r3,r27,0,24,31		# CanTpChannel_p=r3 ErrRetVal=r27
# 
# }/* End of CanTp_Transmit() */
	.d2line		229
	.d2epilogue_begin
	lmw		r27,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo13:
	lwz		r0,52(r1)		# addrInfoLength=r0
	mtspr		lr,r0		# addrInfoLength=lr
	diab.addi		r1,r1,48		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo10:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L167:
	.type		CanTp_Transmit,@function
	.size		CanTp_Transmit,.-CanTp_Transmit
# Number of nodes = 281

# Allocations for CanTp_Transmit
#	?a4		CanTpTxSduId
#	?a5		CanTpTxInfoPtr
#	?a6		$$40
#	?a7		$$39
#	?a8		$$38
#	?a9		$$37
#	?a10		$$36
#	?a11		$$35
#	?a12		$$34
#	?a13		$$33
#	?a14		Channel_u8
#	?a15		CanTpChannel_p
#	?a16		ErrRetVal
#	?a17		addrInfoLength

# Allocations for module
	.section	.text_vle
#$$ld
.L5:
.L241:	.d2filenum "C:\\WINDRI~1\\COMPIL~1\\DIAB-5~1.4\\include\\diab/lpragma.h"
.L218:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTp\\ssc\\make\\..\\inc\\CanTp_Types.h"
.L199:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTp\\ssc\\make\\..\\inc\\CanTp_Private.h"
.L168:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTp\\ssc\\make\\..\\src\\CanTp_Transmit.c"
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
	.uleb128	3
	.uleb128	8
	.uleb128	11
	.uleb128	15
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTp\\ssc\\make\\..\\src\\CanTp_Transmit.c"
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
.L172:
	.sleb128	2
	.4byte		.L165-.L2
	.byte		"CanTp_Transmit"
	.byte		0
	.4byte		.L168
	.uleb128	73
	.uleb128	34
	.4byte		.L169
	.byte		0x1
	.byte		0x1
	.4byte		.L166
	.4byte		.L167
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L168
	.uleb128	73
	.uleb128	34
	.byte		"CanTpTxSduId"
	.byte		0
	.4byte		.L173
	.4byte		.L176
	.sleb128	3
	.4byte		.L168
	.uleb128	73
	.uleb128	34
	.byte		"CanTpTxInfoPtr"
	.byte		0
	.4byte		.L177
	.4byte		.L181
	.section	.debug_info,,n
.L182:
	.sleb128	4
	.4byte		.L168
	.uleb128	81
	.uleb128	27
	.byte		"Channel_u8"
	.byte		0
	.4byte		.L170
	.4byte		.L183
.L184:
	.sleb128	4
	.4byte		.L168
	.uleb128	84
	.uleb128	56
	.byte		"CanTpChannel_p"
	.byte		0
	.4byte		.L185
	.4byte		.L188
.L189:
	.sleb128	4
	.4byte		.L168
	.uleb128	87
	.uleb128	36
	.byte		"ErrRetVal"
	.byte		0
	.4byte		.L169
	.4byte		.L190
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L194
	.4byte		.L191
	.4byte		.L192
.L195:
	.sleb128	4
	.4byte		.L168
	.uleb128	162
	.uleb128	37
	.byte		"addrInfoLength"
	.byte		0
	.4byte		.L196
	.4byte		.L197
	.section	.debug_info,,n
	.sleb128	0
.L194:
	.section	.debug_info,,n
	.sleb128	0
.L165:
	.section	.debug_info,,n
.L198:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L199
	.uleb128	498
	.uleb128	61
	.byte		"CanTp_TxNSdu_p"
	.byte		0
	.4byte		.L200
	.0byte		.L198
.L204:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L199
	.uleb128	504
	.uleb128	67
	.byte		"CanTp_TxNSduConfig_p"
	.byte		0
	.4byte		.L205
.L209:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L199
	.uleb128	522
	.uleb128	68
	.byte		"CanTp_GeneralConfig_p"
	.byte		0
	.4byte		.L210
.L214:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L199
	.uleb128	528
	.uleb128	59
	.byte		"CanTp_ChannelList_p"
	.byte		0
	.4byte		.L185
.L215:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L199
	.uleb128	546
	.uleb128	39
	.byte		"CanTp_Status"
	.byte		0
	.4byte		.L216
	.section	.debug_info,,n
.L213:
	.sleb128	7
	.4byte		.L218
	.uleb128	117
	.uleb128	1
	.4byte		.L219-.L2
	.uleb128	16
	.section	.debug_info,,n
.L97:
	.sleb128	8
	.byte		"TxNSduId_Max"
	.byte		0
	.4byte		.L220
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L98:
	.sleb128	8
	.byte		"RxNPduId_Max"
	.byte		0
	.4byte		.L220
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L99:
	.sleb128	8
	.byte		"RxNSduId_Count"
	.byte		0
	.4byte		.L220
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L100:
	.sleb128	8
	.byte		"Channel_Max_u8"
	.byte		0
	.4byte		.L196
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L101:
	.sleb128	8
	.byte		"CanTp_Mf_Resolution_u16"
	.byte		0
	.4byte		.L221
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L102:
	.sleb128	8
	.byte		"CanTp_Cfg_PaddingByte_u8"
	.byte		0
	.4byte		.L196
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L103:
	.sleb128	8
	.byte		"RxNsduId_Max_u16"
	.byte		0
	.4byte		.L221
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L104:
	.sleb128	8
	.byte		"ConfirmationLength"
	.byte		0
	.4byte		.L221
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
	.sleb128	0
.L219:
.L208:
	.sleb128	7
	.4byte		.L218
	.uleb128	117
	.uleb128	1
	.4byte		.L222-.L2
	.uleb128	12
.L86:
	.sleb128	8
	.byte		"CanTpNas_u16"
	.byte		0
	.4byte		.L221
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L87:
	.sleb128	8
	.byte		"CanTpNbs_u16"
	.byte		0
	.4byte		.L221
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L88:
	.sleb128	8
	.byte		"CanTpNcs_u16"
	.byte		0
	.4byte		.L221
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L89:
	.sleb128	8
	.byte		"CanTpTxCanIfNPduId"
	.byte		0
	.4byte		.L220
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L90:
	.sleb128	8
	.byte		"CanTpTxConfirmationId"
	.byte		0
	.4byte		.L220
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L91:
	.sleb128	8
	.byte		"CanTpPduRConfId"
	.byte		0
	.4byte		.L221
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
	.sleb128	0
.L222:
.L203:
	.sleb128	7
	.4byte		.L218
	.uleb128	117
	.uleb128	1
	.4byte		.L223-.L2
	.uleb128	28
.L79:
	.sleb128	8
	.byte		"CanTpAddressingMode"
	.byte		0
	.4byte		.L224
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L80:
	.sleb128	8
	.byte		"CanTpTxChannel_u8"
	.byte		0
	.4byte		.L196
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L81:
	.sleb128	8
	.byte		"CanTpTxPaddingActivation"
	.byte		0
	.4byte		.L227
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L82:
	.sleb128	8
	.byte		"CanTpTc_b"
	.byte		0
	.4byte		.L227
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L83:
	.sleb128	8
	.byte		"CanTpTxTaType"
	.byte		0
	.4byte		.L228
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L84:
	.sleb128	8
	.byte		"CanTp_TargetAddress_u8"
	.byte		0
	.4byte		.L196
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L85:
	.sleb128	8
	.byte		"FrameType"
	.byte		0
	.4byte		.L231
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
	.sleb128	0
.L223:
.L187:
	.sleb128	7
	.4byte		.L218
	.uleb128	117
	.uleb128	1
	.4byte		.L234-.L2
	.uleb128	52
.L39:
	.sleb128	8
	.byte		"ChannelIdx_u8"
	.byte		0
	.4byte		.L170
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L40:
	.sleb128	8
	.byte		"IPduId"
	.byte		0
	.4byte		.L173
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L41:
	.sleb128	8
	.byte		"TimeoutTicks_u16"
	.byte		0
	.4byte		.L174
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L42:
	.sleb128	8
	.byte		"StMinTicks_u16"
	.byte		0
	.4byte		.L174
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L43:
	.sleb128	8
	.byte		"TotalLength"
	.byte		0
	.4byte		.L235
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L44:
	.sleb128	8
	.byte		"ProcessedLength"
	.byte		0
	.4byte		.L235
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L45:
	.sleb128	8
	.byte		"ProvidedBufferSize"
	.byte		0
	.4byte		.L235
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L46:
	.sleb128	8
	.byte		"State_u8"
	.byte		0
	.4byte		.L170
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L47:
	.sleb128	8
	.byte		"NextState_u8"
	.byte		0
	.4byte		.L170
	.sleb128	2
	.byte		0x23
	.uleb128	15
	.byte		0x1
.L48:
	.sleb128	8
	.byte		"BlockSize_u16"
	.byte		0
	.4byte		.L174
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L49:
	.sleb128	8
	.byte		"WftCounter_u16"
	.byte		0
	.4byte		.L174
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L50:
	.sleb128	8
	.byte		"SequenceNumber_u8"
	.byte		0
	.4byte		.L170
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L51:
	.sleb128	8
	.byte		"StMin_u8"
	.byte		0
	.4byte		.L170
	.sleb128	2
	.byte		0x23
	.uleb128	21
	.byte		0x1
.L52:
	.sleb128	8
	.byte		"TempBuffer_au8"
	.byte		0
	.4byte		.L236
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L53:
	.sleb128	8
	.byte		"TempLength_u8"
	.byte		0
	.4byte		.L170
	.sleb128	2
	.byte		0x23
	.uleb128	29
	.byte		0x1
.L54:
	.sleb128	8
	.byte		"CanIfDLC_u8"
	.byte		0
	.4byte		.L170
	.sleb128	2
	.byte		0x23
	.uleb128	30
	.byte		0x1
.L55:
	.sleb128	8
	.byte		"CanIfData_au8"
	.byte		0
	.4byte		.L238
	.sleb128	2
	.byte		0x23
	.uleb128	31
	.byte		0x1
.L56:
	.sleb128	8
	.byte		"ULayerIndFlag_b"
	.byte		0
	.4byte		.L240
	.sleb128	2
	.byte		0x23
	.uleb128	39
	.byte		0x1
.L57:
	.sleb128	8
	.byte		"ShutdownFlag_b"
	.byte		0
	.4byte		.L240
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L58:
	.sleb128	8
	.byte		"RemainingCFInBlock_u16"
	.byte		0
	.4byte		.L174
	.sleb128	2
	.byte		0x23
	.uleb128	42
	.byte		0x1
.L59:
	.sleb128	8
	.byte		"LastCFofNSduFlag_b"
	.byte		0
	.4byte		.L240
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L60:
	.sleb128	8
	.byte		"RequiredBufferSize"
	.byte		0
	.4byte		.L235
	.sleb128	2
	.byte		0x23
	.uleb128	46
	.byte		0x1
.L61:
	.sleb128	8
	.byte		"CallerApiId"
	.byte		0
	.4byte		.L170
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L62:
	.sleb128	8
	.byte		"FrameSize"
	.byte		0
	.4byte		.L170
	.sleb128	2
	.byte		0x23
	.uleb128	49
	.byte		0x1
.L63:
	.sleb128	8
	.byte		"CriticalSectionStatus_b"
	.byte		0
	.4byte		.L240
	.sleb128	2
	.byte		0x23
	.uleb128	50
	.byte		0x1
	.sleb128	0
.L234:
	.section	.debug_info,,n
.L180:
	.sleb128	9
	.4byte		.L241
	.uleb128	69
	.uleb128	1
	.4byte		.L242-.L2
	.byte		"VSTAR_PduInfoType"
	.byte		0
	.uleb128	8
.L35:
	.sleb128	8
	.byte		"SduDataPtr"
	.byte		0
	.4byte		.L243
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L36:
	.sleb128	8
	.byte		"SduLength"
	.byte		0
	.4byte		.L235
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L242:
	.section	.debug_info,,n
.L233:
	.sleb128	10
	.4byte		.L218
	.uleb128	117
	.uleb128	1
	.4byte		.L244-.L2
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
.L244:
.L230:
	.sleb128	10
	.4byte		.L218
	.uleb128	108
	.uleb128	1
	.4byte		.L245-.L2
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
.L245:
.L217:
	.sleb128	10
	.4byte		.L218
	.uleb128	98
	.uleb128	1
	.4byte		.L246-.L2
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
.L246:
.L226:
	.sleb128	10
	.4byte		.L218
	.uleb128	87
	.uleb128	1
	.4byte		.L247-.L2
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
.L247:
	.section	.debug_info,,n
.L171:
	.sleb128	12
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L170:
	.sleb128	13
	.byte		"uint8"
	.byte		0
	.4byte		.L171
.L169:
	.sleb128	13
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L170
.L175:
	.sleb128	12
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L174:
	.sleb128	13
	.byte		"uint16"
	.byte		0
	.4byte		.L175
.L173:
	.sleb128	13
	.byte		"PduIdType"
	.byte		0
	.4byte		.L174
.L179:
	.sleb128	13
	.byte		"PduInfoType"
	.byte		0
	.4byte		.L180
	.section	.debug_info,,n
.L178:
	.sleb128	14
	.4byte		.L179
	.section	.debug_info,,n
.L177:
	.sleb128	15
	.4byte		.L178
.L186:
	.sleb128	13
	.byte		"CanTp_Channel_t"
	.byte		0
	.4byte		.L187
.L185:
	.sleb128	15
	.4byte		.L186
.L196:
	.sleb128	14
	.4byte		.L170
.L202:
	.sleb128	13
	.byte		"CanTp_TxNSdu_t"
	.byte		0
	.4byte		.L203
.L201:
	.sleb128	14
	.4byte		.L202
.L200:
	.sleb128	15
	.4byte		.L201
.L207:
	.sleb128	13
	.byte		"CanTp_TxNSduConfig_t"
	.byte		0
	.4byte		.L208
.L206:
	.sleb128	14
	.4byte		.L207
.L205:
	.sleb128	15
	.4byte		.L206
.L212:
	.sleb128	13
	.byte		"CanTp_GeneralConfig_t"
	.byte		0
	.4byte		.L213
.L211:
	.sleb128	14
	.4byte		.L212
.L210:
	.sleb128	15
	.4byte		.L211
.L216:
	.sleb128	13
	.byte		"CanTp_Status_t"
	.byte		0
	.4byte		.L217
.L220:
	.sleb128	14
	.4byte		.L173
.L221:
	.sleb128	14
	.4byte		.L174
.L225:
	.sleb128	13
	.byte		"CanTp_AddressingMode_t"
	.byte		0
	.4byte		.L226
.L224:
	.sleb128	14
	.4byte		.L225
.L227:
	.sleb128	14
	.4byte		.L216
.L229:
	.sleb128	13
	.byte		"CanTp_TaType_t"
	.byte		0
	.4byte		.L230
.L228:
	.sleb128	14
	.4byte		.L229
.L232:
	.sleb128	13
	.byte		"CanTp_FrameType_t"
	.byte		0
	.4byte		.L233
.L231:
	.sleb128	14
	.4byte		.L232
.L235:
	.sleb128	13
	.byte		"PduLengthType"
	.byte		0
	.4byte		.L174
	.section	.debug_info,,n
.L236:
	.sleb128	16
	.4byte		.L237-.L2
	.4byte		.L170
	.section	.debug_info,,n
	.sleb128	17
	.uleb128	6
	.sleb128	0
.L237:
.L238:
	.sleb128	16
	.4byte		.L239-.L2
	.4byte		.L170
	.sleb128	17
	.uleb128	7
	.sleb128	0
.L239:
.L240:
	.sleb128	13
	.byte		"boolean"
	.byte		0
	.4byte		.L171
.L243:
	.sleb128	15
	.4byte		.L170
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L176:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),31
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),31
	.d2locend
.L181:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo3),4
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),30
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),30
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),4
	.d2locend
.L183:
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo9),29
	.d2locend
.L188:
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo9),28
	.d2locend
.L190:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo13),27
	.d2locend
.L197:
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo15),3
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo17),0
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo19),3
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo21),0
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo23),3
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo25),0
	.d2locreg	%offsetof(.Llo26), %offsetof(.Llo27),3
	.d2locreg	%offsetof(.Llo28), %offsetof(.Llo29),0
	.d2locreg	%offsetof(.Llo30), %offsetof(.Llo31),3
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo4),0
	.d2locreg	%offsetof(.Llo33), %offsetof(.Llo9),0
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "CanTp_Transmit"
	.wrcm.nint32 "frameSize", 48
	.wrcm.nstrlist "calls", "CanTp_Enter_Area","CanTp_Exit_Area","CanTp_FreeChannel","Det_ReportError"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanTp_Transmit.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanTp_Transmit.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanTp_Transmit.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanTp_Transmit.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanTp_Transmit.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanTp_Transmit.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\CanTp\ssc\make\..\src\CanTp_Transmit.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
