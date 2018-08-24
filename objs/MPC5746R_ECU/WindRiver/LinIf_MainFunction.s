#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"LinIf_MainFunction.c"
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
# FUNC (void, LINIF_CODE) LinIf_MainFunction(void)
	.align		2
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinIf\\ssc\\make\\..\\src\\LinIf_MainFunction.c"
        .d2line         56,25
#$$ld
.L305:

#$$bf	LinIf_MainFunction,interprocedural,rasave,nostackparams
	.globl		LinIf_MainFunction
	.d2_cfa_start __cie
LinIf_MainFunction:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     /* if the LinIf module is not initialized */
#     if (LINIF_UNINIT == LinIf_GlobalInitStsFlag)
	.d2line		59
	lis		r3,LinIf_GlobalInitStsFlag@ha
	lbz		r0,LinIf_GlobalInitStsFlag@l(r3)
	se_cmpi		r0,0
	bc		1,2,.L278	# eq
	.section	.text_vle
.L309:
#     {
# #if ( LINIF_DEV_ERROR_DETECT == STD_ON )
#         /* Report the error to DET module */
#         (void)Det_ReportError (LINIF_MODULE_ID, LINIF_INSTANCE_ID, LINIF_MAIN_FUN_ID, LINIF_E_UNINIT); /*[LINIF535]*/
# #endif /* End of LINIF_DEV_ERROR_DETECT */
#     }
#     else
#     {
#         VAR (ChannelTypeFast, LINIF_APPL_DATA) chIndex;
# 
#         /* Iterate through all channels of Lin */
#         for (chIndex = 0U; chIndex < (ChannelTypeFast)LinIf_GlobalConfig_p->MaxLinIfChannel; chIndex++) /*[LINIF386]*/ /*[LINIF473]*/
	.d2line		71
	diab.li		r31,0		# chIndex=r31
.L281:
.Llo1:
	lis		r3,LinIf_GlobalConfig_p@ha		# currentChannel=r3
.Llo3:
	lwz		r3,LinIf_GlobalConfig_p@l(r3)		# currentChannel=r3 currentChannel=r3
	lhz		r0,0(r3)		# currentChannel=r3
	se_cmpl		r0,r31		# chIndex=r31
	bc		0,1,.L278	# le
	.section	.text_vle
.L318:
#         {
#             P2CONST (LinIfChannel, AUTOMATIC, LINIF_APPL_DATA) currentChannel = &(LinIf_ConfigChannelLT_p[chIndex]);
	.d2line		73
.Llo4:
	lis		r3,LinIf_ConfigChannelLT_p@ha		# currentChannel=r3
.Llo5:
	lwz		r30,LinIf_ConfigChannelLT_p@l(r3)		# currentChannel=r30 currentChannel=r3
	rlwinm		r0,r31,5,0,26		# chIndex=r31
	se_add		r0,r30		# currentChannel=r30
	mr		r30,r0		# currentChannel=r30 currentChannel=r0
# 
#             P2VAR (LinIfChannelManager, AUTOMATIC, LINIF_APPL_DATA) channelManager_p = currentChannel->LinIf_channelManager_p;
	.d2line		75
	lwz		r29,28(r30)		# channelManager_p=r29 currentChannel=r30
.Llo9:
	mr		r29,r29		# channelManager_p=r29 channelManager_p=r29
# 
# 
# #if ( LINIF_ENABLE_CONFIRMATIONS == STD_ON )
# 
#             LinIf_WakeUpConfirmation(currentChannel);
	.d2line		80
	mr		r3,r30		# currentChannel=r3 currentChannel=r30
.Llo6:
	bl		LinIf_WakeUpConfirmation
# 
# #endif /*Confirmation*/
# 
#             /* Check if the current channel's status(B3) is OPERATIONAL to transmit LIN frame and the NULL_SCHEDULE is not executing*/
#             if ( (channelManager_p->LinIf_ChannelState == LINIF_CHANNEL_OPERATIONAL) && /*[LINIF189]*/ /*[LINIF043]*/
	.d2line		85
	lwz		r0,44(r29)		# channelManager_p=r29
	se_cmpi		r0,1
	bc		0,2,.L284	# ne
.Llo7:
	lwz		r0,16(r29)		# channelManager_p=r29
	se_cmpi		r0,0
	bc		0,2,.L293	# ne
	lwz		r0,16(r29)		# channelManager_p=r29
	lwz		r3,0(r29)		# currentChannel=r3 channelManager_p=r29
	se_cmp		r0,r3		# currentChannel=r3
	bc		1,2,.L284	# eq
.L293:
#                  ((NULL_SCHEDULE != channelManager_p->LinIf_ScheduleTableType) /*[LINIF263]*/
# #if ( LINIF_ENABLE_SCHEDULE_TABLE_MANAGER == STD_ON )
#                   || (channelManager_p->LinIf_ScheduleTableType!=channelManager_p->LinIf_NewScheduleTableType)
# #endif
#                  )
#                )
#             {
#                 LinIf_BusStateChecker(currentChannel);
	.d2line		93
	mr		r3,r30		# currentChannel=r3 currentChannel=r30
	bl		LinIf_BusStateChecker
# 
# #if( LINIF_TP_SUPPORTED == STD_ON )
#                 /* Update TP related  Timers */
#                 LinTp_TriggerTimer(currentChannel);
# #endif /* LINIF_TP_SUPPORTED*/
# 
#                 /* Process the driver status of transmitted/received frames */
#                 LinIf_FrameStatusManager(currentChannel); /*[LINIF287]*/
	.d2line		101
	mr		r3,r30		# currentChannel=r3 currentChannel=r30
	bl		LinIf_FrameStatusManager
# 
# #if ( LINIF_TP_SUPPORTED == STD_ON )
#                 /* Check the buffer size available for Rx of the next CF and also check the timers */
#                 LinTp_TimedActions(currentChannel);
# #endif/* End of LINIF_TP_SUPPORTED */
# 
#                 /* Check if the next schedule entry is due */
#                 if (LINIF_MAIN_AT_ENTRY == channelManager_p->LinIf_EntryDelayCounter)
	.d2line		109
	lhz		r0,6(r29)		# channelManager_p=r29
	se_cmpi		r0,0
	bc		0,2,.L285	# ne
#                 {
#                     /* reset frame state */
# #if ( LINIF_TP_SUPPORTED == STD_ON )
#                     if ((LINIF_FRAME_UPPER_LAYER_BUSY != channelManager_p->LinIf_BusStatus.LinIf_frameStatus) &&
#                         (LINIF_FRAME_DRIVER_TX_BUSY != channelManager_p->LinIf_BusStatus.LinIf_frameStatus))
# #endif
#                     {
#                         channelManager_p->LinIf_BusStatus.LinIf_frameStatus = LINIF_FRAME_IDLE;
	.d2line		117
	diab.li		r0,0
	stw		r0,24(r29)		# channelManager_p=r29
#                     }
# 
#                     /* Check whether any Sleep Status(B0) is pending(high priority task) */
#                     if (channelManager_p->LinIf_ChannelSubState == LINIF_CHANNEL_SLEEP_REQUEST)
	.d2line		121
	lwz		r0,40(r29)		# channelManager_p=r29
	se_cmpi		r0,1
	bc		0,2,.L286	# ne
#                     {
#                         /* Execute go to sleep command */
#                         LinIf_ProcessSleep(currentChannel); /*[LINIF453]*/
	.d2line		124
.Llo10:
	mr		r3,r30		# currentChannel=r3 currentChannel=r30
	bl		LinIf_ProcessSleep
	b		.L289
.L286:
#                     }
#                     else
#                     {
#                         /* Handle Schedule Table Manager */
#                         LinIf_STM_HandleScheduleTable(currentChannel); /* [LINIF053] [LINIF286]*/
	.d2line		129
	mr		r3,r30		# currentChannel=r3 currentChannel=r30
	bl		LinIf_STM_HandleScheduleTable
# 
# #if ( LINIF_TP_SUPPORTED == STD_ON )
# 
#    #if ( LINIF_ENABLE_CONFIRMATIONS == STD_ON )
#                         if (NotRequested != channelManager_p->LinTp_delayedBswmCall)
#                         {
#                             BswM_LinTp_RequestMode(currentChannel->ExternalChannelIndex,LINTP_DIAG_REQUEST);
# 
#                             channelManager_p->LinTp_delayedBswmCall = NotRequested;
#                             LinIf_STM_HandleScheduleTable(currentChannel);
#                         }
#    #endif
#                         /* If the current schedule table is not a Diag response schedule
#                          * table then continue normally else check if the suspend header flag is set
#                          * i.e no buffer found for receiving previous frame then hold the reception of next frame */
#                         if(TRUE == LINTP_IS_BIT_SET(channelManager_p->LinTp_FrameStatus, LINTP_FRAME_SUSPEND_HEADERS))
#                         {
#                             LINTP_CLEAR_BITX(&channelManager_p->LinTp_FrameStatus, LINTP_FRAME_SUSPEND_HEADERS); /*[LINIF330]*/ /*[LINIF680]*/
#                         }
#                         else
# #endif
#                         {
#                             /* Handle the frame for transmit */
#                             LinIf_ExecuteFrameTransmit(currentChannel); /*[LINIF672]*/ /*[LINIF287]*/
	.d2line		153
	mr		r3,r30		# currentChannel=r3 currentChannel=r30
	bl		LinIf_ExecuteFrameTransmit
	b		.L289
.L285:
#                         }
#                     }
#                 }
#                 else
#                 {
#                     channelManager_p->LinIf_EntryDelayCounter--;
	.d2line		159
.Llo11:
	lhz		r0,6(r29)		# channelManager_p=r29
	diab.li		r3,65535		# currentChannel=r3
	se_add		r0,r3		# currentChannel=r3
	sth		r0,6(r29)		# channelManager_p=r29
	b		.L289
.L284:
#                 }
#             }
#             else if (channelManager_p->LinIf_ChannelState == LINIF_CHANNEL_SLEEP)
	.d2line		162
	lwz		r0,44(r29)		# channelManager_p=r29
	se_cmpi		r0,2
	bc		0,2,.L290	# ne
#             {
#                 if ( channelManager_p->LinIf_ChannelSubState == LINIF_CHANNEL_GOTO_SLEEP_INTERNAL )
	.d2line		164
	lwz		r0,40(r29)		# channelManager_p=r29
	se_cmpi		r0,3
	bc		0,2,.L291	# ne
#                 {
#                     LinIf_GotoSleepInternalProcess(currentChannel, channelManager_p); /*[LINIF597]*/
	.d2line		166
	mr		r3,r30		# currentChannel=r3 currentChannel=r30
	mr		r4,r29		# channelManager_p=r4 channelManager_p=r29
	bl		LinIf_GotoSleepInternalProcess
.L291:
#                 }
# 
#                 LinIf_TimedSleepActions(currentChannel, channelManager_p);
	.d2line		169
	mr		r3,r30		# currentChannel=r3 currentChannel=r30
	mr		r4,r29		# channelManager_p=r4 channelManager_p=r29
	bl		LinIf_TimedSleepActions
	b		.L289
.L290:
#             }
#             else /* LINIF_CHANNEL_UNINIT or (LINIF_CHANNEL_OPERATIONAL and NULL_SCHEDULE)*/
#             {
#                 LinIf_TimedSleepActions(currentChannel, channelManager_p);
	.d2line		173
	mr		r3,r30		# currentChannel=r3 currentChannel=r30
	mr		r4,r29		# channelManager_p=r4 channelManager_p=r29
	bl		LinIf_TimedSleepActions
.L289:
	.section	.text_vle
.L319:
# 
# #if ( LINIF_TP_SUPPORTED == STD_ON )
#                 LinTp_InactiveTimedActions (currentChannel);
# #endif/* End of LINIF_TP_SUPPORTED */
#             }
#         }   /* End for */
	.d2line		179
.Llo8:
	diab.addi		r0,r31,1		# chIndex=r31
	se_addi		r31,1		# chIndex=r31 chIndex=r31
	b		.L281
	.section	.text_vle
.L310:
.L278:
#     } /* [SWS_LinIf_00535] */
# } /* End of LinIf_MainFunction( ) */
	.d2line		181
	.d2epilogue_begin
.Llo2:
	lmw		r29,20(r1)		# offset r1+20  0x14
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
.L306:
	.type		LinIf_MainFunction,@function
	.size		LinIf_MainFunction,.-LinIf_MainFunction
# Number of nodes = 129

# Allocations for LinIf_MainFunction
#	?a4		chIndex
#	?a5		currentChannel
#	?a6		channelManager_p

# Allocations for module
	.section	.text_vle
	.0byte		.L342
	.section	.text_vle
#$$ld
.L5:
.L490:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\AUTOSAR\\ar422\\Lin_GeneralTypes.h"
.L344:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinIf\\ssc\\make\\..\\inc\\LinIf_Types.h"
.L334:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinIf\\ssc\\make\\..\\inc\\LinIf_Private.h"
.L307:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinIf\\ssc\\make\\..\\src\\LinIf_MainFunction.c"
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
	.uleb128	7
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
	.uleb128	8
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
	.uleb128	9
	.uleb128	40
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	28
	.uleb128	13
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	10
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
	.uleb128	11
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	12
	.uleb128	38
	.byte		0x0
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
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	15
	.uleb128	33
	.byte		0x0
	.uleb128	47
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	16
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
	.uleb128	17
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinIf\\ssc\\make\\..\\src\\LinIf_MainFunction.c"
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
.L308:
	.sleb128	2
	.4byte		.L304-.L2
	.byte		"LinIf_MainFunction"
	.byte		0
	.4byte		.L307
	.uleb128	56
	.uleb128	25
	.byte		0x1
	.byte		0x1
	.4byte		.L305
	.4byte		.L306
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L312
	.4byte		.L309
	.4byte		.L310
	.section	.debug_info,,n
.L313:
	.sleb128	4
	.4byte		.L307
	.uleb128	68
	.uleb128	48
	.byte		"chIndex"
	.byte		0
	.4byte		.L314
	.4byte		.L317
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L321
	.4byte		.L318
	.4byte		.L319
.L322:
	.sleb128	4
	.4byte		.L307
	.uleb128	73
	.uleb128	64
	.byte		"currentChannel"
	.byte		0
	.4byte		.L323
	.4byte		.L327
.L328:
	.sleb128	4
	.4byte		.L307
	.uleb128	75
	.uleb128	69
	.byte		"channelManager_p"
	.byte		0
	.4byte		.L329
	.4byte		.L332
	.section	.debug_info,,n
	.sleb128	0
.L321:
	.section	.debug_info,,n
	.sleb128	0
.L312:
	.section	.debug_info,,n
	.sleb128	0
.L304:
	.section	.debug_info,,n
.L333:
	.sleb128	5
	.byte		0x1
	.byte		0x1
	.4byte		.L334
	.uleb128	206
	.uleb128	33
	.byte		"LinIf_GlobalInitStsFlag"
	.byte		0
	.4byte		.L335
	.0byte		.L333
.L337:
	.sleb128	5
	.byte		0x1
	.byte		0x1
	.4byte		.L334
	.uleb128	220
	.uleb128	63
	.byte		"LinIf_GlobalConfig_p"
	.byte		0
	.4byte		.L338
.L342:
	.sleb128	5
	.byte		0x1
	.byte		0x1
	.4byte		.L334
	.uleb128	241
	.uleb128	66
	.byte		"LinIf_ConfigChannelLT_p"
	.byte		0
	.4byte		.L343
	.section	.debug_info,,n
	.section	.debug_info,,n
.L341:
	.sleb128	6
	.4byte		.L344
	.uleb128	322
	.uleb128	1
	.4byte		.L345-.L2
	.uleb128	20
	.section	.debug_info,,n
.L252:
	.sleb128	7
	.byte		"MaxLinIfChannel"
	.byte		0
	.4byte		.L346
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L253:
	.sleb128	7
	.byte		"LinIfChannel_p"
	.byte		0
	.4byte		.L349
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L254:
	.sleb128	7
	.byte		"PBtoPCHashValue_P"
	.byte		0
	.4byte		.L353
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L255:
	.sleb128	7
	.byte		"PBtoLTHashValue_P"
	.byte		0
	.4byte		.L353
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L256:
	.sleb128	7
	.byte		"LinIf_ConfirmationULConfig_p"
	.byte		0
	.4byte		.L355
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L345:
.L326:
	.sleb128	6
	.4byte		.L344
	.uleb128	322
	.uleb128	1
	.4byte		.L359-.L2
	.uleb128	32
.L240:
	.sleb128	7
	.byte		"LinTrcvDrvCalls_p"
	.byte		0
	.4byte		.L360
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L241:
	.sleb128	7
	.byte		"WakeupSourceIdLin"
	.byte		0
	.4byte		.L354
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L242:
	.sleb128	7
	.byte		"WakeupSourceIdTrcv"
	.byte		0
	.4byte		.L354
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L243:
	.sleb128	7
	.byte		"LinIfChannelIndex"
	.byte		0
	.4byte		.L364
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L244:
	.sleb128	7
	.byte		"ExternalChannelIndex"
	.byte		0
	.4byte		.L366
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
.L245:
	.sleb128	7
	.byte		"LinIfDelayForSleep"
	.byte		0
	.4byte		.L354
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L246:
	.sleb128	7
	.byte		"LinIfStartupState"
	.byte		0
	.4byte		.L368
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L247:
	.sleb128	7
	.byte		"LinDrvCalls_p"
	.byte		0
	.4byte		.L371
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L248:
	.sleb128	7
	.byte		"LinIf_channelManager_p"
	.byte		0
	.4byte		.L375
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
	.sleb128	0
.L359:
.L352:
	.sleb128	6
	.4byte		.L344
	.uleb128	322
	.uleb128	1
	.4byte		.L376-.L2
	.uleb128	24
.L233:
	.sleb128	7
	.byte		"LinIfMaxLinFrames"
	.byte		0
	.4byte		.L364
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L234:
	.sleb128	7
	.byte		"LinIfMaxSchedules"
	.byte		0
	.4byte		.L364
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L235:
	.sleb128	7
	.byte		"LinIfFrame_p"
	.byte		0
	.4byte		.L377
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L236:
	.sleb128	7
	.byte		"LinIfScheduleTable_p"
	.byte		0
	.4byte		.L381
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L237:
	.sleb128	7
	.byte		"ETCollisionDetectd_p"
	.byte		0
	.4byte		.L385
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L238:
	.sleb128	7
	.byte		"SPPendingRequest_p"
	.byte		0
	.4byte		.L385
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L239:
	.sleb128	7
	.byte		"LinIf_ScheduleTableEntry_p"
	.byte		0
	.4byte		.L386
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L376:
.L331:
	.sleb128	6
	.4byte		.L344
	.uleb128	322
	.uleb128	1
	.4byte		.L387-.L2
	.uleb128	48
.L223:
	.sleb128	7
	.byte		"LinIf_NewScheduleTableType"
	.byte		0
	.4byte		.L388
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L224:
	.sleb128	7
	.byte		"LinIf_RunContSchTableIndexRequested"
	.byte		0
	.4byte		.L390
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L225:
	.sleb128	7
	.byte		"LinIf_RunOnceSchTableRequested"
	.byte		0
	.4byte		.L390
	.sleb128	2
	.byte		0x23
	.uleb128	5
	.byte		0x1
.L226:
	.sleb128	7
	.byte		"LinIf_EntryDelayCounter"
	.byte		0
	.4byte		.L347
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L227:
	.sleb128	7
	.byte		"LinIf_SleepDelayCounter"
	.byte		0
	.4byte		.L315
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L228:
	.sleb128	7
	.byte		"LinIf_ScheduleTableIndex"
	.byte		0
	.4byte		.L390
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L229:
	.sleb128	7
	.byte		"LinIf_ScheduleTableType"
	.byte		0
	.4byte		.L388
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L230:
	.sleb128	7
	.byte		"LinIf_BusStatus"
	.byte		0
	.4byte		.L391
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L231:
	.sleb128	7
	.byte		"LinIf_ChannelSubState"
	.byte		0
	.4byte		.L393
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L232:
	.sleb128	7
	.byte		"LinIf_ChannelState"
	.byte		0
	.4byte		.L369
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
	.sleb128	0
.L387:
.L392:
	.sleb128	6
	.4byte		.L344
	.uleb128	322
	.uleb128	1
	.4byte		.L395-.L2
	.uleb128	20
.L219:
	.sleb128	7
	.byte		"Lin_DriverGetStatusVal"
	.byte		0
	.4byte		.L396
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L220:
	.sleb128	7
	.byte		"LinIf_frameStatus"
	.byte		0
	.4byte		.L397
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L221:
	.sleb128	7
	.byte		"LinIf_frameEntry_p"
	.byte		0
	.4byte		.L399
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L222:
	.sleb128	7
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
	.sleb128	6
	.4byte		.L344
	.uleb128	322
	.uleb128	1
	.4byte		.L405-.L2
	.uleb128	20
.L213:
	.sleb128	7
	.byte		"LinIfResumePosition"
	.byte		0
	.4byte		.L406
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L214:
	.sleb128	7
	.byte		"LinIfRunMode"
	.byte		0
	.4byte		.L409
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L215:
	.sleb128	7
	.byte		"LinIfScheduleMode"
	.byte		0
	.4byte		.L412
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L216:
	.sleb128	7
	.byte		"LinIfScheduleTableIndex"
	.byte		0
	.4byte		.L415
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L217:
	.sleb128	7
	.byte		"LinIfMaxSchEntry"
	.byte		0
	.4byte		.L364
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
.L218:
	.sleb128	7
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
	.sleb128	6
	.4byte		.L344
	.uleb128	322
	.uleb128	1
	.4byte		.L416-.L2
	.uleb128	8
.L210:
	.sleb128	7
	.byte		"LinIfDelay"
	.byte		0
	.4byte		.L346
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L211:
	.sleb128	7
	.byte		"LinIfCollisionResolvingRef"
	.byte		0
	.4byte		.L415
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L212:
	.sleb128	7
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
	.sleb128	6
	.4byte		.L344
	.uleb128	322
	.uleb128	1
	.4byte		.L417-.L2
	.uleb128	32
.L196:
	.sleb128	7
	.byte		"LinIfChecksumType"
	.byte		0
	.4byte		.L418
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L197:
	.sleb128	7
	.byte		"LinIfFrameType"
	.byte		0
	.4byte		.L420
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L198:
	.sleb128	7
	.byte		"LinIfLength"
	.byte		0
	.4byte		.L423
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L199:
	.sleb128	7
	.byte		"LinIfPid"
	.byte		0
	.4byte		.L425
	.sleb128	2
	.byte		0x23
	.uleb128	9
	.byte		0x1
.L200:
	.sleb128	7
	.byte		"LinIfTxConfirmationId"
	.byte		0
	.4byte		.L427
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L201:
	.sleb128	7
	.byte		"LinIfPduDirection"
	.byte		0
	.4byte		.L429
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L202:
	.sleb128	7
	.byte		"LinIfFixedFrameSduData"
	.byte		0
	.4byte		.L431
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
.L203:
	.sleb128	7
	.byte		"LinIfRxTxTargetPduRef"
	.byte		0
	.4byte		.L427
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L204:
	.sleb128	7
	.byte		"LinIfSubsFrames_p"
	.byte		0
	.4byte		.L433
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L205:
	.sleb128	7
	.byte		"LinIfNoOfSubEntry"
	.byte		0
	.4byte		.L364
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L206:
	.sleb128	7
	.byte		"LinIfFunctionIndex"
	.byte		0
	.4byte		.L346
	.sleb128	2
	.byte		0x23
	.uleb128	30
	.byte		0x1
	.sleb128	0
.L417:
.L436:
	.sleb128	6
	.4byte		.L344
	.uleb128	322
	.uleb128	1
	.4byte		.L437-.L2
	.uleb128	2
.L194:
	.sleb128	7
	.byte		"LinIfSubFrameIndex"
	.byte		0
	.4byte		.L364
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L195:
	.sleb128	7
	.byte		"LinIfSubFramePriority"
	.byte		0
	.4byte		.L364
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
	.sleb128	0
.L437:
.L358:
	.sleb128	6
	.4byte		.L344
	.uleb128	322
	.uleb128	1
	.4byte		.L438-.L2
	.uleb128	12
.L191:
	.sleb128	7
	.byte		"GotoSleepConfirmationUL"
	.byte		0
	.4byte		.L439
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L192:
	.sleb128	7
	.byte		"WakeupConfirmationUL"
	.byte		0
	.4byte		.L439
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L193:
	.sleb128	7
	.byte		"ScheduleRequestConfirmationUL"
	.byte		0
	.4byte		.L439
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L438:
.L363:
	.sleb128	6
	.4byte		.L344
	.uleb128	232
	.uleb128	14
	.4byte		.L442-.L2
	.uleb128	20
.L183:
	.sleb128	7
	.byte		"LinTrcv_SetOpMode_p"
	.byte		0
	.4byte		.L443
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L184:
	.sleb128	7
	.byte		"LinTrcv_GetOpMode_p"
	.byte		0
	.4byte		.L449
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L185:
	.sleb128	7
	.byte		"LinTrcv_GetBusWuReason_p"
	.byte		0
	.4byte		.L453
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L186:
	.sleb128	7
	.byte		"LinTrcv_SetWakeupMode_p"
	.byte		0
	.4byte		.L459
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L187:
	.sleb128	7
	.byte		"LinTrcv_CheckWakeup_p"
	.byte		0
	.4byte		.L464
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L442:
.L374:
	.sleb128	6
	.4byte		.L344
	.uleb128	184
	.uleb128	1
	.4byte		.L467-.L2
	.uleb128	24
.L177:
	.sleb128	7
	.byte		"Lin_SendFrame_p"
	.byte		0
	.4byte		.L468
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L178:
	.sleb128	7
	.byte		"Lin_GoToSleep_p"
	.byte		0
	.4byte		.L474
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L179:
	.sleb128	7
	.byte		"Lin_GoToSleepInternal_p"
	.byte		0
	.4byte		.L477
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L180:
	.sleb128	7
	.byte		"Lin_Wakeup_p"
	.byte		0
	.4byte		.L480
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L181:
	.sleb128	7
	.byte		"Lin_GetStatus_p"
	.byte		0
	.4byte		.L483
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L182:
	.sleb128	7
	.byte		"Lin_CheckWakeup_p"
	.byte		0
	.4byte		.L487
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L467:
.L473:
	.sleb128	6
	.4byte		.L490
	.uleb128	59
	.uleb128	13
	.4byte		.L491-.L2
	.uleb128	8
.L92:
	.sleb128	7
	.byte		"Pid"
	.byte		0
	.4byte		.L426
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L93:
	.sleb128	7
	.byte		"Cs"
	.byte		0
	.4byte		.L419
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L94:
	.sleb128	7
	.byte		"Drc"
	.byte		0
	.4byte		.L430
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L95:
	.sleb128	7
	.byte		"Dl"
	.byte		0
	.4byte		.L424
	.sleb128	2
	.byte		0x23
	.uleb128	3
	.byte		0x1
.L96:
	.sleb128	7
	.byte		"SduPtr"
	.byte		0
	.4byte		.L386
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L491:
	.section	.debug_info,,n
.L441:
	.sleb128	8
	.4byte		.L344
	.uleb128	322
	.uleb128	1
	.4byte		.L492-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	9
	.byte		"LIN_SM"
	.byte		0
	.sleb128	0
	.sleb128	9
	.byte		"CDD"
	.byte		0
	.sleb128	1
	.sleb128	0
.L492:
.L414:
	.sleb128	8
	.4byte		.L344
	.uleb128	232
	.uleb128	14
	.4byte		.L493-.L2
	.uleb128	4
	.sleb128	9
	.byte		"LINTP_APPLICATIVE_SCHEDULE"
	.byte		0
	.sleb128	0
	.sleb128	9
	.byte		"LINTP_DIAG_REQUEST"
	.byte		0
	.sleb128	1
	.sleb128	9
	.byte		"LINTP_DIAG_RESPONSE"
	.byte		0
	.sleb128	2
	.sleb128	0
.L493:
.L398:
	.sleb128	8
	.4byte		.L344
	.uleb128	184
	.uleb128	1
	.4byte		.L494-.L2
	.uleb128	4
	.sleb128	9
	.byte		"LINIF_FRAME_IDLE"
	.byte		0
	.sleb128	0
	.sleb128	9
	.byte		"LINIF_FRAME_RX_ONGOING"
	.byte		0
	.sleb128	1
	.sleb128	9
	.byte		"LINIF_FRAME_TX_ONGOING"
	.byte		0
	.sleb128	2
	.sleb128	9
	.byte		"LINIF_FRAME_FINISHED"
	.byte		0
	.sleb128	3
	.sleb128	9
	.byte		"LINIF_FRAME_ERROR"
	.byte		0
	.sleb128	4
	.sleb128	0
.L494:
.L422:
	.sleb128	8
	.4byte		.L344
	.uleb128	110
	.uleb128	1
	.4byte		.L495-.L2
	.uleb128	4
	.sleb128	9
	.byte		"INVALID_STATE"
	.byte		0
	.sleb128	0
	.sleb128	9
	.byte		"FREE"
	.byte		0
	.sleb128	1
	.sleb128	9
	.byte		"ASSIGN"
	.byte		0
	.sleb128	2
	.sleb128	9
	.byte		"ASSIGN_FRAME_ID_RANGE"
	.byte		0
	.sleb128	3
	.sleb128	9
	.byte		"EVENT_TRIGGERED"
	.byte		0
	.sleb128	4
	.sleb128	9
	.byte		"SAVE_CONFIGURATION"
	.byte		0
	.sleb128	5
	.sleb128	9
	.byte		"SPORADIC"
	.byte		0
	.sleb128	6
	.sleb128	9
	.byte		"SRF"
	.byte		0
	.sleb128	7
	.sleb128	9
	.byte		"UNASSIGN"
	.byte		0
	.sleb128	8
	.sleb128	9
	.byte		"UNCONDITIONAL"
	.byte		0
	.sleb128	9
	.sleb128	0
.L495:
.L408:
	.sleb128	8
	.4byte		.L344
	.uleb128	102
	.uleb128	1
	.4byte		.L496-.L2
	.uleb128	4
	.sleb128	9
	.byte		"CONTINUE_AT_IT_POINT"
	.byte		0
	.sleb128	0
	.sleb128	9
	.byte		"START_FROM_BEGINNING"
	.byte		0
	.sleb128	1
	.sleb128	0
.L496:
.L394:
	.sleb128	8
	.4byte		.L344
	.uleb128	87
	.uleb128	1
	.4byte		.L497-.L2
	.uleb128	4
	.sleb128	9
	.byte		"LINIF_CHANNEL_SUBSTATE_IDLE"
	.byte		0
	.sleb128	0
	.sleb128	9
	.byte		"LINIF_CHANNEL_SLEEP_REQUEST"
	.byte		0
	.sleb128	1
	.sleb128	9
	.byte		"LINIF_CHANNEL_SLEEP_PENDING"
	.byte		0
	.sleb128	2
	.sleb128	9
	.byte		"LINIF_CHANNEL_GOTO_SLEEP_INTERNAL"
	.byte		0
	.sleb128	3
	.sleb128	9
	.byte		"LINIF_CHANNEL_WAKEUP_CONFIRMATION_PENDING_TYPE_FALSE"
	.byte		0
	.sleb128	4
	.sleb128	9
	.byte		"LINIF_CHANNEL_WAKEUP_CONFIRMATION_PENDING_TYPE_TRUE"
	.byte		0
	.sleb128	5
	.sleb128	0
.L497:
.L370:
	.sleb128	8
	.4byte		.L344
	.uleb128	79
	.uleb128	1
	.4byte		.L498-.L2
	.uleb128	4
	.sleb128	9
	.byte		"LINIF_CHANNEL_UNINIT"
	.byte		0
	.sleb128	0
	.sleb128	9
	.byte		"LINIF_CHANNEL_OPERATIONAL"
	.byte		0
	.sleb128	1
	.sleb128	9
	.byte		"LINIF_CHANNEL_SLEEP"
	.byte		0
	.sleb128	2
	.sleb128	0
.L498:
.L389:
	.sleb128	8
	.4byte		.L344
	.uleb128	70
	.uleb128	1
	.4byte		.L499-.L2
	.uleb128	4
	.sleb128	9
	.byte		"NULL_SCHEDULE"
	.byte		0
	.sleb128	0
	.sleb128	9
	.byte		"ACTIVE_RUN_ONCE"
	.byte		0
	.sleb128	1
	.sleb128	9
	.byte		"ACTIVE_RUN_CONTINUOUS"
	.byte		0
	.sleb128	2
	.sleb128	9
	.byte		"ACTIVE_SCHEDULE_MANAGER_OFF"
	.byte		0
	.sleb128	3
	.sleb128	0
.L499:
.L411:
	.sleb128	8
	.4byte		.L344
	.uleb128	63
	.uleb128	1
	.4byte		.L500-.L2
	.uleb128	4
	.sleb128	9
	.byte		"RUN_CONTINUOUS"
	.byte		0
	.sleb128	0
	.sleb128	9
	.byte		"RUN_ONCE"
	.byte		0
	.sleb128	1
	.sleb128	0
.L500:
.L448:
	.sleb128	8
	.4byte		.L490
	.uleb128	59
	.uleb128	13
	.4byte		.L501-.L2
	.uleb128	4
	.sleb128	9
	.byte		"LINTRCV_TRCV_MODE_NORMAL"
	.byte		0
	.sleb128	0
	.sleb128	9
	.byte		"LINTRCV_TRCV_MODE_STANDBY"
	.byte		0
	.sleb128	1
	.sleb128	9
	.byte		"LINTRCV_TRCV_MODE_SLEEP"
	.byte		0
	.sleb128	2
	.sleb128	0
.L501:
.L458:
	.sleb128	8
	.4byte		.L490
	.uleb128	49
	.uleb128	13
	.4byte		.L502-.L2
	.uleb128	4
	.sleb128	9
	.byte		"LINTRCV_WU_ERROR"
	.byte		0
	.sleb128	0
	.sleb128	9
	.byte		"LINTRCV_WU_NOT_SUPPORTED"
	.byte		0
	.sleb128	1
	.sleb128	9
	.byte		"LINTRCV_WU_BY_BUS"
	.byte		0
	.sleb128	2
	.sleb128	9
	.byte		"LINTRCV_WU_BY_PIN"
	.byte		0
	.sleb128	3
	.sleb128	9
	.byte		"LINTRCV_WU_INTERNALLY"
	.byte		0
	.sleb128	4
	.sleb128	9
	.byte		"LINTRCV_WU_RESET"
	.byte		0
	.sleb128	5
	.sleb128	9
	.byte		"LINTRCV_WU_POWER_ON"
	.byte		0
	.sleb128	6
	.sleb128	0
.L502:
.L463:
	.sleb128	8
	.4byte		.L490
	.uleb128	42
	.uleb128	13
	.4byte		.L503-.L2
	.uleb128	4
	.sleb128	9
	.byte		"LINTRCV_WUMODE_ENABLE"
	.byte		0
	.sleb128	0
	.sleb128	9
	.byte		"LINTRCV_WUMODE_DISABLE"
	.byte		0
	.sleb128	1
	.sleb128	9
	.byte		"LINTRCV_WUMODE_CLEAR"
	.byte		0
	.sleb128	2
	.sleb128	0
.L503:
	.section	.debug_info,,n
.L316:
	.sleb128	10
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
	.section	.debug_info,,n
.L315:
	.sleb128	11
	.byte		"uint32"
	.byte		0
	.4byte		.L316
.L314:
	.sleb128	11
	.byte		"ChannelTypeFast"
	.byte		0
	.4byte		.L315
.L325:
	.sleb128	11
	.byte		"LinIfChannel"
	.byte		0
	.4byte		.L326
	.section	.debug_info,,n
.L324:
	.sleb128	12
	.4byte		.L325
	.section	.debug_info,,n
.L323:
	.sleb128	13
	.4byte		.L324
.L330:
	.sleb128	11
	.byte		"LinIfChannelManager"
	.byte		0
	.4byte		.L331
.L329:
	.sleb128	13
	.4byte		.L330
.L336:
	.sleb128	10
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L335:
	.sleb128	11
	.byte		"boolean"
	.byte		0
	.4byte		.L336
.L340:
	.sleb128	11
	.byte		"LinIf_ConfigType"
	.byte		0
	.4byte		.L341
.L339:
	.sleb128	12
	.4byte		.L340
.L338:
	.sleb128	13
	.4byte		.L339
.L343:
	.sleb128	12
	.4byte		.L323
.L348:
	.sleb128	10
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L347:
	.sleb128	11
	.byte		"uint16"
	.byte		0
	.4byte		.L348
.L346:
	.sleb128	12
	.4byte		.L347
.L351:
	.sleb128	11
	.byte		"LinIfChannelReloc"
	.byte		0
	.4byte		.L352
.L350:
	.sleb128	12
	.4byte		.L351
.L349:
	.sleb128	13
	.4byte		.L350
.L354:
	.sleb128	12
	.4byte		.L315
.L353:
	.sleb128	13
	.4byte		.L354
.L357:
	.sleb128	11
	.byte		"LinIf_ConfirmationULConfig_t"
	.byte		0
	.4byte		.L358
.L356:
	.sleb128	12
	.4byte		.L357
.L355:
	.sleb128	13
	.4byte		.L356
.L362:
	.sleb128	11
	.byte		"LinIf_LinTrcvDrvCalls_t"
	.byte		0
	.4byte		.L363
.L361:
	.sleb128	12
	.4byte		.L362
.L360:
	.sleb128	13
	.4byte		.L361
.L365:
	.sleb128	11
	.byte		"uint8"
	.byte		0
	.4byte		.L336
.L364:
	.sleb128	12
	.4byte		.L365
.L367:
	.sleb128	11
	.byte		"NetworkHandleType"
	.byte		0
	.4byte		.L365
.L366:
	.sleb128	12
	.4byte		.L367
.L369:
	.sleb128	11
	.byte		"LinIf_ChannelState_t"
	.byte		0
	.4byte		.L370
.L368:
	.sleb128	12
	.4byte		.L369
.L373:
	.sleb128	11
	.byte		"LinIf_LinDrvCalls_t"
	.byte		0
	.4byte		.L374
.L372:
	.sleb128	12
	.4byte		.L373
.L371:
	.sleb128	13
	.4byte		.L372
.L375:
	.sleb128	12
	.4byte		.L329
.L379:
	.sleb128	11
	.byte		"LinIfFrame"
	.byte		0
	.4byte		.L380
.L378:
	.sleb128	12
	.4byte		.L379
.L377:
	.sleb128	13
	.4byte		.L378
.L383:
	.sleb128	11
	.byte		"LinIfScheduleTable"
	.byte		0
	.4byte		.L384
.L382:
	.sleb128	12
	.4byte		.L383
.L381:
	.sleb128	13
	.4byte		.L382
.L385:
	.sleb128	13
	.4byte		.L335
.L386:
	.sleb128	13
	.4byte		.L365
.L388:
	.sleb128	11
	.byte		"LinIfSchTableType_t"
	.byte		0
	.4byte		.L389
.L390:
	.sleb128	11
	.byte		"LinIf_SchHandleType"
	.byte		0
	.4byte		.L365
.L391:
	.sleb128	11
	.byte		"LinIf_BusStatusStruct"
	.byte		0
	.4byte		.L392
.L393:
	.sleb128	11
	.byte		"LinIf_ChannelSubState_t"
	.byte		0
	.4byte		.L394
.L396:
	.sleb128	11
	.byte		"Lin_StatusType"
	.byte		0
	.4byte		.L365
.L397:
	.sleb128	11
	.byte		"LinIf_frameStatusType"
	.byte		0
	.4byte		.L398
.L401:
	.sleb128	11
	.byte		"LinIfEntry"
	.byte		0
	.4byte		.L402
.L400:
	.sleb128	12
	.4byte		.L401
.L399:
	.sleb128	13
	.4byte		.L400
	.section	.debug_info,,n
.L403:
	.sleb128	14
	.4byte		.L404-.L2
	.4byte		.L365
	.section	.debug_info,,n
	.sleb128	15
	.uleb128	7
	.sleb128	0
.L404:
.L407:
	.sleb128	11
	.byte		"LinIfResumePosition_t"
	.byte		0
	.4byte		.L408
.L406:
	.sleb128	12
	.4byte		.L407
.L410:
	.sleb128	11
	.byte		"LinIfRunMode_t"
	.byte		0
	.4byte		.L411
.L409:
	.sleb128	12
	.4byte		.L410
.L413:
	.sleb128	11
	.byte		"LinTp_Mode"
	.byte		0
	.4byte		.L414
.L412:
	.sleb128	12
	.4byte		.L413
.L415:
	.sleb128	12
	.4byte		.L390
.L419:
	.sleb128	11
	.byte		"Lin_FrameCsModelType"
	.byte		0
	.4byte		.L365
.L418:
	.sleb128	12
	.4byte		.L419
.L421:
	.sleb128	11
	.byte		"LinIfFrameType_t"
	.byte		0
	.4byte		.L422
.L420:
	.sleb128	12
	.4byte		.L421
.L424:
	.sleb128	11
	.byte		"Lin_FrameDlType"
	.byte		0
	.4byte		.L365
.L423:
	.sleb128	12
	.4byte		.L424
.L426:
	.sleb128	11
	.byte		"Lin_FramePidType"
	.byte		0
	.4byte		.L365
.L425:
	.sleb128	12
	.4byte		.L426
.L428:
	.sleb128	11
	.byte		"PduIdType"
	.byte		0
	.4byte		.L347
.L427:
	.sleb128	12
	.4byte		.L428
.L430:
	.sleb128	11
	.byte		"Lin_FrameResponseType"
	.byte		0
	.4byte		.L365
.L429:
	.sleb128	12
	.4byte		.L430
.L431:
	.sleb128	14
	.4byte		.L432-.L2
	.4byte		.L364
	.sleb128	15
	.uleb128	7
	.sleb128	0
.L432:
.L435:
	.sleb128	11
	.byte		"LinIfSubstitutionFrames"
	.byte		0
	.4byte		.L436
.L434:
	.sleb128	12
	.4byte		.L435
.L433:
	.sleb128	13
	.4byte		.L434
.L440:
	.sleb128	11
	.byte		"LinIf_ConfirmationUL_t"
	.byte		0
	.4byte		.L441
.L439:
	.sleb128	12
	.4byte		.L440
.L446:
	.sleb128	11
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L365
	.section	.debug_info,,n
.L444:
	.sleb128	16
	.4byte		.L445-.L2
	.4byte		.L446
	.byte		0x1
	.section	.debug_info,,n
	.sleb128	17
	.4byte		.L365
.L447:
	.sleb128	11
	.byte		"LinTrcv_TrcvModeType"
	.byte		0
	.4byte		.L448
	.sleb128	17
	.4byte		.L447
	.sleb128	0
.L445:
.L443:
	.sleb128	13
	.4byte		.L444
.L450:
	.sleb128	16
	.4byte		.L451-.L2
	.4byte		.L446
	.byte		0x1
	.sleb128	17
	.4byte		.L365
.L452:
	.sleb128	13
	.4byte		.L447
	.sleb128	17
	.4byte		.L452
	.sleb128	0
.L451:
.L449:
	.sleb128	13
	.4byte		.L450
.L454:
	.sleb128	16
	.4byte		.L455-.L2
	.4byte		.L446
	.byte		0x1
	.sleb128	17
	.4byte		.L365
.L457:
	.sleb128	11
	.byte		"LinTrcv_TrcvWakeupReasonType"
	.byte		0
	.4byte		.L458
.L456:
	.sleb128	13
	.4byte		.L457
	.sleb128	17
	.4byte		.L456
	.sleb128	0
.L455:
.L453:
	.sleb128	13
	.4byte		.L454
.L460:
	.sleb128	16
	.4byte		.L461-.L2
	.4byte		.L446
	.byte		0x1
	.sleb128	17
	.4byte		.L365
.L462:
	.sleb128	11
	.byte		"LinTrcv_TrcvWakeupModeType"
	.byte		0
	.4byte		.L463
	.sleb128	17
	.4byte		.L462
	.sleb128	0
.L461:
.L459:
	.sleb128	13
	.4byte		.L460
.L465:
	.sleb128	16
	.4byte		.L466-.L2
	.4byte		.L446
	.byte		0x1
	.sleb128	17
	.4byte		.L365
	.sleb128	0
.L466:
.L464:
	.sleb128	13
	.4byte		.L465
.L469:
	.sleb128	16
	.4byte		.L470-.L2
	.4byte		.L446
	.byte		0x1
	.sleb128	17
	.4byte		.L365
.L472:
	.sleb128	11
	.byte		"Lin_PduType"
	.byte		0
	.4byte		.L473
.L471:
	.sleb128	13
	.4byte		.L472
	.sleb128	17
	.4byte		.L471
	.sleb128	0
.L470:
.L468:
	.sleb128	13
	.4byte		.L469
.L475:
	.sleb128	16
	.4byte		.L476-.L2
	.4byte		.L446
	.byte		0x1
	.sleb128	17
	.4byte		.L365
	.sleb128	0
.L476:
.L474:
	.sleb128	13
	.4byte		.L475
.L478:
	.sleb128	16
	.4byte		.L479-.L2
	.4byte		.L446
	.byte		0x1
	.sleb128	17
	.4byte		.L365
	.sleb128	0
.L479:
.L477:
	.sleb128	13
	.4byte		.L478
.L481:
	.sleb128	16
	.4byte		.L482-.L2
	.4byte		.L446
	.byte		0x1
	.sleb128	17
	.4byte		.L365
	.sleb128	0
.L482:
.L480:
	.sleb128	13
	.4byte		.L481
.L484:
	.sleb128	16
	.4byte		.L485-.L2
	.4byte		.L396
	.byte		0x1
	.sleb128	17
	.4byte		.L365
.L486:
	.sleb128	13
	.4byte		.L386
	.sleb128	17
	.4byte		.L486
	.sleb128	0
.L485:
.L483:
	.sleb128	13
	.4byte		.L484
.L488:
	.sleb128	16
	.4byte		.L489-.L2
	.4byte		.L446
	.byte		0x1
	.sleb128	17
	.4byte		.L365
	.sleb128	0
.L489:
.L487:
	.sleb128	13
	.4byte		.L488
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L317:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),31
	.d2locend
.L327:
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),3
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),3
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),30
	.d2locend
.L332:
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),29
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo8),29
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "LinIf_MainFunction"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "LinIf_BusStateChecker","LinIf_ExecuteFrameTransmit","LinIf_FrameStatusManager","LinIf_GotoSleepInternalProcess","LinIf_ProcessSleep","LinIf_STM_HandleScheduleTable","LinIf_TimedSleepActions","LinIf_WakeUpConfirmation"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\LinIf_MainFunction.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\LinIf_MainFunction.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\LinIf_MainFunction.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\LinIf_MainFunction.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\LinIf_MainFunction.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\LinIf_MainFunction.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\LinIf\ssc\make\..\src\LinIf_MainFunction.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
