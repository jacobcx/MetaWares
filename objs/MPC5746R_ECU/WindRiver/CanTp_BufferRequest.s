#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"CanTp_BufferRequest.c"
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
# static FUNC(boolean, CANTP_CODE) CanTp_IsSufficientBuffer
	.align		1
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTp\\ssc\\make\\..\\src\\CanTp_BufferRequest.c"
        .d2line         535,34
#$$ld
.L271:

#$$bf	CanTp_IsSufficientBuffer,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,cr0,lr
	.d2_cfa_start __cie
CanTp_IsSufficientBuffer:
.Llo1:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
.Llo12:
	stw		r0,20(r1)		# addrInfoLength=r0
	.d2_cfa_offset    108,-1
	mr		r3,r3		# CanTpChannel_p=r3 CanTpChannel_p=r3
	.d2prologue_end
# (
#     CONSTP2VAR(CanTp_Channel_t, AUTOMATIC, CANTP_APPL_DATA) CanTpChannel_p
# )
# {
#     /* Variable to store Expected Size of next block
#      (Initialized with value equals BlockSize *CF frame size) */
#     VAR(PduLengthType, AUTOMATIC) expectedBlockSizeInBytes_u16;
# 
#     /* Constant which contains the configured block size for the given NSdu */
#     CONST(uint16, AUTOMATIC) blockSize_u16 = CanTpChannel_p->BlockSize_u16;
	.d2line		545
	lhz		r5,16(r3)		# CanTpChannel_p=r3
.Llo9:
	mr		r5,r5		# blockSize_u16=r5 blockSize_u16=r5
# 
#     /* Constant which contains the frame data length correction because of the addressing mode */
#     CONST(uint8, AUTOMATIC) addrInfoLength =
	.d2line		548
	lhz		r0,2(r3)		# addrInfoLength=r0 CanTpChannel_p=r3
	lis		r4,CanTp_RxNSdu_p@ha		# addrInfoLength=r4
	lwz		r4,CanTp_RxNSdu_p@l(r4)		# addrInfoLength=r4 addrInfoLength=r4
	rlwinm		r6,r0,5,0,26		# addrInfoLength=r0
	se_slwi		r0,3		# addrInfoLength=r0 addrInfoLength=r0
	subf		r0,r0,r6		# addrInfoLength=r0 addrInfoLength=r0
	lwzx		r0,r4,r0		# addrInfoLength=r0 addrInfoLength=r4
	se_cmpi		r0,0		# addrInfoLength=r0
	isel		r4,0,r0,2		# addrInfoLength=r4 addrInfoLength=r0
.L250:
.Llo13:
	diab.li		r0,1		# addrInfoLength=r0
.Llo14:
	isel		r4,r4,r0,2		# addrInfoLength=r4 addrInfoLength=r4 addrInfoLength=r0
.L251:
#         (uint8) ((CANTP_STANDARD == CanTp_RxNSdu_p[CanTpChannel_p->IPduId].CanTpAddressingMode) ? 0U : 1U);
# 
#     if((uint16) CANTP_GENERAL_ZERO != blockSize_u16)
	.d2line		551
	rlwinm		r0,r5,0,16,31		# addrInfoLength=r0 blockSize_u16=r5
	se_cmpi		r0,0		# addrInfoLength=r0
	bc		1,2,.L246	# eq
#     {
#         /* Expected block size in bytes equals the block size multiplied by the length of consecutive frames in bytes
#          * if this block is not at the end of NSdu*/
#         expectedBlockSizeInBytes_u16 = (PduLengthType) (CANTP_CF_MAX_DATA(CanTpChannel_p->FrameSize,addrInfoLength) * blockSize_u16);
	.d2line		555
.Llo15:
	lbz		r0,49(r3)		# addrInfoLength=r0 CanTpChannel_p=r3
.Llo16:
	subf		r4,r4,r0		# addrInfoLength=r4 addrInfoLength=r4 addrInfoLength=r0
	rlwinm		r4,r4,0,24,31		# addrInfoLength=r4 addrInfoLength=r4
	diab.li		r0,65535		# addrInfoLength=r0
	se_add		r0,r4		# addrInfoLength=r0 addrInfoLength=r0 addrInfoLength=r4
	mullw		r0,r0,r5		# addrInfoLength=r0 addrInfoLength=r0 blockSize_u16=r5
.Llo5:
	mr		r5,r0		# expectedBlockSizeInBytes_u16=r5 expectedBlockSizeInBytes_u16=r0
.Llo10:
	b		.L247
.L246:
#     }
#     else
#     {
#         /* (BlockSize == 0) means that the remaining part of the NSdu should be sent in one block */
#         expectedBlockSizeInBytes_u16 = (PduLengthType) (CanTpChannel_p->TotalLength - CanTpChannel_p->ProcessedLength);
	.d2line		560
.Llo6:
	lhz		r0,8(r3)		# addrInfoLength=r0 CanTpChannel_p=r3
	lhz		r5,10(r3)		# blockSize_u16=r5 CanTpChannel_p=r3
.Llo11:
	subf		r5,r5,r0		# blockSize_u16=r5 blockSize_u16=r5 addrInfoLength=r0
.Llo7:
	mr		r5,r5		# expectedBlockSizeInBytes_u16=r5 expectedBlockSizeInBytes_u16=r5
.L247:
#     }
# 
#     /* if block is the last block of the NSdu then the block size equals to the length of remaining data */
#     if((PduLengthType) (CanTpChannel_p->TotalLength - CanTpChannel_p->ProcessedLength) < expectedBlockSizeInBytes_u16)
	.d2line		564
.Llo17:
	lhz		r0,8(r3)		# addrInfoLength=r0 CanTpChannel_p=r3
.Llo18:
	lhz		r4,10(r3)		# addrInfoLength=r4 CanTpChannel_p=r3
	subf		r4,r4,r0		# addrInfoLength=r4 addrInfoLength=r4 addrInfoLength=r0
	rlwinm		r4,r4,0,16,31		# addrInfoLength=r4 addrInfoLength=r4
	rlwinm		r0,r5,0,16,31		# addrInfoLength=r0 expectedBlockSizeInBytes_u16=r5
	se_cmp		r4,r0		# addrInfoLength=r4 addrInfoLength=r0
	bc		0,0,.L248	# ge
#     {
#         expectedBlockSizeInBytes_u16 = (PduLengthType) (CanTpChannel_p->TotalLength - CanTpChannel_p->ProcessedLength);
	.d2line		566
.Llo19:
	lhz		r0,8(r3)		# addrInfoLength=r0 CanTpChannel_p=r3
.Llo20:
	lhz		r5,10(r3)		# expectedBlockSizeInBytes_u16=r5 CanTpChannel_p=r3
	subf		r5,r5,r0		# expectedBlockSizeInBytes_u16=r5 expectedBlockSizeInBytes_u16=r5 addrInfoLength=r0
	mr		r5,r5		# expectedBlockSizeInBytes_u16=r5 expectedBlockSizeInBytes_u16=r5
.L248:
#     }
# 
#     if(expectedBlockSizeInBytes_u16 > CanTpChannel_p->ProvidedBufferSize)
	.d2line		569
.Llo21:
	rlwinm		r0,r5,0,16,31		# addrInfoLength=r0 expectedBlockSizeInBytes_u16=r5
.Llo22:
	lhz		r4,12(r3)		# addrInfoLength=r4 CanTpChannel_p=r3
	se_cmp		r0,r4		# addrInfoLength=r0 addrInfoLength=r4
	bc		0,1,.L249	# le
#     {
#         /* If the buffer is not sufficient then it will store the requested amount for the BufferManager which will try
#          * to allocate more buffer periodically in the MainFunction or in the CanTp_RxBufferCopyProcess() from the PduR */
#         CanTpChannel_p->RequiredBufferSize = expectedBlockSizeInBytes_u16;
	.d2line		573
.Llo23:
	sth		r5,46(r3)		# CanTpChannel_p=r3 expectedBlockSizeInBytes_u16=r5
.L249:
#     }
# 
#     /* check that buffer remaining size is enough for next block */
#     return (boolean) (expectedBlockSizeInBytes_u16 <= CanTpChannel_p->ProvidedBufferSize);
	.d2line		577
.Llo2:
	rlwinm		r5,r5,0,16,31		# expectedBlockSizeInBytes_u16=r5 expectedBlockSizeInBytes_u16=r5
.Llo3:
	lhz		r3,12(r3)		# CanTpChannel_p=r3 CanTpChannel_p=r3
	se_cmp		r5,r3		# expectedBlockSizeInBytes_u16=r5 CanTpChannel_p=r3
	mfcr		r3		# CanTpChannel_p=r3
	rlwinm		r3,r3,2,31,31		# CanTpChannel_p=r3 CanTpChannel_p=r3
	xori		r3,r3,1		# CanTpChannel_p=r3 CanTpChannel_p=r3
	rlwinm		r3,r3,0,24,31		# CanTpChannel_p=r3 CanTpChannel_p=r3
# } /*End of CanTp_IsSufficientBuffer()*/
	.d2line		578
	.d2epilogue_begin
.Llo4:
	lwz		r0,20(r1)		# addrInfoLength=r0
	mtspr		lr,r0		# addrInfoLength=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo8:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L272:
	.type		CanTp_IsSufficientBuffer,@function
	.size		CanTp_IsSufficientBuffer,.-CanTp_IsSufficientBuffer
# Number of nodes = 101

# Allocations for CanTp_IsSufficientBuffer
#	?a4		CanTpChannel_p
#	?a5		$$43
#	?a6		expectedBlockSizeInBytes_u16
#	?a7		blockSize_u16
#	?a8		addrInfoLength
# FUNC(boolean, CANTP_CODE) CanTp_RxBufferCopyProcess
	.align		2
	.section	.text_vle
        .d2line         357,27
#$$ld
.L296:

#$$bf	CanTp_RxBufferCopyProcess,interprocedural,rasave,nostackparams
	.globl		CanTp_RxBufferCopyProcess
	.d2_cfa_start __cie
CanTp_RxBufferCopyProcess:
.Llo24:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# CanTpChannel_p=r31 CanTpChannel_p=r3
	.d2prologue_end
# (
#     CONSTP2VAR(CanTp_Channel_t, AUTOMATIC, CANTP_APPL_DATA) CanTpChannel_p
# )
# {
#     VAR(boolean, AUTOMATIC) needToSendFC = CANTP_FALSE;
	.d2line		362
.Llo25:
	diab.li		r30,0		# needToSendFC=r30
# 
#     /*Variable to hold the Temporary passed buffer to the PDUR*/
#     VAR(PduInfoType, AUTOMATIC) PduInfoPtr_p;
# 
#     /*Variable to hold the result from PduR_CanTpCopyRxData*/
#     VAR(BufReq_ReturnType, AUTOMATIC) RetValPduR;
# 
#     PduInfoPtr_p.SduDataPtr = CanTpChannel_p->TempBuffer_au8;
	.d2line		370
.Llo26:
	se_addi		r3,22		# CanTpChannel_p=r3 CanTpChannel_p=r3
	stw		r3,8(r1)		# CanTpChannel_p=r3
#     PduInfoPtr_p.SduLength = (PduLengthType) CanTpChannel_p->TempLength_u8;
	.d2line		371
	lbz		r0,29(r31)		# CanTpChannel_p=r31
	sth		r0,12(r1)
# 
#     /* For the FF and SF it is not checked if there is enough buffer (output parameter of the PduR_CanTpCopyRxData)
#      * because PduR_CanTpStartOfReception has to provide  the currently available maximum buffer size when
#      * invoked with TpSduLength equal to 0 which is declared in PDUR507 API description */
#     RetValPduR = PduR_CanTpCopyRxData(CanTp_RxNSdu_p[CanTpChannel_p->IPduId].CanTpRxNSduId,
	.d2line		376
	lhz		r0,2(r31)		# CanTpChannel_p=r31
	lis		r3,CanTp_RxNSdu_p@ha		# CanTpChannel_p=r3
	lwz		r3,CanTp_RxNSdu_p@l(r3)		# CanTpChannel_p=r3 CanTpChannel_p=r3
	rlwinm		r4,r0,5,0,26
	se_slwi		r0,3
	subf		r0,r0,r4
	se_add		r3,r0		# CanTpChannel_p=r3 CanTpChannel_p=r3
	lhz		r3,18(r3)		# CanTpChannel_p=r3 CanTpChannel_p=r3
	diab.addi		r4,r1,8
	diab.addi		r5,r31,12		# CanTpChannel_p=r31
	bl		PduR_CanTpCopyRxData
.Llo29:
	mr		r3,r3		# RetValPduR=r3 RetValPduR=r3
#             &PduInfoPtr_p, &CanTpChannel_p->ProvidedBufferSize);
# 
#     switch(RetValPduR)
	.d2line		379
	mr.		r6,r3		# RetValPduR=r6 RetValPduR=?a9
	bc		1,2,.L203	# eq
.Llo30:
	se_cmpi		r6,2
	bc		1,2,.L213	# eq
	b		.L217
.L203:
#     {
#         case BUFREQ_OK:
#         {
#             /* Update Processed Length information */
#             CanTpChannel_p->ProcessedLength = CanTpChannel_p->ProcessedLength + PduInfoPtr_p.SduLength;
	.d2line		384
	lhz		r0,10(r31)		# CanTpChannel_p=r31
	lhz		r3,12(r1)		# RetValPduR=r3
.Llo31:
	se_add		r0,r3		# RetValPduR=r3
	sth		r0,10(r31)		# CanTpChannel_p=r31
	.d2line		386
	rlwinm		r0,r0,0,16,31
# 
#             if(CanTpChannel_p->TotalLength == CanTpChannel_p->ProcessedLength)
	lhz		r3,8(r31)		# RetValPduR=r3 CanTpChannel_p=r31
	se_cmp		r3,r0		# RetValPduR=r3
	bc		0,2,.L204	# ne
#             {
#                 /* Single Frame or the last CF of the NSdu has been uploaded successfully
#                  * This means the reception has just been ended*/
#                 CanTp_StopChannel(CanTpChannel_p, FALSE, NTFRSLT_OK);
	.d2line		390
.Llo32:
	mr		r3,r31		# CanTpChannel_p=r3 CanTpChannel_p=r31
	diab.li		r4,0
	diab.li		r5,0
	bl		CanTp_StopChannel
	b		.L212
.L204:
#             }
#             else if((CANTP_CH_RX_SEGMENTED_UPLOAD_CF_DATA == CanTpChannel_p->State_u8) ||
	.d2line		392
	lbz		r0,14(r31)		# CanTpChannel_p=r31
	cmpi		0,0,r0,67
	bc		1,2,.L218	# eq
	lbz		r0,14(r31)		# CanTpChannel_p=r31
	cmpi		0,0,r0,66
	bc		0,2,.L212	# ne
.L218:
#                     (CANTP_CH_RX_SEGMENTED_UPLOAD_FF_DATA == CanTpChannel_p->State_u8))
#             {
#                 /* Consecutive Frame data has been uploaded successfully and it is
#                  * not the last Consecutive Frame of the NSdu OR the data of the
#                  * First Frame has been uploaded successfully
#                  */
# 
#                 if((CANTP_CH_RX_SEGMENTED_UPLOAD_FF_DATA == CanTpChannel_p->State_u8) ||
	.d2line		400
	lbz		r0,14(r31)		# CanTpChannel_p=r31
	cmpi		0,0,r0,66
	bc		1,2,.L219	# eq
	lhz		r0,42(r31)		# CanTpChannel_p=r31
	se_cmpi		r0,0
	bc		0,2,.L207	# ne
.L219:
#                         ((uint16) CANTP_GENERAL_ZERO == CanTpChannel_p->RemainingCFInBlock_u16))
#                 {
#                     /* If the first condition is true then the second condition is not evaluated
#                      * which is important because in this case the variable in it is not initialized
#                      * however when the first condition is false then the variable in the second
#                      * condition is initialized*/
# 
#                     /* It must be the last Consecutive Frame in the block or the First Frame either way
#                      * the next thing to do is to check the buffer for the next block*/
#                     CanTpChannel_p->State_u8 = CANTP_CH_RX_SEGMENTED_BUFREQ_NEXT_BLOCK;
	.d2line		410
	diab.li		r0,69
	stb		r0,14(r31)		# CanTpChannel_p=r31
# 
#                     if(FALSE != CanTp_IsSufficientBuffer(CanTpChannel_p))
	.d2line		412
	mr		r3,r31		# CanTpChannel_p=r3 CanTpChannel_p=r31
	bl		CanTp_IsSufficientBuffer
	rlwinm		r3,r3,0,24,31		# CanTpChannel_p=r3 CanTpChannel_p=r3
	se_cmpi		r3,0		# CanTpChannel_p=r3
	bc		1,2,.L212	# eq
#                     {
#                         /* There is enough buffer for the next block so CTS Flow Control can be sent*/
#                         CanTp_PrepareFCFrame(CanTpChannel_p, CANTP_FRAME_FC_CTS);
	.d2line		415
	mr		r3,r31		# CanTpChannel_p=r3 CanTpChannel_p=r31
	diab.li		r4,48
	bl		CanTp_PrepareFCFrame
#                         needToSendFC = CANTP_TRUE;
	.d2line		416
	diab.li		r30,1		# needToSendFC=r30
	b		.L212
.L207:
#                     }
#                     else
#                     {
#                         /* CanTp_IsSufficientBuffer(...) determines that the provided buffer is not sufficient for
#                          * the next block. Retry in the CanTp_MainFunction() */
#                     }
#                 }
#                 else
#                 {
#                     /* It is NOT the Last Consecutive Frame in the block and not the last Consecutive Frame of
#                      * the NSdu and it is not the First Frame => It is an ordinary CF in the block (not the last)
#                      * The buffer should be sufficient because CanTp starts a block if the buffer is sufficient for
#                      * the next block of the message
#                      */
#                     CanTpChannel_p->State_u8 = CANTP_CH_RX_SEGMENTED_CF_WAIT;
	.d2line		431
	diab.li		r0,68
	stb		r0,14(r31)		# CanTpChannel_p=r31
	b		.L212
.L213:
	.section	.text_vle
.L309:
#                 }
#             }
#             else
#             {
#                 /*Invalid state*/
#             }
#             break;
#         }
# 
#         case BUFREQ_E_BUSY:
#         {
#             CONST(boolean, AUTOMATIC) lastCFofBlockOrMessage = (boolean) ((CANTP_FALSE != CanTpChannel_p->LastCFofNSduFlag_b) ||
	.d2line		443
	lbz		r0,44(r31)		# CanTpChannel_p=r31
	se_cmpi		r0,0
	bc		0,2,.L220	# ne
	lhz		r0,42(r31)		# CanTpChannel_p=r31
	se_cmpi		r0,0
	bc		1,2,.L220	# eq
	diab.li		r3,0		# RetValPduR=r3
.Llo33:
	b		.L221
.L220:
.Llo34:
	diab.li		r3,1		# RetValPduR=r3
.L221:
.Llo35:
	mr		r3,r3		# lastCFofBlockOrMessage=r3 lastCFofBlockOrMessage=r3
#                     ((uint16) CANTP_GENERAL_ZERO == CanTpChannel_p->RemainingCFInBlock_u16));
# 
#             if(CANTP_FALSE == (boolean) ((CANTP_CH_RX_SEGMENTED_UPLOAD_FF_DATA == CanTpChannel_p->State_u8) ||
	.d2line		446
	lbz		r0,14(r31)		# CanTpChannel_p=r31
	cmpi		0,0,r0,66
	bc		1,2,.L222	# eq
	lbz		r0,14(r31)		# CanTpChannel_p=r31
	cmpi		0,0,r0,67
	bc		0,2,.L224	# ne
	rlwinm		r3,r3,0,24,31		# lastCFofBlockOrMessage=r3 lastCFofBlockOrMessage=r3
	se_cmpi		r3,0		# lastCFofBlockOrMessage=r3
	bc		0,2,.L222	# ne
.L224:
	diab.li		r0,0
	b		.L223
.L222:
	diab.li		r0,1
.L223:
.Llo36:
	e_andi.		r0,r0,255
	bc		0,2,.L212	# ne
#                             ((CANTP_CH_RX_SEGMENTED_UPLOAD_CF_DATA == CanTpChannel_p->State_u8) &&
#                                     (CANTP_FALSE != lastCFofBlockOrMessage)))
#             )
#             {
#                 /* The reception is aborted if the received frame is not FF or not a CF which
#                  * is at the end of the block or the last CF of the NSdu */
#                 CanTp_StopChannel(CanTpChannel_p, TRUE, NTFRSLT_E_NOT_OK);
	.d2line		453
	mr		r3,r31		# CanTpChannel_p=r3 CanTpChannel_p=r31
	diab.li		r4,1
	diab.li		r5,1
	bl		CanTp_StopChannel
	b		.L212
	.section	.text_vle
.L310:
.L217:
#             }
#             else
#             {
#                 /* In order to copy the payload of the FF or CF into the PduR this function will be
#                  * called again in the next CanTp_MainFunction() and this function will retry the copy*/
#             }
#             break;
#         }
# 
#         case BUFREQ_E_NOT_OK:
#         default:
#         {
#             /*Discard the reception */
#             CanTp_StopChannel(CanTpChannel_p, TRUE, NTFRSLT_E_NOT_OK);
	.d2line		467
	mr		r3,r31		# CanTpChannel_p=r3 CanTpChannel_p=r31
	diab.li		r4,1
	diab.li		r5,1
	bl		CanTp_StopChannel
.L212:
#             break;
#         }
#     }
# 
#     return needToSendFC;
	.d2line		472
.Llo27:
	rlwinm		r3,r30,0,24,31		# CanTpChannel_p=r3 needToSendFC=r30
# }/* End of CanTp_RxBufferCopyProcess() */
	.d2line		473
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo28:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L297:
	.type		CanTp_RxBufferCopyProcess,@function
	.size		CanTp_RxBufferCopyProcess,.-CanTp_RxBufferCopyProcess
# Number of nodes = 215

# Allocations for CanTp_RxBufferCopyProcess
#	?a4		CanTpChannel_p
#	?a5		$$44
#	?a6		$$42
#	?a7		$$41
#	?a8		needToSendFC
#	SP,8		PduInfoPtr_p
#	?a9		RetValPduR
#	?a10		lastCFofBlockOrMessage
# FUNC(boolean, CANTP_CODE) CanTp_RequestRxBuffer
	.align		2
	.section	.text_vle
        .d2line         78,27
#$$ld
.L318:

#$$bf	CanTp_RequestRxBuffer,interprocedural,rasave,nostackparams
	.globl		CanTp_RequestRxBuffer
	.d2_cfa_start __cie
CanTp_RequestRxBuffer:
.Llo37:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r30,r3		# CanTpChannel_p=r30 CanTpChannel_p=r3
	.d2prologue_end
# (
#     CONSTP2VAR(CanTp_Channel_t, AUTOMATIC, CANTP_APPL_DATA) CanTpChannel_p
# )
# {
#     VAR(boolean, AUTOMATIC) needToSendFC = CANTP_FALSE;
	.d2line		83
.Llo38:
	diab.li		r31,0		# needToSendFC=r31
#     VAR(BufReq_ReturnType, AUTOMATIC) RetValPduR;
# 
#     /* Retrieve the block size from the proper global variable
#      * mandatory block size which should be used
#      * this value is used only for FC WAIT if the PduR_CanTpStartOfReception returns BUFREQ_E_BUSY */
#     CanTpChannel_p->BlockSize_u16 = (uint16) CanTp_RxNSduParams_p[CanTpChannel_p->IPduId].CanTpBs_u8;
	.d2line		89
.Llo39:
	lis		r3,CanTp_RxNSduParams_p@ha
	lwz		r3,CanTp_RxNSduParams_p@l(r3)
	lhz		r0,2(r30)		# CanTpChannel_p=r30
	rlwinm		r0,r0,1,15,30
	lbzx		r0,r3,r0
	sth		r0,16(r30)		# CanTpChannel_p=r30
# 
#     if((CANTP_CH_RX_UNSEGMENTED_RECEPTION_START_REQUEST == CanTpChannel_p->State_u8) ||
	.d2line		91
	lbz		r0,14(r30)		# CanTpChannel_p=r30
	cmpi		0,0,r0,76
	bc		1,2,.L154	# eq
	lbz		r0,14(r30)		# CanTpChannel_p=r30
	cmpi		0,0,r0,65
	bc		0,2,.L137	# ne
.L154:
#             (CANTP_CH_RX_SEGMENTED_RECEPTION_START_REQUEST == CanTpChannel_p->State_u8))
#     {
#         RetValPduR = PduR_CanTpStartOfReception(CanTp_RxNSdu_p[CanTpChannel_p->IPduId].CanTpRxNSduId,
	.d2line		94
	lhz		r0,2(r30)		# CanTpChannel_p=r30
	lis		r3,CanTp_RxNSdu_p@ha		# RetValPduR=r3
.Llo46:
	lwz		r3,CanTp_RxNSdu_p@l(r3)		# RetValPduR=r3 RetValPduR=r3
	rlwinm		r4,r0,5,0,26
	se_slwi		r0,3
	subf		r0,r0,r4
	se_add		r3,r0		# RetValPduR=r3 RetValPduR=r3
	lhz		r3,18(r3)		# RetValPduR=r3 RetValPduR=r3
.Llo47:
	lhz		r4,8(r30)		# CanTpChannel_p=r30
	diab.addi		r5,r30,12		# CanTpChannel_p=r30
	bl		PduR_CanTpStartOfReception
.Llo48:
	mr		r3,r3		# RetValPduR=r3 RetValPduR=r3
#                 CanTpChannel_p->TotalLength, &CanTpChannel_p->ProvidedBufferSize);
# 
#         /*Check the response from PduR*/
#         switch(RetValPduR)
	.d2line		98
	mr.		r6,r3		# RetValPduR=r6 RetValPduR=?a10
	bc		1,2,.L138	# eq
.Llo49:
	se_cmpi		r6,2
	bc		1,2,.L137	# eq
	se_cmpi		r6,3
	bc		1,2,.L149	# eq
	b		.L153
.L138:
#         {
#             /*Buffer provided*/
#             case BUFREQ_OK:
#             {
#                 /* Process the Buffer ok status */
#                 if(CANTP_CH_RX_SEGMENTED_RECEPTION_START_REQUEST == CanTpChannel_p->State_u8)
	.d2line		104
	lbz		r0,14(r30)		# CanTpChannel_p=r30
	cmpi		0,0,r0,65
	bc		0,2,.L139	# ne
	.section	.text_vle
.L326:
#                 {
#                     VAR(uint16, AUTOMATIC) blockSizeCalc;
#                     VAR(PduLengthType, AUTOMATIC) firstFrameDataLength, consFrameDataLength;
# 
#                     /* Constant which contains the frame data length correction because of the addressing mode */
#                     CONST(uint8, AUTOMATIC) addrInfoLength =
	.d2line		110
.Llo43:
	lhz		r0,2(r30)		# addrInfoLength=r0 CanTpChannel_p=r30
.Llo74:
	lis		r3,CanTp_RxNSdu_p@ha		# RetValPduR=r3
.Llo50:
	lwz		r3,CanTp_RxNSdu_p@l(r3)		# RetValPduR=r3 RetValPduR=r3
	rlwinm		r4,r0,5,0,26		# addrInfoLength=r0
	se_slwi		r0,3		# addrInfoLength=r0 addrInfoLength=r0
	subf		r0,r0,r4		# addrInfoLength=r0 addrInfoLength=r0
	lwzx		r0,r3,r0		# addrInfoLength=r0 RetValPduR=r3
	se_cmpi		r0,0		# addrInfoLength=r0
	isel		r3,0,r0,2		# addrInfoLength=r3 addrInfoLength=r0
.L155:
.Llo51:
	diab.li		r0,1		# addrInfoLength=r0
.Llo75:
	isel		r4,r3,r0,2		# addrInfoLength=r4 addrInfoLength=r3 addrInfoLength=r0
.L156:
#                     (uint8) (CANTP_STANDARD == CanTp_RxNSdu_p[CanTpChannel_p->IPduId].CanTpAddressingMode) ? 0U : 1U;
# 
#                     /* Calculate block size based on the available buffer size which is passed back in an
#                      * out-parameter of PduR_CanTpStartOfReception in order to conform to AR402
#                      * (AR403 calculates the BS too in accordance with TODO: deviation number) */
#                     firstFrameDataLength = CANTP_FF_MAX_DATA(CanTpChannel_p->FrameSize, addrInfoLength,
	.d2line		116
.Llo76:
	lhz		r0,8(r30)		# addrInfoLength=r0 CanTpChannel_p=r30
.Llo77:
	cmpi		0,0,r0,4095		# addrInfoLength=r0
	diab.li		r3,6		# addrInfoLength=r3
	isel		r3,r3,r0,1		# addrInfoLength=r3 addrInfoLength=r3 addrInfoLength=r0
.L157:
	diab.li		r0,2		# addrInfoLength=r0
	isel		r0,r3,r0,1		# addrInfoLength=r0 addrInfoLength=r3 addrInfoLength=r0
.L158:
.Llo78:
	lbz		r3,49(r30)		# addrInfoLength=r3 CanTpChannel_p=r30
.Llo79:
	subf		r4,r4,r3		# addrInfoLength=r4 addrInfoLength=r4 addrInfoLength=r3
	rlwinm		r4,r4,0,24,31		# addrInfoLength=r4 addrInfoLength=r4
	subf		r0,r0,r4		# addrInfoLength=r0 addrInfoLength=r0 addrInfoLength=r4
.Llo58:
	mr		r0,r0		# firstFrameDataLength=r0 firstFrameDataLength=r0
#                             CanTpChannel_p->TotalLength);
# 
#                     consFrameDataLength = CANTP_CF_MAX_DATA(CanTpChannel_p->FrameSize, addrInfoLength);
	.d2line		119
	diab.li		r3,65535		# addrInfoLength=r3
.Llo80:
	se_add		r3,r4		# addrInfoLength=r3 addrInfoLength=r3 addrInfoLength=r4
.Llo71:
	mr		r3,r3		# consFrameDataLength=r3 consFrameDataLength=r3
# 
#                     if(CanTpChannel_p->ProvidedBufferSize < (PduLengthType) (firstFrameDataLength +
	.d2line		121
	lhz		r5,12(r30)		# CanTpChannel_p=r30
	rlwinm		r4,r3,1,0,30		# addrInfoLength=r4 consFrameDataLength=r3
.Llo81:
	se_add		r4,r0		# addrInfoLength=r4 addrInfoLength=r4 firstFrameDataLength=r0
	rlwinm		r4,r4,0,16,31		# addrInfoLength=r4 addrInfoLength=r4
	se_cmp		r5,r4		# addrInfoLength=r4
	bc		0,0,.L140	# ge
#                                     (PduLengthType) ((PduLengthType) (CANTP_BLOCK_SIZE_MIN + 1U) * consFrameDataLength)))
#                     {
#                         /* If the available buffer is not enough for at least two frames than the block size
#                          * is one and independent from it is enough for it (avoid the division)*/
#                         blockSizeCalc = (uint16) CANTP_BLOCK_SIZE_MIN;
	.d2line		126
.Llo72:
	diab.li		r3,1		# blockSizeCalc=r3
.Llo52:
	b		.L141
.L140:
#                     }
#                     else
#                     {
#                         /* The block size is calculated in two part the first calculates the available buffer after the FF
#                          * payload is copied. It depends on the length of the FF frame (which determines the frame size
#                          * during the connection), the addressing information length and the total length of the NSdu.
#                          * The remaining buffer size is divided by the max data length of the consecutive frame which
#                          * is determined by the actual frame size and addressing type. */
#                         blockSizeCalc = (uint16) (CanTpChannel_p->ProvidedBufferSize - firstFrameDataLength) / consFrameDataLength;
	.d2line		135
.Llo53:
	lhz		r4,12(r30)		# addrInfoLength=r4 CanTpChannel_p=r30
.Llo59:
	subf		r0,r0,r4		# firstFrameDataLength=r0 firstFrameDataLength=r0 addrInfoLength=r4
	rlwinm		r0,r0,0,16,31		# firstFrameDataLength=r0 firstFrameDataLength=r0
.Llo73:
	rlwinm		r3,r3,0,16,31		# consFrameDataLength=r3 consFrameDataLength=r3
	divwu		r3,r0,r3		# consFrameDataLength=r3 firstFrameDataLength=r0 consFrameDataLength=r3
.Llo54:
	mr		r3,r3		# blockSizeCalc=r3 blockSizeCalc=r3
.L141:
#                     }
# 
#                     /* If the available buffer is sufficient for the whole NSdu then the calculated block size
#                      * is less than the optimal by one. This is because of the integer division which gives the optimal
#                      * block size when the buffer is insufficient (but not when the buffer is sufficient). */
#                     if(CanTpChannel_p->ProvidedBufferSize >= CanTpChannel_p->TotalLength)
	.d2line		141
.Llo60:
	lhz		r0,12(r30)		# firstFrameDataLength=r0 CanTpChannel_p=r30
.Llo61:
	lhz		r4,8(r30)		# addrInfoLength=r4 CanTpChannel_p=r30
.Llo82:
	se_cmp		r0,r4		# firstFrameDataLength=r0 addrInfoLength=r4
	bc		1,0,.L142	# lt
#                     {
#                         blockSizeCalc++; /* Calculated block size correction */
	.d2line		143
.Llo62:
	diab.addi		r0,r3,1		# firstFrameDataLength=r0 blockSizeCalc=r3
	se_addi		r3,1		# blockSizeCalc=r3 blockSizeCalc=r3
.L142:
#                     }
# 
#                     /* The calculated block size can't be greater than the configured max. block size.
#                      * It is true for zero block size but it should be handled differently because it
#                      * is the maximum of block size. */
#                     if((blockSizeCalc < CanTpChannel_p->BlockSize_u16) || ((CanTpChannel_p->BlockSize_u16 == 0U) &&
	.d2line		149
	rlwinm		r0,r3,0,16,31		# firstFrameDataLength=r0 blockSizeCalc=r3
.Llo63:
	lhz		r4,16(r30)		# addrInfoLength=r4 CanTpChannel_p=r30
.Llo83:
	se_cmp		r0,r4		# firstFrameDataLength=r0 addrInfoLength=r4
	bc		1,0,.L159	# lt
.Llo64:
	lhz		r0,16(r30)		# firstFrameDataLength=r0 CanTpChannel_p=r30
.Llo65:
	e_cmphl16i	r0,0		# firstFrameDataLength=r0
	bc		0,2,.L143	# ne
.Llo66:
	lhz		r4,12(r30)		# addrInfoLength=r4 CanTpChannel_p=r30
.Llo84:
	lhz		r0,8(r30)		# firstFrameDataLength=r0 CanTpChannel_p=r30
.Llo67:
	se_cmp		r4,r0		# addrInfoLength=r4 firstFrameDataLength=r0
	bc		0,0,.L143	# ge
.L159:
#                                     (CanTpChannel_p->ProvidedBufferSize < CanTpChannel_p->TotalLength)))
#                     {
#                         CanTpChannel_p->BlockSize_u16 = (blockSizeCalc <= CANTP_BS_MAX) ? blockSizeCalc : CANTP_BS_MAX;
	.d2line		152
.Llo68:
	rlwinm		r0,r3,0,16,31		# firstFrameDataLength=r0 blockSizeCalc=r3
.Llo69:
	cmpi		0,0,r0,255		# firstFrameDataLength=r0
	isel		r0,r4,r3,1		# blockSizeCalc=r0 addrInfoLength=r4 blockSizeCalc=r3
.L160:
.Llo55:
	diab.li		r3,255		# blockSizeCalc=r3
.Llo56:
	isel		r0,r3,r0,1		# blockSizeCalc=r0 blockSizeCalc=r3 blockSizeCalc=r0
.L161:
	sth		r0,16(r30)		# CanTpChannel_p=r30 blockSizeCalc=r0
.L143:
#                     }
# 
#                     CanTpChannel_p->State_u8 = CANTP_CH_RX_SEGMENTED_UPLOAD_FF_DATA;
	.d2line		155
.Llo57:
	diab.li		r0,66		# firstFrameDataLength=r0
.Llo70:
	stb		r0,14(r30)		# CanTpChannel_p=r30 firstFrameDataLength=r0
# 
#                     needToSendFC = CanTp_RxBufferCopyProcess(CanTpChannel_p);
	.d2line		157
	mr		r3,r30		# CanTpChannel_p=r3 CanTpChannel_p=r30
	bl		CanTp_RxBufferCopyProcess
.Llo44:
	mr		r31,r3		# needToSendFC=r31 needToSendFC=r3
	.section	.text_vle
.L327:
.Llo40:
	b		.L137
.L139:
#                     /*The buffer checks and requests are executed in CanTp_RxBufferCopyProcess(...)*/
#                 }
#                 else if(CANTP_CH_RX_UNSEGMENTED_RECEPTION_START_REQUEST == CanTpChannel_p->State_u8)
	.d2line		160
.Llo41:
	lbz		r0,14(r30)		# CanTpChannel_p=r30
	cmpi		0,0,r0,76
	bc		0,2,.L137	# ne
#                 {
#                     CanTpChannel_p->State_u8 = CANTP_CH_RX_UNSEGMENTED_UPLOAD_SF_DATA;
	.d2line		162
	diab.li		r0,77
	stb		r0,14(r30)		# CanTpChannel_p=r30
# 
#                     needToSendFC = CanTp_RxBufferCopyProcess(CanTpChannel_p);
	.d2line		164
	mr		r3,r30		# CanTpChannel_p=r3 CanTpChannel_p=r30
	bl		CanTp_RxBufferCopyProcess
	mr		r31,r3		# needToSendFC=r31 needToSendFC=r3
	b		.L137
.L149:
#                     /*The buffer checks and requests are executed in CanTp_RxBufferCopyProcess(...)*/
#                 }
#                 else
#                 {
#                     /*Invalid channel state (it can't be anything else)*/
#                 }
#                 break;
#             }
# 
#             /*Buffer not provided, PduR is busy now try after some time*/
#             case BUFREQ_E_BUSY:
#             {
#                 /* The channel stays in the same state and in the next CanTp_MainFunction this function
#                  * will be called again in order to retry the buffer lock in the PduR by the invocation of
#                  * PduR_CanTpStartOfReception(...) API*/
#                 break;
#             }
# 
#             /*Buffer overflow*/
#             case BUFREQ_E_OVFL:
#             {
#                 if(CANTP_CH_RX_SEGMENTED_RECEPTION_START_REQUEST == CanTpChannel_p->State_u8)
	.d2line		186
	lbz		r0,14(r30)		# CanTpChannel_p=r30
	cmpi		0,0,r0,65
	bc		0,2,.L150	# ne
#                 {
#                     /* Change the State */
#                     CanTpChannel_p->State_u8 = CANTP_CH_RX_SEGMENTED_TRANSMIT_FC_OVFLW;
	.d2line		189
	diab.li		r0,72
	stb		r0,14(r30)		# CanTpChannel_p=r30
# 
#                     /*Prepare overflow FC frame*/
#                     CanTp_PrepareFCFrame(CanTpChannel_p, CANTP_FRAME_FC_OVFLW);
	.d2line		192
	mr		r3,r30		# CanTpChannel_p=r3 CanTpChannel_p=r30
	diab.li		r4,50
	bl		CanTp_PrepareFCFrame
#                     needToSendFC = CANTP_TRUE;
	.d2line		193
	diab.li		r31,1		# needToSendFC=r31
	b		.L137
.L150:
#                 }
#                 else
#                 {
#                     /*Stop Channel with appropriate result [SWS_CanTp_00353] */
#                     CanTp_StopChannel(CanTpChannel_p, TRUE, NTFRSLT_E_NOT_OK);
	.d2line		198
	mr		r3,r30		# CanTpChannel_p=r3 CanTpChannel_p=r30
	diab.li		r4,1
	diab.li		r5,1
	bl		CanTp_StopChannel
	b		.L137
.L153:
#                 }
#                 break;
#             }
# 
#             /*Buffer not provided*/
#             case BUFREQ_E_NOT_OK:
# 
#             default:
#             {
#                 /*Abort the reception of this N-SDU*/
#                 CanTpChannel_p->ShutdownFlag_b = CANTP_TRUE;
	.d2line		209
	diab.li		r0,1
	stb		r0,40(r30)		# CanTpChannel_p=r30
# 
# #if (CANTP_DEV_ERROR_DETECT == STD_ON)
# 
#                 /*Inform DET with the appropriate value*/
#                 (void)Det_ReportError(CANTP_MODULE_ID, CANTP_INSTANCE_ID,
	.d2line		214
	lbz		r5,48(r30)		# CanTpChannel_p=r30
	diab.li		r3,35		# CanTpChannel_p=r3
	diab.li		r4,0
	diab.li		r6,176
	bl		Det_ReportError
#                         CanTpChannel_p->CallerApiId, CANTP_E_COM);
# #endif
# 
#                 CanTp_FreeChannel(CanTpChannel_p);
	.d2line		218
	mr		r3,r30		# CanTpChannel_p=r3 CanTpChannel_p=r30
	bl		CanTp_FreeChannel
.L137:
#                 break;
#             }
#         }
#     }
# 
#     return needToSendFC;
	.d2line		224
.Llo42:
	rlwinm		r3,r31,0,24,31		# RetValPduR=r3 needToSendFC=r31
# }/* End of CanTp_RequestRxBuffer() */
	.d2line		225
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo45:
	lwz		r0,36(r1)		# firstFrameDataLength=r0
	mtspr		lr,r0		# firstFrameDataLength=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L319:
	.type		CanTp_RequestRxBuffer,@function
	.size		CanTp_RequestRxBuffer,.-CanTp_RequestRxBuffer
# Number of nodes = 298

# Allocations for CanTp_RequestRxBuffer
#	?a4		CanTpChannel_p
#	?a5		$$46
#	?a6		$$45
#	?a7		$$40
#	?a8		$$39
#	?a9		needToSendFC
#	?a10		RetValPduR
#	?a11		blockSizeCalc
#	?a12		firstFrameDataLength
#	?a13		consFrameDataLength
#	?a14		addrInfoLength
# static FUNC(void, CANTP_CODE) CanTp_TxBufferBusyProcess
	.align		1
	.section	.text_vle
        .d2line         591,31
#$$ld
.L340:

#$$bf	CanTp_TxBufferBusyProcess,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
CanTp_TxBufferBusyProcess:
.Llo85:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# CanTpChannel_p=r31 CanTpChannel_p=r3
	mr		r30,r4		# PduInfoPtr=r30 PduInfoPtr=r4
	.d2prologue_end
# (
#     CONSTP2VAR(CanTp_Channel_t, AUTOMATIC, CANTP_APPL_DATA) CanTpChannel_p,
#     CONSTP2VAR(PduInfoType, AUTOMATIC, AUTOMATIC) PduInfoPtr
# )
# {
#     /* The provided buffer size should be less than the required because this function should not be called otherwise */
#     if(CanTpChannel_p->ProvidedBufferSize < CanTpChannel_p->RequiredBufferSize)
	.d2line		598
	lhz		r0,12(r31)		# CanTpChannel_p=r31
	lhz		r3,46(r31)		# CanTpChannel_p=r31
.Llo86:
	se_cmp		r0,r3
	bc		0,0,.L258	# ge
	.section	.text_vle
.L347:
#     {
#         /* Return Value */
#         VAR(BufReq_ReturnType, AUTOMATIC) RetVal;
# 
#         /* The required amount of data was not available so PduR_CanTpCopyTxData is called again with the length of the
#          * available data in PduR. This is necessary to avoid deadlock situations in the upper layer modules (TODO: reqs)*/
#         PduInfoPtr->SduLength = CanTpChannel_p->ProvidedBufferSize;
	.d2line		605
.Llo87:
	lhz		r0,12(r31)		# CanTpChannel_p=r31
.Llo89:
	sth		r0,4(r30)		# PduInfoPtr=r30
# 
#         /* [ADD_CanTp_00004] */
#         RetVal = PduR_CanTpCopyTxData(CanTp_TxNSduConfig_p[CanTpChannel_p->IPduId].CanTpPduRConfId,
	.d2line		608
	lhz		r0,2(r31)		# CanTpChannel_p=r31
	lis		r3,CanTp_TxNSduConfig_p@ha		# RetVal=r3
.Llo94:
	lwz		r3,CanTp_TxNSduConfig_p@l(r3)		# RetVal=r3 RetVal=r3
	rlwinm		r4,r0,4,0,27		# PduInfoPtr=r4
	se_slwi		r0,2
	subf		r0,r0,r4		# PduInfoPtr=r4
	se_add		r3,r0		# RetVal=r3 RetVal=r3
	lhz		r3,10(r3)		# RetVal=r3 RetVal=r3
.Llo95:
	diab.addi		r6,r31,12		# CanTpChannel_p=r31
	mr		r4,r30		# PduInfoPtr=r4 PduInfoPtr=r30
	diab.li		r5,0
	bl		PduR_CanTpCopyTxData
.Llo96:
	mr		r3,r3		# RetVal=r3 RetVal=r3
#                 PduInfoPtr, NULL_PTR, &CanTpChannel_p->ProvidedBufferSize);
# 
#         /* PRQA S 2016 ++ *//* 'switch' statement 'default' clause is empty */
#         switch(RetVal)
	.d2line		612
	mr.		r6,r3		# RetVal=r6 RetVal=?a7
	bc		1,2,.L260	# eq
.Llo97:
	se_cmpi		r6,1
	bc		1,2,.L262	# eq
.Llo90:
	b		.L258
.L260:
#         {
#             case BUFREQ_OK:
#             {
#                 /* CanIfDLC_u8 is the index of the first empty element of the internal buffer */
#                 CanTpChannel_p->CanIfDLC_u8 += (uint8) PduInfoPtr->SduLength;
	.d2line		617
.Llo91:
	lbz		r0,30(r31)		# CanTpChannel_p=r31
	lhz		r3,4(r30)		# RetVal=r3 PduInfoPtr=r30
.Llo98:
	se_add		r0,r3		# RetVal=r3
	stb		r0,30(r31)		# CanTpChannel_p=r31
# 
#                 /* Some data which is necessary for the next frame is copied to the buffer but more should be copied
#                  * in the next CanTp_MainFunction so the state should not change and no frame should be sent */
#                 CanTpChannel_p->RequiredBufferSize -= PduInfoPtr->SduLength;
	.d2line		621
	lhz		r0,46(r31)		# CanTpChannel_p=r31
	lhz		r3,4(r30)		# RetVal=r3 PduInfoPtr=r30
	subf		r3,r3,r0		# RetVal=r3 RetVal=r3
	sth		r3,46(r31)		# CanTpChannel_p=r31 RetVal=r3
# 
#                 /* Update the Processed Length information */
#                 CanTpChannel_p->ProcessedLength = CanTpChannel_p->ProcessedLength + PduInfoPtr->SduLength;
	.d2line		624
	lhz		r0,10(r31)		# CanTpChannel_p=r31
	lhz		r3,4(r30)		# RetVal=r3 PduInfoPtr=r30
	se_add		r0,r3		# RetVal=r3
	sth		r0,10(r31)		# CanTpChannel_p=r31
	b		.L258
.L262:
#                 break;
#             }
# 
#             case BUFREQ_E_NOT_OK:
#             {
#                 /* stop channel and inform Upper Layer */
#                 CanTp_StopChannel(CanTpChannel_p, TRUE, NTFRSLT_E_NOT_OK);
	.d2line		631
.Llo92:
	mr		r3,r31		# CanTpChannel_p=r3 CanTpChannel_p=r31
	diab.li		r4,1		# PduInfoPtr=r4
	diab.li		r5,1
	bl		CanTp_StopChannel
	.section	.text_vle
.L348:
.L258:
#                 break;
#             }
# 
#             case BUFREQ_E_BUSY:
#             default:
#             {
#                 /* Control should never come here because the data should be available in the PduR because this call
#                  * is based on the availableData out parameter of previous PduR_CanTpCopyTxData call */
#                 break;
#             }
#         }
#     }
#     else
#     {
#         /* Control never comes here because in this case PduR_CanTpCopyTxData should have returned
#          * BUFREQ_OK in CanTp_RequestTxBuffer. (so this function is not called) */
#     }
# }
	.d2line		649
	.d2epilogue_begin
.Llo88:
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo93:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L341:
	.type		CanTp_TxBufferBusyProcess,@function
	.size		CanTp_TxBufferBusyProcess,.-CanTp_TxBufferBusyProcess
# Number of nodes = 91

# Allocations for CanTp_TxBufferBusyProcess
#	?a4		CanTpChannel_p
#	?a5		PduInfoPtr
#	?a6		$$47
#	?a7		RetVal
# FUNC(void, CANTP_CODE) CanTp_RequestTxBuffer
	.align		2
	.section	.text_vle
        .d2line         241,24
#$$ld
.L355:

#$$bf	CanTp_RequestTxBuffer,interprocedural,rasave,nostackparams
	.globl		CanTp_RequestTxBuffer
	.d2_cfa_start __cie
CanTp_RequestTxBuffer:
.Llo99:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# CanTpChannel_p=r31 CanTpChannel_p=r3
	.d2prologue_end
# (
#     CONSTP2VAR(CanTp_Channel_t, AUTOMATIC, CANTP_APPL_DATA) CanTpChannel_p
# )
# {
#     /*Return Value*/
#     VAR(BufReq_ReturnType, AUTOMATIC) RetVal;
# 
#     /*Pointer to the buffer*/
#     VAR(PduInfoType, AUTOMATIC) PduInfo;
# 
#     /* If RequiredBufferSize is not zero that means only a part of the frame payload was available previously
#      * so the rest should be copied into the internal buffer of the channel at the proper place [ADD_CanTp_00002] */
#     PduInfo.SduLength = CanTpChannel_p->RequiredBufferSize;
	.d2line		254
.Llo100:
	lhz		r0,46(r31)		# CanTpChannel_p=r31
.Llo101:
	sth		r0,12(r1)
# 
#     /* Set the Transmit Buffer to Be the Copy Dest */
#     PduInfo.SduDataPtr = &CanTpChannel_p->CanIfData_au8[CanTpChannel_p->CanIfDLC_u8];
	.d2line		257
	lbz		r3,30(r31)		# RetVal=r3 CanTpChannel_p=r31
.Llo103:
	se_add		r3,r31		# RetVal=r3 RetVal=r3 CanTpChannel_p=r31
	se_addi		r3,31		# RetVal=r3 RetVal=r3
	stw		r3,8(r1)		# RetVal=r3
# 
#     /* [ADD_CanTp_00003] */
#     RetVal = PduR_CanTpCopyTxData(CanTp_TxNSduConfig_p[CanTpChannel_p->IPduId].CanTpPduRConfId,
	.d2line		260
	lhz		r0,2(r31)		# CanTpChannel_p=r31
	lis		r3,CanTp_TxNSduConfig_p@ha		# RetVal=r3
	lwz		r3,CanTp_TxNSduConfig_p@l(r3)		# RetVal=r3 RetVal=r3
	rlwinm		r4,r0,4,0,27
	se_slwi		r0,2
	subf		r0,r0,r4
	se_add		r3,r0		# RetVal=r3 RetVal=r3
	lhz		r3,10(r3)		# RetVal=r3 RetVal=r3
.Llo104:
	diab.addi		r4,r1,8
	diab.addi		r6,r31,12		# CanTpChannel_p=r31
	diab.li		r5,0
	bl		PduR_CanTpCopyTxData
.Llo105:
	mr		r3,r3		# RetVal=r3 RetVal=r3
#             &PduInfo, NULL_PTR, &CanTpChannel_p->ProvidedBufferSize);
# 
#     /* PRQA S 2016 ++ *//* 'switch' statement 'default' clause is empty */
#     switch(RetVal)
	.d2line		264
	mr.		r6,r3		# RetVal=r6 RetVal=?a7
	bc		1,2,.L181	# eq
.Llo106:
	se_cmpi		r6,1
	bc		1,2,.L189	# eq
	se_cmpi		r6,2
	bc		1,2,.L190	# eq
	b		.L180
.L181:
#     {
#         case BUFREQ_OK:
#         {
#             /* CanIfDLC_u8 is the length of the data and PCI bytes in the buffer after the data is copied */
#             CanTpChannel_p->CanIfDLC_u8 += (uint8) PduInfo.SduLength;
	.d2line		269
	lbz		r4,30(r31)		# CanTpChannel_p=r31
	lhz		r0,12(r1)
	se_add		r4,r0
	stb		r4,30(r31)		# CanTpChannel_p=r31
# 
#             /* Update the Processed Length information */
#             CanTpChannel_p->ProcessedLength = CanTpChannel_p->ProcessedLength + CanTpChannel_p->RequiredBufferSize;
	.d2line		272
	lhz		r0,10(r31)		# CanTpChannel_p=r31
	lhz		r3,46(r31)		# RetVal=r3 CanTpChannel_p=r31
.Llo107:
	se_add		r0,r3		# RetVal=r3
	sth		r0,10(r31)		# CanTpChannel_p=r31
# 
#             /* If the padding is activated or the length of the frame is longer than 8 then it might necessary
#              * to add padding the bytes however if the length of the frame is already 64 byte (which occurs often)
#              * it is sure the padding is not necessary. */
#             if((CanTpChannel_p->CanIfDLC_u8 != CANTP_MAX_CANFD_LENGTH) &&
	.d2line		277
	rlwinm		r4,r4,0,24,31
	cmpi		0,0,r4,64
	bc		1,2,.L182	# eq
.Llo108:
	lhz		r0,2(r31)		# CanTpChannel_p=r31
	lis		r3,CanTp_TxNSdu_p@ha		# RetVal=r3
.Llo109:
	lwz		r3,CanTp_TxNSdu_p@l(r3)		# RetVal=r3 RetVal=r3
	rlwinm		r4,r0,5,0,26
	se_slwi		r0,2
	subf		r0,r0,r4
	se_add		r3,r0		# RetVal=r3 RetVal=r3
	lwz		r0,8(r3)		# RetVal=r3
	se_cmpi		r0,1
	bc		1,2,.L193	# eq
.Llo110:
	lbz		r0,30(r31)		# CanTpChannel_p=r31
	se_cmpi		r0,8
	bc		0,1,.L182	# le
.L193:
	.section	.text_vle
.L362:
#                     ((CANTP_ON == CanTp_TxNSdu_p[CanTpChannel_p->IPduId].CanTpTxPaddingActivation) ||
#                             (CanTpChannel_p->CanIfDLC_u8 > CANTP_MAX_CAN20_LENGTH)))
#             {
# #if (CANTP_FLEXIBLE_DATA_RATE_SUPPORT == STD_ON)
#                 /* If FD support is enabled, the buffer size is 64 bytes long.*/
#                 VAR(uint8, AUTOMATIC) bufferLength = CANTP_MAX_CANFD_LENGTH;
# #else
#                 /* If FD support is disabled, the buffer size is 8 bytes long.*/
#                 VAR(uint8, AUTOMATIC) bufferLength = CANTP_MAX_CAN20_LENGTH;
	.d2line		286
	diab.li		r0,8		# bufferLength=r0
# #endif
# 
#                 /* Iterator used for padding the buffer */
#                 VAR(uint8, AUTOMATIC) iterator = CanTpChannel_p->CanIfDLC_u8;
	.d2line		290
.Llo121:
	lbz		r4,30(r31)		# CanTpChannel_p=r31
.Llo125:
	mr		r4,r4		# iterator=r4 iterator=r4
# 
#                 if(CanTpChannel_p->CanIfDLC_u8 <= CANTP_MAX_CAN20_LENGTH)
	.d2line		292
	mr		r3,r4		# iterator=r3 iterator=r4
.Llo111:
	se_cmpi		r3,8		# RetVal=r3
	bc		1,1,.L183	# gt
#                 {
#                     /* If passing is activated, the frame size will be 8 bytes*/
#                     CanTpChannel_p->CanIfDLC_u8 = CANTP_MAX_CAN20_LENGTH;
	.d2line		295
.Llo112:
	diab.li		r3,8		# RetVal=r3
.Llo113:
	stb		r3,30(r31)		# CanTpChannel_p=r31 RetVal=r3
	b		.L185
.L183:
#                 }
#                 else
#                 {
#                     /* Those frame which are longer than 8 bytes, will be passed to CanIf
#                      * with the next valid frame size */
#                     CanTpChannel_p->CanIfDLC_u8 = CanTp_CanFrameNextValidLength[CanTpChannel_p->CanIfDLC_u8];
	.d2line		301
.Llo114:
	lis		r3,CanTp_CanFrameNextValidLength@ha		# RetVal=r3
.Llo115:
	e_add16i		r3,r3,CanTp_CanFrameNextValidLength@l		# RetVal=r3 RetVal=r3
	lbz		r5,30(r31)		# CanTpChannel_p=r31
	lbzx		r3,r3,r5		# RetVal=r3 RetVal=r3
	stb		r3,30(r31)		# CanTpChannel_p=r31 RetVal=r3
.L185:
#                 }
# 
#                 /* This for cycle doesn't run if padding bytes are not necessary */
#                 for(; iterator < bufferLength; iterator++)
	.d2line		305
.Llo116:
	rlwinm		r3,r4,0,24,31		# RetVal=r3 iterator=r4
.Llo117:
	rlwinm		r5,r0,0,24,31		# bufferLength=r0
	se_cmp		r3,r5		# RetVal=r3
	bc		0,0,.L182	# ge
#                 {
#                     CanTpChannel_p->CanIfData_au8[iterator] = CanTp_GeneralConfig_p->CanTp_Cfg_PaddingByte_u8;
	.d2line		307
.Llo118:
	lis		r3,CanTp_GeneralConfig_p@ha		# RetVal=r3
.Llo119:
	lwz		r3,CanTp_GeneralConfig_p@l(r3)		# RetVal=r3 RetVal=r3
	lbz		r5,10(r3)		# RetVal=r3
	rlwinm		r3,r4,0,24,31		# RetVal=r3 iterator=r4
	se_add		r3,r31		# RetVal=r3 RetVal=r3 CanTpChannel_p=r31
	stb		r5,31(r3)		# RetVal=r3
#                 }
	.d2line		308
	diab.addi		r3,r4,1		# RetVal=r3 iterator=r4
.Llo120:
	se_addi		r4,1		# iterator=r4 iterator=r4
	b		.L185
	.section	.text_vle
.L363:
.L182:
#             }
# 
#             /* The next state was set based on the type of the frame when the PCI was filled */
#             CanTpChannel_p->State_u8 = CanTpChannel_p->NextState_u8;
	.d2line		312
.Llo122:
	lbz		r0,15(r31)		# bufferLength=r0 CanTpChannel_p=r31
.Llo123:
	stb		r0,14(r31)		# CanTpChannel_p=r31 bufferLength=r0
	b		.L180
.L189:
#             break;
#         }
# 
#         case BUFREQ_E_NOT_OK:
#         {
#             /* Stop channel and inform Upper Layer */
#             CanTp_StopChannel(CanTpChannel_p, TRUE, NTFRSLT_E_NOT_OK);
	.d2line		319
.Llo124:
	mr		r3,r31		# CanTpChannel_p=r3 CanTpChannel_p=r31
	diab.li		r4,1
	diab.li		r5,1
	bl		CanTp_StopChannel
	b		.L180
.L190:
#             break;
#         }
# 
#         case BUFREQ_E_BUSY:
#         {
#             /* If there are any data which can be copied than PduR_CanTpCopyTxData should be called again */
#             if(CanTpChannel_p->ProvidedBufferSize > 0U)
	.d2line		326
	lhz		r0,12(r31)		# CanTpChannel_p=r31
	e_cmphl16i	r0,0
	bc		1,2,.L180	# eq
#             {
#                 CanTp_TxBufferBusyProcess(CanTpChannel_p, &PduInfo);
	.d2line		328
	diab.addi		r4,r1,8
	mr		r3,r31		# CanTpChannel_p=r3 CanTpChannel_p=r31
	bl		CanTp_TxBufferBusyProcess
.L180:
#             }
#             break;
#         }
# 
#         default:
#         {
#             /* Do nothing as the State never Changes and the
#              * rest will be taken care by mainfunction*/
#             break;
#         }
#     }
#     /* PRQA S 2016 -- */
# 
# }/* End of CanTp_RequestTxBuffer() */
	.d2line		342
	.d2epilogue_begin
.Llo102:
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# bufferLength=r0
	mtspr		lr,r0		# bufferLength=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L356:
	.type		CanTp_RequestTxBuffer,@function
	.size		CanTp_RequestTxBuffer,.-CanTp_RequestTxBuffer
# Number of nodes = 196

# Allocations for CanTp_RequestTxBuffer
#	?a4		CanTpChannel_p
#	?a5		$$49
#	?a6		$$48
#	?a7		RetVal
#	SP,8		PduInfo
#	?a8		bufferLength
#	?a9		iterator
# FUNC(boolean, CANTP_CODE) CanTp_RxBufferManager
	.align		2
	.section	.text_vle
        .d2line         486,27
#$$ld
.L372:

#$$bf	CanTp_RxBufferManager,interprocedural,rasave,nostackparams
	.globl		CanTp_RxBufferManager
	.d2_cfa_start __cie
CanTp_RxBufferManager:
.Llo126:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# CanTpChannel_p=r31 CanTpChannel_p=r3
	.d2prologue_end
# (
#     CONSTP2VAR(CanTp_Channel_t, AUTOMATIC, CANTP_APPL_DATA) CanTpChannel_p
# )
# {
#     VAR(PduInfoType, AUTOMATIC) PduInfo;
#     VAR(BufReq_ReturnType, AUTOMATIC) RetValCopyRxData;
#     VAR(boolean, AUTOMATIC) RetVal = CANTP_TRUE;
	.d2line		493
	diab.li		r30,1		# RetVal=r30
# 
#     /*This function applies to the Rx flow*/
#     if(CANTP_CH_RX_PROCESSING == (uint8) (CanTpChannel_p->State_u8 & CANTP_CH_RX_PROCESSING))
	.d2line		496
	lbz		r0,14(r31)		# CanTpChannel_p=r31
	rlwinm		r0,r0,0,25,25
	cmpi		0,0,r0,64
	bc		0,2,.L239	# ne
#     {
# 
#         /*If the required buffer size is greater than the available buffer in the PduR then buffer request is necessary*/
#         if(CanTpChannel_p->RequiredBufferSize > CanTpChannel_p->ProvidedBufferSize)
	.d2line		500
.Llo127:
	lhz		r0,46(r31)		# CanTpChannel_p=r31
.Llo128:
	lhz		r3,12(r31)		# CanTpChannel_p=r31
	se_cmp		r0,r3
	bc		0,1,.L239	# le
#         {
#             PduInfo.SduDataPtr = NULL_PTR;
	.d2line		502
	diab.li		r0,0
	stw		r0,8(r1)
#             PduInfo.SduLength = (PduLengthType) CANTP_GENERAL_ZERO;
	.d2line		503
	sth		r0,12(r1)
# 
#             RetValCopyRxData = PduR_CanTpCopyRxData(CanTp_RxNSdu_p[CanTpChannel_p->IPduId].CanTpRxNSduId,
	.d2line		505
	lhz		r0,2(r31)		# CanTpChannel_p=r31
	lis		r3,CanTp_RxNSdu_p@ha
	lwz		r3,CanTp_RxNSdu_p@l(r3)
	rlwinm		r4,r0,5,0,26
	se_slwi		r0,3
	subf		r0,r0,r4
	se_add		r3,r0
	lhz		r3,18(r3)
	diab.addi		r4,r1,8
	diab.addi		r5,r31,12		# CanTpChannel_p=r31
	bl		PduR_CanTpCopyRxData
.Llo130:
	mr		r3,r3		# RetValCopyRxData=r3 RetValCopyRxData=r3
#                     &PduInfo, &CanTpChannel_p->ProvidedBufferSize);
# 
#             if( (CanTpChannel_p->RequiredBufferSize <= CanTpChannel_p->ProvidedBufferSize) &&
	.d2line		508
	lhz		r4,46(r31)		# CanTpChannel_p=r31
	lhz		r0,12(r31)		# CanTpChannel_p=r31
	se_cmp		r4,r0
	bc		1,1,.L241	# gt
	se_cmpi		r3,0		# RetValCopyRxData=r3
	bc		0,2,.L241	# ne
#                     (BUFREQ_OK == RetValCopyRxData) )
#             {
#                 /* If the returned buffer size is enough for the next block the CanTp_RxBufferManager() clears the request
#                  * which means that the requested amount of buffer is provided*/
#                 CanTpChannel_p->RequiredBufferSize = 0U;
	.d2line		513
.Llo131:
	diab.li		r0,0
	sth		r0,46(r31)		# CanTpChannel_p=r31
	b		.L239
.L241:
#             }
#             else
#             {
#                 RetVal = CANTP_FALSE;
	.d2line		517
.Llo132:
	diab.li		r30,0		# RetVal=r30
.L239:
#             }
#         }
# 
#     }
#     return RetVal;
	.d2line		522
.Llo129:
	rlwinm		r3,r30,0,24,31		# RetValCopyRxData=r3 RetVal=r30
# } /*End of CanTp_RxBufferManager()*/
	.d2line		523
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo133:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L373:
	.type		CanTp_RxBufferManager,@function
	.size		CanTp_RxBufferManager,.-CanTp_RxBufferManager
# Number of nodes = 86

# Allocations for CanTp_RxBufferManager
#	?a4		CanTpChannel_p
#	?a5		$$50
#	SP,8		PduInfo
#	?a6		RetValCopyRxData
#	?a7		RetVal

# Allocations for module
	.section	.text_vle
	.0byte		.L406
	.section	.text_vle
#$$ld
.L5:
.L441:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\AUTOSAR\\ar422\\ComStack_Types.h"
.L434:	.d2filenum "C:\\WINDRI~1\\COMPIL~1\\DIAB-5~1.4\\include\\diab/lpragma.h"
.L409:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTp\\ssc\\make\\..\\inc\\CanTp_Types.h"
.L382:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTp\\ssc\\make\\..\\inc\\CanTp_Private.h"
.L273:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTp\\ssc\\make\\..\\src\\CanTp_BufferRequest.c"
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
	.uleb128	8
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
	.uleb128	9
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
	.uleb128	10
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
	.uleb128	11
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
	.uleb128	12
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
	.uleb128	13
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
	.uleb128	14
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
	.uleb128	15
	.uleb128	40
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	28
	.uleb128	13
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	16
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
	.uleb128	3
	.uleb128	8
	.uleb128	11
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	17
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
	.uleb128	18
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	19
	.uleb128	15
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	20
	.uleb128	38
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	21
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	22
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTp\\ssc\\make\\..\\src\\CanTp_BufferRequest.c"
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
.L276:
	.sleb128	2
	.4byte		.L270-.L2
	.byte		"CanTp_IsSufficientBuffer"
	.byte		0
	.4byte		.L273
	.uleb128	535
	.uleb128	34
	.4byte		.L274
	.byte		0x1
	.4byte		.L271
	.4byte		.L272
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L273
	.uleb128	535
	.uleb128	34
	.byte		"CanTpChannel_p"
	.byte		0
	.4byte		.L277
	.4byte		.L281
	.section	.debug_info,,n
.L282:
	.sleb128	4
	.4byte		.L273
	.uleb128	542
	.uleb128	35
	.byte		"expectedBlockSizeInBytes_u16"
	.byte		0
	.4byte		.L283
	.4byte		.L286
.L287:
	.sleb128	4
	.4byte		.L273
	.uleb128	545
	.uleb128	30
	.byte		"blockSize_u16"
	.byte		0
	.4byte		.L288
	.4byte		.L289
.L290:
	.sleb128	4
	.4byte		.L273
	.uleb128	548
	.uleb128	29
	.byte		"addrInfoLength"
	.byte		0
	.4byte		.L291
	.4byte		.L293
	.section	.debug_info,,n
	.sleb128	0
.L270:
	.section	.debug_info,,n
.L298:
	.sleb128	5
	.4byte		.L295-.L2
	.byte		"CanTp_RxBufferCopyProcess"
	.byte		0
	.4byte		.L273
	.uleb128	357
	.uleb128	27
	.4byte		.L274
	.byte		0x1
	.byte		0x1
	.4byte		.L296
	.4byte		.L297
	.sleb128	3
	.4byte		.L273
	.uleb128	357
	.uleb128	27
	.byte		"CanTpChannel_p"
	.byte		0
	.4byte		.L277
	.4byte		.L299
.L300:
	.sleb128	4
	.4byte		.L273
	.uleb128	362
	.uleb128	29
	.byte		"needToSendFC"
	.byte		0
	.4byte		.L274
	.4byte		.L301
	.section	.debug_info,,n
.L302:
	.sleb128	6
	.4byte		.L273
	.uleb128	365
	.uleb128	33
	.byte		"PduInfoPtr_p"
	.byte		0
	.4byte		.L303
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
.L305:
	.sleb128	4
	.4byte		.L273
	.uleb128	368
	.uleb128	39
	.byte		"RetValPduR"
	.byte		0
	.4byte		.L306
	.4byte		.L308
	.section	.debug_info,,n
	.sleb128	7
	.4byte		.L312
	.4byte		.L309
	.4byte		.L310
.L313:
	.sleb128	4
	.4byte		.L273
	.uleb128	443
	.uleb128	39
	.byte		"lastCFofBlockOrMessage"
	.byte		0
	.4byte		.L314
	.4byte		.L315
	.section	.debug_info,,n
	.sleb128	0
.L312:
	.section	.debug_info,,n
	.sleb128	0
.L295:
	.section	.debug_info,,n
.L320:
	.sleb128	5
	.4byte		.L317-.L2
	.byte		"CanTp_RequestRxBuffer"
	.byte		0
	.4byte		.L273
	.uleb128	78
	.uleb128	27
	.4byte		.L274
	.byte		0x1
	.byte		0x1
	.4byte		.L318
	.4byte		.L319
	.sleb128	3
	.4byte		.L273
	.uleb128	78
	.uleb128	27
	.byte		"CanTpChannel_p"
	.byte		0
	.4byte		.L277
	.4byte		.L321
.L322:
	.sleb128	4
	.4byte		.L273
	.uleb128	83
	.uleb128	29
	.byte		"needToSendFC"
	.byte		0
	.4byte		.L274
	.4byte		.L323
.L324:
	.sleb128	4
	.4byte		.L273
	.uleb128	84
	.uleb128	39
	.byte		"RetValPduR"
	.byte		0
	.4byte		.L306
	.4byte		.L325
	.section	.debug_info,,n
	.sleb128	7
	.4byte		.L329
	.4byte		.L326
	.4byte		.L327
.L330:
	.sleb128	4
	.4byte		.L273
	.uleb128	106
	.uleb128	44
	.byte		"blockSizeCalc"
	.byte		0
	.4byte		.L284
	.4byte		.L331
.L332:
	.sleb128	4
	.4byte		.L273
	.uleb128	107
	.uleb128	51
	.byte		"firstFrameDataLength"
	.byte		0
	.4byte		.L283
	.4byte		.L333
.L334:
	.sleb128	4
	.4byte		.L273
	.uleb128	107
	.uleb128	73
	.byte		"consFrameDataLength"
	.byte		0
	.4byte		.L283
	.4byte		.L335
.L336:
	.sleb128	4
	.4byte		.L273
	.uleb128	110
	.uleb128	45
	.byte		"addrInfoLength"
	.byte		0
	.4byte		.L291
	.4byte		.L337
	.section	.debug_info,,n
	.sleb128	0
.L329:
	.section	.debug_info,,n
	.sleb128	0
.L317:
	.section	.debug_info,,n
.L342:
	.sleb128	8
	.4byte		.L339-.L2
	.byte		"CanTp_TxBufferBusyProcess"
	.byte		0
	.4byte		.L273
	.uleb128	591
	.uleb128	31
	.byte		0x1
	.4byte		.L340
	.4byte		.L341
	.sleb128	3
	.4byte		.L273
	.uleb128	591
	.uleb128	31
	.byte		"CanTpChannel_p"
	.byte		0
	.4byte		.L277
	.4byte		.L343
	.sleb128	3
	.4byte		.L273
	.uleb128	591
	.uleb128	31
	.byte		"PduInfoPtr"
	.byte		0
	.4byte		.L344
	.4byte		.L346
	.section	.debug_info,,n
	.sleb128	7
	.4byte		.L350
	.4byte		.L347
	.4byte		.L348
.L351:
	.sleb128	4
	.4byte		.L273
	.uleb128	601
	.uleb128	43
	.byte		"RetVal"
	.byte		0
	.4byte		.L306
	.4byte		.L352
	.section	.debug_info,,n
	.sleb128	0
.L350:
	.section	.debug_info,,n
	.sleb128	0
.L339:
	.section	.debug_info,,n
.L357:
	.sleb128	9
	.4byte		.L354-.L2
	.byte		"CanTp_RequestTxBuffer"
	.byte		0
	.4byte		.L273
	.uleb128	241
	.uleb128	24
	.byte		0x1
	.byte		0x1
	.4byte		.L355
	.4byte		.L356
	.sleb128	3
	.4byte		.L273
	.uleb128	241
	.uleb128	24
	.byte		"CanTpChannel_p"
	.byte		0
	.4byte		.L277
	.4byte		.L358
.L359:
	.sleb128	4
	.4byte		.L273
	.uleb128	247
	.uleb128	39
	.byte		"RetVal"
	.byte		0
	.4byte		.L306
	.4byte		.L360
.L361:
	.sleb128	6
	.4byte		.L273
	.uleb128	250
	.uleb128	33
	.byte		"PduInfo"
	.byte		0
	.4byte		.L303
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
	.section	.debug_info,,n
	.sleb128	7
	.4byte		.L365
	.4byte		.L362
	.4byte		.L363
.L366:
	.sleb128	4
	.4byte		.L273
	.uleb128	286
	.uleb128	39
	.byte		"bufferLength"
	.byte		0
	.4byte		.L292
	.4byte		.L367
.L368:
	.sleb128	4
	.4byte		.L273
	.uleb128	290
	.uleb128	39
	.byte		"iterator"
	.byte		0
	.4byte		.L292
	.4byte		.L369
	.section	.debug_info,,n
	.sleb128	0
.L365:
	.section	.debug_info,,n
	.sleb128	0
.L354:
	.section	.debug_info,,n
.L374:
	.sleb128	5
	.4byte		.L371-.L2
	.byte		"CanTp_RxBufferManager"
	.byte		0
	.4byte		.L273
	.uleb128	486
	.uleb128	27
	.4byte		.L274
	.byte		0x1
	.byte		0x1
	.4byte		.L372
	.4byte		.L373
	.sleb128	3
	.4byte		.L273
	.uleb128	486
	.uleb128	27
	.byte		"CanTpChannel_p"
	.byte		0
	.4byte		.L277
	.4byte		.L375
.L376:
	.sleb128	6
	.4byte		.L273
	.uleb128	491
	.uleb128	33
	.byte		"PduInfo"
	.byte		0
	.4byte		.L303
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
.L377:
	.sleb128	4
	.4byte		.L273
	.uleb128	492
	.uleb128	39
	.byte		"RetValCopyRxData"
	.byte		0
	.4byte		.L306
	.4byte		.L378
.L379:
	.sleb128	4
	.4byte		.L273
	.uleb128	493
	.uleb128	29
	.byte		"RetVal"
	.byte		0
	.4byte		.L274
	.4byte		.L380
	.section	.debug_info,,n
	.sleb128	0
.L371:
	.section	.debug_info,,n
.L381:
	.sleb128	10
	.byte		0x1
	.byte		0x1
	.4byte		.L382
	.uleb128	487
	.uleb128	61
	.byte		"CanTp_RxNSdu_p"
	.byte		0
	.4byte		.L383
	.0byte		.L381
.L387:
	.sleb128	10
	.byte		0x1
	.byte		0x1
	.4byte		.L382
	.uleb128	498
	.uleb128	61
	.byte		"CanTp_TxNSdu_p"
	.byte		0
	.4byte		.L388
.L392:
	.sleb128	10
	.byte		0x1
	.byte		0x1
	.4byte		.L382
	.uleb128	504
	.uleb128	67
	.byte		"CanTp_TxNSduConfig_p"
	.byte		0
	.4byte		.L393
.L397:
	.sleb128	10
	.byte		0x1
	.byte		0x1
	.4byte		.L382
	.uleb128	510
	.uleb128	64
	.byte		"CanTp_RxNSduParams_p"
	.byte		0
	.4byte		.L398
.L401:
	.sleb128	10
	.byte		0x1
	.byte		0x1
	.4byte		.L382
	.uleb128	522
	.uleb128	68
	.byte		"CanTp_GeneralConfig_p"
	.byte		0
	.4byte		.L402
.L406:
	.sleb128	10
	.byte		0x1
	.byte		0x1
	.4byte		.L382
	.uleb128	554
	.uleb128	34
	.byte		"CanTp_CanFrameNextValidLength"
	.byte		0
	.4byte		.L407
	.section	.debug_info,,n
	.section	.debug_info,,n
.L400:
	.sleb128	11
	.4byte		.L409
	.uleb128	117
	.uleb128	1
	.4byte		.L410-.L2
	.uleb128	2
	.section	.debug_info,,n
.L111:
	.sleb128	12
	.byte		"CanTpBs_u8"
	.byte		0
	.4byte		.L292
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L112:
	.sleb128	12
	.byte		"CanTpSTmin_u8"
	.byte		0
	.4byte		.L292
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
	.sleb128	0
.L410:
.L405:
	.sleb128	11
	.4byte		.L409
	.uleb128	117
	.uleb128	1
	.4byte		.L411-.L2
	.uleb128	16
.L103:
	.sleb128	12
	.byte		"TxNSduId_Max"
	.byte		0
	.4byte		.L412
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L104:
	.sleb128	12
	.byte		"RxNPduId_Max"
	.byte		0
	.4byte		.L412
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L105:
	.sleb128	12
	.byte		"RxNSduId_Count"
	.byte		0
	.4byte		.L412
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L106:
	.sleb128	12
	.byte		"Channel_Max_u8"
	.byte		0
	.4byte		.L291
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L107:
	.sleb128	12
	.byte		"CanTp_Mf_Resolution_u16"
	.byte		0
	.4byte		.L288
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L108:
	.sleb128	12
	.byte		"CanTp_Cfg_PaddingByte_u8"
	.byte		0
	.4byte		.L291
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L109:
	.sleb128	12
	.byte		"RxNsduId_Max_u16"
	.byte		0
	.4byte		.L288
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L110:
	.sleb128	12
	.byte		"ConfirmationLength"
	.byte		0
	.4byte		.L288
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
	.sleb128	0
.L411:
.L396:
	.sleb128	11
	.4byte		.L409
	.uleb128	117
	.uleb128	1
	.4byte		.L414-.L2
	.uleb128	12
.L92:
	.sleb128	12
	.byte		"CanTpNas_u16"
	.byte		0
	.4byte		.L288
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L93:
	.sleb128	12
	.byte		"CanTpNbs_u16"
	.byte		0
	.4byte		.L288
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L94:
	.sleb128	12
	.byte		"CanTpNcs_u16"
	.byte		0
	.4byte		.L288
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L95:
	.sleb128	12
	.byte		"CanTpTxCanIfNPduId"
	.byte		0
	.4byte		.L412
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L96:
	.sleb128	12
	.byte		"CanTpTxConfirmationId"
	.byte		0
	.4byte		.L412
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L97:
	.sleb128	12
	.byte		"CanTpPduRConfId"
	.byte		0
	.4byte		.L288
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
	.sleb128	0
.L414:
.L391:
	.sleb128	11
	.4byte		.L409
	.uleb128	117
	.uleb128	1
	.4byte		.L415-.L2
	.uleb128	28
.L85:
	.sleb128	12
	.byte		"CanTpAddressingMode"
	.byte		0
	.4byte		.L416
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L86:
	.sleb128	12
	.byte		"CanTpTxChannel_u8"
	.byte		0
	.4byte		.L291
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L87:
	.sleb128	12
	.byte		"CanTpTxPaddingActivation"
	.byte		0
	.4byte		.L419
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L88:
	.sleb128	12
	.byte		"CanTpTc_b"
	.byte		0
	.4byte		.L419
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L89:
	.sleb128	12
	.byte		"CanTpTxTaType"
	.byte		0
	.4byte		.L422
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L90:
	.sleb128	12
	.byte		"CanTp_TargetAddress_u8"
	.byte		0
	.4byte		.L291
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L91:
	.sleb128	12
	.byte		"FrameType"
	.byte		0
	.4byte		.L425
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
	.sleb128	0
.L415:
.L386:
	.sleb128	11
	.4byte		.L409
	.uleb128	117
	.uleb128	1
	.4byte		.L428-.L2
	.uleb128	24
.L70:
	.sleb128	12
	.byte		"CanTpAddressingMode"
	.byte		0
	.4byte		.L416
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L71:
	.sleb128	12
	.byte		"CanTpRxChannel_u8"
	.byte		0
	.4byte		.L291
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L72:
	.sleb128	12
	.byte		"CanTpRxPaddingActivation"
	.byte		0
	.4byte		.L419
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L73:
	.sleb128	12
	.byte		"CanTpRxTaType"
	.byte		0
	.4byte		.L422
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L74:
	.sleb128	12
	.byte		"CanTp_TargetAddress_u8"
	.byte		0
	.4byte		.L291
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L75:
	.sleb128	12
	.byte		"CanTpRxNSduId"
	.byte		0
	.4byte		.L412
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L76:
	.sleb128	12
	.byte		"FrameType"
	.byte		0
	.4byte		.L425
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L428:
.L280:
	.sleb128	11
	.4byte		.L409
	.uleb128	117
	.uleb128	1
	.4byte		.L429-.L2
	.uleb128	52
.L45:
	.sleb128	12
	.byte		"ChannelIdx_u8"
	.byte		0
	.4byte		.L292
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L46:
	.sleb128	12
	.byte		"IPduId"
	.byte		0
	.4byte		.L413
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L47:
	.sleb128	12
	.byte		"TimeoutTicks_u16"
	.byte		0
	.4byte		.L284
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L48:
	.sleb128	12
	.byte		"StMinTicks_u16"
	.byte		0
	.4byte		.L284
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L49:
	.sleb128	12
	.byte		"TotalLength"
	.byte		0
	.4byte		.L283
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L50:
	.sleb128	12
	.byte		"ProcessedLength"
	.byte		0
	.4byte		.L283
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L51:
	.sleb128	12
	.byte		"ProvidedBufferSize"
	.byte		0
	.4byte		.L283
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L52:
	.sleb128	12
	.byte		"State_u8"
	.byte		0
	.4byte		.L292
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L53:
	.sleb128	12
	.byte		"NextState_u8"
	.byte		0
	.4byte		.L292
	.sleb128	2
	.byte		0x23
	.uleb128	15
	.byte		0x1
.L54:
	.sleb128	12
	.byte		"BlockSize_u16"
	.byte		0
	.4byte		.L284
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L55:
	.sleb128	12
	.byte		"WftCounter_u16"
	.byte		0
	.4byte		.L284
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L56:
	.sleb128	12
	.byte		"SequenceNumber_u8"
	.byte		0
	.4byte		.L292
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L57:
	.sleb128	12
	.byte		"StMin_u8"
	.byte		0
	.4byte		.L292
	.sleb128	2
	.byte		0x23
	.uleb128	21
	.byte		0x1
.L58:
	.sleb128	12
	.byte		"TempBuffer_au8"
	.byte		0
	.4byte		.L430
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L59:
	.sleb128	12
	.byte		"TempLength_u8"
	.byte		0
	.4byte		.L292
	.sleb128	2
	.byte		0x23
	.uleb128	29
	.byte		0x1
.L60:
	.sleb128	12
	.byte		"CanIfDLC_u8"
	.byte		0
	.4byte		.L292
	.sleb128	2
	.byte		0x23
	.uleb128	30
	.byte		0x1
.L61:
	.sleb128	12
	.byte		"CanIfData_au8"
	.byte		0
	.4byte		.L432
	.sleb128	2
	.byte		0x23
	.uleb128	31
	.byte		0x1
.L62:
	.sleb128	12
	.byte		"ULayerIndFlag_b"
	.byte		0
	.4byte		.L274
	.sleb128	2
	.byte		0x23
	.uleb128	39
	.byte		0x1
.L63:
	.sleb128	12
	.byte		"ShutdownFlag_b"
	.byte		0
	.4byte		.L274
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L64:
	.sleb128	12
	.byte		"RemainingCFInBlock_u16"
	.byte		0
	.4byte		.L284
	.sleb128	2
	.byte		0x23
	.uleb128	42
	.byte		0x1
.L65:
	.sleb128	12
	.byte		"LastCFofNSduFlag_b"
	.byte		0
	.4byte		.L274
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L66:
	.sleb128	12
	.byte		"RequiredBufferSize"
	.byte		0
	.4byte		.L283
	.sleb128	2
	.byte		0x23
	.uleb128	46
	.byte		0x1
.L67:
	.sleb128	12
	.byte		"CallerApiId"
	.byte		0
	.4byte		.L292
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L68:
	.sleb128	12
	.byte		"FrameSize"
	.byte		0
	.4byte		.L292
	.sleb128	2
	.byte		0x23
	.uleb128	49
	.byte		0x1
.L69:
	.sleb128	12
	.byte		"CriticalSectionStatus_b"
	.byte		0
	.4byte		.L274
	.sleb128	2
	.byte		0x23
	.uleb128	50
	.byte		0x1
	.sleb128	0
.L429:
	.section	.debug_info,,n
.L304:
	.sleb128	13
	.4byte		.L434
	.uleb128	69
	.uleb128	1
	.4byte		.L435-.L2
	.byte		"VSTAR_PduInfoType"
	.byte		0
	.uleb128	8
.L41:
	.sleb128	12
	.byte		"SduDataPtr"
	.byte		0
	.4byte		.L436
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L42:
	.sleb128	12
	.byte		"SduLength"
	.byte		0
	.4byte		.L283
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L435:
	.section	.debug_info,,n
.L427:
	.sleb128	14
	.4byte		.L409
	.uleb128	117
	.uleb128	1
	.4byte		.L437-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	15
	.byte		"CANTP_FRAME_TYPE_CAN20"
	.byte		0
	.sleb128	0
	.sleb128	15
	.byte		"CANTP_FRAME_TYPE_CANFD"
	.byte		0
	.sleb128	1
	.sleb128	0
.L437:
.L424:
	.sleb128	14
	.4byte		.L409
	.uleb128	108
	.uleb128	1
	.4byte		.L438-.L2
	.uleb128	4
	.sleb128	15
	.byte		"CANTP_FUNCTIONAL"
	.byte		0
	.sleb128	0
	.sleb128	15
	.byte		"CANTP_PHYSICAL"
	.byte		0
	.sleb128	1
	.sleb128	0
.L438:
.L421:
	.sleb128	14
	.4byte		.L409
	.uleb128	98
	.uleb128	1
	.4byte		.L439-.L2
	.uleb128	4
	.sleb128	15
	.byte		"CANTP_OFF"
	.byte		0
	.sleb128	0
	.sleb128	15
	.byte		"CANTP_ON"
	.byte		0
	.sleb128	1
	.sleb128	0
.L439:
.L418:
	.sleb128	14
	.4byte		.L409
	.uleb128	87
	.uleb128	1
	.4byte		.L440-.L2
	.uleb128	4
	.sleb128	15
	.byte		"CANTP_STANDARD"
	.byte		0
	.sleb128	0
	.sleb128	15
	.byte		"CANTP_EXTENDED"
	.byte		0
	.sleb128	1
	.sleb128	15
	.byte		"CANTP_MIXED"
	.byte		0
	.sleb128	2
	.sleb128	0
.L440:
	.section	.debug_info,,n
.L307:
	.sleb128	16
	.4byte		.L441
	.uleb128	50
	.uleb128	14
	.4byte		.L442-.L2
	.byte		"VSTAR_BufReq_ReturnType"
	.byte		0
	.uleb128	4
	.sleb128	15
	.byte		"BUFREQ_OK"
	.byte		0
	.sleb128	0
	.sleb128	15
	.byte		"BUFREQ_E_NOT_OK"
	.byte		0
	.sleb128	1
	.sleb128	15
	.byte		"BUFREQ_E_BUSY"
	.byte		0
	.sleb128	2
	.sleb128	15
	.byte		"BUFREQ_E_OVFL"
	.byte		0
	.sleb128	3
	.sleb128	0
.L442:
	.section	.debug_info,,n
.L275:
	.sleb128	17
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L274:
	.sleb128	18
	.byte		"boolean"
	.byte		0
	.4byte		.L275
.L279:
	.sleb128	18
	.byte		"CanTp_Channel_t"
	.byte		0
	.4byte		.L280
	.section	.debug_info,,n
.L278:
	.sleb128	19
	.4byte		.L279
	.section	.debug_info,,n
.L277:
	.sleb128	20
	.4byte		.L278
.L285:
	.sleb128	17
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L284:
	.sleb128	18
	.byte		"uint16"
	.byte		0
	.4byte		.L285
.L283:
	.sleb128	18
	.byte		"PduLengthType"
	.byte		0
	.4byte		.L284
.L288:
	.sleb128	20
	.4byte		.L284
.L292:
	.sleb128	18
	.byte		"uint8"
	.byte		0
	.4byte		.L275
.L291:
	.sleb128	20
	.4byte		.L292
.L303:
	.sleb128	18
	.byte		"PduInfoType"
	.byte		0
	.4byte		.L304
.L306:
	.sleb128	18
	.byte		"BufReq_ReturnType"
	.byte		0
	.4byte		.L307
.L314:
	.sleb128	20
	.4byte		.L274
.L345:
	.sleb128	19
	.4byte		.L303
.L344:
	.sleb128	20
	.4byte		.L345
.L385:
	.sleb128	18
	.byte		"CanTp_RxNSdu_t"
	.byte		0
	.4byte		.L386
.L384:
	.sleb128	20
	.4byte		.L385
.L383:
	.sleb128	19
	.4byte		.L384
.L390:
	.sleb128	18
	.byte		"CanTp_TxNSdu_t"
	.byte		0
	.4byte		.L391
.L389:
	.sleb128	20
	.4byte		.L390
.L388:
	.sleb128	19
	.4byte		.L389
.L395:
	.sleb128	18
	.byte		"CanTp_TxNSduConfig_t"
	.byte		0
	.4byte		.L396
.L394:
	.sleb128	20
	.4byte		.L395
.L393:
	.sleb128	19
	.4byte		.L394
.L399:
	.sleb128	18
	.byte		"CanTp_RxNSduParams_t"
	.byte		0
	.4byte		.L400
.L398:
	.sleb128	19
	.4byte		.L399
.L404:
	.sleb128	18
	.byte		"CanTp_GeneralConfig_t"
	.byte		0
	.4byte		.L405
.L403:
	.sleb128	20
	.4byte		.L404
.L402:
	.sleb128	19
	.4byte		.L403
	.section	.debug_info,,n
.L407:
	.sleb128	21
	.4byte		.L408-.L2
	.4byte		.L291
	.section	.debug_info,,n
	.sleb128	22
	.uleb128	64
	.sleb128	0
.L408:
.L413:
	.sleb128	18
	.byte		"PduIdType"
	.byte		0
	.4byte		.L284
.L412:
	.sleb128	20
	.4byte		.L413
.L417:
	.sleb128	18
	.byte		"CanTp_AddressingMode_t"
	.byte		0
	.4byte		.L418
.L416:
	.sleb128	20
	.4byte		.L417
.L420:
	.sleb128	18
	.byte		"CanTp_Status_t"
	.byte		0
	.4byte		.L421
.L419:
	.sleb128	20
	.4byte		.L420
.L423:
	.sleb128	18
	.byte		"CanTp_TaType_t"
	.byte		0
	.4byte		.L424
.L422:
	.sleb128	20
	.4byte		.L423
.L426:
	.sleb128	18
	.byte		"CanTp_FrameType_t"
	.byte		0
	.4byte		.L427
.L425:
	.sleb128	20
	.4byte		.L426
.L430:
	.sleb128	21
	.4byte		.L431-.L2
	.4byte		.L292
	.sleb128	22
	.uleb128	6
	.sleb128	0
.L431:
.L432:
	.sleb128	21
	.4byte		.L433-.L2
	.4byte		.L292
	.sleb128	22
	.uleb128	7
	.sleb128	0
.L433:
.L436:
	.sleb128	19
	.4byte		.L292
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L281:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),3
	.d2locend
.L286:
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),0
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),5
	.d2locend
.L289:
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),5
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo7),5
	.d2locend
.L293:
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo13),0
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo15),4
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo5),0
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo17),4
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo19),0
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo21),0
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo23),0
	.d2locend
.L299:
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo25),3
	.d2locreg	%offsetof(.Llo26), %offsetof(.Llo27),31
	.d2locend
.L301:
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo28),30
	.d2locend
.L308:
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo30),3
	.d2locreg	%offsetof(.Llo31), %offsetof(.Llo32),3
	.d2locend
.L315:
	.d2locreg	%offsetof(.Llo33), %offsetof(.Llo34),3
	.d2locreg	%offsetof(.Llo35), %offsetof(.Llo36),3
	.d2locend
.L321:
	.d2locreg	%offsetof(.Llo37), %offsetof(.Llo38),3
	.d2locreg	%offsetof(.Llo39), %offsetof(.Llo40),30
	.d2locreg	%offsetof(.Llo41), %offsetof(.Llo42),30
	.d2locend
.L323:
	.d2locreg	%offsetof(.Llo39), %offsetof(.Llo43),31
	.d2locreg	%offsetof(.Llo44), %offsetof(.Llo40),3
	.d2locreg	%offsetof(.Llo41), %offsetof(.Llo45),31
	.d2locend
.L325:
	.d2locreg	%offsetof(.Llo46), %offsetof(.Llo47),3
	.d2locreg	%offsetof(.Llo48), %offsetof(.Llo49),3
	.d2locreg	%offsetof(.Llo50), %offsetof(.Llo51),3
	.d2locend
.L331:
	.d2locreg	%offsetof(.Llo52), %offsetof(.Llo53),3
	.d2locreg	%offsetof(.Llo54), %offsetof(.Llo55),3
	.d2locreg	%offsetof(.Llo56), %offsetof(.Llo57),0
	.d2locend
.L333:
	.d2locreg	%offsetof(.Llo58), %offsetof(.Llo53),0
	.d2locreg	%offsetof(.Llo59), %offsetof(.Llo60),0
	.d2locreg	%offsetof(.Llo61), %offsetof(.Llo62),0
	.d2locreg	%offsetof(.Llo63), %offsetof(.Llo64),0
	.d2locreg	%offsetof(.Llo65), %offsetof(.Llo66),0
	.d2locreg	%offsetof(.Llo67), %offsetof(.Llo68),0
	.d2locreg	%offsetof(.Llo69), %offsetof(.Llo55),0
	.d2locreg	%offsetof(.Llo70), %offsetof(.Llo44),0
	.d2locend
.L335:
	.d2locreg	%offsetof(.Llo71), %offsetof(.Llo72),3
	.d2locreg	%offsetof(.Llo73), %offsetof(.Llo54),3
	.d2locend
.L337:
	.d2locreg	%offsetof(.Llo74), %offsetof(.Llo51),0
	.d2locreg	%offsetof(.Llo75), %offsetof(.Llo76),3
	.d2locreg	%offsetof(.Llo77), %offsetof(.Llo78),4
	.d2locreg	%offsetof(.Llo79), %offsetof(.Llo58),0
	.d2locreg	%offsetof(.Llo80), %offsetof(.Llo71),3
	.d2locreg	%offsetof(.Llo81), %offsetof(.Llo72),4
	.d2locreg	%offsetof(.Llo59), %offsetof(.Llo60),4
	.d2locreg	%offsetof(.Llo82), %offsetof(.Llo62),4
	.d2locreg	%offsetof(.Llo83), %offsetof(.Llo66),4
	.d2locreg	%offsetof(.Llo84), %offsetof(.Llo55),4
	.d2locend
.L343:
	.d2locreg	%offsetof(.Llo85), %offsetof(.Llo86),3
	.d2locreg	%offsetof(.Llo87), %offsetof(.Llo88),31
	.d2locend
.L346:
	.d2locreg	%offsetof(.Llo85), %offsetof(.Llo87),4
	.d2locreg	%offsetof(.Llo89), %offsetof(.Llo90),30
	.d2locreg	%offsetof(.Llo91), %offsetof(.Llo92),30
	.d2locreg	%offsetof(.Llo88), %offsetof(.Llo93),4
	.d2locend
.L352:
	.d2locreg	%offsetof(.Llo94), %offsetof(.Llo95),3
	.d2locreg	%offsetof(.Llo96), %offsetof(.Llo97),3
	.d2locreg	%offsetof(.Llo98), %offsetof(.Llo92),3
	.d2locend
.L358:
	.d2locreg	%offsetof(.Llo99), %offsetof(.Llo100),3
	.d2locreg	%offsetof(.Llo101), %offsetof(.Llo102),31
	.d2locend
.L360:
	.d2locreg	%offsetof(.Llo103), %offsetof(.Llo104),3
	.d2locreg	%offsetof(.Llo105), %offsetof(.Llo106),3
	.d2locreg	%offsetof(.Llo107), %offsetof(.Llo108),3
	.d2locreg	%offsetof(.Llo109), %offsetof(.Llo110),3
	.d2locreg	%offsetof(.Llo111), %offsetof(.Llo112),3
	.d2locreg	%offsetof(.Llo113), %offsetof(.Llo114),3
	.d2locreg	%offsetof(.Llo115), %offsetof(.Llo116),3
	.d2locreg	%offsetof(.Llo117), %offsetof(.Llo118),3
	.d2locreg	%offsetof(.Llo119), %offsetof(.Llo120),3
	.d2locend
.L367:
	.d2locreg	%offsetof(.Llo121), %offsetof(.Llo122),0
	.d2locreg	%offsetof(.Llo123), %offsetof(.Llo124),0
	.d2locend
.L369:
	.d2locreg	%offsetof(.Llo125), %offsetof(.Llo124),4
	.d2locend
.L375:
	.d2locreg	%offsetof(.Llo126), %offsetof(.Llo127),3
	.d2locreg	%offsetof(.Llo128), %offsetof(.Llo129),31
	.d2locend
.L378:
	.d2locreg	%offsetof(.Llo130), %offsetof(.Llo131),3
	.d2locreg	%offsetof(.Llo132), %offsetof(.Llo129),3
	.d2locend
.L380:
	.d2locreg	%offsetof(.Llo126), %offsetof(.Llo133),30
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "CanTp_RxBufferManager"
	.wrcm.nstrlist "calls", "PduR_CanTpCopyRxData"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "CanTp_RequestTxBuffer"
	.wrcm.nstrlist "calls", "CanTp_StopChannel","CanTp_TxBufferBusyProcess","PduR_CanTpCopyTxData"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "CanTp_TxBufferBusyProcess"
	.wrcm.nstrlist "calls", "CanTp_StopChannel","PduR_CanTpCopyTxData"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "CanTp_RequestRxBuffer"
	.wrcm.nstrlist "calls", "CanTp_FreeChannel","CanTp_PrepareFCFrame","CanTp_RxBufferCopyProcess","CanTp_StopChannel","Det_ReportError","PduR_CanTpStartOfReception"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "CanTp_RxBufferCopyProcess"
	.wrcm.nstrlist "calls", "CanTp_IsSufficientBuffer","CanTp_PrepareFCFrame","CanTp_StopChannel","PduR_CanTpCopyRxData"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "CanTp_IsSufficientBuffer"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanTp_BufferRequest.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanTp_BufferRequest.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanTp_BufferRequest.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanTp_BufferRequest.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanTp_BufferRequest.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanTp_BufferRequest.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\CanTp\ssc\make\..\src\CanTp_BufferRequest.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
