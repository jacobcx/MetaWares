#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Adc_PBcfg.c"
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

# Allocations for module
	.section	.mcal_const_cfg,,r
	.0byte		.L517
	.section	.mcal_const_cfg,,r
	.type		Adc_Group0_AssignmentPB_0_1,@object
	.size		Adc_Group0_AssignmentPB_0_1,1
	.align		2
Adc_Group0_AssignmentPB_0_1:
	.byte		0
	.section	.mcal_const_cfg,,r
	.type		Adc_HwUnitCfgPB_1,@object
	.size		Adc_HwUnitCfgPB_1,36
	.align		2
Adc_HwUnitCfgPB_1:
	.byte		0
	.space		3
	.long		-2147483648
	.long		256
	.byte		15
	.space		1
	.short		15
	.byte		3
	.byte		3
	.byte		3
	.byte		0
	.short		0
	.short		0
	.short		0
	.short		0
	.short		0
	.short		0
	.byte		12
	.space		3
	.section	.mcal_data,,d
	.0byte		.L531
	.section	.mcal_data,,d
	.type		Adc_ResultsBufferPtr,@object
	.size		Adc_ResultsBufferPtr,4
	.align		2
Adc_ResultsBufferPtr:
	.long		0
	.section	.mcal_const_cfg,,r
	.0byte		.L538
	.section	.mcal_const_cfg,,r
	.type		Adc_ChannelsCfgPB_0_1,@object
	.size		Adc_ChannelsCfgPB_0_1,2
	.align		0
Adc_ChannelsCfgPB_0_1:
	.byte		0
	.byte		0
	.section	.mcal_data,,d
	.0byte		.L544
	.section	.mcal_data,,d
	.type		Adc_ChannelsCfgPB_1,@object
	.size		Adc_ChannelsCfgPB_1,16
	.align		2
Adc_ChannelsCfgPB_1:
	.long		Adc_ChannelsCfgPB_0_1
	.long		0
	.long		0
	.long		0
	.section	.mcal_const_cfg,,r
	.0byte		.L548
	.section	.mcal_const_cfg,,r
	.type		Adc_GroupsCfgPB_1,@object
	.size		Adc_GroupsCfgPB_1,92
	.align		2
Adc_GroupsCfgPB_1:
	.byte		0
	.space		3
	.long		0
	.long		0
	.long		0
	.long		0
	.long		0
	.long		0
	.long		1
	.long		0
	.long		0
	.long		0
	.long		0
	.long		0
	.long		0
	.long		0
	.long		0
	.long		Adc_ResultsBufferPtr
	.long		0
	.short		1
	.space		2
	.long		Adc_Group0_AssignmentPB_0_1
	.short		1
	.short		8
	.short		8
	.short		8
	.byte		0
	.byte		0
	.byte		0
	.space		1
	.section	.mcal_const_cfg,,r
	.0byte		.L554
	.section	.mcal_const_cfg,,r
	.type		AdcConfigSet,@object
	.size		AdcConfigSet,44
	.align		2
	.globl		AdcConfigSet
AdcConfigSet:
	.long		Adc_HwUnitCfgPB_1
	.long		Adc_GroupsCfgPB_1
	.long		Adc_ChannelsCfgPB_1
	.short		1
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.space		1
	.short		1
	.short		0
	.short		0
	.short		0
	.byte		1
	.byte		0
	.byte		0
	.byte		0
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		1
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		255
	.byte		255
	.byte		255
	.section	.mcal_const,,r
	.0byte		.L558
	.section	.mcal_const,,r
	.type		Adc_RegistersAvailable,@object
	.size		Adc_RegistersAvailable,164
	.align		0
	.globl		Adc_RegistersAvailable
Adc_RegistersAvailable:
	.byte		1
	.byte		1
	.byte		0
	.byte		1
	.byte		1
	.byte		0
	.byte		1
	.byte		1
	.byte		0
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.byte		0
	.byte		1
	.byte		1
	.byte		0
	.byte		1
	.byte		1
	.byte		0
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.byte		0
	.byte		1
	.byte		1
	.byte		0
	.byte		1
	.byte		1
	.byte		0
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.byte		0
	.byte		1
	.byte		1
	.byte		0
	.byte		1
	.byte		1
	.byte		0
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.byte		0
	.byte		1
	.byte		1
	.byte		0
	.byte		1
	.byte		1
	.byte		0
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.byte		0
	.byte		1
	.byte		1
	.byte		0
	.byte		1
	.byte		1
	.byte		0
	.byte		1
	.byte		1
	.byte		1
	.byte		0
	.byte		0
	.byte		0
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		1
	.byte		1
	.byte		1
	.byte		0
	.byte		1
	.byte		0
	.byte		0
	.byte		0
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.byte		0
	.byte		1
	.byte		1
	.byte		0
	.byte		1
	.byte		1
	.byte		0
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.byte		0
	.byte		1
	.byte		1
	.byte		0
	.byte		1
	.byte		1
	.byte		0
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.section	.mcal_const_cfg,,r
	.type		Adc_ChannelsLimitCheckingCfg_0,@object
	.size		Adc_ChannelsLimitCheckingCfg_0,12
	.align		2
Adc_ChannelsLimitCheckingCfg_0:
	.byte		0
	.space		3
	.long		0
	.short		0
	.short		0
	.section	.mcal_data,,d
	.0byte		.L568
	.section	.mcal_data,,d
	.type		Adc_ChannelsLimitCheckingCfg,@object
	.size		Adc_ChannelsLimitCheckingCfg,16
	.align		2
	.globl		Adc_ChannelsLimitCheckingCfg
Adc_ChannelsLimitCheckingCfg:
	.long		Adc_ChannelsLimitCheckingCfg_0
	.long		0
	.long		0
	.long		0
	.section	.text_vle
#$$ld
.L5:
.L572:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Adc\\ssc\\make\\..\\..\\generator\\integration_package\\include\\Adc_Types.h"
.L518:	.d2filenum "gen\\MPC5746R_ECU\\WindRiver\\src\\Adc_PBcfg.c"
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
	.uleb128	3
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
	.uleb128	4
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
	.uleb128	5
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
	.uleb128	6
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
	.uleb128	7
	.uleb128	40
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	28
	.uleb128	13
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	8
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
	.uleb128	9
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	10
	.uleb128	38
	.byte		0x0
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
	.uleb128	47
	.uleb128	15
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
	.uleb128	21
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	39
	.uleb128	12
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
	.byte		"gen\\MPC5746R_ECU\\WindRiver\\src\\Adc_PBcfg.c"
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
.L517:
	.sleb128	2
	.4byte		.L518
	.uleb128	184
	.uleb128	42
	.byte		"Adc_Group0_AssignmentPB_0_1"
	.byte		0
	.4byte		.L519
	.sleb128	5
	.byte		0x3
	.4byte		Adc_Group0_AssignmentPB_0_1
	.section	.debug_info,,n
	.section	.debug_info,,n
.L525:
	.sleb128	2
	.4byte		.L518
	.uleb128	207
	.uleb128	61
	.byte		"Adc_HwUnitCfgPB_1"
	.byte		0
	.4byte		.L526
	.sleb128	5
	.byte		0x3
	.4byte		Adc_HwUnitCfgPB_1
	.section	.debug_info,,n
.L531:
	.sleb128	2
	.4byte		.L518
	.uleb128	264
	.uleb128	58
	.byte		"Adc_ResultsBufferPtr"
	.byte		0
	.4byte		.L532
	.sleb128	5
	.byte		0x3
	.4byte		Adc_ResultsBufferPtr
	.section	.debug_info,,n
	.section	.debug_info,,n
.L538:
	.sleb128	2
	.4byte		.L518
	.uleb128	304
	.uleb128	62
	.byte		"Adc_ChannelsCfgPB_0_1"
	.byte		0
	.4byte		.L539
	.sleb128	5
	.byte		0x3
	.4byte		Adc_ChannelsCfgPB_0_1
	.section	.debug_info,,n
	.section	.debug_info,,n
.L544:
	.sleb128	2
	.4byte		.L518
	.uleb128	344
	.uleb128	78
	.byte		"Adc_ChannelsCfgPB_1"
	.byte		0
	.4byte		.L545
	.sleb128	5
	.byte		0x3
	.4byte		Adc_ChannelsCfgPB_1
	.section	.debug_info,,n
	.section	.debug_info,,n
.L548:
	.sleb128	2
	.4byte		.L518
	.uleb128	369
	.uleb128	53
	.byte		"Adc_GroupsCfgPB_1"
	.byte		0
	.4byte		.L549
	.sleb128	5
	.byte		0x3
	.4byte		Adc_GroupsCfgPB_1
	.section	.debug_info,,n
	.section	.debug_info,,n
.L554:
	.sleb128	3
	.byte		0x1
	.4byte		.L518
	.uleb128	474
	.uleb128	34
	.byte		"AdcConfigSet"
	.byte		0
	.4byte		.L555
	.sleb128	5
	.byte		0x3
	.4byte		AdcConfigSet
	.section	.debug_info,,n
	.section	.debug_info,,n
.L558:
	.sleb128	3
	.byte		0x1
	.4byte		.L518
	.uleb128	561
	.uleb128	55
	.byte		"Adc_RegistersAvailable"
	.byte		0
	.4byte		.L559
	.sleb128	5
	.byte		0x3
	.4byte		Adc_RegistersAvailable
	.section	.debug_info,,n
	.section	.debug_info,,n
.L562:
	.sleb128	2
	.4byte		.L518
	.uleb128	1001
	.uleb128	62
	.byte		"Adc_ChannelsLimitCheckingCfg_0"
	.byte		0
	.4byte		.L563
	.sleb128	5
	.byte		0x3
	.4byte		Adc_ChannelsLimitCheckingCfg_0
	.section	.debug_info,,n
.L568:
	.sleb128	3
	.byte		0x1
	.4byte		.L518
	.uleb128	1033
	.uleb128	71
	.byte		"Adc_ChannelsLimitCheckingCfg"
	.byte		0
	.4byte		.L569
	.sleb128	5
	.byte		0x3
	.4byte		Adc_ChannelsLimitCheckingCfg
	.section	.debug_info,,n
	.section	.debug_info,,n
.L557:
	.sleb128	4
	.4byte		.L572
	.uleb128	369
	.uleb128	1
	.4byte		.L573-.L2
	.uleb128	44
	.section	.debug_info,,n
.L512:
	.sleb128	5
	.byte		"pAdc"
	.byte		0
	.4byte		.L574
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L513:
	.sleb128	5
	.byte		"pGroups"
	.byte		0
	.4byte		.L575
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L514:
	.sleb128	5
	.byte		"pChannels"
	.byte		0
	.4byte		.L576
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L515:
	.sleb128	5
	.byte		"GroupCount"
	.byte		0
	.4byte		.L577
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L516:
	.sleb128	5
	.byte		"Misc"
	.byte		0
	.4byte		.L578
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
	.sleb128	0
.L573:
.L561:
	.sleb128	4
	.4byte		.L572
	.uleb128	369
	.uleb128	1
	.4byte		.L581-.L2
	.uleb128	164
.L487:
	.sleb128	5
	.byte		"au8Adc_CeocfrPresent"
	.byte		0
	.4byte		.L582
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L488:
	.sleb128	5
	.byte		"au8Adc_DmarPresent"
	.byte		0
	.4byte		.L585
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L489:
	.sleb128	5
	.byte		"au8Adc_PsrPresent"
	.byte		0
	.4byte		.L587
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L490:
	.sleb128	5
	.byte		"au8Adc_CtrPresent"
	.byte		0
	.4byte		.L589
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L491:
	.sleb128	5
	.byte		"au8Adc_NcmrPresent"
	.byte		0
	.4byte		.L591
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L492:
	.sleb128	5
	.byte		"au8Adc_JcmrPresent"
	.byte		0
	.4byte		.L593
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
.L493:
	.sleb128	5
	.byte		"au8Adc_DsdrPresent"
	.byte		0
	.4byte		.L595
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.byte		0x1
.L494:
	.sleb128	5
	.byte		"au8Adc_CwselrPresent"
	.byte		0
	.4byte		.L597
	.sleb128	2
	.byte		0x23
	.uleb128	76
	.byte		0x1
.L495:
	.sleb128	5
	.byte		"au8Adc_CwenrPresent"
	.byte		0
	.4byte		.L599
	.sleb128	2
	.byte		0x23
	.uleb128	124
	.byte		0x1
.L496:
	.sleb128	5
	.byte		"au8Adc_AworrPresent"
	.byte		0
	.4byte		.L601
	.sleb128	3
	.byte		0x23
	.uleb128	136
	.byte		0x1
.L497:
	.sleb128	5
	.byte		"au8Adc_ThrhlrPresent"
	.byte		0
	.4byte		.L603
	.sleb128	3
	.byte		0x23
	.uleb128	148
	.byte		0x1
	.sleb128	0
.L581:
.L580:
	.sleb128	4
	.4byte		.L572
	.uleb128	369
	.uleb128	1
	.4byte		.L605-.L2
	.uleb128	30
.L480:
	.sleb128	5
	.byte		"u8Adc_DmaInterruptSoftware"
	.byte		0
	.4byte		.L606
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L481:
	.sleb128	5
	.byte		"Adc_MaxHwCfg"
	.byte		0
	.4byte		.L608
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L482:
	.sleb128	5
	.byte		"aAdc_Groups"
	.byte		0
	.4byte		.L610
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L483:
	.sleb128	5
	.byte		"aAdc_Channels"
	.byte		0
	.4byte		.L613
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L484:
	.sleb128	5
	.byte		"au8Adc_DmaChannel"
	.byte		0
	.4byte		.L615
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L485:
	.sleb128	5
	.byte		"au8Adc_HwUnit"
	.byte		0
	.4byte		.L617
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L486:
	.sleb128	5
	.byte		"aHwLogicalId"
	.byte		0
	.4byte		.L619
	.sleb128	2
	.byte		0x23
	.uleb128	26
	.byte		0x1
	.sleb128	0
.L605:
.L553:
	.sleb128	4
	.4byte		.L572
	.uleb128	369
	.uleb128	1
	.4byte		.L621-.L2
	.uleb128	92
.L453:
	.sleb128	5
	.byte		"HwUnit"
	.byte		0
	.4byte		.L608
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L454:
	.sleb128	5
	.byte		"eAccessMode"
	.byte		0
	.4byte		.L622
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L455:
	.sleb128	5
	.byte		"eMode"
	.byte		0
	.4byte		.L625
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L456:
	.sleb128	5
	.byte		"eType"
	.byte		0
	.4byte		.L628
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L457:
	.sleb128	5
	.byte		"eReplecementMode"
	.byte		0
	.4byte		.L631
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L458:
	.sleb128	5
	.byte		"eTriggerSource"
	.byte		0
	.4byte		.L634
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L459:
	.sleb128	5
	.byte		"Notification"
	.byte		0
	.4byte		.L637
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L460:
	.sleb128	5
	.byte		"u32PrecisionChannel"
	.byte		0
	.4byte		.L642
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L461:
	.sleb128	5
	.byte		"u32ExtendedChannel"
	.byte		0
	.4byte		.L642
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L462:
	.sleb128	5
	.byte		"u32ExternalChannel"
	.byte		0
	.4byte		.L642
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L463:
	.sleb128	5
	.byte		"u32PrecisionPsr"
	.byte		0
	.4byte		.L642
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L464:
	.sleb128	5
	.byte		"u32ExtendedPsr"
	.byte		0
	.4byte		.L642
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L465:
	.sleb128	5
	.byte		"u32ExternalPsr"
	.byte		0
	.4byte		.L642
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L466:
	.sleb128	5
	.byte		"u32Wer0"
	.byte		0
	.4byte		.L642
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L467:
	.sleb128	5
	.byte		"u32Wer1"
	.byte		0
	.4byte		.L642
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L468:
	.sleb128	5
	.byte		"u32Wer2"
	.byte		0
	.4byte		.L642
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
.L469:
	.sleb128	5
	.byte		"pResultsBufferPtr"
	.byte		0
	.4byte		.L645
	.sleb128	2
	.byte		0x23
	.uleb128	64
	.byte		0x1
.L470:
	.sleb128	5
	.byte		"eBufferMode"
	.byte		0
	.4byte		.L646
	.sleb128	2
	.byte		0x23
	.uleb128	68
	.byte		0x1
.L471:
	.sleb128	5
	.byte		"NumSamples"
	.byte		0
	.4byte		.L649
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.byte		0x1
.L472:
	.sleb128	5
	.byte		"pAssignment"
	.byte		0
	.4byte		.L651
	.sleb128	2
	.byte		0x23
	.uleb128	76
	.byte		0x1
.L473:
	.sleb128	5
	.byte		"AssignedChannelCount"
	.byte		0
	.4byte		.L654
	.sleb128	2
	.byte		0x23
	.uleb128	80
	.byte		0x1
.L474:
	.sleb128	5
	.byte		"ConvTime"
	.byte		0
	.4byte		.L656
	.sleb128	2
	.byte		0x23
	.uleb128	82
	.byte		0x1
.L475:
	.sleb128	5
	.byte		"ConvTime1"
	.byte		0
	.4byte		.L656
	.sleb128	2
	.byte		0x23
	.uleb128	84
	.byte		0x1
.L476:
	.sleb128	5
	.byte		"ConvTime2"
	.byte		0
	.4byte		.L656
	.sleb128	2
	.byte		0x23
	.uleb128	86
	.byte		0x1
.L477:
	.sleb128	5
	.byte		"LastCh"
	.byte		0
	.4byte		.L521
	.sleb128	2
	.byte		0x23
	.uleb128	88
	.byte		0x1
.L478:
	.sleb128	5
	.byte		"FirstCh"
	.byte		0
	.4byte		.L521
	.sleb128	2
	.byte		0x23
	.uleb128	89
	.byte		0x1
.L479:
	.sleb128	5
	.byte		"u8AdcWithoutInterrupt"
	.byte		0
	.4byte		.L584
	.sleb128	2
	.byte		0x23
	.uleb128	90
	.byte		0x1
	.sleb128	0
.L621:
.L530:
	.sleb128	4
	.4byte		.L572
	.uleb128	369
	.uleb128	1
	.4byte		.L658-.L2
	.uleb128	36
.L437:
	.sleb128	5
	.byte		"AdcHardwareUnitId"
	.byte		0
	.4byte		.L608
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L438:
	.sleb128	5
	.byte		"u32AdcMainConfig"
	.byte		0
	.4byte		.L642
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L439:
	.sleb128	5
	.byte		"u32AdcPrescale"
	.byte		0
	.4byte		.L642
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L440:
	.sleb128	5
	.byte		"u8AdcPwrDownDelay"
	.byte		0
	.4byte		.L584
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L441:
	.sleb128	5
	.byte		"u16AdcMuxDelay"
	.byte		0
	.4byte		.L659
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L442:
	.sleb128	5
	.byte		"u8PreVal0"
	.byte		0
	.4byte		.L584
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L443:
	.sleb128	5
	.byte		"u8PreVal1"
	.byte		0
	.4byte		.L584
	.sleb128	2
	.byte		0x23
	.uleb128	17
	.byte		0x1
.L444:
	.sleb128	5
	.byte		"u8PreVal2"
	.byte		0
	.4byte		.L584
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L445:
	.sleb128	5
	.byte		"u8PreConv"
	.byte		0
	.4byte		.L584
	.sleb128	2
	.byte		0x23
	.uleb128	19
	.byte		0x1
.L446:
	.sleb128	5
	.byte		"ConvTimeNormal"
	.byte		0
	.4byte		.L656
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L447:
	.sleb128	5
	.byte		"ConvTimeAlternate"
	.byte		0
	.4byte		.L656
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L448:
	.sleb128	5
	.byte		"ConvTimeNormal1"
	.byte		0
	.4byte		.L656
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L449:
	.sleb128	5
	.byte		"ConvTimeAlternate1"
	.byte		0
	.4byte		.L656
	.sleb128	2
	.byte		0x23
	.uleb128	26
	.byte		0x1
.L450:
	.sleb128	5
	.byte		"ConvTimeNormal2"
	.byte		0
	.4byte		.L656
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L451:
	.sleb128	5
	.byte		"ConvTimeAlternate2"
	.byte		0
	.4byte		.L656
	.sleb128	2
	.byte		0x23
	.uleb128	30
	.byte		0x1
.L452:
	.sleb128	5
	.byte		"Res"
	.byte		0
	.4byte		.L660
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
	.sleb128	0
.L658:
.L567:
	.sleb128	4
	.4byte		.L572
	.uleb128	369
	.uleb128	1
	.4byte		.L662-.L2
	.uleb128	12
.L433:
	.sleb128	5
	.byte		"bChannelLimitCheck"
	.byte		0
	.4byte		.L663
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L434:
	.sleb128	5
	.byte		"eChannelRange"
	.byte		0
	.4byte		.L665
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L435:
	.sleb128	5
	.byte		"ChannelHighLimit"
	.byte		0
	.4byte		.L668
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L436:
	.sleb128	5
	.byte		"ChannelLowLimit"
	.byte		0
	.4byte		.L668
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
	.sleb128	0
.L662:
.L543:
	.sleb128	4
	.4byte		.L572
	.uleb128	369
	.uleb128	1
	.4byte		.L669-.L2
	.uleb128	2
.L431:
	.sleb128	5
	.byte		"ChId"
	.byte		0
	.4byte		.L521
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L432:
	.sleb128	5
	.byte		"u8EnablePresampling"
	.byte		0
	.4byte		.L584
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
	.sleb128	0
.L669:
	.section	.debug_info,,n
.L667:
	.sleb128	6
	.4byte		.L572
	.uleb128	369
	.uleb128	1
	.4byte		.L670-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	7
	.byte		"ADC_RANGE_ALWAYS"
	.byte		0
	.sleb128	0
	.sleb128	7
	.byte		"ADC_RANGE_BETWEEN"
	.byte		0
	.sleb128	1
	.sleb128	7
	.byte		"ADC_RANGE_NOT_BETWEEN"
	.byte		0
	.sleb128	2
	.sleb128	7
	.byte		"ADC_RANGE_NOT_OVER_HIGH"
	.byte		0
	.sleb128	3
	.sleb128	7
	.byte		"ADC_RANGE_NOT_UNDER_LOW"
	.byte		0
	.sleb128	4
	.sleb128	7
	.byte		"ADC_RANGE_OVER_HIGH"
	.byte		0
	.sleb128	5
	.sleb128	7
	.byte		"ADC_RANGE_UNDER_LOW"
	.byte		0
	.sleb128	6
	.sleb128	0
.L670:
.L636:
	.sleb128	6
	.4byte		.L572
	.uleb128	315
	.uleb128	1
	.4byte		.L671-.L2
	.uleb128	4
	.sleb128	7
	.byte		"ADC_TRIGG_SRC_SW"
	.byte		0
	.sleb128	0
	.sleb128	0
.L671:
.L648:
	.sleb128	6
	.4byte		.L572
	.uleb128	268
	.uleb128	1
	.4byte		.L672-.L2
	.uleb128	4
	.sleb128	7
	.byte		"ADC_STREAM_BUFFER_LINEAR"
	.byte		0
	.sleb128	0
	.sleb128	7
	.byte		"ADC_STREAM_BUFFER_CIRCULAR"
	.byte		0
	.sleb128	1
	.sleb128	0
.L672:
.L633:
	.sleb128	6
	.4byte		.L572
	.uleb128	257
	.uleb128	1
	.4byte		.L673-.L2
	.uleb128	4
	.sleb128	7
	.byte		"ADC_GROUP_REPL_ABORT_RESTART"
	.byte		0
	.sleb128	0
	.sleb128	7
	.byte		"ADC_GROUP_REPL_SUSPEND_RESUME"
	.byte		0
	.sleb128	1
	.sleb128	0
.L673:
.L627:
	.sleb128	6
	.4byte		.L572
	.uleb128	246
	.uleb128	1
	.4byte		.L674-.L2
	.uleb128	4
	.sleb128	7
	.byte		"ADC_CONV_MODE_ONESHOT"
	.byte		0
	.sleb128	0
	.sleb128	7
	.byte		"ADC_CONV_MODE_CONTINUOUS"
	.byte		0
	.sleb128	1
	.sleb128	0
.L674:
.L630:
	.sleb128	6
	.4byte		.L572
	.uleb128	235
	.uleb128	1
	.4byte		.L675-.L2
	.uleb128	4
	.sleb128	7
	.byte		"ADC_CONV_TYPE_NORMAL"
	.byte		0
	.sleb128	0
	.sleb128	7
	.byte		"ADC_CONV_TYPE_INJECTED"
	.byte		0
	.sleb128	1
	.sleb128	0
.L675:
.L624:
	.sleb128	6
	.4byte		.L572
	.uleb128	224
	.uleb128	1
	.4byte		.L676-.L2
	.uleb128	4
	.sleb128	7
	.byte		"ADC_ACCESS_MODE_SINGLE"
	.byte		0
	.sleb128	0
	.sleb128	7
	.byte		"ADC_ACCESS_MODE_STREAMING"
	.byte		0
	.sleb128	1
	.sleb128	0
.L676:
	.section	.debug_info,,n
.L524:
	.sleb128	8
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L523:
	.sleb128	9
	.byte		"uint8"
	.byte		0
	.4byte		.L524
.L522:
	.sleb128	9
	.byte		"Adc_ChannelType"
	.byte		0
	.4byte		.L523
	.section	.debug_info,,n
.L521:
	.sleb128	10
	.4byte		.L522
	.section	.debug_info,,n
.L519:
	.sleb128	11
	.4byte		.L520-.L2
	.4byte		.L521
	.section	.debug_info,,n
	.sleb128	12
	.uleb128	0
	.sleb128	0
.L520:
.L529:
	.sleb128	9
	.byte		"Adc_Adcdig_HwUnitConfigurationType"
	.byte		0
	.4byte		.L530
.L528:
	.sleb128	10
	.4byte		.L529
.L526:
	.sleb128	11
	.4byte		.L527-.L2
	.4byte		.L528
	.sleb128	12
	.uleb128	0
	.sleb128	0
.L527:
.L537:
	.sleb128	8
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L536:
	.sleb128	9
	.byte		"uint16"
	.byte		0
	.4byte		.L537
.L535:
	.sleb128	9
	.byte		"Adc_ValueGroupType"
	.byte		0
	.4byte		.L536
	.section	.debug_info,,n
.L534:
	.sleb128	13
	.4byte		.L535
.L532:
	.sleb128	11
	.4byte		.L533-.L2
	.4byte		.L534
	.sleb128	12
	.uleb128	0
	.sleb128	0
.L533:
.L542:
	.sleb128	9
	.byte		"Adc_Adcdig_ChannelConfigurationType"
	.byte		0
	.4byte		.L543
.L541:
	.sleb128	10
	.4byte		.L542
.L539:
	.sleb128	11
	.4byte		.L540-.L2
	.4byte		.L541
	.sleb128	12
	.uleb128	0
	.sleb128	0
.L540:
.L547:
	.sleb128	13
	.4byte		.L541
.L545:
	.sleb128	11
	.4byte		.L546-.L2
	.4byte		.L547
	.sleb128	12
	.uleb128	3
	.sleb128	0
.L546:
.L552:
	.sleb128	9
	.byte		"Adc_GroupConfigurationType"
	.byte		0
	.4byte		.L553
.L551:
	.sleb128	10
	.4byte		.L552
.L549:
	.sleb128	11
	.4byte		.L550-.L2
	.4byte		.L551
	.sleb128	12
	.uleb128	0
	.sleb128	0
.L550:
.L556:
	.sleb128	9
	.byte		"Adc_ConfigType"
	.byte		0
	.4byte		.L557
.L555:
	.sleb128	10
	.4byte		.L556
.L560:
	.sleb128	9
	.byte		"Adc_Adcdig_RegisterAvailabilityType"
	.byte		0
	.4byte		.L561
.L559:
	.sleb128	10
	.4byte		.L560
.L566:
	.sleb128	9
	.byte		"Adc_Adcdig_ChannelLimitCheckingType"
	.byte		0
	.4byte		.L567
.L565:
	.sleb128	10
	.4byte		.L566
.L563:
	.sleb128	11
	.4byte		.L564-.L2
	.4byte		.L565
	.sleb128	12
	.uleb128	0
	.sleb128	0
.L564:
.L571:
	.sleb128	13
	.4byte		.L565
.L569:
	.sleb128	11
	.4byte		.L570-.L2
	.4byte		.L571
	.sleb128	12
	.uleb128	3
	.sleb128	0
.L570:
.L574:
	.sleb128	13
	.4byte		.L528
.L575:
	.sleb128	13
	.4byte		.L551
.L576:
	.sleb128	13
	.4byte		.L547
.L577:
	.sleb128	9
	.byte		"Adc_GroupType"
	.byte		0
	.4byte		.L536
.L579:
	.sleb128	9
	.byte		"Adc_Adcdig_MultiConfigType"
	.byte		0
	.4byte		.L580
.L578:
	.sleb128	10
	.4byte		.L579
.L584:
	.sleb128	10
	.4byte		.L523
.L582:
	.sleb128	11
	.4byte		.L583-.L2
	.4byte		.L584
	.sleb128	12
	.uleb128	3
	.sleb128	12
	.uleb128	2
	.sleb128	0
.L583:
.L585:
	.sleb128	11
	.4byte		.L586-.L2
	.4byte		.L584
	.sleb128	12
	.uleb128	3
	.sleb128	12
	.uleb128	2
	.sleb128	0
.L586:
.L587:
	.sleb128	11
	.4byte		.L588-.L2
	.4byte		.L584
	.sleb128	12
	.uleb128	3
	.sleb128	12
	.uleb128	2
	.sleb128	0
.L588:
.L589:
	.sleb128	11
	.4byte		.L590-.L2
	.4byte		.L584
	.sleb128	12
	.uleb128	3
	.sleb128	12
	.uleb128	2
	.sleb128	0
.L590:
.L591:
	.sleb128	11
	.4byte		.L592-.L2
	.4byte		.L584
	.sleb128	12
	.uleb128	3
	.sleb128	12
	.uleb128	2
	.sleb128	0
.L592:
.L593:
	.sleb128	11
	.4byte		.L594-.L2
	.4byte		.L584
	.sleb128	12
	.uleb128	3
	.sleb128	12
	.uleb128	2
	.sleb128	0
.L594:
.L595:
	.sleb128	11
	.4byte		.L596-.L2
	.4byte		.L584
	.sleb128	12
	.uleb128	3
	.sleb128	0
.L596:
.L597:
	.sleb128	11
	.4byte		.L598-.L2
	.4byte		.L584
	.sleb128	12
	.uleb128	3
	.sleb128	12
	.uleb128	11
	.sleb128	0
.L598:
.L599:
	.sleb128	11
	.4byte		.L600-.L2
	.4byte		.L584
	.sleb128	12
	.uleb128	3
	.sleb128	12
	.uleb128	2
	.sleb128	0
.L600:
.L601:
	.sleb128	11
	.4byte		.L602-.L2
	.4byte		.L584
	.sleb128	12
	.uleb128	3
	.sleb128	12
	.uleb128	2
	.sleb128	0
.L602:
.L603:
	.sleb128	11
	.4byte		.L604-.L2
	.4byte		.L584
	.sleb128	12
	.uleb128	3
	.sleb128	12
	.uleb128	3
	.sleb128	0
.L604:
.L606:
	.sleb128	11
	.4byte		.L607-.L2
	.4byte		.L584
	.sleb128	12
	.uleb128	3
	.sleb128	0
.L607:
.L609:
	.sleb128	9
	.byte		"Adc_HwUnitType"
	.byte		0
	.4byte		.L523
.L608:
	.sleb128	10
	.4byte		.L609
.L612:
	.sleb128	10
	.4byte		.L577
.L610:
	.sleb128	11
	.4byte		.L611-.L2
	.4byte		.L612
	.sleb128	12
	.uleb128	3
	.sleb128	0
.L611:
.L613:
	.sleb128	11
	.4byte		.L614-.L2
	.4byte		.L521
	.sleb128	12
	.uleb128	3
	.sleb128	0
.L614:
.L615:
	.sleb128	11
	.4byte		.L616-.L2
	.4byte		.L584
	.sleb128	12
	.uleb128	3
	.sleb128	0
.L616:
.L617:
	.sleb128	11
	.4byte		.L618-.L2
	.4byte		.L584
	.sleb128	12
	.uleb128	3
	.sleb128	0
.L618:
.L619:
	.sleb128	11
	.4byte		.L620-.L2
	.4byte		.L608
	.sleb128	12
	.uleb128	3
	.sleb128	0
.L620:
.L623:
	.sleb128	9
	.byte		"Adc_GroupAccessModeType"
	.byte		0
	.4byte		.L624
.L622:
	.sleb128	10
	.4byte		.L623
.L626:
	.sleb128	9
	.byte		"Adc_GroupConvModeType"
	.byte		0
	.4byte		.L627
.L625:
	.sleb128	10
	.4byte		.L626
.L629:
	.sleb128	9
	.byte		"Adc_GroupConvType"
	.byte		0
	.4byte		.L630
.L628:
	.sleb128	10
	.4byte		.L629
.L632:
	.sleb128	9
	.byte		"Adc_GroupReplacementType"
	.byte		0
	.4byte		.L633
.L631:
	.sleb128	10
	.4byte		.L632
.L635:
	.sleb128	9
	.byte		"Adc_TriggerSourceType"
	.byte		0
	.4byte		.L636
.L634:
	.sleb128	10
	.4byte		.L635
	.section	.debug_info,,n
.L640:
	.sleb128	14
	.4byte		.L641-.L2
	.byte		0x1
	.sleb128	0
.L641:
.L639:
	.sleb128	13
	.4byte		.L640
.L638:
	.sleb128	9
	.byte		"Adc_NotifyType"
	.byte		0
	.4byte		.L639
.L637:
	.sleb128	10
	.4byte		.L638
.L644:
	.sleb128	8
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L643:
	.sleb128	9
	.byte		"uint32"
	.byte		0
	.4byte		.L644
.L642:
	.sleb128	10
	.4byte		.L643
.L645:
	.sleb128	13
	.4byte		.L534
.L647:
	.sleb128	9
	.byte		"Adc_StreamBufferModeType"
	.byte		0
	.4byte		.L648
.L646:
	.sleb128	10
	.4byte		.L647
.L650:
	.sleb128	9
	.byte		"Adc_StreamNumSampleType"
	.byte		0
	.4byte		.L536
.L649:
	.sleb128	10
	.4byte		.L650
.L653:
	.sleb128	9
	.byte		"Adc_GroupDefType"
	.byte		0
	.4byte		.L522
.L652:
	.sleb128	10
	.4byte		.L653
.L651:
	.sleb128	13
	.4byte		.L652
.L655:
	.sleb128	9
	.byte		"Adc_ChannelIndexType"
	.byte		0
	.4byte		.L536
.L654:
	.sleb128	10
	.4byte		.L655
.L657:
	.sleb128	9
	.byte		"Adc_ConversionTimeType"
	.byte		0
	.4byte		.L536
.L656:
	.sleb128	10
	.4byte		.L657
.L659:
	.sleb128	10
	.4byte		.L536
.L661:
	.sleb128	9
	.byte		"Adc_ResolutionType"
	.byte		0
	.4byte		.L523
.L660:
	.sleb128	10
	.4byte		.L661
.L664:
	.sleb128	9
	.byte		"boolean"
	.byte		0
	.4byte		.L524
.L663:
	.sleb128	10
	.4byte		.L664
.L666:
	.sleb128	9
	.byte		"Adc_ChannelRangeSelectType"
	.byte		0
	.4byte		.L667
.L665:
	.sleb128	10
	.4byte		.L666
.L668:
	.sleb128	10
	.4byte		.L535
.L7:
	.sleb128	0
.L3:
	.wrcm.doc
	.wrcm.elem
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Adc_PBcfg.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Adc_PBcfg.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Adc_PBcfg.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Adc_PBcfg.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Adc_PBcfg.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Adc_PBcfg.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "gen\MPC5746R_ECU\WindRiver\src\Adc_PBcfg.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
