#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"ComM_DCM_ActiveDiagnostic.c"
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
# FUNC(void, COMM_CODE) ComM_DCM_ActiveDiagnostic(VAR(NetworkHandleType, AUTOMATIC) Channel)
	.align		2
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\src\\ComM_DCM_ActiveDiagnostic.c"
        .d2line         49,23
#$$ld
.L767:

#$$bf	ComM_DCM_ActiveDiagnostic,interprocedural,rasave,nostackparams
	.globl		ComM_DCM_ActiveDiagnostic
	.d2_cfa_start __cie
ComM_DCM_ActiveDiagnostic:
.Llo1:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# Channel=r31 Channel=r3
	.d2prologue_end
# {
#     /* [ComM612] Check whether the module has been initialized */
#     if(ComM_InitStatus != COMM_INIT)
	.d2line		52
	lis		r3,ComM_InitStatus@ha
.Llo2:
	lwz		r0,ComM_InitStatus@l(r3)
	se_cmpi		r0,1
	bc		0,2,.L757	# ne
#     {
#         COMM_DET_REPORT_ERROR(COMM_DCM_ACTIVEDIAG_API_ID, COMM_E_NOT_INITED);
#     }
# #if(COMM_DEV_ERROR_DETECT == STD_ON)
#     /* Check if Channel is invalid */
#     else if(Channel >= ComM_ChannelsNum)
#     {
#         COMM_DET_REPORT_ERROR(COMM_DCM_ACTIVEDIAG_API_ID, COMM_E_WRONG_PARAMETERS);
#     }
# #endif
#     else
#     {
#         /* [ADD_ComM3000] ComM_DCM_ActiveDiagnostic shall not be called on PASSIVE channels */
#         if(ComM_ConfigPtr->ChannelsPtr[Channel].NmVariant == COMM_PASSIVE)
	.d2line		66
.Llo3:
	rlwinm		r0,r31,0,24,31		# Channel=r31
	lis		r3,ComM_ConfigPtr@ha
	lwz		r3,ComM_ConfigPtr@l(r3)
	lwz		r3,12(r3)
	rlwinm		r4,r0,6,0,25
	se_slwi		r0,4
	subf		r0,r0,r4
	se_add		r3,r0
	lwz		r0,24(r3)
	se_cmpi		r0,3
	bc		1,2,.L757	# eq
#         {
#             COMM_DET_REPORT_ERROR(COMM_DCM_ACTIVEDIAG_API_ID, COMM_E_WRONG_NM_VARIANT);
#         }
#         else
#         {
#             /* Exclusive Area: ensure MainFunction works from the same input */
#             SchM_Enter_ComM(Channel);
	.d2line		73
	rlwinm		r3,r31,0,24,31		# Channel=r3 Channel=r31
	bl		SchM_Enter_ComM
# 
#             ComM_ChannelStates[Channel].ActiveDiagnostic = TRUE;
	.d2line		75
	rlwinm		r31,r31,0,24,31		# Channel=r31 Channel=r31
	diab.li		r5,1
	lis		r3,(ComM_ChannelStates+13)@ha		# Channel=r3
	e_add16i		r3,r3,(ComM_ChannelStates+13)@l		# Channel=r3 Channel=r3
	rlwinm		r0,r31,5,0,26		# Channel=r31
	rlwinm		r4,r31,3,0,28		# Channel=r31
	subf		r4,r4,r0
	stbx		r5,r3,r4		# Channel=r3
# 
#             SchM_Exit_ComM(Channel);
	.d2line		77
	mr		r3,r31		# Channel=r3
	bl		SchM_Exit_ComM
.L757:
#         }
#     }
# }
	.d2line		80
	.d2epilogue_begin
.Llo4:
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L768:
	.type		ComM_DCM_ActiveDiagnostic,@function
	.size		ComM_DCM_ActiveDiagnostic,.-ComM_DCM_ActiveDiagnostic
# Number of nodes = 43

# Allocations for ComM_DCM_ActiveDiagnostic
#	?a4		Channel
#	?a5		$$238
#	?a6		$$237

# Allocations for module
	.section	.text_vle
#$$ld
.L5:
.L789:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\inc\\ComM_Types.h"
.L776:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\inc\\ComM_Private.h"
.L769:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\src\\ComM_DCM_ActiveDiagnostic.c"
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
	.uleb128	15
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	13
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	14
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\src\\ComM_DCM_ActiveDiagnostic.c"
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
	.byte		"ComM_DCM_ActiveDiagnostic"
	.byte		0
	.4byte		.L769
	.uleb128	49
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L767
	.4byte		.L768
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L769
	.uleb128	49
	.uleb128	23
	.byte		"Channel"
	.byte		0
	.4byte		.L771
	.4byte		.L774
	.section	.debug_info,,n
	.sleb128	0
.L766:
	.section	.debug_info,,n
.L775:
	.sleb128	4
	.byte		0x1
	.byte		0x1
	.4byte		.L776
	.uleb128	374
	.uleb128	55
	.byte		"ComM_InitStatus"
	.byte		0
	.4byte		.L777
	.0byte		.L775
.L779:
	.sleb128	4
	.byte		0x1
	.byte		0x1
	.4byte		.L776
	.uleb128	377
	.uleb128	55
	.byte		"ComM_ConfigPtr"
	.byte		0
	.4byte		.L780
.L784:
	.sleb128	4
	.byte		0x1
	.byte		0x1
	.4byte		.L776
	.uleb128	388
	.uleb128	45
	.byte		"ComM_ChannelStates"
	.byte		0
	.4byte		.L785
	.section	.debug_info,,n
.L783:
	.sleb128	5
	.4byte		.L789
	.uleb128	121
	.uleb128	1
	.4byte		.L790-.L2
	.uleb128	32
	.section	.debug_info,,n
.L380:
	.sleb128	6
	.byte		"PBtoPCHashValuePtr"
	.byte		0
	.4byte		.L791
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L381:
	.sleb128	6
	.byte		"PBtoLTHashValuePtr"
	.byte		0
	.4byte		.L791
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L382:
	.sleb128	6
	.byte		"UsersPtr"
	.byte		0
	.4byte		.L795
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L383:
	.sleb128	6
	.byte		"ChannelsPtr"
	.byte		0
	.4byte		.L800
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L384:
	.sleb128	6
	.byte		"PncsPtr"
	.byte		0
	.4byte		.L805
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L385:
	.sleb128	6
	.byte		"PncRxSignalsPtr"
	.byte		0
	.4byte		.L810
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L386:
	.sleb128	6
	.byte		"PncsNum"
	.byte		0
	.4byte		.L815
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L387:
	.sleb128	6
	.byte		"PncRxSignalsNum"
	.byte		0
	.4byte		.L815
	.sleb128	2
	.byte		0x23
	.uleb128	26
	.byte		0x1
.L388:
	.sleb128	6
	.byte		"UsersNum"
	.byte		0
	.4byte		.L818
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L389:
	.sleb128	6
	.byte		"PncEnabled"
	.byte		0
	.4byte		.L819
	.sleb128	2
	.byte		0x23
	.uleb128	29
	.byte		0x1
	.sleb128	0
.L790:
.L814:
	.sleb128	5
	.4byte		.L789
	.uleb128	121
	.uleb128	1
	.4byte		.L821-.L2
	.uleb128	12
.L377:
	.sleb128	6
	.byte		"SignalId"
	.byte		0
	.4byte		.L822
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L378:
	.sleb128	6
	.byte		"SignalKind"
	.byte		0
	.4byte		.L824
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L379:
	.sleb128	6
	.byte		"SignalChannel"
	.byte		0
	.4byte		.L827
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L821:
.L809:
	.sleb128	5
	.4byte		.L789
	.uleb128	121
	.uleb128	1
	.4byte		.L828-.L2
	.uleb128	32
.L366:
	.sleb128	6
	.byte		"PncID"
	.byte		0
	.4byte		.L829
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L367:
	.sleb128	6
	.byte		"PncIdByteIndex"
	.byte		0
	.4byte		.L818
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L368:
	.sleb128	6
	.byte		"PncIdBitIndex"
	.byte		0
	.4byte		.L818
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L369:
	.sleb128	6
	.byte		"PncTimerMaxValue"
	.byte		0
	.4byte		.L815
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L370:
	.sleb128	6
	.byte		"PncTimerHandlerChannelID"
	.byte		0
	.4byte		.L827
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L371:
	.sleb128	6
	.byte		"PncChannelIDsPtr"
	.byte		0
	.4byte		.L831
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L372:
	.sleb128	6
	.byte		"PncChannelIDsNum"
	.byte		0
	.4byte		.L818
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L373:
	.sleb128	6
	.byte		"PncComRxSignalIndexesPtr"
	.byte		0
	.4byte		.L833
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L374:
	.sleb128	6
	.byte		"PncComRxSignalIndexesNum"
	.byte		0
	.4byte		.L815
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L375:
	.sleb128	6
	.byte		"PncUserIDsPtr"
	.byte		0
	.4byte		.L835
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L376:
	.sleb128	6
	.byte		"PncUserIDsNum"
	.byte		0
	.4byte		.L815
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
	.sleb128	0
.L828:
.L799:
	.sleb128	5
	.4byte		.L789
	.uleb128	121
	.uleb128	1
	.4byte		.L839-.L2
	.uleb128	8
.L356:
	.sleb128	6
	.byte		"AllChannelIDsPtr"
	.byte		0
	.4byte		.L831
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L357:
	.sleb128	6
	.byte		"AllChannelIDsNum"
	.byte		0
	.4byte		.L815
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L358:
	.sleb128	6
	.byte		"DirectChannelIDsNum"
	.byte		0
	.4byte		.L815
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
	.sleb128	0
.L839:
.L804:
	.sleb128	5
	.4byte		.L789
	.uleb128	121
	.uleb128	1
	.4byte		.L840-.L2
	.uleb128	48
.L342:
	.sleb128	6
	.byte		"UserIDsPtr"
	.byte		0
	.4byte		.L835
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L343:
	.sleb128	6
	.byte		"AllUserIDsNum"
	.byte		0
	.4byte		.L815
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L344:
	.sleb128	6
	.byte		"DirectUserIDsNum"
	.byte		0
	.4byte		.L815
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L345:
	.sleb128	6
	.byte		"PncIndexesPtr"
	.byte		0
	.4byte		.L835
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L346:
	.sleb128	6
	.byte		"PncStatesPtr"
	.byte		0
	.4byte		.L841
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L347:
	.sleb128	6
	.byte		"PncRequestsPtr"
	.byte		0
	.4byte		.L845
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L348:
	.sleb128	6
	.byte		"ChannelPncsNum"
	.byte		0
	.4byte		.L818
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L349:
	.sleb128	6
	.byte		"FullComTimerInitValue"
	.byte		0
	.4byte		.L815
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L350:
	.sleb128	6
	.byte		"NmVariant"
	.byte		0
	.4byte		.L848
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L351:
	.sleb128	6
	.byte		"TxSignalIDsPtr"
	.byte		0
	.4byte		.L851
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L352:
	.sleb128	6
	.byte		"TxSignalBufferPtr"
	.byte		0
	.4byte		.L853
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L353:
	.sleb128	6
	.byte		"TxSignalIDsNum"
	.byte		0
	.4byte		.L818
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L354:
	.sleb128	6
	.byte		"BusType"
	.byte		0
	.4byte		.L855
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L355:
	.sleb128	6
	.byte		"PncNmRequestEnabled"
	.byte		0
	.4byte		.L819
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
	.sleb128	0
.L840:
.L788:
	.sleb128	5
	.4byte		.L789
	.uleb128	121
	.uleb128	1
	.4byte		.L858-.L2
	.uleb128	24
.L324:
	.sleb128	6
	.byte		"FullComTimer"
	.byte		0
	.4byte		.L816
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L325:
	.sleb128	6
	.byte		"ChannelSubState"
	.byte		0
	.4byte		.L859
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L326:
	.sleb128	6
	.byte		"HaltInNoComState"
	.byte		0
	.4byte		.L820
	.sleb128	2
	.byte		0x23
	.uleb128	3
	.byte		0x1
.L327:
	.sleb128	6
	.byte		"LastNmIndicatedMode"
	.byte		0
	.4byte		.L860
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L328:
	.sleb128	6
	.byte		"IsLastNmIndicatedModeUpdated"
	.byte		0
	.4byte		.L820
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L329:
	.sleb128	6
	.byte		"NmRestartIndication"
	.byte		0
	.4byte		.L820
	.sleb128	2
	.byte		0x23
	.uleb128	9
	.byte		0x1
.L330:
	.sleb128	6
	.byte		"NmNetworkStartIndication"
	.byte		0
	.4byte		.L820
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L331:
	.sleb128	6
	.byte		"LastBusSMIndicatedMode"
	.byte		0
	.4byte		.L847
	.sleb128	2
	.byte		0x23
	.uleb128	11
	.byte		0x1
.L332:
	.sleb128	6
	.byte		"EcuMWakeUpIndication"
	.byte		0
	.4byte		.L820
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L333:
	.sleb128	6
	.byte		"ActiveDiagnostic"
	.byte		0
	.4byte		.L820
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
.L334:
	.sleb128	6
	.byte		"CommunicationAllowed"
	.byte		0
	.4byte		.L820
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L335:
	.sleb128	6
	.byte		"InitialTransition"
	.byte		0
	.4byte		.L820
	.sleb128	2
	.byte		0x23
	.uleb128	15
	.byte		0x1
.L336:
	.sleb128	6
	.byte		"BusSMReturnValue"
	.byte		0
	.4byte		.L862
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L337:
	.sleb128	6
	.byte		"UserRequestsChanged"
	.byte		0
	.4byte		.L820
	.sleb128	2
	.byte		0x23
	.uleb128	17
	.byte		0x1
.L338:
	.sleb128	6
	.byte		"DirectUserRequestsChanged"
	.byte		0
	.4byte		.L820
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L339:
	.sleb128	6
	.byte		"ChannelRequestedMode"
	.byte		0
	.4byte		.L847
	.sleb128	2
	.byte		0x23
	.uleb128	19
	.byte		0x1
.L340:
	.sleb128	6
	.byte		"DirectUsersRequestedMode"
	.byte		0
	.4byte		.L847
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L341:
	.sleb128	6
	.byte		"PncsRequestedMode"
	.byte		0
	.4byte		.L847
	.sleb128	2
	.byte		0x23
	.uleb128	21
	.byte		0x1
	.sleb128	0
.L858:
	.section	.debug_info,,n
.L861:
	.sleb128	7
	.4byte		.L789
	.uleb128	112
	.uleb128	1
	.4byte		.L863-.L2
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
.L863:
.L850:
	.sleb128	7
	.4byte		.L789
	.uleb128	103
	.uleb128	1
	.4byte		.L864-.L2
	.uleb128	4
	.sleb128	8
	.byte		"COMM_FULL"
	.byte		0
	.sleb128	0
	.sleb128	8
	.byte		"COMM_LIGHT"
	.byte		0
	.sleb128	1
	.sleb128	8
	.byte		"COMM_NONE"
	.byte		0
	.sleb128	2
	.sleb128	8
	.byte		"COMM_PASSIVE"
	.byte		0
	.sleb128	3
	.sleb128	0
.L864:
.L857:
	.sleb128	7
	.4byte		.L789
	.uleb128	93
	.uleb128	1
	.4byte		.L865-.L2
	.uleb128	4
	.sleb128	8
	.byte		"COMM_BUS_TYPE_CAN"
	.byte		0
	.sleb128	0
	.sleb128	8
	.byte		"COMM_BUS_TYPE_ETH"
	.byte		0
	.sleb128	1
	.sleb128	8
	.byte		"COMM_BUS_TYPE_FR"
	.byte		0
	.sleb128	2
	.sleb128	8
	.byte		"COMM_BUS_TYPE_INTERNAL"
	.byte		0
	.sleb128	3
	.sleb128	8
	.byte		"COMM_BUS_TYPE_LIN"
	.byte		0
	.sleb128	4
	.sleb128	0
.L865:
.L826:
	.sleb128	7
	.4byte		.L789
	.uleb128	86
	.uleb128	1
	.4byte		.L866-.L2
	.uleb128	4
	.sleb128	8
	.byte		"COMM_SIGNAL_KIND_EIRA"
	.byte		0
	.sleb128	0
	.sleb128	8
	.byte		"COMM_SIGNAL_KIND_ERA"
	.byte		0
	.sleb128	1
	.sleb128	0
.L866:
.L844:
	.sleb128	7
	.4byte		.L789
	.uleb128	57
	.uleb128	1
	.4byte		.L867-.L2
	.uleb128	4
	.sleb128	8
	.byte		"PNC_REQUESTED"
	.byte		0
	.sleb128	0
	.sleb128	8
	.byte		"PNC_READY_SLEEP"
	.byte		0
	.sleb128	1
	.sleb128	8
	.byte		"PNC_PREPARE_SLEEP"
	.byte		0
	.sleb128	2
	.sleb128	8
	.byte		"PNC_NO_COMMUNICATION"
	.byte		0
	.sleb128	3
	.sleb128	8
	.byte		"PNC_FULL_COMMUNICATION"
	.byte		0
	.sleb128	4
	.sleb128	0
.L867:
.L778:
	.sleb128	7
	.4byte		.L789
	.uleb128	50
	.uleb128	1
	.4byte		.L868-.L2
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
.L868:
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
.L777:
	.sleb128	10
	.byte		"ComM_InitStatusType"
	.byte		0
	.4byte		.L778
.L782:
	.sleb128	10
	.byte		"ComM_ConfigType"
	.byte		0
	.4byte		.L783
	.section	.debug_info,,n
.L781:
	.sleb128	11
	.4byte		.L782
	.section	.debug_info,,n
.L780:
	.sleb128	12
	.4byte		.L781
.L787:
	.sleb128	10
	.byte		"ComM_ChannelStateType"
	.byte		0
	.4byte		.L788
	.section	.debug_info,,n
.L785:
	.sleb128	13
	.4byte		.L786-.L2
	.4byte		.L787
	.section	.debug_info,,n
	.sleb128	14
	.sleb128	0
.L786:
.L794:
	.sleb128	9
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L793:
	.sleb128	10
	.byte		"uint32"
	.byte		0
	.4byte		.L794
.L792:
	.sleb128	11
	.4byte		.L793
.L791:
	.sleb128	12
	.4byte		.L792
.L798:
	.sleb128	10
	.byte		"ComM_UserType"
	.byte		0
	.4byte		.L799
.L797:
	.sleb128	11
	.4byte		.L798
.L796:
	.sleb128	12
	.4byte		.L797
.L795:
	.sleb128	11
	.4byte		.L796
.L803:
	.sleb128	10
	.byte		"ComM_ChannelType"
	.byte		0
	.4byte		.L804
.L802:
	.sleb128	11
	.4byte		.L803
.L801:
	.sleb128	12
	.4byte		.L802
.L800:
	.sleb128	11
	.4byte		.L801
.L808:
	.sleb128	10
	.byte		"ComM_PncType"
	.byte		0
	.4byte		.L809
.L807:
	.sleb128	11
	.4byte		.L808
.L806:
	.sleb128	12
	.4byte		.L807
.L805:
	.sleb128	11
	.4byte		.L806
.L813:
	.sleb128	10
	.byte		"ComM_PncRxSignalType"
	.byte		0
	.4byte		.L814
.L812:
	.sleb128	11
	.4byte		.L813
.L811:
	.sleb128	12
	.4byte		.L812
.L810:
	.sleb128	11
	.4byte		.L811
.L817:
	.sleb128	9
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L816:
	.sleb128	10
	.byte		"uint16"
	.byte		0
	.4byte		.L817
.L815:
	.sleb128	11
	.4byte		.L816
.L818:
	.sleb128	11
	.4byte		.L772
.L820:
	.sleb128	10
	.byte		"boolean"
	.byte		0
	.4byte		.L773
.L819:
	.sleb128	11
	.4byte		.L820
.L823:
	.sleb128	10
	.byte		"Com_SignalIdType"
	.byte		0
	.4byte		.L816
.L822:
	.sleb128	11
	.4byte		.L823
.L825:
	.sleb128	10
	.byte		"ComM_PncComSignalKindType"
	.byte		0
	.4byte		.L826
.L824:
	.sleb128	11
	.4byte		.L825
.L827:
	.sleb128	11
	.4byte		.L771
.L830:
	.sleb128	10
	.byte		"PNCHandleType"
	.byte		0
	.4byte		.L772
.L829:
	.sleb128	11
	.4byte		.L830
.L832:
	.sleb128	12
	.4byte		.L827
.L831:
	.sleb128	11
	.4byte		.L832
.L834:
	.sleb128	12
	.4byte		.L818
.L833:
	.sleb128	11
	.4byte		.L834
.L838:
	.sleb128	10
	.byte		"ComM_UserHandleType"
	.byte		0
	.4byte		.L772
.L837:
	.sleb128	11
	.4byte		.L838
.L836:
	.sleb128	12
	.4byte		.L837
.L835:
	.sleb128	11
	.4byte		.L836
.L843:
	.sleb128	10
	.byte		"ComM_PncModeType"
	.byte		0
	.4byte		.L844
.L842:
	.sleb128	12
	.4byte		.L843
.L841:
	.sleb128	11
	.4byte		.L842
.L847:
	.sleb128	10
	.byte		"ComM_ModeType"
	.byte		0
	.4byte		.L772
.L846:
	.sleb128	12
	.4byte		.L847
.L845:
	.sleb128	11
	.4byte		.L846
.L849:
	.sleb128	10
	.byte		"ComM_NmVariantType"
	.byte		0
	.4byte		.L850
.L848:
	.sleb128	11
	.4byte		.L849
.L852:
	.sleb128	12
	.4byte		.L815
.L851:
	.sleb128	11
	.4byte		.L852
.L854:
	.sleb128	12
	.4byte		.L772
.L853:
	.sleb128	11
	.4byte		.L854
.L856:
	.sleb128	10
	.byte		"ComM_BusTypeType"
	.byte		0
	.4byte		.L857
.L855:
	.sleb128	11
	.4byte		.L856
.L859:
	.sleb128	10
	.byte		"ComM_StateType"
	.byte		0
	.4byte		.L772
.L860:
	.sleb128	10
	.byte		"ComM_NmCurrentModeType"
	.byte		0
	.4byte		.L861
.L862:
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
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),31
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "ComM_DCM_ActiveDiagnostic"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "SchM_Enter_ComM","SchM_Exit_ComM"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\ComM_DCM_ActiveDiagnostic.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\ComM_DCM_ActiveDiagnostic.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\ComM_DCM_ActiveDiagnostic.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\ComM_DCM_ActiveDiagnostic.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\ComM_DCM_ActiveDiagnostic.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\ComM_DCM_ActiveDiagnostic.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\ComM\ssc\make\..\src\ComM_DCM_ActiveDiagnostic.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
