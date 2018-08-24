#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"ComM_CommunicationAllowed.c"
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
# FUNC(void, COMM_CODE) ComM_CommunicationAllowed(VAR(NetworkHandleType, AUTOMATIC) Channel,
	.align		2
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\src\\ComM_CommunicationAllowed.c"
        .d2line         51,23
#$$ld
.L767:

#$$bf	ComM_CommunicationAllowed,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,cr0,lr
	.globl		ComM_CommunicationAllowed
	.d2_cfa_start __cie
ComM_CommunicationAllowed:
.Llo1:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# Channel=r3 Channel=r3
	mr		r5,r4		# Allowed=r5 Allowed=r4
	.d2prologue_end
#                                                 VAR(boolean, AUTOMATIC)           Allowed)
# {
#     /* [ComM612] Check whether the module has been initialized */
#     if(ComM_InitStatus != COMM_INIT)
	.d2line		55
	lis		r4,ComM_InitStatus@ha
.Llo3:
	lwz		r0,ComM_InitStatus@l(r4)
	se_cmpi		r0,1
	bc		0,2,.L757	# ne
#     {
#         COMM_DET_REPORT_ERROR(COMM_COMMUNICATIONALLOWED_API_ID, COMM_E_NOT_INITED);
#     }
# #if(COMM_DEV_ERROR_DETECT == STD_ON)
#     /* Check if Channel is invalid */
#     else if(Channel >= ComM_ChannelsNum)
#     {
#         COMM_DET_REPORT_ERROR(COMM_COMMUNICATIONALLOWED_API_ID, COMM_E_WRONG_PARAMETERS);
#     }
# #endif
#     else
#     {
#         COMM_NORMALIZE_BOOLEAN(Allowed);
	.d2line		68
.Llo4:
	rlwinm		r4,r5,0,24,31		# Allowed=r5
	se_cmpi		r4,0
	diab.li		r0,1		# Allowed=r0
	isel		r0,r5,r0,2		# Allowed=r0 Allowed=r5 Allowed=r0
.L761:
#         ComM_ChannelStates[Channel].CommunicationAllowed = Allowed;
	.d2line		69
.Llo5:
	rlwinm		r4,r3,0,24,31		# Channel=r3
.Llo6:
	lis		r3,(ComM_ChannelStates+14)@ha		# Channel=r3
	e_add16i		r3,r3,(ComM_ChannelStates+14)@l		# Channel=r3 Channel=r3
	rlwinm		r5,r4,5,0,26		# Allowed=r5
	se_slwi		r4,3
	subf		r4,r4,r5		# Allowed=r5
	stbx		r0,r3,r4		# Channel=r3 Allowed=r0
.L757:
#     }
#     return;
# }
	.d2line		72
	.d2epilogue_begin
.Llo2:
	lwz		r0,20(r1)		# Allowed=r0
	mtspr		lr,r0		# Allowed=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L768:
	.type		ComM_CommunicationAllowed,@function
	.size		ComM_CommunicationAllowed,.-ComM_CommunicationAllowed
# Number of nodes = 24

# Allocations for ComM_CommunicationAllowed
#	?a4		Channel
#	?a5		Allowed
#	?a6		$$237

# Allocations for module
	.section	.text_vle
#$$ld
.L5:
.L786:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\inc\\ComM_Types.h"
.L778:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\inc\\ComM_Private.h"
.L769:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\src\\ComM_CommunicationAllowed.c"
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
	.uleb128	5
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
	.uleb128	6
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
	.uleb128	7
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
	.uleb128	8
	.uleb128	40
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	28
	.uleb128	13
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	9
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
	.uleb128	10
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	11
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	12
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\src\\ComM_CommunicationAllowed.c"
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
.L770:
	.sleb128	2
	.4byte		.L766-.L2
	.byte		"ComM_CommunicationAllowed"
	.byte		0
	.4byte		.L769
	.uleb128	51
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L767
	.4byte		.L768
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L769
	.uleb128	51
	.uleb128	23
	.byte		"Channel"
	.byte		0
	.4byte		.L771
	.4byte		.L774
	.sleb128	3
	.4byte		.L769
	.uleb128	51
	.uleb128	23
	.byte		"Allowed"
	.byte		0
	.4byte		.L775
	.4byte		.L776
	.section	.debug_info,,n
	.sleb128	0
.L766:
	.section	.debug_info,,n
.L777:
	.sleb128	4
	.byte		0x1
	.byte		0x1
	.4byte		.L778
	.uleb128	374
	.uleb128	55
	.byte		"ComM_InitStatus"
	.byte		0
	.4byte		.L779
	.0byte		.L777
.L781:
	.sleb128	4
	.byte		0x1
	.byte		0x1
	.4byte		.L778
	.uleb128	388
	.uleb128	45
	.byte		"ComM_ChannelStates"
	.byte		0
	.4byte		.L782
	.section	.debug_info,,n
.L785:
	.sleb128	5
	.4byte		.L786
	.uleb128	121
	.uleb128	1
	.4byte		.L787-.L2
	.uleb128	24
	.section	.debug_info,,n
.L324:
	.sleb128	6
	.byte		"FullComTimer"
	.byte		0
	.4byte		.L788
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L325:
	.sleb128	6
	.byte		"ChannelSubState"
	.byte		0
	.4byte		.L790
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L326:
	.sleb128	6
	.byte		"HaltInNoComState"
	.byte		0
	.4byte		.L775
	.sleb128	2
	.byte		0x23
	.uleb128	3
	.byte		0x1
.L327:
	.sleb128	6
	.byte		"LastNmIndicatedMode"
	.byte		0
	.4byte		.L791
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L328:
	.sleb128	6
	.byte		"IsLastNmIndicatedModeUpdated"
	.byte		0
	.4byte		.L775
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L329:
	.sleb128	6
	.byte		"NmRestartIndication"
	.byte		0
	.4byte		.L775
	.sleb128	2
	.byte		0x23
	.uleb128	9
	.byte		0x1
.L330:
	.sleb128	6
	.byte		"NmNetworkStartIndication"
	.byte		0
	.4byte		.L775
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L331:
	.sleb128	6
	.byte		"LastBusSMIndicatedMode"
	.byte		0
	.4byte		.L793
	.sleb128	2
	.byte		0x23
	.uleb128	11
	.byte		0x1
.L332:
	.sleb128	6
	.byte		"EcuMWakeUpIndication"
	.byte		0
	.4byte		.L775
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L333:
	.sleb128	6
	.byte		"ActiveDiagnostic"
	.byte		0
	.4byte		.L775
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
.L334:
	.sleb128	6
	.byte		"CommunicationAllowed"
	.byte		0
	.4byte		.L775
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L335:
	.sleb128	6
	.byte		"InitialTransition"
	.byte		0
	.4byte		.L775
	.sleb128	2
	.byte		0x23
	.uleb128	15
	.byte		0x1
.L336:
	.sleb128	6
	.byte		"BusSMReturnValue"
	.byte		0
	.4byte		.L794
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L337:
	.sleb128	6
	.byte		"UserRequestsChanged"
	.byte		0
	.4byte		.L775
	.sleb128	2
	.byte		0x23
	.uleb128	17
	.byte		0x1
.L338:
	.sleb128	6
	.byte		"DirectUserRequestsChanged"
	.byte		0
	.4byte		.L775
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L339:
	.sleb128	6
	.byte		"ChannelRequestedMode"
	.byte		0
	.4byte		.L793
	.sleb128	2
	.byte		0x23
	.uleb128	19
	.byte		0x1
.L340:
	.sleb128	6
	.byte		"DirectUsersRequestedMode"
	.byte		0
	.4byte		.L793
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L341:
	.sleb128	6
	.byte		"PncsRequestedMode"
	.byte		0
	.4byte		.L793
	.sleb128	2
	.byte		0x23
	.uleb128	21
	.byte		0x1
	.sleb128	0
.L787:
	.section	.debug_info,,n
.L792:
	.sleb128	7
	.4byte		.L786
	.uleb128	112
	.uleb128	1
	.4byte		.L795-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	8
	.byte		"COMM_NM_MODE_NO_CHANGE"
	.byte		0
	.sleb128	0
	.sleb128	8
	.byte		"COMM_NM_MODE_NETWORK"
	.byte		0
	.sleb128	1
	.sleb128	8
	.byte		"COMM_NM_MODE_PREPARE_BUS_SLEEP"
	.byte		0
	.sleb128	2
	.sleb128	8
	.byte		"COMM_NM_MODE_BUS_SLEEP"
	.byte		0
	.sleb128	3
	.sleb128	0
.L795:
.L780:
	.sleb128	7
	.4byte		.L786
	.uleb128	50
	.uleb128	1
	.4byte		.L796-.L2
	.uleb128	4
	.sleb128	8
	.byte		"COMM_UNINIT"
	.byte		0
	.sleb128	0
	.sleb128	8
	.byte		"COMM_INIT"
	.byte		0
	.sleb128	1
	.sleb128	0
.L796:
	.section	.debug_info,,n
.L773:
	.sleb128	9
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L772:
	.sleb128	10
	.byte		"uint8"
	.byte		0
	.4byte		.L773
.L771:
	.sleb128	10
	.byte		"NetworkHandleType"
	.byte		0
	.4byte		.L772
.L775:
	.sleb128	10
	.byte		"boolean"
	.byte		0
	.4byte		.L773
.L779:
	.sleb128	10
	.byte		"ComM_InitStatusType"
	.byte		0
	.4byte		.L780
.L784:
	.sleb128	10
	.byte		"ComM_ChannelStateType"
	.byte		0
	.4byte		.L785
	.section	.debug_info,,n
.L782:
	.sleb128	11
	.4byte		.L783-.L2
	.4byte		.L784
	.section	.debug_info,,n
	.sleb128	12
	.sleb128	0
.L783:
.L789:
	.sleb128	9
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L788:
	.sleb128	10
	.byte		"uint16"
	.byte		0
	.4byte		.L789
.L790:
	.sleb128	10
	.byte		"ComM_StateType"
	.byte		0
	.4byte		.L772
.L791:
	.sleb128	10
	.byte		"ComM_NmCurrentModeType"
	.byte		0
	.4byte		.L792
.L793:
	.sleb128	10
	.byte		"ComM_ModeType"
	.byte		0
	.4byte		.L772
.L794:
	.sleb128	10
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L772
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L774:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locend
.L776:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo3),4
	.d2locreg	%offsetof(.Llo4), %offsetof(.Llo5),5
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo2),0
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "ComM_CommunicationAllowed"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\ComM_CommunicationAllowed.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\ComM_CommunicationAllowed.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\ComM_CommunicationAllowed.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\ComM_CommunicationAllowed.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\ComM_CommunicationAllowed.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\ComM_CommunicationAllowed.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\ComM\ssc\make\..\src\ComM_CommunicationAllowed.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
