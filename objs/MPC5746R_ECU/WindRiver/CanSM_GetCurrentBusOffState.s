#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"CanSM_GetCurrentBusOffState.c"
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
# FUNC(Std_ReturnType, CANSM_CODE) CanSM_GetCurrentBusOffState(VAR(NetworkHandleType, AUTOMATIC) network, P2VAR(CanSM_BusOffStateType, AUTOMATIC,CANSM_APPL_DATA) CanSM_BusOffStatePtr)
	.align		2
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanSM\\ssc\\make\\..\\src\\CanSM_GetCurrentBusOffState.c"
        .d2line         58,34
#$$ld
.L591:

#$$bf	CanSM_GetCurrentBusOffState,interprocedural,rasave,nostackparams
	.globl		CanSM_GetCurrentBusOffState
	.d2_cfa_start __cie
CanSM_GetCurrentBusOffState:
.Llo1:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r0,r3		# network=r0 network=r3
	mr.		r31,r4		# CanSM_BusOffStatePtr=?a5 CanSM_BusOffStatePtr=r4
	.d2prologue_end
# {
#     VAR(uint8, AUTOMATIC) CanSMRetVal;
# 
#     CanSMRetVal = E_NOT_OK;
	.d2line		62
	diab.li		r30,1		# CanSMRetVal=r30
# 
#     /* Check if the input is a NULL pointer */
#     if(NULL_PTR == CanSM_BusOffStatePtr)
	.d2line		65
	bc		1,2,.L577	# eq
#     {
# #if (CANSM_DEV_ERROR_DETECT == STD_ON)
#         /* Report to DET */
#          (void)Det_ReportError(CANSM_MODULE_ID,
#                          CANSM_INSTANCE_ID,
#                          (uint8)15,  /*API ID */
#                          CANSM_E_PARAM_POINTER );
# #endif
#     }
#     else
#     {
#         if(CanSM_LTConfig.RAM->initState == CANSM_UNINITED)
	.d2line		77
.Llo2:
	lis		r3,CanSM_LTConfig@ha
.Llo3:
	lwz		r3,CanSM_LTConfig@l(r3)
	lwz		r3,0(r3)
	se_cmpi		r3,1
	bc		1,2,.L577	# eq
	.section	.text_vle
.L606:
#         {
# #if (CANSM_DEV_ERROR_DETECT == STD_ON)
#                 (void)Det_ReportError( CANSM_MODULE_ID, CANSM_INSTANCE_ID, CANSM_SID_CONTROLLER_BUSOFF, CANSM_E_UNINIT );
# #endif
#         }
#         else
#         {
#             P2CONST(CanSM_NetworkType,AUTOMATIC,CANSM_APPL_CONST)net;
#             /* Find internal network descriptor */
#             net = CanSM_FindNetwork(network);
	.d2line		87
	rlwinm		r3,r0,0,24,31		# network=r0
	bl		CanSM_FindNetwork
	.d2line		88
.Llo4:
	mr.		r4,r3		# net=?a7 net=r3
#             if(net != NULL_PTR)
.Llo20:
	bc		1,2,.L577	# eq
#             {
#                 CanSMRetVal = E_OK;
	.d2line		90
	diab.li		r30,0		# CanSMRetVal=r30
#                 /* Determine the current bus-off state using CanSMBorCounter_u8 */
#                 if ( ( net->RAM->CanSMBorCounter_u8 == 0 ) )
	.d2line		92
	lwz		r3,0(r4)		# net=r4
	lbz		r0,12(r3)		# network=r0
.Llo5:
	se_cmpi		r0,0		# network=r0
	bc		0,2,.L581	# ne
#                 {
#                     (*CanSM_BusOffStatePtr) = CANSM_NOBUSOFF;
	.d2line		94
.Llo6:
	diab.li		r0,0		# network=r0
.Llo7:
	stw		r0,0(r31)		# CanSM_BusOffStatePtr=r31 network=r0
	b		.L577
.L581:
#                 }
#                 else if ( ( ( net->RAM->CanSMBorCounter_u8 > 0 ) && ( net->RAM->CanSMBorCounter_u8 < net->CanSMBorCounterL1ToL2_u8 ) ) )
	.d2line		96
.Llo8:
	lwz		r3,0(r4)		# net=r4
	lbz		r0,12(r3)		# network=r0
.Llo9:
	se_cmpi		r0,0		# network=r0
	bc		0,1,.L583	# le
.Llo10:
	lwz		r3,0(r4)		# net=r4
	lbz		r0,12(r3)		# network=r0
.Llo11:
	lbz		r3,10(r4)		# net=r4
	se_cmp		r0,r3		# network=r0
	bc		0,0,.L583	# ge
#                 {
#                     (*CanSM_BusOffStatePtr) = CANSM_RECOVERYL1;
	.d2line		98
.Llo12:
	diab.li		r0,1		# network=r0
.Llo13:
	stw		r0,0(r31)		# CanSM_BusOffStatePtr=r31 network=r0
	b		.L577
.L583:
#                 }
#                 else
#                 {
#                     (*CanSM_BusOffStatePtr) = CANSM_RECOVERYL2;
	.d2line		102
.Llo14:
	diab.li		r0,2		# network=r0
.Llo15:
	stw		r0,0(r31)		# CanSM_BusOffStatePtr=r31 network=r0
	.section	.text_vle
.L607:
.L577:
#                 }
#             }
#             else
#             {
#                 /* If network was not found */
# #if (CANSM_DEV_ERROR_DETECT == STD_ON)
#                 (void)Det_ReportError(CANSM_MODULE_ID, CANSM_INSTANCE_ID, CANSM_SID_GET_CURRRENT_MODE, CANSM_E_INVALID_NETWORK_HANDLE);
# #endif
#             }
#         }
#     }
#     return CanSMRetVal;
	.d2line		114
.Llo16:
	rlwinm		r3,r30,0,24,31		# CanSMRetVal=r30
# }
	.d2line		115
	.d2epilogue_begin
.Llo17:
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo19:
	lwz		r0,36(r1)		# network=r0
	mtspr		lr,r0		# network=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo18:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L592:
	.type		CanSM_GetCurrentBusOffState,@function
	.size		CanSM_GetCurrentBusOffState,.-CanSM_GetCurrentBusOffState
# Number of nodes = 69

# Allocations for CanSM_GetCurrentBusOffState
#	?a4		network
#	?a5		CanSM_BusOffStatePtr
#	?a6		CanSMRetVal
#	?a7		net

# Allocations for module
	.section	.text_vle
	.0byte		.L616
	.section	.text_vle
#$$ld
.L5:
.L617:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanSM\\ssc\\make\\..\\inc\\CanSM_Types.h"
.L593:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanSM\\ssc\\make\\..\\src\\CanSM_GetCurrentBusOffState.c"
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
	.uleb128	15
	.byte		0x0
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanSM\\ssc\\make\\..\\src\\CanSM_GetCurrentBusOffState.c"
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
.L597:
	.sleb128	2
	.4byte		.L590-.L2
	.byte		"CanSM_GetCurrentBusOffState"
	.byte		0
	.4byte		.L593
	.uleb128	58
	.uleb128	34
	.4byte		.L594
	.byte		0x1
	.byte		0x1
	.4byte		.L591
	.4byte		.L592
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L593
	.uleb128	58
	.uleb128	34
	.byte		"network"
	.byte		0
	.4byte		.L598
	.4byte		.L599
	.sleb128	3
	.4byte		.L593
	.uleb128	58
	.uleb128	34
	.byte		"CanSM_BusOffStatePtr"
	.byte		0
	.4byte		.L600
	.4byte		.L603
	.section	.debug_info,,n
.L604:
	.sleb128	4
	.4byte		.L593
	.uleb128	60
	.uleb128	27
	.byte		"CanSMRetVal"
	.byte		0
	.4byte		.L595
	.4byte		.L605
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L609
	.4byte		.L606
	.4byte		.L607
.L610:
	.sleb128	4
	.4byte		.L593
	.uleb128	85
	.uleb128	66
	.byte		"net"
	.byte		0
	.4byte		.L611
	.4byte		.L615
	.section	.debug_info,,n
	.sleb128	0
.L609:
	.section	.debug_info,,n
	.sleb128	0
.L590:
	.section	.debug_info,,n
.L616:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L617
	.uleb128	500
	.uleb128	48
	.byte		"CanSM_LTConfig"
	.byte		0
	.4byte		.L618
	.section	.debug_info,,n
	.section	.debug_info,,n
.L614:
	.sleb128	7
	.4byte		.L617
	.uleb128	341
	.uleb128	14
	.4byte		.L621-.L2
	.uleb128	24
	.section	.debug_info,,n
.L552:
	.sleb128	8
	.byte		"RAM"
	.byte		0
	.4byte		.L622
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L553:
	.sleb128	8
	.byte		"CanSMNetworkIndex"
	.byte		0
	.4byte		.L625
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L554:
	.sleb128	8
	.byte		"CanSMNetworkHandle"
	.byte		0
	.4byte		.L626
	.sleb128	2
	.byte		0x23
	.uleb128	5
	.byte		0x1
.L555:
	.sleb128	8
	.byte		"CanSMTransceiverId_u8"
	.byte		0
	.4byte		.L625
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L556:
	.sleb128	8
	.byte		"CanSMPartialNetworkSupport"
	.byte		0
	.4byte		.L627
	.sleb128	2
	.byte		0x23
	.uleb128	7
	.byte		0x1
.L557:
	.sleb128	8
	.byte		"CanSMBorTxConfirmationPolling"
	.byte		0
	.4byte		.L627
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L558:
	.sleb128	8
	.byte		"ControllerType_R16_Size"
	.byte		0
	.4byte		.L625
	.sleb128	2
	.byte		0x23
	.uleb128	9
	.byte		0x1
.L559:
	.sleb128	8
	.byte		"CanSMBorCounterL1ToL2_u8"
	.byte		0
	.4byte		.L625
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L560:
	.sleb128	8
	.byte		"CanSMBorTimeL1_u16"
	.byte		0
	.4byte		.L629
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L561:
	.sleb128	8
	.byte		"CanSMBorTimeL2_u16"
	.byte		0
	.4byte		.L629
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L562:
	.sleb128	8
	.byte		"CanSMBorTimeTxEnsured_u16"
	.byte		0
	.4byte		.L629
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L563:
	.sleb128	8
	.byte		"CanSMBorErrEvent"
	.byte		0
	.4byte		.L632
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L564:
	.sleb128	8
	.byte		"ControllerType_R16"
	.byte		0
	.4byte		.L634
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L621:
.L624:
	.sleb128	7
	.4byte		.L617
	.uleb128	341
	.uleb128	14
	.4byte		.L638-.L2
	.uleb128	42
.L518:
	.sleb128	8
	.byte		"current_state"
	.byte		0
	.4byte		.L639
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L519:
	.sleb128	8
	.byte		"State"
	.byte		0
	.4byte		.L630
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L520:
	.sleb128	8
	.byte		"CanSMBorTimer_u16"
	.byte		0
	.4byte		.L630
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L521:
	.sleb128	8
	.byte		"CanSMBorTimerTxEnsured_u16"
	.byte		0
	.4byte		.L630
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L522:
	.sleb128	8
	.byte		"ChannelTimer_u16"
	.byte		0
	.4byte		.L630
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L523:
	.sleb128	8
	.byte		"RetryTimerEnabled"
	.byte		0
	.4byte		.L628
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L524:
	.sleb128	8
	.byte		"CanSMNetworkMode"
	.byte		0
	.4byte		.L640
	.sleb128	2
	.byte		0x23
	.uleb128	11
	.byte		0x1
.L525:
	.sleb128	8
	.byte		"CanSMBorCounter_u8"
	.byte		0
	.4byte		.L595
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L526:
	.sleb128	8
	.byte		"RequestModeTransition"
	.byte		0
	.4byte		.L595
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
.L527:
	.sleb128	8
	.byte		"RetryCounter_u8"
	.byte		0
	.4byte		.L595
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L528:
	.sleb128	8
	.byte		"RequestMode"
	.byte		0
	.4byte		.L640
	.sleb128	2
	.byte		0x23
	.uleb128	15
	.byte		0x1
.L529:
	.sleb128	8
	.byte		"CanSM_InitFlag"
	.byte		0
	.4byte		.L628
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L530:
	.sleb128	8
	.byte		"CanSMCheckedBaudrateStatus"
	.byte		0
	.4byte		.L595
	.sleb128	2
	.byte		0x23
	.uleb128	17
	.byte		0x1
.L531:
	.sleb128	8
	.byte		"CanSMCheckedBaudrate"
	.byte		0
	.4byte		.L630
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L532:
	.sleb128	8
	.byte		"CanSMChangedBaudrate"
	.byte		0
	.4byte		.L630
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L533:
	.sleb128	8
	.byte		"CurrentStateNoCom_b"
	.byte		0
	.4byte		.L628
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L534:
	.sleb128	8
	.byte		"TxTimeoutstate_b"
	.byte		0
	.4byte		.L628
	.sleb128	2
	.byte		0x23
	.uleb128	23
	.byte		0x1
.L535:
	.sleb128	8
	.byte		"T_REPEAT_MAX_HAPPENED"
	.byte		0
	.4byte		.L628
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L536:
	.sleb128	8
	.byte		"BufferedRequestMode"
	.byte		0
	.4byte		.L640
	.sleb128	2
	.byte		0x23
	.uleb128	25
	.byte		0x1
.L537:
	.sleb128	8
	.byte		"CalledFromMainfunction"
	.byte		0
	.4byte		.L628
	.sleb128	2
	.byte		0x23
	.uleb128	26
	.byte		0x1
.L538:
	.sleb128	8
	.byte		"Lock"
	.byte		0
	.4byte		.L628
	.sleb128	2
	.byte		0x23
	.uleb128	27
	.byte		0x1
.L539:
	.sleb128	8
	.byte		"CanSM_ChangeBaudrateRequest"
	.byte		0
	.4byte		.L628
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L540:
	.sleb128	8
	.byte		"CanSM_ComModeRequest"
	.byte		0
	.4byte		.L628
	.sleb128	2
	.byte		0x23
	.uleb128	29
	.byte		0x1
.L541:
	.sleb128	8
	.byte		"CanSM_TransceiverWakeFlagIndication"
	.byte		0
	.4byte		.L628
	.sleb128	2
	.byte		0x23
	.uleb128	30
	.byte		0x1
.L542:
	.sleb128	8
	.byte		"CanSM_TrcvWuFlagIndication"
	.byte		0
	.4byte		.L628
	.sleb128	2
	.byte		0x23
	.uleb128	31
	.byte		0x1
.L543:
	.sleb128	8
	.byte		"CanSM_CtrlBusOffIndication"
	.byte		0
	.4byte		.L628
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L544:
	.sleb128	8
	.byte		"CanSM_CtrlSleepIndication"
	.byte		0
	.4byte		.L628
	.sleb128	2
	.byte		0x23
	.uleb128	33
	.byte		0x1
.L545:
	.sleb128	8
	.byte		"CanSM_CtrlStoppedIndication"
	.byte		0
	.4byte		.L628
	.sleb128	2
	.byte		0x23
	.uleb128	34
	.byte		0x1
.L546:
	.sleb128	8
	.byte		"CanSM_CtrlStartedIndication"
	.byte		0
	.4byte		.L628
	.sleb128	2
	.byte		0x23
	.uleb128	35
	.byte		0x1
.L547:
	.sleb128	8
	.byte		"CanSM_TransceiverModeNormalIndication"
	.byte		0
	.4byte		.L628
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L548:
	.sleb128	8
	.byte		"CanSM_TransceiverModeStandbyIndication"
	.byte		0
	.4byte		.L628
	.sleb128	2
	.byte		0x23
	.uleb128	37
	.byte		0x1
.L549:
	.sleb128	8
	.byte		"CanSM_TxTimeoutIndication"
	.byte		0
	.4byte		.L628
	.sleb128	2
	.byte		0x23
	.uleb128	38
	.byte		0x1
.L550:
	.sleb128	8
	.byte		"BusOffDuringRecovery"
	.byte		0
	.4byte		.L628
	.sleb128	2
	.byte		0x23
	.uleb128	39
	.byte		0x1
.L551:
	.sleb128	8
	.byte		"BorFailTRepeatMax"
	.byte		0
	.4byte		.L628
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
	.sleb128	0
.L638:
.L620:
	.sleb128	7
	.4byte		.L617
	.uleb128	341
	.uleb128	14
	.4byte		.L641-.L2
	.uleb128	4
.L517:
	.sleb128	8
	.byte		"RAM"
	.byte		0
	.4byte		.L642
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L641:
.L644:
	.sleb128	7
	.4byte		.L617
	.uleb128	341
	.uleb128	14
	.4byte		.L645-.L2
	.uleb128	4
.L516:
	.sleb128	8
	.byte		"initState"
	.byte		0
	.4byte		.L646
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L645:
.L637:
	.sleb128	7
	.4byte		.L617
	.uleb128	341
	.uleb128	14
	.4byte		.L648-.L2
	.uleb128	8
.L514:
	.sleb128	8
	.byte		"RAM"
	.byte		0
	.4byte		.L649
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L515:
	.sleb128	8
	.byte		"ControllerId_pu8"
	.byte		0
	.4byte		.L625
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L648:
.L651:
	.sleb128	7
	.4byte		.L617
	.uleb128	341
	.uleb128	14
	.4byte		.L652-.L2
	.uleb128	3
.L511:
	.sleb128	8
	.byte		"ControllerSleepIndication"
	.byte		0
	.4byte		.L628
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L512:
	.sleb128	8
	.byte		"ControllerStoppedIndication"
	.byte		0
	.4byte		.L628
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L513:
	.sleb128	8
	.byte		"ControllerStartedIndication"
	.byte		0
	.4byte		.L628
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L652:
	.section	.debug_info,,n
.L602:
	.sleb128	9
	.4byte		.L617
	.uleb128	341
	.uleb128	14
	.4byte		.L653-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	10
	.byte		"CANSM_NOBUSOFF"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"CANSM_RECOVERYL1"
	.byte		0
	.sleb128	1
	.sleb128	10
	.byte		"CANSM_RECOVERYL2"
	.byte		0
	.sleb128	2
	.sleb128	10
	.byte		"CANSM_RECOVERYL2ERR"
	.byte		0
	.sleb128	3
	.sleb128	0
.L653:
.L647:
	.sleb128	9
	.4byte		.L617
	.uleb128	322
	.uleb128	14
	.4byte		.L654-.L2
	.uleb128	4
	.sleb128	10
	.byte		"CANSM_INITED"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"CANSM_UNINITED"
	.byte		0
	.sleb128	1
	.sleb128	10
	.byte		"CANSM_INITIALIZING"
	.byte		0
	.sleb128	2
	.sleb128	0
.L654:
	.section	.debug_info,,n
.L596:
	.sleb128	11
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L595:
	.sleb128	12
	.byte		"uint8"
	.byte		0
	.4byte		.L596
.L594:
	.sleb128	12
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L595
.L598:
	.sleb128	12
	.byte		"NetworkHandleType"
	.byte		0
	.4byte		.L595
.L601:
	.sleb128	12
	.byte		"CanSM_BusOffStateType"
	.byte		0
	.4byte		.L602
	.section	.debug_info,,n
.L600:
	.sleb128	13
	.4byte		.L601
.L613:
	.sleb128	12
	.byte		"CanSM_NetworkType"
	.byte		0
	.4byte		.L614
	.section	.debug_info,,n
.L612:
	.sleb128	14
	.4byte		.L613
.L611:
	.sleb128	13
	.4byte		.L612
.L619:
	.sleb128	12
	.byte		"CanSM_LTConfigType"
	.byte		0
	.4byte		.L620
.L618:
	.sleb128	14
	.4byte		.L619
.L623:
	.sleb128	12
	.byte		"CanSM_NetworkType_RAM"
	.byte		0
	.4byte		.L624
.L622:
	.sleb128	13
	.4byte		.L623
.L625:
	.sleb128	14
	.4byte		.L595
.L626:
	.sleb128	14
	.4byte		.L598
.L628:
	.sleb128	12
	.byte		"boolean"
	.byte		0
	.4byte		.L596
.L627:
	.sleb128	14
	.4byte		.L628
.L631:
	.sleb128	11
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L630:
	.sleb128	12
	.byte		"uint16"
	.byte		0
	.4byte		.L631
.L629:
	.sleb128	14
	.4byte		.L630
.L633:
	.sleb128	12
	.byte		"Dem_EventIdType"
	.byte		0
	.4byte		.L630
.L632:
	.sleb128	14
	.4byte		.L633
.L636:
	.sleb128	12
	.byte		"CanSM_ControllerType"
	.byte		0
	.4byte		.L637
.L635:
	.sleb128	14
	.4byte		.L636
.L634:
	.sleb128	13
	.4byte		.L635
.L639:
	.sleb128	12
	.byte		"CANSM_Escher_StateNumber_t"
	.byte		0
	.4byte		.L595
.L640:
	.sleb128	12
	.byte		"ComM_ModeType"
	.byte		0
	.4byte		.L595
.L643:
	.sleb128	12
	.byte		"CanSM_LTConfigType_RAM"
	.byte		0
	.4byte		.L644
.L642:
	.sleb128	13
	.4byte		.L643
.L646:
	.sleb128	12
	.byte		"CanSM_StateType"
	.byte		0
	.4byte		.L647
.L650:
	.sleb128	12
	.byte		"CanSM_ControllerType_RAM"
	.byte		0
	.4byte		.L651
.L649:
	.sleb128	13
	.4byte		.L650
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L599:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),0
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),0
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),0
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),0
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo12),0
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo14),0
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo16),0
	.d2locend
.L603:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),4
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo16),31
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo18),4
	.d2locend
.L605:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo19),30
	.d2locend
.L615:
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo12),4
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo16),4
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "CanSM_GetCurrentBusOffState"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "CanSM_FindNetwork"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanSM_GetCurrentBusOffState.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanSM_GetCurrentBusOffState.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanSM_GetCurrentBusOffState.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanSM_GetCurrentBusOffState.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanSM_GetCurrentBusOffState.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanSM_GetCurrentBusOffState.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\CanSM\ssc\make\..\src\CanSM_GetCurrentBusOffState.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
