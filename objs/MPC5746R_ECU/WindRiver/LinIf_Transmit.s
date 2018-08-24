#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"LinIf_Transmit.c"
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
# static FUNC (P2VAR (LinIfChannelManager, AUTOMATIC, LINIF_APPL_DATA), LINIF_CODE) LinIf_Transmit_FindAndHandleSubframeForSporadic
	.align		1
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinIf\\ssc\\make\\..\\src\\LinIf_Transmit.c"
        .d2line         154,83
#$$ld
.L321:

#$$bf	LinIf_Transmit_FindAndHandleSubframeForSporadic,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
LinIf_Transmit_FindAndHandleSubframeForSporadic:
.Llo1:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# LinTxPduId=r3 LinTxPduId=r3
	mr		r31,r4		# channelIndex=r31 channelIndex=r4
	mr		r5,r5		# chFrame_p=r5 chFrame_p=r5
	.d2prologue_end
# (
#     PduIdType LinTxPduId,
#     VAR (uint8, AUTOMATIC) channelIndex,
#     P2CONST (LinIfFrame, AUTOMATIC, LINIF_APPL_DATA) chFrame_p)
# {
#     P2VAR (LinIfChannelManager, AUTOMATIC, LINIF_APPL_DATA) chManagerOfFoundSPSubFrame_p = NULL_PTR;
	.d2line		160
	diab.li		r4,0		# chManagerOfFoundSPSubFrame_p=r4
# 
#     VAR (uint8, AUTOMATIC) subFrameIndex;
# 
#     for (subFrameIndex = 0U;
	.d2line		164
.Llo7:
	diab.li		r6,0
.L311:
.Llo8:
	rlwinm		r0,r6,0,24,31		# subFrameIndex=r6
	lbz		r7,28(r5)		# chSubFrame_p=r7 chFrame_p=r5
.Llo15:
	se_cmp		r0,r7		# chSubFrame_p=r7
	bc		0,0,.L315	# ge
	.section	.text_vle
.L344:
#         (subFrameIndex < chFrame_p->LinIfNoOfSubEntry);
#          subFrameIndex++)
#     {
# 
#         /* Get each substitution frame in the sporadic frame */
#         VAR (uint8, AUTOMATIC) chSubFrameIndex = chFrame_p->LinIfSubsFrames_p[subFrameIndex].LinIfSubFrameIndex;
	.d2line		170
.Llo16:
	lwz		r7,24(r5)		# chSubFrame_p=r7 chFrame_p=r5
.Llo17:
	rlwinm		r0,r6,1,23,30		# subFrameIndex=r6
	lbzx		r30,r7,r0		# chSubFrameIndex=r30 chSubFrame_p=r7
.Llo12:
	mr		r30,r30		# chSubFrameIndex=r30 chSubFrameIndex=r30
#         P2CONST (LinIfFrame, AUTOMATIC, LINIF_APPL_DATA) chSubFrame_p =
	.d2line		171
	rlwinm		r0,r31,0,24,31		# channelIndex=r31
	lis		r7,LinIf_ConfigChannel_Reloc_p@ha		# chSubFrame_p=r7
	lwz		r7,LinIf_ConfigChannel_Reloc_p@l(r7)		# chSubFrame_p=r7 chSubFrame_p=r7
	rlwinm		r29,r0,5,0,26
	se_slwi		r0,3
	subf		r0,r0,r29
	se_add		r7,r0		# chSubFrame_p=r7 chSubFrame_p=r7
	lwz		r7,4(r7)		# chSubFrame_p=r7 chSubFrame_p=r7
	rlwinm		r0,r30,5,19,26		# chSubFrameIndex=r30
	se_add		r0,r7		# chSubFrame_p=r7
	mr		r7,r0		# chSubFrame_p=r7 chSubFrame_p=r0
#             &(LinIf_ConfigChannel_Reloc_p[channelIndex].LinIfFrame_p[chSubFrameIndex]);
# 
#         /* Check whether the incoming PduId is matching with the PduId of the frame */
#         if ((chSubFrame_p->LinIfPduDirection == LIN_MASTER_RESPONSE) &&
	.d2line		175
.Llo18:
	lbz		r0,12(r7)		# chSubFrame_p=r7
	se_cmpi		r0,0
	bc		0,2,.L314	# ne
.Llo19:
	lhz		r0,22(r7)		# chSubFrame_p=r7
	rlwinm		r7,r3,0,16,31		# chSubFrame_p=r7 LinTxPduId=r3
	se_cmp		r0,r7		# chSubFrame_p=r7
	bc		0,2,.L314	# ne
#             (chSubFrame_p->LinIfRxTxTargetPduRef == LinTxPduId)) /*[LINIF105]*/
#         {
#             SchM_Enter_LinIf_ExclusiveArea0();
	.d2line		178
.Llo2:
	bl		SchM_Enter_LinIf_ExclusiveArea0
# 
#             /* Set the flag for Sporadic Frame */
#             LinIf_ConfigChannel_Reloc_p[channelIndex].SPPendingRequest_p[chSubFrameIndex] = TRUE; /*[LINIF341]*/ /*[LINIF106]*/
	.d2line		181
	rlwinm		r0,r31,0,24,31		# channelIndex=r31
	diab.li		r4,1		# chManagerOfFoundSPSubFrame_p=r4
	lis		r3,LinIf_ConfigChannel_Reloc_p@ha		# LinTxPduId=r3
.Llo3:
	lwz		r3,LinIf_ConfigChannel_Reloc_p@l(r3)		# LinTxPduId=r3 LinTxPduId=r3
	rlwinm		r5,r0,5,0,26		# chFrame_p=r5
.Llo9:
	se_slwi		r0,3
	subf		r0,r0,r5		# chFrame_p=r5
	se_add		r3,r0		# LinTxPduId=r3 LinTxPduId=r3
	lwz		r3,16(r3)		# LinTxPduId=r3 LinTxPduId=r3
.Llo13:
	rlwinm		r30,r30,0,24,31		# chSubFrameIndex=r30 chSubFrameIndex=r30
.Llo14:
	stbx		r4,r3,r30		# LinTxPduId=r3 chManagerOfFoundSPSubFrame_p=r4
# 
#             SchM_Exit_LinIf_ExclusiveArea0();
	.d2line		183
	bl		SchM_Exit_LinIf_ExclusiveArea0
# 
#             chManagerOfFoundSPSubFrame_p = LinIf_ConfigChannelLT_p[channelIndex].LinIf_channelManager_p;
	.d2line		185
.Llo4:
	lis		r3,LinIf_ConfigChannelLT_p@ha		# LinTxPduId=r3
.Llo5:
	lwz		r0,LinIf_ConfigChannelLT_p@l(r3)		# LinTxPduId=r3
	rlwinm		r31,r31,5,19,26		# channelIndex=r31 channelIndex=r31
	se_add		r31,r0		# channelIndex=r31 channelIndex=r31
	lwz		r4,28(r31)		# chManagerOfFoundSPSubFrame_p=r4 channelIndex=r31
	mr		r4,r4		# chManagerOfFoundSPSubFrame_p=r4 chManagerOfFoundSPSubFrame_p=r4
	b		.L315
.L314:
	.section	.text_vle
.L345:
#             break;
#         }
#     }
	.d2line		188
.Llo10:
	diab.addi		r0,r6,1		# subFrameIndex=r6
	se_addi		r6,1		# subFrameIndex=r6 subFrameIndex=r6
	b		.L311
.L315:
# 
#     return chManagerOfFoundSPSubFrame_p;
	.d2line		190
.Llo6:
	mr		r3,r4		# chManagerOfFoundSPSubFrame_p=r3 chManagerOfFoundSPSubFrame_p=r4
# }
	.d2line		191
	.d2epilogue_begin
	lmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo11:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L322:
	.type		LinIf_Transmit_FindAndHandleSubframeForSporadic,@function
	.size		LinIf_Transmit_FindAndHandleSubframeForSporadic,.-LinIf_Transmit_FindAndHandleSubframeForSporadic
# Number of nodes = 93

# Allocations for LinIf_Transmit_FindAndHandleSubframeForSporadic
#	?a4		LinTxPduId
#	?a5		channelIndex
#	?a6		chFrame_p
#	?a7		$$84
#	?a8		$$83
#	?a9		chManagerOfFoundSPSubFrame_p
#	?a10		subFrameIndex
#	?a11		chSubFrameIndex
#	?a12		chSubFrame_p
# FUNC (Std_ReturnType, LINIF_CODE) LinIf_Transmit
	.align		2
	.section	.text_vle
        .d2line         56,35
#$$ld
.L354:

#$$bf	LinIf_Transmit,interprocedural,rasave,nostackparams
	.globl		LinIf_Transmit
	.d2_cfa_start __cie
LinIf_Transmit:
.Llo20:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr
	stmw		r26,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	26,31,1,1
	stw		r0,52(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# LinTxPduId=r31 LinTxPduId=r3
	.d2prologue_end
# (
#   PduIdType LinTxPduId,
#   /*
#    * Rule : Message 3206 Message : Parameter has not been referenced within
#    * the function body and could therefore be removed Reason : Kept as it to
#    * maintain the consistency with Autosar specification. */
#   P2CONST (PduInfoType, AUTOMATIC, LINIF_APPL_CONST) PduInfoPtr) /* PRQA S 3206*/ /*One of parameters is not used in this function, but the function arguments is specified in SWS*/
# {
#     VAR (Std_ReturnType, AUTOMATIC  ) returnVal = E_NOT_OK;
	.d2line		65
	diab.li		r30,1		# returnVal=r30
# 
#     if (LINIF_UNINIT == LinIf_GlobalInitStsFlag)
	.d2line		67
.Llo24:
	lis		r3,LinIf_GlobalInitStsFlag@ha
.Llo21:
	lbz		r0,LinIf_GlobalInitStsFlag@l(r3)
	se_cmpi		r0,0
	bc		1,2,.L280	# eq
	.section	.text_vle
.L365:
#     {
# #if (  LINIF_DEV_ERROR_DETECT == STD_ON )
#         (void)Det_ReportError (LINIF_MODULE_ID, LINIF_INSTANCE_ID, LINIF_TRANSMIT_FUN_ID, LINIF_E_UNINIT); /*[LINIF535]*/
#     }
#     else if (NULL_PTR == PduInfoPtr)
#     {
#         (void)Det_ReportError (LINIF_MODULE_ID, LINIF_INSTANCE_ID, LINIF_TRANSMIT_FUN_ID, LINIF_E_PARAMETER_POINTER); /*[LINIF570]*/
# #endif /* End of LINIF_DEV_ERROR_DETECT  */
#     }
#     else
#     {
#         P2VAR (LinIfChannelManager, AUTOMATIC, LINIF_APPL_DATA) chManagerOfFoundSPSubFrame_p = NULL_PTR;
	.d2line		79
.Llo22:
	diab.li		r3,0		# chManagerOfFoundSPSubFrame_p=r3
#         VAR (boolean, AUTOMATIC) nspFrameFound = FALSE;
	.d2line		80
.Llo26:
	diab.li		r29,0
#         VAR (uint16, AUTOMATIC) channelCounter;
# 
#         /* Iterate through all Lin Channels */
#         for (channelCounter = 0U;
	.d2line		84
.Llo28:
	diab.li		r28,0
.L281:
.Llo31:
	rlwinm		r0,r28,0,16,31		# channelCounter=r28
	lis		r4,LinIf_GlobalConfig_p@ha		# channelIndex=r4
.Llo32:
	lwz		r4,LinIf_GlobalConfig_p@l(r4)		# channelIndex=r4 channelIndex=r4
	lhz		r4,0(r4)		# channelIndex=r4 channelIndex=r4
	se_cmp		r0,r4		# channelIndex=r4
	bc		0,0,.L294	# ge
	.section	.text_vle
.L376:
#              channelCounter < LinIf_GlobalConfig_p->MaxLinIfChannel;
#              channelCounter++)
#         {
#             VAR (uint8, AUTOMATIC) channelIndex = LinIf_ConfigChannelLT_p[channelCounter].LinIfChannelIndex;
	.d2line		88
.Llo33:
	lis		r4,LinIf_ConfigChannelLT_p@ha		# channelIndex=r4
.Llo34:
	lwz		r4,LinIf_ConfigChannelLT_p@l(r4)		# channelIndex=r4 channelIndex=r4
	rlwinm		r0,r28,5,11,26		# channelCounter=r28
	se_add		r4,r0		# channelIndex=r4 channelIndex=r4
	lbz		r27,12(r4)		# channelIndex=r27 channelIndex=r4
	mr		r27,r27		# channelIndex=r27 channelIndex=r27
#             VAR (uint8, AUTOMATIC) frameIndex;
# 
#             /* Iterate through all Frames in each Lin Channels */
#             for (frameIndex = 0U;
	.d2line		92
	diab.li		r26,0		# frameIndex=r26
.L284:
.Llo35:
	rlwinm		r0,r27,0,24,31		# channelIndex=r27
.Llo36:
	rlwinm		r5,r26,0,24,31		# chFrame_p=r5 frameIndex=r26
.Llo38:
	lis		r4,LinIf_ConfigChannel_Reloc_p@ha		# channelIndex=r4
	lwz		r4,LinIf_ConfigChannel_Reloc_p@l(r4)		# channelIndex=r4 channelIndex=r4
	rlwinm		r6,r0,5,0,26
	se_slwi		r0,3
	subf		r0,r0,r6
	lbzx		r0,r4,r0		# channelIndex=r4
	se_cmp		r5,r0		# chFrame_p=r5
	bc		0,0,.L289	# ge
	.section	.text_vle
.L384:
#                 (frameIndex < LinIf_ConfigChannel_Reloc_p[channelIndex].LinIfMaxLinFrames);
#                  frameIndex++)
#             {
#                 /* Get each Lin frame in each Channel */
#                 P2CONST (LinIfFrame, AUTOMATIC, LINIF_APPL_DATA) chFrame_p =
	.d2line		97
.Llo39:
	rlwinm		r0,r27,0,24,31		# channelIndex=r27
	lis		r4,LinIf_ConfigChannel_Reloc_p@ha		# channelIndex=r4
	lwz		r4,LinIf_ConfigChannel_Reloc_p@l(r4)		# channelIndex=r4 channelIndex=r4
	rlwinm		r5,r0,5,0,26		# chFrame_p=r5
.Llo40:
	se_slwi		r0,3
	subf		r0,r0,r5		# chFrame_p=r5
	se_add		r4,r0		# channelIndex=r4 channelIndex=r4
	lwz		r0,4(r4)		# channelIndex=r4
	rlwinm		r5,r26,5,19,26		# chFrame_p=r5 frameIndex=r26
	se_add		r0,r5		# chFrame_p=r5
	mr		r5,r0		# chFrame_p=r5 chFrame_p=r0
#                     &(LinIf_ConfigChannel_Reloc_p[channelIndex].LinIfFrame_p[frameIndex]);  /*[LINIF452]*/
# 
#                 if (SPORADIC == chFrame_p->LinIfFrameType)
	.d2line		100
.Llo41:
	lwz		r0,4(r5)		# chFrame_p=r5
	se_cmpi		r0,6
	bc		0,2,.L287	# ne
#                 {
#                     chManagerOfFoundSPSubFrame_p = LinIf_Transmit_FindAndHandleSubframeForSporadic(LinTxPduId, channelIndex, chFrame_p);
	.d2line		102
	mr		r3,r31		# LinTxPduId=r3 LinTxPduId=r31
	mr		r4,r27		# channelIndex=r4 channelIndex=r27
.Llo42:
	mr		r5,r5		# chFrame_p=r5 chFrame_p=r5
.Llo43:
	bl		LinIf_Transmit_FindAndHandleSubframeForSporadic
	.d2line		104
	mr.		r3,r3		# chManagerOfFoundSPSubFrame_p=?a8 chManagerOfFoundSPSubFrame_p=r3
# 
#                     if (NULL_PTR != chManagerOfFoundSPSubFrame_p)
	bc		1,2,.L290	# eq
	b		.L289
.L287:
#                     {
#                         break;
#                     }
#                 }
#                 else if ((chFrame_p->LinIfPduDirection == LIN_MASTER_RESPONSE) && (chFrame_p->LinIfRxTxTargetPduRef == LinTxPduId))
	.d2line		109
.Llo44:
	lbz		r0,12(r5)		# chFrame_p=r5
	se_cmpi		r0,0
	bc		0,2,.L290	# ne
	lhz		r4,22(r5)		# channelIndex=r4 chFrame_p=r5
	rlwinm		r0,r31,0,16,31		# LinTxPduId=r31
	se_cmp		r4,r0		# channelIndex=r4
#                 {
#                     nspFrameFound = TRUE;  /* [SWS_LinIf_00700] */
	.d2line		111
	diab.li		r4,1		# channelIndex=r4
	isel		r29,r4,r29,2		# nspFrameFound=r29 channelIndex=r4 nspFrameFound=r29
.L290:
	.section	.text_vle
.L385:
#                 }
#                 else
#                 {
#                     /* No matched frame */
#                 }
# 
#             }
	.d2line		118
.Llo45:
	diab.addi		r5,r26,1		# chFrame_p=r5 frameIndex=r26
	se_addi		r26,1		# frameIndex=r26 frameIndex=r26
	b		.L284
.L289:
# 
#             if (NULL_PTR != chManagerOfFoundSPSubFrame_p)
	.d2line		120
	se_cmpi		r3,0		# chManagerOfFoundSPSubFrame_p=r3
	bc		0,2,.L294	# ne
	.section	.text_vle
.L377:
#             {
#                 break;
#             }
#         }
	.d2line		124
.Llo37:
	diab.addi		r0,r28,1		# channelCounter=r28
	se_addi		r28,1		# channelCounter=r28 channelCounter=r28
	b		.L281
.L294:
# 
#         if (NULL_PTR != chManagerOfFoundSPSubFrame_p) {
	.d2line		126
	se_cmpi		r3,0		# chManagerOfFoundSPSubFrame_p=r3
	bc		1,2,.L295	# eq
#             if ((NULL_SCHEDULE != chManagerOfFoundSPSubFrame_p->LinIf_ScheduleTableType)  /* [SWS_LinIf_00719] */
	.d2line		127
.Llo23:
	lwz		r0,16(r3)		# chManagerOfFoundSPSubFrame_p=r3
	se_cmpi		r0,0
	bc		0,2,.L300	# ne
.Llo29:
	lwz		r0,0(r3)		# chManagerOfFoundSPSubFrame_p=r3
	se_cmpi		r0,0
	bc		1,2,.L280	# eq
.L300:
# #if ( LINIF_ENABLE_SCHEDULE_TABLE_MANAGER == STD_ON )
#             || (NULL_SCHEDULE != chManagerOfFoundSPSubFrame_p->LinIf_NewScheduleTableType)
# #endif
#             )
#             {
#                 returnVal = E_OK;
	.d2line		133
	diab.li		r30,0		# returnVal=r30
	b		.L280
.L295:
#             }
#         }
#         else if (nspFrameFound)
	.d2line		136
.Llo30:
	rlwinm		r29,r29,0,24,31		# nspFrameFound=r29 nspFrameFound=r29
	se_cmpi		r29,0		# nspFrameFound=r29
	bc		1,2,.L280	# eq
#         {
#             returnVal = E_OK;
	.d2line		138
.Llo27:
	diab.li		r30,0		# returnVal=r30
	.section	.text_vle
.L366:
.L280:
#         }
#         else
#         {
#             /* The incoming PduId is not found */
# #if ( LINIF_DEV_ERROR_DETECT == STD_ON )
#             /* Report the LINIF_E_PARAMETER error to DET module */
#             (void)Det_ReportError (LINIF_MODULE_ID, LINIF_INSTANCE_ID, LINIF_TRANSMIT_FUN_ID, LINIF_E_PARAMETER); /*[LINIF575]*/
# #endif
#         }
#     } /* [SWS_LinIf_00535] */
# 
#     return (returnVal);
	.d2line		150
	rlwinm		r3,r30,0,24,31		# chManagerOfFoundSPSubFrame_p=r3 returnVal=r30
# } /* End of LinIf_Transmit() */
	.d2line		151
	.d2epilogue_begin
	lmw		r26,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	2,10
.Llo25:
	lwz		r0,52(r1)
	mtspr		lr,r0
	diab.addi		r1,r1,48		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L355:
	.type		LinIf_Transmit,@function
	.size		LinIf_Transmit,.-LinIf_Transmit
# Number of nodes = 138

# Allocations for LinIf_Transmit
#	?a4		LinTxPduId
#	not allocated	PduInfoPtr
#	?a5		$$86
#	?a6		$$85
#	?a7		returnVal
#	?a8		chManagerOfFoundSPSubFrame_p
#	?a9		nspFrameFound
#	?a10		channelCounter
#	?a11		channelIndex
#	?a12		frameIndex
#	?a13		chFrame_p

# Allocations for module
	.section	.text_vle
	.0byte		.L402
	.section	.text_vle
#$$ld
.L5:
.L545:	.d2filenum "C:\\WINDRI~1\\COMPIL~1\\DIAB-5~1.4\\include\\diab/lpragma.h"
.L543:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\AUTOSAR\\ar422\\Lin_GeneralTypes.h"
.L408:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinIf\\ssc\\make\\..\\inc\\LinIf_Types.h"
.L391:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinIf\\ssc\\make\\..\\inc\\LinIf_Private.h"
.L323:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinIf\\ssc\\make\\..\\src\\LinIf_Transmit.c"
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
	.uleb128	7
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
	.uleb128	15
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	16
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
	.uleb128	17
	.uleb128	38
	.byte		0x0
	.uleb128	73
	.uleb128	16
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
	.uleb128	73
	.uleb128	16
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinIf\\ssc\\make\\..\\src\\LinIf_Transmit.c"
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
.L327:
	.sleb128	2
	.4byte		.L320-.L2
	.byte		"LinIf_Transmit_FindAndHandleSubframeForSporadic"
	.byte		0
	.4byte		.L323
	.uleb128	154
	.uleb128	83
	.4byte		.L324
	.byte		0x1
	.4byte		.L321
	.4byte		.L322
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L323
	.uleb128	154
	.uleb128	83
	.byte		"LinTxPduId"
	.byte		0
	.4byte		.L328
	.4byte		.L331
	.sleb128	3
	.4byte		.L323
	.uleb128	154
	.uleb128	83
	.byte		"channelIndex"
	.byte		0
	.4byte		.L332
	.4byte		.L334
	.sleb128	3
	.4byte		.L323
	.uleb128	154
	.uleb128	83
	.byte		"chFrame_p"
	.byte		0
	.4byte		.L335
	.4byte		.L339
	.section	.debug_info,,n
.L340:
	.sleb128	4
	.4byte		.L323
	.uleb128	160
	.uleb128	61
	.byte		"chManagerOfFoundSPSubFrame_p"
	.byte		0
	.4byte		.L324
	.4byte		.L341
.L342:
	.sleb128	4
	.4byte		.L323
	.uleb128	162
	.uleb128	28
	.byte		"subFrameIndex"
	.byte		0
	.4byte		.L332
	.4byte		.L343
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L347
	.4byte		.L344
	.4byte		.L345
.L348:
	.sleb128	4
	.4byte		.L323
	.uleb128	170
	.uleb128	32
	.byte		"chSubFrameIndex"
	.byte		0
	.4byte		.L332
	.4byte		.L349
.L350:
	.sleb128	4
	.4byte		.L323
	.uleb128	171
	.uleb128	58
	.byte		"chSubFrame_p"
	.byte		0
	.4byte		.L335
	.4byte		.L351
	.section	.debug_info,,n
	.sleb128	0
.L347:
	.section	.debug_info,,n
	.sleb128	0
.L320:
	.section	.debug_info,,n
.L357:
	.sleb128	6
	.4byte		.L353-.L2
	.byte		"LinIf_Transmit"
	.byte		0
	.4byte		.L323
	.uleb128	56
	.uleb128	35
	.4byte		.L356
	.byte		0x1
	.byte		0x1
	.4byte		.L354
	.4byte		.L355
	.sleb128	3
	.4byte		.L323
	.uleb128	56
	.uleb128	35
	.byte		"LinTxPduId"
	.byte		0
	.4byte		.L328
	.4byte		.L358
	.section	.debug_info,,n
	.sleb128	7
	.4byte		.L323
	.uleb128	56
	.uleb128	35
	.byte		"PduInfoPtr"
	.byte		0
	.4byte		.L359
	.sleb128	2
	.byte		0x90
	.uleb128	4
.L363:
	.sleb128	4
	.4byte		.L323
	.uleb128	65
	.uleb128	39
	.byte		"returnVal"
	.byte		0
	.4byte		.L356
	.4byte		.L364
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L368
	.4byte		.L365
	.4byte		.L366
.L369:
	.sleb128	4
	.4byte		.L323
	.uleb128	79
	.uleb128	65
	.byte		"chManagerOfFoundSPSubFrame_p"
	.byte		0
	.4byte		.L324
	.4byte		.L370
.L371:
	.sleb128	4
	.4byte		.L323
	.uleb128	80
	.uleb128	34
	.byte		"nspFrameFound"
	.byte		0
	.4byte		.L372
	.4byte		.L373
.L374:
	.sleb128	4
	.4byte		.L323
	.uleb128	81
	.uleb128	33
	.byte		"channelCounter"
	.byte		0
	.4byte		.L329
	.4byte		.L375
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L379
	.4byte		.L376
	.4byte		.L377
.L380:
	.sleb128	4
	.4byte		.L323
	.uleb128	88
	.uleb128	36
	.byte		"channelIndex"
	.byte		0
	.4byte		.L332
	.4byte		.L381
.L382:
	.sleb128	4
	.4byte		.L323
	.uleb128	89
	.uleb128	36
	.byte		"frameIndex"
	.byte		0
	.4byte		.L332
	.4byte		.L383
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L387
	.4byte		.L384
	.4byte		.L385
.L388:
	.sleb128	4
	.4byte		.L323
	.uleb128	97
	.uleb128	66
	.byte		"chFrame_p"
	.byte		0
	.4byte		.L335
	.4byte		.L389
	.section	.debug_info,,n
	.sleb128	0
.L387:
	.section	.debug_info,,n
	.sleb128	0
.L379:
	.section	.debug_info,,n
	.sleb128	0
.L368:
	.section	.debug_info,,n
	.sleb128	0
.L353:
	.section	.debug_info,,n
.L390:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L391
	.uleb128	206
	.uleb128	33
	.byte		"LinIf_GlobalInitStsFlag"
	.byte		0
	.4byte		.L372
	.0byte		.L390
.L392:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L391
	.uleb128	220
	.uleb128	63
	.byte		"LinIf_GlobalConfig_p"
	.byte		0
	.4byte		.L393
.L397:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L391
	.uleb128	228
	.uleb128	64
	.byte		"LinIf_ConfigChannel_Reloc_p"
	.byte		0
	.4byte		.L398
.L402:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L391
	.uleb128	241
	.uleb128	66
	.byte		"LinIf_ConfigChannelLT_p"
	.byte		0
	.4byte		.L403
	.section	.debug_info,,n
	.section	.debug_info,,n
.L396:
	.sleb128	9
	.4byte		.L408
	.uleb128	322
	.uleb128	1
	.4byte		.L409-.L2
	.uleb128	20
	.section	.debug_info,,n
.L252:
	.sleb128	10
	.byte		"MaxLinIfChannel"
	.byte		0
	.4byte		.L410
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L253:
	.sleb128	10
	.byte		"LinIfChannel_p"
	.byte		0
	.4byte		.L398
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L254:
	.sleb128	10
	.byte		"PBtoPCHashValue_P"
	.byte		0
	.4byte		.L411
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L255:
	.sleb128	10
	.byte		"PBtoLTHashValue_P"
	.byte		0
	.4byte		.L411
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L256:
	.sleb128	10
	.byte		"LinIf_ConfirmationULConfig_p"
	.byte		0
	.4byte		.L415
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L409:
.L407:
	.sleb128	9
	.4byte		.L408
	.uleb128	322
	.uleb128	1
	.4byte		.L419-.L2
	.uleb128	32
.L240:
	.sleb128	10
	.byte		"LinTrcvDrvCalls_p"
	.byte		0
	.4byte		.L420
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L241:
	.sleb128	10
	.byte		"WakeupSourceIdLin"
	.byte		0
	.4byte		.L412
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L242:
	.sleb128	10
	.byte		"WakeupSourceIdTrcv"
	.byte		0
	.4byte		.L412
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L243:
	.sleb128	10
	.byte		"LinIfChannelIndex"
	.byte		0
	.4byte		.L424
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L244:
	.sleb128	10
	.byte		"ExternalChannelIndex"
	.byte		0
	.4byte		.L425
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
.L245:
	.sleb128	10
	.byte		"LinIfDelayForSleep"
	.byte		0
	.4byte		.L412
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L246:
	.sleb128	10
	.byte		"LinIfStartupState"
	.byte		0
	.4byte		.L427
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L247:
	.sleb128	10
	.byte		"LinDrvCalls_p"
	.byte		0
	.4byte		.L430
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L248:
	.sleb128	10
	.byte		"LinIf_channelManager_p"
	.byte		0
	.4byte		.L434
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
	.sleb128	0
.L419:
.L401:
	.sleb128	9
	.4byte		.L408
	.uleb128	322
	.uleb128	1
	.4byte		.L435-.L2
	.uleb128	24
.L233:
	.sleb128	10
	.byte		"LinIfMaxLinFrames"
	.byte		0
	.4byte		.L424
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L234:
	.sleb128	10
	.byte		"LinIfMaxSchedules"
	.byte		0
	.4byte		.L424
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L235:
	.sleb128	10
	.byte		"LinIfFrame_p"
	.byte		0
	.4byte		.L335
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L236:
	.sleb128	10
	.byte		"LinIfScheduleTable_p"
	.byte		0
	.4byte		.L436
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L237:
	.sleb128	10
	.byte		"ETCollisionDetectd_p"
	.byte		0
	.4byte		.L440
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L238:
	.sleb128	10
	.byte		"SPPendingRequest_p"
	.byte		0
	.4byte		.L440
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L239:
	.sleb128	10
	.byte		"LinIf_ScheduleTableEntry_p"
	.byte		0
	.4byte		.L441
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L435:
.L326:
	.sleb128	9
	.4byte		.L408
	.uleb128	322
	.uleb128	1
	.4byte		.L442-.L2
	.uleb128	48
.L223:
	.sleb128	10
	.byte		"LinIf_NewScheduleTableType"
	.byte		0
	.4byte		.L443
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L224:
	.sleb128	10
	.byte		"LinIf_RunContSchTableIndexRequested"
	.byte		0
	.4byte		.L445
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L225:
	.sleb128	10
	.byte		"LinIf_RunOnceSchTableRequested"
	.byte		0
	.4byte		.L445
	.sleb128	2
	.byte		0x23
	.uleb128	5
	.byte		0x1
.L226:
	.sleb128	10
	.byte		"LinIf_EntryDelayCounter"
	.byte		0
	.4byte		.L329
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L227:
	.sleb128	10
	.byte		"LinIf_SleepDelayCounter"
	.byte		0
	.4byte		.L413
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L228:
	.sleb128	10
	.byte		"LinIf_ScheduleTableIndex"
	.byte		0
	.4byte		.L445
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L229:
	.sleb128	10
	.byte		"LinIf_ScheduleTableType"
	.byte		0
	.4byte		.L443
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L230:
	.sleb128	10
	.byte		"LinIf_BusStatus"
	.byte		0
	.4byte		.L446
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L231:
	.sleb128	10
	.byte		"LinIf_ChannelSubState"
	.byte		0
	.4byte		.L448
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L232:
	.sleb128	10
	.byte		"LinIf_ChannelState"
	.byte		0
	.4byte		.L428
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
	.sleb128	0
.L442:
.L447:
	.sleb128	9
	.4byte		.L408
	.uleb128	322
	.uleb128	1
	.4byte		.L450-.L2
	.uleb128	20
.L219:
	.sleb128	10
	.byte		"Lin_DriverGetStatusVal"
	.byte		0
	.4byte		.L451
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L220:
	.sleb128	10
	.byte		"LinIf_frameStatus"
	.byte		0
	.4byte		.L452
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L221:
	.sleb128	10
	.byte		"LinIf_frameEntry_p"
	.byte		0
	.4byte		.L454
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L222:
	.sleb128	10
	.byte		"LinIf_RxData"
	.byte		0
	.4byte		.L458
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L450:
.L439:
	.sleb128	9
	.4byte		.L408
	.uleb128	322
	.uleb128	1
	.4byte		.L460-.L2
	.uleb128	20
.L213:
	.sleb128	10
	.byte		"LinIfResumePosition"
	.byte		0
	.4byte		.L461
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L214:
	.sleb128	10
	.byte		"LinIfRunMode"
	.byte		0
	.4byte		.L464
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L215:
	.sleb128	10
	.byte		"LinIfScheduleMode"
	.byte		0
	.4byte		.L467
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L216:
	.sleb128	10
	.byte		"LinIfScheduleTableIndex"
	.byte		0
	.4byte		.L470
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L217:
	.sleb128	10
	.byte		"LinIfMaxSchEntry"
	.byte		0
	.4byte		.L424
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
.L218:
	.sleb128	10
	.byte		"LinIfEntry_p"
	.byte		0
	.4byte		.L454
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L460:
.L457:
	.sleb128	9
	.4byte		.L408
	.uleb128	322
	.uleb128	1
	.4byte		.L471-.L2
	.uleb128	8
.L210:
	.sleb128	10
	.byte		"LinIfDelay"
	.byte		0
	.4byte		.L410
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L211:
	.sleb128	10
	.byte		"LinIfCollisionResolvingRef"
	.byte		0
	.4byte		.L470
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L212:
	.sleb128	10
	.byte		"LinIfFrameRef"
	.byte		0
	.4byte		.L335
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L471:
.L338:
	.sleb128	9
	.4byte		.L408
	.uleb128	322
	.uleb128	1
	.4byte		.L472-.L2
	.uleb128	32
.L196:
	.sleb128	10
	.byte		"LinIfChecksumType"
	.byte		0
	.4byte		.L473
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L197:
	.sleb128	10
	.byte		"LinIfFrameType"
	.byte		0
	.4byte		.L475
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L198:
	.sleb128	10
	.byte		"LinIfLength"
	.byte		0
	.4byte		.L478
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L199:
	.sleb128	10
	.byte		"LinIfPid"
	.byte		0
	.4byte		.L480
	.sleb128	2
	.byte		0x23
	.uleb128	9
	.byte		0x1
.L200:
	.sleb128	10
	.byte		"LinIfTxConfirmationId"
	.byte		0
	.4byte		.L482
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L201:
	.sleb128	10
	.byte		"LinIfPduDirection"
	.byte		0
	.4byte		.L483
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L202:
	.sleb128	10
	.byte		"LinIfFixedFrameSduData"
	.byte		0
	.4byte		.L485
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
.L203:
	.sleb128	10
	.byte		"LinIfRxTxTargetPduRef"
	.byte		0
	.4byte		.L482
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L204:
	.sleb128	10
	.byte		"LinIfSubsFrames_p"
	.byte		0
	.4byte		.L487
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L205:
	.sleb128	10
	.byte		"LinIfNoOfSubEntry"
	.byte		0
	.4byte		.L424
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L206:
	.sleb128	10
	.byte		"LinIfFunctionIndex"
	.byte		0
	.4byte		.L410
	.sleb128	2
	.byte		0x23
	.uleb128	30
	.byte		0x1
	.sleb128	0
.L472:
.L490:
	.sleb128	9
	.4byte		.L408
	.uleb128	322
	.uleb128	1
	.4byte		.L491-.L2
	.uleb128	2
.L194:
	.sleb128	10
	.byte		"LinIfSubFrameIndex"
	.byte		0
	.4byte		.L424
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L195:
	.sleb128	10
	.byte		"LinIfSubFramePriority"
	.byte		0
	.4byte		.L424
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
	.sleb128	0
.L491:
.L418:
	.sleb128	9
	.4byte		.L408
	.uleb128	322
	.uleb128	1
	.4byte		.L492-.L2
	.uleb128	12
.L191:
	.sleb128	10
	.byte		"GotoSleepConfirmationUL"
	.byte		0
	.4byte		.L493
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L192:
	.sleb128	10
	.byte		"WakeupConfirmationUL"
	.byte		0
	.4byte		.L493
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L193:
	.sleb128	10
	.byte		"ScheduleRequestConfirmationUL"
	.byte		0
	.4byte		.L493
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L492:
.L423:
	.sleb128	9
	.4byte		.L408
	.uleb128	232
	.uleb128	14
	.4byte		.L496-.L2
	.uleb128	20
.L183:
	.sleb128	10
	.byte		"LinTrcv_SetOpMode_p"
	.byte		0
	.4byte		.L497
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L184:
	.sleb128	10
	.byte		"LinTrcv_GetOpMode_p"
	.byte		0
	.4byte		.L502
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L185:
	.sleb128	10
	.byte		"LinTrcv_GetBusWuReason_p"
	.byte		0
	.4byte		.L506
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L186:
	.sleb128	10
	.byte		"LinTrcv_SetWakeupMode_p"
	.byte		0
	.4byte		.L512
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L187:
	.sleb128	10
	.byte		"LinTrcv_CheckWakeup_p"
	.byte		0
	.4byte		.L517
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L496:
.L433:
	.sleb128	9
	.4byte		.L408
	.uleb128	184
	.uleb128	1
	.4byte		.L520-.L2
	.uleb128	24
.L177:
	.sleb128	10
	.byte		"Lin_SendFrame_p"
	.byte		0
	.4byte		.L521
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L178:
	.sleb128	10
	.byte		"Lin_GoToSleep_p"
	.byte		0
	.4byte		.L527
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L179:
	.sleb128	10
	.byte		"Lin_GoToSleepInternal_p"
	.byte		0
	.4byte		.L530
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L180:
	.sleb128	10
	.byte		"Lin_Wakeup_p"
	.byte		0
	.4byte		.L533
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L181:
	.sleb128	10
	.byte		"Lin_GetStatus_p"
	.byte		0
	.4byte		.L536
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L182:
	.sleb128	10
	.byte		"Lin_CheckWakeup_p"
	.byte		0
	.4byte		.L540
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L520:
.L526:
	.sleb128	9
	.4byte		.L543
	.uleb128	59
	.uleb128	13
	.4byte		.L544-.L2
	.uleb128	8
.L92:
	.sleb128	10
	.byte		"Pid"
	.byte		0
	.4byte		.L481
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L93:
	.sleb128	10
	.byte		"Cs"
	.byte		0
	.4byte		.L474
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L94:
	.sleb128	10
	.byte		"Drc"
	.byte		0
	.4byte		.L484
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L95:
	.sleb128	10
	.byte		"Dl"
	.byte		0
	.4byte		.L479
	.sleb128	2
	.byte		0x23
	.uleb128	3
	.byte		0x1
.L96:
	.sleb128	10
	.byte		"SduPtr"
	.byte		0
	.4byte		.L441
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L544:
	.section	.debug_info,,n
.L362:
	.sleb128	11
	.4byte		.L545
	.uleb128	69
	.uleb128	1
	.4byte		.L546-.L2
	.byte		"VSTAR_PduInfoType"
	.byte		0
	.uleb128	8
.L88:
	.sleb128	10
	.byte		"SduDataPtr"
	.byte		0
	.4byte		.L441
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L89:
	.sleb128	10
	.byte		"SduLength"
	.byte		0
	.4byte		.L547
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L546:
	.section	.debug_info,,n
.L495:
	.sleb128	12
	.4byte		.L408
	.uleb128	322
	.uleb128	1
	.4byte		.L548-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	13
	.byte		"LIN_SM"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"CDD"
	.byte		0
	.sleb128	1
	.sleb128	0
.L548:
.L469:
	.sleb128	12
	.4byte		.L408
	.uleb128	232
	.uleb128	14
	.4byte		.L549-.L2
	.uleb128	4
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
.L549:
.L453:
	.sleb128	12
	.4byte		.L408
	.uleb128	184
	.uleb128	1
	.4byte		.L550-.L2
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
.L550:
.L477:
	.sleb128	12
	.4byte		.L408
	.uleb128	110
	.uleb128	1
	.4byte		.L551-.L2
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
.L551:
.L463:
	.sleb128	12
	.4byte		.L408
	.uleb128	102
	.uleb128	1
	.4byte		.L552-.L2
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
.L552:
.L449:
	.sleb128	12
	.4byte		.L408
	.uleb128	87
	.uleb128	1
	.4byte		.L553-.L2
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
.L553:
.L429:
	.sleb128	12
	.4byte		.L408
	.uleb128	79
	.uleb128	1
	.4byte		.L554-.L2
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
.L554:
.L444:
	.sleb128	12
	.4byte		.L408
	.uleb128	70
	.uleb128	1
	.4byte		.L555-.L2
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
.L555:
.L466:
	.sleb128	12
	.4byte		.L408
	.uleb128	63
	.uleb128	1
	.4byte		.L556-.L2
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
.L556:
.L501:
	.sleb128	12
	.4byte		.L543
	.uleb128	59
	.uleb128	13
	.4byte		.L557-.L2
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
.L557:
.L511:
	.sleb128	12
	.4byte		.L543
	.uleb128	49
	.uleb128	13
	.4byte		.L558-.L2
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
.L558:
.L516:
	.sleb128	12
	.4byte		.L543
	.uleb128	42
	.uleb128	13
	.4byte		.L559-.L2
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
.L559:
	.section	.debug_info,,n
.L325:
	.sleb128	14
	.byte		"LinIfChannelManager"
	.byte		0
	.4byte		.L326
	.section	.debug_info,,n
.L324:
	.sleb128	15
	.4byte		.L325
	.section	.debug_info,,n
.L330:
	.sleb128	16
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L329:
	.sleb128	14
	.byte		"uint16"
	.byte		0
	.4byte		.L330
.L328:
	.sleb128	14
	.byte		"PduIdType"
	.byte		0
	.4byte		.L329
.L333:
	.sleb128	16
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L332:
	.sleb128	14
	.byte		"uint8"
	.byte		0
	.4byte		.L333
.L337:
	.sleb128	14
	.byte		"LinIfFrame"
	.byte		0
	.4byte		.L338
	.section	.debug_info,,n
.L336:
	.sleb128	17
	.4byte		.L337
.L335:
	.sleb128	15
	.4byte		.L336
.L356:
	.sleb128	14
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L332
.L361:
	.sleb128	14
	.byte		"PduInfoType"
	.byte		0
	.4byte		.L362
.L360:
	.sleb128	17
	.4byte		.L361
.L359:
	.sleb128	15
	.4byte		.L360
.L372:
	.sleb128	14
	.byte		"boolean"
	.byte		0
	.4byte		.L333
.L395:
	.sleb128	14
	.byte		"LinIf_ConfigType"
	.byte		0
	.4byte		.L396
.L394:
	.sleb128	17
	.4byte		.L395
.L393:
	.sleb128	15
	.4byte		.L394
.L400:
	.sleb128	14
	.byte		"LinIfChannelReloc"
	.byte		0
	.4byte		.L401
.L399:
	.sleb128	17
	.4byte		.L400
.L398:
	.sleb128	15
	.4byte		.L399
.L406:
	.sleb128	14
	.byte		"LinIfChannel"
	.byte		0
	.4byte		.L407
.L405:
	.sleb128	17
	.4byte		.L406
.L404:
	.sleb128	15
	.4byte		.L405
.L403:
	.sleb128	17
	.4byte		.L404
.L410:
	.sleb128	17
	.4byte		.L329
.L414:
	.sleb128	16
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L413:
	.sleb128	14
	.byte		"uint32"
	.byte		0
	.4byte		.L414
.L412:
	.sleb128	17
	.4byte		.L413
.L411:
	.sleb128	15
	.4byte		.L412
.L417:
	.sleb128	14
	.byte		"LinIf_ConfirmationULConfig_t"
	.byte		0
	.4byte		.L418
.L416:
	.sleb128	17
	.4byte		.L417
.L415:
	.sleb128	15
	.4byte		.L416
.L422:
	.sleb128	14
	.byte		"LinIf_LinTrcvDrvCalls_t"
	.byte		0
	.4byte		.L423
.L421:
	.sleb128	17
	.4byte		.L422
.L420:
	.sleb128	15
	.4byte		.L421
.L424:
	.sleb128	17
	.4byte		.L332
.L426:
	.sleb128	14
	.byte		"NetworkHandleType"
	.byte		0
	.4byte		.L332
.L425:
	.sleb128	17
	.4byte		.L426
.L428:
	.sleb128	14
	.byte		"LinIf_ChannelState_t"
	.byte		0
	.4byte		.L429
.L427:
	.sleb128	17
	.4byte		.L428
.L432:
	.sleb128	14
	.byte		"LinIf_LinDrvCalls_t"
	.byte		0
	.4byte		.L433
.L431:
	.sleb128	17
	.4byte		.L432
.L430:
	.sleb128	15
	.4byte		.L431
.L434:
	.sleb128	17
	.4byte		.L324
.L438:
	.sleb128	14
	.byte		"LinIfScheduleTable"
	.byte		0
	.4byte		.L439
.L437:
	.sleb128	17
	.4byte		.L438
.L436:
	.sleb128	15
	.4byte		.L437
.L440:
	.sleb128	15
	.4byte		.L372
.L441:
	.sleb128	15
	.4byte		.L332
.L443:
	.sleb128	14
	.byte		"LinIfSchTableType_t"
	.byte		0
	.4byte		.L444
.L445:
	.sleb128	14
	.byte		"LinIf_SchHandleType"
	.byte		0
	.4byte		.L332
.L446:
	.sleb128	14
	.byte		"LinIf_BusStatusStruct"
	.byte		0
	.4byte		.L447
.L448:
	.sleb128	14
	.byte		"LinIf_ChannelSubState_t"
	.byte		0
	.4byte		.L449
.L451:
	.sleb128	14
	.byte		"Lin_StatusType"
	.byte		0
	.4byte		.L332
.L452:
	.sleb128	14
	.byte		"LinIf_frameStatusType"
	.byte		0
	.4byte		.L453
.L456:
	.sleb128	14
	.byte		"LinIfEntry"
	.byte		0
	.4byte		.L457
.L455:
	.sleb128	17
	.4byte		.L456
.L454:
	.sleb128	15
	.4byte		.L455
	.section	.debug_info,,n
.L458:
	.sleb128	18
	.4byte		.L459-.L2
	.4byte		.L332
	.section	.debug_info,,n
	.sleb128	19
	.uleb128	7
	.sleb128	0
.L459:
.L462:
	.sleb128	14
	.byte		"LinIfResumePosition_t"
	.byte		0
	.4byte		.L463
.L461:
	.sleb128	17
	.4byte		.L462
.L465:
	.sleb128	14
	.byte		"LinIfRunMode_t"
	.byte		0
	.4byte		.L466
.L464:
	.sleb128	17
	.4byte		.L465
.L468:
	.sleb128	14
	.byte		"LinTp_Mode"
	.byte		0
	.4byte		.L469
.L467:
	.sleb128	17
	.4byte		.L468
.L470:
	.sleb128	17
	.4byte		.L445
.L474:
	.sleb128	14
	.byte		"Lin_FrameCsModelType"
	.byte		0
	.4byte		.L332
.L473:
	.sleb128	17
	.4byte		.L474
.L476:
	.sleb128	14
	.byte		"LinIfFrameType_t"
	.byte		0
	.4byte		.L477
.L475:
	.sleb128	17
	.4byte		.L476
.L479:
	.sleb128	14
	.byte		"Lin_FrameDlType"
	.byte		0
	.4byte		.L332
.L478:
	.sleb128	17
	.4byte		.L479
.L481:
	.sleb128	14
	.byte		"Lin_FramePidType"
	.byte		0
	.4byte		.L332
.L480:
	.sleb128	17
	.4byte		.L481
.L482:
	.sleb128	17
	.4byte		.L328
.L484:
	.sleb128	14
	.byte		"Lin_FrameResponseType"
	.byte		0
	.4byte		.L332
.L483:
	.sleb128	17
	.4byte		.L484
.L485:
	.sleb128	18
	.4byte		.L486-.L2
	.4byte		.L424
	.sleb128	19
	.uleb128	7
	.sleb128	0
.L486:
.L489:
	.sleb128	14
	.byte		"LinIfSubstitutionFrames"
	.byte		0
	.4byte		.L490
.L488:
	.sleb128	17
	.4byte		.L489
.L487:
	.sleb128	15
	.4byte		.L488
.L494:
	.sleb128	14
	.byte		"LinIf_ConfirmationUL_t"
	.byte		0
	.4byte		.L495
.L493:
	.sleb128	17
	.4byte		.L494
	.section	.debug_info,,n
.L498:
	.sleb128	20
	.4byte		.L499-.L2
	.4byte		.L356
	.byte		0x1
	.section	.debug_info,,n
	.sleb128	21
	.4byte		.L332
.L500:
	.sleb128	14
	.byte		"LinTrcv_TrcvModeType"
	.byte		0
	.4byte		.L501
	.sleb128	21
	.4byte		.L500
	.sleb128	0
.L499:
.L497:
	.sleb128	15
	.4byte		.L498
.L503:
	.sleb128	20
	.4byte		.L504-.L2
	.4byte		.L356
	.byte		0x1
	.sleb128	21
	.4byte		.L332
.L505:
	.sleb128	15
	.4byte		.L500
	.sleb128	21
	.4byte		.L505
	.sleb128	0
.L504:
.L502:
	.sleb128	15
	.4byte		.L503
.L507:
	.sleb128	20
	.4byte		.L508-.L2
	.4byte		.L356
	.byte		0x1
	.sleb128	21
	.4byte		.L332
.L510:
	.sleb128	14
	.byte		"LinTrcv_TrcvWakeupReasonType"
	.byte		0
	.4byte		.L511
.L509:
	.sleb128	15
	.4byte		.L510
	.sleb128	21
	.4byte		.L509
	.sleb128	0
.L508:
.L506:
	.sleb128	15
	.4byte		.L507
.L513:
	.sleb128	20
	.4byte		.L514-.L2
	.4byte		.L356
	.byte		0x1
	.sleb128	21
	.4byte		.L332
.L515:
	.sleb128	14
	.byte		"LinTrcv_TrcvWakeupModeType"
	.byte		0
	.4byte		.L516
	.sleb128	21
	.4byte		.L515
	.sleb128	0
.L514:
.L512:
	.sleb128	15
	.4byte		.L513
.L518:
	.sleb128	20
	.4byte		.L519-.L2
	.4byte		.L356
	.byte		0x1
	.sleb128	21
	.4byte		.L332
	.sleb128	0
.L519:
.L517:
	.sleb128	15
	.4byte		.L518
.L522:
	.sleb128	20
	.4byte		.L523-.L2
	.4byte		.L356
	.byte		0x1
	.sleb128	21
	.4byte		.L332
.L525:
	.sleb128	14
	.byte		"Lin_PduType"
	.byte		0
	.4byte		.L526
.L524:
	.sleb128	15
	.4byte		.L525
	.sleb128	21
	.4byte		.L524
	.sleb128	0
.L523:
.L521:
	.sleb128	15
	.4byte		.L522
.L528:
	.sleb128	20
	.4byte		.L529-.L2
	.4byte		.L356
	.byte		0x1
	.sleb128	21
	.4byte		.L332
	.sleb128	0
.L529:
.L527:
	.sleb128	15
	.4byte		.L528
.L531:
	.sleb128	20
	.4byte		.L532-.L2
	.4byte		.L356
	.byte		0x1
	.sleb128	21
	.4byte		.L332
	.sleb128	0
.L532:
.L530:
	.sleb128	15
	.4byte		.L531
.L534:
	.sleb128	20
	.4byte		.L535-.L2
	.4byte		.L356
	.byte		0x1
	.sleb128	21
	.4byte		.L332
	.sleb128	0
.L535:
.L533:
	.sleb128	15
	.4byte		.L534
.L537:
	.sleb128	20
	.4byte		.L538-.L2
	.4byte		.L451
	.byte		0x1
	.sleb128	21
	.4byte		.L332
.L539:
	.sleb128	15
	.4byte		.L441
	.sleb128	21
	.4byte		.L539
	.sleb128	0
.L538:
.L536:
	.sleb128	15
	.4byte		.L537
.L541:
	.sleb128	20
	.4byte		.L542-.L2
	.4byte		.L356
	.byte		0x1
	.sleb128	21
	.4byte		.L332
	.sleb128	0
.L542:
.L540:
	.sleb128	15
	.4byte		.L541
.L547:
	.sleb128	14
	.byte		"PduLengthType"
	.byte		0
	.4byte		.L329
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L331:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),3
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),3
	.d2locend
.L334:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo7),4
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo6),31
	.d2locend
.L339:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),5
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo4),5
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo6),5
	.d2locend
.L341:
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo11),4
	.d2locend
.L343:
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo2),6
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo6),6
	.d2locend
.L349:
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo2),30
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo14),30
	.d2locend
.L351:
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo16),7
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo18),7
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo2),7
	.d2locend
.L358:
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo21),3
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo23),31
	.d2locend
.L364:
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo25),30
	.d2locend
.L370:
	.d2locreg	%offsetof(.Llo26), %offsetof(.Llo27),3
	.d2locend
.L373:
	.d2locreg	%offsetof(.Llo28), %offsetof(.Llo29),29
	.d2locreg	%offsetof(.Llo30), %offsetof(.Llo27),29
	.d2locend
.L375:
	.d2locreg	%offsetof(.Llo31), %offsetof(.Llo23),28
	.d2locend
.L381:
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo33),4
	.d2locreg	%offsetof(.Llo34), %offsetof(.Llo35),4
	.d2locreg	%offsetof(.Llo36), %offsetof(.Llo37),27
	.d2locend
.L383:
	.d2locreg	%offsetof(.Llo35), %offsetof(.Llo37),26
	.d2locend
.L389:
	.d2locreg	%offsetof(.Llo38), %offsetof(.Llo39),5
	.d2locreg	%offsetof(.Llo40), %offsetof(.Llo41),5
	.d2locreg	%offsetof(.Llo42), %offsetof(.Llo43),5
	.d2locreg	%offsetof(.Llo44), %offsetof(.Llo45),5
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "LinIf_Transmit"
	.wrcm.nint32 "frameSize", 48
	.wrcm.nstrlist "calls", "LinIf_Transmit_FindAndHandleSubframeForSporadic"
	.wrcm.end
	.wrcm.nelem "LinIf_Transmit_FindAndHandleSubframeForSporadic"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\LinIf_Transmit.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\LinIf_Transmit.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\LinIf_Transmit.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\LinIf_Transmit.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\LinIf_Transmit.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\LinIf_Transmit.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\LinIf\ssc\make\..\src\LinIf_Transmit.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
