#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"LinSM_ScheduleRequest.c"
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
# FUNC(Std_ReturnType, LINSM_CODE) LinSM_ScheduleRequest
	.align		2
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinSM\\ssc\\make\\..\\src\\LinSM_ScheduleRequest.c"
        .d2line         49,34
#$$ld
.L520:

#$$bf	LinSM_ScheduleRequest,interprocedural,rasave,nostackparams
	.globl		LinSM_ScheduleRequest
	.d2_cfa_start __cie
LinSM_ScheduleRequest:
.Llo1:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r4		# Schedule=r31 Schedule=r4
	.d2prologue_end
# (
#   VAR(NetworkHandleType, AUTOMATIC) Network,
#   VAR(LinIf_SchHandleType, AUTOMATIC) Schedule
# )
# {
#     /* Variable for return value of the function */
#     VAR (Std_ReturnType, AUTOMATIC) Return = E_NOT_OK;
	.d2line		56
	diab.li		r30,1		# Return=r30
# 
#     /* Map the correct channel from LinSM configuration */
#     CONST(NetworkHandleType, AUTOMATIC) ChannelIndex = LinSM_GetChannelIndex(Network);
	.d2line		59
.Llo20:
	rlwinm		r3,r3,0,24,31		# Network=r3 Network=r3
.Llo2:
	bl		LinSM_GetChannelIndex
.Llo17:
	mr		r29,r3		# ChannelIndex=r29 ChannelIndex=r3
# 
#     /* Detect the Development Error Tracer */
# #if( STD_ON == LINSM_DEV_ERROR_DETECT )
#     /* Check whether module is initialized */
#     if( LINSM_UNINIT == LinSM_InitState )
#     {
#         (void)Det_ReportError(LINSM_MODULE_ID,
#                LINSM_INSTANCE_ID,
#                LINSM_SID_SCH_REQ,
#                LINSM_E_UNINIT );
#     }
#     /* Check whether channel is non existent channel */
#     else if( ChannelIndex >= LinSM_NoOfChannel )
#     {
#        (void)Det_ReportError(LINSM_MODULE_ID,
#                LINSM_INSTANCE_ID,
#                LINSM_SID_SCH_REQ,
#                LINSM_E_NONEXISTENT_NETWORK );
#     }
#     /* Check whether schedule is non existent schedule */
#     else if( LinSM_ScheduleTablesCnt_p[ChannelIndex] < Schedule )
#     {
#        (void)Det_ReportError(LINSM_MODULE_ID,
#                LINSM_INSTANCE_ID,
#                LINSM_SID_SCH_REQ,
#                LINSM_E_PARAMETER );
#     }
#     else
# #endif
#     {
#         /* Check whether LinSM is in Run Schedule state */
#         if(((LINSM_INIT == LinSM_InitState) &&
	.d2line		91
	lis		r3,LinSM_InitState@ha		# Network=r3
.Llo3:
	lbz		r0,LinSM_InitState@l(r3)		# Network=r3
	se_cmpi		r0,3
	bc		0,2,.L513	# ne
.Llo4:
	lis		r3,LinSM_Interface_p@ha		# Network=r3
.Llo5:
	lwz		r3,LinSM_Interface_p@l(r3)		# Network=r3 Network=r3
	rlwinm		r5,r29,3,21,28		# ChannelIndex=r29
	se_add		r3,r5		# Network=r3 Network=r3
	lbz		r0,5(r3)		# Network=r3
	se_cmpi		r0,1
	bc		0,2,.L507	# ne
.L513:
.Llo6:
	lis		r3,LinSM_Interface_p@ha		# Network=r3
.Llo7:
	lwz		r3,LinSM_Interface_p@l(r3)		# Network=r3 Network=r3
	rlwinm		r5,r29,3,21,28		# ChannelIndex=r29
	se_add		r3,r5		# Network=r3 Network=r3
	lbz		r0,2(r3)		# Network=r3
	se_cmpi		r0,1
	bc		1,2,.L507	# eq
#            ( LINSM_FULL_COM != LinSM_Interface_p[ChannelIndex].LinSM_CrntMode ))
# #if( STD_ON == LINSM_ENABLE_CONFIRMATIONS )
#                 || (TRUE == LinSM_Interface_p[ChannelIndex].LinSM_StartTimer_b)
# #endif
#                 )
#         {
#             /* Leave Return as E_NOT_OK */
#         }
#         else
#         {
#             /* Enter into the critical area */
#             SchM_Enter_LinSM_ExclusiveArea0();
	.d2line		103
.Llo8:
	bl		SchM_Enter_LinSM_ExclusiveArea0
# 
#             /* LinIf does not send confirmation when the new requested Schedule is already active, */
#             /* that is why LinSM must not process same schedule table. */
#             /* See details in LINIF495 and BZ14335 */
#             if(Schedule != LinSM_Interface_p[ChannelIndex].LinSM_ReqScheduleRef)
	.d2line		108
	rlwinm		r4,r31,0,24,31		# Schedule=r31
	lis		r3,LinSM_Interface_p@ha		# Network=r3
.Llo9:
	lwz		r3,LinSM_Interface_p@l(r3)		# Network=r3 Network=r3
	rlwinm		r5,r29,3,21,28		# ChannelIndex=r29
	se_add		r3,r5		# Network=r3 Network=r3
	lbz		r0,3(r3)		# Network=r3
	se_cmp		r4,r0
	bc		1,2,.L508	# eq
	.section	.text_vle
.L536:
#             {
#                 /* Save the original requested schedule in case  of unsuccessful LinIf request */
#                 VAR(LinIf_SchHandleType, AUTOMATIC) reqSchedule = LinSM_Interface_p[ChannelIndex].LinSM_ReqScheduleRef;
	.d2line		111
.Llo10:
	lis		r3,LinSM_Interface_p@ha		# Network=r3
.Llo11:
	lwz		r4,LinSM_Interface_p@l(r3)		# Network=r3
	rlwinm		r5,r29,3,21,28		# ChannelIndex=r29
	se_add		r4,r5
	lbz		r28,3(r4)
.Llo27:
	mr		r28,r28		# reqSchedule=r28 reqSchedule=r28
# 
#             	/* Set the Lin If confirmation flag to False */
#                 LinSM_Interface_p[ChannelIndex].LinSM_RqConfrmState = LINSM_CONFIRM_IDLE;
	.d2line		114
	diab.li		r0,0
	lwz		r4,LinSM_Interface_p@l(r3)		# Network=r3
	stbux		r0,r4,r5
# 
#                 /* Set the requested schedule table index */
#                 LinSM_Interface_p[ChannelIndex].LinSM_ReqScheduleRef = Schedule;
	.d2line		117
	lwz		r0,LinSM_Interface_p@l(r3)		# Network=r3
	se_add		r5,r0
	stb		r31,3(r5)		# Schedule=r31
# 
#                 /* Exit from the critical area */
#                 SchM_Exit_LinSM_ExclusiveArea0();
	.d2line		120
	bl		SchM_Exit_LinSM_ExclusiveArea0
# 
#                 /* Request Lin Interface to change schedule tables */
#                 Return = LinSM_InterfaceLinIf(ChannelIndex, LINSM_SCHDLE_REQ);
	.d2line		123
.Llo12:
	rlwinm		r3,r29,0,24,31		# Network=r3 ChannelIndex=r29
	diab.li		r4,2
	bl		LinSM_InterfaceLinIf
.Llo21:
	mr		r30,r3		# Return=r30 Return=r3
# 
#                 if (E_NOT_OK == Return)
	.d2line		125
	rlwinm		r3,r3,0,24,31		# Return=r3 Return=r3
	se_cmpi		r3,1		# Return=r3
	bc		0,2,.L507	# ne
#                 {
#                     /* Restore the requested schedule in case of unsuccessful LinIf request */
#                     LinSM_Interface_p[ChannelIndex].LinSM_ReqScheduleRef = reqSchedule;
	.d2line		128
.Llo18:
	lis		r3,LinSM_Interface_p@ha		# Return=r3
.Llo22:
	lwz		r3,LinSM_Interface_p@l(r3)		# Return=r3 Return=r3
	rlwinm		r5,r29,3,21,28		# ChannelIndex=r29
	se_add		r3,r5		# Return=r3 Return=r3
	stb		r28,3(r3)		# Return=r3 reqSchedule=r28
	.section	.text_vle
.L537:
.Llo28:
	b		.L507
.L508:
#                 }
#             }
#             else
#             {
#                 Return =  E_OK;
	.d2line		133
.Llo19:
	diab.li		r30,0		# Return=r30
#                 /* Exit from the critical area */
#                 SchM_Exit_LinSM_ExclusiveArea0();
	.d2line		135
.Llo23:
	bl		SchM_Exit_LinSM_ExclusiveArea0
.L507:
#             }
#         }
#     }
#     if(E_NOT_OK == Return)
	.d2line		139
.Llo29:
	rlwinm		r3,r30,0,24,31		# Network=r3 Return=r30
.Llo13:
	se_cmpi		r3,1		# Network=r3
	bc		0,2,.L511	# ne
#     {
#         /* Enter into the critical area */
#         SchM_Enter_LinSM_ExclusiveArea0();
	.d2line		142
.Llo14:
	bl		SchM_Enter_LinSM_ExclusiveArea0
# 
#         LinSM_Interface_p[ChannelIndex].LinSM_RqConfrmState = LINSM_SCHREQ_RETURN_FALSE;
	.d2line		144
	diab.li		r0,16
	lis		r3,LinSM_Interface_p@ha		# Network=r3
.Llo15:
	lwz		r3,LinSM_Interface_p@l(r3)		# Network=r3 Network=r3
.Llo25:
	rlwinm		r29,r29,3,21,28		# ChannelIndex=r29 ChannelIndex=r29
.Llo26:
	stbx		r0,r3,r29		# Network=r3
# 
#         /* Exit from the critical area */
#         SchM_Exit_LinSM_ExclusiveArea0();
	.d2line		147
	bl		SchM_Exit_LinSM_ExclusiveArea0
.L511:
#     }
#     /* Set the return value to error */
#     return Return;
	.d2line		150
.Llo16:
	rlwinm		r3,r30,0,24,31		# Network=r3 Return=r30
# }/* End of LinSM_ScheduleRequest() */
	.d2line		151
	.d2epilogue_begin
	lmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_restore_list	3,10
.Llo24:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L521:
	.type		LinSM_ScheduleRequest,@function
	.size		LinSM_ScheduleRequest,.-LinSM_ScheduleRequest
# Number of nodes = 135

# Allocations for LinSM_ScheduleRequest
#	?a4		Network
#	?a5		Schedule
#	?a6		Return
#	?a7		ChannelIndex
#	?a8		reqSchedule

# Allocations for module
	.section	.text_vle
	.0byte		.L542
	.section	.text_vle
#$$ld
.L5:
.L550:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\PduR\\ssc\\make\\..\\inc\\PduR_Types.h"
.L543:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinSM\\ssc\\make\\..\\inc\\LinSM_Private.h"
.L522:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinSM\\ssc\\make\\..\\src\\LinSM_ScheduleRequest.c"
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinSM\\ssc\\make\\..\\src\\LinSM_ScheduleRequest.c"
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
.L526:
	.sleb128	2
	.4byte		.L519-.L2
	.byte		"LinSM_ScheduleRequest"
	.byte		0
	.4byte		.L522
	.uleb128	49
	.uleb128	34
	.4byte		.L523
	.byte		0x1
	.byte		0x1
	.4byte		.L520
	.4byte		.L521
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L522
	.uleb128	49
	.uleb128	34
	.byte		"Network"
	.byte		0
	.4byte		.L527
	.4byte		.L528
	.sleb128	3
	.4byte		.L522
	.uleb128	49
	.uleb128	34
	.byte		"Schedule"
	.byte		0
	.4byte		.L529
	.4byte		.L530
	.section	.debug_info,,n
.L531:
	.sleb128	4
	.4byte		.L522
	.uleb128	56
	.uleb128	37
	.byte		"Return"
	.byte		0
	.4byte		.L523
	.4byte		.L532
.L533:
	.sleb128	4
	.4byte		.L522
	.uleb128	59
	.uleb128	41
	.byte		"ChannelIndex"
	.byte		0
	.4byte		.L534
	.4byte		.L535
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L539
	.4byte		.L536
	.4byte		.L537
.L540:
	.sleb128	4
	.4byte		.L522
	.uleb128	111
	.uleb128	53
	.byte		"reqSchedule"
	.byte		0
	.4byte		.L529
	.4byte		.L541
	.section	.debug_info,,n
	.sleb128	0
.L539:
	.section	.debug_info,,n
	.sleb128	0
.L519:
	.section	.debug_info,,n
.L542:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L543
	.uleb128	195
	.uleb128	71
	.byte		"LinSM_Interface_p"
	.byte		0
	.4byte		.L544
	.section	.debug_info,,n
.L548:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L543
	.uleb128	243
	.uleb128	39
	.byte		"LinSM_InitState"
	.byte		0
	.4byte		.L549
	.0byte		.L548
	.section	.debug_info,,n
.L547:
	.sleb128	7
	.4byte		.L550
	.uleb128	248
	.uleb128	1
	.4byte		.L551-.L2
	.uleb128	8
	.section	.debug_info,,n
.L306:
	.sleb128	8
	.byte		"LinSM_RqConfrmState"
	.byte		0
	.4byte		.L524
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L307:
	.sleb128	8
	.byte		"LinSM_RequestType_u8"
	.byte		0
	.4byte		.L524
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L308:
	.sleb128	8
	.byte		"LinSM_StartTimer_b"
	.byte		0
	.4byte		.L552
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L309:
	.sleb128	8
	.byte		"LinSM_ReqScheduleRef"
	.byte		0
	.4byte		.L529
	.sleb128	2
	.byte		0x23
	.uleb128	3
	.byte		0x1
.L310:
	.sleb128	8
	.byte		"LinSM_CrntScheduleRef"
	.byte		0
	.4byte		.L529
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L311:
	.sleb128	8
	.byte		"LinSM_CrntMode"
	.byte		0
	.4byte		.L549
	.sleb128	2
	.byte		0x23
	.uleb128	5
	.byte		0x1
.L312:
	.sleb128	8
	.byte		"LinSM_TimerVal_u16"
	.byte		0
	.4byte		.L553
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
	.sleb128	0
.L551:
	.section	.debug_info,,n
.L525:
	.sleb128	9
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L524:
	.sleb128	10
	.byte		"uint8"
	.byte		0
	.4byte		.L525
.L523:
	.sleb128	10
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L524
.L527:
	.sleb128	10
	.byte		"NetworkHandleType"
	.byte		0
	.4byte		.L524
.L529:
	.sleb128	10
	.byte		"LinIf_SchHandleType"
	.byte		0
	.4byte		.L524
	.section	.debug_info,,n
.L534:
	.sleb128	11
	.4byte		.L527
.L546:
	.sleb128	10
	.byte		"LinSMInterfaceType_t"
	.byte		0
	.4byte		.L547
	.section	.debug_info,,n
.L545:
	.sleb128	12
	.4byte		.L546
.L544:
	.sleb128	11
	.4byte		.L545
.L549:
	.sleb128	10
	.byte		"LinSM_ModeType"
	.byte		0
	.4byte		.L524
.L552:
	.sleb128	10
	.byte		"boolean"
	.byte		0
	.4byte		.L525
.L554:
	.sleb128	9
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L553:
	.sleb128	10
	.byte		"uint16"
	.byte		0
	.4byte		.L554
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L528:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),3
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),3
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),3
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),3
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo12),3
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo14),3
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo16),3
	.d2locend
.L530:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo17),4
	.d2locreg	%offsetof(.Llo4), %offsetof(.Llo18),31
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo14),31
	.d2locend
.L532:
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo10),30
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo18),3
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo19),30
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo24),30
	.d2locend
.L535:
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo3),3
	.d2locreg	%offsetof(.Llo4), %offsetof(.Llo14),29
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo26),29
	.d2locend
.L541:
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo28),28
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo14),28
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "LinSM_ScheduleRequest"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "LinSM_GetChannelIndex","LinSM_InterfaceLinIf","SchM_Enter_LinSM_ExclusiveArea0","SchM_Exit_LinSM_ExclusiveArea0"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\LinSM_ScheduleRequest.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\LinSM_ScheduleRequest.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\LinSM_ScheduleRequest.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\LinSM_ScheduleRequest.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\LinSM_ScheduleRequest.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\LinSM_ScheduleRequest.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\LinSM\ssc\make\..\src\LinSM_ScheduleRequest.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
