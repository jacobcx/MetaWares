#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"LinIf_CheckWakeup.c"
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
# FUNC (Std_ReturnType, LINIF_CODE) LinIf_CheckWakeup(EcuM_WakeupSourceType WakeupSource)
	.align		2
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinIf\\ssc\\make\\..\\src\\LinIf_CheckWakeup.c"
        .d2line         52,35
#$$ld
.L309:

#$$bf	LinIf_CheckWakeup,interprocedural,rasave,nostackparams
	.globl		LinIf_CheckWakeup
	.d2_cfa_start __cie
LinIf_CheckWakeup:
.Llo1:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr
	stmw		r27,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	27,31,1,1
	stw		r0,52(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# WakeupSource=r31 WakeupSource=r3
	.d2prologue_end
# {
#     VAR (Std_ReturnType, AUTOMATIC) returnVal = E_OK;
	.d2line		54
	diab.li		r5,0		# returnVal=r5
# 
#     /* Check whether the LinIf module is already initialized */
#     if (LINIF_UNINIT == LinIf_GlobalInitStsFlag) /* [SWS_LinIf_00535] */
	.d2line		57
.Llo7:
	lis		r3,LinIf_GlobalInitStsFlag@ha
.Llo2:
	lbz		r0,LinIf_GlobalInitStsFlag@l(r3)
	se_cmpi		r0,0
	bc		0,2,.L279	# ne
#     {
# #if ( LINIF_DEV_ERROR_DETECT == STD_ON )
#         (void)Det_ReportError (LINIF_MODULE_ID,
#                     LINIF_INSTANCE_ID,
#                     LINIF_CHECKWAKEUP_FUN_ID,
#                     LINIF_E_UNINIT); /*[LINIF535]*/
# #endif
#         returnVal = E_NOT_OK;
	.d2line		65
.Llo3:
	diab.li		r30,1		# returnVal=r30
	b		.L280
.L279:
	.section	.text_vle
.L322:
#     }
#     else
#     {
#         /* Pointer to hold the channel pointer */
#         P2CONST (LinIfChannel, AUTOMATIC, LINIF_APPL_CONST) crntChannel_p = NULL_PTR;
	.d2line		70
	diab.li		r27,0		# crntChannel_p=r27
# 
#         VAR (uint16, AUTOMATIC) channelIndex;
#         for(channelIndex = 0U; channelIndex < LinIf_GlobalConfig_p->MaxLinIfChannel; channelIndex++)
	.d2line		73
.Llo11:
	diab.li		r3,0
.L281:
.Llo13:
	rlwinm		r0,r3,0,16,31		# channelIndex=r3
	lis		r4,LinIf_GlobalConfig_p@ha
	lwz		r4,LinIf_GlobalConfig_p@l(r4)
	lhz		r4,0(r4)
	se_cmp		r0,r4
	bc		0,0,.L285	# ge
#         {
#             if((WakeupSource == LinIf_ConfigChannelLT_p[channelIndex].WakeupSourceIdLin))
	.d2line		75
	lis		r4,LinIf_ConfigChannelLT_p@ha
	lwz		r4,LinIf_ConfigChannelLT_p@l(r4)
	rlwinm		r0,r3,5,11,26		# channelIndex=r3
	se_add		r4,r0
	lwz		r0,4(r4)
	se_cmpl		r0,r31		# WakeupSource=r31
	bc		0,2,.L284	# ne
#             {
#                 crntChannel_p = &(LinIf_ConfigChannelLT_p[channelIndex]);
	.d2line		77
.Llo14:
	lis		r4,LinIf_ConfigChannelLT_p@ha
	lwz		r27,LinIf_ConfigChannelLT_p@l(r4)		# crntChannel_p=r27
.Llo15:
	rlwinm		r3,r3,5,11,26		# channelIndex=r3 channelIndex=r3
	se_add		r3,r27		# channelIndex=r3 channelIndex=r3 crntChannel_p=r27
.Llo16:
	mr		r27,r3		# crntChannel_p=r27 crntChannel_p=r3
	b		.L285
.L284:
#                 break;
#             }
#             else if((WakeupSource == LinIf_ConfigChannelLT_p[channelIndex].WakeupSourceIdTrcv))
	.d2line		80
.Llo17:
	lis		r4,LinIf_ConfigChannelLT_p@ha
	lwz		r4,LinIf_ConfigChannelLT_p@l(r4)
	rlwinm		r0,r3,5,11,26		# channelIndex=r3
	se_add		r4,r0
	lwz		r0,8(r4)
	se_cmpl		r0,r31		# WakeupSource=r31
	bc		0,2,.L287	# ne
#             {
#                 crntChannel_p = &(LinIf_ConfigChannelLT_p[channelIndex]);
	.d2line		82
.Llo18:
	lis		r4,LinIf_ConfigChannelLT_p@ha
	lwz		r27,LinIf_ConfigChannelLT_p@l(r4)		# crntChannel_p=r27
.Llo19:
	rlwinm		r3,r3,5,11,26		# channelIndex=r3 channelIndex=r3
	se_add		r3,r27		# channelIndex=r3 channelIndex=r3 crntChannel_p=r27
.Llo20:
	mr		r27,r3		# crntChannel_p=r27 crntChannel_p=r3
	b		.L285
.L287:
#                 /* PRQA S 771 1 */ /* Misra 14.6 More than one 'break' statement has been used for better performance */
#                 break;
#             }
#             else
#             {
#                 /* do nothing */
#             }
#         }
	.d2line		90
.Llo21:
	diab.addi		r0,r3,1		# channelIndex=r3
	se_addi		r3,1		# channelIndex=r3 channelIndex=r3
	b		.L281
.L285:
# 
#         /* Check if the channel is out of range */
#         if(NULL_PTR == crntChannel_p)
	.d2line		93
	se_cmpi		r27,0		# crntChannel_p=r27
#         {
# #if ( LINIF_DEV_ERROR_DETECT == STD_ON )
#             /* Report to DET */
#             (void) Det_ReportError(LINIF_MODULE_ID,
#                                    LINIF_INSTANCE_ID,
#                                    LINIF_CHECKWAKEUP_FUN_ID,
#                                    LINIF_E_PARAM_WAKEUPSOURCE ); /*[LINIF566]*/
# #endif /* End of LINIF_DEV_ERROR_DETECT  */
#             /* Set the ReturnVal as NOT_OK */
#             returnVal = E_NOT_OK;
	.d2line		103
	diab.li		r30,1		# returnVal=r30
	isel		r30,r30,r5,2		# returnVal=r30 returnVal=r30 returnVal=r5
.L289:
#         }
#         if(E_OK == returnVal)
	.d2line		105
.Llo8:
	rlwinm		r3,r30,0,24,31		# channelIndex=r3 returnVal=r30
.Llo9:
	se_cmpi		r3,0		# channelIndex=r3
	bc		0,2,.L280	# ne
	.section	.text_vle
.L336:
#         {
#             VAR (Std_ReturnType, AUTOMATIC) returnValDrv = E_OK;
	.d2line		107
.Llo22:
	diab.li		r29,0		# returnValDrv=r29
# #if (LINIF_TRCV_DRIVER_SUPPORTED == STD_ON)
#             VAR (Std_ReturnType, AUTOMATIC) returnValTrcv = E_OK;
	.d2line		109
.Llo29:
	diab.li		r28,0
# #endif
# 
#             if(crntChannel_p->WakeupSourceIdLin == WakeupSource)
	.d2line		112
.Llo32:
	lwz		r0,4(r27)		# crntChannel_p=r27
	se_cmpl		r0,r31		# WakeupSource=r31
	bc		0,2,.L291	# ne
#             {
#                 /* Lin Driver call for CheckWakeup */
#                 returnValDrv =
	.d2line		115
	lwz		r3,24(r27)		# channelIndex=r3 crntChannel_p=r27
.Llo23:
	lwz		r0,20(r3)		# channelIndex=r3
	mtspr		ctr,r0
	lis		r3,LinIf_ChannelIdentifier_p@ha		# channelIndex=r3
	lwz		r0,LinIf_ChannelIdentifier_p@l(r3)		# channelIndex=r3
	lbz		r3,12(r27)		# channelIndex=r3 crntChannel_p=r27
	e_mulli		r3,r3,3		# channelIndex=r3 channelIndex=r3
	se_add		r3,r0		# channelIndex=r3 channelIndex=r3
	lbz		r3,2(r3)		# channelIndex=r3 channelIndex=r3
.Llo24:
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x8 0x0 0x0 0x1
#$$rs 1 u
	bcctrl		20,0
.Llo30:
	mr		r29,r3		# returnValDrv=r29 returnValDrv=r3
.L291:
#                     crntChannel_p->LinDrvCalls_p->Lin_CheckWakeup_p(LinIf_ChannelIdentifier_p[crntChannel_p->LinIfChannelIndex].LinIfChannelRef); /*[LINIF503]*/
#             }
# 
# #if (LINIF_TRCV_DRIVER_SUPPORTED == STD_ON)
#             /* Lin Trcv call for Wake up check */
#             if((NULL_PTR != crntChannel_p->LinTrcvDrvCalls_p) && (crntChannel_p->WakeupSourceIdTrcv == WakeupSource))
	.d2line		121
.Llo31:
	lwz		r0,0(r27)		# crntChannel_p=r27
	se_cmpi		r0,0
	bc		1,2,.L292	# eq
	lwz		r0,8(r27)		# crntChannel_p=r27
	se_cmpl		r0,r31		# WakeupSource=r31
	bc		0,2,.L292	# ne
#             {
#                 /* Lin Trcv call for CheckWakeup */
#                 returnValTrcv =
	.d2line		124
.Llo4:
	lwz		r3,0(r27)		# channelIndex=r3 crntChannel_p=r27
.Llo25:
	lwz		r0,16(r3)		# channelIndex=r3
	mtspr		ctr,r0
	lis		r3,LinIf_ChannelIdentifier_p@ha		# channelIndex=r3
	lwz		r3,LinIf_ChannelIdentifier_p@l(r3)		# channelIndex=r3 channelIndex=r3
	lbz		r0,12(r27)		# crntChannel_p=r27
	e_mulli		r0,r0,3
	lbzx		r3,r3,r0		# channelIndex=r3 channelIndex=r3
.Llo26:
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x8 0x0 0x0 0x1
#$$rs 1 u
	bcctrl		20,0
.Llo33:
	mr		r28,r3		# returnValTrcv=r28 returnValTrcv=r3
.L292:
#                         crntChannel_p->LinTrcvDrvCalls_p->LinTrcv_CheckWakeup_p(LinIf_ChannelIdentifier_p[crntChannel_p->LinIfChannelIndex].LinIfTrcvIdRef);
#             }
# #endif
# 
#             /*
#              * Check if any of the wakeup sources returned E_OK (BZ 18385)
#              * */
#             if((returnValDrv == E_OK)
	.d2line		132
.Llo5:
	rlwinm		r29,r29,0,24,31		# returnValDrv=r29 returnValDrv=r29
	se_cmpi		r29,0		# returnValDrv=r29
	bc		1,2,.L295	# eq
.Llo6:
	rlwinm		r28,r28,0,24,31		# returnValTrcv=r28 returnValTrcv=r28
	se_cmpi		r28,0		# returnValTrcv=r28
	bc		0,2,.L293	# ne
.L295:
# #if (LINIF_TRCV_DRIVER_SUPPORTED == STD_ON)
#                     || (returnValTrcv == E_OK)
# #endif
#                     )
#             {
#                 /* Disable all interrupts */
#                 SchM_Enter_LinIf_ExclusiveArea0();
	.d2line		139
	bl		SchM_Enter_LinIf_ExclusiveArea0
#                     /* Set the channel status as Operational */
#                 crntChannel_p->LinIf_channelManager_p->LinIf_ChannelSubState = LINIF_CHANNEL_SUBSTATE_IDLE;
	.d2line		141
	diab.li		r0,0
	lwz		r3,28(r27)		# channelIndex=r3 crntChannel_p=r27
.Llo27:
	stw		r0,40(r3)		# channelIndex=r3
#                 crntChannel_p->LinIf_channelManager_p->LinIf_ChannelState = LINIF_CHANNEL_OPERATIONAL; /*[LINIF478_A]*/ /*[LINIF186]*/
	.d2line		142
	diab.li		r0,1
	lwz		r3,28(r27)		# channelIndex=r3 crntChannel_p=r27
	stw		r0,44(r3)		# channelIndex=r3
#                     /* Enable all interrupts */
#                 SchM_Exit_LinIf_ExclusiveArea0();
	.d2line		144
	bl		SchM_Exit_LinIf_ExclusiveArea0
.Llo28:
	b		.L280
.L293:
#             }
#             else
#             {
#                 returnVal = E_NOT_OK;
	.d2line		148
.Llo34:
	diab.li		r30,1		# returnVal=r30
	.section	.text_vle
.L337:
	.section	.text_vle
.L323:
.L280:
#             }
#         }
#     } /* [SWS_LinIf_00535] */
#     /* Return value of the function */
#     return (returnVal);
	.d2line		153
.Llo12:
	rlwinm		r3,r30,0,24,31		# channelIndex=r3 returnVal=r30
# } /* End of LinIf_CheckWakeup() */
	.d2line		154
	.d2epilogue_begin
	lmw		r27,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo10:
	lwz		r0,52(r1)
	mtspr		lr,r0
	diab.addi		r1,r1,48		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L310:
	.type		LinIf_CheckWakeup,@function
	.size		LinIf_CheckWakeup,.-LinIf_CheckWakeup
# Number of nodes = 180

# Allocations for LinIf_CheckWakeup
#	?a4		WakeupSource
#	?a5		returnVal
#	?a6		crntChannel_p
#	?a7		channelIndex
#	?a8		returnValDrv
#	?a9		returnValTrcv

# Allocations for module
	.section	.text_vle
	.0byte		.L352
	.section	.text_vle
#$$ld
.L5:
.L506:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\AUTOSAR\\ar422\\Lin_GeneralTypes.h"
.L360:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinIf\\ssc\\make\\..\\inc\\LinIf_Types.h"
.L345:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinIf\\ssc\\make\\..\\inc\\LinIf_Private.h"
.L311:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinIf\\ssc\\make\\..\\src\\LinIf_CheckWakeup.c"
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
	.uleb128	15
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	16
	.uleb128	33
	.byte		0x0
	.uleb128	47
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	17
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
	.uleb128	18
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinIf\\ssc\\make\\..\\src\\LinIf_CheckWakeup.c"
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
.L315:
	.sleb128	2
	.4byte		.L308-.L2
	.byte		"LinIf_CheckWakeup"
	.byte		0
	.4byte		.L311
	.uleb128	52
	.uleb128	35
	.4byte		.L312
	.byte		0x1
	.byte		0x1
	.4byte		.L309
	.4byte		.L310
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L311
	.uleb128	52
	.uleb128	35
	.byte		"WakeupSource"
	.byte		0
	.4byte		.L316
	.4byte		.L319
	.section	.debug_info,,n
.L320:
	.sleb128	4
	.4byte		.L311
	.uleb128	54
	.uleb128	37
	.byte		"returnVal"
	.byte		0
	.4byte		.L312
	.4byte		.L321
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L325
	.4byte		.L322
	.4byte		.L323
.L326:
	.sleb128	4
	.4byte		.L311
	.uleb128	70
	.uleb128	61
	.byte		"crntChannel_p"
	.byte		0
	.4byte		.L327
	.4byte		.L331
.L332:
	.sleb128	4
	.4byte		.L311
	.uleb128	72
	.uleb128	33
	.byte		"channelIndex"
	.byte		0
	.4byte		.L333
	.4byte		.L335
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L339
	.4byte		.L336
	.4byte		.L337
.L340:
	.sleb128	4
	.4byte		.L311
	.uleb128	107
	.uleb128	45
	.byte		"returnValDrv"
	.byte		0
	.4byte		.L312
	.4byte		.L341
.L342:
	.sleb128	4
	.4byte		.L311
	.uleb128	109
	.uleb128	45
	.byte		"returnValTrcv"
	.byte		0
	.4byte		.L312
	.4byte		.L343
	.section	.debug_info,,n
	.sleb128	0
.L339:
	.section	.debug_info,,n
	.sleb128	0
.L325:
	.section	.debug_info,,n
	.sleb128	0
.L308:
	.section	.debug_info,,n
.L344:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L345
	.uleb128	206
	.uleb128	33
	.byte		"LinIf_GlobalInitStsFlag"
	.byte		0
	.4byte		.L346
	.0byte		.L344
.L347:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L345
	.uleb128	220
	.uleb128	63
	.byte		"LinIf_GlobalConfig_p"
	.byte		0
	.4byte		.L348
.L352:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L345
	.uleb128	238
	.uleb128	76
	.byte		"LinIf_ChannelIdentifier_p"
	.byte		0
	.4byte		.L353
	.section	.debug_info,,n
.L358:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L345
	.uleb128	241
	.uleb128	66
	.byte		"LinIf_ConfigChannelLT_p"
	.byte		0
	.4byte		.L359
	.section	.debug_info,,n
.L351:
	.sleb128	7
	.4byte		.L360
	.uleb128	322
	.uleb128	1
	.4byte		.L361-.L2
	.uleb128	20
	.section	.debug_info,,n
.L252:
	.sleb128	8
	.byte		"MaxLinIfChannel"
	.byte		0
	.4byte		.L362
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L253:
	.sleb128	8
	.byte		"LinIfChannel_p"
	.byte		0
	.4byte		.L363
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L254:
	.sleb128	8
	.byte		"PBtoPCHashValue_P"
	.byte		0
	.4byte		.L367
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L255:
	.sleb128	8
	.byte		"PBtoLTHashValue_P"
	.byte		0
	.4byte		.L367
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L256:
	.sleb128	8
	.byte		"LinIf_ConfirmationULConfig_p"
	.byte		0
	.4byte		.L369
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L361:
.L357:
	.sleb128	7
	.4byte		.L360
	.uleb128	322
	.uleb128	1
	.4byte		.L373-.L2
	.uleb128	3
.L249:
	.sleb128	8
	.byte		"LinIfTrcvIdRef"
	.byte		0
	.4byte		.L374
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L250:
	.sleb128	8
	.byte		"LinIfChannelId"
	.byte		0
	.4byte		.L375
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L251:
	.sleb128	8
	.byte		"LinIfChannelRef"
	.byte		0
	.4byte		.L374
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L373:
.L330:
	.sleb128	7
	.4byte		.L360
	.uleb128	322
	.uleb128	1
	.4byte		.L377-.L2
	.uleb128	32
.L240:
	.sleb128	8
	.byte		"LinTrcvDrvCalls_p"
	.byte		0
	.4byte		.L378
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L241:
	.sleb128	8
	.byte		"WakeupSourceIdLin"
	.byte		0
	.4byte		.L368
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L242:
	.sleb128	8
	.byte		"WakeupSourceIdTrcv"
	.byte		0
	.4byte		.L368
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L243:
	.sleb128	8
	.byte		"LinIfChannelIndex"
	.byte		0
	.4byte		.L374
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L244:
	.sleb128	8
	.byte		"ExternalChannelIndex"
	.byte		0
	.4byte		.L375
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
.L245:
	.sleb128	8
	.byte		"LinIfDelayForSleep"
	.byte		0
	.4byte		.L368
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L246:
	.sleb128	8
	.byte		"LinIfStartupState"
	.byte		0
	.4byte		.L382
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L247:
	.sleb128	8
	.byte		"LinDrvCalls_p"
	.byte		0
	.4byte		.L385
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L248:
	.sleb128	8
	.byte		"LinIf_channelManager_p"
	.byte		0
	.4byte		.L389
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
	.sleb128	0
.L377:
.L366:
	.sleb128	7
	.4byte		.L360
	.uleb128	322
	.uleb128	1
	.4byte		.L393-.L2
	.uleb128	24
.L233:
	.sleb128	8
	.byte		"LinIfMaxLinFrames"
	.byte		0
	.4byte		.L374
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L234:
	.sleb128	8
	.byte		"LinIfMaxSchedules"
	.byte		0
	.4byte		.L374
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L235:
	.sleb128	8
	.byte		"LinIfFrame_p"
	.byte		0
	.4byte		.L394
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L236:
	.sleb128	8
	.byte		"LinIfScheduleTable_p"
	.byte		0
	.4byte		.L398
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L237:
	.sleb128	8
	.byte		"ETCollisionDetectd_p"
	.byte		0
	.4byte		.L402
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L238:
	.sleb128	8
	.byte		"SPPendingRequest_p"
	.byte		0
	.4byte		.L402
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L239:
	.sleb128	8
	.byte		"LinIf_ScheduleTableEntry_p"
	.byte		0
	.4byte		.L403
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L393:
.L392:
	.sleb128	7
	.4byte		.L360
	.uleb128	322
	.uleb128	1
	.4byte		.L404-.L2
	.uleb128	48
.L223:
	.sleb128	8
	.byte		"LinIf_NewScheduleTableType"
	.byte		0
	.4byte		.L405
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L224:
	.sleb128	8
	.byte		"LinIf_RunContSchTableIndexRequested"
	.byte		0
	.4byte		.L407
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L225:
	.sleb128	8
	.byte		"LinIf_RunOnceSchTableRequested"
	.byte		0
	.4byte		.L407
	.sleb128	2
	.byte		0x23
	.uleb128	5
	.byte		0x1
.L226:
	.sleb128	8
	.byte		"LinIf_EntryDelayCounter"
	.byte		0
	.4byte		.L333
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L227:
	.sleb128	8
	.byte		"LinIf_SleepDelayCounter"
	.byte		0
	.4byte		.L317
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L228:
	.sleb128	8
	.byte		"LinIf_ScheduleTableIndex"
	.byte		0
	.4byte		.L407
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L229:
	.sleb128	8
	.byte		"LinIf_ScheduleTableType"
	.byte		0
	.4byte		.L405
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L230:
	.sleb128	8
	.byte		"LinIf_BusStatus"
	.byte		0
	.4byte		.L408
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L231:
	.sleb128	8
	.byte		"LinIf_ChannelSubState"
	.byte		0
	.4byte		.L410
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L232:
	.sleb128	8
	.byte		"LinIf_ChannelState"
	.byte		0
	.4byte		.L383
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
	.sleb128	0
.L404:
.L409:
	.sleb128	7
	.4byte		.L360
	.uleb128	322
	.uleb128	1
	.4byte		.L412-.L2
	.uleb128	20
.L219:
	.sleb128	8
	.byte		"Lin_DriverGetStatusVal"
	.byte		0
	.4byte		.L413
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L220:
	.sleb128	8
	.byte		"LinIf_frameStatus"
	.byte		0
	.4byte		.L414
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L221:
	.sleb128	8
	.byte		"LinIf_frameEntry_p"
	.byte		0
	.4byte		.L416
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L222:
	.sleb128	8
	.byte		"LinIf_RxData"
	.byte		0
	.4byte		.L420
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L412:
.L401:
	.sleb128	7
	.4byte		.L360
	.uleb128	322
	.uleb128	1
	.4byte		.L422-.L2
	.uleb128	20
.L213:
	.sleb128	8
	.byte		"LinIfResumePosition"
	.byte		0
	.4byte		.L423
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L214:
	.sleb128	8
	.byte		"LinIfRunMode"
	.byte		0
	.4byte		.L426
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L215:
	.sleb128	8
	.byte		"LinIfScheduleMode"
	.byte		0
	.4byte		.L429
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L216:
	.sleb128	8
	.byte		"LinIfScheduleTableIndex"
	.byte		0
	.4byte		.L432
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L217:
	.sleb128	8
	.byte		"LinIfMaxSchEntry"
	.byte		0
	.4byte		.L374
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
.L218:
	.sleb128	8
	.byte		"LinIfEntry_p"
	.byte		0
	.4byte		.L416
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L422:
.L419:
	.sleb128	7
	.4byte		.L360
	.uleb128	322
	.uleb128	1
	.4byte		.L433-.L2
	.uleb128	8
.L210:
	.sleb128	8
	.byte		"LinIfDelay"
	.byte		0
	.4byte		.L362
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L211:
	.sleb128	8
	.byte		"LinIfCollisionResolvingRef"
	.byte		0
	.4byte		.L432
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L212:
	.sleb128	8
	.byte		"LinIfFrameRef"
	.byte		0
	.4byte		.L394
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L433:
.L397:
	.sleb128	7
	.4byte		.L360
	.uleb128	322
	.uleb128	1
	.4byte		.L434-.L2
	.uleb128	32
.L196:
	.sleb128	8
	.byte		"LinIfChecksumType"
	.byte		0
	.4byte		.L435
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L197:
	.sleb128	8
	.byte		"LinIfFrameType"
	.byte		0
	.4byte		.L437
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L198:
	.sleb128	8
	.byte		"LinIfLength"
	.byte		0
	.4byte		.L440
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L199:
	.sleb128	8
	.byte		"LinIfPid"
	.byte		0
	.4byte		.L442
	.sleb128	2
	.byte		0x23
	.uleb128	9
	.byte		0x1
.L200:
	.sleb128	8
	.byte		"LinIfTxConfirmationId"
	.byte		0
	.4byte		.L444
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L201:
	.sleb128	8
	.byte		"LinIfPduDirection"
	.byte		0
	.4byte		.L446
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L202:
	.sleb128	8
	.byte		"LinIfFixedFrameSduData"
	.byte		0
	.4byte		.L448
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
.L203:
	.sleb128	8
	.byte		"LinIfRxTxTargetPduRef"
	.byte		0
	.4byte		.L444
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L204:
	.sleb128	8
	.byte		"LinIfSubsFrames_p"
	.byte		0
	.4byte		.L450
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L205:
	.sleb128	8
	.byte		"LinIfNoOfSubEntry"
	.byte		0
	.4byte		.L374
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L206:
	.sleb128	8
	.byte		"LinIfFunctionIndex"
	.byte		0
	.4byte		.L362
	.sleb128	2
	.byte		0x23
	.uleb128	30
	.byte		0x1
	.sleb128	0
.L434:
.L453:
	.sleb128	7
	.4byte		.L360
	.uleb128	322
	.uleb128	1
	.4byte		.L454-.L2
	.uleb128	2
.L194:
	.sleb128	8
	.byte		"LinIfSubFrameIndex"
	.byte		0
	.4byte		.L374
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L195:
	.sleb128	8
	.byte		"LinIfSubFramePriority"
	.byte		0
	.4byte		.L374
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
	.sleb128	0
.L454:
.L372:
	.sleb128	7
	.4byte		.L360
	.uleb128	322
	.uleb128	1
	.4byte		.L455-.L2
	.uleb128	12
.L191:
	.sleb128	8
	.byte		"GotoSleepConfirmationUL"
	.byte		0
	.4byte		.L456
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L192:
	.sleb128	8
	.byte		"WakeupConfirmationUL"
	.byte		0
	.4byte		.L456
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L193:
	.sleb128	8
	.byte		"ScheduleRequestConfirmationUL"
	.byte		0
	.4byte		.L456
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L455:
.L381:
	.sleb128	7
	.4byte		.L360
	.uleb128	232
	.uleb128	14
	.4byte		.L459-.L2
	.uleb128	20
.L183:
	.sleb128	8
	.byte		"LinTrcv_SetOpMode_p"
	.byte		0
	.4byte		.L460
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L184:
	.sleb128	8
	.byte		"LinTrcv_GetOpMode_p"
	.byte		0
	.4byte		.L465
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L185:
	.sleb128	8
	.byte		"LinTrcv_GetBusWuReason_p"
	.byte		0
	.4byte		.L469
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L186:
	.sleb128	8
	.byte		"LinTrcv_SetWakeupMode_p"
	.byte		0
	.4byte		.L475
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L187:
	.sleb128	8
	.byte		"LinTrcv_CheckWakeup_p"
	.byte		0
	.4byte		.L480
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L459:
.L388:
	.sleb128	7
	.4byte		.L360
	.uleb128	184
	.uleb128	1
	.4byte		.L483-.L2
	.uleb128	24
.L177:
	.sleb128	8
	.byte		"Lin_SendFrame_p"
	.byte		0
	.4byte		.L484
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L178:
	.sleb128	8
	.byte		"Lin_GoToSleep_p"
	.byte		0
	.4byte		.L490
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L179:
	.sleb128	8
	.byte		"Lin_GoToSleepInternal_p"
	.byte		0
	.4byte		.L493
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L180:
	.sleb128	8
	.byte		"Lin_Wakeup_p"
	.byte		0
	.4byte		.L496
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L181:
	.sleb128	8
	.byte		"Lin_GetStatus_p"
	.byte		0
	.4byte		.L499
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L182:
	.sleb128	8
	.byte		"Lin_CheckWakeup_p"
	.byte		0
	.4byte		.L503
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L483:
.L489:
	.sleb128	7
	.4byte		.L506
	.uleb128	59
	.uleb128	13
	.4byte		.L507-.L2
	.uleb128	8
.L92:
	.sleb128	8
	.byte		"Pid"
	.byte		0
	.4byte		.L443
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L93:
	.sleb128	8
	.byte		"Cs"
	.byte		0
	.4byte		.L436
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L94:
	.sleb128	8
	.byte		"Drc"
	.byte		0
	.4byte		.L447
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L95:
	.sleb128	8
	.byte		"Dl"
	.byte		0
	.4byte		.L441
	.sleb128	2
	.byte		0x23
	.uleb128	3
	.byte		0x1
.L96:
	.sleb128	8
	.byte		"SduPtr"
	.byte		0
	.4byte		.L403
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L507:
	.section	.debug_info,,n
.L458:
	.sleb128	9
	.4byte		.L360
	.uleb128	322
	.uleb128	1
	.4byte		.L508-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	10
	.byte		"LIN_SM"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"CDD"
	.byte		0
	.sleb128	1
	.sleb128	0
.L508:
.L431:
	.sleb128	9
	.4byte		.L360
	.uleb128	232
	.uleb128	14
	.4byte		.L509-.L2
	.uleb128	4
	.sleb128	10
	.byte		"LINTP_APPLICATIVE_SCHEDULE"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"LINTP_DIAG_REQUEST"
	.byte		0
	.sleb128	1
	.sleb128	10
	.byte		"LINTP_DIAG_RESPONSE"
	.byte		0
	.sleb128	2
	.sleb128	0
.L509:
.L415:
	.sleb128	9
	.4byte		.L360
	.uleb128	184
	.uleb128	1
	.4byte		.L510-.L2
	.uleb128	4
	.sleb128	10
	.byte		"LINIF_FRAME_IDLE"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"LINIF_FRAME_RX_ONGOING"
	.byte		0
	.sleb128	1
	.sleb128	10
	.byte		"LINIF_FRAME_TX_ONGOING"
	.byte		0
	.sleb128	2
	.sleb128	10
	.byte		"LINIF_FRAME_FINISHED"
	.byte		0
	.sleb128	3
	.sleb128	10
	.byte		"LINIF_FRAME_ERROR"
	.byte		0
	.sleb128	4
	.sleb128	0
.L510:
.L439:
	.sleb128	9
	.4byte		.L360
	.uleb128	110
	.uleb128	1
	.4byte		.L511-.L2
	.uleb128	4
	.sleb128	10
	.byte		"INVALID_STATE"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"FREE"
	.byte		0
	.sleb128	1
	.sleb128	10
	.byte		"ASSIGN"
	.byte		0
	.sleb128	2
	.sleb128	10
	.byte		"ASSIGN_FRAME_ID_RANGE"
	.byte		0
	.sleb128	3
	.sleb128	10
	.byte		"EVENT_TRIGGERED"
	.byte		0
	.sleb128	4
	.sleb128	10
	.byte		"SAVE_CONFIGURATION"
	.byte		0
	.sleb128	5
	.sleb128	10
	.byte		"SPORADIC"
	.byte		0
	.sleb128	6
	.sleb128	10
	.byte		"SRF"
	.byte		0
	.sleb128	7
	.sleb128	10
	.byte		"UNASSIGN"
	.byte		0
	.sleb128	8
	.sleb128	10
	.byte		"UNCONDITIONAL"
	.byte		0
	.sleb128	9
	.sleb128	0
.L511:
.L425:
	.sleb128	9
	.4byte		.L360
	.uleb128	102
	.uleb128	1
	.4byte		.L512-.L2
	.uleb128	4
	.sleb128	10
	.byte		"CONTINUE_AT_IT_POINT"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"START_FROM_BEGINNING"
	.byte		0
	.sleb128	1
	.sleb128	0
.L512:
.L411:
	.sleb128	9
	.4byte		.L360
	.uleb128	87
	.uleb128	1
	.4byte		.L513-.L2
	.uleb128	4
	.sleb128	10
	.byte		"LINIF_CHANNEL_SUBSTATE_IDLE"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"LINIF_CHANNEL_SLEEP_REQUEST"
	.byte		0
	.sleb128	1
	.sleb128	10
	.byte		"LINIF_CHANNEL_SLEEP_PENDING"
	.byte		0
	.sleb128	2
	.sleb128	10
	.byte		"LINIF_CHANNEL_GOTO_SLEEP_INTERNAL"
	.byte		0
	.sleb128	3
	.sleb128	10
	.byte		"LINIF_CHANNEL_WAKEUP_CONFIRMATION_PENDING_TYPE_FALSE"
	.byte		0
	.sleb128	4
	.sleb128	10
	.byte		"LINIF_CHANNEL_WAKEUP_CONFIRMATION_PENDING_TYPE_TRUE"
	.byte		0
	.sleb128	5
	.sleb128	0
.L513:
.L384:
	.sleb128	9
	.4byte		.L360
	.uleb128	79
	.uleb128	1
	.4byte		.L514-.L2
	.uleb128	4
	.sleb128	10
	.byte		"LINIF_CHANNEL_UNINIT"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"LINIF_CHANNEL_OPERATIONAL"
	.byte		0
	.sleb128	1
	.sleb128	10
	.byte		"LINIF_CHANNEL_SLEEP"
	.byte		0
	.sleb128	2
	.sleb128	0
.L514:
.L406:
	.sleb128	9
	.4byte		.L360
	.uleb128	70
	.uleb128	1
	.4byte		.L515-.L2
	.uleb128	4
	.sleb128	10
	.byte		"NULL_SCHEDULE"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"ACTIVE_RUN_ONCE"
	.byte		0
	.sleb128	1
	.sleb128	10
	.byte		"ACTIVE_RUN_CONTINUOUS"
	.byte		0
	.sleb128	2
	.sleb128	10
	.byte		"ACTIVE_SCHEDULE_MANAGER_OFF"
	.byte		0
	.sleb128	3
	.sleb128	0
.L515:
.L428:
	.sleb128	9
	.4byte		.L360
	.uleb128	63
	.uleb128	1
	.4byte		.L516-.L2
	.uleb128	4
	.sleb128	10
	.byte		"RUN_CONTINUOUS"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"RUN_ONCE"
	.byte		0
	.sleb128	1
	.sleb128	0
.L516:
.L464:
	.sleb128	9
	.4byte		.L506
	.uleb128	59
	.uleb128	13
	.4byte		.L517-.L2
	.uleb128	4
	.sleb128	10
	.byte		"LINTRCV_TRCV_MODE_NORMAL"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"LINTRCV_TRCV_MODE_STANDBY"
	.byte		0
	.sleb128	1
	.sleb128	10
	.byte		"LINTRCV_TRCV_MODE_SLEEP"
	.byte		0
	.sleb128	2
	.sleb128	0
.L517:
.L474:
	.sleb128	9
	.4byte		.L506
	.uleb128	49
	.uleb128	13
	.4byte		.L518-.L2
	.uleb128	4
	.sleb128	10
	.byte		"LINTRCV_WU_ERROR"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"LINTRCV_WU_NOT_SUPPORTED"
	.byte		0
	.sleb128	1
	.sleb128	10
	.byte		"LINTRCV_WU_BY_BUS"
	.byte		0
	.sleb128	2
	.sleb128	10
	.byte		"LINTRCV_WU_BY_PIN"
	.byte		0
	.sleb128	3
	.sleb128	10
	.byte		"LINTRCV_WU_INTERNALLY"
	.byte		0
	.sleb128	4
	.sleb128	10
	.byte		"LINTRCV_WU_RESET"
	.byte		0
	.sleb128	5
	.sleb128	10
	.byte		"LINTRCV_WU_POWER_ON"
	.byte		0
	.sleb128	6
	.sleb128	0
.L518:
.L479:
	.sleb128	9
	.4byte		.L506
	.uleb128	42
	.uleb128	13
	.4byte		.L519-.L2
	.uleb128	4
	.sleb128	10
	.byte		"LINTRCV_WUMODE_ENABLE"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"LINTRCV_WUMODE_DISABLE"
	.byte		0
	.sleb128	1
	.sleb128	10
	.byte		"LINTRCV_WUMODE_CLEAR"
	.byte		0
	.sleb128	2
	.sleb128	0
.L519:
	.section	.debug_info,,n
.L314:
	.sleb128	11
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L313:
	.sleb128	12
	.byte		"uint8"
	.byte		0
	.4byte		.L314
.L312:
	.sleb128	12
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L313
.L318:
	.sleb128	11
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L317:
	.sleb128	12
	.byte		"uint32"
	.byte		0
	.4byte		.L318
.L316:
	.sleb128	12
	.byte		"EcuM_WakeupSourceType"
	.byte		0
	.4byte		.L317
.L329:
	.sleb128	12
	.byte		"LinIfChannel"
	.byte		0
	.4byte		.L330
	.section	.debug_info,,n
.L328:
	.sleb128	13
	.4byte		.L329
	.section	.debug_info,,n
.L327:
	.sleb128	14
	.4byte		.L328
.L334:
	.sleb128	11
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L333:
	.sleb128	12
	.byte		"uint16"
	.byte		0
	.4byte		.L334
.L346:
	.sleb128	12
	.byte		"boolean"
	.byte		0
	.4byte		.L314
.L350:
	.sleb128	12
	.byte		"LinIf_ConfigType"
	.byte		0
	.4byte		.L351
.L349:
	.sleb128	13
	.4byte		.L350
.L348:
	.sleb128	14
	.4byte		.L349
.L356:
	.sleb128	12
	.byte		"LinIfChannelIdentifier"
	.byte		0
	.4byte		.L357
.L355:
	.sleb128	13
	.4byte		.L356
.L354:
	.sleb128	14
	.4byte		.L355
.L353:
	.sleb128	13
	.4byte		.L354
.L359:
	.sleb128	13
	.4byte		.L327
.L362:
	.sleb128	13
	.4byte		.L333
.L365:
	.sleb128	12
	.byte		"LinIfChannelReloc"
	.byte		0
	.4byte		.L366
.L364:
	.sleb128	13
	.4byte		.L365
.L363:
	.sleb128	14
	.4byte		.L364
.L368:
	.sleb128	13
	.4byte		.L317
.L367:
	.sleb128	14
	.4byte		.L368
.L371:
	.sleb128	12
	.byte		"LinIf_ConfirmationULConfig_t"
	.byte		0
	.4byte		.L372
.L370:
	.sleb128	13
	.4byte		.L371
.L369:
	.sleb128	14
	.4byte		.L370
.L374:
	.sleb128	13
	.4byte		.L313
.L376:
	.sleb128	12
	.byte		"NetworkHandleType"
	.byte		0
	.4byte		.L313
.L375:
	.sleb128	13
	.4byte		.L376
.L380:
	.sleb128	12
	.byte		"LinIf_LinTrcvDrvCalls_t"
	.byte		0
	.4byte		.L381
.L379:
	.sleb128	13
	.4byte		.L380
.L378:
	.sleb128	14
	.4byte		.L379
.L383:
	.sleb128	12
	.byte		"LinIf_ChannelState_t"
	.byte		0
	.4byte		.L384
.L382:
	.sleb128	13
	.4byte		.L383
.L387:
	.sleb128	12
	.byte		"LinIf_LinDrvCalls_t"
	.byte		0
	.4byte		.L388
.L386:
	.sleb128	13
	.4byte		.L387
.L385:
	.sleb128	14
	.4byte		.L386
.L391:
	.sleb128	12
	.byte		"LinIfChannelManager"
	.byte		0
	.4byte		.L392
.L390:
	.sleb128	14
	.4byte		.L391
.L389:
	.sleb128	13
	.4byte		.L390
.L396:
	.sleb128	12
	.byte		"LinIfFrame"
	.byte		0
	.4byte		.L397
.L395:
	.sleb128	13
	.4byte		.L396
.L394:
	.sleb128	14
	.4byte		.L395
.L400:
	.sleb128	12
	.byte		"LinIfScheduleTable"
	.byte		0
	.4byte		.L401
.L399:
	.sleb128	13
	.4byte		.L400
.L398:
	.sleb128	14
	.4byte		.L399
.L402:
	.sleb128	14
	.4byte		.L346
.L403:
	.sleb128	14
	.4byte		.L313
.L405:
	.sleb128	12
	.byte		"LinIfSchTableType_t"
	.byte		0
	.4byte		.L406
.L407:
	.sleb128	12
	.byte		"LinIf_SchHandleType"
	.byte		0
	.4byte		.L313
.L408:
	.sleb128	12
	.byte		"LinIf_BusStatusStruct"
	.byte		0
	.4byte		.L409
.L410:
	.sleb128	12
	.byte		"LinIf_ChannelSubState_t"
	.byte		0
	.4byte		.L411
.L413:
	.sleb128	12
	.byte		"Lin_StatusType"
	.byte		0
	.4byte		.L313
.L414:
	.sleb128	12
	.byte		"LinIf_frameStatusType"
	.byte		0
	.4byte		.L415
.L418:
	.sleb128	12
	.byte		"LinIfEntry"
	.byte		0
	.4byte		.L419
.L417:
	.sleb128	13
	.4byte		.L418
.L416:
	.sleb128	14
	.4byte		.L417
	.section	.debug_info,,n
.L420:
	.sleb128	15
	.4byte		.L421-.L2
	.4byte		.L313
	.section	.debug_info,,n
	.sleb128	16
	.uleb128	7
	.sleb128	0
.L421:
.L424:
	.sleb128	12
	.byte		"LinIfResumePosition_t"
	.byte		0
	.4byte		.L425
.L423:
	.sleb128	13
	.4byte		.L424
.L427:
	.sleb128	12
	.byte		"LinIfRunMode_t"
	.byte		0
	.4byte		.L428
.L426:
	.sleb128	13
	.4byte		.L427
.L430:
	.sleb128	12
	.byte		"LinTp_Mode"
	.byte		0
	.4byte		.L431
.L429:
	.sleb128	13
	.4byte		.L430
.L432:
	.sleb128	13
	.4byte		.L407
.L436:
	.sleb128	12
	.byte		"Lin_FrameCsModelType"
	.byte		0
	.4byte		.L313
.L435:
	.sleb128	13
	.4byte		.L436
.L438:
	.sleb128	12
	.byte		"LinIfFrameType_t"
	.byte		0
	.4byte		.L439
.L437:
	.sleb128	13
	.4byte		.L438
.L441:
	.sleb128	12
	.byte		"Lin_FrameDlType"
	.byte		0
	.4byte		.L313
.L440:
	.sleb128	13
	.4byte		.L441
.L443:
	.sleb128	12
	.byte		"Lin_FramePidType"
	.byte		0
	.4byte		.L313
.L442:
	.sleb128	13
	.4byte		.L443
.L445:
	.sleb128	12
	.byte		"PduIdType"
	.byte		0
	.4byte		.L333
.L444:
	.sleb128	13
	.4byte		.L445
.L447:
	.sleb128	12
	.byte		"Lin_FrameResponseType"
	.byte		0
	.4byte		.L313
.L446:
	.sleb128	13
	.4byte		.L447
.L448:
	.sleb128	15
	.4byte		.L449-.L2
	.4byte		.L374
	.sleb128	16
	.uleb128	7
	.sleb128	0
.L449:
.L452:
	.sleb128	12
	.byte		"LinIfSubstitutionFrames"
	.byte		0
	.4byte		.L453
.L451:
	.sleb128	13
	.4byte		.L452
.L450:
	.sleb128	14
	.4byte		.L451
.L457:
	.sleb128	12
	.byte		"LinIf_ConfirmationUL_t"
	.byte		0
	.4byte		.L458
.L456:
	.sleb128	13
	.4byte		.L457
	.section	.debug_info,,n
.L461:
	.sleb128	17
	.4byte		.L462-.L2
	.4byte		.L312
	.byte		0x1
	.section	.debug_info,,n
	.sleb128	18
	.4byte		.L313
.L463:
	.sleb128	12
	.byte		"LinTrcv_TrcvModeType"
	.byte		0
	.4byte		.L464
	.sleb128	18
	.4byte		.L463
	.sleb128	0
.L462:
.L460:
	.sleb128	14
	.4byte		.L461
.L466:
	.sleb128	17
	.4byte		.L467-.L2
	.4byte		.L312
	.byte		0x1
	.sleb128	18
	.4byte		.L313
.L468:
	.sleb128	14
	.4byte		.L463
	.sleb128	18
	.4byte		.L468
	.sleb128	0
.L467:
.L465:
	.sleb128	14
	.4byte		.L466
.L470:
	.sleb128	17
	.4byte		.L471-.L2
	.4byte		.L312
	.byte		0x1
	.sleb128	18
	.4byte		.L313
.L473:
	.sleb128	12
	.byte		"LinTrcv_TrcvWakeupReasonType"
	.byte		0
	.4byte		.L474
.L472:
	.sleb128	14
	.4byte		.L473
	.sleb128	18
	.4byte		.L472
	.sleb128	0
.L471:
.L469:
	.sleb128	14
	.4byte		.L470
.L476:
	.sleb128	17
	.4byte		.L477-.L2
	.4byte		.L312
	.byte		0x1
	.sleb128	18
	.4byte		.L313
.L478:
	.sleb128	12
	.byte		"LinTrcv_TrcvWakeupModeType"
	.byte		0
	.4byte		.L479
	.sleb128	18
	.4byte		.L478
	.sleb128	0
.L477:
.L475:
	.sleb128	14
	.4byte		.L476
.L481:
	.sleb128	17
	.4byte		.L482-.L2
	.4byte		.L312
	.byte		0x1
	.sleb128	18
	.4byte		.L313
	.sleb128	0
.L482:
.L480:
	.sleb128	14
	.4byte		.L481
.L485:
	.sleb128	17
	.4byte		.L486-.L2
	.4byte		.L312
	.byte		0x1
	.sleb128	18
	.4byte		.L313
.L488:
	.sleb128	12
	.byte		"Lin_PduType"
	.byte		0
	.4byte		.L489
.L487:
	.sleb128	14
	.4byte		.L488
	.sleb128	18
	.4byte		.L487
	.sleb128	0
.L486:
.L484:
	.sleb128	14
	.4byte		.L485
.L491:
	.sleb128	17
	.4byte		.L492-.L2
	.4byte		.L312
	.byte		0x1
	.sleb128	18
	.4byte		.L313
	.sleb128	0
.L492:
.L490:
	.sleb128	14
	.4byte		.L491
.L494:
	.sleb128	17
	.4byte		.L495-.L2
	.4byte		.L312
	.byte		0x1
	.sleb128	18
	.4byte		.L313
	.sleb128	0
.L495:
.L493:
	.sleb128	14
	.4byte		.L494
.L497:
	.sleb128	17
	.4byte		.L498-.L2
	.4byte		.L312
	.byte		0x1
	.sleb128	18
	.4byte		.L313
	.sleb128	0
.L498:
.L496:
	.sleb128	14
	.4byte		.L497
.L500:
	.sleb128	17
	.4byte		.L501-.L2
	.4byte		.L413
	.byte		0x1
	.sleb128	18
	.4byte		.L313
.L502:
	.sleb128	14
	.4byte		.L403
	.sleb128	18
	.4byte		.L502
	.sleb128	0
.L501:
.L499:
	.sleb128	14
	.4byte		.L500
.L504:
	.sleb128	17
	.4byte		.L505-.L2
	.4byte		.L312
	.byte		0x1
	.sleb128	18
	.4byte		.L313
	.sleb128	0
.L505:
.L503:
	.sleb128	14
	.4byte		.L504
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L319:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),31
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),31
	.d2locend
.L321:
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),5
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),30
	.d2locend
.L331:
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo12),27
	.d2locend
.L335:
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo14),3
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo16),3
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo18),3
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo20),3
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo8),3
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo22),3
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo24),3
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo26),3
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo28),3
	.d2locend
.L341:
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo30),29
	.d2locreg	%offsetof(.Llo31), %offsetof(.Llo6),29
	.d2locend
.L343:
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo33),28
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo34),28
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "LinIf_CheckWakeup"
	.wrcm.nint32 "frameSize", 48
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nstrlist "calls", "SchM_Enter_LinIf_ExclusiveArea0","SchM_Exit_LinIf_ExclusiveArea0"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\LinIf_CheckWakeup.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\LinIf_CheckWakeup.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\LinIf_CheckWakeup.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\LinIf_CheckWakeup.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\LinIf_CheckWakeup.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\LinIf_CheckWakeup.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\LinIf\ssc\make\..\src\LinIf_CheckWakeup.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
