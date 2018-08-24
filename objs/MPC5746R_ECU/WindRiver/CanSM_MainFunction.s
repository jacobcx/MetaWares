#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"CanSM_MainFunction.c"
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
# FUNC(void, CANSM_CODE)CanSM_MainFunction(void)
	.align		2
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanSM\\ssc\\make\\..\\src\\CanSM_MainFunction.c"
        .d2line         51,23
#$$ld
.L602:

#$$bf	CanSM_MainFunction,interprocedural,rasave,nostackparams
	.globl		CanSM_MainFunction
	.d2_cfa_start __cie
CanSM_MainFunction:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr
.Llo1:
	stmw		r26,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	26,31,1,1
	stw		r0,52(r1)		# ltConfig=r0
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     /* <Requirements> CANSM065 CANSM167 <EndRequirements> */
# 
#     P2CONST(CanSM_LTConfigType,AUTOMATIC,CANSM_APPL_CONST)ltConfig;
#     ltConfig = (P2CONST(CanSM_LTConfigType, AUTOMATIC, CANSM_APPL_CONST)) (&CanSM_LTConfig);
	.d2line		56
	diab.li		r0,0		# ltConfig=r0
# 
#     if(ltConfig->RAM->initState == CANSM_UNINITED)
	.d2line		58
.Llo2:
	lis		r3,CanSM_LTConfig@ha
	lwz		r3,CanSM_LTConfig@l(r3)
	lwz		r0,0(r3)		# ltConfig=r0
.Llo3:
	se_cmpi		r0,1		# ltConfig=r0
	bc		1,2,.L577	# eq
	.section	.text_vle
.L612:
#     {
# #if (CANSM_DEV_ERROR_DETECT == STD_ON)
#             (void)Det_ReportError( CANSM_MODULE_ID, CANSM_INSTANCE_ID, CANSM_SID_MAIN_FUNCTION, CANSM_E_UNINIT );
# #endif
#     }
#     else
#     {
#         VAR(uint8, AUTOMATIC) CanSM_NetworkTypeiter;
#         P2CONST(CanSM_NetworkType, AUTOMATIC,CANSM_APPL_CONST) networks;
#         VAR(uint8, AUTOMATIC) networks_Size;
# 
#         networks = CanSM_Cfg_p->NetworkType_R14;
	.d2line		70
.Llo4:
	lis		r3,CanSM_Cfg_p@ha
	lwz		r4,CanSM_Cfg_p@l(r3)
	lwz		r30,16(r4)
.Llo26:
	mr		r30,r30		# networks=r30 networks=r30
#         networks_Size = CanSM_Cfg_p->NetworkType_R14_Size;
	.d2line		71
	lwz		r3,CanSM_Cfg_p@l(r3)
	lbz		r29,0(r3)
.Llo27:
	mr		r29,r29		# networks_Size=r29 networks_Size=r29
# 
#         for(CanSM_NetworkTypeiter = 0; CanSM_NetworkTypeiter < networks_Size; CanSM_NetworkTypeiter++)
	.d2line		73
	diab.li		r31,0		# CanSM_NetworkTypeiter=r31
.L578:
.Llo25:
	rlwinm		r0,r31,0,24,31		# ltConfig=r0 CanSM_NetworkTypeiter=r31
.Llo5:
	rlwinm		r3,r29,0,24,31		# network=r3 networks_Size=r29
.Llo28:
	se_cmp		r0,r3		# ltConfig=r0 network=r3
	bc		0,0,.L577	# ge
	.section	.text_vle
.L628:
#         {
#             P2CONST(CanSM_NetworkType, AUTOMATIC,CANSM_APPL_CONST)network;
#             P2VAR(CanSM_NetworkType_RAM, AUTOMATIC,CANSM_APPL_CONST)network_RAM;
#             network = &networks[CanSM_NetworkTypeiter];
	.d2line		77
.Llo6:
	rlwinm		r0,r31,0,24,31		# ltConfig=r0 CanSM_NetworkTypeiter=r31
.Llo7:
	rlwinm		r3,r0,5,0,26		# network=r3 ltConfig=r0
.Llo29:
	se_slwi		r0,3		# ltConfig=r0 ltConfig=r0
	subf		r0,r0,r3		# ltConfig=r0 ltConfig=r0 network=r3
	add		r28,r0,r30		# network=r28 ltConfig=r0 networks=r30
	mr		r28,r28		# network=r28 network=r28
#             network_RAM = network->RAM;
	.d2line		78
	lwz		r27,0(r28)		# network_RAM=r27 network=r28
.Llo33:
	mr		r27,r27		# network_RAM=r27 network_RAM=r27
# 
#             /* Step timers */
#             network_RAM->CanSMBorTimer_u16++;
	.d2line		81
	lhz		r3,4(r27)		# network=r3 network_RAM=r27
	se_addi		r3,1		# network=r3 network=r3
	sth		r3,4(r27)		# network_RAM=r27 network=r3
#             network_RAM->CanSMBorTimerTxEnsured_u16++;
	.d2line		82
	lhz		r3,6(r27)		# network=r3 network_RAM=r27
	se_addi		r3,1		# network=r3 network=r3
	sth		r3,6(r27)		# network_RAM=r27 network=r3
# 
#             CANSM_STEP_TIMER(network_RAM->ChannelTimer_u16, network_RAM->RetryTimerEnabled);
	.d2line		84
	lbz		r0,10(r27)		# ltConfig=r0 network_RAM=r27
	se_cmpi		r0,1		# ltConfig=r0
	bc		0,2,.L582	# ne
.Llo8:
	lhz		r0,8(r27)		# ltConfig=r0 network_RAM=r27
.Llo9:
	se_cmpi		r0,0		# ltConfig=r0
	bc		0,1,.L582	# le
.Llo10:
	lhz		r0,8(r27)		# ltConfig=r0 network_RAM=r27
.Llo11:
	diab.li		r3,65535		# network=r3
	se_add		r0,r3		# ltConfig=r0 ltConfig=r0 network=r3
	sth		r0,8(r27)		# network_RAM=r27 ltConfig=r0
.L582:
# 
#             /* Execute state machine */
#             /* PRQA S 3415 1 */ /* CanSM_Lock(network) is not needed to call if CanSM_NoLock is TRUE */
#             if((CanSM_NoLock == TRUE) || (CanSM_Lock(network) == TRUE))
	.d2line		88
.Llo12:
	lis		r3,CanSM_NoLock@ha		# network=r3
	lbz		r0,CanSM_NoLock@l(r3)		# ltConfig=r0 network=r3
.Llo13:
	se_cmpi		r0,1		# ltConfig=r0
	bc		1,2,.L589	# eq
.Llo14:
	mr		r3,r28		# network=r3 network=r28
	bl		CanSM_Lock
	rlwinm		r3,r3,0,24,31		# network=r3 network=r3
	se_cmpi		r3,1		# network=r3
	bc		0,2,.L583	# ne
.L589:
	.section	.text_vle
.L639:
#             {
#                 VAR(uint8, AUTOMATIC)   Transition;
#                 VAR(uint8, AUTOMATIC)   prevTransition;
# 
#                 /* Process stored indications and requests */
#                 Transition = CanSM_GetApiTransition(network);
	.d2line		94
	mr		r3,r28		# network=r3 network=r28
	bl		CanSM_GetApiTransition
.Llo34:
	mr		r4,r3		# Transition=r4 Transition=r3
.L584:
#                 while(Transition != CANSM_NO_TRANSITION)
	.d2line		95
.Llo35:
	rlwinm		r3,r4,0,24,31		# network=r3 Transition=r4
.Llo36:
	se_cmpi		r3,0		# network=r3
	bc		1,2,.L586	# eq
#                 {
#                     (void)CanSM_ProcessSM(network->CanSMNetworkIndex, Transition, FALSE);
	.d2line		97
	lbz		r3,4(r28)		# network=r3 network=r28
	rlwinm		r4,r4,0,24,31		# Transition=r4 Transition=r4
	diab.li		r5,0
	bl		CanSM_ProcessSM
#                     Transition = CanSM_GetApiTransition(network);
	.d2line		98
	mr		r3,r28		# network=r3 network=r28
	bl		CanSM_GetApiTransition
	mr		r4,r3		# Transition=r4 Transition=r3
	b		.L584
.L586:
#                 }
# 
#                 do
#                 {
#                     prevTransition = network->RAM->RequestModeTransition;
	.d2line		103
.Llo37:
	lwz		r3,0(r28)		# network=r3 network=r28
	lbz		r26,13(r3)		# prevTransition=r26 network=r3
.Llo38:
	mr		r26,r26		# prevTransition=r26 prevTransition=r26
#                     /* Execute periodic state machine */
#                     (void)CanSM_ProcessSM(network->CanSMNetworkIndex, network_RAM->RequestModeTransition, TRUE);
	.d2line		105
	lbz		r3,4(r28)		# network=r3 network=r28
	lbz		r4,13(r27)		# Transition=r4 network_RAM=r27
	diab.li		r5,1
	bl		CanSM_ProcessSM
#                 }while((network_RAM->RequestModeTransition != CANSM_NO_TRANSITION) && (prevTransition != network_RAM->RequestModeTransition));
	.d2line		106
	lbz		r0,13(r27)		# ltConfig=r0 network_RAM=r27
.Llo15:
	se_cmpi		r0,0		# ltConfig=r0
	bc		1,2,.L590	# eq
.Llo16:
	rlwinm		r26,r26,0,24,31		# prevTransition=r26 prevTransition=r26
	lbz		r0,13(r27)		# ltConfig=r0 network_RAM=r27
.Llo17:
	se_cmp		r26,r0		# prevTransition=r26 ltConfig=r0
	bc		0,2,.L586	# ne
.L590:
#                 if(CanSM_NoLock == FALSE)
	.d2line		107
.Llo18:
	lis		r3,CanSM_NoLock@ha		# network=r3
	lbz		r0,CanSM_NoLock@l(r3)		# ltConfig=r0 network=r3
.Llo19:
	se_cmpi		r0,0		# ltConfig=r0
	bc		0,2,.L583	# ne
#                 {
#                     CanSM_UnLock(network);
	.d2line		109
.Llo20:
	mr		r3,r28		# network=r3 network=r28
	bl		CanSM_UnLock
	.section	.text_vle
.L640:
.L583:
	.section	.text_vle
.L629:
#                 }
#             }
#         }
	.d2line		112
.Llo30:
	diab.addi		r0,r31,1		# ltConfig=r0 CanSM_NetworkTypeiter=r31
	se_addi		r31,1		# CanSM_NetworkTypeiter=r31 CanSM_NetworkTypeiter=r31
	b		.L578
	.section	.text_vle
.L613:
.L577:
#     }
#     if(ltConfig->RAM->initState == CANSM_INITIALIZING)
	.d2line		114
	lis		r3,CanSM_LTConfig@ha		# network=r3
.Llo31:
	lwz		r3,CanSM_LTConfig@l(r3)		# network=r3 network=r3
	lwz		r0,0(r3)		# ltConfig=r0 network=r3
.Llo21:
	se_cmpi		r0,2		# ltConfig=r0
	bc		0,2,.L575	# ne
#     {
#         ltConfig->RAM->initState = CANSM_INITED;
	.d2line		116
.Llo22:
	diab.li		r0,0		# ltConfig=r0
.Llo23:
	lis		r3,CanSM_LTConfig@ha		# network=r3
.Llo32:
	lwz		r3,CanSM_LTConfig@l(r3)		# network=r3 network=r3
	stw		r0,0(r3)		# network=r3 ltConfig=r0
.L575:
#     }
# }
	.d2line		118
	.d2epilogue_begin
.Llo24:
	lmw		r26,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	2,10
	lwz		r0,52(r1)		# ltConfig=r0
	mtspr		lr,r0		# ltConfig=lr
	diab.addi		r1,r1,48		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L603:
	.type		CanSM_MainFunction,@function
	.size		CanSM_MainFunction,.-CanSM_MainFunction
# Number of nodes = 169

# Allocations for CanSM_MainFunction
#	?a4		$$161
#	?a5		ltConfig
#	?a6		CanSM_NetworkTypeiter
#	?a7		networks
#	?a8		networks_Size
#	?a9		network
#	?a10		network_RAM
#	?a11		Transition
#	?a12		prevTransition

# Allocations for module
	.section	.text_vle
	.0byte		.L653
	.section	.text_vle
#$$ld
.L5:
.L655:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanSM\\ssc\\make\\..\\inc\\CanSM_Common.h"
.L648:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanSM\\ssc\\make\\..\\inc\\CanSM_Types.h"
.L604:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanSM\\ssc\\make\\..\\src\\CanSM_MainFunction.c"
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
	.uleb128	15
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	13
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanSM\\ssc\\make\\..\\src\\CanSM_MainFunction.c"
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
.L605:
	.sleb128	2
	.4byte		.L601-.L2
	.byte		"CanSM_MainFunction"
	.byte		0
	.4byte		.L604
	.uleb128	51
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L602
	.4byte		.L603
	.section	.debug_info,,n
.L606:
	.sleb128	3
	.4byte		.L604
	.uleb128	55
	.uleb128	59
	.byte		"ltConfig"
	.byte		0
	.4byte		.L607
	.4byte		.L611
	.section	.debug_info,,n
	.sleb128	4
	.4byte		.L615
	.4byte		.L612
	.4byte		.L613
.L616:
	.sleb128	3
	.4byte		.L604
	.uleb128	66
	.uleb128	31
	.byte		"CanSM_NetworkTypeiter"
	.byte		0
	.4byte		.L617
	.4byte		.L619
.L620:
	.sleb128	3
	.4byte		.L604
	.uleb128	67
	.uleb128	64
	.byte		"networks"
	.byte		0
	.4byte		.L621
	.4byte		.L625
.L626:
	.sleb128	3
	.4byte		.L604
	.uleb128	68
	.uleb128	31
	.byte		"networks_Size"
	.byte		0
	.4byte		.L617
	.4byte		.L627
	.section	.debug_info,,n
	.sleb128	4
	.4byte		.L631
	.4byte		.L628
	.4byte		.L629
.L632:
	.sleb128	3
	.4byte		.L604
	.uleb128	75
	.uleb128	67
	.byte		"network"
	.byte		0
	.4byte		.L621
	.4byte		.L633
.L634:
	.sleb128	3
	.4byte		.L604
	.uleb128	76
	.uleb128	69
	.byte		"network_RAM"
	.byte		0
	.4byte		.L635
	.4byte		.L638
	.section	.debug_info,,n
	.sleb128	4
	.4byte		.L642
	.4byte		.L639
	.4byte		.L640
.L643:
	.sleb128	3
	.4byte		.L604
	.uleb128	90
	.uleb128	41
	.byte		"Transition"
	.byte		0
	.4byte		.L617
	.4byte		.L644
.L645:
	.sleb128	3
	.4byte		.L604
	.uleb128	91
	.uleb128	41
	.byte		"prevTransition"
	.byte		0
	.4byte		.L617
	.4byte		.L646
	.section	.debug_info,,n
	.sleb128	0
.L642:
	.section	.debug_info,,n
	.sleb128	0
.L631:
	.section	.debug_info,,n
	.sleb128	0
.L615:
	.section	.debug_info,,n
	.sleb128	0
.L601:
	.section	.debug_info,,n
.L647:
	.sleb128	5
	.byte		0x1
	.byte		0x1
	.4byte		.L648
	.uleb128	490
	.uleb128	61
	.byte		"CanSM_Cfg_p"
	.byte		0
	.4byte		.L649
	.0byte		.L647
.L653:
	.sleb128	5
	.byte		0x1
	.byte		0x1
	.4byte		.L648
	.uleb128	500
	.uleb128	48
	.byte		"CanSM_LTConfig"
	.byte		0
	.4byte		.L608
	.section	.debug_info,,n
.L654:
	.sleb128	5
	.byte		0x1
	.byte		0x1
	.4byte		.L655
	.uleb128	33
	.uleb128	32
	.byte		"CanSM_NoLock"
	.byte		0
	.4byte		.L656
	.section	.debug_info,,n
.L652:
	.sleb128	6
	.4byte		.L648
	.uleb128	341
	.uleb128	14
	.4byte		.L657-.L2
	.uleb128	20
	.section	.debug_info,,n
.L565:
	.sleb128	7
	.byte		"NetworkType_R14_Size"
	.byte		0
	.4byte		.L658
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L566:
	.sleb128	7
	.byte		"RepetitionTime_u16"
	.byte		0
	.4byte		.L659
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L567:
	.sleb128	7
	.byte		"RepetitionMax_u8"
	.byte		0
	.4byte		.L658
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L568:
	.sleb128	7
	.byte		"PBtoPCHashValue_P"
	.byte		0
	.4byte		.L662
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L569:
	.sleb128	7
	.byte		"PBtoLTHashValue_P"
	.byte		0
	.4byte		.L662
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L570:
	.sleb128	7
	.byte		"NetworkType_R14"
	.byte		0
	.4byte		.L621
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L657:
.L624:
	.sleb128	6
	.4byte		.L648
	.uleb128	341
	.uleb128	14
	.4byte		.L666-.L2
	.uleb128	24
.L552:
	.sleb128	7
	.byte		"RAM"
	.byte		0
	.4byte		.L635
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L553:
	.sleb128	7
	.byte		"CanSMNetworkIndex"
	.byte		0
	.4byte		.L658
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L554:
	.sleb128	7
	.byte		"CanSMNetworkHandle"
	.byte		0
	.4byte		.L667
	.sleb128	2
	.byte		0x23
	.uleb128	5
	.byte		0x1
.L555:
	.sleb128	7
	.byte		"CanSMTransceiverId_u8"
	.byte		0
	.4byte		.L658
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L556:
	.sleb128	7
	.byte		"CanSMPartialNetworkSupport"
	.byte		0
	.4byte		.L669
	.sleb128	2
	.byte		0x23
	.uleb128	7
	.byte		0x1
.L557:
	.sleb128	7
	.byte		"CanSMBorTxConfirmationPolling"
	.byte		0
	.4byte		.L669
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L558:
	.sleb128	7
	.byte		"ControllerType_R16_Size"
	.byte		0
	.4byte		.L658
	.sleb128	2
	.byte		0x23
	.uleb128	9
	.byte		0x1
.L559:
	.sleb128	7
	.byte		"CanSMBorCounterL1ToL2_u8"
	.byte		0
	.4byte		.L658
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L560:
	.sleb128	7
	.byte		"CanSMBorTimeL1_u16"
	.byte		0
	.4byte		.L659
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L561:
	.sleb128	7
	.byte		"CanSMBorTimeL2_u16"
	.byte		0
	.4byte		.L659
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L562:
	.sleb128	7
	.byte		"CanSMBorTimeTxEnsured_u16"
	.byte		0
	.4byte		.L659
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L563:
	.sleb128	7
	.byte		"CanSMBorErrEvent"
	.byte		0
	.4byte		.L670
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L564:
	.sleb128	7
	.byte		"ControllerType_R16"
	.byte		0
	.4byte		.L672
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L666:
.L637:
	.sleb128	6
	.4byte		.L648
	.uleb128	341
	.uleb128	14
	.4byte		.L676-.L2
	.uleb128	42
.L518:
	.sleb128	7
	.byte		"current_state"
	.byte		0
	.4byte		.L677
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L519:
	.sleb128	7
	.byte		"State"
	.byte		0
	.4byte		.L660
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L520:
	.sleb128	7
	.byte		"CanSMBorTimer_u16"
	.byte		0
	.4byte		.L660
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L521:
	.sleb128	7
	.byte		"CanSMBorTimerTxEnsured_u16"
	.byte		0
	.4byte		.L660
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L522:
	.sleb128	7
	.byte		"ChannelTimer_u16"
	.byte		0
	.4byte		.L660
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L523:
	.sleb128	7
	.byte		"RetryTimerEnabled"
	.byte		0
	.4byte		.L656
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L524:
	.sleb128	7
	.byte		"CanSMNetworkMode"
	.byte		0
	.4byte		.L678
	.sleb128	2
	.byte		0x23
	.uleb128	11
	.byte		0x1
.L525:
	.sleb128	7
	.byte		"CanSMBorCounter_u8"
	.byte		0
	.4byte		.L617
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L526:
	.sleb128	7
	.byte		"RequestModeTransition"
	.byte		0
	.4byte		.L617
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
.L527:
	.sleb128	7
	.byte		"RetryCounter_u8"
	.byte		0
	.4byte		.L617
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L528:
	.sleb128	7
	.byte		"RequestMode"
	.byte		0
	.4byte		.L678
	.sleb128	2
	.byte		0x23
	.uleb128	15
	.byte		0x1
.L529:
	.sleb128	7
	.byte		"CanSM_InitFlag"
	.byte		0
	.4byte		.L656
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L530:
	.sleb128	7
	.byte		"CanSMCheckedBaudrateStatus"
	.byte		0
	.4byte		.L617
	.sleb128	2
	.byte		0x23
	.uleb128	17
	.byte		0x1
.L531:
	.sleb128	7
	.byte		"CanSMCheckedBaudrate"
	.byte		0
	.4byte		.L660
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L532:
	.sleb128	7
	.byte		"CanSMChangedBaudrate"
	.byte		0
	.4byte		.L660
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L533:
	.sleb128	7
	.byte		"CurrentStateNoCom_b"
	.byte		0
	.4byte		.L656
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L534:
	.sleb128	7
	.byte		"TxTimeoutstate_b"
	.byte		0
	.4byte		.L656
	.sleb128	2
	.byte		0x23
	.uleb128	23
	.byte		0x1
.L535:
	.sleb128	7
	.byte		"T_REPEAT_MAX_HAPPENED"
	.byte		0
	.4byte		.L656
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L536:
	.sleb128	7
	.byte		"BufferedRequestMode"
	.byte		0
	.4byte		.L678
	.sleb128	2
	.byte		0x23
	.uleb128	25
	.byte		0x1
.L537:
	.sleb128	7
	.byte		"CalledFromMainfunction"
	.byte		0
	.4byte		.L656
	.sleb128	2
	.byte		0x23
	.uleb128	26
	.byte		0x1
.L538:
	.sleb128	7
	.byte		"Lock"
	.byte		0
	.4byte		.L656
	.sleb128	2
	.byte		0x23
	.uleb128	27
	.byte		0x1
.L539:
	.sleb128	7
	.byte		"CanSM_ChangeBaudrateRequest"
	.byte		0
	.4byte		.L656
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L540:
	.sleb128	7
	.byte		"CanSM_ComModeRequest"
	.byte		0
	.4byte		.L656
	.sleb128	2
	.byte		0x23
	.uleb128	29
	.byte		0x1
.L541:
	.sleb128	7
	.byte		"CanSM_TransceiverWakeFlagIndication"
	.byte		0
	.4byte		.L656
	.sleb128	2
	.byte		0x23
	.uleb128	30
	.byte		0x1
.L542:
	.sleb128	7
	.byte		"CanSM_TrcvWuFlagIndication"
	.byte		0
	.4byte		.L656
	.sleb128	2
	.byte		0x23
	.uleb128	31
	.byte		0x1
.L543:
	.sleb128	7
	.byte		"CanSM_CtrlBusOffIndication"
	.byte		0
	.4byte		.L656
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L544:
	.sleb128	7
	.byte		"CanSM_CtrlSleepIndication"
	.byte		0
	.4byte		.L656
	.sleb128	2
	.byte		0x23
	.uleb128	33
	.byte		0x1
.L545:
	.sleb128	7
	.byte		"CanSM_CtrlStoppedIndication"
	.byte		0
	.4byte		.L656
	.sleb128	2
	.byte		0x23
	.uleb128	34
	.byte		0x1
.L546:
	.sleb128	7
	.byte		"CanSM_CtrlStartedIndication"
	.byte		0
	.4byte		.L656
	.sleb128	2
	.byte		0x23
	.uleb128	35
	.byte		0x1
.L547:
	.sleb128	7
	.byte		"CanSM_TransceiverModeNormalIndication"
	.byte		0
	.4byte		.L656
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L548:
	.sleb128	7
	.byte		"CanSM_TransceiverModeStandbyIndication"
	.byte		0
	.4byte		.L656
	.sleb128	2
	.byte		0x23
	.uleb128	37
	.byte		0x1
.L549:
	.sleb128	7
	.byte		"CanSM_TxTimeoutIndication"
	.byte		0
	.4byte		.L656
	.sleb128	2
	.byte		0x23
	.uleb128	38
	.byte		0x1
.L550:
	.sleb128	7
	.byte		"BusOffDuringRecovery"
	.byte		0
	.4byte		.L656
	.sleb128	2
	.byte		0x23
	.uleb128	39
	.byte		0x1
.L551:
	.sleb128	7
	.byte		"BorFailTRepeatMax"
	.byte		0
	.4byte		.L656
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
	.sleb128	0
.L676:
.L610:
	.sleb128	6
	.4byte		.L648
	.uleb128	341
	.uleb128	14
	.4byte		.L679-.L2
	.uleb128	4
.L517:
	.sleb128	7
	.byte		"RAM"
	.byte		0
	.4byte		.L680
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L679:
.L682:
	.sleb128	6
	.4byte		.L648
	.uleb128	341
	.uleb128	14
	.4byte		.L683-.L2
	.uleb128	4
.L516:
	.sleb128	7
	.byte		"initState"
	.byte		0
	.4byte		.L684
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L683:
.L675:
	.sleb128	6
	.4byte		.L648
	.uleb128	341
	.uleb128	14
	.4byte		.L686-.L2
	.uleb128	8
.L514:
	.sleb128	7
	.byte		"RAM"
	.byte		0
	.4byte		.L687
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L515:
	.sleb128	7
	.byte		"ControllerId_pu8"
	.byte		0
	.4byte		.L658
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L686:
.L689:
	.sleb128	6
	.4byte		.L648
	.uleb128	341
	.uleb128	14
	.4byte		.L690-.L2
	.uleb128	3
.L511:
	.sleb128	7
	.byte		"ControllerSleepIndication"
	.byte		0
	.4byte		.L656
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L512:
	.sleb128	7
	.byte		"ControllerStoppedIndication"
	.byte		0
	.4byte		.L656
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L513:
	.sleb128	7
	.byte		"ControllerStartedIndication"
	.byte		0
	.4byte		.L656
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L690:
	.section	.debug_info,,n
.L685:
	.sleb128	8
	.4byte		.L648
	.uleb128	322
	.uleb128	14
	.4byte		.L691-.L2
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
.L691:
	.section	.debug_info,,n
.L609:
	.sleb128	10
	.byte		"CanSM_LTConfigType"
	.byte		0
	.4byte		.L610
	.section	.debug_info,,n
.L608:
	.sleb128	11
	.4byte		.L609
	.section	.debug_info,,n
.L607:
	.sleb128	12
	.4byte		.L608
	.section	.debug_info,,n
.L618:
	.sleb128	13
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L617:
	.sleb128	10
	.byte		"uint8"
	.byte		0
	.4byte		.L618
.L623:
	.sleb128	10
	.byte		"CanSM_NetworkType"
	.byte		0
	.4byte		.L624
.L622:
	.sleb128	11
	.4byte		.L623
.L621:
	.sleb128	12
	.4byte		.L622
.L636:
	.sleb128	10
	.byte		"CanSM_NetworkType_RAM"
	.byte		0
	.4byte		.L637
.L635:
	.sleb128	12
	.4byte		.L636
.L651:
	.sleb128	10
	.byte		"CanSM_ConfigType"
	.byte		0
	.4byte		.L652
.L650:
	.sleb128	11
	.4byte		.L651
.L649:
	.sleb128	12
	.4byte		.L650
.L656:
	.sleb128	10
	.byte		"boolean"
	.byte		0
	.4byte		.L618
.L658:
	.sleb128	11
	.4byte		.L617
.L661:
	.sleb128	13
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L660:
	.sleb128	10
	.byte		"uint16"
	.byte		0
	.4byte		.L661
.L659:
	.sleb128	11
	.4byte		.L660
.L665:
	.sleb128	13
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L664:
	.sleb128	10
	.byte		"uint32"
	.byte		0
	.4byte		.L665
.L663:
	.sleb128	11
	.4byte		.L664
.L662:
	.sleb128	12
	.4byte		.L663
.L668:
	.sleb128	10
	.byte		"NetworkHandleType"
	.byte		0
	.4byte		.L617
.L667:
	.sleb128	11
	.4byte		.L668
.L669:
	.sleb128	11
	.4byte		.L656
.L671:
	.sleb128	10
	.byte		"Dem_EventIdType"
	.byte		0
	.4byte		.L660
.L670:
	.sleb128	11
	.4byte		.L671
.L674:
	.sleb128	10
	.byte		"CanSM_ControllerType"
	.byte		0
	.4byte		.L675
.L673:
	.sleb128	11
	.4byte		.L674
.L672:
	.sleb128	12
	.4byte		.L673
.L677:
	.sleb128	10
	.byte		"CANSM_Escher_StateNumber_t"
	.byte		0
	.4byte		.L617
.L678:
	.sleb128	10
	.byte		"ComM_ModeType"
	.byte		0
	.4byte		.L617
.L681:
	.sleb128	10
	.byte		"CanSM_LTConfigType_RAM"
	.byte		0
	.4byte		.L682
.L680:
	.sleb128	12
	.4byte		.L681
.L684:
	.sleb128	10
	.byte		"CanSM_StateType"
	.byte		0
	.4byte		.L685
.L688:
	.sleb128	10
	.byte		"CanSM_ControllerType_RAM"
	.byte		0
	.4byte		.L689
.L687:
	.sleb128	12
	.4byte		.L688
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L611:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),0
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),0
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),0
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),0
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),0
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo12),0
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo14),0
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo16),0
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo18),0
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo20),0
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo22),0
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo24),0
	.d2locend
.L619:
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo22),31
	.d2locend
.L625:
	.d2locreg	%offsetof(.Llo26), %offsetof(.Llo22),30
	.d2locend
.L627:
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo22),29
	.d2locend
.L633:
	.d2locreg	%offsetof(.Llo28), %offsetof(.Llo6),3
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo8),3
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo30),28
	.d2locreg	%offsetof(.Llo31), %offsetof(.Llo22),3
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo24),3
	.d2locend
.L638:
	.d2locreg	%offsetof(.Llo33), %offsetof(.Llo20),27
	.d2locend
.L644:
	.d2locreg	%offsetof(.Llo34), %offsetof(.Llo35),3
	.d2locreg	%offsetof(.Llo36), %offsetof(.Llo37),4
	.d2locend
.L646:
	.d2locreg	%offsetof(.Llo38), %offsetof(.Llo20),26
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "CanSM_MainFunction"
	.wrcm.nint32 "frameSize", 48
	.wrcm.nstrlist "calls", "CanSM_GetApiTransition","CanSM_Lock","CanSM_ProcessSM","CanSM_UnLock"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanSM_MainFunction.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanSM_MainFunction.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanSM_MainFunction.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanSM_MainFunction.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanSM_MainFunction.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanSM_MainFunction.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\CanSM\ssc\make\..\src\CanSM_MainFunction.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
