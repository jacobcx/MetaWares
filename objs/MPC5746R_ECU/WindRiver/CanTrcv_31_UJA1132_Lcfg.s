#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"CanTrcv_31_UJA1132_Lcfg.c"
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
	.section	.text_vle
	.0byte		.L594
	.section	.text_vle
	.type		CanTrcv_31_UJA1132_LTHashValue,@object
	.size		CanTrcv_31_UJA1132_LTHashValue,4
	.align		2
	.globl		CanTrcv_31_UJA1132_LTHashValue
CanTrcv_31_UJA1132_LTHashValue:
	.long		243788920
	.section	.text_vle
	.type		CanTrcv_31_UJA1132_LTtoPCHashValue,@object
	.size		CanTrcv_31_UJA1132_LTtoPCHashValue,4
	.align		2
	.globl		CanTrcv_31_UJA1132_LTtoPCHashValue
CanTrcv_31_UJA1132_LTtoPCHashValue:
	.long		-730697423
	.data
	.type		CanTrcv_31_UJA1132_Status_p,@object
	.size		CanTrcv_31_UJA1132_Status_p,4
	.align		2
	.globl		CanTrcv_31_UJA1132_Status_p
CanTrcv_31_UJA1132_Status_p:
	.long		CanTrcv_31_UJA1132_Status_a
	.section	.text_vle
	.type		CanTrcv_31_UJA1132_LT_Config_a,@object
	.size		CanTrcv_31_UJA1132_LT_Config_a,24
	.align		2
CanTrcv_31_UJA1132_LT_Config_a:
	.long		0
	.short		1000
	.byte		0
	.byte		1
	.byte		0
	.byte		0
	.byte		0
	.space		1
	.short		0
	.byte		1
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.space		1
	.short		13
	.byte		0
	.space		1
	.section	.text_vle
	.type		CanTrcv_31_UJA1132_Index_u8,@object
	.size		CanTrcv_31_UJA1132_Index_u8,1
	.align		0
	.globl		CanTrcv_31_UJA1132_Index_u8
CanTrcv_31_UJA1132_Index_u8:
	.byte		0
	.section	.text_vle
	.type		CanTrcv_31_UJA1132_MaxChannels_u16,@object
	.size		CanTrcv_31_UJA1132_MaxChannels_u16,2
	.align		1
	.globl		CanTrcv_31_UJA1132_MaxChannels_u16
CanTrcv_31_UJA1132_MaxChannels_u16:
	.short		1
	.section	.text_vle
	.type		CANTRCV_31_UJA1132_WAITCOUNT_U32,@object
	.size		CANTRCV_31_UJA1132_WAITCOUNT_U32,4
	.align		2
	.globl		CANTRCV_31_UJA1132_WAITCOUNT_U32
CANTRCV_31_UJA1132_WAITCOUNT_U32:
	.long		0
	.section	.text_vle
	.type		CanTrcv_31_UJA1132_LtConfig_p,@object
	.size		CanTrcv_31_UJA1132_LtConfig_p,4
	.align		2
	.globl		CanTrcv_31_UJA1132_LtConfig_p
CanTrcv_31_UJA1132_LtConfig_p:
	.long		CanTrcv_31_UJA1132_LT_Config_a
	.section	.text_vle
#$$ld
.L5:
.L641:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\AUTOSAR\\ar422\\Can_GeneralTypes.h"
.L625:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\UJA1132\\make\\..\\..\\..\\inc\\CanTrcv_Types.h"
.L595:	.d2filenum "gen\\MPC5746R_ECU\\WindRiver\\CanTrcv_31_UJA1132_Lcfg.c"
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
	.uleb128	3
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
	.byte		"gen\\MPC5746R_ECU\\WindRiver\\CanTrcv_31_UJA1132_Lcfg.c"
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
.L594:
	.sleb128	2
	.byte		0x1
	.4byte		.L595
	.uleb128	38
	.uleb128	41
	.byte		"CanTrcv_31_UJA1132_LTHashValue"
	.byte		0
	.4byte		.L596
	.sleb128	5
	.byte		0x3
	.4byte		CanTrcv_31_UJA1132_LTHashValue
	.section	.debug_info,,n
	.section	.debug_info,,n
.L599:
	.sleb128	2
	.byte		0x1
	.4byte		.L595
	.uleb128	41
	.uleb128	40
	.byte		"CanTrcv_31_UJA1132_LTtoPCHashValue"
	.byte		0
	.4byte		.L596
	.sleb128	5
	.byte		0x3
	.4byte		CanTrcv_31_UJA1132_LTtoPCHashValue
	.section	.debug_info,,n
.L600:
	.sleb128	3
	.4byte		.L595
	.uleb128	51
	.uleb128	73
	.byte		"CanTrcv_31_UJA1132_Status_a"
	.byte		0
	.4byte		.L601
	.sleb128	5
	.byte		0x3
	.4byte		CanTrcv_31_UJA1132_Status_a
	.0byte		.L600
	.lcomm		CanTrcv_31_UJA1132_Status_a,8,2
.L605:
	.sleb128	2
	.byte		0x1
	.4byte		.L595
	.uleb128	65
	.uleb128	80
	.byte		"CanTrcv_31_UJA1132_Status_p"
	.byte		0
	.4byte		.L606
	.sleb128	5
	.byte		0x3
	.4byte		CanTrcv_31_UJA1132_Status_p
	.section	.debug_info,,n
.L607:
	.sleb128	3
	.4byte		.L595
	.uleb128	76
	.uleb128	70
	.byte		"CanTrcv_31_UJA1132_LT_Config_a"
	.byte		0
	.4byte		.L608
	.sleb128	5
	.byte		0x3
	.4byte		CanTrcv_31_UJA1132_LT_Config_a
	.section	.debug_info,,n
.L613:
	.sleb128	2
	.byte		0x1
	.4byte		.L595
	.uleb128	123
	.uleb128	40
	.byte		"CanTrcv_31_UJA1132_Index_u8"
	.byte		0
	.4byte		.L614
	.sleb128	5
	.byte		0x3
	.4byte		CanTrcv_31_UJA1132_Index_u8
	.section	.debug_info,,n
.L617:
	.sleb128	2
	.byte		0x1
	.4byte		.L595
	.uleb128	132
	.uleb128	41
	.byte		"CanTrcv_31_UJA1132_MaxChannels_u16"
	.byte		0
	.4byte		.L618
	.sleb128	5
	.byte		0x3
	.4byte		CanTrcv_31_UJA1132_MaxChannels_u16
	.section	.debug_info,,n
.L621:
	.sleb128	2
	.byte		0x1
	.4byte		.L595
	.uleb128	141
	.uleb128	42
	.byte		"CANTRCV_31_UJA1132_WAITCOUNT_U32"
	.byte		0
	.4byte		.L596
	.sleb128	5
	.byte		0x3
	.4byte		CANTRCV_31_UJA1132_WAITCOUNT_U32
	.section	.debug_info,,n
.L622:
	.sleb128	2
	.byte		0x1
	.4byte		.L595
	.uleb128	144
	.uleb128	80
	.byte		"CanTrcv_31_UJA1132_LtConfig_p"
	.byte		0
	.4byte		.L623
	.sleb128	5
	.byte		0x3
	.4byte		CanTrcv_31_UJA1132_LtConfig_p
	.section	.debug_info,,n
.L604:
	.sleb128	4
	.4byte		.L625
	.uleb128	61
	.uleb128	13
	.4byte		.L626-.L2
	.uleb128	8
	.section	.debug_info,,n
.L590:
	.sleb128	5
	.byte		"CanTrcvCurrentState"
	.byte		0
	.4byte		.L627
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L591:
	.sleb128	5
	.byte		"CanTrcvInitialised_bt"
	.byte		0
	.4byte		.L629
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L592:
	.sleb128	5
	.byte		"CanTrcvSpiRetriesCounter"
	.byte		0
	.4byte		.L615
	.sleb128	2
	.byte		0x23
	.uleb128	5
	.byte		0x1
.L593:
	.sleb128	5
	.byte		"CanTrcvSpiTimeCounter"
	.byte		0
	.4byte		.L615
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
	.sleb128	0
.L626:
.L612:
	.sleb128	4
	.4byte		.L625
	.uleb128	61
	.uleb128	13
	.4byte		.L630-.L2
	.uleb128	24
.L575:
	.sleb128	5
	.byte		"CanTrcvInitState"
	.byte		0
	.4byte		.L631
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L576:
	.sleb128	5
	.byte		"CanTrcvMaxBaudrate"
	.byte		0
	.4byte		.L618
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L577:
	.sleb128	5
	.byte		"CanTrcvControlsPowerSupply"
	.byte		0
	.4byte		.L632
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L578:
	.sleb128	5
	.byte		"CanTrcvChannelUsed"
	.byte		0
	.4byte		.L632
	.sleb128	2
	.byte		0x23
	.uleb128	7
	.byte		0x1
.L579:
	.sleb128	5
	.byte		"CanTrcvWakeupByBusUsed"
	.byte		0
	.4byte		.L632
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L580:
	.sleb128	5
	.byte		"CanTrcvChannelId"
	.byte		0
	.4byte		.L614
	.sleb128	2
	.byte		0x23
	.uleb128	9
	.byte		0x1
.L581:
	.sleb128	5
	.byte		"CanTrcvWakeupSourceId"
	.byte		0
	.4byte		.L614
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L582:
	.sleb128	5
	.byte		"CanTrcvIcuChannelId"
	.byte		0
	.4byte		.L633
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L583:
	.sleb128	5
	.byte		"CanTrcvSpiAccessSynchronous"
	.byte		0
	.4byte		.L632
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L584:
	.sleb128	5
	.byte		"CanTrcvSpiCommRetries"
	.byte		0
	.4byte		.L614
	.sleb128	2
	.byte		0x23
	.uleb128	15
	.byte		0x1
.L585:
	.sleb128	5
	.byte		"CanTrcvSpiCommTimeout"
	.byte		0
	.4byte		.L614
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L586:
	.sleb128	5
	.byte		"CanTrcvSpiChannelId"
	.byte		0
	.4byte		.L635
	.sleb128	2
	.byte		0x23
	.uleb128	17
	.byte		0x1
.L587:
	.sleb128	5
	.byte		"CanTrcvSpiSequenceId"
	.byte		0
	.4byte		.L637
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L588:
	.sleb128	5
	.byte		"CanTrcvRxDioChannelId"
	.byte		0
	.4byte		.L639
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L589:
	.sleb128	5
	.byte		"CanIfTrcvID"
	.byte		0
	.4byte		.L614
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
	.sleb128	0
.L630:
	.section	.debug_info,,n
.L628:
	.sleb128	6
	.4byte		.L641
	.uleb128	23
	.uleb128	15
	.4byte		.L642-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	7
	.byte		"CANTRCV_TRCVMODE_NORMAL"
	.byte		0
	.sleb128	0
	.sleb128	7
	.byte		"CANTRCV_TRCVMODE_SLEEP"
	.byte		0
	.sleb128	1
	.sleb128	7
	.byte		"CANTRCV_TRCVMODE_STANDBY"
	.byte		0
	.sleb128	2
	.sleb128	0
.L642:
	.section	.debug_info,,n
.L598:
	.sleb128	8
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
	.section	.debug_info,,n
.L597:
	.sleb128	9
	.byte		"uint32"
	.byte		0
	.4byte		.L598
	.section	.debug_info,,n
.L596:
	.sleb128	10
	.4byte		.L597
.L603:
	.sleb128	9
	.byte		"CanTrcv_31_UJA1132_StatusType"
	.byte		0
	.4byte		.L604
	.section	.debug_info,,n
.L601:
	.sleb128	11
	.4byte		.L602-.L2
	.4byte		.L603
	.section	.debug_info,,n
	.sleb128	12
	.uleb128	0
	.sleb128	0
.L602:
	.section	.debug_info,,n
.L606:
	.sleb128	13
	.4byte		.L603
.L611:
	.sleb128	9
	.byte		"CanTrcv_31_UJA1132_LtCfgType"
	.byte		0
	.4byte		.L612
.L610:
	.sleb128	10
	.4byte		.L611
.L608:
	.sleb128	11
	.4byte		.L609-.L2
	.4byte		.L610
	.sleb128	12
	.uleb128	0
	.sleb128	0
.L609:
.L616:
	.sleb128	8
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L615:
	.sleb128	9
	.byte		"uint8"
	.byte		0
	.4byte		.L616
.L614:
	.sleb128	10
	.4byte		.L615
.L620:
	.sleb128	8
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L619:
	.sleb128	9
	.byte		"uint16"
	.byte		0
	.4byte		.L620
.L618:
	.sleb128	10
	.4byte		.L619
.L624:
	.sleb128	13
	.4byte		.L610
.L623:
	.sleb128	10
	.4byte		.L624
.L627:
	.sleb128	9
	.byte		"CanTrcv_TrcvModeType"
	.byte		0
	.4byte		.L628
.L629:
	.sleb128	9
	.byte		"boolean"
	.byte		0
	.4byte		.L616
.L631:
	.sleb128	10
	.4byte		.L627
.L632:
	.sleb128	10
	.4byte		.L629
.L634:
	.sleb128	9
	.byte		"Icu_ChannelType"
	.byte		0
	.4byte		.L619
.L633:
	.sleb128	10
	.4byte		.L634
.L636:
	.sleb128	9
	.byte		"Spi_ChannelType"
	.byte		0
	.4byte		.L615
.L635:
	.sleb128	10
	.4byte		.L636
.L638:
	.sleb128	9
	.byte		"Spi_SequenceType"
	.byte		0
	.4byte		.L615
.L637:
	.sleb128	10
	.4byte		.L638
.L640:
	.sleb128	9
	.byte		"Dio_ChannelType"
	.byte		0
	.4byte		.L619
.L639:
	.sleb128	10
	.4byte		.L640
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_UJA1132_Lcfg.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_UJA1132_Lcfg.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_UJA1132_Lcfg.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_UJA1132_Lcfg.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_UJA1132_Lcfg.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_UJA1132_Lcfg.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "gen\MPC5746R_ECU\WindRiver\CanTrcv_31_UJA1132_Lcfg.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
