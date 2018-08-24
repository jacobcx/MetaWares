#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"CanIf_Private.c"
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
# FUNC( void, CANIF_CODE )CanIf_ClearTxBuffers
	.align		2
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanIf\\ssc\\make\\..\\src\\CanIf_Private.c"
        .d2line         193,25
#$$ld
.L228:

#$$bf	CanIf_ClearTxBuffers,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r29,r30,r31,cr0,lr
	.globl		CanIf_ClearTxBuffers
	.d2_cfa_start __cie
CanIf_ClearTxBuffers:
.Llo1:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
.Llo12:
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)		# CanIfCounter_u16=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# Controller=r0 Controller=r3
	.d2prologue_end
# (
#     CONST(ControllerType, AUTOMATIC )Controller
# )
# {
#     /* Counter for Hth array */
#     VAR( CanIf_HthIndexType, AUTOMATIC )HthCount;
#     /* Counter to local loops*/
#     VAR( uint16,AUTOMATIC) CanIfCounter_u16;
#     /* Counter for Tx-PDUs in each buffer*/
#     VAR( uint16, AUTOMATIC)BufferIndx_u16;
# 
#     for (CanIfCounter_u16 = 0; CanIfCounter_u16 < CanIf_BufferInfo_p->CanIfNumberOfTxBuffers_u16; CanIfCounter_u16++)
	.d2line		205
.Llo13:
	diab.li		r3,0		# CanIfCounter_u16=r3
.L194:
.Llo2:
	rlwinm		r7,r3,0,16,31		# CanIfCounter_u16=r3
.Llo3:
	lis		r4,CanIf_BufferInfo_p@ha		# BufferIndx_u16=r4
.Llo14:
	lwz		r4,CanIf_BufferInfo_p@l(r4)		# BufferIndx_u16=r4 BufferIndx_u16=r4
	lhz		r4,0(r4)		# BufferIndx_u16=r4 BufferIndx_u16=r4
	se_cmp		r7,r4		# BufferIndx_u16=r4
	bc		0,0,.L193	# ge
#     {
#         HthCount = CanIf_TxBuffer_p[CanIfCounter_u16].HthIndex;
	.d2line		207
.Llo15:
	lis		r4,CanIf_TxBuffer_p@ha		# BufferIndx_u16=r4
.Llo16:
	lwz		r4,CanIf_TxBuffer_p@l(r4)		# BufferIndx_u16=r4 BufferIndx_u16=r4
	rlwinm		r7,r3,4,12,27		# CanIfCounter_u16=r3
	se_add		r4,r7		# BufferIndx_u16=r4 BufferIndx_u16=r4
	lhz		r5,4(r4)		# HthCount=r5 BufferIndx_u16=r4
.Llo5:
	mr		r5,r5		# HthCount=r5 HthCount=r5
#         if(CanIf_HthControllerConfig_p[HthCount].CanIfCanControllerIdRef_u8 == (uint8)Controller)
	.d2line		208
	lis		r4,CanIf_HthControllerConfig_p@ha		# BufferIndx_u16=r4
	lwz		r4,CanIf_HthControllerConfig_p@l(r4)		# BufferIndx_u16=r4 BufferIndx_u16=r4
	rlwinm		r6,r5,2,14,29		# HthCount=r5
	se_add		r4,r6		# BufferIndx_u16=r4 BufferIndx_u16=r4
	lbz		r4,2(r4)		# BufferIndx_u16=r4 BufferIndx_u16=r4
	rlwinm		r6,r0,0,24,31		# Controller=r0
	se_cmp		r4,r6		# BufferIndx_u16=r4
	bc		0,2,.L197	# ne
#         {
#             /* Clear the pending requests count */
#             CanIf_NoOfPendingRequests_pu8[ HthCount ] = 0;
	.d2line		211
.Llo6:
	diab.li		r29,0
	lis		r4,CanIf_NoOfPendingRequests_pu8@ha		# BufferIndx_u16=r4
.Llo17:
	lwz		r4,CanIf_NoOfPendingRequests_pu8@l(r4)		# BufferIndx_u16=r4 BufferIndx_u16=r4
.Llo7:
	rlwinm		r5,r5,0,16,31		# HthCount=r5 HthCount=r5
.Llo8:
	stbx		r29,r4,r5		# BufferIndx_u16=r4
# 
#             for(BufferIndx_u16 = 0; BufferIndx_u16 < (uint16)CanIf_TxBuffer_p[CanIfCounter_u16].CanIfBufferSize; BufferIndx_u16++)
	.d2line		213
	diab.li		r4,0		# BufferIndx_u16=r4
.L198:
	rlwinm		r29,r4,0,16,31		# BufferIndx_u16=r4
	lis		r5,CanIf_TxBuffer_p@ha		# HthCount=r5
.Llo9:
	lwz		r5,CanIf_TxBuffer_p@l(r5)		# HthCount=r5 HthCount=r5
	rlwinm		r7,r3,4,12,27		# CanIfCounter_u16=r3
	se_add		r5,r7		# HthCount=r5 HthCount=r5
	lbz		r5,6(r5)		# HthCount=r5 HthCount=r5
	se_cmp		r29,r5		# HthCount=r5
	bc		0,0,.L197	# ge
#             {
#                 CanIf_TxBuffer_p[CanIfCounter_u16].CanIfBufferInfo[BufferIndx_u16].DataLength_u8  = 0;
	.d2line		215
.Llo10:
	diab.li		r31,0
	lis		r5,CanIf_TxBuffer_p@ha		# HthCount=r5
.Llo11:
	lwz		r6,CanIf_TxBuffer_p@l(r5)		# HthCount=r5
	rlwinm		r7,r3,4,12,27		# CanIfCounter_u16=r3
	lwzux		r30,r6,r7
	rlwinm		r29,r4,4,12,27		# BufferIndx_u16=r4
	add		r6,r30,r29
	stb		r31,12(r6)
#                 CanIf_TxBuffer_p[CanIfCounter_u16].CanIfBufferInfo[BufferIndx_u16].HthIndex =  CANIF_INVALID_HTHIDX;
	.d2line		216
	diab.li		r6,65535
	lwz		r5,CanIf_TxBuffer_p@l(r5)		# HthCount=r5 HthCount=r5
	lwzx		r5,r5,r7		# HthCount=r5 HthCount=r5
	se_add		r29,r5		# HthCount=r5
	sth		r6,6(r29)
#             }
	.d2line		217
	diab.addi		r29,r4,1		# BufferIndx_u16=r4
	se_addi		r4,1		# BufferIndx_u16=r4 BufferIndx_u16=r4
	b		.L198
.L197:
#         }
#     }
	.d2line		219
	diab.addi		r7,r3,1		# CanIfCounter_u16=r3
	se_addi		r3,1		# CanIfCounter_u16=r3 CanIfCounter_u16=r3
	b		.L194
.L193:
# 
# }/* End of CanIf_ClearTxBuffers() */
	.d2line		221
	.d2epilogue_begin
.Llo4:
	lmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# CanIfCounter_u16=r0
	mtspr		lr,r0		# CanIfCounter_u16=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L229:
	.type		CanIf_ClearTxBuffers,@function
	.size		CanIf_ClearTxBuffers,.-CanIf_ClearTxBuffers
# Number of nodes = 97

# Allocations for CanIf_ClearTxBuffers
#	?a4		Controller
#	?a5		HthCount
#	?a6		CanIfCounter_u16
#	?a7		BufferIndx_u16
# FUNC( void, CANIF_CODE )CanIf_ClearRxIntDecoupleStatus
	.align		2
	.section	.text_vle
        .d2line         235,25
#$$ld
.L248:

#$$bf	CanIf_ClearRxIntDecoupleStatus,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r8,r31,cr0,lr
	.globl		CanIf_ClearRxIntDecoupleStatus
	.d2_cfa_start __cie
CanIf_ClearRxIntDecoupleStatus:
.Llo18:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r0,r3		# Controller=r0 Controller=r3
	.d2prologue_end
# (
#     CONST(ControllerType, AUTOMATIC )Controller
# )
# {
#     /* Variable for holding loop index */
#     VAR(PduIdTypeFast, AUTOMATIC) LoopInd;
# 
#     for (LoopInd = CanIf_BufferInfo_p->CanIfRxIndStBufferSize_u16; LoopInd-- > 0; ) /* PRQA S 3440,2911 */ /* Syntax used to decrement an unsigned type from range-1 to 0. Downcounting is a performance optimization. */
	.d2line		243
	lis		r3,CanIf_BufferInfo_p@ha
.Llo19:
	lwz		r3,CanIf_BufferInfo_p@l(r3)
	lhz		r4,6(r3)
.Llo22:
	mr		r4,r4		# LoopInd=r4 LoopInd=r4
.L206:
.Llo20:
	rlwinm		r6,r4,0,16,31		# RxPduIdOffset=r6 LoopInd=r4
.Llo32:
	se_cmpi		r6,0		# RxPduIdOffset=r6
	bc		0,1,.L205	# le
.Llo24:
	diab.li		r3,65535		# BitInd=r3
.Llo25:
	se_add		r3,r4		# BitInd=r3 BitInd=r3 LoopInd=r4
.Llo26:
	mr		r4,r3		# LoopInd=r4 LoopInd=r3
#     {
#         /* check if any of the interrupt decoupling flags are set */
#         if (0 != CanIf_RxPduIntDecNotifySt_pu8[LoopInd])
	.d2line		246
	lis		r3,CanIf_RxPduIntDecNotifySt_pu8@ha		# BitInd=r3
.Llo27:
	lwz		r3,CanIf_RxPduIntDecNotifySt_pu8@l(r3)		# BitInd=r3 BitInd=r3
	rlwinm		r31,r4,0,16,31		# LoopInd=r4
	lbzx		r3,r3,r31		# BitInd=r3 BitInd=r3
	se_cmpi		r3,0		# BitInd=r3
	bc		1,2,.L206	# eq
	.section	.text_vle
.L255:
#         {
#             /* Variable for holding bit index */
#             VAR(LoopIndexFast, AUTOMATIC) BitInd;
# 
#             VAR(PduIdType, AUTOMATIC) RxPduIdOffset = (PduIdType)(LoopInd * (PduIdTypeFast)CANIF_BITS_IN_BYTE);
	.d2line		251
.Llo28:
	rlwinm		r6,r4,3,0,28		# RxPduIdOffset=r6 LoopInd=r4
.Llo33:
	mr		r6,r6		# RxPduIdOffset=r6 RxPduIdOffset=r6
# 
#             /* check each of the interrupt decoupling flags in current byte */
#             for (BitInd = (LoopIndexFast)CANIF_BITS_IN_BYTE; BitInd-- > 0;) /* PRQA S 3440, 2911 */ /* Syntax used to decrement an unsigned type from range-1 to 0. Downcounting is a performance optimization. */
	.d2line		254
	diab.li		r3,8		# BitInd=r3
.L210:
.Llo29:
	diab.addi		r3,r3,-1		# BitInd=r3 BitInd=r3
	diab.addi		r7,r3,1		# RxPduId=r7 BitInd=r3
.Llo34:
	e_and2i.		r7,65535		# RxPduId=r7
	bc		0,1,.L206	# le
	.section	.text_vle
.L265:
#             {
#                 /* generate the RxPduId from indication status buffer index */
#                 VAR(PduIdType, AUTOMATIC) RxPduId = RxPduIdOffset + (PduIdType)BitInd;
	.d2line		257
.Llo35:
	add		r7,r6,r3		# RxPduId=r7 RxPduIdOffset=r6 BitInd=r3
.Llo36:
	mr		r7,r7		# RxPduId=r7 RxPduId=r7
# 
#                 if (RxPduId < CanIf_InitConfiguration_p->CanIfNumberOfCanRxPduIds)
	.d2line		259
	rlwinm		r31,r7,0,16,31		# RxPduId=r7
	lis		r5,CanIf_InitConfiguration_p@ha		# Controller_u8=r5
.Llo42:
	lwz		r5,CanIf_InitConfiguration_p@l(r5)		# Controller_u8=r5 Controller_u8=r5
	lhz		r5,0(r5)		# Controller_u8=r5 Controller_u8=r5
	se_cmp		r31,r5		# Controller_u8=r5
	bc		0,0,.L210	# ge
	.section	.text_vle
.L271:
#                 {
#                     /* Get the controller id of RxPdu */
#                     CONSTP2CONST(CanIfRxPduConfigInfo_t, AUTOMATIC, CANIF_APPL_CONST) RxPduConfigInfo_p =
	.d2line		262
.Llo43:
	rlwinm		r7,r7,0,16,31		# RxPduId=r7 RxPduId=r7
	lis		r5,CanIf_RxPduConfigInfo_p@ha		# Controller_u8=r5
.Llo44:
	lwz		r5,CanIf_RxPduConfigInfo_p@l(r5)		# Controller_u8=r5 Controller_u8=r5
	rlwinm		r31,r7,5,0,26		# RxPduId=r7
	se_slwi		r7,3		# RxPduId=r7 RxPduId=r7
	subf		r7,r7,r31		# RxPduId=r7 RxPduId=r7
	se_add		r5,r7		# Controller_u8=r5 Controller_u8=r5 RxPduId=r7
.Llo40:
	mr		r5,r5		# RxPduConfigInfo_p=r5 RxPduConfigInfo_p=r5
#                             &(CanIf_RxPduConfigInfo_p[RxPduId]);
# 
#                     /* To hold the controller index */
#                     VAR(ControllerType, AUTOMATIC) Controller_u8;
#                     Controller_u8 = CanIf_HrhControllerConfig_ppcu8
	.d2line		267
	lis		r7,CanIf_HrhControllerConfig_ppcu8@ha		# RxPduId=r7
	lwz		r7,CanIf_HrhControllerConfig_ppcu8@l(r7)		# RxPduId=r7 RxPduId=r7
	lbz		r31,20(r5)		# RxPduConfigInfo_p=r5
	rlwinm		r31,r31,2,22,29
	lwzx		r7,r7,r31		# RxPduId=r7 RxPduId=r7
	lhz		r5,14(r5)		# RxPduConfigInfo_p=r5 RxPduConfigInfo_p=r5
	lbzx		r5,r7,r5		# RxPduConfigInfo_p=r5 RxPduId=r7
.Llo41:
	mr		r5,r5		# Controller_u8=r5 Controller_u8=r5
#                                     [RxPduConfigInfo_p->CanIfCanDriverRef_u8]
#                                     [RxPduConfigInfo_p->CanIfCanRxPduHrhRef];
# 
#                     if (Controller_u8 == Controller)
	.d2line		271
	rlwinm		r5,r5,0,24,31		# Controller_u8=r5 Controller_u8=r5
	rlwinm		r7,r0,0,24,31		# RxPduId=r7 Controller=r0
	se_cmp		r5,r7		# Controller_u8=r5 RxPduId=r7
	bc		0,2,.L210	# ne
#                     {
#                         /* Clear the notification status. */
#                         CANIF_CLR_BIT (CanIf_RxPduIntDecNotifySt_pu8[LoopInd], BitInd);
	.d2line		274
.Llo37:
	lis		r5,CanIf_RxPduIntDecNotifySt_pu8@ha		# Controller_u8=r5
.Llo45:
	lwz		r5,CanIf_RxPduIntDecNotifySt_pu8@l(r5)		# Controller_u8=r5 Controller_u8=r5
	rlwinm		r31,r4,0,16,31		# LoopInd=r4
	lbzx		r8,r5,r31		# Controller_u8=r5
	diab.li		r7,1		# RxPduId=r7
.Llo38:
	slw		r7,r7,r3		# RxPduId=r7 RxPduId=r7 BitInd=r3
	andc		r7,r8,r7		# RxPduId=r7 RxPduId=r7
	stbx		r7,r5,r31		# Controller_u8=r5 RxPduId=r7
	.section	.text_vle
.L272:
	.section	.text_vle
.L266:
.Llo39:
	b		.L210
	.section	.text_vle
.L256:
.L205:
.Llo21:
	diab.li		r3,65535		# BitInd=r3
.Llo30:
	se_add		r3,r4		# BitInd=r3 BitInd=r3 LoopInd=r4
.Llo31:
	mr		r3,r3		# LoopInd=r3 LoopInd=r3
#                     } /* if */
#                 } /* if */
#             } /* for */
#         } /* if */
#     } /* for */
# 
# }/* End of CanIf_ClearRxIntDecoupleStatus() */
	.d2line		281
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# Controller=r0
	mtspr		lr,r0		# Controller=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo23:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L249:
	.type		CanIf_ClearRxIntDecoupleStatus,@function
	.size		CanIf_ClearRxIntDecoupleStatus,.-CanIf_ClearRxIntDecoupleStatus
# Number of nodes = 90

# Allocations for CanIf_ClearRxIntDecoupleStatus
#	?a4		Controller
#	?a5		$$70
#	?a6		$$69
#	?a7		LoopInd
#	?a8		BitInd
#	?a9		RxPduIdOffset
#	?a10		RxPduId
#	?a11		RxPduConfigInfo_p
#	?a12		Controller_u8
# FUNC(void, CANIF_CODE)CanIf_ReportTxConfirmation
	.align		2
	.section	.text_vle
        .d2line         295,23
#$$ld
.L286:

#$$bf	CanIf_ReportTxConfirmation,interprocedural,rasave,nostackparams
	.globl		CanIf_ReportTxConfirmation
	.d2_cfa_start __cie
CanIf_ReportTxConfirmation:
.Llo46:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r5,r3		# CanTxPduId=r5 CanTxPduId=r3
	.d2prologue_end
# (
#     CONST(PduIdType, AUTOMATIC) CanTxPduId
# )
# {
#     /* variable for holding PduId of upper layer */
#     CONST(PduIdType, AUTOMATIC) PduId = CanIf_TxPduConfigInfo_p[CanTxPduId].PduIdRef;
	.d2line		301
	lis		r3,CanIf_TxPduConfigInfo_p@ha		# TxPduCbk_pc=r3
.Llo47:
	lwz		r4,CanIf_TxPduConfigInfo_p@l(r3)		# TxPduCbk_pc=r3
.Llo48:
	rlwinm		r5,r5,0,16,31		# CanTxPduId=r5 CanTxPduId=r5
	e_mulli		r5,r5,36		# CanTxPduId=r5 CanTxPduId=r5
	se_add		r4,r5		# CanTxPduId=r5
	lhz		r0,20(r4)
.Llo50:
	mr		r0,r0		# PduId=r0 PduId=r0
# 
#     /* variable to point to corresponding callback configuration */
#     CONSTP2CONST(CanIfTxPduCbkConfig_t, AUTOMATIC, CANIF_APPL_CONST) TxPduCbk_pc =
	.d2line		304
	lis		r4,CanIf_TxPduCbkConfig_a@ha
	e_add16i		r4,r4,CanIf_TxPduCbkConfig_a@l
	lwz		r3,CanIf_TxPduConfigInfo_p@l(r3)		# TxPduCbk_pc=r3 TxPduCbk_pc=r3
	se_add		r3,r5		# TxPduCbk_pc=r3 TxPduCbk_pc=r3 CanTxPduId=r5
	lbz		r3,23(r3)		# TxPduCbk_pc=r3 TxPduCbk_pc=r3
	rlwinm		r3,r3,3,21,28		# TxPduCbk_pc=r3 TxPduCbk_pc=r3
	se_add		r3,r4		# TxPduCbk_pc=r3 TxPduCbk_pc=r3
	mr		r3,r3		# TxPduCbk_pc=r3 TxPduCbk_pc=r3
#             &CanIf_TxPduCbkConfig_a[CanIf_TxPduConfigInfo_p[CanTxPduId].CanIfTxPduCallBackInd_u8];
# 
#     /* REQ: [DEV_CANIF438] */
#     /* if TxConfirmation needs to be reported to upper layer */
#     if (NULL_PTR != TxPduCbk_pc->CanIfUserTxConfirmation)
	.d2line		309
	lwz		r4,4(r3)		# TxPduCbk_pc=r3
	se_cmpi		r4,0
	bc		1,2,.L219	# eq
#     {
#         /* REQ: [CANIF383] */
#         /* REQ: [CANIF437] No assumptions made regarding calling context. */
#         /* Call the configured TxConfirmation call back function */
#         TxPduCbk_pc->CanIfUserTxConfirmation(PduId);
	.d2line		314
.Llo49:
	lwz		r3,4(r3)		# TxPduCbk_pc=r3 TxPduCbk_pc=r3
.Llo52:
	mtspr		ctr,r3		# TxPduCbk_pc=ctr
	rlwinm		r3,r0,0,16,31		# TxPduCbk_pc=r3 PduId=r0
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x8 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
.L219:
# 
#     }
#     else
#     {
#         /* Do Nothing */
# 
#     }
# 
# } /* End of CanIf_ReportConfirmation () */
	.d2line		323
	.d2epilogue_begin
.Llo51:
	lwz		r0,20(r1)		# PduId=r0
	mtspr		lr,r0		# PduId=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L287:
	.type		CanIf_ReportTxConfirmation,@function
	.size		CanIf_ReportTxConfirmation,.-CanIf_ReportTxConfirmation
# Number of nodes = 44

# Allocations for CanIf_ReportTxConfirmation
#	?a4		CanTxPduId
#	?a5		PduId
#	?a6		TxPduCbk_pc
# FUNC(void, CANIF_CODE)CanIf_ReportRxIndication
	.align		2
	.section	.text_vle
        .d2line         337,23
#$$ld
.L302:

#$$bf	CanIf_ReportRxIndication,interprocedural,rasave,nostackparams
	.globl		CanIf_ReportRxIndication
	.d2_cfa_start __cie
CanIf_ReportRxIndication:
.Llo53:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r7,r3		# RxPduId=r7 RxPduId=r3
	mr		r4,r4		# CanDlc_u8=r4 CanDlc_u8=r4
	mr		r0,r5		# CanSduPtr_pu8=r0 CanSduPtr_pu8=r5
	.d2prologue_end
# (
#     CONST(PduIdType, AUTOMATIC) RxPduId,
#     CONST(uint8, AUTOMATIC) CanDlc_u8,
#     CONSTP2CONST(uint8, AUTOMATIC, CANIF_APPL_DATA) CanSduPtr_pu8
# )
# {
#     /* variable for holding the dlc and data while calling indication
#        function of upper layer */
#     VAR(PduInfoType, AUTOMATIC) PduInfo;
# 
#     /* variable for holding PduId of upper layer */
#     CONST(PduIdType, AUTOMATIC) PduId = CanIf_RxPduConfigInfo_p[RxPduId].PduIdRef;
	.d2line		349
	rlwinm		r7,r7,0,16,31		# RxPduId=r7 RxPduId=r7
.Llo54:
	lis		r3,CanIf_RxPduConfigInfo_p@ha		# RxPduCbk_pc=r3
.Llo55:
	lwz		r5,CanIf_RxPduConfigInfo_p@l(r3)		# RxPduCbk_pc=r3
.Llo59:
	rlwinm		r6,r7,5,0,26		# RxPduId=r7
	se_slwi		r7,3		# RxPduId=r7 RxPduId=r7
	subf		r7,r7,r6		# RxPduId=r7 RxPduId=r7
	se_add		r5,r7		# RxPduId=r7
	lhz		r6,12(r5)
.Llo61:
	mr		r6,r6		# PduId=r6 PduId=r6
# 
#     /* variable to point to corresponding callback configuration */
#     CONSTP2CONST(CanIfRxPduCbkConfig_t, AUTOMATIC, CANIF_APPL_CONST) RxPduCbk_pc =
	.d2line		352
	lis		r5,CanIf_RxPduCbkConfig_a@ha
	e_add16i		r5,r5,CanIf_RxPduCbkConfig_a@l
	lwz		r3,CanIf_RxPduConfigInfo_p@l(r3)		# RxPduCbk_pc=r3 RxPduCbk_pc=r3
	se_add		r3,r7		# RxPduCbk_pc=r3 RxPduCbk_pc=r3 RxPduId=r7
	lbz		r3,17(r3)		# RxPduCbk_pc=r3 RxPduCbk_pc=r3
	rlwinm		r3,r3,3,21,28		# RxPduCbk_pc=r3 RxPduCbk_pc=r3
	se_add		r3,r5		# RxPduCbk_pc=r3 RxPduCbk_pc=r3
	mr		r3,r3		# RxPduCbk_pc=r3 RxPduCbk_pc=r3
#             &CanIf_RxPduCbkConfig_a[CanIf_RxPduConfigInfo_p[RxPduId].CanIfRxPduCallBackInd_u8];
# 
#     /* REQ: [DEV_CANIF441] */
#     /* if rx indication needs to be reported to upper layer */
#     if (CANIF_NO_RX_INDICATION != RxPduCbk_pc->CanIfUserRxIndication_p)
	.d2line		357
	lwz		r5,4(r3)		# RxPduCbk_pc=r3
	se_cmpi		r5,0
	bc		1,2,.L223	# eq
#     {
#         /* copy DLC and data of received message to pass it to upper layer */
#         /* MISRA 11.5 violation:
#            CanSduPtr_pu8 is a pointer to constant, originating from a callback
#            (CanIf_RxIndication()), defined so by the standard.
#            PduInfo.SduDataPtr is a pointer to non-const, defined so by the standard.
#            Data pointer in PduInfoType is not const, defined so by the standard.
#            The CanIf SWS 7.14.2 allows passing the pointer to the const buffer
#            to the upper module, in which case the pointer needs to be cast to
#            non-const. The alternative is to allocate a temporary buffer here,
#            copy the received data, which would cost RAM and run-time, therefore
#            not chosen.
#         */
#         /* PRQA S  311 1 */
#         PduInfo.SduDataPtr = (uint8*) CanSduPtr_pu8;
	.d2line		372
.Llo56:
	stw		r0,8(r1)		# CanSduPtr_pu8=r0
#         PduInfo.SduLength = (PduLengthType)CanDlc_u8;
	.d2line		373
.Llo57:
	rlwinm		r4,r4,0,24,31		# CanDlc_u8=r4 CanDlc_u8=r4
	sth		r4,12(r1)		# CanDlc_u8=r4
# 
#         /* REQ: [CANIF440], [CANIF056], [CANIF135] */
#         /* Call the user configured rx indication function in upper layer */
#         RxPduCbk_pc->CanIfUserRxIndication_p(PduId, &PduInfo);
	.d2line		377
	lwz		r0,4(r3)		# CanSduPtr_pu8=r0 RxPduCbk_pc=r3
.Llo60:
	mtspr		ctr,r0		# CanSduPtr_pu8=ctr
	rlwinm		r3,r6,0,16,31		# RxPduCbk_pc=r3 PduId=r6
.Llo63:
	diab.addi		r4,r1,8		# CanDlc_u8=r4
.Llo58:
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x18 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
.L223:
# 
#     }/* if */
# 
# 
# } /* End of CanIf_ReportRxIndication () */
	.d2line		382
	.d2epilogue_begin
.Llo62:
	lwz		r0,20(r1)		# CanSduPtr_pu8=r0
	mtspr		lr,r0		# CanSduPtr_pu8=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L303:
	.type		CanIf_ReportRxIndication,@function
	.size		CanIf_ReportRxIndication,.-CanIf_ReportRxIndication
# Number of nodes = 59

# Allocations for CanIf_ReportRxIndication
#	?a4		RxPduId
#	?a5		CanDlc_u8
#	?a6		CanSduPtr_pu8
#	?a7		$$72
#	?a8		$$71
#	SP,8		PduInfo
#	?a9		PduId
#	?a10		RxPduCbk_pc

# Allocations for module
	.section	.text_vle
	.0byte		.L348
	.section	.text_vle
#$$ld
.L5:
.L411:	.d2filenum "C:\\WINDRI~1\\COMPIL~1\\DIAB-5~1.4\\include\\diab/lpragma.h"
.L365:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanIf\\ssc\\make\\..\\inc\\CanIf_Types.h"
.L324:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanIf\\ssc\\make\\..\\inc\\internal\\CanIf_Private.h"
.L230:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanIf\\ssc\\make\\..\\src\\CanIf_Private.c"
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
	.uleb128	38
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	16
	.uleb128	15
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
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	19
	.uleb128	21
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	39
	.uleb128	12
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	20
	.uleb128	5
	.byte		0x0
	.uleb128	73
	.uleb128	16
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanIf\\ssc\\make\\..\\src\\CanIf_Private.c"
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
.L231:
	.sleb128	2
	.4byte		.L227-.L2
	.byte		"CanIf_ClearTxBuffers"
	.byte		0
	.4byte		.L230
	.uleb128	193
	.uleb128	25
	.byte		0x1
	.byte		0x1
	.4byte		.L228
	.4byte		.L229
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L230
	.uleb128	193
	.uleb128	25
	.byte		"Controller"
	.byte		0
	.4byte		.L232
	.4byte		.L236
	.section	.debug_info,,n
.L237:
	.sleb128	4
	.4byte		.L230
	.uleb128	199
	.uleb128	41
	.byte		"HthCount"
	.byte		0
	.4byte		.L238
	.4byte		.L241
.L242:
	.sleb128	4
	.4byte		.L230
	.uleb128	201
	.uleb128	28
	.byte		"CanIfCounter_u16"
	.byte		0
	.4byte		.L239
	.4byte		.L243
.L244:
	.sleb128	4
	.4byte		.L230
	.uleb128	203
	.uleb128	28
	.byte		"BufferIndx_u16"
	.byte		0
	.4byte		.L239
	.4byte		.L245
	.section	.debug_info,,n
	.sleb128	0
.L227:
	.section	.debug_info,,n
.L250:
	.sleb128	2
	.4byte		.L247-.L2
	.byte		"CanIf_ClearRxIntDecoupleStatus"
	.byte		0
	.4byte		.L230
	.uleb128	235
	.uleb128	25
	.byte		0x1
	.byte		0x1
	.4byte		.L248
	.4byte		.L249
	.sleb128	3
	.4byte		.L230
	.uleb128	235
	.uleb128	25
	.byte		"Controller"
	.byte		0
	.4byte		.L232
	.4byte		.L251
.L252:
	.sleb128	4
	.4byte		.L230
	.uleb128	241
	.uleb128	35
	.byte		"LoopInd"
	.byte		0
	.4byte		.L253
	.4byte		.L254
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L258
	.4byte		.L255
	.4byte		.L256
.L259:
	.sleb128	4
	.4byte		.L230
	.uleb128	249
	.uleb128	43
	.byte		"BitInd"
	.byte		0
	.4byte		.L260
	.4byte		.L261
.L262:
	.sleb128	4
	.4byte		.L230
	.uleb128	251
	.uleb128	39
	.byte		"RxPduIdOffset"
	.byte		0
	.4byte		.L263
	.4byte		.L264
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L268
	.4byte		.L265
	.4byte		.L266
.L269:
	.sleb128	4
	.4byte		.L230
	.uleb128	257
	.uleb128	43
	.byte		"RxPduId"
	.byte		0
	.4byte		.L263
	.4byte		.L270
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L274
	.4byte		.L271
	.4byte		.L272
.L275:
	.sleb128	4
	.4byte		.L230
	.uleb128	262
	.uleb128	87
	.byte		"RxPduConfigInfo_p"
	.byte		0
	.4byte		.L276
	.4byte		.L281
.L282:
	.sleb128	4
	.4byte		.L230
	.uleb128	266
	.uleb128	52
	.byte		"Controller_u8"
	.byte		0
	.4byte		.L233
	.4byte		.L283
	.section	.debug_info,,n
	.sleb128	0
.L274:
	.section	.debug_info,,n
	.sleb128	0
.L268:
	.section	.debug_info,,n
	.sleb128	0
.L258:
	.section	.debug_info,,n
	.sleb128	0
.L247:
	.section	.debug_info,,n
.L288:
	.sleb128	2
	.4byte		.L285-.L2
	.byte		"CanIf_ReportTxConfirmation"
	.byte		0
	.4byte		.L230
	.uleb128	295
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L286
	.4byte		.L287
	.sleb128	3
	.4byte		.L230
	.uleb128	295
	.uleb128	23
	.byte		"CanTxPduId"
	.byte		0
	.4byte		.L289
	.4byte		.L290
.L291:
	.sleb128	4
	.4byte		.L230
	.uleb128	301
	.uleb128	33
	.byte		"PduId"
	.byte		0
	.4byte		.L289
	.4byte		.L292
.L293:
	.sleb128	4
	.4byte		.L230
	.uleb128	304
	.uleb128	70
	.byte		"TxPduCbk_pc"
	.byte		0
	.4byte		.L294
	.4byte		.L299
	.section	.debug_info,,n
	.sleb128	0
.L285:
	.section	.debug_info,,n
.L304:
	.sleb128	2
	.4byte		.L301-.L2
	.byte		"CanIf_ReportRxIndication"
	.byte		0
	.4byte		.L230
	.uleb128	337
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L302
	.4byte		.L303
	.sleb128	3
	.4byte		.L230
	.uleb128	337
	.uleb128	23
	.byte		"RxPduId"
	.byte		0
	.4byte		.L289
	.4byte		.L305
	.sleb128	3
	.4byte		.L230
	.uleb128	337
	.uleb128	23
	.byte		"CanDlc_u8"
	.byte		0
	.4byte		.L306
	.4byte		.L307
	.sleb128	3
	.4byte		.L230
	.uleb128	337
	.uleb128	23
	.byte		"CanSduPtr_pu8"
	.byte		0
	.4byte		.L308
	.4byte		.L310
	.section	.debug_info,,n
.L311:
	.sleb128	6
	.4byte		.L230
	.uleb128	346
	.uleb128	33
	.byte		"PduInfo"
	.byte		0
	.4byte		.L312
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
.L314:
	.sleb128	4
	.4byte		.L230
	.uleb128	349
	.uleb128	33
	.byte		"PduId"
	.byte		0
	.4byte		.L289
	.4byte		.L315
.L316:
	.sleb128	4
	.4byte		.L230
	.uleb128	352
	.uleb128	70
	.byte		"RxPduCbk_pc"
	.byte		0
	.4byte		.L317
	.4byte		.L322
	.section	.debug_info,,n
	.sleb128	0
.L301:
	.section	.debug_info,,n
.L323:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L324
	.uleb128	369
	.uleb128	1
	.byte		"CanIf_NoOfPendingRequests_pu8"
	.byte		0
	.4byte		.L325
	.0byte		.L323
.L326:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L324
	.uleb128	385
	.uleb128	49
	.byte		"CanIf_RxPduIntDecNotifySt_pu8"
	.byte		0
	.4byte		.L325
.L327:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L324
	.uleb128	412
	.uleb128	1
	.byte		"CanIf_TxBuffer_p"
	.byte		0
	.4byte		.L328
.L332:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L324
	.uleb128	420
	.uleb128	1
	.byte		"CanIf_InitConfiguration_p"
	.byte		0
	.4byte		.L333
.L337:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L324
	.uleb128	428
	.uleb128	1
	.byte		"CanIf_TxPduConfigInfo_p"
	.byte		0
	.4byte		.L338
.L342:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L324
	.uleb128	436
	.uleb128	1
	.byte		"CanIf_RxPduConfigInfo_p"
	.byte		0
	.4byte		.L277
.L343:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L324
	.uleb128	444
	.uleb128	1
	.byte		"CanIf_BufferInfo_p"
	.byte		0
	.4byte		.L344
.L348:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L324
	.uleb128	518
	.uleb128	1
	.byte		"CanIf_HthControllerConfig_p"
	.byte		0
	.4byte		.L349
	.section	.debug_info,,n
.L354:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L324
	.uleb128	575
	.uleb128	50
	.byte		"CanIf_TxPduCbkConfig_a"
	.byte		0
	.4byte		.L355
.L357:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L324
	.uleb128	583
	.uleb128	1
	.byte		"CanIf_HrhControllerConfig_ppcu8"
	.byte		0
	.4byte		.L358
.L362:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L324
	.uleb128	590
	.uleb128	50
	.byte		"CanIf_RxPduCbkConfig_a"
	.byte		0
	.4byte		.L363
	.section	.debug_info,,n
.L347:
	.sleb128	8
	.4byte		.L365
	.uleb128	266
	.uleb128	1
	.4byte		.L366-.L2
	.uleb128	8
	.section	.debug_info,,n
.L175:
	.sleb128	9
	.byte		"CanIfNumberOfTxBuffers_u16"
	.byte		0
	.4byte		.L239
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L176:
	.sleb128	9
	.byte		"RxPduDataBufferSize_u16"
	.byte		0
	.4byte		.L239
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L177:
	.sleb128	9
	.byte		"RxPduIntDecDataBufferSize_u16"
	.byte		0
	.4byte		.L239
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L178:
	.sleb128	9
	.byte		"CanIfRxIndStBufferSize_u16"
	.byte		0
	.4byte		.L239
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
	.sleb128	0
.L366:
.L336:
	.sleb128	8
	.4byte		.L365
	.uleb128	266
	.uleb128	1
	.4byte		.L367-.L2
	.uleb128	8
.L171:
	.sleb128	9
	.byte		"CanIfNumberOfCanRxPduIds"
	.byte		0
	.4byte		.L368
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L172:
	.sleb128	9
	.byte		"CanIfNumberOfCanTxPduIds"
	.byte		0
	.4byte		.L368
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L173:
	.sleb128	9
	.byte		"CanIfNoOfDynamicCanTxPduIds"
	.byte		0
	.4byte		.L368
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L174:
	.sleb128	9
	.byte		"CanIfNumberOfCanDrivers"
	.byte		0
	.4byte		.L234
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
	.sleb128	0
.L367:
.L280:
	.sleb128	8
	.4byte		.L365
	.uleb128	266
	.uleb128	1
	.4byte		.L369-.L2
	.uleb128	24
.L122:
	.sleb128	9
	.byte		"CanIfCanRxPduCanId"
	.byte		0
	.4byte		.L370
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L123:
	.sleb128	9
	.byte		"CanIfRxPduIdCanIdType"
	.byte		0
	.4byte		.L374
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L124:
	.sleb128	9
	.byte		"CanIfRxPduIntDecBufferInd"
	.byte		0
	.4byte		.L372
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L125:
	.sleb128	9
	.byte		"PduIdRef"
	.byte		0
	.4byte		.L263
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L126:
	.sleb128	9
	.byte		"CanIfCanRxPduHrhRef"
	.byte		0
	.4byte		.L376
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L127:
	.sleb128	9
	.byte		"CanIfCanRxPduIdDlc_u8"
	.byte		0
	.4byte		.L234
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L128:
	.sleb128	9
	.byte		"CanIfRxPduCallBackInd_u8"
	.byte		0
	.4byte		.L234
	.sleb128	2
	.byte		0x23
	.uleb128	17
	.byte		0x1
.L129:
	.sleb128	9
	.byte		"CanIfReadRxPduData_b"
	.byte		0
	.4byte		.L377
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L130:
	.sleb128	9
	.byte		"CanIfReadRxPduNotifyStatus_b"
	.byte		0
	.4byte		.L377
	.sleb128	2
	.byte		0x23
	.uleb128	19
	.byte		0x1
.L131:
	.sleb128	9
	.byte		"CanIfCanDriverRef_u8"
	.byte		0
	.4byte		.L234
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L132:
	.sleb128	9
	.byte		"CanIfRxPduIntDecoupling_b"
	.byte		0
	.4byte		.L377
	.sleb128	2
	.byte		0x23
	.uleb128	21
	.byte		0x1
	.sleb128	0
.L369:
.L321:
	.sleb128	8
	.4byte		.L365
	.uleb128	266
	.uleb128	1
	.4byte		.L378-.L2
	.uleb128	8
.L118:
	.sleb128	9
	.byte		"CanIfRxUserType"
	.byte		0
	.4byte		.L379
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L119:
	.sleb128	9
	.byte		"CanIfUserRxIndication_p"
	.byte		0
	.4byte		.L381
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L378:
.L341:
	.sleb128	8
	.4byte		.L365
	.uleb128	266
	.uleb128	1
	.4byte		.L388-.L2
	.uleb128	36
.L106:
	.sleb128	9
	.byte		"CanIfCanTxPduIdCanId"
	.byte		0
	.4byte		.L370
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L107:
	.sleb128	9
	.byte		"CanIfCanTxPduType"
	.byte		0
	.4byte		.L389
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L108:
	.sleb128	9
	.byte		"CanIfTxPduIdCanIdType"
	.byte		0
	.4byte		.L391
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L109:
	.sleb128	9
	.byte		"CanIfTxBufferType"
	.byte		0
	.4byte		.L393
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L110:
	.sleb128	9
	.byte		"CanIfBufferCfg"
	.byte		0
	.4byte		.L328
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L111:
	.sleb128	9
	.byte		"PduIdRef"
	.byte		0
	.4byte		.L263
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L112:
	.sleb128	9
	.byte		"CanIfCanTxPduIdDlc_u8"
	.byte		0
	.4byte		.L234
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L113:
	.sleb128	9
	.byte		"CanIfTxPduCallBackInd_u8"
	.byte		0
	.4byte		.L234
	.sleb128	2
	.byte		0x23
	.uleb128	23
	.byte		0x1
.L114:
	.sleb128	9
	.byte		"CanIfReadTxPduNotifyStatus_b"
	.byte		0
	.4byte		.L377
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L115:
	.sleb128	9
	.byte		"DataPtrPtr"
	.byte		0
	.4byte		.L395
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L116:
	.sleb128	9
	.byte		"TxBufferDataSize"
	.byte		0
	.4byte		.L234
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L117:
	.sleb128	9
	.byte		"IsDedicated"
	.byte		0
	.4byte		.L377
	.sleb128	2
	.byte		0x23
	.uleb128	33
	.byte		0x1
	.sleb128	0
.L388:
.L298:
	.sleb128	8
	.4byte		.L365
	.uleb128	266
	.uleb128	1
	.4byte		.L398-.L2
	.uleb128	8
.L104:
	.sleb128	9
	.byte		"CanIfTxUserType"
	.byte		0
	.4byte		.L379
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L105:
	.sleb128	9
	.byte		"CanIfUserTxConfirmation"
	.byte		0
	.4byte		.L399
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L398:
.L331:
	.sleb128	8
	.4byte		.L365
	.uleb128	266
	.uleb128	1
	.4byte		.L404-.L2
	.uleb128	16
.L98:
	.sleb128	9
	.byte		"CanIfBufferInfo"
	.byte		0
	.4byte		.L405
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L99:
	.sleb128	9
	.byte		"HthIndex"
	.byte		0
	.4byte		.L238
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L100:
	.sleb128	9
	.byte		"CanIfBufferSize"
	.byte		0
	.4byte		.L234
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L101:
	.sleb128	9
	.byte		"DataPtrList"
	.byte		0
	.4byte		.L395
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L102:
	.sleb128	9
	.byte		"MaxDataSize"
	.byte		0
	.4byte		.L234
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L103:
	.sleb128	9
	.byte		"IsDedicated"
	.byte		0
	.4byte		.L377
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
	.sleb128	0
.L404:
.L407:
	.sleb128	8
	.4byte		.L365
	.uleb128	266
	.uleb128	1
	.4byte		.L408-.L2
	.uleb128	16
.L93:
	.sleb128	9
	.byte		"BufferedCanId"
	.byte		0
	.4byte		.L370
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L94:
	.sleb128	9
	.byte		"SwLPduHandle"
	.byte		0
	.4byte		.L368
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L95:
	.sleb128	9
	.byte		"HthIndex"
	.byte		0
	.4byte		.L238
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L96:
	.sleb128	9
	.byte		"Data"
	.byte		0
	.4byte		.L397
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L97:
	.sleb128	9
	.byte		"DataLength_u8"
	.byte		0
	.4byte		.L234
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L408:
.L353:
	.sleb128	8
	.4byte		.L365
	.uleb128	266
	.uleb128	1
	.4byte		.L409-.L2
	.uleb128	4
.L91:
	.sleb128	9
	.byte		"CanIfHthIdSymRef"
	.byte		0
	.4byte		.L410
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L92:
	.sleb128	9
	.byte		"CanIfCanControllerIdRef_u8"
	.byte		0
	.4byte		.L234
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L409:
	.section	.debug_info,,n
.L313:
	.sleb128	10
	.4byte		.L411
	.uleb128	69
	.uleb128	1
	.4byte		.L412-.L2
	.byte		"VSTAR_PduInfoType"
	.byte		0
	.uleb128	8
.L83:
	.sleb128	9
	.byte		"SduDataPtr"
	.byte		0
	.4byte		.L325
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L84:
	.sleb128	9
	.byte		"SduLength"
	.byte		0
	.4byte		.L413
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L412:
	.section	.debug_info,,n
.L394:
	.sleb128	11
	.4byte		.L365
	.uleb128	248
	.uleb128	1
	.4byte		.L414-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	12
	.byte		"CANIF_NO_BUFFER"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"CANIF_BUFFER"
	.byte		0
	.sleb128	1
	.sleb128	12
	.byte		"CANIF_BUFFER_POOL"
	.byte		0
	.sleb128	2
	.sleb128	0
.L414:
.L380:
	.sleb128	11
	.4byte		.L365
	.uleb128	214
	.uleb128	1
	.4byte		.L415-.L2
	.uleb128	4
	.sleb128	12
	.byte		"CANIF_CANNM"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"CANIF_CANTP"
	.byte		0
	.sleb128	1
	.sleb128	12
	.byte		"CANIF_PDUR"
	.byte		0
	.sleb128	2
	.sleb128	12
	.byte		"CANIF_CDD"
	.byte		0
	.sleb128	3
	.sleb128	12
	.byte		"CANIF_J1939TP"
	.byte		0
	.sleb128	4
	.sleb128	12
	.byte		"CANIF_XCP"
	.byte		0
	.sleb128	5
	.sleb128	12
	.byte		"CANIF_CANTSYN"
	.byte		0
	.sleb128	6
	.sleb128	12
	.byte		"CANIF_J1939NM"
	.byte		0
	.sleb128	7
	.sleb128	0
.L415:
.L375:
	.sleb128	11
	.4byte		.L365
	.uleb128	185
	.uleb128	1
	.4byte		.L416-.L2
	.uleb128	4
	.sleb128	12
	.byte		"CANIF_RX_CANID_EXTENDED"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"CANIF_RX_CANID_STANDARD"
	.byte		0
	.sleb128	1
	.sleb128	12
	.byte		"CANIF_RX_CANID_EXTENDED_FD"
	.byte		0
	.sleb128	2
	.sleb128	12
	.byte		"CANIF_RX_CANID_STANDARD_FD"
	.byte		0
	.sleb128	3
	.sleb128	12
	.byte		"CANIF_RX_CANID_EXTENDED_NO_FD"
	.byte		0
	.sleb128	4
	.sleb128	12
	.byte		"CANIF_RX_CANID_STANDARD_NO_FD"
	.byte		0
	.sleb128	5
	.sleb128	0
.L416:
.L392:
	.sleb128	11
	.4byte		.L365
	.uleb128	163
	.uleb128	1
	.4byte		.L417-.L2
	.uleb128	4
	.sleb128	12
	.byte		"CANIF_TX_CANID_EXTENDED"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"CANIF_TX_CANID_STANDARD"
	.byte		0
	.sleb128	1
	.sleb128	12
	.byte		"CANIF_TX_CANID_EXTENDED_FD"
	.byte		0
	.sleb128	2
	.sleb128	12
	.byte		"CANIF_TX_CANID_STANDARD_FD"
	.byte		0
	.sleb128	3
	.sleb128	0
.L417:
.L390:
	.sleb128	11
	.4byte		.L365
	.uleb128	147
	.uleb128	1
	.4byte		.L418-.L2
	.uleb128	4
	.sleb128	12
	.byte		"CANIF_TXPDU_DYNAMIC"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"CANIF_TXPDU_STATIC"
	.byte		0
	.sleb128	1
	.sleb128	0
.L418:
	.section	.debug_info,,n
.L235:
	.sleb128	13
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L234:
	.sleb128	14
	.byte		"uint8"
	.byte		0
	.4byte		.L235
.L233:
	.sleb128	14
	.byte		"ControllerType"
	.byte		0
	.4byte		.L234
	.section	.debug_info,,n
.L232:
	.sleb128	15
	.4byte		.L233
.L240:
	.sleb128	13
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L239:
	.sleb128	14
	.byte		"uint16"
	.byte		0
	.4byte		.L240
.L238:
	.sleb128	14
	.byte		"CanIf_HthIndexType"
	.byte		0
	.4byte		.L239
.L253:
	.sleb128	14
	.byte		"PduIdTypeFast"
	.byte		0
	.4byte		.L239
.L260:
	.sleb128	14
	.byte		"LoopIndexFast"
	.byte		0
	.4byte		.L239
.L263:
	.sleb128	14
	.byte		"PduIdType"
	.byte		0
	.4byte		.L239
.L279:
	.sleb128	14
	.byte		"CanIfRxPduConfigInfo_t"
	.byte		0
	.4byte		.L280
.L278:
	.sleb128	15
	.4byte		.L279
	.section	.debug_info,,n
.L277:
	.sleb128	16
	.4byte		.L278
.L276:
	.sleb128	15
	.4byte		.L277
.L289:
	.sleb128	15
	.4byte		.L263
.L297:
	.sleb128	14
	.byte		"CanIfTxPduCbkConfig_t"
	.byte		0
	.4byte		.L298
.L296:
	.sleb128	15
	.4byte		.L297
.L295:
	.sleb128	16
	.4byte		.L296
.L294:
	.sleb128	15
	.4byte		.L295
.L306:
	.sleb128	15
	.4byte		.L234
.L309:
	.sleb128	16
	.4byte		.L306
.L308:
	.sleb128	15
	.4byte		.L309
.L312:
	.sleb128	14
	.byte		"PduInfoType"
	.byte		0
	.4byte		.L313
.L320:
	.sleb128	14
	.byte		"CanIfRxPduCbkConfig_t"
	.byte		0
	.4byte		.L321
.L319:
	.sleb128	15
	.4byte		.L320
.L318:
	.sleb128	16
	.4byte		.L319
.L317:
	.sleb128	15
	.4byte		.L318
.L325:
	.sleb128	16
	.4byte		.L234
.L330:
	.sleb128	14
	.byte		"CanIfBufferConfig_t"
	.byte		0
	.4byte		.L331
.L329:
	.sleb128	15
	.4byte		.L330
.L328:
	.sleb128	16
	.4byte		.L329
.L335:
	.sleb128	14
	.byte		"CanIfInitConfiguration_t"
	.byte		0
	.4byte		.L336
.L334:
	.sleb128	15
	.4byte		.L335
.L333:
	.sleb128	16
	.4byte		.L334
.L340:
	.sleb128	14
	.byte		"CanIfTxPduConfigInfo_t"
	.byte		0
	.4byte		.L341
.L339:
	.sleb128	15
	.4byte		.L340
.L338:
	.sleb128	16
	.4byte		.L339
.L346:
	.sleb128	14
	.byte		"CanIfBufferInfo_t"
	.byte		0
	.4byte		.L347
.L345:
	.sleb128	15
	.4byte		.L346
.L344:
	.sleb128	16
	.4byte		.L345
.L352:
	.sleb128	14
	.byte		"CanIfHthControllerConfig_t"
	.byte		0
	.4byte		.L353
.L351:
	.sleb128	15
	.4byte		.L352
.L350:
	.sleb128	16
	.4byte		.L351
.L349:
	.sleb128	15
	.4byte		.L350
	.section	.debug_info,,n
.L355:
	.sleb128	17
	.4byte		.L356-.L2
	.4byte		.L296
	.section	.debug_info,,n
	.sleb128	18
	.sleb128	0
.L356:
.L361:
	.sleb128	14
	.byte		"CanIf_CanControllerHrhIdRefType"
	.byte		0
	.4byte		.L309
.L360:
	.sleb128	15
	.4byte		.L361
.L359:
	.sleb128	16
	.4byte		.L360
.L358:
	.sleb128	15
	.4byte		.L359
.L363:
	.sleb128	17
	.4byte		.L364-.L2
	.4byte		.L319
	.sleb128	18
	.sleb128	0
.L364:
.L368:
	.sleb128	14
	.byte		"CanIfLpduId_t"
	.byte		0
	.4byte		.L263
.L373:
	.sleb128	13
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L372:
	.sleb128	14
	.byte		"uint32"
	.byte		0
	.4byte		.L373
.L371:
	.sleb128	14
	.byte		"Can_IdType"
	.byte		0
	.4byte		.L372
.L370:
	.sleb128	14
	.byte		"CanIfCanId_t"
	.byte		0
	.4byte		.L371
.L374:
	.sleb128	14
	.byte		"CanIfRxPduCanIdType_t"
	.byte		0
	.4byte		.L375
.L376:
	.sleb128	14
	.byte		"CanIf_HrhIndexType"
	.byte		0
	.4byte		.L239
.L377:
	.sleb128	14
	.byte		"boolean"
	.byte		0
	.4byte		.L235
.L379:
	.sleb128	14
	.byte		"CanIfUserType_t"
	.byte		0
	.4byte		.L380
	.section	.debug_info,,n
.L384:
	.sleb128	19
	.4byte		.L385-.L2
	.byte		0x1
	.section	.debug_info,,n
	.sleb128	20
	.4byte		.L263
.L387:
	.sleb128	15
	.4byte		.L312
.L386:
	.sleb128	16
	.4byte		.L387
	.sleb128	20
	.4byte		.L386
	.sleb128	0
.L385:
.L383:
	.sleb128	16
	.4byte		.L384
.L382:
	.sleb128	14
	.byte		"CanIfUserRxIndication_t"
	.byte		0
	.4byte		.L383
.L381:
	.sleb128	15
	.4byte		.L382
.L389:
	.sleb128	14
	.byte		"CanIfCanTxPduType_t"
	.byte		0
	.4byte		.L390
.L391:
	.sleb128	14
	.byte		"CanIfTxPduCanIdType_t"
	.byte		0
	.4byte		.L392
.L393:
	.sleb128	14
	.byte		"CanIfTxBufferType_t"
	.byte		0
	.4byte		.L394
.L397:
	.sleb128	14
	.byte		"CanIf_P2VarUint8Type"
	.byte		0
	.4byte		.L325
.L396:
	.sleb128	15
	.4byte		.L397
.L395:
	.sleb128	16
	.4byte		.L396
.L402:
	.sleb128	19
	.4byte		.L403-.L2
	.byte		0x1
	.sleb128	20
	.4byte		.L263
	.sleb128	0
.L403:
.L401:
	.sleb128	16
	.4byte		.L402
.L400:
	.sleb128	14
	.byte		"CanIfUserTxConfirmation_t"
	.byte		0
	.4byte		.L401
.L399:
	.sleb128	15
	.4byte		.L400
.L406:
	.sleb128	14
	.byte		"CanIfTxBufferRAM_t"
	.byte		0
	.4byte		.L407
.L405:
	.sleb128	16
	.4byte		.L406
.L410:
	.sleb128	14
	.byte		"Can_HwHandleType"
	.byte		0
	.4byte		.L239
.L413:
	.sleb128	14
	.byte		"PduLengthType"
	.byte		0
	.4byte		.L239
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L236:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),0
	.d2locend
.L241:
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),5
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),5
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),5
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo4),5
	.d2locend
.L243:
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo13),0
	.d2locreg	%offsetof(.Llo2), %offsetof(.Llo4),3
	.d2locend
.L245:
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo15),4
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo6),4
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo4),4
	.d2locend
.L251:
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo19),3
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo21),0
	.d2locend
.L254:
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo23),4
	.d2locend
.L261:
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo24),3
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo26),3
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo28),3
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo21),3
	.d2locreg	%offsetof(.Llo30), %offsetof(.Llo31),3
	.d2locend
.L264:
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo24),6
	.d2locreg	%offsetof(.Llo33), %offsetof(.Llo21),6
	.d2locend
.L270:
	.d2locreg	%offsetof(.Llo34), %offsetof(.Llo35),7
	.d2locreg	%offsetof(.Llo36), %offsetof(.Llo37),7
	.d2locreg	%offsetof(.Llo38), %offsetof(.Llo39),7
	.d2locend
.L281:
	.d2locreg	%offsetof(.Llo40), %offsetof(.Llo41),5
	.d2locend
.L283:
	.d2locreg	%offsetof(.Llo42), %offsetof(.Llo43),5
	.d2locreg	%offsetof(.Llo44), %offsetof(.Llo40),5
	.d2locreg	%offsetof(.Llo41), %offsetof(.Llo37),5
	.d2locreg	%offsetof(.Llo45), %offsetof(.Llo39),5
	.d2locend
.L290:
	.d2locreg	%offsetof(.Llo46), %offsetof(.Llo47),3
	.d2locreg	%offsetof(.Llo48), %offsetof(.Llo49),5
	.d2locend
.L292:
	.d2locreg	%offsetof(.Llo50), %offsetof(.Llo51),0
	.d2locend
.L299:
	.d2locreg	%offsetof(.Llo47), %offsetof(.Llo52),3
	.d2locend
.L305:
	.d2locreg	%offsetof(.Llo53), %offsetof(.Llo54),3
	.d2locreg	%offsetof(.Llo55), %offsetof(.Llo56),7
	.d2locend
.L307:
	.d2locreg	%offsetof(.Llo53), %offsetof(.Llo56),4
	.d2locreg	%offsetof(.Llo57), %offsetof(.Llo58),4
	.d2locend
.L310:
	.d2locreg	%offsetof(.Llo53), %offsetof(.Llo59),5
	.d2locreg	%offsetof(.Llo56), %offsetof(.Llo60),0
	.d2locend
.L315:
	.d2locreg	%offsetof(.Llo61), %offsetof(.Llo62),6
	.d2locend
.L322:
	.d2locreg	%offsetof(.Llo55), %offsetof(.Llo63),3
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "CanIf_ReportRxIndication"
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "CanIf_ReportTxConfirmation"
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "CanIf_ClearRxIntDecoupleStatus"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "CanIf_ClearTxBuffers"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanIf_Private.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanIf_Private.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanIf_Private.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanIf_Private.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanIf_Private.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanIf_Private.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\CanIf\ssc\make\..\src\CanIf_Private.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
