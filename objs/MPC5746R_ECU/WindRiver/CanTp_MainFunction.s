#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"CanTp_MainFunction.c"
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
# static FUNC(boolean, CANTP_CODE) CanTp_PrepareFC_Wait_OnTimeout
	.align		1
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTp\\ssc\\make\\..\\src\\CanTp_MainFunction.c"
        .d2line         439,34
#$$ld
.L284:

#$$bf	CanTp_PrepareFC_Wait_OnTimeout,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
CanTp_PrepareFC_Wait_OnTimeout:
.Llo1:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# CanTpChannel_p=r3 CanTpChannel_p=r3
	.d2prologue_end
# (
#     CONSTP2VAR(CanTp_Channel_t, AUTOMATIC, CANTP_APPL_DATA) CanTpChannel_p
# )
# {
#     P2CONST(CanTp_RxNSduConfig_t, AUTOMATIC, CANTP_APPL_CONST) CanTpRxNSduConfig_p;
#     VAR(boolean, AUTOMATIC) needToSendFC = CANTP_FALSE;
	.d2line		445
	diab.li		r31,0		# needToSendFC=r31
# 
#     CanTpRxNSduConfig_p = &CanTp_RxNSduConfig_p[CanTpChannel_p->IPduId];
	.d2line		447
	lis		r4,CanTp_RxNSduConfig_p@ha
	lwz		r0,CanTp_RxNSduConfig_p@l(r4)
	lhz		r4,2(r3)		# CanTpChannel_p=r3
	rlwinm		r4,r4,4,12,27
	se_add		r0,r4
.Llo5:
	mr		r4,r0		# CanTpRxNSduConfig_p=r4 CanTpRxNSduConfig_p=r0
# 
#     /*It checks 1 for timeout because at the end of CanTp_MainFunction it will be decremented*/
#     if(CanTpChannel_p->TimeoutTicks_u16 == 1U)
	.d2line		450
	lhz		r0,4(r3)		# CanTpChannel_p=r3
.Llo6:
	e_cmphl16i	r0,1
	bc		0,2,.L206	# ne
	.section	.text_vle
.L303:
#     {
#         CONST(boolean, AUTOMATIC) lastCFofNotLastBlock = (boolean) ((CANTP_CH_RX_SEGMENTED_UPLOAD_CF_DATA == CanTpChannel_p->State_u8) &&
	.d2line		452
.Llo7:
	lbz		r0,14(r3)		# CanTpChannel_p=r3
	cmpi		0,0,r0,67
	bc		0,2,.L212	# ne
	lhz		r0,42(r3)		# CanTpChannel_p=r3
	se_cmpi		r0,0
	bc		0,2,.L212	# ne
	lbz		r0,44(r3)		# CanTpChannel_p=r3
	se_cmpi		r0,0
	bc		1,2,.L210	# eq
.L212:
	diab.li		r5,0
.Llo12:
	b		.L211
.L210:
.Llo13:
	diab.li		r5,1
.L211:
.Llo14:
	mr		r5,r5		# lastCFofNotLastBlock=r5 lastCFofNotLastBlock=r5
#                 ((uint16) CANTP_GENERAL_ZERO == CanTpChannel_p->RemainingCFInBlock_u16) &&
#                 (CANTP_FALSE == CanTpChannel_p->LastCFofNSduFlag_b));
# 
#         if((CANTP_CH_RX_SEGMENTED_UPLOAD_FF_DATA == CanTpChannel_p->State_u8) ||
	.d2line		456
	lbz		r0,14(r3)		# CanTpChannel_p=r3
	cmpi		0,0,r0,66
	bc		1,2,.L213	# eq
	lbz		r0,14(r3)		# CanTpChannel_p=r3
	cmpi		0,0,r0,65
	bc		1,2,.L213	# eq
	lbz		r0,14(r3)		# CanTpChannel_p=r3
	cmpi		0,0,r0,69
	bc		1,2,.L213	# eq
	rlwinm		r5,r5,0,24,31		# lastCFofNotLastBlock=r5 lastCFofNotLastBlock=r5
	se_cmpi		r5,0		# lastCFofNotLastBlock=r5
	bc		1,2,.L206	# eq
.L213:
#                 (CANTP_CH_RX_SEGMENTED_RECEPTION_START_REQUEST == CanTpChannel_p->State_u8) ||
#                 (CANTP_CH_RX_SEGMENTED_BUFREQ_NEXT_BLOCK == CanTpChannel_p->State_u8) ||
#                 (CANTP_FALSE != lastCFofNotLastBlock))
#         {
#             if(CanTpChannel_p->WftCounter_u16 < CanTpRxNSduConfig_p->CanTpRxWftMax_u16)
	.d2line		461
.Llo8:
	lhz		r0,18(r3)		# CanTpChannel_p=r3
.Llo9:
	lhz		r4,8(r4)		# CanTpRxNSduConfig_p=r4 CanTpRxNSduConfig_p=r4
	se_cmp		r0,r4		# CanTpRxNSduConfig_p=r4
	bc		0,0,.L208	# ge
#             {
#                 /* It is possible to send more Flow Control Wait */
#                 CanTpChannel_p->NextState_u8 = CanTpChannel_p->State_u8;
	.d2line		464
.Llo10:
	lbz		r0,14(r3)		# CanTpChannel_p=r3
	stb		r0,15(r3)		# CanTpChannel_p=r3
# 
#                 CanTp_PrepareFCFrame(CanTpChannel_p, CANTP_FRAME_FC_WAIT);
	.d2line		466
	mr		r3,r3		# CanTpChannel_p=r3 CanTpChannel_p=r3
.Llo2:
	diab.li		r4,49		# CanTpRxNSduConfig_p=r4
	bl		CanTp_PrepareFCFrame
# 
#                 /* There is a FC frame to send*/
#                 needToSendFC = CANTP_TRUE;
	.d2line		469
	diab.li		r31,1		# needToSendFC=r31
	b		.L206
.L208:
#             }
#             else
#             {
#                 /*Maximum number of configured wft count reached */
#                 CanTp_StopChannel(CanTpChannel_p, TRUE, NTFRSLT_E_WFT_OVRN);
	.d2line		474
.Llo3:
	mr		r3,r3		# CanTpChannel_p=r3 CanTpChannel_p=r3
.Llo4:
	diab.li		r4,1		# CanTpRxNSduConfig_p=r4
	diab.li		r5,8		# lastCFofNotLastBlock=r5
	bl		CanTp_StopChannel
	.section	.text_vle
.L304:
.L206:
#             }
#         }
#     }
#     return needToSendFC;
	.d2line		478
	rlwinm		r3,r31,0,24,31		# CanTpChannel_p=r3 needToSendFC=r31
# }
	.d2line		479
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
.L285:
	.type		CanTp_PrepareFC_Wait_OnTimeout,@function
	.size		CanTp_PrepareFC_Wait_OnTimeout,.-CanTp_PrepareFC_Wait_OnTimeout
# Number of nodes = 118

# Allocations for CanTp_PrepareFC_Wait_OnTimeout
#	?a4		CanTpChannel_p
#	?a5		$$41
#	?a6		CanTpRxNSduConfig_p
#	?a7		needToSendFC
#	?a8		lastCFofNotLastBlock
# static FUNC(boolean, CANTP_CODE) CanTp_TimeoutStop
	.align		1
	.section	.text_vle
        .d2line         614,34
#$$ld
.L312:

#$$bf	CanTp_TimeoutStop,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
CanTp_TimeoutStop:
.Llo15:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# CanTpChannel_p=r3 CanTpChannel_p=r3
	mr		r5,r4		# PdurResult=r5 PdurResult=r4
	.d2prologue_end
# (
#     CONSTP2VAR(CanTp_Channel_t, AUTOMATIC, CANTP_APPL_DATA) CanTpChannel_p,
#     CONST(NotifResultType, AUTOMATIC) PdurResult
# )
# {
#     VAR(boolean, AUTOMATIC) RetValue = CANTP_FALSE;
	.d2line		620
	diab.li		r4,0		# RetValue=r4
# 
#     /* Check for timeout and stop */
#     if((uint16) CANTP_GENERAL_ZERO == CanTpChannel_p->TimeoutTicks_u16)
	.d2line		623
.Llo25:
	lhz		r0,4(r3)		# CanTpChannel_p=r3
	se_cmpi		r0,0
	bc		0,2,.L240	# ne
#     {
#         /*Check if the state is in RX mode*/
#         if(CANTP_CH_RX_PROCESSING == (uint8) (CanTpChannel_p->State_u8 & CANTP_STATE_MASK))
	.d2line		626
.Llo26:
	lbz		r0,14(r3)		# CanTpChannel_p=r3
	rlwinm		r0,r0,0,24,25
	cmpi		0,0,r0,64
	bc		0,2,.L236	# ne
#         {
#             CanTp_StopChannel(CanTpChannel_p, FALSE, PdurResult);
	.d2line		628
.Llo16:
	rlwinm		r5,r5,0,24,31		# PdurResult=r5 PdurResult=r5
.Llo17:
	mr		r3,r3		# CanTpChannel_p=r3 CanTpChannel_p=r3
.Llo18:
	diab.li		r4,0		# RetValue=r4
	bl		CanTp_StopChannel
# 
# #if (CANTP_DEV_ERROR_DETECT == STD_ON)
#             /*Inform DET with the appropriate value*/
#             (void)Det_ReportError(CANTP_MODULE_ID, CANTP_INSTANCE_ID,
	.d2line		632
	diab.li		r3,35		# CanTpChannel_p=r3
	diab.li		r4,0		# RetValue=r4
	diab.li		r5,6		# PdurResult=r5
	diab.li		r6,192
	bl		Det_ReportError
	b		.L237
.L236:
#                     CANTP_ID_MAINFUNCTION, CANTP_E_RX_COM);
# #endif
#         }
# 
#         else if(CANTP_CH_TX_PROCESSING == (uint8) (CanTpChannel_p->State_u8 & CANTP_STATE_MASK))
	.d2line		637
.Llo19:
	lbz		r0,14(r3)		# CanTpChannel_p=r3
	rlwinm		r0,r0,0,24,25
	cmpi		0,0,r0,128
	bc		0,2,.L238	# ne
#         {
#             CanTp_StopChannel(CanTpChannel_p, FALSE, PdurResult);
	.d2line		639
.Llo20:
	rlwinm		r5,r5,0,24,31		# PdurResult=r5 PdurResult=r5
.Llo21:
	mr		r3,r3		# CanTpChannel_p=r3 CanTpChannel_p=r3
.Llo22:
	diab.li		r4,0		# RetValue=r4
	bl		CanTp_StopChannel
# 
# #if (CANTP_DEV_ERROR_DETECT == STD_ON)
#             /*Inform DET with the appropriate value*/
#             (void)Det_ReportError(CANTP_MODULE_ID, CANTP_INSTANCE_ID,
	.d2line		643
	diab.li		r3,35		# CanTpChannel_p=r3
	diab.li		r4,0		# RetValue=r4
	diab.li		r5,6		# PdurResult=r5
	diab.li		r6,208
	bl		Det_ReportError
	b		.L237
.L238:
#                     CANTP_ID_MAINFUNCTION, CANTP_E_TX_COM);
# #endif
#         }
#         else
#         {
#             CanTp_StopChannel(CanTpChannel_p, TRUE, PdurResult);
	.d2line		649
.Llo27:
	rlwinm		r5,r5,0,24,31		# PdurResult=r5 PdurResult=r5
.Llo23:
	mr		r3,r3		# CanTpChannel_p=r3 CanTpChannel_p=r3
.Llo24:
	diab.li		r4,1		# RetValue=r4
	bl		CanTp_StopChannel
.L237:
#         }
#         /* Indicate the caller that a timeout has occurred */
#         RetValue = CANTP_TRUE;
	.d2line		652
	diab.li		r4,1		# RetValue=r4
.L240:
#     }
#     /*Timeout Not occurred*/
#     else
#     {
#         /*Do Nothing*/
#     }
# 
#     return RetValue;
	.d2line		660
.Llo28:
	rlwinm		r3,r4,0,24,31		# CanTpChannel_p=r3 RetValue=r4
# }/* End of CanTp_TimeoutStop() */
	.d2line		661
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo29:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L313:
	.type		CanTp_TimeoutStop,@function
	.size		CanTp_TimeoutStop,.-CanTp_TimeoutStop
# Number of nodes = 82

# Allocations for CanTp_TimeoutStop
#	?a4		CanTpChannel_p
#	?a5		PdurResult
#	?a6		RetValue
# static FUNC(boolean, CANTP_CODE) CanTp_StateProcess_RxUploadFrameData
	.align		1
	.section	.text_vle
        .d2line         495,34
#$$ld
.L324:

#$$bf	CanTp_StateProcess_RxUploadFrameData,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
CanTp_StateProcess_RxUploadFrameData:
.Llo30:
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
#     VAR(boolean, AUTOMATIC) timeoutOccured;
#     VAR(boolean, AUTOMATIC) needToSendFC = CANTP_FALSE;
	.d2line		501
	diab.li		r30,0		# needToSendFC=r30
# 
#     timeoutOccured = CanTp_TimeoutStop(CanTpChannel_p, NTFRSLT_E_NO_BUFFER);
	.d2line		503
	mr		r3,r31		# CanTpChannel_p=r3 CanTpChannel_p=r31
.Llo31:
	diab.li		r4,10
	bl		CanTp_TimeoutStop
.Llo34:
	mr		r3,r3		# timeoutOccured=r3 timeoutOccured=r3
# 
#     if(timeoutOccured == CANTP_FALSE)
	.d2line		505
	rlwinm		r3,r3,0,24,31		# timeoutOccured=r3 timeoutOccured=r3
	se_cmpi		r3,0		# timeoutOccured=r3
	bc		0,2,.L221	# ne
#     {
#         /* The return value of this function and CanTp_RxUploadFrameDataState(...) means
#          * the same: There is a frame to send. (so CanTp_StateProcessing function should be
#          * called once more in this main function in order to transmit the frame immediately)*/
#         needToSendFC = CanTp_RxBufferCopyProcess(CanTpChannel_p);
	.d2line		510
.Llo32:
	mr		r3,r31		# CanTpChannel_p=r3 CanTpChannel_p=r31
	bl		CanTp_RxBufferCopyProcess
	mr		r30,r3		# needToSendFC=r30 needToSendFC=r3
# 
#         if(CANTP_FALSE == needToSendFC)
	.d2line		512
	rlwinm		r3,r3,0,24,31		# needToSendFC=r3 needToSendFC=r3
	se_cmpi		r3,0		# needToSendFC=r3
	bc		0,2,.L221	# ne
#         {
#             needToSendFC = CanTp_PrepareFC_Wait_OnTimeout(CanTpChannel_p);
	.d2line		514
	mr		r3,r31		# CanTpChannel_p=r3 CanTpChannel_p=r31
	bl		CanTp_PrepareFC_Wait_OnTimeout
	mr		r30,r3		# needToSendFC=r30 needToSendFC=r3
.L221:
#         }
#     }
#     return needToSendFC;
	.d2line		517
.Llo33:
	rlwinm		r3,r30,0,24,31		# timeoutOccured=r3 needToSendFC=r30
# }
	.d2line		518
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo35:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L325:
	.type		CanTp_StateProcess_RxUploadFrameData,@function
	.size		CanTp_StateProcess_RxUploadFrameData,.-CanTp_StateProcess_RxUploadFrameData
# Number of nodes = 33

# Allocations for CanTp_StateProcess_RxUploadFrameData
#	?a4		CanTpChannel_p
#	?a5		timeoutOccured
#	?a6		needToSendFC
# static FUNC(boolean, CANTP_CODE) CanTp_StateProcess_ReceptionStartRequest
	.align		1
	.section	.text_vle
        .d2line         531,34
#$$ld
.L334:

#$$bf	CanTp_StateProcess_ReceptionStartRequest,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
CanTp_StateProcess_ReceptionStartRequest:
.Llo36:
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
#     VAR(boolean, AUTOMATIC) timeoutOccured;
#     VAR(boolean, AUTOMATIC) needToSendFC = CANTP_FALSE;
	.d2line		537
	diab.li		r30,0		# needToSendFC=r30
# 
#     /* The PduR_CanTpStartOfReception(...) was not successful previously so the CanTp retries to
#      * lock an rx buffer in the PduR by additional calls of CanTp_RequestRxBuffer(...) function */
#     timeoutOccured = CanTp_TimeoutStop(CanTpChannel_p, NTFRSLT_E_NO_BUFFER);
	.d2line		541
	mr		r3,r31		# CanTpChannel_p=r3 CanTpChannel_p=r31
.Llo37:
	diab.li		r4,10
	bl		CanTp_TimeoutStop
.Llo40:
	mr		r3,r3		# timeoutOccured=r3 timeoutOccured=r3
# 
#     if(CANTP_FALSE == timeoutOccured)
	.d2line		543
	rlwinm		r3,r3,0,24,31		# timeoutOccured=r3 timeoutOccured=r3
	se_cmpi		r3,0		# timeoutOccured=r3
	bc		0,2,.L225	# ne
#     {
#         needToSendFC = CanTp_RequestRxBuffer(CanTpChannel_p);
	.d2line		545
.Llo38:
	mr		r3,r31		# CanTpChannel_p=r3 CanTpChannel_p=r31
	bl		CanTp_RequestRxBuffer
	mr		r30,r3		# needToSendFC=r30 needToSendFC=r3
# 
#         if(CANTP_FALSE == needToSendFC)
	.d2line		547
	rlwinm		r3,r3,0,24,31		# needToSendFC=r3 needToSendFC=r3
	se_cmpi		r3,0		# needToSendFC=r3
	bc		0,2,.L225	# ne
#         {
#             needToSendFC = CanTp_PrepareFC_Wait_OnTimeout(CanTpChannel_p);
	.d2line		549
	mr		r3,r31		# CanTpChannel_p=r3 CanTpChannel_p=r31
	bl		CanTp_PrepareFC_Wait_OnTimeout
	mr		r30,r3		# needToSendFC=r30 needToSendFC=r3
.L225:
#         }
#     }
#     return needToSendFC;
	.d2line		552
.Llo39:
	rlwinm		r3,r30,0,24,31		# timeoutOccured=r3 needToSendFC=r30
# }
	.d2line		553
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo41:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L335:
	.type		CanTp_StateProcess_ReceptionStartRequest,@function
	.size		CanTp_StateProcess_ReceptionStartRequest,.-CanTp_StateProcess_ReceptionStartRequest
# Number of nodes = 33

# Allocations for CanTp_StateProcess_ReceptionStartRequest
#	?a4		CanTpChannel_p
#	?a5		timeoutOccured
#	?a6		needToSendFC
# static FUNC(boolean, CANTP_CODE) CanTp_StateProcess_RxBufreqNextBlock
	.align		1
	.section	.text_vle
        .d2line         567,34
#$$ld
.L344:

#$$bf	CanTp_StateProcess_RxBufreqNextBlock,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
CanTp_StateProcess_RxBufreqNextBlock:
.Llo42:
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
	.d2line		572
	diab.li		r30,0		# needToSendFC=r30
#     VAR(boolean, AUTOMATIC) timeoutOccured;
# 
#     timeoutOccured = CanTp_TimeoutStop(CanTpChannel_p, NTFRSLT_E_NO_BUFFER);
	.d2line		575
	mr		r3,r31		# CanTpChannel_p=r3 CanTpChannel_p=r31
.Llo43:
	diab.li		r4,10
	bl		CanTp_TimeoutStop
.Llo52:
	mr		r3,r3		# timeoutOccured=r3 timeoutOccured=r3
# 
#     if(CANTP_FALSE == timeoutOccured)
	.d2line		577
	rlwinm		r3,r3,0,24,31		# timeoutOccured=r3 timeoutOccured=r3
	se_cmpi		r3,0		# timeoutOccured=r3
	bc		0,2,.L229	# ne
#     {
#         /* Checks if the next block would fit in the currently available rx buffer in the PduR.
#          * If the buffer in the PduR is not sufficient then more is requested and Wait frames
#          * are sent at the end of the BR timeouts otherwise a CTS flow control frame is sent*/
#         if(FALSE != CanTp_RxBufferManager(CanTpChannel_p))
	.d2line		582
.Llo44:
	mr		r3,r31		# CanTpChannel_p=r3 CanTpChannel_p=r31
	bl		CanTp_RxBufferManager
.Llo53:
	e_andi.		r3,r3,255		# timeoutOccured=r3 timeoutOccured=r3
.Llo54:
	bc		1,2,.L230	# eq
#         {
#             /* This means the buffer is sufficient to upload the whole next block without
#              * additional buffer requests between the flow control frames or between the
#              * flow control frame and the end of the NSdu*/
#             CanTp_PrepareFCFrame(CanTpChannel_p, CANTP_FRAME_FC_CTS);
	.d2line		587
.Llo46:
	mr		r3,r31		# CanTpChannel_p=r3 CanTpChannel_p=r31
	diab.li		r4,48
	bl		CanTp_PrepareFCFrame
#             needToSendFC = CANTP_TRUE;
	.d2line		588
	diab.li		r30,1		# needToSendFC=r30
.Llo47:
	b		.L229
.L230:
#         }
#         else
#         {
#             /* The return value of this function and CanTp_PrepareFC_Wait_OnTimeout(...) means
#              * the same: There is a frame to send. (so this function should be called once more
#              * in this main function in order to transmit the frame immediately) */
#             needToSendFC = CanTp_PrepareFC_Wait_OnTimeout(CanTpChannel_p);
	.d2line		595
.Llo48:
	mr		r3,r31		# CanTpChannel_p=r3 CanTpChannel_p=r31
	bl		CanTp_PrepareFC_Wait_OnTimeout
.Llo49:
	mr		r30,r3		# needToSendFC=r30 needToSendFC=r3
.L229:
#         }
#     }
# 
#     return needToSendFC;
	.d2line		599
.Llo45:
	rlwinm		r3,r30,0,24,31		# timeoutOccured=r3 needToSendFC=r30
# }
	.d2line		600
	.d2epilogue_begin
.Llo50:
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo51:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L345:
	.type		CanTp_StateProcess_RxBufreqNextBlock,@function
	.size		CanTp_StateProcess_RxBufreqNextBlock,.-CanTp_StateProcess_RxBufreqNextBlock
# Number of nodes = 40

# Allocations for CanTp_StateProcess_RxBufreqNextBlock
#	?a4		CanTpChannel_p
#	?a5		needToSendFC
#	?a6		timeoutOccured
# static FUNC(void, CANTP_CODE) CanTp_ReqTxBufState
	.align		1
	.section	.text_vle
        .d2line         673,31
#$$ld
.L354:

#$$bf	CanTp_ReqTxBufState,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
CanTp_ReqTxBufState:
.Llo55:
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
#     /* Check for timeout and stop or request buffer */
#     if((uint16) CANTP_GENERAL_ZERO == CanTpChannel_p->TimeoutTicks_u16)
	.d2line		679
	lhz		r0,4(r3)		# CanTpChannel_p=r3
	se_cmpi		r0,0
	bc		0,2,.L246	# ne
#     {
#         /*Check if the state is in RX mode*/
#         if(CANTP_CH_RX_PROCESSING == (uint8) (CanTpChannel_p->State_u8 & CANTP_STATE_MASK))
	.d2line		682
	lbz		r0,14(r3)		# CanTpChannel_p=r3
	rlwinm		r0,r0,0,24,25
	cmpi		0,0,r0,64
	bc		0,2,.L247	# ne
#         {
#             CanTp_StopChannel(CanTpChannel_p, FALSE, NTFRSLT_E_NOT_OK);
	.d2line		684
	mr		r3,r3		# CanTpChannel_p=r3 CanTpChannel_p=r3
.Llo56:
	diab.li		r4,0
	diab.li		r5,1
	bl		CanTp_StopChannel
# 
# #if (CANTP_DEV_ERROR_DETECT == STD_ON)
#             /*Inform DET with the appropriate value*/
#             (void)Det_ReportError(CANTP_MODULE_ID, CANTP_INSTANCE_ID,
	.d2line		688
	diab.li		r3,35		# CanTpChannel_p=r3
	diab.li		r4,0
	diab.li		r5,6
	diab.li		r6,192
	bl		Det_ReportError
	b		.L245
.L247:
#                     CANTP_ID_MAINFUNCTION, CANTP_E_RX_COM);
# #endif
#         }
#         else if(CANTP_CH_TX_PROCESSING == (uint8) (CanTpChannel_p->State_u8 & CANTP_STATE_MASK))
	.d2line		692
.Llo57:
	lbz		r0,14(r3)		# CanTpChannel_p=r3
	rlwinm		r0,r0,0,24,25
	cmpi		0,0,r0,128
	bc		0,2,.L249	# ne
#         {
#             CanTp_StopChannel(CanTpChannel_p, FALSE, NTFRSLT_E_NOT_OK);
	.d2line		694
	mr		r3,r3		# CanTpChannel_p=r3 CanTpChannel_p=r3
.Llo58:
	diab.li		r4,0
	diab.li		r5,1
	bl		CanTp_StopChannel
# 
# #if (CANTP_DEV_ERROR_DETECT == STD_ON)
#             /*Inform DET with the appropriate value*/
#             (void)Det_ReportError(CANTP_MODULE_ID, CANTP_INSTANCE_ID,
	.d2line		698
	diab.li		r3,35		# CanTpChannel_p=r3
	diab.li		r4,0
	diab.li		r5,6
	diab.li		r6,208
	bl		Det_ReportError
	b		.L245
.L249:
#                     CANTP_ID_MAINFUNCTION, CANTP_E_TX_COM);
# #endif
#         }
#         else
#         {
#             CanTp_StopChannel(CanTpChannel_p, TRUE, NTFRSLT_E_NOT_OK);
	.d2line		704
.Llo59:
	mr		r3,r3		# CanTpChannel_p=r3 CanTpChannel_p=r3
.Llo60:
	diab.li		r4,1
	diab.li		r5,1
	bl		CanTp_StopChannel
	b		.L245
.L246:
#         }
#     }
#     else
#     {
#         /*Request for buffer*/
#         CanTp_PrepareTxDataFrame(CanTpChannel_p);
	.d2line		710
.Llo61:
	mr		r3,r3		# CanTpChannel_p=r3 CanTpChannel_p=r3
.Llo62:
	bl		CanTp_PrepareTxDataFrame
.L245:
#     }
# 
# }/* End of CanTp_ReqTxBufState() */
	.d2line		713
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L355:
	.type		CanTp_ReqTxBufState,@function
	.size		CanTp_ReqTxBufState,.-CanTp_ReqTxBufState
# Number of nodes = 76

# Allocations for CanTp_ReqTxBufState
#	?a4		CanTpChannel_p
# static FUNC(void, CANTP_CODE) CanTp_TxTransmitState
	.align		1
	.section	.text_vle
        .d2line         725,31
#$$ld
.L360:

#$$bf	CanTp_TxTransmitState,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
CanTp_TxTransmitState:
.Llo63:
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
#     /* Check for timeout and stop or Transmit next frame */
#     if((uint16) CANTP_GENERAL_ZERO == CanTpChannel_p->TimeoutTicks_u16)
	.d2line		731
	lhz		r0,4(r3)		# CanTpChannel_p=r3
	se_cmpi		r0,0
	bc		0,2,.L257	# ne
#     {
#         /*Check if the state is in RX mode*/
#         if(CANTP_CH_RX_PROCESSING == (uint8) (CanTpChannel_p->State_u8 & CANTP_STATE_MASK))
	.d2line		734
	lbz		r0,14(r3)		# CanTpChannel_p=r3
	rlwinm		r0,r0,0,24,25
	cmpi		0,0,r0,64
	bc		0,2,.L258	# ne
#         {
#             CanTp_StopChannel(CanTpChannel_p, FALSE, NTFRSLT_E_NOT_OK);
	.d2line		736
	mr		r3,r3		# CanTpChannel_p=r3 CanTpChannel_p=r3
.Llo64:
	diab.li		r4,0
	diab.li		r5,1
	bl		CanTp_StopChannel
# 
# #if (CANTP_DEV_ERROR_DETECT == STD_ON)
#             /*Inform DET with the appropriate value*/
#             (void)Det_ReportError(CANTP_MODULE_ID,CANTP_INSTANCE_ID,
	.d2line		740
	diab.li		r3,35		# CanTpChannel_p=r3
	diab.li		r4,0
	diab.li		r5,6
	diab.li		r6,192
	bl		Det_ReportError
	b		.L256
.L258:
#                     CANTP_ID_MAINFUNCTION, CANTP_E_RX_COM);
# #endif
#         }
#         else if(CANTP_CH_TX_PROCESSING == (uint8) (CanTpChannel_p->State_u8 & CANTP_STATE_MASK))
	.d2line		744
.Llo65:
	lbz		r0,14(r3)		# CanTpChannel_p=r3
	rlwinm		r0,r0,0,24,25
	cmpi		0,0,r0,128
	bc		0,2,.L260	# ne
#         {
#             CanTp_StopChannel(CanTpChannel_p, FALSE, NTFRSLT_E_NOT_OK);
	.d2line		746
	mr		r3,r3		# CanTpChannel_p=r3 CanTpChannel_p=r3
.Llo66:
	diab.li		r4,0
	diab.li		r5,1
	bl		CanTp_StopChannel
# 
# #if (CANTP_DEV_ERROR_DETECT == STD_ON)
#             /*Inform DET with the appropriate value*/
#             (void)Det_ReportError(CANTP_MODULE_ID,CANTP_INSTANCE_ID,
	.d2line		750
	diab.li		r3,35		# CanTpChannel_p=r3
	diab.li		r4,0
	diab.li		r5,6
	diab.li		r6,208
	bl		Det_ReportError
	b		.L256
.L260:
#                     CANTP_ID_MAINFUNCTION, CANTP_E_TX_COM);
# #endif
#         }
#         else
#         {
#             CanTp_StopChannel(CanTpChannel_p, TRUE, NTFRSLT_E_NOT_OK);
	.d2line		756
.Llo67:
	mr		r3,r3		# CanTpChannel_p=r3 CanTpChannel_p=r3
.Llo68:
	diab.li		r4,1
	diab.li		r5,1
	bl		CanTp_StopChannel
	b		.L256
.L257:
#         }
#     }
#     else
#     {
#         /*Transmit the channel*/
#         CanTp_CanIfTransmitChannel(CanTpChannel_p);
	.d2line		762
.Llo69:
	mr		r3,r3		# CanTpChannel_p=r3 CanTpChannel_p=r3
.Llo70:
	bl		CanTp_CanIfTransmitChannel
.L256:
#     }
# }/* End of CanTp_TxTransmitState() */
	.d2line		764
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L361:
	.type		CanTp_TxTransmitState,@function
	.size		CanTp_TxTransmitState,.-CanTp_TxTransmitState
# Number of nodes = 76

# Allocations for CanTp_TxTransmitState
#	?a4		CanTpChannel_p
# static FUNC(void, CANTP_CODE) CanTp_TxCfWaitState
	.align		1
	.section	.text_vle
        .d2line         776,31
#$$ld
.L366:

#$$bf	CanTp_TxCfWaitState,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
CanTp_TxCfWaitState:
.Llo71:
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
#     /* Check for timeout and stop or Transmit next frame */
#     if((uint16) CANTP_GENERAL_ZERO == CanTpChannel_p->StMinTicks_u16)
	.d2line		782
	lhz		r0,6(r3)		# CanTpChannel_p=r3
	se_cmpi		r0,0
	bc		0,2,.L267	# ne
#     {
#         /* first we have to request for a new buffer */
#         CanTpChannel_p->State_u8 = CANTP_CH_TX_REQBUF_CF;
	.d2line		785
	diab.li		r0,138
	stb		r0,14(r3)		# CanTpChannel_p=r3
#         /* Request New TX buffer */
#         CanTp_PrepareTxDataFrame(CanTpChannel_p);
	.d2line		787
	mr		r3,r3		# CanTpChannel_p=r3 CanTpChannel_p=r3
.Llo72:
	bl		CanTp_PrepareTxDataFrame
.L267:
#     }
#     else
#     {
#         /*Do nothing*/
#     }
# }/* End of CanTp_TxCfWaitState() */
	.d2line		793
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L367:
	.type		CanTp_TxCfWaitState,@function
	.size		CanTp_TxCfWaitState,.-CanTp_TxCfWaitState
# Number of nodes = 18

# Allocations for CanTp_TxCfWaitState
#	?a4		CanTpChannel_p
# static FUNC(void, CANTP_CODE) CanTp_RxTransmitFcState
	.align		1
	.section	.text_vle
        .d2line         805,31
#$$ld
.L372:

#$$bf	CanTp_RxTransmitFcState,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
CanTp_RxTransmitFcState:
.Llo73:
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
#     /* Check for timeout and stop or transmit FC frames */
#     if((uint16) CANTP_GENERAL_ZERO == CanTpChannel_p->TimeoutTicks_u16)
	.d2line		811
	lhz		r0,4(r3)		# CanTpChannel_p=r3
	se_cmpi		r0,0
	bc		0,2,.L272	# ne
#     {
#         /*N_Br Timeout has occurred*/
#         /*Stop Channel with appropriate feedback*/
# 
#         /*Check if the state is in RX mode*/
#         if(CANTP_CH_RX_PROCESSING == (uint8) (CanTpChannel_p->State_u8 & CANTP_STATE_MASK))
	.d2line		817
	lbz		r0,14(r3)		# CanTpChannel_p=r3
	rlwinm		r0,r0,0,24,25
	cmpi		0,0,r0,64
	bc		0,2,.L273	# ne
#         {
#             CanTp_StopChannel(CanTpChannel_p, FALSE, NTFRSLT_E_NOT_OK);
	.d2line		819
	mr		r3,r3		# CanTpChannel_p=r3 CanTpChannel_p=r3
.Llo74:
	diab.li		r4,0
	diab.li		r5,1
	bl		CanTp_StopChannel
# 
# #if (CANTP_DEV_ERROR_DETECT == STD_ON)
#             /*Inform DET with the appropriate value*/
#             (void)Det_ReportError(CANTP_MODULE_ID,CANTP_INSTANCE_ID,
	.d2line		823
	diab.li		r3,35		# CanTpChannel_p=r3
	diab.li		r4,0
	diab.li		r5,6
	diab.li		r6,192
	bl		Det_ReportError
	b		.L271
.L273:
#                     CANTP_ID_MAINFUNCTION,CANTP_E_RX_COM);
# #endif
#         }
#         else if(CANTP_CH_TX_PROCESSING == (uint8) (CanTpChannel_p->State_u8 & CANTP_STATE_MASK))
	.d2line		827
.Llo75:
	lbz		r0,14(r3)		# CanTpChannel_p=r3
	rlwinm		r0,r0,0,24,25
	cmpi		0,0,r0,128
	bc		0,2,.L275	# ne
#         {
#             CanTp_StopChannel(CanTpChannel_p, FALSE, NTFRSLT_E_NOT_OK);
	.d2line		829
	mr		r3,r3		# CanTpChannel_p=r3 CanTpChannel_p=r3
.Llo76:
	diab.li		r4,0
	diab.li		r5,1
	bl		CanTp_StopChannel
# 
# #if (CANTP_DEV_ERROR_DETECT == STD_ON)
#             /*Inform DET with the appropriate value*/
#             (void)Det_ReportError(CANTP_MODULE_ID,CANTP_INSTANCE_ID,
	.d2line		833
	diab.li		r3,35		# CanTpChannel_p=r3
	diab.li		r4,0
	diab.li		r5,6
	diab.li		r6,208
	bl		Det_ReportError
	b		.L271
.L275:
#                     CANTP_ID_MAINFUNCTION,CANTP_E_TX_COM);
# #endif
#         }
#         else
#         {
#             CanTp_StopChannel(CanTpChannel_p, TRUE, NTFRSLT_E_NOT_OK);
	.d2line		839
.Llo77:
	mr		r3,r3		# CanTpChannel_p=r3 CanTpChannel_p=r3
.Llo78:
	diab.li		r4,1
	diab.li		r5,1
	bl		CanTp_StopChannel
	b		.L271
.L272:
#         }
#     }
#     else
#     {
#         /*Timeout Not occurred*/
#         /*Transmit the prepare FC frame*/
#         CanTp_CanIfTransmitChannel(CanTpChannel_p);
	.d2line		846
.Llo79:
	mr		r3,r3		# CanTpChannel_p=r3 CanTpChannel_p=r3
.Llo80:
	bl		CanTp_CanIfTransmitChannel
.L271:
#     }
# }/* End of CanTp_RxTransmitFcState() */
	.d2line		848
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L373:
	.type		CanTp_RxTransmitFcState,@function
	.size		CanTp_RxTransmitFcState,.-CanTp_RxTransmitFcState
# Number of nodes = 76

# Allocations for CanTp_RxTransmitFcState
#	?a4		CanTpChannel_p
# static FUNC(boolean, CANTP_CODE) CanTp_StateProcessing
	.align		1
	.section	.text_vle
        .d2line         265,34
#$$ld
.L379:

#$$bf	CanTp_StateProcessing,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
CanTp_StateProcessing:
.Llo81:
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
#     VAR(boolean, AUTOMATIC) RetValue = CANTP_FALSE;
	.d2line		270
	diab.li		r30,0		# RetValue=r30
# 
#     /* PRQA S 2016 ++ *//* 'switch' statement 'default' clause is empty */
#     /* Go through the channel states and process*/
#     switch (CanTpChannel_p->State_u8)
	.d2line		274
	lbz		r6,14(r31)		# CanTpChannel_p=r31
	diab.addi		r0,r6,-65
	cmpli		0,0,r0,74
	rlwinm		r6,r0,2,0,29
	e_add2is		r6,.L385@ha
	bc		1,1,.L167	# gt
.Llo82:
	lwz		r7,.L385@l(r6)
.Llo83:
	mtspr		ctr,r7
	bcctr		20,0
.L385:
#$$sl
	.long		.L182
	.long		.L186
	.long		.L186
	.long		.L180
	.long		.L183
	.long		.L189
	.long		.L189
	.long		.L189
	.long		.L178
	.long		.L178
	.long		.L178
	.long		.L182
	.long		.L186
	.long		.L167
	.long		.L167
	.long		.L167
	.long		.L167
	.long		.L167
	.long		.L167
	.long		.L167
	.long		.L167
	.long		.L167
	.long		.L167
	.long		.L167
	.long		.L167
	.long		.L167
	.long		.L167
	.long		.L167
	.long		.L167
	.long		.L167
	.long		.L167
	.long		.L167
	.long		.L167
	.long		.L167
	.long		.L167
	.long		.L167
	.long		.L167
	.long		.L167
	.long		.L167
	.long		.L167
	.long		.L167
	.long		.L167
	.long		.L167
	.long		.L167
	.long		.L167
	.long		.L167
	.long		.L167
	.long		.L167
	.long		.L167
	.long		.L167
	.long		.L167
	.long		.L167
	.long		.L167
	.long		.L167
	.long		.L167
	.long		.L167
	.long		.L167
	.long		.L167
	.long		.L167
	.long		.L167
	.long		.L167
	.long		.L167
	.long		.L167
	.long		.L167
	.long		.L170
	.long		.L170
	.long		.L170
	.long		.L171
	.long		.L175
	.long		.L175
	.long		.L175
	.long		.L165
	.long		.L165
	.long		.L165
	.long		.L179
#$$se
.L165:
#     {
#         /* TX channel - request TX buffer for SF frame */
#         case CANTP_CH_TX_REQBUF_SF:
# 
#         /* TX channel - request TX buffer for FF frame */
#         case CANTP_CH_TX_REQBUF_FF:
# 
#         /* TX channel - request TX buffer for CF frame */
#         case CANTP_CH_TX_REQBUF_CF:
#         {
#             /* Check for timeout and stop or request buffer */
#             CanTp_ReqTxBufState(CanTpChannel_p);
	.d2line		286
	mr		r3,r31		# CanTpChannel_p=r3 CanTpChannel_p=r31
	bl		CanTp_ReqTxBufState
# 
#             if ((CanTpChannel_p->State_u8 == CANTP_CH_TX_TRANSMIT_SF)
	.d2line		288
	lbz		r0,14(r31)		# CanTpChannel_p=r31
	cmpi		0,0,r0,129
	bc		1,2,.L191	# eq
	lbz		r0,14(r31)		# CanTpChannel_p=r31
	cmpi		0,0,r0,130
	bc		1,2,.L191	# eq
	lbz		r0,14(r31)		# CanTpChannel_p=r31
	cmpi		0,0,r0,131
	bc		0,2,.L167	# ne
.L191:
#                     || (CanTpChannel_p->State_u8 == CANTP_CH_TX_TRANSMIT_FF)
#                     || (CanTpChannel_p->State_u8 == CANTP_CH_TX_TRANSMIT_CF))
#             {
#                 RetValue = CANTP_TRUE;
	.d2line		292
	diab.li		r30,1		# RetValue=r30
	b		.L167
.L170:
#             }
# 
#             break;
#         }
# 
#         /* TX channel - transmit SF frame next         */
#         case CANTP_CH_TX_TRANSMIT_SF:
# 
#         /* TX channel - transmit FF frame next         */
#         case CANTP_CH_TX_TRANSMIT_FF:
# 
#         /* TX channel - transmit CF frame next         */
#         case CANTP_CH_TX_TRANSMIT_CF:
#         {
#             /* Check for timeout and stop or Transmit next frame */
#             CanTp_TxTransmitState(CanTpChannel_p);
	.d2line		308
	mr		r3,r31		# CanTpChannel_p=r3 CanTpChannel_p=r31
	bl		CanTp_TxTransmitState
	b		.L167
.L171:
#             break;
#         }
# 
#         /* TX channel - wait StMin before transmit CF  */
#         case CANTP_CH_TX_TRANSMIT_CF_WAIT:
#         {
#             /* Check for timeout and stop or Transmit next frame */
#             CanTp_TxCfWaitState(CanTpChannel_p);
	.d2line		316
	mr		r3,r31		# CanTpChannel_p=r3 CanTpChannel_p=r31
	bl		CanTp_TxCfWaitState
# 
#             if(CANTP_CH_TX_TRANSMIT_CF == CanTpChannel_p->State_u8)
	.d2line		318
	lbz		r0,14(r31)		# CanTpChannel_p=r31
	cmpi		0,0,r0,131
	bc		0,2,.L167	# ne
#             {
#                 RetValue = CANTP_TRUE;
	.d2line		320
.Llo84:
	diab.li		r30,1		# RetValue=r30
	b		.L167
.L175:
#             }
#             break;
#         }
# 
#         /* TX channel - wait for TX SF confirmation    */
#         case CANTP_CH_TX_CONFIRM_SF:
# 
#         /* TX channel - wait for TX FF confirmation    */
#         case CANTP_CH_TX_CONFIRM_FF:
# 
#         /* TX channel - wait for TX CF confirmation    */
#         case CANTP_CH_TX_CONFIRM_CF:
#         {
#             /* Check for timeout and stop */
#             (void)CanTp_TimeoutStop(CanTpChannel_p, NTFRSLT_E_TIMEOUT_A);
	.d2line		335
.Llo85:
	mr		r3,r31		# CanTpChannel_p=r3 CanTpChannel_p=r31
	diab.li		r4,2
	bl		CanTp_TimeoutStop
	b		.L167
.L178:
#             break;
#         }
# 
#         /* Rx channel - wait for FC cts confirmation   */
#         case CANTP_CH_RX_SEGMENTED_CONFIRM_FC_CTS:
# 
#         /* Rx channel - wait for FC ovflw confirmation */
#         case CANTP_CH_RX_SEGMENTED_CONFIRM_FC_OVFLW:
# 
#         /* Rx channel - wait for FC wt confirmation    */
#         case CANTP_CH_RX_SEGMENTED_CONFIRM_FC_WAIT:
#         {
#             /* Check for timeout and stop */
#             (void)CanTp_TimeoutStop(CanTpChannel_p, NTFRSLT_E_TIMEOUT_A);
	.d2line		349
	mr		r3,r31		# CanTpChannel_p=r3 CanTpChannel_p=r31
	diab.li		r4,2
	bl		CanTp_TimeoutStop
	b		.L167
.L179:
#             break;
#         }
# 
#         /* TX channel - receive FC frame next          */
#         case CANTP_CH_TX_RECEIVE_FC:
#         {
#             /* Check for timeout and stop */
#             (void)CanTp_TimeoutStop(CanTpChannel_p, NTFRSLT_E_TIMEOUT_BS);
	.d2line		357
	mr		r3,r31		# CanTpChannel_p=r3 CanTpChannel_p=r31
	diab.li		r4,3
	bl		CanTp_TimeoutStop
	b		.L167
.L180:
#             break;
#         }
# 
#         /* Rx channel - wait for CF reception */
#         case CANTP_CH_RX_SEGMENTED_CF_WAIT:
#         {
#             /* Check for timeout and stop */
#             (void)CanTp_TimeoutStop(CanTpChannel_p, NTFRSLT_E_TIMEOUT_CR);
	.d2line		365
	mr		r3,r31		# CanTpChannel_p=r3 CanTpChannel_p=r31
	diab.li		r4,4
	bl		CanTp_TimeoutStop
	b		.L167
.L182:
#             break;
#         }
# 
#         /* Rx channel - request start of unsegmented reception */
#         case CANTP_CH_RX_UNSEGMENTED_RECEPTION_START_REQUEST:
# 
#         /* Rx channel - request start of segmented reception*/
#         case CANTP_CH_RX_SEGMENTED_RECEPTION_START_REQUEST:
#         {
#             RetValue = CanTp_StateProcess_ReceptionStartRequest(CanTpChannel_p);
	.d2line		375
	mr		r3,r31		# CanTpChannel_p=r3 CanTpChannel_p=r31
	bl		CanTp_StateProcess_ReceptionStartRequest
	mr		r30,r3		# RetValue=r30 RetValue=r3
	b		.L167
.L183:
#             break;
#         }
# 
#         /* Rx channel - request Rx buffer for the next block */
#         case CANTP_CH_RX_SEGMENTED_BUFREQ_NEXT_BLOCK:
#         {
#             RetValue = CanTp_StateProcess_RxBufreqNextBlock(CanTpChannel_p);
	.d2line		382
	mr		r3,r31		# CanTpChannel_p=r3 CanTpChannel_p=r31
	bl		CanTp_StateProcess_RxBufreqNextBlock
	mr		r30,r3		# RetValue=r30 RetValue=r3
	b		.L167
.L186:
#             break;
#         }
# 
#         /* Rx channel - request Rx buffer for SF frame */
#         case CANTP_CH_RX_UNSEGMENTED_UPLOAD_SF_DATA:
# 
#         /* Rx channel - request Rx buffer for FF frame */
#         case CANTP_CH_RX_SEGMENTED_UPLOAD_FF_DATA:
# 
#         /* Rx channel - request Rx buffer for CF frame */
#         case CANTP_CH_RX_SEGMENTED_UPLOAD_CF_DATA:
#         {
#             RetValue = CanTp_StateProcess_RxUploadFrameData(CanTpChannel_p);
	.d2line		395
	mr		r3,r31		# CanTpChannel_p=r3 CanTpChannel_p=r31
	bl		CanTp_StateProcess_RxUploadFrameData
	mr		r30,r3		# RetValue=r30 RetValue=r3
	b		.L167
.L189:
#             break;
#         }
# 
#         /* Rx channel - transmit FC frame next ,
#          * only in the CTS checking for avail. buffer. and the next CF */
#         case CANTP_CH_RX_SEGMENTED_TRANSMIT_FC_CTS:
# 
#         /* Rx channel - transmit FC frame next         */
#         case CANTP_CH_RX_SEGMENTED_TRANSMIT_FC_WAIT:
# 
#         /* Rx channel - transmit FC frame next         */
#         case CANTP_CH_RX_SEGMENTED_TRANSMIT_FC_OVFLW:
#         {
#             /* Check for timeout and stop or transmit FC frames */
#             CanTp_RxTransmitFcState(CanTpChannel_p);
	.d2line		410
	mr		r3,r31		# CanTpChannel_p=r3 CanTpChannel_p=r31
	bl		CanTp_RxTransmitFcState
.L167:
#             break;
#         }
# 
#         default:
#         {
#             /*Control never comes here*/
#             break;
#         }
#     }
#     /* PRQA S 2016 -- */
# 
#     return(RetValue);
	.d2line		422
.Llo86:
	rlwinm		r3,r30,0,24,31		# CanTpChannel_p=r3 RetValue=r30
# 
# }/* End of CanTp_StateProcessing() */
	.d2line		424
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo87:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L380:
	.type		CanTp_StateProcessing,@function
	.size		CanTp_StateProcessing,.-CanTp_StateProcessing
# Number of nodes = 113

# Allocations for CanTp_StateProcessing
#	?a4		CanTpChannel_p
#	?a5		RetValue
# FUNC(void, CANTP_CODE) CanTp_MainFunction(void)
	.align		2
	.section	.text_vle
        .d2line         155,24
#$$ld
.L388:

#$$bf	CanTp_MainFunction,interprocedural,rasave,nostackparams
	.globl		CanTp_MainFunction
	.d2_cfa_start __cie
CanTp_MainFunction:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     /*Variable to identify channel*/
#     VAR(uint8, AUTOMATIC) Channel_u8;
# 
#     /*Pointer to hold the Channel Structure address*/
#     P2VAR(CanTp_Channel_t, AUTOMATIC, CANTP_APPL_DATA) CanTpChannel_p;
# 
#     /* Check if the CANTP module is not initialized */
#     if(CanTp_Status == CANTP_OFF)
	.d2line		164
	lis		r3,CanTp_Status@ha
	lwz		r0,CanTp_Status@l(r3)
	se_cmpi		r0,0
	bc		0,2,.L141	# ne
#     {
# #if (CANTP_DEV_ERROR_DETECT == STD_ON)
#         (void)Det_ReportError(CANTP_MODULE_ID, CANTP_INSTANCE_ID,
	.d2line		167
	diab.li		r3,35
	diab.li		r4,0
	diab.li		r5,6
	diab.li		r6,32
	bl		Det_ReportError
	b		.L140
.L141:
#                 CANTP_ID_MAINFUNCTION, CANTP_E_UNINIT);
# #endif
#     }
#     else
#     {
#         for(Channel_u8 = CANTP_CHANNEL_INDEX_START_ZERO;
	.d2line		173
	diab.li		r31,0		# Channel_u8=r31
.L143:
.Llo88:
	rlwinm		r0,r31,0,24,31		# Channel_u8=r31
	lis		r3,CanTp_GeneralConfig_p@ha		# CanTpChannel_p=r3
.Llo90:
	lwz		r3,CanTp_GeneralConfig_p@l(r3)		# CanTpChannel_p=r3 CanTpChannel_p=r3
	lbz		r3,6(r3)		# CanTpChannel_p=r3 CanTpChannel_p=r3
	se_cmp		r0,r3		# CanTpChannel_p=r3
	bc		0,0,.L140	# ge
#                 Channel_u8 < CanTp_GeneralConfig_p->Channel_Max_u8;
#                 Channel_u8++)
#         {
#             /*Copy the Channel address*/
#             CanTpChannel_p = &CanTp_ChannelList_p[Channel_u8];
	.d2line		178
.Llo91:
	lis		r3,CanTp_ChannelList_p@ha		# CanTpChannel_p=r3
.Llo92:
	lwz		r30,CanTp_ChannelList_p@l(r3)		# CanTpChannel_p=r30 CanTpChannel_p=r3
	rlwinm		r3,r31,0,24,31		# CanTpChannel_p=r3 Channel_u8=r31
	e_mulli		r0,r3,52		# CanTpChannel_p=r3
	se_add		r0,r30		# CanTpChannel_p=r30
	mr		r30,r0		# CanTpChannel_p=r30 CanTpChannel_p=r0
# 
#             /*Enter Critical Section*/
#             CanTp_Enter_Area(Channel_u8);
	.d2line		181
.Llo93:
	bl		CanTp_Enter_Area
# 
# #if (CANTP_DEV_ERROR_DETECT == STD_ON)
#             /* Save the caller Id in a global variable */
#             CanTpChannel_p->CallerApiId = CANTP_ID_MAINFUNCTION;
	.d2line		185
.Llo94:
	diab.li		r0,6
	stb		r0,48(r30)		# CanTpChannel_p=r30
# #endif
# 
#             /* The channel processing runs in critical section */
#             CanTpChannel_p->CriticalSectionStatus_b = CANTP_TRUE;
	.d2line		189
	diab.li		r0,1
	stb		r0,50(r30)		# CanTpChannel_p=r30
# 
#             if(CANTP_CH_IDLE == CanTpChannel_p->State_u8)
	.d2line		191
	lbz		r0,14(r30)		# CanTpChannel_p=r30
	se_cmpi		r0,0
	bc		1,2,.L147	# eq
#             {
#                 /*Nothing to Do - There is no ongoing Transmission or Reception on this channel*/
#             }
#             else
#             {
# 
#                 /* Process the Channel States */
#                 if(CANTP_TRUE == CanTp_StateProcessing(CanTpChannel_p))
	.d2line		199
	mr		r3,r30		# CanTpChannel_p=r3 CanTpChannel_p=r30
	bl		CanTp_StateProcessing
	rlwinm		r3,r3,0,24,31		# CanTpChannel_p=r3 CanTpChannel_p=r3
	se_cmpi		r3,1		# CanTpChannel_p=r3
	bc		0,2,.L148	# ne
#                 {
#                     /* here we will call CanTp_StateProcessing again
#                      * so in this case we can call the CopyTxData and Transmit */
#                     (void)CanTp_StateProcessing(CanTpChannel_p);
	.d2line		203
	mr		r3,r30		# CanTpChannel_p=r3 CanTpChannel_p=r30
	bl		CanTp_StateProcessing
.L148:
#                 }
# 
#                 /* Handle the STMin and TimeoutTicks_u16 timers of the channel. */
#                 if((uint16) CANTP_GENERAL_ZERO != CanTpChannel_p->TimeoutTicks_u16)
	.d2line		207
	lhz		r0,4(r30)		# CanTpChannel_p=r30
	se_cmpi		r0,0
	bc		1,2,.L149	# eq
#                 {
#                     CanTpChannel_p->TimeoutTicks_u16--;
	.d2line		209
	lhz		r0,4(r30)		# CanTpChannel_p=r30
	diab.li		r3,65535		# CanTpChannel_p=r3
	se_add		r0,r3		# CanTpChannel_p=r3
	sth		r0,4(r30)		# CanTpChannel_p=r30
.L149:
#                 }
# 
#                 if(CanTpChannel_p->StMinTicks_u16 > CanTp_GeneralConfig_p->CanTp_Mf_Resolution_u16)
	.d2line		212
	lhz		r0,6(r30)		# CanTpChannel_p=r30
	lis		r3,CanTp_GeneralConfig_p@ha		# CanTpChannel_p=r3
	lwz		r3,CanTp_GeneralConfig_p@l(r3)		# CanTpChannel_p=r3 CanTpChannel_p=r3
	lhz		r3,8(r3)		# CanTpChannel_p=r3 CanTpChannel_p=r3
	se_cmp		r0,r3		# CanTpChannel_p=r3
	bc		0,1,.L150	# le
#                 {
#                     CanTpChannel_p->StMinTicks_u16 -= CanTp_GeneralConfig_p->CanTp_Mf_Resolution_u16;
	.d2line		214
	lhz		r0,6(r30)		# CanTpChannel_p=r30
	lis		r3,CanTp_GeneralConfig_p@ha		# CanTpChannel_p=r3
	lwz		r3,CanTp_GeneralConfig_p@l(r3)		# CanTpChannel_p=r3 CanTpChannel_p=r3
	lhz		r3,8(r3)		# CanTpChannel_p=r3 CanTpChannel_p=r3
	subf		r3,r3,r0		# CanTpChannel_p=r3 CanTpChannel_p=r3
	sth		r3,6(r30)		# CanTpChannel_p=r30 CanTpChannel_p=r3
	b		.L151
.L150:
#                 }
#                 else
#                 {
#                     CanTpChannel_p->StMinTicks_u16 = (uint16) CANTP_GENERAL_ZERO;
	.d2line		218
	diab.li		r0,0
	sth		r0,6(r30)		# CanTpChannel_p=r30
.L151:
#                 }
# 
#                 /* Release Channel from lock status and Decrement the counters */
#                 CanTp_FreeChannel(CanTpChannel_p);
	.d2line		222
	mr		r3,r30		# CanTpChannel_p=r3 CanTpChannel_p=r30
	bl		CanTp_FreeChannel
.L147:
#             }
# 
#             /* If channel processing still runs in exclusive area */
#             if(CANTP_TRUE == CanTpChannel_p->CriticalSectionStatus_b)
	.d2line		226
	lbz		r0,50(r30)		# CanTpChannel_p=r30
	se_cmpi		r0,1
	bc		0,2,.L152	# ne
#             {
#                 /* The channel processing is leaving critical section */
#                 CanTpChannel_p->CriticalSectionStatus_b = CANTP_FALSE;
	.d2line		229
	diab.li		r0,0
	stb		r0,50(r30)		# CanTpChannel_p=r30
# 
#                 /*Exit Critical Section*/
#                 CanTp_Exit_Area(Channel_u8);
	.d2line		232
	rlwinm		r3,r31,0,24,31		# CanTpChannel_p=r3 Channel_u8=r31
	bl		CanTp_Exit_Area
.L152:
#             }
#         }
	.d2line		234
	diab.addi		r0,r31,1		# Channel_u8=r31
	se_addi		r31,1		# Channel_u8=r31 Channel_u8=r31
	b		.L143
.L140:
#     }
# }/* End of CanTp_MainFunction() */
	.d2line		236
	.d2epilogue_begin
.Llo89:
	lmw		r30,24(r1)		# offset r1+24  0x18
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
.L389:
	.type		CanTp_MainFunction,@function
	.size		CanTp_MainFunction,.-CanTp_MainFunction
# Number of nodes = 132

# Allocations for CanTp_MainFunction
#	?a4		Channel_u8
#	?a5		CanTpChannel_p

# Allocations for module
	.section	.text_vle
#$$ld
.L5:
.L406:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTp\\ssc\\make\\..\\inc\\CanTp_Types.h"
.L396:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTp\\ssc\\make\\..\\inc\\CanTp_Private.h"
.L286:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTp\\ssc\\make\\..\\src\\CanTp_MainFunction.c"
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
	.uleb128	11
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	10
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
	.uleb128	11
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
	.uleb128	12
	.uleb128	40
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	28
	.uleb128	13
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	13
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
	.uleb128	14
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
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
	.uleb128	38
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	17
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	18
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTp\\ssc\\make\\..\\src\\CanTp_MainFunction.c"
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
.L289:
	.sleb128	2
	.4byte		.L283-.L2
	.byte		"CanTp_PrepareFC_Wait_OnTimeout"
	.byte		0
	.4byte		.L286
	.uleb128	439
	.uleb128	34
	.4byte		.L287
	.byte		0x1
	.4byte		.L284
	.4byte		.L285
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L286
	.uleb128	439
	.uleb128	34
	.byte		"CanTpChannel_p"
	.byte		0
	.4byte		.L290
	.4byte		.L294
	.section	.debug_info,,n
.L295:
	.sleb128	4
	.4byte		.L286
	.uleb128	444
	.uleb128	64
	.byte		"CanTpRxNSduConfig_p"
	.byte		0
	.4byte		.L296
	.4byte		.L300
.L301:
	.sleb128	4
	.4byte		.L286
	.uleb128	445
	.uleb128	29
	.byte		"needToSendFC"
	.byte		0
	.4byte		.L287
	.4byte		.L302
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L306
	.4byte		.L303
	.4byte		.L304
.L307:
	.sleb128	4
	.4byte		.L286
	.uleb128	452
	.uleb128	35
	.byte		"lastCFofNotLastBlock"
	.byte		0
	.4byte		.L308
	.4byte		.L309
	.section	.debug_info,,n
	.sleb128	0
.L306:
	.section	.debug_info,,n
	.sleb128	0
.L283:
	.section	.debug_info,,n
.L314:
	.sleb128	2
	.4byte		.L311-.L2
	.byte		"CanTp_TimeoutStop"
	.byte		0
	.4byte		.L286
	.uleb128	614
	.uleb128	34
	.4byte		.L287
	.byte		0x1
	.4byte		.L312
	.4byte		.L313
	.sleb128	3
	.4byte		.L286
	.uleb128	614
	.uleb128	34
	.byte		"CanTpChannel_p"
	.byte		0
	.4byte		.L290
	.4byte		.L315
	.sleb128	3
	.4byte		.L286
	.uleb128	614
	.uleb128	34
	.byte		"PdurResult"
	.byte		0
	.4byte		.L316
	.4byte		.L319
.L320:
	.sleb128	4
	.4byte		.L286
	.uleb128	620
	.uleb128	29
	.byte		"RetValue"
	.byte		0
	.4byte		.L287
	.4byte		.L321
	.section	.debug_info,,n
	.sleb128	0
.L311:
	.section	.debug_info,,n
.L326:
	.sleb128	2
	.4byte		.L323-.L2
	.byte		"CanTp_StateProcess_RxUploadFrameData"
	.byte		0
	.4byte		.L286
	.uleb128	495
	.uleb128	34
	.4byte		.L287
	.byte		0x1
	.4byte		.L324
	.4byte		.L325
	.sleb128	3
	.4byte		.L286
	.uleb128	495
	.uleb128	34
	.byte		"CanTpChannel_p"
	.byte		0
	.4byte		.L290
	.4byte		.L327
.L328:
	.sleb128	4
	.4byte		.L286
	.uleb128	500
	.uleb128	29
	.byte		"timeoutOccured"
	.byte		0
	.4byte		.L287
	.4byte		.L329
.L330:
	.sleb128	4
	.4byte		.L286
	.uleb128	501
	.uleb128	29
	.byte		"needToSendFC"
	.byte		0
	.4byte		.L287
	.4byte		.L331
	.section	.debug_info,,n
	.sleb128	0
.L323:
	.section	.debug_info,,n
.L336:
	.sleb128	2
	.4byte		.L333-.L2
	.byte		"CanTp_StateProcess_ReceptionStartRequest"
	.byte		0
	.4byte		.L286
	.uleb128	531
	.uleb128	34
	.4byte		.L287
	.byte		0x1
	.4byte		.L334
	.4byte		.L335
	.sleb128	3
	.4byte		.L286
	.uleb128	531
	.uleb128	34
	.byte		"CanTpChannel_p"
	.byte		0
	.4byte		.L290
	.4byte		.L337
.L338:
	.sleb128	4
	.4byte		.L286
	.uleb128	536
	.uleb128	29
	.byte		"timeoutOccured"
	.byte		0
	.4byte		.L287
	.4byte		.L339
.L340:
	.sleb128	4
	.4byte		.L286
	.uleb128	537
	.uleb128	29
	.byte		"needToSendFC"
	.byte		0
	.4byte		.L287
	.4byte		.L341
	.section	.debug_info,,n
	.sleb128	0
.L333:
	.section	.debug_info,,n
.L346:
	.sleb128	2
	.4byte		.L343-.L2
	.byte		"CanTp_StateProcess_RxBufreqNextBlock"
	.byte		0
	.4byte		.L286
	.uleb128	567
	.uleb128	34
	.4byte		.L287
	.byte		0x1
	.4byte		.L344
	.4byte		.L345
	.sleb128	3
	.4byte		.L286
	.uleb128	567
	.uleb128	34
	.byte		"CanTpChannel_p"
	.byte		0
	.4byte		.L290
	.4byte		.L347
.L348:
	.sleb128	4
	.4byte		.L286
	.uleb128	572
	.uleb128	29
	.byte		"needToSendFC"
	.byte		0
	.4byte		.L287
	.4byte		.L349
.L350:
	.sleb128	4
	.4byte		.L286
	.uleb128	573
	.uleb128	29
	.byte		"timeoutOccured"
	.byte		0
	.4byte		.L287
	.4byte		.L351
	.section	.debug_info,,n
	.sleb128	0
.L343:
	.section	.debug_info,,n
.L356:
	.sleb128	6
	.4byte		.L353-.L2
	.byte		"CanTp_ReqTxBufState"
	.byte		0
	.4byte		.L286
	.uleb128	673
	.uleb128	31
	.byte		0x1
	.4byte		.L354
	.4byte		.L355
	.sleb128	3
	.4byte		.L286
	.uleb128	673
	.uleb128	31
	.byte		"CanTpChannel_p"
	.byte		0
	.4byte		.L290
	.4byte		.L357
	.section	.debug_info,,n
	.sleb128	0
.L353:
	.section	.debug_info,,n
.L362:
	.sleb128	6
	.4byte		.L359-.L2
	.byte		"CanTp_TxTransmitState"
	.byte		0
	.4byte		.L286
	.uleb128	725
	.uleb128	31
	.byte		0x1
	.4byte		.L360
	.4byte		.L361
	.sleb128	3
	.4byte		.L286
	.uleb128	725
	.uleb128	31
	.byte		"CanTpChannel_p"
	.byte		0
	.4byte		.L290
	.4byte		.L363
	.section	.debug_info,,n
	.sleb128	0
.L359:
	.section	.debug_info,,n
.L368:
	.sleb128	6
	.4byte		.L365-.L2
	.byte		"CanTp_TxCfWaitState"
	.byte		0
	.4byte		.L286
	.uleb128	776
	.uleb128	31
	.byte		0x1
	.4byte		.L366
	.4byte		.L367
	.sleb128	3
	.4byte		.L286
	.uleb128	776
	.uleb128	31
	.byte		"CanTpChannel_p"
	.byte		0
	.4byte		.L290
	.4byte		.L369
	.section	.debug_info,,n
	.sleb128	0
.L365:
	.section	.debug_info,,n
.L374:
	.sleb128	6
	.4byte		.L371-.L2
	.byte		"CanTp_RxTransmitFcState"
	.byte		0
	.4byte		.L286
	.uleb128	805
	.uleb128	31
	.byte		0x1
	.4byte		.L372
	.4byte		.L373
	.sleb128	3
	.4byte		.L286
	.uleb128	805
	.uleb128	31
	.byte		"CanTpChannel_p"
	.byte		0
	.4byte		.L290
	.4byte		.L375
	.section	.debug_info,,n
	.sleb128	0
.L371:
	.section	.debug_info,,n
.L381:
	.sleb128	2
	.4byte		.L378-.L2
	.byte		"CanTp_StateProcessing"
	.byte		0
	.4byte		.L286
	.uleb128	265
	.uleb128	34
	.4byte		.L287
	.byte		0x1
	.4byte		.L379
	.4byte		.L380
	.sleb128	3
	.4byte		.L286
	.uleb128	265
	.uleb128	34
	.byte		"CanTpChannel_p"
	.byte		0
	.4byte		.L290
	.4byte		.L382
.L383:
	.sleb128	4
	.4byte		.L286
	.uleb128	270
	.uleb128	29
	.byte		"RetValue"
	.byte		0
	.4byte		.L287
	.4byte		.L384
	.section	.debug_info,,n
	.sleb128	0
.L378:
	.section	.debug_info,,n
.L390:
	.sleb128	7
	.4byte		.L387-.L2
	.byte		"CanTp_MainFunction"
	.byte		0
	.4byte		.L286
	.uleb128	155
	.uleb128	24
	.byte		0x1
	.byte		0x1
	.4byte		.L388
	.4byte		.L389
.L391:
	.sleb128	4
	.4byte		.L286
	.uleb128	158
	.uleb128	27
	.byte		"Channel_u8"
	.byte		0
	.4byte		.L318
	.4byte		.L392
.L393:
	.sleb128	4
	.4byte		.L286
	.uleb128	161
	.uleb128	56
	.byte		"CanTpChannel_p"
	.byte		0
	.4byte		.L291
	.4byte		.L394
	.section	.debug_info,,n
	.sleb128	0
.L387:
	.section	.debug_info,,n
.L395:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L396
	.uleb128	493
	.uleb128	67
	.byte		"CanTp_RxNSduConfig_p"
	.byte		0
	.4byte		.L296
	.0byte		.L395
.L397:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L396
	.uleb128	522
	.uleb128	68
	.byte		"CanTp_GeneralConfig_p"
	.byte		0
	.4byte		.L398
.L402:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L396
	.uleb128	528
	.uleb128	59
	.byte		"CanTp_ChannelList_p"
	.byte		0
	.4byte		.L291
.L403:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L396
	.uleb128	546
	.uleb128	39
	.byte		"CanTp_Status"
	.byte		0
	.4byte		.L404
	.section	.debug_info,,n
.L401:
	.sleb128	9
	.4byte		.L406
	.uleb128	117
	.uleb128	1
	.4byte		.L407-.L2
	.uleb128	16
	.section	.debug_info,,n
.L103:
	.sleb128	10
	.byte		"TxNSduId_Max"
	.byte		0
	.4byte		.L408
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L104:
	.sleb128	10
	.byte		"RxNPduId_Max"
	.byte		0
	.4byte		.L408
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L105:
	.sleb128	10
	.byte		"RxNSduId_Count"
	.byte		0
	.4byte		.L408
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L106:
	.sleb128	10
	.byte		"Channel_Max_u8"
	.byte		0
	.4byte		.L412
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L107:
	.sleb128	10
	.byte		"CanTp_Mf_Resolution_u16"
	.byte		0
	.4byte		.L413
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L108:
	.sleb128	10
	.byte		"CanTp_Cfg_PaddingByte_u8"
	.byte		0
	.4byte		.L412
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L109:
	.sleb128	10
	.byte		"RxNsduId_Max_u16"
	.byte		0
	.4byte		.L413
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L110:
	.sleb128	10
	.byte		"ConfirmationLength"
	.byte		0
	.4byte		.L413
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
	.sleb128	0
.L407:
.L299:
	.sleb128	9
	.4byte		.L406
	.uleb128	117
	.uleb128	1
	.4byte		.L414-.L2
	.uleb128	16
.L77:
	.sleb128	10
	.byte		"CanTpBsConf_u8"
	.byte		0
	.4byte		.L412
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L78:
	.sleb128	10
	.byte		"CanTpNar_u16"
	.byte		0
	.4byte		.L413
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L79:
	.sleb128	10
	.byte		"CanTpNbr_u16"
	.byte		0
	.4byte		.L413
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L80:
	.sleb128	10
	.byte		"CanTpNcr_u16"
	.byte		0
	.4byte		.L413
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L81:
	.sleb128	10
	.byte		"CanTpRxWftMax_u16"
	.byte		0
	.4byte		.L413
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L82:
	.sleb128	10
	.byte		"CanTpSTminConf_u8"
	.byte		0
	.4byte		.L412
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L83:
	.sleb128	10
	.byte		"CanTpTxFcNPduIdConf"
	.byte		0
	.4byte		.L408
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L84:
	.sleb128	10
	.byte		"CanTpTxFcNPduCanIf"
	.byte		0
	.4byte		.L408
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
	.sleb128	0
.L414:
.L293:
	.sleb128	9
	.4byte		.L406
	.uleb128	117
	.uleb128	1
	.4byte		.L415-.L2
	.uleb128	52
.L45:
	.sleb128	10
	.byte		"ChannelIdx_u8"
	.byte		0
	.4byte		.L318
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L46:
	.sleb128	10
	.byte		"IPduId"
	.byte		0
	.4byte		.L409
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L47:
	.sleb128	10
	.byte		"TimeoutTicks_u16"
	.byte		0
	.4byte		.L410
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L48:
	.sleb128	10
	.byte		"StMinTicks_u16"
	.byte		0
	.4byte		.L410
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L49:
	.sleb128	10
	.byte		"TotalLength"
	.byte		0
	.4byte		.L416
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L50:
	.sleb128	10
	.byte		"ProcessedLength"
	.byte		0
	.4byte		.L416
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L51:
	.sleb128	10
	.byte		"ProvidedBufferSize"
	.byte		0
	.4byte		.L416
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L52:
	.sleb128	10
	.byte		"State_u8"
	.byte		0
	.4byte		.L318
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L53:
	.sleb128	10
	.byte		"NextState_u8"
	.byte		0
	.4byte		.L318
	.sleb128	2
	.byte		0x23
	.uleb128	15
	.byte		0x1
.L54:
	.sleb128	10
	.byte		"BlockSize_u16"
	.byte		0
	.4byte		.L410
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L55:
	.sleb128	10
	.byte		"WftCounter_u16"
	.byte		0
	.4byte		.L410
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L56:
	.sleb128	10
	.byte		"SequenceNumber_u8"
	.byte		0
	.4byte		.L318
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L57:
	.sleb128	10
	.byte		"StMin_u8"
	.byte		0
	.4byte		.L318
	.sleb128	2
	.byte		0x23
	.uleb128	21
	.byte		0x1
.L58:
	.sleb128	10
	.byte		"TempBuffer_au8"
	.byte		0
	.4byte		.L417
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L59:
	.sleb128	10
	.byte		"TempLength_u8"
	.byte		0
	.4byte		.L318
	.sleb128	2
	.byte		0x23
	.uleb128	29
	.byte		0x1
.L60:
	.sleb128	10
	.byte		"CanIfDLC_u8"
	.byte		0
	.4byte		.L318
	.sleb128	2
	.byte		0x23
	.uleb128	30
	.byte		0x1
.L61:
	.sleb128	10
	.byte		"CanIfData_au8"
	.byte		0
	.4byte		.L419
	.sleb128	2
	.byte		0x23
	.uleb128	31
	.byte		0x1
.L62:
	.sleb128	10
	.byte		"ULayerIndFlag_b"
	.byte		0
	.4byte		.L287
	.sleb128	2
	.byte		0x23
	.uleb128	39
	.byte		0x1
.L63:
	.sleb128	10
	.byte		"ShutdownFlag_b"
	.byte		0
	.4byte		.L287
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L64:
	.sleb128	10
	.byte		"RemainingCFInBlock_u16"
	.byte		0
	.4byte		.L410
	.sleb128	2
	.byte		0x23
	.uleb128	42
	.byte		0x1
.L65:
	.sleb128	10
	.byte		"LastCFofNSduFlag_b"
	.byte		0
	.4byte		.L287
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L66:
	.sleb128	10
	.byte		"RequiredBufferSize"
	.byte		0
	.4byte		.L416
	.sleb128	2
	.byte		0x23
	.uleb128	46
	.byte		0x1
.L67:
	.sleb128	10
	.byte		"CallerApiId"
	.byte		0
	.4byte		.L318
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L68:
	.sleb128	10
	.byte		"FrameSize"
	.byte		0
	.4byte		.L318
	.sleb128	2
	.byte		0x23
	.uleb128	49
	.byte		0x1
.L69:
	.sleb128	10
	.byte		"CriticalSectionStatus_b"
	.byte		0
	.4byte		.L287
	.sleb128	2
	.byte		0x23
	.uleb128	50
	.byte		0x1
	.sleb128	0
.L415:
	.section	.debug_info,,n
.L405:
	.sleb128	11
	.4byte		.L406
	.uleb128	98
	.uleb128	1
	.4byte		.L421-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	12
	.byte		"CANTP_OFF"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"CANTP_ON"
	.byte		0
	.sleb128	1
	.sleb128	0
.L421:
	.section	.debug_info,,n
.L288:
	.sleb128	13
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L287:
	.sleb128	14
	.byte		"boolean"
	.byte		0
	.4byte		.L288
.L292:
	.sleb128	14
	.byte		"CanTp_Channel_t"
	.byte		0
	.4byte		.L293
	.section	.debug_info,,n
.L291:
	.sleb128	15
	.4byte		.L292
	.section	.debug_info,,n
.L290:
	.sleb128	16
	.4byte		.L291
.L298:
	.sleb128	14
	.byte		"CanTp_RxNSduConfig_t"
	.byte		0
	.4byte		.L299
.L297:
	.sleb128	16
	.4byte		.L298
.L296:
	.sleb128	15
	.4byte		.L297
.L308:
	.sleb128	16
	.4byte		.L287
.L318:
	.sleb128	14
	.byte		"uint8"
	.byte		0
	.4byte		.L288
.L317:
	.sleb128	14
	.byte		"NotifResultType"
	.byte		0
	.4byte		.L318
.L316:
	.sleb128	16
	.4byte		.L317
.L400:
	.sleb128	14
	.byte		"CanTp_GeneralConfig_t"
	.byte		0
	.4byte		.L401
.L399:
	.sleb128	16
	.4byte		.L400
.L398:
	.sleb128	15
	.4byte		.L399
.L404:
	.sleb128	14
	.byte		"CanTp_Status_t"
	.byte		0
	.4byte		.L405
.L411:
	.sleb128	13
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L410:
	.sleb128	14
	.byte		"uint16"
	.byte		0
	.4byte		.L411
.L409:
	.sleb128	14
	.byte		"PduIdType"
	.byte		0
	.4byte		.L410
.L408:
	.sleb128	16
	.4byte		.L409
.L412:
	.sleb128	16
	.4byte		.L318
.L413:
	.sleb128	16
	.4byte		.L410
.L416:
	.sleb128	14
	.byte		"PduLengthType"
	.byte		0
	.4byte		.L410
	.section	.debug_info,,n
.L417:
	.sleb128	17
	.4byte		.L418-.L2
	.4byte		.L318
	.section	.debug_info,,n
	.sleb128	18
	.uleb128	6
	.sleb128	0
.L418:
.L419:
	.sleb128	17
	.4byte		.L420-.L2
	.4byte		.L318
	.sleb128	18
	.uleb128	7
	.sleb128	0
.L420:
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L294:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),3
	.d2locend
.L300:
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),0
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),4
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),4
	.d2locend
.L302:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo11),31
	.d2locend
.L309:
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo13),5
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo10),5
	.d2locend
.L315:
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo16),3
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo18),3
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo20),3
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo22),3
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo24),3
	.d2locend
.L319:
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo25),4
	.d2locreg	%offsetof(.Llo26), %offsetof(.Llo17),5
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo21),5
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo23),5
	.d2locend
.L321:
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo16),4
	.d2locreg	%offsetof(.Llo28), %offsetof(.Llo29),4
	.d2locend
.L327:
	.d2locreg	%offsetof(.Llo30), %offsetof(.Llo31),3
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo33),31
	.d2locend
.L329:
	.d2locreg	%offsetof(.Llo34), %offsetof(.Llo32),3
	.d2locend
.L331:
	.d2locreg	%offsetof(.Llo30), %offsetof(.Llo35),30
	.d2locend
.L337:
	.d2locreg	%offsetof(.Llo36), %offsetof(.Llo37),3
	.d2locreg	%offsetof(.Llo38), %offsetof(.Llo39),31
	.d2locend
.L339:
	.d2locreg	%offsetof(.Llo40), %offsetof(.Llo38),3
	.d2locend
.L341:
	.d2locreg	%offsetof(.Llo36), %offsetof(.Llo41),30
	.d2locend
.L347:
	.d2locreg	%offsetof(.Llo42), %offsetof(.Llo43),3
	.d2locreg	%offsetof(.Llo44), %offsetof(.Llo45),31
	.d2locend
.L349:
	.d2locreg	%offsetof(.Llo42), %offsetof(.Llo46),30
	.d2locreg	%offsetof(.Llo47), %offsetof(.Llo48),30
	.d2locreg	%offsetof(.Llo49), %offsetof(.Llo45),3
	.d2locreg	%offsetof(.Llo50), %offsetof(.Llo51),30
	.d2locend
.L351:
	.d2locreg	%offsetof(.Llo52), %offsetof(.Llo44),3
	.d2locreg	%offsetof(.Llo53), %offsetof(.Llo54),3
	.d2locend
.L357:
	.d2locreg	%offsetof(.Llo55), %offsetof(.Llo56),3
	.d2locreg	%offsetof(.Llo57), %offsetof(.Llo58),3
	.d2locreg	%offsetof(.Llo59), %offsetof(.Llo60),3
	.d2locreg	%offsetof(.Llo61), %offsetof(.Llo62),3
	.d2locend
.L363:
	.d2locreg	%offsetof(.Llo63), %offsetof(.Llo64),3
	.d2locreg	%offsetof(.Llo65), %offsetof(.Llo66),3
	.d2locreg	%offsetof(.Llo67), %offsetof(.Llo68),3
	.d2locreg	%offsetof(.Llo69), %offsetof(.Llo70),3
	.d2locend
.L369:
	.d2locreg	%offsetof(.Llo71), %offsetof(.Llo72),3
	.d2locend
.L375:
	.d2locreg	%offsetof(.Llo73), %offsetof(.Llo74),3
	.d2locreg	%offsetof(.Llo75), %offsetof(.Llo76),3
	.d2locreg	%offsetof(.Llo77), %offsetof(.Llo78),3
	.d2locreg	%offsetof(.Llo79), %offsetof(.Llo80),3
	.d2locend
.L382:
	.d2locreg	%offsetof(.Llo81), %offsetof(.Llo82),3
	.d2locreg	%offsetof(.Llo83), %offsetof(.Llo84),31
	.d2locreg	%offsetof(.Llo85), %offsetof(.Llo86),31
	.d2locend
.L384:
	.d2locreg	%offsetof(.Llo81), %offsetof(.Llo87),30
	.d2locend
.L392:
	.d2locreg	%offsetof(.Llo88), %offsetof(.Llo89),31
	.d2locend
.L394:
	.d2locreg	%offsetof(.Llo90), %offsetof(.Llo91),3
	.d2locreg	%offsetof(.Llo92), %offsetof(.Llo93),3
	.d2locreg	%offsetof(.Llo94), %offsetof(.Llo89),30
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "CanTp_MainFunction"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "CanTp_Enter_Area","CanTp_Exit_Area","CanTp_FreeChannel","CanTp_StateProcessing","Det_ReportError"
	.wrcm.end
	.wrcm.nelem "CanTp_StateProcessing"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "CanTp_ReqTxBufState","CanTp_RxTransmitFcState","CanTp_StateProcess_ReceptionStartRequest","CanTp_StateProcess_RxBufreqNextBlock","CanTp_StateProcess_RxUploadFrameData","CanTp_TimeoutStop","CanTp_TxCfWaitState","CanTp_TxTransmitState"
	.wrcm.end
	.wrcm.nelem "CanTp_RxTransmitFcState"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "CanTp_CanIfTransmitChannel","CanTp_StopChannel","Det_ReportError"
	.wrcm.end
	.wrcm.nelem "CanTp_TxCfWaitState"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "CanTp_PrepareTxDataFrame"
	.wrcm.end
	.wrcm.nelem "CanTp_TxTransmitState"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "CanTp_CanIfTransmitChannel","CanTp_StopChannel","Det_ReportError"
	.wrcm.end
	.wrcm.nelem "CanTp_ReqTxBufState"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "CanTp_PrepareTxDataFrame","CanTp_StopChannel","Det_ReportError"
	.wrcm.end
	.wrcm.nelem "CanTp_StateProcess_RxBufreqNextBlock"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "CanTp_PrepareFCFrame","CanTp_PrepareFC_Wait_OnTimeout","CanTp_RxBufferManager","CanTp_TimeoutStop"
	.wrcm.end
	.wrcm.nelem "CanTp_StateProcess_ReceptionStartRequest"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "CanTp_PrepareFC_Wait_OnTimeout","CanTp_RequestRxBuffer","CanTp_TimeoutStop"
	.wrcm.end
	.wrcm.nelem "CanTp_StateProcess_RxUploadFrameData"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "CanTp_PrepareFC_Wait_OnTimeout","CanTp_RxBufferCopyProcess","CanTp_TimeoutStop"
	.wrcm.end
	.wrcm.nelem "CanTp_TimeoutStop"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "CanTp_StopChannel","Det_ReportError"
	.wrcm.end
	.wrcm.nelem "CanTp_PrepareFC_Wait_OnTimeout"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "CanTp_PrepareFCFrame","CanTp_StopChannel"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanTp_MainFunction.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanTp_MainFunction.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanTp_MainFunction.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanTp_MainFunction.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanTp_MainFunction.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanTp_MainFunction.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\CanTp\ssc\make\..\src\CanTp_MainFunction.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
