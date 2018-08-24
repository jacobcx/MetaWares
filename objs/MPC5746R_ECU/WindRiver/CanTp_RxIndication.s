#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"CanTp_RxIndication.c"
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
# static FUNC(boolean, CANTP_CODE) CanTp_LengthCheckPaddingOn
	.align		1
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTp\\ssc\\make\\..\\src\\CanTp_RxIndication.c"
        .d2line         450,34
#$$ld
.L248:

#$$bf	CanTp_LengthCheckPaddingOn,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
CanTp_LengthCheckPaddingOn:
.Llo1:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,36(r1)		# ByteOffset_u8=r0
	.d2_cfa_offset    108,-1
	mr		r3,r3		# CanTpRxPduPtr=r3 CanTpRxPduPtr=r3
	mr		r4,r4		# CanTpChannel_p=r4 CanTpChannel_p=r4
	mr		r0,r5		# ByteOffset_u8=r0 ByteOffset_u8=r5
	.d2prologue_end
# (
#     CONSTP2CONST(PduInfoType, AUTOMATIC, CANTP_APPL_CONST) CanTpRxPduPtr,
#     CONSTP2VAR(CanTp_Channel_t, AUTOMATIC, CANTP_APPL_DATA) CanTpChannel_p,
#     VAR(uint8, AUTOMATIC) ByteOffset_u8
# )
# {
#     /* Return Value used */
#     VAR(boolean, AUTOMATIC) RetVal_b = CANTP_TRUE;
	.d2line		458
.Llo14:
	diab.li		r31,1		# RetVal_b=r31
# 
#     /* DLC received from CanIf */
#     VAR(uint8, AUTOMATIC) dlc_u8 = (uint8) CanTpRxPduPtr->SduLength;
# 
# #if (CANTP_DEV_ERROR_DETECT == STD_ON)
#     /* Variable used to enable DET error reporting for the frame types */
#     VAR(boolean, AUTOMATIC) callDet = CANTP_FALSE;
	.d2line		465
.Llo15:
	diab.li		r30,0		# callDet=r30
# #endif
# 
#     /* Variable used to indicate that the channel should be stopped */
#     VAR(boolean, AUTOMATIC) stopChannel = CANTP_FALSE;
	.d2line		469
.Llo28:
	diab.li		r29,0
	.d2line		461
.Llo30:
	lhz		r7,4(r3)		# CanTpRxPduPtr=r3
.Llo26:
	mr		r7,r7		# dlc_u8=r7 dlc_u8=r7
# 
#     /* Variable used to determine frame type */
#     CONST(uint8, AUTOMATIC) pciType_u8 = (uint8) (CanTpRxPduPtr->SduDataPtr[ByteOffset_u8] & CANTP_UPPER_NIBBLE_MASK);
	.d2line		472
	lwz		r5,0(r3)		# CanTpRxPduPtr=r3
	rlwinm		r28,r0,0,24,31		# ByteOffset_u8=r0
	lbzux		r6,r5,r28		# pciType_u8=r6
.Llo33:
	rlwinm		r6,r6,0,24,27		# pciType_u8=r6 pciType_u8=r6
	mr		r6,r6		# pciType_u8=r6 pciType_u8=r6
#     CONST(uint8, AUTOMATIC) pciLowerNibble_u8 = (uint8) (CanTpRxPduPtr->SduDataPtr[ByteOffset_u8] & CANTP_LOWER_NIBBLE_MASK);
	.d2line		473
	lwz		r5,0(r3)		# CanTpRxPduPtr=r3
	lbzx		r5,r5,r28
	rlwinm		r5,r5,0,28,31
.Llo36:
	mr		r5,r5		# pciLowerNibble_u8=r5 pciLowerNibble_u8=r5
# 
#     switch (pciType_u8)
	.d2line		475
	rlwinm		r6,r6,0,24,31		# pciType_u8=r6 pciType_u8=r6
	se_cmpi		r6,0		# pciType_u8=r6
	bc		1,2,.L197	# eq
	se_cmpi		r6,16		# pciType_u8=r6
	bc		1,2,.L201	# eq
.Llo2:
	cmpi		0,0,r6,32		# pciType_u8=r6
	bc		1,2,.L202	# eq
	cmpi		0,0,r6,48		# pciType_u8=r6
	bc		1,2,.L207	# eq
.Llo34:
	b		.L208
.L197:
#     {
#         case CANTP_FRAME_SF:
#         {
#             /* Check if the frame uses long frame format */
#             if(pciLowerNibble_u8 == 0U)
	.d2line		480
.Llo3:
	rlwinm		r5,r5,0,24,31		# pciLowerNibble_u8=r5 pciLowerNibble_u8=r5
	se_cmpi		r5,0		# pciLowerNibble_u8=r5
	bc		0,2,.L198	# ne
	.section	.text_vle
.L280:
#             {
#                 /* If it is a long frame set the minimum dlc based on SF_DL */
#                 CONST(uint8, AUTOMATIC) sfDataLength = (uint8) CanTpRxPduPtr->SduDataPtr[CANTP_SF_LONG_PCI_OFFSET];
	.d2line		483
.Llo16:
	lwz		r3,0(r3)		# CanTpRxPduPtr=r3 CanTpRxPduPtr=r3
	lbz		r0,1(r3)		# ByteOffset_u8=r0 CanTpRxPduPtr=r3
.Llo37:
	mr		r0,r0		# sfDataLength=r0 sfDataLength=r0
#                 ByteOffset_u8 = CanTp_CanFrameNextValidLength[sfDataLength];
	.d2line		484
	lis		r3,CanTp_CanFrameNextValidLength@ha		# CanTpRxPduPtr=r3
	e_add16i		r3,r3,CanTp_CanFrameNextValidLength@l		# CanTpRxPduPtr=r3 CanTpRxPduPtr=r3
	rlwinm		r0,r0,0,24,31		# sfDataLength=r0 sfDataLength=r0
	lbzx		r0,r3,r0		# sfDataLength=r0 CanTpRxPduPtr=r3
.Llo17:
	mr		r0,r0		# ByteOffset_u8=r0 ByteOffset_u8=r0
	.section	.text_vle
.L281:
.Llo4:
	b		.L199
.L198:
#             }
#             else
#             {
#                 /* If it is a standard frame the minimum dlc is eight bytes */
#                 ByteOffset_u8 = CANTP_MAX_CAN20_LENGTH;
	.d2line		489
.Llo5:
	diab.li		r0,8		# ByteOffset_u8=r0
.L199:
#             }
# #if (CANTP_DEV_ERROR_DETECT == STD_ON)
#             callDet = CANTP_TRUE;
	.d2line		492
.Llo6:
	diab.li		r30,1		# callDet=r30
.Llo29:
	b		.L200
.L201:
# #endif
#             break;
#         }
# 
#         case CANTP_FRAME_FF:
#         {
#             /* FF should have eight bytes with N_PCI and data
#              * This check is enough for FFs with long PCI because of SWS_CanTp_00350 */
#             ByteOffset_u8 = CANTP_MAX_CAN20_LENGTH;
	.d2line		501
.Llo35:
	diab.li		r0,8		# ByteOffset_u8=r0
	b		.L200
.L202:
#             break;
#         }
# 
#         case CANTP_FRAME_CF:
#         {
#             /* Check if this is the last CF or not */
#             if(CANTP_CF_MAX_DATA(CanTpChannel_p->FrameSize, ByteOffset_u8) >=
	.d2line		508
.Llo18:
	lbz		r3,49(r4)		# CanTpRxPduPtr=r3 CanTpChannel_p=r4
.Llo7:
	subf		r0,r0,r3		# ByteOffset_u8=r0 ByteOffset_u8=r0 CanTpRxPduPtr=r3
	rlwinm		r0,r0,0,24,31		# ByteOffset_u8=r0 ByteOffset_u8=r0
	diab.li		r5,65535
	se_add		r0,r5		# ByteOffset_u8=r0 ByteOffset_u8=r0
	rlwinm		r5,r0,0,16,31		# ByteOffset_u8=r0
	lhz		r0,8(r4)		# ByteOffset_u8=r0 CanTpChannel_p=r4
	lhz		r3,10(r4)		# CanTpRxPduPtr=r3 CanTpChannel_p=r4
	subf		r3,r3,r0		# CanTpRxPduPtr=r3 CanTpRxPduPtr=r3 ByteOffset_u8=r0
	rlwinm		r3,r3,0,16,31		# CanTpRxPduPtr=r3 CanTpRxPduPtr=r3
	se_cmp		r5,r3		# CanTpRxPduPtr=r3
	bc		1,0,.L203	# lt
#                     (PduLengthType) (CanTpChannel_p->TotalLength - CanTpChannel_p->ProcessedLength))
#             {
#                 /* The dataLength of the last CF has to be at least eight bytes */
#                 ByteOffset_u8 = CANTP_MAX_CAN20_LENGTH;
	.d2line		512
.Llo8:
	diab.li		r0,8		# ByteOffset_u8=r0
#                 if(CANTP_MAX_CAN20_LENGTH >= dlc_u8)
	.d2line		513
.Llo19:
	rlwinm		r3,r7,0,24,31		# CanTpRxPduPtr=r3 dlc_u8=r7
.Llo9:
	se_cmpi		r3,8		# CanTpRxPduPtr=r3
	bc		1,1,.L200	# gt
#                 {
# #if (CANTP_DEV_ERROR_DETECT == STD_ON)
#                     callDet = CANTP_TRUE;
	.d2line		516
.Llo10:
	diab.li		r30,1		# callDet=r30
# #endif
#                     stopChannel = CANTP_TRUE;
	.d2line		518
	diab.li		r29,1
	b		.L200
.L203:
#                 }
#                 else
#                 {
#                     /* If it is a long frame, just drop it. Do not call DET */
#                 }
#             }
#             else
#             {
#                 /* The dataLength not the last CF has to be the the length of the FF */
#                 ByteOffset_u8 = CanTpChannel_p->FrameSize;
	.d2line		528
.Llo20:
	lbz		r0,49(r4)		# ByteOffset_u8=r0 CanTpChannel_p=r4
.Llo21:
	mr		r0,r0		# ByteOffset_u8=r0 ByteOffset_u8=r0
	b		.L200
.L207:
#             }
#             break;
#         }
# 
#         case CANTP_FRAME_FC:
#         {
#             /* FC data length should be 8 bytes when padding is on */
#             ByteOffset_u8 = CANTP_MAX_CAN20_LENGTH;
	.d2line		536
	diab.li		r0,8		# ByteOffset_u8=r0
# #if (CANTP_DEV_ERROR_DETECT == STD_ON)
#             callDet = CANTP_TRUE;
	.d2line		538
	diab.li		r30,1		# callDet=r30
# #endif
#             stopChannel = CANTP_TRUE;
	.d2line		540
	diab.li		r29,1
	b		.L200
.L208:
#             break;
#         }
# 
#         default:
#         {
#             /* Wrong N_PCI just ignore the frame */
#             RetVal_b = CANTP_FALSE;
	.d2line		547
.Llo23:
	diab.li		r31,0		# RetVal_b=r31
.L200:
#             break;
#         }
#     }
# 
#     if(ByteOffset_u8 > dlc_u8)
	.d2line		552
.Llo24:
	rlwinm		r0,r0,0,24,31		# ByteOffset_u8=r0 ByteOffset_u8=r0
.Llo27:
	rlwinm		r7,r7,0,24,31		# dlc_u8=r7 dlc_u8=r7
	se_cmp		r0,r7		# ByteOffset_u8=r0 dlc_u8=r7
	bc		0,1,.L209	# le
#     {
#         /* Return from the call as the provided data is corrupted */
#         RetVal_b = CANTP_FALSE;
	.d2line		555
.Llo22:
	diab.li		r31,0		# RetVal_b=r31
#         if(CANTP_TRUE == stopChannel)
	.d2line		556
.Llo31:
	rlwinm		r29,r29,0,24,31		# stopChannel=r29 stopChannel=r29
	se_cmpi		r29,1		# stopChannel=r29
	bc		0,2,.L211	# ne
#         {
#             CanTp_StopChannel(CanTpChannel_p, CANTP_FALSE, NTFRSLT_E_NOT_OK);
	.d2line		558
.Llo32:
	mr		r3,r4		# CanTpChannel_p=r3 CanTpChannel_p=r4
	diab.li		r4,0		# CanTpChannel_p=r4
.Llo11:
	diab.li		r5,1		# pciLowerNibble_u8=r5
	bl		CanTp_StopChannel
.L211:
#         }
#         else
#         {
#             /* Do nothing */
#         }
# #if (CANTP_DEV_ERROR_DETECT == STD_ON)
#         if(CANTP_TRUE == callDet)
	.d2line		565
.Llo12:
	rlwinm		r30,r30,0,24,31		# callDet=r30 callDet=r30
	se_cmpi		r30,1		# callDet=r30
	bc		0,2,.L209	# ne
#         {
#             /*Inform DET with the appropriate value*/
#             (void)Det_ReportError(CANTP_MODULE_ID, CANTP_INSTANCE_ID,
	.d2line		568
.Llo13:
	diab.li		r3,35		# CanTpChannel_p=r3
	diab.li		r4,0		# CanTpChannel_p=r4
	diab.li		r5,66		# pciLowerNibble_u8=r5
	diab.li		r6,112		# pciType_u8=r6
	bl		Det_ReportError
.L209:
#                     CANTP_ID_RXINDICATION, CANTP_E_PADDING);
#         }
#         else
#         {
#             /* Do nothing */
#         }
# #endif
# 
#     }
# 
#     /* return the status*/
#     return RetVal_b;
	.d2line		580
	rlwinm		r3,r31,0,24,31		# CanTpRxPduPtr=r3 RetVal_b=r31
# 
# }/* End of CanTp_LengthCheckPaddingOn() */
	.d2line		582
	.d2epilogue_begin
	lmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_restore_list	3,10
.Llo25:
	lwz		r0,36(r1)		# ByteOffset_u8=r0
	mtspr		lr,r0		# ByteOffset_u8=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L249:
	.type		CanTp_LengthCheckPaddingOn,@function
	.size		CanTp_LengthCheckPaddingOn,.-CanTp_LengthCheckPaddingOn
# Number of nodes = 161

# Allocations for CanTp_LengthCheckPaddingOn
#	?a4		CanTpRxPduPtr
#	?a5		CanTpChannel_p
#	?a6		ByteOffset_u8
#	?a7		RetVal_b
#	?a8		dlc_u8
#	?a9		callDet
#	?a10		stopChannel
#	?a11		pciType_u8
#	?a12		pciLowerNibble_u8
#	?a13		sfDataLength
# static FUNC(boolean, CANTP_CODE) CanTp_LengthCheckPaddingOff
	.align		1
	.section	.text_vle
        .d2line         597,34
#$$ld
.L288:

#$$bf	CanTp_LengthCheckPaddingOff,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r8,r31,cr0,xer,lr
	.d2_cfa_start __cie
CanTp_LengthCheckPaddingOff:
.Llo38:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# CanTpRxPduPtr=r3 CanTpRxPduPtr=r3
	mr		r4,r4		# CanTpChannel_p=r4 CanTpChannel_p=r4
	mr		r5,r5		# ByteOffset_u8=r5 ByteOffset_u8=r5
	.d2prologue_end
# (
#     CONSTP2CONST(PduInfoType, AUTOMATIC, CANTP_APPL_CONST) CanTpRxPduPtr,
#     CONSTP2CONST(CanTp_Channel_t, AUTOMATIC, CANTP_APPL_DATA) CanTpChannel_p,
#     VAR(uint8, AUTOMATIC) ByteOffset_u8
# )
# {
#     /* Variable used to determine frame type */
#     VAR(uint8, AUTOMATIC) PduInfoByte_u8;
# 
#     /* Variable to store SF_DL */
#     VAR(uint8, AUTOMATIC) SduDl_u8;
# 
#     /* Variable to store how much data bytes fits into the frame */
#     VAR(uint8, AUTOMATIC) MaxData_u8;
# 
#     /* Return Value used */
#     VAR(boolean, AUTOMATIC) RetVal_b = CANTP_TRUE;
	.d2line		614
.Llo54:
	diab.li		r7,1		# RetVal_b=r7
# 
#     /* DLC received from CanIf */
#     VAR(uint8, AUTOMATIC) dlc_u8 = (uint8) CanTpRxPduPtr->SduLength;
	.d2line		617
.Llo56:
	lhz		r0,4(r3)		# CanTpRxPduPtr=r3
.Llo59:
	mr		r0,r0		# dlc_u8=r0 dlc_u8=r0
# 
#     PduInfoByte_u8 = CanTpRxPduPtr->SduDataPtr[ByteOffset_u8];
	.d2line		619
	lwz		r6,0(r3)		# PduInfoByte_u8=r6 CanTpRxPduPtr=r3
.Llo49:
	rlwinm		r31,r5,0,24,31		# ByteOffset_u8=r5
	lbzux		r8,r6,r31		# PduInfoByte_u8=r8 PduInfoByte_u8=r6
	mr		r6,r8		# PduInfoByte_u8=r6 PduInfoByte_u8=r8
#     PduInfoByte_u8 = (uint8) (PduInfoByte_u8 & CANTP_UPPER_NIBBLE_MASK);
	.d2line		620
	rlwinm		r6,r6,0,24,27		# PduInfoByte_u8=r6 PduInfoByte_u8=r6
	mr		r8,r6		# PduInfoByte_u8=r8 PduInfoByte_u8=r6
# 
#     SduDl_u8 = CanTpRxPduPtr->SduDataPtr[ByteOffset_u8];
	.d2line		622
	lwz		r3,0(r3)		# CanTpRxPduPtr=r3 CanTpRxPduPtr=r3
	lbzx		r3,r3,r31		# CanTpRxPduPtr=r3 CanTpRxPduPtr=r3
.Llo39:
	mr		r3,r3		# SduDl_u8=r3 SduDl_u8=r3
# 
#     switch (PduInfoByte_u8)
	.d2line		624
	mr.		r6,r6		# PduInfoByte_u8=r6 PduInfoByte_u8=?a7
	bc		1,2,.L226	# eq
	se_cmpi		r6,16		# PduInfoByte_u8=r6
	bc		1,2,.L230	# eq
	cmpi		0,0,r6,32		# PduInfoByte_u8=r6
	bc		1,2,.L231	# eq
	cmpi		0,0,r6,48		# PduInfoByte_u8=r6
	bc		1,2,.L234	# eq
.Llo44:
	b		.L235
.L226:
#     {
#         case CANTP_FRAME_SF:
#         {
#             /* Maximum data length that can be stored in SF */
#             MaxData_u8 = CANTP_SF_SHORT_MAX_DATA(ByteOffset_u8);
	.d2line		629
	subfic		r4,r5,7		# MaxData_u8=r4 ByteOffset_u8=r5
	mr		r4,r4		# MaxData_u8=r4 MaxData_u8=r4
#             /* Check for too big SF_DL value */
#             if(SduDl_u8 > MaxData_u8)
	.d2line		631
	rlwinm		r6,r3,0,24,31		# PduInfoByte_u8=r6 SduDl_u8=r3
.Llo50:
	rlwinm		r4,r4,0,24,31		# MaxData_u8=r4 MaxData_u8=r4
	se_cmp		r6,r4		# PduInfoByte_u8=r6 MaxData_u8=r4
	bc		1,1,.L229	# gt
#             {
#                 /* Do not throw away the frame just yet
#                  * Error is reported to DET later in CanTp_IndProcessxF() */
#             }
#             /* Valid SF DLC is minimum 0/1 (N_AE) + 1 (N_PCI) + SF_DL bytes */
#             else
#             {
#                 /* ByteOffset is set to minimum DLC value */
#                 ByteOffset_u8 = (uint8) (ByteOffset_u8 + CANTP_BUFFER_OFFSET_ONE) + SduDl_u8;
	.d2line		640
.Llo51:
	se_add		r3,r5		# ByteOffset_u8=r3 ByteOffset_u8=r3 SduDl_u8=r5
	se_addi		r3,1		# ByteOffset_u8=r3 ByteOffset_u8=r3
	mr		r5,r3		# ByteOffset_u8=r5 ByteOffset_u8=r3
	b		.L229
.L230:
#             }
#             break;
#         }
#         case CANTP_FRAME_FF:
#         {
#             /* FF should have eight bytes with N_PCI and data */
#             ByteOffset_u8 = CANTP_MAX_CAN20_LENGTH;
	.d2line		647
.Llo45:
	diab.li		r5,8		# ByteOffset_u8=r5
	b		.L229
.L231:
#             break;
#         }
#         case CANTP_FRAME_CF:
#         {
#             /* Maximum data length of a CF */
#             MaxData_u8 = CANTP_SF_SHORT_MAX_DATA(ByteOffset_u8);
	.d2line		653
.Llo52:
	subfic		r31,r5,7		# MaxData_u8=r31 ByteOffset_u8=r5
	mr		r31,r31		# MaxData_u8=r31 MaxData_u8=r31
# 
#             /* Check if there are less remaining bytes than the maximum CF Sdu length */
#             if((PduLengthType) MaxData_u8 >= (PduLengthType) (CanTpChannel_p->TotalLength - CanTpChannel_p->ProcessedLength))
	.d2line		656
	rlwinm		r31,r31,0,24,31		# MaxData_u8=r31 MaxData_u8=r31
	lhz		r3,8(r4)		# CanTpRxPduPtr=r3 CanTpChannel_p=r4
.Llo40:
	lhz		r6,10(r4)		# PduInfoByte_u8=r6 CanTpChannel_p=r4
.Llo53:
	subf		r6,r6,r3		# PduInfoByte_u8=r6 PduInfoByte_u8=r6 CanTpRxPduPtr=r3
	rlwinm		r6,r6,0,16,31		# PduInfoByte_u8=r6 PduInfoByte_u8=r6
	se_cmp		r31,r6		# MaxData_u8=r31 PduInfoByte_u8=r6
	bc		1,0,.L232	# lt
#             {
#                 /* It is the last CF of the message with MaxData bytes */
#                 MaxData_u8 = (uint8) (CanTpChannel_p->TotalLength - CanTpChannel_p->ProcessedLength);
	.d2line		659
.Llo41:
	lhz		r3,8(r4)		# CanTpRxPduPtr=r3 CanTpChannel_p=r4
.Llo42:
	lhz		r4,10(r4)		# CanTpChannel_p=r4 CanTpChannel_p=r4
	subf		r4,r4,r3		# CanTpChannel_p=r4 CanTpChannel_p=r4 CanTpRxPduPtr=r3
.Llo46:
	mr		r4,r4		# MaxData_u8=r4 MaxData_u8=r4
#                 /* DLC should have at least 0/1 (N_AE) + 1 (N_PCI) + remaining bytes */
#                 ByteOffset_u8 = (uint8) (ByteOffset_u8 + CANTP_CF_PCI_LENGTH) + MaxData_u8;
	.d2line		661
	se_add		r4,r5		# ByteOffset_u8=r4 ByteOffset_u8=r4 MaxData_u8=r5
	se_addi		r4,1		# ByteOffset_u8=r4 ByteOffset_u8=r4
	mr		r5,r4		# ByteOffset_u8=r5 ByteOffset_u8=r4
	b		.L229
.L232:
#             }
#             else
#             {
#                 /* If not the last CF - DLC should be eight */
#                 ByteOffset_u8 = CANTP_MAX_CAN20_LENGTH;
	.d2line		666
.Llo43:
	diab.li		r5,8		# ByteOffset_u8=r5
	b		.L229
.L234:
#             }
#             break;
#         }
#         case CANTP_FRAME_FC:
#         {
#             /*FC should have 3 bytes with N_PCI */
#             ByteOffset_u8 = ByteOffset_u8 + CANTP_BUFFER_INDEX_THREE;
	.d2line		673
.Llo47:
	diab.addi		r3,r5,3		# CanTpRxPduPtr=r3 ByteOffset_u8=r5
	se_addi		r5,3		# ByteOffset_u8=r5 ByteOffset_u8=r5
	b		.L229
.L235:
#             break;
#         }
#         default:
#         {
#             /* Wrong N_PCI just ignore the frame */
#             RetVal_b = CANTP_FALSE;
	.d2line		679
.Llo57:
	diab.li		r7,0		# RetVal_b=r7
.L229:
#             break;
#         }
#     }
# 
#     if(ByteOffset_u8 > dlc_u8)
	.d2line		684
.Llo58:
	rlwinm		r5,r5,0,24,31		# ByteOffset_u8=r5 ByteOffset_u8=r5
.Llo55:
	rlwinm		r0,r0,0,24,31		# dlc_u8=r0 dlc_u8=r0
	se_cmp		r5,r0		# ByteOffset_u8=r5 dlc_u8=r0
#     {
#         /* Return from the call as the provided data is corrupted */
#         RetVal_b = CANTP_FALSE;
	.d2line		687
	isel		r3,0,r7,1		# RetVal_b=r3 RetVal_b=r7
.L237:
#     }
#     else
#     {
#         /* Do Nothing it is as per the configuration */
#     }
# 
#     /* return the status*/
#     return RetVal_b;
	.d2line		695
.Llo48:
	rlwinm		r3,r3,0,24,31		# RetVal_b=r3 RetVal_b=r3
# 
# }/* End of CanTp_LengthCheckPaddingOff() */
	.d2line		697
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# dlc_u8=r0
	mtspr		lr,r0		# dlc_u8=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L289:
	.type		CanTp_LengthCheckPaddingOff,@function
	.size		CanTp_LengthCheckPaddingOff,.-CanTp_LengthCheckPaddingOff
# Number of nodes = 119

# Allocations for CanTp_LengthCheckPaddingOff
#	?a4		CanTpRxPduPtr
#	?a5		CanTpChannel_p
#	?a6		ByteOffset_u8
#	?a7		PduInfoByte_u8
#	?a8		SduDl_u8
#	?a9		MaxData_u8
#	?a10		RetVal_b
#	?a11		dlc_u8
# static FUNC(void, CANTP_CODE) CanTp_ProcessRxPdu
	.align		1
	.section	.text_vle
        .d2line         235,31
#$$ld
.L309:

#$$bf	CanTp_ProcessRxPdu,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
CanTp_ProcessRxPdu:
.Llo60:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr
	stmw		r27,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	27,31,1,1
	stw		r0,52(r1)		# RxLookupIdx=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# RxLookupIdx=r0 RxLookupIdx=r3
	mr		r31,r4		# BufferOffset_u8=r31 BufferOffset_u8=r4
	mr		r30,r5		# CanTpRxPduPtr=r30 CanTpRxPduPtr=r5
	.d2prologue_end
# (
#     CONST(PduIdType, AUTOMATIC) RxLookupIdx,
#     CONST(uint8, AUTOMATIC) BufferOffset_u8,
#     CONSTP2CONST(PduInfoType, AUTOMATIC, CANTP_APPL_DATA) CanTpRxPduPtr
# )
# {
#     /*Variable used for channel identification*/
#     VAR(uint8, AUTOMATIC) Channel_u8;
#     /*Return value used for function returns*/
#     VAR(boolean, AUTOMATIC) RetVal_b;
#     /*Padding activation*/
#     VAR(CanTp_Status_t, AUTOMATIC) NSduPadding_b;
#     /*Added temp variable to store the new pduIndex*/
#     VAR(PduIdType, AUTOMATIC) NSduIdx;
#     /*Channel pointer for the LengthCheck*/
#     P2VAR(CanTp_Channel_t, AUTOMATIC, CANTP_APPL_DATA) CanTpChannel_p;
# 
#     /*Taking the new pduIndex*/
#     NSduIdx = CanTp_RxLookup_p[RxLookupIdx].PduIndex;
	.d2line		254
	rlwinm		r0,r0,0,16,31		# RxLookupIdx=r0 RxLookupIdx=r0
.Llo61:
	lis		r3,CanTp_RxLookup_p@ha
.Llo62:
	lwz		r4,CanTp_RxLookup_p@l(r3)
.Llo84:
	rlwinm		r5,r0,4,0,27		# RxLookupIdx=r0
.Llo85:
	se_slwi		r0,2		# RxLookupIdx=r0 RxLookupIdx=r0
	subf		r0,r0,r5		# RxLookupIdx=r0 RxLookupIdx=r0
	lhzx		r28,r4,r0
.Llo101:
	mr		r28,r28		# NSduIdx=r28 NSduIdx=r28
# 
#     /* Copy Channel Id */
#     if(CANTP_RECEIVE == CanTp_RxLookup_p[RxLookupIdx].Direction_b)
	.d2line		257
	lwz		r3,CanTp_RxLookup_p@l(r3)
	se_add		r3,r0		# RxLookupIdx=r0
	lbz		r0,9(r3)		# RxLookupIdx=r0
	se_cmpi		r0,0		# RxLookupIdx=r0
	bc		0,2,.L149	# ne
#     {
#         /* Copy Channel Id */
#         Channel_u8 = CanTp_RxNSdu_p[NSduIdx].CanTpRxChannel_u8;
	.d2line		260
.Llo63:
	rlwinm		r0,r28,0,16,31		# RxLookupIdx=r0 NSduIdx=r28
.Llo64:
	lis		r3,CanTp_RxNSdu_p@ha
	lwz		r4,CanTp_RxNSdu_p@l(r3)
	rlwinm		r5,r0,5,0,26		# RxLookupIdx=r0
	se_slwi		r0,3		# RxLookupIdx=r0 RxLookupIdx=r0
	subf		r0,r0,r5		# RxLookupIdx=r0 RxLookupIdx=r0
	se_add		r4,r0		# RxLookupIdx=r0
	lbz		r29,4(r4)
.Llo86:
	mr		r29,r29		# Channel_u8=r29 Channel_u8=r29
#         NSduPadding_b = CanTp_RxNSdu_p[NSduIdx].CanTpRxPaddingActivation;
	.d2line		261
	lwz		r4,CanTp_RxNSdu_p@l(r3)
	se_add		r4,r0		# RxLookupIdx=r0
	lwz		r5,8(r4)
.Llo96:
	mr		r5,r5		# NSduPadding_b=r5 NSduPadding_b=r5
	b		.L150
.L149:
#     }
#     else
#     {
#         /* Copy Channel Id */
#         Channel_u8 = CanTp_TxNSdu_p[NSduIdx].CanTpTxChannel_u8;
	.d2line		266
.Llo65:
	rlwinm		r0,r28,0,16,31		# RxLookupIdx=r0 NSduIdx=r28
.Llo66:
	lis		r3,CanTp_TxNSdu_p@ha
	lwz		r4,CanTp_TxNSdu_p@l(r3)
	rlwinm		r5,r0,5,0,26		# RxLookupIdx=r0
	se_slwi		r0,2		# RxLookupIdx=r0 RxLookupIdx=r0
	subf		r0,r0,r5		# RxLookupIdx=r0 RxLookupIdx=r0
	se_add		r4,r0		# RxLookupIdx=r0
	lbz		r29,4(r4)
.Llo87:
	mr		r29,r29		# Channel_u8=r29 Channel_u8=r29
#         NSduPadding_b = CanTp_TxNSdu_p[NSduIdx].CanTpTxPaddingActivation;
	.d2line		267
	lwz		r4,CanTp_TxNSdu_p@l(r3)
	se_add		r4,r0		# RxLookupIdx=r0
	lwz		r5,8(r4)
.Llo97:
	mr		r5,r5		# NSduPadding_b=r5 NSduPadding_b=r5
.L150:
#     }
# 
#     CanTpChannel_p = &CanTp_ChannelList_p[Channel_u8];
	.d2line		270
.Llo67:
	lis		r3,CanTp_ChannelList_p@ha
	lwz		r27,CanTp_ChannelList_p@l(r3)
	rlwinm		r3,r29,0,24,31		# Channel_u8=r29
	e_mulli		r3,r3,52
	se_add		r3,r27
.Llo102:
	mr		r27,r3		# CanTpChannel_p=r27 CanTpChannel_p=r3
# 
#     /* The CAN 2.0 frames can't be longer than 8 and no frame can be longer than 64*/
#     if(((CanTp_RxNSdu_p[NSduIdx].FrameType == CANTP_FRAME_TYPE_CAN20) &&
	.d2line		273
	rlwinm		r0,r28,0,16,31		# RxLookupIdx=r0 NSduIdx=r28
.Llo68:
	lis		r3,CanTp_RxNSdu_p@ha
.Llo103:
	lwz		r3,CanTp_RxNSdu_p@l(r3)
	rlwinm		r4,r0,5,0,26		# RxLookupIdx=r0
	se_slwi		r0,3		# RxLookupIdx=r0 RxLookupIdx=r0
	subf		r0,r0,r4		# RxLookupIdx=r0 RxLookupIdx=r0
	se_add		r3,r0		# RxLookupIdx=r0
	lwz		r0,20(r3)		# RxLookupIdx=r0
	se_cmpi		r0,0		# RxLookupIdx=r0
	bc		0,2,.L160	# ne
.Llo69:
	lhz		r0,4(r30)		# RxLookupIdx=r0 CanTpRxPduPtr=r30
.Llo70:
	se_cmpi		r0,8		# RxLookupIdx=r0
	bc		1,1,.L159	# gt
.L160:
.Llo71:
	lhz		r0,4(r30)		# RxLookupIdx=r0 CanTpRxPduPtr=r30
.Llo72:
	cmpi		0,0,r0,64		# RxLookupIdx=r0
	bc		0,1,.L151	# le
.L159:
#                     (CanTpRxPduPtr->SduLength > (PduLengthType) CANTP_MAX_CAN20_LENGTH)) ||
#             (CanTpRxPduPtr->SduLength > (PduLengthType) CANTP_MAX_CANFD_LENGTH))
#     {
#         RetVal_b = CANTP_FALSE;
	.d2line		277
.Llo73:
	diab.li		r3,0		# RetVal_b=r3
.Llo88:
	b		.L152
.L151:
#     }
#     /* The frames which are longer than 8 byte must have valid length (discrete value).
#      * The used CanTp_CanFrameNextValidLength table provides the same length for frames
#      * which are shorter than or equal to 8. This is checked separately to avoid index out of bounds.*/
#     else if((PduLengthType) CanTp_CanFrameNextValidLength[CanTpRxPduPtr->SduLength] != CanTpRxPduPtr->SduLength)
	.d2line		282
.Llo89:
	lis		r3,CanTp_CanFrameNextValidLength@ha
	e_add16i		r3,r3,CanTp_CanFrameNextValidLength@l
	lhz		r0,4(r30)		# RxLookupIdx=r0 CanTpRxPduPtr=r30
.Llo74:
	lbzux		r4,r3,r0
	se_cmp		r4,r0		# RxLookupIdx=r0
	bc		1,2,.L153	# eq
#     {
#         RetVal_b = CANTP_FALSE;
	.d2line		284
.Llo75:
	diab.li		r3,0		# RetVal_b=r3
.Llo90:
	b		.L152
.L153:
#     }
# 
#     /* Data length check only needed if the nsdu passed the previous check */
#     else if((CANTP_OFF == NSduPadding_b) &&
	.d2line		288
.Llo91:
	se_cmpi		r5,0		# NSduPadding_b=r5
	bc		0,2,.L155	# ne
.Llo98:
	lhz		r0,4(r30)		# RxLookupIdx=r0 CanTpRxPduPtr=r30
.Llo76:
	se_cmpi		r0,8		# RxLookupIdx=r0
	bc		1,1,.L155	# gt
#             ((PduLengthType) CANTP_MAX_CAN20_LENGTH >= CanTpRxPduPtr->SduLength))
#     {
#         RetVal_b = CanTp_LengthCheckPaddingOff(CanTpRxPduPtr, CanTpChannel_p, BufferOffset_u8);
	.d2line		291
.Llo77:
	mr		r3,r30		# CanTpRxPduPtr=r3 CanTpRxPduPtr=r30
	mr		r5,r31		# BufferOffset_u8=r5 BufferOffset_u8=r31
	mr		r4,r27		# CanTpChannel_p=r4 CanTpChannel_p=r27
	bl		CanTp_LengthCheckPaddingOff
.Llo92:
	mr		r3,r3		# RetVal_b=r3 RetVal_b=r3
	b		.L152
.L155:
#     }
#     else
#     {
#         RetVal_b = CanTp_LengthCheckPaddingOn(CanTpRxPduPtr, CanTpChannel_p, BufferOffset_u8);
	.d2line		295
.Llo93:
	mr		r3,r30		# CanTpRxPduPtr=r3 CanTpRxPduPtr=r30
	mr		r5,r31		# BufferOffset_u8=r5 BufferOffset_u8=r31
	mr		r4,r27		# CanTpChannel_p=r4 CanTpChannel_p=r27
	bl		CanTp_LengthCheckPaddingOn
.Llo94:
	mr		r3,r3		# RetVal_b=r3 RetVal_b=r3
.L152:
#     }
# 
#     if(CANTP_FALSE != RetVal_b)
	.d2line		298
	rlwinm		r3,r3,0,24,31		# RetVal_b=r3 RetVal_b=r3
	se_cmpi		r3,0		# RetVal_b=r3
	bc		1,2,.L148	# eq
#     {
#         /*Enter Critical Section*/
#         CanTp_Enter_Area(Channel_u8);
	.d2line		301
.Llo95:
	rlwinm		r3,r29,0,24,31		# RetVal_b=r3 Channel_u8=r29
	bl		CanTp_Enter_Area
# 
# #if (CANTP_DEV_ERROR_DETECT == STD_ON)
#         /* Save the caller Id in a global variable */
#         CanTpChannel_p->CallerApiId = CANTP_ID_RXINDICATION;
	.d2line		305
	diab.li		r0,66		# RxLookupIdx=r0
.Llo78:
	stb		r0,48(r27)		# CanTpChannel_p=r27 RxLookupIdx=r0
# #endif
# 
#         /* The channel processing runs in critical section */
#         CanTpChannel_p->CriticalSectionStatus_b = CANTP_TRUE;
	.d2line		309
	diab.li		r0,1		# RxLookupIdx=r0
	stb		r0,50(r27)		# CanTpChannel_p=r27 RxLookupIdx=r0
# 
#         /*Copy the Channel address with Offset*/
#         CanTp_IntRxInd(NSduIdx, &CanTpRxPduPtr->SduDataPtr[BufferOffset_u8],
	.d2line		312
	lhz		r0,4(r30)		# RxLookupIdx=r0 CanTpRxPduPtr=r30
	subf		r5,r31,r0		# NSduPadding_b=r5 BufferOffset_u8=r31 RxLookupIdx=r0
.Llo99:
	rlwinm		r5,r5,0,24,31		# NSduPadding_b=r5 NSduPadding_b=r5
.Llo100:
	lwz		r4,0(r30)		# CanTpRxPduPtr=r30
	rlwinm		r31,r31,0,24,31		# BufferOffset_u8=r31 BufferOffset_u8=r31
	se_add		r4,r31		# BufferOffset_u8=r31
	rlwinm		r3,r28,0,16,31		# RetVal_b=r3 NSduIdx=r28
	mr		r6,r27		# CanTpChannel_p=r6 CanTpChannel_p=r27
	bl		CanTp_IntRxInd
#                 (uint8) CanTpRxPduPtr->SduLength - BufferOffset_u8, CanTpChannel_p);
# 
#         /* If channel processing still runs in exclusive area */
#         if(CANTP_TRUE == CanTpChannel_p->CriticalSectionStatus_b)
	.d2line		316
.Llo79:
	lbz		r0,50(r27)		# RxLookupIdx=r0 CanTpChannel_p=r27
.Llo80:
	se_cmpi		r0,1		# RxLookupIdx=r0
	bc		0,2,.L148	# ne
#         {
#             /* The channel processing is leaving critical section */
#             CanTpChannel_p->CriticalSectionStatus_b = CANTP_FALSE;
	.d2line		319
.Llo81:
	diab.li		r0,0		# RxLookupIdx=r0
.Llo82:
	stb		r0,50(r27)		# CanTpChannel_p=r27 RxLookupIdx=r0
# 
#             /*Exit Critical Section*/
#             CanTp_Exit_Area(Channel_u8);
	.d2line		322
	rlwinm		r3,r29,0,24,31		# RetVal_b=r3 Channel_u8=r29
	bl		CanTp_Exit_Area
.L148:
#         }
#     }
# }/* End of CanTp_ProcessRxPdu() */
	.d2line		325
	.d2epilogue_begin
.Llo83:
	lmw		r27,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,52(r1)		# RxLookupIdx=r0
	mtspr		lr,r0		# RxLookupIdx=lr
	diab.addi		r1,r1,48		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L310:
	.type		CanTp_ProcessRxPdu,@function
	.size		CanTp_ProcessRxPdu,.-CanTp_ProcessRxPdu
# Number of nodes = 218

# Allocations for CanTp_ProcessRxPdu
#	?a4		RxLookupIdx
#	?a5		BufferOffset_u8
#	?a6		CanTpRxPduPtr
#	?a7		$$39
#	?a8		$$38
#	?a9		$$37
#	?a10		$$36
#	?a11		$$35
#	?a12		$$34
#	?a13		$$33
#	?a14		Channel_u8
#	?a15		RetVal_b
#	?a16		NSduPadding_b
#	?a17		NSduIdx
#	?a18		CanTpChannel_p
# static FUNC(boolean, CANTP_CODE) CanTp_FindPdu
	.align		1
	.section	.text_vle
        .d2line         340,34
#$$ld
.L333:

#$$bf	CanTp_FindPdu,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r28,r29,r30,r31,cr0,lr
	.d2_cfa_start __cie
CanTp_FindPdu:
.Llo104:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# IPduId_p=r3 IPduId_p=r3
	mr		r4,r4		# BufferOffset_u8=r4 BufferOffset_u8=r4
	mr		r30,r5		# RxFrameType_u8=r30 RxFrameType_u8=r5
.Llo106:
	mr		r0,r6		# N_sa_ae_u8=r0 N_sa_ae_u8=r6
	.d2prologue_end
# (
#     CONSTP2VAR(PduIdType, AUTOMATIC, CANTP_APPL_DATA) IPduId_p,
#     CONST(uint8, AUTOMATIC) BufferOffset_u8,
#     CONST(uint8, AUTOMATIC) RxFrameType_u8,
#     CONST(uint8, AUTOMATIC) N_sa_ae_u8
# )
# {
#     /* Variable to check whether the Pdu is found */
#     VAR(boolean, AUTOMATIC) PduExecutedFlag_b = CANTP_FALSE;
	.d2line		349
.Llo107:
	diab.li		r7,0		# PduExecutedFlag_b=r7
# 
#     /* Direction of the Frame */
#     VAR(boolean, AUTOMATIC) FrameDirection_b = CANTP_RECEIVE;
	.d2line		352
.Llo116:
	diab.li		r31,0
# 
#     /* Return Value */
#     VAR(boolean, AUTOMATIC) RetVal_b = CANTP_TRUE;
	.d2line		355
.Llo117:
	diab.li		r5,1		# RetVal_b=r5
# 
#     /* Assign direction based upon the frame type*/
#     switch (RxFrameType_u8)
	.d2line		358
.Llo118:
	rlwinm		r6,r30,0,24,31		# RxFrameType_u8=r30
.Llo115:
	se_cmpi		r6,0
	bc		1,2,.L173	# eq
.Llo108:
	se_cmpi		r6,16
	bc		1,2,.L173	# eq
	cmpi		0,0,r6,32
	bc		1,2,.L173	# eq
	cmpi		0,0,r6,48
	bc		1,2,.L175	# eq
	b		.L176
.L173:
#     {
#         case CANTP_FRAME_SF:
#         case CANTP_FRAME_CF:
#         case CANTP_FRAME_FF:
#         {
#             /* SF FF and CF corresponds to Receive direction */
#             FrameDirection_b = CANTP_RECEIVE;
	.d2line		365
	diab.li		r31,0		# FrameDirection_b=r31
	b		.L177
.L175:
#             break;
#         }
#         case CANTP_FRAME_FC:
#         {
#             /*FC corresponds to Transmit direction */
#             FrameDirection_b = CANTP_TRANSMIT;
	.d2line		371
	diab.li		r31,1		# FrameDirection_b=r31
	b		.L177
.L176:
#             break;
#         }
#         default:
#         {
#             /*Wrong N_PCI just ignore the frame*/
#             RetVal_b = CANTP_FALSE;
	.d2line		377
.Llo119:
	diab.li		r5,0		# RetVal_b=r5
.L177:
#             break;
#         }
#     }
# 
#     while((CANTP_TRUE == RetVal_b) && (CANTP_FALSE == PduExecutedFlag_b))
	.d2line		382
.Llo120:
	rlwinm		r6,r5,0,24,31		# RetVal_b=r5
	se_cmpi		r6,1
	bc		0,2,.L178	# ne
	rlwinm		r6,r7,0,24,31		# PduExecutedFlag_b=r7
	se_cmpi		r6,0
	bc		0,2,.L178	# ne
#     {
#         /* Check for Direction and N_SA */
#         if(FrameDirection_b == CanTp_RxLookup_p[*IPduId_p].Direction_b)
	.d2line		385
	lhz		r30,0(r3)		# RxFrameType_u8=r30 IPduId_p=r3
.Llo109:
	rlwinm		r29,r31,0,24,31		# FrameDirection_b=r31
	lis		r6,CanTp_RxLookup_p@ha
	lwz		r6,CanTp_RxLookup_p@l(r6)
	rlwinm		r28,r30,4,0,27		# RxFrameType_u8=r30
	se_slwi		r30,2		# RxFrameType_u8=r30 RxFrameType_u8=r30
	subf		r30,r30,r28		# RxFrameType_u8=r30 RxFrameType_u8=r30
	se_add		r6,r30		# RxFrameType_u8=r30
	lbz		r6,9(r6)
	se_cmp		r29,r6
	bc		0,2,.L184	# ne
#         {
#             /* Check whether it is of extended format*/
#             if(CANTP_BUFFER_OFFSET_ONE == BufferOffset_u8)
	.d2line		388
.Llo110:
	rlwinm		r6,r4,0,24,31		# BufferOffset_u8=r4
	se_cmpi		r6,1
	bc		0,2,.L180	# ne
#             {
#                 if(N_sa_ae_u8 == CanTp_RxLookup_p[*IPduId_p].N_SA_AE_u8)
	.d2line		390
	lhz		r30,0(r3)		# RxFrameType_u8=r30 IPduId_p=r3
.Llo111:
	rlwinm		r29,r0,0,24,31		# N_sa_ae_u8=r0
	lis		r6,CanTp_RxLookup_p@ha
	lwz		r6,CanTp_RxLookup_p@l(r6)
	rlwinm		r28,r30,4,0,27		# RxFrameType_u8=r30
	se_slwi		r30,2		# RxFrameType_u8=r30 RxFrameType_u8=r30
	subf		r30,r30,r28		# RxFrameType_u8=r30 RxFrameType_u8=r30
	se_add		r6,r30		# RxFrameType_u8=r30
	lbz		r6,8(r6)
	se_cmp		r29,r6
	bc		0,2,.L184	# ne
#                 {
#                     /* Found the PduId */
#                     PduExecutedFlag_b = CANTP_TRUE;
	.d2line		393
.Llo112:
	diab.li		r7,1		# PduExecutedFlag_b=r7
	b		.L184
.L180:
#                 }
#                 else
#                 {
#                     /* Do Nothing */
#                 }
#             }
#             else
#             {
#                 /* Found the PduId */
#                 PduExecutedFlag_b = CANTP_TRUE;
	.d2line		403
	diab.li		r7,1		# PduExecutedFlag_b=r7
.L184:
#             }
#         }
#         else
#         {
#             /* Do Nothing */
#         }
# 
#         if(CANTP_FALSE == PduExecutedFlag_b)
	.d2line		411
	rlwinm		r6,r7,0,24,31		# PduExecutedFlag_b=r7
	se_cmpi		r6,0
	bc		0,2,.L177	# ne
#         {
#             /*Check with the next N_SA of the same *IPduId_p*/
#             *IPduId_p = CanTp_RxLookup_p[*IPduId_p].NextPdu;
	.d2line		414
	lhz		r30,0(r3)		# RxFrameType_u8=r30 IPduId_p=r3
.Llo113:
	lis		r6,CanTp_RxLookup_p@ha
	lwz		r29,CanTp_RxLookup_p@l(r6)
	rlwinm		r6,r30,4,0,27		# RxFrameType_u8=r30
	se_slwi		r30,2		# RxFrameType_u8=r30 RxFrameType_u8=r30
	subf		r30,r30,r6		# RxFrameType_u8=r30 RxFrameType_u8=r30
	se_add		r30,r29		# RxFrameType_u8=r30 RxFrameType_u8=r30
	lhz		r6,2(r30)		# RxFrameType_u8=r30
	sth		r6,0(r3)		# IPduId_p=r3
# 
#             if((PduIdType) CANTP_GENERAL_ZERO == *IPduId_p)
	.d2line		416
	mr.		r6,r6
	bc		0,2,.L177	# ne
#             {
#                 /*Reached the end of N_SA checking but didn't find the match*/
#                 RetVal_b = CANTP_FALSE;
	.d2line		419
.Llo114:
	diab.li		r5,0		# RetVal_b=r5
	b		.L177
.L178:
#             }
#             else
#             {
#                 /* Do nothing */
#             }
#         }
#         else
#         {
#             /* Got the Pdu match - Do Nothing */
#         }
#     }
# 
#     return RetVal_b;
	.d2line		432
.Llo105:
	rlwinm		r3,r5,0,24,31		# IPduId_p=r3 RetVal_b=r5
# }/* End of CanTp_FindPdu() */
	.d2line		433
	.d2epilogue_begin
	lmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# N_sa_ae_u8=r0
	mtspr		lr,r0		# N_sa_ae_u8=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo121:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L334:
	.type		CanTp_FindPdu,@function
	.size		CanTp_FindPdu,.-CanTp_FindPdu
# Number of nodes = 98

# Allocations for CanTp_FindPdu
#	?a4		IPduId_p
#	?a5		BufferOffset_u8
#	?a6		RxFrameType_u8
#	?a7		N_sa_ae_u8
#	?a8		$$42
#	?a9		$$41
#	?a10		$$40
#	?a11		PduExecutedFlag_b
#	?a12		FrameDirection_b
#	?a13		RetVal_b
# FUNC(void, CANTP_CODE) CanTp_RxIndication
	.align		2
	.section	.text_vle
        .d2line         111,24
#$$ld
.L350:

#$$bf	CanTp_RxIndication,interprocedural,rasave,nostackparams
	.globl		CanTp_RxIndication
	.d2_cfa_start __cie
CanTp_RxIndication:
.Llo122:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
.Llo129:
	stmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,36(r1)		# AllOkFlag_b=r0
	.d2_cfa_offset    108,-1
	mr		r31,r3		# CanTpRxPduId=r31 CanTpRxPduId=r3
	mr		r30,r4		# CanTpRxPduPtr=r30 CanTpRxPduPtr=r4
	.d2prologue_end
# (
#     /* PRQA S 3227 4 *//* API is defined as the standard specified (no const)*/
#     VAR(PduIdType, AUTOMATIC) CanTpRxPduId,
#     /* PRQA S 3673 1 *//* MISRA RULE 16.7 VIOLATION: API is defined as the standard specified */
#     P2CONST(PduInfoType, AUTOMATIC, CANTP_APPL_CONST) CanTpRxPduPtr
# )
# {
#     /*Variable used for temporary PduId*/
#     VAR(PduIdType, AUTOMATIC) TempIPduId;
#     /*Variable used for Buffer Offset*/
#     VAR(uint8, AUTOMATIC) BufferOffset_u8 = CANTP_GENERAL_ZERO;
	.d2line		122
	diab.li		r29,0		# BufferOffset_u8=r29
#     /*Variable for error checking*/
#     VAR(boolean, AUTOMATIC) AllOkFlag_b = CANTP_TRUE; /* PRQA S 2981 1 *//* Rule 21.1 violation: Alternative build configurations */
	.d2line		124
.Llo128:
	diab.li		r0,1		# AllOkFlag_b=r0
#     /*Variable to hold N_AI information*/
#     VAR(uint8, AUTOMATIC) N_sa_ae_u8 = CANTP_GENERAL_ZERO;
	.d2line		126
	diab.li		r28,0
#     /* Variable to identify the frame type received */
#     VAR(uint8, AUTOMATIC) RxFrameType_u8;
# 
# #if (CANTP_DEV_ERROR_DETECT == STD_ON)
# 
#     /* Check if the CANTP module is not initialized */
#     if(CANTP_OFF == CanTp_Status)
	.d2line		133
.Llo139:
	lis		r3,CanTp_Status@ha
.Llo123:
	lwz		r3,CanTp_Status@l(r3)
	se_cmpi		r3,0
	bc		0,2,.L128	# ne
#     {
#         /* Report to DET */
#         (void)Det_ReportError(CANTP_MODULE_ID, CANTP_INSTANCE_ID,
	.d2line		136
.Llo124:
	diab.li		r3,35
.Llo126:
	diab.li		r4,0
	diab.li		r5,66
	diab.li		r6,32
	bl		Det_ReportError
#                 CANTP_ID_RXINDICATION, CANTP_E_UNINIT);
#         /* Set a Flag to indicate DET occurred */
#         AllOkFlag_b = CANTP_FALSE;
	.d2line		139
	diab.li		r0,0		# AllOkFlag_b=r0
	b		.L129
.L128:
#     }
#     else
#     {
#         /* Check for the valid PduId */
#         if(CanTp_GeneralConfig_p->RxNPduId_Max < CanTpRxPduId)
	.d2line		144
	lis		r3,CanTp_GeneralConfig_p@ha
	lwz		r3,CanTp_GeneralConfig_p@l(r3)
	lhz		r3,2(r3)
	rlwinm		r4,r31,0,16,31		# CanTpRxPduId=r31
	se_cmp		r3,r4
	bc		0,0,.L130	# ge
#         {
#             /*report DET error*/
#             (void)Det_ReportError(CANTP_MODULE_ID, CANTP_INSTANCE_ID,
	.d2line		147
	diab.li		r3,35
	diab.li		r4,0
	diab.li		r5,66
	diab.li		r6,64
	bl		Det_ReportError
#                     CANTP_ID_RXINDICATION, CANTP_E_INVALID_RX_ID);
#             /* Set a Flag to indicate DET occurred */
#             AllOkFlag_b = CANTP_FALSE;
	.d2line		150
	diab.li		r0,0		# AllOkFlag_b=r0
	b		.L129
.L130:
#         }
# 
#         /*Check for NULL_PTR */
#         else if((NULL_PTR == CanTpRxPduPtr) || (NULL_PTR == CanTpRxPduPtr->SduDataPtr))
	.d2line		154
	se_cmpi		r30,0		# CanTpRxPduPtr=r30
	bc		1,2,.L139	# eq
	lwz		r3,0(r30)		# CanTpRxPduPtr=r30
	se_cmpi		r3,0
	bc		0,2,.L129	# ne
.L139:
#         {
#             /*report DET error*/
#             (void)Det_ReportError(CANTP_MODULE_ID, CANTP_INSTANCE_ID,
	.d2line		157
	diab.li		r3,35
	diab.li		r4,0
	diab.li		r5,66
	diab.li		r6,3
	bl		Det_ReportError
#                     CANTP_ID_RXINDICATION, CANTP_E_PARAM_POINTER);
#             /* Set a Flag to indicate DET occurred */
#             AllOkFlag_b = CANTP_FALSE;
	.d2line		160
	diab.li		r0,0		# AllOkFlag_b=r0
.L129:
#         }
#         else
#         {
#             /* Do nothing */
#         }
#     }
# 
#     /* PRQA S 2995 1 *//* Misra 13.7 violation MISRA C ADC R5: Alternative build configurations */
#     if(CANTP_FALSE != AllOkFlag_b)
	.d2line		169
	rlwinm		r0,r0,0,24,31		# AllOkFlag_b=r0 AllOkFlag_b=r0
	se_cmpi		r0,0		# AllOkFlag_b=r0
	bc		1,2,.L127	# eq
# 
# #endif /* CANTP_DEV_ERROR_DETECT == STD_ON */
#     {
#         TempIPduId = CanTpRxPduId;
	.d2line		173
.Llo130:
	sth		r31,8(r1)		# CanTpRxPduId=r31
# 
#         if((CANTP_MIXED == CanTp_RxLookup_p[TempIPduId].AddressingFormat) ||
	.d2line		175
	rlwinm		r0,r31,0,16,31		# AllOkFlag_b=r0 CanTpRxPduId=r31
.Llo131:
	lis		r3,CanTp_RxLookup_p@ha
	lwz		r3,CanTp_RxLookup_p@l(r3)
	rlwinm		r4,r0,4,0,27		# AllOkFlag_b=r0
	se_slwi		r0,2		# AllOkFlag_b=r0 AllOkFlag_b=r0
	subf		r0,r0,r4		# AllOkFlag_b=r0 AllOkFlag_b=r0
	se_add		r3,r0		# AllOkFlag_b=r0
	lwz		r0,4(r3)		# AllOkFlag_b=r0
	se_cmpi		r0,2		# AllOkFlag_b=r0
	bc		1,2,.L140	# eq
.Llo132:
	rlwinm		r31,r31,0,16,31		# CanTpRxPduId=r31 CanTpRxPduId=r31
	lis		r3,CanTp_RxLookup_p@ha
	lwz		r0,CanTp_RxLookup_p@l(r3)		# AllOkFlag_b=r0
.Llo133:
	rlwinm		r3,r31,4,0,27		# CanTpRxPduId=r31
	se_slwi		r31,2		# CanTpRxPduId=r31 CanTpRxPduId=r31
	subf		r31,r31,r3		# CanTpRxPduId=r31 CanTpRxPduId=r31
	se_add		r31,r0		# CanTpRxPduId=r31 CanTpRxPduId=r31 AllOkFlag_b=r0
	lwz		r0,4(r31)		# AllOkFlag_b=r0 CanTpRxPduId=r31
	se_cmpi		r0,1		# AllOkFlag_b=r0
	bc		0,2,.L136	# ne
.L140:
#                 (CANTP_EXTENDED == CanTp_RxLookup_p[TempIPduId].AddressingFormat))
#         {
#             /* Set the Buffer Offset to 1 */
#             BufferOffset_u8 = CANTP_BUFFER_OFFSET_ONE;
	.d2line		179
.Llo134:
	diab.li		r29,1		# BufferOffset_u8=r29
# 
#             /* MISRA RULE 1.2 VIOLATION:
#              * Reason
#              * Null pointer checking for CanTpRxPduPtr->SduDataPtr and
#              * CanTpRxPduPtr are already conducted in DET checking
#              * Approved/Verified by: Faisal N I */
#             /* Extract the N_Sa for processing */
#             /* PRQA S 505 1 *//* Misra 1.2 Verified suppression*/
#             N_sa_ae_u8 = CanTpRxPduPtr->SduDataPtr[CANTP_BUFFER_INDEX_ZERO];
	.d2line		188
	lwz		r3,0(r30)		# CanTpRxPduPtr=r30
	lbz		r28,0(r3)
	mr		r28,r28		# N_sa_ae_u8=r28 N_sa_ae_u8=r28
.L136:
#         }
#         else
#         {
#             /*Do nothing for Standard addressing mode*/
#         }
# 
#         /* Extract the N_PCI information*/
#         RxFrameType_u8 = (uint8) (CanTpRxPduPtr->SduDataPtr[BufferOffset_u8] & CANTP_UPPER_NIBBLE_MASK);
	.d2line		196
.Llo125:
	lwz		r3,0(r30)		# AllOkFlag_b=r3 CanTpRxPduPtr=r30
.Llo135:
	rlwinm		r4,r29,0,24,31		# BufferOffset_u8=r4 BufferOffset_u8=r29
	lbzx		r5,r3,r4		# AllOkFlag_b=r3
	rlwinm		r5,r5,0,24,27
.Llo140:
	mr		r5,r5		# RxFrameType_u8=r5 RxFrameType_u8=r5
# 
#         /*Call PduId finding function*/
#         AllOkFlag_b = CanTp_FindPdu(&TempIPduId, BufferOffset_u8, RxFrameType_u8, N_sa_ae_u8);
	.d2line		199
	diab.addi		r3,r1,8		# AllOkFlag_b=r3
.Llo136:
	mr		r4,r29		# BufferOffset_u8=r4 BufferOffset_u8=r29
	mr		r5,r5		# RxFrameType_u8=r5 RxFrameType_u8=r5
.Llo141:
	mr		r6,r28		# N_sa_ae_u8=r6 N_sa_ae_u8=r28
	bl		CanTp_FindPdu
.Llo137:
	mr		r3,r3		# AllOkFlag_b=r3 AllOkFlag_b=r3
# 
#         if(CANTP_FALSE != AllOkFlag_b)
	.d2line		201
	rlwinm		r3,r3,0,24,31		# AllOkFlag_b=r3 AllOkFlag_b=r3
	se_cmpi		r3,0		# AllOkFlag_b=r3
	bc		1,2,.L127	# eq
#         {
#             /* Check for Padding info and process */
#             CanTp_ProcessRxPdu(TempIPduId, BufferOffset_u8, CanTpRxPduPtr);
	.d2line		204
.Llo138:
	lhz		r3,8(r1)		# AllOkFlag_b=r3
	mr		r5,r30		# CanTpRxPduPtr=r5 CanTpRxPduPtr=r30
	mr		r4,r29		# BufferOffset_u8=r4 BufferOffset_u8=r29
	bl		CanTp_ProcessRxPdu
.L127:
#         }
#         else
#         {
#             /*Do nothing*/
#         }
#     }
# 
# }/* End of CanTp_RxIndication() */
	.d2line		212
	.d2epilogue_begin
.Llo127:
	lmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# AllOkFlag_b=r0
	mtspr		lr,r0		# AllOkFlag_b=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L351:
	.type		CanTp_RxIndication,@function
	.size		CanTp_RxIndication,.-CanTp_RxIndication
# Number of nodes = 146

# Allocations for CanTp_RxIndication
#	?a4		CanTpRxPduId
#	?a5		CanTpRxPduPtr
#	?a6		$$44
#	?a7		$$43
#	SP,8		TempIPduId
#	?a8		BufferOffset_u8
#	?a9		AllOkFlag_b
#	?a10		N_sa_ae_u8
#	?a11		RxFrameType_u8

# Allocations for module
	.section	.text_vle
	.0byte		.L387
	.section	.text_vle
#$$ld
.L5:
.L413:	.d2filenum "C:\\WINDRI~1\\COMPIL~1\\DIAB-5~1.4\\include\\diab/lpragma.h"
.L390:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTp\\ssc\\make\\..\\inc\\CanTp_Types.h"
.L365:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTp\\ssc\\make\\..\\inc\\CanTp_Private.h"
.L250:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTp\\ssc\\make\\..\\src\\CanTp_RxIndication.c"
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
	.uleb128	8
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
	.uleb128	9
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
	.uleb128	10
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
	.uleb128	11
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
	.uleb128	12
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
	.uleb128	13
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
	.uleb128	14
	.uleb128	40
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	28
	.uleb128	13
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
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	17
	.uleb128	38
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	18
	.uleb128	15
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	19
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	20
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTp\\ssc\\make\\..\\src\\CanTp_RxIndication.c"
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
.L253:
	.sleb128	2
	.4byte		.L247-.L2
	.byte		"CanTp_LengthCheckPaddingOn"
	.byte		0
	.4byte		.L250
	.uleb128	450
	.uleb128	34
	.4byte		.L251
	.byte		0x1
	.4byte		.L248
	.4byte		.L249
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L250
	.uleb128	450
	.uleb128	34
	.byte		"CanTpRxPduPtr"
	.byte		0
	.4byte		.L254
	.4byte		.L259
	.sleb128	3
	.4byte		.L250
	.uleb128	450
	.uleb128	34
	.byte		"CanTpChannel_p"
	.byte		0
	.4byte		.L260
	.4byte		.L264
	.sleb128	3
	.4byte		.L250
	.uleb128	450
	.uleb128	34
	.byte		"ByteOffset_u8"
	.byte		0
	.4byte		.L265
	.4byte		.L266
	.section	.debug_info,,n
.L267:
	.sleb128	4
	.4byte		.L250
	.uleb128	458
	.uleb128	29
	.byte		"RetVal_b"
	.byte		0
	.4byte		.L251
	.4byte		.L268
.L269:
	.sleb128	4
	.4byte		.L250
	.uleb128	461
	.uleb128	27
	.byte		"dlc_u8"
	.byte		0
	.4byte		.L265
	.4byte		.L270
.L271:
	.sleb128	4
	.4byte		.L250
	.uleb128	465
	.uleb128	29
	.byte		"callDet"
	.byte		0
	.4byte		.L251
	.4byte		.L272
.L273:
	.sleb128	4
	.4byte		.L250
	.uleb128	469
	.uleb128	29
	.byte		"stopChannel"
	.byte		0
	.4byte		.L251
	.4byte		.L274
.L275:
	.sleb128	4
	.4byte		.L250
	.uleb128	472
	.uleb128	29
	.byte		"pciType_u8"
	.byte		0
	.4byte		.L276
	.4byte		.L277
.L278:
	.sleb128	4
	.4byte		.L250
	.uleb128	473
	.uleb128	29
	.byte		"pciLowerNibble_u8"
	.byte		0
	.4byte		.L276
	.4byte		.L279
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L283
	.4byte		.L280
	.4byte		.L281
.L284:
	.sleb128	4
	.4byte		.L250
	.uleb128	483
	.uleb128	41
	.byte		"sfDataLength"
	.byte		0
	.4byte		.L276
	.4byte		.L285
	.section	.debug_info,,n
	.sleb128	0
.L283:
	.section	.debug_info,,n
	.sleb128	0
.L247:
	.section	.debug_info,,n
.L290:
	.sleb128	2
	.4byte		.L287-.L2
	.byte		"CanTp_LengthCheckPaddingOff"
	.byte		0
	.4byte		.L250
	.uleb128	597
	.uleb128	34
	.4byte		.L251
	.byte		0x1
	.4byte		.L288
	.4byte		.L289
	.sleb128	3
	.4byte		.L250
	.uleb128	597
	.uleb128	34
	.byte		"CanTpRxPduPtr"
	.byte		0
	.4byte		.L254
	.4byte		.L291
	.sleb128	3
	.4byte		.L250
	.uleb128	597
	.uleb128	34
	.byte		"CanTpChannel_p"
	.byte		0
	.4byte		.L292
	.4byte		.L295
	.sleb128	3
	.4byte		.L250
	.uleb128	597
	.uleb128	34
	.byte		"ByteOffset_u8"
	.byte		0
	.4byte		.L265
	.4byte		.L296
.L297:
	.sleb128	4
	.4byte		.L250
	.uleb128	605
	.uleb128	27
	.byte		"PduInfoByte_u8"
	.byte		0
	.4byte		.L265
	.4byte		.L298
.L299:
	.sleb128	4
	.4byte		.L250
	.uleb128	608
	.uleb128	27
	.byte		"SduDl_u8"
	.byte		0
	.4byte		.L265
	.4byte		.L300
.L301:
	.sleb128	4
	.4byte		.L250
	.uleb128	611
	.uleb128	27
	.byte		"MaxData_u8"
	.byte		0
	.4byte		.L265
	.4byte		.L302
.L303:
	.sleb128	4
	.4byte		.L250
	.uleb128	614
	.uleb128	29
	.byte		"RetVal_b"
	.byte		0
	.4byte		.L251
	.4byte		.L304
.L305:
	.sleb128	4
	.4byte		.L250
	.uleb128	617
	.uleb128	27
	.byte		"dlc_u8"
	.byte		0
	.4byte		.L265
	.4byte		.L306
	.section	.debug_info,,n
	.sleb128	0
.L287:
	.section	.debug_info,,n
.L311:
	.sleb128	6
	.4byte		.L308-.L2
	.byte		"CanTp_ProcessRxPdu"
	.byte		0
	.4byte		.L250
	.uleb128	235
	.uleb128	31
	.byte		0x1
	.4byte		.L309
	.4byte		.L310
	.sleb128	3
	.4byte		.L250
	.uleb128	235
	.uleb128	31
	.byte		"RxLookupIdx"
	.byte		0
	.4byte		.L312
	.4byte		.L316
	.sleb128	3
	.4byte		.L250
	.uleb128	235
	.uleb128	31
	.byte		"BufferOffset_u8"
	.byte		0
	.4byte		.L276
	.4byte		.L317
	.sleb128	3
	.4byte		.L250
	.uleb128	235
	.uleb128	31
	.byte		"CanTpRxPduPtr"
	.byte		0
	.4byte		.L254
	.4byte		.L318
.L319:
	.sleb128	4
	.4byte		.L250
	.uleb128	243
	.uleb128	27
	.byte		"Channel_u8"
	.byte		0
	.4byte		.L265
	.4byte		.L320
.L321:
	.sleb128	4
	.4byte		.L250
	.uleb128	245
	.uleb128	29
	.byte		"RetVal_b"
	.byte		0
	.4byte		.L251
	.4byte		.L322
.L323:
	.sleb128	4
	.4byte		.L250
	.uleb128	247
	.uleb128	36
	.byte		"NSduPadding_b"
	.byte		0
	.4byte		.L324
	.4byte		.L326
.L327:
	.sleb128	4
	.4byte		.L250
	.uleb128	249
	.uleb128	31
	.byte		"NSduIdx"
	.byte		0
	.4byte		.L313
	.4byte		.L328
.L329:
	.sleb128	4
	.4byte		.L250
	.uleb128	251
	.uleb128	56
	.byte		"CanTpChannel_p"
	.byte		0
	.4byte		.L261
	.4byte		.L330
	.section	.debug_info,,n
	.sleb128	0
.L308:
	.section	.debug_info,,n
.L335:
	.sleb128	2
	.4byte		.L332-.L2
	.byte		"CanTp_FindPdu"
	.byte		0
	.4byte		.L250
	.uleb128	340
	.uleb128	34
	.4byte		.L251
	.byte		0x1
	.4byte		.L333
	.4byte		.L334
	.sleb128	3
	.4byte		.L250
	.uleb128	340
	.uleb128	34
	.byte		"IPduId_p"
	.byte		0
	.4byte		.L336
	.4byte		.L338
	.sleb128	3
	.4byte		.L250
	.uleb128	340
	.uleb128	34
	.byte		"BufferOffset_u8"
	.byte		0
	.4byte		.L276
	.4byte		.L339
	.sleb128	3
	.4byte		.L250
	.uleb128	340
	.uleb128	34
	.byte		"RxFrameType_u8"
	.byte		0
	.4byte		.L276
	.4byte		.L340
	.sleb128	3
	.4byte		.L250
	.uleb128	340
	.uleb128	34
	.byte		"N_sa_ae_u8"
	.byte		0
	.4byte		.L276
	.4byte		.L341
.L342:
	.sleb128	4
	.4byte		.L250
	.uleb128	349
	.uleb128	29
	.byte		"PduExecutedFlag_b"
	.byte		0
	.4byte		.L251
	.4byte		.L343
.L344:
	.sleb128	4
	.4byte		.L250
	.uleb128	352
	.uleb128	29
	.byte		"FrameDirection_b"
	.byte		0
	.4byte		.L251
	.4byte		.L345
.L346:
	.sleb128	4
	.4byte		.L250
	.uleb128	355
	.uleb128	29
	.byte		"RetVal_b"
	.byte		0
	.4byte		.L251
	.4byte		.L347
	.section	.debug_info,,n
	.sleb128	0
.L332:
	.section	.debug_info,,n
.L352:
	.sleb128	7
	.4byte		.L349-.L2
	.byte		"CanTp_RxIndication"
	.byte		0
	.4byte		.L250
	.uleb128	111
	.uleb128	24
	.byte		0x1
	.byte		0x1
	.4byte		.L350
	.4byte		.L351
	.sleb128	3
	.4byte		.L250
	.uleb128	111
	.uleb128	24
	.byte		"CanTpRxPduId"
	.byte		0
	.4byte		.L313
	.4byte		.L353
	.sleb128	3
	.4byte		.L250
	.uleb128	111
	.uleb128	24
	.byte		"CanTpRxPduPtr"
	.byte		0
	.4byte		.L255
	.4byte		.L354
	.section	.debug_info,,n
.L355:
	.sleb128	8
	.4byte		.L250
	.uleb128	120
	.uleb128	31
	.byte		"TempIPduId"
	.byte		0
	.4byte		.L313
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
.L356:
	.sleb128	4
	.4byte		.L250
	.uleb128	122
	.uleb128	27
	.byte		"BufferOffset_u8"
	.byte		0
	.4byte		.L265
	.4byte		.L357
.L358:
	.sleb128	4
	.4byte		.L250
	.uleb128	124
	.uleb128	29
	.byte		"AllOkFlag_b"
	.byte		0
	.4byte		.L251
	.4byte		.L359
.L360:
	.sleb128	4
	.4byte		.L250
	.uleb128	126
	.uleb128	27
	.byte		"N_sa_ae_u8"
	.byte		0
	.4byte		.L265
	.4byte		.L361
.L362:
	.sleb128	4
	.4byte		.L250
	.uleb128	128
	.uleb128	27
	.byte		"RxFrameType_u8"
	.byte		0
	.4byte		.L265
	.4byte		.L363
	.section	.debug_info,,n
	.sleb128	0
.L349:
	.section	.debug_info,,n
.L364:
	.sleb128	9
	.byte		0x1
	.byte		0x1
	.4byte		.L365
	.uleb128	487
	.uleb128	61
	.byte		"CanTp_RxNSdu_p"
	.byte		0
	.4byte		.L366
	.0byte		.L364
.L370:
	.sleb128	9
	.byte		0x1
	.byte		0x1
	.4byte		.L365
	.uleb128	498
	.uleb128	61
	.byte		"CanTp_TxNSdu_p"
	.byte		0
	.4byte		.L371
.L375:
	.sleb128	9
	.byte		0x1
	.byte		0x1
	.4byte		.L365
	.uleb128	516
	.uleb128	63
	.byte		"CanTp_RxLookup_p"
	.byte		0
	.4byte		.L376
.L380:
	.sleb128	9
	.byte		0x1
	.byte		0x1
	.4byte		.L365
	.uleb128	522
	.uleb128	68
	.byte		"CanTp_GeneralConfig_p"
	.byte		0
	.4byte		.L381
.L385:
	.sleb128	9
	.byte		0x1
	.byte		0x1
	.4byte		.L365
	.uleb128	528
	.uleb128	59
	.byte		"CanTp_ChannelList_p"
	.byte		0
	.4byte		.L261
.L386:
	.sleb128	9
	.byte		0x1
	.byte		0x1
	.4byte		.L365
	.uleb128	546
	.uleb128	39
	.byte		"CanTp_Status"
	.byte		0
	.4byte		.L324
.L387:
	.sleb128	9
	.byte		0x1
	.byte		0x1
	.4byte		.L365
	.uleb128	554
	.uleb128	34
	.byte		"CanTp_CanFrameNextValidLength"
	.byte		0
	.4byte		.L388
	.section	.debug_info,,n
	.section	.debug_info,,n
.L384:
	.sleb128	10
	.4byte		.L390
	.uleb128	117
	.uleb128	1
	.4byte		.L391-.L2
	.uleb128	16
	.section	.debug_info,,n
.L97:
	.sleb128	11
	.byte		"TxNSduId_Max"
	.byte		0
	.4byte		.L312
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L98:
	.sleb128	11
	.byte		"RxNPduId_Max"
	.byte		0
	.4byte		.L312
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L99:
	.sleb128	11
	.byte		"RxNSduId_Count"
	.byte		0
	.4byte		.L312
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L100:
	.sleb128	11
	.byte		"Channel_Max_u8"
	.byte		0
	.4byte		.L276
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L101:
	.sleb128	11
	.byte		"CanTp_Mf_Resolution_u16"
	.byte		0
	.4byte		.L392
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L102:
	.sleb128	11
	.byte		"CanTp_Cfg_PaddingByte_u8"
	.byte		0
	.4byte		.L276
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L103:
	.sleb128	11
	.byte		"RxNsduId_Max_u16"
	.byte		0
	.4byte		.L392
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L104:
	.sleb128	11
	.byte		"ConfirmationLength"
	.byte		0
	.4byte		.L392
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
	.sleb128	0
.L391:
.L379:
	.sleb128	10
	.4byte		.L390
	.uleb128	117
	.uleb128	1
	.4byte		.L393-.L2
	.uleb128	12
.L92:
	.sleb128	11
	.byte		"PduIndex"
	.byte		0
	.4byte		.L312
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L93:
	.sleb128	11
	.byte		"NextPdu"
	.byte		0
	.4byte		.L312
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L94:
	.sleb128	11
	.byte		"AddressingFormat"
	.byte		0
	.4byte		.L394
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L95:
	.sleb128	11
	.byte		"N_SA_AE_u8"
	.byte		0
	.4byte		.L276
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L96:
	.sleb128	11
	.byte		"Direction_b"
	.byte		0
	.4byte		.L397
	.sleb128	2
	.byte		0x23
	.uleb128	9
	.byte		0x1
	.sleb128	0
.L393:
.L374:
	.sleb128	10
	.4byte		.L390
	.uleb128	117
	.uleb128	1
	.4byte		.L398-.L2
	.uleb128	28
.L79:
	.sleb128	11
	.byte		"CanTpAddressingMode"
	.byte		0
	.4byte		.L394
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L80:
	.sleb128	11
	.byte		"CanTpTxChannel_u8"
	.byte		0
	.4byte		.L276
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L81:
	.sleb128	11
	.byte		"CanTpTxPaddingActivation"
	.byte		0
	.4byte		.L399
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L82:
	.sleb128	11
	.byte		"CanTpTc_b"
	.byte		0
	.4byte		.L399
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L83:
	.sleb128	11
	.byte		"CanTpTxTaType"
	.byte		0
	.4byte		.L400
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L84:
	.sleb128	11
	.byte		"CanTp_TargetAddress_u8"
	.byte		0
	.4byte		.L276
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L85:
	.sleb128	11
	.byte		"FrameType"
	.byte		0
	.4byte		.L403
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
	.sleb128	0
.L398:
.L369:
	.sleb128	10
	.4byte		.L390
	.uleb128	117
	.uleb128	1
	.4byte		.L406-.L2
	.uleb128	24
.L64:
	.sleb128	11
	.byte		"CanTpAddressingMode"
	.byte		0
	.4byte		.L394
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L65:
	.sleb128	11
	.byte		"CanTpRxChannel_u8"
	.byte		0
	.4byte		.L276
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L66:
	.sleb128	11
	.byte		"CanTpRxPaddingActivation"
	.byte		0
	.4byte		.L399
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L67:
	.sleb128	11
	.byte		"CanTpRxTaType"
	.byte		0
	.4byte		.L400
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L68:
	.sleb128	11
	.byte		"CanTp_TargetAddress_u8"
	.byte		0
	.4byte		.L276
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L69:
	.sleb128	11
	.byte		"CanTpRxNSduId"
	.byte		0
	.4byte		.L312
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L70:
	.sleb128	11
	.byte		"FrameType"
	.byte		0
	.4byte		.L403
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L406:
.L263:
	.sleb128	10
	.4byte		.L390
	.uleb128	117
	.uleb128	1
	.4byte		.L407-.L2
	.uleb128	52
.L39:
	.sleb128	11
	.byte		"ChannelIdx_u8"
	.byte		0
	.4byte		.L265
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L40:
	.sleb128	11
	.byte		"IPduId"
	.byte		0
	.4byte		.L313
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L41:
	.sleb128	11
	.byte		"TimeoutTicks_u16"
	.byte		0
	.4byte		.L314
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L42:
	.sleb128	11
	.byte		"StMinTicks_u16"
	.byte		0
	.4byte		.L314
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L43:
	.sleb128	11
	.byte		"TotalLength"
	.byte		0
	.4byte		.L408
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L44:
	.sleb128	11
	.byte		"ProcessedLength"
	.byte		0
	.4byte		.L408
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L45:
	.sleb128	11
	.byte		"ProvidedBufferSize"
	.byte		0
	.4byte		.L408
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L46:
	.sleb128	11
	.byte		"State_u8"
	.byte		0
	.4byte		.L265
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L47:
	.sleb128	11
	.byte		"NextState_u8"
	.byte		0
	.4byte		.L265
	.sleb128	2
	.byte		0x23
	.uleb128	15
	.byte		0x1
.L48:
	.sleb128	11
	.byte		"BlockSize_u16"
	.byte		0
	.4byte		.L314
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L49:
	.sleb128	11
	.byte		"WftCounter_u16"
	.byte		0
	.4byte		.L314
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L50:
	.sleb128	11
	.byte		"SequenceNumber_u8"
	.byte		0
	.4byte		.L265
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L51:
	.sleb128	11
	.byte		"StMin_u8"
	.byte		0
	.4byte		.L265
	.sleb128	2
	.byte		0x23
	.uleb128	21
	.byte		0x1
.L52:
	.sleb128	11
	.byte		"TempBuffer_au8"
	.byte		0
	.4byte		.L409
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L53:
	.sleb128	11
	.byte		"TempLength_u8"
	.byte		0
	.4byte		.L265
	.sleb128	2
	.byte		0x23
	.uleb128	29
	.byte		0x1
.L54:
	.sleb128	11
	.byte		"CanIfDLC_u8"
	.byte		0
	.4byte		.L265
	.sleb128	2
	.byte		0x23
	.uleb128	30
	.byte		0x1
.L55:
	.sleb128	11
	.byte		"CanIfData_au8"
	.byte		0
	.4byte		.L411
	.sleb128	2
	.byte		0x23
	.uleb128	31
	.byte		0x1
.L56:
	.sleb128	11
	.byte		"ULayerIndFlag_b"
	.byte		0
	.4byte		.L251
	.sleb128	2
	.byte		0x23
	.uleb128	39
	.byte		0x1
.L57:
	.sleb128	11
	.byte		"ShutdownFlag_b"
	.byte		0
	.4byte		.L251
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L58:
	.sleb128	11
	.byte		"RemainingCFInBlock_u16"
	.byte		0
	.4byte		.L314
	.sleb128	2
	.byte		0x23
	.uleb128	42
	.byte		0x1
.L59:
	.sleb128	11
	.byte		"LastCFofNSduFlag_b"
	.byte		0
	.4byte		.L251
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L60:
	.sleb128	11
	.byte		"RequiredBufferSize"
	.byte		0
	.4byte		.L408
	.sleb128	2
	.byte		0x23
	.uleb128	46
	.byte		0x1
.L61:
	.sleb128	11
	.byte		"CallerApiId"
	.byte		0
	.4byte		.L265
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L62:
	.sleb128	11
	.byte		"FrameSize"
	.byte		0
	.4byte		.L265
	.sleb128	2
	.byte		0x23
	.uleb128	49
	.byte		0x1
.L63:
	.sleb128	11
	.byte		"CriticalSectionStatus_b"
	.byte		0
	.4byte		.L251
	.sleb128	2
	.byte		0x23
	.uleb128	50
	.byte		0x1
	.sleb128	0
.L407:
	.section	.debug_info,,n
.L258:
	.sleb128	12
	.4byte		.L413
	.uleb128	69
	.uleb128	1
	.4byte		.L414-.L2
	.byte		"VSTAR_PduInfoType"
	.byte		0
	.uleb128	8
.L35:
	.sleb128	11
	.byte		"SduDataPtr"
	.byte		0
	.4byte		.L415
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L36:
	.sleb128	11
	.byte		"SduLength"
	.byte		0
	.4byte		.L408
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L414:
	.section	.debug_info,,n
.L405:
	.sleb128	13
	.4byte		.L390
	.uleb128	117
	.uleb128	1
	.4byte		.L416-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	14
	.byte		"CANTP_FRAME_TYPE_CAN20"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"CANTP_FRAME_TYPE_CANFD"
	.byte		0
	.sleb128	1
	.sleb128	0
.L416:
.L402:
	.sleb128	13
	.4byte		.L390
	.uleb128	108
	.uleb128	1
	.4byte		.L417-.L2
	.uleb128	4
	.sleb128	14
	.byte		"CANTP_FUNCTIONAL"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"CANTP_PHYSICAL"
	.byte		0
	.sleb128	1
	.sleb128	0
.L417:
.L325:
	.sleb128	13
	.4byte		.L390
	.uleb128	98
	.uleb128	1
	.4byte		.L418-.L2
	.uleb128	4
	.sleb128	14
	.byte		"CANTP_OFF"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"CANTP_ON"
	.byte		0
	.sleb128	1
	.sleb128	0
.L418:
.L396:
	.sleb128	13
	.4byte		.L390
	.uleb128	87
	.uleb128	1
	.4byte		.L419-.L2
	.uleb128	4
	.sleb128	14
	.byte		"CANTP_STANDARD"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"CANTP_EXTENDED"
	.byte		0
	.sleb128	1
	.sleb128	14
	.byte		"CANTP_MIXED"
	.byte		0
	.sleb128	2
	.sleb128	0
.L419:
	.section	.debug_info,,n
.L252:
	.sleb128	15
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L251:
	.sleb128	16
	.byte		"boolean"
	.byte		0
	.4byte		.L252
.L257:
	.sleb128	16
	.byte		"PduInfoType"
	.byte		0
	.4byte		.L258
	.section	.debug_info,,n
.L256:
	.sleb128	17
	.4byte		.L257
	.section	.debug_info,,n
.L255:
	.sleb128	18
	.4byte		.L256
.L254:
	.sleb128	17
	.4byte		.L255
.L262:
	.sleb128	16
	.byte		"CanTp_Channel_t"
	.byte		0
	.4byte		.L263
.L261:
	.sleb128	18
	.4byte		.L262
.L260:
	.sleb128	17
	.4byte		.L261
.L265:
	.sleb128	16
	.byte		"uint8"
	.byte		0
	.4byte		.L252
.L276:
	.sleb128	17
	.4byte		.L265
.L294:
	.sleb128	17
	.4byte		.L262
.L293:
	.sleb128	18
	.4byte		.L294
.L292:
	.sleb128	17
	.4byte		.L293
.L315:
	.sleb128	15
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L314:
	.sleb128	16
	.byte		"uint16"
	.byte		0
	.4byte		.L315
.L313:
	.sleb128	16
	.byte		"PduIdType"
	.byte		0
	.4byte		.L314
.L312:
	.sleb128	17
	.4byte		.L313
.L324:
	.sleb128	16
	.byte		"CanTp_Status_t"
	.byte		0
	.4byte		.L325
.L337:
	.sleb128	18
	.4byte		.L313
.L336:
	.sleb128	17
	.4byte		.L337
.L368:
	.sleb128	16
	.byte		"CanTp_RxNSdu_t"
	.byte		0
	.4byte		.L369
.L367:
	.sleb128	17
	.4byte		.L368
.L366:
	.sleb128	18
	.4byte		.L367
.L373:
	.sleb128	16
	.byte		"CanTp_TxNSdu_t"
	.byte		0
	.4byte		.L374
.L372:
	.sleb128	17
	.4byte		.L373
.L371:
	.sleb128	18
	.4byte		.L372
.L378:
	.sleb128	16
	.byte		"CanTp_RxLookup_t"
	.byte		0
	.4byte		.L379
.L377:
	.sleb128	17
	.4byte		.L378
.L376:
	.sleb128	18
	.4byte		.L377
.L383:
	.sleb128	16
	.byte		"CanTp_GeneralConfig_t"
	.byte		0
	.4byte		.L384
.L382:
	.sleb128	17
	.4byte		.L383
.L381:
	.sleb128	18
	.4byte		.L382
	.section	.debug_info,,n
.L388:
	.sleb128	19
	.4byte		.L389-.L2
	.4byte		.L276
	.section	.debug_info,,n
	.sleb128	20
	.uleb128	64
	.sleb128	0
.L389:
.L392:
	.sleb128	17
	.4byte		.L314
.L395:
	.sleb128	16
	.byte		"CanTp_AddressingMode_t"
	.byte		0
	.4byte		.L396
.L394:
	.sleb128	17
	.4byte		.L395
.L397:
	.sleb128	17
	.4byte		.L251
.L399:
	.sleb128	17
	.4byte		.L324
.L401:
	.sleb128	16
	.byte		"CanTp_TaType_t"
	.byte		0
	.4byte		.L402
.L400:
	.sleb128	17
	.4byte		.L401
.L404:
	.sleb128	16
	.byte		"CanTp_FrameType_t"
	.byte		0
	.4byte		.L405
.L403:
	.sleb128	17
	.4byte		.L404
.L408:
	.sleb128	16
	.byte		"PduLengthType"
	.byte		0
	.4byte		.L314
.L409:
	.sleb128	19
	.4byte		.L410-.L2
	.4byte		.L265
	.sleb128	20
	.uleb128	6
	.sleb128	0
.L410:
.L411:
	.sleb128	19
	.4byte		.L412-.L2
	.4byte		.L265
	.sleb128	20
	.uleb128	7
	.sleb128	0
.L412:
.L415:
	.sleb128	18
	.4byte		.L265
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L259:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),3
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),3
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),3
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),3
	.d2locend
.L264:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo11),4
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo13),4
	.d2locend
.L266:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo14),5
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo16),0
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo5),0
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo18),0
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),0
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo20),0
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo22),0
	.d2locend
.L268:
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo23),31
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo25),31
	.d2locend
.L270:
	.d2locreg	%offsetof(.Llo26), %offsetof(.Llo24),7
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo22),7
	.d2locend
.L272:
	.d2locreg	%offsetof(.Llo28), %offsetof(.Llo16),30
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo13),30
	.d2locend
.L274:
	.d2locreg	%offsetof(.Llo30), %offsetof(.Llo22),29
	.d2locreg	%offsetof(.Llo31), %offsetof(.Llo32),29
	.d2locend
.L277:
	.d2locreg	%offsetof(.Llo33), %offsetof(.Llo34),6
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo16),6
	.d2locreg	%offsetof(.Llo35), %offsetof(.Llo8),6
	.d2locend
.L279:
	.d2locreg	%offsetof(.Llo36), %offsetof(.Llo2),5
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo16),5
	.d2locend
.L285:
	.d2locreg	%offsetof(.Llo37), %offsetof(.Llo17),0
	.d2locend
.L291:
	.d2locreg	%offsetof(.Llo38), %offsetof(.Llo39),3
	.d2locreg	%offsetof(.Llo40), %offsetof(.Llo41),3
	.d2locreg	%offsetof(.Llo42), %offsetof(.Llo43),3
	.d2locend
.L295:
	.d2locreg	%offsetof(.Llo38), %offsetof(.Llo44),4
	.d2locreg	%offsetof(.Llo45), %offsetof(.Llo46),4
	.d2locreg	%offsetof(.Llo43), %offsetof(.Llo47),4
	.d2locend
.L296:
	.d2locreg	%offsetof(.Llo38), %offsetof(.Llo48),5
	.d2locend
.L298:
	.d2locreg	%offsetof(.Llo49), %offsetof(.Llo44),6
	.d2locreg	%offsetof(.Llo50), %offsetof(.Llo51),6
	.d2locreg	%offsetof(.Llo45), %offsetof(.Llo52),6
	.d2locreg	%offsetof(.Llo53), %offsetof(.Llo41),6
	.d2locend
.L300:
	.d2locreg	%offsetof(.Llo54), %offsetof(.Llo55),5
	.d2locend
.L302:
	.d2locreg	%offsetof(.Llo54), %offsetof(.Llo55),5
	.d2locend
.L304:
	.d2locreg	%offsetof(.Llo56), %offsetof(.Llo57),7
	.d2locreg	%offsetof(.Llo58), %offsetof(.Llo48),7
	.d2locend
.L306:
	.d2locreg	%offsetof(.Llo59), %offsetof(.Llo58),0
	.d2locreg	%offsetof(.Llo55), %offsetof(.Llo48),0
	.d2locend
.L316:
	.d2locreg	%offsetof(.Llo60), %offsetof(.Llo61),3
	.d2locreg	%offsetof(.Llo62), %offsetof(.Llo63),0
	.d2locreg	%offsetof(.Llo64), %offsetof(.Llo65),0
	.d2locreg	%offsetof(.Llo66), %offsetof(.Llo67),0
	.d2locreg	%offsetof(.Llo68), %offsetof(.Llo69),0
	.d2locreg	%offsetof(.Llo70), %offsetof(.Llo71),0
	.d2locreg	%offsetof(.Llo72), %offsetof(.Llo73),0
	.d2locreg	%offsetof(.Llo74), %offsetof(.Llo75),0
	.d2locreg	%offsetof(.Llo76), %offsetof(.Llo77),0
	.d2locreg	%offsetof(.Llo78), %offsetof(.Llo79),0
	.d2locreg	%offsetof(.Llo80), %offsetof(.Llo81),0
	.d2locreg	%offsetof(.Llo82), %offsetof(.Llo83),0
	.d2locend
.L317:
	.d2locreg	%offsetof(.Llo60), %offsetof(.Llo84),4
	.d2locreg	%offsetof(.Llo63), %offsetof(.Llo81),31
	.d2locend
.L318:
	.d2locreg	%offsetof(.Llo60), %offsetof(.Llo85),5
	.d2locreg	%offsetof(.Llo63), %offsetof(.Llo81),30
	.d2locend
.L320:
	.d2locreg	%offsetof(.Llo86), %offsetof(.Llo65),29
	.d2locreg	%offsetof(.Llo87), %offsetof(.Llo83),29
	.d2locend
.L322:
	.d2locreg	%offsetof(.Llo88), %offsetof(.Llo89),3
	.d2locreg	%offsetof(.Llo90), %offsetof(.Llo91),3
	.d2locreg	%offsetof(.Llo92), %offsetof(.Llo93),3
	.d2locreg	%offsetof(.Llo94), %offsetof(.Llo95),3
	.d2locend
.L326:
	.d2locreg	%offsetof(.Llo96), %offsetof(.Llo65),5
	.d2locreg	%offsetof(.Llo97), %offsetof(.Llo98),5
	.d2locreg	%offsetof(.Llo99), %offsetof(.Llo100),5
	.d2locend
.L328:
	.d2locreg	%offsetof(.Llo101), %offsetof(.Llo81),28
	.d2locend
.L330:
	.d2locreg	%offsetof(.Llo102), %offsetof(.Llo103),3
	.d2locreg	%offsetof(.Llo69), %offsetof(.Llo83),27
	.d2locend
.L338:
	.d2locreg	%offsetof(.Llo104), %offsetof(.Llo105),3
	.d2locend
.L339:
	.d2locreg	%offsetof(.Llo104), %offsetof(.Llo105),4
	.d2locend
.L340:
	.d2locreg	%offsetof(.Llo104), %offsetof(.Llo106),5
	.d2locreg	%offsetof(.Llo107), %offsetof(.Llo108),30
	.d2locreg	%offsetof(.Llo109), %offsetof(.Llo110),30
	.d2locreg	%offsetof(.Llo111), %offsetof(.Llo112),30
	.d2locreg	%offsetof(.Llo113), %offsetof(.Llo114),30
	.d2locend
.L341:
	.d2locreg	%offsetof(.Llo104), %offsetof(.Llo115),6
	.d2locreg	%offsetof(.Llo108), %offsetof(.Llo105),0
	.d2locend
.L343:
	.d2locreg	%offsetof(.Llo116), %offsetof(.Llo105),7
	.d2locend
.L345:
	.d2locreg	%offsetof(.Llo117), %offsetof(.Llo105),31
	.d2locend
.L347:
	.d2locreg	%offsetof(.Llo118), %offsetof(.Llo119),5
	.d2locreg	%offsetof(.Llo120), %offsetof(.Llo121),5
	.d2locend
.L353:
	.d2locreg	%offsetof(.Llo122), %offsetof(.Llo123),3
	.d2locreg	%offsetof(.Llo124), %offsetof(.Llo125),31
	.d2locend
.L354:
	.d2locreg	%offsetof(.Llo122), %offsetof(.Llo124),4
	.d2locreg	%offsetof(.Llo126), %offsetof(.Llo127),30
	.d2locend
.L357:
	.d2locreg	%offsetof(.Llo128), %offsetof(.Llo127),29
	.d2locend
.L359:
	.d2locreg	%offsetof(.Llo129), %offsetof(.Llo130),0
	.d2locreg	%offsetof(.Llo131), %offsetof(.Llo132),0
	.d2locreg	%offsetof(.Llo133), %offsetof(.Llo134),0
	.d2locreg	%offsetof(.Llo135), %offsetof(.Llo136),3
	.d2locreg	%offsetof(.Llo137), %offsetof(.Llo138),3
	.d2locend
.L361:
	.d2locreg	%offsetof(.Llo139), %offsetof(.Llo138),28
	.d2locend
.L363:
	.d2locreg	%offsetof(.Llo140), %offsetof(.Llo141),5
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "CanTp_RxIndication"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "CanTp_FindPdu","CanTp_ProcessRxPdu","Det_ReportError"
	.wrcm.end
	.wrcm.nelem "CanTp_FindPdu"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "CanTp_ProcessRxPdu"
	.wrcm.nint32 "frameSize", 48
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "CanTp_Enter_Area","CanTp_Exit_Area","CanTp_IntRxInd","CanTp_LengthCheckPaddingOff","CanTp_LengthCheckPaddingOn"
	.wrcm.end
	.wrcm.nelem "CanTp_LengthCheckPaddingOff"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "CanTp_LengthCheckPaddingOn"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "CanTp_StopChannel","Det_ReportError"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanTp_RxIndication.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanTp_RxIndication.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanTp_RxIndication.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanTp_RxIndication.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanTp_RxIndication.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanTp_RxIndication.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\CanTp\ssc\make\..\src\CanTp_RxIndication.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
