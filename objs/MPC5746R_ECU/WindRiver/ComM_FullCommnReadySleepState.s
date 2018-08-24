#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"ComM_FullCommnReadySleepState.c"
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
# FUNC(void, COMM_CODE) ComM_FullComReadySleepState(CONST(NetworkHandleType, AUTOMATIC) channel)
	.align		2
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\src\\ComM_FullCommnReadySleepState.c"
        .d2line         55,23
#$$ld
.L780:

#$$bf	ComM_FullComReadySleepState,interprocedural,rasave,nostackparams
	.globl		ComM_FullComReadySleepState
	.d2_cfa_start __cie
ComM_FullComReadySleepState:
.Llo1:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)		# channel=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# channel=r0 channel=r3
	.d2prologue_end
# {
#     CONSTP2VAR(ComM_ChannelStateType, AUTOMATIC, COMM_APPL_DATA) statePtr = &ComM_ChannelStates[channel];
	.d2line		57
	rlwinm		r4,r0,0,24,31		# channel=r0
	lis		r3,ComM_ChannelStates@ha		# statePtr=r3
.Llo2:
	e_add16i		r3,r3,ComM_ChannelStates@l		# statePtr=r3 statePtr=r3
	rlwinm		r5,r4,5,0,26
	se_slwi		r4,3
	subf		r4,r4,r5
	se_add		r3,r4		# statePtr=r3 statePtr=r3
	mr		r3,r3		# statePtr=r3 statePtr=r3
# 
# #if(COMM_NM_VARIANT_LIGHT == STD_ON)
#     CONST(boolean, AUTOMATIC) lightTimeoutTimerExpired = ComM_StepLightTimeoutTimer(channel);
# #endif
# 
#     VAR(ComM_NmCurrentModeType, AUTOMATIC) nmEvent;
#     COMM_GET_NM_EVENT(statePtr, nmEvent);
	.d2line		64
	lbz		r4,8(r3)		# statePtr=r3
	se_cmpi		r4,1
	bc		0,2,.L759	# ne
.Llo3:
	diab.li		r4,0
	stb		r4,8(r3)		# statePtr=r3
	lwz		r5,4(r3)		# statePtr=r3
.Llo16:
	mr		r5,r5		# nmEvent=r5 nmEvent=r5
	b		.L760
.L759:
.Llo17:
	diab.li		r5,0		# nmEvent=r5
.L760:
# 
#     /* Priority 1. NO_COM/1 */
#     if(nmEvent == COMM_NM_MODE_BUS_SLEEP)
	.d2line		67
.Llo18:
	se_cmpi		r5,3		# nmEvent=r5
	bc		0,2,.L761	# ne
#     {
#         ComM_EnterNoCommunicationState(channel);
	.d2line		69
.Llo11:
	rlwinm		r3,r0,0,24,31		# statePtr=r3 channel=r0
	bl		ComM_EnterNoCommunicationState
.Llo4:
	b		.L757
.L761:
#     }
#     /* Priority 2. FULL_COM_NETWORK_REQUESTED/1 */
#     else if( (COMM_IS_CHANNEL_REQUESTED(statePtr) == TRUE)
	.d2line		72
.Llo5:
	lbz		r4,19(r3)		# statePtr=r3
	se_cmpi		r4,2
	bc		0,2,.L763	# ne
# #if (COMM_MODE_LIMITATION_ENABLED == STD_ON)
#               && (statePtr->ComMNoCom == FALSE) /* [DEV_ComM2004] */
# #endif
#         )
#     {
#         ComM_EnterNetworkRequestedState(channel);
	.d2line		78
.Llo12:
	rlwinm		r3,r0,0,24,31		# statePtr=r3 channel=r0
	bl		ComM_EnterNetworkRequestedState
.Llo6:
	b		.L757
.L763:
#     }
#     /* Priority 2. FULL_COM_NETWORK_REQUESTED/2 */
#     else if(statePtr->ActiveDiagnostic == TRUE)
	.d2line		81
.Llo7:
	lbz		r3,13(r3)		# statePtr=r3 statePtr=r3
	se_cmpi		r3,1		# statePtr=r3
	bc		0,2,.L765	# ne
#     {
#         ComM_EnterNetworkRequestedState(channel);
	.d2line		83
.Llo13:
	rlwinm		r3,r0,0,24,31		# statePtr=r3 channel=r0
	bl		ComM_EnterNetworkRequestedState
.Llo8:
	b		.L757
.L765:
#     }
#     /* Priority 3/1. SILENT_COM [ComM299] */
#     else if(nmEvent == COMM_NM_MODE_PREPARE_BUS_SLEEP)
	.d2line		86
.Llo9:
	se_cmpi		r5,2		# nmEvent=r5
	bc		1,2,.L757	# eq
#     {
# #if(COMM_NM_VARIANT_FULL == STD_ON || COMM_NM_VARIANT_PASSIVE == STD_ON)
#         ComM_EnterSilentCommnState(channel);
# #endif
#     }
# #if(COMM_NM_VARIANT_LIGHT == STD_ON)
#     /* Priority 3/2 NO_COM Light timer expired */
#     else if(lightTimeoutTimerExpired == TRUE)
#     {
#         ComM_EnterNoCommunicationState(channel);
#     }
# #endif
#     /* [ComM671] Priority 4. NO_COM/2 */
#     else if(ComM_ConfigPtr->ChannelsPtr[channel].BusType == COMM_BUS_TYPE_INTERNAL)
	.d2line		100
.Llo19:
	rlwinm		r4,r0,0,24,31		# channel=r0
	lis		r3,ComM_ConfigPtr@ha		# statePtr=r3
.Llo14:
	lwz		r3,ComM_ConfigPtr@l(r3)		# statePtr=r3 statePtr=r3
	lwz		r5,12(r3)		# nmEvent=r5 statePtr=r3
.Llo20:
	rlwinm		r3,r4,6,0,25		# statePtr=r3
	se_slwi		r4,4
	subf		r4,r4,r3		# statePtr=r3
	se_add		r5,r4		# nmEvent=r5 nmEvent=r5
	lwz		r3,40(r5)		# statePtr=r3 nmEvent=r5
	se_cmpi		r3,3		# statePtr=r3
	bc		0,2,.L757	# ne
#     {
#         ComM_EnterNoCommunicationState(channel);
	.d2line		102
.Llo15:
	rlwinm		r3,r0,0,24,31		# statePtr=r3 channel=r0
	bl		ComM_EnterNoCommunicationState
.L757:
#     }
#     else
#     {
#         /* Stay in FULL_COM_READY_SLEEP sub-state */
#     }
# }
	.d2line		108
	.d2epilogue_begin
.Llo10:
	lwz		r0,20(r1)		# channel=r0
	mtspr		lr,r0		# channel=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L781:
	.type		ComM_FullComReadySleepState,@function
	.size		ComM_FullComReadySleepState,.-ComM_FullComReadySleepState
# Number of nodes = 90

# Allocations for ComM_FullComReadySleepState
#	?a4		channel
#	?a5		$$238
#	?a6		$$237
#	?a7		statePtr
#	?a8		nmEvent
# FUNC(void, COMM_CODE) ComM_EnterReadySleepState(CONST(NetworkHandleType, AUTOMATIC) channel)
	.align		2
	.section	.text_vle
        .d2line         120,23
#$$ld
.L801:

#$$bf	ComM_EnterReadySleepState,interprocedural,rasave,nostackparams
	.globl		ComM_EnterReadySleepState
	.d2_cfa_start __cie
ComM_EnterReadySleepState:
.Llo21:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr		# channel=r0
	stw		r0,20(r1)		# channel=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# channel=r0 channel=r3
	.d2prologue_end
# {
#     CONSTP2VAR(ComM_ChannelStateType, AUTOMATIC, COMM_APPL_DATA) statePtr = &ComM_ChannelStates[channel];
	.d2line		122
.Llo22:
	rlwinm		r4,r0,0,24,31		# channel=r0
.Llo23:
	lis		r3,ComM_ChannelStates@ha		# channel=r3
	e_add16i		r3,r3,ComM_ChannelStates@l		# channel=r3 channel=r3
	rlwinm		r5,r4,5,0,26
	se_slwi		r4,3
	subf		r4,r4,r5
	se_add		r3,r4		# channel=r3 channel=r3
.Llo25:
	mr		r3,r3		# statePtr=r3 statePtr=r3
# 
#     statePtr->ChannelSubState = COMM_FULL_COM_READY_SLEEP;
	.d2line		124
	diab.li		r4,3
	stb		r4,2(r3)		# statePtr=r3
# 
# #if(COMM_NM_VARIANT_FULL == STD_ON)
#     if(ComM_ConfigPtr->ChannelsPtr[channel].NmVariant == COMM_FULL)
#     {
#         statePtr->CallNmNetworkRelease = TRUE;
#     }
# #endif
# 
# #if(COMM_NM_VARIANT_LIGHT == STD_ON)
#     if(ComM_ConfigPtr->ChannelsPtr[channel].NmVariant == COMM_LIGHT)
#     {
#         /* Initialize the LightTimeoutTimer */
#         statePtr->LightTimeoutTimer = ComM_ConfigPtr->ChannelsPtr[channel].LightTimeoutTimerInitValue;
#     }
# #endif
# 
#     ComM_FullComReadySleepState(channel);
	.d2line		141
	mr		r3,r0		# channel=r3 channel=r0
.Llo26:
	bl		ComM_FullComReadySleepState
# }
	.d2line		142
	.d2epilogue_begin
.Llo24:
	lwz		r0,20(r1)		# channel=r0
	mtspr		lr,r0		# channel=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L802:
	.type		ComM_EnterReadySleepState,@function
	.size		ComM_EnterReadySleepState,.-ComM_EnterReadySleepState
# Number of nodes = 20

# Allocations for ComM_EnterReadySleepState
#	?a4		channel
#	?a5		$$239
#	?a6		statePtr

# Allocations for module
	.section	.text_vle
#$$ld
.L5:
.L816:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\inc\\ComM_Types.h"
.L808:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\inc\\ComM_Private.h"
.L782:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\src\\ComM_FullCommnReadySleepState.c"
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\src\\ComM_FullCommnReadySleepState.c"
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
.L783:
	.sleb128	2
	.4byte		.L779-.L2
	.byte		"ComM_FullComReadySleepState"
	.byte		0
	.4byte		.L782
	.uleb128	55
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L780
	.4byte		.L781
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L782
	.uleb128	55
	.uleb128	23
	.byte		"channel"
	.byte		0
	.4byte		.L784
	.4byte		.L788
	.section	.debug_info,,n
.L789:
	.sleb128	4
	.4byte		.L782
	.uleb128	57
	.uleb128	66
	.byte		"statePtr"
	.byte		0
	.4byte		.L790
	.4byte		.L794
.L795:
	.sleb128	4
	.4byte		.L782
	.uleb128	63
	.uleb128	44
	.byte		"nmEvent"
	.byte		0
	.4byte		.L796
	.4byte		.L798
	.section	.debug_info,,n
	.sleb128	0
.L779:
	.section	.debug_info,,n
.L803:
	.sleb128	2
	.4byte		.L800-.L2
	.byte		"ComM_EnterReadySleepState"
	.byte		0
	.4byte		.L782
	.uleb128	120
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L801
	.4byte		.L802
	.sleb128	3
	.4byte		.L782
	.uleb128	120
	.uleb128	23
	.byte		"channel"
	.byte		0
	.4byte		.L784
	.4byte		.L804
.L805:
	.sleb128	4
	.4byte		.L782
	.uleb128	122
	.uleb128	66
	.byte		"statePtr"
	.byte		0
	.4byte		.L790
	.4byte		.L806
	.section	.debug_info,,n
	.sleb128	0
.L800:
	.section	.debug_info,,n
.L807:
	.sleb128	5
	.byte		0x1
	.byte		0x1
	.4byte		.L808
	.uleb128	377
	.uleb128	55
	.byte		"ComM_ConfigPtr"
	.byte		0
	.4byte		.L809
	.0byte		.L807
.L813:
	.sleb128	5
	.byte		0x1
	.byte		0x1
	.4byte		.L808
	.uleb128	388
	.uleb128	45
	.byte		"ComM_ChannelStates"
	.byte		0
	.4byte		.L814
	.section	.debug_info,,n
.L812:
	.sleb128	6
	.4byte		.L816
	.uleb128	121
	.uleb128	1
	.4byte		.L817-.L2
	.uleb128	32
	.section	.debug_info,,n
.L380:
	.sleb128	7
	.byte		"PBtoPCHashValuePtr"
	.byte		0
	.4byte		.L818
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L381:
	.sleb128	7
	.byte		"PBtoLTHashValuePtr"
	.byte		0
	.4byte		.L818
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L382:
	.sleb128	7
	.byte		"UsersPtr"
	.byte		0
	.4byte		.L822
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L383:
	.sleb128	7
	.byte		"ChannelsPtr"
	.byte		0
	.4byte		.L827
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L384:
	.sleb128	7
	.byte		"PncsPtr"
	.byte		0
	.4byte		.L832
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L385:
	.sleb128	7
	.byte		"PncRxSignalsPtr"
	.byte		0
	.4byte		.L837
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L386:
	.sleb128	7
	.byte		"PncsNum"
	.byte		0
	.4byte		.L842
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L387:
	.sleb128	7
	.byte		"PncRxSignalsNum"
	.byte		0
	.4byte		.L842
	.sleb128	2
	.byte		0x23
	.uleb128	26
	.byte		0x1
.L388:
	.sleb128	7
	.byte		"UsersNum"
	.byte		0
	.4byte		.L845
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L389:
	.sleb128	7
	.byte		"PncEnabled"
	.byte		0
	.4byte		.L846
	.sleb128	2
	.byte		0x23
	.uleb128	29
	.byte		0x1
	.sleb128	0
.L817:
.L841:
	.sleb128	6
	.4byte		.L816
	.uleb128	121
	.uleb128	1
	.4byte		.L848-.L2
	.uleb128	12
.L377:
	.sleb128	7
	.byte		"SignalId"
	.byte		0
	.4byte		.L849
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L378:
	.sleb128	7
	.byte		"SignalKind"
	.byte		0
	.4byte		.L851
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L379:
	.sleb128	7
	.byte		"SignalChannel"
	.byte		0
	.4byte		.L784
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L848:
.L836:
	.sleb128	6
	.4byte		.L816
	.uleb128	121
	.uleb128	1
	.4byte		.L854-.L2
	.uleb128	32
.L366:
	.sleb128	7
	.byte		"PncID"
	.byte		0
	.4byte		.L855
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L367:
	.sleb128	7
	.byte		"PncIdByteIndex"
	.byte		0
	.4byte		.L845
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L368:
	.sleb128	7
	.byte		"PncIdBitIndex"
	.byte		0
	.4byte		.L845
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L369:
	.sleb128	7
	.byte		"PncTimerMaxValue"
	.byte		0
	.4byte		.L842
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L370:
	.sleb128	7
	.byte		"PncTimerHandlerChannelID"
	.byte		0
	.4byte		.L784
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L371:
	.sleb128	7
	.byte		"PncChannelIDsPtr"
	.byte		0
	.4byte		.L857
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L372:
	.sleb128	7
	.byte		"PncChannelIDsNum"
	.byte		0
	.4byte		.L845
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L373:
	.sleb128	7
	.byte		"PncComRxSignalIndexesPtr"
	.byte		0
	.4byte		.L859
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L374:
	.sleb128	7
	.byte		"PncComRxSignalIndexesNum"
	.byte		0
	.4byte		.L842
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L375:
	.sleb128	7
	.byte		"PncUserIDsPtr"
	.byte		0
	.4byte		.L861
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L376:
	.sleb128	7
	.byte		"PncUserIDsNum"
	.byte		0
	.4byte		.L842
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
	.sleb128	0
.L854:
.L826:
	.sleb128	6
	.4byte		.L816
	.uleb128	121
	.uleb128	1
	.4byte		.L865-.L2
	.uleb128	8
.L356:
	.sleb128	7
	.byte		"AllChannelIDsPtr"
	.byte		0
	.4byte		.L857
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L357:
	.sleb128	7
	.byte		"AllChannelIDsNum"
	.byte		0
	.4byte		.L842
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L358:
	.sleb128	7
	.byte		"DirectChannelIDsNum"
	.byte		0
	.4byte		.L842
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
	.sleb128	0
.L865:
.L831:
	.sleb128	6
	.4byte		.L816
	.uleb128	121
	.uleb128	1
	.4byte		.L866-.L2
	.uleb128	48
.L342:
	.sleb128	7
	.byte		"UserIDsPtr"
	.byte		0
	.4byte		.L861
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L343:
	.sleb128	7
	.byte		"AllUserIDsNum"
	.byte		0
	.4byte		.L842
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L344:
	.sleb128	7
	.byte		"DirectUserIDsNum"
	.byte		0
	.4byte		.L842
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L345:
	.sleb128	7
	.byte		"PncIndexesPtr"
	.byte		0
	.4byte		.L861
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L346:
	.sleb128	7
	.byte		"PncStatesPtr"
	.byte		0
	.4byte		.L867
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L347:
	.sleb128	7
	.byte		"PncRequestsPtr"
	.byte		0
	.4byte		.L871
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L348:
	.sleb128	7
	.byte		"ChannelPncsNum"
	.byte		0
	.4byte		.L845
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L349:
	.sleb128	7
	.byte		"FullComTimerInitValue"
	.byte		0
	.4byte		.L842
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L350:
	.sleb128	7
	.byte		"NmVariant"
	.byte		0
	.4byte		.L874
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L351:
	.sleb128	7
	.byte		"TxSignalIDsPtr"
	.byte		0
	.4byte		.L877
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L352:
	.sleb128	7
	.byte		"TxSignalBufferPtr"
	.byte		0
	.4byte		.L879
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L353:
	.sleb128	7
	.byte		"TxSignalIDsNum"
	.byte		0
	.4byte		.L845
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L354:
	.sleb128	7
	.byte		"BusType"
	.byte		0
	.4byte		.L881
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L355:
	.sleb128	7
	.byte		"PncNmRequestEnabled"
	.byte		0
	.4byte		.L846
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
	.sleb128	0
.L866:
.L793:
	.sleb128	6
	.4byte		.L816
	.uleb128	121
	.uleb128	1
	.4byte		.L884-.L2
	.uleb128	24
.L324:
	.sleb128	7
	.byte		"FullComTimer"
	.byte		0
	.4byte		.L843
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L325:
	.sleb128	7
	.byte		"ChannelSubState"
	.byte		0
	.4byte		.L885
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L326:
	.sleb128	7
	.byte		"HaltInNoComState"
	.byte		0
	.4byte		.L847
	.sleb128	2
	.byte		0x23
	.uleb128	3
	.byte		0x1
.L327:
	.sleb128	7
	.byte		"LastNmIndicatedMode"
	.byte		0
	.4byte		.L796
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L328:
	.sleb128	7
	.byte		"IsLastNmIndicatedModeUpdated"
	.byte		0
	.4byte		.L847
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L329:
	.sleb128	7
	.byte		"NmRestartIndication"
	.byte		0
	.4byte		.L847
	.sleb128	2
	.byte		0x23
	.uleb128	9
	.byte		0x1
.L330:
	.sleb128	7
	.byte		"NmNetworkStartIndication"
	.byte		0
	.4byte		.L847
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L331:
	.sleb128	7
	.byte		"LastBusSMIndicatedMode"
	.byte		0
	.4byte		.L873
	.sleb128	2
	.byte		0x23
	.uleb128	11
	.byte		0x1
.L332:
	.sleb128	7
	.byte		"EcuMWakeUpIndication"
	.byte		0
	.4byte		.L847
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L333:
	.sleb128	7
	.byte		"ActiveDiagnostic"
	.byte		0
	.4byte		.L847
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
.L334:
	.sleb128	7
	.byte		"CommunicationAllowed"
	.byte		0
	.4byte		.L847
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L335:
	.sleb128	7
	.byte		"InitialTransition"
	.byte		0
	.4byte		.L847
	.sleb128	2
	.byte		0x23
	.uleb128	15
	.byte		0x1
.L336:
	.sleb128	7
	.byte		"BusSMReturnValue"
	.byte		0
	.4byte		.L886
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L337:
	.sleb128	7
	.byte		"UserRequestsChanged"
	.byte		0
	.4byte		.L847
	.sleb128	2
	.byte		0x23
	.uleb128	17
	.byte		0x1
.L338:
	.sleb128	7
	.byte		"DirectUserRequestsChanged"
	.byte		0
	.4byte		.L847
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L339:
	.sleb128	7
	.byte		"ChannelRequestedMode"
	.byte		0
	.4byte		.L873
	.sleb128	2
	.byte		0x23
	.uleb128	19
	.byte		0x1
.L340:
	.sleb128	7
	.byte		"DirectUsersRequestedMode"
	.byte		0
	.4byte		.L873
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L341:
	.sleb128	7
	.byte		"PncsRequestedMode"
	.byte		0
	.4byte		.L873
	.sleb128	2
	.byte		0x23
	.uleb128	21
	.byte		0x1
	.sleb128	0
.L884:
	.section	.debug_info,,n
.L797:
	.sleb128	8
	.4byte		.L816
	.uleb128	112
	.uleb128	1
	.4byte		.L887-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	9
	.byte		"COMM_NM_MODE_NO_CHANGE"
	.byte		0
	.sleb128	0
	.sleb128	9
	.byte		"COMM_NM_MODE_NETWORK"
	.byte		0
	.sleb128	1
	.sleb128	9
	.byte		"COMM_NM_MODE_PREPARE_BUS_SLEEP"
	.byte		0
	.sleb128	2
	.sleb128	9
	.byte		"COMM_NM_MODE_BUS_SLEEP"
	.byte		0
	.sleb128	3
	.sleb128	0
.L887:
.L876:
	.sleb128	8
	.4byte		.L816
	.uleb128	103
	.uleb128	1
	.4byte		.L888-.L2
	.uleb128	4
	.sleb128	9
	.byte		"COMM_FULL"
	.byte		0
	.sleb128	0
	.sleb128	9
	.byte		"COMM_LIGHT"
	.byte		0
	.sleb128	1
	.sleb128	9
	.byte		"COMM_NONE"
	.byte		0
	.sleb128	2
	.sleb128	9
	.byte		"COMM_PASSIVE"
	.byte		0
	.sleb128	3
	.sleb128	0
.L888:
.L883:
	.sleb128	8
	.4byte		.L816
	.uleb128	93
	.uleb128	1
	.4byte		.L889-.L2
	.uleb128	4
	.sleb128	9
	.byte		"COMM_BUS_TYPE_CAN"
	.byte		0
	.sleb128	0
	.sleb128	9
	.byte		"COMM_BUS_TYPE_ETH"
	.byte		0
	.sleb128	1
	.sleb128	9
	.byte		"COMM_BUS_TYPE_FR"
	.byte		0
	.sleb128	2
	.sleb128	9
	.byte		"COMM_BUS_TYPE_INTERNAL"
	.byte		0
	.sleb128	3
	.sleb128	9
	.byte		"COMM_BUS_TYPE_LIN"
	.byte		0
	.sleb128	4
	.sleb128	0
.L889:
.L853:
	.sleb128	8
	.4byte		.L816
	.uleb128	86
	.uleb128	1
	.4byte		.L890-.L2
	.uleb128	4
	.sleb128	9
	.byte		"COMM_SIGNAL_KIND_EIRA"
	.byte		0
	.sleb128	0
	.sleb128	9
	.byte		"COMM_SIGNAL_KIND_ERA"
	.byte		0
	.sleb128	1
	.sleb128	0
.L890:
.L870:
	.sleb128	8
	.4byte		.L816
	.uleb128	57
	.uleb128	1
	.4byte		.L891-.L2
	.uleb128	4
	.sleb128	9
	.byte		"PNC_REQUESTED"
	.byte		0
	.sleb128	0
	.sleb128	9
	.byte		"PNC_READY_SLEEP"
	.byte		0
	.sleb128	1
	.sleb128	9
	.byte		"PNC_PREPARE_SLEEP"
	.byte		0
	.sleb128	2
	.sleb128	9
	.byte		"PNC_NO_COMMUNICATION"
	.byte		0
	.sleb128	3
	.sleb128	9
	.byte		"PNC_FULL_COMMUNICATION"
	.byte		0
	.sleb128	4
	.sleb128	0
.L891:
	.section	.debug_info,,n
.L787:
	.sleb128	10
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L786:
	.sleb128	11
	.byte		"uint8"
	.byte		0
	.4byte		.L787
.L785:
	.sleb128	11
	.byte		"NetworkHandleType"
	.byte		0
	.4byte		.L786
	.section	.debug_info,,n
.L784:
	.sleb128	12
	.4byte		.L785
.L792:
	.sleb128	11
	.byte		"ComM_ChannelStateType"
	.byte		0
	.4byte		.L793
	.section	.debug_info,,n
.L791:
	.sleb128	13
	.4byte		.L792
.L790:
	.sleb128	12
	.4byte		.L791
.L796:
	.sleb128	11
	.byte		"ComM_NmCurrentModeType"
	.byte		0
	.4byte		.L797
.L811:
	.sleb128	11
	.byte		"ComM_ConfigType"
	.byte		0
	.4byte		.L812
.L810:
	.sleb128	12
	.4byte		.L811
.L809:
	.sleb128	13
	.4byte		.L810
	.section	.debug_info,,n
.L814:
	.sleb128	14
	.4byte		.L815-.L2
	.4byte		.L792
	.section	.debug_info,,n
	.sleb128	15
	.sleb128	0
.L815:
.L821:
	.sleb128	10
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L820:
	.sleb128	11
	.byte		"uint32"
	.byte		0
	.4byte		.L821
.L819:
	.sleb128	12
	.4byte		.L820
.L818:
	.sleb128	13
	.4byte		.L819
.L825:
	.sleb128	11
	.byte		"ComM_UserType"
	.byte		0
	.4byte		.L826
.L824:
	.sleb128	12
	.4byte		.L825
.L823:
	.sleb128	13
	.4byte		.L824
.L822:
	.sleb128	12
	.4byte		.L823
.L830:
	.sleb128	11
	.byte		"ComM_ChannelType"
	.byte		0
	.4byte		.L831
.L829:
	.sleb128	12
	.4byte		.L830
.L828:
	.sleb128	13
	.4byte		.L829
.L827:
	.sleb128	12
	.4byte		.L828
.L835:
	.sleb128	11
	.byte		"ComM_PncType"
	.byte		0
	.4byte		.L836
.L834:
	.sleb128	12
	.4byte		.L835
.L833:
	.sleb128	13
	.4byte		.L834
.L832:
	.sleb128	12
	.4byte		.L833
.L840:
	.sleb128	11
	.byte		"ComM_PncRxSignalType"
	.byte		0
	.4byte		.L841
.L839:
	.sleb128	12
	.4byte		.L840
.L838:
	.sleb128	13
	.4byte		.L839
.L837:
	.sleb128	12
	.4byte		.L838
.L844:
	.sleb128	10
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L843:
	.sleb128	11
	.byte		"uint16"
	.byte		0
	.4byte		.L844
.L842:
	.sleb128	12
	.4byte		.L843
.L845:
	.sleb128	12
	.4byte		.L786
.L847:
	.sleb128	11
	.byte		"boolean"
	.byte		0
	.4byte		.L787
.L846:
	.sleb128	12
	.4byte		.L847
.L850:
	.sleb128	11
	.byte		"Com_SignalIdType"
	.byte		0
	.4byte		.L843
.L849:
	.sleb128	12
	.4byte		.L850
.L852:
	.sleb128	11
	.byte		"ComM_PncComSignalKindType"
	.byte		0
	.4byte		.L853
.L851:
	.sleb128	12
	.4byte		.L852
.L856:
	.sleb128	11
	.byte		"PNCHandleType"
	.byte		0
	.4byte		.L786
.L855:
	.sleb128	12
	.4byte		.L856
.L858:
	.sleb128	13
	.4byte		.L784
.L857:
	.sleb128	12
	.4byte		.L858
.L860:
	.sleb128	13
	.4byte		.L845
.L859:
	.sleb128	12
	.4byte		.L860
.L864:
	.sleb128	11
	.byte		"ComM_UserHandleType"
	.byte		0
	.4byte		.L786
.L863:
	.sleb128	12
	.4byte		.L864
.L862:
	.sleb128	13
	.4byte		.L863
.L861:
	.sleb128	12
	.4byte		.L862
.L869:
	.sleb128	11
	.byte		"ComM_PncModeType"
	.byte		0
	.4byte		.L870
.L868:
	.sleb128	13
	.4byte		.L869
.L867:
	.sleb128	12
	.4byte		.L868
.L873:
	.sleb128	11
	.byte		"ComM_ModeType"
	.byte		0
	.4byte		.L786
.L872:
	.sleb128	13
	.4byte		.L873
.L871:
	.sleb128	12
	.4byte		.L872
.L875:
	.sleb128	11
	.byte		"ComM_NmVariantType"
	.byte		0
	.4byte		.L876
.L874:
	.sleb128	12
	.4byte		.L875
.L878:
	.sleb128	13
	.4byte		.L842
.L877:
	.sleb128	12
	.4byte		.L878
.L880:
	.sleb128	13
	.4byte		.L786
.L879:
	.sleb128	12
	.4byte		.L880
.L882:
	.sleb128	11
	.byte		"ComM_BusTypeType"
	.byte		0
	.4byte		.L883
.L881:
	.sleb128	12
	.4byte		.L882
.L885:
	.sleb128	11
	.byte		"ComM_StateType"
	.byte		0
	.4byte		.L786
.L886:
	.sleb128	11
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L786
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L788:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),0
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),0
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),0
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),0
	.d2locend
.L794:
	.d2locreg	%offsetof(.Llo2), %offsetof(.Llo11),3
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo12),3
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo13),3
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo15),3
	.d2locend
.L798:
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo17),5
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo11),5
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo12),5
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo13),5
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo19),5
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo15),5
	.d2locend
.L804:
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo22),3
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo24),0
	.d2locend
.L806:
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo26),3
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "ComM_EnterReadySleepState"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "ComM_FullComReadySleepState"
	.wrcm.end
	.wrcm.nelem "ComM_FullComReadySleepState"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "ComM_EnterNetworkRequestedState","ComM_EnterNoCommunicationState"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\ComM_FullCommnReadySleepState.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\ComM_FullCommnReadySleepState.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\ComM_FullCommnReadySleepState.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\ComM_FullCommnReadySleepState.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\ComM_FullCommnReadySleepState.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\ComM_FullCommnReadySleepState.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\ComM\ssc\make\..\src\ComM_FullCommnReadySleepState.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
