#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"NvM_WritePRAMBlock.c"
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
# FUNC(Std_ReturnType, NVM_CODE) NvM_WritePRAMBlock(VAR(NvM_BlockIdType,AUTOMATIC) BlockId)
	.align		2
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MEM\\NvM\\ssc\\make\\..\\src\\NvM_WritePRAMBlock.c"
        .d2line         21,32
#$$ld
.L394:

#$$bf	NvM_WritePRAMBlock,interprocedural,rasave,nostackparams
	.globl		NvM_WritePRAMBlock
	.d2_cfa_start __cie
NvM_WritePRAMBlock:
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
#     /* [DD-NVM00793-MGC01-V1] */
#     VAR(Std_ReturnType, AUTOMATIC) retVal = E_NOT_OK;
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
#        SchM_Exit_NvM_EaServiceProcessQueue();
	.d2line		29
.Llo3:
	bl		SchM_Exit_NvM_EaServiceProcessQueue
	b		.L342
.L341:
#        /* [DD-NVM00827-MGC01-V1] */
#        NVM_ASSERT_DET(NVM_WRITE_PRAM_BLOCK_ID, NVM_E_NOT_INITIALIZED);
#     }
#     else if((NVM_BLOCK_0 == BlockId) || (BlockId >= Get_Conf_Total_Block_Number()))
	.d2line		33
	rlwinm		r0,r31,0,16,31		# BlockId=r31
	se_cmpi		r0,0
	bc		1,2,.L356	# eq
	rlwinm		r0,r31,0,16,31		# BlockId=r31
	lis		r3,(NvM_Common+4)@ha
	lhz		r3,(NvM_Common+4)@l(r3)
	se_cmp		r0,r3
	bc		1,0,.L343	# lt
.L356:
#     {
#        SchM_Exit_NvM_EaServiceProcessQueue();
	.d2line		35
	bl		SchM_Exit_NvM_EaServiceProcessQueue
	b		.L342
.L343:
#        /* [DD-NVM00829-MGC01-V1] */
#        NVM_ASSERT_DET(NVM_WRITE_PRAM_BLOCK_ID, NVM_E_PARAM_BLOCK_ID);
#     }
#     /* [DD-NVM00385-MGC02-V1] [DD-NVM00385-MGC03-V1] */
#     else if((NvM_RequestResultType)NVM_REQ_PENDING == Get_Adm_Block_Error_Status(BlockId))
	.d2line		40
	lis		r3,NvM_BlockManagementTable@ha
	lwz		r3,NvM_BlockManagementTable@l(r3)
	rlwinm		r0,r31,3,13,28		# BlockId=r31
	se_add		r3,r0
	lbz		r0,1(r3)
	se_cmpi		r0,2
	bc		0,2,.L345	# ne
#     {
#        SchM_Exit_NvM_EaServiceProcessQueue();
	.d2line		42
	bl		SchM_Exit_NvM_EaServiceProcessQueue
	b		.L342
.L345:
#        /* [DD-NVM00828-MGC01-V1] */
#        NVM_ASSERT_DET(NVM_WRITE_PRAM_BLOCK_ID, NVM_E_BLOCK_PENDING);
#     }
#     else if(!Is_Conf_Block_Permanent(BlockId))
	.d2line		46
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	rlwinm		r0,r31,6,10,25		# BlockId=r31
	se_add		r3,r0
	lwz		r0,32(r3)
	se_cmpi		r0,0
	bc		0,2,.L347	# ne
#     {
#        SchM_Exit_NvM_EaServiceProcessQueue();
	.d2line		48
	bl		SchM_Exit_NvM_EaServiceProcessQueue
	b		.L342
.L347:
	.section	.text_vle
.L407:
#        NVM_ASSERT_DET(NVM_WRITE_PRAM_BLOCK_ID, NVM_E_PARAM_ADDRESS);
#     }
#     else
#     {
#         P2VAR(uint8,NVM_VAR,NVM_APPL_DATA) PRAMBlockPtr = NvM_BlockManagementTable.BlockDescriptorPtr[BlockId].NvM_RamBlockDataAddress;
	.d2line		53
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	rlwinm		r0,r31,6,10,25		# BlockId=r31
	se_add		r3,r0
	lwz		r5,32(r3)
.Llo6:
	mr		r5,r5		# PRAMBlockPtr=r5 PRAMBlockPtr=r5
# 
#         /* [DD-NVM00751-MGC03-V1] [DD-NVM00753-MGC01-V1] */
#         if(!Is_Adm_Block_Attrib_Block_LockStatus(BlockId))
	.d2line		56
	lis		r3,NvM_BlockManagementTable@ha
	lwz		r3,NvM_BlockManagementTable@l(r3)
	rlwinm		r0,r31,3,13,28		# BlockId=r31
	se_add		r3,r0
	lwz		r0,4(r3)
	se_btsti		r0,3
	bc		0,2,.L355	# ne
#         {
#             if(!Is_Adm_Block_Attrib_Wr_Protection(BlockId))
	.d2line		58
	lis		r3,NvM_BlockManagementTable@ha
	lwz		r3,NvM_BlockManagementTable@l(r3)
	rlwinm		r0,r31,3,13,28		# BlockId=r31
	se_add		r3,r0
	lwz		r0,4(r3)
	se_btsti		r0,0
	bc		0,2,.L350	# ne
#             {
#                 if((!Is_Conf_Block_Type_Dataset(BlockId))
	.d2line		60
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	rlwinm		r0,r31,6,10,25		# BlockId=r31
	se_add		r3,r0
	lwz		r0,12(r3)
	se_cmpi		r0,2
	bc		0,2,.L357	# ne
	lis		r3,NvM_BlockManagementTable@ha
	lwz		r3,NvM_BlockManagementTable@l(r3)
	rlwinm		r0,r31,3,13,28		# BlockId=r31
	lbzx		r0,r3,r0
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r4,(NvM_BlockManagementTable+4)@l(r3)
	rlwinm		r3,r31,6,10,25		# BlockId=r31
	se_add		r3,r4
	lbz		r3,16(r3)
	se_cmp		r0,r3
	bc		0,0,.L351	# ge
.L357:
#                         || (Is_Dataset_Points_To_Nv(BlockId, Get_Adm_Block_Dataset_Idx_U16(BlockId))))
#                 {
#                     /* [DD-NVM00569-MGC01-V1] [DD-NVM00725-MGC01-V1] [DD-NVM00385-MGC01-V1] */
#                     retVal = NvM_QueueInsert(BlockId,
	.d2line		64
.Llo7:
	rlwinm		r3,r31,0,16,31		# retVal=r3 BlockId=r31
	diab.li		r4,23
.Llo8:
	mr		r5,r5		# PRAMBlockPtr=r5 PRAMBlockPtr=r5
.Llo9:
	bl		NvM_QueueInsert
	mr		r30,r3		# retVal=r30 retVal=r3
#                                              NVM_WRITE_PRAM_BLOCK_ID,
#                                              (P2VAR(uint8,AUTOMATIC,NVM_APPL_DATA)) PRAMBlockPtr
# #if (NVM_JOB_PRIORITIZATION==STD_ON)
#                                              ,
#                                              FALSE
# #endif
#                                              );
# 
#                     if(E_OK == retVal)
	.d2line		73
	rlwinm		r3,r3,0,24,31		# retVal=r3 retVal=r3
	se_cmpi		r3,0		# retVal=r3
	bc		0,2,.L355	# ne
#                     {
#                         NvM_BlockManagementTable.AdminBlockPtr[BlockId].attributes.valid = NVM_BLOCK_VALID;
	.d2line		75
	lis		r3,NvM_BlockManagementTable@ha		# retVal=r3
	lwz		r0,NvM_BlockManagementTable@l(r3)		# retVal=r3
	rlwinm		r5,r31,3,13,28		# BlockId=r31
	add		r31,r0,r5		# BlockId=r31
	lwz		r0,4(r31)		# BlockId=r31
	.diab.bseti		r0,1
	lwz		r31,NvM_BlockManagementTable@l(r3)		# BlockId=r31 retVal=r3
	se_add		r31,r5		# BlockId=r31 BlockId=r31
	stw		r0,4(r31)		# BlockId=r31
#                         /* [DD-NVM00185-MGC01-V1] */
#                         Set_Adm_Block_Error_Status(BlockId, NVM_REQ_PENDING);
	.d2line		77
	diab.li		r0,2
	lwz		r3,NvM_BlockManagementTable@l(r3)		# retVal=r3 retVal=r3
	se_add		r5,r3		# retVal=r3
	stb		r0,1(r5)
	b		.L355
.L351:
#                     }
#                 }
#                 else
#                 {
#                     NvM_Call_Dem_ReportErrorStatus(BlockId, NVM_DEM_EVENT_E_WRITE_PROTECTED, DEM_EVENT_STATUS_FAILED);
	.d2line		82
	rlwinm		r3,r31,0,16,31		# BlockId=r31
	diab.li		r4,7
	diab.li		r5,1
	bl		NvM_Call_Dem_ReportErrorStatus
	b		.L355
.L350:
#                 }
#             }
#             else
#             {
#                 /* Return value is unchanged */
#                 NvM_Call_Dem_ReportErrorStatus(BlockId, NVM_DEM_EVENT_E_WRITE_PROTECTED, DEM_EVENT_STATUS_FAILED);
	.d2line		88
	rlwinm		r3,r31,0,16,31		# BlockId=r31
	diab.li		r4,7
	diab.li		r5,1
	bl		NvM_Call_Dem_ReportErrorStatus
.L355:
#             }
#         }
#         else
#         {
#             /* [DD-NVM00830-MGC01-V1] */
#             NVM_ASSERT_DET(NVM_WRITE_PRAM_BLOCK_ID, NVM_E_BLOCK_LOCKED);
#         }
# 
#         SchM_Exit_NvM_EaServiceProcessQueue();
	.d2line		97
	bl		SchM_Exit_NvM_EaServiceProcessQueue
	.section	.text_vle
.L408:
.L342:
#     }
# 
#     return retVal;
	.d2line		100
.Llo4:
	rlwinm		r3,r30,0,24,31		# retVal=r3 retVal=r30
# }
	.d2line		101
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo5:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L395:
	.type		NvM_WritePRAMBlock,@function
	.size		NvM_WritePRAMBlock,.-NvM_WritePRAMBlock
# Number of nodes = 213

# Allocations for NvM_WritePRAMBlock
#	?a4		BlockId
#	?a5		retVal
#	?a6		PRAMBlockPtr
# FUNC(void, NVM_CODE) NvM_ProcessPRAMWritingNvBlockStates(P2VAR(NvM_BlockRequestType, AUTOMATIC, NVM_APPL_DATA) arg_block)
	.align		2
	.section	.text_vle
        .d2line         103,22
#$$ld
.L417:

#$$bf	NvM_ProcessPRAMWritingNvBlockStates,interprocedural,rasave,nostackparams
	.globl		NvM_ProcessPRAMWritingNvBlockStates
	.d2_cfa_start __cie
NvM_ProcessPRAMWritingNvBlockStates:
.Llo10:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# arg_block=r31 arg_block=r3
	.d2prologue_end
# {
#     VAR(boolean,AUTOMATIC) retVal = FALSE;
	.d2line		105
	diab.li		r30,0		# retVal=r30
.L369:
# 
#     while(FALSE == retVal)
	.d2line		107
.Llo11:
	rlwinm		r3,r30,0,24,31		# arg_block=r3 retVal=r30
.Llo12:
	se_cmpi		r3,0		# arg_block=r3
	bc		0,2,.L368	# ne
#     {
# 
#         switch (arg_block->info.state)
	.d2line		110
	lwz		r6,12(r31)		# arg_block=r31
	diab.addi		r0,r6,-26
	se_cmpli	r0,7
	rlwinm		r6,r0,2,0,29
	e_add2is		r6,.L427@ha
	bc		1,1,.L380	# gt
	lwz		r7,.L427@l(r6)
	mtspr		ctr,r7
	bcctr		20,0
.L427:
#$$sl
	.long		.L373
	.long		.L371
	.long		.L375
	.long		.L374
	.long		.L376
	.long		.L377
	.long		.L378
	.long		.L379
#$$se
.L371:
#         {
# 
#             case NVM_BLOCK_NV_WRITE_PRAM_PREINIT:
#             {
#                 retVal = NvM_ActBlockNvWritePRAMPreInit(arg_block);
	.d2line		115
	mr		r3,r31		# arg_block=r3 arg_block=r31
	bl		NvM_ActBlockNvWritePRAMPreInit
	mr		r30,r3		# retVal=r30 retVal=r3
	b		.L369
.L373:
#             }break;
# 
#             case NVM_BLOCK_NV_WRITE_PRAM_INIT:
#             {
#                 NvM_ActBlockNvWritePRAMInit(arg_block);
	.d2line		120
	mr		r3,r31		# arg_block=r3 arg_block=r31
	bl		NvM_ActBlockNvWritePRAMInit
	b		.L369
.L374:
#             }break;
# 
#             case NVM_BLOCK_NV_WRITE_PRAM_VALIDATE:
#             {
#                 retVal = NvM_ActBlockNvWritePRAMValidate(arg_block);
	.d2line		125
	mr		r3,r31		# arg_block=r3 arg_block=r31
	bl		NvM_ActBlockNvWritePRAMValidate
	mr		r30,r3		# retVal=r30 retVal=r3
	b		.L369
.L375:
#             }break;
# 
#             case NVM_BLOCK_NV_WRITE_PRAM_IN_PROGRESS:
#             {
#                 retVal = NvM_ActBlockNvWritePRAMInProgress(arg_block);
	.d2line		130
	mr		r3,r31		# arg_block=r3 arg_block=r31
	bl		NvM_ActBlockNvWritePRAMInProgress
	mr		r30,r3		# retVal=r30 retVal=r3
	b		.L369
.L376:
#             }break;
# 
#             case NVM_BLOCK_NV_WRITE_PRAM_PROCESS_ERR:
#             {
#                 retVal = NvM_ActBlockNvWritePRAMProcessErr(arg_block);
	.d2line		135
	mr		r3,r31		# arg_block=r3 arg_block=r31
	bl		NvM_ActBlockNvWritePRAMProcessErr
	mr		r30,r3		# retVal=r30 retVal=r3
	b		.L369
.L377:
#             }break;
# 
#             case NVM_BLOCK_NV_WRITE_PRAM_START_WRITE:
#             {
#                 NvM_ActBlockNvWritePRAMStartWrite(arg_block);
	.d2line		140
	mr		r3,r31		# arg_block=r3 arg_block=r31
	bl		NvM_ActBlockNvWritePRAMStartWrite
	b		.L369
.L378:
#             }break;
# 
#             case NVM_BLOCK_NV_WRITE_PRAM_VERIFICATION:
#             {
#                 NvM_ActBlockNvWritePRAMVerification(arg_block);
	.d2line		145
	mr		r3,r31		# arg_block=r3 arg_block=r31
	bl		NvM_ActBlockNvWritePRAMVerification
	b		.L369
.L379:
#             }break;
# 
#             case NVM_BLOCK_NV_WRITE_PRAM_VERIFICATION_IN_PROGRESS:
#             {
#                 retVal = NvM_ActBlockNvWritePRAMVerifyInProgress(arg_block);
	.d2line		150
	mr		r3,r31		# arg_block=r3 arg_block=r31
	bl		NvM_ActBlockNvWritePRAMVerifyInProgress
	mr		r30,r3		# retVal=r30 retVal=r3
	b		.L369
.L380:
#             }break;
# 
#             default:
#             {
#                 retVal = TRUE;
	.d2line		155
	diab.li		r30,1		# retVal=r30
	b		.L369
.L368:
#             }break;
#         }
#     }
# }
	.d2line		159
	.d2epilogue_begin
.Llo13:
	lmw		r30,24(r1)		# offset r1+24  0x18
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
.L418:
	.type		NvM_ProcessPRAMWritingNvBlockStates,@function
	.size		NvM_ProcessPRAMWritingNvBlockStates,.-NvM_ProcessPRAMWritingNvBlockStates
# Number of nodes = 66

# Allocations for NvM_ProcessPRAMWritingNvBlockStates
#	?a4		arg_block
#	?a5		retVal

# Allocations for module
	.section	.text_vle
	.0byte		.L428
	.section	.text_vle
#$$ld
.L5:
.L521:	.d2filenum "C:\\WINDRI~1\\COMPIL~1\\DIAB-5~1.4\\include\\diab/lpragma.h"
.L453:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MEM\\NvM\\ssc\\make\\..\\inc\\NvM_Types.h"
.L441:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MEM\\NvM\\ssc\\make\\..\\inc\\NvM_I.h"
.L438:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MEM\\NvM\\ssc\\make\\..\\inc\\NvM.h"
.L429:	.d2filenum "gen\\MPC5746R_ECU\\WindRiver\\NvM_Lcfg.h"
.L396:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MEM\\NvM\\ssc\\make\\..\\src\\NvM_WritePRAMBlock.c"
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
	.uleb128	3
	.uleb128	8
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
	.uleb128	11
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
	.uleb128	12
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
	.uleb128	13
	.uleb128	40
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	28
	.uleb128	13
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	14
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
	.uleb128	15
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	16
	.uleb128	15
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	17
	.uleb128	38
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	18
	.uleb128	21
	.byte		0x1
	.uleb128	1
	.uleb128	19
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
	.uleb128	20
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
	.uleb128	21
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MEM\\NvM\\ssc\\make\\..\\src\\NvM_WritePRAMBlock.c"
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
.L400:
	.sleb128	2
	.4byte		.L393-.L2
	.byte		"NvM_WritePRAMBlock"
	.byte		0
	.4byte		.L396
	.uleb128	21
	.uleb128	32
	.4byte		.L397
	.byte		0x1
	.byte		0x1
	.4byte		.L394
	.4byte		.L395
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L396
	.uleb128	21
	.uleb128	32
	.byte		"BlockId"
	.byte		0
	.4byte		.L401
	.4byte		.L404
	.section	.debug_info,,n
.L405:
	.sleb128	4
	.4byte		.L396
	.uleb128	24
	.uleb128	36
	.byte		"retVal"
	.byte		0
	.4byte		.L397
	.4byte		.L406
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L410
	.4byte		.L407
	.4byte		.L408
.L411:
	.sleb128	4
	.4byte		.L396
	.uleb128	53
	.uleb128	44
	.byte		"PRAMBlockPtr"
	.byte		0
	.4byte		.L412
	.4byte		.L413
	.section	.debug_info,,n
	.sleb128	0
.L410:
	.section	.debug_info,,n
	.sleb128	0
.L393:
	.section	.debug_info,,n
.L419:
	.sleb128	6
	.4byte		.L416-.L2
	.byte		"NvM_ProcessPRAMWritingNvBlockStates"
	.byte		0
	.4byte		.L396
	.uleb128	103
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L417
	.4byte		.L418
	.sleb128	3
	.4byte		.L396
	.uleb128	103
	.uleb128	22
	.byte		"arg_block"
	.byte		0
	.4byte		.L420
	.4byte		.L423
.L424:
	.sleb128	4
	.4byte		.L396
	.uleb128	105
	.uleb128	28
	.byte		"retVal"
	.byte		0
	.4byte		.L425
	.4byte		.L426
	.section	.debug_info,,n
	.sleb128	0
.L416:
	.section	.debug_info,,n
.L428:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L429
	.uleb128	98
	.uleb128	40
	.byte		"NvM_Common"
	.byte		0
	.4byte		.L430
	.section	.debug_info,,n
.L433:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L429
	.uleb128	100
	.uleb128	49
	.byte		"NvM_BlockManagementTable"
	.byte		0
	.4byte		.L434
.L437:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L438
	.uleb128	297
	.uleb128	43
	.byte		"NvM_InitStatus"
	.byte		0
	.4byte		.L439
	.0byte		.L437
	.section	.debug_info,,n
.L422:
	.sleb128	8
	.4byte		.L441
	.uleb128	227
	.uleb128	14
	.4byte		.L442-.L2
	.byte		"NvM_BlockRequestType_Tag"
	.byte		0
	.uleb128	28
	.section	.debug_info,,n
.L314:
	.sleb128	9
	.byte		"service_id"
	.byte		0
	.4byte		.L443
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L315:
	.sleb128	9
	.byte		"block_id"
	.byte		0
	.4byte		.L401
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L316:
	.sleb128	9
	.byte		"ram_block_ptr"
	.byte		0
	.4byte		.L412
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L317:
	.sleb128	9
	.byte		"info"
	.byte		0
	.4byte		.L445
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L442:
.L446:
	.sleb128	8
	.4byte		.L441
	.uleb128	227
	.uleb128	14
	.4byte		.L447-.L2
	.byte		"NvM_NvMemifInfoType_Tag"
	.byte		0
	.uleb128	16
.L309:
	.sleb128	9
	.byte		"state"
	.byte		0
	.4byte		.L448
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L310:
	.sleb128	9
	.byte		"dataset"
	.byte		0
	.4byte		.L402
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L311:
	.sleb128	9
	.byte		"dem_err"
	.byte		0
	.4byte		.L450
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L312:
	.sleb128	9
	.byte		"status_err"
	.byte		0
	.4byte		.L452
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L313:
	.sleb128	9
	.byte		"datasetPointsToRom"
	.byte		0
	.4byte		.L425
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
	.sleb128	0
.L447:
.L436:
	.sleb128	8
	.4byte		.L453
	.uleb128	185
	.uleb128	14
	.4byte		.L454-.L2
	.byte		"NvM_BlockManagementType_Tag"
	.byte		0
	.uleb128	8
.L295:
	.sleb128	9
	.byte		"AdminBlockPtr"
	.byte		0
	.4byte		.L455
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L296:
	.sleb128	9
	.byte		"BlockDescriptorPtr"
	.byte		0
	.4byte		.L459
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L454:
.L432:
	.sleb128	8
	.4byte		.L453
	.uleb128	185
	.uleb128	14
	.4byte		.L464-.L2
	.byte		"NvM_CommonType_Tag"
	.byte		0
	.uleb128	40
.L281:
	.sleb128	9
	.byte		"NvM_CrcNumOfBytes"
	.byte		0
	.4byte		.L402
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L282:
	.sleb128	9
	.byte		"NvM_CompiledConfigId"
	.byte		0
	.4byte		.L402
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L283:
	.sleb128	9
	.byte		"NvM_TotalBlockNb"
	.byte		0
	.4byte		.L401
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L284:
	.sleb128	9
	.byte		"NvM_MultiBlockCallback"
	.byte		0
	.4byte		.L465
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L285:
	.sleb128	9
	.byte		"NvM_BswMBlockModeCallback"
	.byte		0
	.4byte		.L469
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L286:
	.sleb128	9
	.byte		"NvM_BswMJobModeCallback"
	.byte		0
	.4byte		.L473
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L287:
	.sleb128	9
	.byte		"NvM_BlockCRCPtr"
	.byte		0
	.4byte		.L477
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L288:
	.sleb128	9
	.byte		"NvM_RamMirrorPtr"
	.byte		0
	.4byte		.L481
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L289:
	.sleb128	9
	.byte		"NvM_WriteVfyBuffPtr"
	.byte		0
	.4byte		.L481
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L290:
	.sleb128	9
	.byte		"NvM_DatasetSelectionBits"
	.byte		0
	.4byte		.L398
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L291:
	.sleb128	9
	.byte		"NvM_RptMirrorCnt"
	.byte		0
	.4byte		.L398
	.sleb128	2
	.byte		0x23
	.uleb128	33
	.byte		0x1
.L292:
	.sleb128	9
	.byte		"NvM_BswMMultiBlk"
	.byte		0
	.4byte		.L425
	.sleb128	2
	.byte		0x23
	.uleb128	34
	.byte		0x1
.L293:
	.sleb128	9
	.byte		"NvM_DrvModeSwitch"
	.byte		0
	.4byte		.L425
	.sleb128	2
	.byte		0x23
	.uleb128	35
	.byte		0x1
.L294:
	.sleb128	9
	.byte		"NvM_DynConfig"
	.byte		0
	.4byte		.L425
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
	.sleb128	0
.L464:
.L463:
	.sleb128	8
	.4byte		.L453
	.uleb128	185
	.uleb128	14
	.4byte		.L482-.L2
	.byte		"NvM_BlockDescriptorType_Tag"
	.byte		0
	.uleb128	64
.L260:
	.sleb128	9
	.byte		"NvM_BlockCRC"
	.byte		0
	.4byte		.L483
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L261:
	.sleb128	9
	.byte		"CrcFunctionPtr"
	.byte		0
	.4byte		.L485
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L262:
	.sleb128	9
	.byte		"NvM_NvramDeviceId"
	.byte		0
	.4byte		.L398
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L263:
	.sleb128	9
	.byte		"NvM_BlockManagement"
	.byte		0
	.4byte		.L491
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L264:
	.sleb128	9
	.byte		"NvM_NvBlockNum"
	.byte		0
	.4byte		.L398
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L265:
	.sleb128	9
	.byte		"NvM_RomBlockNum"
	.byte		0
	.4byte		.L398
	.sleb128	2
	.byte		0x23
	.uleb128	17
	.byte		0x1
.L266:
	.sleb128	9
	.byte		"NvM_BlockJobPriority"
	.byte		0
	.4byte		.L398
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L267:
	.sleb128	9
	.byte		"NvM_NvBlockLength"
	.byte		0
	.4byte		.L402
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L268:
	.sleb128	9
	.byte		"NvM_NvBlockBaseNumber"
	.byte		0
	.4byte		.L402
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L269:
	.sleb128	9
	.byte		"NvM_NvBlockIdentifier"
	.byte		0
	.4byte		.L401
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L270:
	.sleb128	9
	.byte		"NvM_MaxNoOfReadRetry"
	.byte		0
	.4byte		.L398
	.sleb128	2
	.byte		0x23
	.uleb128	26
	.byte		0x1
.L271:
	.sleb128	9
	.byte		"NvM_MaxNoOfWriteRetry"
	.byte		0
	.4byte		.L398
	.sleb128	2
	.byte		0x23
	.uleb128	27
	.byte		0x1
.L272:
	.sleb128	9
	.byte		"NvM_WriteVerificationDataSize"
	.byte		0
	.4byte		.L402
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L273:
	.sleb128	9
	.byte		"NvM_RamBlockDataAddress"
	.byte		0
	.4byte		.L412
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L274:
	.sleb128	9
	.byte		"NvM_RomBlockDataAddress"
	.byte		0
	.4byte		.L489
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L275:
	.sleb128	9
	.byte		"NvM_InitBlockCallback"
	.byte		0
	.4byte		.L493
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L276:
	.sleb128	9
	.byte		"NvMSingleBlockCallback"
	.byte		0
	.4byte		.L497
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L277:
	.sleb128	9
	.byte		"NvM_ReadRamBlockFromNvCallback"
	.byte		0
	.4byte		.L501
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L278:
	.sleb128	9
	.byte		"NvMWriteRamBlockToNvCallback"
	.byte		0
	.4byte		.L508
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L279:
	.sleb128	9
	.byte		"NvM_Block_DemEventIds"
	.byte		0
	.4byte		.L513
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L280:
	.sleb128	9
	.byte		"NvM_booleanconfig"
	.byte		0
	.4byte		.L402
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
	.sleb128	0
.L482:
.L458:
	.sleb128	8
	.4byte		.L453
	.uleb128	185
	.uleb128	14
	.4byte		.L517-.L2
	.byte		"NvM_AdministrativeBlockType_Tag"
	.byte		0
	.uleb128	8
.L257:
	.sleb128	9
	.byte		"dataset_idx"
	.byte		0
	.4byte		.L398
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L258:
	.sleb128	9
	.byte		"error_status"
	.byte		0
	.4byte		.L452
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L259:
	.sleb128	9
	.byte		"attributes"
	.byte		0
	.4byte		.L518
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L517:
	.section	.debug_info,,n
.L518:
	.sleb128	10
	.4byte		.L453
	.uleb128	185
	.uleb128	14
	.4byte		.L519-.L2
	.uleb128	4
	.section	.debug_info,,n
.L252:
	.sleb128	11
	.byte		"wr_protect"
	.byte		0
	.4byte		.L520
	.uleb128	4
	.byte		0x1
	.byte		0x0
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L253:
	.sleb128	11
	.byte		"valid"
	.byte		0
	.4byte		.L520
	.uleb128	4
	.byte		0x1
	.byte		0x1
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L254:
	.sleb128	11
	.byte		"changed"
	.byte		0
	.4byte		.L520
	.uleb128	4
	.byte		0x1
	.byte		0x2
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L255:
	.sleb128	11
	.byte		"BlockLock"
	.byte		0
	.4byte		.L520
	.uleb128	4
	.byte		0x1
	.byte		0x3
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L256:
	.sleb128	11
	.byte		"unused"
	.byte		0
	.4byte		.L520
	.uleb128	4
	.byte		0xc
	.byte		0x4
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L519:
.L516:
	.sleb128	8
	.4byte		.L521
	.uleb128	69
	.uleb128	1
	.4byte		.L522-.L2
	.byte		"NvM_DemEventIdType_Tag"
	.byte		0
	.uleb128	16
.L244:
	.sleb128	9
	.byte		"dem_event_e_hardware"
	.byte		0
	.4byte		.L523
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L245:
	.sleb128	9
	.byte		"dem_event_req_failed"
	.byte		0
	.4byte		.L523
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L246:
	.sleb128	9
	.byte		"dem_event_integrity_failed"
	.byte		0
	.4byte		.L523
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L247:
	.sleb128	9
	.byte		"dem_event_lossof_redundancy"
	.byte		0
	.4byte		.L523
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L248:
	.sleb128	9
	.byte		"dem_event_verify_failed"
	.byte		0
	.4byte		.L523
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L249:
	.sleb128	9
	.byte		"dem_event_queue_overflow"
	.byte		0
	.4byte		.L523
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L250:
	.sleb128	9
	.byte		"dem_event_write_protected"
	.byte		0
	.4byte		.L523
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L251:
	.sleb128	9
	.byte		"dem_event_wrong_block_id"
	.byte		0
	.4byte		.L523
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
	.sleb128	0
.L522:
	.section	.debug_info,,n
.L444:
	.sleb128	12
	.4byte		.L441
	.uleb128	176
	.uleb128	14
	.4byte		.L524-.L2
	.byte		"NvM_ServiceIdType_Tag"
	.byte		0
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	13
	.byte		"NVM_INIT_ID"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"NVM_SET_DATA_INDEX_ID"
	.byte		0
	.sleb128	1
	.sleb128	13
	.byte		"NVM_GET_DATA_INDEX_ID"
	.byte		0
	.sleb128	2
	.sleb128	13
	.byte		"NVM_SET_BLOCK_PROTECTION_ID"
	.byte		0
	.sleb128	3
	.sleb128	13
	.byte		"NVM_GET_ERROR_STATUS_ID"
	.byte		0
	.sleb128	4
	.sleb128	13
	.byte		"NVM_SET_RAM_BLOCK_STATUS_ID"
	.byte		0
	.sleb128	5
	.sleb128	13
	.byte		"NVM_READ_BLOCK_ID"
	.byte		0
	.sleb128	6
	.sleb128	13
	.byte		"NVM_WRITE_BLOCK_ID"
	.byte		0
	.sleb128	7
	.sleb128	13
	.byte		"NVM_RESTORE_BLOCK_DEFAULTS_ID"
	.byte		0
	.sleb128	8
	.sleb128	13
	.byte		"NVM_ERASE_BLOCK_ID"
	.byte		0
	.sleb128	9
	.sleb128	13
	.byte		"NVM_CANCEL_WRITE_ALL_ID"
	.byte		0
	.sleb128	10
	.sleb128	13
	.byte		"NVM_INVALIDATE_NV_BLOCK_ID"
	.byte		0
	.sleb128	11
	.sleb128	13
	.byte		"NVM_READ_ALL_ID"
	.byte		0
	.sleb128	12
	.sleb128	13
	.byte		"NVM_WRITE_ALL_ID"
	.byte		0
	.sleb128	13
	.sleb128	13
	.byte		"NVM_MAIN_FUNCTION_ID"
	.byte		0
	.sleb128	14
	.sleb128	13
	.byte		"NVM_GET_VERSION_INFO_ID"
	.byte		0
	.sleb128	15
	.sleb128	13
	.byte		"NVM_CANCEL_JOB_ID"
	.byte		0
	.sleb128	16
	.sleb128	13
	.byte		"NVM_JOB_END_NOTIFICATION_ID"
	.byte		0
	.sleb128	17
	.sleb128	13
	.byte		"NVM_JOB_ERROR_NOTIFICATION_ID"
	.byte		0
	.sleb128	18
	.sleb128	13
	.byte		"NVM_SETBLOCK_LOCK_STATUS_ID"
	.byte		0
	.sleb128	19
	.sleb128	13
	.byte		"NVM_READ_PRAM_BLOCK_ID"
	.byte		0
	.sleb128	22
	.sleb128	13
	.byte		"NVM_WRITE_PRAM_BLOCK_ID"
	.byte		0
	.sleb128	23
	.sleb128	13
	.byte		"NVM_RESTORE_PRAM_BLOCK_DEFAULTS_ID"
	.byte		0
	.sleb128	24
	.sleb128	13
	.byte		"NVM_VALIDATE_ALL_ID"
	.byte		0
	.sleb128	25
	.sleb128	13
	.byte		"NVM_NO_SERVICE_PENDING_ID"
	.byte		0
	.sleb128	26
	.sleb128	0
.L524:
.L449:
	.sleb128	12
	.4byte		.L441
	.uleb128	122
	.uleb128	14
	.4byte		.L525-.L2
	.byte		"NvM_BlockMemifDriverStateType_Tag"
	.byte		0
	.uleb128	4
	.sleb128	13
	.byte		"NVM_BLOCK_NV_READ_INIT"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"NVM_BLOCK_NV_READ_START"
	.byte		0
	.sleb128	1
	.sleb128	13
	.byte		"NVM_BLOCK_NV_READ_ROM_DATASET_VALIDATE"
	.byte		0
	.sleb128	2
	.sleb128	13
	.byte		"NVM_BLOCK_NV_READ_IN_PROGRESS"
	.byte		0
	.sleb128	3
	.sleb128	13
	.byte		"NVM_BLOCK_NV_READ_CHECK_CRC"
	.byte		0
	.sleb128	4
	.sleb128	13
	.byte		"NVM_BLOCK_NV_READ_RAMMIRROR"
	.byte		0
	.sleb128	5
	.sleb128	13
	.byte		"NVM_BLOCK_NV_READ_PROCESS_ERR"
	.byte		0
	.sleb128	6
	.sleb128	13
	.byte		"NVM_BLOCK_NV_READ_DONE"
	.byte		0
	.sleb128	7
	.sleb128	13
	.byte		"NVM_BLOCK_NV_WRITE_PREINIT"
	.byte		0
	.sleb128	8
	.sleb128	13
	.byte		"NVM_BLOCK_NV_WRITE_INIT"
	.byte		0
	.sleb128	9
	.sleb128	13
	.byte		"NVM_BLOCK_NV_WRITE_IN_PROGRESS"
	.byte		0
	.sleb128	10
	.sleb128	13
	.byte		"NVM_BLOCK_NV_WRITE_VALIDATE"
	.byte		0
	.sleb128	11
	.sleb128	13
	.byte		"NVM_BLOCK_NV_WRITE_PROCESS_ERR"
	.byte		0
	.sleb128	12
	.sleb128	13
	.byte		"NVM_BLOCK_NV_WRITE_START_WRITE"
	.byte		0
	.sleb128	13
	.sleb128	13
	.byte		"NVM_BLOCK_NV_WRITE_VERIFICATION"
	.byte		0
	.sleb128	14
	.sleb128	13
	.byte		"NVM_BLOCK_NV_WRITE_VERIFICATION_IN_PROGRESS"
	.byte		0
	.sleb128	15
	.sleb128	13
	.byte		"NVM_BLOCK_NV_WRITE_DONE"
	.byte		0
	.sleb128	16
	.sleb128	13
	.byte		"NVM_BLOCK_NV_READ_PRAM_INIT"
	.byte		0
	.sleb128	17
	.sleb128	13
	.byte		"NVM_BLOCK_NV_READ_PRAM_START"
	.byte		0
	.sleb128	18
	.sleb128	13
	.byte		"NVM_BLOCK_NV_READ_PRAM_ROM_DATASET_VALIDATE"
	.byte		0
	.sleb128	19
	.sleb128	13
	.byte		"NVM_BLOCK_NV_READ_PRAM_IN_PROGRESS"
	.byte		0
	.sleb128	20
	.sleb128	13
	.byte		"NVM_BLOCK_NV_READ_PRAM_CHECK_CRC"
	.byte		0
	.sleb128	21
	.sleb128	13
	.byte		"NVM_BLOCK_NV_READ_PRAM_RAMMIRROR"
	.byte		0
	.sleb128	22
	.sleb128	13
	.byte		"NVM_BLOCK_NV_READ_PRAM_RECALC"
	.byte		0
	.sleb128	23
	.sleb128	13
	.byte		"NVM_BLOCK_NV_READ_PRAM_PROCESS_ERR"
	.byte		0
	.sleb128	24
	.sleb128	13
	.byte		"NVM_BLOCK_NV_READ_PRAM_DONE"
	.byte		0
	.sleb128	25
	.sleb128	13
	.byte		"NVM_BLOCK_NV_WRITE_PRAM_INIT"
	.byte		0
	.sleb128	26
	.sleb128	13
	.byte		"NVM_BLOCK_NV_WRITE_PRAM_PREINIT"
	.byte		0
	.sleb128	27
	.sleb128	13
	.byte		"NVM_BLOCK_NV_WRITE_PRAM_IN_PROGRESS"
	.byte		0
	.sleb128	28
	.sleb128	13
	.byte		"NVM_BLOCK_NV_WRITE_PRAM_VALIDATE"
	.byte		0
	.sleb128	29
	.sleb128	13
	.byte		"NVM_BLOCK_NV_WRITE_PRAM_PROCESS_ERR"
	.byte		0
	.sleb128	30
	.sleb128	13
	.byte		"NVM_BLOCK_NV_WRITE_PRAM_START_WRITE"
	.byte		0
	.sleb128	31
	.sleb128	13
	.byte		"NVM_BLOCK_NV_WRITE_PRAM_VERIFICATION"
	.byte		0
	.sleb128	32
	.sleb128	13
	.byte		"NVM_BLOCK_NV_WRITE_PRAM_VERIFICATION_IN_PROGRESS"
	.byte		0
	.sleb128	33
	.sleb128	13
	.byte		"NVM_BLOCK_NV_WRITE_PRAM_DONE"
	.byte		0
	.sleb128	34
	.sleb128	13
	.byte		"NVM_BLOCK_VALIDATE_INIT"
	.byte		0
	.sleb128	35
	.sleb128	13
	.byte		"NVM_BLOCK_VALIDATE_USING_RAMMIRROR"
	.byte		0
	.sleb128	36
	.sleb128	13
	.byte		"NVM_BLOCK_VALIDATE_CHECK_CRC_RAM"
	.byte		0
	.sleb128	37
	.sleb128	13
	.byte		"NVM_BLOCK_VALIDATE_CHECK_CRC_RAMMIRROR"
	.byte		0
	.sleb128	38
	.sleb128	13
	.byte		"NVM_BLOCK_VALIDATE_DONE"
	.byte		0
	.sleb128	39
	.sleb128	13
	.byte		"NVM_BLOCK_MEMIF_DRIVER_STATE_NB"
	.byte		0
	.sleb128	40
	.sleb128	0
.L525:
.L440:
	.sleb128	12
	.4byte		.L438
	.uleb128	178
	.uleb128	14
	.4byte		.L526-.L2
	.byte		"NvM_DriverStatusType_Tag"
	.byte		0
	.uleb128	4
	.sleb128	13
	.byte		"NVM_NOT_INITIALIZED"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"NVM_INITIALIZED"
	.byte		0
	.sleb128	1
	.sleb128	0
.L526:
.L492:
	.sleb128	12
	.4byte		.L453
	.uleb128	185
	.uleb128	14
	.4byte		.L527-.L2
	.byte		"NvM_BlockMngmtType_Tag"
	.byte		0
	.uleb128	4
	.sleb128	13
	.byte		"NVM_BLOCK_NATIVE"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"NVM_BLOCK_REDUNDANT"
	.byte		0
	.sleb128	1
	.sleb128	13
	.byte		"NVM_BLOCK_DATASET"
	.byte		0
	.sleb128	2
	.sleb128	0
.L527:
.L484:
	.sleb128	12
	.4byte		.L453
	.uleb128	172
	.uleb128	14
	.4byte		.L528-.L2
	.byte		"NvM_BlockCrcType_Tag"
	.byte		0
	.uleb128	4
	.sleb128	13
	.byte		"NVM_CRC8"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"NVM_CRC16"
	.byte		0
	.sleb128	1
	.sleb128	13
	.byte		"NVM_CRC32"
	.byte		0
	.sleb128	2
	.sleb128	13
	.byte		"NVM_CRC00"
	.byte		0
	.sleb128	3
	.sleb128	13
	.byte		"NVM_CRC_TYPES_NB"
	.byte		0
	.sleb128	4
	.sleb128	0
.L528:
.L451:
	.sleb128	12
	.4byte		.L453
	.uleb128	153
	.uleb128	14
	.4byte		.L529-.L2
	.byte		"NvM_DemEventIdNumberType_Tag"
	.byte		0
	.uleb128	4
	.sleb128	13
	.byte		"NVM_DEM_EVENT_E_NO_ERROR"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"NVM_DEM_EVENT_E_HARDWARE"
	.byte		0
	.sleb128	1
	.sleb128	13
	.byte		"NVM_DEM_EVENT_E_REQ_FAILED"
	.byte		0
	.sleb128	2
	.sleb128	13
	.byte		"NVM_DEM_EVENT_E_INTEGRITY_FAILED"
	.byte		0
	.sleb128	3
	.sleb128	13
	.byte		"NVM_DEM_EVENT_E_LOSS_OF_REDUNDANCY"
	.byte		0
	.sleb128	4
	.sleb128	13
	.byte		"NVM_DEM_EVENT_E_VERIFY_FAILED"
	.byte		0
	.sleb128	5
	.sleb128	13
	.byte		"NVM_DEM_EVENT_E_QUEUE_OVERFLOW"
	.byte		0
	.sleb128	6
	.sleb128	13
	.byte		"NVM_DEM_EVENT_E_WRITE_PROTECTED"
	.byte		0
	.sleb128	7
	.sleb128	13
	.byte		"NVM_DEM_EVENT_E_WRONG_BLOCK_ID"
	.byte		0
	.sleb128	8
	.sleb128	0
.L529:
	.section	.debug_info,,n
.L399:
	.sleb128	14
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L398:
	.sleb128	15
	.byte		"uint8"
	.byte		0
	.4byte		.L399
.L397:
	.sleb128	15
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L398
.L403:
	.sleb128	14
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L402:
	.sleb128	15
	.byte		"uint16"
	.byte		0
	.4byte		.L403
.L401:
	.sleb128	15
	.byte		"NvM_BlockIdType"
	.byte		0
	.4byte		.L402
	.section	.debug_info,,n
.L412:
	.sleb128	16
	.4byte		.L398
.L421:
	.sleb128	15
	.byte		"NvM_BlockRequestType"
	.byte		0
	.4byte		.L422
.L420:
	.sleb128	16
	.4byte		.L421
.L425:
	.sleb128	15
	.byte		"boolean"
	.byte		0
	.4byte		.L399
.L431:
	.sleb128	15
	.byte		"NvM_CommonType"
	.byte		0
	.4byte		.L432
	.section	.debug_info,,n
.L430:
	.sleb128	17
	.4byte		.L431
.L435:
	.sleb128	15
	.byte		"NvM_BlockManagementType"
	.byte		0
	.4byte		.L436
.L434:
	.sleb128	17
	.4byte		.L435
.L439:
	.sleb128	15
	.byte		"NvM_DriverStatusType"
	.byte		0
	.4byte		.L440
.L443:
	.sleb128	15
	.byte		"NvM_ServiceIdType"
	.byte		0
	.4byte		.L444
.L445:
	.sleb128	15
	.byte		"NvM_NvMemifInfoType"
	.byte		0
	.4byte		.L446
.L448:
	.sleb128	15
	.byte		"NvM_BlockMemifDriverStateType"
	.byte		0
	.4byte		.L449
.L450:
	.sleb128	15
	.byte		"NvM_DemEventIdNumberType"
	.byte		0
	.4byte		.L451
.L452:
	.sleb128	15
	.byte		"NvM_RequestResultType"
	.byte		0
	.4byte		.L398
.L457:
	.sleb128	15
	.byte		"NvM_AdministrativeBlockType"
	.byte		0
	.4byte		.L458
.L456:
	.sleb128	16
	.4byte		.L457
.L455:
	.sleb128	17
	.4byte		.L456
.L462:
	.sleb128	15
	.byte		"NvM_BlockDescriptorType"
	.byte		0
	.4byte		.L463
.L461:
	.sleb128	17
	.4byte		.L462
.L460:
	.sleb128	16
	.4byte		.L461
.L459:
	.sleb128	17
	.4byte		.L460
	.section	.debug_info,,n
.L467:
	.sleb128	18
	.4byte		.L468-.L2
	.byte		0x1
	.section	.debug_info,,n
	.sleb128	19
	.4byte		.L398
	.sleb128	19
	.4byte		.L452
	.sleb128	0
.L468:
.L466:
	.sleb128	16
	.4byte		.L467
.L465:
	.sleb128	15
	.byte		"NvM_MultiBlockCallbackFunctionType"
	.byte		0
	.4byte		.L466
.L471:
	.sleb128	18
	.4byte		.L472-.L2
	.byte		0x1
	.sleb128	19
	.4byte		.L401
	.sleb128	19
	.4byte		.L452
	.sleb128	0
.L472:
.L470:
	.sleb128	16
	.4byte		.L471
.L469:
	.sleb128	15
	.byte		"NvM_BswM_NvM_CurrentBlockModeFunctionType"
	.byte		0
	.4byte		.L470
.L475:
	.sleb128	18
	.4byte		.L476-.L2
	.byte		0x1
	.sleb128	19
	.4byte		.L398
	.sleb128	19
	.4byte		.L452
	.sleb128	0
.L476:
.L474:
	.sleb128	16
	.4byte		.L475
.L473:
	.sleb128	15
	.byte		"NvM_BswM_NvM_CurrentJobModeFunctionType"
	.byte		0
	.4byte		.L474
.L480:
	.sleb128	14
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L479:
	.sleb128	15
	.byte		"uint32"
	.byte		0
	.4byte		.L480
.L478:
	.sleb128	16
	.4byte		.L479
.L477:
	.sleb128	17
	.4byte		.L478
.L481:
	.sleb128	17
	.4byte		.L412
.L483:
	.sleb128	15
	.byte		"NvM_BlockCrcType"
	.byte		0
	.4byte		.L484
	.section	.debug_info,,n
.L487:
	.sleb128	20
	.4byte		.L488-.L2
	.4byte		.L479
	.byte		0x1
.L490:
	.sleb128	17
	.4byte		.L398
.L489:
	.sleb128	16
	.4byte		.L490
	.sleb128	19
	.4byte		.L489
	.sleb128	19
	.4byte		.L479
	.sleb128	19
	.4byte		.L479
	.sleb128	19
	.4byte		.L425
	.sleb128	0
.L488:
.L486:
	.sleb128	16
	.4byte		.L487
.L485:
	.sleb128	15
	.byte		"NVM_CRC32_FUNC"
	.byte		0
	.4byte		.L486
.L491:
	.sleb128	15
	.byte		"NvM_BlockMngmtType"
	.byte		0
	.4byte		.L492
.L495:
	.sleb128	20
	.4byte		.L496-.L2
	.4byte		.L397
	.byte		0x1
	.sleb128	0
.L496:
.L494:
	.sleb128	16
	.4byte		.L495
.L493:
	.sleb128	15
	.byte		"NvM_InitBlockCallbackPtrType"
	.byte		0
	.4byte		.L494
.L499:
	.sleb128	20
	.4byte		.L500-.L2
	.4byte		.L397
	.byte		0x1
	.sleb128	19
	.4byte		.L398
	.sleb128	19
	.4byte		.L452
	.sleb128	0
.L500:
.L498:
	.sleb128	16
	.4byte		.L499
.L497:
	.sleb128	15
	.byte		"NvM_SingleBlockCallbackFunctionType"
	.byte		0
	.4byte		.L498
.L503:
	.sleb128	20
	.4byte		.L504-.L2
	.4byte		.L397
	.byte		0x1
	.section	.debug_info,,n
.L507:
	.sleb128	21
	.byte		"void"
	.byte		0
	.byte		0x0
.L506:
	.sleb128	17
	.4byte		.L507
.L505:
	.sleb128	16
	.4byte		.L506
	.sleb128	19
	.4byte		.L505
	.sleb128	0
.L504:
.L502:
	.sleb128	16
	.4byte		.L503
.L501:
	.sleb128	15
	.byte		"NvM_RamMirrorOperationReadCallBackType"
	.byte		0
	.4byte		.L502
.L510:
	.sleb128	20
	.4byte		.L511-.L2
	.4byte		.L397
	.byte		0x1
.L512:
	.sleb128	16
	.4byte		.L507
	.sleb128	19
	.4byte		.L512
	.sleb128	0
.L511:
.L509:
	.sleb128	16
	.4byte		.L510
.L508:
	.sleb128	15
	.byte		"NvM_RamMirrorOperationWriteCallBackType"
	.byte		0
	.4byte		.L509
.L515:
	.sleb128	15
	.byte		"NvM_DemEventIdType"
	.byte		0
	.4byte		.L516
.L514:
	.sleb128	17
	.4byte		.L515
.L513:
	.sleb128	16
	.4byte		.L514
.L520:
	.sleb128	14
	.byte		"unsigned int"
	.byte		0
	.byte		0x7
	.byte		0x4
.L523:
	.sleb128	15
	.byte		"Dem_EventIdType"
	.byte		0
	.4byte		.L402
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L404:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),31
	.d2locend
.L406:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo5),30
	.d2locend
.L413:
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo7),5
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo9),5
	.d2locend
.L423:
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo11),3
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo13),31
	.d2locend
.L426:
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo13),30
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "NvM_ProcessPRAMWritingNvBlockStates"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "NvM_ActBlockNvWritePRAMInProgress","NvM_ActBlockNvWritePRAMInit","NvM_ActBlockNvWritePRAMPreInit","NvM_ActBlockNvWritePRAMProcessErr","NvM_ActBlockNvWritePRAMStartWrite","NvM_ActBlockNvWritePRAMValidate","NvM_ActBlockNvWritePRAMVerification","NvM_ActBlockNvWritePRAMVerifyInProgress"
	.wrcm.end
	.wrcm.nelem "NvM_WritePRAMBlock"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "NvM_Call_Dem_ReportErrorStatus","NvM_QueueInsert","SchM_Enter_NvM_EaServiceProcessQueue","SchM_Exit_NvM_EaServiceProcessQueue"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\NvM_WritePRAMBlock.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\NvM_WritePRAMBlock.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\NvM_WritePRAMBlock.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\NvM_WritePRAMBlock.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\NvM_WritePRAMBlock.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\NvM_WritePRAMBlock.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\MEM\NvM\ssc\make\..\src\NvM_WritePRAMBlock.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
