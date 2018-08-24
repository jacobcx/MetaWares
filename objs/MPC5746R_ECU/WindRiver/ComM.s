#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"ComM.c"
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
# FUNC(void, COMM_CODE) ComM_DcmReportMode(CONST(NetworkHandleType, AUTOMATIC) Channel,
	.align		2
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\src\\ComM.c"
        .d2line         86,23
#$$ld
.L792:

#$$bf	ComM_DcmReportMode,interprocedural,rasave,nostackparams
	.globl		ComM_DcmReportMode
	.d2_cfa_start __cie
ComM_DcmReportMode:
.Llo1:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# Channel=r3 Channel=r3
	mr		r4,r4		# ComMode=r4 ComMode=r4
	.d2prologue_end
#                                          CONST(ComM_ModeType, AUTOMATIC)     ComMode)
# {
#     /* Check if current lowest channel mode is "NO COMMUNICATION" */
#     if(ComMode == COMM_NO_COMMUNICATION)
	.d2line		90
	rlwinm		r0,r4,0,24,31		# ComMode=r4
	se_cmpi		r0,0
	bc		0,2,.L760	# ne
#     {
#         /* Report "No Communication" mode to DCM */
#         Dcm_ComM_NoComModeEntered((uint8)Channel);
	.d2line		93
.Llo7:
	rlwinm		r3,r3,0,24,31		# Channel=r3 Channel=r3
.Llo2:
	bl		Dcm_ComM_NoComModeEntered
	b		.L759
.L760:
#     }
#     /* Check if current lowest channel mode is "SILENT COMMUNICATION" */
#     else if(ComMode == COMM_SILENT_COMMUNICATION)
	.d2line		96
.Llo3:
	rlwinm		r4,r4,0,24,31		# ComMode=r4 ComMode=r4
	se_cmpi		r4,1		# ComMode=r4
	bc		0,2,.L762	# ne
#     {
#         /* Report "Silent Communication" mode to DCM */
#         Dcm_ComM_SilentComModeEntered((uint8)Channel);
	.d2line		99
.Llo8:
	rlwinm		r3,r3,0,24,31		# Channel=r3 Channel=r3
.Llo4:
	bl		Dcm_ComM_SilentComModeEntered
	b		.L759
.L762:
#     }
#     else
#     {
#         /* Report "Full Communication" mode to DCM */
#         Dcm_ComM_FullComModeEntered((uint8)Channel);
	.d2line		104
.Llo5:
	rlwinm		r3,r3,0,24,31		# Channel=r3 Channel=r3
.Llo6:
	bl		Dcm_ComM_FullComModeEntered
.L759:
#     }
# }
	.d2line		106
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
.L793:
	.type		ComM_DcmReportMode,@function
	.size		ComM_DcmReportMode,.-ComM_DcmReportMode
# Number of nodes = 25

# Allocations for ComM_DcmReportMode
#	?a4		Channel
#	?a5		ComMode
# FUNC(Std_ReturnType, COMM_CODE) ComM_RequestModetoStateManager(CONST(NetworkHandleType, AUTOMATIC) Channel,
	.align		2
	.section	.text_vle
        .d2line         121,33
#$$ld
.L806:

#$$bf	ComM_RequestModetoStateManager,interprocedural,rasave,nostackparams
	.globl		ComM_RequestModetoStateManager
	.d2_cfa_start __cie
ComM_RequestModetoStateManager:
.Llo9:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# Channel=r3 Channel=r3
	mr		r4,r4		# ComMode=r4 ComMode=r4
	.d2prologue_end
#                                                                CONST(ComM_ModeType, AUTOMATIC)     ComMode)
# {
#     VAR(Std_ReturnType, AUTOMATIC) retVal = E_NOT_OK;
	.d2line		124
	diab.li		r5,1		# retVal=r5
# 
#     switch(ComM_ConfigPtr->ChannelsPtr[Channel].BusType)
	.d2line		126
.Llo18:
	rlwinm		r0,r3,0,24,31		# Channel=r3
	lis		r6,ComM_ConfigPtr@ha
	lwz		r6,ComM_ConfigPtr@l(r6)
	lwz		r7,12(r6)
	rlwinm		r6,r0,6,0,25
	se_slwi		r0,4
	subf		r0,r0,r6
	se_add		r7,r0
	lwz		r6,40(r7)
	se_cmpi		r6,0
	bc		1,2,.L768	# eq
	se_cmpi		r6,3
	bc		1,2,.L771	# eq
	se_cmpi		r6,4
	bc		1,2,.L770	# eq
	b		.L769
.L768:
#     {
# #if(COMM_CAN_ENABLED == STD_ON )
#         case COMM_BUS_TYPE_CAN:
#         {
#             /* Request Communication mode from CAN SM */
#             retVal = CanSM_RequestComMode(Channel, ComMode);
	.d2line		132
.Llo15:
	rlwinm		r3,r3,0,24,31		# Channel=r3 Channel=r3
.Llo10:
	rlwinm		r4,r4,0,24,31		# ComMode=r4 ComMode=r4
.Llo16:
	bl		CanSM_RequestComMode
	mr		r5,r3		# retVal=r5 retVal=r3
	b		.L769
.L770:
#             break;
#         }
# #endif
# #if(COMM_LIN_ENABLED == STD_ON)
#         case COMM_BUS_TYPE_LIN:
#         {
#             /* Request Communication mode from LIN SM */
#             retVal = LinSM_RequestComMode(Channel, ComMode);
	.d2line		140
.Llo11:
	rlwinm		r3,r3,0,24,31		# Channel=r3 Channel=r3
.Llo12:
	rlwinm		r4,r4,0,24,31		# ComMode=r4 ComMode=r4
.Llo17:
	bl		LinSM_RequestComMode
	mr		r5,r3		# retVal=r5 retVal=r3
	b		.L769
.L771:
#             break;
#         }
# 
# #endif
# #if(COMM_FR_ENABLED == STD_ON )
#         case COMM_BUS_TYPE_FR:
#         {
#             /* Request Communication mode from FR SM */
#             retVal = FrSM_RequestComMode(Channel, ComMode);
#             break;
#         }
# #endif
# #if(COMM_ETH_ENABLED == STD_ON)
#         case COMM_BUS_TYPE_ETH:
#         {
#             /* Request Communication mode from Eth SM */
#             retVal = EthSM_RequestComMode(Channel, ComMode);
#             break;
#         }
# #endif
#         case COMM_BUS_TYPE_INTERNAL:
#         {
#             retVal = E_OK;
	.d2line		163
.Llo13:
	diab.li		r5,0		# retVal=r5
.L769:
#             break;
#         }
#         default:
#         {
#             /* Do nothing. */
#             break;
#         }
#     }
# 
#     return retVal;
	.d2line		173
.Llo14:
	rlwinm		r3,r5,0,24,31		# Channel=r3 retVal=r5
# }
	.d2line		174
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo19:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L807:
	.type		ComM_RequestModetoStateManager,@function
	.size		ComM_RequestModetoStateManager,.-ComM_RequestModetoStateManager
# Number of nodes = 43

# Allocations for ComM_RequestModetoStateManager
#	?a4		Channel
#	?a5		ComMode
#	?a6		$$237
#	?a7		retVal
# FUNC(ComM_ModeType, COMM_CODE) ComM_GetChannelState(CONST(ComM_StateType, AUTOMATIC) channelSubState)
	.align		2
	.section	.text_vle
        .d2line         185,32
#$$ld
.L818:

#$$bf	ComM_GetChannelState,interprocedural,nostackparams

# Regs written: r0,r1,r3,cr0,lr
	.globl		ComM_GetChannelState
	.d2_cfa_start __cie
ComM_GetChannelState:
.Llo20:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r0,r3		# channelSubState=r0 channelSubState=r3
	.d2prologue_end
# {
#     VAR(ComM_ModeType, AUTOMATIC) channelState;
#     switch (channelSubState) {
	.d2line		188
	rlwinm		r3,r3,0,24,31		# channelSubState=r3 channelSubState=r3
	se_cmpli	r3,4		# channelSubState=r3
	bc		1,1,.L784	# gt
#         case COMM_NO_COM_NO_PENDING_REQUEST:
#         case COMM_NO_COM_REQUEST_PENDING:
#             channelState = (ComM_ModeType)COMM_NO_COMMUNICATION;
#             break;
#         case COMM_FULL_COM_NETWORK_REQUESTED:
#         case COMM_FULL_COM_READY_SLEEP:
#             channelState = (ComM_ModeType)COMM_FULL_COMMUNICATION;
#             break;
#         case COMM_SILENT_COM:
#             channelState = (ComM_ModeType)COMM_SILENT_COMMUNICATION;
#             break;
#         default:
#             /* Should never happen */
#             channelState = (ComM_ModeType)COMM_NO_COMMUNICATION;
	.d2line		202
.Llo21:
	lis		r3,.L815@ha		# channelSubState=r3
.Llo22:
	e_add16i		r3,r3,.L815@l		# channelSubState=r3 channelSubState=r3
.Llo23:
	rlwinm		r0,r0,0,24,31		# channelSubState=r0 channelSubState=r0
.Llo24:
	lbzx		r3,r3,r0		# channelSubState=r3 channelSubState=r3
.Llo25:
	mr		r3,r3		# channelState=r3 channelState=r3
	b		.L780
.L784:
.Llo26:
	diab.li		r3,0		# channelState=r3
.L780:
#             break;
#     }
#     return channelState;
	.d2line		205
.Llo27:
	rlwinm		r3,r3,0,24,31		# channelState=r3 channelState=r3
# }
	.d2line		206
	.d2epilogue_begin
.Llo28:
	lwz		r0,20(r1)		# channelSubState=r0
	mtspr		lr,r0		# channelSubState=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L819:
	.type		ComM_GetChannelState,@function
	.size		ComM_GetChannelState,.-ComM_GetChannelState
# Number of nodes = 20

# Allocations for ComM_GetChannelState
#	?a4		channelSubState
#	?a5		channelState

# Allocations for module
	.section	.text_vle
	.type		.L815,@object
	.size		.L815,5
	.align		2
#	static		__switch_array1
.L815:
	.byte		0
	.byte		0
	.byte		2
	.byte		2
	.byte		1
	.section	.text_vle
#$$ld
.L5:
.L831:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\inc\\ComM_Types.h"
.L794:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\src\\ComM.c"
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\src\\ComM.c"
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
.L795:
	.sleb128	2
	.4byte		.L791-.L2
	.byte		"ComM_DcmReportMode"
	.byte		0
	.4byte		.L794
	.uleb128	86
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L792
	.4byte		.L793
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L794
	.uleb128	86
	.uleb128	23
	.byte		"Channel"
	.byte		0
	.4byte		.L796
	.4byte		.L800
	.sleb128	3
	.4byte		.L794
	.uleb128	86
	.uleb128	23
	.byte		"ComMode"
	.byte		0
	.4byte		.L801
	.4byte		.L803
	.section	.debug_info,,n
	.sleb128	0
.L791:
	.section	.debug_info,,n
.L809:
	.sleb128	4
	.4byte		.L805-.L2
	.byte		"ComM_RequestModetoStateManager"
	.byte		0
	.4byte		.L794
	.uleb128	121
	.uleb128	33
	.4byte		.L808
	.byte		0x1
	.byte		0x1
	.4byte		.L806
	.4byte		.L807
	.sleb128	3
	.4byte		.L794
	.uleb128	121
	.uleb128	33
	.byte		"Channel"
	.byte		0
	.4byte		.L796
	.4byte		.L810
	.sleb128	3
	.4byte		.L794
	.uleb128	121
	.uleb128	33
	.byte		"ComMode"
	.byte		0
	.4byte		.L801
	.4byte		.L811
	.section	.debug_info,,n
.L812:
	.sleb128	5
	.4byte		.L794
	.uleb128	124
	.uleb128	36
	.byte		"retVal"
	.byte		0
	.4byte		.L808
	.4byte		.L813
	.section	.debug_info,,n
	.sleb128	0
.L805:
	.section	.debug_info,,n
.L820:
	.sleb128	4
	.4byte		.L817-.L2
	.byte		"ComM_GetChannelState"
	.byte		0
	.4byte		.L794
	.uleb128	185
	.uleb128	32
	.4byte		.L802
	.byte		0x1
	.byte		0x1
	.4byte		.L818
	.4byte		.L819
	.sleb128	3
	.4byte		.L794
	.uleb128	185
	.uleb128	32
	.byte		"channelSubState"
	.byte		0
	.4byte		.L821
	.4byte		.L823
.L824:
	.sleb128	5
	.4byte		.L794
	.uleb128	187
	.uleb128	35
	.byte		"channelState"
	.byte		0
	.4byte		.L802
	.4byte		.L825
	.section	.debug_info,,n
	.sleb128	0
.L817:
	.section	.debug_info,,n
.L826:
	.sleb128	6
	.byte		0x1
	.4byte		.L794
	.uleb128	42
	.uleb128	48
	.byte		"ComM_ConfigPtr"
	.byte		0
	.4byte		.L827
	.sleb128	5
	.byte		0x3
	.4byte		ComM_ConfigPtr
	.0byte		.L826
	.comm		ComM_ConfigPtr,4,2
	.section	.debug_info,,n
.L830:
	.sleb128	7
	.4byte		.L831
	.uleb128	121
	.uleb128	1
	.4byte		.L832-.L2
	.uleb128	32
	.section	.debug_info,,n
.L380:
	.sleb128	8
	.byte		"PBtoPCHashValuePtr"
	.byte		0
	.4byte		.L833
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L381:
	.sleb128	8
	.byte		"PBtoLTHashValuePtr"
	.byte		0
	.4byte		.L833
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L382:
	.sleb128	8
	.byte		"UsersPtr"
	.byte		0
	.4byte		.L837
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L383:
	.sleb128	8
	.byte		"ChannelsPtr"
	.byte		0
	.4byte		.L842
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L384:
	.sleb128	8
	.byte		"PncsPtr"
	.byte		0
	.4byte		.L847
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L385:
	.sleb128	8
	.byte		"PncRxSignalsPtr"
	.byte		0
	.4byte		.L852
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L386:
	.sleb128	8
	.byte		"PncsNum"
	.byte		0
	.4byte		.L857
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L387:
	.sleb128	8
	.byte		"PncRxSignalsNum"
	.byte		0
	.4byte		.L857
	.sleb128	2
	.byte		0x23
	.uleb128	26
	.byte		0x1
.L388:
	.sleb128	8
	.byte		"UsersNum"
	.byte		0
	.4byte		.L860
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L389:
	.sleb128	8
	.byte		"PncEnabled"
	.byte		0
	.4byte		.L861
	.sleb128	2
	.byte		0x23
	.uleb128	29
	.byte		0x1
	.sleb128	0
.L832:
.L856:
	.sleb128	7
	.4byte		.L831
	.uleb128	121
	.uleb128	1
	.4byte		.L863-.L2
	.uleb128	12
.L377:
	.sleb128	8
	.byte		"SignalId"
	.byte		0
	.4byte		.L864
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L378:
	.sleb128	8
	.byte		"SignalKind"
	.byte		0
	.4byte		.L866
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L379:
	.sleb128	8
	.byte		"SignalChannel"
	.byte		0
	.4byte		.L796
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L863:
.L851:
	.sleb128	7
	.4byte		.L831
	.uleb128	121
	.uleb128	1
	.4byte		.L869-.L2
	.uleb128	32
.L366:
	.sleb128	8
	.byte		"PncID"
	.byte		0
	.4byte		.L870
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L367:
	.sleb128	8
	.byte		"PncIdByteIndex"
	.byte		0
	.4byte		.L860
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L368:
	.sleb128	8
	.byte		"PncIdBitIndex"
	.byte		0
	.4byte		.L860
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L369:
	.sleb128	8
	.byte		"PncTimerMaxValue"
	.byte		0
	.4byte		.L857
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L370:
	.sleb128	8
	.byte		"PncTimerHandlerChannelID"
	.byte		0
	.4byte		.L796
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L371:
	.sleb128	8
	.byte		"PncChannelIDsPtr"
	.byte		0
	.4byte		.L872
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L372:
	.sleb128	8
	.byte		"PncChannelIDsNum"
	.byte		0
	.4byte		.L860
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L373:
	.sleb128	8
	.byte		"PncComRxSignalIndexesPtr"
	.byte		0
	.4byte		.L874
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L374:
	.sleb128	8
	.byte		"PncComRxSignalIndexesNum"
	.byte		0
	.4byte		.L857
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L375:
	.sleb128	8
	.byte		"PncUserIDsPtr"
	.byte		0
	.4byte		.L876
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L376:
	.sleb128	8
	.byte		"PncUserIDsNum"
	.byte		0
	.4byte		.L857
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
	.sleb128	0
.L869:
.L841:
	.sleb128	7
	.4byte		.L831
	.uleb128	121
	.uleb128	1
	.4byte		.L880-.L2
	.uleb128	8
.L356:
	.sleb128	8
	.byte		"AllChannelIDsPtr"
	.byte		0
	.4byte		.L872
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L357:
	.sleb128	8
	.byte		"AllChannelIDsNum"
	.byte		0
	.4byte		.L857
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L358:
	.sleb128	8
	.byte		"DirectChannelIDsNum"
	.byte		0
	.4byte		.L857
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
	.sleb128	0
.L880:
.L846:
	.sleb128	7
	.4byte		.L831
	.uleb128	121
	.uleb128	1
	.4byte		.L881-.L2
	.uleb128	48
.L342:
	.sleb128	8
	.byte		"UserIDsPtr"
	.byte		0
	.4byte		.L876
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L343:
	.sleb128	8
	.byte		"AllUserIDsNum"
	.byte		0
	.4byte		.L857
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L344:
	.sleb128	8
	.byte		"DirectUserIDsNum"
	.byte		0
	.4byte		.L857
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L345:
	.sleb128	8
	.byte		"PncIndexesPtr"
	.byte		0
	.4byte		.L876
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L346:
	.sleb128	8
	.byte		"PncStatesPtr"
	.byte		0
	.4byte		.L882
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L347:
	.sleb128	8
	.byte		"PncRequestsPtr"
	.byte		0
	.4byte		.L886
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L348:
	.sleb128	8
	.byte		"ChannelPncsNum"
	.byte		0
	.4byte		.L860
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L349:
	.sleb128	8
	.byte		"FullComTimerInitValue"
	.byte		0
	.4byte		.L857
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L350:
	.sleb128	8
	.byte		"NmVariant"
	.byte		0
	.4byte		.L888
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L351:
	.sleb128	8
	.byte		"TxSignalIDsPtr"
	.byte		0
	.4byte		.L891
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L352:
	.sleb128	8
	.byte		"TxSignalBufferPtr"
	.byte		0
	.4byte		.L893
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L353:
	.sleb128	8
	.byte		"TxSignalIDsNum"
	.byte		0
	.4byte		.L860
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L354:
	.sleb128	8
	.byte		"BusType"
	.byte		0
	.4byte		.L895
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L355:
	.sleb128	8
	.byte		"PncNmRequestEnabled"
	.byte		0
	.4byte		.L861
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
	.sleb128	0
.L881:
	.section	.debug_info,,n
.L890:
	.sleb128	9
	.4byte		.L831
	.uleb128	103
	.uleb128	1
	.4byte		.L898-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	10
	.byte		"COMM_FULL"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"COMM_LIGHT"
	.byte		0
	.sleb128	1
	.sleb128	10
	.byte		"COMM_NONE"
	.byte		0
	.sleb128	2
	.sleb128	10
	.byte		"COMM_PASSIVE"
	.byte		0
	.sleb128	3
	.sleb128	0
.L898:
.L897:
	.sleb128	9
	.4byte		.L831
	.uleb128	93
	.uleb128	1
	.4byte		.L899-.L2
	.uleb128	4
	.sleb128	10
	.byte		"COMM_BUS_TYPE_CAN"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"COMM_BUS_TYPE_ETH"
	.byte		0
	.sleb128	1
	.sleb128	10
	.byte		"COMM_BUS_TYPE_FR"
	.byte		0
	.sleb128	2
	.sleb128	10
	.byte		"COMM_BUS_TYPE_INTERNAL"
	.byte		0
	.sleb128	3
	.sleb128	10
	.byte		"COMM_BUS_TYPE_LIN"
	.byte		0
	.sleb128	4
	.sleb128	0
.L899:
.L868:
	.sleb128	9
	.4byte		.L831
	.uleb128	86
	.uleb128	1
	.4byte		.L900-.L2
	.uleb128	4
	.sleb128	10
	.byte		"COMM_SIGNAL_KIND_EIRA"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"COMM_SIGNAL_KIND_ERA"
	.byte		0
	.sleb128	1
	.sleb128	0
.L900:
.L885:
	.sleb128	9
	.4byte		.L831
	.uleb128	57
	.uleb128	1
	.4byte		.L901-.L2
	.uleb128	4
	.sleb128	10
	.byte		"PNC_REQUESTED"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"PNC_READY_SLEEP"
	.byte		0
	.sleb128	1
	.sleb128	10
	.byte		"PNC_PREPARE_SLEEP"
	.byte		0
	.sleb128	2
	.sleb128	10
	.byte		"PNC_NO_COMMUNICATION"
	.byte		0
	.sleb128	3
	.sleb128	10
	.byte		"PNC_FULL_COMMUNICATION"
	.byte		0
	.sleb128	4
	.sleb128	0
.L901:
	.section	.debug_info,,n
.L799:
	.sleb128	11
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L798:
	.sleb128	12
	.byte		"uint8"
	.byte		0
	.4byte		.L799
.L797:
	.sleb128	12
	.byte		"NetworkHandleType"
	.byte		0
	.4byte		.L798
	.section	.debug_info,,n
.L796:
	.sleb128	13
	.4byte		.L797
.L802:
	.sleb128	12
	.byte		"ComM_ModeType"
	.byte		0
	.4byte		.L798
.L801:
	.sleb128	13
	.4byte		.L802
.L808:
	.sleb128	12
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L798
.L822:
	.sleb128	12
	.byte		"ComM_StateType"
	.byte		0
	.4byte		.L798
.L821:
	.sleb128	13
	.4byte		.L822
.L829:
	.sleb128	12
	.byte		"ComM_ConfigType"
	.byte		0
	.4byte		.L830
.L828:
	.sleb128	13
	.4byte		.L829
	.section	.debug_info,,n
.L827:
	.sleb128	14
	.4byte		.L828
.L836:
	.sleb128	11
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L835:
	.sleb128	12
	.byte		"uint32"
	.byte		0
	.4byte		.L836
.L834:
	.sleb128	13
	.4byte		.L835
.L833:
	.sleb128	14
	.4byte		.L834
.L840:
	.sleb128	12
	.byte		"ComM_UserType"
	.byte		0
	.4byte		.L841
.L839:
	.sleb128	13
	.4byte		.L840
.L838:
	.sleb128	14
	.4byte		.L839
.L837:
	.sleb128	13
	.4byte		.L838
.L845:
	.sleb128	12
	.byte		"ComM_ChannelType"
	.byte		0
	.4byte		.L846
.L844:
	.sleb128	13
	.4byte		.L845
.L843:
	.sleb128	14
	.4byte		.L844
.L842:
	.sleb128	13
	.4byte		.L843
.L850:
	.sleb128	12
	.byte		"ComM_PncType"
	.byte		0
	.4byte		.L851
.L849:
	.sleb128	13
	.4byte		.L850
.L848:
	.sleb128	14
	.4byte		.L849
.L847:
	.sleb128	13
	.4byte		.L848
.L855:
	.sleb128	12
	.byte		"ComM_PncRxSignalType"
	.byte		0
	.4byte		.L856
.L854:
	.sleb128	13
	.4byte		.L855
.L853:
	.sleb128	14
	.4byte		.L854
.L852:
	.sleb128	13
	.4byte		.L853
.L859:
	.sleb128	11
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L858:
	.sleb128	12
	.byte		"uint16"
	.byte		0
	.4byte		.L859
.L857:
	.sleb128	13
	.4byte		.L858
.L860:
	.sleb128	13
	.4byte		.L798
.L862:
	.sleb128	12
	.byte		"boolean"
	.byte		0
	.4byte		.L799
.L861:
	.sleb128	13
	.4byte		.L862
.L865:
	.sleb128	12
	.byte		"Com_SignalIdType"
	.byte		0
	.4byte		.L858
.L864:
	.sleb128	13
	.4byte		.L865
.L867:
	.sleb128	12
	.byte		"ComM_PncComSignalKindType"
	.byte		0
	.4byte		.L868
.L866:
	.sleb128	13
	.4byte		.L867
.L871:
	.sleb128	12
	.byte		"PNCHandleType"
	.byte		0
	.4byte		.L798
.L870:
	.sleb128	13
	.4byte		.L871
.L873:
	.sleb128	14
	.4byte		.L796
.L872:
	.sleb128	13
	.4byte		.L873
.L875:
	.sleb128	14
	.4byte		.L860
.L874:
	.sleb128	13
	.4byte		.L875
.L879:
	.sleb128	12
	.byte		"ComM_UserHandleType"
	.byte		0
	.4byte		.L798
.L878:
	.sleb128	13
	.4byte		.L879
.L877:
	.sleb128	14
	.4byte		.L878
.L876:
	.sleb128	13
	.4byte		.L877
.L884:
	.sleb128	12
	.byte		"ComM_PncModeType"
	.byte		0
	.4byte		.L885
.L883:
	.sleb128	14
	.4byte		.L884
.L882:
	.sleb128	13
	.4byte		.L883
.L887:
	.sleb128	14
	.4byte		.L802
.L886:
	.sleb128	13
	.4byte		.L887
.L889:
	.sleb128	12
	.byte		"ComM_NmVariantType"
	.byte		0
	.4byte		.L890
.L888:
	.sleb128	13
	.4byte		.L889
.L892:
	.sleb128	14
	.4byte		.L857
.L891:
	.sleb128	13
	.4byte		.L892
.L894:
	.sleb128	14
	.4byte		.L798
.L893:
	.sleb128	13
	.4byte		.L894
.L896:
	.sleb128	12
	.byte		"ComM_BusTypeType"
	.byte		0
	.4byte		.L897
.L895:
	.sleb128	13
	.4byte		.L896
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L800:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),3
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),3
	.d2locend
.L803:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo7),4
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo8),4
	.d2locend
.L810:
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),3
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo12),3
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo14),3
	.d2locend
.L811:
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo15),4
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo16),4
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo17),4
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo14),4
	.d2locend
.L813:
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo19),5
	.d2locend
.L823:
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo21),3
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo23),3
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo25),3
	.d2locreg	%offsetof(.Llo26), %offsetof(.Llo27),0
	.d2locend
.L825:
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo26),3
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo28),3
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "ComM_GetChannelState"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "ComM_RequestModetoStateManager"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "CanSM_RequestComMode","LinSM_RequestComMode"
	.wrcm.end
	.wrcm.nelem "ComM_DcmReportMode"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Dcm_ComM_FullComModeEntered","Dcm_ComM_NoComModeEntered","Dcm_ComM_SilentComModeEntered"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\ComM.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\ComM.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\ComM.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\ComM.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\ComM.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\ComM.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\ComM\ssc\make\..\src\ComM.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
