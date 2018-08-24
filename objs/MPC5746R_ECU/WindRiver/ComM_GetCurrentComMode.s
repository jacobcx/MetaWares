#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"ComM_GetCurrentComMode.c"
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
# FUNC(Std_ReturnType, COMM_CODE) ComM_GetCurrentComMode(VAR(ComM_UserHandleType, AUTOMATIC)             User,
	.align		2
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\src\\ComM_GetCurrentComMode.c"
        .d2line         53,33
#$$ld
.L781:

#$$bf	ComM_GetCurrentComMode,interprocedural,rasave,nostackparams
	.globl		ComM_GetCurrentComMode
	.d2_cfa_start __cie
ComM_GetCurrentComMode:
.Llo1:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr
	stmw		r27,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	27,31,1,1
	stw		r0,52(r1)
	.d2_cfa_offset    108,-1
	mr		r0,r3		# User=r0 User=r3
	mr		r31,r4		# ComMode=r31 ComMode=r4
	.d2prologue_end
#                                                        P2VAR(ComM_ModeType, AUTOMATIC, COMM_APPL_DATA) ComMode)
# {
#     VAR(Std_ReturnType, AUTOMATIC) retVal = E_OK;
	.d2line		56
	diab.li		r30,0		# retVal=r30
# 
#     /* [ComM612] Check whether the module has been initialized */
#     if(ComM_InitStatus != COMM_INIT)
	.d2line		59
.Llo15:
	lis		r3,ComM_InitStatus@ha
.Llo2:
	lwz		r3,ComM_InitStatus@l(r3)
	se_cmpi		r3,1
	bc		1,2,.L758	# eq
#     {
#         COMM_DET_REPORT_ERROR(COMM_GETCURRENTCOMMODE_API_ID, COMM_E_NOT_INITED);
#         retVal = COMM_UNINIT_RETVAL;
	.d2line		62
.Llo3:
	diab.li		r30,1		# retVal=r30
.Llo11:
	b		.L759
.L758:
	.section	.text_vle
.L795:
#     }
# #if(COMM_DEV_ERROR_DETECT == STD_ON)
#     /* Check if arguments passed are valid */
#     else if( (ComMode == NULL_PTR) || (User >= ComM_ConfigPtr->UsersNum) )
#     {
#         COMM_DET_REPORT_ERROR(COMM_GETCURRENTCOMMODE_API_ID, COMM_E_WRONG_PARAMETERS);
#         retVal = E_NOT_OK;
#     }
# #endif
#     else
#     {
#         CONSTP2CONST(ComM_UserType, AUTOMATIC, AUTOMATIC) userPtr = &ComM_ConfigPtr->UsersPtr[User];
#         VAR(uint16, AUTOMATIC) channelIndex;
# 
#         /* Local variable to get current channel ComMode. */
#         VAR(ComM_ModeType, AUTOMATIC) channelMode       = COMM_FULL_COMMUNICATION;
	.d2line		78
.Llo4:
	diab.li		r27,2
.Llo18:
	stb		r27,8(r1)
#         /* Local variable to store the lowest ComMode of all Channels. */
#         VAR(ComM_ModeType, AUTOMATIC) lowestChannelMode = COMM_FULL_COMMUNICATION;
	.d2line		74
	lis		r3,ComM_ConfigPtr@ha
	lwz		r3,ComM_ConfigPtr@l(r3)
	lwz		r29,8(r3)		# User=r29
.Llo5:
	rlwinm		r0,r0,3,21,28		# User=r0 User=r0
	se_add		r0,r29		# User=r0 User=r0 User=r29
.Llo6:
	mr		r29,r0		# userPtr=r29 userPtr=r0
# 
#         /* Loop through all channels which are direct or indirect mapped to the User. */
#         for(channelIndex = 0U; (channelIndex < userPtr->AllChannelIDsNum) && (E_OK == retVal); channelIndex++)
	.d2line		83
	diab.li		r28,0		# channelIndex=r28
.L760:
.Llo17:
	rlwinm		r0,r28,0,16,31		# User=r0 channelIndex=r28
.Llo7:
	lhz		r3,4(r29)		# userPtr=r29
	se_cmp		r0,r3		# User=r0
	bc		0,0,.L762	# ge
.Llo8:
	rlwinm		r3,r30,0,24,31		# retVal=r30
	se_cmpi		r3,0
	bc		0,2,.L762	# ne
	.section	.text_vle
.L813:
#         {
#             CONST(NetworkHandleType, AUTOMATIC) channelID = userPtr->AllChannelIDsPtr[channelIndex];
	.d2line		85
	lwz		r3,0(r29)		# userPtr=r29
	rlwinm		r0,r28,0,16,31		# User=r0 channelIndex=r28
.Llo9:
	lbzx		r0,r3,r0		# User=r0
.Llo10:
	mr		r0,r0		# channelID=r0 channelID=r0
# 
#             switch(ComM_ConfigPtr->ChannelsPtr[channelID].BusType)
	.d2line		87
	rlwinm		r4,r0,0,24,31		# channelID=r0
	lis		r3,ComM_ConfigPtr@ha
	lwz		r3,ComM_ConfigPtr@l(r3)
	lwz		r3,12(r3)
	rlwinm		r5,r4,6,0,25
	se_slwi		r4,4
	subf		r4,r4,r5
	se_add		r3,r4
	lwz		r6,40(r3)
	se_cmpi		r6,0
	bc		1,2,.L763	# eq
	se_cmpi		r6,3
	bc		1,2,.L766	# eq
	se_cmpi		r6,4
	bc		1,2,.L765	# eq
	b		.L764
.L763:
#             {
# #if(COMM_CAN_ENABLED == STD_ON)
#                 case COMM_BUS_TYPE_CAN:
#                 {
#                     /* [ComM084] Request for current channel mode from CAN SM */
#                     retVal = CanSM_GetCurrentComMode(channelID, &channelMode);
	.d2line		93
	rlwinm		r3,r0,0,24,31		# channelID=r0
	diab.addi		r4,r1,8
	bl		CanSM_GetCurrentComMode
.Llo19:
	mr		r30,r3		# retVal=r30 retVal=r3
	b		.L764
.L765:
#                     break;
#                 }
# #endif
# 
# #if(COMM_LIN_ENABLED == STD_ON)
#                 case COMM_BUS_TYPE_LIN:
#                 {
#                     /* [ComM084] Request for current channel mode from LIN SM */
#                     retVal = LinSM_GetCurrentComMode(channelID, &channelMode);
	.d2line		102
.Llo20:
	rlwinm		r3,r0,0,24,31		# channelID=r0
	diab.addi		r4,r1,8
	bl		LinSM_GetCurrentComMode
.Llo21:
	mr		r30,r3		# retVal=r30 retVal=r3
	b		.L764
.L766:
#                     break;
#                 }
# #endif
# 
# #if(COMM_FR_ENABLED == STD_ON)
#                 case COMM_BUS_TYPE_FR:
#                 {
#                     /* [ComM084] Request for current channel mode from FR SM */
#                     retVal = FrSM_GetCurrentComMode(channelID, &channelMode);
#                     break;
#                 }
# #endif
# 
# #if(COMM_ETH_ENABLED == STD_ON)
#                 case COMM_BUS_TYPE_ETH:
#                 {
#                     /* [ComM084] Request for current channel mode from Eth SM */
#                     retVal = EthSM_GetCurrentComMode(channelID, &channelMode);
#                     break;
#                 }
# #endif
# 
#                 case COMM_BUS_TYPE_INTERNAL:
#                 {
#                     /* Get Channel communication mode */
#                     channelMode = ComM_GetChannelState(ComM_ChannelStates[channelID].ChannelSubState);
	.d2line		128
.Llo22:
	rlwinm		r0,r0,0,24,31		# channelID=r0 channelID=r0
	lis		r3,(ComM_ChannelStates+2)@ha
	e_add16i		r3,r3,(ComM_ChannelStates+2)@l
	rlwinm		r4,r0,5,0,26		# channelID=r0
	se_slwi		r0,3		# channelID=r0 channelID=r0
	subf		r0,r0,r4		# channelID=r0 channelID=r0
.Llo23:
	lbzx		r3,r3,r0
	bl		ComM_GetChannelState
	stb		r3,8(r1)
.L764:
#                     break;
#                 }
# 
#                 default:
#                     /* Do nothing. */
#                     break;
#             }
# 
#             /* Check if Bus SM return is OK */
#             if(retVal == E_OK)
	.d2line		138
	rlwinm		r3,r30,0,24,31		# retVal=r30
	se_cmpi		r3,0
	bc		0,2,.L768	# ne
#             {
#                 /* Get the lowest ComMode */
#                 if(channelMode < lowestChannelMode)
	.d2line		141
	lbz		r3,8(r1)
	rlwinm		r0,r27,0,24,31		# channelID=r0 lowestChannelMode=r27
.Llo24:
	se_cmp		r3,r0		# channelID=r0
	bc		0,0,.L768	# ge
#                 {
#                     lowestChannelMode = channelMode;
	.d2line		143
.Llo25:
	lbz		r27,8(r1)		# lowestChannelMode=r27
	mr		r27,r27		# lowestChannelMode=r27 lowestChannelMode=r27
.L768:
	.section	.text_vle
.L814:
#                 }
#             }
#         }
	.d2line		146
	diab.addi		r0,r28,1		# channelID=r0 channelIndex=r28
	se_addi		r28,1		# channelIndex=r28 channelIndex=r28
	b		.L760
.L762:
# 
#         /* Save the lowest ComMode of all ComMChannels */
#         *ComMode = lowestChannelMode;
	.d2line		149
	stb		r27,0(r31)		# ComMode=r31 lowestChannelMode=r27
	.section	.text_vle
.L796:
.L759:
#     }
# 
#     return retVal;
	.d2line		152
.Llo12:
	rlwinm		r3,r30,0,24,31		# retVal=r30
# }
	.d2line		153
	.d2epilogue_begin
.Llo13:
	lmw		r27,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo16:
	lwz		r0,52(r1)		# User=r0
	mtspr		lr,r0		# User=lr
	diab.addi		r1,r1,48		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo14:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L782:
	.type		ComM_GetCurrentComMode,@function
	.size		ComM_GetCurrentComMode,.-ComM_GetCurrentComMode
# Number of nodes = 123

# Allocations for ComM_GetCurrentComMode
#	?a4		User
#	?a5		ComMode
#	?a6		$$238
#	?a7		$$237
#	?a8		retVal
#	?a9		userPtr
#	?a10		channelIndex
#	SP,8		channelMode
#	?a11		lowestChannelMode
#	?a12		channelID

# Allocations for module
	.section	.text_vle
#$$ld
.L5:
.L835:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\inc\\ComM_Types.h"
.L822:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\inc\\ComM_Private.h"
.L783:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\src\\ComM_GetCurrentComMode.c"
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
	.uleb128	15
	.byte		0x0
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\src\\ComM_GetCurrentComMode.c"
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
.L787:
	.sleb128	2
	.4byte		.L780-.L2
	.byte		"ComM_GetCurrentComMode"
	.byte		0
	.4byte		.L783
	.uleb128	53
	.uleb128	33
	.4byte		.L784
	.byte		0x1
	.byte		0x1
	.4byte		.L781
	.4byte		.L782
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L783
	.uleb128	53
	.uleb128	33
	.byte		"User"
	.byte		0
	.4byte		.L788
	.4byte		.L789
	.sleb128	3
	.4byte		.L783
	.uleb128	53
	.uleb128	33
	.byte		"ComMode"
	.byte		0
	.4byte		.L790
	.4byte		.L792
	.section	.debug_info,,n
.L793:
	.sleb128	4
	.4byte		.L783
	.uleb128	56
	.uleb128	36
	.byte		"retVal"
	.byte		0
	.4byte		.L784
	.4byte		.L794
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L798
	.4byte		.L795
	.4byte		.L796
.L799:
	.sleb128	4
	.4byte		.L783
	.uleb128	74
	.uleb128	59
	.byte		"userPtr"
	.byte		0
	.4byte		.L800
	.4byte		.L805
.L806:
	.sleb128	4
	.4byte		.L783
	.uleb128	75
	.uleb128	32
	.byte		"channelIndex"
	.byte		0
	.4byte		.L807
	.4byte		.L809
	.section	.debug_info,,n
.L810:
	.sleb128	6
	.4byte		.L783
	.uleb128	78
	.uleb128	39
	.byte		"channelMode"
	.byte		0
	.4byte		.L791
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
.L811:
	.sleb128	4
	.4byte		.L783
	.uleb128	80
	.uleb128	39
	.byte		"lowestChannelMode"
	.byte		0
	.4byte		.L791
	.4byte		.L812
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L816
	.4byte		.L813
	.4byte		.L814
.L817:
	.sleb128	4
	.4byte		.L783
	.uleb128	85
	.uleb128	49
	.byte		"channelID"
	.byte		0
	.4byte		.L818
	.4byte		.L820
	.section	.debug_info,,n
	.sleb128	0
.L816:
	.section	.debug_info,,n
	.sleb128	0
.L798:
	.section	.debug_info,,n
	.sleb128	0
.L780:
	.section	.debug_info,,n
.L821:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L822
	.uleb128	374
	.uleb128	55
	.byte		"ComM_InitStatus"
	.byte		0
	.4byte		.L823
	.0byte		.L821
.L825:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L822
	.uleb128	377
	.uleb128	55
	.byte		"ComM_ConfigPtr"
	.byte		0
	.4byte		.L826
.L830:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L822
	.uleb128	388
	.uleb128	45
	.byte		"ComM_ChannelStates"
	.byte		0
	.4byte		.L831
	.section	.debug_info,,n
.L829:
	.sleb128	8
	.4byte		.L835
	.uleb128	121
	.uleb128	1
	.4byte		.L836-.L2
	.uleb128	32
	.section	.debug_info,,n
.L380:
	.sleb128	9
	.byte		"PBtoPCHashValuePtr"
	.byte		0
	.4byte		.L837
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L381:
	.sleb128	9
	.byte		"PBtoLTHashValuePtr"
	.byte		0
	.4byte		.L837
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L382:
	.sleb128	9
	.byte		"UsersPtr"
	.byte		0
	.4byte		.L800
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L383:
	.sleb128	9
	.byte		"ChannelsPtr"
	.byte		0
	.4byte		.L841
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L384:
	.sleb128	9
	.byte		"PncsPtr"
	.byte		0
	.4byte		.L846
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L385:
	.sleb128	9
	.byte		"PncRxSignalsPtr"
	.byte		0
	.4byte		.L851
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L386:
	.sleb128	9
	.byte		"PncsNum"
	.byte		0
	.4byte		.L856
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L387:
	.sleb128	9
	.byte		"PncRxSignalsNum"
	.byte		0
	.4byte		.L856
	.sleb128	2
	.byte		0x23
	.uleb128	26
	.byte		0x1
.L388:
	.sleb128	9
	.byte		"UsersNum"
	.byte		0
	.4byte		.L857
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L389:
	.sleb128	9
	.byte		"PncEnabled"
	.byte		0
	.4byte		.L858
	.sleb128	2
	.byte		0x23
	.uleb128	29
	.byte		0x1
	.sleb128	0
.L836:
.L855:
	.sleb128	8
	.4byte		.L835
	.uleb128	121
	.uleb128	1
	.4byte		.L860-.L2
	.uleb128	12
.L377:
	.sleb128	9
	.byte		"SignalId"
	.byte		0
	.4byte		.L861
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L378:
	.sleb128	9
	.byte		"SignalKind"
	.byte		0
	.4byte		.L863
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L379:
	.sleb128	9
	.byte		"SignalChannel"
	.byte		0
	.4byte		.L818
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L860:
.L850:
	.sleb128	8
	.4byte		.L835
	.uleb128	121
	.uleb128	1
	.4byte		.L866-.L2
	.uleb128	32
.L366:
	.sleb128	9
	.byte		"PncID"
	.byte		0
	.4byte		.L867
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L367:
	.sleb128	9
	.byte		"PncIdByteIndex"
	.byte		0
	.4byte		.L857
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L368:
	.sleb128	9
	.byte		"PncIdBitIndex"
	.byte		0
	.4byte		.L857
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L369:
	.sleb128	9
	.byte		"PncTimerMaxValue"
	.byte		0
	.4byte		.L856
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L370:
	.sleb128	9
	.byte		"PncTimerHandlerChannelID"
	.byte		0
	.4byte		.L818
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L371:
	.sleb128	9
	.byte		"PncChannelIDsPtr"
	.byte		0
	.4byte		.L869
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L372:
	.sleb128	9
	.byte		"PncChannelIDsNum"
	.byte		0
	.4byte		.L857
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L373:
	.sleb128	9
	.byte		"PncComRxSignalIndexesPtr"
	.byte		0
	.4byte		.L871
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L374:
	.sleb128	9
	.byte		"PncComRxSignalIndexesNum"
	.byte		0
	.4byte		.L856
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L375:
	.sleb128	9
	.byte		"PncUserIDsPtr"
	.byte		0
	.4byte		.L873
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L376:
	.sleb128	9
	.byte		"PncUserIDsNum"
	.byte		0
	.4byte		.L856
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
	.sleb128	0
.L866:
.L804:
	.sleb128	8
	.4byte		.L835
	.uleb128	121
	.uleb128	1
	.4byte		.L876-.L2
	.uleb128	8
.L356:
	.sleb128	9
	.byte		"AllChannelIDsPtr"
	.byte		0
	.4byte		.L869
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L357:
	.sleb128	9
	.byte		"AllChannelIDsNum"
	.byte		0
	.4byte		.L856
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L358:
	.sleb128	9
	.byte		"DirectChannelIDsNum"
	.byte		0
	.4byte		.L856
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
	.sleb128	0
.L876:
.L845:
	.sleb128	8
	.4byte		.L835
	.uleb128	121
	.uleb128	1
	.4byte		.L877-.L2
	.uleb128	48
.L342:
	.sleb128	9
	.byte		"UserIDsPtr"
	.byte		0
	.4byte		.L873
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L343:
	.sleb128	9
	.byte		"AllUserIDsNum"
	.byte		0
	.4byte		.L856
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L344:
	.sleb128	9
	.byte		"DirectUserIDsNum"
	.byte		0
	.4byte		.L856
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L345:
	.sleb128	9
	.byte		"PncIndexesPtr"
	.byte		0
	.4byte		.L873
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L346:
	.sleb128	9
	.byte		"PncStatesPtr"
	.byte		0
	.4byte		.L878
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L347:
	.sleb128	9
	.byte		"PncRequestsPtr"
	.byte		0
	.4byte		.L882
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L348:
	.sleb128	9
	.byte		"ChannelPncsNum"
	.byte		0
	.4byte		.L857
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L349:
	.sleb128	9
	.byte		"FullComTimerInitValue"
	.byte		0
	.4byte		.L856
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L350:
	.sleb128	9
	.byte		"NmVariant"
	.byte		0
	.4byte		.L883
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L351:
	.sleb128	9
	.byte		"TxSignalIDsPtr"
	.byte		0
	.4byte		.L886
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L352:
	.sleb128	9
	.byte		"TxSignalBufferPtr"
	.byte		0
	.4byte		.L888
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L353:
	.sleb128	9
	.byte		"TxSignalIDsNum"
	.byte		0
	.4byte		.L857
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L354:
	.sleb128	9
	.byte		"BusType"
	.byte		0
	.4byte		.L890
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L355:
	.sleb128	9
	.byte		"PncNmRequestEnabled"
	.byte		0
	.4byte		.L858
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
	.sleb128	0
.L877:
.L834:
	.sleb128	8
	.4byte		.L835
	.uleb128	121
	.uleb128	1
	.4byte		.L893-.L2
	.uleb128	24
.L324:
	.sleb128	9
	.byte		"FullComTimer"
	.byte		0
	.4byte		.L807
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L325:
	.sleb128	9
	.byte		"ChannelSubState"
	.byte		0
	.4byte		.L894
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L326:
	.sleb128	9
	.byte		"HaltInNoComState"
	.byte		0
	.4byte		.L859
	.sleb128	2
	.byte		0x23
	.uleb128	3
	.byte		0x1
.L327:
	.sleb128	9
	.byte		"LastNmIndicatedMode"
	.byte		0
	.4byte		.L895
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L328:
	.sleb128	9
	.byte		"IsLastNmIndicatedModeUpdated"
	.byte		0
	.4byte		.L859
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L329:
	.sleb128	9
	.byte		"NmRestartIndication"
	.byte		0
	.4byte		.L859
	.sleb128	2
	.byte		0x23
	.uleb128	9
	.byte		0x1
.L330:
	.sleb128	9
	.byte		"NmNetworkStartIndication"
	.byte		0
	.4byte		.L859
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L331:
	.sleb128	9
	.byte		"LastBusSMIndicatedMode"
	.byte		0
	.4byte		.L791
	.sleb128	2
	.byte		0x23
	.uleb128	11
	.byte		0x1
.L332:
	.sleb128	9
	.byte		"EcuMWakeUpIndication"
	.byte		0
	.4byte		.L859
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L333:
	.sleb128	9
	.byte		"ActiveDiagnostic"
	.byte		0
	.4byte		.L859
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
.L334:
	.sleb128	9
	.byte		"CommunicationAllowed"
	.byte		0
	.4byte		.L859
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L335:
	.sleb128	9
	.byte		"InitialTransition"
	.byte		0
	.4byte		.L859
	.sleb128	2
	.byte		0x23
	.uleb128	15
	.byte		0x1
.L336:
	.sleb128	9
	.byte		"BusSMReturnValue"
	.byte		0
	.4byte		.L784
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L337:
	.sleb128	9
	.byte		"UserRequestsChanged"
	.byte		0
	.4byte		.L859
	.sleb128	2
	.byte		0x23
	.uleb128	17
	.byte		0x1
.L338:
	.sleb128	9
	.byte		"DirectUserRequestsChanged"
	.byte		0
	.4byte		.L859
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L339:
	.sleb128	9
	.byte		"ChannelRequestedMode"
	.byte		0
	.4byte		.L791
	.sleb128	2
	.byte		0x23
	.uleb128	19
	.byte		0x1
.L340:
	.sleb128	9
	.byte		"DirectUsersRequestedMode"
	.byte		0
	.4byte		.L791
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L341:
	.sleb128	9
	.byte		"PncsRequestedMode"
	.byte		0
	.4byte		.L791
	.sleb128	2
	.byte		0x23
	.uleb128	21
	.byte		0x1
	.sleb128	0
.L893:
	.section	.debug_info,,n
.L896:
	.sleb128	10
	.4byte		.L835
	.uleb128	112
	.uleb128	1
	.4byte		.L897-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	11
	.byte		"COMM_NM_MODE_NO_CHANGE"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"COMM_NM_MODE_NETWORK"
	.byte		0
	.sleb128	1
	.sleb128	11
	.byte		"COMM_NM_MODE_PREPARE_BUS_SLEEP"
	.byte		0
	.sleb128	2
	.sleb128	11
	.byte		"COMM_NM_MODE_BUS_SLEEP"
	.byte		0
	.sleb128	3
	.sleb128	0
.L897:
.L885:
	.sleb128	10
	.4byte		.L835
	.uleb128	103
	.uleb128	1
	.4byte		.L898-.L2
	.uleb128	4
	.sleb128	11
	.byte		"COMM_FULL"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"COMM_LIGHT"
	.byte		0
	.sleb128	1
	.sleb128	11
	.byte		"COMM_NONE"
	.byte		0
	.sleb128	2
	.sleb128	11
	.byte		"COMM_PASSIVE"
	.byte		0
	.sleb128	3
	.sleb128	0
.L898:
.L892:
	.sleb128	10
	.4byte		.L835
	.uleb128	93
	.uleb128	1
	.4byte		.L899-.L2
	.uleb128	4
	.sleb128	11
	.byte		"COMM_BUS_TYPE_CAN"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"COMM_BUS_TYPE_ETH"
	.byte		0
	.sleb128	1
	.sleb128	11
	.byte		"COMM_BUS_TYPE_FR"
	.byte		0
	.sleb128	2
	.sleb128	11
	.byte		"COMM_BUS_TYPE_INTERNAL"
	.byte		0
	.sleb128	3
	.sleb128	11
	.byte		"COMM_BUS_TYPE_LIN"
	.byte		0
	.sleb128	4
	.sleb128	0
.L899:
.L865:
	.sleb128	10
	.4byte		.L835
	.uleb128	86
	.uleb128	1
	.4byte		.L900-.L2
	.uleb128	4
	.sleb128	11
	.byte		"COMM_SIGNAL_KIND_EIRA"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"COMM_SIGNAL_KIND_ERA"
	.byte		0
	.sleb128	1
	.sleb128	0
.L900:
.L881:
	.sleb128	10
	.4byte		.L835
	.uleb128	57
	.uleb128	1
	.4byte		.L901-.L2
	.uleb128	4
	.sleb128	11
	.byte		"PNC_REQUESTED"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"PNC_READY_SLEEP"
	.byte		0
	.sleb128	1
	.sleb128	11
	.byte		"PNC_PREPARE_SLEEP"
	.byte		0
	.sleb128	2
	.sleb128	11
	.byte		"PNC_NO_COMMUNICATION"
	.byte		0
	.sleb128	3
	.sleb128	11
	.byte		"PNC_FULL_COMMUNICATION"
	.byte		0
	.sleb128	4
	.sleb128	0
.L901:
.L824:
	.sleb128	10
	.4byte		.L835
	.uleb128	50
	.uleb128	1
	.4byte		.L902-.L2
	.uleb128	4
	.sleb128	11
	.byte		"COMM_UNINIT"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"COMM_INIT"
	.byte		0
	.sleb128	1
	.sleb128	0
.L902:
	.section	.debug_info,,n
.L786:
	.sleb128	12
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L785:
	.sleb128	13
	.byte		"uint8"
	.byte		0
	.4byte		.L786
.L784:
	.sleb128	13
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L785
.L788:
	.sleb128	13
	.byte		"ComM_UserHandleType"
	.byte		0
	.4byte		.L785
.L791:
	.sleb128	13
	.byte		"ComM_ModeType"
	.byte		0
	.4byte		.L785
	.section	.debug_info,,n
.L790:
	.sleb128	14
	.4byte		.L791
.L803:
	.sleb128	13
	.byte		"ComM_UserType"
	.byte		0
	.4byte		.L804
	.section	.debug_info,,n
.L802:
	.sleb128	15
	.4byte		.L803
.L801:
	.sleb128	14
	.4byte		.L802
.L800:
	.sleb128	15
	.4byte		.L801
.L808:
	.sleb128	12
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L807:
	.sleb128	13
	.byte		"uint16"
	.byte		0
	.4byte		.L808
.L819:
	.sleb128	13
	.byte		"NetworkHandleType"
	.byte		0
	.4byte		.L785
.L818:
	.sleb128	15
	.4byte		.L819
.L823:
	.sleb128	13
	.byte		"ComM_InitStatusType"
	.byte		0
	.4byte		.L824
.L828:
	.sleb128	13
	.byte		"ComM_ConfigType"
	.byte		0
	.4byte		.L829
.L827:
	.sleb128	15
	.4byte		.L828
.L826:
	.sleb128	14
	.4byte		.L827
.L833:
	.sleb128	13
	.byte		"ComM_ChannelStateType"
	.byte		0
	.4byte		.L834
	.section	.debug_info,,n
.L831:
	.sleb128	16
	.4byte		.L832-.L2
	.4byte		.L833
	.section	.debug_info,,n
	.sleb128	17
	.sleb128	0
.L832:
.L840:
	.sleb128	12
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L839:
	.sleb128	13
	.byte		"uint32"
	.byte		0
	.4byte		.L840
.L838:
	.sleb128	15
	.4byte		.L839
.L837:
	.sleb128	14
	.4byte		.L838
.L844:
	.sleb128	13
	.byte		"ComM_ChannelType"
	.byte		0
	.4byte		.L845
.L843:
	.sleb128	15
	.4byte		.L844
.L842:
	.sleb128	14
	.4byte		.L843
.L841:
	.sleb128	15
	.4byte		.L842
.L849:
	.sleb128	13
	.byte		"ComM_PncType"
	.byte		0
	.4byte		.L850
.L848:
	.sleb128	15
	.4byte		.L849
.L847:
	.sleb128	14
	.4byte		.L848
.L846:
	.sleb128	15
	.4byte		.L847
.L854:
	.sleb128	13
	.byte		"ComM_PncRxSignalType"
	.byte		0
	.4byte		.L855
.L853:
	.sleb128	15
	.4byte		.L854
.L852:
	.sleb128	14
	.4byte		.L853
.L851:
	.sleb128	15
	.4byte		.L852
.L856:
	.sleb128	15
	.4byte		.L807
.L857:
	.sleb128	15
	.4byte		.L785
.L859:
	.sleb128	13
	.byte		"boolean"
	.byte		0
	.4byte		.L786
.L858:
	.sleb128	15
	.4byte		.L859
.L862:
	.sleb128	13
	.byte		"Com_SignalIdType"
	.byte		0
	.4byte		.L807
.L861:
	.sleb128	15
	.4byte		.L862
.L864:
	.sleb128	13
	.byte		"ComM_PncComSignalKindType"
	.byte		0
	.4byte		.L865
.L863:
	.sleb128	15
	.4byte		.L864
.L868:
	.sleb128	13
	.byte		"PNCHandleType"
	.byte		0
	.4byte		.L785
.L867:
	.sleb128	15
	.4byte		.L868
.L870:
	.sleb128	14
	.4byte		.L818
.L869:
	.sleb128	15
	.4byte		.L870
.L872:
	.sleb128	14
	.4byte		.L857
.L871:
	.sleb128	15
	.4byte		.L872
.L875:
	.sleb128	15
	.4byte		.L788
.L874:
	.sleb128	14
	.4byte		.L875
.L873:
	.sleb128	15
	.4byte		.L874
.L880:
	.sleb128	13
	.byte		"ComM_PncModeType"
	.byte		0
	.4byte		.L881
.L879:
	.sleb128	14
	.4byte		.L880
.L878:
	.sleb128	15
	.4byte		.L879
.L882:
	.sleb128	15
	.4byte		.L790
.L884:
	.sleb128	13
	.byte		"ComM_NmVariantType"
	.byte		0
	.4byte		.L885
.L883:
	.sleb128	15
	.4byte		.L884
.L887:
	.sleb128	14
	.4byte		.L856
.L886:
	.sleb128	15
	.4byte		.L887
.L889:
	.sleb128	14
	.4byte		.L785
.L888:
	.sleb128	15
	.4byte		.L889
.L891:
	.sleb128	13
	.byte		"ComM_BusTypeType"
	.byte		0
	.4byte		.L892
.L890:
	.sleb128	15
	.4byte		.L891
.L894:
	.sleb128	13
	.byte		"ComM_StateType"
	.byte		0
	.4byte		.L785
.L895:
	.sleb128	13
	.byte		"ComM_NmCurrentModeType"
	.byte		0
	.4byte		.L896
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L789:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),0
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),0
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),0
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),0
	.d2locend
.L792:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo3),4
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo12),31
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo14),4
	.d2locend
.L794:
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo16),30
	.d2locend
.L805:
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo17),0
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo12),29
	.d2locend
.L809:
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo12),28
	.d2locend
.L812:
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo12),27
	.d2locend
.L820:
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo19),0
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo21),0
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo23),0
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo25),0
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "ComM_GetCurrentComMode"
	.wrcm.nint32 "frameSize", 48
	.wrcm.nstrlist "calls", "CanSM_GetCurrentComMode","ComM_GetChannelState","LinSM_GetCurrentComMode"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\ComM_GetCurrentComMode.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\ComM_GetCurrentComMode.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\ComM_GetCurrentComMode.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\ComM_GetCurrentComMode.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\ComM_GetCurrentComMode.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\ComM_GetCurrentComMode.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\ComM\ssc\make\..\src\ComM_GetCurrentComMode.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
