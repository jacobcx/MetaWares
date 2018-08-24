#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"LinSM_MainFunction.c"
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
# FUNC(void, LINSM_CODE) LinSM_MainFunction(void)
	.align		2
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinSM\\ssc\\make\\..\\src\\LinSM_MainFunction.c"
        .d2line         58,24
#$$ld
.L531:

#$$bf	LinSM_MainFunction,interprocedural,rasave,nostackparams
	.globl		LinSM_MainFunction
	.d2_cfa_start __cie
LinSM_MainFunction:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     if( LINSM_UNINIT == LinSM_InitState )
	.d2line		60
	lis		r3,LinSM_InitState@ha
	lbz		r0,LinSM_InitState@l(r3)
	se_cmpi		r0,0
	bc		1,2,.L505	# eq
	.section	.text_vle
.L535:
#     {
#         /* Detect the Development Error Tracer */
# #if( STD_ON == LINSM_DEV_ERROR_DETECT )
#         (void)Det_ReportError(LINSM_MODULE_ID,
#                 LINSM_INSTANCE_ID,
#                 LINSM_SID_MAIN_FUNCTION,
#                 LINSM_E_UNINIT );
# #endif
#     }
#     else
#     {
#         /* Channel index of LinSM */
#         VAR(NetworkHandleType, AUTOMATIC) channelIndex;
# 
#         for( channelIndex = 0U; channelIndex < LinSM_NoOfChannel; channelIndex++ )
	.d2line		75
	diab.li		r31,0		# channelIndex=r31
.L508:
.Llo1:
	rlwinm		r0,r31,0,24,31		# channelIndex=r31
	lis		r3,LinSM_NoOfChannel@ha
	lbz		r3,LinSM_NoOfChannel@l(r3)
	se_cmp		r0,r3
	bc		0,0,.L505	# ge
#         {
#             /* Enter from the critical area */
#             SchM_Enter_LinSM_ExclusiveArea0();
	.d2line		78
	bl		SchM_Enter_LinSM_ExclusiveArea0
# 
#             if(LINSM_SCHREQ_RETURN_FALSE == LinSM_Interface_p[channelIndex].LinSM_RqConfrmState)
	.d2line		80
	lis		r3,LinSM_Interface_p@ha
	lwz		r3,LinSM_Interface_p@l(r3)
	rlwinm		r0,r31,3,21,28		# channelIndex=r31
	lbzx		r0,r3,r0
	se_cmpi		r0,16
	bc		0,2,.L511	# ne
#             {
#                 BswM_LinSM_CurrentSchedule(LinSM_ChannelMap_p[channelIndex],
	.d2line		82
	lis		r3,LinSM_Interface_p@ha
	lwz		r3,LinSM_Interface_p@l(r3)
	rlwinm		r0,r31,3,21,28		# channelIndex=r31
	se_add		r3,r0
	lbz		r4,4(r3)
	lis		r3,LinSM_ChannelMap_p@ha
	lwz		r3,LinSM_ChannelMap_p@l(r3)
	rlwinm		r0,r31,0,24,31		# channelIndex=r31
	lbzx		r3,r3,r0
	bl		BswM_LinSM_CurrentSchedule
#                                            LinSM_Interface_p[channelIndex].LinSM_CrntScheduleRef);
# 
#                 LinSM_Interface_p[channelIndex].LinSM_RqConfrmState = LINSM_CONFIRM_FALSE;
	.d2line		85
	diab.li		r5,8
	lis		r4,LinSM_Interface_p@ha
	lwz		r3,LinSM_Interface_p@l(r4)
	rlwinm		r0,r31,3,21,28		# channelIndex=r31
	stbux		r5,r3,r0
# 
#                 /* Set the requested schedule table index */
#                 LinSM_Interface_p[channelIndex].LinSM_ReqScheduleRef = LinSM_Interface_p[channelIndex].LinSM_CrntScheduleRef;
	.d2line		88
	lwz		r3,LinSM_Interface_p@l(r4)
	se_add		r3,r0
	lbz		r3,4(r3)
	lwz		r4,LinSM_Interface_p@l(r4)
	se_add		r4,r0
	stb		r3,3(r4)
.L511:
# 
#             }
#             /* Exit from the critical area */
#             SchM_Exit_LinSM_ExclusiveArea0();
	.d2line		92
	bl		SchM_Exit_LinSM_ExclusiveArea0
# #if ( LINSM_ENABLE_CONFIRMATIONS == STD_ON )
#             /* Check whether the timer is started */
#             if ( TRUE == LinSM_Interface_p[channelIndex].LinSM_StartTimer_b )
	.d2line		95
	lis		r3,LinSM_Interface_p@ha
	lwz		r3,LinSM_Interface_p@l(r3)
	rlwinm		r0,r31,3,21,28		# channelIndex=r31
	se_add		r3,r0
	lbz		r0,2(r3)
	se_cmpi		r0,1
	bc		0,2,.L512	# ne
#             {
#                 /* Enter into the critical area */
#                 SchM_Enter_LinSM_ExclusiveArea0();
	.d2line		98
	bl		SchM_Enter_LinSM_ExclusiveArea0
#                 /* Check whether the timer expires */
#                 if( 0 < LinSM_Interface_p[channelIndex].LinSM_TimerVal_u16 )
	.d2line		100
	lis		r3,LinSM_Interface_p@ha
	lwz		r3,LinSM_Interface_p@l(r3)
	rlwinm		r0,r31,3,21,28		# channelIndex=r31
	se_add		r3,r0
	lhz		r0,6(r3)
	se_cmpi		r0,0
	bc		0,1,.L513	# le
#                 {
#                     /* Update the counter for threshold */
#                     LinSM_Interface_p[channelIndex].LinSM_TimerVal_u16--;
	.d2line		103
	lis		r3,LinSM_Interface_p@ha
	lwz		r3,LinSM_Interface_p@l(r3)
	rlwinm		r0,r31,3,21,28		# channelIndex=r31
	se_add		r3,r0
	lhz		r0,6(r3)
	diab.li		r4,65535
	se_add		r0,r4
	sth		r0,6(r3)
# 
#                     /* Exit critical area */
#                     SchM_Exit_LinSM_ExclusiveArea0();
	.d2line		106
	bl		SchM_Exit_LinSM_ExclusiveArea0
	b		.L512
.L513:
#                 }
#                 else if ( 0 == LinSM_Channel_p[channelIndex].LinSM_ConfirmationTimeout_u16 )
	.d2line		108
	rlwinm		r0,r31,0,24,31		# channelIndex=r31
	lis		r3,LinSM_Channel_p@ha
	lwz		r3,LinSM_Channel_p@l(r3)
	rlwinm		r4,r0,4,0,27
	se_slwi		r0,2
	subf		r0,r0,r4
	se_add		r3,r0
	lhz		r0,8(r3)
	se_cmpi		r0,0
	bc		0,2,.L515	# ne
#                 {
#                     /* Exit critical area */
#                     SchM_Exit_LinSM_ExclusiveArea0();
	.d2line		111
	bl		SchM_Exit_LinSM_ExclusiveArea0
	b		.L512
.L515:
#                 }
#                 else
#                 {
#                     /* Re-set the timer */
#                     LinSM_Interface_p[channelIndex].LinSM_StartTimer_b = FALSE;
	.d2line		116
	diab.li		r0,0
	lis		r3,LinSM_Interface_p@ha
	lwz		r3,LinSM_Interface_p@l(r3)
	rlwinm		r4,r31,3,21,28		# channelIndex=r31
	se_add		r3,r4
	stb		r0,2(r3)
# 
#                     /* Exit critical area */
#                     SchM_Exit_LinSM_ExclusiveArea0();
	.d2line		119
	bl		SchM_Exit_LinSM_ExclusiveArea0
#                     /*Time out case*/
# #if( STD_ON == LINSM_DEV_ERROR_DETECT )
#                     (void) Det_ReportError(LINSM_MODULE_ID,
#                             LINSM_INSTANCE_ID,
#                             LINSM_SID_MAIN_FUNCTION,
#                             LINSM_E_CONFIRMATION_TIMEOUT );
# #endif
# 
#                     /*Sleep mode requested, but the timer expired*/
#                     if(LINSM_SLEEP_REQ == LinSM_Interface_p[channelIndex].LinSM_RequestType_u8 )
	.d2line		129
	lis		r3,LinSM_Interface_p@ha
	lwz		r3,LinSM_Interface_p@l(r3)
	rlwinm		r0,r31,3,21,28		# channelIndex=r31
	se_add		r3,r0
	lbz		r0,1(r3)
	se_cmpi		r0,0
	bc		0,2,.L517	# ne
#                     {
#                         /* Set the state of Lin State Manager */
#                         LinSM_Interface_p[channelIndex].LinSM_CrntMode = LINSM_NO_COM;
	.d2line		132
	diab.li		r4,2
	lis		r3,LinSM_Interface_p@ha
	lwz		r3,LinSM_Interface_p@l(r3)
	rlwinm		r0,r31,3,21,28		# channelIndex=r31
	se_add		r3,r0
	stb		r4,5(r3)
# 
#                         /* Deviation: Force sleep mode, notify upper layers, set Trcv */
#                         (void) LinSM_SetLinMode(channelIndex, LINSM_NO_COM, TRUE);
	.d2line		135
	rlwinm		r3,r31,0,24,31		# channelIndex=r31
	diab.li		r5,1
	bl		LinSM_SetLinMode
	b		.L512
.L517:
#                     }
#                     /*wakeup requested, but the timer expired*/
#                     else if(LINSM_WAKEUP_REQ == LinSM_Interface_p[channelIndex].LinSM_RequestType_u8 )
	.d2line		138
	lis		r3,LinSM_Interface_p@ha
	lwz		r3,LinSM_Interface_p@l(r3)
	rlwinm		r0,r31,3,21,28		# channelIndex=r31
	se_add		r3,r0
	lbz		r0,1(r3)
	se_cmpi		r0,1
	bc		0,2,.L519	# ne
#                     {
#                         /* Notify upper layers, DO NOT set Trcv */
#                         (void) LinSM_SetLinMode(channelIndex, LINSM_NO_COM, FALSE);
	.d2line		141
	rlwinm		r3,r31,0,24,31		# channelIndex=r31
	diab.li		r4,2
	diab.li		r5,0
	bl		LinSM_SetLinMode
	b		.L512
.L519:
#                     }
#                     /*Schedule table changing  requested, but the timer expired*/
#                     else
#                     {
#                         BswM_LinSM_CurrentSchedule(LinSM_ChannelMap_p[channelIndex],
	.d2line		146
	lis		r3,LinSM_Interface_p@ha
	lwz		r3,LinSM_Interface_p@l(r3)
	rlwinm		r0,r31,3,21,28		# channelIndex=r31
	se_add		r3,r0
	lbz		r4,4(r3)
	lis		r3,LinSM_ChannelMap_p@ha
	lwz		r3,LinSM_ChannelMap_p@l(r3)
	rlwinm		r0,r31,0,24,31		# channelIndex=r31
	lbzx		r3,r3,r0
	bl		BswM_LinSM_CurrentSchedule
#                                                    LinSM_Interface_p[channelIndex].LinSM_CrntScheduleRef); /*LINSM0213*/
# 
#                         /* Set the requested schedule table index */
#                         LinSM_Interface_p[channelIndex].LinSM_ReqScheduleRef = LinSM_Interface_p[channelIndex].LinSM_CrntScheduleRef;
	.d2line		150
	lis		r4,LinSM_Interface_p@ha
	lwz		r3,LinSM_Interface_p@l(r4)
	rlwinm		r0,r31,3,21,28		# channelIndex=r31
	se_add		r3,r0
	lbz		r3,4(r3)
	lwz		r4,LinSM_Interface_p@l(r4)
	se_add		r4,r0
	stb		r3,3(r4)
.L512:
#                     }
#                 }
#             }
# #endif
#         }
	.d2line		155
	diab.addi		r0,r31,1		# channelIndex=r31
	se_addi		r31,1		# channelIndex=r31 channelIndex=r31
	b		.L508
	.section	.text_vle
.L536:
.L505:
#     }
# }/* End of LinSM_MainFunction() */
	.d2line		157
	.d2epilogue_begin
.Llo2:
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
.L532:
	.type		LinSM_MainFunction,@function
	.size		LinSM_MainFunction,.-LinSM_MainFunction
# Number of nodes = 238

# Allocations for LinSM_MainFunction
#	?a4		$$150
#	?a5		$$149
#	?a6		channelIndex

# Allocations for module
	.section	.text_vle
	.0byte		.L544
	.section	.text_vle
#$$ld
.L5:
.L570:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\PduR\\ssc\\make\\..\\inc\\PduR_Types.h"
.L563:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinSM\\ssc\\make\\..\\inc\\LinSM_Types.h"
.L545:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinSM\\ssc\\make\\..\\inc\\LinSM_Private.h"
.L533:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinSM\\ssc\\make\\..\\src\\LinSM_MainFunction.c"
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
	.uleb128	15
	.byte		0x0
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinSM\\ssc\\make\\..\\src\\LinSM_MainFunction.c"
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
.L534:
	.sleb128	2
	.4byte		.L530-.L2
	.byte		"LinSM_MainFunction"
	.byte		0
	.4byte		.L533
	.uleb128	58
	.uleb128	24
	.byte		0x1
	.byte		0x1
	.4byte		.L531
	.4byte		.L532
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L538
	.4byte		.L535
	.4byte		.L536
	.section	.debug_info,,n
.L539:
	.sleb128	4
	.4byte		.L533
	.uleb128	73
	.uleb128	43
	.byte		"channelIndex"
	.byte		0
	.4byte		.L540
	.4byte		.L543
	.section	.debug_info,,n
	.sleb128	0
.L538:
	.section	.debug_info,,n
	.sleb128	0
.L530:
	.section	.debug_info,,n
.L544:
	.sleb128	5
	.byte		0x1
	.byte		0x1
	.4byte		.L545
	.uleb128	195
	.uleb128	71
	.byte		"LinSM_Interface_p"
	.byte		0
	.4byte		.L546
	.section	.debug_info,,n
.L550:
	.sleb128	5
	.byte		0x1
	.byte		0x1
	.4byte		.L545
	.uleb128	200
	.uleb128	71
	.byte		"LinSM_ChannelMap_p"
	.byte		0
	.4byte		.L551
.L554:
	.sleb128	5
	.byte		0x1
	.byte		0x1
	.4byte		.L545
	.uleb128	206
	.uleb128	66
	.byte		"LinSM_Channel_p"
	.byte		0
	.4byte		.L555
.L560:
	.sleb128	5
	.byte		0x1
	.byte		0x1
	.4byte		.L545
	.uleb128	232
	.uleb128	46
	.byte		"LinSM_NoOfChannel"
	.byte		0
	.4byte		.L553
.L561:
	.sleb128	5
	.byte		0x1
	.byte		0x1
	.4byte		.L545
	.uleb128	243
	.uleb128	39
	.byte		"LinSM_InitState"
	.byte		0
	.4byte		.L562
	.0byte		.L561
	.section	.debug_info,,n
.L559:
	.sleb128	6
	.4byte		.L563
	.uleb128	115
	.uleb128	1
	.4byte		.L564-.L2
	.uleb128	12
	.section	.debug_info,,n
.L313:
	.sleb128	7
	.byte		"LinSM_SleepSupport_b"
	.byte		0
	.4byte		.L565
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L314:
	.sleb128	7
	.byte		"LinSM_TransceiverPassiveMode_u8"
	.byte		0
	.4byte		.L566
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L315:
	.sleb128	7
	.byte		"LinSM_ConfirmationTimeout_u16"
	.byte		0
	.4byte		.L568
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L564:
.L549:
	.sleb128	6
	.4byte		.L570
	.uleb128	248
	.uleb128	1
	.4byte		.L571-.L2
	.uleb128	8
.L306:
	.sleb128	7
	.byte		"LinSM_RqConfrmState"
	.byte		0
	.4byte		.L541
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L307:
	.sleb128	7
	.byte		"LinSM_RequestType_u8"
	.byte		0
	.4byte		.L541
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L308:
	.sleb128	7
	.byte		"LinSM_StartTimer_b"
	.byte		0
	.4byte		.L565
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L309:
	.sleb128	7
	.byte		"LinSM_ReqScheduleRef"
	.byte		0
	.4byte		.L572
	.sleb128	2
	.byte		0x23
	.uleb128	3
	.byte		0x1
.L310:
	.sleb128	7
	.byte		"LinSM_CrntScheduleRef"
	.byte		0
	.4byte		.L572
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L311:
	.sleb128	7
	.byte		"LinSM_CrntMode"
	.byte		0
	.4byte		.L562
	.sleb128	2
	.byte		0x23
	.uleb128	5
	.byte		0x1
.L312:
	.sleb128	7
	.byte		"LinSM_TimerVal_u16"
	.byte		0
	.4byte		.L568
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
	.sleb128	0
.L571:
	.section	.debug_info,,n
.L567:
	.sleb128	8
	.4byte		.L563
	.uleb128	115
	.uleb128	1
	.4byte		.L573-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	9
	.byte		"LINSM_SLEEP"
	.byte		0
	.sleb128	0
	.sleb128	9
	.byte		"LINSM_STANDBY"
	.byte		0
	.sleb128	1
	.sleb128	9
	.byte		"LINSM_NOT_CONFIGURED"
	.byte		0
	.sleb128	2
	.sleb128	0
.L573:
	.section	.debug_info,,n
.L542:
	.sleb128	10
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L541:
	.sleb128	11
	.byte		"uint8"
	.byte		0
	.4byte		.L542
.L540:
	.sleb128	11
	.byte		"NetworkHandleType"
	.byte		0
	.4byte		.L541
.L548:
	.sleb128	11
	.byte		"LinSMInterfaceType_t"
	.byte		0
	.4byte		.L549
	.section	.debug_info,,n
.L547:
	.sleb128	12
	.4byte		.L548
	.section	.debug_info,,n
.L546:
	.sleb128	13
	.4byte		.L547
.L553:
	.sleb128	13
	.4byte		.L540
.L552:
	.sleb128	12
	.4byte		.L553
.L551:
	.sleb128	13
	.4byte		.L552
.L558:
	.sleb128	11
	.byte		"LinSMChannel"
	.byte		0
	.4byte		.L559
.L557:
	.sleb128	13
	.4byte		.L558
.L556:
	.sleb128	12
	.4byte		.L557
.L555:
	.sleb128	13
	.4byte		.L556
.L562:
	.sleb128	11
	.byte		"LinSM_ModeType"
	.byte		0
	.4byte		.L541
.L565:
	.sleb128	11
	.byte		"boolean"
	.byte		0
	.4byte		.L542
.L566:
	.sleb128	11
	.byte		"LinSM_TrcvPassiveModeType"
	.byte		0
	.4byte		.L567
.L569:
	.sleb128	10
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L568:
	.sleb128	11
	.byte		"uint16"
	.byte		0
	.4byte		.L569
.L572:
	.sleb128	11
	.byte		"LinIf_SchHandleType"
	.byte		0
	.4byte		.L541
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L543:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),31
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "LinSM_MainFunction"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "BswM_LinSM_CurrentSchedule","LinSM_SetLinMode","SchM_Enter_LinSM_ExclusiveArea0","SchM_Exit_LinSM_ExclusiveArea0"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\LinSM_MainFunction.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\LinSM_MainFunction.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\LinSM_MainFunction.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\LinSM_MainFunction.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\LinSM_MainFunction.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\LinSM_MainFunction.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\LinSM\ssc\make\..\src\LinSM_MainFunction.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
