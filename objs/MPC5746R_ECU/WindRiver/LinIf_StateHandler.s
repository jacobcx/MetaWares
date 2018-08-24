#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"LinIf_StateHandler.c"
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
# static FUNC (void, LINIF_CODE) LinIf_clearSporadicPending(CONSTP2CONST(LinIfChannelReloc, AUTOMATIC, LINIF_CONST) LinIf_Channel_Reloc_p,
	.align		1
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinIf\\ssc\\make\\..\\src\\LinIf_StateHandler.c"
        .d2line         59,32
#$$ld
.L417:

#$$bf	LinIf_clearSporadicPending,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
LinIf_clearSporadicPending:
.Llo1:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# LinIf_Channel_Reloc_p=r31 LinIf_Channel_Reloc_p=r3
	mr		r30,r4		# spIndex=r30 spIndex=r4
	.d2prologue_end
#         CONST (uint16, AUTOMATIC) spIndex)
# {
#     /* Check whether sporadic frame status is handled */
#     if (LINIF_INVALID_FRAME_INDEX != spIndex)
	.d2line		63
	rlwinm		r4,r4,0,16,31		# spIndex=r4 spIndex=r4
	cmpli		0,0,r4,65535		# spIndex=r4
	bc		1,2,.L278	# eq
#     {
#         SchM_Enter_LinIf_ExclusiveArea0();
	.d2line		65
.Llo2:
	bl		SchM_Enter_LinIf_ExclusiveArea0
# 
#         /* Reset the flag for sporadic transmit, LinIf_Transmit() can set it */
#         LinIf_Channel_Reloc_p->SPPendingRequest_p[spIndex] = FALSE;
	.d2line		68
.Llo3:
	diab.li		r0,0
	lwz		r3,16(r31)		# LinIf_Channel_Reloc_p=r31
.Llo7:
	rlwinm		r30,r30,0,16,31		# spIndex=r30 spIndex=r30
.Llo8:
	stbx		r0,r3,r30
# 
#         SchM_Exit_LinIf_ExclusiveArea0();
	.d2line		70
	bl		SchM_Exit_LinIf_ExclusiveArea0
.L278:
#     }
# }
	.d2line		72
	.d2epilogue_begin
.Llo4:
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo5:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo6:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L418:
	.type		LinIf_clearSporadicPending,@function
	.size		LinIf_clearSporadicPending,.-LinIf_clearSporadicPending
# Number of nodes = 18

# Allocations for LinIf_clearSporadicPending
#	?a4		LinIf_Channel_Reloc_p
#	?a5		spIndex
# static FUNC (void, LINIF_CODE) LinIf_HandleSRFrameStatus(CONSTP2CONST (LinIfChannel, AUTOMATIC, LINIF_APPL_CONST) crntChannel_p)
	.align		1
	.section	.text_vle
        .d2line         80,32
#$$ld
.L433:

#$$bf	LinIf_HandleSRFrameStatus,interprocedural,nostackparams

# Regs written: r0,r1,r3
	.d2_cfa_start __cie
LinIf_HandleSRFrameStatus:
.Llo9:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# crntChannel_p=r3 crntChannel_p=r3
	.d2prologue_end
# {
#     CONSTP2VAR (LinIfChannelManager, AUTOMATIC, LINIF_APPL_DATA) channelManager_p = crntChannel_p->LinIf_channelManager_p;
	.d2line		82
	lwz		r3,28(r3)		# crntChannel_p=r3 crntChannel_p=r3
.Llo10:
	mr		r3,r3		# channelManager_p=r3 channelManager_p=r3
# 
# #if ( LINIF_TP_SUPPORTED == STD_ON )
#     if ((LINTP_INTERNAL_APPLICATIVE_SCHEDULE != channelManager_p->LinTp_SubState)
#         && (LINTP_INTERNAL_FUNCT_DIAG_REQUEST_FROM_APPL != channelManager_p->LinTp_SubState))
#     {
#         /* Handle Slave Response Frame status: ongoing TP reception */
#         LinTp_HandleSRFrameStatus (crntChannel_p);
#     }
#     else /* Handle Slave Response Frame status: NO ongoing TP reception */
# #endif
#     {
#     #if ( LINIF_DEM_REPORT_ENABLE == STD_ON )
#         /* Get the frame pointer */
#         CONSTP2CONST (LinIfFrame, AUTOMATIC, LINIF_APPL_CONST) Frame_p =
#             crntChannel_p->LinIf_channelManager_p->LinIf_BusStatus.LinIf_frameEntry_p->LinIfFrameRef;
#     #endif
# 
#         switch (channelManager_p->LinIf_BusStatus.Lin_DriverGetStatusVal)
#         {
#             case LIN_RX_BUSY: /* On-going reception (Header/Response) */
#             case LIN_TX_BUSY: /* On-going Transmission (Header/Response) */
#             case LIN_RX_NO_RESPONSE: /* No Response byte has been received */
#                 if (LINIF_MAIN_AT_ENTRY == channelManager_p->LinIf_EntryDelayCounter)
#                 {
#     #if ( LINIF_DEM_REPORT_ENABLE == STD_ON )
#                     LinIf_Report_Dem_No_Response_Error(Frame_p,(Dem_EventStatusType)DEM_EVENT_STATUS_PREFAILED);
#     #endif
#     #if ( LINIF_DEV_ERROR_DETECT == STD_ON )
#                     (void)Det_ReportError (LINIF_MODULE_ID,
#                                            LINIF_INSTANCE_ID,
#                                            LINIF_MAIN_FUN_ID,
#                                            LINIF_E_NC_NO_RESPONSE); /*[LINIF405]*/
# 
#     #endif
#                 } break;
#             case LIN_RX_ERROR: /* Erroneous response reception */
#                 {
#     #if ( LINIF_DEM_REPORT_ENABLE == STD_ON )
#                     LinIf_Report_Dem_Transmission_Error(Frame_p,(Dem_EventStatusType)DEM_EVENT_STATUS_PREFAILED);
#     #endif
#     #if ( LINIF_DEV_ERROR_DETECT == STD_ON )
#                     (void)Det_ReportError (LINIF_MODULE_ID,
#                                            LINIF_INSTANCE_ID,
#                                            LINIF_MAIN_FUN_ID,
#                                            LINIF_E_NC_NO_RESPONSE); /*[LINIF405]*/
#     #endif
#                 } break;
#             case LIN_RX_OK: /* Reception of correct response */ /*[LINIF404] no action, no indication */
#                 {
#     #if ( LINIF_DEM_REPORT_ENABLE == STD_ON )
#                     LinIf_Report_Dem_Transmission_Error(Frame_p,(Dem_EventStatusType)DEM_EVENT_STATUS_PREPASSED);
#                     LinIf_Report_Dem_Header_Error(Frame_p,(Dem_EventStatusType)DEM_EVENT_STATUS_PREPASSED);
#                     LinIf_Report_Dem_No_Response_Error(Frame_p,(Dem_EventStatusType)DEM_EVENT_STATUS_PREPASSED);
#     #endif
#                 } break;
#             case LIN_TX_HEADER_ERROR: /* Erroneous header transmission */ /*[LINIF458]*/
#     #if ( LINIF_DEM_REPORT_ENABLE == STD_ON )
#                 LinIf_Report_Dem_Header_Error(Frame_p,(Dem_EventStatusType)DEM_EVENT_STATUS_PREFAILED);
#     #endif
#                 break;
#             case LIN_NOT_OK: /* fall through */
#             case LIN_CH_SLEEP: /* Sleep mode operation */
#             case LIN_TX_ERROR: /* Erroneous response transmission */
#             case LIN_TX_OK: /* Successful Transmission */
#             default:
#                 /* Do nothing */
#                 break;
#         }/* PRQA S 2016*/ /* switch statement default clause is left intentionally empty */
#     }
# } /* End of LinIf_HandleSRFrameStatus( ) */
	.d2line		152
	.d2epilogue_begin
.Llo11:
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L434:
	.type		LinIf_HandleSRFrameStatus,@function
	.size		LinIf_HandleSRFrameStatus,.-LinIf_HandleSRFrameStatus
# Number of nodes = 20

# Allocations for LinIf_HandleSRFrameStatus
#	?a4		crntChannel_p
#	?a5		channelManager_p
# FUNC (void, LINIF_CODE) LinIf_GetSporadicSlotFrame(CONSTP2CONST (LinIfChannel, AUTOMATIC, LINIF_APPL_CONST) crntChannel_p,
	.align		2
	.section	.text_vle
        .d2line         441,25
#$$ld
.L450:

#$$bf	LinIf_GetSporadicSlotFrame,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r30,r31,cr0,lr
	.globl		LinIf_GetSporadicSlotFrame
	.d2_cfa_start __cie
LinIf_GetSporadicSlotFrame:
.Llo12:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
.Llo14:
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)		# SubFrames_p=r0
	.d2_cfa_offset    108,-1
	mr		r3,r3		# crntChannel_p=r3 crntChannel_p=r3
.Llo15:
	mr		r4,r4		# Frame_p=r4 Frame_p=r4
.Llo17:
	mr		r5,r5		# spIndex_p=r5 spIndex_p=r5
	.d2prologue_end
#         CONSTP2CONST(LinIfFrame, AUTOMATIC, LINIF_APPL_CONST) Frame_p,
#         CONSTP2VAR (uint16, AUTOMATIC, LINIF_APPL_DATA) spIndex_p)
# {
#     /* Get the current schedule table entry */
#     CONSTP2CONST (LinIfSubstitutionFrames, AUTOMATIC, LINIF_APPL_CONST) SubFrames_p = Frame_p->LinIfSubsFrames_p;
	.d2line		446
	lwz		r0,24(r4)		# SubFrames_p=r0 Frame_p=r4
	.d2line		448
	mr.		r0,r0		# SubFrames_p=?a8 SubFrames_p=?a13
# 
#     if ( NULL_PTR != SubFrames_p )
	bc		1,2,.L353	# eq
	.section	.text_vle
.L470:
#     {
#         /* Pointer to hold the current channel relocatable config */
#         CONSTP2CONST(LinIfChannelReloc,AUTOMATIC, LINIF_CONST)LinIf_Channel_Reloc_p =
#                 &(LinIf_ConfigChannel_Reloc_p[crntChannel_p->LinIfChannelIndex]);
# 
#         /* Priority of the frame */
#         VAR (uint8, AUTOMATIC) framePriority = 0xFFU;
	.d2line		455
	diab.li		r7,255		# framePriority=r7
	.d2line		451
.Llo16:
	lbz		r6,12(r3)		# crntChannel_p=r3
	lis		r3,LinIf_ConfigChannel_Reloc_p@ha		# crntChannel_p=r3
	lwz		r3,LinIf_ConfigChannel_Reloc_p@l(r3)		# crntChannel_p=r3 crntChannel_p=r3
	rlwinm		r31,r6,5,0,26
	se_slwi		r6,3
	subf		r6,r6,r31
	se_add		r3,r6		# crntChannel_p=r3 crntChannel_p=r3
	mr		r3,r3		# LinIf_Channel_Reloc_p=r3 LinIf_Channel_Reloc_p=r3
# 
#         /* Index to check which sporadic frame is ready */
#         VAR (uint8, AUTOMATIC) sporadicIndex;
# 
#         /* Get the high priority frame that is pending for transmission */
#         sporadicIndex = Frame_p->LinIfNoOfSubEntry;
	.d2line		461
	lbz		r4,28(r4)		# Frame_p=r4 Frame_p=r4
	mr		r4,r4		# sporadicIndex=r4 sporadicIndex=r4
.L355:
# 
#         while(sporadicIndex > 0U)
	.d2line		463
.Llo18:
	rlwinm		r6,r4,0,24,31		# sporadicIndex=r4
	se_cmpi		r6,0
	bc		1,2,.L353	# eq
	.section	.text_vle
.L482:
#         {
#             /* Index of the substitution frames */
#             VAR (uint8, AUTOMATIC) subFrameIndex;
# 
#             sporadicIndex--;
	.d2line		468
.Llo19:
	diab.addi		r6,r4,255		# sporadicIndex=r4
	diab.addi		r4,r4,255		# sporadicIndex=r4 sporadicIndex=r4
# 
#             /* Get the index of substitution frames */
#             subFrameIndex = SubFrames_p[sporadicIndex].LinIfSubFrameIndex;
	.d2line		471
	rlwinm		r6,r4,1,23,30		# sporadicIndex=r4
	lbzux		r31,r6,r0		# subFrameIndex=r31
.Llo20:
	mr		r31,r31		# subFrameIndex=r31 subFrameIndex=r31
# 
#             /* Check whether any sporadic flag is set */
#             if (TRUE == LinIf_Channel_Reloc_p->SPPendingRequest_p[subFrameIndex])
	.d2line		474
	lwz		r6,16(r3)		# LinIf_Channel_Reloc_p=r3
	rlwinm		r30,r31,0,24,31		# subFrameIndex=r31
	lbzx		r6,r6,r30
	se_cmpi		r6,1
	bc		0,2,.L355	# ne
#             {
#                 /* Check whether the priority is high for the current frame */
#                 if (framePriority >= (SubFrames_p[sporadicIndex].LinIfSubFramePriority))
	.d2line		477
	rlwinm		r30,r7,0,24,31		# framePriority=r7
	rlwinm		r6,r4,1,23,30		# sporadicIndex=r4
	se_add		r6,r0		# SubFrames_p=r0
	lbz		r6,1(r6)
	se_cmp		r30,r6
	bc		1,0,.L355	# lt
#                 {
#                     /* Update the frame priority */
#                     framePriority = SubFrames_p[sporadicIndex].LinIfSubFramePriority;
	.d2line		480
.Llo21:
	rlwinm		r6,r4,1,23,30		# sporadicIndex=r4
	se_add		r6,r0		# SubFrames_p=r0
	lbz		r7,1(r6)		# framePriority=r7
	mr		r7,r7		# framePriority=r7 framePriority=r7
# 
#                     /* store the frame index of the actual highest priority frame */
#                     *spIndex_p = (uint16) subFrameIndex;
	.d2line		483
.Llo22:
	rlwinm		r31,r31,0,24,31		# subFrameIndex=r31 subFrameIndex=r31
	sth		r31,0(r5)		# spIndex_p=r5 subFrameIndex=r31
	.section	.text_vle
.L483:
.Llo23:
	b		.L355
	.section	.text_vle
.L471:
.L353:
#                 }
#             }
#         }
#     }
# } /* End of LinIf_GetSporadicSlotFrame( ) */
	.d2line		488
	.d2epilogue_begin
.Llo13:
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# SubFrames_p=r0
	mtspr		lr,r0		# SubFrames_p=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L451:
	.type		LinIf_GetSporadicSlotFrame,@function
	.size		LinIf_GetSporadicSlotFrame,.-LinIf_GetSporadicSlotFrame
# Number of nodes = 85

# Allocations for LinIf_GetSporadicSlotFrame
#	?a4		crntChannel_p
#	?a5		Frame_p
#	?a6		spIndex_p
#	?a7		$$83
#	?a8		SubFrames_p
#	?a9		LinIf_Channel_Reloc_p
#	?a10		framePriority
#	?a11		sporadicIndex
#	?a12		subFrameIndex
# static FUNC (void, LINIF_CODE) LinIf_HandleCommonFrameStatus(CONSTP2CONST (LinIfChannel, AUTOMATIC, LINIF_APPL_CONST) crntChannel_p)
	.align		1
	.section	.text_vle
        .d2line         161,32
#$$ld
.L491:

#$$bf	LinIf_HandleCommonFrameStatus,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
LinIf_HandleCommonFrameStatus:
.Llo24:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr
	stmw		r28,32(r1)		# offset r1+32  0x20
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,52(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# crntChannel_p=r31 crntChannel_p=r3
	.d2prologue_end
# {
#     /* Get the frame pointer */
#     P2CONST (LinIfFrame, AUTOMATIC, LINIF_APPL_CONST) Frame_p =
#         crntChannel_p->LinIf_channelManager_p->LinIf_BusStatus.LinIf_frameEntry_p->LinIfFrameRef;
# 
#     /* Flag to detect sporadic frame transmitted state */
#     VAR (boolean, AUTOMATIC) sporadicIndexInvalid = FALSE;
	.d2line		168
.Llo25:
	diab.li		r28,0		# sporadicIndexInvalid=r28
# 
#     /* Variable to get the index of sporadic frame */
#     VAR (uint16, AUTOMATIC) spIndex = LINIF_INVALID_FRAME_INDEX;
	.d2line		171
.Llo26:
	diab.li		r0,65535
	sth		r0,8(r1)
	.d2line		164
	lwz		r3,28(r31)		# crntChannel_p=r31
	lwz		r3,28(r3)
	lwz		r30,4(r3)		# Frame_p=r30
.Llo40:
	mr		r30,r30		# Frame_p=r30 Frame_p=r30
# 
#     /* Pointer to hold the current channel relocatable config */
#     CONSTP2CONST(LinIfChannelReloc,AUTOMATIC, LINIF_CONST) LinIf_Channel_Reloc_p =
	.d2line		174
	lbz		r0,12(r31)		# crntChannel_p=r31
	lis		r3,LinIf_ConfigChannel_Reloc_p@ha
	lwz		r29,LinIf_ConfigChannel_Reloc_p@l(r3)
	rlwinm		r3,r0,5,0,26
	se_slwi		r0,3
	subf		r0,r0,r3
	se_add		r0,r29
.Llo43:
	mr		r29,r0		# LinIf_Channel_Reloc_p=r29 LinIf_Channel_Reloc_p=r0
#             &(LinIf_ConfigChannel_Reloc_p[crntChannel_p->LinIfChannelIndex]);
# 
#     /* Check whether the current frame is sporadic */
#     if ( SPORADIC == Frame_p->LinIfFrameType )
	.d2line		178
	lwz		r0,4(r30)		# Frame_p=r30
.Llo44:
	se_cmpi		r0,6
	bc		0,2,.L298	# ne
#     {
#         /* Get the transmitted sporadic frame in the sporadic slot */
#         LinIf_GetSporadicSlotFrame(crntChannel_p, Frame_p, &spIndex);
	.d2line		181
.Llo45:
	diab.addi		r5,r1,8
	mr		r3,r31		# crntChannel_p=r3 crntChannel_p=r31
	mr		r4,r30		# Frame_p=r4 Frame_p=r30
	bl		LinIf_GetSporadicSlotFrame
# 
#         if (LINIF_INVALID_FRAME_INDEX != spIndex)
	.d2line		183
	lhz		r0,8(r1)
	cmpli		0,0,r0,65535
	bc		1,2,.L299	# eq
#         {
#             /* Update the frame with the sporadic frame */
#             Frame_p = &(LinIf_Channel_Reloc_p->LinIfFrame_p[spIndex]);
	.d2line		186
	lwz		r30,4(r29)		# Frame_p=r30 LinIf_Channel_Reloc_p=r29
	lhz		r0,8(r1)
	rlwinm		r0,r0,5,11,26
	se_add		r0,r30		# Frame_p=r30
	mr		r30,r0		# Frame_p=r30 Frame_p=r0
	b		.L298
.L299:
#         }
#         else
#         {
#             /* The confirmation is not required as the frame is not transmitted */
#             sporadicIndexInvalid = TRUE;
	.d2line		191
	diab.li		r28,1		# sporadicIndexInvalid=r28
# 
#             /* Reset the flag for sporadic transmit */
#             LinIf_clearSporadicPending(LinIf_Channel_Reloc_p, 0);
	.d2line		194
	mr		r3,r29		# LinIf_Channel_Reloc_p=r3 LinIf_Channel_Reloc_p=r29
	diab.li		r4,0		# Frame_p=r4
	bl		LinIf_clearSporadicPending
.L298:
#         }
#     }
# 
#     if ( FALSE == sporadicIndexInvalid )
	.d2line		198
	rlwinm		r28,r28,0,24,31		# sporadicIndexInvalid=r28 sporadicIndexInvalid=r28
	se_cmpi		r28,0		# sporadicIndexInvalid=r28
	bc		0,2,.L297	# ne
#     {
#         switch (crntChannel_p->LinIf_channelManager_p->LinIf_BusStatus.Lin_DriverGetStatusVal)
	.d2line		200
.Llo42:
	lwz		r3,28(r31)		# crntChannel_p=r3 crntChannel_p=r31
	lbz		r6,20(r3)		# crntChannel_p=r3
	se_cmpli	r6,10
	se_slwi		r6,2
	e_add2is		r6,.L503@ha
	bc		1,1,.L297	# gt
	lwz		r7,.L503@l(r6)
	mtspr		ctr,r7
	bcctr		20,0
.L503:
#$$sl
	.long		.L317
	.long		.L302
	.long		.L308
	.long		.L316
	.long		.L310
	.long		.L313
	.long		.L308
	.long		.L312
	.long		.L308
	.long		.L297
	.long		.L297
#$$se
.L302:
#         {
#             case LIN_TX_OK: /* Successful Transmission */
# 
#             /* Check that the Tx pdu is not a fixed Pdu (not node configuration request)*/
#             if ( (SPORADIC == Frame_p->LinIfFrameType) ||
	.d2line		205
	lwz		r0,4(r30)		# Frame_p=r30
	se_cmpi		r0,6
	bc		1,2,.L320	# eq
.Llo27:
	lwz		r0,4(r30)		# Frame_p=r30
	se_cmpi		r0,9
	bc		0,2,.L297	# ne
.L320:
#                  (UNCONDITIONAL == Frame_p->LinIfFrameType) )
#             {
#                 if(Frame_p->LinIfPduDirection == LIN_MASTER_RESPONSE )
	.d2line		208
	lbz		r0,12(r30)		# Frame_p=r30
	se_cmpi		r0,0
	bc		0,2,.L304	# ne
#                 {
#                     /* Give confirmation to upper layer PduR (successful frame transmission) */
#                     LinIfFrameFunctions_p[Frame_p->LinIfFunctionIndex].User_LinIfTxConfirmation_p(Frame_p->LinIfTxConfirmationId); /*[LINIF128]*/
	.d2line		211
	lhz		r0,30(r30)		# Frame_p=r30
	lis		r3,LinIfFrameFunctions_p@ha		# crntChannel_p=r3
.Llo28:
	lwz		r4,LinIfFrameFunctions_p@l(r3)		# Frame_p=r4 crntChannel_p=r3
	rlwinm		r3,r0,4,0,27		# crntChannel_p=r3
	se_slwi		r0,2
	subf		r0,r0,r3		# crntChannel_p=r3
	se_add		r4,r0		# Frame_p=r4 Frame_p=r4
	lwz		r0,4(r4)		# Frame_p=r4
	mtspr		ctr,r0
	lhz		r3,10(r30)		# crntChannel_p=r3 Frame_p=r30
.Llo29:
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x8 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
.L304:
#                 }
#                 /* Reset the flag for sporadic transmit */
#                 LinIf_clearSporadicPending(LinIf_Channel_Reloc_p, spIndex); /*[LINIF463]*/
	.d2line		214
	lhz		r4,8(r1)		# Frame_p=r4
	mr		r3,r29		# LinIf_Channel_Reloc_p=r3 LinIf_Channel_Reloc_p=r29
	bl		LinIf_clearSporadicPending
	b		.L297
.L308:
#             }
# 
# 
# #if ( LINIF_DEM_REPORT_ENABLE == STD_ON)
#             LinIf_Report_Dem_Transmission_Error(Frame_p,(Dem_EventStatusType)DEM_EVENT_STATUS_PREPASSED);
#             LinIf_Report_Dem_Header_Error(Frame_p,(Dem_EventStatusType)DEM_EVENT_STATUS_PREPASSED);
# #endif
# 
#                 break;
#             case LIN_TX_BUSY: /* On-going Transmission (Header/Response) */
#             case LIN_RX_BUSY: /* On-going reception (Header/Response) */
#             case LIN_RX_NO_RESPONSE: /* No Response byte has been received */
#                 if (LINIF_MAIN_AT_ENTRY == crntChannel_p->LinIf_channelManager_p->LinIf_EntryDelayCounter)
	.d2line		227
.Llo30:
	lwz		r3,28(r31)		# crntChannel_p=r3 crntChannel_p=r31
	lhz		r0,6(r3)		# crntChannel_p=r3
	se_cmpi		r0,0
	bc		0,2,.L297	# ne
#                 {
# #if ( LINIF_DEM_REPORT_ENABLE == STD_ON )
#                     LinIf_Report_Dem_No_Response_Error(Frame_p,(Dem_EventStatusType)DEM_EVENT_STATUS_PREFAILED);
# #endif
#                     /* Report the error to DET module */
# #if ( LINIF_DEV_ERROR_DETECT == STD_ON )
#                     if ( (LIN_TX_BUSY == crntChannel_p->LinIf_channelManager_p->LinIf_BusStatus.Lin_DriverGetStatusVal) || /* [LINIF465] */
#                          (UNCONDITIONAL == Frame_p->LinIfFrameType) )  /* [LINIF254] [LINIF466] */
#                     {
#                         (void)Det_ReportError (LINIF_MODULE_ID,LINIF_INSTANCE_ID, LINIF_MAIN_FUN_ID, LINIF_E_RESPONSE);
#                     }
# #endif
#                     /* Reset the flag for sporadic transmit */
#                     LinIf_clearSporadicPending(LinIf_Channel_Reloc_p, spIndex);
	.d2line		241
.Llo31:
	lhz		r4,8(r1)		# Frame_p=r4
	mr		r3,r29		# LinIf_Channel_Reloc_p=r3 LinIf_Channel_Reloc_p=r29
	bl		LinIf_clearSporadicPending
	b		.L297
.L310:
#                 }
#                 break;
#             case LIN_TX_ERROR: /* Erroneous response transmission */
#             {
# #if ( LINIF_DEM_REPORT_ENABLE == STD_ON )
#                 LinIf_Report_Dem_Transmission_Error(Frame_p,(Dem_EventStatusType)DEM_EVENT_STATUS_PREFAILED);
# #endif
#                 /* Check whether Sleep request is pending */
#                 if (crntChannel_p->LinIf_channelManager_p->LinIf_ChannelSubState != LINIF_CHANNEL_SLEEP_PENDING)
	.d2line		250
.Llo32:
	lwz		r3,28(r31)		# crntChannel_p=r3 crntChannel_p=r31
	lwz		r0,40(r3)		# crntChannel_p=r3
	se_cmpi		r0,2
	bc		1,2,.L297	# eq
#                 {
#                     /* Reset the flag for sporadic transmit */
#                     LinIf_clearSporadicPending(LinIf_Channel_Reloc_p, spIndex);
	.d2line		253
.Llo33:
	lhz		r4,8(r1)		# Frame_p=r4
	mr		r3,r29		# LinIf_Channel_Reloc_p=r3 LinIf_Channel_Reloc_p=r29
	bl		LinIf_clearSporadicPending
	b		.L297
.L312:
#                 }
#             } break;
#             case LIN_RX_ERROR: /* Erroneous response reception */ /*[LINIF254]*/
#             {
# #if ( LINIF_DEM_REPORT_ENABLE == STD_ON )
#                 LinIf_Report_Dem_Transmission_Error(Frame_p,(Dem_EventStatusType)DEM_EVENT_STATUS_PREFAILED);
# #endif
#                 /* Report the error to DET module */
# #if ( LINIF_DEV_ERROR_DETECT == STD_ON )
#                 if (UNCONDITIONAL == Frame_p->LinIfFrameType)
#                 {
#                     (void)Det_ReportError (LINIF_MODULE_ID,LINIF_INSTANCE_ID, LINIF_MAIN_FUN_ID, LINIF_E_RESPONSE);
#                 }
# #endif
#                 /* Reset the flag for sporadic transmit */
#                 LinIf_clearSporadicPending(LinIf_Channel_Reloc_p, spIndex);
	.d2line		269
.Llo34:
	lhz		r4,8(r1)		# Frame_p=r4
	mr		r3,r29		# LinIf_Channel_Reloc_p=r3 LinIf_Channel_Reloc_p=r29
	bl		LinIf_clearSporadicPending
	b		.L297
.L313:
	.section	.text_vle
.L504:
#             } break;
#             case LIN_RX_OK: /* Reception of correct response */
#             {
#                 /* The PduInfoPtr passed to PduR */
#                 VAR (PduInfoType, AUTOMATIC) info;
# 
#             #if ( LINIF_DEM_REPORT_ENABLE == STD_ON )
#                 LinIf_Report_Dem_Transmission_Error(Frame_p,(Dem_EventStatusType)DEM_EVENT_STATUS_PREPASSED);
#                 LinIf_Report_Dem_Header_Error(Frame_p,(Dem_EventStatusType)DEM_EVENT_STATUS_PREPASSED);
#                 LinIf_Report_Dem_No_Response_Error(Frame_p,(Dem_EventStatusType)DEM_EVENT_STATUS_PREPASSED);
#             #endif
#                 info.SduLength = (PduLengthType)Frame_p->LinIfLength;
	.d2line		281
	lbz		r0,8(r30)		# Frame_p=r30
	sth		r0,16(r1)
#                 info.SduDataPtr = crntChannel_p->LinIf_channelManager_p->LinIf_BusStatus.LinIf_RxData;
	.d2line		282
	lwz		r3,28(r31)		# crntChannel_p=r3 crntChannel_p=r31
	se_addi		r3,32		# crntChannel_p=r3 crntChannel_p=r3
	stw		r3,12(r1)		# crntChannel_p=r3
# 
#                 if(Frame_p->LinIfPduDirection == LIN_SLAVE_RESPONSE)
	.d2line		284
	lbz		r0,12(r30)		# Frame_p=r30
	se_cmpi		r0,1
	bc		0,2,.L315	# ne
#                 {
#                     /* Give confirmation to upper layer PduR (successful frame reception) */
#                     LinIfFrameFunctions_p[Frame_p->LinIfFunctionIndex].User_LinIfRxIndication_p(Frame_p->LinIfRxTxTargetPduRef,&info);/*[LINIF033]*/
	.d2line		287
.Llo35:
	lhz		r0,30(r30)		# Frame_p=r30
	lis		r3,LinIfFrameFunctions_p@ha		# crntChannel_p=r3
.Llo36:
	lwz		r3,LinIfFrameFunctions_p@l(r3)		# crntChannel_p=r3 crntChannel_p=r3
	rlwinm		r4,r0,4,0,27		# Frame_p=r4
	se_slwi		r0,2
	subf		r0,r0,r4		# Frame_p=r4
	lwzx		r0,r3,r0		# crntChannel_p=r3
	mtspr		ctr,r0
	lhz		r3,22(r30)		# crntChannel_p=r3 Frame_p=r30
.Llo37:
	diab.addi		r4,r1,12		# Frame_p=r4
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x18 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
.L315:
#                 }
#                 else /*SLAVE-TO-SLAVE communication*/
#                 {
#                     /*Do nothing*/ /*[LINIF417]*/ /*[LINIF418]*/
#                 }
# 
#                 /* Reset the flag for sporadic transmit */
#                 LinIf_clearSporadicPending(LinIf_Channel_Reloc_p, spIndex);
	.d2line		295
	lhz		r4,8(r1)		# Frame_p=r4
	mr		r3,r29		# LinIf_Channel_Reloc_p=r3 LinIf_Channel_Reloc_p=r29
	bl		LinIf_clearSporadicPending
	.section	.text_vle
.L505:
.Llo41:
	b		.L297
.L316:
#             } break;
#             case LIN_TX_HEADER_ERROR: /* Erroneous header transmission */ /*[LINIF458]*/
# #if ( LINIF_DEM_REPORT_ENABLE == STD_ON )
#                 LinIf_Report_Dem_Header_Error(Frame_p,(Dem_EventStatusType)DEM_EVENT_STATUS_PREFAILED);
# #endif
#                 /* Reset the flag for sporadic transmit */
#                 LinIf_clearSporadicPending(LinIf_Channel_Reloc_p, spIndex);
	.d2line		302
.Llo38:
	lhz		r4,8(r1)		# Frame_p=r4
	mr		r3,r29		# LinIf_Channel_Reloc_p=r3 LinIf_Channel_Reloc_p=r29
	bl		LinIf_clearSporadicPending
	b		.L297
.L317:
#                 break;
#             case LIN_NOT_OK: /* fall through */
#                 /* Reset the flag for sporadic transmit */
#                 LinIf_clearSporadicPending(LinIf_Channel_Reloc_p, spIndex);
	.d2line		306
	lhz		r4,8(r1)		# Frame_p=r4
	mr		r3,r29		# LinIf_Channel_Reloc_p=r3 LinIf_Channel_Reloc_p=r29
	bl		LinIf_clearSporadicPending
.L297:
#                 break;
#             case LIN_CH_SLEEP: /* Sleep mode operation */
#             default:
#                 /* Do nothing */
#                 break;
#         }/* PRQA S 2016*/ /* switch statement default clause is left intentionally empty */
#     }
# } /* End of LinIf_HandleCommonFrameStatus( ) */
	.d2line		314
	.d2epilogue_begin
.Llo39:
	lmw		r28,32(r1)		# offset r1+32  0x20
	.d2_cfa_restore_list	3,10
	lwz		r0,52(r1)
	mtspr		lr,r0
	diab.addi		r1,r1,48		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L492:
	.type		LinIf_HandleCommonFrameStatus,@function
	.size		LinIf_HandleCommonFrameStatus,.-LinIf_HandleCommonFrameStatus
# Number of nodes = 245

# Allocations for LinIf_HandleCommonFrameStatus
#	?a4		crntChannel_p
#	?a5		$$86
#	?a6		$$85
#	?a7		$$84
#	?a8		Frame_p
#	?a9		sporadicIndexInvalid
#	SP,8		spIndex
#	?a10		LinIf_Channel_Reloc_p
#	SP,12		info
# static FUNC (void, LINIF_CODE) LinIf_HandleETFrameStatus(CONSTP2CONST (LinIfChannel, AUTOMATIC, LINIF_APPL_CONST) crntChannel_p)
	.align		1
	.section	.text_vle
        .d2line         323,32
#$$ld
.L513:

#$$bf	LinIf_HandleETFrameStatus,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
LinIf_HandleETFrameStatus:
.Llo46:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# crntChannel_p=r3 crntChannel_p=r3
	.d2prologue_end
# {
#     /* Pointer to hold the current channel relocatable config */
#     CONSTP2CONST(LinIfChannelReloc,AUTOMATIC, LINIF_CONST)
#             LinIf_Channel_Reloc_p = &(LinIf_ConfigChannel_Reloc_p[crntChannel_p->LinIfChannelIndex]);
	.d2line		327
	lbz		r0,12(r3)		# crntChannel_p=r3
	lis		r4,LinIf_ConfigChannel_Reloc_p@ha
	lwz		r4,LinIf_ConfigChannel_Reloc_p@l(r4)
	rlwinm		r5,r0,5,0,26
	se_slwi		r0,3
	subf		r0,r0,r5
	se_add		r0,r4
.Llo50:
	mr		r4,r0		# LinIf_Channel_Reloc_p=r4 LinIf_Channel_Reloc_p=r0
# 
#     /* Get the current schedule entry */
#     CONSTP2CONST (LinIfEntry, AUTOMATIC, LINIF_APPL_CONST) Entry_p =
	.d2line		330
	lwz		r6,28(r3)		# crntChannel_p=r3
	lwz		r5,28(r6)
.Llo57:
	mr		r5,r5		# Entry_p=r5 Entry_p=r5
#         crntChannel_p->LinIf_channelManager_p->LinIf_BusStatus.LinIf_frameEntry_p;
# 
#     switch (crntChannel_p->LinIf_channelManager_p->LinIf_BusStatus.Lin_DriverGetStatusVal)
	.d2line		333
	lbz		r6,20(r6)
	se_cmpi		r6,5
	bc		1,2,.L341	# eq
.Llo51:
	se_cmpi		r6,6
.Llo52:
	bc		1,2,.L340	# eq
	se_cmpi		r6,7
	bc		1,2,.L340	# eq
	b		.L334
.L340:
#     {
#         case LIN_CH_SLEEP:  /* Set the channel sleep */
#             break;
#         case LIN_RX_NO_RESPONSE: /*[LINIF258]*/
#         {
# #if ( LINIF_DEM_REPORT_ENABLE == STD_ON )
#             LinIf_Report_Dem_No_Response_Error(Entry_p->LinIfFrameRef,(Dem_EventStatusType)DEM_EVENT_STATUS_PREFAILED);
# #endif
#         }
#         break;
#         case LIN_TX_ERROR: /* Erroneous response transmission */
#         {
# #if ( LINIF_DEM_REPORT_ENABLE == STD_ON )
#             LinIf_Report_Dem_Transmission_Error(Entry_p->LinIfFrameRef,(Dem_EventStatusType)DEM_EVENT_STATUS_PREFAILED);
# #endif
#         }
#         break;
#         case LIN_RX_BUSY: /*[LINIF259]*/
#         case LIN_RX_ERROR: /* Rx Error - Collision detected. */
#         {
# #if ( LINIF_DEM_REPORT_ENABLE == STD_ON )
#             LinIf_Report_Dem_Transmission_Error(Entry_p->LinIfFrameRef,(Dem_EventStatusType)DEM_EVENT_STATUS_PREFAILED);
# #endif
#             /* Set the flag for Even Triggered collision detected */
#             LinIf_Channel_Reloc_p->ETCollisionDetectd_p
	.d2line		358
.Llo53:
	lbz		r0,12(r3)		# crntChannel_p=r3
	diab.li		r6,1
.Llo54:
	lwz		r4,12(r4)		# LinIf_Channel_Reloc_p=r4 LinIf_Channel_Reloc_p=r4
	lwz		r7,28(r3)		# crntChannel_p=r3
	rlwinm		r31,r0,6,0,25
	se_slwi		r0,4
	subf		r0,r0,r31
	se_add		r7,r0
	lbz		r0,12(r7)
	stbx		r6,r4,r0		# LinIf_Channel_Reloc_p=r4
#                 [crntChannel_p->LinIf_channelManager_p[crntChannel_p->LinIfChannelIndex].LinIf_ScheduleTableIndex] = TRUE;
# 
#             /* Get the collision resolving schedule index */
#             crntChannel_p->LinIf_channelManager_p->LinIf_ScheduleTableIndex =
	.d2line		362
	lbz		r0,2(r5)		# Entry_p=r5
	lwz		r3,28(r3)		# crntChannel_p=r3 crntChannel_p=r3
	stb		r0,12(r3)		# crntChannel_p=r3
	b		.L334
.L341:
	.section	.text_vle
.L526:
#                 Entry_p->LinIfCollisionResolvingRef; /*[LINIF588] [LINIF176] [LINIF519] */
# #if ( LINIF_ENABLE_SCHEDULE_TABLE_MANAGER == STD_ON )
# #if ( LINIF_TP_SUPPORTED == STD_ON )
#             crntChannel_p->LinIf_channelManager_p->LinIf_SchTableLastRequested = Entry_p->LinIfCollisionResolvingRef;
# #endif
# #endif
#         }
#         break;
#         case LIN_RX_OK:
#         {
#             /* find the corresponding Substitutional frame*/
#             VAR (IndexTypeFast, AUTOMATIC) Index = (IndexTypeFast) Entry_p->LinIfFrameRef->LinIfNoOfSubEntry;
	.d2line		374
	lwz		r6,4(r5)		# Entry_p=r5
	lbz		r6,28(r6)
.Llo58:
	mr		r6,r6		# Index=r6 Index=r6
# 
#             /* The PduInfoPtr passed to PduR */
#             VAR (PduInfoType, AUTOMATIC) info;
# 
#              /*Set the data of the upper layer  */
#             info.SduDataPtr = crntChannel_p->LinIf_channelManager_p->LinIf_BusStatus.LinIf_RxData;
	.d2line		380
	lwz		r7,28(r3)		# crntChannel_p=r3
	se_addi		r7,32
	stw		r7,8(r1)
.L342:
# 
#             while(Index > 0)
	.d2line		382
.Llo59:
	se_cmpi		r6,0		# Index=r6
	bc		1,2,.L334	# eq
	.section	.text_vle
.L536:
#             {
#                 /* Pointer to hold the substitutional frame */
#                 P2CONST (LinIfFrame, AUTOMATIC, LINIF_APPL_CONST) SubsFrame_p;
# 
#                 Index--;
	.d2line		387
.Llo60:
	diab.addi		r0,r6,-1		# Index=r6
	diab.addi		r6,r6,-1		# Index=r6 Index=r6
# 
#                 /* Store the current substitutional frame */
#                 SubsFrame_p = &(LinIf_Channel_Reloc_p->LinIfFrame_p[Entry_p->LinIfFrameRef->LinIfSubsFrames_p[Index].LinIfSubFrameIndex]);
	.d2line		390
	lwz		r31,4(r4)		# SubsFrame_p=r31 LinIf_Channel_Reloc_p=r4
.Llo61:
	lwz		r7,4(r5)		# Entry_p=r5
	lwz		r7,24(r7)
	rlwinm		r0,r6,1,0,30		# Index=r6
	lbzx		r0,r7,r0
	rlwinm		r0,r0,5,19,26
	se_add		r0,r31		# SubsFrame_p=r31
	mr		r31,r0		# SubsFrame_p=r31 SubsFrame_p=r0
# 
#                 /* check if the current substitutional frame Pid equals the received Pid */
#                 /* PRQA S 492 2 */ /* MISRA 17.4 This function is heavily using pointer indexing. The underlying functionality requires this and the parameter */
#                 if (crntChannel_p->LinIf_channelManager_p->LinIf_BusStatus.LinIf_RxData[LINIF_ET_PID_POSITION]
	.d2line		394
	lwz		r7,28(r3)		# crntChannel_p=r3
	lbz		r0,32(r7)
	lbz		r7,9(r31)		# SubsFrame_p=r31
	se_cmp		r0,r7
	bc		0,2,.L342	# ne
	.section	.text_vle
.L542:
#                      == (Lin_FramePidType)SubsFrame_p->LinIfPid )
#                 {
#                     /* If the received Pdu is one of the event triggered substitutional frames*/
#                     VAR(uint16,AUTOMATIC) LinIfFrameFunctionIndex = SubsFrame_p->LinIfFunctionIndex;
	.d2line		398
.Llo47:
	lhz		r0,30(r31)		# LinIfFrameFunctionIndex=r0 SubsFrame_p=r31
.Llo63:
	mr		r0,r0		# LinIfFrameFunctionIndex=r0 LinIfFrameFunctionIndex=r0
# 
#                     /* Get the substitutional frame length */
#                     info.SduLength = (PduLengthType) SubsFrame_p->LinIfLength;
	.d2line		401
	lbz		r3,8(r31)		# crntChannel_p=r3 SubsFrame_p=r31
.Llo48:
	sth		r3,12(r1)		# crntChannel_p=r3
# 
#                     /* Confirmation to upper layer PduR (the successful frame reception) */
#                     LinIfFrameFunctions_p[LinIfFrameFunctionIndex].User_LinIfRxIndication_p (SubsFrame_p->LinIfRxTxTargetPduRef, &info);
	.d2line		404
	rlwinm		r0,r0,0,16,31		# LinIfFrameFunctionIndex=r0 LinIfFrameFunctionIndex=r0
	lis		r3,LinIfFrameFunctions_p@ha		# crntChannel_p=r3
	lwz		r3,LinIfFrameFunctions_p@l(r3)		# crntChannel_p=r3 crntChannel_p=r3
	rlwinm		r4,r0,4,0,27		# LinIf_Channel_Reloc_p=r4 LinIfFrameFunctionIndex=r0
.Llo55:
	se_slwi		r0,2		# LinIfFrameFunctionIndex=r0 LinIfFrameFunctionIndex=r0
	subf		r0,r0,r4		# LinIfFrameFunctionIndex=r0 LinIfFrameFunctionIndex=r0 LinIf_Channel_Reloc_p=r4
	lwzx		r0,r3,r0		# LinIfFrameFunctionIndex=r0 crntChannel_p=r3
.Llo64:
	mtspr		ctr,r0		# LinIfFrameFunctionIndex=ctr
	lhz		r3,22(r31)		# crntChannel_p=r3 SubsFrame_p=r31
.Llo49:
	diab.addi		r4,r1,8		# LinIf_Channel_Reloc_p=r4
.Llo56:
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x18 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
	.section	.text_vle
.L543:
	.section	.text_vle
.L537:
	.section	.text_vle
.L527:
.L334:
#                     break;
#                 }
#             }
# #if ( LINIF_DEM_REPORT_ENABLE == STD_ON )
#             LinIf_Report_Dem_Transmission_Error(Entry_p->LinIfFrameRef,(Dem_EventStatusType)DEM_EVENT_STATUS_PREPASSED);
#             LinIf_Report_Dem_Header_Error(Entry_p->LinIfFrameRef,(Dem_EventStatusType)DEM_EVENT_STATUS_PREPASSED);
#             LinIf_Report_Dem_No_Response_Error(Entry_p->LinIfFrameRef,(Dem_EventStatusType)DEM_EVENT_STATUS_PREPASSED);
# #endif
#         }
#         break;
#         case LIN_TX_HEADER_ERROR: /*[LINIF458]*/
#         {
# #if ( LINIF_DEM_REPORT_ENABLE == STD_ON )
#             LinIf_Report_Dem_Header_Error(Entry_p->LinIfFrameRef,(Dem_EventStatusType)DEM_EVENT_STATUS_PREFAILED);
# #endif
#         }
#         break;
#         case LIN_NOT_OK:
#             break;
#         default:
#             /*Do nothing */
#             break;
#     }/* PRQA S 2016*/ /* switch statement default clause is left intentionally empty */
# } /* End of LinIf_HandleETFrameStatus( ) */
	.d2line		428
	.d2epilogue_begin
.Llo62:
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# LinIfFrameFunctionIndex=r0
	mtspr		lr,r0		# LinIfFrameFunctionIndex=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L514:
	.type		LinIf_HandleETFrameStatus,@function
	.size		LinIf_HandleETFrameStatus,.-LinIf_HandleETFrameStatus
# Number of nodes = 164

# Allocations for LinIf_HandleETFrameStatus
#	?a4		crntChannel_p
#	?a5		$$89
#	?a6		$$88
#	?a7		$$87
#	?a8		LinIf_Channel_Reloc_p
#	?a9		Entry_p
#	?a10		Index
#	SP,8		info
#	?a11		SubsFrame_p
#	?a12		LinIfFrameFunctionIndex
# FUNC (void, LINIF_CODE) LinIf_FrameStatusManager(
	.align		2
	.section	.text_vle
        .d2line         496,25
#$$ld
.L552:

#$$bf	LinIf_FrameStatusManager,interprocedural,rasave,nostackparams
	.globl		LinIf_FrameStatusManager
	.d2_cfa_start __cie
LinIf_FrameStatusManager:
.Llo65:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# crntChannel_p=r31 crntChannel_p=r3
	.d2prologue_end
#         CONSTP2CONST (LinIfChannel, AUTOMATIC, LINIF_APPL_CONST) crntChannel_p)
# {
#     CONSTP2VAR (LinIfChannelManager, AUTOMATIC, LINIF_APPL_DATA) channelManager_p = crntChannel_p->LinIf_channelManager_p;
	.d2line		499
	lwz		r30,28(r31)		# channelManager_p=r30 crntChannel_p=r31
	mr		r30,r30		# channelManager_p=r30 channelManager_p=r30
# 
#     if (channelManager_p->LinIf_ChannelSubState != LINIF_CHANNEL_SLEEP_PENDING)
	.d2line		501
	lwz		r0,40(r30)		# channelManager_p=r30
	se_cmpi		r0,2
	bc		1,2,.L361	# eq
#     {
#         if ((LINIF_FRAME_RX_ONGOING == channelManager_p->LinIf_BusStatus.LinIf_frameStatus)
	.d2line		503
.Llo66:
	lwz		r0,24(r30)		# channelManager_p=r30
.Llo67:
	se_cmpi		r0,1
	bc		1,2,.L390	# eq
	lwz		r0,24(r30)		# channelManager_p=r30
	se_cmpi		r0,2
	bc		0,2,.L361	# ne
.L390:
	.section	.text_vle
.L558:
#             || (LINIF_FRAME_TX_ONGOING == channelManager_p->LinIf_BusStatus.LinIf_frameStatus)
# #if ( LINIF_TP_SUPPORTED == STD_ON )
#             || (LINIF_FRAME_UPPER_LAYER_BUSY == channelManager_p->LinIf_BusStatus.LinIf_frameStatus)
#             || (LINIF_FRAME_DRIVER_TX_BUSY == channelManager_p->LinIf_BusStatus.LinIf_frameStatus)
# #endif
#             )
#         {
#             /* Get the current schedule entry */
#             CONSTP2CONST (LinIfEntry, AUTOMATIC, LINIF_APPL_CONST) Entry_p = channelManager_p->LinIf_BusStatus.LinIf_frameEntry_p;
	.d2line		512
	lwz		r0,28(r30)		# channelManager_p=r30
	.d2line		515
	mr.		r3,r0		# Entry_p=?a6 Entry_p=?a7
# 
#             /* Check whether the Entry is not Null */
#             if (NULL_PTR != Entry_p)
.Llo73:
	bc		1,2,.L364	# eq
#             {
#                 /* Process the status of the frame according to the frame type */
#                 switch (Entry_p->LinIfFrameRef->LinIfFrameType)
	.d2line		518
	lwz		r3,4(r3)		# Entry_p=r3 Entry_p=r3
	lwz		r6,4(r3)		# Entry_p=r3
	se_cmpli	r6,9
	se_slwi		r6,2
	e_add2is		r6,.L564@ha
	bc		1,1,.L364	# gt
.Llo74:
	lwz		r7,.L564@l(r6)
	mtspr		ctr,r7
	bcctr		20,0
.L564:
#$$sl
	.long		.L364
	.long		.L373
	.long		.L373
	.long		.L373
	.long		.L374
	.long		.L373
	.long		.L373
	.long		.L365
	.long		.L373
	.long		.L373
#$$se
.L365:
#                 {
#     #if ( LINIF_TP_SUPPORTED == STD_ON )
#                    case MRF:
#                         /* Handle Master Request Frame status from the Lin Driver */
#                         LinTp_HandleMRFrameStatus (crntChannel_p);
#                         break;
#     #endif /* #if LINIF_TP_SUPPORTED */
#                    case SRF: /* necessary for mandatory diagnostic */
#                         LinIf_HandleSRFrameStatus (crntChannel_p);
	.d2line		527
	mr		r3,r31		# crntChannel_p=r3 crntChannel_p=r31
	bl		LinIf_HandleSRFrameStatus
	b		.L364
.L373:
#                         break;
#     #if ( LINIF_OPTIONAL_REQUEST_SUPPORTED == STD_ON )
#                    case ASSIGN_NAD:
#                    case CONDITIONAL: /* Conditional change NAD */
#     #endif /* #if LINIF_OPTIONAL_REQUEST_SUPPORTED */
#                    case ASSIGN: /* Frame type is Fixed Assign */
#                    case ASSIGN_FRAME_ID_RANGE: /* Frame type is Assign frame ID Range */
#                    case FREE: /* Frame type is Fixed Free */
#                    case UNASSIGN: /* Frame type is Fixed Unassign */
#                    case UNCONDITIONAL: /* Frame type is Unconditional */
#                    case SAVE_CONFIGURATION:/* Frame type is Save configuration */
#                    case SPORADIC: /* Frame type is Sporadic */
#                        /* Handle Un-conditional/Sporadic/NC Frame status from the Lin Driver */
#                        LinIf_HandleCommonFrameStatus (crntChannel_p);
	.d2line		541
	mr		r3,r31		# crntChannel_p=r3 crntChannel_p=r31
	bl		LinIf_HandleCommonFrameStatus
	b		.L364
.L374:
#                        break;
#                    case EVENT_TRIGGERED:
#                        /* Handle EventTriggered Frame status from the Lin Driver */
#                        LinIf_HandleETFrameStatus (crntChannel_p);
	.d2line		545
	mr		r3,r31		# crntChannel_p=r3 crntChannel_p=r31
	bl		LinIf_HandleETFrameStatus
.L364:
#                        break;
#                     default:
#                         /*Do nothing */
#                         break;
#                 }/* PRQA S 2016*/ /* switch statement default clause is left intentionally empty */
#             }
# 
#             /* Channel level Error and sleep handling */
#             switch(channelManager_p->LinIf_BusStatus.Lin_DriverGetStatusVal)
	.d2line		554
.Llo75:
	lbz		r6,20(r30)		# channelManager_p=r30
	se_cmpli	r6,10
	se_slwi		r6,2
	e_add2is		r6,.L565@ha
	bc		1,1,.L389	# gt
.Llo76:
	lwz		r7,.L565@l(r6)
	mtspr		ctr,r7
	bcctr		20,0
.L565:
#$$sl
	.long		.L389
	.long		.L381
	.long		.L361
	.long		.L389
	.long		.L389
	.long		.L381
	.long		.L361
	.long		.L389
	.long		.L382
	.long		.L361
	.long		.L384
#$$se
	b		.L361
.L381:
#             {
#                 case LIN_TX_BUSY        : /* fall through */
#                 case LIN_RX_BUSY        : /* fall through */
#                 case LIN_OPERATIONAL    : /* fall through */
#                     /* do nothing, there is no relevant update */
#                     break;
#                 case LIN_TX_OK          : /* fall through */
#                 case LIN_RX_OK          : /* fall through */
#                     /* Success */
# #if ( LINIF_TP_SUPPORTED == STD_ON )
#                     if (LINIF_FRAME_UPPER_LAYER_BUSY != channelManager_p->LinIf_BusStatus.LinIf_frameStatus)
# #endif
#                     {
#                         channelManager_p->LinIf_BusStatus.LinIf_frameStatus = LINIF_FRAME_FINISHED;
	.d2line		568
	diab.li		r0,3
	stw		r0,24(r30)		# channelManager_p=r30
	b		.L361
.L382:
#                     } break;
#                 case LIN_RX_NO_RESPONSE : /* fall through */
#                     if (LINIF_MAIN_AT_ENTRY == channelManager_p->LinIf_EntryDelayCounter)
	.d2line		571
	lhz		r0,6(r30)		# channelManager_p=r30
	se_cmpi		r0,0
	bc		0,2,.L361	# ne
#                     {
#                         channelManager_p->LinIf_BusStatus.LinIf_frameStatus = LINIF_FRAME_ERROR;
	.d2line		573
.Llo68:
	diab.li		r0,4
	stw		r0,24(r30)		# channelManager_p=r30
	b		.L361
.L384:
#                     } break;
#                 case LIN_CH_SLEEP       : /* sleep regardless the entry */
#                     LinIf_SetChannelSleep (crntChannel_p,TRUE);
	.d2line		576
.Llo69:
	mr		r3,r31		# crntChannel_p=r3 crntChannel_p=r31
	diab.li		r4,1
	bl		LinIf_SetChannelSleep
	b		.L361
.L389:
#                     break;
#                 case LIN_NOT_OK         : /* fall through */
#                 case LIN_TX_HEADER_ERROR: /* fall through */ /*[LINIF458]*/
#                 case LIN_TX_ERROR       : /* fall through */
#                 case LIN_RX_ERROR       : /* fall through */
#                 default:
#                     /* Failed transmission */
#                     channelManager_p->LinIf_BusStatus.LinIf_frameStatus = LINIF_FRAME_ERROR;
	.d2line		584
	diab.li		r0,4
	stw		r0,24(r30)		# channelManager_p=r30
	.section	.text_vle
.L559:
.L361:
#                     break;
#             }
#         }
#     }
# } /* End of LinIf_FrameStatusManager( ) */
	.d2line		589
	.d2epilogue_begin
.Llo70:
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo71:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo72:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L553:
	.type		LinIf_FrameStatusManager,@function
	.size		LinIf_FrameStatusManager,.-LinIf_FrameStatusManager
# Number of nodes = 97

# Allocations for LinIf_FrameStatusManager
#	?a4		crntChannel_p
#	?a5		channelManager_p
#	?a6		Entry_p
# FUNC(void,LINIF_CODE) LinIf_BusStateChecker (CONSTP2CONST (LinIfChannel, AUTOMATIC, LINIF_APPL_CONST) crntChannel_p)
	.align		2
	.section	.text_vle
        .d2line         597,23
#$$ld
.L568:

#$$bf	LinIf_BusStateChecker,interprocedural,rasave,nostackparams
	.globl		LinIf_BusStateChecker
	.d2_cfa_start __cie
LinIf_BusStateChecker:
.Llo77:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r4,r3		# crntChannel_p=r4 crntChannel_p=r3
	.d2prologue_end
# {
#     CONSTP2VAR (LinIfChannelManager, AUTOMATIC, LINIF_APPL_DATA) channelManager_p = crntChannel_p->LinIf_channelManager_p;
	.d2line		599
.Llo78:
	lwz		r31,28(r4)		# crntChannel_p=r4
.Llo79:
	mr		r31,r31		# channelManager_p=r31 channelManager_p=r31
# 
#     CONST (uint8, AUTOMATIC) channel = LinIf_ChannelIdentifier_p[crntChannel_p->LinIfChannelIndex].LinIfChannelRef;
	.d2line		601
.Llo86:
	lis		r3,LinIf_ChannelIdentifier_p@ha		# channel=r3
.Llo82:
	lwz		r0,LinIf_ChannelIdentifier_p@l(r3)		# channel=r3
	lbz		r3,12(r4)		# channel=r3 crntChannel_p=r4
	e_mulli		r3,r3,3		# channel=r3 channel=r3
	se_add		r3,r0		# channel=r3 channel=r3
	lbz		r3,2(r3)		# channel=r3 channel=r3
	mr		r3,r3		# channel=r3 channel=r3
# 
#     P2VAR (uint8, AUTOMATIC, LINIF_APPL_DATA) lin_SduPtr;
# 
#     channelManager_p->LinIf_BusStatus.Lin_DriverGetStatusVal = crntChannel_p->LinDrvCalls_p->Lin_GetStatus_p(channel , &lin_SduPtr); /*[LINIF129] [LINIF030]*/
	.d2line		605
	lwz		r4,24(r4)		# crntChannel_p=r4 crntChannel_p=r4
	lwz		r0,16(r4)		# crntChannel_p=r4
	mtspr		ctr,r0
	rlwinm		r3,r3,0,24,31		# channel=r3 channel=r3
.Llo83:
	diab.addi		r4,r1,8		# crntChannel_p=r4
.Llo80:
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x18 0x0 0x0 0x1
#$$rs 1 u
	bcctrl		20,0
.Llo84:
	stb		r3,20(r31)		# channelManager_p=r31 channel=r3
# 
#     if (LIN_RX_OK == channelManager_p->LinIf_BusStatus.Lin_DriverGetStatusVal)
	.d2line		607
	rlwinm		r3,r3,0,24,31		# channel=r3 channel=r3
	se_cmpi		r3,5		# channel=r3
	bc		0,2,.L401	# ne
	.section	.text_vle
.L579:
#     {
#         /* PRQA S 3333++ */ /* PRQA S 0489++ */ /* PRQA S 2003++ */ /* PRQA S 3440++ */ /* PRQA S 2016++ */ /* PRQA S 3309++ */ /* PRQA S 0597++ */ /* PRQA S 2931++ */ /* VSTAR copy */
#         VSTAR_COPY8( &channelManager_p->LinIf_BusStatus.LinIf_RxData[0], lin_SduPtr, 8U );
	.d2line		610
.Llo85:
	diab.addi		r0,r31,32		# channelManager_p=r31
	lwz		r3,8(r1)		# channel=r3
.Llo88:
	mr		r3,r3		# vstar_copy8_src=r3 vstar_copy8_src=r3
	se_addi		r31,31		# vstar_copy8_dst=r31 channelManager_p=r31
.Llo81:
	diab.addi		r3,r3,-1		# vstar_copy8_src=r3 vstar_copy8_src=r3
	lbzu		r0,1(r3)		# vstar_copy8_src=r3
	stbu		r0,1(r31)		# vstar_copy8_dst=r31
	lbzu		r0,1(r3)		# vstar_copy8_src=r3
	stbu		r0,1(r31)		# vstar_copy8_dst=r31
	lbzu		r0,1(r3)		# vstar_copy8_src=r3
	stbu		r0,1(r31)		# vstar_copy8_dst=r31
	lbzu		r0,1(r3)		# vstar_copy8_src=r3
	stbu		r0,1(r31)		# vstar_copy8_dst=r31
	lbzu		r0,1(r3)		# vstar_copy8_src=r3
	stbu		r0,1(r31)		# vstar_copy8_dst=r31
	lbzu		r0,1(r3)		# vstar_copy8_src=r3
	stbu		r0,1(r31)		# vstar_copy8_dst=r31
	lbzu		r0,1(r3)		# vstar_copy8_src=r3
	stbu		r0,1(r31)		# vstar_copy8_dst=r31
	lbz		r0,1(r3)		# vstar_copy8_src=r3
	stb		r0,1(r31)		# vstar_copy8_dst=r31
	.section	.text_vle
.L580:
.L401:
#         /* PRQA S 3333-- */ /* PRQA S 0489-- */ /* PRQA S 2003-- */ /* PRQA S 3440-- */ /* PRQA S 2016-- */ /* PRQA S 3309-- */ /* PRQA S 0597-- */ /* PRQA S 2931-- */ /* VSTAR copy */
#     }
# }
	.d2line		613
	.d2epilogue_begin
.Llo87:
	lwz		r31,28(r1)		# offset r1+28  0x1c
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
.L569:
	.type		LinIf_BusStateChecker,@function
	.size		LinIf_BusStateChecker,.-LinIf_BusStateChecker
# Number of nodes = 116

# Allocations for LinIf_BusStateChecker
#	?a4		crntChannel_p
#	?a5		channelManager_p
#	?a6		channel
#	SP,8		lin_SduPtr
#	?a7		vstar_copy8_dst
#	?a8		vstar_copy8_src

# Allocations for module
	.section	.text_vle
	.0byte		.L590
	.section	.text_vle
#$$ld
.L5:
.L729:	.d2filenum "C:\\WINDRI~1\\COMPIL~1\\DIAB-5~1.4\\include\\diab/lpragma.h"
.L727:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\AUTOSAR\\ar422\\Lin_GeneralTypes.h"
.L602:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinIf\\ssc\\make\\..\\inc\\LinIf_Types.h"
.L589:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinIf\\ssc\\make\\..\\inc\\LinIf_Private.h"
.L419:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinIf\\ssc\\make\\..\\src\\LinIf_StateHandler.c"
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
	.uleb128	7
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
	.uleb128	12
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
	.uleb128	13
	.uleb128	40
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	28
	.uleb128	13
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
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	19
	.uleb128	33
	.byte		0x0
	.uleb128	47
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	20
	.uleb128	21
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	39
	.uleb128	12
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	21
	.uleb128	5
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	22
	.uleb128	21
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	39
	.uleb128	12
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinIf\\ssc\\make\\..\\src\\LinIf_StateHandler.c"
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
.L420:
	.sleb128	2
	.4byte		.L416-.L2
	.byte		"LinIf_clearSporadicPending"
	.byte		0
	.4byte		.L419
	.uleb128	59
	.uleb128	32
	.byte		0x1
	.4byte		.L417
	.4byte		.L418
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L419
	.uleb128	59
	.uleb128	32
	.byte		"LinIf_Channel_Reloc_p"
	.byte		0
	.4byte		.L421
	.4byte		.L426
	.sleb128	3
	.4byte		.L419
	.uleb128	59
	.uleb128	32
	.byte		"spIndex"
	.byte		0
	.4byte		.L427
	.4byte		.L430
	.section	.debug_info,,n
	.sleb128	0
.L416:
	.section	.debug_info,,n
.L435:
	.sleb128	2
	.4byte		.L432-.L2
	.byte		"LinIf_HandleSRFrameStatus"
	.byte		0
	.4byte		.L419
	.uleb128	80
	.uleb128	32
	.byte		0x1
	.4byte		.L433
	.4byte		.L434
	.sleb128	3
	.4byte		.L419
	.uleb128	80
	.uleb128	32
	.byte		"crntChannel_p"
	.byte		0
	.4byte		.L436
	.4byte		.L441
	.section	.debug_info,,n
.L442:
	.sleb128	4
	.4byte		.L419
	.uleb128	82
	.uleb128	66
	.byte		"channelManager_p"
	.byte		0
	.4byte		.L443
	.4byte		.L447
	.section	.debug_info,,n
	.sleb128	0
.L432:
	.section	.debug_info,,n
.L452:
	.sleb128	5
	.4byte		.L449-.L2
	.byte		"LinIf_GetSporadicSlotFrame"
	.byte		0
	.4byte		.L419
	.uleb128	441
	.uleb128	25
	.byte		0x1
	.byte		0x1
	.4byte		.L450
	.4byte		.L451
	.sleb128	3
	.4byte		.L419
	.uleb128	441
	.uleb128	25
	.byte		"crntChannel_p"
	.byte		0
	.4byte		.L436
	.4byte		.L453
	.sleb128	3
	.4byte		.L419
	.uleb128	441
	.uleb128	25
	.byte		"Frame_p"
	.byte		0
	.4byte		.L454
	.4byte		.L459
	.sleb128	3
	.4byte		.L419
	.uleb128	441
	.uleb128	25
	.byte		"spIndex_p"
	.byte		0
	.4byte		.L460
	.4byte		.L462
.L463:
	.sleb128	4
	.4byte		.L419
	.uleb128	446
	.uleb128	73
	.byte		"SubFrames_p"
	.byte		0
	.4byte		.L464
	.4byte		.L469
	.section	.debug_info,,n
	.sleb128	6
	.4byte		.L473
	.4byte		.L470
	.4byte		.L471
.L474:
	.sleb128	4
	.4byte		.L419
	.uleb128	451
	.uleb128	63
	.byte		"LinIf_Channel_Reloc_p"
	.byte		0
	.4byte		.L421
	.4byte		.L475
.L476:
	.sleb128	4
	.4byte		.L419
	.uleb128	455
	.uleb128	32
	.byte		"framePriority"
	.byte		0
	.4byte		.L477
	.4byte		.L479
.L480:
	.sleb128	4
	.4byte		.L419
	.uleb128	458
	.uleb128	32
	.byte		"sporadicIndex"
	.byte		0
	.4byte		.L477
	.4byte		.L481
	.section	.debug_info,,n
	.sleb128	6
	.4byte		.L485
	.4byte		.L482
	.4byte		.L483
.L486:
	.sleb128	4
	.4byte		.L419
	.uleb128	466
	.uleb128	36
	.byte		"subFrameIndex"
	.byte		0
	.4byte		.L477
	.4byte		.L487
	.section	.debug_info,,n
	.sleb128	0
.L485:
	.section	.debug_info,,n
	.sleb128	0
.L473:
	.section	.debug_info,,n
	.sleb128	0
.L449:
	.section	.debug_info,,n
.L493:
	.sleb128	2
	.4byte		.L490-.L2
	.byte		"LinIf_HandleCommonFrameStatus"
	.byte		0
	.4byte		.L419
	.uleb128	161
	.uleb128	32
	.byte		0x1
	.4byte		.L491
	.4byte		.L492
	.sleb128	3
	.4byte		.L419
	.uleb128	161
	.uleb128	32
	.byte		"crntChannel_p"
	.byte		0
	.4byte		.L436
	.4byte		.L494
.L495:
	.sleb128	4
	.4byte		.L419
	.uleb128	164
	.uleb128	55
	.byte		"Frame_p"
	.byte		0
	.4byte		.L455
	.4byte		.L496
.L497:
	.sleb128	4
	.4byte		.L419
	.uleb128	168
	.uleb128	30
	.byte		"sporadicIndexInvalid"
	.byte		0
	.4byte		.L498
	.4byte		.L499
	.section	.debug_info,,n
.L500:
	.sleb128	7
	.4byte		.L419
	.uleb128	171
	.uleb128	29
	.byte		"spIndex"
	.byte		0
	.4byte		.L428
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
.L501:
	.sleb128	4
	.4byte		.L419
	.uleb128	174
	.uleb128	60
	.byte		"LinIf_Channel_Reloc_p"
	.byte		0
	.4byte		.L421
	.4byte		.L502
	.section	.debug_info,,n
	.sleb128	6
	.4byte		.L507
	.4byte		.L504
	.4byte		.L505
.L508:
	.sleb128	7
	.4byte		.L419
	.uleb128	274
	.uleb128	46
	.byte		"info"
	.byte		0
	.4byte		.L509
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	12
	.section	.debug_info,,n
	.sleb128	0
.L507:
	.section	.debug_info,,n
	.sleb128	0
.L490:
	.section	.debug_info,,n
.L515:
	.sleb128	2
	.4byte		.L512-.L2
	.byte		"LinIf_HandleETFrameStatus"
	.byte		0
	.4byte		.L419
	.uleb128	323
	.uleb128	32
	.byte		0x1
	.4byte		.L513
	.4byte		.L514
	.sleb128	3
	.4byte		.L419
	.uleb128	323
	.uleb128	32
	.byte		"crntChannel_p"
	.byte		0
	.4byte		.L436
	.4byte		.L516
.L517:
	.sleb128	4
	.4byte		.L419
	.uleb128	327
	.uleb128	13
	.byte		"LinIf_Channel_Reloc_p"
	.byte		0
	.4byte		.L421
	.4byte		.L518
.L519:
	.sleb128	4
	.4byte		.L419
	.uleb128	330
	.uleb128	60
	.byte		"Entry_p"
	.byte		0
	.4byte		.L520
	.4byte		.L525
	.section	.debug_info,,n
	.sleb128	6
	.4byte		.L529
	.4byte		.L526
	.4byte		.L527
.L530:
	.sleb128	4
	.4byte		.L419
	.uleb128	374
	.uleb128	44
	.byte		"Index"
	.byte		0
	.4byte		.L531
	.4byte		.L534
.L535:
	.sleb128	7
	.4byte		.L419
	.uleb128	377
	.uleb128	42
	.byte		"info"
	.byte		0
	.4byte		.L509
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
	.section	.debug_info,,n
	.sleb128	6
	.4byte		.L539
	.4byte		.L536
	.4byte		.L537
.L540:
	.sleb128	4
	.4byte		.L419
	.uleb128	385
	.uleb128	67
	.byte		"SubsFrame_p"
	.byte		0
	.4byte		.L455
	.4byte		.L541
	.section	.debug_info,,n
	.sleb128	6
	.4byte		.L545
	.4byte		.L542
	.4byte		.L543
.L546:
	.sleb128	4
	.4byte		.L419
	.uleb128	398
	.uleb128	43
	.byte		"LinIfFrameFunctionIndex"
	.byte		0
	.4byte		.L428
	.4byte		.L547
	.section	.debug_info,,n
	.sleb128	0
.L545:
	.section	.debug_info,,n
	.sleb128	0
.L539:
	.section	.debug_info,,n
	.sleb128	0
.L529:
	.section	.debug_info,,n
	.sleb128	0
.L512:
	.section	.debug_info,,n
.L554:
	.sleb128	5
	.4byte		.L551-.L2
	.byte		"LinIf_FrameStatusManager"
	.byte		0
	.4byte		.L419
	.uleb128	496
	.uleb128	25
	.byte		0x1
	.byte		0x1
	.4byte		.L552
	.4byte		.L553
	.sleb128	3
	.4byte		.L419
	.uleb128	496
	.uleb128	25
	.byte		"crntChannel_p"
	.byte		0
	.4byte		.L436
	.4byte		.L555
.L556:
	.sleb128	4
	.4byte		.L419
	.uleb128	499
	.uleb128	66
	.byte		"channelManager_p"
	.byte		0
	.4byte		.L443
	.4byte		.L557
	.section	.debug_info,,n
	.sleb128	6
	.4byte		.L561
	.4byte		.L558
	.4byte		.L559
.L562:
	.sleb128	4
	.4byte		.L419
	.uleb128	512
	.uleb128	68
	.byte		"Entry_p"
	.byte		0
	.4byte		.L520
	.4byte		.L563
	.section	.debug_info,,n
	.sleb128	0
.L561:
	.section	.debug_info,,n
	.sleb128	0
.L551:
	.section	.debug_info,,n
.L570:
	.sleb128	5
	.4byte		.L567-.L2
	.byte		"LinIf_BusStateChecker"
	.byte		0
	.4byte		.L419
	.uleb128	597
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L568
	.4byte		.L569
	.sleb128	3
	.4byte		.L419
	.uleb128	597
	.uleb128	23
	.byte		"crntChannel_p"
	.byte		0
	.4byte		.L436
	.4byte		.L571
.L572:
	.sleb128	4
	.4byte		.L419
	.uleb128	599
	.uleb128	66
	.byte		"channelManager_p"
	.byte		0
	.4byte		.L443
	.4byte		.L573
.L574:
	.sleb128	4
	.4byte		.L419
	.uleb128	601
	.uleb128	30
	.byte		"channel"
	.byte		0
	.4byte		.L575
	.4byte		.L576
.L577:
	.sleb128	7
	.4byte		.L419
	.uleb128	603
	.uleb128	47
	.byte		"lin_SduPtr"
	.byte		0
	.4byte		.L578
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
	.section	.debug_info,,n
	.sleb128	6
	.4byte		.L582
	.4byte		.L579
	.4byte		.L580
.L583:
	.sleb128	4
	.4byte		.L419
	.uleb128	610
	.uleb128	9
	.byte		"vstar_copy8_dst"
	.byte		0
	.4byte		.L578
	.4byte		.L584
.L585:
	.sleb128	4
	.4byte		.L419
	.uleb128	610
	.uleb128	9
	.byte		"vstar_copy8_src"
	.byte		0
	.4byte		.L586
	.4byte		.L587
	.section	.debug_info,,n
	.sleb128	0
.L582:
	.section	.debug_info,,n
	.sleb128	0
.L567:
	.section	.debug_info,,n
.L588:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L589
	.uleb128	228
	.uleb128	64
	.byte		"LinIf_ConfigChannel_Reloc_p"
	.byte		0
	.4byte		.L422
	.0byte		.L588
.L590:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L589
	.uleb128	238
	.uleb128	76
	.byte		"LinIf_ChannelIdentifier_p"
	.byte		0
	.4byte		.L591
	.section	.debug_info,,n
.L596:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L589
	.uleb128	243
	.uleb128	73
	.byte		"LinIfFrameFunctions_p"
	.byte		0
	.4byte		.L597
	.section	.debug_info,,n
.L595:
	.sleb128	9
	.4byte		.L602
	.uleb128	322
	.uleb128	1
	.4byte		.L603-.L2
	.uleb128	3
	.section	.debug_info,,n
.L249:
	.sleb128	10
	.byte		"LinIfTrcvIdRef"
	.byte		0
	.4byte		.L575
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L250:
	.sleb128	10
	.byte		"LinIfChannelId"
	.byte		0
	.4byte		.L604
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L251:
	.sleb128	10
	.byte		"LinIfChannelRef"
	.byte		0
	.4byte		.L575
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L603:
.L440:
	.sleb128	9
	.4byte		.L602
	.uleb128	322
	.uleb128	1
	.4byte		.L606-.L2
	.uleb128	32
.L240:
	.sleb128	10
	.byte		"LinTrcvDrvCalls_p"
	.byte		0
	.4byte		.L607
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L241:
	.sleb128	10
	.byte		"WakeupSourceIdLin"
	.byte		0
	.4byte		.L611
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L242:
	.sleb128	10
	.byte		"WakeupSourceIdTrcv"
	.byte		0
	.4byte		.L611
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L243:
	.sleb128	10
	.byte		"LinIfChannelIndex"
	.byte		0
	.4byte		.L575
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L244:
	.sleb128	10
	.byte		"ExternalChannelIndex"
	.byte		0
	.4byte		.L604
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
.L245:
	.sleb128	10
	.byte		"LinIfDelayForSleep"
	.byte		0
	.4byte		.L611
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L246:
	.sleb128	10
	.byte		"LinIfStartupState"
	.byte		0
	.4byte		.L612
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L247:
	.sleb128	10
	.byte		"LinDrvCalls_p"
	.byte		0
	.4byte		.L615
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L248:
	.sleb128	10
	.byte		"LinIf_channelManager_p"
	.byte		0
	.4byte		.L443
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
	.sleb128	0
.L606:
.L425:
	.sleb128	9
	.4byte		.L602
	.uleb128	322
	.uleb128	1
	.4byte		.L619-.L2
	.uleb128	24
.L233:
	.sleb128	10
	.byte		"LinIfMaxLinFrames"
	.byte		0
	.4byte		.L575
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L234:
	.sleb128	10
	.byte		"LinIfMaxSchedules"
	.byte		0
	.4byte		.L575
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L235:
	.sleb128	10
	.byte		"LinIfFrame_p"
	.byte		0
	.4byte		.L455
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L236:
	.sleb128	10
	.byte		"LinIfScheduleTable_p"
	.byte		0
	.4byte		.L620
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L237:
	.sleb128	10
	.byte		"ETCollisionDetectd_p"
	.byte		0
	.4byte		.L624
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L238:
	.sleb128	10
	.byte		"SPPendingRequest_p"
	.byte		0
	.4byte		.L624
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L239:
	.sleb128	10
	.byte		"LinIf_ScheduleTableEntry_p"
	.byte		0
	.4byte		.L578
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L619:
.L446:
	.sleb128	9
	.4byte		.L602
	.uleb128	322
	.uleb128	1
	.4byte		.L625-.L2
	.uleb128	48
.L223:
	.sleb128	10
	.byte		"LinIf_NewScheduleTableType"
	.byte		0
	.4byte		.L626
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L224:
	.sleb128	10
	.byte		"LinIf_RunContSchTableIndexRequested"
	.byte		0
	.4byte		.L628
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L225:
	.sleb128	10
	.byte		"LinIf_RunOnceSchTableRequested"
	.byte		0
	.4byte		.L628
	.sleb128	2
	.byte		0x23
	.uleb128	5
	.byte		0x1
.L226:
	.sleb128	10
	.byte		"LinIf_EntryDelayCounter"
	.byte		0
	.4byte		.L428
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L227:
	.sleb128	10
	.byte		"LinIf_SleepDelayCounter"
	.byte		0
	.4byte		.L532
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L228:
	.sleb128	10
	.byte		"LinIf_ScheduleTableIndex"
	.byte		0
	.4byte		.L628
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L229:
	.sleb128	10
	.byte		"LinIf_ScheduleTableType"
	.byte		0
	.4byte		.L626
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L230:
	.sleb128	10
	.byte		"LinIf_BusStatus"
	.byte		0
	.4byte		.L629
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L231:
	.sleb128	10
	.byte		"LinIf_ChannelSubState"
	.byte		0
	.4byte		.L631
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L232:
	.sleb128	10
	.byte		"LinIf_ChannelState"
	.byte		0
	.4byte		.L613
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
	.sleb128	0
.L625:
.L630:
	.sleb128	9
	.4byte		.L602
	.uleb128	322
	.uleb128	1
	.4byte		.L633-.L2
	.uleb128	20
.L219:
	.sleb128	10
	.byte		"Lin_DriverGetStatusVal"
	.byte		0
	.4byte		.L634
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L220:
	.sleb128	10
	.byte		"LinIf_frameStatus"
	.byte		0
	.4byte		.L635
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L221:
	.sleb128	10
	.byte		"LinIf_frameEntry_p"
	.byte		0
	.4byte		.L521
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L222:
	.sleb128	10
	.byte		"LinIf_RxData"
	.byte		0
	.4byte		.L637
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L633:
.L623:
	.sleb128	9
	.4byte		.L602
	.uleb128	322
	.uleb128	1
	.4byte		.L639-.L2
	.uleb128	20
.L213:
	.sleb128	10
	.byte		"LinIfResumePosition"
	.byte		0
	.4byte		.L640
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L214:
	.sleb128	10
	.byte		"LinIfRunMode"
	.byte		0
	.4byte		.L643
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L215:
	.sleb128	10
	.byte		"LinIfScheduleMode"
	.byte		0
	.4byte		.L646
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L216:
	.sleb128	10
	.byte		"LinIfScheduleTableIndex"
	.byte		0
	.4byte		.L649
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L217:
	.sleb128	10
	.byte		"LinIfMaxSchEntry"
	.byte		0
	.4byte		.L575
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
.L218:
	.sleb128	10
	.byte		"LinIfEntry_p"
	.byte		0
	.4byte		.L521
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L639:
.L524:
	.sleb128	9
	.4byte		.L602
	.uleb128	322
	.uleb128	1
	.4byte		.L650-.L2
	.uleb128	8
.L210:
	.sleb128	10
	.byte		"LinIfDelay"
	.byte		0
	.4byte		.L427
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L211:
	.sleb128	10
	.byte		"LinIfCollisionResolvingRef"
	.byte		0
	.4byte		.L649
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L212:
	.sleb128	10
	.byte		"LinIfFrameRef"
	.byte		0
	.4byte		.L455
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L650:
.L601:
	.sleb128	9
	.4byte		.L602
	.uleb128	322
	.uleb128	1
	.4byte		.L651-.L2
	.uleb128	12
.L207:
	.sleb128	10
	.byte		"User_LinIfRxIndication_p"
	.byte		0
	.4byte		.L652
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L208:
	.sleb128	10
	.byte		"User_LinIfTxConfirmation_p"
	.byte		0
	.4byte		.L657
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L209:
	.sleb128	10
	.byte		"User_LinIfTriggerTransmit_p"
	.byte		0
	.4byte		.L660
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L651:
.L458:
	.sleb128	9
	.4byte		.L602
	.uleb128	322
	.uleb128	1
	.4byte		.L664-.L2
	.uleb128	32
.L196:
	.sleb128	10
	.byte		"LinIfChecksumType"
	.byte		0
	.4byte		.L665
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L197:
	.sleb128	10
	.byte		"LinIfFrameType"
	.byte		0
	.4byte		.L667
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L198:
	.sleb128	10
	.byte		"LinIfLength"
	.byte		0
	.4byte		.L670
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L199:
	.sleb128	10
	.byte		"LinIfPid"
	.byte		0
	.4byte		.L672
	.sleb128	2
	.byte		0x23
	.uleb128	9
	.byte		0x1
.L200:
	.sleb128	10
	.byte		"LinIfTxConfirmationId"
	.byte		0
	.4byte		.L674
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L201:
	.sleb128	10
	.byte		"LinIfPduDirection"
	.byte		0
	.4byte		.L675
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L202:
	.sleb128	10
	.byte		"LinIfFixedFrameSduData"
	.byte		0
	.4byte		.L677
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
.L203:
	.sleb128	10
	.byte		"LinIfRxTxTargetPduRef"
	.byte		0
	.4byte		.L674
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L204:
	.sleb128	10
	.byte		"LinIfSubsFrames_p"
	.byte		0
	.4byte		.L465
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L205:
	.sleb128	10
	.byte		"LinIfNoOfSubEntry"
	.byte		0
	.4byte		.L575
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L206:
	.sleb128	10
	.byte		"LinIfFunctionIndex"
	.byte		0
	.4byte		.L427
	.sleb128	2
	.byte		0x23
	.uleb128	30
	.byte		0x1
	.sleb128	0
.L664:
.L468:
	.sleb128	9
	.4byte		.L602
	.uleb128	322
	.uleb128	1
	.4byte		.L679-.L2
	.uleb128	2
.L194:
	.sleb128	10
	.byte		"LinIfSubFrameIndex"
	.byte		0
	.4byte		.L575
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L195:
	.sleb128	10
	.byte		"LinIfSubFramePriority"
	.byte		0
	.4byte		.L575
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
	.sleb128	0
.L679:
.L610:
	.sleb128	9
	.4byte		.L602
	.uleb128	232
	.uleb128	14
	.4byte		.L680-.L2
	.uleb128	20
.L183:
	.sleb128	10
	.byte		"LinTrcv_SetOpMode_p"
	.byte		0
	.4byte		.L681
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L184:
	.sleb128	10
	.byte		"LinTrcv_GetOpMode_p"
	.byte		0
	.4byte		.L686
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L185:
	.sleb128	10
	.byte		"LinTrcv_GetBusWuReason_p"
	.byte		0
	.4byte		.L690
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L186:
	.sleb128	10
	.byte		"LinTrcv_SetWakeupMode_p"
	.byte		0
	.4byte		.L696
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L187:
	.sleb128	10
	.byte		"LinTrcv_CheckWakeup_p"
	.byte		0
	.4byte		.L701
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L680:
.L618:
	.sleb128	9
	.4byte		.L602
	.uleb128	184
	.uleb128	1
	.4byte		.L704-.L2
	.uleb128	24
.L177:
	.sleb128	10
	.byte		"Lin_SendFrame_p"
	.byte		0
	.4byte		.L705
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L178:
	.sleb128	10
	.byte		"Lin_GoToSleep_p"
	.byte		0
	.4byte		.L711
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L179:
	.sleb128	10
	.byte		"Lin_GoToSleepInternal_p"
	.byte		0
	.4byte		.L714
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L180:
	.sleb128	10
	.byte		"Lin_Wakeup_p"
	.byte		0
	.4byte		.L717
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L181:
	.sleb128	10
	.byte		"Lin_GetStatus_p"
	.byte		0
	.4byte		.L720
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L182:
	.sleb128	10
	.byte		"Lin_CheckWakeup_p"
	.byte		0
	.4byte		.L724
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L704:
.L710:
	.sleb128	9
	.4byte		.L727
	.uleb128	59
	.uleb128	13
	.4byte		.L728-.L2
	.uleb128	8
.L92:
	.sleb128	10
	.byte		"Pid"
	.byte		0
	.4byte		.L673
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L93:
	.sleb128	10
	.byte		"Cs"
	.byte		0
	.4byte		.L666
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L94:
	.sleb128	10
	.byte		"Drc"
	.byte		0
	.4byte		.L676
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L95:
	.sleb128	10
	.byte		"Dl"
	.byte		0
	.4byte		.L671
	.sleb128	2
	.byte		0x23
	.uleb128	3
	.byte		0x1
.L96:
	.sleb128	10
	.byte		"SduPtr"
	.byte		0
	.4byte		.L578
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L728:
	.section	.debug_info,,n
.L510:
	.sleb128	11
	.4byte		.L729
	.uleb128	69
	.uleb128	1
	.4byte		.L730-.L2
	.byte		"VSTAR_PduInfoType"
	.byte		0
	.uleb128	8
.L88:
	.sleb128	10
	.byte		"SduDataPtr"
	.byte		0
	.4byte		.L578
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L89:
	.sleb128	10
	.byte		"SduLength"
	.byte		0
	.4byte		.L731
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L730:
	.section	.debug_info,,n
.L648:
	.sleb128	12
	.4byte		.L602
	.uleb128	232
	.uleb128	14
	.4byte		.L732-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	13
	.byte		"LINTP_APPLICATIVE_SCHEDULE"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"LINTP_DIAG_REQUEST"
	.byte		0
	.sleb128	1
	.sleb128	13
	.byte		"LINTP_DIAG_RESPONSE"
	.byte		0
	.sleb128	2
	.sleb128	0
.L732:
.L636:
	.sleb128	12
	.4byte		.L602
	.uleb128	184
	.uleb128	1
	.4byte		.L733-.L2
	.uleb128	4
	.sleb128	13
	.byte		"LINIF_FRAME_IDLE"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"LINIF_FRAME_RX_ONGOING"
	.byte		0
	.sleb128	1
	.sleb128	13
	.byte		"LINIF_FRAME_TX_ONGOING"
	.byte		0
	.sleb128	2
	.sleb128	13
	.byte		"LINIF_FRAME_FINISHED"
	.byte		0
	.sleb128	3
	.sleb128	13
	.byte		"LINIF_FRAME_ERROR"
	.byte		0
	.sleb128	4
	.sleb128	0
.L733:
.L669:
	.sleb128	12
	.4byte		.L602
	.uleb128	110
	.uleb128	1
	.4byte		.L734-.L2
	.uleb128	4
	.sleb128	13
	.byte		"INVALID_STATE"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"FREE"
	.byte		0
	.sleb128	1
	.sleb128	13
	.byte		"ASSIGN"
	.byte		0
	.sleb128	2
	.sleb128	13
	.byte		"ASSIGN_FRAME_ID_RANGE"
	.byte		0
	.sleb128	3
	.sleb128	13
	.byte		"EVENT_TRIGGERED"
	.byte		0
	.sleb128	4
	.sleb128	13
	.byte		"SAVE_CONFIGURATION"
	.byte		0
	.sleb128	5
	.sleb128	13
	.byte		"SPORADIC"
	.byte		0
	.sleb128	6
	.sleb128	13
	.byte		"SRF"
	.byte		0
	.sleb128	7
	.sleb128	13
	.byte		"UNASSIGN"
	.byte		0
	.sleb128	8
	.sleb128	13
	.byte		"UNCONDITIONAL"
	.byte		0
	.sleb128	9
	.sleb128	0
.L734:
.L642:
	.sleb128	12
	.4byte		.L602
	.uleb128	102
	.uleb128	1
	.4byte		.L735-.L2
	.uleb128	4
	.sleb128	13
	.byte		"CONTINUE_AT_IT_POINT"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"START_FROM_BEGINNING"
	.byte		0
	.sleb128	1
	.sleb128	0
.L735:
.L632:
	.sleb128	12
	.4byte		.L602
	.uleb128	87
	.uleb128	1
	.4byte		.L736-.L2
	.uleb128	4
	.sleb128	13
	.byte		"LINIF_CHANNEL_SUBSTATE_IDLE"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"LINIF_CHANNEL_SLEEP_REQUEST"
	.byte		0
	.sleb128	1
	.sleb128	13
	.byte		"LINIF_CHANNEL_SLEEP_PENDING"
	.byte		0
	.sleb128	2
	.sleb128	13
	.byte		"LINIF_CHANNEL_GOTO_SLEEP_INTERNAL"
	.byte		0
	.sleb128	3
	.sleb128	13
	.byte		"LINIF_CHANNEL_WAKEUP_CONFIRMATION_PENDING_TYPE_FALSE"
	.byte		0
	.sleb128	4
	.sleb128	13
	.byte		"LINIF_CHANNEL_WAKEUP_CONFIRMATION_PENDING_TYPE_TRUE"
	.byte		0
	.sleb128	5
	.sleb128	0
.L736:
.L614:
	.sleb128	12
	.4byte		.L602
	.uleb128	79
	.uleb128	1
	.4byte		.L737-.L2
	.uleb128	4
	.sleb128	13
	.byte		"LINIF_CHANNEL_UNINIT"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"LINIF_CHANNEL_OPERATIONAL"
	.byte		0
	.sleb128	1
	.sleb128	13
	.byte		"LINIF_CHANNEL_SLEEP"
	.byte		0
	.sleb128	2
	.sleb128	0
.L737:
.L627:
	.sleb128	12
	.4byte		.L602
	.uleb128	70
	.uleb128	1
	.4byte		.L738-.L2
	.uleb128	4
	.sleb128	13
	.byte		"NULL_SCHEDULE"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"ACTIVE_RUN_ONCE"
	.byte		0
	.sleb128	1
	.sleb128	13
	.byte		"ACTIVE_RUN_CONTINUOUS"
	.byte		0
	.sleb128	2
	.sleb128	13
	.byte		"ACTIVE_SCHEDULE_MANAGER_OFF"
	.byte		0
	.sleb128	3
	.sleb128	0
.L738:
.L645:
	.sleb128	12
	.4byte		.L602
	.uleb128	63
	.uleb128	1
	.4byte		.L739-.L2
	.uleb128	4
	.sleb128	13
	.byte		"RUN_CONTINUOUS"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"RUN_ONCE"
	.byte		0
	.sleb128	1
	.sleb128	0
.L739:
.L685:
	.sleb128	12
	.4byte		.L727
	.uleb128	59
	.uleb128	13
	.4byte		.L740-.L2
	.uleb128	4
	.sleb128	13
	.byte		"LINTRCV_TRCV_MODE_NORMAL"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"LINTRCV_TRCV_MODE_STANDBY"
	.byte		0
	.sleb128	1
	.sleb128	13
	.byte		"LINTRCV_TRCV_MODE_SLEEP"
	.byte		0
	.sleb128	2
	.sleb128	0
.L740:
.L695:
	.sleb128	12
	.4byte		.L727
	.uleb128	49
	.uleb128	13
	.4byte		.L741-.L2
	.uleb128	4
	.sleb128	13
	.byte		"LINTRCV_WU_ERROR"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"LINTRCV_WU_NOT_SUPPORTED"
	.byte		0
	.sleb128	1
	.sleb128	13
	.byte		"LINTRCV_WU_BY_BUS"
	.byte		0
	.sleb128	2
	.sleb128	13
	.byte		"LINTRCV_WU_BY_PIN"
	.byte		0
	.sleb128	3
	.sleb128	13
	.byte		"LINTRCV_WU_INTERNALLY"
	.byte		0
	.sleb128	4
	.sleb128	13
	.byte		"LINTRCV_WU_RESET"
	.byte		0
	.sleb128	5
	.sleb128	13
	.byte		"LINTRCV_WU_POWER_ON"
	.byte		0
	.sleb128	6
	.sleb128	0
.L741:
.L700:
	.sleb128	12
	.4byte		.L727
	.uleb128	42
	.uleb128	13
	.4byte		.L742-.L2
	.uleb128	4
	.sleb128	13
	.byte		"LINTRCV_WUMODE_ENABLE"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"LINTRCV_WUMODE_DISABLE"
	.byte		0
	.sleb128	1
	.sleb128	13
	.byte		"LINTRCV_WUMODE_CLEAR"
	.byte		0
	.sleb128	2
	.sleb128	0
.L742:
	.section	.debug_info,,n
.L424:
	.sleb128	14
	.byte		"LinIfChannelReloc"
	.byte		0
	.4byte		.L425
	.section	.debug_info,,n
.L423:
	.sleb128	15
	.4byte		.L424
	.section	.debug_info,,n
.L422:
	.sleb128	16
	.4byte		.L423
.L421:
	.sleb128	15
	.4byte		.L422
	.section	.debug_info,,n
.L429:
	.sleb128	17
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L428:
	.sleb128	14
	.byte		"uint16"
	.byte		0
	.4byte		.L429
.L427:
	.sleb128	15
	.4byte		.L428
.L439:
	.sleb128	14
	.byte		"LinIfChannel"
	.byte		0
	.4byte		.L440
.L438:
	.sleb128	15
	.4byte		.L439
.L437:
	.sleb128	16
	.4byte		.L438
.L436:
	.sleb128	15
	.4byte		.L437
.L445:
	.sleb128	14
	.byte		"LinIfChannelManager"
	.byte		0
	.4byte		.L446
.L444:
	.sleb128	16
	.4byte		.L445
.L443:
	.sleb128	15
	.4byte		.L444
.L457:
	.sleb128	14
	.byte		"LinIfFrame"
	.byte		0
	.4byte		.L458
.L456:
	.sleb128	15
	.4byte		.L457
.L455:
	.sleb128	16
	.4byte		.L456
.L454:
	.sleb128	15
	.4byte		.L455
.L461:
	.sleb128	16
	.4byte		.L428
.L460:
	.sleb128	15
	.4byte		.L461
.L467:
	.sleb128	14
	.byte		"LinIfSubstitutionFrames"
	.byte		0
	.4byte		.L468
.L466:
	.sleb128	15
	.4byte		.L467
.L465:
	.sleb128	16
	.4byte		.L466
.L464:
	.sleb128	15
	.4byte		.L465
.L478:
	.sleb128	17
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L477:
	.sleb128	14
	.byte		"uint8"
	.byte		0
	.4byte		.L478
.L498:
	.sleb128	14
	.byte		"boolean"
	.byte		0
	.4byte		.L478
.L509:
	.sleb128	14
	.byte		"PduInfoType"
	.byte		0
	.4byte		.L510
.L523:
	.sleb128	14
	.byte		"LinIfEntry"
	.byte		0
	.4byte		.L524
.L522:
	.sleb128	15
	.4byte		.L523
.L521:
	.sleb128	16
	.4byte		.L522
.L520:
	.sleb128	15
	.4byte		.L521
.L533:
	.sleb128	17
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L532:
	.sleb128	14
	.byte		"uint32"
	.byte		0
	.4byte		.L533
.L531:
	.sleb128	14
	.byte		"IndexTypeFast"
	.byte		0
	.4byte		.L532
.L575:
	.sleb128	15
	.4byte		.L477
.L578:
	.sleb128	16
	.4byte		.L477
.L586:
	.sleb128	16
	.4byte		.L575
.L594:
	.sleb128	14
	.byte		"LinIfChannelIdentifier"
	.byte		0
	.4byte		.L595
.L593:
	.sleb128	15
	.4byte		.L594
.L592:
	.sleb128	16
	.4byte		.L593
.L591:
	.sleb128	15
	.4byte		.L592
.L600:
	.sleb128	14
	.byte		"LinIfFrameFunctions"
	.byte		0
	.4byte		.L601
.L599:
	.sleb128	15
	.4byte		.L600
.L598:
	.sleb128	16
	.4byte		.L599
.L597:
	.sleb128	15
	.4byte		.L598
.L605:
	.sleb128	14
	.byte		"NetworkHandleType"
	.byte		0
	.4byte		.L477
.L604:
	.sleb128	15
	.4byte		.L605
.L609:
	.sleb128	14
	.byte		"LinIf_LinTrcvDrvCalls_t"
	.byte		0
	.4byte		.L610
.L608:
	.sleb128	15
	.4byte		.L609
.L607:
	.sleb128	16
	.4byte		.L608
.L611:
	.sleb128	15
	.4byte		.L532
.L613:
	.sleb128	14
	.byte		"LinIf_ChannelState_t"
	.byte		0
	.4byte		.L614
.L612:
	.sleb128	15
	.4byte		.L613
.L617:
	.sleb128	14
	.byte		"LinIf_LinDrvCalls_t"
	.byte		0
	.4byte		.L618
.L616:
	.sleb128	15
	.4byte		.L617
.L615:
	.sleb128	16
	.4byte		.L616
.L622:
	.sleb128	14
	.byte		"LinIfScheduleTable"
	.byte		0
	.4byte		.L623
.L621:
	.sleb128	15
	.4byte		.L622
.L620:
	.sleb128	16
	.4byte		.L621
.L624:
	.sleb128	16
	.4byte		.L498
.L626:
	.sleb128	14
	.byte		"LinIfSchTableType_t"
	.byte		0
	.4byte		.L627
.L628:
	.sleb128	14
	.byte		"LinIf_SchHandleType"
	.byte		0
	.4byte		.L477
.L629:
	.sleb128	14
	.byte		"LinIf_BusStatusStruct"
	.byte		0
	.4byte		.L630
.L631:
	.sleb128	14
	.byte		"LinIf_ChannelSubState_t"
	.byte		0
	.4byte		.L632
.L634:
	.sleb128	14
	.byte		"Lin_StatusType"
	.byte		0
	.4byte		.L477
.L635:
	.sleb128	14
	.byte		"LinIf_frameStatusType"
	.byte		0
	.4byte		.L636
	.section	.debug_info,,n
.L637:
	.sleb128	18
	.4byte		.L638-.L2
	.4byte		.L477
	.section	.debug_info,,n
	.sleb128	19
	.uleb128	7
	.sleb128	0
.L638:
.L641:
	.sleb128	14
	.byte		"LinIfResumePosition_t"
	.byte		0
	.4byte		.L642
.L640:
	.sleb128	15
	.4byte		.L641
.L644:
	.sleb128	14
	.byte		"LinIfRunMode_t"
	.byte		0
	.4byte		.L645
.L643:
	.sleb128	15
	.4byte		.L644
.L647:
	.sleb128	14
	.byte		"LinTp_Mode"
	.byte		0
	.4byte		.L648
.L646:
	.sleb128	15
	.4byte		.L647
.L649:
	.sleb128	15
	.4byte		.L628
	.section	.debug_info,,n
.L653:
	.sleb128	20
	.4byte		.L654-.L2
	.byte		0x1
.L655:
	.sleb128	14
	.byte		"PduIdType"
	.byte		0
	.4byte		.L428
	.section	.debug_info,,n
	.sleb128	21
	.4byte		.L655
.L656:
	.sleb128	16
	.4byte		.L509
	.sleb128	21
	.4byte		.L656
	.sleb128	0
.L654:
.L652:
	.sleb128	16
	.4byte		.L653
.L658:
	.sleb128	20
	.4byte		.L659-.L2
	.byte		0x1
	.sleb128	21
	.4byte		.L655
	.sleb128	0
.L659:
.L657:
	.sleb128	16
	.4byte		.L658
.L663:
	.sleb128	14
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L477
	.section	.debug_info,,n
.L661:
	.sleb128	22
	.4byte		.L662-.L2
	.4byte		.L663
	.byte		0x1
	.sleb128	21
	.4byte		.L655
	.sleb128	21
	.4byte		.L656
	.sleb128	0
.L662:
.L660:
	.sleb128	16
	.4byte		.L661
.L666:
	.sleb128	14
	.byte		"Lin_FrameCsModelType"
	.byte		0
	.4byte		.L477
.L665:
	.sleb128	15
	.4byte		.L666
.L668:
	.sleb128	14
	.byte		"LinIfFrameType_t"
	.byte		0
	.4byte		.L669
.L667:
	.sleb128	15
	.4byte		.L668
.L671:
	.sleb128	14
	.byte		"Lin_FrameDlType"
	.byte		0
	.4byte		.L477
.L670:
	.sleb128	15
	.4byte		.L671
.L673:
	.sleb128	14
	.byte		"Lin_FramePidType"
	.byte		0
	.4byte		.L477
.L672:
	.sleb128	15
	.4byte		.L673
.L674:
	.sleb128	15
	.4byte		.L655
.L676:
	.sleb128	14
	.byte		"Lin_FrameResponseType"
	.byte		0
	.4byte		.L477
.L675:
	.sleb128	15
	.4byte		.L676
.L677:
	.sleb128	18
	.4byte		.L678-.L2
	.4byte		.L575
	.sleb128	19
	.uleb128	7
	.sleb128	0
.L678:
.L682:
	.sleb128	22
	.4byte		.L683-.L2
	.4byte		.L663
	.byte		0x1
	.sleb128	21
	.4byte		.L477
.L684:
	.sleb128	14
	.byte		"LinTrcv_TrcvModeType"
	.byte		0
	.4byte		.L685
	.sleb128	21
	.4byte		.L684
	.sleb128	0
.L683:
.L681:
	.sleb128	16
	.4byte		.L682
.L687:
	.sleb128	22
	.4byte		.L688-.L2
	.4byte		.L663
	.byte		0x1
	.sleb128	21
	.4byte		.L477
.L689:
	.sleb128	16
	.4byte		.L684
	.sleb128	21
	.4byte		.L689
	.sleb128	0
.L688:
.L686:
	.sleb128	16
	.4byte		.L687
.L691:
	.sleb128	22
	.4byte		.L692-.L2
	.4byte		.L663
	.byte		0x1
	.sleb128	21
	.4byte		.L477
.L694:
	.sleb128	14
	.byte		"LinTrcv_TrcvWakeupReasonType"
	.byte		0
	.4byte		.L695
.L693:
	.sleb128	16
	.4byte		.L694
	.sleb128	21
	.4byte		.L693
	.sleb128	0
.L692:
.L690:
	.sleb128	16
	.4byte		.L691
.L697:
	.sleb128	22
	.4byte		.L698-.L2
	.4byte		.L663
	.byte		0x1
	.sleb128	21
	.4byte		.L477
.L699:
	.sleb128	14
	.byte		"LinTrcv_TrcvWakeupModeType"
	.byte		0
	.4byte		.L700
	.sleb128	21
	.4byte		.L699
	.sleb128	0
.L698:
.L696:
	.sleb128	16
	.4byte		.L697
.L702:
	.sleb128	22
	.4byte		.L703-.L2
	.4byte		.L663
	.byte		0x1
	.sleb128	21
	.4byte		.L477
	.sleb128	0
.L703:
.L701:
	.sleb128	16
	.4byte		.L702
.L706:
	.sleb128	22
	.4byte		.L707-.L2
	.4byte		.L663
	.byte		0x1
	.sleb128	21
	.4byte		.L477
.L709:
	.sleb128	14
	.byte		"Lin_PduType"
	.byte		0
	.4byte		.L710
.L708:
	.sleb128	16
	.4byte		.L709
	.sleb128	21
	.4byte		.L708
	.sleb128	0
.L707:
.L705:
	.sleb128	16
	.4byte		.L706
.L712:
	.sleb128	22
	.4byte		.L713-.L2
	.4byte		.L663
	.byte		0x1
	.sleb128	21
	.4byte		.L477
	.sleb128	0
.L713:
.L711:
	.sleb128	16
	.4byte		.L712
.L715:
	.sleb128	22
	.4byte		.L716-.L2
	.4byte		.L663
	.byte		0x1
	.sleb128	21
	.4byte		.L477
	.sleb128	0
.L716:
.L714:
	.sleb128	16
	.4byte		.L715
.L718:
	.sleb128	22
	.4byte		.L719-.L2
	.4byte		.L663
	.byte		0x1
	.sleb128	21
	.4byte		.L477
	.sleb128	0
.L719:
.L717:
	.sleb128	16
	.4byte		.L718
.L721:
	.sleb128	22
	.4byte		.L722-.L2
	.4byte		.L634
	.byte		0x1
	.sleb128	21
	.4byte		.L477
.L723:
	.sleb128	16
	.4byte		.L578
	.sleb128	21
	.4byte		.L723
	.sleb128	0
.L722:
.L720:
	.sleb128	16
	.4byte		.L721
.L725:
	.sleb128	22
	.4byte		.L726-.L2
	.4byte		.L663
	.byte		0x1
	.sleb128	21
	.4byte		.L477
	.sleb128	0
.L726:
.L724:
	.sleb128	16
	.4byte		.L725
.L731:
	.sleb128	14
	.byte		"PduLengthType"
	.byte		0
	.4byte		.L428
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L426:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),31
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),3
	.d2locend
.L430:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),4
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),30
	.d2locend
.L441:
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),3
	.d2locend
.L447:
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo11),3
	.d2locend
.L453:
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo13),3
	.d2locend
.L459:
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo13),4
	.d2locend
.L462:
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo13),5
	.d2locend
.L469:
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo13),0
	.d2locend
.L475:
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo13),3
	.d2locend
.L479:
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo13),7
	.d2locend
.L481:
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo13),4
	.d2locend
.L487:
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo19),31
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo21),31
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo23),31
	.d2locend
.L494:
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo25),3
	.d2locreg	%offsetof(.Llo26), %offsetof(.Llo27),31
	.d2locreg	%offsetof(.Llo28), %offsetof(.Llo29),3
	.d2locreg	%offsetof(.Llo30), %offsetof(.Llo31),31
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo33),31
	.d2locreg	%offsetof(.Llo34), %offsetof(.Llo35),31
	.d2locreg	%offsetof(.Llo36), %offsetof(.Llo37),3
	.d2locreg	%offsetof(.Llo38), %offsetof(.Llo39),31
	.d2locend
.L496:
	.d2locreg	%offsetof(.Llo40), %offsetof(.Llo31),30
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo33),30
	.d2locreg	%offsetof(.Llo34), %offsetof(.Llo41),30
	.d2locreg	%offsetof(.Llo38), %offsetof(.Llo39),30
	.d2locend
.L499:
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo42),28
	.d2locend
.L502:
	.d2locreg	%offsetof(.Llo43), %offsetof(.Llo44),0
	.d2locreg	%offsetof(.Llo45), %offsetof(.Llo41),29
	.d2locreg	%offsetof(.Llo38), %offsetof(.Llo39),29
	.d2locend
.L516:
	.d2locreg	%offsetof(.Llo46), %offsetof(.Llo47),3
	.d2locreg	%offsetof(.Llo48), %offsetof(.Llo49),3
	.d2locend
.L518:
	.d2locreg	%offsetof(.Llo50), %offsetof(.Llo51),0
	.d2locreg	%offsetof(.Llo52), %offsetof(.Llo53),4
	.d2locreg	%offsetof(.Llo54), %offsetof(.Llo47),4
	.d2locreg	%offsetof(.Llo55), %offsetof(.Llo56),4
	.d2locend
.L525:
	.d2locreg	%offsetof(.Llo57), %offsetof(.Llo47),5
	.d2locend
.L534:
	.d2locreg	%offsetof(.Llo58), %offsetof(.Llo47),6
	.d2locend
.L541:
	.d2locreg	%offsetof(.Llo59), %offsetof(.Llo60),31
	.d2locreg	%offsetof(.Llo61), %offsetof(.Llo62),31
	.d2locend
.L547:
	.d2locreg	%offsetof(.Llo63), %offsetof(.Llo64),0
	.d2locend
.L555:
	.d2locreg	%offsetof(.Llo65), %offsetof(.Llo66),3
	.d2locreg	%offsetof(.Llo67), %offsetof(.Llo68),31
	.d2locreg	%offsetof(.Llo69), %offsetof(.Llo70),31
	.d2locreg	%offsetof(.Llo71), %offsetof(.Llo72),3
	.d2locend
.L557:
	.d2locreg	%offsetof(.Llo65), %offsetof(.Llo70),30
	.d2locend
.L563:
	.d2locreg	%offsetof(.Llo73), %offsetof(.Llo74),3
	.d2locreg	%offsetof(.Llo75), %offsetof(.Llo76),3
	.d2locend
.L571:
	.d2locreg	%offsetof(.Llo77), %offsetof(.Llo78),3
	.d2locreg	%offsetof(.Llo79), %offsetof(.Llo80),4
	.d2locend
.L573:
	.d2locreg	%offsetof(.Llo79), %offsetof(.Llo81),31
	.d2locend
.L576:
	.d2locreg	%offsetof(.Llo82), %offsetof(.Llo83),3
	.d2locreg	%offsetof(.Llo84), %offsetof(.Llo85),3
	.d2locend
.L584:
	.d2locreg	%offsetof(.Llo86), %offsetof(.Llo87),31
	.d2locend
.L587:
	.d2locreg	%offsetof(.Llo88), %offsetof(.Llo87),3
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "LinIf_BusStateChecker"
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "LinIf_FrameStatusManager"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "LinIf_HandleCommonFrameStatus","LinIf_HandleETFrameStatus","LinIf_HandleSRFrameStatus","LinIf_SetChannelSleep"
	.wrcm.end
	.wrcm.nelem "LinIf_HandleETFrameStatus"
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "LinIf_HandleCommonFrameStatus"
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nint32 "frameSize", 48
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "LinIf_GetSporadicSlotFrame","LinIf_clearSporadicPending"
	.wrcm.end
	.wrcm.nelem "LinIf_GetSporadicSlotFrame"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "LinIf_HandleSRFrameStatus"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "LinIf_clearSporadicPending"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "SchM_Enter_LinIf_ExclusiveArea0","SchM_Exit_LinIf_ExclusiveArea0"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\LinIf_StateHandler.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\LinIf_StateHandler.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\LinIf_StateHandler.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\LinIf_StateHandler.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\LinIf_StateHandler.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\LinIf_StateHandler.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\LinIf\ssc\make\..\src\LinIf_StateHandler.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
