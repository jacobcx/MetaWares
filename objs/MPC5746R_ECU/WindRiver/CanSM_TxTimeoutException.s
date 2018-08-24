#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"CanSM_TxTimeoutException.c"
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
# FUNC(void, CANSM_CODE) CanSM_TxTimeoutException(VAR(NetworkHandleType, AUTOMATIC) network)
	.align		2
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanSM\\ssc\\make\\..\\src\\CanSM_TxTimeoutException.c"
        .d2line         53,24
#$$ld
.L588:

#$$bf	CanSM_TxTimeoutException,interprocedural,rasave,nostackparams
	.globl		CanSM_TxTimeoutException
	.d2_cfa_start __cie
CanSM_TxTimeoutException:
.Llo1:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r0,r3		# network=r0 network=r3
	.d2prologue_end
# {
#     /* <Requirements> SWS_CanSM_00410 ADD_CANSM410_1 ADD_CANSM410_2 CANSM411 CANSM412 <EndRequirements> */
# 
#     if(CanSM_LTConfig.RAM->initState == CANSM_UNINITED)
	.d2line		57
	lis		r3,CanSM_LTConfig@ha
.Llo2:
	lwz		r3,CanSM_LTConfig@l(r3)
	lwz		r3,0(r3)
	se_cmpi		r3,1
	bc		1,2,.L575	# eq
	.section	.text_vle
.L596:
#     {
# #if (CANSM_DEV_ERROR_DETECT == STD_ON)
#         /* Report not-initialized error to Det */
#         (void)Det_ReportError(CANSM_MODULE_ID, CANSM_INSTANCE_ID, CANSM_SID_TXTIMEOUT_EXCEPTION, CANSM_E_UNINIT);
# #endif
#     }
#     else
#     {
#         P2CONST(CanSM_NetworkType,AUTOMATIC,CANSM_APPL_CONST) net;
#         /* Find internal network descriptor */
#         net = CanSM_FindNetwork(network);
	.d2line		68
.Llo3:
	rlwinm		r3,r0,0,24,31		# network=r0
	bl		CanSM_FindNetwork
	.d2line		69
.Llo4:
	mr.		r30,r3		# net=?a5 net=r3
#         if(net != NULL_PTR)
.Llo7:
	bc		1,2,.L575	# eq
	.section	.text_vle
.L606:
#         {
#             CONST(uint16, AUTOMATIC) state = net->RAM->State;
	.d2line		71
	lwz		r3,0(r30)		# net=r3 net=r30
	lhz		r31,2(r3)		# net=r3
.Llo8:
	mr		r31,r31		# state=r31 state=r31
#             if(CanSM_Lock(net) == TRUE)
	.d2line		72
	mr		r3,r30		# net=r3 net=r30
	bl		CanSM_Lock
	rlwinm		r3,r3,0,24,31		# net=r3 net=r3
	se_cmpi		r3,1		# net=r3
	bc		0,2,.L579	# ne
#             {
# 
#                 if(state == CANSM_ST_FC_BO_NOBO)
	.d2line		75
	rlwinm		r31,r31,0,16,31		# state=r31 state=r31
	se_cmpi		r31,8		# state=r31
	bc		0,2,.L580	# ne
#                 {
#                     (void)CanSM_ProcessSM(net->CanSMNetworkIndex, CANSM_FC_BO_NOBO_TO_NC_TO_FC, FALSE);
	.d2line		77
.Llo9:
	lbz		r3,4(r30)		# net=r3 net=r30
	diab.li		r4,15
	diab.li		r5,0
	bl		CanSM_ProcessSM
.L580:
#                 }
#                 CanSM_UnLock(net);
	.d2line		79
	mr		r3,r30		# net=r3 net=r30
	bl		CanSM_UnLock
	b		.L575
.L579:
#             }
#             else
#             {
#                 if(state == CANSM_ST_FC_BO_NOBO)
	.d2line		83
.Llo10:
	rlwinm		r31,r31,0,16,31		# state=r31 state=r31
	se_cmpi		r31,8		# state=r31
	bc		0,2,.L575	# ne
#                 {
#                     net->RAM->CanSM_TxTimeoutIndication = TRUE;
	.d2line		85
.Llo11:
	diab.li		r0,1		# network=r0
.Llo5:
	lwz		r3,0(r30)		# net=r3 net=r30
	stb		r0,38(r3)		# net=r3 network=r0
	.section	.text_vle
.L607:
	.section	.text_vle
.L597:
.L575:
#                 }
#             }
#         }
# #if (CANSM_DEV_ERROR_DETECT == STD_ON)
#         else
#         {
#             /* If network was not found */
#             (void)Det_ReportError(CANSM_MODULE_ID, CANSM_INSTANCE_ID, CANSM_SID_TXTIMEOUT_EXCEPTION, CANSM_E_INVALID_NETWORK_HANDLE);
#         }
# #endif
#     }
# }
	.d2line		97
	.d2epilogue_begin
.Llo6:
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# network=r0
	mtspr		lr,r0		# network=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L589:
	.type		CanSM_TxTimeoutException,@function
	.size		CanSM_TxTimeoutException,.-CanSM_TxTimeoutException
# Number of nodes = 62

# Allocations for CanSM_TxTimeoutException
#	?a4		network
#	?a5		net
#	?a6		state

# Allocations for module
	.section	.text_vle
	.0byte		.L615
	.section	.text_vle
#$$ld
.L5:
.L616:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanSM\\ssc\\make\\..\\inc\\CanSM_Types.h"
.L590:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanSM\\ssc\\make\\..\\src\\CanSM_TxTimeoutException.c"
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanSM\\ssc\\make\\..\\src\\CanSM_TxTimeoutException.c"
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
.L591:
	.sleb128	2
	.4byte		.L587-.L2
	.byte		"CanSM_TxTimeoutException"
	.byte		0
	.4byte		.L590
	.uleb128	53
	.uleb128	24
	.byte		0x1
	.byte		0x1
	.4byte		.L588
	.4byte		.L589
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L590
	.uleb128	53
	.uleb128	24
	.byte		"network"
	.byte		0
	.4byte		.L592
	.4byte		.L595
	.section	.debug_info,,n
	.sleb128	4
	.4byte		.L599
	.4byte		.L596
	.4byte		.L597
	.section	.debug_info,,n
.L600:
	.sleb128	5
	.4byte		.L590
	.uleb128	66
	.uleb128	63
	.byte		"net"
	.byte		0
	.4byte		.L601
	.4byte		.L605
	.section	.debug_info,,n
	.sleb128	4
	.4byte		.L609
	.4byte		.L606
	.4byte		.L607
.L610:
	.sleb128	5
	.4byte		.L590
	.uleb128	71
	.uleb128	38
	.byte		"state"
	.byte		0
	.4byte		.L611
	.4byte		.L614
	.section	.debug_info,,n
	.sleb128	0
.L609:
	.section	.debug_info,,n
	.sleb128	0
.L599:
	.section	.debug_info,,n
	.sleb128	0
.L587:
	.section	.debug_info,,n
.L615:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L616
	.uleb128	500
	.uleb128	48
	.byte		"CanSM_LTConfig"
	.byte		0
	.4byte		.L617
	.section	.debug_info,,n
	.section	.debug_info,,n
.L604:
	.sleb128	7
	.4byte		.L616
	.uleb128	341
	.uleb128	14
	.4byte		.L620-.L2
	.uleb128	24
	.section	.debug_info,,n
.L552:
	.sleb128	8
	.byte		"RAM"
	.byte		0
	.4byte		.L621
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L553:
	.sleb128	8
	.byte		"CanSMNetworkIndex"
	.byte		0
	.4byte		.L624
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L554:
	.sleb128	8
	.byte		"CanSMNetworkHandle"
	.byte		0
	.4byte		.L625
	.sleb128	2
	.byte		0x23
	.uleb128	5
	.byte		0x1
.L555:
	.sleb128	8
	.byte		"CanSMTransceiverId_u8"
	.byte		0
	.4byte		.L624
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L556:
	.sleb128	8
	.byte		"CanSMPartialNetworkSupport"
	.byte		0
	.4byte		.L626
	.sleb128	2
	.byte		0x23
	.uleb128	7
	.byte		0x1
.L557:
	.sleb128	8
	.byte		"CanSMBorTxConfirmationPolling"
	.byte		0
	.4byte		.L626
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L558:
	.sleb128	8
	.byte		"ControllerType_R16_Size"
	.byte		0
	.4byte		.L624
	.sleb128	2
	.byte		0x23
	.uleb128	9
	.byte		0x1
.L559:
	.sleb128	8
	.byte		"CanSMBorCounterL1ToL2_u8"
	.byte		0
	.4byte		.L624
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L560:
	.sleb128	8
	.byte		"CanSMBorTimeL1_u16"
	.byte		0
	.4byte		.L611
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L561:
	.sleb128	8
	.byte		"CanSMBorTimeL2_u16"
	.byte		0
	.4byte		.L611
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L562:
	.sleb128	8
	.byte		"CanSMBorTimeTxEnsured_u16"
	.byte		0
	.4byte		.L611
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L563:
	.sleb128	8
	.byte		"CanSMBorErrEvent"
	.byte		0
	.4byte		.L628
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L564:
	.sleb128	8
	.byte		"ControllerType_R16"
	.byte		0
	.4byte		.L630
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L620:
.L623:
	.sleb128	7
	.4byte		.L616
	.uleb128	341
	.uleb128	14
	.4byte		.L634-.L2
	.uleb128	42
.L518:
	.sleb128	8
	.byte		"current_state"
	.byte		0
	.4byte		.L635
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L519:
	.sleb128	8
	.byte		"State"
	.byte		0
	.4byte		.L612
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L520:
	.sleb128	8
	.byte		"CanSMBorTimer_u16"
	.byte		0
	.4byte		.L612
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L521:
	.sleb128	8
	.byte		"CanSMBorTimerTxEnsured_u16"
	.byte		0
	.4byte		.L612
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L522:
	.sleb128	8
	.byte		"ChannelTimer_u16"
	.byte		0
	.4byte		.L612
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L523:
	.sleb128	8
	.byte		"RetryTimerEnabled"
	.byte		0
	.4byte		.L627
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L524:
	.sleb128	8
	.byte		"CanSMNetworkMode"
	.byte		0
	.4byte		.L636
	.sleb128	2
	.byte		0x23
	.uleb128	11
	.byte		0x1
.L525:
	.sleb128	8
	.byte		"CanSMBorCounter_u8"
	.byte		0
	.4byte		.L593
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L526:
	.sleb128	8
	.byte		"RequestModeTransition"
	.byte		0
	.4byte		.L593
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
.L527:
	.sleb128	8
	.byte		"RetryCounter_u8"
	.byte		0
	.4byte		.L593
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L528:
	.sleb128	8
	.byte		"RequestMode"
	.byte		0
	.4byte		.L636
	.sleb128	2
	.byte		0x23
	.uleb128	15
	.byte		0x1
.L529:
	.sleb128	8
	.byte		"CanSM_InitFlag"
	.byte		0
	.4byte		.L627
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L530:
	.sleb128	8
	.byte		"CanSMCheckedBaudrateStatus"
	.byte		0
	.4byte		.L593
	.sleb128	2
	.byte		0x23
	.uleb128	17
	.byte		0x1
.L531:
	.sleb128	8
	.byte		"CanSMCheckedBaudrate"
	.byte		0
	.4byte		.L612
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L532:
	.sleb128	8
	.byte		"CanSMChangedBaudrate"
	.byte		0
	.4byte		.L612
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L533:
	.sleb128	8
	.byte		"CurrentStateNoCom_b"
	.byte		0
	.4byte		.L627
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L534:
	.sleb128	8
	.byte		"TxTimeoutstate_b"
	.byte		0
	.4byte		.L627
	.sleb128	2
	.byte		0x23
	.uleb128	23
	.byte		0x1
.L535:
	.sleb128	8
	.byte		"T_REPEAT_MAX_HAPPENED"
	.byte		0
	.4byte		.L627
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L536:
	.sleb128	8
	.byte		"BufferedRequestMode"
	.byte		0
	.4byte		.L636
	.sleb128	2
	.byte		0x23
	.uleb128	25
	.byte		0x1
.L537:
	.sleb128	8
	.byte		"CalledFromMainfunction"
	.byte		0
	.4byte		.L627
	.sleb128	2
	.byte		0x23
	.uleb128	26
	.byte		0x1
.L538:
	.sleb128	8
	.byte		"Lock"
	.byte		0
	.4byte		.L627
	.sleb128	2
	.byte		0x23
	.uleb128	27
	.byte		0x1
.L539:
	.sleb128	8
	.byte		"CanSM_ChangeBaudrateRequest"
	.byte		0
	.4byte		.L627
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L540:
	.sleb128	8
	.byte		"CanSM_ComModeRequest"
	.byte		0
	.4byte		.L627
	.sleb128	2
	.byte		0x23
	.uleb128	29
	.byte		0x1
.L541:
	.sleb128	8
	.byte		"CanSM_TransceiverWakeFlagIndication"
	.byte		0
	.4byte		.L627
	.sleb128	2
	.byte		0x23
	.uleb128	30
	.byte		0x1
.L542:
	.sleb128	8
	.byte		"CanSM_TrcvWuFlagIndication"
	.byte		0
	.4byte		.L627
	.sleb128	2
	.byte		0x23
	.uleb128	31
	.byte		0x1
.L543:
	.sleb128	8
	.byte		"CanSM_CtrlBusOffIndication"
	.byte		0
	.4byte		.L627
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L544:
	.sleb128	8
	.byte		"CanSM_CtrlSleepIndication"
	.byte		0
	.4byte		.L627
	.sleb128	2
	.byte		0x23
	.uleb128	33
	.byte		0x1
.L545:
	.sleb128	8
	.byte		"CanSM_CtrlStoppedIndication"
	.byte		0
	.4byte		.L627
	.sleb128	2
	.byte		0x23
	.uleb128	34
	.byte		0x1
.L546:
	.sleb128	8
	.byte		"CanSM_CtrlStartedIndication"
	.byte		0
	.4byte		.L627
	.sleb128	2
	.byte		0x23
	.uleb128	35
	.byte		0x1
.L547:
	.sleb128	8
	.byte		"CanSM_TransceiverModeNormalIndication"
	.byte		0
	.4byte		.L627
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L548:
	.sleb128	8
	.byte		"CanSM_TransceiverModeStandbyIndication"
	.byte		0
	.4byte		.L627
	.sleb128	2
	.byte		0x23
	.uleb128	37
	.byte		0x1
.L549:
	.sleb128	8
	.byte		"CanSM_TxTimeoutIndication"
	.byte		0
	.4byte		.L627
	.sleb128	2
	.byte		0x23
	.uleb128	38
	.byte		0x1
.L550:
	.sleb128	8
	.byte		"BusOffDuringRecovery"
	.byte		0
	.4byte		.L627
	.sleb128	2
	.byte		0x23
	.uleb128	39
	.byte		0x1
.L551:
	.sleb128	8
	.byte		"BorFailTRepeatMax"
	.byte		0
	.4byte		.L627
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
	.sleb128	0
.L634:
.L619:
	.sleb128	7
	.4byte		.L616
	.uleb128	341
	.uleb128	14
	.4byte		.L637-.L2
	.uleb128	4
.L517:
	.sleb128	8
	.byte		"RAM"
	.byte		0
	.4byte		.L638
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L637:
.L640:
	.sleb128	7
	.4byte		.L616
	.uleb128	341
	.uleb128	14
	.4byte		.L641-.L2
	.uleb128	4
.L516:
	.sleb128	8
	.byte		"initState"
	.byte		0
	.4byte		.L642
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L641:
.L633:
	.sleb128	7
	.4byte		.L616
	.uleb128	341
	.uleb128	14
	.4byte		.L644-.L2
	.uleb128	8
.L514:
	.sleb128	8
	.byte		"RAM"
	.byte		0
	.4byte		.L645
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L515:
	.sleb128	8
	.byte		"ControllerId_pu8"
	.byte		0
	.4byte		.L624
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L644:
.L647:
	.sleb128	7
	.4byte		.L616
	.uleb128	341
	.uleb128	14
	.4byte		.L648-.L2
	.uleb128	3
.L511:
	.sleb128	8
	.byte		"ControllerSleepIndication"
	.byte		0
	.4byte		.L627
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L512:
	.sleb128	8
	.byte		"ControllerStoppedIndication"
	.byte		0
	.4byte		.L627
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L513:
	.sleb128	8
	.byte		"ControllerStartedIndication"
	.byte		0
	.4byte		.L627
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L648:
	.section	.debug_info,,n
.L643:
	.sleb128	9
	.4byte		.L616
	.uleb128	322
	.uleb128	14
	.4byte		.L649-.L2
	.uleb128	4
	.section	.debug_info,,n
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
.L649:
	.section	.debug_info,,n
.L594:
	.sleb128	11
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L593:
	.sleb128	12
	.byte		"uint8"
	.byte		0
	.4byte		.L594
.L592:
	.sleb128	12
	.byte		"NetworkHandleType"
	.byte		0
	.4byte		.L593
.L603:
	.sleb128	12
	.byte		"CanSM_NetworkType"
	.byte		0
	.4byte		.L604
	.section	.debug_info,,n
.L602:
	.sleb128	13
	.4byte		.L603
	.section	.debug_info,,n
.L601:
	.sleb128	14
	.4byte		.L602
.L613:
	.sleb128	11
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L612:
	.sleb128	12
	.byte		"uint16"
	.byte		0
	.4byte		.L613
.L611:
	.sleb128	13
	.4byte		.L612
.L618:
	.sleb128	12
	.byte		"CanSM_LTConfigType"
	.byte		0
	.4byte		.L619
.L617:
	.sleb128	13
	.4byte		.L618
.L622:
	.sleb128	12
	.byte		"CanSM_NetworkType_RAM"
	.byte		0
	.4byte		.L623
.L621:
	.sleb128	14
	.4byte		.L622
.L624:
	.sleb128	13
	.4byte		.L593
.L625:
	.sleb128	13
	.4byte		.L592
.L627:
	.sleb128	12
	.byte		"boolean"
	.byte		0
	.4byte		.L594
.L626:
	.sleb128	13
	.4byte		.L627
.L629:
	.sleb128	12
	.byte		"Dem_EventIdType"
	.byte		0
	.4byte		.L612
.L628:
	.sleb128	13
	.4byte		.L629
.L632:
	.sleb128	12
	.byte		"CanSM_ControllerType"
	.byte		0
	.4byte		.L633
.L631:
	.sleb128	13
	.4byte		.L632
.L630:
	.sleb128	14
	.4byte		.L631
.L635:
	.sleb128	12
	.byte		"CANSM_Escher_StateNumber_t"
	.byte		0
	.4byte		.L593
.L636:
	.sleb128	12
	.byte		"ComM_ModeType"
	.byte		0
	.4byte		.L593
.L639:
	.sleb128	12
	.byte		"CanSM_LTConfigType_RAM"
	.byte		0
	.4byte		.L640
.L638:
	.sleb128	14
	.4byte		.L639
.L642:
	.sleb128	12
	.byte		"CanSM_StateType"
	.byte		0
	.4byte		.L643
.L646:
	.sleb128	12
	.byte		"CanSM_ControllerType_RAM"
	.byte		0
	.4byte		.L647
.L645:
	.sleb128	14
	.4byte		.L646
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L595:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),0
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),0
	.d2locend
.L605:
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo6),30
	.d2locend
.L614:
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo9),31
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo11),31
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "CanSM_TxTimeoutException"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "CanSM_FindNetwork","CanSM_Lock","CanSM_ProcessSM","CanSM_UnLock"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanSM_TxTimeoutException.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanSM_TxTimeoutException.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanSM_TxTimeoutException.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanSM_TxTimeoutException.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanSM_TxTimeoutException.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanSM_TxTimeoutException.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\CanSM\ssc\make\..\src\CanSM_TxTimeoutException.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
