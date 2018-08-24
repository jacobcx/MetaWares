#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"LinIf_Wakeup.c"
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
# FUNC (Std_ReturnType, LINIF_CODE) LinIf_Wakeup (NetworkHandleType Channel)
	.align		2
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinIf\\ssc\\make\\..\\src\\LinIf_Wakeup.c"
        .d2line         49,35
#$$ld
.L292:

#$$bf	LinIf_Wakeup,interprocedural,rasave,nostackparams
	.globl		LinIf_Wakeup
	.d2_cfa_start __cie
LinIf_Wakeup:
.Llo1:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r0,r3		# Channel=r0 Channel=r3
	.d2prologue_end
# {
#     P2CONST (LinIfChannel, AUTOMATIC, LINIF_APPL_DATA) crntChannel_p = NULL_PTR;
	.d2line		51
	diab.li		r31,0
.Llo15:
	stw		r31,8(r1)
# 
#     VAR (Std_ReturnType, AUTOMATIC) returnValue = E_OK;
# 
#     if (LINIF_UNINIT == LinIf_GlobalInitStsFlag)
	.d2line		55
	lis		r3,LinIf_GlobalInitStsFlag@ha
.Llo2:
	lbz		r3,LinIf_GlobalInitStsFlag@l(r3)
	se_cmpi		r3,0
	bc		0,2,.L279	# ne
#     {
# #if ( LINIF_DEV_ERROR_DETECT == STD_ON )
#         (void)Det_ReportError (LINIF_MODULE_ID,
#                 LINIF_INSTANCE_ID, LINIF_WAKEUP_FUN_ID, LINIF_E_UNINIT); /*[LINIF535]*/
# #endif /* End of LINIF_DEV_ERROR_DETECT  */
#         returnValue = E_NOT_OK;
	.d2line		61
.Llo3:
	diab.li		r31,1		# returnValue=r31
	b		.L280
.L279:
#     }
#     else
#     {
# 
# 
#         LinIf_FindChannel(Channel,&crntChannel_p);
	.d2line		67
	rlwinm		r3,r0,0,24,31		# Channel=r0
	diab.addi		r4,r1,8
	bl		LinIf_FindChannel
	.section	.text_vle
.L308:
# 
# #if ( LINIF_DEV_ERROR_DETECT == STD_ON )
#         if (NULL_PTR == crntChannel_p)
#         {
#             (void)Det_ReportError (LINIF_MODULE_ID,
#                     LINIF_INSTANCE_ID, LINIF_WAKEUP_FUN_ID,
#                     LINIF_E_NONEXISTENT_CHANNEL); /*[LINIF565]*/
# 
#             returnValue = E_NOT_OK;
#         }
# 
#         if (E_OK == returnValue)
# #endif /* End of LINIF_DEV_ERROR_DETECT  */
#         {
#             /* Pointer to Internal variables LinIfChannelManager */
#             CONSTP2VAR (LinIfChannelManager, AUTOMATIC, LINIF_APPL_DATA) channelManager_p =
	.d2line		83
.Llo4:
	lwz		r3,8(r1)
	lwz		r30,28(r3)		# channelManager_p=r30
.Llo18:
	mr		r30,r30		# channelManager_p=r30 channelManager_p=r30
#                 crntChannel_p->LinIf_channelManager_p;
# 
#             /* Get latest driver state */
#             LinIf_BusStateChecker(crntChannel_p);
	.d2line		87
	bl		LinIf_BusStateChecker
# 
#             if (LIN_CH_SLEEP == channelManager_p->LinIf_BusStatus.Lin_DriverGetStatusVal) /* LIN154 Lin_Wakeup called when the LIN is in LIN_CH_SLEEP*/
	.d2line		89
	lbz		r0,20(r30)		# Channel=r0 channelManager_p=r30
.Llo5:
	se_cmpi		r0,10		# Channel=r0
	bc		0,2,.L281	# ne
#             {
#                 /* Lin Driver wakeup call */
#                 returnValue = crntChannel_p->LinDrvCalls_p->Lin_Wakeup_p (
	.d2line		92
.Llo6:
	lwz		r4,8(r1)
	lwz		r3,24(r4)
	lwz		r0,12(r3)		# Channel=r0
	mtspr		ctr,r0		# Channel=ctr
	lis		r3,LinIf_ChannelIdentifier_p@ha
	lwz		r3,LinIf_ChannelIdentifier_p@l(r3)
	lbz		r0,12(r4)		# Channel=r0
.Llo7:
	e_mulli		r0,r0,3		# Channel=r0 Channel=r0
	se_add		r3,r0		# Channel=r0
	lbz		r3,2(r3)
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x8 0x0 0x0 0x1
#$$rs 1 u
	bcctrl		20,0
.Llo8:
	mr		r31,r3		# returnValue=r31 returnValue=r3
#                         LinIf_ChannelIdentifier_p[crntChannel_p->LinIfChannelIndex].LinIfChannelRef); /*[LINIF560] [LINIF129] [LINIF460] [LINIF296]*/
# 
#                 SchM_Enter_LinIf_ExclusiveArea0();
	.d2line		95
.Llo16:
	bl		SchM_Enter_LinIf_ExclusiveArea0
# 
#                 if (E_OK == returnValue) /* if the driver Lin_Wakeup function is properly executed */
	.d2line		97
	rlwinm		r3,r31,0,24,31		# returnValue=r31
	se_cmpi		r3,0
	bc		0,2,.L282	# ne
#                 {
#                     channelManager_p->LinIf_ChannelState = LINIF_CHANNEL_OPERATIONAL; /*[LINIF478_B] [LINIF459]*/
	.d2line		99
	diab.li		r0,1		# Channel=r0
.Llo9:
	stw		r0,44(r30)		# channelManager_p=r30 Channel=r0
#                     channelManager_p->LinIf_ChannelSubState = LINIF_CHANNEL_WAKEUP_CONFIRMATION_PENDING_TYPE_TRUE; /*[LINIF496] [LINIF432]*/
	.d2line		100
	diab.li		r0,5		# Channel=r0
	stw		r0,40(r30)		# channelManager_p=r30 Channel=r0
	b		.L283
.L282:
#                 }
#                 else
#                 {
#                     /*Set the pending wakeup confirmation Request flags to false*/
#                     channelManager_p->LinIf_ChannelSubState = LINIF_CHANNEL_WAKEUP_CONFIRMATION_PENDING_TYPE_FALSE;
	.d2line		105
.Llo10:
	diab.li		r0,4		# Channel=r0
.Llo11:
	stw		r0,40(r30)		# channelManager_p=r30 Channel=r0
#                     /* Set the variable to hold the presence of development errors as OK */
#                     returnValue = E_OK;
	.d2line		107
	diab.li		r31,0		# returnValue=r31
.L283:
#                 }
# 
#                 SchM_Exit_LinIf_ExclusiveArea0();
	.d2line		110
.Llo12:
	bl		SchM_Exit_LinIf_ExclusiveArea0
	b		.L280
.L281:
#             }
#             else /* LinIf was not in sleep */
#             {
#                 SchM_Enter_LinIf_ExclusiveArea0();
	.d2line		114
.Llo19:
	bl		SchM_Enter_LinIf_ExclusiveArea0
# 
#                 channelManager_p->LinIf_ChannelState = LINIF_CHANNEL_OPERATIONAL;
	.d2line		116
	diab.li		r0,1		# Channel=r0
.Llo13:
	stw		r0,44(r30)		# channelManager_p=r30 Channel=r0
#                 channelManager_p->LinIf_ChannelSubState = LINIF_CHANNEL_WAKEUP_CONFIRMATION_PENDING_TYPE_TRUE; /*[LINIF670] [LINIF432]*/
	.d2line		117
	diab.li		r0,5		# Channel=r0
	stw		r0,40(r30)		# channelManager_p=r30 Channel=r0
# 
#                 SchM_Exit_LinIf_ExclusiveArea0();
	.d2line		119
	bl		SchM_Exit_LinIf_ExclusiveArea0
	.section	.text_vle
.L309:
.L280:
#             }
#         }
#     }
#     /* [SWS_LinIf_00535] */
#     return (returnValue);
	.d2line		124
.Llo14:
	rlwinm		r3,r31,0,24,31		# returnValue=r31
# 
# } /* End of LinIf_Wakeup() */
	.d2line		126
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo17:
	lwz		r0,36(r1)		# Channel=r0
	mtspr		lr,r0		# Channel=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L293:
	.type		LinIf_Wakeup,@function
	.size		LinIf_Wakeup,.-LinIf_Wakeup
# Number of nodes = 113

# Allocations for LinIf_Wakeup
#	?a4		Channel
#	SP,8		crntChannel_p
#	?a5		returnValue
#	?a6		channelManager_p

# Allocations for module
	.section	.text_vle
	.0byte		.L321
	.section	.text_vle
#$$ld
.L5:
.L442:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\AUTOSAR\\ar422\\Lin_GeneralTypes.h"
.L327:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinIf\\ssc\\make\\..\\inc\\LinIf_Types.h"
.L319:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinIf\\ssc\\make\\..\\inc\\LinIf_Private.h"
.L294:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinIf\\ssc\\make\\..\\src\\LinIf_Wakeup.c"
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
	.uleb128	13
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
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
	.uleb128	15
	.byte		0x0
	.uleb128	73
	.uleb128	16
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
	.uleb128	18
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
	.uleb128	19
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinIf\\ssc\\make\\..\\src\\LinIf_Wakeup.c"
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
.L298:
	.sleb128	2
	.4byte		.L291-.L2
	.byte		"LinIf_Wakeup"
	.byte		0
	.4byte		.L294
	.uleb128	49
	.uleb128	35
	.4byte		.L295
	.byte		0x1
	.byte		0x1
	.4byte		.L292
	.4byte		.L293
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L294
	.uleb128	49
	.uleb128	35
	.byte		"Channel"
	.byte		0
	.4byte		.L299
	.4byte		.L300
	.section	.debug_info,,n
.L301:
	.sleb128	4
	.4byte		.L294
	.uleb128	51
	.uleb128	56
	.byte		"crntChannel_p"
	.byte		0
	.4byte		.L302
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
	.section	.debug_info,,n
.L306:
	.sleb128	5
	.4byte		.L294
	.uleb128	53
	.uleb128	37
	.byte		"returnValue"
	.byte		0
	.4byte		.L295
	.4byte		.L307
	.section	.debug_info,,n
	.sleb128	6
	.4byte		.L311
	.4byte		.L308
	.4byte		.L309
.L312:
	.sleb128	5
	.4byte		.L294
	.uleb128	83
	.uleb128	74
	.byte		"channelManager_p"
	.byte		0
	.4byte		.L313
	.4byte		.L317
	.section	.debug_info,,n
	.sleb128	0
.L311:
	.section	.debug_info,,n
	.sleb128	0
.L291:
	.section	.debug_info,,n
.L318:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L319
	.uleb128	206
	.uleb128	33
	.byte		"LinIf_GlobalInitStsFlag"
	.byte		0
	.4byte		.L320
	.0byte		.L318
.L321:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L319
	.uleb128	238
	.uleb128	76
	.byte		"LinIf_ChannelIdentifier_p"
	.byte		0
	.4byte		.L322
	.section	.debug_info,,n
	.section	.debug_info,,n
.L326:
	.sleb128	8
	.4byte		.L327
	.uleb128	322
	.uleb128	1
	.4byte		.L328-.L2
	.uleb128	3
	.section	.debug_info,,n
.L249:
	.sleb128	9
	.byte		"LinIfTrcvIdRef"
	.byte		0
	.4byte		.L329
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L250:
	.sleb128	9
	.byte		"LinIfChannelId"
	.byte		0
	.4byte		.L330
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L251:
	.sleb128	9
	.byte		"LinIfChannelRef"
	.byte		0
	.4byte		.L329
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L328:
.L305:
	.sleb128	8
	.4byte		.L327
	.uleb128	322
	.uleb128	1
	.4byte		.L331-.L2
	.uleb128	32
.L240:
	.sleb128	9
	.byte		"LinTrcvDrvCalls_p"
	.byte		0
	.4byte		.L332
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L241:
	.sleb128	9
	.byte		"WakeupSourceIdLin"
	.byte		0
	.4byte		.L336
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L242:
	.sleb128	9
	.byte		"WakeupSourceIdTrcv"
	.byte		0
	.4byte		.L336
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L243:
	.sleb128	9
	.byte		"LinIfChannelIndex"
	.byte		0
	.4byte		.L329
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L244:
	.sleb128	9
	.byte		"ExternalChannelIndex"
	.byte		0
	.4byte		.L330
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
.L245:
	.sleb128	9
	.byte		"LinIfDelayForSleep"
	.byte		0
	.4byte		.L336
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L246:
	.sleb128	9
	.byte		"LinIfStartupState"
	.byte		0
	.4byte		.L339
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L247:
	.sleb128	9
	.byte		"LinDrvCalls_p"
	.byte		0
	.4byte		.L342
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L248:
	.sleb128	9
	.byte		"LinIf_channelManager_p"
	.byte		0
	.4byte		.L313
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
	.sleb128	0
.L331:
.L316:
	.sleb128	8
	.4byte		.L327
	.uleb128	322
	.uleb128	1
	.4byte		.L346-.L2
	.uleb128	48
.L223:
	.sleb128	9
	.byte		"LinIf_NewScheduleTableType"
	.byte		0
	.4byte		.L347
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L224:
	.sleb128	9
	.byte		"LinIf_RunContSchTableIndexRequested"
	.byte		0
	.4byte		.L349
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L225:
	.sleb128	9
	.byte		"LinIf_RunOnceSchTableRequested"
	.byte		0
	.4byte		.L349
	.sleb128	2
	.byte		0x23
	.uleb128	5
	.byte		0x1
.L226:
	.sleb128	9
	.byte		"LinIf_EntryDelayCounter"
	.byte		0
	.4byte		.L350
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L227:
	.sleb128	9
	.byte		"LinIf_SleepDelayCounter"
	.byte		0
	.4byte		.L337
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L228:
	.sleb128	9
	.byte		"LinIf_ScheduleTableIndex"
	.byte		0
	.4byte		.L349
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L229:
	.sleb128	9
	.byte		"LinIf_ScheduleTableType"
	.byte		0
	.4byte		.L347
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L230:
	.sleb128	9
	.byte		"LinIf_BusStatus"
	.byte		0
	.4byte		.L352
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L231:
	.sleb128	9
	.byte		"LinIf_ChannelSubState"
	.byte		0
	.4byte		.L354
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L232:
	.sleb128	9
	.byte		"LinIf_ChannelState"
	.byte		0
	.4byte		.L340
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
	.sleb128	0
.L346:
.L353:
	.sleb128	8
	.4byte		.L327
	.uleb128	322
	.uleb128	1
	.4byte		.L356-.L2
	.uleb128	20
.L219:
	.sleb128	9
	.byte		"Lin_DriverGetStatusVal"
	.byte		0
	.4byte		.L357
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L220:
	.sleb128	9
	.byte		"LinIf_frameStatus"
	.byte		0
	.4byte		.L358
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L221:
	.sleb128	9
	.byte		"LinIf_frameEntry_p"
	.byte		0
	.4byte		.L360
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L222:
	.sleb128	9
	.byte		"LinIf_RxData"
	.byte		0
	.4byte		.L364
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L356:
.L363:
	.sleb128	8
	.4byte		.L327
	.uleb128	322
	.uleb128	1
	.4byte		.L366-.L2
	.uleb128	8
.L210:
	.sleb128	9
	.byte		"LinIfDelay"
	.byte		0
	.4byte		.L367
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L211:
	.sleb128	9
	.byte		"LinIfCollisionResolvingRef"
	.byte		0
	.4byte		.L368
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L212:
	.sleb128	9
	.byte		"LinIfFrameRef"
	.byte		0
	.4byte		.L369
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L366:
.L372:
	.sleb128	8
	.4byte		.L327
	.uleb128	322
	.uleb128	1
	.4byte		.L373-.L2
	.uleb128	32
.L196:
	.sleb128	9
	.byte		"LinIfChecksumType"
	.byte		0
	.4byte		.L374
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L197:
	.sleb128	9
	.byte		"LinIfFrameType"
	.byte		0
	.4byte		.L376
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L198:
	.sleb128	9
	.byte		"LinIfLength"
	.byte		0
	.4byte		.L379
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L199:
	.sleb128	9
	.byte		"LinIfPid"
	.byte		0
	.4byte		.L381
	.sleb128	2
	.byte		0x23
	.uleb128	9
	.byte		0x1
.L200:
	.sleb128	9
	.byte		"LinIfTxConfirmationId"
	.byte		0
	.4byte		.L383
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L201:
	.sleb128	9
	.byte		"LinIfPduDirection"
	.byte		0
	.4byte		.L385
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L202:
	.sleb128	9
	.byte		"LinIfFixedFrameSduData"
	.byte		0
	.4byte		.L387
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
.L203:
	.sleb128	9
	.byte		"LinIfRxTxTargetPduRef"
	.byte		0
	.4byte		.L383
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L204:
	.sleb128	9
	.byte		"LinIfSubsFrames_p"
	.byte		0
	.4byte		.L389
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L205:
	.sleb128	9
	.byte		"LinIfNoOfSubEntry"
	.byte		0
	.4byte		.L329
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L206:
	.sleb128	9
	.byte		"LinIfFunctionIndex"
	.byte		0
	.4byte		.L367
	.sleb128	2
	.byte		0x23
	.uleb128	30
	.byte		0x1
	.sleb128	0
.L373:
.L392:
	.sleb128	8
	.4byte		.L327
	.uleb128	322
	.uleb128	1
	.4byte		.L393-.L2
	.uleb128	2
.L194:
	.sleb128	9
	.byte		"LinIfSubFrameIndex"
	.byte		0
	.4byte		.L329
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L195:
	.sleb128	9
	.byte		"LinIfSubFramePriority"
	.byte		0
	.4byte		.L329
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
	.sleb128	0
.L393:
.L335:
	.sleb128	8
	.4byte		.L327
	.uleb128	232
	.uleb128	14
	.4byte		.L394-.L2
	.uleb128	20
.L183:
	.sleb128	9
	.byte		"LinTrcv_SetOpMode_p"
	.byte		0
	.4byte		.L395
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L184:
	.sleb128	9
	.byte		"LinTrcv_GetOpMode_p"
	.byte		0
	.4byte		.L400
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L185:
	.sleb128	9
	.byte		"LinTrcv_GetBusWuReason_p"
	.byte		0
	.4byte		.L404
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L186:
	.sleb128	9
	.byte		"LinTrcv_SetWakeupMode_p"
	.byte		0
	.4byte		.L410
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L187:
	.sleb128	9
	.byte		"LinTrcv_CheckWakeup_p"
	.byte		0
	.4byte		.L415
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L394:
.L345:
	.sleb128	8
	.4byte		.L327
	.uleb128	184
	.uleb128	1
	.4byte		.L418-.L2
	.uleb128	24
.L177:
	.sleb128	9
	.byte		"Lin_SendFrame_p"
	.byte		0
	.4byte		.L419
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L178:
	.sleb128	9
	.byte		"Lin_GoToSleep_p"
	.byte		0
	.4byte		.L425
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L179:
	.sleb128	9
	.byte		"Lin_GoToSleepInternal_p"
	.byte		0
	.4byte		.L428
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L180:
	.sleb128	9
	.byte		"Lin_Wakeup_p"
	.byte		0
	.4byte		.L431
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L181:
	.sleb128	9
	.byte		"Lin_GetStatus_p"
	.byte		0
	.4byte		.L434
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L182:
	.sleb128	9
	.byte		"Lin_CheckWakeup_p"
	.byte		0
	.4byte		.L439
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L418:
.L424:
	.sleb128	8
	.4byte		.L442
	.uleb128	59
	.uleb128	13
	.4byte		.L443-.L2
	.uleb128	8
.L92:
	.sleb128	9
	.byte		"Pid"
	.byte		0
	.4byte		.L382
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L93:
	.sleb128	9
	.byte		"Cs"
	.byte		0
	.4byte		.L375
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L94:
	.sleb128	9
	.byte		"Drc"
	.byte		0
	.4byte		.L386
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L95:
	.sleb128	9
	.byte		"Dl"
	.byte		0
	.4byte		.L380
	.sleb128	2
	.byte		0x23
	.uleb128	3
	.byte		0x1
.L96:
	.sleb128	9
	.byte		"SduPtr"
	.byte		0
	.4byte		.L438
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L443:
	.section	.debug_info,,n
.L359:
	.sleb128	10
	.4byte		.L327
	.uleb128	184
	.uleb128	1
	.4byte		.L444-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	11
	.byte		"LINIF_FRAME_IDLE"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"LINIF_FRAME_RX_ONGOING"
	.byte		0
	.sleb128	1
	.sleb128	11
	.byte		"LINIF_FRAME_TX_ONGOING"
	.byte		0
	.sleb128	2
	.sleb128	11
	.byte		"LINIF_FRAME_FINISHED"
	.byte		0
	.sleb128	3
	.sleb128	11
	.byte		"LINIF_FRAME_ERROR"
	.byte		0
	.sleb128	4
	.sleb128	0
.L444:
.L378:
	.sleb128	10
	.4byte		.L327
	.uleb128	110
	.uleb128	1
	.4byte		.L445-.L2
	.uleb128	4
	.sleb128	11
	.byte		"INVALID_STATE"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"FREE"
	.byte		0
	.sleb128	1
	.sleb128	11
	.byte		"ASSIGN"
	.byte		0
	.sleb128	2
	.sleb128	11
	.byte		"ASSIGN_FRAME_ID_RANGE"
	.byte		0
	.sleb128	3
	.sleb128	11
	.byte		"EVENT_TRIGGERED"
	.byte		0
	.sleb128	4
	.sleb128	11
	.byte		"SAVE_CONFIGURATION"
	.byte		0
	.sleb128	5
	.sleb128	11
	.byte		"SPORADIC"
	.byte		0
	.sleb128	6
	.sleb128	11
	.byte		"SRF"
	.byte		0
	.sleb128	7
	.sleb128	11
	.byte		"UNASSIGN"
	.byte		0
	.sleb128	8
	.sleb128	11
	.byte		"UNCONDITIONAL"
	.byte		0
	.sleb128	9
	.sleb128	0
.L445:
.L355:
	.sleb128	10
	.4byte		.L327
	.uleb128	87
	.uleb128	1
	.4byte		.L446-.L2
	.uleb128	4
	.sleb128	11
	.byte		"LINIF_CHANNEL_SUBSTATE_IDLE"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"LINIF_CHANNEL_SLEEP_REQUEST"
	.byte		0
	.sleb128	1
	.sleb128	11
	.byte		"LINIF_CHANNEL_SLEEP_PENDING"
	.byte		0
	.sleb128	2
	.sleb128	11
	.byte		"LINIF_CHANNEL_GOTO_SLEEP_INTERNAL"
	.byte		0
	.sleb128	3
	.sleb128	11
	.byte		"LINIF_CHANNEL_WAKEUP_CONFIRMATION_PENDING_TYPE_FALSE"
	.byte		0
	.sleb128	4
	.sleb128	11
	.byte		"LINIF_CHANNEL_WAKEUP_CONFIRMATION_PENDING_TYPE_TRUE"
	.byte		0
	.sleb128	5
	.sleb128	0
.L446:
.L341:
	.sleb128	10
	.4byte		.L327
	.uleb128	79
	.uleb128	1
	.4byte		.L447-.L2
	.uleb128	4
	.sleb128	11
	.byte		"LINIF_CHANNEL_UNINIT"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"LINIF_CHANNEL_OPERATIONAL"
	.byte		0
	.sleb128	1
	.sleb128	11
	.byte		"LINIF_CHANNEL_SLEEP"
	.byte		0
	.sleb128	2
	.sleb128	0
.L447:
.L348:
	.sleb128	10
	.4byte		.L327
	.uleb128	70
	.uleb128	1
	.4byte		.L448-.L2
	.uleb128	4
	.sleb128	11
	.byte		"NULL_SCHEDULE"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"ACTIVE_RUN_ONCE"
	.byte		0
	.sleb128	1
	.sleb128	11
	.byte		"ACTIVE_RUN_CONTINUOUS"
	.byte		0
	.sleb128	2
	.sleb128	11
	.byte		"ACTIVE_SCHEDULE_MANAGER_OFF"
	.byte		0
	.sleb128	3
	.sleb128	0
.L448:
.L399:
	.sleb128	10
	.4byte		.L442
	.uleb128	59
	.uleb128	13
	.4byte		.L449-.L2
	.uleb128	4
	.sleb128	11
	.byte		"LINTRCV_TRCV_MODE_NORMAL"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"LINTRCV_TRCV_MODE_STANDBY"
	.byte		0
	.sleb128	1
	.sleb128	11
	.byte		"LINTRCV_TRCV_MODE_SLEEP"
	.byte		0
	.sleb128	2
	.sleb128	0
.L449:
.L409:
	.sleb128	10
	.4byte		.L442
	.uleb128	49
	.uleb128	13
	.4byte		.L450-.L2
	.uleb128	4
	.sleb128	11
	.byte		"LINTRCV_WU_ERROR"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"LINTRCV_WU_NOT_SUPPORTED"
	.byte		0
	.sleb128	1
	.sleb128	11
	.byte		"LINTRCV_WU_BY_BUS"
	.byte		0
	.sleb128	2
	.sleb128	11
	.byte		"LINTRCV_WU_BY_PIN"
	.byte		0
	.sleb128	3
	.sleb128	11
	.byte		"LINTRCV_WU_INTERNALLY"
	.byte		0
	.sleb128	4
	.sleb128	11
	.byte		"LINTRCV_WU_RESET"
	.byte		0
	.sleb128	5
	.sleb128	11
	.byte		"LINTRCV_WU_POWER_ON"
	.byte		0
	.sleb128	6
	.sleb128	0
.L450:
.L414:
	.sleb128	10
	.4byte		.L442
	.uleb128	42
	.uleb128	13
	.4byte		.L451-.L2
	.uleb128	4
	.sleb128	11
	.byte		"LINTRCV_WUMODE_ENABLE"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"LINTRCV_WUMODE_DISABLE"
	.byte		0
	.sleb128	1
	.sleb128	11
	.byte		"LINTRCV_WUMODE_CLEAR"
	.byte		0
	.sleb128	2
	.sleb128	0
.L451:
	.section	.debug_info,,n
.L297:
	.sleb128	12
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L296:
	.sleb128	13
	.byte		"uint8"
	.byte		0
	.4byte		.L297
.L295:
	.sleb128	13
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L296
.L299:
	.sleb128	13
	.byte		"NetworkHandleType"
	.byte		0
	.4byte		.L296
.L304:
	.sleb128	13
	.byte		"LinIfChannel"
	.byte		0
	.4byte		.L305
	.section	.debug_info,,n
.L303:
	.sleb128	14
	.4byte		.L304
	.section	.debug_info,,n
.L302:
	.sleb128	15
	.4byte		.L303
.L315:
	.sleb128	13
	.byte		"LinIfChannelManager"
	.byte		0
	.4byte		.L316
.L314:
	.sleb128	15
	.4byte		.L315
.L313:
	.sleb128	14
	.4byte		.L314
.L320:
	.sleb128	13
	.byte		"boolean"
	.byte		0
	.4byte		.L297
.L325:
	.sleb128	13
	.byte		"LinIfChannelIdentifier"
	.byte		0
	.4byte		.L326
.L324:
	.sleb128	14
	.4byte		.L325
.L323:
	.sleb128	15
	.4byte		.L324
.L322:
	.sleb128	14
	.4byte		.L323
.L329:
	.sleb128	14
	.4byte		.L296
.L330:
	.sleb128	14
	.4byte		.L299
.L334:
	.sleb128	13
	.byte		"LinIf_LinTrcvDrvCalls_t"
	.byte		0
	.4byte		.L335
.L333:
	.sleb128	14
	.4byte		.L334
.L332:
	.sleb128	15
	.4byte		.L333
.L338:
	.sleb128	12
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L337:
	.sleb128	13
	.byte		"uint32"
	.byte		0
	.4byte		.L338
.L336:
	.sleb128	14
	.4byte		.L337
.L340:
	.sleb128	13
	.byte		"LinIf_ChannelState_t"
	.byte		0
	.4byte		.L341
.L339:
	.sleb128	14
	.4byte		.L340
.L344:
	.sleb128	13
	.byte		"LinIf_LinDrvCalls_t"
	.byte		0
	.4byte		.L345
.L343:
	.sleb128	14
	.4byte		.L344
.L342:
	.sleb128	15
	.4byte		.L343
.L347:
	.sleb128	13
	.byte		"LinIfSchTableType_t"
	.byte		0
	.4byte		.L348
.L349:
	.sleb128	13
	.byte		"LinIf_SchHandleType"
	.byte		0
	.4byte		.L296
.L351:
	.sleb128	12
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L350:
	.sleb128	13
	.byte		"uint16"
	.byte		0
	.4byte		.L351
.L352:
	.sleb128	13
	.byte		"LinIf_BusStatusStruct"
	.byte		0
	.4byte		.L353
.L354:
	.sleb128	13
	.byte		"LinIf_ChannelSubState_t"
	.byte		0
	.4byte		.L355
.L357:
	.sleb128	13
	.byte		"Lin_StatusType"
	.byte		0
	.4byte		.L296
.L358:
	.sleb128	13
	.byte		"LinIf_frameStatusType"
	.byte		0
	.4byte		.L359
.L362:
	.sleb128	13
	.byte		"LinIfEntry"
	.byte		0
	.4byte		.L363
.L361:
	.sleb128	14
	.4byte		.L362
.L360:
	.sleb128	15
	.4byte		.L361
	.section	.debug_info,,n
.L364:
	.sleb128	16
	.4byte		.L365-.L2
	.4byte		.L296
	.section	.debug_info,,n
	.sleb128	17
	.uleb128	7
	.sleb128	0
.L365:
.L367:
	.sleb128	14
	.4byte		.L350
.L368:
	.sleb128	14
	.4byte		.L349
.L371:
	.sleb128	13
	.byte		"LinIfFrame"
	.byte		0
	.4byte		.L372
.L370:
	.sleb128	14
	.4byte		.L371
.L369:
	.sleb128	15
	.4byte		.L370
.L375:
	.sleb128	13
	.byte		"Lin_FrameCsModelType"
	.byte		0
	.4byte		.L296
.L374:
	.sleb128	14
	.4byte		.L375
.L377:
	.sleb128	13
	.byte		"LinIfFrameType_t"
	.byte		0
	.4byte		.L378
.L376:
	.sleb128	14
	.4byte		.L377
.L380:
	.sleb128	13
	.byte		"Lin_FrameDlType"
	.byte		0
	.4byte		.L296
.L379:
	.sleb128	14
	.4byte		.L380
.L382:
	.sleb128	13
	.byte		"Lin_FramePidType"
	.byte		0
	.4byte		.L296
.L381:
	.sleb128	14
	.4byte		.L382
.L384:
	.sleb128	13
	.byte		"PduIdType"
	.byte		0
	.4byte		.L350
.L383:
	.sleb128	14
	.4byte		.L384
.L386:
	.sleb128	13
	.byte		"Lin_FrameResponseType"
	.byte		0
	.4byte		.L296
.L385:
	.sleb128	14
	.4byte		.L386
.L387:
	.sleb128	16
	.4byte		.L388-.L2
	.4byte		.L329
	.sleb128	17
	.uleb128	7
	.sleb128	0
.L388:
.L391:
	.sleb128	13
	.byte		"LinIfSubstitutionFrames"
	.byte		0
	.4byte		.L392
.L390:
	.sleb128	14
	.4byte		.L391
.L389:
	.sleb128	15
	.4byte		.L390
	.section	.debug_info,,n
.L396:
	.sleb128	18
	.4byte		.L397-.L2
	.4byte		.L295
	.byte		0x1
	.section	.debug_info,,n
	.sleb128	19
	.4byte		.L296
.L398:
	.sleb128	13
	.byte		"LinTrcv_TrcvModeType"
	.byte		0
	.4byte		.L399
	.sleb128	19
	.4byte		.L398
	.sleb128	0
.L397:
.L395:
	.sleb128	15
	.4byte		.L396
.L401:
	.sleb128	18
	.4byte		.L402-.L2
	.4byte		.L295
	.byte		0x1
	.sleb128	19
	.4byte		.L296
.L403:
	.sleb128	15
	.4byte		.L398
	.sleb128	19
	.4byte		.L403
	.sleb128	0
.L402:
.L400:
	.sleb128	15
	.4byte		.L401
.L405:
	.sleb128	18
	.4byte		.L406-.L2
	.4byte		.L295
	.byte		0x1
	.sleb128	19
	.4byte		.L296
.L408:
	.sleb128	13
	.byte		"LinTrcv_TrcvWakeupReasonType"
	.byte		0
	.4byte		.L409
.L407:
	.sleb128	15
	.4byte		.L408
	.sleb128	19
	.4byte		.L407
	.sleb128	0
.L406:
.L404:
	.sleb128	15
	.4byte		.L405
.L411:
	.sleb128	18
	.4byte		.L412-.L2
	.4byte		.L295
	.byte		0x1
	.sleb128	19
	.4byte		.L296
.L413:
	.sleb128	13
	.byte		"LinTrcv_TrcvWakeupModeType"
	.byte		0
	.4byte		.L414
	.sleb128	19
	.4byte		.L413
	.sleb128	0
.L412:
.L410:
	.sleb128	15
	.4byte		.L411
.L416:
	.sleb128	18
	.4byte		.L417-.L2
	.4byte		.L295
	.byte		0x1
	.sleb128	19
	.4byte		.L296
	.sleb128	0
.L417:
.L415:
	.sleb128	15
	.4byte		.L416
.L420:
	.sleb128	18
	.4byte		.L421-.L2
	.4byte		.L295
	.byte		0x1
	.sleb128	19
	.4byte		.L296
.L423:
	.sleb128	13
	.byte		"Lin_PduType"
	.byte		0
	.4byte		.L424
.L422:
	.sleb128	15
	.4byte		.L423
	.sleb128	19
	.4byte		.L422
	.sleb128	0
.L421:
.L419:
	.sleb128	15
	.4byte		.L420
.L426:
	.sleb128	18
	.4byte		.L427-.L2
	.4byte		.L295
	.byte		0x1
	.sleb128	19
	.4byte		.L296
	.sleb128	0
.L427:
.L425:
	.sleb128	15
	.4byte		.L426
.L429:
	.sleb128	18
	.4byte		.L430-.L2
	.4byte		.L295
	.byte		0x1
	.sleb128	19
	.4byte		.L296
	.sleb128	0
.L430:
.L428:
	.sleb128	15
	.4byte		.L429
.L432:
	.sleb128	18
	.4byte		.L433-.L2
	.4byte		.L295
	.byte		0x1
	.sleb128	19
	.4byte		.L296
	.sleb128	0
.L433:
.L431:
	.sleb128	15
	.4byte		.L432
.L435:
	.sleb128	18
	.4byte		.L436-.L2
	.4byte		.L357
	.byte		0x1
	.sleb128	19
	.4byte		.L296
.L438:
	.sleb128	15
	.4byte		.L296
.L437:
	.sleb128	15
	.4byte		.L438
	.sleb128	19
	.4byte		.L437
	.sleb128	0
.L436:
.L434:
	.sleb128	15
	.4byte		.L435
.L440:
	.sleb128	18
	.4byte		.L441-.L2
	.4byte		.L295
	.byte		0x1
	.sleb128	19
	.4byte		.L296
	.sleb128	0
.L441:
.L439:
	.sleb128	15
	.4byte		.L440
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L300:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),0
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),0
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),0
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),0
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo12),0
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo14),0
	.d2locend
.L307:
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo8),31
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo17),31
	.d2locend
.L317:
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo12),30
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo14),30
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "LinIf_Wakeup"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nstrlist "calls", "LinIf_BusStateChecker","LinIf_FindChannel","SchM_Enter_LinIf_ExclusiveArea0","SchM_Exit_LinIf_ExclusiveArea0"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\LinIf_Wakeup.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\LinIf_Wakeup.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\LinIf_Wakeup.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\LinIf_Wakeup.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\LinIf_Wakeup.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\LinIf_Wakeup.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\LinIf\ssc\make\..\src\LinIf_Wakeup.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
