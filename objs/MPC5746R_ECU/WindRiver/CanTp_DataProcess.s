#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"CanTp_DataProcess.c"
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
# FUNC(void, CANTP_CODE) CanTp_ProcessRxInitFrame
	.align		2
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTp\\ssc\\make\\..\\src\\CanTp_DataProcess.c"
        .d2line         48,24
#$$ld
.L163:

#$$bf	CanTp_ProcessRxInitFrame,interprocedural,rasave,nostackparams
	.globl		CanTp_ProcessRxInitFrame
	.d2_cfa_start __cie
CanTp_ProcessRxInitFrame:
.Llo1:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r0,r3		# RxIPduId=r0 RxIPduId=r3
	mr		r4,r4		# PduData=r4 PduData=r4
	mr		r5,r5		# PduLength_u8=r5 PduLength_u8=r5
	mr		r6,r6		# NSduLength=r6 NSduLength=r6
	mr		r7,r7		# CanTpChannel_p=r7 CanTpChannel_p=r7
	.d2prologue_end
# (
#     CONST(PduIdType, AUTOMATIC) RxIPduId,
#     CONST(uint8, AUTOMATIC) PduData[],
#     CONST(uint8, AUTOMATIC) PduLength_u8,
#     CONST(PduLengthType, AUTOMATIC) NSduLength,
#     CONSTP2VAR(CanTp_Channel_t, AUTOMATIC, CANTP_APPL_DATA) CanTpChannel_p
# )
# {
#     /*Variable used for Buffer Offset*/
#     VAR(uint8, AUTOMATIC) BufferOffset_u8;
# 
#     /*Variable used for Data Offset*/
#     VAR(uint8, AUTOMATIC) DataOffset_u8;
# 
#     /*Copy PduId in Channel Structure*/
#     CanTpChannel_p->IPduId = RxIPduId;
	.d2line		64
	sth		r3,2(r7)		# CanTpChannel_p=r7 RxIPduId=r3
# 
#     /* Load the value in temp buffer and request for Rx buffer */
#     /* Before that check for the Frame type and process check for SF */
#     /* PRQA S 492 1 *//* Misra rule 17.4, Array indexing shall be the only allowed form of pointer arithmetic */
#     if(CANTP_FRAME_SF == (uint8) (PduData[CANTP_BUFFER_INDEX_ZERO] & CANTP_UPPER_NIBBLE_MASK))
	.d2line		69
	lbz		r3,0(r4)		# RxIPduId=r3 PduData=r4
	e_andi.		r3,r3,240		# RxIPduId=r3 RxIPduId=r3
.Llo2:
	bc		0,2,.L124	# ne
#     {
#         /* Store temp length value */
#         CanTpChannel_p->TempLength_u8 = (uint8) NSduLength;
	.d2line		72
.Llo3:
	stb		r6,29(r7)		# CanTpChannel_p=r7 NSduLength=r6
# 
#         /*Since it is SF TempLength = NSduLength*/
#         CanTpChannel_p->TotalLength = NSduLength;
	.d2line		75
	sth		r6,8(r7)		# CanTpChannel_p=r7 NSduLength=r6
# 
#         /*Set the State to CANTP_CH_RX_UNSEGMENTED_RECEPTION_START_REQUEST*/
#         CanTpChannel_p->State_u8 = CANTP_CH_RX_UNSEGMENTED_RECEPTION_START_REQUEST;
	.d2line		78
	diab.li		r3,76		# RxIPduId=r3
	stb		r3,14(r7)		# CanTpChannel_p=r7 RxIPduId=r3
# 
#         /*Set the Data OffSet*/
#         DataOffset_u8 = CANTP_SF_PCI_LENGTH(CanTpChannel_p->FrameSize);
	.d2line		81
	lbz		r3,49(r7)		# RxIPduId=r3 CanTpChannel_p=r7
	se_cmpi		r3,8		# RxIPduId=r3
	diab.li		r3,2		# RxIPduId=r3
	isel		r3,r3,r5,1		# RxIPduId=r3 RxIPduId=r3
.L129:
.Llo4:
	diab.li		r5,1
.Llo5:
	isel		r30,r3,r5,1		# RxIPduId=r3
.L130:
.Llo6:
	mr		r30,r30		# DataOffset_u8=r30 DataOffset_u8=r30
.Llo7:
	b		.L125
.L124:
#     }
#     else /*It must be a FF*/
#     {
#         /* Store total Length */
#         CanTpChannel_p->TotalLength = NSduLength;
	.d2line		86
.Llo15:
	sth		r6,8(r7)		# CanTpChannel_p=r7 NSduLength=r6
# 
#         /*Set the State to CANTP_CH_RX_REQBUF_FF_WAIT*/
#         CanTpChannel_p->State_u8 = CANTP_CH_RX_SEGMENTED_RECEPTION_START_REQUEST;
	.d2line		89
	diab.li		r3,65		# RxIPduId=r3
	stb		r3,14(r7)		# CanTpChannel_p=r7 RxIPduId=r3
# 
#         /*Set the Data OffSet*/
#         DataOffset_u8 = CANTP_FF_PCI_LENGTH(NSduLength);
	.d2line		92
	rlwinm		r6,r6,0,16,31		# NSduLength=r6 NSduLength=r6
	cmpi		0,0,r6,4095		# NSduLength=r6
	diab.li		r3,6		# RxIPduId=r3
	isel		r3,r3,r6,1		# RxIPduId=r3 RxIPduId=r3 NSduLength=r6
.L131:
.Llo8:
	diab.li		r6,2		# NSduLength=r6
.Llo9:
	isel		r30,r3,r6,1		# RxIPduId=r3 NSduLength=r6
.L132:
.Llo10:
	mr		r30,r30		# DataOffset_u8=r30 DataOffset_u8=r30
# 
#         /* Load temp length */
#         CanTpChannel_p->TempLength_u8 = (uint8) (PduLength_u8 - DataOffset_u8);
	.d2line		95
.Llo11:
	subf		r31,r30,r5		# DataOffset_u8=r30 PduLength_u8=r5
	stb		r31,29(r7)		# CanTpChannel_p=r7
.L125:
#     }
# 
#     /*Copy Data to the TempBuffer*/
#     for(BufferOffset_u8 = CANTP_BUFFER_INDEX_ZERO; BufferOffset_u8 < CanTpChannel_p->TempLength_u8; BufferOffset_u8++)
	.d2line		99
.Llo16:
	diab.li		r3,0		# BufferOffset_u8=r3
.L126:
.Llo23:
	rlwinm		r6,r3,0,24,31		# NSduLength=r6 BufferOffset_u8=r3
.Llo20:
	lbz		r5,29(r7)		# PduLength_u8=r5 CanTpChannel_p=r7
.Llo17:
	se_cmp		r6,r5		# NSduLength=r6 PduLength_u8=r5
	bc		0,0,.L128	# ge
#     {
#         /* PRQA S 492 2 *//* Misra rule 17.4, Array indexing shall be the only allowed form of pointer arithmetic */
#         CanTpChannel_p->TempBuffer_au8[BufferOffset_u8] = PduData[BufferOffset_u8 + DataOffset_u8];
	.d2line		102
.Llo18:
	rlwinm		r6,r3,0,24,31		# NSduLength=r6 BufferOffset_u8=r3
.Llo21:
	add		r5,r6,r4		# PduLength_u8=r5 NSduLength=r6 PduData=r4
.Llo19:
	rlwinm		r31,r30,0,24,31		# DataOffset_u8=r30
	lbzx		r5,r5,r31		# PduLength_u8=r5 PduLength_u8=r5
	se_add		r6,r7		# NSduLength=r6 NSduLength=r6 CanTpChannel_p=r7
	stb		r5,22(r6)		# NSduLength=r6 PduLength_u8=r5
#     }
	.d2line		103
	diab.addi		r6,r3,1		# NSduLength=r6 BufferOffset_u8=r3
.Llo22:
	se_addi		r3,1		# BufferOffset_u8=r3 BufferOffset_u8=r3
	b		.L126
.L128:
# 
#     /*Start Timer N_Br*/
#     CanTpChannel_p->TimeoutTicks_u16 = CanTp_RxNSduConfig_p[RxIPduId].CanTpNbr_u16;
	.d2line		106
.Llo12:
	lis		r3,CanTp_RxNSduConfig_p@ha		# BufferOffset_u8=r3
.Llo24:
	lwz		r3,CanTp_RxNSduConfig_p@l(r3)		# BufferOffset_u8=r3 BufferOffset_u8=r3
.Llo13:
	rlwinm		r0,r0,4,12,27		# RxIPduId=r0 RxIPduId=r0
	se_add		r3,r0		# BufferOffset_u8=r3 BufferOffset_u8=r3 RxIPduId=r0
	lhz		r0,4(r3)		# RxIPduId=r0 BufferOffset_u8=r3
	sth		r0,4(r7)		# CanTpChannel_p=r7 RxIPduId=r0
#     /*Request for RX buffer where this data will also be copied*/
# 
#     /* The return value is only needed in those functions which are called from CanTp_MainFunction*/
#     (void)CanTp_RequestRxBuffer(CanTpChannel_p);
	.d2line		110
	mr		r3,r7		# CanTpChannel_p=r3 CanTpChannel_p=r7
.Llo25:
	bl		CanTp_RequestRxBuffer
# 
# }/* End of CanTp_ProcessRxInitFrame() */
	.d2line		112
	.d2epilogue_begin
.Llo14:
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# RxIPduId=r0
	mtspr		lr,r0		# RxIPduId=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L164:
	.type		CanTp_ProcessRxInitFrame,@function
	.size		CanTp_ProcessRxInitFrame,.-CanTp_ProcessRxInitFrame
# Number of nodes = 132

# Allocations for CanTp_ProcessRxInitFrame
#	?a4		RxIPduId
#	?a5		PduData
#	?a6		PduLength_u8
#	?a7		NSduLength
#	?a8		CanTpChannel_p
#	?a9		$$32
#	?a10		$$31
#	?a11		BufferOffset_u8
#	?a12		DataOffset_u8
# FUNC(void, CANTP_CODE) CanTp_ProcessRxCFrame
	.align		2
	.section	.text_vle
        .d2line         127,24
#$$ld
.L192:

#$$bf	CanTp_ProcessRxCFrame,interprocedural,rasave,nostackparams
	.globl		CanTp_ProcessRxCFrame
	.d2_cfa_start __cie
CanTp_ProcessRxCFrame:
.Llo26:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
.Llo55:
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)		# addrInfoLength=r0
	.d2_cfa_offset    108,-1
	mr		r3,r3		# CanTpChannel_p=r3 CanTpChannel_p=r3
	mr		r4,r4		# SduData=r4 SduData=r4
.Llo28:
	mr		r0,r5		# PduLength_u8=r0 PduLength_u8=r5
	.d2prologue_end
# (
#     CONSTP2VAR(CanTp_Channel_t, AUTOMATIC, CANTP_APPL_DATA) CanTpChannel_p,
#     CONST(uint8, AUTOMATIC) SduData[],
#     VAR(uint8, AUTOMATIC) PduLength_u8
# )
# {
#     /*Variable used for temporary calculations*/
#     VAR(uint8, AUTOMATIC) TempVal_u8;
# 
#     /*Max data it can copy in this call */
#     VAR(uint8, AUTOMATIC) MaxData_u8;
# 
#     /*Max data it can copy in this call */
#     VAR(uint8, AUTOMATIC) expectedNPduLength_u8;
# 
#     /* Constant which contains the frame data length correction because of the addressing mode */
#     CONST(uint8, AUTOMATIC) addrInfoLength =
	.d2line		144
.Llo56:
	lhz		r6,2(r3)		# CanTpChannel_p=r3
	lis		r5,CanTp_RxNSdu_p@ha		# addrInfoLength=r5
.Llo29:
	lwz		r5,CanTp_RxNSdu_p@l(r5)		# addrInfoLength=r5 addrInfoLength=r5
	rlwinm		r7,r6,5,0,26
	se_slwi		r6,3
	subf		r6,r6,r7
	lwzx		r5,r5,r6		# addrInfoLength=r5 addrInfoLength=r5
	se_cmpi		r5,0		# addrInfoLength=r5
	isel		r5,0,r5,2		# addrInfoLength=r5 addrInfoLength=r5
.L150:
.Llo30:
	diab.li		r6,1
	isel		r5,r5,r6,2		# addrInfoLength=r5 addrInfoLength=r5
.L151:
#     (uint8) (CANTP_STANDARD == CanTp_RxNSdu_p[CanTpChannel_p->IPduId].CanTpAddressingMode) ? 0U : 1U;
# 
#     /* This is the length of the NPdu which was passed by CanTp_Rxindication */
#     PduLength_u8 += addrInfoLength;
	.d2line		148
	se_add		r0,r5		# PduLength_u8=r0 PduLength_u8=r0 addrInfoLength=r5
	mr		r6,r0		# PduLength_u8=r6 PduLength_u8=r0
# 
#     /*maximum data length that can be processed now*/
#     MaxData_u8 = (uint8) CANTP_CF_MAX_DATA(CanTpChannel_p->FrameSize, addrInfoLength);
	.d2line		151
	lbz		r6,49(r3)		# PduLength_u8=r6 CanTpChannel_p=r3
	subf		r7,r5,r6		# MaxData_u8=r7 addrInfoLength=r5 PduLength_u8=r6
.Llo45:
	rlwinm		r7,r7,0,24,31		# MaxData_u8=r7 MaxData_u8=r7
	diab.li		r6,65535		# PduLength_u8=r6
	se_add		r6,r7		# PduLength_u8=r6 PduLength_u8=r6 MaxData_u8=r7
	mr		r7,r6		# MaxData_u8=r7 MaxData_u8=r6
# 
#     /*Check if the remaining */
#     if((PduLengthType) MaxData_u8 >= (PduLengthType) (CanTpChannel_p->TotalLength - CanTpChannel_p->ProcessedLength))
	.d2line		154
.Llo46:
	rlwinm		r30,r7,0,24,31		# MaxData_u8=r7
.Llo47:
	lhz		r6,8(r3)		# PduLength_u8=r6 CanTpChannel_p=r3
.Llo48:
	lhz		r31,10(r3)		# CanTpChannel_p=r3
	subf		r31,r31,r6		# PduLength_u8=r6
	rlwinm		r31,r31,0,16,31
	se_cmp		r30,r31
	bc		1,0,.L142	# lt
#     {
#         /*It is the last CF of the message*/
#         MaxData_u8 = (uint8) (CanTpChannel_p->TotalLength - CanTpChannel_p->ProcessedLength);
	.d2line		157
.Llo49:
	lhz		r6,8(r3)		# PduLength_u8=r6 CanTpChannel_p=r3
	lhz		r7,10(r3)		# MaxData_u8=r7 CanTpChannel_p=r3
	subf		r7,r7,r6		# MaxData_u8=r7 MaxData_u8=r7 PduLength_u8=r6
	mr		r7,r7		# MaxData_u8=r7 MaxData_u8=r7
#         CanTpChannel_p->LastCFofNSduFlag_b = CANTP_TRUE;
	.d2line		158
	diab.li		r6,1		# PduLength_u8=r6
	stb		r6,44(r3)		# CanTpChannel_p=r3 PduLength_u8=r6
.L142:
#     }
# 
#     /* Based on the remaining NSdu length and the size of PCI and addressing information the expected length of the
#      * NPdu can be calculated. */
#     expectedNPduLength_u8 = (uint8) ((uint8) (addrInfoLength + CANTP_CF_PCI_LENGTH) + MaxData_u8);
	.d2line		163
	se_add		r5,r7		# addrInfoLength=r5 addrInfoLength=r5 MaxData_u8=r7
	se_addi		r5,1		# addrInfoLength=r5 addrInfoLength=r5
.Llo50:
	mr		r6,r5		# expectedNPduLength_u8=r6 expectedNPduLength_u8=r5
#     expectedNPduLength_u8 = CanTp_CanFrameNextValidLength[expectedNPduLength_u8];
	.d2line		164
	lis		r5,CanTp_CanFrameNextValidLength@ha		# addrInfoLength=r5
.Llo51:
	e_add16i		r5,r5,CanTp_CanFrameNextValidLength@l		# addrInfoLength=r5 addrInfoLength=r5
.Llo52:
	rlwinm		r6,r6,0,24,31		# expectedNPduLength_u8=r6 expectedNPduLength_u8=r6
.Llo53:
	lbzx		r31,r5,r6		# expectedNPduLength_u8=r31 addrInfoLength=r5
.Llo54:
	mr		r31,r31		# expectedNPduLength_u8=r31 expectedNPduLength_u8=r31
# 
#     if((expectedNPduLength_u8 < CANTP_MAX_CAN20_LENGTH) &&
	.d2line		166
	rlwinm		r5,r31,0,24,31		# addrInfoLength=r5 expectedNPduLength_u8=r31
	se_cmpi		r5,8		# addrInfoLength=r5
	bc		0,0,.L143	# ge
.Llo57:
	lhz		r6,2(r3)		# expectedNPduLength_u8=r6 CanTpChannel_p=r3
	lis		r5,CanTp_RxNSdu_p@ha		# addrInfoLength=r5
.Llo58:
	lwz		r5,CanTp_RxNSdu_p@l(r5)		# addrInfoLength=r5 addrInfoLength=r5
	rlwinm		r30,r6,5,0,26		# expectedNPduLength_u8=r6
	se_slwi		r6,3		# expectedNPduLength_u8=r6 expectedNPduLength_u8=r6
	subf		r6,r6,r30		# expectedNPduLength_u8=r6 expectedNPduLength_u8=r6
	se_add		r5,r6		# addrInfoLength=r5 addrInfoLength=r5 expectedNPduLength_u8=r6
	lwz		r5,8(r5)		# addrInfoLength=r5 addrInfoLength=r5
	se_cmpi		r5,1		# addrInfoLength=r5
#             (CANTP_ON == CanTp_RxNSdu_p[CanTpChannel_p->IPduId].CanTpRxPaddingActivation))
#     {
#         /* If the expected pdu length is less than eight bytes but the padding is activated then
#          * the length of the pdu shall be eight bytes */
#         expectedNPduLength_u8 = CANTP_MAX_CAN20_LENGTH;
	.d2line		171
	diab.li		r5,8		# addrInfoLength=r5
	isel		r31,r5,r31,2		# expectedNPduLength_u8=r31 addrInfoLength=r5 expectedNPduLength_u8=r31
.L143:
#     }
# 
#     if(expectedNPduLength_u8 <= PduLength_u8)
	.d2line		174
.Llo31:
	rlwinm		r31,r31,0,24,31		# expectedNPduLength_u8=r31 expectedNPduLength_u8=r31
.Llo32:
	rlwinm		r0,r0,0,24,31		# PduLength_u8=r0 PduLength_u8=r0
	se_cmp		r31,r0		# expectedNPduLength_u8=r31 PduLength_u8=r0
	bc		1,1,.L141	# gt
#     {
#         /*Increment the serial number*/
#         CanTpChannel_p->SequenceNumber_u8++;
	.d2line		177
.Llo33:
	lbz		r5,20(r3)		# addrInfoLength=r5 CanTpChannel_p=r3
.Llo59:
	se_addi		r5,1		# addrInfoLength=r5 addrInfoLength=r5
	stb		r5,20(r3)		# CanTpChannel_p=r3 addrInfoLength=r5
# 
#         /*Update Processed Blocks*/
#         CanTpChannel_p->RemainingCFInBlock_u16--;
	.d2line		180
	lhz		r0,42(r3)		# PduLength_u8=r0 CanTpChannel_p=r3
.Llo34:
	diab.li		r5,65535		# addrInfoLength=r5
	se_add		r0,r5		# PduLength_u8=r0 PduLength_u8=r0 addrInfoLength=r5
	sth		r0,42(r3)		# CanTpChannel_p=r3 PduLength_u8=r0
# 
#         /* The loaded timeouts are independent from whether it was the last CF of the NSdu or not  */
#         if(CanTpChannel_p->RemainingCFInBlock_u16 == (uint16) CANTP_GENERAL_ZERO)
	.d2line		183
	e_and2i.		r0,65535		# PduLength_u8=r0
	bc		0,2,.L145	# ne
#         {
#             /* The last Consecutive Frame in the block has arrived so the N_Br timer has to be started */
#             CanTpChannel_p->TimeoutTicks_u16 = CanTp_RxNSduConfig_p[CanTpChannel_p->IPduId].CanTpNbr_u16;
	.d2line		186
.Llo35:
	lis		r5,CanTp_RxNSduConfig_p@ha		# addrInfoLength=r5
.Llo60:
	lwz		r0,CanTp_RxNSduConfig_p@l(r5)		# PduLength_u8=r0 addrInfoLength=r5
.Llo36:
	lhz		r5,2(r3)		# addrInfoLength=r5 CanTpChannel_p=r3
	rlwinm		r5,r5,4,12,27		# addrInfoLength=r5 addrInfoLength=r5
	se_add		r5,r0		# addrInfoLength=r5 addrInfoLength=r5 PduLength_u8=r0
	lhz		r0,4(r5)		# PduLength_u8=r0 addrInfoLength=r5
	sth		r0,4(r3)		# CanTpChannel_p=r3 PduLength_u8=r0
	b		.L146
.L145:
#         }
#         else
#         {
#             /* It is not the last Consecutive Frame that has arrived so the N_Cr timer has to be started*/
#             CanTpChannel_p->TimeoutTicks_u16 = CanTp_RxNSduConfig_p[CanTpChannel_p->IPduId].CanTpNcr_u16;
	.d2line		191
.Llo37:
	lis		r5,CanTp_RxNSduConfig_p@ha		# addrInfoLength=r5
.Llo61:
	lwz		r0,CanTp_RxNSduConfig_p@l(r5)		# PduLength_u8=r0 addrInfoLength=r5
.Llo38:
	lhz		r5,2(r3)		# addrInfoLength=r5 CanTpChannel_p=r3
	rlwinm		r5,r5,4,12,27		# addrInfoLength=r5 addrInfoLength=r5
	se_add		r5,r0		# addrInfoLength=r5 addrInfoLength=r5 PduLength_u8=r0
	lhz		r0,6(r5)		# PduLength_u8=r0 addrInfoLength=r5
	sth		r0,4(r3)		# CanTpChannel_p=r3 PduLength_u8=r0
.L146:
#         }
# 
#         /*Copy Data to the TempBuffer*/
#         for(TempVal_u8 = CANTP_GENERAL_ZERO; TempVal_u8 < MaxData_u8; TempVal_u8++)
	.d2line		195
.Llo39:
	diab.li		r6,0		# TempVal_u8=r6
.L147:
.Llo44:
	rlwinm		r5,r6,0,24,31		# addrInfoLength=r5 TempVal_u8=r6
.Llo62:
	rlwinm		r30,r7,0,24,31		# MaxData_u8=r7
	se_cmp		r5,r30		# addrInfoLength=r5
	bc		0,0,.L149	# ge
#         {
#             /* PRQA S 492 1 *//* Misra rule 17.4, Array indexing shall be the only allowed form of pointer arithmetic */
#             CanTpChannel_p->TempBuffer_au8[TempVal_u8] = SduData[TempVal_u8];
	.d2line		198
.Llo63:
	rlwinm		r5,r6,0,24,31		# addrInfoLength=r5 TempVal_u8=r6
.Llo64:
	lbzux		r0,r5,r4		# PduLength_u8=r0 addrInfoLength=r5
.Llo40:
	rlwinm		r5,r6,0,24,31		# addrInfoLength=r5 TempVal_u8=r6
	se_add		r5,r3		# addrInfoLength=r5 addrInfoLength=r5 CanTpChannel_p=r3
	stb		r0,22(r5)		# addrInfoLength=r5 PduLength_u8=r0
#         }
	.d2line		199
	diab.addi		r5,r6,1		# addrInfoLength=r5 TempVal_u8=r6
.Llo65:
	se_addi		r6,1		# TempVal_u8=r6 TempVal_u8=r6
	b		.L147
.L149:
# 
#         CanTpChannel_p->TempLength_u8 = TempVal_u8;
	.d2line		201
.Llo41:
	stb		r6,29(r3)		# CanTpChannel_p=r3 TempVal_u8=r6
#         CanTpChannel_p->State_u8 = CANTP_CH_RX_SEGMENTED_UPLOAD_CF_DATA;
	.d2line		202
	diab.li		r0,67		# PduLength_u8=r0
.Llo42:
	stb		r0,14(r3)		# CanTpChannel_p=r3 PduLength_u8=r0
# 
#         /* Start Copying the data to the available buffer. The return value is only needed in those
#          * functions which are called from CanTp_MainFunction  */
#         (void)CanTp_RxBufferCopyProcess(CanTpChannel_p);
	.d2line		206
	mr		r3,r3		# CanTpChannel_p=r3 CanTpChannel_p=r3
.Llo27:
	bl		CanTp_RxBufferCopyProcess
.L141:
#     }
# 
# }/* End of CanTp_ProcessRxCFrame() */
	.d2line		209
	.d2epilogue_begin
.Llo43:
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# PduLength_u8=r0
	mtspr		lr,r0		# PduLength_u8=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L193:
	.type		CanTp_ProcessRxCFrame,@function
	.size		CanTp_ProcessRxCFrame,.-CanTp_ProcessRxCFrame
# Number of nodes = 200

# Allocations for CanTp_ProcessRxCFrame
#	?a4		CanTpChannel_p
#	?a5		SduData
#	?a6		PduLength_u8
#	?a7		$$34
#	?a8		$$33
#	?a9		TempVal_u8
#	?a10		MaxData_u8
#	?a11		expectedNPduLength_u8
#	?a12		addrInfoLength

# Allocations for module
	.section	.text_vle
	.0byte		.L217
	.section	.text_vle
#$$ld
.L5:
.L220:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTp\\ssc\\make\\..\\inc\\CanTp_Types.h"
.L207:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTp\\ssc\\make\\..\\inc\\CanTp_Private.h"
.L165:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTp\\ssc\\make\\..\\src\\CanTp_DataProcess.c"
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTp\\ssc\\make\\..\\src\\CanTp_DataProcess.c"
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
.L166:
	.sleb128	2
	.4byte		.L162-.L2
	.byte		"CanTp_ProcessRxInitFrame"
	.byte		0
	.4byte		.L165
	.uleb128	48
	.uleb128	24
	.byte		0x1
	.byte		0x1
	.4byte		.L163
	.4byte		.L164
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L165
	.uleb128	48
	.uleb128	24
	.byte		"RxIPduId"
	.byte		0
	.4byte		.L167
	.4byte		.L171
	.sleb128	3
	.4byte		.L165
	.uleb128	48
	.uleb128	24
	.byte		"PduData"
	.byte		0
	.4byte		.L172
	.4byte		.L176
	.sleb128	3
	.4byte		.L165
	.uleb128	48
	.uleb128	24
	.byte		"PduLength_u8"
	.byte		0
	.4byte		.L173
	.4byte		.L177
	.sleb128	3
	.4byte		.L165
	.uleb128	48
	.uleb128	24
	.byte		"NSduLength"
	.byte		0
	.4byte		.L178
	.4byte		.L180
	.sleb128	3
	.4byte		.L165
	.uleb128	48
	.uleb128	24
	.byte		"CanTpChannel_p"
	.byte		0
	.4byte		.L181
	.4byte		.L185
	.section	.debug_info,,n
.L186:
	.sleb128	4
	.4byte		.L165
	.uleb128	58
	.uleb128	27
	.byte		"BufferOffset_u8"
	.byte		0
	.4byte		.L174
	.4byte		.L187
.L188:
	.sleb128	4
	.4byte		.L165
	.uleb128	61
	.uleb128	27
	.byte		"DataOffset_u8"
	.byte		0
	.4byte		.L174
	.4byte		.L189
	.section	.debug_info,,n
	.sleb128	0
.L162:
	.section	.debug_info,,n
.L194:
	.sleb128	2
	.4byte		.L191-.L2
	.byte		"CanTp_ProcessRxCFrame"
	.byte		0
	.4byte		.L165
	.uleb128	127
	.uleb128	24
	.byte		0x1
	.byte		0x1
	.4byte		.L192
	.4byte		.L193
	.sleb128	3
	.4byte		.L165
	.uleb128	127
	.uleb128	24
	.byte		"CanTpChannel_p"
	.byte		0
	.4byte		.L181
	.4byte		.L195
	.sleb128	3
	.4byte		.L165
	.uleb128	127
	.uleb128	24
	.byte		"SduData"
	.byte		0
	.4byte		.L172
	.4byte		.L196
	.sleb128	3
	.4byte		.L165
	.uleb128	127
	.uleb128	24
	.byte		"PduLength_u8"
	.byte		0
	.4byte		.L174
	.4byte		.L197
.L198:
	.sleb128	4
	.4byte		.L165
	.uleb128	135
	.uleb128	27
	.byte		"TempVal_u8"
	.byte		0
	.4byte		.L174
	.4byte		.L199
.L200:
	.sleb128	4
	.4byte		.L165
	.uleb128	138
	.uleb128	27
	.byte		"MaxData_u8"
	.byte		0
	.4byte		.L174
	.4byte		.L201
.L202:
	.sleb128	4
	.4byte		.L165
	.uleb128	141
	.uleb128	27
	.byte		"expectedNPduLength_u8"
	.byte		0
	.4byte		.L174
	.4byte		.L203
.L204:
	.sleb128	4
	.4byte		.L165
	.uleb128	144
	.uleb128	29
	.byte		"addrInfoLength"
	.byte		0
	.4byte		.L173
	.4byte		.L205
	.section	.debug_info,,n
	.sleb128	0
.L191:
	.section	.debug_info,,n
.L206:
	.sleb128	5
	.byte		0x1
	.byte		0x1
	.4byte		.L207
	.uleb128	487
	.uleb128	61
	.byte		"CanTp_RxNSdu_p"
	.byte		0
	.4byte		.L208
	.0byte		.L206
.L212:
	.sleb128	5
	.byte		0x1
	.byte		0x1
	.4byte		.L207
	.uleb128	493
	.uleb128	67
	.byte		"CanTp_RxNSduConfig_p"
	.byte		0
	.4byte		.L213
.L217:
	.sleb128	5
	.byte		0x1
	.byte		0x1
	.4byte		.L207
	.uleb128	554
	.uleb128	34
	.byte		"CanTp_CanFrameNextValidLength"
	.byte		0
	.4byte		.L218
	.section	.debug_info,,n
	.section	.debug_info,,n
.L216:
	.sleb128	6
	.4byte		.L220
	.uleb128	117
	.uleb128	1
	.4byte		.L221-.L2
	.uleb128	16
	.section	.debug_info,,n
.L71:
	.sleb128	7
	.byte		"CanTpBsConf_u8"
	.byte		0
	.4byte		.L173
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L72:
	.sleb128	7
	.byte		"CanTpNar_u16"
	.byte		0
	.4byte		.L222
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L73:
	.sleb128	7
	.byte		"CanTpNbr_u16"
	.byte		0
	.4byte		.L222
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L74:
	.sleb128	7
	.byte		"CanTpNcr_u16"
	.byte		0
	.4byte		.L222
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L75:
	.sleb128	7
	.byte		"CanTpRxWftMax_u16"
	.byte		0
	.4byte		.L222
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L76:
	.sleb128	7
	.byte		"CanTpSTminConf_u8"
	.byte		0
	.4byte		.L173
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L77:
	.sleb128	7
	.byte		"CanTpTxFcNPduIdConf"
	.byte		0
	.4byte		.L167
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L78:
	.sleb128	7
	.byte		"CanTpTxFcNPduCanIf"
	.byte		0
	.4byte		.L167
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
	.sleb128	0
.L221:
.L211:
	.sleb128	6
	.4byte		.L220
	.uleb128	117
	.uleb128	1
	.4byte		.L223-.L2
	.uleb128	24
.L64:
	.sleb128	7
	.byte		"CanTpAddressingMode"
	.byte		0
	.4byte		.L224
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L65:
	.sleb128	7
	.byte		"CanTpRxChannel_u8"
	.byte		0
	.4byte		.L173
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L66:
	.sleb128	7
	.byte		"CanTpRxPaddingActivation"
	.byte		0
	.4byte		.L227
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L67:
	.sleb128	7
	.byte		"CanTpRxTaType"
	.byte		0
	.4byte		.L230
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L68:
	.sleb128	7
	.byte		"CanTp_TargetAddress_u8"
	.byte		0
	.4byte		.L173
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L69:
	.sleb128	7
	.byte		"CanTpRxNSduId"
	.byte		0
	.4byte		.L167
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L70:
	.sleb128	7
	.byte		"FrameType"
	.byte		0
	.4byte		.L233
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L223:
.L184:
	.sleb128	6
	.4byte		.L220
	.uleb128	117
	.uleb128	1
	.4byte		.L236-.L2
	.uleb128	52
.L39:
	.sleb128	7
	.byte		"ChannelIdx_u8"
	.byte		0
	.4byte		.L174
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L40:
	.sleb128	7
	.byte		"IPduId"
	.byte		0
	.4byte		.L168
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L41:
	.sleb128	7
	.byte		"TimeoutTicks_u16"
	.byte		0
	.4byte		.L169
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L42:
	.sleb128	7
	.byte		"StMinTicks_u16"
	.byte		0
	.4byte		.L169
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L43:
	.sleb128	7
	.byte		"TotalLength"
	.byte		0
	.4byte		.L179
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L44:
	.sleb128	7
	.byte		"ProcessedLength"
	.byte		0
	.4byte		.L179
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L45:
	.sleb128	7
	.byte		"ProvidedBufferSize"
	.byte		0
	.4byte		.L179
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L46:
	.sleb128	7
	.byte		"State_u8"
	.byte		0
	.4byte		.L174
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L47:
	.sleb128	7
	.byte		"NextState_u8"
	.byte		0
	.4byte		.L174
	.sleb128	2
	.byte		0x23
	.uleb128	15
	.byte		0x1
.L48:
	.sleb128	7
	.byte		"BlockSize_u16"
	.byte		0
	.4byte		.L169
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L49:
	.sleb128	7
	.byte		"WftCounter_u16"
	.byte		0
	.4byte		.L169
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L50:
	.sleb128	7
	.byte		"SequenceNumber_u8"
	.byte		0
	.4byte		.L174
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L51:
	.sleb128	7
	.byte		"StMin_u8"
	.byte		0
	.4byte		.L174
	.sleb128	2
	.byte		0x23
	.uleb128	21
	.byte		0x1
.L52:
	.sleb128	7
	.byte		"TempBuffer_au8"
	.byte		0
	.4byte		.L237
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L53:
	.sleb128	7
	.byte		"TempLength_u8"
	.byte		0
	.4byte		.L174
	.sleb128	2
	.byte		0x23
	.uleb128	29
	.byte		0x1
.L54:
	.sleb128	7
	.byte		"CanIfDLC_u8"
	.byte		0
	.4byte		.L174
	.sleb128	2
	.byte		0x23
	.uleb128	30
	.byte		0x1
.L55:
	.sleb128	7
	.byte		"CanIfData_au8"
	.byte		0
	.4byte		.L239
	.sleb128	2
	.byte		0x23
	.uleb128	31
	.byte		0x1
.L56:
	.sleb128	7
	.byte		"ULayerIndFlag_b"
	.byte		0
	.4byte		.L241
	.sleb128	2
	.byte		0x23
	.uleb128	39
	.byte		0x1
.L57:
	.sleb128	7
	.byte		"ShutdownFlag_b"
	.byte		0
	.4byte		.L241
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L58:
	.sleb128	7
	.byte		"RemainingCFInBlock_u16"
	.byte		0
	.4byte		.L169
	.sleb128	2
	.byte		0x23
	.uleb128	42
	.byte		0x1
.L59:
	.sleb128	7
	.byte		"LastCFofNSduFlag_b"
	.byte		0
	.4byte		.L241
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L60:
	.sleb128	7
	.byte		"RequiredBufferSize"
	.byte		0
	.4byte		.L179
	.sleb128	2
	.byte		0x23
	.uleb128	46
	.byte		0x1
.L61:
	.sleb128	7
	.byte		"CallerApiId"
	.byte		0
	.4byte		.L174
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L62:
	.sleb128	7
	.byte		"FrameSize"
	.byte		0
	.4byte		.L174
	.sleb128	2
	.byte		0x23
	.uleb128	49
	.byte		0x1
.L63:
	.sleb128	7
	.byte		"CriticalSectionStatus_b"
	.byte		0
	.4byte		.L241
	.sleb128	2
	.byte		0x23
	.uleb128	50
	.byte		0x1
	.sleb128	0
.L236:
	.section	.debug_info,,n
.L235:
	.sleb128	8
	.4byte		.L220
	.uleb128	117
	.uleb128	1
	.4byte		.L242-.L2
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
.L242:
.L232:
	.sleb128	8
	.4byte		.L220
	.uleb128	108
	.uleb128	1
	.4byte		.L243-.L2
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
.L243:
.L229:
	.sleb128	8
	.4byte		.L220
	.uleb128	98
	.uleb128	1
	.4byte		.L244-.L2
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
.L244:
.L226:
	.sleb128	8
	.4byte		.L220
	.uleb128	87
	.uleb128	1
	.4byte		.L245-.L2
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
.L245:
	.section	.debug_info,,n
.L170:
	.sleb128	10
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
	.section	.debug_info,,n
.L169:
	.sleb128	11
	.byte		"uint16"
	.byte		0
	.4byte		.L170
.L168:
	.sleb128	11
	.byte		"PduIdType"
	.byte		0
	.4byte		.L169
	.section	.debug_info,,n
.L167:
	.sleb128	12
	.4byte		.L168
.L175:
	.sleb128	10
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L174:
	.sleb128	11
	.byte		"uint8"
	.byte		0
	.4byte		.L175
.L173:
	.sleb128	12
	.4byte		.L174
	.section	.debug_info,,n
.L172:
	.sleb128	13
	.4byte		.L173
.L179:
	.sleb128	11
	.byte		"PduLengthType"
	.byte		0
	.4byte		.L169
.L178:
	.sleb128	12
	.4byte		.L179
.L183:
	.sleb128	11
	.byte		"CanTp_Channel_t"
	.byte		0
	.4byte		.L184
.L182:
	.sleb128	13
	.4byte		.L183
.L181:
	.sleb128	12
	.4byte		.L182
.L210:
	.sleb128	11
	.byte		"CanTp_RxNSdu_t"
	.byte		0
	.4byte		.L211
.L209:
	.sleb128	12
	.4byte		.L210
.L208:
	.sleb128	13
	.4byte		.L209
.L215:
	.sleb128	11
	.byte		"CanTp_RxNSduConfig_t"
	.byte		0
	.4byte		.L216
.L214:
	.sleb128	12
	.4byte		.L215
.L213:
	.sleb128	13
	.4byte		.L214
	.section	.debug_info,,n
.L218:
	.sleb128	14
	.4byte		.L219-.L2
	.4byte		.L173
	.section	.debug_info,,n
	.sleb128	15
	.uleb128	64
	.sleb128	0
.L219:
.L222:
	.sleb128	12
	.4byte		.L169
.L225:
	.sleb128	11
	.byte		"CanTp_AddressingMode_t"
	.byte		0
	.4byte		.L226
.L224:
	.sleb128	12
	.4byte		.L225
.L228:
	.sleb128	11
	.byte		"CanTp_Status_t"
	.byte		0
	.4byte		.L229
.L227:
	.sleb128	12
	.4byte		.L228
.L231:
	.sleb128	11
	.byte		"CanTp_TaType_t"
	.byte		0
	.4byte		.L232
.L230:
	.sleb128	12
	.4byte		.L231
.L234:
	.sleb128	11
	.byte		"CanTp_FrameType_t"
	.byte		0
	.4byte		.L235
.L233:
	.sleb128	12
	.4byte		.L234
.L237:
	.sleb128	14
	.4byte		.L238-.L2
	.4byte		.L174
	.sleb128	15
	.uleb128	6
	.sleb128	0
.L238:
.L239:
	.sleb128	14
	.4byte		.L240-.L2
	.4byte		.L174
	.sleb128	15
	.uleb128	7
	.sleb128	0
.L240:
.L241:
	.sleb128	11
	.byte		"boolean"
	.byte		0
	.4byte		.L175
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L171:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),0
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),3
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),0
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),3
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo12),0
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo14),0
	.d2locend
.L176:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo12),4
	.d2locend
.L177:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo4),5
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo16),5
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo18),5
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo12),5
	.d2locend
.L180:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo4),6
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo8),6
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),6
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo18),6
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo22),6
	.d2locend
.L185:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo14),7
	.d2locend
.L187:
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo12),3
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo25),3
	.d2locend
.L189:
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo15),30
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo12),30
	.d2locend
.L195:
	.d2locreg	%offsetof(.Llo26), %offsetof(.Llo27),3
	.d2locend
.L196:
	.d2locreg	%offsetof(.Llo26), %offsetof(.Llo28),4
	.d2locend
.L197:
	.d2locreg	%offsetof(.Llo26), %offsetof(.Llo29),5
	.d2locreg	%offsetof(.Llo30), %offsetof(.Llo31),0
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo33),0
	.d2locreg	%offsetof(.Llo34), %offsetof(.Llo35),0
	.d2locreg	%offsetof(.Llo36), %offsetof(.Llo37),0
	.d2locreg	%offsetof(.Llo38), %offsetof(.Llo39),0
	.d2locreg	%offsetof(.Llo40), %offsetof(.Llo41),0
	.d2locreg	%offsetof(.Llo42), %offsetof(.Llo43),0
	.d2locend
.L199:
	.d2locreg	%offsetof(.Llo44), %offsetof(.Llo43),6
	.d2locend
.L201:
	.d2locreg	%offsetof(.Llo45), %offsetof(.Llo46),7
	.d2locreg	%offsetof(.Llo47), %offsetof(.Llo48),6
	.d2locreg	%offsetof(.Llo49), %offsetof(.Llo41),7
	.d2locend
.L203:
	.d2locreg	%offsetof(.Llo50), %offsetof(.Llo51),5
	.d2locreg	%offsetof(.Llo52), %offsetof(.Llo53),6
	.d2locreg	%offsetof(.Llo54), %offsetof(.Llo33),31
	.d2locend
.L205:
	.d2locreg	%offsetof(.Llo55), %offsetof(.Llo56),0
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo50),5
	.d2locreg	%offsetof(.Llo51), %offsetof(.Llo57),5
	.d2locreg	%offsetof(.Llo58), %offsetof(.Llo31),5
	.d2locreg	%offsetof(.Llo59), %offsetof(.Llo35),5
	.d2locreg	%offsetof(.Llo60), %offsetof(.Llo37),5
	.d2locreg	%offsetof(.Llo61), %offsetof(.Llo39),5
	.d2locreg	%offsetof(.Llo62), %offsetof(.Llo63),5
	.d2locreg	%offsetof(.Llo64), %offsetof(.Llo65),5
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "CanTp_ProcessRxCFrame"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "CanTp_RxBufferCopyProcess"
	.wrcm.end
	.wrcm.nelem "CanTp_ProcessRxInitFrame"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "CanTp_RequestRxBuffer"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanTp_DataProcess.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanTp_DataProcess.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanTp_DataProcess.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanTp_DataProcess.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanTp_DataProcess.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanTp_DataProcess.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\CanTp\ssc\make\..\src\CanTp_DataProcess.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
