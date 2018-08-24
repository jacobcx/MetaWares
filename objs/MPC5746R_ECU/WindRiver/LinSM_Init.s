#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"LinSM_Init.c"
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
# FUNC(Std_ReturnType, LINSM_CODE) LinSM_ConsistencyCheck
	.align		2
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinSM\\ssc\\make\\..\\src\\LinSM_Init.c"
        .d2line         124,34
#$$ld
.L519:

#$$bf	LinSM_ConsistencyCheck,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,cr0,lr
	.globl		LinSM_ConsistencyCheck
	.d2_cfa_start __cie
LinSM_ConsistencyCheck:
.Llo1:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# ConfigPtr=r3 ConfigPtr=r3
	.d2prologue_end
#         (P2CONST(LinSM_ConfigType, AUTOMATIC, LINSM_APPL_CONST)ConfigPtr)
# {
#     VAR( Std_ReturnType, AUTOMATIC )    Retval = E_NOT_OK;
	.d2line		127
	diab.li		r5,1		# Retval=r5
# 
#     if ((LINSM_PC_HASH_VALUE == LinSM_LTtoPCHashValue)
	.d2line		129
.Llo3:
	lis		r4,LinSM_LTtoPCHashValue@ha
	lwz		r0,LinSM_LTtoPCHashValue@l(r4)
	e_lis		r4,40645
	e_or2i		r4,4856
	se_cmpl		r0,r4
	bc		0,2,.L515	# ne
	se_cmpi		r3,0		# ConfigPtr=r3
	bc		1,2,.L515	# eq
	lwz		r4,0(r3)		# ConfigPtr=r3
	lwz		r0,0(r4)
	lis		r4,LinSM_LTtoPCHashValue@ha
	lwz		r4,LinSM_LTtoPCHashValue@l(r4)
	se_cmpl		r0,r4
	bc		0,2,.L515	# ne
	lwz		r3,4(r3)		# ConfigPtr=r3 ConfigPtr=r3
	lwz		r0,0(r3)		# ConfigPtr=r3
	lis		r3,LinSM_LTHashValue@ha		# ConfigPtr=r3
	lwz		r3,LinSM_LTHashValue@l(r3)		# ConfigPtr=r3 ConfigPtr=r3
	se_cmpl		r0,r3		# ConfigPtr=r3
#        && (NULL_PTR != ConfigPtr)
#        && (LinSM_LTtoPCHashValue == *(ConfigPtr->PBtoPCHashValue_P))
#        && (LinSM_LTHashValue == *(ConfigPtr->PBtoLTHashValue_P))
#     )
#     {
#         Retval = E_OK;
	.d2line		135
	isel		r5,0,r5,2		# Retval=r5 Retval=r5
.L515:
#     }
# 
#     return Retval;
	.d2line		138
.Llo2:
	rlwinm		r3,r5,0,24,31		# ConfigPtr=r3 Retval=r5
# }
	.d2line		139
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo4:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L520:
	.type		LinSM_ConsistencyCheck,@function
	.size		LinSM_ConsistencyCheck,.-LinSM_ConsistencyCheck
# Number of nodes = 26

# Allocations for LinSM_ConsistencyCheck
#	?a4		ConfigPtr
#	?a5		Retval
# FUNC(void, LINSM_CODE) LinSM_Init (P2CONST(LinSM_ConfigType, AUTOMATIC, LINSM_APPL_CONST)ConfigPtr
	.align		2
	.section	.text_vle
        .d2line         48,24
#$$ld
.L535:

#$$bf	LinSM_Init,interprocedural,rasave,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,cr0,lr
	.globl		LinSM_Init
	.d2_cfa_start __cie
LinSM_Init:
.Llo5:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# )
# {
#     /* Channel index variable */
#     VAR(NetworkHandleType, AUTOMATIC) channelIndex;
# 
#     /* invalidate init state */
#     LinSM_InitState = LINSM_UNINIT;
	.d2line		55
	diab.li		r0,0
	lis		r4,LinSM_InitState@ha
	e_add16i		r4,r4,LinSM_InitState@l
	stb		r0,0(r4)
# 
# #if ( STD_ON == LINSM_DEV_ERROR_DETECT )
#     /* Check whether the PB configuration is not Null */
#     if ( NULL_PTR == ConfigPtr )
#     {
#         (void)Det_ReportError(LINSM_MODULE_ID,
#                 LINSM_INSTANCE_ID,
#                 LINSM_SID_INIT,
#                 LINSM_E_PARAMETER_POINTER );
#     }
#     else
# #endif
#     /* Verify the hash keys */
#     if (E_OK == LinSM_ConsistencyCheck(ConfigPtr))
	.d2line		69
	mr		r0,r3		# ConfigPtr=r0 ConfigPtr=r3
	bl		LinSM_ConsistencyCheck
.Llo6:
	e_andi.		r3,r3,255
	bc		0,2,.L505	# ne
#     {
# #if ( STD_ON == LINSM_DEV_ERROR_DETECT )
#         /* Update the Post build variant configuration */
#         LinSM_ScheduleTablesCnt_p = ConfigPtr->LinSM_ScheduleTableCnt_p;
# #endif
#         for ( channelIndex = 0U; channelIndex < LinSM_NoOfChannel; channelIndex++ )
	.d2line		75
	diab.li		r3,0		# channelIndex=r3
.L507:
.Llo7:
	rlwinm		r0,r3,0,24,31		# channelIndex=r3
	lis		r4,LinSM_NoOfChannel@ha
	lbz		r4,LinSM_NoOfChannel@l(r4)
	se_cmp		r0,r4
	bc		0,0,.L509	# ge
#         {
#             /* Set the state of Lin SM module to be No Communication */
#             LinSM_Interface_p[channelIndex].LinSM_CrntMode = LINSM_NO_COM;
	.d2line		78
	diab.li		r6,2
	lis		r4,LinSM_Interface_p@ha
	lwz		r5,LinSM_Interface_p@l(r4)
	rlwinm		r0,r3,3,21,28		# channelIndex=r3
	se_add		r5,r0
	stb		r6,5(r5)
# 
# #if ( LINSM_ENABLE_CONFIRMATIONS == STD_ON )
#             /*Initialize confirmation timer*/
#             LinSM_Interface_p[channelIndex].LinSM_TimerVal_u16 = 0U;
	.d2line		82
	diab.li		r6,0
	lwz		r5,LinSM_Interface_p@l(r4)
	se_add		r5,r0
	sth		r6,6(r5)
#             /* Re-set the timer configuration */
#             LinSM_Interface_p[channelIndex].LinSM_StartTimer_b = FALSE;
	.d2line		84
	lwz		r5,LinSM_Interface_p@l(r4)
	se_add		r5,r0
	stb		r6,2(r5)
# #endif
#             /* Set the Lin If confirmation flag to False */
#             LinSM_Interface_p[channelIndex].LinSM_RqConfrmState = LINSM_CONFIRM_IDLE;
	.d2line		87
	lwz		r5,LinSM_Interface_p@l(r4)
	stbux		r6,r5,r0
# 
#             LinSM_Interface_p[channelIndex].LinSM_RequestType_u8 = LINSM_CONFIRM_IDLE;
	.d2line		89
	lwz		r5,LinSM_Interface_p@l(r4)
	se_add		r5,r0
	stb		r6,1(r5)
# 
#             /* Set the null schedule to the schedule index */
#             LinSM_Interface_p[channelIndex].LinSM_CrntScheduleRef = LINSM_NULL_SCHEDULE;
	.d2line		92
	lwz		r5,LinSM_Interface_p@l(r4)
	se_add		r5,r0
	stb		r6,4(r5)
# 
#             LinSM_Interface_p[channelIndex].LinSM_ReqScheduleRef = LINSM_NULL_SCHEDULE;
	.d2line		94
	lwz		r5,LinSM_Interface_p@l(r4)
	se_add		r5,r0
	stb		r6,3(r5)
# 
#         }
	.d2line		96
	diab.addi		r0,r3,1		# channelIndex=r3
	se_addi		r3,1		# channelIndex=r3 channelIndex=r3
	b		.L507
.L509:
# 
#         /* Global variable for the indication of initialization */
#         LinSM_InitState = LINSM_INIT;
	.d2line		99
.Llo8:
	diab.li		r0,3
	lis		r3,LinSM_InitState@ha		# channelIndex=r3
.Llo9:
	e_add16i		r3,r3,LinSM_InitState@l		# channelIndex=r3 channelIndex=r3
	stb		r0,0(r3)		# channelIndex=r3
.L505:
#     }
#     else
#     {
#         /* nothing to do */
#     }
# 
# } /* End of LinSM_Init() */
	.d2line		106
	.d2epilogue_begin
.Llo10:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L536:
	.type		LinSM_Init,@function
	.size		LinSM_Init,.-LinSM_Init
# Number of nodes = 100

# Allocations for LinSM_Init
#	?a4		ConfigPtr
#	?a5		channelIndex

# Allocations for module
	.section	.text_vle
	.0byte		.L542
	.section	.text_vle
#$$ld
.L5:
.L564:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\PduR\\ssc\\make\\..\\inc\\PduR_Types.h"
.L558:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinSM\\ssc\\make\\..\\inc\\LinSM_Types.h"
.L549:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinSM\\ssc\\make\\..\\inc\\LinSM_Private.h"
.L543:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinSM\\ssc\\make\\..\\inc\\LinSM.h"
.L521:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinSM\\ssc\\make\\..\\src\\LinSM_Init.c"
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinSM\\ssc\\make\\..\\src\\LinSM_Init.c"
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
.L525:
	.sleb128	2
	.4byte		.L518-.L2
	.byte		"LinSM_ConsistencyCheck"
	.byte		0
	.4byte		.L521
	.uleb128	124
	.uleb128	34
	.4byte		.L522
	.byte		0x1
	.byte		0x1
	.4byte		.L519
	.4byte		.L520
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L521
	.uleb128	124
	.uleb128	34
	.byte		"ConfigPtr"
	.byte		0
	.4byte		.L526
	.4byte		.L530
	.section	.debug_info,,n
.L531:
	.sleb128	4
	.4byte		.L521
	.uleb128	127
	.uleb128	41
	.byte		"Retval"
	.byte		0
	.4byte		.L522
	.4byte		.L532
	.section	.debug_info,,n
	.sleb128	0
.L518:
	.section	.debug_info,,n
.L537:
	.sleb128	5
	.4byte		.L534-.L2
	.byte		"LinSM_Init"
	.byte		0
	.4byte		.L521
	.uleb128	48
	.uleb128	24
	.byte		0x1
	.byte		0x1
	.4byte		.L535
	.4byte		.L536
	.sleb128	3
	.4byte		.L521
	.uleb128	48
	.uleb128	24
	.byte		"ConfigPtr"
	.byte		0
	.4byte		.L526
	.4byte		.L538
.L539:
	.sleb128	4
	.4byte		.L521
	.uleb128	52
	.uleb128	39
	.byte		"channelIndex"
	.byte		0
	.4byte		.L540
	.4byte		.L541
	.section	.debug_info,,n
	.sleb128	0
.L534:
	.section	.debug_info,,n
.L542:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L543
	.uleb128	66
	.uleb128	35
	.byte		"LinSM_LTtoPCHashValue"
	.byte		0
	.4byte		.L544
	.section	.debug_info,,n
.L547:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L543
	.uleb128	69
	.uleb128	35
	.byte		"LinSM_LTHashValue"
	.byte		0
	.4byte		.L544
.L548:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L549
	.uleb128	195
	.uleb128	71
	.byte		"LinSM_Interface_p"
	.byte		0
	.4byte		.L550
.L554:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L549
	.uleb128	232
	.uleb128	46
	.byte		"LinSM_NoOfChannel"
	.byte		0
	.4byte		.L555
.L556:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L549
	.uleb128	243
	.uleb128	39
	.byte		"LinSM_InitState"
	.byte		0
	.4byte		.L557
	.0byte		.L556
	.section	.debug_info,,n
.L529:
	.sleb128	7
	.4byte		.L558
	.uleb128	115
	.uleb128	1
	.4byte		.L559-.L2
	.uleb128	12
	.section	.debug_info,,n
.L317:
	.sleb128	8
	.byte		"PBtoPCHashValue_P"
	.byte		0
	.4byte		.L560
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L318:
	.sleb128	8
	.byte		"PBtoLTHashValue_P"
	.byte		0
	.4byte		.L560
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L319:
	.sleb128	8
	.byte		"LinSM_ScheduleTableCnt_p"
	.byte		0
	.4byte		.L561
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L559:
.L553:
	.sleb128	7
	.4byte		.L564
	.uleb128	248
	.uleb128	1
	.4byte		.L565-.L2
	.uleb128	8
.L306:
	.sleb128	8
	.byte		"LinSM_RqConfrmState"
	.byte		0
	.4byte		.L523
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L307:
	.sleb128	8
	.byte		"LinSM_RequestType_u8"
	.byte		0
	.4byte		.L523
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L308:
	.sleb128	8
	.byte		"LinSM_StartTimer_b"
	.byte		0
	.4byte		.L566
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L309:
	.sleb128	8
	.byte		"LinSM_ReqScheduleRef"
	.byte		0
	.4byte		.L567
	.sleb128	2
	.byte		0x23
	.uleb128	3
	.byte		0x1
.L310:
	.sleb128	8
	.byte		"LinSM_CrntScheduleRef"
	.byte		0
	.4byte		.L567
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L311:
	.sleb128	8
	.byte		"LinSM_CrntMode"
	.byte		0
	.4byte		.L557
	.sleb128	2
	.byte		0x23
	.uleb128	5
	.byte		0x1
.L312:
	.sleb128	8
	.byte		"LinSM_TimerVal_u16"
	.byte		0
	.4byte		.L568
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
	.sleb128	0
.L565:
	.section	.debug_info,,n
.L524:
	.sleb128	9
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L523:
	.sleb128	10
	.byte		"uint8"
	.byte		0
	.4byte		.L524
.L522:
	.sleb128	10
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L523
.L528:
	.sleb128	10
	.byte		"LinSM_ConfigType"
	.byte		0
	.4byte		.L529
	.section	.debug_info,,n
.L527:
	.sleb128	11
	.4byte		.L528
	.section	.debug_info,,n
.L526:
	.sleb128	12
	.4byte		.L527
.L540:
	.sleb128	10
	.byte		"NetworkHandleType"
	.byte		0
	.4byte		.L523
.L546:
	.sleb128	9
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L545:
	.sleb128	10
	.byte		"uint32"
	.byte		0
	.4byte		.L546
.L544:
	.sleb128	11
	.4byte		.L545
.L552:
	.sleb128	10
	.byte		"LinSMInterfaceType_t"
	.byte		0
	.4byte		.L553
.L551:
	.sleb128	12
	.4byte		.L552
.L550:
	.sleb128	11
	.4byte		.L551
.L555:
	.sleb128	11
	.4byte		.L540
.L557:
	.sleb128	10
	.byte		"LinSM_ModeType"
	.byte		0
	.4byte		.L523
.L560:
	.sleb128	12
	.4byte		.L544
.L563:
	.sleb128	10
	.byte		"LinSMScheduleCnt"
	.byte		0
	.4byte		.L523
.L562:
	.sleb128	11
	.4byte		.L563
.L561:
	.sleb128	12
	.4byte		.L562
.L566:
	.sleb128	10
	.byte		"boolean"
	.byte		0
	.4byte		.L524
.L567:
	.sleb128	10
	.byte		"LinIf_SchHandleType"
	.byte		0
	.4byte		.L523
.L569:
	.sleb128	9
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L568:
	.sleb128	10
	.byte		"uint16"
	.byte		0
	.4byte		.L569
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L530:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locend
.L532:
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),5
	.d2locend
.L538:
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),3
	.d2locend
.L541:
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),3
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),3
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "LinSM_Init"
	.wrcm.nstrlist "calls", "LinSM_ConsistencyCheck"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "LinSM_ConsistencyCheck"
	.wrcm.nint32 "frameSize", 16
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\LinSM_Init.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\LinSM_Init.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\LinSM_Init.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\LinSM_Init.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\LinSM_Init.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\LinSM_Init.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\LinSM\ssc\make\..\src\LinSM_Init.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
