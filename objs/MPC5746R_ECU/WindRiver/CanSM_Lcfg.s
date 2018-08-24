#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"CanSM_Lcfg.c"
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
# FUNC(void, CANSM_CODE) SchM_Enter_CanSM
	.align		2
	.section	.text_vle
	.d2file		"gen\\MPC5746R_ECU\\WindRiver\\CanSM_Lcfg.c"
        .d2line         90,24
#$$ld
.L583:

#$$bf	SchM_Enter_CanSM,interprocedural,rasave,nostackparams
	.globl		SchM_Enter_CanSM
	.d2_cfa_start __cie
SchM_Enter_CanSM:
.Llo1:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# ExclusiveArea=r3 ExclusiveArea=r3
	.d2prologue_end
# (
#     CONST(uint8,AUTOMATIC) ExclusiveArea
# )
# {
#     /* PRQA S 2016++ */ /* Switch statement default clause is empty */
#     switch (ExclusiveArea)
	.d2line		96
	rlwinm		r3,r3,0,24,31		# ExclusiveArea=r3 ExclusiveArea=r3
	se_cmpi		r3,0		# ExclusiveArea=r3
	bc		0,2,.L571	# ne
#     {
#         case 0U:
#         {
#             SchM_Enter_CanSM_Area_0();
	.d2line		100
.Llo2:
	bl		SchM_Enter_CanSM_Area_0
.L571:
#             break;
#         }
#         default:
#         {
#             break;
#         }
#     }
#     /* PRQA S 2016-- */
# }
	.d2line		109
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
.L584:
	.type		SchM_Enter_CanSM,@function
	.size		SchM_Enter_CanSM,.-SchM_Enter_CanSM
# Number of nodes = 7

# Allocations for SchM_Enter_CanSM
#	?a4		ExclusiveArea
# FUNC(void, CANSM_CODE) SchM_Exit_CanSM
	.align		2
	.section	.text_vle
        .d2line         111,24
#$$ld
.L593:

#$$bf	SchM_Exit_CanSM,interprocedural,rasave,nostackparams
	.globl		SchM_Exit_CanSM
	.d2_cfa_start __cie
SchM_Exit_CanSM:
.Llo3:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# ExclusiveArea=r3 ExclusiveArea=r3
	.d2prologue_end
# (
#     CONST(uint8,AUTOMATIC) ExclusiveArea
# )
# {
#     /* PRQA S 2016++ */ /* Switch statement default clause is empty */
#     switch (ExclusiveArea)
	.d2line		117
	rlwinm		r3,r3,0,24,31		# ExclusiveArea=r3 ExclusiveArea=r3
	se_cmpi		r3,0		# ExclusiveArea=r3
	bc		0,2,.L576	# ne
#      {
#          case 0U:
#          {
#              SchM_Exit_CanSM_Area_0();
	.d2line		121
.Llo4:
	bl		SchM_Exit_CanSM_Area_0
.L576:
#              break;
#          }
#          default:
#          {
#              break;
#          }
#     }
#     /* PRQA S 2016-- */
# }
	.d2line		130
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
.L594:
	.type		SchM_Exit_CanSM,@function
	.size		SchM_Exit_CanSM,.-SchM_Exit_CanSM
# Number of nodes = 7

# Allocations for SchM_Exit_CanSM
#	?a4		ExclusiveArea

# Allocations for module
	.data
	.0byte		.L597
	.data
	.type		CanSM_LTConfigType_Ram,@object
	.size		CanSM_LTConfigType_Ram,4
	.align		2
CanSM_LTConfigType_Ram:
	.long		1
	.section	.text_vle
	.0byte		.L600
	.section	.text_vle
	.type		CanSM_LTtoPCHashValue,@object
	.size		CanSM_LTtoPCHashValue,4
	.align		2
	.globl		CanSM_LTtoPCHashValue
CanSM_LTtoPCHashValue:
	.long		981199489
	.section	.text_vle
	.type		CanSM_LTHashValue,@object
	.size		CanSM_LTHashValue,4
	.align		2
	.globl		CanSM_LTHashValue
CanSM_LTHashValue:
	.long		283128755
	.section	.text_vle
	.type		CanSM_LTConfig,@object
	.size		CanSM_LTConfig,4
	.align		2
	.globl		CanSM_LTConfig
CanSM_LTConfig:
	.long		CanSM_LTConfigType_Ram
	.section	.text_vle
#$$ld
.L5:
.L619:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanSM\\ssc\\make\\..\\inc\\CanSM_Types.h"
.L585:	.d2filenum "gen\\MPC5746R_ECU\\WindRiver\\CanSM_Lcfg.c"
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
	.uleb128	9
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	5
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
	.byte		"gen\\MPC5746R_ECU\\WindRiver\\CanSM_Lcfg.c"
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
.L586:
	.sleb128	2
	.4byte		.L582-.L2
	.byte		"SchM_Enter_CanSM"
	.byte		0
	.4byte		.L585
	.uleb128	90
	.uleb128	24
	.byte		0x1
	.byte		0x1
	.4byte		.L583
	.4byte		.L584
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L585
	.uleb128	90
	.uleb128	24
	.byte		"ExclusiveArea"
	.byte		0
	.4byte		.L587
	.4byte		.L590
	.section	.debug_info,,n
	.sleb128	0
.L582:
	.section	.debug_info,,n
.L595:
	.sleb128	2
	.4byte		.L592-.L2
	.byte		"SchM_Exit_CanSM"
	.byte		0
	.4byte		.L585
	.uleb128	111
	.uleb128	24
	.byte		0x1
	.byte		0x1
	.4byte		.L593
	.4byte		.L594
	.sleb128	3
	.4byte		.L585
	.uleb128	111
	.uleb128	24
	.byte		"ExclusiveArea"
	.byte		0
	.4byte		.L587
	.4byte		.L596
	.section	.debug_info,,n
	.sleb128	0
.L592:
	.section	.debug_info,,n
.L597:
	.sleb128	4
	.4byte		.L585
	.uleb128	42
	.uleb128	48
	.byte		"CanSM_LTConfigType_Ram"
	.byte		0
	.4byte		.L598
	.sleb128	5
	.byte		0x3
	.4byte		CanSM_LTConfigType_Ram
	.section	.debug_info,,n
	.section	.debug_info,,n
.L600:
	.sleb128	5
	.byte		0x1
	.4byte		.L585
	.uleb128	56
	.uleb128	29
	.byte		"CanSM_LTtoPCHashValue"
	.byte		0
	.4byte		.L601
	.sleb128	5
	.byte		0x3
	.4byte		CanSM_LTtoPCHashValue
	.section	.debug_info,,n
	.section	.debug_info,,n
.L604:
	.sleb128	5
	.byte		0x1
	.4byte		.L585
	.uleb128	59
	.uleb128	29
	.byte		"CanSM_LTHashValue"
	.byte		0
	.4byte		.L601
	.sleb128	5
	.byte		0x3
	.4byte		CanSM_LTHashValue
	.section	.debug_info,,n
.L605:
	.sleb128	5
	.byte		0x1
	.4byte		.L585
	.uleb128	67
	.uleb128	41
	.byte		"CanSM_LTConfig"
	.byte		0
	.4byte		.L606
	.sleb128	5
	.byte		0x3
	.4byte		CanSM_LTConfig
	.section	.debug_info,,n
.L609:
	.sleb128	5
	.byte		0x1
	.4byte		.L585
	.uleb128	78
	.uleb128	54
	.byte		"CanSM_Cfg_p"
	.byte		0
	.4byte		.L610
	.sleb128	5
	.byte		0x3
	.4byte		CanSM_Cfg_p
	.comm		CanSM_Cfg_p,4,2
.L614:
	.sleb128	5
	.byte		0x1
	.4byte		.L585
	.uleb128	80
	.uleb128	55
	.byte		"CanSM_NetworkType_p"
	.byte		0
	.4byte		.L615
	.sleb128	5
	.byte		0x3
	.4byte		CanSM_NetworkType_p
	.comm		CanSM_NetworkType_p,4,2
	.section	.debug_info,,n
.L613:
	.sleb128	6
	.4byte		.L619
	.uleb128	341
	.uleb128	14
	.4byte		.L620-.L2
	.uleb128	20
	.section	.debug_info,,n
.L565:
	.sleb128	7
	.byte		"NetworkType_R14_Size"
	.byte		0
	.4byte		.L587
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L566:
	.sleb128	7
	.byte		"RepetitionTime_u16"
	.byte		0
	.4byte		.L621
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L567:
	.sleb128	7
	.byte		"RepetitionMax_u8"
	.byte		0
	.4byte		.L587
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L568:
	.sleb128	7
	.byte		"PBtoPCHashValue_P"
	.byte		0
	.4byte		.L624
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L569:
	.sleb128	7
	.byte		"PBtoLTHashValue_P"
	.byte		0
	.4byte		.L624
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L570:
	.sleb128	7
	.byte		"NetworkType_R14"
	.byte		0
	.4byte		.L615
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L620:
.L618:
	.sleb128	6
	.4byte		.L619
	.uleb128	341
	.uleb128	14
	.4byte		.L625-.L2
	.uleb128	24
.L552:
	.sleb128	7
	.byte		"RAM"
	.byte		0
	.4byte		.L626
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L553:
	.sleb128	7
	.byte		"CanSMNetworkIndex"
	.byte		0
	.4byte		.L587
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L554:
	.sleb128	7
	.byte		"CanSMNetworkHandle"
	.byte		0
	.4byte		.L629
	.sleb128	2
	.byte		0x23
	.uleb128	5
	.byte		0x1
.L555:
	.sleb128	7
	.byte		"CanSMTransceiverId_u8"
	.byte		0
	.4byte		.L587
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L556:
	.sleb128	7
	.byte		"CanSMPartialNetworkSupport"
	.byte		0
	.4byte		.L631
	.sleb128	2
	.byte		0x23
	.uleb128	7
	.byte		0x1
.L557:
	.sleb128	7
	.byte		"CanSMBorTxConfirmationPolling"
	.byte		0
	.4byte		.L631
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L558:
	.sleb128	7
	.byte		"ControllerType_R16_Size"
	.byte		0
	.4byte		.L587
	.sleb128	2
	.byte		0x23
	.uleb128	9
	.byte		0x1
.L559:
	.sleb128	7
	.byte		"CanSMBorCounterL1ToL2_u8"
	.byte		0
	.4byte		.L587
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L560:
	.sleb128	7
	.byte		"CanSMBorTimeL1_u16"
	.byte		0
	.4byte		.L621
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L561:
	.sleb128	7
	.byte		"CanSMBorTimeL2_u16"
	.byte		0
	.4byte		.L621
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L562:
	.sleb128	7
	.byte		"CanSMBorTimeTxEnsured_u16"
	.byte		0
	.4byte		.L621
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L563:
	.sleb128	7
	.byte		"CanSMBorErrEvent"
	.byte		0
	.4byte		.L633
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L564:
	.sleb128	7
	.byte		"ControllerType_R16"
	.byte		0
	.4byte		.L635
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L625:
.L628:
	.sleb128	6
	.4byte		.L619
	.uleb128	341
	.uleb128	14
	.4byte		.L639-.L2
	.uleb128	42
.L518:
	.sleb128	7
	.byte		"current_state"
	.byte		0
	.4byte		.L640
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L519:
	.sleb128	7
	.byte		"State"
	.byte		0
	.4byte		.L622
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L520:
	.sleb128	7
	.byte		"CanSMBorTimer_u16"
	.byte		0
	.4byte		.L622
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L521:
	.sleb128	7
	.byte		"CanSMBorTimerTxEnsured_u16"
	.byte		0
	.4byte		.L622
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L522:
	.sleb128	7
	.byte		"ChannelTimer_u16"
	.byte		0
	.4byte		.L622
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L523:
	.sleb128	7
	.byte		"RetryTimerEnabled"
	.byte		0
	.4byte		.L632
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L524:
	.sleb128	7
	.byte		"CanSMNetworkMode"
	.byte		0
	.4byte		.L641
	.sleb128	2
	.byte		0x23
	.uleb128	11
	.byte		0x1
.L525:
	.sleb128	7
	.byte		"CanSMBorCounter_u8"
	.byte		0
	.4byte		.L588
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L526:
	.sleb128	7
	.byte		"RequestModeTransition"
	.byte		0
	.4byte		.L588
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
.L527:
	.sleb128	7
	.byte		"RetryCounter_u8"
	.byte		0
	.4byte		.L588
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L528:
	.sleb128	7
	.byte		"RequestMode"
	.byte		0
	.4byte		.L641
	.sleb128	2
	.byte		0x23
	.uleb128	15
	.byte		0x1
.L529:
	.sleb128	7
	.byte		"CanSM_InitFlag"
	.byte		0
	.4byte		.L632
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L530:
	.sleb128	7
	.byte		"CanSMCheckedBaudrateStatus"
	.byte		0
	.4byte		.L588
	.sleb128	2
	.byte		0x23
	.uleb128	17
	.byte		0x1
.L531:
	.sleb128	7
	.byte		"CanSMCheckedBaudrate"
	.byte		0
	.4byte		.L622
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L532:
	.sleb128	7
	.byte		"CanSMChangedBaudrate"
	.byte		0
	.4byte		.L622
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L533:
	.sleb128	7
	.byte		"CurrentStateNoCom_b"
	.byte		0
	.4byte		.L632
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L534:
	.sleb128	7
	.byte		"TxTimeoutstate_b"
	.byte		0
	.4byte		.L632
	.sleb128	2
	.byte		0x23
	.uleb128	23
	.byte		0x1
.L535:
	.sleb128	7
	.byte		"T_REPEAT_MAX_HAPPENED"
	.byte		0
	.4byte		.L632
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L536:
	.sleb128	7
	.byte		"BufferedRequestMode"
	.byte		0
	.4byte		.L641
	.sleb128	2
	.byte		0x23
	.uleb128	25
	.byte		0x1
.L537:
	.sleb128	7
	.byte		"CalledFromMainfunction"
	.byte		0
	.4byte		.L632
	.sleb128	2
	.byte		0x23
	.uleb128	26
	.byte		0x1
.L538:
	.sleb128	7
	.byte		"Lock"
	.byte		0
	.4byte		.L632
	.sleb128	2
	.byte		0x23
	.uleb128	27
	.byte		0x1
.L539:
	.sleb128	7
	.byte		"CanSM_ChangeBaudrateRequest"
	.byte		0
	.4byte		.L632
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L540:
	.sleb128	7
	.byte		"CanSM_ComModeRequest"
	.byte		0
	.4byte		.L632
	.sleb128	2
	.byte		0x23
	.uleb128	29
	.byte		0x1
.L541:
	.sleb128	7
	.byte		"CanSM_TransceiverWakeFlagIndication"
	.byte		0
	.4byte		.L632
	.sleb128	2
	.byte		0x23
	.uleb128	30
	.byte		0x1
.L542:
	.sleb128	7
	.byte		"CanSM_TrcvWuFlagIndication"
	.byte		0
	.4byte		.L632
	.sleb128	2
	.byte		0x23
	.uleb128	31
	.byte		0x1
.L543:
	.sleb128	7
	.byte		"CanSM_CtrlBusOffIndication"
	.byte		0
	.4byte		.L632
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L544:
	.sleb128	7
	.byte		"CanSM_CtrlSleepIndication"
	.byte		0
	.4byte		.L632
	.sleb128	2
	.byte		0x23
	.uleb128	33
	.byte		0x1
.L545:
	.sleb128	7
	.byte		"CanSM_CtrlStoppedIndication"
	.byte		0
	.4byte		.L632
	.sleb128	2
	.byte		0x23
	.uleb128	34
	.byte		0x1
.L546:
	.sleb128	7
	.byte		"CanSM_CtrlStartedIndication"
	.byte		0
	.4byte		.L632
	.sleb128	2
	.byte		0x23
	.uleb128	35
	.byte		0x1
.L547:
	.sleb128	7
	.byte		"CanSM_TransceiverModeNormalIndication"
	.byte		0
	.4byte		.L632
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L548:
	.sleb128	7
	.byte		"CanSM_TransceiverModeStandbyIndication"
	.byte		0
	.4byte		.L632
	.sleb128	2
	.byte		0x23
	.uleb128	37
	.byte		0x1
.L549:
	.sleb128	7
	.byte		"CanSM_TxTimeoutIndication"
	.byte		0
	.4byte		.L632
	.sleb128	2
	.byte		0x23
	.uleb128	38
	.byte		0x1
.L550:
	.sleb128	7
	.byte		"BusOffDuringRecovery"
	.byte		0
	.4byte		.L632
	.sleb128	2
	.byte		0x23
	.uleb128	39
	.byte		0x1
.L551:
	.sleb128	7
	.byte		"BorFailTRepeatMax"
	.byte		0
	.4byte		.L632
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
	.sleb128	0
.L639:
.L608:
	.sleb128	6
	.4byte		.L619
	.uleb128	341
	.uleb128	14
	.4byte		.L642-.L2
	.uleb128	4
.L517:
	.sleb128	7
	.byte		"RAM"
	.byte		0
	.4byte		.L643
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L642:
.L599:
	.sleb128	6
	.4byte		.L619
	.uleb128	341
	.uleb128	14
	.4byte		.L644-.L2
	.uleb128	4
.L516:
	.sleb128	7
	.byte		"initState"
	.byte		0
	.4byte		.L645
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L644:
.L638:
	.sleb128	6
	.4byte		.L619
	.uleb128	341
	.uleb128	14
	.4byte		.L647-.L2
	.uleb128	8
.L514:
	.sleb128	7
	.byte		"RAM"
	.byte		0
	.4byte		.L648
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L515:
	.sleb128	7
	.byte		"ControllerId_pu8"
	.byte		0
	.4byte		.L587
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L647:
.L650:
	.sleb128	6
	.4byte		.L619
	.uleb128	341
	.uleb128	14
	.4byte		.L651-.L2
	.uleb128	3
.L511:
	.sleb128	7
	.byte		"ControllerSleepIndication"
	.byte		0
	.4byte		.L632
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L512:
	.sleb128	7
	.byte		"ControllerStoppedIndication"
	.byte		0
	.4byte		.L632
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L513:
	.sleb128	7
	.byte		"ControllerStartedIndication"
	.byte		0
	.4byte		.L632
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L651:
	.section	.debug_info,,n
.L646:
	.sleb128	8
	.4byte		.L619
	.uleb128	322
	.uleb128	14
	.4byte		.L652-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	9
	.byte		"CANSM_INITED"
	.byte		0
	.sleb128	0
	.sleb128	9
	.byte		"CANSM_UNINITED"
	.byte		0
	.sleb128	1
	.sleb128	9
	.byte		"CANSM_INITIALIZING"
	.byte		0
	.sleb128	2
	.sleb128	0
.L652:
	.section	.debug_info,,n
.L589:
	.sleb128	10
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L588:
	.sleb128	11
	.byte		"uint8"
	.byte		0
	.4byte		.L589
	.section	.debug_info,,n
.L587:
	.sleb128	12
	.4byte		.L588
.L598:
	.sleb128	11
	.byte		"CanSM_LTConfigType_RAM"
	.byte		0
	.4byte		.L599
.L603:
	.sleb128	10
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L602:
	.sleb128	11
	.byte		"uint32"
	.byte		0
	.4byte		.L603
.L601:
	.sleb128	12
	.4byte		.L602
.L607:
	.sleb128	11
	.byte		"CanSM_LTConfigType"
	.byte		0
	.4byte		.L608
.L606:
	.sleb128	12
	.4byte		.L607
.L612:
	.sleb128	11
	.byte		"CanSM_ConfigType"
	.byte		0
	.4byte		.L613
.L611:
	.sleb128	12
	.4byte		.L612
	.section	.debug_info,,n
.L610:
	.sleb128	13
	.4byte		.L611
.L617:
	.sleb128	11
	.byte		"CanSM_NetworkType"
	.byte		0
	.4byte		.L618
.L616:
	.sleb128	12
	.4byte		.L617
.L615:
	.sleb128	13
	.4byte		.L616
.L623:
	.sleb128	10
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L622:
	.sleb128	11
	.byte		"uint16"
	.byte		0
	.4byte		.L623
.L621:
	.sleb128	12
	.4byte		.L622
.L624:
	.sleb128	13
	.4byte		.L601
.L627:
	.sleb128	11
	.byte		"CanSM_NetworkType_RAM"
	.byte		0
	.4byte		.L628
.L626:
	.sleb128	13
	.4byte		.L627
.L630:
	.sleb128	11
	.byte		"NetworkHandleType"
	.byte		0
	.4byte		.L588
.L629:
	.sleb128	12
	.4byte		.L630
.L632:
	.sleb128	11
	.byte		"boolean"
	.byte		0
	.4byte		.L589
.L631:
	.sleb128	12
	.4byte		.L632
.L634:
	.sleb128	11
	.byte		"Dem_EventIdType"
	.byte		0
	.4byte		.L622
.L633:
	.sleb128	12
	.4byte		.L634
.L637:
	.sleb128	11
	.byte		"CanSM_ControllerType"
	.byte		0
	.4byte		.L638
.L636:
	.sleb128	12
	.4byte		.L637
.L635:
	.sleb128	13
	.4byte		.L636
.L640:
	.sleb128	11
	.byte		"CANSM_Escher_StateNumber_t"
	.byte		0
	.4byte		.L588
.L641:
	.sleb128	11
	.byte		"ComM_ModeType"
	.byte		0
	.4byte		.L588
.L643:
	.sleb128	13
	.4byte		.L598
.L645:
	.sleb128	11
	.byte		"CanSM_StateType"
	.byte		0
	.4byte		.L646
.L649:
	.sleb128	11
	.byte		"CanSM_ControllerType_RAM"
	.byte		0
	.4byte		.L650
.L648:
	.sleb128	13
	.4byte		.L649
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L590:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locend
.L596:
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),3
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "SchM_Exit_CanSM"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "SchM_Exit_CanSM_Area_0"
	.wrcm.end
	.wrcm.nelem "SchM_Enter_CanSM"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "SchM_Enter_CanSM_Area_0"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanSM_Lcfg.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanSM_Lcfg.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanSM_Lcfg.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanSM_Lcfg.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanSM_Lcfg.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanSM_Lcfg.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "gen\MPC5746R_ECU\WindRiver\CanSM_Lcfg.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
