#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"CanIf_TrcvModeIndication.c"
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
# FUNC(void, CANIF_CODE)CanIf_ProcessTrcvModeIndication
	.align		2
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanIf\\ssc\\make\\..\\src\\CanIf_TrcvModeIndication.c"
        .d2line         75,23
#$$ld
.L579:

#$$bf	CanIf_ProcessTrcvModeIndication,interprocedural,rasave,nostackparams
	.globl		CanIf_ProcessTrcvModeIndication
	.d2_cfa_start __cie
CanIf_ProcessTrcvModeIndication:
.Llo1:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# Transceiver_u8=r3 Transceiver_u8=r3
	mr		r0,r4		# TransceiverMode=r0 TransceiverMode=r4
	.d2prologue_end
# (
#     CONST(uint8,AUTOMATIC) Transceiver_u8,
#     CONST(CanTrcv_TrcvModeType,AUTOMATIC) TransceiverMode
# )
# {
# 
#     /*  REQ: [CANIF708], [CANIF709] */
#     /* if the CanIf module was not initialized */
#     if ( CANIF_UNINITIALIZED == CanIf_InitStatus_u8 )
	.d2line		84
	lis		r4,CanIf_InitStatus_u8@ha
.Llo5:
	lbz		r4,CanIf_InitStatus_u8@l(r4)
	se_cmpi		r4,0
	bc		1,2,.L572	# eq
#     {
# /* if DET is enabled REQ: [DEV_CANIF14000] */
# #if( CANIF_DEV_ERROR_DETECT == STD_ON )
#         /* Report error to DET */
#         (void)Det_ReportError( CANIF_MODULE_ID,
#                          CANIF_INSTANCE_ID,
#                          CANIF_SID_TRCV_MODE_IND,
#                          CANIF_E_UNINIT );
# #endif/* CANIF_DEV_ERROR_DETECT == STD_ON */
#     }
#     /* if CanIf was initialized */
#     else
#     {
#         /* if DET is enabled */
# #if( CANIF_DEV_ERROR_DETECT == STD_ON )
#         /* REQ: [CANIF710] */
#         if (Transceiver_u8 >= CanIf_NumberOfCanTrcvUnits_u8)
#         {
#             /* REQ: [CANIF706] */
#             /* Report error to DET */
#             (void)Det_ReportError( CANIF_MODULE_ID,
#                              CANIF_INSTANCE_ID,
#                              CANIF_SID_TRCV_MODE_IND,
#                              CANIF_E_PARAM_TRCV );
# 
#         } /* if */
#         else
# #endif /* CANIF_DEV_ERROR_DETECT == STD_ON */
#         {
#             /* if notification is configured */
#             if (NULL_PTR != CanIf_DispatchConfig.CanIfTrcvModeIndication)
	.d2line		115
.Llo6:
	lis		r4,(CanIf_DispatchConfig+12)@ha
	lwz		r4,(CanIf_DispatchConfig+12)@l(r4)
	se_cmpi		r4,0
	bc		1,2,.L572	# eq
#             {
#                 /* Call target module.
#                    REQ: [CANIF712]
#                    It is assumed that the called module (CanSM or CDD) uses
#                    CANIF's numbering.
#                    REQ: [CANIF694] No assumptions made regarding calling context.
#                  */
#                 CanIf_DispatchConfig.CanIfTrcvModeIndication(Transceiver_u8, TransceiverMode);
	.d2line		123
.Llo2:
	lis		r4,(CanIf_DispatchConfig+12)@ha
	lwz		r4,(CanIf_DispatchConfig+12)@l(r4)
	mtspr		ctr,r4
.Llo3:
	rlwinm		r3,r3,0,24,31		# Transceiver_u8=r3 Transceiver_u8=r3
.Llo4:
	mr		r4,r0		# TransceiverMode=r4 TransceiverMode=r0
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x18 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
.L572:
#             } /* if */
#         } /* else */
#     } /* else */
# 
# }/* End of CanIf_ProcessTrcvModeIndication() */
	.d2line		128
	.d2epilogue_begin
.Llo7:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L580:
	.type		CanIf_ProcessTrcvModeIndication,@function
	.size		CanIf_ProcessTrcvModeIndication,.-CanIf_ProcessTrcvModeIndication
# Number of nodes = 23

# Allocations for CanIf_ProcessTrcvModeIndication
#	?a4		Transceiver_u8
#	?a5		TransceiverMode
# FUNC(void, CANIF_CODE)CanIf_TrcvModeIndication
	.align		2
	.section	.text_vle
        .d2line         52,23
#$$ld
.L593:

#$$bf	CanIf_TrcvModeIndication,interprocedural,rasave,nostackparams
	.globl		CanIf_TrcvModeIndication
	.d2_cfa_start __cie
CanIf_TrcvModeIndication:
.Llo8:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# (
#     VAR(uint8,AUTOMATIC) Transceiver,
#     VAR(CanTrcv_TrcvModeType,AUTOMATIC) TransceiverMode
# )
# {
#     CanIf_ProcessTrcvModeIndication(Transceiver, TransceiverMode);
	.d2line		58
	mr		r0,r3		# Transceiver=r0 Transceiver=r3
	mr		r0,r4		# TransceiverMode=r0 TransceiverMode=r4
	bl		CanIf_ProcessTrcvModeIndication
# }
	.d2line		59
	.d2epilogue_begin
.Llo9:
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
	.type		CanIf_TrcvModeIndication,@function
	.size		CanIf_TrcvModeIndication,.-CanIf_TrcvModeIndication
# Number of nodes = 7

# Allocations for CanIf_TrcvModeIndication
#	?a4		Transceiver
#	?a5		TransceiverMode

# Allocations for module
	.section	.text_vle
	.0byte		.L600
	.section	.text_vle
#$$ld
.L5:
.L628:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\AUTOSAR\\ar422\\Can_GeneralTypes.h"
.L604:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanIf\\ssc\\make\\..\\inc\\CanIf_Types.h"
.L599:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanIf\\ssc\\make\\..\\inc\\internal\\CanIf_Private.h"
.L581:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanIf\\ssc\\make\\..\\src\\CanIf_TrcvModeIndication.c"
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
	.uleb128	38
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	12
	.uleb128	21
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	39
	.uleb128	12
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	13
	.uleb128	5
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanIf\\ssc\\make\\..\\src\\CanIf_TrcvModeIndication.c"
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
.L582:
	.sleb128	2
	.4byte		.L578-.L2
	.byte		"CanIf_ProcessTrcvModeIndication"
	.byte		0
	.4byte		.L581
	.uleb128	75
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L579
	.4byte		.L580
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L581
	.uleb128	75
	.uleb128	23
	.byte		"Transceiver_u8"
	.byte		0
	.4byte		.L583
	.4byte		.L586
	.sleb128	3
	.4byte		.L581
	.uleb128	75
	.uleb128	23
	.byte		"TransceiverMode"
	.byte		0
	.4byte		.L587
	.4byte		.L590
	.section	.debug_info,,n
	.sleb128	0
.L578:
	.section	.debug_info,,n
.L595:
	.sleb128	2
	.4byte		.L592-.L2
	.byte		"CanIf_TrcvModeIndication"
	.byte		0
	.4byte		.L581
	.uleb128	52
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L593
	.4byte		.L594
	.sleb128	3
	.4byte		.L581
	.uleb128	52
	.uleb128	23
	.byte		"Transceiver"
	.byte		0
	.4byte		.L584
	.4byte		.L596
	.sleb128	3
	.4byte		.L581
	.uleb128	52
	.uleb128	23
	.byte		"TransceiverMode"
	.byte		0
	.4byte		.L588
	.4byte		.L597
	.section	.debug_info,,n
	.sleb128	0
.L592:
	.section	.debug_info,,n
.L598:
	.sleb128	4
	.byte		0x1
	.byte		0x1
	.4byte		.L599
	.uleb128	323
	.uleb128	29
	.byte		"CanIf_InitStatus_u8"
	.byte		0
	.4byte		.L584
	.0byte		.L598
.L600:
	.sleb128	4
	.byte		0x1
	.byte		0x1
	.4byte		.L599
	.uleb128	568
	.uleb128	55
	.byte		"CanIf_DispatchConfig"
	.byte		0
	.4byte		.L601
	.section	.debug_info,,n
	.section	.debug_info,,n
.L603:
	.sleb128	5
	.4byte		.L604
	.uleb128	266
	.uleb128	1
	.4byte		.L605-.L2
	.uleb128	16
	.section	.debug_info,,n
.L199:
	.sleb128	6
	.byte		"CanIfBusOffNotification"
	.byte		0
	.4byte		.L606
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L200:
	.sleb128	6
	.byte		"CanIfWakeupValidNotification"
	.byte		0
	.4byte		.L610
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L201:
	.sleb128	6
	.byte		"CanIfControllerModeIndication"
	.byte		0
	.4byte		.L617
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L202:
	.sleb128	6
	.byte		"CanIfTrcvModeIndication"
	.byte		0
	.4byte		.L623
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L605:
	.section	.debug_info,,n
.L622:
	.sleb128	7
	.4byte		.L604
	.uleb128	74
	.uleb128	1
	.4byte		.L627-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	8
	.byte		"CANIF_CS_SLEEP"
	.byte		0
	.sleb128	0
	.sleb128	8
	.byte		"CANIF_CS_STARTED"
	.byte		0
	.sleb128	1
	.sleb128	8
	.byte		"CANIF_CS_STOPPED"
	.byte		0
	.sleb128	2
	.sleb128	8
	.byte		"CANIF_CS_UNINIT"
	.byte		0
	.sleb128	3
	.sleb128	0
.L627:
.L589:
	.sleb128	7
	.4byte		.L628
	.uleb128	23
	.uleb128	15
	.4byte		.L629-.L2
	.uleb128	4
	.sleb128	8
	.byte		"CANTRCV_TRCVMODE_NORMAL"
	.byte		0
	.sleb128	0
	.sleb128	8
	.byte		"CANTRCV_TRCVMODE_SLEEP"
	.byte		0
	.sleb128	1
	.sleb128	8
	.byte		"CANTRCV_TRCVMODE_STANDBY"
	.byte		0
	.sleb128	2
	.sleb128	0
.L629:
	.section	.debug_info,,n
.L585:
	.sleb128	9
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L584:
	.sleb128	10
	.byte		"uint8"
	.byte		0
	.4byte		.L585
	.section	.debug_info,,n
.L583:
	.sleb128	11
	.4byte		.L584
.L588:
	.sleb128	10
	.byte		"CanTrcv_TrcvModeType"
	.byte		0
	.4byte		.L589
.L587:
	.sleb128	11
	.4byte		.L588
.L602:
	.sleb128	10
	.byte		"CanIfDispatchConfig_t"
	.byte		0
	.4byte		.L603
.L601:
	.sleb128	11
	.4byte		.L602
	.section	.debug_info,,n
.L608:
	.sleb128	12
	.4byte		.L609-.L2
	.byte		0x1
	.section	.debug_info,,n
	.sleb128	13
	.4byte		.L584
	.sleb128	0
.L609:
	.section	.debug_info,,n
.L607:
	.sleb128	14
	.4byte		.L608
.L606:
	.sleb128	10
	.byte		"CanIfControllerBusOff_t"
	.byte		0
	.4byte		.L607
.L612:
	.sleb128	12
	.4byte		.L613-.L2
	.byte		0x1
.L616:
	.sleb128	9
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L615:
	.sleb128	10
	.byte		"uint32"
	.byte		0
	.4byte		.L616
.L614:
	.sleb128	10
	.byte		"EcuM_WakeupSourceType"
	.byte		0
	.4byte		.L615
	.sleb128	13
	.4byte		.L614
	.sleb128	0
.L613:
.L611:
	.sleb128	14
	.4byte		.L612
.L610:
	.sleb128	10
	.byte		"CanIfValidationWakeupEvent_t"
	.byte		0
	.4byte		.L611
.L619:
	.sleb128	12
	.4byte		.L620-.L2
	.byte		0x1
	.sleb128	13
	.4byte		.L584
.L621:
	.sleb128	10
	.byte		"CanIf_ControllerModeType"
	.byte		0
	.4byte		.L622
	.sleb128	13
	.4byte		.L621
	.sleb128	0
.L620:
.L618:
	.sleb128	14
	.4byte		.L619
.L617:
	.sleb128	10
	.byte		"CanIfControllerModeIndication_t"
	.byte		0
	.4byte		.L618
.L625:
	.sleb128	12
	.4byte		.L626-.L2
	.byte		0x1
	.sleb128	13
	.4byte		.L584
	.sleb128	13
	.4byte		.L588
	.sleb128	0
.L626:
.L624:
	.sleb128	14
	.4byte		.L625
.L623:
	.sleb128	10
	.byte		"CanIfTrcvModeIndication_t"
	.byte		0
	.4byte		.L624
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L586:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),3
	.d2locend
.L590:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo5),4
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo7),0
	.d2locend
.L596:
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo9),3
	.d2locend
.L597:
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo9),4
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "CanIf_TrcvModeIndication"
	.wrcm.nstrlist "calls", "CanIf_ProcessTrcvModeIndication"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "CanIf_ProcessTrcvModeIndication"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "indirectCalls", 1
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanIf_TrcvModeIndication.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanIf_TrcvModeIndication.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanIf_TrcvModeIndication.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanIf_TrcvModeIndication.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanIf_TrcvModeIndication.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanIf_TrcvModeIndication.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\CanIf\ssc\make\..\src\CanIf_TrcvModeIndication.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
