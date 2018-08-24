#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"LinIf_ScheduleRequest.c"
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
# FUNC (Std_ReturnType, LINIF_CODE) LinIf_ScheduleRequest(NetworkHandleType Channel, LinIf_SchHandleType Schedule)
	.align		2
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinIf\\ssc\\make\\..\\src\\LinIf_ScheduleRequest.c"
        .d2line         48,35
#$$ld
.L291:

#$$bf	LinIf_ScheduleRequest,interprocedural,rasave,nostackparams
	.globl		LinIf_ScheduleRequest
	.d2_cfa_start __cie
LinIf_ScheduleRequest:
.Llo1:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r0,r3		# Channel=r0 Channel=r3
	mr		r31,r4		# Schedule=r31 Schedule=r4
	.d2prologue_end
# {
#     /* variable to hold the presence of development errors */
#     /* PRQA S 3204 1 */ /* The variable could be declared with the 'const' qualifier in some pre-compile settings */
#     VAR (Std_ReturnType, LINIF_APPL_DATA) ReturnVal = E_OK;
	.d2line		52
	diab.li		r30,0		# ReturnVal=r30
# 
#     /* Pointer pointing to the current channel pointer */
#     P2CONST (LinIfChannel, AUTOMATIC, LINIF_APPL_DATA) crntChannel_p = NULL_PTR;
	.d2line		55
	diab.li		r3,0
.Llo2:
	stw		r3,8(r1)
# 
#     /* Check if the LINIF module is not initialized */
#     if(LINIF_UNINIT == LinIf_GlobalInitStsFlag)
	.d2line		58
	lis		r3,LinIf_GlobalInitStsFlag@ha
	lbz		r3,LinIf_GlobalInitStsFlag@l(r3)
	se_cmpi		r3,0
	bc		0,2,.L279	# ne
#     {
# #if ( LINIF_DEV_ERROR_DETECT == STD_ON )
#         /* Report the LINIF_E_UNINIT error to DET module */
#         (void) Det_ReportError(LINIF_MODULE_ID, LINIF_INSTANCE_ID, LINIF_SCHREQ_FUN_ID, LINIF_E_UNINIT ); /*[LINIF535]*/
# #endif /* End of LINIF_DEV_ERROR_DETECT  */
#         /* Set the return value */
#         ReturnVal = E_NOT_OK;
	.d2line		65
.Llo3:
	diab.li		r30,1		# ReturnVal=r30
.Llo13:
	b		.L280
.L279:
#     }
#     else
#     {
# 
#         /* Search for the channel */
#         LinIf_FindChannel(Channel, &crntChannel_p);
	.d2line		71
	rlwinm		r3,r0,0,24,31		# Channel=r0
	diab.addi		r4,r1,8
	bl		LinIf_FindChannel
	.section	.text_vle
.L309:
# 
# #if ( LINIF_DEV_ERROR_DETECT == STD_ON )
#         /* Check if the channel is not found */
#         if(NULL_PTR == crntChannel_p)
#         {
#             /* Report to DET */
#             (void) Det_ReportError(LINIF_MODULE_ID,
#                                    LINIF_INSTANCE_ID,
#                                    LINIF_SCHREQ_FUN_ID,
#                                    LINIF_E_NONEXISTENT_CHANNEL ); /*[LINIF563]*/
#             /* Set the return value */
#             ReturnVal = E_NOT_OK;
#         }
# 
#         if(E_OK == ReturnVal)
# #endif /* End of LINIF_DEV_ERROR_DETECT*/
#         {
# #if ( LINIF_DEV_ERROR_DETECT == STD_ON )
#             CONSTP2CONST(LinIfChannelReloc,AUTOMATIC, LINIF_CONST) LinIf_Channel_Reloc_p =
#                 &(LinIf_ConfigChannel_Reloc_p[crntChannel_p->LinIfChannelIndex]);
# 
#             /* Check if the requested schedule id is out of range */
#             if (Schedule >= LinIf_Channel_Reloc_p->LinIfMaxSchedules)
#             {
#                 /* Report to DET */
#                 (void) Det_ReportError(LINIF_MODULE_ID, LINIF_INSTANCE_ID, LINIF_SCHREQ_FUN_ID, LINIF_E_PARAMETER );
# 
#                 /* Set the return value */
#                 ReturnVal = E_NOT_OK;
#             }
# 
#             /* Check if the LinIf is not Sleep when Schedule request */
#             if(crntChannel_p->LinIf_channelManager_p->LinIf_ChannelState == LINIF_CHANNEL_SLEEP ) /*[LINIF467]*/
#             {
#                 /* Report to DET */
#                 (void) Det_ReportError(LINIF_MODULE_ID,
#                                        LINIF_INSTANCE_ID,
#                                        LINIF_SCHREQ_FUN_ID,
#                                        LINIF_E_SCHEDULE_REQUEST_ERROR ); /*[LINIF567]*/
#                 /* Set the return value */
#                 ReturnVal = E_NOT_OK;
#             }
#             if(E_OK == ReturnVal)
# #endif /* End of LINIF_DEV_ERROR_DETECT*/
# 
# #if ( LINIF_ENABLE_SCHEDULE_TABLE_MANAGER == STD_ON )
#             {
# 
#                 /* Get the first schedule table pointer to a local variable */
#                 CONSTP2CONST (LinIfScheduleTable, AUTOMATIC, LINIF_APPL_DATA) requestedScheduleTable_p = &(LinIf_ConfigChannel_Reloc_p
	.d2line		121
.Llo4:
	lwz		r3,8(r1)		# requestedScheduleTable_p=r3
.Llo17:
	lbz		r0,12(r3)		# Channel=r0 requestedScheduleTable_p=r3
.Llo5:
	lis		r3,LinIf_ConfigChannel_Reloc_p@ha		# requestedScheduleTable_p=r3
	lwz		r3,LinIf_ConfigChannel_Reloc_p@l(r3)		# requestedScheduleTable_p=r3 requestedScheduleTable_p=r3
	rlwinm		r4,r0,5,0,26		# Channel=r0
	se_slwi		r0,3		# Channel=r0 Channel=r0
	subf		r0,r0,r4		# Channel=r0 Channel=r0
	se_add		r3,r0		# requestedScheduleTable_p=r3 requestedScheduleTable_p=r3 Channel=r0
	lwz		r3,8(r3)		# requestedScheduleTable_p=r3 requestedScheduleTable_p=r3
	rlwinm		r4,r31,0,24,31		# Schedule=r31
	e_mulli		r4,r4,20
	se_add		r3,r4		# requestedScheduleTable_p=r3 requestedScheduleTable_p=r3
	mr		r3,r3		# requestedScheduleTable_p=r3 requestedScheduleTable_p=r3
#                     [crntChannel_p->LinIfChannelIndex].LinIfScheduleTable_p[Schedule]);
# 
#                 /* Requested schedule is of RUN_ONCE type */
#                 if ((requestedScheduleTable_p->LinIfRunMode==RUN_ONCE) && (Schedule!=NULL_SCHEDULE))
	.d2line		125
	lwz		r0,4(r3)		# Channel=r0 requestedScheduleTable_p=r3
	se_cmpi		r0,1		# Channel=r0
	bc		0,2,.L281	# ne
.Llo6:
	rlwinm		r4,r31,0,24,31		# Schedule=r31
	se_cmpi		r4,0
	bc		1,2,.L281	# eq
#                 {
#                     /* Update the Run Once Schedule table index */
#                     crntChannel_p->LinIf_channelManager_p->LinIf_RunOnceSchTableRequested = Schedule;
	.d2line		128
	lwz		r3,8(r1)		# requestedScheduleTable_p=r3
.Llo18:
	lwz		r3,28(r3)		# requestedScheduleTable_p=r3 requestedScheduleTable_p=r3
	stb		r31,5(r3)		# requestedScheduleTable_p=r3 Schedule=r31
#                     crntChannel_p->LinIf_channelManager_p->LinIf_NewScheduleTableType = ACTIVE_RUN_ONCE;
	.d2line		129
	diab.li		r0,1		# Channel=r0
.Llo7:
	lwz		r3,8(r1)		# requestedScheduleTable_p=r3
	lwz		r3,28(r3)		# requestedScheduleTable_p=r3 requestedScheduleTable_p=r3
	stw		r0,0(r3)		# requestedScheduleTable_p=r3 Channel=r0
	b		.L280
.L281:
#                 }
#                 /* Check if the requested schedule is of type run continuous */
#                 else
#                 {
#                     /* Update the Run continuous Schedule table index */
#                     crntChannel_p->LinIf_channelManager_p->LinIf_RunContSchTableIndexRequested = Schedule;
	.d2line		135
.Llo8:
	lwz		r3,8(r1)		# requestedScheduleTable_p=r3
.Llo19:
	lwz		r3,28(r3)		# requestedScheduleTable_p=r3 requestedScheduleTable_p=r3
	stb		r31,4(r3)		# requestedScheduleTable_p=r3 Schedule=r31
# 
#                     if (Schedule==NULL_SCHEDULE) {
	.d2line		137
	rlwinm		r31,r31,0,24,31		# Schedule=r31 Schedule=r31
	se_cmpi		r31,0		# Schedule=r31
	bc		0,2,.L283	# ne
#                         crntChannel_p->LinIf_channelManager_p->LinIf_NewScheduleTableType = NULL_SCHEDULE;
	.d2line		138
.Llo14:
	diab.li		r0,0		# Channel=r0
.Llo9:
	lwz		r3,8(r1)		# requestedScheduleTable_p=r3
.Llo20:
	lwz		r3,28(r3)		# requestedScheduleTable_p=r3 requestedScheduleTable_p=r3
	stw		r0,0(r3)		# requestedScheduleTable_p=r3 Channel=r0
	b		.L280
.L283:
#                     }
#                     else
#                     {
#                         crntChannel_p->LinIf_channelManager_p->LinIf_NewScheduleTableType = ACTIVE_RUN_CONTINUOUS;
	.d2line		142
.Llo10:
	diab.li		r0,2		# Channel=r0
.Llo11:
	lwz		r3,8(r1)		# requestedScheduleTable_p=r3
.Llo21:
	lwz		r3,28(r3)		# requestedScheduleTable_p=r3 requestedScheduleTable_p=r3
	stw		r0,0(r3)		# requestedScheduleTable_p=r3 Channel=r0
	.section	.text_vle
.L310:
.L280:
#                     }
#                 }
# #if ( LINIF_TP_SUPPORTED == STD_ON )
#                 crntChannel_p->LinIf_channelManager_p->LinIf_SchTableLastRequested = Schedule;
# #endif
#             }    /*[LINIF389]*/
# #else
#             crntChannel_p->LinIf_channelManager_p->LinIf_ScheduleTableType = ACTIVE_SCHEDULE_MANAGER_OFF;
# 
#                 /* Get the Schedule Table index */
#             crntChannel_p->LinIf_channelManager_p->LinIf_ScheduleTableIndex = Schedule; /*[LINIF028]*/
# 
# #endif /* End of LINIF_ENABLE_SCHEDULE_TABLE_MANAGER  */
#         }
#     } /* [SWS_LinIf_00535] */
# 
#     return ReturnVal;
	.d2line		159
.Llo12:
	rlwinm		r3,r30,0,24,31		# requestedScheduleTable_p=r3 ReturnVal=r30
# } /* End of LinIf_ScheduleRequest() */
	.d2line		160
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo16:
	lwz		r0,36(r1)		# Channel=r0
	mtspr		lr,r0		# Channel=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo15:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L292:
	.type		LinIf_ScheduleRequest,@function
	.size		LinIf_ScheduleRequest,.-LinIf_ScheduleRequest
# Number of nodes = 98

# Allocations for LinIf_ScheduleRequest
#	?a4		Channel
#	?a5		Schedule
#	?a6		$$83
#	?a7		ReturnVal
#	SP,8		crntChannel_p
#	?a8		requestedScheduleTable_p

# Allocations for module
	.section	.text_vle
#$$ld
.L5:
.L457:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\AUTOSAR\\ar422\\Lin_GeneralTypes.h"
.L328:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinIf\\ssc\\make\\..\\inc\\LinIf_Types.h"
.L321:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinIf\\ssc\\make\\..\\inc\\LinIf_Private.h"
.L293:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinIf\\ssc\\make\\..\\src\\LinIf_ScheduleRequest.c"
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
	.uleb128	6
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
	.uleb128	7
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
	.uleb128	8
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
	.uleb128	9
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
	.uleb128	10
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
	.uleb128	11
	.uleb128	40
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	28
	.uleb128	13
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	12
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
	.uleb128	13
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
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
	.uleb128	15
	.uleb128	15
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	16
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	17
	.uleb128	33
	.byte		0x0
	.uleb128	47
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	18
	.uleb128	21
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	39
	.uleb128	12
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	19
	.uleb128	5
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinIf\\ssc\\make\\..\\src\\LinIf_ScheduleRequest.c"
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
.L297:
	.sleb128	2
	.4byte		.L290-.L2
	.byte		"LinIf_ScheduleRequest"
	.byte		0
	.4byte		.L293
	.uleb128	48
	.uleb128	35
	.4byte		.L294
	.byte		0x1
	.byte		0x1
	.4byte		.L291
	.4byte		.L292
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L293
	.uleb128	48
	.uleb128	35
	.byte		"Channel"
	.byte		0
	.4byte		.L298
	.4byte		.L299
	.sleb128	3
	.4byte		.L293
	.uleb128	48
	.uleb128	35
	.byte		"Schedule"
	.byte		0
	.4byte		.L300
	.4byte		.L301
	.section	.debug_info,,n
.L302:
	.sleb128	4
	.4byte		.L293
	.uleb128	52
	.uleb128	43
	.byte		"ReturnVal"
	.byte		0
	.4byte		.L294
	.4byte		.L303
	.section	.debug_info,,n
.L304:
	.sleb128	5
	.4byte		.L293
	.uleb128	55
	.uleb128	56
	.byte		"crntChannel_p"
	.byte		0
	.4byte		.L305
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
	.section	.debug_info,,n
	.sleb128	6
	.4byte		.L312
	.4byte		.L309
	.4byte		.L310
.L313:
	.sleb128	4
	.4byte		.L293
	.uleb128	121
	.uleb128	79
	.byte		"requestedScheduleTable_p"
	.byte		0
	.4byte		.L314
	.4byte		.L319
	.section	.debug_info,,n
	.sleb128	0
.L312:
	.section	.debug_info,,n
	.sleb128	0
.L290:
	.section	.debug_info,,n
.L320:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L321
	.uleb128	206
	.uleb128	33
	.byte		"LinIf_GlobalInitStsFlag"
	.byte		0
	.4byte		.L322
	.0byte		.L320
.L323:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L321
	.uleb128	228
	.uleb128	64
	.byte		"LinIf_ConfigChannel_Reloc_p"
	.byte		0
	.4byte		.L324
	.section	.debug_info,,n
.L308:
	.sleb128	8
	.4byte		.L328
	.uleb128	322
	.uleb128	1
	.4byte		.L329-.L2
	.uleb128	32
	.section	.debug_info,,n
.L240:
	.sleb128	9
	.byte		"LinTrcvDrvCalls_p"
	.byte		0
	.4byte		.L330
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L241:
	.sleb128	9
	.byte		"WakeupSourceIdLin"
	.byte		0
	.4byte		.L334
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L242:
	.sleb128	9
	.byte		"WakeupSourceIdTrcv"
	.byte		0
	.4byte		.L334
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L243:
	.sleb128	9
	.byte		"LinIfChannelIndex"
	.byte		0
	.4byte		.L337
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L244:
	.sleb128	9
	.byte		"ExternalChannelIndex"
	.byte		0
	.4byte		.L338
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
.L245:
	.sleb128	9
	.byte		"LinIfDelayForSleep"
	.byte		0
	.4byte		.L334
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L246:
	.sleb128	9
	.byte		"LinIfStartupState"
	.byte		0
	.4byte		.L339
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L247:
	.sleb128	9
	.byte		"LinDrvCalls_p"
	.byte		0
	.4byte		.L342
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L248:
	.sleb128	9
	.byte		"LinIf_channelManager_p"
	.byte		0
	.4byte		.L346
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
	.sleb128	0
.L329:
.L327:
	.sleb128	8
	.4byte		.L328
	.uleb128	322
	.uleb128	1
	.4byte		.L350-.L2
	.uleb128	24
.L233:
	.sleb128	9
	.byte		"LinIfMaxLinFrames"
	.byte		0
	.4byte		.L337
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L234:
	.sleb128	9
	.byte		"LinIfMaxSchedules"
	.byte		0
	.4byte		.L337
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L235:
	.sleb128	9
	.byte		"LinIfFrame_p"
	.byte		0
	.4byte		.L351
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L236:
	.sleb128	9
	.byte		"LinIfScheduleTable_p"
	.byte		0
	.4byte		.L315
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L237:
	.sleb128	9
	.byte		"ETCollisionDetectd_p"
	.byte		0
	.4byte		.L355
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L238:
	.sleb128	9
	.byte		"SPPendingRequest_p"
	.byte		0
	.4byte		.L355
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L239:
	.sleb128	9
	.byte		"LinIf_ScheduleTableEntry_p"
	.byte		0
	.4byte		.L356
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L350:
.L349:
	.sleb128	8
	.4byte		.L328
	.uleb128	322
	.uleb128	1
	.4byte		.L357-.L2
	.uleb128	48
.L223:
	.sleb128	9
	.byte		"LinIf_NewScheduleTableType"
	.byte		0
	.4byte		.L358
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L224:
	.sleb128	9
	.byte		"LinIf_RunContSchTableIndexRequested"
	.byte		0
	.4byte		.L300
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L225:
	.sleb128	9
	.byte		"LinIf_RunOnceSchTableRequested"
	.byte		0
	.4byte		.L300
	.sleb128	2
	.byte		0x23
	.uleb128	5
	.byte		0x1
.L226:
	.sleb128	9
	.byte		"LinIf_EntryDelayCounter"
	.byte		0
	.4byte		.L360
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L227:
	.sleb128	9
	.byte		"LinIf_SleepDelayCounter"
	.byte		0
	.4byte		.L335
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L228:
	.sleb128	9
	.byte		"LinIf_ScheduleTableIndex"
	.byte		0
	.4byte		.L300
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L229:
	.sleb128	9
	.byte		"LinIf_ScheduleTableType"
	.byte		0
	.4byte		.L358
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L230:
	.sleb128	9
	.byte		"LinIf_BusStatus"
	.byte		0
	.4byte		.L362
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L231:
	.sleb128	9
	.byte		"LinIf_ChannelSubState"
	.byte		0
	.4byte		.L364
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L232:
	.sleb128	9
	.byte		"LinIf_ChannelState"
	.byte		0
	.4byte		.L340
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
	.sleb128	0
.L357:
.L363:
	.sleb128	8
	.4byte		.L328
	.uleb128	322
	.uleb128	1
	.4byte		.L366-.L2
	.uleb128	20
.L219:
	.sleb128	9
	.byte		"Lin_DriverGetStatusVal"
	.byte		0
	.4byte		.L367
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L220:
	.sleb128	9
	.byte		"LinIf_frameStatus"
	.byte		0
	.4byte		.L368
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L221:
	.sleb128	9
	.byte		"LinIf_frameEntry_p"
	.byte		0
	.4byte		.L370
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L222:
	.sleb128	9
	.byte		"LinIf_RxData"
	.byte		0
	.4byte		.L374
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L366:
.L318:
	.sleb128	8
	.4byte		.L328
	.uleb128	322
	.uleb128	1
	.4byte		.L376-.L2
	.uleb128	20
.L213:
	.sleb128	9
	.byte		"LinIfResumePosition"
	.byte		0
	.4byte		.L377
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L214:
	.sleb128	9
	.byte		"LinIfRunMode"
	.byte		0
	.4byte		.L380
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L215:
	.sleb128	9
	.byte		"LinIfScheduleMode"
	.byte		0
	.4byte		.L383
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L216:
	.sleb128	9
	.byte		"LinIfScheduleTableIndex"
	.byte		0
	.4byte		.L386
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L217:
	.sleb128	9
	.byte		"LinIfMaxSchEntry"
	.byte		0
	.4byte		.L337
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
.L218:
	.sleb128	9
	.byte		"LinIfEntry_p"
	.byte		0
	.4byte		.L370
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L376:
.L373:
	.sleb128	8
	.4byte		.L328
	.uleb128	322
	.uleb128	1
	.4byte		.L387-.L2
	.uleb128	8
.L210:
	.sleb128	9
	.byte		"LinIfDelay"
	.byte		0
	.4byte		.L388
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L211:
	.sleb128	9
	.byte		"LinIfCollisionResolvingRef"
	.byte		0
	.4byte		.L386
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L212:
	.sleb128	9
	.byte		"LinIfFrameRef"
	.byte		0
	.4byte		.L351
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L387:
.L354:
	.sleb128	8
	.4byte		.L328
	.uleb128	322
	.uleb128	1
	.4byte		.L389-.L2
	.uleb128	32
.L196:
	.sleb128	9
	.byte		"LinIfChecksumType"
	.byte		0
	.4byte		.L390
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L197:
	.sleb128	9
	.byte		"LinIfFrameType"
	.byte		0
	.4byte		.L392
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L198:
	.sleb128	9
	.byte		"LinIfLength"
	.byte		0
	.4byte		.L395
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L199:
	.sleb128	9
	.byte		"LinIfPid"
	.byte		0
	.4byte		.L397
	.sleb128	2
	.byte		0x23
	.uleb128	9
	.byte		0x1
.L200:
	.sleb128	9
	.byte		"LinIfTxConfirmationId"
	.byte		0
	.4byte		.L399
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L201:
	.sleb128	9
	.byte		"LinIfPduDirection"
	.byte		0
	.4byte		.L401
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L202:
	.sleb128	9
	.byte		"LinIfFixedFrameSduData"
	.byte		0
	.4byte		.L403
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
.L203:
	.sleb128	9
	.byte		"LinIfRxTxTargetPduRef"
	.byte		0
	.4byte		.L399
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L204:
	.sleb128	9
	.byte		"LinIfSubsFrames_p"
	.byte		0
	.4byte		.L405
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L205:
	.sleb128	9
	.byte		"LinIfNoOfSubEntry"
	.byte		0
	.4byte		.L337
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L206:
	.sleb128	9
	.byte		"LinIfFunctionIndex"
	.byte		0
	.4byte		.L388
	.sleb128	2
	.byte		0x23
	.uleb128	30
	.byte		0x1
	.sleb128	0
.L389:
.L408:
	.sleb128	8
	.4byte		.L328
	.uleb128	322
	.uleb128	1
	.4byte		.L409-.L2
	.uleb128	2
.L194:
	.sleb128	9
	.byte		"LinIfSubFrameIndex"
	.byte		0
	.4byte		.L337
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L195:
	.sleb128	9
	.byte		"LinIfSubFramePriority"
	.byte		0
	.4byte		.L337
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
	.sleb128	0
.L409:
.L333:
	.sleb128	8
	.4byte		.L328
	.uleb128	232
	.uleb128	14
	.4byte		.L410-.L2
	.uleb128	20
.L183:
	.sleb128	9
	.byte		"LinTrcv_SetOpMode_p"
	.byte		0
	.4byte		.L411
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L184:
	.sleb128	9
	.byte		"LinTrcv_GetOpMode_p"
	.byte		0
	.4byte		.L416
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L185:
	.sleb128	9
	.byte		"LinTrcv_GetBusWuReason_p"
	.byte		0
	.4byte		.L420
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L186:
	.sleb128	9
	.byte		"LinTrcv_SetWakeupMode_p"
	.byte		0
	.4byte		.L426
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L187:
	.sleb128	9
	.byte		"LinTrcv_CheckWakeup_p"
	.byte		0
	.4byte		.L431
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L410:
.L345:
	.sleb128	8
	.4byte		.L328
	.uleb128	184
	.uleb128	1
	.4byte		.L434-.L2
	.uleb128	24
.L177:
	.sleb128	9
	.byte		"Lin_SendFrame_p"
	.byte		0
	.4byte		.L435
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L178:
	.sleb128	9
	.byte		"Lin_GoToSleep_p"
	.byte		0
	.4byte		.L441
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L179:
	.sleb128	9
	.byte		"Lin_GoToSleepInternal_p"
	.byte		0
	.4byte		.L444
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L180:
	.sleb128	9
	.byte		"Lin_Wakeup_p"
	.byte		0
	.4byte		.L447
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L181:
	.sleb128	9
	.byte		"Lin_GetStatus_p"
	.byte		0
	.4byte		.L450
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L182:
	.sleb128	9
	.byte		"Lin_CheckWakeup_p"
	.byte		0
	.4byte		.L454
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L434:
.L440:
	.sleb128	8
	.4byte		.L457
	.uleb128	59
	.uleb128	13
	.4byte		.L458-.L2
	.uleb128	8
.L92:
	.sleb128	9
	.byte		"Pid"
	.byte		0
	.4byte		.L398
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L93:
	.sleb128	9
	.byte		"Cs"
	.byte		0
	.4byte		.L391
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L94:
	.sleb128	9
	.byte		"Drc"
	.byte		0
	.4byte		.L402
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L95:
	.sleb128	9
	.byte		"Dl"
	.byte		0
	.4byte		.L396
	.sleb128	2
	.byte		0x23
	.uleb128	3
	.byte		0x1
.L96:
	.sleb128	9
	.byte		"SduPtr"
	.byte		0
	.4byte		.L356
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L458:
	.section	.debug_info,,n
.L385:
	.sleb128	10
	.4byte		.L328
	.uleb128	232
	.uleb128	14
	.4byte		.L459-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	11
	.byte		"LINTP_APPLICATIVE_SCHEDULE"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"LINTP_DIAG_REQUEST"
	.byte		0
	.sleb128	1
	.sleb128	11
	.byte		"LINTP_DIAG_RESPONSE"
	.byte		0
	.sleb128	2
	.sleb128	0
.L459:
.L369:
	.sleb128	10
	.4byte		.L328
	.uleb128	184
	.uleb128	1
	.4byte		.L460-.L2
	.uleb128	4
	.sleb128	11
	.byte		"LINIF_FRAME_IDLE"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"LINIF_FRAME_RX_ONGOING"
	.byte		0
	.sleb128	1
	.sleb128	11
	.byte		"LINIF_FRAME_TX_ONGOING"
	.byte		0
	.sleb128	2
	.sleb128	11
	.byte		"LINIF_FRAME_FINISHED"
	.byte		0
	.sleb128	3
	.sleb128	11
	.byte		"LINIF_FRAME_ERROR"
	.byte		0
	.sleb128	4
	.sleb128	0
.L460:
.L394:
	.sleb128	10
	.4byte		.L328
	.uleb128	110
	.uleb128	1
	.4byte		.L461-.L2
	.uleb128	4
	.sleb128	11
	.byte		"INVALID_STATE"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"FREE"
	.byte		0
	.sleb128	1
	.sleb128	11
	.byte		"ASSIGN"
	.byte		0
	.sleb128	2
	.sleb128	11
	.byte		"ASSIGN_FRAME_ID_RANGE"
	.byte		0
	.sleb128	3
	.sleb128	11
	.byte		"EVENT_TRIGGERED"
	.byte		0
	.sleb128	4
	.sleb128	11
	.byte		"SAVE_CONFIGURATION"
	.byte		0
	.sleb128	5
	.sleb128	11
	.byte		"SPORADIC"
	.byte		0
	.sleb128	6
	.sleb128	11
	.byte		"SRF"
	.byte		0
	.sleb128	7
	.sleb128	11
	.byte		"UNASSIGN"
	.byte		0
	.sleb128	8
	.sleb128	11
	.byte		"UNCONDITIONAL"
	.byte		0
	.sleb128	9
	.sleb128	0
.L461:
.L379:
	.sleb128	10
	.4byte		.L328
	.uleb128	102
	.uleb128	1
	.4byte		.L462-.L2
	.uleb128	4
	.sleb128	11
	.byte		"CONTINUE_AT_IT_POINT"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"START_FROM_BEGINNING"
	.byte		0
	.sleb128	1
	.sleb128	0
.L462:
.L365:
	.sleb128	10
	.4byte		.L328
	.uleb128	87
	.uleb128	1
	.4byte		.L463-.L2
	.uleb128	4
	.sleb128	11
	.byte		"LINIF_CHANNEL_SUBSTATE_IDLE"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"LINIF_CHANNEL_SLEEP_REQUEST"
	.byte		0
	.sleb128	1
	.sleb128	11
	.byte		"LINIF_CHANNEL_SLEEP_PENDING"
	.byte		0
	.sleb128	2
	.sleb128	11
	.byte		"LINIF_CHANNEL_GOTO_SLEEP_INTERNAL"
	.byte		0
	.sleb128	3
	.sleb128	11
	.byte		"LINIF_CHANNEL_WAKEUP_CONFIRMATION_PENDING_TYPE_FALSE"
	.byte		0
	.sleb128	4
	.sleb128	11
	.byte		"LINIF_CHANNEL_WAKEUP_CONFIRMATION_PENDING_TYPE_TRUE"
	.byte		0
	.sleb128	5
	.sleb128	0
.L463:
.L341:
	.sleb128	10
	.4byte		.L328
	.uleb128	79
	.uleb128	1
	.4byte		.L464-.L2
	.uleb128	4
	.sleb128	11
	.byte		"LINIF_CHANNEL_UNINIT"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"LINIF_CHANNEL_OPERATIONAL"
	.byte		0
	.sleb128	1
	.sleb128	11
	.byte		"LINIF_CHANNEL_SLEEP"
	.byte		0
	.sleb128	2
	.sleb128	0
.L464:
.L359:
	.sleb128	10
	.4byte		.L328
	.uleb128	70
	.uleb128	1
	.4byte		.L465-.L2
	.uleb128	4
	.sleb128	11
	.byte		"NULL_SCHEDULE"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"ACTIVE_RUN_ONCE"
	.byte		0
	.sleb128	1
	.sleb128	11
	.byte		"ACTIVE_RUN_CONTINUOUS"
	.byte		0
	.sleb128	2
	.sleb128	11
	.byte		"ACTIVE_SCHEDULE_MANAGER_OFF"
	.byte		0
	.sleb128	3
	.sleb128	0
.L465:
.L382:
	.sleb128	10
	.4byte		.L328
	.uleb128	63
	.uleb128	1
	.4byte		.L466-.L2
	.uleb128	4
	.sleb128	11
	.byte		"RUN_CONTINUOUS"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"RUN_ONCE"
	.byte		0
	.sleb128	1
	.sleb128	0
.L466:
.L415:
	.sleb128	10
	.4byte		.L457
	.uleb128	59
	.uleb128	13
	.4byte		.L467-.L2
	.uleb128	4
	.sleb128	11
	.byte		"LINTRCV_TRCV_MODE_NORMAL"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"LINTRCV_TRCV_MODE_STANDBY"
	.byte		0
	.sleb128	1
	.sleb128	11
	.byte		"LINTRCV_TRCV_MODE_SLEEP"
	.byte		0
	.sleb128	2
	.sleb128	0
.L467:
.L425:
	.sleb128	10
	.4byte		.L457
	.uleb128	49
	.uleb128	13
	.4byte		.L468-.L2
	.uleb128	4
	.sleb128	11
	.byte		"LINTRCV_WU_ERROR"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"LINTRCV_WU_NOT_SUPPORTED"
	.byte		0
	.sleb128	1
	.sleb128	11
	.byte		"LINTRCV_WU_BY_BUS"
	.byte		0
	.sleb128	2
	.sleb128	11
	.byte		"LINTRCV_WU_BY_PIN"
	.byte		0
	.sleb128	3
	.sleb128	11
	.byte		"LINTRCV_WU_INTERNALLY"
	.byte		0
	.sleb128	4
	.sleb128	11
	.byte		"LINTRCV_WU_RESET"
	.byte		0
	.sleb128	5
	.sleb128	11
	.byte		"LINTRCV_WU_POWER_ON"
	.byte		0
	.sleb128	6
	.sleb128	0
.L468:
.L430:
	.sleb128	10
	.4byte		.L457
	.uleb128	42
	.uleb128	13
	.4byte		.L469-.L2
	.uleb128	4
	.sleb128	11
	.byte		"LINTRCV_WUMODE_ENABLE"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"LINTRCV_WUMODE_DISABLE"
	.byte		0
	.sleb128	1
	.sleb128	11
	.byte		"LINTRCV_WUMODE_CLEAR"
	.byte		0
	.sleb128	2
	.sleb128	0
.L469:
	.section	.debug_info,,n
.L296:
	.sleb128	12
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L295:
	.sleb128	13
	.byte		"uint8"
	.byte		0
	.4byte		.L296
.L294:
	.sleb128	13
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L295
.L298:
	.sleb128	13
	.byte		"NetworkHandleType"
	.byte		0
	.4byte		.L295
.L300:
	.sleb128	13
	.byte		"LinIf_SchHandleType"
	.byte		0
	.4byte		.L295
.L307:
	.sleb128	13
	.byte		"LinIfChannel"
	.byte		0
	.4byte		.L308
	.section	.debug_info,,n
.L306:
	.sleb128	14
	.4byte		.L307
	.section	.debug_info,,n
.L305:
	.sleb128	15
	.4byte		.L306
.L317:
	.sleb128	13
	.byte		"LinIfScheduleTable"
	.byte		0
	.4byte		.L318
.L316:
	.sleb128	14
	.4byte		.L317
.L315:
	.sleb128	15
	.4byte		.L316
.L314:
	.sleb128	14
	.4byte		.L315
.L322:
	.sleb128	13
	.byte		"boolean"
	.byte		0
	.4byte		.L296
.L326:
	.sleb128	13
	.byte		"LinIfChannelReloc"
	.byte		0
	.4byte		.L327
.L325:
	.sleb128	14
	.4byte		.L326
.L324:
	.sleb128	15
	.4byte		.L325
.L332:
	.sleb128	13
	.byte		"LinIf_LinTrcvDrvCalls_t"
	.byte		0
	.4byte		.L333
.L331:
	.sleb128	14
	.4byte		.L332
.L330:
	.sleb128	15
	.4byte		.L331
.L336:
	.sleb128	12
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L335:
	.sleb128	13
	.byte		"uint32"
	.byte		0
	.4byte		.L336
.L334:
	.sleb128	14
	.4byte		.L335
.L337:
	.sleb128	14
	.4byte		.L295
.L338:
	.sleb128	14
	.4byte		.L298
.L340:
	.sleb128	13
	.byte		"LinIf_ChannelState_t"
	.byte		0
	.4byte		.L341
.L339:
	.sleb128	14
	.4byte		.L340
.L344:
	.sleb128	13
	.byte		"LinIf_LinDrvCalls_t"
	.byte		0
	.4byte		.L345
.L343:
	.sleb128	14
	.4byte		.L344
.L342:
	.sleb128	15
	.4byte		.L343
.L348:
	.sleb128	13
	.byte		"LinIfChannelManager"
	.byte		0
	.4byte		.L349
.L347:
	.sleb128	15
	.4byte		.L348
.L346:
	.sleb128	14
	.4byte		.L347
.L353:
	.sleb128	13
	.byte		"LinIfFrame"
	.byte		0
	.4byte		.L354
.L352:
	.sleb128	14
	.4byte		.L353
.L351:
	.sleb128	15
	.4byte		.L352
.L355:
	.sleb128	15
	.4byte		.L322
.L356:
	.sleb128	15
	.4byte		.L295
.L358:
	.sleb128	13
	.byte		"LinIfSchTableType_t"
	.byte		0
	.4byte		.L359
.L361:
	.sleb128	12
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L360:
	.sleb128	13
	.byte		"uint16"
	.byte		0
	.4byte		.L361
.L362:
	.sleb128	13
	.byte		"LinIf_BusStatusStruct"
	.byte		0
	.4byte		.L363
.L364:
	.sleb128	13
	.byte		"LinIf_ChannelSubState_t"
	.byte		0
	.4byte		.L365
.L367:
	.sleb128	13
	.byte		"Lin_StatusType"
	.byte		0
	.4byte		.L295
.L368:
	.sleb128	13
	.byte		"LinIf_frameStatusType"
	.byte		0
	.4byte		.L369
.L372:
	.sleb128	13
	.byte		"LinIfEntry"
	.byte		0
	.4byte		.L373
.L371:
	.sleb128	14
	.4byte		.L372
.L370:
	.sleb128	15
	.4byte		.L371
	.section	.debug_info,,n
.L374:
	.sleb128	16
	.4byte		.L375-.L2
	.4byte		.L295
	.section	.debug_info,,n
	.sleb128	17
	.uleb128	7
	.sleb128	0
.L375:
.L378:
	.sleb128	13
	.byte		"LinIfResumePosition_t"
	.byte		0
	.4byte		.L379
.L377:
	.sleb128	14
	.4byte		.L378
.L381:
	.sleb128	13
	.byte		"LinIfRunMode_t"
	.byte		0
	.4byte		.L382
.L380:
	.sleb128	14
	.4byte		.L381
.L384:
	.sleb128	13
	.byte		"LinTp_Mode"
	.byte		0
	.4byte		.L385
.L383:
	.sleb128	14
	.4byte		.L384
.L386:
	.sleb128	14
	.4byte		.L300
.L388:
	.sleb128	14
	.4byte		.L360
.L391:
	.sleb128	13
	.byte		"Lin_FrameCsModelType"
	.byte		0
	.4byte		.L295
.L390:
	.sleb128	14
	.4byte		.L391
.L393:
	.sleb128	13
	.byte		"LinIfFrameType_t"
	.byte		0
	.4byte		.L394
.L392:
	.sleb128	14
	.4byte		.L393
.L396:
	.sleb128	13
	.byte		"Lin_FrameDlType"
	.byte		0
	.4byte		.L295
.L395:
	.sleb128	14
	.4byte		.L396
.L398:
	.sleb128	13
	.byte		"Lin_FramePidType"
	.byte		0
	.4byte		.L295
.L397:
	.sleb128	14
	.4byte		.L398
.L400:
	.sleb128	13
	.byte		"PduIdType"
	.byte		0
	.4byte		.L360
.L399:
	.sleb128	14
	.4byte		.L400
.L402:
	.sleb128	13
	.byte		"Lin_FrameResponseType"
	.byte		0
	.4byte		.L295
.L401:
	.sleb128	14
	.4byte		.L402
.L403:
	.sleb128	16
	.4byte		.L404-.L2
	.4byte		.L337
	.sleb128	17
	.uleb128	7
	.sleb128	0
.L404:
.L407:
	.sleb128	13
	.byte		"LinIfSubstitutionFrames"
	.byte		0
	.4byte		.L408
.L406:
	.sleb128	14
	.4byte		.L407
.L405:
	.sleb128	15
	.4byte		.L406
	.section	.debug_info,,n
.L412:
	.sleb128	18
	.4byte		.L413-.L2
	.4byte		.L294
	.byte		0x1
	.section	.debug_info,,n
	.sleb128	19
	.4byte		.L295
.L414:
	.sleb128	13
	.byte		"LinTrcv_TrcvModeType"
	.byte		0
	.4byte		.L415
	.sleb128	19
	.4byte		.L414
	.sleb128	0
.L413:
.L411:
	.sleb128	15
	.4byte		.L412
.L417:
	.sleb128	18
	.4byte		.L418-.L2
	.4byte		.L294
	.byte		0x1
	.sleb128	19
	.4byte		.L295
.L419:
	.sleb128	15
	.4byte		.L414
	.sleb128	19
	.4byte		.L419
	.sleb128	0
.L418:
.L416:
	.sleb128	15
	.4byte		.L417
.L421:
	.sleb128	18
	.4byte		.L422-.L2
	.4byte		.L294
	.byte		0x1
	.sleb128	19
	.4byte		.L295
.L424:
	.sleb128	13
	.byte		"LinTrcv_TrcvWakeupReasonType"
	.byte		0
	.4byte		.L425
.L423:
	.sleb128	15
	.4byte		.L424
	.sleb128	19
	.4byte		.L423
	.sleb128	0
.L422:
.L420:
	.sleb128	15
	.4byte		.L421
.L427:
	.sleb128	18
	.4byte		.L428-.L2
	.4byte		.L294
	.byte		0x1
	.sleb128	19
	.4byte		.L295
.L429:
	.sleb128	13
	.byte		"LinTrcv_TrcvWakeupModeType"
	.byte		0
	.4byte		.L430
	.sleb128	19
	.4byte		.L429
	.sleb128	0
.L428:
.L426:
	.sleb128	15
	.4byte		.L427
.L432:
	.sleb128	18
	.4byte		.L433-.L2
	.4byte		.L294
	.byte		0x1
	.sleb128	19
	.4byte		.L295
	.sleb128	0
.L433:
.L431:
	.sleb128	15
	.4byte		.L432
.L436:
	.sleb128	18
	.4byte		.L437-.L2
	.4byte		.L294
	.byte		0x1
	.sleb128	19
	.4byte		.L295
.L439:
	.sleb128	13
	.byte		"Lin_PduType"
	.byte		0
	.4byte		.L440
.L438:
	.sleb128	15
	.4byte		.L439
	.sleb128	19
	.4byte		.L438
	.sleb128	0
.L437:
.L435:
	.sleb128	15
	.4byte		.L436
.L442:
	.sleb128	18
	.4byte		.L443-.L2
	.4byte		.L294
	.byte		0x1
	.sleb128	19
	.4byte		.L295
	.sleb128	0
.L443:
.L441:
	.sleb128	15
	.4byte		.L442
.L445:
	.sleb128	18
	.4byte		.L446-.L2
	.4byte		.L294
	.byte		0x1
	.sleb128	19
	.4byte		.L295
	.sleb128	0
.L446:
.L444:
	.sleb128	15
	.4byte		.L445
.L448:
	.sleb128	18
	.4byte		.L449-.L2
	.4byte		.L294
	.byte		0x1
	.sleb128	19
	.4byte		.L295
	.sleb128	0
.L449:
.L447:
	.sleb128	15
	.4byte		.L448
.L451:
	.sleb128	18
	.4byte		.L452-.L2
	.4byte		.L367
	.byte		0x1
	.sleb128	19
	.4byte		.L295
.L453:
	.sleb128	15
	.4byte		.L356
	.sleb128	19
	.4byte		.L453
	.sleb128	0
.L452:
.L450:
	.sleb128	15
	.4byte		.L451
.L455:
	.sleb128	18
	.4byte		.L456-.L2
	.4byte		.L294
	.byte		0x1
	.sleb128	19
	.4byte		.L295
	.sleb128	0
.L456:
.L454:
	.sleb128	15
	.4byte		.L455
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L299:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),0
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),0
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),0
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),0
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo12),0
	.d2locend
.L301:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo3),4
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo14),31
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo15),4
	.d2locend
.L303:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo16),30
	.d2locend
.L319:
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo6),3
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo8),3
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo14),3
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo10),3
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo12),3
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "LinIf_ScheduleRequest"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "LinIf_FindChannel"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\LinIf_ScheduleRequest.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\LinIf_ScheduleRequest.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\LinIf_ScheduleRequest.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\LinIf_ScheduleRequest.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\LinIf_ScheduleRequest.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\LinIf_ScheduleRequest.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\LinIf\ssc\make\..\src\LinIf_ScheduleRequest.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
