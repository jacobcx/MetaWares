#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"LinIf.c"
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
# FUNC (void, LINIF_CODE) LinIf_FindChannel
	.align		2
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinIf\\ssc\\make\\..\\src\\LinIf.c"
        .d2line         74,25
#$$ld
.L288:

#$$bf	LinIf_FindChannel,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,cr0,lr
	.globl		LinIf_FindChannel
	.d2_cfa_start __cie
LinIf_FindChannel:
.Llo1:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# Channel=r3 Channel=r3
	mr		r4,r4		# FoundChannel_p=r4 FoundChannel_p=r4
	.d2prologue_end
# (
#         CONST (NetworkHandleType, AUTOMATIC) Channel,
#         CONSTP2VAR (P2CONST (LinIfChannel, AUTOMATIC, LINIF_APPL_DATA),
#         AUTOMATIC, LINIF_APPL_DATA) FoundChannel_p
# )
# {
#     P2CONST (LinIfChannel, AUTOMATIC, LINIF_APPL_DATA) crntChannel_p = &(LinIf_ConfigChannelLT_p[0]);
	.d2line		81
	lis		r5,LinIf_ConfigChannelLT_p@ha		# crntChannel_p=r5
.Llo3:
	lwz		r5,LinIf_ConfigChannelLT_p@l(r5)		# crntChannel_p=r5 crntChannel_p=r5
	mr		r5,r5		# crntChannel_p=r5 crntChannel_p=r5
# 
#     CONSTP2CONST (LinIfChannel, AUTOMATIC, LINIF_APPL_DATA) CrntChannelArrEnd_p =
	.d2line		83
	lis		r6,LinIf_GlobalConfig_p@ha
	lwz		r6,LinIf_GlobalConfig_p@l(r6)
	lhz		r0,0(r6)
	rlwinm		r0,r0,5,11,26
	se_add		r0,r5		# crntChannel_p=r5
.Llo4:
	mr		r0,r0		# CrntChannelArrEnd_p=r0 CrntChannelArrEnd_p=r0
.L279:
#             &crntChannel_p[LinIf_GlobalConfig_p->MaxLinIfChannel];
# 
# 
#     while(crntChannel_p < CrntChannelArrEnd_p) /* PRQA S 490 */ /*Relational operator between the pointers causing Misra violations but in this case it is necessary*/
	.d2line		87
	se_cmpl		r5,r0		# crntChannel_p=r5 CrntChannelArrEnd_p=r0
	bc		0,0,.L278	# ge
#     {
#         if(Channel == crntChannel_p->ExternalChannelIndex)
	.d2line		89
	rlwinm		r6,r3,0,24,31		# Channel=r3
	lbz		r7,13(r5)		# crntChannel_p=r5
	se_cmp		r6,r7
	bc		0,2,.L281	# ne
#         {
#             *FoundChannel_p = crntChannel_p;
	.d2line		91
	stw		r5,0(r4)		# FoundChannel_p=r4 crntChannel_p=r5
	b		.L278
.L281:
#             break;
#         }
#         crntChannel_p++; /*PRQA S 489*/ /*MISRA 17.4: The integer value added to pointer. In this case is necessary  */
	.d2line		94
	se_addi		r5,32		# crntChannel_p=r5 crntChannel_p=r5
	b		.L279
.L278:
#     }
# }
	.d2line		96
	.d2epilogue_begin
.Llo2:
	lwz		r0,20(r1)		# CrntChannelArrEnd_p=r0
	mtspr		lr,r0		# CrntChannelArrEnd_p=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L289:
	.type		LinIf_FindChannel,@function
	.size		LinIf_FindChannel,.-LinIf_FindChannel
# Number of nodes = 31

# Allocations for LinIf_FindChannel
#	?a4		Channel
#	?a5		FoundChannel_p
#	?a6		crntChannel_p
#	?a7		CrntChannelArrEnd_p

# Allocations for module
	.section	.text_vle
	.0byte		.L309
	.section	.text_vle
#$$ld
.L5:
.L466:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\AUTOSAR\\ar422\\Lin_GeneralTypes.h"
.L318:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinIf\\ssc\\make\\..\\inc\\LinIf_Types.h"
.L310:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinIf\\ssc\\make\\..\\inc\\LinIf_Private.h"
.L290:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinIf\\ssc\\make\\..\\src\\LinIf.c"
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinIf\\ssc\\make\\..\\src\\LinIf.c"
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
.L291:
	.sleb128	2
	.4byte		.L287-.L2
	.byte		"LinIf_FindChannel"
	.byte		0
	.4byte		.L290
	.uleb128	74
	.uleb128	25
	.byte		0x1
	.byte		0x1
	.4byte		.L288
	.4byte		.L289
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L290
	.uleb128	74
	.uleb128	25
	.byte		"Channel"
	.byte		0
	.4byte		.L292
	.4byte		.L296
	.sleb128	3
	.4byte		.L290
	.uleb128	74
	.uleb128	25
	.byte		"FoundChannel_p"
	.byte		0
	.4byte		.L297
	.4byte		.L303
	.section	.debug_info,,n
.L304:
	.sleb128	4
	.4byte		.L290
	.uleb128	81
	.uleb128	56
	.byte		"crntChannel_p"
	.byte		0
	.4byte		.L299
	.4byte		.L305
.L306:
	.sleb128	4
	.4byte		.L290
	.uleb128	83
	.uleb128	61
	.byte		"CrntChannelArrEnd_p"
	.byte		0
	.4byte		.L307
	.4byte		.L308
	.section	.debug_info,,n
	.sleb128	0
.L287:
	.section	.debug_info,,n
.L309:
	.sleb128	5
	.byte		0x1
	.byte		0x1
	.4byte		.L310
	.uleb128	241
	.uleb128	66
	.byte		"LinIf_ConfigChannelLT_p"
	.byte		0
	.4byte		.L307
	.section	.debug_info,,n
	.section	.debug_info,,n
.L311:
	.sleb128	6
	.byte		0x1
	.4byte		.L290
	.uleb128	37
	.uleb128	25
	.byte		"LinIf_GlobalInitStsFlag"
	.byte		0
	.4byte		.L312
	.sleb128	5
	.byte		0x3
	.4byte		LinIf_GlobalInitStsFlag
	.0byte		.L311
	.comm		LinIf_GlobalInitStsFlag,1,0
.L313:
	.sleb128	6
	.byte		0x1
	.4byte		.L290
	.uleb128	52
	.uleb128	57
	.byte		"LinIf_GlobalConfig_p"
	.byte		0
	.4byte		.L314
	.sleb128	5
	.byte		0x3
	.4byte		LinIf_GlobalConfig_p
	.comm		LinIf_GlobalConfig_p,4,2
	.section	.debug_info,,n
.L317:
	.sleb128	7
	.4byte		.L318
	.uleb128	322
	.uleb128	1
	.4byte		.L319-.L2
	.uleb128	20
	.section	.debug_info,,n
.L252:
	.sleb128	8
	.byte		"MaxLinIfChannel"
	.byte		0
	.4byte		.L320
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L253:
	.sleb128	8
	.byte		"LinIfChannel_p"
	.byte		0
	.4byte		.L323
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L254:
	.sleb128	8
	.byte		"PBtoPCHashValue_P"
	.byte		0
	.4byte		.L327
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L255:
	.sleb128	8
	.byte		"PBtoLTHashValue_P"
	.byte		0
	.4byte		.L327
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L256:
	.sleb128	8
	.byte		"LinIf_ConfirmationULConfig_p"
	.byte		0
	.4byte		.L331
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L319:
.L302:
	.sleb128	7
	.4byte		.L318
	.uleb128	322
	.uleb128	1
	.4byte		.L335-.L2
	.uleb128	32
.L240:
	.sleb128	8
	.byte		"LinTrcvDrvCalls_p"
	.byte		0
	.4byte		.L336
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L241:
	.sleb128	8
	.byte		"WakeupSourceIdLin"
	.byte		0
	.4byte		.L328
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L242:
	.sleb128	8
	.byte		"WakeupSourceIdTrcv"
	.byte		0
	.4byte		.L328
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L243:
	.sleb128	8
	.byte		"LinIfChannelIndex"
	.byte		0
	.4byte		.L340
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L244:
	.sleb128	8
	.byte		"ExternalChannelIndex"
	.byte		0
	.4byte		.L292
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
.L245:
	.sleb128	8
	.byte		"LinIfDelayForSleep"
	.byte		0
	.4byte		.L328
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L246:
	.sleb128	8
	.byte		"LinIfStartupState"
	.byte		0
	.4byte		.L341
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L247:
	.sleb128	8
	.byte		"LinDrvCalls_p"
	.byte		0
	.4byte		.L344
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L248:
	.sleb128	8
	.byte		"LinIf_channelManager_p"
	.byte		0
	.4byte		.L348
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
	.sleb128	0
.L335:
.L326:
	.sleb128	7
	.4byte		.L318
	.uleb128	322
	.uleb128	1
	.4byte		.L352-.L2
	.uleb128	24
.L233:
	.sleb128	8
	.byte		"LinIfMaxLinFrames"
	.byte		0
	.4byte		.L340
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L234:
	.sleb128	8
	.byte		"LinIfMaxSchedules"
	.byte		0
	.4byte		.L340
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L235:
	.sleb128	8
	.byte		"LinIfFrame_p"
	.byte		0
	.4byte		.L353
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L236:
	.sleb128	8
	.byte		"LinIfScheduleTable_p"
	.byte		0
	.4byte		.L357
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L237:
	.sleb128	8
	.byte		"ETCollisionDetectd_p"
	.byte		0
	.4byte		.L361
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L238:
	.sleb128	8
	.byte		"SPPendingRequest_p"
	.byte		0
	.4byte		.L361
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L239:
	.sleb128	8
	.byte		"LinIf_ScheduleTableEntry_p"
	.byte		0
	.4byte		.L362
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L352:
.L351:
	.sleb128	7
	.4byte		.L318
	.uleb128	322
	.uleb128	1
	.4byte		.L363-.L2
	.uleb128	48
.L223:
	.sleb128	8
	.byte		"LinIf_NewScheduleTableType"
	.byte		0
	.4byte		.L364
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L224:
	.sleb128	8
	.byte		"LinIf_RunContSchTableIndexRequested"
	.byte		0
	.4byte		.L366
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L225:
	.sleb128	8
	.byte		"LinIf_RunOnceSchTableRequested"
	.byte		0
	.4byte		.L366
	.sleb128	2
	.byte		0x23
	.uleb128	5
	.byte		0x1
.L226:
	.sleb128	8
	.byte		"LinIf_EntryDelayCounter"
	.byte		0
	.4byte		.L321
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L227:
	.sleb128	8
	.byte		"LinIf_SleepDelayCounter"
	.byte		0
	.4byte		.L329
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L228:
	.sleb128	8
	.byte		"LinIf_ScheduleTableIndex"
	.byte		0
	.4byte		.L366
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L229:
	.sleb128	8
	.byte		"LinIf_ScheduleTableType"
	.byte		0
	.4byte		.L364
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L230:
	.sleb128	8
	.byte		"LinIf_BusStatus"
	.byte		0
	.4byte		.L367
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L231:
	.sleb128	8
	.byte		"LinIf_ChannelSubState"
	.byte		0
	.4byte		.L369
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L232:
	.sleb128	8
	.byte		"LinIf_ChannelState"
	.byte		0
	.4byte		.L342
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
	.sleb128	0
.L363:
.L368:
	.sleb128	7
	.4byte		.L318
	.uleb128	322
	.uleb128	1
	.4byte		.L371-.L2
	.uleb128	20
.L219:
	.sleb128	8
	.byte		"Lin_DriverGetStatusVal"
	.byte		0
	.4byte		.L372
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L220:
	.sleb128	8
	.byte		"LinIf_frameStatus"
	.byte		0
	.4byte		.L373
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L221:
	.sleb128	8
	.byte		"LinIf_frameEntry_p"
	.byte		0
	.4byte		.L375
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L222:
	.sleb128	8
	.byte		"LinIf_RxData"
	.byte		0
	.4byte		.L379
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L371:
.L360:
	.sleb128	7
	.4byte		.L318
	.uleb128	322
	.uleb128	1
	.4byte		.L381-.L2
	.uleb128	20
.L213:
	.sleb128	8
	.byte		"LinIfResumePosition"
	.byte		0
	.4byte		.L382
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L214:
	.sleb128	8
	.byte		"LinIfRunMode"
	.byte		0
	.4byte		.L385
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L215:
	.sleb128	8
	.byte		"LinIfScheduleMode"
	.byte		0
	.4byte		.L388
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L216:
	.sleb128	8
	.byte		"LinIfScheduleTableIndex"
	.byte		0
	.4byte		.L391
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L217:
	.sleb128	8
	.byte		"LinIfMaxSchEntry"
	.byte		0
	.4byte		.L340
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
.L218:
	.sleb128	8
	.byte		"LinIfEntry_p"
	.byte		0
	.4byte		.L375
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L381:
.L378:
	.sleb128	7
	.4byte		.L318
	.uleb128	322
	.uleb128	1
	.4byte		.L392-.L2
	.uleb128	8
.L210:
	.sleb128	8
	.byte		"LinIfDelay"
	.byte		0
	.4byte		.L320
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L211:
	.sleb128	8
	.byte		"LinIfCollisionResolvingRef"
	.byte		0
	.4byte		.L391
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L212:
	.sleb128	8
	.byte		"LinIfFrameRef"
	.byte		0
	.4byte		.L353
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L392:
.L356:
	.sleb128	7
	.4byte		.L318
	.uleb128	322
	.uleb128	1
	.4byte		.L393-.L2
	.uleb128	32
.L196:
	.sleb128	8
	.byte		"LinIfChecksumType"
	.byte		0
	.4byte		.L394
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L197:
	.sleb128	8
	.byte		"LinIfFrameType"
	.byte		0
	.4byte		.L396
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L198:
	.sleb128	8
	.byte		"LinIfLength"
	.byte		0
	.4byte		.L399
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L199:
	.sleb128	8
	.byte		"LinIfPid"
	.byte		0
	.4byte		.L401
	.sleb128	2
	.byte		0x23
	.uleb128	9
	.byte		0x1
.L200:
	.sleb128	8
	.byte		"LinIfTxConfirmationId"
	.byte		0
	.4byte		.L403
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L201:
	.sleb128	8
	.byte		"LinIfPduDirection"
	.byte		0
	.4byte		.L405
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L202:
	.sleb128	8
	.byte		"LinIfFixedFrameSduData"
	.byte		0
	.4byte		.L407
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
.L203:
	.sleb128	8
	.byte		"LinIfRxTxTargetPduRef"
	.byte		0
	.4byte		.L403
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L204:
	.sleb128	8
	.byte		"LinIfSubsFrames_p"
	.byte		0
	.4byte		.L409
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L205:
	.sleb128	8
	.byte		"LinIfNoOfSubEntry"
	.byte		0
	.4byte		.L340
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L206:
	.sleb128	8
	.byte		"LinIfFunctionIndex"
	.byte		0
	.4byte		.L320
	.sleb128	2
	.byte		0x23
	.uleb128	30
	.byte		0x1
	.sleb128	0
.L393:
.L412:
	.sleb128	7
	.4byte		.L318
	.uleb128	322
	.uleb128	1
	.4byte		.L413-.L2
	.uleb128	2
.L194:
	.sleb128	8
	.byte		"LinIfSubFrameIndex"
	.byte		0
	.4byte		.L340
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L195:
	.sleb128	8
	.byte		"LinIfSubFramePriority"
	.byte		0
	.4byte		.L340
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
	.sleb128	0
.L413:
.L334:
	.sleb128	7
	.4byte		.L318
	.uleb128	322
	.uleb128	1
	.4byte		.L414-.L2
	.uleb128	12
.L191:
	.sleb128	8
	.byte		"GotoSleepConfirmationUL"
	.byte		0
	.4byte		.L415
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L192:
	.sleb128	8
	.byte		"WakeupConfirmationUL"
	.byte		0
	.4byte		.L415
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L193:
	.sleb128	8
	.byte		"ScheduleRequestConfirmationUL"
	.byte		0
	.4byte		.L415
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L414:
.L339:
	.sleb128	7
	.4byte		.L318
	.uleb128	232
	.uleb128	14
	.4byte		.L418-.L2
	.uleb128	20
.L183:
	.sleb128	8
	.byte		"LinTrcv_SetOpMode_p"
	.byte		0
	.4byte		.L419
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L184:
	.sleb128	8
	.byte		"LinTrcv_GetOpMode_p"
	.byte		0
	.4byte		.L425
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L185:
	.sleb128	8
	.byte		"LinTrcv_GetBusWuReason_p"
	.byte		0
	.4byte		.L429
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L186:
	.sleb128	8
	.byte		"LinTrcv_SetWakeupMode_p"
	.byte		0
	.4byte		.L435
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L187:
	.sleb128	8
	.byte		"LinTrcv_CheckWakeup_p"
	.byte		0
	.4byte		.L440
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L418:
.L347:
	.sleb128	7
	.4byte		.L318
	.uleb128	184
	.uleb128	1
	.4byte		.L443-.L2
	.uleb128	24
.L177:
	.sleb128	8
	.byte		"Lin_SendFrame_p"
	.byte		0
	.4byte		.L444
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L178:
	.sleb128	8
	.byte		"Lin_GoToSleep_p"
	.byte		0
	.4byte		.L450
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L179:
	.sleb128	8
	.byte		"Lin_GoToSleepInternal_p"
	.byte		0
	.4byte		.L453
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L180:
	.sleb128	8
	.byte		"Lin_Wakeup_p"
	.byte		0
	.4byte		.L456
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L181:
	.sleb128	8
	.byte		"Lin_GetStatus_p"
	.byte		0
	.4byte		.L459
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L182:
	.sleb128	8
	.byte		"Lin_CheckWakeup_p"
	.byte		0
	.4byte		.L463
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L443:
.L449:
	.sleb128	7
	.4byte		.L466
	.uleb128	59
	.uleb128	13
	.4byte		.L467-.L2
	.uleb128	8
.L92:
	.sleb128	8
	.byte		"Pid"
	.byte		0
	.4byte		.L402
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L93:
	.sleb128	8
	.byte		"Cs"
	.byte		0
	.4byte		.L395
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L94:
	.sleb128	8
	.byte		"Drc"
	.byte		0
	.4byte		.L406
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L95:
	.sleb128	8
	.byte		"Dl"
	.byte		0
	.4byte		.L400
	.sleb128	2
	.byte		0x23
	.uleb128	3
	.byte		0x1
.L96:
	.sleb128	8
	.byte		"SduPtr"
	.byte		0
	.4byte		.L362
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L467:
	.section	.debug_info,,n
.L417:
	.sleb128	9
	.4byte		.L318
	.uleb128	322
	.uleb128	1
	.4byte		.L468-.L2
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
.L468:
.L390:
	.sleb128	9
	.4byte		.L318
	.uleb128	232
	.uleb128	14
	.4byte		.L469-.L2
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
.L469:
.L374:
	.sleb128	9
	.4byte		.L318
	.uleb128	184
	.uleb128	1
	.4byte		.L470-.L2
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
.L470:
.L398:
	.sleb128	9
	.4byte		.L318
	.uleb128	110
	.uleb128	1
	.4byte		.L471-.L2
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
.L471:
.L384:
	.sleb128	9
	.4byte		.L318
	.uleb128	102
	.uleb128	1
	.4byte		.L472-.L2
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
.L472:
.L370:
	.sleb128	9
	.4byte		.L318
	.uleb128	87
	.uleb128	1
	.4byte		.L473-.L2
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
.L473:
.L343:
	.sleb128	9
	.4byte		.L318
	.uleb128	79
	.uleb128	1
	.4byte		.L474-.L2
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
.L474:
.L365:
	.sleb128	9
	.4byte		.L318
	.uleb128	70
	.uleb128	1
	.4byte		.L475-.L2
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
.L475:
.L387:
	.sleb128	9
	.4byte		.L318
	.uleb128	63
	.uleb128	1
	.4byte		.L476-.L2
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
.L476:
.L424:
	.sleb128	9
	.4byte		.L466
	.uleb128	59
	.uleb128	13
	.4byte		.L477-.L2
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
.L477:
.L434:
	.sleb128	9
	.4byte		.L466
	.uleb128	49
	.uleb128	13
	.4byte		.L478-.L2
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
.L478:
.L439:
	.sleb128	9
	.4byte		.L466
	.uleb128	42
	.uleb128	13
	.4byte		.L479-.L2
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
.L479:
	.section	.debug_info,,n
.L295:
	.sleb128	11
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L294:
	.sleb128	12
	.byte		"uint8"
	.byte		0
	.4byte		.L295
.L293:
	.sleb128	12
	.byte		"NetworkHandleType"
	.byte		0
	.4byte		.L294
	.section	.debug_info,,n
.L292:
	.sleb128	13
	.4byte		.L293
.L301:
	.sleb128	12
	.byte		"LinIfChannel"
	.byte		0
	.4byte		.L302
.L300:
	.sleb128	13
	.4byte		.L301
	.section	.debug_info,,n
.L299:
	.sleb128	14
	.4byte		.L300
.L298:
	.sleb128	14
	.4byte		.L299
.L297:
	.sleb128	13
	.4byte		.L298
.L307:
	.sleb128	13
	.4byte		.L299
.L312:
	.sleb128	12
	.byte		"boolean"
	.byte		0
	.4byte		.L295
.L316:
	.sleb128	12
	.byte		"LinIf_ConfigType"
	.byte		0
	.4byte		.L317
.L315:
	.sleb128	13
	.4byte		.L316
.L314:
	.sleb128	14
	.4byte		.L315
.L322:
	.sleb128	11
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L321:
	.sleb128	12
	.byte		"uint16"
	.byte		0
	.4byte		.L322
.L320:
	.sleb128	13
	.4byte		.L321
.L325:
	.sleb128	12
	.byte		"LinIfChannelReloc"
	.byte		0
	.4byte		.L326
.L324:
	.sleb128	13
	.4byte		.L325
.L323:
	.sleb128	14
	.4byte		.L324
.L330:
	.sleb128	11
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L329:
	.sleb128	12
	.byte		"uint32"
	.byte		0
	.4byte		.L330
.L328:
	.sleb128	13
	.4byte		.L329
.L327:
	.sleb128	14
	.4byte		.L328
.L333:
	.sleb128	12
	.byte		"LinIf_ConfirmationULConfig_t"
	.byte		0
	.4byte		.L334
.L332:
	.sleb128	13
	.4byte		.L333
.L331:
	.sleb128	14
	.4byte		.L332
.L338:
	.sleb128	12
	.byte		"LinIf_LinTrcvDrvCalls_t"
	.byte		0
	.4byte		.L339
.L337:
	.sleb128	13
	.4byte		.L338
.L336:
	.sleb128	14
	.4byte		.L337
.L340:
	.sleb128	13
	.4byte		.L294
.L342:
	.sleb128	12
	.byte		"LinIf_ChannelState_t"
	.byte		0
	.4byte		.L343
.L341:
	.sleb128	13
	.4byte		.L342
.L346:
	.sleb128	12
	.byte		"LinIf_LinDrvCalls_t"
	.byte		0
	.4byte		.L347
.L345:
	.sleb128	13
	.4byte		.L346
.L344:
	.sleb128	14
	.4byte		.L345
.L350:
	.sleb128	12
	.byte		"LinIfChannelManager"
	.byte		0
	.4byte		.L351
.L349:
	.sleb128	14
	.4byte		.L350
.L348:
	.sleb128	13
	.4byte		.L349
.L355:
	.sleb128	12
	.byte		"LinIfFrame"
	.byte		0
	.4byte		.L356
.L354:
	.sleb128	13
	.4byte		.L355
.L353:
	.sleb128	14
	.4byte		.L354
.L359:
	.sleb128	12
	.byte		"LinIfScheduleTable"
	.byte		0
	.4byte		.L360
.L358:
	.sleb128	13
	.4byte		.L359
.L357:
	.sleb128	14
	.4byte		.L358
.L361:
	.sleb128	14
	.4byte		.L312
.L362:
	.sleb128	14
	.4byte		.L294
.L364:
	.sleb128	12
	.byte		"LinIfSchTableType_t"
	.byte		0
	.4byte		.L365
.L366:
	.sleb128	12
	.byte		"LinIf_SchHandleType"
	.byte		0
	.4byte		.L294
.L367:
	.sleb128	12
	.byte		"LinIf_BusStatusStruct"
	.byte		0
	.4byte		.L368
.L369:
	.sleb128	12
	.byte		"LinIf_ChannelSubState_t"
	.byte		0
	.4byte		.L370
.L372:
	.sleb128	12
	.byte		"Lin_StatusType"
	.byte		0
	.4byte		.L294
.L373:
	.sleb128	12
	.byte		"LinIf_frameStatusType"
	.byte		0
	.4byte		.L374
.L377:
	.sleb128	12
	.byte		"LinIfEntry"
	.byte		0
	.4byte		.L378
.L376:
	.sleb128	13
	.4byte		.L377
.L375:
	.sleb128	14
	.4byte		.L376
	.section	.debug_info,,n
.L379:
	.sleb128	15
	.4byte		.L380-.L2
	.4byte		.L294
	.section	.debug_info,,n
	.sleb128	16
	.uleb128	7
	.sleb128	0
.L380:
.L383:
	.sleb128	12
	.byte		"LinIfResumePosition_t"
	.byte		0
	.4byte		.L384
.L382:
	.sleb128	13
	.4byte		.L383
.L386:
	.sleb128	12
	.byte		"LinIfRunMode_t"
	.byte		0
	.4byte		.L387
.L385:
	.sleb128	13
	.4byte		.L386
.L389:
	.sleb128	12
	.byte		"LinTp_Mode"
	.byte		0
	.4byte		.L390
.L388:
	.sleb128	13
	.4byte		.L389
.L391:
	.sleb128	13
	.4byte		.L366
.L395:
	.sleb128	12
	.byte		"Lin_FrameCsModelType"
	.byte		0
	.4byte		.L294
.L394:
	.sleb128	13
	.4byte		.L395
.L397:
	.sleb128	12
	.byte		"LinIfFrameType_t"
	.byte		0
	.4byte		.L398
.L396:
	.sleb128	13
	.4byte		.L397
.L400:
	.sleb128	12
	.byte		"Lin_FrameDlType"
	.byte		0
	.4byte		.L294
.L399:
	.sleb128	13
	.4byte		.L400
.L402:
	.sleb128	12
	.byte		"Lin_FramePidType"
	.byte		0
	.4byte		.L294
.L401:
	.sleb128	13
	.4byte		.L402
.L404:
	.sleb128	12
	.byte		"PduIdType"
	.byte		0
	.4byte		.L321
.L403:
	.sleb128	13
	.4byte		.L404
.L406:
	.sleb128	12
	.byte		"Lin_FrameResponseType"
	.byte		0
	.4byte		.L294
.L405:
	.sleb128	13
	.4byte		.L406
.L407:
	.sleb128	15
	.4byte		.L408-.L2
	.4byte		.L340
	.sleb128	16
	.uleb128	7
	.sleb128	0
.L408:
.L411:
	.sleb128	12
	.byte		"LinIfSubstitutionFrames"
	.byte		0
	.4byte		.L412
.L410:
	.sleb128	13
	.4byte		.L411
.L409:
	.sleb128	14
	.4byte		.L410
.L416:
	.sleb128	12
	.byte		"LinIf_ConfirmationUL_t"
	.byte		0
	.4byte		.L417
.L415:
	.sleb128	13
	.4byte		.L416
.L422:
	.sleb128	12
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L294
	.section	.debug_info,,n
.L420:
	.sleb128	17
	.4byte		.L421-.L2
	.4byte		.L422
	.byte		0x1
	.section	.debug_info,,n
	.sleb128	18
	.4byte		.L294
.L423:
	.sleb128	12
	.byte		"LinTrcv_TrcvModeType"
	.byte		0
	.4byte		.L424
	.sleb128	18
	.4byte		.L423
	.sleb128	0
.L421:
.L419:
	.sleb128	14
	.4byte		.L420
.L426:
	.sleb128	17
	.4byte		.L427-.L2
	.4byte		.L422
	.byte		0x1
	.sleb128	18
	.4byte		.L294
.L428:
	.sleb128	14
	.4byte		.L423
	.sleb128	18
	.4byte		.L428
	.sleb128	0
.L427:
.L425:
	.sleb128	14
	.4byte		.L426
.L430:
	.sleb128	17
	.4byte		.L431-.L2
	.4byte		.L422
	.byte		0x1
	.sleb128	18
	.4byte		.L294
.L433:
	.sleb128	12
	.byte		"LinTrcv_TrcvWakeupReasonType"
	.byte		0
	.4byte		.L434
.L432:
	.sleb128	14
	.4byte		.L433
	.sleb128	18
	.4byte		.L432
	.sleb128	0
.L431:
.L429:
	.sleb128	14
	.4byte		.L430
.L436:
	.sleb128	17
	.4byte		.L437-.L2
	.4byte		.L422
	.byte		0x1
	.sleb128	18
	.4byte		.L294
.L438:
	.sleb128	12
	.byte		"LinTrcv_TrcvWakeupModeType"
	.byte		0
	.4byte		.L439
	.sleb128	18
	.4byte		.L438
	.sleb128	0
.L437:
.L435:
	.sleb128	14
	.4byte		.L436
.L441:
	.sleb128	17
	.4byte		.L442-.L2
	.4byte		.L422
	.byte		0x1
	.sleb128	18
	.4byte		.L294
	.sleb128	0
.L442:
.L440:
	.sleb128	14
	.4byte		.L441
.L445:
	.sleb128	17
	.4byte		.L446-.L2
	.4byte		.L422
	.byte		0x1
	.sleb128	18
	.4byte		.L294
.L448:
	.sleb128	12
	.byte		"Lin_PduType"
	.byte		0
	.4byte		.L449
.L447:
	.sleb128	14
	.4byte		.L448
	.sleb128	18
	.4byte		.L447
	.sleb128	0
.L446:
.L444:
	.sleb128	14
	.4byte		.L445
.L451:
	.sleb128	17
	.4byte		.L452-.L2
	.4byte		.L422
	.byte		0x1
	.sleb128	18
	.4byte		.L294
	.sleb128	0
.L452:
.L450:
	.sleb128	14
	.4byte		.L451
.L454:
	.sleb128	17
	.4byte		.L455-.L2
	.4byte		.L422
	.byte		0x1
	.sleb128	18
	.4byte		.L294
	.sleb128	0
.L455:
.L453:
	.sleb128	14
	.4byte		.L454
.L457:
	.sleb128	17
	.4byte		.L458-.L2
	.4byte		.L422
	.byte		0x1
	.sleb128	18
	.4byte		.L294
	.sleb128	0
.L458:
.L456:
	.sleb128	14
	.4byte		.L457
.L460:
	.sleb128	17
	.4byte		.L461-.L2
	.4byte		.L372
	.byte		0x1
	.sleb128	18
	.4byte		.L294
.L462:
	.sleb128	14
	.4byte		.L362
	.sleb128	18
	.4byte		.L462
	.sleb128	0
.L461:
.L459:
	.sleb128	14
	.4byte		.L460
.L464:
	.sleb128	17
	.4byte		.L465-.L2
	.4byte		.L422
	.byte		0x1
	.sleb128	18
	.4byte		.L294
	.sleb128	0
.L465:
.L463:
	.sleb128	14
	.4byte		.L464
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L296:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locend
.L303:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),4
	.d2locend
.L305:
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo2),5
	.d2locend
.L308:
	.d2locreg	%offsetof(.Llo4), %offsetof(.Llo2),0
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "LinIf_FindChannel"
	.wrcm.nint32 "frameSize", 16
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\LinIf.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\LinIf.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\LinIf.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\LinIf.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\LinIf.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\LinIf.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\LinIf\ssc\make\..\src\LinIf.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
