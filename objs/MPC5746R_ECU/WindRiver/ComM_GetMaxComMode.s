#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"ComM_GetMaxComMode.c"
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
# LOCAL_INLINE FUNC(ComM_ModeType, COMM_CODE) ComM_GetChannelMaxComMode(CONST(NetworkHandleType, AUTOMATIC) channel)
	.align		1
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\src\\ComM_GetMaxComMode.c"
        .d2line         124,45
#$$ld
.L775:

#$$bf	ComM_GetChannelMaxComMode,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
ComM_GetChannelMaxComMode:
.Llo1:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)		# channel=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# channel=r0 channel=r3
	.d2prologue_end
# {
#     /* Local variable for channel maximum communication mode */
#     VAR(ComM_ModeType, AUTOMATIC) localMaxComMode = COMM_FULL_COMMUNICATION;
	.d2line		127
	diab.li		r31,2		# localMaxComMode=r31
#     CONST(ComM_ModeType, AUTOMATIC) channelState = ComM_GetChannelState(ComM_ChannelStates[channel].ChannelSubState);
	.d2line		128
	rlwinm		r0,r0,0,24,31		# channel=r0 channel=r0
.Llo2:
	lis		r3,(ComM_ChannelStates+2)@ha		# localMaxComMode=r3
.Llo3:
	e_add16i		r3,r3,(ComM_ChannelStates+2)@l		# localMaxComMode=r3 localMaxComMode=r3
	rlwinm		r4,r0,5,0,26		# channel=r0
	se_slwi		r0,3		# channel=r0 channel=r0
	subf		r0,r0,r4		# channel=r0 channel=r0
.Llo4:
	lbzx		r3,r3,r0		# localMaxComMode=r3 localMaxComMode=r3
	bl		ComM_GetChannelState
.Llo7:
	mr		r3,r3		# channelState=r3 channelState=r3
# 
#     if(channelState != COMM_FULL_COMMUNICATION)
	.d2line		130
	rlwinm		r3,r3,0,24,31		# channelState=r3 channelState=r3
	se_cmpi		r3,2		# channelState=r3
#     {
# #if(COMM_WAKEUP_INHIBITION_ENABLED == STD_ON)
#         /* Check if Wakeup inhibition is enabled */
#         if(FALSE != ComM_ChannelStates[channel].ComMNoWakeup)
# #endif
#         {
#             localMaxComMode = COMM_NO_COMMUNICATION;
	.d2line		137
	diab.li		r0,0		# channel=r0
.Llo5:
	isel		r3,r31,r0,2		# localMaxComMode=r3 localMaxComMode=r31 channel=r0
.L771:
#         }
#     }
# 
# #if(COMM_MODE_LIMITATION_ENABLED == STD_ON)
#     /* Check if Communication mode limitation is enabled */
#     if(FALSE != ComM_ChannelStates[channel].ComMNoCom)
#     {
#         localMaxComMode = COMM_NO_COMMUNICATION;
#     }
# #endif
# 
#     return localMaxComMode;
	.d2line		149
.Llo6:
	rlwinm		r3,r3,0,24,31		# localMaxComMode=r3 localMaxComMode=r3
# }
	.d2line		150
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# channel=r0
	mtspr		lr,r0		# channel=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L776:
	.type		ComM_GetChannelMaxComMode,@function
	.size		ComM_GetChannelMaxComMode,.-ComM_GetChannelMaxComMode
# Number of nodes = 28

# Allocations for ComM_GetChannelMaxComMode
#	?a4		channel
#	?a5		$$237
#	?a6		localMaxComMode
#	?a7		channelState
# FUNC(Std_ReturnType, COMM_CODE) ComM_GetMaxComMode(VAR(ComM_UserHandleType, AUTOMATIC)             User,
	.align		2
	.section	.text_vle
        .d2line         55,33
#$$ld
.L792:

#$$bf	ComM_GetMaxComMode,interprocedural,rasave,nostackparams
	.globl		ComM_GetMaxComMode
	.d2_cfa_start __cie
ComM_GetMaxComMode:
.Llo8:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr
	stmw		r26,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	26,31,1,1
	stw		r0,52(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# User=r3 User=r3
	mr		r31,r4		# ComMode=r31 ComMode=r4
	.d2prologue_end
#                                                    P2VAR(ComM_ModeType, AUTOMATIC, COMM_APPL_DATA) ComMode)
# {
#     VAR(Std_ReturnType, AUTOMATIC) retVal = E_OK;
	.d2line		58
	diab.li		r30,0		# retVal=r30
# 
#     /* [ComM612] Check whether the module has been initialized */
#     if(ComM_InitStatus != COMM_INIT)
	.d2line		61
.Llo20:
	lis		r4,ComM_InitStatus@ha
.Llo18:
	lwz		r0,ComM_InitStatus@l(r4)
	se_cmpi		r0,1
	bc		1,2,.L758	# eq
#     {
#         COMM_DET_REPORT_ERROR(COMM_GETMAXCOMMODE_API_ID, COMM_E_NOT_INITED);
#         retVal = COMM_UNINIT_RETVAL;
	.d2line		64
.Llo19:
	diab.li		r30,1		# retVal=r30
	b		.L759
.L758:
	.section	.text_vle
.L802:
#     }
# #if(COMM_DEV_ERROR_DETECT == STD_ON)
#     /* Check if arguments passed are invalid */
#     else if( (ComMode == NULL_PTR) || (User >= ComM_ConfigPtr->UsersNum) )
#     {
#         COMM_DET_REPORT_ERROR(COMM_GETMAXCOMMODE_API_ID, COMM_E_WRONG_PARAMETERS);
#         retVal = E_NOT_OK;
#     }
# #endif
#     else
#     {
#         CONST(uint16, AUTOMATIC) channelsNum = ComM_ConfigPtr->UsersPtr[User].AllChannelIDsNum;
# 
#         /* Initialize the result variable with the lowest ComMode. It will the result if the number of the ComMChannels are zero. */
#         VAR(ComM_ModeType, AUTOMATIC) maxComMode = COMM_NO_COMMUNICATION;
	.d2line		79
	diab.li		r28,0		# maxComMode=r28
	.d2line		76
.Llo23:
	lis		r4,ComM_ConfigPtr@ha
	lwz		r4,ComM_ConfigPtr@l(r4)
	lwz		r4,8(r4)
	rlwinm		r0,r3,3,21,28		# User=r3
	se_add		r4,r0
	lhz		r29,4(r4)		# channelsNum=r29
.Llo22:
	mr		r29,r29		# channelsNum=r29 channelsNum=r29
# 
#         /* [ComM374] If at least one ComMChannel is connected to the ComMUser then we shall find out the smallest ComMode. */
#         if(channelsNum > 0U)
	.d2line		82
	e_cmphl16i	r29,0		# channelsNum=r29
	bc		1,2,.L760	# eq
	.section	.text_vle
.L813:
#         {
#             CONSTP2CONST(NetworkHandleType, AUTOMATIC, COMM_APPL_CONST) channelIDsPtr = ComM_ConfigPtr->UsersPtr[User].AllChannelIDsPtr;
	.d2line		84
.Llo9:
	lis		r4,ComM_ConfigPtr@ha
	lwz		r4,ComM_ConfigPtr@l(r4)
	lwz		r4,8(r4)
.Llo10:
	rlwinm		r3,r3,3,21,28		# User=r3 User=r3
.Llo11:
	lwzx		r27,r4,r3
.Llo25:
	mr		r27,r27		# channelIDsPtr=r27 channelIDsPtr=r27
#             VAR(uint16, AUTOMATIC) channelIndex;
# 
#             /* Initialize the result variable with the highest ComMode to help the find the lowest value in the array. */
#             maxComMode = COMM_FULL_COMMUNICATION;
	.d2line		88
.Llo26:
	diab.li		r28,2		# maxComMode=r28
# 
#             /* Loop through all channels which are direct or indirect mapped to the User. */
#             for(channelIndex = 0U ; channelIndex < channelsNum ; channelIndex++)
	.d2line		91
.Llo24:
	diab.li		r26,0		# channelIndex=r26
.L761:
.Llo27:
	rlwinm		r3,r26,0,16,31		# User=r3 channelIndex=r26
.Llo12:
	rlwinm		r0,r29,0,16,31		# channelsNum=r29
	se_cmp		r3,r0		# User=r3
	bc		0,0,.L760	# ge
	.section	.text_vle
.L823:
#             {
#                 VAR(NetworkHandleType, AUTOMATIC) channelID = channelIDsPtr[channelIndex];
	.d2line		93
.Llo13:
	rlwinm		r3,r26,0,16,31		# User=r3 channelIndex=r26
.Llo14:
	lbzux		r0,r3,r27		# User=r3
.Llo28:
	mr		r0,r0		# channelID=r0 channelID=r0
#                 VAR(ComM_ModeType, AUTOMATIC) localMaxComMode = ComM_GetChannelMaxComMode( channelID );
	.d2line		94
	mr		r3,r0		# channelID=r3 channelID=r0
.Llo15:
	bl		ComM_GetChannelMaxComMode
.Llo29:
	mr		r3,r3		# localMaxComMode=r3 localMaxComMode=r3
# 
#                 if(maxComMode > localMaxComMode)
	.d2line		96
	rlwinm		r4,r28,0,24,31		# maxComMode=r28
	rlwinm		r0,r3,0,24,31		# localMaxComMode=r3
	se_cmp		r4,r0
#                 {
#                     maxComMode = localMaxComMode;
	.d2line		98
	isel		r28,r3,r28,1		# maxComMode=r28 localMaxComMode=r3 maxComMode=r28
.L764:
	.section	.text_vle
.L824:
#                 }
#             }
	.d2line		100
.Llo30:
	diab.addi		r3,r26,1		# localMaxComMode=r3 channelIndex=r26
	se_addi		r26,1		# channelIndex=r26 channelIndex=r26
	b		.L761
	.section	.text_vle
.L814:
.L760:
#         }
# 
#         *ComMode = maxComMode;
	.d2line		103
.Llo16:
	stb		r28,0(r31)		# ComMode=r31 maxComMode=r28
	.section	.text_vle
.L803:
.L759:
#     }
# 
#     return retVal;
	.d2line		106
.Llo17:
	rlwinm		r3,r30,0,24,31		# User=r3 retVal=r30
# }
	.d2line		107
	.d2epilogue_begin
	lmw		r26,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	2,10
.Llo21:
	lwz		r0,52(r1)
	mtspr		lr,r0
	diab.addi		r1,r1,48		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L793:
	.type		ComM_GetMaxComMode,@function
	.size		ComM_GetMaxComMode,.-ComM_GetMaxComMode
# Number of nodes = 86

# Allocations for ComM_GetMaxComMode
#	?a4		User
#	?a5		ComMode
#	?a6		retVal
#	?a7		channelsNum
#	?a8		maxComMode
#	?a9		channelIDsPtr
#	?a10		channelIndex
#	?a11		channelID
#	?a12		localMaxComMode

# Allocations for module
	.section	.text_vle
#$$ld
.L5:
.L845:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\inc\\ComM_Types.h"
.L832:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\inc\\ComM_Private.h"
.L777:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\src\\ComM_GetMaxComMode.c"
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\src\\ComM_GetMaxComMode.c"
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
.L781:
	.sleb128	2
	.4byte		.L774-.L2
	.byte		"ComM_GetChannelMaxComMode"
	.byte		0
	.4byte		.L777
	.uleb128	124
	.uleb128	45
	.4byte		.L778
	.byte		0x1
	.4byte		.L775
	.4byte		.L776
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L777
	.uleb128	124
	.uleb128	45
	.byte		"channel"
	.byte		0
	.4byte		.L782
	.4byte		.L784
	.section	.debug_info,,n
.L785:
	.sleb128	4
	.4byte		.L777
	.uleb128	127
	.uleb128	35
	.byte		"localMaxComMode"
	.byte		0
	.4byte		.L778
	.4byte		.L786
.L787:
	.sleb128	4
	.4byte		.L777
	.uleb128	128
	.uleb128	37
	.byte		"channelState"
	.byte		0
	.4byte		.L788
	.4byte		.L789
	.section	.debug_info,,n
	.sleb128	0
.L774:
	.section	.debug_info,,n
.L795:
	.sleb128	5
	.4byte		.L791-.L2
	.byte		"ComM_GetMaxComMode"
	.byte		0
	.4byte		.L777
	.uleb128	55
	.uleb128	33
	.4byte		.L794
	.byte		0x1
	.byte		0x1
	.4byte		.L792
	.4byte		.L793
	.sleb128	3
	.4byte		.L777
	.uleb128	55
	.uleb128	33
	.byte		"User"
	.byte		0
	.4byte		.L796
	.4byte		.L797
	.sleb128	3
	.4byte		.L777
	.uleb128	55
	.uleb128	33
	.byte		"ComMode"
	.byte		0
	.4byte		.L798
	.4byte		.L799
.L800:
	.sleb128	4
	.4byte		.L777
	.uleb128	58
	.uleb128	36
	.byte		"retVal"
	.byte		0
	.4byte		.L794
	.4byte		.L801
	.section	.debug_info,,n
	.sleb128	6
	.4byte		.L805
	.4byte		.L802
	.4byte		.L803
.L806:
	.sleb128	4
	.4byte		.L777
	.uleb128	76
	.uleb128	34
	.byte		"channelsNum"
	.byte		0
	.4byte		.L807
	.4byte		.L810
.L811:
	.sleb128	4
	.4byte		.L777
	.uleb128	79
	.uleb128	39
	.byte		"maxComMode"
	.byte		0
	.4byte		.L778
	.4byte		.L812
	.section	.debug_info,,n
	.sleb128	6
	.4byte		.L816
	.4byte		.L813
	.4byte		.L814
.L817:
	.sleb128	4
	.4byte		.L777
	.uleb128	84
	.uleb128	73
	.byte		"channelIDsPtr"
	.byte		0
	.4byte		.L818
	.4byte		.L820
.L821:
	.sleb128	4
	.4byte		.L777
	.uleb128	85
	.uleb128	36
	.byte		"channelIndex"
	.byte		0
	.4byte		.L808
	.4byte		.L822
	.section	.debug_info,,n
	.sleb128	6
	.4byte		.L826
	.4byte		.L823
	.4byte		.L824
.L827:
	.sleb128	4
	.4byte		.L777
	.uleb128	93
	.uleb128	51
	.byte		"channelID"
	.byte		0
	.4byte		.L783
	.4byte		.L828
.L829:
	.sleb128	4
	.4byte		.L777
	.uleb128	94
	.uleb128	47
	.byte		"localMaxComMode"
	.byte		0
	.4byte		.L778
	.4byte		.L830
	.section	.debug_info,,n
	.sleb128	0
.L826:
	.section	.debug_info,,n
	.sleb128	0
.L816:
	.section	.debug_info,,n
	.sleb128	0
.L805:
	.section	.debug_info,,n
	.sleb128	0
.L791:
	.section	.debug_info,,n
.L831:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L832
	.uleb128	374
	.uleb128	55
	.byte		"ComM_InitStatus"
	.byte		0
	.4byte		.L833
	.0byte		.L831
.L835:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L832
	.uleb128	377
	.uleb128	55
	.byte		"ComM_ConfigPtr"
	.byte		0
	.4byte		.L836
.L840:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L832
	.uleb128	388
	.uleb128	45
	.byte		"ComM_ChannelStates"
	.byte		0
	.4byte		.L841
	.section	.debug_info,,n
.L839:
	.sleb128	8
	.4byte		.L845
	.uleb128	121
	.uleb128	1
	.4byte		.L846-.L2
	.uleb128	32
	.section	.debug_info,,n
.L380:
	.sleb128	9
	.byte		"PBtoPCHashValuePtr"
	.byte		0
	.4byte		.L847
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L381:
	.sleb128	9
	.byte		"PBtoLTHashValuePtr"
	.byte		0
	.4byte		.L847
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L382:
	.sleb128	9
	.byte		"UsersPtr"
	.byte		0
	.4byte		.L851
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L383:
	.sleb128	9
	.byte		"ChannelsPtr"
	.byte		0
	.4byte		.L856
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L384:
	.sleb128	9
	.byte		"PncsPtr"
	.byte		0
	.4byte		.L861
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L385:
	.sleb128	9
	.byte		"PncRxSignalsPtr"
	.byte		0
	.4byte		.L866
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L386:
	.sleb128	9
	.byte		"PncsNum"
	.byte		0
	.4byte		.L807
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L387:
	.sleb128	9
	.byte		"PncRxSignalsNum"
	.byte		0
	.4byte		.L807
	.sleb128	2
	.byte		0x23
	.uleb128	26
	.byte		0x1
.L388:
	.sleb128	9
	.byte		"UsersNum"
	.byte		0
	.4byte		.L871
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L389:
	.sleb128	9
	.byte		"PncEnabled"
	.byte		0
	.4byte		.L872
	.sleb128	2
	.byte		0x23
	.uleb128	29
	.byte		0x1
	.sleb128	0
.L846:
.L870:
	.sleb128	8
	.4byte		.L845
	.uleb128	121
	.uleb128	1
	.4byte		.L874-.L2
	.uleb128	12
.L377:
	.sleb128	9
	.byte		"SignalId"
	.byte		0
	.4byte		.L875
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L378:
	.sleb128	9
	.byte		"SignalKind"
	.byte		0
	.4byte		.L877
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L379:
	.sleb128	9
	.byte		"SignalChannel"
	.byte		0
	.4byte		.L782
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L874:
.L865:
	.sleb128	8
	.4byte		.L845
	.uleb128	121
	.uleb128	1
	.4byte		.L880-.L2
	.uleb128	32
.L366:
	.sleb128	9
	.byte		"PncID"
	.byte		0
	.4byte		.L881
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L367:
	.sleb128	9
	.byte		"PncIdByteIndex"
	.byte		0
	.4byte		.L871
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L368:
	.sleb128	9
	.byte		"PncIdBitIndex"
	.byte		0
	.4byte		.L871
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L369:
	.sleb128	9
	.byte		"PncTimerMaxValue"
	.byte		0
	.4byte		.L807
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L370:
	.sleb128	9
	.byte		"PncTimerHandlerChannelID"
	.byte		0
	.4byte		.L782
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L371:
	.sleb128	9
	.byte		"PncChannelIDsPtr"
	.byte		0
	.4byte		.L818
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L372:
	.sleb128	9
	.byte		"PncChannelIDsNum"
	.byte		0
	.4byte		.L871
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L373:
	.sleb128	9
	.byte		"PncComRxSignalIndexesPtr"
	.byte		0
	.4byte		.L883
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L374:
	.sleb128	9
	.byte		"PncComRxSignalIndexesNum"
	.byte		0
	.4byte		.L807
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L375:
	.sleb128	9
	.byte		"PncUserIDsPtr"
	.byte		0
	.4byte		.L885
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L376:
	.sleb128	9
	.byte		"PncUserIDsNum"
	.byte		0
	.4byte		.L807
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
	.sleb128	0
.L880:
.L855:
	.sleb128	8
	.4byte		.L845
	.uleb128	121
	.uleb128	1
	.4byte		.L888-.L2
	.uleb128	8
.L356:
	.sleb128	9
	.byte		"AllChannelIDsPtr"
	.byte		0
	.4byte		.L818
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L357:
	.sleb128	9
	.byte		"AllChannelIDsNum"
	.byte		0
	.4byte		.L807
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L358:
	.sleb128	9
	.byte		"DirectChannelIDsNum"
	.byte		0
	.4byte		.L807
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
	.sleb128	0
.L888:
.L860:
	.sleb128	8
	.4byte		.L845
	.uleb128	121
	.uleb128	1
	.4byte		.L889-.L2
	.uleb128	48
.L342:
	.sleb128	9
	.byte		"UserIDsPtr"
	.byte		0
	.4byte		.L885
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L343:
	.sleb128	9
	.byte		"AllUserIDsNum"
	.byte		0
	.4byte		.L807
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L344:
	.sleb128	9
	.byte		"DirectUserIDsNum"
	.byte		0
	.4byte		.L807
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L345:
	.sleb128	9
	.byte		"PncIndexesPtr"
	.byte		0
	.4byte		.L885
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L346:
	.sleb128	9
	.byte		"PncStatesPtr"
	.byte		0
	.4byte		.L890
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L347:
	.sleb128	9
	.byte		"PncRequestsPtr"
	.byte		0
	.4byte		.L894
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L348:
	.sleb128	9
	.byte		"ChannelPncsNum"
	.byte		0
	.4byte		.L871
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L349:
	.sleb128	9
	.byte		"FullComTimerInitValue"
	.byte		0
	.4byte		.L807
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L350:
	.sleb128	9
	.byte		"NmVariant"
	.byte		0
	.4byte		.L895
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L351:
	.sleb128	9
	.byte		"TxSignalIDsPtr"
	.byte		0
	.4byte		.L898
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L352:
	.sleb128	9
	.byte		"TxSignalBufferPtr"
	.byte		0
	.4byte		.L900
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L353:
	.sleb128	9
	.byte		"TxSignalIDsNum"
	.byte		0
	.4byte		.L871
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L354:
	.sleb128	9
	.byte		"BusType"
	.byte		0
	.4byte		.L902
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L355:
	.sleb128	9
	.byte		"PncNmRequestEnabled"
	.byte		0
	.4byte		.L872
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
	.sleb128	0
.L889:
.L844:
	.sleb128	8
	.4byte		.L845
	.uleb128	121
	.uleb128	1
	.4byte		.L905-.L2
	.uleb128	24
.L324:
	.sleb128	9
	.byte		"FullComTimer"
	.byte		0
	.4byte		.L808
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L325:
	.sleb128	9
	.byte		"ChannelSubState"
	.byte		0
	.4byte		.L906
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L326:
	.sleb128	9
	.byte		"HaltInNoComState"
	.byte		0
	.4byte		.L873
	.sleb128	2
	.byte		0x23
	.uleb128	3
	.byte		0x1
.L327:
	.sleb128	9
	.byte		"LastNmIndicatedMode"
	.byte		0
	.4byte		.L907
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L328:
	.sleb128	9
	.byte		"IsLastNmIndicatedModeUpdated"
	.byte		0
	.4byte		.L873
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L329:
	.sleb128	9
	.byte		"NmRestartIndication"
	.byte		0
	.4byte		.L873
	.sleb128	2
	.byte		0x23
	.uleb128	9
	.byte		0x1
.L330:
	.sleb128	9
	.byte		"NmNetworkStartIndication"
	.byte		0
	.4byte		.L873
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L331:
	.sleb128	9
	.byte		"LastBusSMIndicatedMode"
	.byte		0
	.4byte		.L778
	.sleb128	2
	.byte		0x23
	.uleb128	11
	.byte		0x1
.L332:
	.sleb128	9
	.byte		"EcuMWakeUpIndication"
	.byte		0
	.4byte		.L873
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L333:
	.sleb128	9
	.byte		"ActiveDiagnostic"
	.byte		0
	.4byte		.L873
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
.L334:
	.sleb128	9
	.byte		"CommunicationAllowed"
	.byte		0
	.4byte		.L873
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L335:
	.sleb128	9
	.byte		"InitialTransition"
	.byte		0
	.4byte		.L873
	.sleb128	2
	.byte		0x23
	.uleb128	15
	.byte		0x1
.L336:
	.sleb128	9
	.byte		"BusSMReturnValue"
	.byte		0
	.4byte		.L794
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L337:
	.sleb128	9
	.byte		"UserRequestsChanged"
	.byte		0
	.4byte		.L873
	.sleb128	2
	.byte		0x23
	.uleb128	17
	.byte		0x1
.L338:
	.sleb128	9
	.byte		"DirectUserRequestsChanged"
	.byte		0
	.4byte		.L873
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L339:
	.sleb128	9
	.byte		"ChannelRequestedMode"
	.byte		0
	.4byte		.L778
	.sleb128	2
	.byte		0x23
	.uleb128	19
	.byte		0x1
.L340:
	.sleb128	9
	.byte		"DirectUsersRequestedMode"
	.byte		0
	.4byte		.L778
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L341:
	.sleb128	9
	.byte		"PncsRequestedMode"
	.byte		0
	.4byte		.L778
	.sleb128	2
	.byte		0x23
	.uleb128	21
	.byte		0x1
	.sleb128	0
.L905:
	.section	.debug_info,,n
.L908:
	.sleb128	10
	.4byte		.L845
	.uleb128	112
	.uleb128	1
	.4byte		.L909-.L2
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
.L909:
.L897:
	.sleb128	10
	.4byte		.L845
	.uleb128	103
	.uleb128	1
	.4byte		.L910-.L2
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
.L910:
.L904:
	.sleb128	10
	.4byte		.L845
	.uleb128	93
	.uleb128	1
	.4byte		.L911-.L2
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
.L911:
.L879:
	.sleb128	10
	.4byte		.L845
	.uleb128	86
	.uleb128	1
	.4byte		.L912-.L2
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
.L912:
.L893:
	.sleb128	10
	.4byte		.L845
	.uleb128	57
	.uleb128	1
	.4byte		.L913-.L2
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
.L913:
.L834:
	.sleb128	10
	.4byte		.L845
	.uleb128	50
	.uleb128	1
	.4byte		.L914-.L2
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
.L914:
	.section	.debug_info,,n
.L780:
	.sleb128	12
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L779:
	.sleb128	13
	.byte		"uint8"
	.byte		0
	.4byte		.L780
.L778:
	.sleb128	13
	.byte		"ComM_ModeType"
	.byte		0
	.4byte		.L779
.L783:
	.sleb128	13
	.byte		"NetworkHandleType"
	.byte		0
	.4byte		.L779
	.section	.debug_info,,n
.L782:
	.sleb128	14
	.4byte		.L783
.L788:
	.sleb128	14
	.4byte		.L778
.L794:
	.sleb128	13
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L779
.L796:
	.sleb128	13
	.byte		"ComM_UserHandleType"
	.byte		0
	.4byte		.L779
	.section	.debug_info,,n
.L798:
	.sleb128	15
	.4byte		.L778
.L809:
	.sleb128	12
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L808:
	.sleb128	13
	.byte		"uint16"
	.byte		0
	.4byte		.L809
.L807:
	.sleb128	14
	.4byte		.L808
.L819:
	.sleb128	15
	.4byte		.L782
.L818:
	.sleb128	14
	.4byte		.L819
.L833:
	.sleb128	13
	.byte		"ComM_InitStatusType"
	.byte		0
	.4byte		.L834
.L838:
	.sleb128	13
	.byte		"ComM_ConfigType"
	.byte		0
	.4byte		.L839
.L837:
	.sleb128	14
	.4byte		.L838
.L836:
	.sleb128	15
	.4byte		.L837
.L843:
	.sleb128	13
	.byte		"ComM_ChannelStateType"
	.byte		0
	.4byte		.L844
	.section	.debug_info,,n
.L841:
	.sleb128	16
	.4byte		.L842-.L2
	.4byte		.L843
	.section	.debug_info,,n
	.sleb128	17
	.sleb128	0
.L842:
.L850:
	.sleb128	12
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L849:
	.sleb128	13
	.byte		"uint32"
	.byte		0
	.4byte		.L850
.L848:
	.sleb128	14
	.4byte		.L849
.L847:
	.sleb128	15
	.4byte		.L848
.L854:
	.sleb128	13
	.byte		"ComM_UserType"
	.byte		0
	.4byte		.L855
.L853:
	.sleb128	14
	.4byte		.L854
.L852:
	.sleb128	15
	.4byte		.L853
.L851:
	.sleb128	14
	.4byte		.L852
.L859:
	.sleb128	13
	.byte		"ComM_ChannelType"
	.byte		0
	.4byte		.L860
.L858:
	.sleb128	14
	.4byte		.L859
.L857:
	.sleb128	15
	.4byte		.L858
.L856:
	.sleb128	14
	.4byte		.L857
.L864:
	.sleb128	13
	.byte		"ComM_PncType"
	.byte		0
	.4byte		.L865
.L863:
	.sleb128	14
	.4byte		.L864
.L862:
	.sleb128	15
	.4byte		.L863
.L861:
	.sleb128	14
	.4byte		.L862
.L869:
	.sleb128	13
	.byte		"ComM_PncRxSignalType"
	.byte		0
	.4byte		.L870
.L868:
	.sleb128	14
	.4byte		.L869
.L867:
	.sleb128	15
	.4byte		.L868
.L866:
	.sleb128	14
	.4byte		.L867
.L871:
	.sleb128	14
	.4byte		.L779
.L873:
	.sleb128	13
	.byte		"boolean"
	.byte		0
	.4byte		.L780
.L872:
	.sleb128	14
	.4byte		.L873
.L876:
	.sleb128	13
	.byte		"Com_SignalIdType"
	.byte		0
	.4byte		.L808
.L875:
	.sleb128	14
	.4byte		.L876
.L878:
	.sleb128	13
	.byte		"ComM_PncComSignalKindType"
	.byte		0
	.4byte		.L879
.L877:
	.sleb128	14
	.4byte		.L878
.L882:
	.sleb128	13
	.byte		"PNCHandleType"
	.byte		0
	.4byte		.L779
.L881:
	.sleb128	14
	.4byte		.L882
.L884:
	.sleb128	15
	.4byte		.L871
.L883:
	.sleb128	14
	.4byte		.L884
.L887:
	.sleb128	14
	.4byte		.L796
.L886:
	.sleb128	15
	.4byte		.L887
.L885:
	.sleb128	14
	.4byte		.L886
.L892:
	.sleb128	13
	.byte		"ComM_PncModeType"
	.byte		0
	.4byte		.L893
.L891:
	.sleb128	15
	.4byte		.L892
.L890:
	.sleb128	14
	.4byte		.L891
.L894:
	.sleb128	14
	.4byte		.L798
.L896:
	.sleb128	13
	.byte		"ComM_NmVariantType"
	.byte		0
	.4byte		.L897
.L895:
	.sleb128	14
	.4byte		.L896
.L899:
	.sleb128	15
	.4byte		.L807
.L898:
	.sleb128	14
	.4byte		.L899
.L901:
	.sleb128	15
	.4byte		.L779
.L900:
	.sleb128	14
	.4byte		.L901
.L903:
	.sleb128	13
	.byte		"ComM_BusTypeType"
	.byte		0
	.4byte		.L904
.L902:
	.sleb128	14
	.4byte		.L903
.L906:
	.sleb128	13
	.byte		"ComM_StateType"
	.byte		0
	.4byte		.L779
.L907:
	.sleb128	13
	.byte		"ComM_NmCurrentModeType"
	.byte		0
	.4byte		.L908
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L784:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),0
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),0
	.d2locend
.L786:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo6),31
	.d2locend
.L789:
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo6),3
	.d2locend
.L797:
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo9),3
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo11),3
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo13),3
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo15),3
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo17),3
	.d2locend
.L799:
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo18),4
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo17),31
	.d2locend
.L801:
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo21),30
	.d2locend
.L810:
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo17),29
	.d2locend
.L812:
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo9),28
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo17),28
	.d2locend
.L820:
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo26),27
	.d2locend
.L822:
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo17),26
	.d2locend
.L828:
	.d2locreg	%offsetof(.Llo28), %offsetof(.Llo29),0
	.d2locend
.L830:
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo30),3
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "ComM_GetMaxComMode"
	.wrcm.nint32 "frameSize", 48
	.wrcm.nstrlist "calls", "ComM_GetChannelMaxComMode"
	.wrcm.end
	.wrcm.nelem "ComM_GetChannelMaxComMode"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "ComM_GetChannelState"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\ComM_GetMaxComMode.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\ComM_GetMaxComMode.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\ComM_GetMaxComMode.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\ComM_GetMaxComMode.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\ComM_GetMaxComMode.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\ComM_GetMaxComMode.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\ComM\ssc\make\..\src\ComM_GetMaxComMode.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
