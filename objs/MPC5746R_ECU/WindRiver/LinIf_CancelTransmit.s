#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"LinIf_CancelTransmit.c"
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
# FUNC (Std_ReturnType, LINIF_CODE) LinIf_CancelTransmit(PduIdType LinTxPduId)
	.align		2
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinIf\\ssc\\make\\..\\src\\LinIf_CancelTransmit.c"
        .d2line         46,35
#$$ld
.L298:

#$$bf	LinIf_CancelTransmit,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r30,r31,cr0,lr
	.globl		LinIf_CancelTransmit
	.d2_cfa_start __cie
LinIf_CancelTransmit:
.Llo1:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r0,r3		# LinTxPduId=r0 LinTxPduId=r3
	.d2prologue_end
# {
# 
#     /* Check whether the LinIf module is already initialized */
#     if (LINIF_UNINIT == LinIf_GlobalInitStsFlag)
	.d2line		50
	lis		r3,LinIf_GlobalInitStsFlag@ha
.Llo2:
	lbz		r3,LinIf_GlobalInitStsFlag@l(r3)
	se_cmpi		r3,0
	bc		1,2,.L280	# eq
	.section	.text_vle
.L309:
#     {
# #if ( LINIF_DEV_ERROR_DETECT == STD_ON )
#             (void)Det_ReportError (LINIF_MODULE_ID,
#                         LINIF_INSTANCE_ID,
#                         LINIF_CANCEL_TRANSMIT_FUN_ID,
#                         LINIF_E_UNINIT); /*[LINIF535]*/
# #endif /* LINIF_DEV_ERROR_DETECT */
#     }
#     else
#     {
#         VAR (uint16, AUTOMATIC) channelIndex;
#         VAR (boolean, AUTOMATIC) frameFound = FALSE;
	.d2line		62
.Llo3:
	diab.li		r7,0		# frameFound=r7
# 
#         /* Iterate through all Lin Channels */
#         for (channelIndex = 0U;
	.d2line		65
.Llo6:
	diab.li		r3,0
.L281:
.Llo5:
	rlwinm		r5,r3,0,16,31		# linIfChannelReloc=r5 channelIndex=r3
.Llo19:
	lis		r4,LinIf_GlobalConfig_p@ha		# frameIndex=r4
.Llo7:
	lwz		r4,LinIf_GlobalConfig_p@l(r4)		# frameIndex=r4 frameIndex=r4
	lhz		r4,0(r4)		# frameIndex=r4 frameIndex=r4
	se_cmp		r5,r4		# linIfChannelReloc=r5 frameIndex=r4
	bc		0,0,.L280	# ge
	.section	.text_vle
.L318:
#              channelIndex < LinIf_GlobalConfig_p->MaxLinIfChannel;
#              channelIndex++)
#         {
#             VAR (uint8, AUTOMATIC) frameIndex;
#             P2CONST (LinIfChannel, AUTOMATIC, LINIF_APPL_DATA) linChannel = &(LinIf_ConfigChannelLT_p[channelIndex]);
	.d2line		70
.Llo8:
	lis		r4,LinIf_ConfigChannelLT_p@ha		# frameIndex=r4
.Llo9:
	lwz		r4,LinIf_ConfigChannelLT_p@l(r4)		# frameIndex=r4 frameIndex=r4
	rlwinm		r5,r3,5,11,26		# linChannel=r5 channelIndex=r3
.Llo15:
	se_add		r4,r5		# frameIndex=r4 frameIndex=r4 linChannel=r5
.Llo10:
	mr		r4,r4		# linChannel=r4 linChannel=r4
#             P2CONST(LinIfChannelReloc,AUTOMATIC, LINIF_CONST) linIfChannelReloc = &LinIf_ConfigChannel_Reloc_p[linChannel->LinIfChannelIndex];
	.d2line		71
	lbz		r5,12(r4)		# linChannel=r5 linChannel=r4
.Llo16:
	lis		r4,LinIf_ConfigChannel_Reloc_p@ha		# linChannel=r4
.Llo17:
	lwz		r4,LinIf_ConfigChannel_Reloc_p@l(r4)		# linChannel=r4 linChannel=r4
	rlwinm		r6,r5,5,0,26		# linChannel=r5
	se_slwi		r5,3		# linChannel=r5 linChannel=r5
	subf		r5,r5,r6		# linChannel=r5 linChannel=r5
	se_add		r4,r5		# linChannel=r4 linChannel=r4 linChannel=r5
.Llo18:
	mr		r5,r4		# linIfChannelReloc=r5 linIfChannelReloc=r4
# 
#             /* Iterate through all Frames in each Lin Channels */
#             for (frameIndex = 0U;
	.d2line		74
	diab.li		r4,0		# frameIndex=r4
.L284:
.Llo11:
	rlwinm		r6,r4,0,24,31		# frameIndex=r4
.Llo20:
	lbz		r31,0(r5)		# linIfChannelReloc=r5
	se_cmp		r6,r31
	bc		0,0,.L288	# ge
#                     frameIndex < linIfChannelReloc->LinIfMaxLinFrames;
#                     frameIndex++)
#             {
#                 /* Check whether the incoming PduId is matching with the PduId of the frame */
#                 if (LinTxPduId == linIfChannelReloc->LinIfFrame_p[frameIndex].LinIfRxTxTargetPduRef)
	.d2line		79
	rlwinm		r31,r0,0,16,31		# LinTxPduId=r0
	lwz		r30,4(r5)		# linIfChannelReloc=r5
	rlwinm		r6,r4,5,19,26		# frameIndex=r4
	se_add		r6,r30
	lhz		r6,22(r6)
	se_cmp		r31,r6
	bc		0,2,.L287	# ne
#                 {
#                     /* channel and PDU found */
#                     frameFound = TRUE;
	.d2line		82
	diab.li		r7,1		# frameFound=r7
	b		.L288
.L287:
#                     break;
#                 }
#             }
	.d2line		85
	diab.addi		r6,r4,1		# frameIndex=r4
	se_addi		r4,1		# frameIndex=r4 frameIndex=r4
	b		.L284
.L288:
#             if (frameFound == TRUE)
	.d2line		86
.Llo12:
	rlwinm		r4,r7,0,24,31		# frameIndex=r4 frameFound=r7
.Llo13:
	se_cmpi		r4,1		# frameIndex=r4
	bc		1,2,.L280	# eq
	.section	.text_vle
.L319:
#             {
#                 break;
#             }
#         }
	.d2line		90
.Llo14:
	diab.addi		r5,r3,1		# linIfChannelReloc=r5 channelIndex=r3
	se_addi		r3,1		# channelIndex=r3 channelIndex=r3
	b		.L281
	.section	.text_vle
.L310:
.L280:
# #if ( LINIF_DEV_ERROR_DETECT == STD_ON )
#         if (FALSE == frameFound)
#         {
#             (void)Det_ReportError (LINIF_MODULE_ID,
#                     LINIF_INSTANCE_ID,
#                     LINIF_CANCEL_TRANSMIT_FUN_ID,
#                     LINIF_E_PARAMETER); /*[LINIF594]*/
#         }
# #endif
#     }
# 
#     return E_NOT_OK; /* as for return value, always rejects with E_NOT_OK [LINIF649] */
	.d2line		102
.Llo4:
	diab.li		r3,1		# channelIndex=r3
# } /* End of LinIf_CancelTransmit() */
	.d2line		103
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# LinTxPduId=r0
	mtspr		lr,r0		# LinTxPduId=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L299:
	.type		LinIf_CancelTransmit,@function
	.size		LinIf_CancelTransmit,.-LinIf_CancelTransmit
# Number of nodes = 76

# Allocations for LinIf_CancelTransmit
#	?a4		LinTxPduId
#	?a5		$$83
#	?a6		channelIndex
#	?a7		frameFound
#	?a8		frameIndex
#	?a9		linChannel
#	?a10		linIfChannelReloc

# Allocations for module
	.section	.text_vle
	.0byte		.L344
	.section	.text_vle
#$$ld
.L5:
.L488:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\AUTOSAR\\ar422\\Lin_GeneralTypes.h"
.L346:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinIf\\ssc\\make\\..\\inc\\LinIf_Types.h"
.L337:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinIf\\ssc\\make\\..\\inc\\LinIf_Private.h"
.L300:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinIf\\ssc\\make\\..\\src\\LinIf_CancelTransmit.c"
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
	.uleb128	5
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
	.uleb128	38
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	14
	.uleb128	15
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
	.uleb128	17
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
	.uleb128	18
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinIf\\ssc\\make\\..\\src\\LinIf_CancelTransmit.c"
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
.L304:
	.sleb128	2
	.4byte		.L297-.L2
	.byte		"LinIf_CancelTransmit"
	.byte		0
	.4byte		.L300
	.uleb128	46
	.uleb128	35
	.4byte		.L301
	.byte		0x1
	.byte		0x1
	.4byte		.L298
	.4byte		.L299
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L300
	.uleb128	46
	.uleb128	35
	.byte		"LinTxPduId"
	.byte		0
	.4byte		.L305
	.4byte		.L308
	.section	.debug_info,,n
	.sleb128	4
	.4byte		.L312
	.4byte		.L309
	.4byte		.L310
	.section	.debug_info,,n
.L313:
	.sleb128	5
	.4byte		.L300
	.uleb128	61
	.uleb128	33
	.byte		"channelIndex"
	.byte		0
	.4byte		.L306
	.4byte		.L314
.L315:
	.sleb128	5
	.4byte		.L300
	.uleb128	62
	.uleb128	34
	.byte		"frameFound"
	.byte		0
	.4byte		.L316
	.4byte		.L317
	.section	.debug_info,,n
	.sleb128	4
	.4byte		.L321
	.4byte		.L318
	.4byte		.L319
.L322:
	.sleb128	5
	.4byte		.L300
	.uleb128	69
	.uleb128	36
	.byte		"frameIndex"
	.byte		0
	.4byte		.L302
	.4byte		.L323
.L324:
	.sleb128	5
	.4byte		.L300
	.uleb128	70
	.uleb128	64
	.byte		"linChannel"
	.byte		0
	.4byte		.L325
	.4byte		.L329
.L330:
	.sleb128	5
	.4byte		.L300
	.uleb128	71
	.uleb128	63
	.byte		"linIfChannelReloc"
	.byte		0
	.4byte		.L331
	.4byte		.L335
	.section	.debug_info,,n
	.sleb128	0
.L321:
	.section	.debug_info,,n
	.sleb128	0
.L312:
	.section	.debug_info,,n
	.sleb128	0
.L297:
	.section	.debug_info,,n
.L336:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L337
	.uleb128	206
	.uleb128	33
	.byte		"LinIf_GlobalInitStsFlag"
	.byte		0
	.4byte		.L316
	.0byte		.L336
.L338:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L337
	.uleb128	220
	.uleb128	63
	.byte		"LinIf_GlobalConfig_p"
	.byte		0
	.4byte		.L339
.L343:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L337
	.uleb128	228
	.uleb128	64
	.byte		"LinIf_ConfigChannel_Reloc_p"
	.byte		0
	.4byte		.L331
.L344:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L337
	.uleb128	241
	.uleb128	66
	.byte		"LinIf_ConfigChannelLT_p"
	.byte		0
	.4byte		.L345
	.section	.debug_info,,n
	.section	.debug_info,,n
.L342:
	.sleb128	7
	.4byte		.L346
	.uleb128	322
	.uleb128	1
	.4byte		.L347-.L2
	.uleb128	20
	.section	.debug_info,,n
.L252:
	.sleb128	8
	.byte		"MaxLinIfChannel"
	.byte		0
	.4byte		.L348
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L253:
	.sleb128	8
	.byte		"LinIfChannel_p"
	.byte		0
	.4byte		.L331
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L254:
	.sleb128	8
	.byte		"PBtoPCHashValue_P"
	.byte		0
	.4byte		.L349
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L255:
	.sleb128	8
	.byte		"PBtoLTHashValue_P"
	.byte		0
	.4byte		.L349
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L256:
	.sleb128	8
	.byte		"LinIf_ConfirmationULConfig_p"
	.byte		0
	.4byte		.L353
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L347:
.L328:
	.sleb128	7
	.4byte		.L346
	.uleb128	322
	.uleb128	1
	.4byte		.L357-.L2
	.uleb128	32
.L240:
	.sleb128	8
	.byte		"LinTrcvDrvCalls_p"
	.byte		0
	.4byte		.L358
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L241:
	.sleb128	8
	.byte		"WakeupSourceIdLin"
	.byte		0
	.4byte		.L350
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L242:
	.sleb128	8
	.byte		"WakeupSourceIdTrcv"
	.byte		0
	.4byte		.L350
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L243:
	.sleb128	8
	.byte		"LinIfChannelIndex"
	.byte		0
	.4byte		.L362
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L244:
	.sleb128	8
	.byte		"ExternalChannelIndex"
	.byte		0
	.4byte		.L363
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
.L245:
	.sleb128	8
	.byte		"LinIfDelayForSleep"
	.byte		0
	.4byte		.L350
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L246:
	.sleb128	8
	.byte		"LinIfStartupState"
	.byte		0
	.4byte		.L365
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L247:
	.sleb128	8
	.byte		"LinDrvCalls_p"
	.byte		0
	.4byte		.L368
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L248:
	.sleb128	8
	.byte		"LinIf_channelManager_p"
	.byte		0
	.4byte		.L372
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
	.sleb128	0
.L357:
.L334:
	.sleb128	7
	.4byte		.L346
	.uleb128	322
	.uleb128	1
	.4byte		.L376-.L2
	.uleb128	24
.L233:
	.sleb128	8
	.byte		"LinIfMaxLinFrames"
	.byte		0
	.4byte		.L362
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L234:
	.sleb128	8
	.byte		"LinIfMaxSchedules"
	.byte		0
	.4byte		.L362
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L235:
	.sleb128	8
	.byte		"LinIfFrame_p"
	.byte		0
	.4byte		.L377
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L236:
	.sleb128	8
	.byte		"LinIfScheduleTable_p"
	.byte		0
	.4byte		.L381
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L237:
	.sleb128	8
	.byte		"ETCollisionDetectd_p"
	.byte		0
	.4byte		.L385
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L238:
	.sleb128	8
	.byte		"SPPendingRequest_p"
	.byte		0
	.4byte		.L385
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L239:
	.sleb128	8
	.byte		"LinIf_ScheduleTableEntry_p"
	.byte		0
	.4byte		.L386
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L376:
.L375:
	.sleb128	7
	.4byte		.L346
	.uleb128	322
	.uleb128	1
	.4byte		.L387-.L2
	.uleb128	48
.L223:
	.sleb128	8
	.byte		"LinIf_NewScheduleTableType"
	.byte		0
	.4byte		.L388
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L224:
	.sleb128	8
	.byte		"LinIf_RunContSchTableIndexRequested"
	.byte		0
	.4byte		.L390
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L225:
	.sleb128	8
	.byte		"LinIf_RunOnceSchTableRequested"
	.byte		0
	.4byte		.L390
	.sleb128	2
	.byte		0x23
	.uleb128	5
	.byte		0x1
.L226:
	.sleb128	8
	.byte		"LinIf_EntryDelayCounter"
	.byte		0
	.4byte		.L306
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L227:
	.sleb128	8
	.byte		"LinIf_SleepDelayCounter"
	.byte		0
	.4byte		.L351
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L228:
	.sleb128	8
	.byte		"LinIf_ScheduleTableIndex"
	.byte		0
	.4byte		.L390
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L229:
	.sleb128	8
	.byte		"LinIf_ScheduleTableType"
	.byte		0
	.4byte		.L388
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L230:
	.sleb128	8
	.byte		"LinIf_BusStatus"
	.byte		0
	.4byte		.L391
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L231:
	.sleb128	8
	.byte		"LinIf_ChannelSubState"
	.byte		0
	.4byte		.L393
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L232:
	.sleb128	8
	.byte		"LinIf_ChannelState"
	.byte		0
	.4byte		.L366
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
	.sleb128	0
.L387:
.L392:
	.sleb128	7
	.4byte		.L346
	.uleb128	322
	.uleb128	1
	.4byte		.L395-.L2
	.uleb128	20
.L219:
	.sleb128	8
	.byte		"Lin_DriverGetStatusVal"
	.byte		0
	.4byte		.L396
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L220:
	.sleb128	8
	.byte		"LinIf_frameStatus"
	.byte		0
	.4byte		.L397
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L221:
	.sleb128	8
	.byte		"LinIf_frameEntry_p"
	.byte		0
	.4byte		.L399
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L222:
	.sleb128	8
	.byte		"LinIf_RxData"
	.byte		0
	.4byte		.L403
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L395:
.L384:
	.sleb128	7
	.4byte		.L346
	.uleb128	322
	.uleb128	1
	.4byte		.L405-.L2
	.uleb128	20
.L213:
	.sleb128	8
	.byte		"LinIfResumePosition"
	.byte		0
	.4byte		.L406
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L214:
	.sleb128	8
	.byte		"LinIfRunMode"
	.byte		0
	.4byte		.L409
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L215:
	.sleb128	8
	.byte		"LinIfScheduleMode"
	.byte		0
	.4byte		.L412
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L216:
	.sleb128	8
	.byte		"LinIfScheduleTableIndex"
	.byte		0
	.4byte		.L415
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L217:
	.sleb128	8
	.byte		"LinIfMaxSchEntry"
	.byte		0
	.4byte		.L362
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
.L218:
	.sleb128	8
	.byte		"LinIfEntry_p"
	.byte		0
	.4byte		.L399
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L405:
.L402:
	.sleb128	7
	.4byte		.L346
	.uleb128	322
	.uleb128	1
	.4byte		.L416-.L2
	.uleb128	8
.L210:
	.sleb128	8
	.byte		"LinIfDelay"
	.byte		0
	.4byte		.L348
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L211:
	.sleb128	8
	.byte		"LinIfCollisionResolvingRef"
	.byte		0
	.4byte		.L415
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L212:
	.sleb128	8
	.byte		"LinIfFrameRef"
	.byte		0
	.4byte		.L377
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L416:
.L380:
	.sleb128	7
	.4byte		.L346
	.uleb128	322
	.uleb128	1
	.4byte		.L417-.L2
	.uleb128	32
.L196:
	.sleb128	8
	.byte		"LinIfChecksumType"
	.byte		0
	.4byte		.L418
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L197:
	.sleb128	8
	.byte		"LinIfFrameType"
	.byte		0
	.4byte		.L420
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L198:
	.sleb128	8
	.byte		"LinIfLength"
	.byte		0
	.4byte		.L423
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L199:
	.sleb128	8
	.byte		"LinIfPid"
	.byte		0
	.4byte		.L425
	.sleb128	2
	.byte		0x23
	.uleb128	9
	.byte		0x1
.L200:
	.sleb128	8
	.byte		"LinIfTxConfirmationId"
	.byte		0
	.4byte		.L427
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L201:
	.sleb128	8
	.byte		"LinIfPduDirection"
	.byte		0
	.4byte		.L428
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L202:
	.sleb128	8
	.byte		"LinIfFixedFrameSduData"
	.byte		0
	.4byte		.L430
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
.L203:
	.sleb128	8
	.byte		"LinIfRxTxTargetPduRef"
	.byte		0
	.4byte		.L427
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L204:
	.sleb128	8
	.byte		"LinIfSubsFrames_p"
	.byte		0
	.4byte		.L432
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L205:
	.sleb128	8
	.byte		"LinIfNoOfSubEntry"
	.byte		0
	.4byte		.L362
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L206:
	.sleb128	8
	.byte		"LinIfFunctionIndex"
	.byte		0
	.4byte		.L348
	.sleb128	2
	.byte		0x23
	.uleb128	30
	.byte		0x1
	.sleb128	0
.L417:
.L435:
	.sleb128	7
	.4byte		.L346
	.uleb128	322
	.uleb128	1
	.4byte		.L436-.L2
	.uleb128	2
.L194:
	.sleb128	8
	.byte		"LinIfSubFrameIndex"
	.byte		0
	.4byte		.L362
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L195:
	.sleb128	8
	.byte		"LinIfSubFramePriority"
	.byte		0
	.4byte		.L362
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
	.sleb128	0
.L436:
.L356:
	.sleb128	7
	.4byte		.L346
	.uleb128	322
	.uleb128	1
	.4byte		.L437-.L2
	.uleb128	12
.L191:
	.sleb128	8
	.byte		"GotoSleepConfirmationUL"
	.byte		0
	.4byte		.L438
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L192:
	.sleb128	8
	.byte		"WakeupConfirmationUL"
	.byte		0
	.4byte		.L438
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L193:
	.sleb128	8
	.byte		"ScheduleRequestConfirmationUL"
	.byte		0
	.4byte		.L438
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L437:
.L361:
	.sleb128	7
	.4byte		.L346
	.uleb128	232
	.uleb128	14
	.4byte		.L441-.L2
	.uleb128	20
.L183:
	.sleb128	8
	.byte		"LinTrcv_SetOpMode_p"
	.byte		0
	.4byte		.L442
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L184:
	.sleb128	8
	.byte		"LinTrcv_GetOpMode_p"
	.byte		0
	.4byte		.L447
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L185:
	.sleb128	8
	.byte		"LinTrcv_GetBusWuReason_p"
	.byte		0
	.4byte		.L451
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L186:
	.sleb128	8
	.byte		"LinTrcv_SetWakeupMode_p"
	.byte		0
	.4byte		.L457
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L187:
	.sleb128	8
	.byte		"LinTrcv_CheckWakeup_p"
	.byte		0
	.4byte		.L462
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L441:
.L371:
	.sleb128	7
	.4byte		.L346
	.uleb128	184
	.uleb128	1
	.4byte		.L465-.L2
	.uleb128	24
.L177:
	.sleb128	8
	.byte		"Lin_SendFrame_p"
	.byte		0
	.4byte		.L466
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L178:
	.sleb128	8
	.byte		"Lin_GoToSleep_p"
	.byte		0
	.4byte		.L472
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L179:
	.sleb128	8
	.byte		"Lin_GoToSleepInternal_p"
	.byte		0
	.4byte		.L475
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L180:
	.sleb128	8
	.byte		"Lin_Wakeup_p"
	.byte		0
	.4byte		.L478
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L181:
	.sleb128	8
	.byte		"Lin_GetStatus_p"
	.byte		0
	.4byte		.L481
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L182:
	.sleb128	8
	.byte		"Lin_CheckWakeup_p"
	.byte		0
	.4byte		.L485
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L465:
.L471:
	.sleb128	7
	.4byte		.L488
	.uleb128	59
	.uleb128	13
	.4byte		.L489-.L2
	.uleb128	8
.L92:
	.sleb128	8
	.byte		"Pid"
	.byte		0
	.4byte		.L426
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L93:
	.sleb128	8
	.byte		"Cs"
	.byte		0
	.4byte		.L419
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L94:
	.sleb128	8
	.byte		"Drc"
	.byte		0
	.4byte		.L429
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L95:
	.sleb128	8
	.byte		"Dl"
	.byte		0
	.4byte		.L424
	.sleb128	2
	.byte		0x23
	.uleb128	3
	.byte		0x1
.L96:
	.sleb128	8
	.byte		"SduPtr"
	.byte		0
	.4byte		.L386
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L489:
	.section	.debug_info,,n
.L440:
	.sleb128	9
	.4byte		.L346
	.uleb128	322
	.uleb128	1
	.4byte		.L490-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	10
	.byte		"LIN_SM"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"CDD"
	.byte		0
	.sleb128	1
	.sleb128	0
.L490:
.L414:
	.sleb128	9
	.4byte		.L346
	.uleb128	232
	.uleb128	14
	.4byte		.L491-.L2
	.uleb128	4
	.sleb128	10
	.byte		"LINTP_APPLICATIVE_SCHEDULE"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"LINTP_DIAG_REQUEST"
	.byte		0
	.sleb128	1
	.sleb128	10
	.byte		"LINTP_DIAG_RESPONSE"
	.byte		0
	.sleb128	2
	.sleb128	0
.L491:
.L398:
	.sleb128	9
	.4byte		.L346
	.uleb128	184
	.uleb128	1
	.4byte		.L492-.L2
	.uleb128	4
	.sleb128	10
	.byte		"LINIF_FRAME_IDLE"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"LINIF_FRAME_RX_ONGOING"
	.byte		0
	.sleb128	1
	.sleb128	10
	.byte		"LINIF_FRAME_TX_ONGOING"
	.byte		0
	.sleb128	2
	.sleb128	10
	.byte		"LINIF_FRAME_FINISHED"
	.byte		0
	.sleb128	3
	.sleb128	10
	.byte		"LINIF_FRAME_ERROR"
	.byte		0
	.sleb128	4
	.sleb128	0
.L492:
.L422:
	.sleb128	9
	.4byte		.L346
	.uleb128	110
	.uleb128	1
	.4byte		.L493-.L2
	.uleb128	4
	.sleb128	10
	.byte		"INVALID_STATE"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"FREE"
	.byte		0
	.sleb128	1
	.sleb128	10
	.byte		"ASSIGN"
	.byte		0
	.sleb128	2
	.sleb128	10
	.byte		"ASSIGN_FRAME_ID_RANGE"
	.byte		0
	.sleb128	3
	.sleb128	10
	.byte		"EVENT_TRIGGERED"
	.byte		0
	.sleb128	4
	.sleb128	10
	.byte		"SAVE_CONFIGURATION"
	.byte		0
	.sleb128	5
	.sleb128	10
	.byte		"SPORADIC"
	.byte		0
	.sleb128	6
	.sleb128	10
	.byte		"SRF"
	.byte		0
	.sleb128	7
	.sleb128	10
	.byte		"UNASSIGN"
	.byte		0
	.sleb128	8
	.sleb128	10
	.byte		"UNCONDITIONAL"
	.byte		0
	.sleb128	9
	.sleb128	0
.L493:
.L408:
	.sleb128	9
	.4byte		.L346
	.uleb128	102
	.uleb128	1
	.4byte		.L494-.L2
	.uleb128	4
	.sleb128	10
	.byte		"CONTINUE_AT_IT_POINT"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"START_FROM_BEGINNING"
	.byte		0
	.sleb128	1
	.sleb128	0
.L494:
.L394:
	.sleb128	9
	.4byte		.L346
	.uleb128	87
	.uleb128	1
	.4byte		.L495-.L2
	.uleb128	4
	.sleb128	10
	.byte		"LINIF_CHANNEL_SUBSTATE_IDLE"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"LINIF_CHANNEL_SLEEP_REQUEST"
	.byte		0
	.sleb128	1
	.sleb128	10
	.byte		"LINIF_CHANNEL_SLEEP_PENDING"
	.byte		0
	.sleb128	2
	.sleb128	10
	.byte		"LINIF_CHANNEL_GOTO_SLEEP_INTERNAL"
	.byte		0
	.sleb128	3
	.sleb128	10
	.byte		"LINIF_CHANNEL_WAKEUP_CONFIRMATION_PENDING_TYPE_FALSE"
	.byte		0
	.sleb128	4
	.sleb128	10
	.byte		"LINIF_CHANNEL_WAKEUP_CONFIRMATION_PENDING_TYPE_TRUE"
	.byte		0
	.sleb128	5
	.sleb128	0
.L495:
.L367:
	.sleb128	9
	.4byte		.L346
	.uleb128	79
	.uleb128	1
	.4byte		.L496-.L2
	.uleb128	4
	.sleb128	10
	.byte		"LINIF_CHANNEL_UNINIT"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"LINIF_CHANNEL_OPERATIONAL"
	.byte		0
	.sleb128	1
	.sleb128	10
	.byte		"LINIF_CHANNEL_SLEEP"
	.byte		0
	.sleb128	2
	.sleb128	0
.L496:
.L389:
	.sleb128	9
	.4byte		.L346
	.uleb128	70
	.uleb128	1
	.4byte		.L497-.L2
	.uleb128	4
	.sleb128	10
	.byte		"NULL_SCHEDULE"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"ACTIVE_RUN_ONCE"
	.byte		0
	.sleb128	1
	.sleb128	10
	.byte		"ACTIVE_RUN_CONTINUOUS"
	.byte		0
	.sleb128	2
	.sleb128	10
	.byte		"ACTIVE_SCHEDULE_MANAGER_OFF"
	.byte		0
	.sleb128	3
	.sleb128	0
.L497:
.L411:
	.sleb128	9
	.4byte		.L346
	.uleb128	63
	.uleb128	1
	.4byte		.L498-.L2
	.uleb128	4
	.sleb128	10
	.byte		"RUN_CONTINUOUS"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"RUN_ONCE"
	.byte		0
	.sleb128	1
	.sleb128	0
.L498:
.L446:
	.sleb128	9
	.4byte		.L488
	.uleb128	59
	.uleb128	13
	.4byte		.L499-.L2
	.uleb128	4
	.sleb128	10
	.byte		"LINTRCV_TRCV_MODE_NORMAL"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"LINTRCV_TRCV_MODE_STANDBY"
	.byte		0
	.sleb128	1
	.sleb128	10
	.byte		"LINTRCV_TRCV_MODE_SLEEP"
	.byte		0
	.sleb128	2
	.sleb128	0
.L499:
.L456:
	.sleb128	9
	.4byte		.L488
	.uleb128	49
	.uleb128	13
	.4byte		.L500-.L2
	.uleb128	4
	.sleb128	10
	.byte		"LINTRCV_WU_ERROR"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"LINTRCV_WU_NOT_SUPPORTED"
	.byte		0
	.sleb128	1
	.sleb128	10
	.byte		"LINTRCV_WU_BY_BUS"
	.byte		0
	.sleb128	2
	.sleb128	10
	.byte		"LINTRCV_WU_BY_PIN"
	.byte		0
	.sleb128	3
	.sleb128	10
	.byte		"LINTRCV_WU_INTERNALLY"
	.byte		0
	.sleb128	4
	.sleb128	10
	.byte		"LINTRCV_WU_RESET"
	.byte		0
	.sleb128	5
	.sleb128	10
	.byte		"LINTRCV_WU_POWER_ON"
	.byte		0
	.sleb128	6
	.sleb128	0
.L500:
.L461:
	.sleb128	9
	.4byte		.L488
	.uleb128	42
	.uleb128	13
	.4byte		.L501-.L2
	.uleb128	4
	.sleb128	10
	.byte		"LINTRCV_WUMODE_ENABLE"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"LINTRCV_WUMODE_DISABLE"
	.byte		0
	.sleb128	1
	.sleb128	10
	.byte		"LINTRCV_WUMODE_CLEAR"
	.byte		0
	.sleb128	2
	.sleb128	0
.L501:
	.section	.debug_info,,n
.L303:
	.sleb128	11
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L302:
	.sleb128	12
	.byte		"uint8"
	.byte		0
	.4byte		.L303
.L301:
	.sleb128	12
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L302
.L307:
	.sleb128	11
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L306:
	.sleb128	12
	.byte		"uint16"
	.byte		0
	.4byte		.L307
.L305:
	.sleb128	12
	.byte		"PduIdType"
	.byte		0
	.4byte		.L306
.L316:
	.sleb128	12
	.byte		"boolean"
	.byte		0
	.4byte		.L303
.L327:
	.sleb128	12
	.byte		"LinIfChannel"
	.byte		0
	.4byte		.L328
	.section	.debug_info,,n
.L326:
	.sleb128	13
	.4byte		.L327
	.section	.debug_info,,n
.L325:
	.sleb128	14
	.4byte		.L326
.L333:
	.sleb128	12
	.byte		"LinIfChannelReloc"
	.byte		0
	.4byte		.L334
.L332:
	.sleb128	13
	.4byte		.L333
.L331:
	.sleb128	14
	.4byte		.L332
.L341:
	.sleb128	12
	.byte		"LinIf_ConfigType"
	.byte		0
	.4byte		.L342
.L340:
	.sleb128	13
	.4byte		.L341
.L339:
	.sleb128	14
	.4byte		.L340
.L345:
	.sleb128	13
	.4byte		.L325
.L348:
	.sleb128	13
	.4byte		.L306
.L352:
	.sleb128	11
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L351:
	.sleb128	12
	.byte		"uint32"
	.byte		0
	.4byte		.L352
.L350:
	.sleb128	13
	.4byte		.L351
.L349:
	.sleb128	14
	.4byte		.L350
.L355:
	.sleb128	12
	.byte		"LinIf_ConfirmationULConfig_t"
	.byte		0
	.4byte		.L356
.L354:
	.sleb128	13
	.4byte		.L355
.L353:
	.sleb128	14
	.4byte		.L354
.L360:
	.sleb128	12
	.byte		"LinIf_LinTrcvDrvCalls_t"
	.byte		0
	.4byte		.L361
.L359:
	.sleb128	13
	.4byte		.L360
.L358:
	.sleb128	14
	.4byte		.L359
.L362:
	.sleb128	13
	.4byte		.L302
.L364:
	.sleb128	12
	.byte		"NetworkHandleType"
	.byte		0
	.4byte		.L302
.L363:
	.sleb128	13
	.4byte		.L364
.L366:
	.sleb128	12
	.byte		"LinIf_ChannelState_t"
	.byte		0
	.4byte		.L367
.L365:
	.sleb128	13
	.4byte		.L366
.L370:
	.sleb128	12
	.byte		"LinIf_LinDrvCalls_t"
	.byte		0
	.4byte		.L371
.L369:
	.sleb128	13
	.4byte		.L370
.L368:
	.sleb128	14
	.4byte		.L369
.L374:
	.sleb128	12
	.byte		"LinIfChannelManager"
	.byte		0
	.4byte		.L375
.L373:
	.sleb128	14
	.4byte		.L374
.L372:
	.sleb128	13
	.4byte		.L373
.L379:
	.sleb128	12
	.byte		"LinIfFrame"
	.byte		0
	.4byte		.L380
.L378:
	.sleb128	13
	.4byte		.L379
.L377:
	.sleb128	14
	.4byte		.L378
.L383:
	.sleb128	12
	.byte		"LinIfScheduleTable"
	.byte		0
	.4byte		.L384
.L382:
	.sleb128	13
	.4byte		.L383
.L381:
	.sleb128	14
	.4byte		.L382
.L385:
	.sleb128	14
	.4byte		.L316
.L386:
	.sleb128	14
	.4byte		.L302
.L388:
	.sleb128	12
	.byte		"LinIfSchTableType_t"
	.byte		0
	.4byte		.L389
.L390:
	.sleb128	12
	.byte		"LinIf_SchHandleType"
	.byte		0
	.4byte		.L302
.L391:
	.sleb128	12
	.byte		"LinIf_BusStatusStruct"
	.byte		0
	.4byte		.L392
.L393:
	.sleb128	12
	.byte		"LinIf_ChannelSubState_t"
	.byte		0
	.4byte		.L394
.L396:
	.sleb128	12
	.byte		"Lin_StatusType"
	.byte		0
	.4byte		.L302
.L397:
	.sleb128	12
	.byte		"LinIf_frameStatusType"
	.byte		0
	.4byte		.L398
.L401:
	.sleb128	12
	.byte		"LinIfEntry"
	.byte		0
	.4byte		.L402
.L400:
	.sleb128	13
	.4byte		.L401
.L399:
	.sleb128	14
	.4byte		.L400
	.section	.debug_info,,n
.L403:
	.sleb128	15
	.4byte		.L404-.L2
	.4byte		.L302
	.section	.debug_info,,n
	.sleb128	16
	.uleb128	7
	.sleb128	0
.L404:
.L407:
	.sleb128	12
	.byte		"LinIfResumePosition_t"
	.byte		0
	.4byte		.L408
.L406:
	.sleb128	13
	.4byte		.L407
.L410:
	.sleb128	12
	.byte		"LinIfRunMode_t"
	.byte		0
	.4byte		.L411
.L409:
	.sleb128	13
	.4byte		.L410
.L413:
	.sleb128	12
	.byte		"LinTp_Mode"
	.byte		0
	.4byte		.L414
.L412:
	.sleb128	13
	.4byte		.L413
.L415:
	.sleb128	13
	.4byte		.L390
.L419:
	.sleb128	12
	.byte		"Lin_FrameCsModelType"
	.byte		0
	.4byte		.L302
.L418:
	.sleb128	13
	.4byte		.L419
.L421:
	.sleb128	12
	.byte		"LinIfFrameType_t"
	.byte		0
	.4byte		.L422
.L420:
	.sleb128	13
	.4byte		.L421
.L424:
	.sleb128	12
	.byte		"Lin_FrameDlType"
	.byte		0
	.4byte		.L302
.L423:
	.sleb128	13
	.4byte		.L424
.L426:
	.sleb128	12
	.byte		"Lin_FramePidType"
	.byte		0
	.4byte		.L302
.L425:
	.sleb128	13
	.4byte		.L426
.L427:
	.sleb128	13
	.4byte		.L305
.L429:
	.sleb128	12
	.byte		"Lin_FrameResponseType"
	.byte		0
	.4byte		.L302
.L428:
	.sleb128	13
	.4byte		.L429
.L430:
	.sleb128	15
	.4byte		.L431-.L2
	.4byte		.L362
	.sleb128	16
	.uleb128	7
	.sleb128	0
.L431:
.L434:
	.sleb128	12
	.byte		"LinIfSubstitutionFrames"
	.byte		0
	.4byte		.L435
.L433:
	.sleb128	13
	.4byte		.L434
.L432:
	.sleb128	14
	.4byte		.L433
.L439:
	.sleb128	12
	.byte		"LinIf_ConfirmationUL_t"
	.byte		0
	.4byte		.L440
.L438:
	.sleb128	13
	.4byte		.L439
	.section	.debug_info,,n
.L443:
	.sleb128	17
	.4byte		.L444-.L2
	.4byte		.L301
	.byte		0x1
	.section	.debug_info,,n
	.sleb128	18
	.4byte		.L302
.L445:
	.sleb128	12
	.byte		"LinTrcv_TrcvModeType"
	.byte		0
	.4byte		.L446
	.sleb128	18
	.4byte		.L445
	.sleb128	0
.L444:
.L442:
	.sleb128	14
	.4byte		.L443
.L448:
	.sleb128	17
	.4byte		.L449-.L2
	.4byte		.L301
	.byte		0x1
	.sleb128	18
	.4byte		.L302
.L450:
	.sleb128	14
	.4byte		.L445
	.sleb128	18
	.4byte		.L450
	.sleb128	0
.L449:
.L447:
	.sleb128	14
	.4byte		.L448
.L452:
	.sleb128	17
	.4byte		.L453-.L2
	.4byte		.L301
	.byte		0x1
	.sleb128	18
	.4byte		.L302
.L455:
	.sleb128	12
	.byte		"LinTrcv_TrcvWakeupReasonType"
	.byte		0
	.4byte		.L456
.L454:
	.sleb128	14
	.4byte		.L455
	.sleb128	18
	.4byte		.L454
	.sleb128	0
.L453:
.L451:
	.sleb128	14
	.4byte		.L452
.L458:
	.sleb128	17
	.4byte		.L459-.L2
	.4byte		.L301
	.byte		0x1
	.sleb128	18
	.4byte		.L302
.L460:
	.sleb128	12
	.byte		"LinTrcv_TrcvWakeupModeType"
	.byte		0
	.4byte		.L461
	.sleb128	18
	.4byte		.L460
	.sleb128	0
.L459:
.L457:
	.sleb128	14
	.4byte		.L458
.L463:
	.sleb128	17
	.4byte		.L464-.L2
	.4byte		.L301
	.byte		0x1
	.sleb128	18
	.4byte		.L302
	.sleb128	0
.L464:
.L462:
	.sleb128	14
	.4byte		.L463
.L467:
	.sleb128	17
	.4byte		.L468-.L2
	.4byte		.L301
	.byte		0x1
	.sleb128	18
	.4byte		.L302
.L470:
	.sleb128	12
	.byte		"Lin_PduType"
	.byte		0
	.4byte		.L471
.L469:
	.sleb128	14
	.4byte		.L470
	.sleb128	18
	.4byte		.L469
	.sleb128	0
.L468:
.L466:
	.sleb128	14
	.4byte		.L467
.L473:
	.sleb128	17
	.4byte		.L474-.L2
	.4byte		.L301
	.byte		0x1
	.sleb128	18
	.4byte		.L302
	.sleb128	0
.L474:
.L472:
	.sleb128	14
	.4byte		.L473
.L476:
	.sleb128	17
	.4byte		.L477-.L2
	.4byte		.L301
	.byte		0x1
	.sleb128	18
	.4byte		.L302
	.sleb128	0
.L477:
.L475:
	.sleb128	14
	.4byte		.L476
.L479:
	.sleb128	17
	.4byte		.L480-.L2
	.4byte		.L301
	.byte		0x1
	.sleb128	18
	.4byte		.L302
	.sleb128	0
.L480:
.L478:
	.sleb128	14
	.4byte		.L479
.L482:
	.sleb128	17
	.4byte		.L483-.L2
	.4byte		.L396
	.byte		0x1
	.sleb128	18
	.4byte		.L302
.L484:
	.sleb128	14
	.4byte		.L386
	.sleb128	18
	.4byte		.L484
	.sleb128	0
.L483:
.L481:
	.sleb128	14
	.4byte		.L482
.L486:
	.sleb128	17
	.4byte		.L487-.L2
	.4byte		.L301
	.byte		0x1
	.sleb128	18
	.4byte		.L302
	.sleb128	0
.L487:
.L485:
	.sleb128	14
	.4byte		.L486
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L308:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),0
	.d2locend
.L314:
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo4),3
	.d2locend
.L317:
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo4),7
	.d2locend
.L323:
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),4
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),4
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo12),4
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo14),4
	.d2locend
.L329:
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo16),5
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo18),4
	.d2locend
.L335:
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo8),5
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo11),4
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo14),5
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "LinIf_CancelTransmit"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\LinIf_CancelTransmit.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\LinIf_CancelTransmit.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\LinIf_CancelTransmit.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\LinIf_CancelTransmit.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\LinIf_CancelTransmit.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\LinIf_CancelTransmit.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\LinIf\ssc\make\..\src\LinIf_CancelTransmit.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
