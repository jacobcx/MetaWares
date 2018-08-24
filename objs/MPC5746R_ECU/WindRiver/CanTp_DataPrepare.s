#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"CanTp_DataPrepare.c"
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
# FUNC(void, CANTP_CODE) CanTp_PrepareFCFrame
	.align		2
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTp\\ssc\\make\\..\\src\\CanTp_DataPrepare.c"
        .d2line         69,24
#$$ld
.L173:

#$$bf	CanTp_PrepareFCFrame,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r30,r31,cr0,lr
	.globl		CanTp_PrepareFCFrame
	.d2_cfa_start __cie
CanTp_PrepareFCFrame:
.Llo1:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# CanTpChannel_p=r3 CanTpChannel_p=r3
	mr		r0,r4		# FlowCtrlByte_u8=r0 FlowCtrlByte_u8=r4
	.d2prologue_end
# (
#     CONSTP2VAR(CanTp_Channel_t, AUTOMATIC, CANTP_APPL_DATA) CanTpChannel_p,
#     CONST(uint8, AUTOMATIC) FlowCtrlByte_u8
# )
# {
#     /*Variable used for Buffer Offset*/
#     VAR(uint8, AUTOMATIC) BufferOffset_u8 = CANTP_BUFFER_INDEX_ZERO;
	.d2line		76
	diab.li		r7,0		# BufferOffset_u8=r7
# 
#     /*Pointer to hold the RxNSdu Config Structure address*/
#     P2CONST(CanTp_RxNSduConfig_t, AUTOMATIC, CANTP_APPL_CONST) CanTpRxNSduConfig_p;
# 
#     /*Pointer to hold the RxNSdu_BS_STmin Structure address*/
#     P2VAR(CanTp_RxNSduParams_t, AUTOMATIC, CANTP_APPL_DATA) CanTpRxNSdu_BS_STmin_p;
# 
#     /*Variable used for BlockSize calculations*/
#     VAR(uint8, AUTOMATIC) Block_Size_u8;
# 
#     /*Copy RxNsduConfig Address*/
#     CanTpRxNSduConfig_p = &CanTp_RxNSduConfig_p[CanTpChannel_p->IPduId];
	.d2line		88
.Llo18:
	lis		r4,CanTp_RxNSduConfig_p@ha
.Llo3:
	lwz		r4,CanTp_RxNSduConfig_p@l(r4)
	lhz		r31,2(r3)		# CanTpChannel_p=r3
	rlwinm		r30,r31,4,12,27
	se_add		r4,r30
.Llo20:
	mr		r4,r4		# CanTpRxNSduConfig_p=r4 CanTpRxNSduConfig_p=r4
#     CanTpRxNSdu_BS_STmin_p = &CanTp_RxNSduParams_p[CanTpChannel_p->IPduId];
	.d2line		89
	lis		r5,CanTp_RxNSduParams_p@ha
	lwz		r5,CanTp_RxNSduParams_p@l(r5)
	rlwinm		r30,r31,1,15,30
	se_add		r5,r30
.Llo21:
	mr		r5,r5		# CanTpRxNSdu_BS_STmin_p=r5 CanTpRxNSdu_BS_STmin_p=r5
# 
#     /*Check for addressing mode*/
#     if(CANTP_STANDARD != CanTp_RxNSdu_p[CanTpChannel_p->IPduId].CanTpAddressingMode)
	.d2line		92
	rlwinm		r30,r31,3,0,28
	lis		r6,CanTp_RxNSdu_p@ha
	lwz		r6,CanTp_RxNSdu_p@l(r6)
	se_slwi		r31,5
	subf		r30,r30,r31
	lwzx		r6,r6,r30
	se_cmpi		r6,0
	bc		1,2,.L124	# eq
#     {
#         /*assign the N_TA or N_AE value*/
#         CanTpChannel_p->CanIfData_au8[BufferOffset_u8] = CanTp_RxNSdu_p[CanTpChannel_p->IPduId].CanTp_TargetAddress_u8;
	.d2line		95
.Llo4:
	lhz		r31,2(r3)		# CanTpChannel_p=r3
	lis		r6,CanTp_RxNSdu_p@ha
	lwz		r6,CanTp_RxNSdu_p@l(r6)
	rlwinm		r30,r31,5,0,26
	se_slwi		r31,3
	subf		r31,r31,r30
	se_add		r6,r31
	lbz		r6,16(r6)
	stb		r6,31(r3)		# CanTpChannel_p=r3
#         /* Increase Buffer offset */
#         BufferOffset_u8++;
	.d2line		97
	diab.addi		r6,r7,1		# BufferOffset_u8=r7
	se_addi		r7,1		# BufferOffset_u8=r7 BufferOffset_u8=r7
.L124:
#     }
# 
#     /*assign the FC value*/
#     CanTpChannel_p->CanIfData_au8[BufferOffset_u8] = FlowCtrlByte_u8;
	.d2line		101
	rlwinm		r6,r7,0,24,31		# BufferOffset_u8=r7
	se_add		r6,r3		# CanTpChannel_p=r3
	stb		r0,31(r6)		# FlowCtrlByte_u8=r0
# 
#     /*Featche the fixed Block size from the structure */
#     Block_Size_u8 = (uint8) CanTpChannel_p->BlockSize_u16;
	.d2line		104
	lhz		r31,16(r3)		# CanTpChannel_p=r3
.Llo24:
	mr		r31,r31		# Block_Size_u8=r31 Block_Size_u8=r31
# 
#     /* PRQA S 2016 ++ *//* 'switch' statement 'default' clause is empty */
#     switch (FlowCtrlByte_u8)
	.d2line		107
	rlwinm		r6,r0,0,24,31		# FlowCtrlByte_u8=r0
	cmpi		0,0,r6,48
	bc		1,2,.L125	# eq
.Llo5:
	cmpi		0,0,r6,49
	bc		1,2,.L127	# eq
	cmpi		0,0,r6,50
	bc		1,2,.L128	# eq
	b		.L126
.L125:
#     {
#         case CANTP_FRAME_FC_CTS:
#         {
#             /* Increase Buffer offset */
#             BufferOffset_u8++;
	.d2line		112
	diab.addi		r6,r7,1		# BufferOffset_u8=r6 BufferOffset_u8=r7
	addi		r6,r7,1		# BufferOffset_u8=r6 BufferOffset_u8=r7
# 
#             /*Reset the Processed Blocks to zero*/
#             CanTpChannel_p->RemainingCFInBlock_u16 = (uint16) Block_Size_u8;
	.d2line		115
	rlwinm		r0,r31,0,24,31		# FlowCtrlByte_u8=r0 Block_Size_u8=r31
.Llo6:
	sth		r0,42(r3)		# CanTpChannel_p=r3 FlowCtrlByte_u8=r0
# 
#             /*Reinitialize the counter for the next block*/
#             CanTpChannel_p->WftCounter_u16 = (uint16) CANTP_GENERAL_ZERO;
	.d2line		118
	diab.li		r0,0		# FlowCtrlByte_u8=r0
	sth		r0,18(r3)		# CanTpChannel_p=r3 FlowCtrlByte_u8=r0
# 
#             /* Load block size into the data buffer */
#             CanTpChannel_p->CanIfData_au8[BufferOffset_u8] = Block_Size_u8;
	.d2line		121
	rlwinm		r6,r6,0,24,31		# BufferOffset_u8=r6 BufferOffset_u8=r6
	se_add		r6,r3		# BufferOffset_u8=r6 BufferOffset_u8=r6 CanTpChannel_p=r3
	stb		r31,31(r6)		# BufferOffset_u8=r6 Block_Size_u8=r31
# 
#             /* Increase Buffer offset */
#             BufferOffset_u8++;
	.d2line		124
	diab.addi		r6,r7,2		# BufferOffset_u8=r6 BufferOffset_u8=r7
	se_addi		r7,2		# BufferOffset_u8=r7 BufferOffset_u8=r7
# 
#             /*Load StMin Value in to the Data buffer*/
#             CanTpChannel_p->CanIfData_au8[BufferOffset_u8] = CanTpRxNSdu_BS_STmin_p->CanTpSTmin_u8;
	.d2line		127
	lbz		r0,1(r5)		# FlowCtrlByte_u8=r0 CanTpRxNSdu_BS_STmin_p=r5
	rlwinm		r6,r7,0,24,31		# BufferOffset_u8=r6 BufferOffset_u8=r7
	se_add		r6,r3		# BufferOffset_u8=r6 BufferOffset_u8=r6 CanTpChannel_p=r3
	stb		r0,31(r6)		# BufferOffset_u8=r6 FlowCtrlByte_u8=r0
# 
#             /*Change the State to TX FC CTS Frame*/
#             CanTpChannel_p->State_u8 = CANTP_CH_RX_SEGMENTED_TRANSMIT_FC_CTS;
	.d2line		130
	diab.li		r0,70		# FlowCtrlByte_u8=r0
	stb		r0,14(r3)		# CanTpChannel_p=r3 FlowCtrlByte_u8=r0
	b		.L126
.L127:
# 
#             break;
#         }
#         case CANTP_FRAME_FC_WAIT:
#         {
#             CanTpChannel_p->WftCounter_u16++;
	.d2line		136
.Llo7:
	lhz		r6,18(r3)		# BufferOffset_u8=r6 CanTpChannel_p=r3
	se_addi		r6,1		# BufferOffset_u8=r6 BufferOffset_u8=r6
	sth		r6,18(r3)		# CanTpChannel_p=r3 BufferOffset_u8=r6
#             CanTpChannel_p->State_u8 = CANTP_CH_RX_SEGMENTED_TRANSMIT_FC_WAIT;
	.d2line		137
	diab.li		r0,71		# FlowCtrlByte_u8=r0
.Llo8:
	stb		r0,14(r3)		# CanTpChannel_p=r3 FlowCtrlByte_u8=r0
# 
#             BufferOffset_u8++;
	.d2line		139
	diab.addi		r6,r7,1		# BufferOffset_u8=r6 BufferOffset_u8=r7
	addi		r6,r7,1		# BufferOffset_u8=r6 BufferOffset_u8=r7
#             CanTpChannel_p->CanIfData_au8[BufferOffset_u8] = Block_Size_u8;
	.d2line		140
	rlwinm		r6,r6,0,24,31		# BufferOffset_u8=r6 BufferOffset_u8=r6
	se_add		r6,r3		# BufferOffset_u8=r6 BufferOffset_u8=r6 CanTpChannel_p=r3
	stb		r31,31(r6)		# BufferOffset_u8=r6 Block_Size_u8=r31
#             BufferOffset_u8++;
	.d2line		141
	diab.addi		r6,r7,2		# BufferOffset_u8=r6 BufferOffset_u8=r7
	se_addi		r7,2		# BufferOffset_u8=r7 BufferOffset_u8=r7
#             CanTpChannel_p->CanIfData_au8[BufferOffset_u8] = CanTpRxNSdu_BS_STmin_p->CanTpSTmin_u8;
	.d2line		142
	lbz		r0,1(r5)		# FlowCtrlByte_u8=r0 CanTpRxNSdu_BS_STmin_p=r5
	rlwinm		r6,r7,0,24,31		# BufferOffset_u8=r6 BufferOffset_u8=r7
	se_add		r6,r3		# BufferOffset_u8=r6 BufferOffset_u8=r6 CanTpChannel_p=r3
	stb		r0,31(r6)		# BufferOffset_u8=r6 FlowCtrlByte_u8=r0
	b		.L126
.L128:
#             break;
#         }
#         case CANTP_FRAME_FC_OVFLW:
#         {
#             /*Change the State to TX FC OVFLW Frame*/
#             CanTpChannel_p->State_u8 = CANTP_CH_RX_SEGMENTED_TRANSMIT_FC_OVFLW;
	.d2line		148
.Llo9:
	diab.li		r0,72		# FlowCtrlByte_u8=r0
.Llo10:
	stb		r0,14(r3)		# CanTpChannel_p=r3 FlowCtrlByte_u8=r0
# 
#             BufferOffset_u8++;
	.d2line		150
	diab.addi		r6,r7,1		# BufferOffset_u8=r6 BufferOffset_u8=r7
	addi		r6,r7,1		# BufferOffset_u8=r6 BufferOffset_u8=r7
#             CanTpChannel_p->CanIfData_au8[BufferOffset_u8] = Block_Size_u8;
	.d2line		151
	rlwinm		r6,r6,0,24,31		# BufferOffset_u8=r6 BufferOffset_u8=r6
	se_add		r6,r3		# BufferOffset_u8=r6 BufferOffset_u8=r6 CanTpChannel_p=r3
	stb		r31,31(r6)		# BufferOffset_u8=r6 Block_Size_u8=r31
#             BufferOffset_u8++;
	.d2line		152
	diab.addi		r6,r7,2		# BufferOffset_u8=r6 BufferOffset_u8=r7
	se_addi		r7,2		# BufferOffset_u8=r7 BufferOffset_u8=r7
#             CanTpChannel_p->CanIfData_au8[BufferOffset_u8] = CanTpRxNSdu_BS_STmin_p->CanTpSTmin_u8;
	.d2line		153
	lbz		r0,1(r5)		# FlowCtrlByte_u8=r0 CanTpRxNSdu_BS_STmin_p=r5
	rlwinm		r6,r7,0,24,31		# BufferOffset_u8=r6 BufferOffset_u8=r7
	se_add		r6,r3		# BufferOffset_u8=r6 BufferOffset_u8=r6 CanTpChannel_p=r3
	stb		r0,31(r6)		# BufferOffset_u8=r6 FlowCtrlByte_u8=r0
.L126:
#             break;
#         }
#         default:
#         {
#             /*Never reaches here*/
#             break;
#         }
#     }
#     /* PRQA S 2016 -- */
# 
#     /*Increment the buffer pointer to calculate DLC*/
#     BufferOffset_u8++;
	.d2line		165
.Llo11:
	se_addi		r7,1		# BufferOffset_u8=r7 BufferOffset_u8=r7
	mr		r7,r7		# BufferOffset_u8=r7 BufferOffset_u8=r7
# 
#     /* [SWS_CanTp_00347] - Check for padding information*/
#     if(CANTP_ON == CanTp_RxNSdu_p[CanTpChannel_p->IPduId].CanTpRxPaddingActivation)
	.d2line		168
	lhz		r0,2(r3)		# FlowCtrlByte_u8=r0 CanTpChannel_p=r3
.Llo12:
	lis		r5,CanTp_RxNSdu_p@ha		# CanTpRxNSdu_BS_STmin_p=r5
.Llo22:
	lwz		r5,CanTp_RxNSdu_p@l(r5)		# CanTpRxNSdu_BS_STmin_p=r5 CanTpRxNSdu_BS_STmin_p=r5
	rlwinm		r6,r0,5,0,26		# BufferOffset_u8=r6 FlowCtrlByte_u8=r0
	se_slwi		r0,3		# FlowCtrlByte_u8=r0 FlowCtrlByte_u8=r0
	subf		r0,r0,r6		# FlowCtrlByte_u8=r0 FlowCtrlByte_u8=r0 BufferOffset_u8=r6
	se_add		r5,r0		# CanTpRxNSdu_BS_STmin_p=r5 CanTpRxNSdu_BS_STmin_p=r5 FlowCtrlByte_u8=r0
	lwz		r0,8(r5)		# FlowCtrlByte_u8=r0 CanTpRxNSdu_BS_STmin_p=r5
	se_cmpi		r0,1		# FlowCtrlByte_u8=r0
	bc		0,2,.L130	# ne
.L131:
#     {
#         while(BufferOffset_u8 < CANTP_MAX_CAN20_LENGTH)
	.d2line		170
.Llo13:
	rlwinm		r6,r7,0,24,31		# BufferOffset_u8=r6 BufferOffset_u8=r7
	se_cmpi		r6,8		# BufferOffset_u8=r6
	bc		0,0,.L132	# ge
#         {
#             CanTpChannel_p->CanIfData_au8[BufferOffset_u8] = CanTp_GeneralConfig_p->CanTp_Cfg_PaddingByte_u8;
	.d2line		172
	lis		r5,CanTp_GeneralConfig_p@ha		# CanTpRxNSdu_BS_STmin_p=r5
.Llo23:
	lwz		r5,CanTp_GeneralConfig_p@l(r5)		# CanTpRxNSdu_BS_STmin_p=r5 CanTpRxNSdu_BS_STmin_p=r5
	lbz		r0,10(r5)		# FlowCtrlByte_u8=r0 CanTpRxNSdu_BS_STmin_p=r5
.Llo14:
	rlwinm		r6,r7,0,24,31		# BufferOffset_u8=r6 BufferOffset_u8=r7
	se_add		r6,r3		# BufferOffset_u8=r6 BufferOffset_u8=r6 CanTpChannel_p=r3
	stb		r0,31(r6)		# BufferOffset_u8=r6 FlowCtrlByte_u8=r0
#             BufferOffset_u8++;
	.d2line		173
	diab.addi		r6,r7,1		# BufferOffset_u8=r6 BufferOffset_u8=r7
	se_addi		r7,1		# BufferOffset_u8=r7 BufferOffset_u8=r7
	b		.L131
.L132:
#         }
# 
#         /* Load 8 to the DLC field */
#         CanTpChannel_p->CanIfDLC_u8 = CANTP_MAX_CAN20_LENGTH;
	.d2line		177
.Llo15:
	diab.li		r0,8		# FlowCtrlByte_u8=r0
.Llo16:
	stb		r0,30(r3)		# CanTpChannel_p=r3 FlowCtrlByte_u8=r0
	b		.L133
.L130:
#     }
#     else
#     {
#         /* Load actual byte counts in DLC field */
#         CanTpChannel_p->CanIfDLC_u8 = BufferOffset_u8;
	.d2line		182
.Llo17:
	stb		r7,30(r3)		# CanTpChannel_p=r3 BufferOffset_u8=r7
.L133:
#     }
# 
#     /*Start N_Br timer*/
#     CanTpChannel_p->TimeoutTicks_u16 = CanTpRxNSduConfig_p->CanTpNbr_u16;
	.d2line		186
.Llo19:
	lhz		r4,4(r4)		# CanTpRxNSduConfig_p=r4 CanTpRxNSduConfig_p=r4
	sth		r4,4(r3)		# CanTpChannel_p=r3 CanTpRxNSduConfig_p=r4
# 
# }/* End of CanTp_PrepareFCframe() */
	.d2line		188
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# FlowCtrlByte_u8=r0
	mtspr		lr,r0		# FlowCtrlByte_u8=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo2:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L174:
	.type		CanTp_PrepareFCFrame,@function
	.size		CanTp_PrepareFCFrame,.-CanTp_PrepareFCFrame
# Number of nodes = 245

# Allocations for CanTp_PrepareFCFrame
#	?a4		CanTpChannel_p
#	?a5		FlowCtrlByte_u8
#	?a6		$$33
#	?a7		$$32
#	?a8		$$31
#	?a9		BufferOffset_u8
#	?a10		CanTpRxNSduConfig_p
#	?a11		CanTpRxNSdu_BS_STmin_p
#	?a12		Block_Size_u8
# FUNC(void, CANTP_CODE) CanTp_PrepareTxDataFrame
	.align		2
	.section	.text_vle
        .d2line         201,24
#$$ld
.L203:

#$$bf	CanTp_PrepareTxDataFrame,interprocedural,rasave,nostackparams
	.globl		CanTp_PrepareTxDataFrame
	.d2_cfa_start __cie
CanTp_PrepareTxDataFrame:
.Llo25:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# CanTpChannel_p=r3 CanTpChannel_p=r3
	.d2prologue_end
# (
#     CONSTP2VAR(CanTp_Channel_t, AUTOMATIC, CANTP_APPL_DATA) CanTpChannel_p
# )
# {
#     /* If the data was not available in PduR the last time then only the data shall be copied the PCI bytes
#      * has already been filled properly */
#     if(CanTpChannel_p->CanIfDLC_u8 == CANTP_GENERAL_ZERO)
	.d2line		208
	lbz		r0,30(r3)		# CanTpChannel_p=r3
	se_cmpi		r0,0
	bc		0,2,.L144	# ne
	.section	.text_vle
.L207:
#     {
#         /*Variable used for Buffer Offset*/
#         VAR(uint8, AUTOMATIC) BufferOffset_u8 = CANTP_BUFFER_INDEX_ZERO;
	.d2line		211
	diab.li		r4,0		# BufferOffset_u8=r4
# 
#         /*The address information length is zero for Standard addressing and one otherwise */
#         CONST(uint8, AUTOMATIC) addrInfoLength =
	.d2line		214
.Llo27:
	lhz		r0,2(r3)		# addrInfoLength=r0 CanTpChannel_p=r3
.Llo29:
	lis		r5,CanTp_TxNSdu_p@ha		# addrInfoLength=r5
	lwz		r5,CanTp_TxNSdu_p@l(r5)		# addrInfoLength=r5 addrInfoLength=r5
	rlwinm		r6,r0,5,0,26		# addrInfoLength=r0
	se_slwi		r0,2		# addrInfoLength=r0 addrInfoLength=r0
	subf		r0,r0,r6		# addrInfoLength=r0 addrInfoLength=r0
	lwzx		r0,r5,r0		# addrInfoLength=r0 addrInfoLength=r5
	se_cmpi		r0,0		# addrInfoLength=r0
	isel		r5,0,r0,2		# addrInfoLength=r5 addrInfoLength=r0
.L156:
.Llo30:
	diab.li		r0,1		# addrInfoLength=r0
.Llo31:
	isel		r0,r5,r0,2		# addrInfoLength=r0 addrInfoLength=r5 addrInfoLength=r0
.L157:
#                 (uint8) (CANTP_STANDARD == CanTp_TxNSdu_p[CanTpChannel_p->IPduId].CanTpAddressingMode) ? 0U : 1U;
# 
#         /*Check for addressing mode*/
#         if(CANTP_GENERAL_ZERO != addrInfoLength)
	.d2line		218
.Llo32:
	rlwinm		r5,r0,0,24,31		# addrInfoLength=r5 addrInfoLength=r0
.Llo33:
	se_cmpi		r5,0		# addrInfoLength=r5
	bc		1,2,.L145	# eq
#         {
#             /*assign the N_TA or N_AE value*/
#             CanTpChannel_p->CanIfData_au8[BufferOffset_u8] = CanTp_TxNSdu_p[CanTpChannel_p->IPduId].CanTp_TargetAddress_u8;
	.d2line		221
	lhz		r6,2(r3)		# CanTpChannel_p=r3
	lis		r5,CanTp_TxNSdu_p@ha		# addrInfoLength=r5
	lwz		r5,CanTp_TxNSdu_p@l(r5)		# addrInfoLength=r5 addrInfoLength=r5
	rlwinm		r7,r6,5,0,26
	se_slwi		r6,2
	subf		r6,r6,r7
	se_add		r5,r6		# addrInfoLength=r5 addrInfoLength=r5
	lbz		r6,20(r5)		# addrInfoLength=r5
	rlwinm		r5,r4,0,24,31		# addrInfoLength=r5 BufferOffset_u8=r4
	se_add		r5,r3		# addrInfoLength=r5 addrInfoLength=r5 CanTpChannel_p=r3
	stb		r6,31(r5)		# addrInfoLength=r5
# 
#             /* Increase Buffer offset */
#             BufferOffset_u8++;
	.d2line		224
	diab.addi		r5,r4,1		# addrInfoLength=r5 BufferOffset_u8=r4
	se_addi		r4,1		# BufferOffset_u8=r4 BufferOffset_u8=r4
.L145:
#         }
# 
#         /* [SWS_CanTp_00350] - frames are created in accordance with this requirement */
#         switch(CanTpChannel_p->State_u8)
	.d2line		228
	lbz		r6,14(r3)		# CanTpChannel_p=r3
	cmpi		0,0,r6,136
	bc		1,2,.L146	# eq
	cmpi		0,0,r6,137
	bc		1,2,.L150	# eq
	cmpi		0,0,r6,138
	bc		1,2,.L153	# eq
	b		.L149
.L146:
#         {
#             case CANTP_CH_TX_REQBUF_SF:
#             {
#                 /* If the address information and one PCI byte and all data fits into 8 byte then the short
#                  * SF format shall be used for both CAN 2.0 and CANFD */
#                 if((PduLengthType) CANTP_SF_SHORT_MAX_DATA(addrInfoLength) >= CanTpChannel_p->TotalLength)
	.d2line		234
	subfic		r0,r0,7		# addrInfoLength=r0 addrInfoLength=r0
	rlwinm		r0,r0,0,24,31		# addrInfoLength=r0 addrInfoLength=r0
	lhz		r5,8(r3)		# addrInfoLength=r5 CanTpChannel_p=r3
	se_cmp		r0,r5		# addrInfoLength=r0 addrInfoLength=r5
	bc		1,0,.L147	# lt
#                 {
#                     /* Short SF PCI is stored */
#                     CanTpChannel_p->CanIfData_au8[BufferOffset_u8] = (uint8) (CANTP_FRAME_SF |
	.d2line		237
.Llo34:
	lhz		r0,8(r3)		# addrInfoLength=r0 CanTpChannel_p=r3
.Llo35:
	rlwinm		r0,r0,0,28,31		# addrInfoLength=r0 addrInfoLength=r0
	rlwinm		r5,r4,0,24,31		# addrInfoLength=r5 BufferOffset_u8=r4
	se_add		r5,r3		# addrInfoLength=r5 addrInfoLength=r5 CanTpChannel_p=r3
	stb		r0,31(r5)		# addrInfoLength=r5 addrInfoLength=r0
#                             (uint8) (CANTP_LOWER_NIBBLE_MASK & (uint8) CanTpChannel_p->TotalLength));
#                     BufferOffset_u8++;
	.d2line		239
	diab.addi		r5,r4,1		# addrInfoLength=r5 BufferOffset_u8=r4
	se_addi		r4,1		# BufferOffset_u8=r4 BufferOffset_u8=r4
	b		.L148
.L147:
#                 }
#                 else
#                 {
#                     /* Long SF PCI is stored */
#                     CanTpChannel_p->CanIfData_au8[BufferOffset_u8] = CANTP_GENERAL_ZERO;
	.d2line		244
.Llo36:
	diab.li		r0,0		# addrInfoLength=r0
.Llo37:
	rlwinm		r5,r4,0,24,31		# addrInfoLength=r5 BufferOffset_u8=r4
	se_add		r5,r3		# addrInfoLength=r5 addrInfoLength=r5 CanTpChannel_p=r3
	stb		r0,31(r5)		# addrInfoLength=r5 addrInfoLength=r0
#                     BufferOffset_u8++;
	.d2line		245
	diab.addi		r5,r4,1		# addrInfoLength=r5 BufferOffset_u8=r4
	addi		r5,r4,1		# addrInfoLength=r5 BufferOffset_u8=r4
# 
#                     CanTpChannel_p->CanIfData_au8[BufferOffset_u8] = (uint8) CanTpChannel_p->TotalLength;
	.d2line		247
	lhz		r0,8(r3)		# addrInfoLength=r0 CanTpChannel_p=r3
	rlwinm		r5,r5,0,24,31		# BufferOffset_u8=r5 BufferOffset_u8=r5
	se_add		r5,r3		# BufferOffset_u8=r5 BufferOffset_u8=r5 CanTpChannel_p=r3
	stb		r0,31(r5)		# BufferOffset_u8=r5 addrInfoLength=r0
#                     BufferOffset_u8++;
	.d2line		248
	diab.addi		r5,r4,2		# BufferOffset_u8=r5 BufferOffset_u8=r4
	se_addi		r4,2		# BufferOffset_u8=r4 BufferOffset_u8=r4
.L148:
#                 }
# 
#                 /* Change the State to TX SF*/
#                 CanTpChannel_p->NextState_u8 = CANTP_CH_TX_TRANSMIT_SF;
	.d2line		252
.Llo38:
	diab.li		r0,129		# addrInfoLength=r0
.Llo39:
	stb		r0,15(r3)		# CanTpChannel_p=r3 addrInfoLength=r0
# 
#                 /* Maximum data length that can be prepared now*/
#                 CanTpChannel_p->RequiredBufferSize = CanTpChannel_p->TotalLength;
	.d2line		255
	lhz		r0,8(r3)		# addrInfoLength=r0 CanTpChannel_p=r3
	sth		r0,46(r3)		# CanTpChannel_p=r3 addrInfoLength=r0
	b		.L149
.L150:
# 
#                 break;
#             }
# 
#             case CANTP_CH_TX_REQBUF_FF:
#             {
#                 /* First Byte of the FF with FF ID and Length Right shift the total length and mask the MS Nibble
#                  * and add First Frame ID*/
#                 if(CanTpChannel_p->TotalLength <= CANTP_FF_SHORT_PCI_MAX_NSDU_LENGTH)
	.d2line		264
.Llo40:
	lhz		r0,8(r3)		# addrInfoLength=r0 CanTpChannel_p=r3
.Llo41:
	cmpi		0,0,r0,4095		# addrInfoLength=r0
	bc		1,1,.L151	# gt
#                 {
#                     /* Short NSdu FF PCI is stored */
#                     CanTpChannel_p->CanIfData_au8[BufferOffset_u8] = (uint8) (CANTP_FRAME_FF |
	.d2line		267
.Llo42:
	lhz		r0,8(r3)		# addrInfoLength=r0 CanTpChannel_p=r3
.Llo43:
	rlwinm		r0,r0,24,28,31		# addrInfoLength=r0 addrInfoLength=r0
	.diab.bseti		r0,27		# addrInfoLength=r0
	rlwinm		r5,r4,0,24,31		# addrInfoLength=r5 BufferOffset_u8=r4
	se_add		r5,r3		# addrInfoLength=r5 addrInfoLength=r5 CanTpChannel_p=r3
	stb		r0,31(r5)		# addrInfoLength=r5 addrInfoLength=r0
#                             (uint8) ((uint8) (CanTpChannel_p->TotalLength >> CANTP_SHIFT_REQD_EIGHT) & CANTP_LOWER_NIBBLE_MASK));
#                     BufferOffset_u8++;
	.d2line		269
	diab.addi		r5,r4,1		# addrInfoLength=r5 BufferOffset_u8=r4
	addi		r5,r4,1		# addrInfoLength=r5 BufferOffset_u8=r4
# 
#                     CanTpChannel_p->CanIfData_au8[BufferOffset_u8] = (uint8) CanTpChannel_p->TotalLength;
	.d2line		271
	lhz		r0,8(r3)		# addrInfoLength=r0 CanTpChannel_p=r3
	rlwinm		r5,r5,0,24,31		# BufferOffset_u8=r5 BufferOffset_u8=r5
	se_add		r5,r3		# BufferOffset_u8=r5 BufferOffset_u8=r5 CanTpChannel_p=r3
	stb		r0,31(r5)		# BufferOffset_u8=r5 addrInfoLength=r0
#                     BufferOffset_u8++;
	.d2line		272
	diab.addi		r5,r4,2		# BufferOffset_u8=r5 BufferOffset_u8=r4
	se_addi		r4,2		# BufferOffset_u8=r4 BufferOffset_u8=r4
	b		.L152
.L151:
#                 }
#                 else
#                 {
#                     /* Long NSdu FF PCI is stored */
#                     CanTpChannel_p->CanIfData_au8[BufferOffset_u8] = CANTP_FRAME_FF;
	.d2line		277
.Llo44:
	diab.li		r0,16		# addrInfoLength=r0
.Llo45:
	rlwinm		r5,r4,0,24,31		# addrInfoLength=r5 BufferOffset_u8=r4
	se_add		r5,r3		# addrInfoLength=r5 addrInfoLength=r5 CanTpChannel_p=r3
	stb		r0,31(r5)		# addrInfoLength=r5 addrInfoLength=r0
#                     BufferOffset_u8++;
	.d2line		278
	diab.addi		r5,r4,1		# addrInfoLength=r5 BufferOffset_u8=r4
	addi		r5,r4,1		# addrInfoLength=r5 BufferOffset_u8=r4
# 
#                     CanTpChannel_p->CanIfData_au8[BufferOffset_u8] = CANTP_GENERAL_ZERO;
	.d2line		280
	diab.li		r0,0		# addrInfoLength=r0
	rlwinm		r5,r5,0,24,31		# BufferOffset_u8=r5 BufferOffset_u8=r5
	se_add		r5,r3		# BufferOffset_u8=r5 BufferOffset_u8=r5 CanTpChannel_p=r3
	stb		r0,31(r5)		# BufferOffset_u8=r5 addrInfoLength=r0
#                     BufferOffset_u8++;
	.d2line		281
	diab.addi		r5,r4,2		# BufferOffset_u8=r5 BufferOffset_u8=r4
	addi		r5,r4,2		# BufferOffset_u8=r5 BufferOffset_u8=r4
# 
#                     /* The total length of the NSdu is 32 bit wide so it shall be stored on 4 bytes */
#                     CanTpChannel_p->CanIfData_au8[BufferOffset_u8] = (uint8) ((CanTpChannel_p->TotalLength >> 24U) & 0xFFU);
	.d2line		284
	lhz		r0,8(r3)		# addrInfoLength=r0 CanTpChannel_p=r3
	se_srwi		r0,24		# addrInfoLength=r0 addrInfoLength=r0
	rlwinm		r5,r5,0,24,31		# BufferOffset_u8=r5 BufferOffset_u8=r5
	se_add		r5,r3		# BufferOffset_u8=r5 BufferOffset_u8=r5 CanTpChannel_p=r3
	stb		r0,31(r5)		# BufferOffset_u8=r5 addrInfoLength=r0
#                     BufferOffset_u8++;
	.d2line		285
	diab.addi		r5,r4,3		# BufferOffset_u8=r5 BufferOffset_u8=r4
	addi		r5,r4,3		# BufferOffset_u8=r5 BufferOffset_u8=r4
# 
#                     CanTpChannel_p->CanIfData_au8[BufferOffset_u8] = (uint8) ((CanTpChannel_p->TotalLength >> 16U) & 0xFFU);
	.d2line		287
	lhz		r0,8(r3)		# addrInfoLength=r0 CanTpChannel_p=r3
	rlwinm		r0,r0,16,24,31		# addrInfoLength=r0 addrInfoLength=r0
	rlwinm		r5,r5,0,24,31		# BufferOffset_u8=r5 BufferOffset_u8=r5
	se_add		r5,r3		# BufferOffset_u8=r5 BufferOffset_u8=r5 CanTpChannel_p=r3
	stb		r0,31(r5)		# BufferOffset_u8=r5 addrInfoLength=r0
#                     BufferOffset_u8++;
	.d2line		288
	diab.addi		r5,r4,4		# BufferOffset_u8=r5 BufferOffset_u8=r4
	addi		r5,r4,4		# BufferOffset_u8=r5 BufferOffset_u8=r4
# 
#                     CanTpChannel_p->CanIfData_au8[BufferOffset_u8] = (uint8) ((CanTpChannel_p->TotalLength >> 8U) & 0xFFU);
	.d2line		290
	lhz		r0,8(r3)		# addrInfoLength=r0 CanTpChannel_p=r3
	rlwinm		r0,r0,24,24,31		# addrInfoLength=r0 addrInfoLength=r0
	rlwinm		r5,r5,0,24,31		# BufferOffset_u8=r5 BufferOffset_u8=r5
	se_add		r5,r3		# BufferOffset_u8=r5 BufferOffset_u8=r5 CanTpChannel_p=r3
	stb		r0,31(r5)		# BufferOffset_u8=r5 addrInfoLength=r0
#                     BufferOffset_u8++;
	.d2line		291
	diab.addi		r5,r4,5		# BufferOffset_u8=r5 BufferOffset_u8=r4
	addi		r5,r4,5		# BufferOffset_u8=r5 BufferOffset_u8=r4
# 
#                     CanTpChannel_p->CanIfData_au8[BufferOffset_u8] = (uint8) (CanTpChannel_p->TotalLength & 0xFFU);
	.d2line		293
	lhz		r0,8(r3)		# addrInfoLength=r0 CanTpChannel_p=r3
	rlwinm		r5,r5,0,24,31		# BufferOffset_u8=r5 BufferOffset_u8=r5
	se_add		r5,r3		# BufferOffset_u8=r5 BufferOffset_u8=r5 CanTpChannel_p=r3
	stb		r0,31(r5)		# BufferOffset_u8=r5 addrInfoLength=r0
#                     BufferOffset_u8++;
	.d2line		294
	diab.addi		r5,r4,6		# BufferOffset_u8=r5 BufferOffset_u8=r4
	se_addi		r4,6		# BufferOffset_u8=r4 BufferOffset_u8=r4
.L152:
#                 }
# 
#                 /* Change the State to TX FF*/
#                 CanTpChannel_p->NextState_u8 = CANTP_CH_TX_TRANSMIT_FF;
	.d2line		298
.Llo46:
	diab.li		r0,130		# addrInfoLength=r0
.Llo47:
	stb		r0,15(r3)		# CanTpChannel_p=r3 addrInfoLength=r0
# 
#                 /* The FF is full because a SF would be sent otherwise */
#                 CanTpChannel_p->RequiredBufferSize = (PduLengthType) (CanTpChannel_p->FrameSize - BufferOffset_u8);
	.d2line		301
	lbz		r0,49(r3)		# addrInfoLength=r0 CanTpChannel_p=r3
	rlwinm		r5,r4,0,24,31		# BufferOffset_u8=r5 BufferOffset_u8=r4
	subf		r5,r5,r0		# BufferOffset_u8=r5 BufferOffset_u8=r5 addrInfoLength=r0
	sth		r5,46(r3)		# CanTpChannel_p=r3 BufferOffset_u8=r5
	b		.L149
.L153:
#                 break;
#             }
# 
#             case CANTP_CH_TX_REQBUF_CF:
#             {
#                 /*maximum data length that can be prepared now*/
#                 CanTpChannel_p->RequiredBufferSize = CANTP_CF_MAX_DATA(CanTpChannel_p->FrameSize, addrInfoLength);
	.d2line		308
.Llo48:
	lbz		r5,49(r3)		# addrInfoLength=r5 CanTpChannel_p=r3
.Llo49:
	subf		r0,r0,r5		# addrInfoLength=r0 addrInfoLength=r0 addrInfoLength=r5
	rlwinm		r0,r0,0,24,31		# addrInfoLength=r0 addrInfoLength=r0
	diab.li		r6,65535
	se_add		r0,r6		# addrInfoLength=r0 addrInfoLength=r0
	sth		r0,46(r3)		# CanTpChannel_p=r3 addrInfoLength=r0
# 
#                 /*Check if this is going to be the last CF Frame*/
#                 if(CanTpChannel_p->RequiredBufferSize > (PduLengthType) (CanTpChannel_p->TotalLength - CanTpChannel_p->ProcessedLength))
	.d2line		311
	rlwinm		r6,r0,0,16,31		# addrInfoLength=r0
	lhz		r0,8(r3)		# addrInfoLength=r0 CanTpChannel_p=r3
	lhz		r5,10(r3)		# addrInfoLength=r5 CanTpChannel_p=r3
	subf		r5,r5,r0		# addrInfoLength=r5 addrInfoLength=r5 addrInfoLength=r0
	rlwinm		r5,r5,0,16,31		# addrInfoLength=r5 addrInfoLength=r5
	se_cmp		r6,r5		# addrInfoLength=r5
	bc		0,1,.L154	# le
#                 {
#                     /* MaxData will be TotalLength - ProcessedLength*/
#                     CanTpChannel_p->RequiredBufferSize = (PduLengthType) (CanTpChannel_p->TotalLength - CanTpChannel_p->ProcessedLength);
	.d2line		314
.Llo50:
	lhz		r0,8(r3)		# addrInfoLength=r0 CanTpChannel_p=r3
.Llo51:
	lhz		r5,10(r3)		# addrInfoLength=r5 CanTpChannel_p=r3
	subf		r5,r5,r0		# addrInfoLength=r5 addrInfoLength=r5 addrInfoLength=r0
	sth		r5,46(r3)		# CanTpChannel_p=r3 addrInfoLength=r5
# 
#                     /* Last CF flag shall be set because the remaining data fits into the CF */
#                     CanTpChannel_p->LastCFofNSduFlag_b = CANTP_TRUE;
	.d2line		317
	diab.li		r0,1		# addrInfoLength=r0
	stb		r0,44(r3)		# CanTpChannel_p=r3 addrInfoLength=r0
.L154:
#                 }
# 
#                 /* Concatenate the CF ID(0x20) and Sequence number (Lower Nibble) */
#                 CanTpChannel_p->CanIfData_au8[BufferOffset_u8] =
	.d2line		321
.Llo52:
	lbz		r0,20(r3)		# addrInfoLength=r0 CanTpChannel_p=r3
.Llo53:
	rlwinm		r0,r0,0,28,31		# addrInfoLength=r0 addrInfoLength=r0
	.diab.bseti		r0,26		# addrInfoLength=r0
	rlwinm		r5,r4,0,24,31		# addrInfoLength=r5 BufferOffset_u8=r4
	se_add		r5,r3		# addrInfoLength=r5 addrInfoLength=r5 CanTpChannel_p=r3
	stb		r0,31(r5)		# addrInfoLength=r5 addrInfoLength=r0
#                         (uint8) (CanTpChannel_p->SequenceNumber_u8 & CANTP_LOWER_NIBBLE_MASK) | CANTP_FRAME_CF;
#                 BufferOffset_u8++;
	.d2line		323
	diab.addi		r5,r4,1		# addrInfoLength=r5 BufferOffset_u8=r4
	se_addi		r4,1		# BufferOffset_u8=r4 BufferOffset_u8=r4
# 
#                 /*Update sequence information and processed blocks details*/
#                 CanTpChannel_p->SequenceNumber_u8++;
	.d2line		326
	lbz		r5,20(r3)		# addrInfoLength=r5 CanTpChannel_p=r3
	se_addi		r5,1		# addrInfoLength=r5 addrInfoLength=r5
	stb		r5,20(r3)		# CanTpChannel_p=r3 addrInfoLength=r5
#                 CanTpChannel_p->RemainingCFInBlock_u16--;
	.d2line		327
	lhz		r0,42(r3)		# addrInfoLength=r0 CanTpChannel_p=r3
	diab.li		r5,65535		# addrInfoLength=r5
	se_add		r0,r5		# addrInfoLength=r0 addrInfoLength=r0 addrInfoLength=r5
	sth		r0,42(r3)		# CanTpChannel_p=r3 addrInfoLength=r0
# 
#                 /*Change the State to TX CF*/
#                 CanTpChannel_p->NextState_u8 = CANTP_CH_TX_TRANSMIT_CF;
	.d2line		330
	diab.li		r0,131		# addrInfoLength=r0
	stb		r0,15(r3)		# CanTpChannel_p=r3 addrInfoLength=r0
.L149:
#                 break;
#             }
#             default:
#             {
#                 break;
#             }
#         }
#         /* PRQA S 2016 -- */
#         CanTpChannel_p->CanIfDLC_u8 = BufferOffset_u8;
	.d2line		339
.Llo54:
	stb		r4,30(r3)		# CanTpChannel_p=r3 BufferOffset_u8=r4
	.section	.text_vle
.L208:
.L144:
#     }
# 
#     CanTp_RequestTxBuffer(CanTpChannel_p);
	.d2line		342
.Llo28:
	mr		r3,r3		# CanTpChannel_p=r3 CanTpChannel_p=r3
.Llo26:
	bl		CanTp_RequestTxBuffer
# 
# }/* End of CanTp_PrepareTxDataFrame() */
	.d2line		344
	.d2epilogue_begin
	lwz		r0,20(r1)		# addrInfoLength=r0
	mtspr		lr,r0		# addrInfoLength=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L204:
	.type		CanTp_PrepareTxDataFrame,@function
	.size		CanTp_PrepareTxDataFrame,.-CanTp_PrepareTxDataFrame
# Number of nodes = 390

# Allocations for CanTp_PrepareTxDataFrame
#	?a4		CanTpChannel_p
#	?a5		$$35
#	?a6		$$34
#	?a7		BufferOffset_u8
#	?a8		addrInfoLength

# Allocations for module
	.section	.text_vle
	.0byte		.L233
	.section	.text_vle
	.type		CanTp_CanFrameNextValidLength,@object
	.size		CanTp_CanFrameNextValidLength,65
	.align		2
	.globl		CanTp_CanFrameNextValidLength
CanTp_CanFrameNextValidLength:
	.byte		1
	.byte		1
	.byte		2
	.byte		3
	.byte		4
	.byte		5
	.byte		6
	.byte		7
	.byte		8
	.byte		12
	.byte		12
	.byte		12
	.byte		12
	.byte		16
	.byte		16
	.byte		16
	.byte		16
	.byte		20
	.byte		20
	.byte		20
	.byte		20
	.byte		24
	.byte		24
	.byte		24
	.byte		24
	.byte		32
	.byte		32
	.byte		32
	.byte		32
	.byte		32
	.byte		32
	.byte		32
	.byte		32
	.byte		48
	.byte		48
	.byte		48
	.byte		48
	.byte		48
	.byte		48
	.byte		48
	.byte		48
	.byte		48
	.byte		48
	.byte		48
	.byte		48
	.byte		48
	.byte		48
	.byte		48
	.byte		48
	.byte		64
	.byte		64
	.byte		64
	.byte		64
	.byte		64
	.byte		64
	.byte		64
	.byte		64
	.byte		64
	.byte		64
	.byte		64
	.byte		64
	.byte		64
	.byte		64
	.byte		64
	.byte		64
	.section	.text_vle
#$$ld
.L5:
.L236:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTp\\ssc\\make\\..\\inc\\CanTp_Types.h"
.L216:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTp\\ssc\\make\\..\\inc\\CanTp_Private.h"
.L175:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTp\\ssc\\make\\..\\src\\CanTp_DataPrepare.c"
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
	.uleb128	52
	.byte		0x0
	.uleb128	63
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTp\\ssc\\make\\..\\src\\CanTp_DataPrepare.c"
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
.L176:
	.sleb128	2
	.4byte		.L172-.L2
	.byte		"CanTp_PrepareFCFrame"
	.byte		0
	.4byte		.L175
	.uleb128	69
	.uleb128	24
	.byte		0x1
	.byte		0x1
	.4byte		.L173
	.4byte		.L174
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L175
	.uleb128	69
	.uleb128	24
	.byte		"CanTpChannel_p"
	.byte		0
	.4byte		.L177
	.4byte		.L181
	.sleb128	3
	.4byte		.L175
	.uleb128	69
	.uleb128	24
	.byte		"FlowCtrlByte_u8"
	.byte		0
	.4byte		.L182
	.4byte		.L185
	.section	.debug_info,,n
.L186:
	.sleb128	4
	.4byte		.L175
	.uleb128	76
	.uleb128	27
	.byte		"BufferOffset_u8"
	.byte		0
	.4byte		.L183
	.4byte		.L187
.L188:
	.sleb128	4
	.4byte		.L175
	.uleb128	79
	.uleb128	64
	.byte		"CanTpRxNSduConfig_p"
	.byte		0
	.4byte		.L189
	.4byte		.L193
.L194:
	.sleb128	4
	.4byte		.L175
	.uleb128	82
	.uleb128	61
	.byte		"CanTpRxNSdu_BS_STmin_p"
	.byte		0
	.4byte		.L195
	.4byte		.L198
.L199:
	.sleb128	4
	.4byte		.L175
	.uleb128	85
	.uleb128	27
	.byte		"Block_Size_u8"
	.byte		0
	.4byte		.L183
	.4byte		.L200
	.section	.debug_info,,n
	.sleb128	0
.L172:
	.section	.debug_info,,n
.L205:
	.sleb128	2
	.4byte		.L202-.L2
	.byte		"CanTp_PrepareTxDataFrame"
	.byte		0
	.4byte		.L175
	.uleb128	201
	.uleb128	24
	.byte		0x1
	.byte		0x1
	.4byte		.L203
	.4byte		.L204
	.sleb128	3
	.4byte		.L175
	.uleb128	201
	.uleb128	24
	.byte		"CanTpChannel_p"
	.byte		0
	.4byte		.L177
	.4byte		.L206
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L210
	.4byte		.L207
	.4byte		.L208
.L211:
	.sleb128	4
	.4byte		.L175
	.uleb128	211
	.uleb128	31
	.byte		"BufferOffset_u8"
	.byte		0
	.4byte		.L183
	.4byte		.L212
.L213:
	.sleb128	4
	.4byte		.L175
	.uleb128	214
	.uleb128	33
	.byte		"addrInfoLength"
	.byte		0
	.4byte		.L182
	.4byte		.L214
	.section	.debug_info,,n
	.sleb128	0
.L210:
	.section	.debug_info,,n
	.sleb128	0
.L202:
	.section	.debug_info,,n
.L215:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L216
	.uleb128	487
	.uleb128	61
	.byte		"CanTp_RxNSdu_p"
	.byte		0
	.4byte		.L217
	.0byte		.L215
.L221:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L216
	.uleb128	493
	.uleb128	67
	.byte		"CanTp_RxNSduConfig_p"
	.byte		0
	.4byte		.L189
.L222:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L216
	.uleb128	498
	.uleb128	61
	.byte		"CanTp_TxNSdu_p"
	.byte		0
	.4byte		.L223
.L227:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L216
	.uleb128	510
	.uleb128	64
	.byte		"CanTp_RxNSduParams_p"
	.byte		0
	.4byte		.L195
.L228:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L216
	.uleb128	522
	.uleb128	68
	.byte		"CanTp_GeneralConfig_p"
	.byte		0
	.4byte		.L229
	.section	.debug_info,,n
.L233:
	.sleb128	7
	.byte		0x1
	.4byte		.L175
	.uleb128	34
	.uleb128	27
	.byte		"CanTp_CanFrameNextValidLength"
	.byte		0
	.4byte		.L234
	.sleb128	5
	.byte		0x3
	.4byte		CanTp_CanFrameNextValidLength
	.section	.debug_info,,n
	.section	.debug_info,,n
.L197:
	.sleb128	8
	.4byte		.L236
	.uleb128	117
	.uleb128	1
	.4byte		.L237-.L2
	.uleb128	2
	.section	.debug_info,,n
.L105:
	.sleb128	9
	.byte		"CanTpBs_u8"
	.byte		0
	.4byte		.L183
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L106:
	.sleb128	9
	.byte		"CanTpSTmin_u8"
	.byte		0
	.4byte		.L183
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
	.sleb128	0
.L237:
.L232:
	.sleb128	8
	.4byte		.L236
	.uleb128	117
	.uleb128	1
	.4byte		.L238-.L2
	.uleb128	16
.L97:
	.sleb128	9
	.byte		"TxNSduId_Max"
	.byte		0
	.4byte		.L239
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L98:
	.sleb128	9
	.byte		"RxNPduId_Max"
	.byte		0
	.4byte		.L239
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L99:
	.sleb128	9
	.byte		"RxNSduId_Count"
	.byte		0
	.4byte		.L239
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L100:
	.sleb128	9
	.byte		"Channel_Max_u8"
	.byte		0
	.4byte		.L182
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L101:
	.sleb128	9
	.byte		"CanTp_Mf_Resolution_u16"
	.byte		0
	.4byte		.L243
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L102:
	.sleb128	9
	.byte		"CanTp_Cfg_PaddingByte_u8"
	.byte		0
	.4byte		.L182
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L103:
	.sleb128	9
	.byte		"RxNsduId_Max_u16"
	.byte		0
	.4byte		.L243
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L104:
	.sleb128	9
	.byte		"ConfirmationLength"
	.byte		0
	.4byte		.L243
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
	.sleb128	0
.L238:
.L226:
	.sleb128	8
	.4byte		.L236
	.uleb128	117
	.uleb128	1
	.4byte		.L244-.L2
	.uleb128	28
.L79:
	.sleb128	9
	.byte		"CanTpAddressingMode"
	.byte		0
	.4byte		.L245
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L80:
	.sleb128	9
	.byte		"CanTpTxChannel_u8"
	.byte		0
	.4byte		.L182
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L81:
	.sleb128	9
	.byte		"CanTpTxPaddingActivation"
	.byte		0
	.4byte		.L248
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L82:
	.sleb128	9
	.byte		"CanTpTc_b"
	.byte		0
	.4byte		.L248
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L83:
	.sleb128	9
	.byte		"CanTpTxTaType"
	.byte		0
	.4byte		.L251
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L84:
	.sleb128	9
	.byte		"CanTp_TargetAddress_u8"
	.byte		0
	.4byte		.L182
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L85:
	.sleb128	9
	.byte		"FrameType"
	.byte		0
	.4byte		.L254
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
	.sleb128	0
.L244:
.L192:
	.sleb128	8
	.4byte		.L236
	.uleb128	117
	.uleb128	1
	.4byte		.L257-.L2
	.uleb128	16
.L71:
	.sleb128	9
	.byte		"CanTpBsConf_u8"
	.byte		0
	.4byte		.L182
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L72:
	.sleb128	9
	.byte		"CanTpNar_u16"
	.byte		0
	.4byte		.L243
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L73:
	.sleb128	9
	.byte		"CanTpNbr_u16"
	.byte		0
	.4byte		.L243
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L74:
	.sleb128	9
	.byte		"CanTpNcr_u16"
	.byte		0
	.4byte		.L243
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L75:
	.sleb128	9
	.byte		"CanTpRxWftMax_u16"
	.byte		0
	.4byte		.L243
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L76:
	.sleb128	9
	.byte		"CanTpSTminConf_u8"
	.byte		0
	.4byte		.L182
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L77:
	.sleb128	9
	.byte		"CanTpTxFcNPduIdConf"
	.byte		0
	.4byte		.L239
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L78:
	.sleb128	9
	.byte		"CanTpTxFcNPduCanIf"
	.byte		0
	.4byte		.L239
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
	.sleb128	0
.L257:
.L220:
	.sleb128	8
	.4byte		.L236
	.uleb128	117
	.uleb128	1
	.4byte		.L258-.L2
	.uleb128	24
.L64:
	.sleb128	9
	.byte		"CanTpAddressingMode"
	.byte		0
	.4byte		.L245
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L65:
	.sleb128	9
	.byte		"CanTpRxChannel_u8"
	.byte		0
	.4byte		.L182
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L66:
	.sleb128	9
	.byte		"CanTpRxPaddingActivation"
	.byte		0
	.4byte		.L248
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L67:
	.sleb128	9
	.byte		"CanTpRxTaType"
	.byte		0
	.4byte		.L251
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L68:
	.sleb128	9
	.byte		"CanTp_TargetAddress_u8"
	.byte		0
	.4byte		.L182
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L69:
	.sleb128	9
	.byte		"CanTpRxNSduId"
	.byte		0
	.4byte		.L239
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L70:
	.sleb128	9
	.byte		"FrameType"
	.byte		0
	.4byte		.L254
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L258:
.L180:
	.sleb128	8
	.4byte		.L236
	.uleb128	117
	.uleb128	1
	.4byte		.L259-.L2
	.uleb128	52
.L39:
	.sleb128	9
	.byte		"ChannelIdx_u8"
	.byte		0
	.4byte		.L183
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L40:
	.sleb128	9
	.byte		"IPduId"
	.byte		0
	.4byte		.L240
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L41:
	.sleb128	9
	.byte		"TimeoutTicks_u16"
	.byte		0
	.4byte		.L241
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L42:
	.sleb128	9
	.byte		"StMinTicks_u16"
	.byte		0
	.4byte		.L241
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L43:
	.sleb128	9
	.byte		"TotalLength"
	.byte		0
	.4byte		.L260
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L44:
	.sleb128	9
	.byte		"ProcessedLength"
	.byte		0
	.4byte		.L260
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L45:
	.sleb128	9
	.byte		"ProvidedBufferSize"
	.byte		0
	.4byte		.L260
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L46:
	.sleb128	9
	.byte		"State_u8"
	.byte		0
	.4byte		.L183
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L47:
	.sleb128	9
	.byte		"NextState_u8"
	.byte		0
	.4byte		.L183
	.sleb128	2
	.byte		0x23
	.uleb128	15
	.byte		0x1
.L48:
	.sleb128	9
	.byte		"BlockSize_u16"
	.byte		0
	.4byte		.L241
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L49:
	.sleb128	9
	.byte		"WftCounter_u16"
	.byte		0
	.4byte		.L241
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L50:
	.sleb128	9
	.byte		"SequenceNumber_u8"
	.byte		0
	.4byte		.L183
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L51:
	.sleb128	9
	.byte		"StMin_u8"
	.byte		0
	.4byte		.L183
	.sleb128	2
	.byte		0x23
	.uleb128	21
	.byte		0x1
.L52:
	.sleb128	9
	.byte		"TempBuffer_au8"
	.byte		0
	.4byte		.L261
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L53:
	.sleb128	9
	.byte		"TempLength_u8"
	.byte		0
	.4byte		.L183
	.sleb128	2
	.byte		0x23
	.uleb128	29
	.byte		0x1
.L54:
	.sleb128	9
	.byte		"CanIfDLC_u8"
	.byte		0
	.4byte		.L183
	.sleb128	2
	.byte		0x23
	.uleb128	30
	.byte		0x1
.L55:
	.sleb128	9
	.byte		"CanIfData_au8"
	.byte		0
	.4byte		.L263
	.sleb128	2
	.byte		0x23
	.uleb128	31
	.byte		0x1
.L56:
	.sleb128	9
	.byte		"ULayerIndFlag_b"
	.byte		0
	.4byte		.L265
	.sleb128	2
	.byte		0x23
	.uleb128	39
	.byte		0x1
.L57:
	.sleb128	9
	.byte		"ShutdownFlag_b"
	.byte		0
	.4byte		.L265
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L58:
	.sleb128	9
	.byte		"RemainingCFInBlock_u16"
	.byte		0
	.4byte		.L241
	.sleb128	2
	.byte		0x23
	.uleb128	42
	.byte		0x1
.L59:
	.sleb128	9
	.byte		"LastCFofNSduFlag_b"
	.byte		0
	.4byte		.L265
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L60:
	.sleb128	9
	.byte		"RequiredBufferSize"
	.byte		0
	.4byte		.L260
	.sleb128	2
	.byte		0x23
	.uleb128	46
	.byte		0x1
.L61:
	.sleb128	9
	.byte		"CallerApiId"
	.byte		0
	.4byte		.L183
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L62:
	.sleb128	9
	.byte		"FrameSize"
	.byte		0
	.4byte		.L183
	.sleb128	2
	.byte		0x23
	.uleb128	49
	.byte		0x1
.L63:
	.sleb128	9
	.byte		"CriticalSectionStatus_b"
	.byte		0
	.4byte		.L265
	.sleb128	2
	.byte		0x23
	.uleb128	50
	.byte		0x1
	.sleb128	0
.L259:
	.section	.debug_info,,n
.L256:
	.sleb128	10
	.4byte		.L236
	.uleb128	117
	.uleb128	1
	.4byte		.L266-.L2
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
.L266:
.L253:
	.sleb128	10
	.4byte		.L236
	.uleb128	108
	.uleb128	1
	.4byte		.L267-.L2
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
.L267:
.L250:
	.sleb128	10
	.4byte		.L236
	.uleb128	98
	.uleb128	1
	.4byte		.L268-.L2
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
.L268:
.L247:
	.sleb128	10
	.4byte		.L236
	.uleb128	87
	.uleb128	1
	.4byte		.L269-.L2
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
.L269:
	.section	.debug_info,,n
.L179:
	.sleb128	12
	.byte		"CanTp_Channel_t"
	.byte		0
	.4byte		.L180
	.section	.debug_info,,n
.L178:
	.sleb128	13
	.4byte		.L179
	.section	.debug_info,,n
.L177:
	.sleb128	14
	.4byte		.L178
	.section	.debug_info,,n
.L184:
	.sleb128	15
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L183:
	.sleb128	12
	.byte		"uint8"
	.byte		0
	.4byte		.L184
.L182:
	.sleb128	14
	.4byte		.L183
.L191:
	.sleb128	12
	.byte		"CanTp_RxNSduConfig_t"
	.byte		0
	.4byte		.L192
.L190:
	.sleb128	14
	.4byte		.L191
.L189:
	.sleb128	13
	.4byte		.L190
.L196:
	.sleb128	12
	.byte		"CanTp_RxNSduParams_t"
	.byte		0
	.4byte		.L197
.L195:
	.sleb128	13
	.4byte		.L196
.L219:
	.sleb128	12
	.byte		"CanTp_RxNSdu_t"
	.byte		0
	.4byte		.L220
.L218:
	.sleb128	14
	.4byte		.L219
.L217:
	.sleb128	13
	.4byte		.L218
.L225:
	.sleb128	12
	.byte		"CanTp_TxNSdu_t"
	.byte		0
	.4byte		.L226
.L224:
	.sleb128	14
	.4byte		.L225
.L223:
	.sleb128	13
	.4byte		.L224
.L231:
	.sleb128	12
	.byte		"CanTp_GeneralConfig_t"
	.byte		0
	.4byte		.L232
.L230:
	.sleb128	14
	.4byte		.L231
.L229:
	.sleb128	13
	.4byte		.L230
	.section	.debug_info,,n
.L234:
	.sleb128	16
	.4byte		.L235-.L2
	.4byte		.L182
	.section	.debug_info,,n
	.sleb128	17
	.uleb128	64
	.sleb128	0
.L235:
.L242:
	.sleb128	15
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L241:
	.sleb128	12
	.byte		"uint16"
	.byte		0
	.4byte		.L242
.L240:
	.sleb128	12
	.byte		"PduIdType"
	.byte		0
	.4byte		.L241
.L239:
	.sleb128	14
	.4byte		.L240
.L243:
	.sleb128	14
	.4byte		.L241
.L246:
	.sleb128	12
	.byte		"CanTp_AddressingMode_t"
	.byte		0
	.4byte		.L247
.L245:
	.sleb128	14
	.4byte		.L246
.L249:
	.sleb128	12
	.byte		"CanTp_Status_t"
	.byte		0
	.4byte		.L250
.L248:
	.sleb128	14
	.4byte		.L249
.L252:
	.sleb128	12
	.byte		"CanTp_TaType_t"
	.byte		0
	.4byte		.L253
.L251:
	.sleb128	14
	.4byte		.L252
.L255:
	.sleb128	12
	.byte		"CanTp_FrameType_t"
	.byte		0
	.4byte		.L256
.L254:
	.sleb128	14
	.4byte		.L255
.L260:
	.sleb128	12
	.byte		"PduLengthType"
	.byte		0
	.4byte		.L241
.L261:
	.sleb128	16
	.4byte		.L262-.L2
	.4byte		.L183
	.sleb128	17
	.uleb128	6
	.sleb128	0
.L262:
.L263:
	.sleb128	16
	.4byte		.L264-.L2
	.4byte		.L183
	.sleb128	17
	.uleb128	7
	.sleb128	0
.L264:
.L265:
	.sleb128	12
	.byte		"boolean"
	.byte		0
	.4byte		.L184
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L181:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locend
.L185:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo3),4
	.d2locreg	%offsetof(.Llo4), %offsetof(.Llo5),0
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo7),0
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo9),0
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo11),0
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo13),0
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo15),0
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo17),0
	.d2locend
.L187:
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo19),7
	.d2locend
.L193:
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo2),4
	.d2locend
.L198:
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo11),5
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo13),5
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo15),5
	.d2locend
.L200:
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo11),31
	.d2locend
.L206:
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo26),3
	.d2locend
.L212:
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo28),4
	.d2locend
.L214:
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo30),0
	.d2locreg	%offsetof(.Llo31), %offsetof(.Llo32),5
	.d2locreg	%offsetof(.Llo33), %offsetof(.Llo34),0
	.d2locreg	%offsetof(.Llo35), %offsetof(.Llo36),0
	.d2locreg	%offsetof(.Llo37), %offsetof(.Llo38),0
	.d2locreg	%offsetof(.Llo39), %offsetof(.Llo40),0
	.d2locreg	%offsetof(.Llo41), %offsetof(.Llo42),0
	.d2locreg	%offsetof(.Llo43), %offsetof(.Llo44),0
	.d2locreg	%offsetof(.Llo45), %offsetof(.Llo46),0
	.d2locreg	%offsetof(.Llo47), %offsetof(.Llo48),0
	.d2locreg	%offsetof(.Llo49), %offsetof(.Llo50),0
	.d2locreg	%offsetof(.Llo51), %offsetof(.Llo52),0
	.d2locreg	%offsetof(.Llo53), %offsetof(.Llo54),0
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "CanTp_PrepareTxDataFrame"
	.wrcm.nstrlist "calls", "CanTp_RequestTxBuffer"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "CanTp_PrepareFCFrame"
	.wrcm.nint32 "frameSize", 32
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanTp_DataPrepare.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanTp_DataPrepare.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanTp_DataPrepare.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanTp_DataPrepare.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanTp_DataPrepare.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanTp_DataPrepare.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\CanTp\ssc\make\..\src\CanTp_DataPrepare.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
