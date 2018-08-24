#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"NvM_RestorePRAMBlockDefaults.c"
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
# FUNC(Std_ReturnType, NVM_CODE) NvM_RestorePRAMBlockDefaults(VAR(NvM_BlockIdType,AUTOMATIC) BlockId)
	.align		2
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MEM\\NvM\\ssc\\make\\..\\src\\NvM_RestorePRAMBlockDefaults.c"
        .d2line         21,32
#$$ld
.L366:

#$$bf	NvM_RestorePRAMBlockDefaults,interprocedural,rasave,nostackparams
	.globl		NvM_RestorePRAMBlockDefaults
	.d2_cfa_start __cie
NvM_RestorePRAMBlockDefaults:
.Llo1:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# BlockId=r31 BlockId=r3
	.d2prologue_end
# {
#     /* [DD-NVM00391-MGC01-V1] [DD-NVM00392-MGC01-V1] [DD-NVM00813-MGC01-V1] */
#     VAR(Std_ReturnType,AUTOMATIC) retVal = E_NOT_OK;
	.d2line		24
	diab.li		r30,1		# retVal=r30
# 
#     SchM_Enter_NvM_EaServiceProcessQueue();
	.d2line		26
	bl		SchM_Enter_NvM_EaServiceProcessQueue
#     if(NVM_INITIALIZED != NvM_InitStatus)
	.d2line		27
.Llo2:
	lis		r3,NvM_InitStatus@ha
	lwz		r0,NvM_InitStatus@l(r3)
	se_cmpi		r0,1
	bc		1,2,.L341	# eq
#     {
#         SchM_Exit_NvM_EaServiceProcessQueue();
	.d2line		29
.Llo3:
	bl		SchM_Exit_NvM_EaServiceProcessQueue
	b		.L342
.L341:
#         /* [DD-NVM00831-MGC01-V1] */
#         NVM_ASSERT_DET(NVM_RESTORE_PRAM_BLOCK_DEFAULTS_ID, NVM_E_NOT_INITIALIZED);
#     }
#     else if((NVM_BLOCK_0 == BlockId) || (BlockId >= Get_Conf_Total_Block_Number()))
	.d2line		33
	rlwinm		r3,r31,0,16,31		# BlockId=r31
	se_cmpi		r3,0
	bc		1,2,.L354	# eq
	rlwinm		r5,r31,0,16,31		# BlockId=r31
	lis		r3,(NvM_Common+4)@ha
	lhz		r0,(NvM_Common+4)@l(r3)
	se_cmp		r5,r0
	bc		1,0,.L343	# lt
.L354:
#     {
#         SchM_Exit_NvM_EaServiceProcessQueue();
	.d2line		35
	bl		SchM_Exit_NvM_EaServiceProcessQueue
	b		.L342
.L343:
#         /* [DD-NVM00834-MGC01-V1] */
#         NVM_ASSERT_DET(NVM_RESTORE_PRAM_BLOCK_DEFAULTS_ID, NVM_E_PARAM_BLOCK_ID);
#     }
#     /* [DD-NVM00385-MGC02-V1] [DD-NVM00385-MGC03-V1] */
#     else if((NvM_RequestResultType)NVM_REQ_PENDING == Get_Adm_Block_Error_Status(BlockId))
	.d2line		40
	lis		r3,NvM_BlockManagementTable@ha
	lwz		r3,NvM_BlockManagementTable@l(r3)
	rlwinm		r5,r31,3,13,28		# BlockId=r31
	se_add		r3,r5
	lbz		r0,1(r3)
	se_cmpi		r0,2
	bc		0,2,.L345	# ne
#     {
#         SchM_Exit_NvM_EaServiceProcessQueue();
	.d2line		42
	bl		SchM_Exit_NvM_EaServiceProcessQueue
	b		.L342
.L345:
#         /* [DD-NVM00832-MGC01-V1] */
#         NVM_ASSERT_DET(NVM_RESTORE_PRAM_BLOCK_DEFAULTS_ID, NVM_E_BLOCK_PENDING);
#     }
#     /* [DD-NVM00884-MGC01-V1] */
#     else if((!Is_Conf_Block_Init_Callback(BlockId)) && (!Is_Conf_Block_Default_Data(BlockId)))
	.d2line		47
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	rlwinm		r5,r31,6,10,25		# BlockId=r31
	se_add		r3,r5
	lwz		r0,40(r3)
	se_cmpi		r0,0
	bc		0,2,.L347	# ne
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	rlwinm		r5,r31,6,10,25		# BlockId=r31
	se_add		r3,r5
	lwz		r0,36(r3)
	se_cmpi		r0,0
	bc		0,2,.L347	# ne
#     {
#         SchM_Exit_NvM_EaServiceProcessQueue();
	.d2line		49
	bl		SchM_Exit_NvM_EaServiceProcessQueue
	b		.L342
.L347:
#         /* [DD-NVM00833-MGC01-V1] */
#         NVM_ASSERT_DET(NVM_RESTORE_PRAM_BLOCK_DEFAULTS_ID, NVM_E_BLOCK_CONFIG);
#     }
#     else if(!Is_Conf_Block_Permanent(BlockId))
	.d2line		53
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	rlwinm		r5,r31,6,10,25		# BlockId=r31
	se_add		r3,r5
	lwz		r0,32(r3)
	se_cmpi		r0,0
	bc		0,2,.L349	# ne
#     {
#         SchM_Exit_NvM_EaServiceProcessQueue();
	.d2line		55
	bl		SchM_Exit_NvM_EaServiceProcessQueue
	b		.L342
.L349:
#         NVM_ASSERT_DET(NVM_RESTORE_PRAM_BLOCK_DEFAULTS_ID, NVM_E_PARAM_ADDRESS);
#     }
#     else
#     {
#         if(Is_Conf_Block_Type_Dataset(BlockId)
	.d2line		60
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	rlwinm		r5,r31,6,10,25		# BlockId=r31
	se_add		r3,r5
	lwz		r0,12(r3)
	se_cmpi		r0,2
	bc		0,2,.L351	# ne
.Llo5:
	lis		r3,NvM_BlockManagementTable@ha
	lwz		r3,NvM_BlockManagementTable@l(r3)
	rlwinm		r5,r31,3,13,28		# BlockId=r31
	lbzx		r0,r3,r5
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r4,(NvM_BlockManagementTable+4)@l(r3)
	rlwinm		r3,r31,6,10,25		# BlockId=r31
	se_add		r3,r4
	lbz		r3,16(r3)
	se_cmp		r0,r3
	bc		0,0,.L351	# ge
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	rlwinm		r5,r31,6,10,25		# BlockId=r31
	se_add		r3,r5
	lwz		r0,36(r3)
	se_cmpi		r0,0
	bc		1,2,.L351	# eq
#          && Is_Adm_Dataset_Idx_Points_To_Nv(BlockId)
#          && Is_Conf_Block_Default_Data(BlockId)
#           )
#         {
#             /* [DD-NVM00818-MGC01-V1] */
#             retVal = E_NOT_OK;
	.d2line		66
	diab.li		r30,1		# retVal=r30
.Llo6:
	b		.L352
.L351:
	.section	.text_vle
.L379:
#         }
#         else
#         {
#             P2VAR(uint8,NVM_VAR,NVM_APPL_DATA) NvM_DestPtr = Get_Conf_Ram_Block_Addr(BlockId);
	.d2line		70
.Llo7:
	lis		r3,(NvM_BlockManagementTable+4)@ha		# retVal=r3
.Llo8:
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)		# retVal=r3 retVal=r3
	rlwinm		r5,r31,6,10,25		# BlockId=r31
	se_add		r3,r5		# retVal=r3 retVal=r3
	lwz		r5,32(r3)		# retVal=r3
.Llo14:
	mr		r5,r5		# NvM_DestPtr=r5 NvM_DestPtr=r5
# 
#             /* [DD-NVM00385-MGC01-V1] [DD-NVM00814-MGC01-V1] [DD-NVM00815-MGC01-V1] */
#             retVal = NvM_QueueInsert(BlockId,
	.d2line		73
	rlwinm		r3,r31,0,16,31		# retVal=r3 BlockId=r31
.Llo9:
	diab.li		r4,24
	mr		r5,r5		# NvM_DestPtr=r5 NvM_DestPtr=r5
.Llo15:
	bl		NvM_QueueInsert
.Llo10:
	mr		r30,r3		# retVal=r30 retVal=r3
#                                      NVM_RESTORE_PRAM_BLOCK_DEFAULTS_ID,
#                                      NvM_DestPtr
# #if (NVM_JOB_PRIORITIZATION == STD_ON)
#                                      ,FALSE
# #endif
#                                      );
# 
#             if(E_OK == retVal)
	.d2line		81
	rlwinm		r3,r3,0,24,31		# retVal=r3 retVal=r3
	se_cmpi		r3,0		# retVal=r3
	bc		0,2,.L352	# ne
#             {
#                 /* [DD-NVM00819-MGC01-V1] */
#                 Set_Adm_Block_Attrib_Block_Valid(BlockId, NVM_BLOCK_INVALID);
	.d2line		84
.Llo11:
	lis		r3,NvM_BlockManagementTable@ha		# retVal=r3
.Llo12:
	lwz		r0,NvM_BlockManagementTable@l(r3)		# retVal=r3
	rlwinm		r5,r31,3,13,28		# BlockId=r31
	add		r31,r0,r5		# BlockId=r31
	lwz		r0,4(r31)		# BlockId=r31
	.diab.bclri		r0,1
	lwz		r31,NvM_BlockManagementTable@l(r3)		# BlockId=r31 retVal=r3
	se_add		r31,r5		# BlockId=r31 BlockId=r31
	stw		r0,4(r31)		# BlockId=r31
#                 /* [DD-NVM00185-MGC01-V1] */
#                 Set_Adm_Block_Error_Status(BlockId, NVM_REQ_PENDING);
	.d2line		86
	diab.li		r0,2
	lwz		r3,NvM_BlockManagementTable@l(r3)		# retVal=r3 retVal=r3
	se_add		r5,r3		# retVal=r3
	stb		r0,1(r5)
	.section	.text_vle
.L380:
.L352:
#             }
#         }
# 
#         SchM_Exit_NvM_EaServiceProcessQueue();
	.d2line		90
	bl		SchM_Exit_NvM_EaServiceProcessQueue
.L342:
#     }
# 
#     return retVal;
	.d2line		93
.Llo4:
	rlwinm		r3,r30,0,24,31		# retVal=r3 retVal=r30
# }
	.d2line		94
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo13:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L367:
	.type		NvM_RestorePRAMBlockDefaults,@function
	.size		NvM_RestorePRAMBlockDefaults,.-NvM_RestorePRAMBlockDefaults
# Number of nodes = 215

# Allocations for NvM_RestorePRAMBlockDefaults
#	?a4		BlockId
#	?a5		retVal
#	?a6		NvM_DestPtr

# Allocations for module
	.section	.text_vle
	.0byte		.L386
	.section	.text_vle
#$$ld
.L5:
.L469:	.d2filenum "C:\\WINDRI~1\\COMPIL~1\\DIAB-5~1.4\\include\\diab/lpragma.h"
.L399:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MEM\\NvM\\ssc\\make\\..\\inc\\NvM_Types.h"
.L396:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MEM\\NvM\\ssc\\make\\..\\inc\\NvM.h"
.L387:	.d2filenum "gen\\MPC5746R_ECU\\WindRiver\\NvM_Lcfg.h"
.L368:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MEM\\NvM\\ssc\\make\\..\\src\\NvM_RestorePRAMBlockDefaults.c"
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
	.uleb128	3
	.uleb128	8
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
	.uleb128	10
	.uleb128	13
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
	.uleb128	11
	.uleb128	15
	.uleb128	13
	.uleb128	11
	.uleb128	12
	.uleb128	11
	.uleb128	56
	.uleb128	9
	.uleb128	50
	.uleb128	11
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	11
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
	.uleb128	3
	.uleb128	8
	.uleb128	11
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	12
	.uleb128	40
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	28
	.uleb128	13
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
	.uleb128	14
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
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
	.uleb128	38
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	17
	.uleb128	21
	.byte		0x1
	.uleb128	1
	.uleb128	19
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
	.uleb128	19
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
	.uleb128	20
	.uleb128	36
	.byte		0x0
	.uleb128	3
	.uleb128	8
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MEM\\NvM\\ssc\\make\\..\\src\\NvM_RestorePRAMBlockDefaults.c"
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
.L372:
	.sleb128	2
	.4byte		.L365-.L2
	.byte		"NvM_RestorePRAMBlockDefaults"
	.byte		0
	.4byte		.L368
	.uleb128	21
	.uleb128	32
	.4byte		.L369
	.byte		0x1
	.byte		0x1
	.4byte		.L366
	.4byte		.L367
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L368
	.uleb128	21
	.uleb128	32
	.byte		"BlockId"
	.byte		0
	.4byte		.L373
	.4byte		.L376
	.section	.debug_info,,n
.L377:
	.sleb128	4
	.4byte		.L368
	.uleb128	24
	.uleb128	35
	.byte		"retVal"
	.byte		0
	.4byte		.L369
	.4byte		.L378
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L382
	.4byte		.L379
	.4byte		.L380
.L383:
	.sleb128	4
	.4byte		.L368
	.uleb128	70
	.uleb128	48
	.byte		"NvM_DestPtr"
	.byte		0
	.4byte		.L384
	.4byte		.L385
	.section	.debug_info,,n
	.sleb128	0
.L382:
	.section	.debug_info,,n
	.sleb128	0
.L365:
	.section	.debug_info,,n
.L386:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L387
	.uleb128	98
	.uleb128	40
	.byte		"NvM_Common"
	.byte		0
	.4byte		.L388
	.section	.debug_info,,n
.L391:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L387
	.uleb128	100
	.uleb128	49
	.byte		"NvM_BlockManagementTable"
	.byte		0
	.4byte		.L392
.L395:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L396
	.uleb128	297
	.uleb128	43
	.byte		"NvM_InitStatus"
	.byte		0
	.4byte		.L397
	.0byte		.L395
	.section	.debug_info,,n
.L394:
	.sleb128	7
	.4byte		.L399
	.uleb128	185
	.uleb128	14
	.4byte		.L400-.L2
	.byte		"NvM_BlockManagementType_Tag"
	.byte		0
	.uleb128	8
	.section	.debug_info,,n
.L295:
	.sleb128	8
	.byte		"AdminBlockPtr"
	.byte		0
	.4byte		.L401
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L296:
	.sleb128	8
	.byte		"BlockDescriptorPtr"
	.byte		0
	.4byte		.L405
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L400:
.L390:
	.sleb128	7
	.4byte		.L399
	.uleb128	185
	.uleb128	14
	.4byte		.L410-.L2
	.byte		"NvM_CommonType_Tag"
	.byte		0
	.uleb128	40
.L281:
	.sleb128	8
	.byte		"NvM_CrcNumOfBytes"
	.byte		0
	.4byte		.L374
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L282:
	.sleb128	8
	.byte		"NvM_CompiledConfigId"
	.byte		0
	.4byte		.L374
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L283:
	.sleb128	8
	.byte		"NvM_TotalBlockNb"
	.byte		0
	.4byte		.L373
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L284:
	.sleb128	8
	.byte		"NvM_MultiBlockCallback"
	.byte		0
	.4byte		.L411
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L285:
	.sleb128	8
	.byte		"NvM_BswMBlockModeCallback"
	.byte		0
	.4byte		.L416
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L286:
	.sleb128	8
	.byte		"NvM_BswMJobModeCallback"
	.byte		0
	.4byte		.L420
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L287:
	.sleb128	8
	.byte		"NvM_BlockCRCPtr"
	.byte		0
	.4byte		.L424
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L288:
	.sleb128	8
	.byte		"NvM_RamMirrorPtr"
	.byte		0
	.4byte		.L428
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L289:
	.sleb128	8
	.byte		"NvM_WriteVfyBuffPtr"
	.byte		0
	.4byte		.L428
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L290:
	.sleb128	8
	.byte		"NvM_DatasetSelectionBits"
	.byte		0
	.4byte		.L370
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L291:
	.sleb128	8
	.byte		"NvM_RptMirrorCnt"
	.byte		0
	.4byte		.L370
	.sleb128	2
	.byte		0x23
	.uleb128	33
	.byte		0x1
.L292:
	.sleb128	8
	.byte		"NvM_BswMMultiBlk"
	.byte		0
	.4byte		.L429
	.sleb128	2
	.byte		0x23
	.uleb128	34
	.byte		0x1
.L293:
	.sleb128	8
	.byte		"NvM_DrvModeSwitch"
	.byte		0
	.4byte		.L429
	.sleb128	2
	.byte		0x23
	.uleb128	35
	.byte		0x1
.L294:
	.sleb128	8
	.byte		"NvM_DynConfig"
	.byte		0
	.4byte		.L429
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
	.sleb128	0
.L410:
.L409:
	.sleb128	7
	.4byte		.L399
	.uleb128	185
	.uleb128	14
	.4byte		.L430-.L2
	.byte		"NvM_BlockDescriptorType_Tag"
	.byte		0
	.uleb128	64
.L260:
	.sleb128	8
	.byte		"NvM_BlockCRC"
	.byte		0
	.4byte		.L431
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L261:
	.sleb128	8
	.byte		"CrcFunctionPtr"
	.byte		0
	.4byte		.L433
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L262:
	.sleb128	8
	.byte		"NvM_NvramDeviceId"
	.byte		0
	.4byte		.L370
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L263:
	.sleb128	8
	.byte		"NvM_BlockManagement"
	.byte		0
	.4byte		.L439
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L264:
	.sleb128	8
	.byte		"NvM_NvBlockNum"
	.byte		0
	.4byte		.L370
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L265:
	.sleb128	8
	.byte		"NvM_RomBlockNum"
	.byte		0
	.4byte		.L370
	.sleb128	2
	.byte		0x23
	.uleb128	17
	.byte		0x1
.L266:
	.sleb128	8
	.byte		"NvM_BlockJobPriority"
	.byte		0
	.4byte		.L370
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L267:
	.sleb128	8
	.byte		"NvM_NvBlockLength"
	.byte		0
	.4byte		.L374
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L268:
	.sleb128	8
	.byte		"NvM_NvBlockBaseNumber"
	.byte		0
	.4byte		.L374
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L269:
	.sleb128	8
	.byte		"NvM_NvBlockIdentifier"
	.byte		0
	.4byte		.L373
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L270:
	.sleb128	8
	.byte		"NvM_MaxNoOfReadRetry"
	.byte		0
	.4byte		.L370
	.sleb128	2
	.byte		0x23
	.uleb128	26
	.byte		0x1
.L271:
	.sleb128	8
	.byte		"NvM_MaxNoOfWriteRetry"
	.byte		0
	.4byte		.L370
	.sleb128	2
	.byte		0x23
	.uleb128	27
	.byte		0x1
.L272:
	.sleb128	8
	.byte		"NvM_WriteVerificationDataSize"
	.byte		0
	.4byte		.L374
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L273:
	.sleb128	8
	.byte		"NvM_RamBlockDataAddress"
	.byte		0
	.4byte		.L384
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L274:
	.sleb128	8
	.byte		"NvM_RomBlockDataAddress"
	.byte		0
	.4byte		.L437
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L275:
	.sleb128	8
	.byte		"NvM_InitBlockCallback"
	.byte		0
	.4byte		.L441
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L276:
	.sleb128	8
	.byte		"NvMSingleBlockCallback"
	.byte		0
	.4byte		.L445
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L277:
	.sleb128	8
	.byte		"NvM_ReadRamBlockFromNvCallback"
	.byte		0
	.4byte		.L449
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L278:
	.sleb128	8
	.byte		"NvMWriteRamBlockToNvCallback"
	.byte		0
	.4byte		.L456
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L279:
	.sleb128	8
	.byte		"NvM_Block_DemEventIds"
	.byte		0
	.4byte		.L461
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L280:
	.sleb128	8
	.byte		"NvM_booleanconfig"
	.byte		0
	.4byte		.L374
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
	.sleb128	0
.L430:
.L404:
	.sleb128	7
	.4byte		.L399
	.uleb128	185
	.uleb128	14
	.4byte		.L465-.L2
	.byte		"NvM_AdministrativeBlockType_Tag"
	.byte		0
	.uleb128	8
.L257:
	.sleb128	8
	.byte		"dataset_idx"
	.byte		0
	.4byte		.L370
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L258:
	.sleb128	8
	.byte		"error_status"
	.byte		0
	.4byte		.L415
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L259:
	.sleb128	8
	.byte		"attributes"
	.byte		0
	.4byte		.L466
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L465:
	.section	.debug_info,,n
.L466:
	.sleb128	9
	.4byte		.L399
	.uleb128	185
	.uleb128	14
	.4byte		.L467-.L2
	.uleb128	4
	.section	.debug_info,,n
.L252:
	.sleb128	10
	.byte		"wr_protect"
	.byte		0
	.4byte		.L468
	.uleb128	4
	.byte		0x1
	.byte		0x0
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L253:
	.sleb128	10
	.byte		"valid"
	.byte		0
	.4byte		.L468
	.uleb128	4
	.byte		0x1
	.byte		0x1
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L254:
	.sleb128	10
	.byte		"changed"
	.byte		0
	.4byte		.L468
	.uleb128	4
	.byte		0x1
	.byte		0x2
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L255:
	.sleb128	10
	.byte		"BlockLock"
	.byte		0
	.4byte		.L468
	.uleb128	4
	.byte		0x1
	.byte		0x3
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L256:
	.sleb128	10
	.byte		"unused"
	.byte		0
	.4byte		.L468
	.uleb128	4
	.byte		0xc
	.byte		0x4
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L467:
.L464:
	.sleb128	7
	.4byte		.L469
	.uleb128	69
	.uleb128	1
	.4byte		.L470-.L2
	.byte		"NvM_DemEventIdType_Tag"
	.byte		0
	.uleb128	16
.L244:
	.sleb128	8
	.byte		"dem_event_e_hardware"
	.byte		0
	.4byte		.L471
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L245:
	.sleb128	8
	.byte		"dem_event_req_failed"
	.byte		0
	.4byte		.L471
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L246:
	.sleb128	8
	.byte		"dem_event_integrity_failed"
	.byte		0
	.4byte		.L471
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L247:
	.sleb128	8
	.byte		"dem_event_lossof_redundancy"
	.byte		0
	.4byte		.L471
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L248:
	.sleb128	8
	.byte		"dem_event_verify_failed"
	.byte		0
	.4byte		.L471
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L249:
	.sleb128	8
	.byte		"dem_event_queue_overflow"
	.byte		0
	.4byte		.L471
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L250:
	.sleb128	8
	.byte		"dem_event_write_protected"
	.byte		0
	.4byte		.L471
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L251:
	.sleb128	8
	.byte		"dem_event_wrong_block_id"
	.byte		0
	.4byte		.L471
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
	.sleb128	0
.L470:
	.section	.debug_info,,n
.L398:
	.sleb128	11
	.4byte		.L396
	.uleb128	178
	.uleb128	14
	.4byte		.L472-.L2
	.byte		"NvM_DriverStatusType_Tag"
	.byte		0
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	12
	.byte		"NVM_NOT_INITIALIZED"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"NVM_INITIALIZED"
	.byte		0
	.sleb128	1
	.sleb128	0
.L472:
.L440:
	.sleb128	11
	.4byte		.L399
	.uleb128	185
	.uleb128	14
	.4byte		.L473-.L2
	.byte		"NvM_BlockMngmtType_Tag"
	.byte		0
	.uleb128	4
	.sleb128	12
	.byte		"NVM_BLOCK_NATIVE"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"NVM_BLOCK_REDUNDANT"
	.byte		0
	.sleb128	1
	.sleb128	12
	.byte		"NVM_BLOCK_DATASET"
	.byte		0
	.sleb128	2
	.sleb128	0
.L473:
.L432:
	.sleb128	11
	.4byte		.L399
	.uleb128	172
	.uleb128	14
	.4byte		.L474-.L2
	.byte		"NvM_BlockCrcType_Tag"
	.byte		0
	.uleb128	4
	.sleb128	12
	.byte		"NVM_CRC8"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"NVM_CRC16"
	.byte		0
	.sleb128	1
	.sleb128	12
	.byte		"NVM_CRC32"
	.byte		0
	.sleb128	2
	.sleb128	12
	.byte		"NVM_CRC00"
	.byte		0
	.sleb128	3
	.sleb128	12
	.byte		"NVM_CRC_TYPES_NB"
	.byte		0
	.sleb128	4
	.sleb128	0
.L474:
	.section	.debug_info,,n
.L371:
	.sleb128	13
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L370:
	.sleb128	14
	.byte		"uint8"
	.byte		0
	.4byte		.L371
.L369:
	.sleb128	14
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L370
.L375:
	.sleb128	13
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L374:
	.sleb128	14
	.byte		"uint16"
	.byte		0
	.4byte		.L375
.L373:
	.sleb128	14
	.byte		"NvM_BlockIdType"
	.byte		0
	.4byte		.L374
	.section	.debug_info,,n
.L384:
	.sleb128	15
	.4byte		.L370
.L389:
	.sleb128	14
	.byte		"NvM_CommonType"
	.byte		0
	.4byte		.L390
	.section	.debug_info,,n
.L388:
	.sleb128	16
	.4byte		.L389
.L393:
	.sleb128	14
	.byte		"NvM_BlockManagementType"
	.byte		0
	.4byte		.L394
.L392:
	.sleb128	16
	.4byte		.L393
.L397:
	.sleb128	14
	.byte		"NvM_DriverStatusType"
	.byte		0
	.4byte		.L398
.L403:
	.sleb128	14
	.byte		"NvM_AdministrativeBlockType"
	.byte		0
	.4byte		.L404
.L402:
	.sleb128	15
	.4byte		.L403
.L401:
	.sleb128	16
	.4byte		.L402
.L408:
	.sleb128	14
	.byte		"NvM_BlockDescriptorType"
	.byte		0
	.4byte		.L409
.L407:
	.sleb128	16
	.4byte		.L408
.L406:
	.sleb128	15
	.4byte		.L407
.L405:
	.sleb128	16
	.4byte		.L406
	.section	.debug_info,,n
.L413:
	.sleb128	17
	.4byte		.L414-.L2
	.byte		0x1
	.section	.debug_info,,n
	.sleb128	18
	.4byte		.L370
.L415:
	.sleb128	14
	.byte		"NvM_RequestResultType"
	.byte		0
	.4byte		.L370
	.sleb128	18
	.4byte		.L415
	.sleb128	0
.L414:
.L412:
	.sleb128	15
	.4byte		.L413
.L411:
	.sleb128	14
	.byte		"NvM_MultiBlockCallbackFunctionType"
	.byte		0
	.4byte		.L412
.L418:
	.sleb128	17
	.4byte		.L419-.L2
	.byte		0x1
	.sleb128	18
	.4byte		.L373
	.sleb128	18
	.4byte		.L415
	.sleb128	0
.L419:
.L417:
	.sleb128	15
	.4byte		.L418
.L416:
	.sleb128	14
	.byte		"NvM_BswM_NvM_CurrentBlockModeFunctionType"
	.byte		0
	.4byte		.L417
.L422:
	.sleb128	17
	.4byte		.L423-.L2
	.byte		0x1
	.sleb128	18
	.4byte		.L370
	.sleb128	18
	.4byte		.L415
	.sleb128	0
.L423:
.L421:
	.sleb128	15
	.4byte		.L422
.L420:
	.sleb128	14
	.byte		"NvM_BswM_NvM_CurrentJobModeFunctionType"
	.byte		0
	.4byte		.L421
.L427:
	.sleb128	13
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L426:
	.sleb128	14
	.byte		"uint32"
	.byte		0
	.4byte		.L427
.L425:
	.sleb128	15
	.4byte		.L426
.L424:
	.sleb128	16
	.4byte		.L425
.L428:
	.sleb128	16
	.4byte		.L384
.L429:
	.sleb128	14
	.byte		"boolean"
	.byte		0
	.4byte		.L371
.L431:
	.sleb128	14
	.byte		"NvM_BlockCrcType"
	.byte		0
	.4byte		.L432
	.section	.debug_info,,n
.L435:
	.sleb128	19
	.4byte		.L436-.L2
	.4byte		.L426
	.byte		0x1
.L438:
	.sleb128	16
	.4byte		.L370
.L437:
	.sleb128	15
	.4byte		.L438
	.sleb128	18
	.4byte		.L437
	.sleb128	18
	.4byte		.L426
	.sleb128	18
	.4byte		.L426
	.sleb128	18
	.4byte		.L429
	.sleb128	0
.L436:
.L434:
	.sleb128	15
	.4byte		.L435
.L433:
	.sleb128	14
	.byte		"NVM_CRC32_FUNC"
	.byte		0
	.4byte		.L434
.L439:
	.sleb128	14
	.byte		"NvM_BlockMngmtType"
	.byte		0
	.4byte		.L440
.L443:
	.sleb128	19
	.4byte		.L444-.L2
	.4byte		.L369
	.byte		0x1
	.sleb128	0
.L444:
.L442:
	.sleb128	15
	.4byte		.L443
.L441:
	.sleb128	14
	.byte		"NvM_InitBlockCallbackPtrType"
	.byte		0
	.4byte		.L442
.L447:
	.sleb128	19
	.4byte		.L448-.L2
	.4byte		.L369
	.byte		0x1
	.sleb128	18
	.4byte		.L370
	.sleb128	18
	.4byte		.L415
	.sleb128	0
.L448:
.L446:
	.sleb128	15
	.4byte		.L447
.L445:
	.sleb128	14
	.byte		"NvM_SingleBlockCallbackFunctionType"
	.byte		0
	.4byte		.L446
.L451:
	.sleb128	19
	.4byte		.L452-.L2
	.4byte		.L369
	.byte		0x1
	.section	.debug_info,,n
.L455:
	.sleb128	20
	.byte		"void"
	.byte		0
	.byte		0x0
.L454:
	.sleb128	16
	.4byte		.L455
.L453:
	.sleb128	15
	.4byte		.L454
	.sleb128	18
	.4byte		.L453
	.sleb128	0
.L452:
.L450:
	.sleb128	15
	.4byte		.L451
.L449:
	.sleb128	14
	.byte		"NvM_RamMirrorOperationReadCallBackType"
	.byte		0
	.4byte		.L450
.L458:
	.sleb128	19
	.4byte		.L459-.L2
	.4byte		.L369
	.byte		0x1
.L460:
	.sleb128	15
	.4byte		.L455
	.sleb128	18
	.4byte		.L460
	.sleb128	0
.L459:
.L457:
	.sleb128	15
	.4byte		.L458
.L456:
	.sleb128	14
	.byte		"NvM_RamMirrorOperationWriteCallBackType"
	.byte		0
	.4byte		.L457
.L463:
	.sleb128	14
	.byte		"NvM_DemEventIdType"
	.byte		0
	.4byte		.L464
.L462:
	.sleb128	16
	.4byte		.L463
.L461:
	.sleb128	15
	.4byte		.L462
.L468:
	.sleb128	13
	.byte		"unsigned int"
	.byte		0
	.byte		0x7
	.byte		0x4
.L471:
	.sleb128	14
	.byte		"Dem_EventIdType"
	.byte		0
	.4byte		.L374
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L376:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),31
	.d2locend
.L378:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo5),30
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo7),30
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo9),3
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo11),3
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo13),30
	.d2locend
.L385:
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo15),5
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "NvM_RestorePRAMBlockDefaults"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "NvM_QueueInsert","SchM_Enter_NvM_EaServiceProcessQueue","SchM_Exit_NvM_EaServiceProcessQueue"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\NvM_RestorePRAMBlockDefaults.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\NvM_RestorePRAMBlockDefaults.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\NvM_RestorePRAMBlockDefaults.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\NvM_RestorePRAMBlockDefaults.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\NvM_RestorePRAMBlockDefaults.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\NvM_RestorePRAMBlockDefaults.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\MEM\NvM\ssc\make\..\src\NvM_RestorePRAMBlockDefaults.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
