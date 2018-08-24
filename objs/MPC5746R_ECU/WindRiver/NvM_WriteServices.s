#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"NvM_WriteServices.c"
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
# FUNC(boolean,NVM_CODE) NvM_ActSubStateWritePRAMBlockInit(void)
	.align		2
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MEM\\NvM\\ssc\\make\\..\\src\\NvM_WriteServices.c"
        .d2line         22,24
#$$ld
.L482:

#$$bf	NvM_ActSubStateWritePRAMBlockInit,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,lr
	.globl		NvM_ActSubStateWritePRAMBlockInit
	.d2_cfa_start __cie
NvM_ActSubStateWritePRAMBlockInit:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     VAR(boolean,AUTOMATIC) stopProcessing = FALSE;
	.d2line		24
	diab.li		r3,0		# stopProcessing=r3
# 
#     NvM_Current_Block.info.state = NVM_BLOCK_NV_WRITE_PRAM_PREINIT;
	.d2line		26
	diab.li		r4,27
	lis		r5,(NvM_Current_Block+12)@ha
	stw		r4,(NvM_Current_Block+12)@l(r5)
#     NvM_WriteRepeatMirrorCount = ((uint8)0U);
	.d2line		27
	diab.li		r5,0
	lis		r3,NvM_WriteRepeatMirrorCount@ha		# stopProcessing=r3
.Llo1:
	e_add16i		r3,r3,NvM_WriteRepeatMirrorCount@l		# stopProcessing=r3 stopProcessing=r3
	stb		r5,0(r3)		# stopProcessing=r3
#     NvM_BlockMirrorError = FALSE;
	.d2line		28
	lis		r3,NvM_BlockMirrorError@ha		# stopProcessing=r3
	e_add16i		r3,r3,NvM_BlockMirrorError@l		# stopProcessing=r3 stopProcessing=r3
	stb		r5,0(r3)		# stopProcessing=r3
# 
#   #if((NVM_API_CONFIG_CLASS==NVM_API_CONFIG_CLASS_2) || (NVM_API_CONFIG_CLASS==NVM_API_CONFIG_CLASS_3))
#     Set_Sub_State_Machine(NVM_SUBSTATE_WRITE_PRAM_BLOCK_WRITING);
	.d2line		31
	diab.li		r3,37		# stopProcessing=r3
	lis		r4,NvM_SubStateDbg@ha
	e_add16i		r4,r4,NvM_SubStateDbg@l
	stw		r3,0(r4)		# stopProcessing=r3
#   #endif
#     return stopProcessing;
	.d2line		33
	diab.li		r3,0		# stopProcessing=r3
# }
	.d2line		34
	.d2epilogue_begin
.Llo2:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L483:
	.type		NvM_ActSubStateWritePRAMBlockInit,@function
	.size		NvM_ActSubStateWritePRAMBlockInit,.-NvM_ActSubStateWritePRAMBlockInit
# Number of nodes = 21

# Allocations for NvM_ActSubStateWritePRAMBlockInit
#	?a4		stopProcessing
# FUNC(boolean,NVM_CODE) NvM_ActSubStateWritePRAMBlockWriting(void)
	.align		2
	.section	.text_vle
        .d2line         37,24
#$$ld
.L492:

#$$bf	NvM_ActSubStateWritePRAMBlockWriting,interprocedural,rasave,nostackparams
	.globl		NvM_ActSubStateWritePRAMBlockWriting
	.d2_cfa_start __cie
NvM_ActSubStateWritePRAMBlockWriting:
.Llo3:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    VAR(boolean,AUTOMATIC) tmp_stop_processing=TRUE;
	.d2line		39
	diab.li		r31,1		# tmp_stop_processing=r31
# 
#    NvM_ProcessPRAMWritingNvBlockStates(&NvM_Current_Block);
	.d2line		41
	lis		r3,NvM_Current_Block@ha
	e_add16i		r3,r3,NvM_Current_Block@l
	bl		NvM_ProcessPRAMWritingNvBlockStates
# 
#    if(NVM_BLOCK_NV_WRITE_PRAM_DONE==NvM_Current_Block.info.state)
	.d2line		43
	lis		r3,(NvM_Current_Block+12)@ha
	lwz		r0,(NvM_Current_Block+12)@l(r3)
	cmpi		0,0,r0,34
	bc		0,2,.L342	# ne
#    {
#       if(   (NvM_Current_Block.info.status_err==(NvM_RequestResultType)NVM_REQ_OK)
	.d2line		45
	lis		r3,(NvM_Current_Block+24)@ha
	lbz		r0,(NvM_Current_Block+24)@l(r3)
	se_cmpi		r0,0
	bc		0,2,.L343	# ne
.Llo4:
	lis		r3,(NvM_Current_Block+20)@ha
	lwz		r0,(NvM_Current_Block+20)@l(r3)
	se_cmpi		r0,0
	bc		0,2,.L343	# ne
#          && (NvM_Current_Block.info.dem_err==NVM_DEM_EVENT_E_NO_ERROR)
#         )
#       {
#          /*data in NV the same as in RAM block [DD-NVM00472-MGC01-V1] */
#          Set_Adm_Block_Attrib_Block_Changed(NvM_Current_Block.block_id,NVM_BLOCK_UNCHANGED);
	.d2line		50
	lis		r4,NvM_BlockManagementTable@ha
	lwz		r3,NvM_BlockManagementTable@l(r4)
	lis		r5,(NvM_Current_Block+4)@ha
	lhz		r0,(NvM_Current_Block+4)@l(r5)
	rlwinm		r0,r0,3,13,28
	se_add		r3,r0
	lwz		r6,4(r3)
	.diab.bclri		r6,2
	lwz		r3,NvM_BlockManagementTable@l(r4)
	se_add		r3,r0
	stw		r6,4(r3)
# 
#          /* [DD-NVM00270-MGC01-V1] */
#          Set_Adm_Block_Error_Status(NvM_Current_Block.block_id, (NvM_RequestResultType)NVM_REQ_OK);
	.d2line		53
	diab.li		r0,0
	lwz		r4,NvM_BlockManagementTable@l(r4)
	lhz		r3,(NvM_Current_Block+4)@l(r5)
	rlwinm		r3,r3,3,13,28
	se_add		r3,r4
	stb		r0,1(r3)
# 
#          if(Is_Conf_Block_Type_Write_Once(NvM_Current_Block.block_id))
	.d2line		55
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	lhz		r0,(NvM_Current_Block+4)@l(r5)
	rlwinm		r0,r0,6,10,25
	se_add		r3,r0
	lhz		r0,60(r3)
	rlwinm		r0,r0,0,28,28
	se_cmpi		r0,8
	bc		0,2,.L345	# ne
#          {
#             Set_Adm_Block_Attrib_Wr_Protection (NvM_Current_Block.block_id,NVM_WR_PROTECTION_ON);
	.d2line		57
	lis		r4,NvM_BlockManagementTable@ha
	lwz		r0,NvM_BlockManagementTable@l(r4)
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r5,(NvM_Current_Block+4)@l(r3)
	rlwinm		r5,r5,3,13,28
	add		r3,r0,r5
	lwz		r0,4(r3)
	.diab.bseti		r0,0
	lwz		r3,NvM_BlockManagementTable@l(r4)
	se_add		r5,r3
	stw		r0,4(r5)
	b		.L345
.L343:
#          }
#       }
#       else
#       {
#           NvM_Call_Dem_ReportErrorStatus(NvM_Current_Block.block_id, NvM_Current_Block.info.dem_err, DEM_EVENT_STATUS_FAILED);
	.d2line		62
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	lis		r4,(NvM_Current_Block+20)@ha
	lwz		r4,(NvM_Current_Block+20)@l(r4)
	diab.li		r5,1
	bl		NvM_Call_Dem_ReportErrorStatus
.L345:
#       }
# 
#     #if((NVM_API_CONFIG_CLASS==NVM_API_CONFIG_CLASS_2) || (NVM_API_CONFIG_CLASS==NVM_API_CONFIG_CLASS_3))
#       Set_Sub_State_Machine(NVM_SUBSTATE_SINGLEBLOCK_OPERATION_DONE);
	.d2line		66
	diab.li		r0,9
	lis		r3,NvM_SubStateDbg@ha
	e_add16i		r3,r3,NvM_SubStateDbg@l
	stw		r0,0(r3)
#       tmp_stop_processing=FALSE;
	.d2line		67
	diab.li		r31,0		# tmp_stop_processing=r31
.L342:
#     #endif
#    }
#    return tmp_stop_processing;
	.d2line		70
.Llo5:
	rlwinm		r3,r31,0,24,31		# tmp_stop_processing=r31
# }
	.d2line		71
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo6:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L493:
	.type		NvM_ActSubStateWritePRAMBlockWriting,@function
	.size		NvM_ActSubStateWritePRAMBlockWriting,.-NvM_ActSubStateWritePRAMBlockWriting
# Number of nodes = 131

# Allocations for NvM_ActSubStateWritePRAMBlockWriting
#	?a4		tmp_stop_processing
# FUNC(boolean,NVM_CODE) NvM_ActBlockNvWritePRAMPreInit(P2VAR(NvM_BlockRequestType,AUTOMATIC,NVM_APPL_DATA) arg_block)
	.align		2
	.section	.text_vle
        .d2line         74,24
#$$ld
.L499:

#$$bf	NvM_ActBlockNvWritePRAMPreInit,interprocedural,rasave,nostackparams
	.globl		NvM_ActBlockNvWritePRAMPreInit
	.d2_cfa_start __cie
NvM_ActBlockNvWritePRAMPreInit:
.Llo7:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
.Llo18:
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)		# blockId=r0
	.d2_cfa_offset    108,-1
	mr		r31,r3		# arg_block=r31 arg_block=r3
	.d2prologue_end
# {
#     VAR(boolean,AUTOMATIC) stopProcessing = TRUE;
	.d2line		76
.Llo8:
	diab.li		r0,1		# stopProcessing=r0
#     VAR(NvM_BlockIdType,AUTOMATIC) blockId = arg_block->block_id;
	.d2line		77
.Llo9:
	lhz		r0,4(r31)		# stopProcessing=r0 arg_block=r31
.Llo19:
	mr		r0,r0		# blockId=r0 blockId=r0
#     arg_block->info.status_err = (NvM_RequestResultType)NVM_REQ_OK;
	.d2line		78
	diab.li		r3,0
	stb		r3,24(r31)		# arg_block=r31
#     arg_block->info.dem_err = NVM_DEM_EVENT_E_NO_ERROR;
	.d2line		79
	stw		r3,20(r31)		# arg_block=r31
# 
#     if(Is_Conf_Block_Use_Synchmechanism(blockId))
	.d2line		81
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	rlwinm		r4,r0,6,10,25		# blockId=r0
	se_add		r3,r4
	lhz		r3,60(r3)
	rlwinm		r3,r3,0,25,25
	cmpi		0,0,r3,64
	bc		0,2,.L350	# ne
#     {
#        /* [DD-NVM00515-MGC01-V1] [DD-NVM00539-MGC01-V2] */
#        if(E_OK == (NvM_BlockManagementTable.BlockDescriptorPtr[blockId].NvMWriteRamBlockToNvCallback(NvM_Common.NvM_RamMirrorPtr)))
	.d2line		84
.Llo20:
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
.Llo21:
	rlwinm		r0,r0,6,10,25		# blockId=r0 blockId=r0
	se_add		r3,r0		# blockId=r0
	lwz		r0,52(r3)		# blockId=r0
.Llo22:
	mtspr		ctr,r0		# blockId=ctr
	lis		r3,(NvM_Common+24)@ha
	lwz		r3,(NvM_Common+24)@l(r3)
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x8 0x0 0x0 0x1
#$$rs 1 u
	bcctrl		20,0
	e_andi.		r3,r3,255
	bc		0,2,.L351	# ne
#        {
#           stopProcessing = FALSE;
	.d2line		86
	diab.li		r3,0		# stopProcessing=r3
# 
#           NvM_BlockMirrorError = FALSE;
	.d2line		88
.Llo11:
	diab.li		r0,0		# blockId=r0
.Llo23:
	lis		r4,NvM_BlockMirrorError@ha
	e_add16i		r4,r4,NvM_BlockMirrorError@l
	stb		r0,0(r4)		# blockId=r0
#           arg_block->info.state = NVM_BLOCK_NV_WRITE_PRAM_INIT;
	.d2line		89
	diab.li		r0,26		# blockId=r0
	stw		r0,12(r31)		# arg_block=r31 blockId=r0
	b		.L355
.L351:
#        }
#        else
#        {
#           if(NvM_WriteRepeatMirrorCount == NvM_Common.NvM_RptMirrorCnt)
	.d2line		93
.Llo12:
	lis		r3,NvM_WriteRepeatMirrorCount@ha
	lbz		r0,NvM_WriteRepeatMirrorCount@l(r3)		# blockId=r0
.Llo24:
	lis		r3,(NvM_Common+33)@ha
	lbz		r3,(NvM_Common+33)@l(r3)
	se_cmp		r0,r3		# blockId=r0
	bc		0,2,.L353	# ne
#           {
#              /* [DD-NVM00579-MGC01-V1] */
#              NvM_BlockMirrorError = TRUE;
	.d2line		96
.Llo25:
	diab.li		r0,1		# blockId=r0
.Llo26:
	lis		r3,NvM_BlockMirrorError@ha		# stopProcessing=r3
.Llo13:
	e_add16i		r3,r3,NvM_BlockMirrorError@l		# stopProcessing=r3 stopProcessing=r3
	stb		r0,0(r3)		# stopProcessing=r3 blockId=r0
#              arg_block->info.state =NVM_BLOCK_NV_WRITE_PRAM_DONE;
	.d2line		97
	diab.li		r3,34		# stopProcessing=r3
	stw		r3,12(r31)		# arg_block=r31 stopProcessing=r3
#              arg_block->info.status_err = (NvM_RequestResultType)NVM_REQ_NOT_OK;
	.d2line		98
	stb		r0,24(r31)		# arg_block=r31 blockId=r0
#              stopProcessing = FALSE;
	.d2line		99
	diab.li		r3,0		# stopProcessing=r3
	b		.L355
.L353:
#           }
#           else
#           {
#              /* [DD-NVM00840-MGC01-V1] */
#              arg_block->info.state = NVM_BLOCK_NV_WRITE_PRAM_PREINIT;
	.d2line		104
.Llo14:
	diab.li		r0,27		# blockId=r0
.Llo27:
	stw		r0,12(r31)		# arg_block=r31 blockId=r0
#              NvM_WriteRepeatMirrorCount++;
	.d2line		105
	lis		r3,NvM_WriteRepeatMirrorCount@ha		# stopProcessing=r3
.Llo15:
	lbz		r3,NvM_WriteRepeatMirrorCount@l(r3)		# stopProcessing=r3 stopProcessing=r3
	diab.addi		r0,r3,1		# blockId=r0 stopProcessing=r3
	lis		r3,NvM_WriteRepeatMirrorCount@ha		# stopProcessing=r3
	e_add16i		r3,r3,NvM_WriteRepeatMirrorCount@l		# stopProcessing=r3 stopProcessing=r3
	stb		r0,0(r3)		# stopProcessing=r3 blockId=r0
#              stopProcessing = FALSE;
	.d2line		106
	diab.li		r3,0		# stopProcessing=r3
	b		.L355
.L350:
#           }
#        }
#     }
#     else
#     {
#        if ((Is_Conf_Block_Use_Crc(blockId))||(Is_Conf_Block_Static_BlockIdCheck(blockId)))
	.d2line		112
.Llo16:
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	rlwinm		r4,r0,6,10,25		# blockId=r0
	se_add		r3,r4
	lhz		r3,60(r3)
	rlwinm		r3,r3,0,31,31
	se_cmpi		r3,1
	bc		1,2,.L357	# eq
.Llo28:
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
.Llo29:
	rlwinm		r0,r0,6,10,25		# blockId=r0 blockId=r0
	se_add		r3,r0		# blockId=r0
	lhz		r0,60(r3)		# blockId=r0
	rlwinm		r0,r0,0,22,22		# blockId=r0 blockId=r0
	cmpi		0,0,r0,512		# blockId=r0
	bc		0,2,.L356	# ne
.L357:
#        {
#            /* only if above condition is true. Else data is directly copied from RAM */
#            NvM_CopyRamToRamMirror(arg_block);
	.d2line		115
.Llo30:
	mr		r3,r31		# arg_block=r3 arg_block=r31
	bl		NvM_CopyRamToRamMirror
.L356:
#        }
# 
#        arg_block->info.state = NVM_BLOCK_NV_WRITE_PRAM_INIT;
	.d2line		118
	diab.li		r0,26		# blockId=r0
.Llo31:
	stw		r0,12(r31)		# arg_block=r31 blockId=r0
#        stopProcessing = FALSE;
	.d2line		119
	diab.li		r3,0		# stopProcessing=r3
.L355:
#     }
# 
#     return stopProcessing;
	.d2line		122
.Llo10:
	rlwinm		r3,r3,0,24,31		# stopProcessing=r3 stopProcessing=r3
# 
# }
	.d2line		124
	.d2epilogue_begin
.Llo17:
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# blockId=r0
	mtspr		lr,r0		# blockId=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L500:
	.type		NvM_ActBlockNvWritePRAMPreInit,@function
	.size		NvM_ActBlockNvWritePRAMPreInit,.-NvM_ActBlockNvWritePRAMPreInit
# Number of nodes = 167

# Allocations for NvM_ActBlockNvWritePRAMPreInit
#	?a4		arg_block
#	?a5		stopProcessing
#	?a6		blockId
# FUNC(void,NVM_CODE) NvM_ActBlockNvWritePRAMInit(P2VAR(NvM_BlockRequestType,AUTOMATIC,NVM_APPL_DATA) arg_block)
	.align		2
	.section	.text_vle
        .d2line         127,21
#$$ld
.L515:

#$$bf	NvM_ActBlockNvWritePRAMInit,interprocedural,rasave,nostackparams
	.globl		NvM_ActBlockNvWritePRAMInit
	.d2_cfa_start __cie
NvM_ActBlockNvWritePRAMInit:
.Llo32:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
.Llo38:
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)		# blockManagement=r0
	.d2_cfa_offset    108,-1
	mr		r30,r3		# arg_block=r30 arg_block=r3
	.d2prologue_end
# {
# 
#     VAR(uint32, AUTOMATIC) tmp_crc;
#     VAR(uint16, AUTOMATIC) tmp_crc16 = 0U;
	.d2line		131
.Llo33:
	diab.li		r4,0
.Llo34:
	sth		r4,10(r1)
#     VAR(NvM_BlockIdType,AUTOMATIC) blockId = arg_block->block_id;
	.d2line		132
	lhz		r0,4(r30)		# blockManagement=r0 arg_block=r30
	sth		r0,8(r1)		# blockManagement=r0
	.d2line		133
	rlwinm		r5,r0,6,10,25		# blockManagement=r0
#     VAR(NvM_BlockCrcType,AUTOMATIC) crc_type = NvM_BlockManagementTable.BlockDescriptorPtr[blockId].NvM_BlockCRC;
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	lwzx		r31,r3,r5
.Llo36:
	mr		r31,r31		# crc_type=r31 crc_type=r31
#     VAR(NvM_BlockMngmtType,AUTOMATIC) blockManagement = NvM_BlockManagementTable.BlockDescriptorPtr[blockId].NvM_BlockManagement;
	.d2line		134
	rlwinm		r0,r0,6,10,25		# blockManagement=r0 blockManagement=r0
	se_add		r3,r0		# blockManagement=r0
	lwz		r0,12(r3)		# blockManagement=r0
	mr		r0,r0		# blockManagement=r0 blockManagement=r0
# 
#     arg_block->info.status_err = (NvM_RequestResultType)NVM_REQ_PENDING;
	.d2line		136
	diab.li		r3,2
	stb		r3,24(r30)		# arg_block=r30
#     arg_block->info.dem_err = NVM_DEM_EVENT_E_NO_ERROR;
	.d2line		137
	stw		r4,20(r30)		# arg_block=r30
# 
# 
#     switch (blockManagement)
	.d2line		140
	mr.		r6,r0		# blockManagement=r6 blockManagement=?a9
	bc		1,2,.L367	# eq
.Llo39:
	se_cmpi		r6,1
	bc		1,2,.L365	# eq
	b		.L368
.L365:
#     {
#         case NVM_BLOCK_REDUNDANT:
#         {
#             arg_block->info.dataset = NVM_REDUNDANT_FIRST_BLOCK;
	.d2line		144
	diab.li		r0,0		# blockManagement=r0
.Llo40:
	sth		r0,16(r30)		# arg_block=r30 blockManagement=r0
	b		.L366
.L367:
#         }break;
# 
#         case NVM_BLOCK_NATIVE:
#         {
#             arg_block->info.dataset = NVM_REDUNDANT_FIRST_BLOCK;
	.d2line		149
.Llo41:
	diab.li		r0,0		# blockManagement=r0
.Llo42:
	sth		r0,16(r30)		# arg_block=r30 blockManagement=r0
	b		.L366
.L368:
#         }break;
# 
#         default: /*NVM_BLOCK_DATASET*/
#         {
#             arg_block->info.dataset = Get_Adm_Block_Dataset_Idx_U16(blockId);
	.d2line		154
.Llo43:
	lis		r3,NvM_BlockManagementTable@ha
	lwz		r3,NvM_BlockManagementTable@l(r3)
	lhz		r0,8(r1)		# blockManagement=r0
.Llo44:
	rlwinm		r0,r0,3,13,28		# blockManagement=r0 blockManagement=r0
	lbzx		r0,r3,r0		# blockManagement=r0
	sth		r0,16(r30)		# arg_block=r30 blockManagement=r0
.L366:
#         }break;
#     }
# 
# 
#     NvM_Counter_Wr_Retries[NVM_REDUNDANT_FIRST_BLOCK] = NvM_BlockManagementTable.BlockDescriptorPtr[blockId].NvM_MaxNoOfWriteRetry;
	.d2line		159
.Llo45:
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)		# blockManagement=r0
.Llo46:
	lhz		r4,8(r1)
	rlwinm		r4,r4,6,10,25
	se_add		r4,r0		# blockManagement=r0
	lbz		r0,27(r4)		# blockManagement=r0
	lis		r4,NvM_Counter_Wr_Retries@ha
	e_add16i		r4,r4,NvM_Counter_Wr_Retries@l
	stb		r0,0(r4)		# blockManagement=r0
#     NvM_Counter_Wr_Retries[NVM_REDUNDANT_SECOND_BLOCK] = NvM_BlockManagementTable.BlockDescriptorPtr[blockId].NvM_MaxNoOfWriteRetry;
	.d2line		160
	lwz		r4,(NvM_BlockManagementTable+4)@l(r3)
	lhz		r0,8(r1)		# blockManagement=r0
	rlwinm		r0,r0,6,10,25		# blockManagement=r0 blockManagement=r0
	se_add		r4,r0		# blockManagement=r0
	lbz		r5,27(r4)
	lis		r4,(NvM_Counter_Wr_Retries+1)@ha
	stb		r5,(NvM_Counter_Wr_Retries+1)@l(r4)
# 
#     if(Is_Conf_Block_Static_BlockIdCheck(blockId))
	.d2line		162
	lwz		r4,(NvM_BlockManagementTable+4)@l(r3)
	se_add		r4,r0		# blockManagement=r0
	lhz		r0,60(r4)		# blockManagement=r0
	rlwinm		r0,r0,0,22,22		# blockManagement=r0 blockManagement=r0
	cmpi		0,0,r0,512		# blockManagement=r0
	bc		0,2,.L369	# ne
#     {
#        /* PRQA S 310 ++
#         * MISRA RULE C109 VIOLATION:
#         * Casting of address to uint8 is needed to store the static block ID and avoid unaligned access
#         */
#         /* [DD-NVM00523-MGC01-V1] */
#         NvM_MemCopy(NvM_Common.NvM_RamMirrorPtr,
	.d2line		169
.Llo47:
	lis		r3,(NvM_Common+24)@ha
	lwz		r3,(NvM_Common+24)@l(r3)
	diab.addi		r4,r1,8
	diab.li		r5,2
	bl		NvM_MemCopy
.L369:
#                     (P2CONST(uint8,AUTOMATIC,NVM_APPL_DATA))(&blockId),
#                     NVM_BLOCK_HEADER_SIZE); /* [DD-NVM00522-MGC01-V1] */
#     }
# 
#     switch(crc_type)
	.d2line		174
	mr.		r6,r31		# crc_type=r6 crc_type=?a8
	bc		1,2,.L370	# eq
.Llo37:
	se_cmpi		r6,1
	bc		1,2,.L372	# eq
	se_cmpi		r6,2
	bc		1,2,.L373	# eq
	b		.L371
.L370:
#     {
#         case NVM_CRC8:
#         {
#             /* The least significant bits of the stored CRC contains the CRC */
#            NvM_MemCopy((P2VAR(uint8,AUTOMATIC,NVM_APPL_DATA))(&tmp_crc),
	.d2line		179
	lis		r3,(NvM_Common+20)@ha
	lwz		r4,(NvM_Common+20)@l(r3)
	lhz		r0,8(r1)		# blockManagement=r0
.Llo48:
	rlwinm		r0,r0,2,14,29		# blockManagement=r0 blockManagement=r0
	se_add		r4,r0		# blockManagement=r0
	diab.addi		r3,r1,12
	diab.li		r5,4
	bl		NvM_MemCopy
#                        (P2CONST(uint8,AUTOMATIC,NVM_APPL_DATA))(&NvM_Common.NvM_BlockCRCPtr[blockId]),
#                        NVM_CRC32_FIELD_SIZE);
#            *(NvM_Common.NvM_RamMirrorPtr + Get_Conf_Block_Data_Length(blockId)) = (VAR(uint8, AUTOMATIC))tmp_crc;
	.d2line		182
.Llo49:
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)		# blockManagement=r0
.Llo50:
	lhz		r3,8(r1)
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0		# blockManagement=r0
	lhz		r0,60(r3)		# blockManagement=r0
	rlwinm		r0,r0,0,22,22		# blockManagement=r0 blockManagement=r0
	cmpi		0,0,r0,512		# blockManagement=r0
	diab.li		r3,2
	isel		r3,r3,r0,2		# blockManagement=r0
.L375:
.Llo51:
	diab.li		r0,0		# blockManagement=r0
.Llo52:
	isel		r0,r3,r0,2		# blockManagement=r0 blockManagement=r0
.L376:
	lwz		r5,12(r1)
	lis		r3,(NvM_Common+24)@ha
	lwz		r3,(NvM_Common+24)@l(r3)
	lis		r4,(NvM_BlockManagementTable+4)@ha
	lwz		r6,(NvM_BlockManagementTable+4)@l(r4)
	lhz		r4,8(r1)
	rlwinm		r4,r4,6,10,25
	se_add		r4,r6
	lhz		r4,20(r4)
	se_add		r4,r0		# blockManagement=r0
	rlwinm		r0,r4,0,16,31		# blockManagement=r0
.Llo53:
	stbx		r5,r3,r0
	b		.L371
.L372:
#         }break;
# 
#         case NVM_CRC16:
#         {
#            NvM_MemCopy((P2VAR(uint8,AUTOMATIC,NVM_APPL_DATA))(&tmp_crc),
	.d2line		187
	lis		r3,(NvM_Common+20)@ha
	lwz		r4,(NvM_Common+20)@l(r3)
	lhz		r0,8(r1)		# blockManagement=r0
.Llo54:
	rlwinm		r0,r0,2,14,29		# blockManagement=r0 blockManagement=r0
	se_add		r4,r0		# blockManagement=r0
	diab.addi		r3,r1,12
	diab.li		r5,4
	bl		NvM_MemCopy
#                        (P2CONST(uint8,AUTOMATIC,NVM_APPL_DATA))(&NvM_Common.NvM_BlockCRCPtr[blockId]),
#                        (uint16)NVM_CRC32_FIELD_SIZE);
#            /* This conversion is for the big/little endian difference */
#            tmp_crc16 = (VAR(uint16, AUTOMATIC))tmp_crc;
	.d2line		191
.Llo55:
	lwz		r0,12(r1)		# blockManagement=r0
.Llo56:
	sth		r0,10(r1)		# blockManagement=r0
#            NvM_MemCopy((NvM_Common.NvM_RamMirrorPtr + Get_Conf_Block_Data_Length(blockId)),
	.d2line		192
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)		# blockManagement=r0
	lhz		r3,8(r1)
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0		# blockManagement=r0
	lhz		r0,60(r3)		# blockManagement=r0
	rlwinm		r0,r0,0,22,22		# blockManagement=r0 blockManagement=r0
	cmpi		0,0,r0,512		# blockManagement=r0
	diab.li		r3,2
	isel		r3,r3,r0,2		# blockManagement=r0
.L377:
.Llo57:
	diab.li		r0,0		# blockManagement=r0
.Llo58:
	isel		r0,r3,r0,2		# blockManagement=r0 blockManagement=r0
.L378:
	lis		r3,(NvM_Common+24)@ha
	lwz		r3,(NvM_Common+24)@l(r3)
	lis		r4,(NvM_BlockManagementTable+4)@ha
	lwz		r5,(NvM_BlockManagementTable+4)@l(r4)
	lhz		r4,8(r1)
	rlwinm		r4,r4,6,10,25
	se_add		r4,r5
	lhz		r4,20(r4)
	se_add		r4,r0		# blockManagement=r0
	rlwinm		r0,r4,0,16,31		# blockManagement=r0
	se_add		r3,r0		# blockManagement=r0
	diab.addi		r4,r1,10
	diab.li		r5,2
	bl		NvM_MemCopy
.Llo59:
	b		.L371
.L373:
#                        (P2CONST(uint8,AUTOMATIC,NVM_APPL_DATA))(&tmp_crc16),
#                        NVM_CRC16_FIELD_SIZE);
#         }break;
# 
#         case NVM_CRC32:
#         {
#            NvM_MemCopy((P2VAR(uint8,AUTOMATIC,NVM_APPL_DATA))(NvM_Common.NvM_RamMirrorPtr + Get_Conf_Block_Data_Length(blockId)),
	.d2line		199
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)		# blockManagement=r0
.Llo60:
	lhz		r3,8(r1)
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0		# blockManagement=r0
	lhz		r0,60(r3)		# blockManagement=r0
	rlwinm		r0,r0,0,22,22		# blockManagement=r0 blockManagement=r0
	cmpi		0,0,r0,512		# blockManagement=r0
	diab.li		r3,2
	isel		r3,r3,r0,2		# blockManagement=r0
.L379:
.Llo61:
	diab.li		r0,0		# blockManagement=r0
.Llo62:
	isel		r5,r3,r0,2		# blockManagement=r0
.L380:
.Llo63:
	lis		r3,(NvM_Common+24)@ha
	lwz		r3,(NvM_Common+24)@l(r3)
	lis		r4,(NvM_BlockManagementTable+4)@ha
	lwz		r4,(NvM_BlockManagementTable+4)@l(r4)
	lhz		r0,8(r1)		# blockManagement=r0
.Llo64:
	rlwinm		r6,r0,6,10,25		# blockManagement=r0
	se_add		r4,r6
	lhz		r4,20(r4)
	se_add		r4,r5
	rlwinm		r4,r4,0,16,31
	se_add		r3,r4
	lis		r4,(NvM_Common+20)@ha
	lwz		r4,(NvM_Common+20)@l(r4)
	rlwinm		r0,r0,2,14,29		# blockManagement=r0 blockManagement=r0
	se_add		r4,r0		# blockManagement=r0
	diab.li		r5,4
	bl		NvM_MemCopy
.L371:
#                        (P2CONST(uint8,AUTOMATIC,NVM_APPL_DATA))(&NvM_Common.NvM_BlockCRCPtr[blockId]),
#                        NVM_CRC32_FIELD_SIZE);
#         }break;
# 
#         default:
#         {
#             /*do nothing*/
#         }break;
#     }
# 
#     Set_Crc_State_Machine(NVM_CALCULATION_CRC_INIT);
	.d2line		210
.Llo65:
	diab.li		r4,0
	lis		r3,(NvM_Data_Crc+4)@ha
	stw		r4,(NvM_Data_Crc+4)@l(r3)
#     arg_block->info.state = NVM_BLOCK_NV_WRITE_PRAM_VALIDATE;
	.d2line		211
	diab.li		r3,29
	stw		r3,12(r30)		# arg_block=r30
# 
# }
	.d2line		213
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo35:
	lwz		r0,36(r1)		# blockManagement=r0
	mtspr		lr,r0		# blockManagement=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L516:
	.type		NvM_ActBlockNvWritePRAMInit,@function
	.size		NvM_ActBlockNvWritePRAMInit,.-NvM_ActBlockNvWritePRAMInit
# Number of nodes = 373

# Allocations for NvM_ActBlockNvWritePRAMInit
#	?a4		arg_block
#	?a5		$$11
#	?a6		$$10
#	?a7		$$9
#	SP,12		tmp_crc
#	SP,10		tmp_crc16
#	SP,8		blockId
#	?a8		crc_type
#	?a9		blockManagement
# FUNC(boolean,NVM_CODE) NvM_ActBlockNvWritePRAMValidate(P2VAR(NvM_BlockRequestType,AUTOMATIC,NVM_APPL_DATA) arg_block)
	.align		2
	.section	.text_vle
        .d2line         216,24
#$$ld
.L534:

#$$bf	NvM_ActBlockNvWritePRAMValidate,interprocedural,rasave,nostackparams
	.globl		NvM_ActBlockNvWritePRAMValidate
	.d2_cfa_start __cie
NvM_ActBlockNvWritePRAMValidate:
.Llo66:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)		# arg_block=r0
	.d2_cfa_offset    108,-1
	mr		r31,r3		# arg_block=r31 arg_block=r3
	.d2prologue_end
# {
#     VAR(boolean,AUTOMATIC) stopProcessing=TRUE;
	.d2line		218
	diab.li		r30,1		# stopProcessing=r30
#     CONST(NvM_BlockIdType, AUTOMATIC) blockId = arg_block->block_id;
	.d2line		219
.Llo74:
	lhz		r29,4(r31)		# arg_block=r29 arg_block=r31
.Llo75:
	mr		r29,r29		# blockId=r29 blockId=r29
# 
#     VAR(NvM_CalculationCrcStateType,AUTOMATIC) tmp_crc_state = NvM_ValidateCrc(arg_block,NVM_UPDATE_CRC_FIELD,NvM_Common.NvM_RamMirrorPtr,FALSE);
	.d2line		221
	lis		r3,(NvM_Common+24)@ha		# arg_block=r3
	lwz		r5,(NvM_Common+24)@l(r3)		# arg_block=r3
	mr		r3,r31		# arg_block=r3 arg_block=r31
.Llo67:
	diab.li		r4,0		# arg_block=r4
	diab.li		r6,0
	bl		NvM_ValidateCrc
.Llo78:
	mr		r4,r3		# tmp_crc_state=r4 tmp_crc_state=r3
# 
#     /* CRC configured, calculation finished, or CRC not configured */
#     if(0U!=((uint8)tmp_crc_state & NVM_CALCULATION_CRC_FINISHED_MASK))
	.d2line		224
	mr		r0,r4		# tmp_crc_state=r0 tmp_crc_state=r4
.Llo68:
	rlwinm		r0,r0,0,24,31		# arg_block=r0 arg_block=r0
	se_btsti		r0,30		# arg_block=r0
	bc		1,2,.L397	# eq
#     {
#         /* RAMMirror contained the CRC of the last read or write as it was written into it by the last state. */
#         /* The meaning of the NVM_CALCULATION_CRC_FINISHED_OK is that this CRC belongs to the data and it should not be written to the NV Block*/
#         if(Is_Conf_Block_Use_Crc_Comp_Mechanism(blockId)
	.d2line		228
.Llo69:
	lis		r3,(NvM_BlockManagementTable+4)@ha		# arg_block=r3
.Llo70:
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)		# arg_block=r0 arg_block=r3
.Llo76:
	rlwinm		r29,r29,6,10,25		# blockId=r29 blockId=r29
	se_add		r29,r0		# blockId=r29 blockId=r29 arg_block=r0
	lhz		r0,60(r29)		# arg_block=r0 blockId=r29
	rlwinm		r0,r0,0,20,20		# arg_block=r0 arg_block=r0
	cmpi		0,0,r0,2048		# arg_block=r0
	bc		0,2,.L398	# ne
.Llo77:
	se_cmpi		r4,2		# tmp_crc_state=r4
	bc		0,2,.L398	# ne
#                 && (NVM_CALCULATION_CRC_FINISHED_OK == tmp_crc_state))
#         {
#             arg_block->info.state = NVM_BLOCK_NV_WRITE_PRAM_DONE;
	.d2line		231
.Llo79:
	diab.li		r0,34		# arg_block=r0
	stw		r0,12(r31)		# arg_block=r31 arg_block=r0
#             /* [DD-NVM00270-MGC01-V1] */
#             arg_block->info.status_err = (NvM_RequestResultType)NVM_REQ_OK;
	.d2line		233
	diab.li		r0,0		# arg_block=r0
	stb		r0,24(r31)		# arg_block=r31 arg_block=r0
	b		.L397
.L398:
#         }
#         else
#         {
#             arg_block->info.state = NVM_BLOCK_NV_WRITE_PRAM_START_WRITE;
	.d2line		237
.Llo80:
	diab.li		r0,31		# arg_block=r0
	stw		r0,12(r31)		# arg_block=r31 arg_block=r0
#             NvM_WriteVerificationFinished = FALSE;
	.d2line		238
	diab.li		r30,0		# arg_block=r30
	lis		r3,NvM_WriteVerificationFinished@ha		# arg_block=r3
	e_add16i		r3,r3,NvM_WriteVerificationFinished@l		# arg_block=r3 arg_block=r3
	stb		r30,0(r3)		# arg_block=r3 arg_block=r30
#             stopProcessing = FALSE;
.L397:
#         }
# 
#     }
#     return stopProcessing;
	.d2line		243
.Llo71:
	rlwinm		r3,r30,0,24,31		# arg_block=r3 stopProcessing=r30
.Llo72:
	mr		r3,r3		# arg_block=r3
# }
	.d2line		244
	.d2epilogue_begin
	lmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	3,10
.Llo73:
	lwz		r0,36(r1)		# arg_block=r0
	mtspr		lr,r0		# arg_block=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L535:
	.type		NvM_ActBlockNvWritePRAMValidate,@function
	.size		NvM_ActBlockNvWritePRAMValidate,.-NvM_ActBlockNvWritePRAMValidate
# Number of nodes = 80

# Allocations for NvM_ActBlockNvWritePRAMValidate
#	?a4		arg_block
#	?a5		stopProcessing
#	?a6		blockId
#	?a7		tmp_crc_state
# FUNC(void,NVM_CODE) NvM_ActBlockNvWritePRAMStartWrite(P2VAR(NvM_BlockRequestType,AUTOMATIC,NVM_APPL_DATA) arg_block)
	.align		2
	.section	.text_vle
        .d2line         247,21
#$$ld
.L549:

#$$bf	NvM_ActBlockNvWritePRAMStartWrite,interprocedural,rasave,nostackparams
	.globl		NvM_ActBlockNvWritePRAMStartWrite
	.d2_cfa_start __cie
NvM_ActBlockNvWritePRAMStartWrite:
.Llo81:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
.Llo89:
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)		# blockId=r0
	.d2_cfa_offset    108,-1
	mr		r31,r3		# arg_block=r31 arg_block=r3
	.d2prologue_end
# {
#     P2VAR(uint8,AUTOMATIC,NVM_APPL_DATA) Buf_ptr;
#     VAR(NvM_BlockIdType,AUTOMATIC) blockId = arg_block->block_id;
	.d2line		250
	lhz		r0,4(r31)		# blockId=r0 arg_block=r31
	mr		r0,r0		# blockId=r0 blockId=r0
# #if (NVM_POLLING_MODE==STD_OFF)
#     VAR(MemIf_StatusType, AUTOMATIC) prevMemIfDrvStatus;
# #endif
# 
#     if (   (Is_Conf_Block_Use_Synchmechanism(blockId))
	.d2line		255
	lis		r3,(NvM_BlockManagementTable+4)@ha
.Llo82:
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	rlwinm		r4,r0,6,10,25		# blockId=r0
	se_add		r3,r4
	lhz		r3,60(r3)
	rlwinm		r3,r3,0,25,25
	cmpi		0,0,r3,64
	bc		1,2,.L407	# eq
.Llo83:
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	rlwinm		r4,r0,6,10,25		# blockId=r0
	se_add		r3,r4
	lhz		r3,60(r3)
	rlwinm		r3,r3,0,31,31
	se_cmpi		r3,1
	bc		1,2,.L407	# eq
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	rlwinm		r4,r0,6,10,25		# blockId=r0
	se_add		r3,r4
	lhz		r3,60(r3)
	rlwinm		r3,r3,0,22,22
	cmpi		0,0,r3,512
	bc		0,2,.L403	# ne
.L407:
#         || (Is_Conf_Block_Use_Crc(blockId))
#         || (Is_Conf_Block_Static_BlockIdCheck(blockId)))
#     {
#         Buf_ptr = NvM_Common.NvM_RamMirrorPtr;   /*NvM Mirror is used as the buffer to write data*/
	.d2line		259
	lis		r3,(NvM_Common+24)@ha
	lwz		r4,(NvM_Common+24)@l(r3)
.Llo85:
	mr		r4,r4		# Buf_ptr=r4 Buf_ptr=r4
	b		.L404
.L403:
#     }
#     else
#     {
#         Buf_ptr = arg_block->ram_block_ptr;    /* Data is directly copied from RAM */
	.d2line		263
.Llo86:
	lwz		r4,8(r31)		# arg_block=r31
.Llo87:
	mr		r4,r4		# Buf_ptr=r4 Buf_ptr=r4
.L404:
#     }
# 
# #if (NVM_POLLING_MODE==STD_OFF)
#     prevMemIfDrvStatus = NvM_MemIf_Driver_Status;
	.d2line		267
.Llo90:
	lis		r3,NvM_MemIf_Driver_Status@ha
	lwz		r30,NvM_MemIf_Driver_Status@l(r3)
.Llo96:
	mr		r30,r30		# prevMemIfDrvStatus=r30 prevMemIfDrvStatus=r30
#     NvM_MemIf_Driver_Status=MEMIF_BUSY;
	.d2line		268
	diab.li		r5,2
	e_add16i		r3,r3,NvM_MemIf_Driver_Status@l
	stw		r5,0(r3)
# #endif
#     /* [DD-NVM00038-MGC02-V1] */
#     if(E_OK==MemIf_Write(Get_Conf_Device_Index(blockId),
	.d2line		271
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
.Llo91:
	rlwinm		r0,r0,6,10,25		# blockId=r0 blockId=r0
	se_add		r3,r0		# blockId=r0
	lhz		r0,22(r3)		# blockId=r0
	lis		r3,(NvM_Common+32)@ha
	lbz		r3,(NvM_Common+32)@l(r3)
	slw		r0,r0,r3		# blockId=r0 blockId=r0
	lhz		r3,16(r31)		# arg_block=r31
	se_add		r0,r3		# blockId=r0 blockId=r0
	rlwinm		r3,r0,0,16,31		# blockId=r0
	mr		r4,r4		# Buf_ptr=r4 Buf_ptr=r4
.Llo88:
	bl		Ea_Write
.Llo92:
	e_andi.		r3,r3,255
	bc		0,2,.L405	# ne
#                          Get_Block_Number(blockId, arg_block->info.dataset),
#                          Buf_ptr)
#        )
#     {
#         arg_block->info.state=NVM_BLOCK_NV_WRITE_PRAM_IN_PROGRESS;
	.d2line		276
	diab.li		r0,28		# blockId=r0
.Llo93:
	stw		r0,12(r31)		# arg_block=r31 blockId=r0
	b		.L402
.L405:
#     }
#     else
#     {
# #if (NVM_POLLING_MODE==STD_OFF)
#         NvM_MemIf_Driver_Status=prevMemIfDrvStatus;
	.d2line		281
.Llo94:
	lis		r3,NvM_MemIf_Driver_Status@ha
	e_add16i		r3,r3,NvM_MemIf_Driver_Status@l
	stw		r30,0(r3)		# prevMemIfDrvStatus=r30
# #endif
#         arg_block->info.state=NVM_BLOCK_NV_WRITE_PRAM_PROCESS_ERR;
	.d2line		283
	diab.li		r0,30		# blockId=r0
.Llo95:
	stw		r0,12(r31)		# arg_block=r31 blockId=r0
.L402:
#     }
# 
# }
	.d2line		286
	.d2epilogue_begin
.Llo84:
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# blockId=r0
	mtspr		lr,r0		# blockId=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L550:
	.type		NvM_ActBlockNvWritePRAMStartWrite,@function
	.size		NvM_ActBlockNvWritePRAMStartWrite,.-NvM_ActBlockNvWritePRAMStartWrite
# Number of nodes = 130

# Allocations for NvM_ActBlockNvWritePRAMStartWrite
#	?a4		arg_block
#	?a5		Buf_ptr
#	?a6		blockId
#	?a7		prevMemIfDrvStatus
# FUNC(boolean,NVM_CODE) NvM_ActBlockNvWritePRAMInProgress(P2VAR(NvM_BlockRequestType,AUTOMATIC,NVM_APPL_DATA) arg_block)
	.align		2
	.section	.text_vle
        .d2line         289,24
#$$ld
.L565:

#$$bf	NvM_ActBlockNvWritePRAMInProgress,interprocedural,rasave,nostackparams
	.globl		NvM_ActBlockNvWritePRAMInProgress
	.d2_cfa_start __cie
NvM_ActBlockNvWritePRAMInProgress:
.Llo97:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# arg_block=r31 arg_block=r3
	.d2prologue_end
# {
#     VAR(boolean,AUTOMATIC) stopProcessing = TRUE;
	.d2line		291
	diab.li		r30,1		# stopProcessing=r30
#     VAR(MemIf_JobResultType,AUTOMATIC) tmp_result;
#     VAR(NvM_BlockIdType,AUTOMATIC) blockId = arg_block->block_id;
	.d2line		293
.Llo101:
	lhz		r29,4(r31)		# arg_block=r31
.Llo121:
	mr		r29,r29		# blockId=r29 blockId=r29
# 
#  #if (NVM_POLLING_MODE==STD_ON)
#     /* [DD-NVM00346-MGC01-V1] */
#     if(MEMIF_IDLE == MemIf_GetStatus(Get_Conf_Device_Index(blockId)))
#  #else
#     if(MEMIF_IDLE==NvM_MemIf_Driver_Status)
	.d2line		299
	lis		r3,NvM_MemIf_Driver_Status@ha
.Llo98:
	lwz		r0,NvM_MemIf_Driver_Status@l(r3)
	se_cmpi		r0,1
	bc		0,2,.L414	# ne
#  #endif
#     {
#        tmp_result=MemIf_GetJobResult(Get_Conf_Device_Index(blockId));
	.d2line		302
.Llo99:
	bl		Ea_GetJobResult
	.d2line		303
	mr.		r0,r3		# tmp_result=?a7 tmp_result=r3
#        if(tmp_result==MEMIF_JOB_OK)
	bc		0,2,.L415	# ne
#        {
#           if(  Is_Conf_Block_Type_Redundant (blockId)
	.d2line		305
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	rlwinm		r0,r29,6,10,25		# tmp_result=r0 blockId=r29
.Llo105:
	se_add		r3,r0		# tmp_result=r0
	lwz		r0,12(r3)		# tmp_result=r0
	se_cmpi		r0,1		# tmp_result=r0
	bc		0,2,.L416	# ne
.Llo106:
	lhz		r0,16(r31)		# tmp_result=r0 arg_block=r31
.Llo107:
	se_cmpi		r0,0		# tmp_result=r0
	bc		0,2,.L416	# ne
#                &&(NVM_REDUNDANT_FIRST_BLOCK == arg_block->info.dataset))
#           {
#              arg_block->info.dataset = NVM_REDUNDANT_SECOND_BLOCK;
	.d2line		308
.Llo108:
	diab.li		r0,1		# tmp_result=r0
.Llo109:
	sth		r0,16(r31)		# arg_block=r31 tmp_result=r0
#              arg_block->info.state = NVM_BLOCK_NV_WRITE_PRAM_START_WRITE;
	.d2line		309
	diab.li		r0,31		# tmp_result=r0
	stw		r0,12(r31)		# arg_block=r31 tmp_result=r0
#              arg_block->info.status_err = (NvM_RequestResultType)NVM_REQ_OK;
	.d2line		310
	diab.li		r30,0		# stopProcessing=r30
	stb		r30,24(r31)		# arg_block=r31 stopProcessing=r30
#              NvM_WriteVerificationFinished = FALSE;
	.d2line		311
	lis		r3,NvM_WriteVerificationFinished@ha
	e_add16i		r3,r3,NvM_WriteVerificationFinished@l
	stb		r30,0(r3)		# stopProcessing=r30
#              stopProcessing = FALSE;
	.d2line		312
	b		.L414
.L416:
#           }
#           else
#           {
#              if(Is_Conf_Block_Write_Verification(blockId)&&(FALSE == NvM_WriteVerificationFinished))
	.d2line		316
.Llo110:
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	rlwinm		r0,r29,6,10,25		# tmp_result=r0 blockId=r29
.Llo111:
	se_add		r3,r0		# tmp_result=r0
	lhz		r0,60(r3)		# tmp_result=r0
	rlwinm		r0,r0,0,23,23		# tmp_result=r0 tmp_result=r0
	cmpi		0,0,r0,256		# tmp_result=r0
	bc		0,2,.L418	# ne
.Llo112:
	lis		r3,NvM_WriteVerificationFinished@ha
	lbz		r0,NvM_WriteVerificationFinished@l(r3)		# tmp_result=r0
.Llo113:
	se_cmpi		r0,0		# tmp_result=r0
	bc		0,2,.L418	# ne
#              {
#                  NvM_CompareData.NvM_DataLengthToRead = Get_Conf_Block_Data_Length(blockId);
	.d2line		318
.Llo114:
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	rlwinm		r0,r29,6,10,25		# tmp_result=r0 blockId=r29
.Llo115:
	se_add		r3,r0		# tmp_result=r0
	lhz		r0,60(r3)		# tmp_result=r0
	rlwinm		r0,r0,0,22,22		# tmp_result=r0 tmp_result=r0
	cmpi		0,0,r0,512		# tmp_result=r0
	diab.li		r3,2
	isel		r3,r3,r0,2		# tmp_result=r0
.L421:
.Llo102:
	diab.li		r0,0		# tmp_result=r0
.Llo116:
	isel		r0,r3,r0,2		# tmp_result=r0 tmp_result=r0
.L422:
.Llo122:
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
.Llo123:
	rlwinm		r29,r29,6,10,25		# blockId=r29 blockId=r29
	se_add		r3,r29		# blockId=r29
	lhz		r3,20(r3)
	se_add		r0,r3		# tmp_result=r0 tmp_result=r0
	lis		r3,(NvM_CompareData+2)@ha
	sth		r0,(NvM_CompareData+2)@l(r3)		# tmp_result=r0
#                  NvM_CompareData.NvM_ReadDataOffset = ((uint16)0U);
	.d2line		319
	diab.li		r30,0		# stopProcessing=r30
.Llo103:
	lis		r3,(NvM_CompareData+4)@ha
	sth		r30,(NvM_CompareData+4)@l(r3)		# stopProcessing=r30
#                  NvM_WriteVerificationFinished = TRUE;
	.d2line		320
	diab.li		r0,1		# tmp_result=r0
	lis		r3,NvM_WriteVerificationFinished@ha
	e_add16i		r3,r3,NvM_WriteVerificationFinished@l
	stb		r0,0(r3)		# tmp_result=r0
#                  arg_block->info.state = NVM_BLOCK_NV_WRITE_PRAM_VERIFICATION;
	.d2line		321
	diab.li		r0,32		# tmp_result=r0
	stw		r0,12(r31)		# arg_block=r31 tmp_result=r0
#                  stopProcessing =FALSE;
	.d2line		322
	b		.L414
.L418:
#              }
#              else
#              {
#                  /* [DD-NVM00270-MGC01-V1] */
#                  arg_block->info.status_err = (NvM_RequestResultType)NVM_REQ_OK;
	.d2line		327
.Llo117:
	diab.li		r0,0		# tmp_result=r0
.Llo118:
	stb		r0,24(r31)		# arg_block=r31 tmp_result=r0
#                  arg_block->info.state= NVM_BLOCK_NV_WRITE_PRAM_DONE;
	.d2line		328
	diab.li		r0,34		# tmp_result=r0
	stw		r0,12(r31)		# arg_block=r31 tmp_result=r0
	b		.L414
.L415:
#              }
#           }
#        }
#        else
#        {
#           arg_block->info.state= NVM_BLOCK_NV_WRITE_PRAM_PROCESS_ERR;
	.d2line		334
.Llo119:
	diab.li		r0,30		# tmp_result=r0
.Llo120:
	stw		r0,12(r31)		# arg_block=r31 tmp_result=r0
#           stopProcessing = FALSE;
	.d2line		335
	diab.li		r30,0		# stopProcessing=r30
.L414:
#        }
#     }
#     return stopProcessing;
	.d2line		338
.Llo100:
	rlwinm		r3,r30,0,24,31		# stopProcessing=r30
# }
	.d2line		339
	.d2epilogue_begin
	lmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	3,10
.Llo104:
	lwz		r0,36(r1)		# tmp_result=r0
	mtspr		lr,r0		# tmp_result=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L566:
	.type		NvM_ActBlockNvWritePRAMInProgress,@function
	.size		NvM_ActBlockNvWritePRAMInProgress,.-NvM_ActBlockNvWritePRAMInProgress
# Number of nodes = 178

# Allocations for NvM_ActBlockNvWritePRAMInProgress
#	?a4		arg_block
#	?a5		$$12
#	?a6		stopProcessing
#	?a7		tmp_result
#	?a8		blockId
# FUNC(boolean,NVM_CODE) NvM_ActBlockNvWritePRAMProcessErr(P2VAR(NvM_BlockRequestType,AUTOMATIC,NVM_APPL_DATA) arg_block)
	.align		2
	.section	.text_vle
        .d2line         342,24
#$$ld
.L579:

#$$bf	NvM_ActBlockNvWritePRAMProcessErr,interprocedural,rasave,nostackparams
	.globl		NvM_ActBlockNvWritePRAMProcessErr
	.d2_cfa_start __cie
NvM_ActBlockNvWritePRAMProcessErr:
.Llo124:
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
#     VAR(boolean,AUTOMATIC) tmp_stop_processing =FALSE;
	.d2line		344
.Llo125:
	diab.li		r30,0		# tmp_stop_processing=r30
# 
#     arg_block->info.state = NVM_BLOCK_NV_WRITE_PRAM_START_WRITE;
	.d2line		346
.Llo126:
	diab.li		r0,31
	stw		r0,12(r31)		# arg_block=r31
# 
#     if(Is_Conf_Block_Type_Redundant (arg_block->block_id))
	.d2line		348
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)
	lhz		r3,4(r31)		# arg_block=r31
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0
	lwz		r0,12(r3)
	se_cmpi		r0,1
	bc		0,2,.L430	# ne
#     {
#        if(NVM_REDUNDANT_FIRST_BLOCK == arg_block->info.dataset)
	.d2line		350
	lhz		r0,16(r31)		# arg_block=r31
	se_cmpi		r0,0
	bc		0,2,.L431	# ne
#        {
#           if(NvM_Counter_Wr_Retries [NVM_REDUNDANT_FIRST_BLOCK] > (uint8)0U)
	.d2line		352
	lis		r3,NvM_Counter_Wr_Retries@ha
	lbz		r0,NvM_Counter_Wr_Retries@l(r3)
	se_cmpi		r0,0
	bc		0,1,.L432	# le
#           {
#              /* [DD-NVM00529-MGC01-V1] */
#              NvM_Counter_Wr_Retries [NVM_REDUNDANT_FIRST_BLOCK]--;
	.d2line		355
	lis		r4,NvM_Counter_Wr_Retries@ha
	e_add16i		r4,r4,NvM_Counter_Wr_Retries@l
	lbz		r3,0(r4)
	diab.addi		r3,r3,255
	stb		r3,0(r4)
	b		.L439
.L432:
#           }
#           else
#           {
#              arg_block->info.dataset= NVM_REDUNDANT_SECOND_BLOCK;
	.d2line		359
	diab.li		r0,1
	sth		r0,16(r31)		# arg_block=r31
# 
#              if (TRUE == NvM_IsDem_EventIdConfigured(arg_block->block_id, NVM_DEM_EVENT_E_LOSS_OF_REDUNDANCY))
	.d2line		361
	lhz		r3,4(r31)		# arg_block=r31
	diab.li		r4,4
	bl		NvM_IsDem_EventIdConfigured
	rlwinm		r3,r3,0,24,31
	se_cmpi		r3,1
	bc		0,2,.L439	# ne
#              {
#                 /* [DD-NVM00546-MGC01-V1] */
#                 arg_block->info.dem_err = NVM_DEM_EVENT_E_LOSS_OF_REDUNDANCY;
	.d2line		364
	diab.li		r0,4
	stw		r0,20(r31)		# arg_block=r31
	b		.L439
.L431:
#              }
#           }
#        }
#        else
#        {
#           if(NvM_Counter_Wr_Retries [NVM_REDUNDANT_SECOND_BLOCK] > (uint8)0U)
	.d2line		370
	lis		r3,(NvM_Counter_Wr_Retries+1)@ha
	lbz		r0,(NvM_Counter_Wr_Retries+1)@l(r3)
	se_cmpi		r0,0
	bc		0,1,.L436	# le
#           {
#              /* [DD-NVM00529-MGC01-V1] */
#              NvM_Counter_Wr_Retries [NVM_REDUNDANT_SECOND_BLOCK]--;
	.d2line		373
	lis		r4,(NvM_Counter_Wr_Retries+1)@ha
	lbz		r3,(NvM_Counter_Wr_Retries+1)@l(r4)
	diab.addi		r3,r3,255
	stb		r3,(NvM_Counter_Wr_Retries+1)@l(r4)
	b		.L439
.L436:
#           }
#           else
#           {
#              if (TRUE == NvM_IsDem_EventIdConfigured(arg_block->block_id, NVM_DEM_EVENT_E_LOSS_OF_REDUNDANCY))
	.d2line		377
	lhz		r3,4(r31)		# arg_block=r31
	diab.li		r4,4
	bl		NvM_IsDem_EventIdConfigured
	rlwinm		r3,r3,0,24,31
	se_cmpi		r3,1
	bc		0,2,.L438	# ne
#              {
#                 /* [DD-NVM00546-MGC01-V1] */
#                 arg_block->info.dem_err = NVM_DEM_EVENT_E_LOSS_OF_REDUNDANCY;
	.d2line		380
.Llo128:
	diab.li		r0,4
	stw		r0,20(r31)		# arg_block=r31
.L438:
#              }
# 
# 
#              arg_block->info.state = NVM_BLOCK_NV_WRITE_PRAM_DONE;
	.d2line		384
	diab.li		r0,34
	stw		r0,12(r31)		# arg_block=r31
#              tmp_stop_processing = TRUE;
	.d2line		385
	diab.li		r30,1		# tmp_stop_processing=r30
.Llo129:
	b		.L439
.L430:
#           }
#        }
#     }
#     else /* not redundant block */
#     {
#        if(NvM_Counter_Wr_Retries [NVM_REDUNDANT_FIRST_BLOCK] > (uint8)0U)
	.d2line		391
	lis		r3,NvM_Counter_Wr_Retries@ha
	lbz		r0,NvM_Counter_Wr_Retries@l(r3)
	se_cmpi		r0,0
	bc		0,1,.L440	# le
#        {
#           /* [DD-NVM00529-MGC01-V1] */
#           NvM_Counter_Wr_Retries [NVM_REDUNDANT_FIRST_BLOCK]--;
	.d2line		394
	lis		r4,NvM_Counter_Wr_Retries@ha
	e_add16i		r4,r4,NvM_Counter_Wr_Retries@l
	lbz		r3,0(r4)
	diab.addi		r3,r3,255
	stb		r3,0(r4)
	b		.L439
.L440:
#        }
#        else
#        {
#           arg_block->info.status_err = (NvM_RequestResultType)NVM_REQ_NOT_OK;
	.d2line		398
	diab.li		r0,1
	stb		r0,24(r31)		# arg_block=r31
# 
#           if (TRUE == NvM_IsDem_EventIdConfigured(NvM_Current_Block.block_id, NVM_DEM_EVENT_E_REQ_FAILED))
	.d2line		400
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	diab.li		r4,2
	bl		NvM_IsDem_EventIdConfigured
	rlwinm		r3,r3,0,24,31
	se_cmpi		r3,1
	bc		0,2,.L442	# ne
#           {
#               arg_block->info.dem_err = NVM_DEM_EVENT_E_REQ_FAILED;
	.d2line		402
.Llo130:
	diab.li		r0,2
	stw		r0,20(r31)		# arg_block=r31
.L442:
#           }
# 
#           arg_block->info.state = NVM_BLOCK_NV_WRITE_PRAM_DONE;
	.d2line		405
	diab.li		r0,34
	stw		r0,12(r31)		# arg_block=r31
#           tmp_stop_processing = TRUE;
	.d2line		406
	diab.li		r30,1		# tmp_stop_processing=r30
.L439:
#        }
#     }
#     return tmp_stop_processing;
	.d2line		409
.Llo127:
	rlwinm		r3,r30,0,24,31		# tmp_stop_processing=r30
# }
	.d2line		410
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo131:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L580:
	.type		NvM_ActBlockNvWritePRAMProcessErr,@function
	.size		NvM_ActBlockNvWritePRAMProcessErr,.-NvM_ActBlockNvWritePRAMProcessErr
# Number of nodes = 163

# Allocations for NvM_ActBlockNvWritePRAMProcessErr
#	?a4		arg_block
#	?a5		$$14
#	?a6		$$13
#	?a7		tmp_stop_processing
# FUNC(void,NVM_CODE) NvM_ActBlockNvWritePRAMVerification(P2VAR(NvM_BlockRequestType,AUTOMATIC,NVM_APPL_DATA) arg_block)
	.align		2
	.section	.text_vle
        .d2line         413,21
#$$ld
.L587:

#$$bf	NvM_ActBlockNvWritePRAMVerification,interprocedural,rasave,nostackparams
	.globl		NvM_ActBlockNvWritePRAMVerification
	.d2_cfa_start __cie
NvM_ActBlockNvWritePRAMVerification:
.Llo132:
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
#     VAR(NvM_BlockIdType,AUTOMATIC) blockId = arg_block->block_id;
	.d2line		415
	lhz		r30,4(r31)		# blockId=r30 arg_block=r31
	mr		r30,r30		# blockId=r30 blockId=r30
# 
#     NvM_CompareData.ram_buf_ptr = NvM_Common.NvM_WriteVfyBuffPtr;
	.d2line		417
	lis		r3,(NvM_Common+28)@ha
.Llo133:
	lwz		r0,(NvM_Common+28)@l(r3)
	lis		r3,(NvM_CompareData+12)@ha
	stw		r0,(NvM_CompareData+12)@l(r3)
#     if(NvM_CompareData.NvM_DataLengthToRead > NvM_BlockManagementTable.BlockDescriptorPtr[blockId].NvM_WriteVerificationDataSize)
	.d2line		418
	lis		r3,(NvM_CompareData+2)@ha
	lhz		r0,(NvM_CompareData+2)@l(r3)
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	rlwinm		r6,r30,6,10,25		# blockId=r30
	se_add		r3,r6
	lhz		r3,28(r3)
	se_cmp		r0,r3
	bc		0,1,.L452	# le
#     {
#        if(E_OK == MemIf_Read( /* [DD-NVM00038-MGC01-V1] */
	.d2line		420
.Llo134:
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)
	rlwinm		r4,r30,6,10,25		# blockId=r30
	se_add		r4,r0
	lhz		r0,22(r4)
	lis		r3,(NvM_Common+32)@ha
	lbz		r3,(NvM_Common+32)@l(r3)
	slw		r0,r0,r3
	lhz		r3,16(r31)		# arg_block=r31
	se_add		r0,r3
	rlwinm		r3,r0,0,16,31
	lhz		r6,28(r4)
	lis		r4,(NvM_CompareData+4)@ha
	lhz		r4,(NvM_CompareData+4)@l(r4)
	lis		r5,(NvM_CompareData+12)@ha
	lwz		r5,(NvM_CompareData+12)@l(r5)
	bl		Ea_Read
	e_andi.		r3,r3,255
	bc		0,2,.L453	# ne
#              Get_Conf_Device_Index(blockId),
#              Get_Block_Number(blockId,arg_block->info.dataset),
#              NvM_CompareData.NvM_ReadDataOffset,
#              NvM_CompareData.ram_buf_ptr,
#              NvM_BlockManagementTable.BlockDescriptorPtr[blockId].NvM_WriteVerificationDataSize)
#           )
#        {
#           arg_block->info.state = NVM_BLOCK_NV_WRITE_PRAM_VERIFICATION_IN_PROGRESS;
	.d2line		428
	diab.li		r0,33
	stw		r0,12(r31)		# arg_block=r31
#           NvM_CompareData.NvM_DataLengthToRead -= NvM_BlockManagementTable.BlockDescriptorPtr[blockId].NvM_WriteVerificationDataSize;
	.d2line		429
	lis		r4,(NvM_CompareData+2)@ha
	lhz		r0,(NvM_CompareData+2)@l(r4)
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r5,(NvM_BlockManagementTable+4)@l(r3)
	rlwinm		r6,r30,6,10,25		# blockId=r30
	add		r30,r5,r6		# blockId=r30
	lhz		r5,28(r30)		# blockId=r30
	subf		r5,r5,r0
	sth		r5,(NvM_CompareData+2)@l(r4)
#           NvM_CompareData.NvM_DataLengthToCompare = NvM_BlockManagementTable.BlockDescriptorPtr[blockId].NvM_WriteVerificationDataSize;
	.d2line		430
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)
	se_add		r6,r0
	lhz		r0,28(r6)
	lis		r3,NvM_CompareData@ha
	e_add16i		r3,r3,NvM_CompareData@l
	sth		r0,0(r3)
	b		.L451
.L453:
#        }
#        else
#        {
#            if(TRUE == NvM_IsDem_EventIdConfigured(blockId, NVM_DEM_EVENT_E_VERIFY_FAILED))
	.d2line		434
	rlwinm		r3,r30,0,16,31		# blockId=r30
	diab.li		r4,5
	bl		NvM_IsDem_EventIdConfigured
	rlwinm		r3,r3,0,24,31
	se_cmpi		r3,1
	bc		0,2,.L451	# ne
#            {
#                /* [DD-NVM00528-MGC01-V1] */
#                arg_block->info.dem_err = NVM_DEM_EVENT_E_VERIFY_FAILED;
	.d2line		437
.Llo136:
	diab.li		r0,5
	stw		r0,20(r31)		# arg_block=r31
	b		.L451
.L452:
#            }
#        }
#     }
#     else /* Read at once */
#     {
#        if(E_OK == MemIf_Read( /* [DD-NVM00038-MGC01-V1] */
	.d2line		443
.Llo137:
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	rlwinm		r6,r30,6,10,25		# blockId=r30
	se_add		r3,r6
	lhz		r0,22(r3)
	lis		r3,(NvM_Common+32)@ha
	lbz		r3,(NvM_Common+32)@l(r3)
	slw		r0,r0,r3
	lhz		r3,16(r31)		# arg_block=r31
	se_add		r0,r3
	rlwinm		r3,r0,0,16,31
	lis		r4,(NvM_CompareData+4)@ha
	lhz		r4,(NvM_CompareData+4)@l(r4)
	lis		r5,(NvM_CompareData+2)@ha
	lhz		r6,(NvM_CompareData+2)@l(r5)
	lis		r5,(NvM_CompareData+12)@ha
	lwz		r5,(NvM_CompareData+12)@l(r5)
	bl		Ea_Read
	e_andi.		r3,r3,255
	bc		0,2,.L457	# ne
#              Get_Conf_Device_Index(blockId),
#              Get_Block_Number(blockId,arg_block->info.dataset),
#              NvM_CompareData.NvM_ReadDataOffset,
#              NvM_CompareData.ram_buf_ptr,
#              NvM_CompareData.NvM_DataLengthToRead)
#           )
#        {
#           arg_block->info.state = NVM_BLOCK_NV_WRITE_PRAM_VERIFICATION_IN_PROGRESS;
	.d2line		451
	diab.li		r0,33
	stw		r0,12(r31)		# arg_block=r31
#           NvM_CompareData.NvM_DataLengthToCompare = NvM_CompareData.NvM_DataLengthToRead;
	.d2line		452
	lis		r3,(NvM_CompareData+2)@ha
	lhz		r0,(NvM_CompareData+2)@l(r3)
	lis		r4,NvM_CompareData@ha
	e_add16i		r4,r4,NvM_CompareData@l
	sth		r0,0(r4)
#           NvM_CompareData.NvM_DataLengthToRead = ((uint16)0U);
	.d2line		453
	diab.li		r0,0
	sth		r0,(NvM_CompareData+2)@l(r3)
	b		.L451
.L457:
#        }
#        else
#        {
#            if(TRUE == NvM_IsDem_EventIdConfigured(blockId, NVM_DEM_EVENT_E_VERIFY_FAILED))
	.d2line		457
	rlwinm		r3,r30,0,16,31		# blockId=r30
	diab.li		r4,5
	bl		NvM_IsDem_EventIdConfigured
	rlwinm		r3,r3,0,24,31
	se_cmpi		r3,1
	bc		0,2,.L451	# ne
#            {
#                /* [DD-NVM00528-MGC01-V1] */
#                arg_block->info.dem_err = NVM_DEM_EVENT_E_VERIFY_FAILED;
	.d2line		460
.Llo138:
	diab.li		r0,5
	stw		r0,20(r31)		# arg_block=r31
.L451:
#            }
#        }
#     }
# }
	.d2line		464
	.d2epilogue_begin
.Llo135:
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
.L588:
	.type		NvM_ActBlockNvWritePRAMVerification,@function
	.size		NvM_ActBlockNvWritePRAMVerification,.-NvM_ActBlockNvWritePRAMVerification
# Number of nodes = 249

# Allocations for NvM_ActBlockNvWritePRAMVerification
#	?a4		arg_block
#	?a5		blockId
# FUNC(boolean,NVM_CODE) NvM_ActBlockNvWritePRAMVerifyInProgress( P2VAR(NvM_BlockRequestType,AUTOMATIC,NVM_APPL_DATA) arg_block)
	.align		2
	.section	.text_vle
        .d2line         467,24
#$$ld
.L595:

#$$bf	NvM_ActBlockNvWritePRAMVerifyInProgress,interprocedural,rasave,nostackparams
	.globl		NvM_ActBlockNvWritePRAMVerifyInProgress
	.d2_cfa_start __cie
NvM_ActBlockNvWritePRAMVerifyInProgress:
.Llo139:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# arg_block=r31 arg_block=r3
	.d2prologue_end
# {
#     VAR(boolean,AUTOMATIC) stopProcessing =TRUE;
	.d2line		469
	diab.li		r30,1		# stopProcessing=r30
#     VAR(MemIf_JobResultType,AUTOMATIC) memIfReturn;
#     VAR(NvM_BlockIdType,AUTOMATIC) blockId = arg_block->block_id;
	.d2line		471
.Llo143:
	lhz		r29,4(r31)		# arg_block=r31
.Llo163:
	mr		r29,r29		# blockId=r29 blockId=r29
# 
#  #if (NVM_POLLING_MODE==STD_ON)
#     /* [DD-NVM00346-MGC01-V1] */
#     if(MEMIF_IDLE == MemIf_GetStatus(Get_Conf_Device_Index(blockId)))
#  #else
#     if(MEMIF_IDLE==NvM_MemIf_Driver_Status)
	.d2line		477
	lis		r3,NvM_MemIf_Driver_Status@ha
.Llo140:
	lwz		r0,NvM_MemIf_Driver_Status@l(r3)
	se_cmpi		r0,1
	bc		0,2,.L465	# ne
#  #endif
#     {
#        memIfReturn=MemIf_GetJobResult(Get_Conf_Device_Index(blockId));
	.d2line		480
.Llo141:
	bl		Ea_GetJobResult
	.d2line		482
	mr.		r0,r3		# memIfReturn=?a7 memIfReturn=r3
# 
#        if(memIfReturn==MEMIF_JOB_OK)
	bc		0,2,.L466	# ne
#        {
#           if(  Is_Conf_Block_Type_Redundant (blockId)
	.d2line		484
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	rlwinm		r0,r29,6,10,25		# memIfReturn=r0 blockId=r29
.Llo147:
	se_add		r3,r0		# memIfReturn=r0
	lwz		r0,12(r3)		# memIfReturn=r0
	se_cmpi		r0,1		# memIfReturn=r0
	bc		0,2,.L467	# ne
.Llo148:
	lhz		r0,16(r31)		# memIfReturn=r0 arg_block=r31
.Llo149:
	se_cmpi		r0,0		# memIfReturn=r0
	bc		0,2,.L467	# ne
#                &&((NVM_REDUNDANT_FIRST_BLOCK)==arg_block->info.dataset))
#           {
#              arg_block->info.dataset = NVM_REDUNDANT_SECOND_BLOCK;
	.d2line		487
.Llo150:
	diab.li		r0,1		# memIfReturn=r0
.Llo151:
	sth		r0,16(r31)		# arg_block=r31 memIfReturn=r0
#              arg_block->info.state = NVM_BLOCK_NV_WRITE_PRAM_START_WRITE;
	.d2line		488
	diab.li		r0,31		# memIfReturn=r0
	stw		r0,12(r31)		# arg_block=r31 memIfReturn=r0
#              NvM_WriteVerificationFinished = FALSE;
	.d2line		489
	diab.li		r30,0		# stopProcessing=r30
	lis		r3,NvM_WriteVerificationFinished@ha
	e_add16i		r3,r3,NvM_WriteVerificationFinished@l
	stb		r30,0(r3)		# stopProcessing=r30
#              stopProcessing = FALSE;
	.d2line		490
	b		.L465
.L467:
#           }
#           else
#           {
#              if((Is_Conf_Block_Write_Verification(blockId))&&(FALSE == NvM_WriteVerificationFinished))
	.d2line		494
.Llo152:
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	rlwinm		r0,r29,6,10,25		# memIfReturn=r0 blockId=r29
.Llo153:
	se_add		r3,r0		# memIfReturn=r0
	lhz		r0,60(r3)		# memIfReturn=r0
	rlwinm		r0,r0,0,23,23		# memIfReturn=r0 memIfReturn=r0
	cmpi		0,0,r0,256		# memIfReturn=r0
	bc		0,2,.L469	# ne
.Llo154:
	lis		r3,NvM_WriteVerificationFinished@ha
	lbz		r0,NvM_WriteVerificationFinished@l(r3)		# memIfReturn=r0
.Llo155:
	se_cmpi		r0,0		# memIfReturn=r0
	bc		0,2,.L469	# ne
#              {
#                 NvM_CompareData.NvM_DataLengthToRead = Get_Conf_Block_Data_Length(blockId);
	.d2line		496
.Llo156:
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	rlwinm		r0,r29,6,10,25		# memIfReturn=r0 blockId=r29
.Llo157:
	se_add		r3,r0		# memIfReturn=r0
	lhz		r0,60(r3)		# memIfReturn=r0
	rlwinm		r0,r0,0,22,22		# memIfReturn=r0 memIfReturn=r0
	cmpi		0,0,r0,512		# memIfReturn=r0
	diab.li		r3,2
	isel		r3,r3,r0,2		# memIfReturn=r0
.L472:
.Llo144:
	diab.li		r0,0		# memIfReturn=r0
.Llo158:
	isel		r0,r3,r0,2		# memIfReturn=r0 memIfReturn=r0
.L473:
.Llo164:
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
.Llo165:
	rlwinm		r29,r29,6,10,25		# blockId=r29 blockId=r29
	se_add		r3,r29		# blockId=r29
	lhz		r3,20(r3)
	se_add		r0,r3		# memIfReturn=r0 memIfReturn=r0
	lis		r3,(NvM_CompareData+2)@ha
	sth		r0,(NvM_CompareData+2)@l(r3)		# memIfReturn=r0
#                 NvM_CompareData.NvM_ReadDataOffset = ((uint16)0U);
	.d2line		497
	diab.li		r30,0		# stopProcessing=r30
.Llo145:
	lis		r3,(NvM_CompareData+4)@ha
	sth		r30,(NvM_CompareData+4)@l(r3)		# stopProcessing=r30
#                 NvM_WriteVerificationFinished = TRUE;
	.d2line		498
	diab.li		r0,1		# memIfReturn=r0
	lis		r3,NvM_WriteVerificationFinished@ha
	e_add16i		r3,r3,NvM_WriteVerificationFinished@l
	stb		r0,0(r3)		# memIfReturn=r0
#                 arg_block->info.state = NVM_BLOCK_NV_WRITE_PRAM_VERIFICATION;
	.d2line		499
	diab.li		r0,32		# memIfReturn=r0
	stw		r0,12(r31)		# arg_block=r31 memIfReturn=r0
#                 stopProcessing =FALSE;
	.d2line		500
	b		.L465
.L469:
#              }
#              else
#              {
#                  arg_block->info.state= NVM_BLOCK_NV_WRITE_PRAM_DONE;
	.d2line		504
.Llo159:
	diab.li		r0,34		# memIfReturn=r0
.Llo160:
	stw		r0,12(r31)		# arg_block=r31 memIfReturn=r0
	b		.L465
.L466:
#              }
#           }
#        }
#        else
#        {
#           arg_block->info.state= NVM_BLOCK_NV_WRITE_PRAM_PROCESS_ERR;
	.d2line		510
.Llo161:
	diab.li		r0,30		# memIfReturn=r0
.Llo162:
	stw		r0,12(r31)		# arg_block=r31 memIfReturn=r0
#           stopProcessing = FALSE;
	.d2line		511
	diab.li		r30,0		# stopProcessing=r30
.L465:
#        }
#     }
#     return stopProcessing;
	.d2line		514
.Llo142:
	rlwinm		r3,r30,0,24,31		# stopProcessing=r30
# }
	.d2line		515
	.d2epilogue_begin
	lmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	3,10
.Llo146:
	lwz		r0,36(r1)		# memIfReturn=r0
	mtspr		lr,r0		# memIfReturn=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L596:
	.type		NvM_ActBlockNvWritePRAMVerifyInProgress,@function
	.size		NvM_ActBlockNvWritePRAMVerifyInProgress,.-NvM_ActBlockNvWritePRAMVerifyInProgress
# Number of nodes = 166

# Allocations for NvM_ActBlockNvWritePRAMVerifyInProgress
#	?a4		arg_block
#	?a5		$$15
#	?a6		stopProcessing
#	?a7		memIfReturn
#	?a8		blockId

# Allocations for module
	.section	.text_vle
	.0byte		.L605
	.section	.text_vle
#$$ld
.L5:
.L713:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MEM\\MemIf\\ssc\\make\\..\\inc\\MemIf_Types.h"
.L710:	.d2filenum "C:\\WINDRI~1\\COMPIL~1\\DIAB-5~1.4\\include\\diab/lpragma.h"
.L647:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MEM\\NvM\\ssc\\make\\..\\inc\\NvM_Types.h"
.L633:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MEM\\NvM\\ssc\\make\\..\\inc\\NvM_I.h"
.L619:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MEM\\NvM\\ssc\\make\\..\\inc\\NvM_Private.h"
.L615:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MEM\\NvM\\ssc\\make\\..\\inc\\NvM.h"
.L606:	.d2filenum "gen\\MPC5746R_ECU\\WindRiver\\NvM_Lcfg.h"
.L484:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MEM\\NvM\\ssc\\make\\..\\src\\NvM_WriteServices.c"
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
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	19
	.uleb128	33
	.byte		0x0
	.uleb128	47
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	20
	.uleb128	21
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	39
	.uleb128	12
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	21
	.uleb128	5
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	22
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
	.uleb128	23
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MEM\\NvM\\ssc\\make\\..\\src\\NvM_WriteServices.c"
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
.L487:
	.sleb128	2
	.4byte		.L481-.L2
	.byte		"NvM_ActSubStateWritePRAMBlockInit"
	.byte		0
	.4byte		.L484
	.uleb128	22
	.uleb128	24
	.4byte		.L485
	.byte		0x1
	.byte		0x1
	.4byte		.L482
	.4byte		.L483
	.section	.debug_info,,n
.L488:
	.sleb128	3
	.4byte		.L484
	.uleb128	24
	.uleb128	28
	.byte		"stopProcessing"
	.byte		0
	.4byte		.L485
	.4byte		.L489
	.section	.debug_info,,n
	.sleb128	0
.L481:
	.section	.debug_info,,n
.L494:
	.sleb128	2
	.4byte		.L491-.L2
	.byte		"NvM_ActSubStateWritePRAMBlockWriting"
	.byte		0
	.4byte		.L484
	.uleb128	37
	.uleb128	24
	.4byte		.L485
	.byte		0x1
	.byte		0x1
	.4byte		.L492
	.4byte		.L493
.L495:
	.sleb128	3
	.4byte		.L484
	.uleb128	39
	.uleb128	27
	.byte		"tmp_stop_processing"
	.byte		0
	.4byte		.L485
	.4byte		.L496
	.section	.debug_info,,n
	.sleb128	0
.L491:
	.section	.debug_info,,n
.L501:
	.sleb128	2
	.4byte		.L498-.L2
	.byte		"NvM_ActBlockNvWritePRAMPreInit"
	.byte		0
	.4byte		.L484
	.uleb128	74
	.uleb128	24
	.4byte		.L485
	.byte		0x1
	.byte		0x1
	.4byte		.L499
	.4byte		.L500
	.section	.debug_info,,n
	.sleb128	4
	.4byte		.L484
	.uleb128	74
	.uleb128	24
	.byte		"arg_block"
	.byte		0
	.4byte		.L502
	.4byte		.L505
.L506:
	.sleb128	3
	.4byte		.L484
	.uleb128	76
	.uleb128	28
	.byte		"stopProcessing"
	.byte		0
	.4byte		.L485
	.4byte		.L507
.L508:
	.sleb128	3
	.4byte		.L484
	.uleb128	77
	.uleb128	36
	.byte		"blockId"
	.byte		0
	.4byte		.L509
	.4byte		.L512
	.section	.debug_info,,n
	.sleb128	0
.L498:
	.section	.debug_info,,n
.L517:
	.sleb128	5
	.4byte		.L514-.L2
	.byte		"NvM_ActBlockNvWritePRAMInit"
	.byte		0
	.4byte		.L484
	.uleb128	127
	.uleb128	21
	.byte		0x1
	.byte		0x1
	.4byte		.L515
	.4byte		.L516
	.sleb128	4
	.4byte		.L484
	.uleb128	127
	.uleb128	21
	.byte		"arg_block"
	.byte		0
	.4byte		.L502
	.4byte		.L518
	.section	.debug_info,,n
.L519:
	.sleb128	6
	.4byte		.L484
	.uleb128	130
	.uleb128	28
	.byte		"tmp_crc"
	.byte		0
	.4byte		.L520
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	12
.L522:
	.sleb128	6
	.4byte		.L484
	.uleb128	131
	.uleb128	28
	.byte		"tmp_crc16"
	.byte		0
	.4byte		.L510
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	10
.L523:
	.sleb128	6
	.4byte		.L484
	.uleb128	132
	.uleb128	36
	.byte		"blockId"
	.byte		0
	.4byte		.L509
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
.L524:
	.sleb128	3
	.4byte		.L484
	.uleb128	133
	.uleb128	37
	.byte		"crc_type"
	.byte		0
	.4byte		.L525
	.4byte		.L527
.L528:
	.sleb128	3
	.4byte		.L484
	.uleb128	134
	.uleb128	39
	.byte		"blockManagement"
	.byte		0
	.4byte		.L529
	.4byte		.L531
	.section	.debug_info,,n
	.sleb128	0
.L514:
	.section	.debug_info,,n
.L536:
	.sleb128	2
	.4byte		.L533-.L2
	.byte		"NvM_ActBlockNvWritePRAMValidate"
	.byte		0
	.4byte		.L484
	.uleb128	216
	.uleb128	24
	.4byte		.L485
	.byte		0x1
	.byte		0x1
	.4byte		.L534
	.4byte		.L535
	.sleb128	4
	.4byte		.L484
	.uleb128	216
	.uleb128	24
	.byte		"arg_block"
	.byte		0
	.4byte		.L502
	.4byte		.L537
.L538:
	.sleb128	3
	.4byte		.L484
	.uleb128	218
	.uleb128	28
	.byte		"stopProcessing"
	.byte		0
	.4byte		.L485
	.4byte		.L539
.L540:
	.sleb128	3
	.4byte		.L484
	.uleb128	219
	.uleb128	39
	.byte		"blockId"
	.byte		0
	.4byte		.L541
	.4byte		.L542
.L543:
	.sleb128	3
	.4byte		.L484
	.uleb128	221
	.uleb128	48
	.byte		"tmp_crc_state"
	.byte		0
	.4byte		.L544
	.4byte		.L546
	.section	.debug_info,,n
	.sleb128	0
.L533:
	.section	.debug_info,,n
.L551:
	.sleb128	5
	.4byte		.L548-.L2
	.byte		"NvM_ActBlockNvWritePRAMStartWrite"
	.byte		0
	.4byte		.L484
	.uleb128	247
	.uleb128	21
	.byte		0x1
	.byte		0x1
	.4byte		.L549
	.4byte		.L550
	.sleb128	4
	.4byte		.L484
	.uleb128	247
	.uleb128	21
	.byte		"arg_block"
	.byte		0
	.4byte		.L502
	.4byte		.L552
.L553:
	.sleb128	3
	.4byte		.L484
	.uleb128	249
	.uleb128	42
	.byte		"Buf_ptr"
	.byte		0
	.4byte		.L554
	.4byte		.L556
.L557:
	.sleb128	3
	.4byte		.L484
	.uleb128	250
	.uleb128	36
	.byte		"blockId"
	.byte		0
	.4byte		.L509
	.4byte		.L558
.L559:
	.sleb128	3
	.4byte		.L484
	.uleb128	252
	.uleb128	38
	.byte		"prevMemIfDrvStatus"
	.byte		0
	.4byte		.L560
	.4byte		.L562
	.section	.debug_info,,n
	.sleb128	0
.L548:
	.section	.debug_info,,n
.L567:
	.sleb128	2
	.4byte		.L564-.L2
	.byte		"NvM_ActBlockNvWritePRAMInProgress"
	.byte		0
	.4byte		.L484
	.uleb128	289
	.uleb128	24
	.4byte		.L485
	.byte		0x1
	.byte		0x1
	.4byte		.L565
	.4byte		.L566
	.sleb128	4
	.4byte		.L484
	.uleb128	289
	.uleb128	24
	.byte		"arg_block"
	.byte		0
	.4byte		.L502
	.4byte		.L568
.L569:
	.sleb128	3
	.4byte		.L484
	.uleb128	291
	.uleb128	28
	.byte		"stopProcessing"
	.byte		0
	.4byte		.L485
	.4byte		.L570
.L571:
	.sleb128	3
	.4byte		.L484
	.uleb128	292
	.uleb128	40
	.byte		"tmp_result"
	.byte		0
	.4byte		.L572
	.4byte		.L574
.L575:
	.sleb128	3
	.4byte		.L484
	.uleb128	293
	.uleb128	36
	.byte		"blockId"
	.byte		0
	.4byte		.L509
	.4byte		.L576
	.section	.debug_info,,n
	.sleb128	0
.L564:
	.section	.debug_info,,n
.L581:
	.sleb128	2
	.4byte		.L578-.L2
	.byte		"NvM_ActBlockNvWritePRAMProcessErr"
	.byte		0
	.4byte		.L484
	.uleb128	342
	.uleb128	24
	.4byte		.L485
	.byte		0x1
	.byte		0x1
	.4byte		.L579
	.4byte		.L580
	.sleb128	4
	.4byte		.L484
	.uleb128	342
	.uleb128	24
	.byte		"arg_block"
	.byte		0
	.4byte		.L502
	.4byte		.L582
.L583:
	.sleb128	3
	.4byte		.L484
	.uleb128	344
	.uleb128	28
	.byte		"tmp_stop_processing"
	.byte		0
	.4byte		.L485
	.4byte		.L584
	.section	.debug_info,,n
	.sleb128	0
.L578:
	.section	.debug_info,,n
.L589:
	.sleb128	5
	.4byte		.L586-.L2
	.byte		"NvM_ActBlockNvWritePRAMVerification"
	.byte		0
	.4byte		.L484
	.uleb128	413
	.uleb128	21
	.byte		0x1
	.byte		0x1
	.4byte		.L587
	.4byte		.L588
	.sleb128	4
	.4byte		.L484
	.uleb128	413
	.uleb128	21
	.byte		"arg_block"
	.byte		0
	.4byte		.L502
	.4byte		.L590
.L591:
	.sleb128	3
	.4byte		.L484
	.uleb128	415
	.uleb128	36
	.byte		"blockId"
	.byte		0
	.4byte		.L509
	.4byte		.L592
	.section	.debug_info,,n
	.sleb128	0
.L586:
	.section	.debug_info,,n
.L597:
	.sleb128	2
	.4byte		.L594-.L2
	.byte		"NvM_ActBlockNvWritePRAMVerifyInProgress"
	.byte		0
	.4byte		.L484
	.uleb128	467
	.uleb128	24
	.4byte		.L485
	.byte		0x1
	.byte		0x1
	.4byte		.L595
	.4byte		.L596
	.sleb128	4
	.4byte		.L484
	.uleb128	467
	.uleb128	24
	.byte		"arg_block"
	.byte		0
	.4byte		.L502
	.4byte		.L598
.L599:
	.sleb128	3
	.4byte		.L484
	.uleb128	469
	.uleb128	28
	.byte		"stopProcessing"
	.byte		0
	.4byte		.L485
	.4byte		.L600
.L601:
	.sleb128	3
	.4byte		.L484
	.uleb128	470
	.uleb128	40
	.byte		"memIfReturn"
	.byte		0
	.4byte		.L572
	.4byte		.L602
.L603:
	.sleb128	3
	.4byte		.L484
	.uleb128	471
	.uleb128	36
	.byte		"blockId"
	.byte		0
	.4byte		.L509
	.4byte		.L604
	.section	.debug_info,,n
	.sleb128	0
.L594:
	.section	.debug_info,,n
.L605:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L606
	.uleb128	98
	.uleb128	40
	.byte		"NvM_Common"
	.byte		0
	.4byte		.L607
	.section	.debug_info,,n
.L610:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L606
	.uleb128	100
	.uleb128	49
	.byte		"NvM_BlockManagementTable"
	.byte		0
	.4byte		.L611
.L614:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L615
	.uleb128	309
	.uleb128	45
	.byte		"NvM_SubStateDbg"
	.byte		0
	.4byte		.L616
	.0byte		.L614
.L618:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L619
	.uleb128	321
	.uleb128	42
	.byte		"NvM_Current_Block"
	.byte		0
	.4byte		.L503
.L620:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L619
	.uleb128	324
	.uleb128	38
	.byte		"NvM_MemIf_Driver_Status"
	.byte		0
	.4byte		.L560
.L621:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L619
	.uleb128	327
	.uleb128	37
	.byte		"NvM_Data_Crc"
	.byte		0
	.4byte		.L622
.L624:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L619
	.uleb128	329
	.uleb128	41
	.byte		"NvM_CompareData"
	.byte		0
	.4byte		.L625
.L627:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L619
	.uleb128	348
	.uleb128	29
	.byte		"NvM_WriteVerificationFinished"
	.byte		0
	.4byte		.L485
.L628:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L619
	.uleb128	352
	.uleb128	29
	.byte		"NvM_BlockMirrorError"
	.byte		0
	.4byte		.L485
.L629:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L619
	.uleb128	365
	.uleb128	27
	.byte		"NvM_Counter_Wr_Retries"
	.byte		0
	.4byte		.L630
.L632:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L619
	.uleb128	369
	.uleb128	27
	.byte		"NvM_WriteRepeatMirrorCount"
	.byte		0
	.4byte		.L555
	.section	.debug_info,,n
.L504:
	.sleb128	8
	.4byte		.L633
	.uleb128	227
	.uleb128	14
	.4byte		.L634-.L2
	.byte		"NvM_BlockRequestType_Tag"
	.byte		0
	.uleb128	28
	.section	.debug_info,,n
.L314:
	.sleb128	9
	.byte		"service_id"
	.byte		0
	.4byte		.L635
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L315:
	.sleb128	9
	.byte		"block_id"
	.byte		0
	.4byte		.L509
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L316:
	.sleb128	9
	.byte		"ram_block_ptr"
	.byte		0
	.4byte		.L554
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L317:
	.sleb128	9
	.byte		"info"
	.byte		0
	.4byte		.L637
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L634:
.L638:
	.sleb128	8
	.4byte		.L633
	.uleb128	227
	.uleb128	14
	.4byte		.L639-.L2
	.byte		"NvM_NvMemifInfoType_Tag"
	.byte		0
	.uleb128	16
.L309:
	.sleb128	9
	.byte		"state"
	.byte		0
	.4byte		.L640
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L310:
	.sleb128	9
	.byte		"dataset"
	.byte		0
	.4byte		.L510
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L311:
	.sleb128	9
	.byte		"dem_err"
	.byte		0
	.4byte		.L642
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L312:
	.sleb128	9
	.byte		"status_err"
	.byte		0
	.4byte		.L644
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L313:
	.sleb128	9
	.byte		"datasetPointsToRom"
	.byte		0
	.4byte		.L485
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
	.sleb128	0
.L639:
.L626:
	.sleb128	8
	.4byte		.L633
	.uleb128	227
	.uleb128	14
	.4byte		.L645-.L2
	.byte		"NvM_CompareDataType_Tag"
	.byte		0
	.uleb128	16
.L304:
	.sleb128	9
	.byte		"NvM_DataLengthToCompare"
	.byte		0
	.4byte		.L510
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L305:
	.sleb128	9
	.byte		"NvM_DataLengthToRead"
	.byte		0
	.4byte		.L510
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L306:
	.sleb128	9
	.byte		"NvM_ReadDataOffset"
	.byte		0
	.4byte		.L510
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L307:
	.sleb128	9
	.byte		"result"
	.byte		0
	.4byte		.L520
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L308:
	.sleb128	9
	.byte		"ram_buf_ptr"
	.byte		0
	.4byte		.L554
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L645:
.L623:
	.sleb128	8
	.4byte		.L633
	.uleb128	227
	.uleb128	14
	.4byte		.L646-.L2
	.byte		"NvM_DataCrcType_Tag"
	.byte		0
	.uleb128	24
.L297:
	.sleb128	9
	.byte		"result"
	.byte		0
	.4byte		.L520
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L298:
	.sleb128	9
	.byte		"state"
	.byte		0
	.4byte		.L544
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L299:
	.sleb128	9
	.byte		"crcType"
	.byte		0
	.4byte		.L525
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L300:
	.sleb128	9
	.byte		"one_step_data_length"
	.byte		0
	.4byte		.L510
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L301:
	.sleb128	9
	.byte		"data_length_to_process"
	.byte		0
	.4byte		.L510
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L302:
	.sleb128	9
	.byte		"buf_ptr"
	.byte		0
	.4byte		.L554
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L303:
	.sleb128	9
	.byte		"isFirstCrcCall"
	.byte		0
	.4byte		.L485
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L646:
.L613:
	.sleb128	8
	.4byte		.L647
	.uleb128	185
	.uleb128	14
	.4byte		.L648-.L2
	.byte		"NvM_BlockManagementType_Tag"
	.byte		0
	.uleb128	8
.L295:
	.sleb128	9
	.byte		"AdminBlockPtr"
	.byte		0
	.4byte		.L649
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L296:
	.sleb128	9
	.byte		"BlockDescriptorPtr"
	.byte		0
	.4byte		.L653
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L648:
.L609:
	.sleb128	8
	.4byte		.L647
	.uleb128	185
	.uleb128	14
	.4byte		.L658-.L2
	.byte		"NvM_CommonType_Tag"
	.byte		0
	.uleb128	40
.L281:
	.sleb128	9
	.byte		"NvM_CrcNumOfBytes"
	.byte		0
	.4byte		.L510
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L282:
	.sleb128	9
	.byte		"NvM_CompiledConfigId"
	.byte		0
	.4byte		.L510
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L283:
	.sleb128	9
	.byte		"NvM_TotalBlockNb"
	.byte		0
	.4byte		.L509
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L284:
	.sleb128	9
	.byte		"NvM_MultiBlockCallback"
	.byte		0
	.4byte		.L659
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L285:
	.sleb128	9
	.byte		"NvM_BswMBlockModeCallback"
	.byte		0
	.4byte		.L663
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L286:
	.sleb128	9
	.byte		"NvM_BswMJobModeCallback"
	.byte		0
	.4byte		.L667
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L287:
	.sleb128	9
	.byte		"NvM_BlockCRCPtr"
	.byte		0
	.4byte		.L671
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L288:
	.sleb128	9
	.byte		"NvM_RamMirrorPtr"
	.byte		0
	.4byte		.L673
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L289:
	.sleb128	9
	.byte		"NvM_WriteVfyBuffPtr"
	.byte		0
	.4byte		.L673
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L290:
	.sleb128	9
	.byte		"NvM_DatasetSelectionBits"
	.byte		0
	.4byte		.L555
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L291:
	.sleb128	9
	.byte		"NvM_RptMirrorCnt"
	.byte		0
	.4byte		.L555
	.sleb128	2
	.byte		0x23
	.uleb128	33
	.byte		0x1
.L292:
	.sleb128	9
	.byte		"NvM_BswMMultiBlk"
	.byte		0
	.4byte		.L485
	.sleb128	2
	.byte		0x23
	.uleb128	34
	.byte		0x1
.L293:
	.sleb128	9
	.byte		"NvM_DrvModeSwitch"
	.byte		0
	.4byte		.L485
	.sleb128	2
	.byte		0x23
	.uleb128	35
	.byte		0x1
.L294:
	.sleb128	9
	.byte		"NvM_DynConfig"
	.byte		0
	.4byte		.L485
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
	.sleb128	0
.L658:
.L657:
	.sleb128	8
	.4byte		.L647
	.uleb128	185
	.uleb128	14
	.4byte		.L674-.L2
	.byte		"NvM_BlockDescriptorType_Tag"
	.byte		0
	.uleb128	64
.L260:
	.sleb128	9
	.byte		"NvM_BlockCRC"
	.byte		0
	.4byte		.L525
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L261:
	.sleb128	9
	.byte		"CrcFunctionPtr"
	.byte		0
	.4byte		.L675
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L262:
	.sleb128	9
	.byte		"NvM_NvramDeviceId"
	.byte		0
	.4byte		.L555
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L263:
	.sleb128	9
	.byte		"NvM_BlockManagement"
	.byte		0
	.4byte		.L529
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L264:
	.sleb128	9
	.byte		"NvM_NvBlockNum"
	.byte		0
	.4byte		.L555
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L265:
	.sleb128	9
	.byte		"NvM_RomBlockNum"
	.byte		0
	.4byte		.L555
	.sleb128	2
	.byte		0x23
	.uleb128	17
	.byte		0x1
.L266:
	.sleb128	9
	.byte		"NvM_BlockJobPriority"
	.byte		0
	.4byte		.L555
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L267:
	.sleb128	9
	.byte		"NvM_NvBlockLength"
	.byte		0
	.4byte		.L510
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L268:
	.sleb128	9
	.byte		"NvM_NvBlockBaseNumber"
	.byte		0
	.4byte		.L510
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L269:
	.sleb128	9
	.byte		"NvM_NvBlockIdentifier"
	.byte		0
	.4byte		.L509
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L270:
	.sleb128	9
	.byte		"NvM_MaxNoOfReadRetry"
	.byte		0
	.4byte		.L555
	.sleb128	2
	.byte		0x23
	.uleb128	26
	.byte		0x1
.L271:
	.sleb128	9
	.byte		"NvM_MaxNoOfWriteRetry"
	.byte		0
	.4byte		.L555
	.sleb128	2
	.byte		0x23
	.uleb128	27
	.byte		0x1
.L272:
	.sleb128	9
	.byte		"NvM_WriteVerificationDataSize"
	.byte		0
	.4byte		.L510
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L273:
	.sleb128	9
	.byte		"NvM_RamBlockDataAddress"
	.byte		0
	.4byte		.L554
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L274:
	.sleb128	9
	.byte		"NvM_RomBlockDataAddress"
	.byte		0
	.4byte		.L679
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L275:
	.sleb128	9
	.byte		"NvM_InitBlockCallback"
	.byte		0
	.4byte		.L681
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L276:
	.sleb128	9
	.byte		"NvMSingleBlockCallback"
	.byte		0
	.4byte		.L686
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L277:
	.sleb128	9
	.byte		"NvM_ReadRamBlockFromNvCallback"
	.byte		0
	.4byte		.L690
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L278:
	.sleb128	9
	.byte		"NvMWriteRamBlockToNvCallback"
	.byte		0
	.4byte		.L697
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L279:
	.sleb128	9
	.byte		"NvM_Block_DemEventIds"
	.byte		0
	.4byte		.L702
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L280:
	.sleb128	9
	.byte		"NvM_booleanconfig"
	.byte		0
	.4byte		.L510
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
	.sleb128	0
.L674:
.L652:
	.sleb128	8
	.4byte		.L647
	.uleb128	185
	.uleb128	14
	.4byte		.L706-.L2
	.byte		"NvM_AdministrativeBlockType_Tag"
	.byte		0
	.uleb128	8
.L257:
	.sleb128	9
	.byte		"dataset_idx"
	.byte		0
	.4byte		.L555
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L258:
	.sleb128	9
	.byte		"error_status"
	.byte		0
	.4byte		.L644
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L259:
	.sleb128	9
	.byte		"attributes"
	.byte		0
	.4byte		.L707
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L706:
	.section	.debug_info,,n
.L707:
	.sleb128	10
	.4byte		.L647
	.uleb128	185
	.uleb128	14
	.4byte		.L708-.L2
	.uleb128	4
	.section	.debug_info,,n
.L252:
	.sleb128	11
	.byte		"wr_protect"
	.byte		0
	.4byte		.L709
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
	.4byte		.L709
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
	.4byte		.L709
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
	.4byte		.L709
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
	.4byte		.L709
	.uleb128	4
	.byte		0xc
	.byte		0x4
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L708:
.L705:
	.sleb128	8
	.4byte		.L710
	.uleb128	69
	.uleb128	1
	.4byte		.L711-.L2
	.byte		"NvM_DemEventIdType_Tag"
	.byte		0
	.uleb128	16
.L244:
	.sleb128	9
	.byte		"dem_event_e_hardware"
	.byte		0
	.4byte		.L712
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L245:
	.sleb128	9
	.byte		"dem_event_req_failed"
	.byte		0
	.4byte		.L712
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L246:
	.sleb128	9
	.byte		"dem_event_integrity_failed"
	.byte		0
	.4byte		.L712
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L247:
	.sleb128	9
	.byte		"dem_event_lossof_redundancy"
	.byte		0
	.4byte		.L712
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L248:
	.sleb128	9
	.byte		"dem_event_verify_failed"
	.byte		0
	.4byte		.L712
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L249:
	.sleb128	9
	.byte		"dem_event_queue_overflow"
	.byte		0
	.4byte		.L712
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L250:
	.sleb128	9
	.byte		"dem_event_write_protected"
	.byte		0
	.4byte		.L712
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L251:
	.sleb128	9
	.byte		"dem_event_wrong_block_id"
	.byte		0
	.4byte		.L712
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
	.sleb128	0
.L711:
	.section	.debug_info,,n
.L573:
	.sleb128	12
	.4byte		.L713
	.uleb128	115
	.uleb128	14
	.4byte		.L714-.L2
	.byte		"MemIf_JobResultType_Tag"
	.byte		0
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	13
	.byte		"MEMIF_JOB_OK"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"MEMIF_JOB_FAILED"
	.byte		0
	.sleb128	1
	.sleb128	13
	.byte		"MEMIF_JOB_PENDING"
	.byte		0
	.sleb128	2
	.sleb128	13
	.byte		"MEMIF_JOB_CANCELED"
	.byte		0
	.sleb128	3
	.sleb128	13
	.byte		"MEMIF_BLOCK_INCONSISTENT"
	.byte		0
	.sleb128	4
	.sleb128	13
	.byte		"MEMIF_BLOCK_INVALID"
	.byte		0
	.sleb128	5
	.sleb128	0
.L714:
.L561:
	.sleb128	12
	.4byte		.L713
	.uleb128	100
	.uleb128	14
	.4byte		.L715-.L2
	.byte		"MemIf_StatusType_Tag"
	.byte		0
	.uleb128	4
	.sleb128	13
	.byte		"MEMIF_UNINIT"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"MEMIF_IDLE"
	.byte		0
	.sleb128	1
	.sleb128	13
	.byte		"MEMIF_BUSY"
	.byte		0
	.sleb128	2
	.sleb128	13
	.byte		"MEMIF_BUSY_INTERNAL"
	.byte		0
	.sleb128	3
	.sleb128	0
.L715:
.L545:
	.sleb128	12
	.4byte		.L633
	.uleb128	211
	.uleb128	14
	.4byte		.L716-.L2
	.byte		"NvM_CalculationCrcStateType_Tag"
	.byte		0
	.uleb128	4
	.sleb128	13
	.byte		"NVM_CALCULATION_CRC_INIT"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"NVM_CALCULATION_CRC_IN_PROGRESS"
	.byte		0
	.sleb128	1
	.sleb128	13
	.byte		"NVM_CALCULATION_CRC_FINISHED_OK"
	.byte		0
	.sleb128	2
	.sleb128	13
	.byte		"NVM_CALCULATION_CRC_FINISHED_NOK"
	.byte		0
	.sleb128	3
	.sleb128	0
.L716:
.L636:
	.sleb128	12
	.4byte		.L633
	.uleb128	176
	.uleb128	14
	.4byte		.L717-.L2
	.byte		"NvM_ServiceIdType_Tag"
	.byte		0
	.uleb128	4
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
.L717:
.L641:
	.sleb128	12
	.4byte		.L633
	.uleb128	122
	.uleb128	14
	.4byte		.L718-.L2
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
.L718:
.L617:
	.sleb128	12
	.4byte		.L615
	.uleb128	185
	.uleb128	14
	.4byte		.L719-.L2
	.byte		"NvM_SubStateMachineType_Tag"
	.byte		0
	.uleb128	4
	.sleb128	13
	.byte		"NVM_SUBSTATE_READALL_INIT"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"NVM_SUBSTATE_READALL_SELECT_READ_METHOD"
	.byte		0
	.sleb128	1
	.sleb128	13
	.byte		"NVM_SUBSTATE_READALL_EXTENDED_METHOD"
	.byte		0
	.sleb128	2
	.sleb128	13
	.byte		"NVM_SUBSTATE_WRITEALL_INIT"
	.byte		0
	.sleb128	3
	.sleb128	13
	.byte		"NVM_SUBSTATE_WRITEALL_FIND_BLOCK"
	.byte		0
	.sleb128	4
	.sleb128	13
	.byte		"NVM_SUBSTATE_WRITEALL_CANCELED"
	.byte		0
	.sleb128	5
	.sleb128	13
	.byte		"NVM_SUBSTATE_VALIDATEALL_INIT"
	.byte		0
	.sleb128	6
	.sleb128	13
	.byte		"NVM_SUBSTATE_VALIDATEALL_SELECT_BLOCKS"
	.byte		0
	.sleb128	7
	.sleb128	13
	.byte		"NVM_SUBSTATE_VALIDATEALL_OPERATION_DONE"
	.byte		0
	.sleb128	8
	.sleb128	13
	.byte		"NVM_SUBSTATE_SINGLEBLOCK_OPERATION_DONE"
	.byte		0
	.sleb128	9
	.sleb128	13
	.byte		"NVM_SUBSTATE_MULTIBLOCK_OPERATION_DONE"
	.byte		0
	.sleb128	10
	.sleb128	13
	.byte		"NVM_SUBSTATE_READBLOCK_INIT"
	.byte		0
	.sleb128	11
	.sleb128	13
	.byte		"NVM_SUBSTATE_READBLOCK_READING"
	.byte		0
	.sleb128	12
	.sleb128	13
	.byte		"NVM_SUBSTATE_READBLOCK_VALIDATE"
	.byte		0
	.sleb128	13
	.sleb128	13
	.byte		"NVM_SUBSTATE_RESTOREBLOCK_READ_DEFAULTS"
	.byte		0
	.sleb128	14
	.sleb128	13
	.byte		"NVM_SUBSTATE_RESTOREBLOCK_VALIDATE"
	.byte		0
	.sleb128	15
	.sleb128	13
	.byte		"NVM_SUBSTATE_WRITEBLOCK_INIT"
	.byte		0
	.sleb128	16
	.sleb128	13
	.byte		"NVM_SUBSTATE_WRITEBLOCK_WRITING"
	.byte		0
	.sleb128	17
	.sleb128	13
	.byte		"NVM_SUBSTATE_ERASEBLOCK_INIT"
	.byte		0
	.sleb128	18
	.sleb128	13
	.byte		"NVM_SUBSTATE_ERASEBLOCK_START"
	.byte		0
	.sleb128	19
	.sleb128	13
	.byte		"NVM_SUBSTATE_ERASEBLOCK_INPROGRESS"
	.byte		0
	.sleb128	20
	.sleb128	13
	.byte		"NVM_SUBSTATE_INVALIDATEBLOCK_INIT"
	.byte		0
	.sleb128	21
	.sleb128	13
	.byte		"NVM_SUBSTATE_INVALIDATEBLOCK_STARTPROCESS"
	.byte		0
	.sleb128	22
	.sleb128	13
	.byte		"NVM_SUBSTATE_INVALIDATEBLOCK_OPN_IS_IN_PROGRESS"
	.byte		0
	.sleb128	23
	.sleb128	13
	.byte		"NVM_SUBSTATE_READALL_CHECK_DATA_VALID"
	.byte		0
	.sleb128	24
	.sleb128	13
	.byte		"NVM_SUBSTATE_READALL_VALIDATE_DEFAULTS"
	.byte		0
	.sleb128	25
	.sleb128	13
	.byte		"NVM_SUBSTATE_READALL_READ_CONFIGID"
	.byte		0
	.sleb128	26
	.sleb128	13
	.byte		"NVM_SUBSTATE_READALL_STANDARD_METHOD"
	.byte		0
	.sleb128	27
	.sleb128	13
	.byte		"NVM_SUBSTATE_READALL_RESTORE"
	.byte		0
	.sleb128	28
	.sleb128	13
	.byte		"NVM_SUBSTATE_READALL_RESTORE_VALIDATE"
	.byte		0
	.sleb128	29
	.sleb128	13
	.byte		"NVM_SUBSTATE_WRITEALL_WRITING"
	.byte		0
	.sleb128	30
	.sleb128	13
	.byte		"NVM_SUBSTATE_READ_PRAM_BLOCK_INIT"
	.byte		0
	.sleb128	31
	.sleb128	13
	.byte		"NVM_SUBSTATE_READ_PRAM_BLOCK_READING"
	.byte		0
	.sleb128	32
	.sleb128	13
	.byte		"NVM_SUBSTATE_READ_PRAM_BLOCK_VALIDATE"
	.byte		0
	.sleb128	33
	.sleb128	13
	.byte		"NVM_SUBSTATE_RESTORE_PRAM_BLOCK_READ_DEFAULTS"
	.byte		0
	.sleb128	34
	.sleb128	13
	.byte		"NVM_SUBSTATE_RESTORE_PRAM_BLOCK_VALIDATE"
	.byte		0
	.sleb128	35
	.sleb128	13
	.byte		"NVM_SUBSTATE_WRITE_PRAM_BLOCK_INIT"
	.byte		0
	.sleb128	36
	.sleb128	13
	.byte		"NVM_SUBSTATE_WRITE_PRAM_BLOCK_WRITING"
	.byte		0
	.sleb128	37
	.sleb128	13
	.byte		"NVM_SUBSTATE_VALIDATEALL_VALIDATE"
	.byte		0
	.sleb128	38
	.sleb128	13
	.byte		"NVM_SUBSTATE_SERVICE_NB"
	.byte		0
	.sleb128	39
	.sleb128	0
.L719:
.L530:
	.sleb128	12
	.4byte		.L647
	.uleb128	185
	.uleb128	14
	.4byte		.L720-.L2
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
.L720:
.L526:
	.sleb128	12
	.4byte		.L647
	.uleb128	172
	.uleb128	14
	.4byte		.L721-.L2
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
.L721:
.L643:
	.sleb128	12
	.4byte		.L647
	.uleb128	153
	.uleb128	14
	.4byte		.L722-.L2
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
.L722:
	.section	.debug_info,,n
.L486:
	.sleb128	14
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L485:
	.sleb128	15
	.byte		"boolean"
	.byte		0
	.4byte		.L486
.L503:
	.sleb128	15
	.byte		"NvM_BlockRequestType"
	.byte		0
	.4byte		.L504
	.section	.debug_info,,n
.L502:
	.sleb128	16
	.4byte		.L503
.L511:
	.sleb128	14
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L510:
	.sleb128	15
	.byte		"uint16"
	.byte		0
	.4byte		.L511
.L509:
	.sleb128	15
	.byte		"NvM_BlockIdType"
	.byte		0
	.4byte		.L510
.L521:
	.sleb128	14
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L520:
	.sleb128	15
	.byte		"uint32"
	.byte		0
	.4byte		.L521
.L525:
	.sleb128	15
	.byte		"NvM_BlockCrcType"
	.byte		0
	.4byte		.L526
.L529:
	.sleb128	15
	.byte		"NvM_BlockMngmtType"
	.byte		0
	.4byte		.L530
	.section	.debug_info,,n
.L541:
	.sleb128	17
	.4byte		.L509
.L544:
	.sleb128	15
	.byte		"NvM_CalculationCrcStateType"
	.byte		0
	.4byte		.L545
.L555:
	.sleb128	15
	.byte		"uint8"
	.byte		0
	.4byte		.L486
.L554:
	.sleb128	16
	.4byte		.L555
.L560:
	.sleb128	15
	.byte		"MemIf_StatusType"
	.byte		0
	.4byte		.L561
.L572:
	.sleb128	15
	.byte		"MemIf_JobResultType"
	.byte		0
	.4byte		.L573
.L608:
	.sleb128	15
	.byte		"NvM_CommonType"
	.byte		0
	.4byte		.L609
.L607:
	.sleb128	17
	.4byte		.L608
.L612:
	.sleb128	15
	.byte		"NvM_BlockManagementType"
	.byte		0
	.4byte		.L613
.L611:
	.sleb128	17
	.4byte		.L612
.L616:
	.sleb128	15
	.byte		"NvM_SubStateMachineType"
	.byte		0
	.4byte		.L617
.L622:
	.sleb128	15
	.byte		"NvM_DataCrcType"
	.byte		0
	.4byte		.L623
.L625:
	.sleb128	15
	.byte		"NvM_CompareDataType"
	.byte		0
	.4byte		.L626
	.section	.debug_info,,n
.L630:
	.sleb128	18
	.4byte		.L631-.L2
	.4byte		.L555
	.section	.debug_info,,n
	.sleb128	19
	.uleb128	1
	.sleb128	0
.L631:
.L635:
	.sleb128	15
	.byte		"NvM_ServiceIdType"
	.byte		0
	.4byte		.L636
.L637:
	.sleb128	15
	.byte		"NvM_NvMemifInfoType"
	.byte		0
	.4byte		.L638
.L640:
	.sleb128	15
	.byte		"NvM_BlockMemifDriverStateType"
	.byte		0
	.4byte		.L641
.L642:
	.sleb128	15
	.byte		"NvM_DemEventIdNumberType"
	.byte		0
	.4byte		.L643
.L644:
	.sleb128	15
	.byte		"NvM_RequestResultType"
	.byte		0
	.4byte		.L555
.L651:
	.sleb128	15
	.byte		"NvM_AdministrativeBlockType"
	.byte		0
	.4byte		.L652
.L650:
	.sleb128	16
	.4byte		.L651
.L649:
	.sleb128	17
	.4byte		.L650
.L656:
	.sleb128	15
	.byte		"NvM_BlockDescriptorType"
	.byte		0
	.4byte		.L657
.L655:
	.sleb128	17
	.4byte		.L656
.L654:
	.sleb128	16
	.4byte		.L655
.L653:
	.sleb128	17
	.4byte		.L654
	.section	.debug_info,,n
.L661:
	.sleb128	20
	.4byte		.L662-.L2
	.byte		0x1
	.section	.debug_info,,n
	.sleb128	21
	.4byte		.L555
	.sleb128	21
	.4byte		.L644
	.sleb128	0
.L662:
.L660:
	.sleb128	16
	.4byte		.L661
.L659:
	.sleb128	15
	.byte		"NvM_MultiBlockCallbackFunctionType"
	.byte		0
	.4byte		.L660
.L665:
	.sleb128	20
	.4byte		.L666-.L2
	.byte		0x1
	.sleb128	21
	.4byte		.L509
	.sleb128	21
	.4byte		.L644
	.sleb128	0
.L666:
.L664:
	.sleb128	16
	.4byte		.L665
.L663:
	.sleb128	15
	.byte		"NvM_BswM_NvM_CurrentBlockModeFunctionType"
	.byte		0
	.4byte		.L664
.L669:
	.sleb128	20
	.4byte		.L670-.L2
	.byte		0x1
	.sleb128	21
	.4byte		.L555
	.sleb128	21
	.4byte		.L644
	.sleb128	0
.L670:
.L668:
	.sleb128	16
	.4byte		.L669
.L667:
	.sleb128	15
	.byte		"NvM_BswM_NvM_CurrentJobModeFunctionType"
	.byte		0
	.4byte		.L668
.L672:
	.sleb128	16
	.4byte		.L520
.L671:
	.sleb128	17
	.4byte		.L672
.L673:
	.sleb128	17
	.4byte		.L554
	.section	.debug_info,,n
.L677:
	.sleb128	22
	.4byte		.L678-.L2
	.4byte		.L520
	.byte		0x1
.L680:
	.sleb128	17
	.4byte		.L555
.L679:
	.sleb128	16
	.4byte		.L680
	.sleb128	21
	.4byte		.L679
	.sleb128	21
	.4byte		.L520
	.sleb128	21
	.4byte		.L520
	.sleb128	21
	.4byte		.L485
	.sleb128	0
.L678:
.L676:
	.sleb128	16
	.4byte		.L677
.L675:
	.sleb128	15
	.byte		"NVM_CRC32_FUNC"
	.byte		0
	.4byte		.L676
.L685:
	.sleb128	15
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L555
.L683:
	.sleb128	22
	.4byte		.L684-.L2
	.4byte		.L685
	.byte		0x1
	.sleb128	0
.L684:
.L682:
	.sleb128	16
	.4byte		.L683
.L681:
	.sleb128	15
	.byte		"NvM_InitBlockCallbackPtrType"
	.byte		0
	.4byte		.L682
.L688:
	.sleb128	22
	.4byte		.L689-.L2
	.4byte		.L685
	.byte		0x1
	.sleb128	21
	.4byte		.L555
	.sleb128	21
	.4byte		.L644
	.sleb128	0
.L689:
.L687:
	.sleb128	16
	.4byte		.L688
.L686:
	.sleb128	15
	.byte		"NvM_SingleBlockCallbackFunctionType"
	.byte		0
	.4byte		.L687
.L692:
	.sleb128	22
	.4byte		.L693-.L2
	.4byte		.L685
	.byte		0x1
	.section	.debug_info,,n
.L696:
	.sleb128	23
	.byte		"void"
	.byte		0
	.byte		0x0
.L695:
	.sleb128	17
	.4byte		.L696
.L694:
	.sleb128	16
	.4byte		.L695
	.sleb128	21
	.4byte		.L694
	.sleb128	0
.L693:
.L691:
	.sleb128	16
	.4byte		.L692
.L690:
	.sleb128	15
	.byte		"NvM_RamMirrorOperationReadCallBackType"
	.byte		0
	.4byte		.L691
.L699:
	.sleb128	22
	.4byte		.L700-.L2
	.4byte		.L685
	.byte		0x1
.L701:
	.sleb128	16
	.4byte		.L696
	.sleb128	21
	.4byte		.L701
	.sleb128	0
.L700:
.L698:
	.sleb128	16
	.4byte		.L699
.L697:
	.sleb128	15
	.byte		"NvM_RamMirrorOperationWriteCallBackType"
	.byte		0
	.4byte		.L698
.L704:
	.sleb128	15
	.byte		"NvM_DemEventIdType"
	.byte		0
	.4byte		.L705
.L703:
	.sleb128	17
	.4byte		.L704
.L702:
	.sleb128	16
	.4byte		.L703
.L709:
	.sleb128	14
	.byte		"unsigned int"
	.byte		0
	.byte		0x7
	.byte		0x4
.L712:
	.sleb128	15
	.byte		"Dem_EventIdType"
	.byte		0
	.4byte		.L510
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L489:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locend
.L496:
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),31
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),31
	.d2locend
.L505:
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),3
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),31
	.d2locend
.L507:
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo12),3
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo14),3
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo16),3
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo17),3
	.d2locend
.L512:
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo9),0
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo20),0
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo22),0
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo12),0
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo25),0
	.d2locreg	%offsetof(.Llo26), %offsetof(.Llo14),0
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo28),0
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo30),0
	.d2locreg	%offsetof(.Llo31), %offsetof(.Llo10),0
	.d2locend
.L518:
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo33),3
	.d2locreg	%offsetof(.Llo34), %offsetof(.Llo35),30
	.d2locend
.L527:
	.d2locreg	%offsetof(.Llo36), %offsetof(.Llo37),31
	.d2locend
.L531:
	.d2locreg	%offsetof(.Llo38), %offsetof(.Llo39),0
	.d2locreg	%offsetof(.Llo40), %offsetof(.Llo41),0
	.d2locreg	%offsetof(.Llo42), %offsetof(.Llo43),0
	.d2locreg	%offsetof(.Llo44), %offsetof(.Llo45),0
	.d2locreg	%offsetof(.Llo46), %offsetof(.Llo47),0
	.d2locreg	%offsetof(.Llo48), %offsetof(.Llo49),0
	.d2locreg	%offsetof(.Llo50), %offsetof(.Llo51),0
	.d2locreg	%offsetof(.Llo52), %offsetof(.Llo53),0
	.d2locreg	%offsetof(.Llo54), %offsetof(.Llo55),0
	.d2locreg	%offsetof(.Llo56), %offsetof(.Llo57),0
	.d2locreg	%offsetof(.Llo58), %offsetof(.Llo59),0
	.d2locreg	%offsetof(.Llo60), %offsetof(.Llo61),0
	.d2locreg	%offsetof(.Llo62), %offsetof(.Llo63),0
	.d2locreg	%offsetof(.Llo64), %offsetof(.Llo65),0
	.d2locend
.L537:
	.d2locreg	%offsetof(.Llo66), %offsetof(.Llo67),3
	.d2locreg	%offsetof(.Llo68), %offsetof(.Llo69),0
	.d2locreg	%offsetof(.Llo70), %offsetof(.Llo71),31
	.d2locreg	%offsetof(.Llo72), %offsetof(.Llo73),30
	.d2locend
.L539:
	.d2locreg	%offsetof(.Llo74), %offsetof(.Llo73),30
	.d2locend
.L542:
	.d2locreg	%offsetof(.Llo75), %offsetof(.Llo69),29
	.d2locreg	%offsetof(.Llo76), %offsetof(.Llo77),29
	.d2locend
.L546:
	.d2locreg	%offsetof(.Llo78), %offsetof(.Llo69),3
	.d2locreg	%offsetof(.Llo70), %offsetof(.Llo79),4
	.d2locreg	%offsetof(.Llo80), %offsetof(.Llo71),4
	.d2locend
.L552:
	.d2locreg	%offsetof(.Llo81), %offsetof(.Llo82),3
	.d2locreg	%offsetof(.Llo83), %offsetof(.Llo84),31
	.d2locend
.L556:
	.d2locreg	%offsetof(.Llo85), %offsetof(.Llo86),4
	.d2locreg	%offsetof(.Llo87), %offsetof(.Llo88),4
	.d2locend
.L558:
	.d2locreg	%offsetof(.Llo89), %offsetof(.Llo90),0
	.d2locreg	%offsetof(.Llo91), %offsetof(.Llo92),0
	.d2locreg	%offsetof(.Llo93), %offsetof(.Llo94),0
	.d2locreg	%offsetof(.Llo95), %offsetof(.Llo84),0
	.d2locend
.L562:
	.d2locreg	%offsetof(.Llo96), %offsetof(.Llo84),30
	.d2locend
.L568:
	.d2locreg	%offsetof(.Llo97), %offsetof(.Llo98),3
	.d2locreg	%offsetof(.Llo99), %offsetof(.Llo100),31
	.d2locend
.L570:
	.d2locreg	%offsetof(.Llo101), %offsetof(.Llo102),30
	.d2locreg	%offsetof(.Llo103), %offsetof(.Llo104),30
	.d2locend
.L574:
	.d2locreg	%offsetof(.Llo105), %offsetof(.Llo106),0
	.d2locreg	%offsetof(.Llo107), %offsetof(.Llo108),0
	.d2locreg	%offsetof(.Llo109), %offsetof(.Llo110),0
	.d2locreg	%offsetof(.Llo111), %offsetof(.Llo112),0
	.d2locreg	%offsetof(.Llo113), %offsetof(.Llo114),0
	.d2locreg	%offsetof(.Llo115), %offsetof(.Llo102),0
	.d2locreg	%offsetof(.Llo116), %offsetof(.Llo117),0
	.d2locreg	%offsetof(.Llo118), %offsetof(.Llo119),0
	.d2locreg	%offsetof(.Llo120), %offsetof(.Llo100),0
	.d2locend
.L576:
	.d2locreg	%offsetof(.Llo121), %offsetof(.Llo122),29
	.d2locreg	%offsetof(.Llo123), %offsetof(.Llo100),29
	.d2locend
.L582:
	.d2locreg	%offsetof(.Llo124), %offsetof(.Llo125),3
	.d2locreg	%offsetof(.Llo126), %offsetof(.Llo127),31
	.d2locend
.L584:
	.d2locreg	%offsetof(.Llo124), %offsetof(.Llo128),30
	.d2locreg	%offsetof(.Llo129), %offsetof(.Llo130),30
	.d2locreg	%offsetof(.Llo127), %offsetof(.Llo131),30
	.d2locend
.L590:
	.d2locreg	%offsetof(.Llo132), %offsetof(.Llo133),3
	.d2locreg	%offsetof(.Llo134), %offsetof(.Llo135),31
	.d2locend
.L592:
	.d2locreg	%offsetof(.Llo132), %offsetof(.Llo136),30
	.d2locreg	%offsetof(.Llo137), %offsetof(.Llo138),30
	.d2locend
.L598:
	.d2locreg	%offsetof(.Llo139), %offsetof(.Llo140),3
	.d2locreg	%offsetof(.Llo141), %offsetof(.Llo142),31
	.d2locend
.L600:
	.d2locreg	%offsetof(.Llo143), %offsetof(.Llo144),30
	.d2locreg	%offsetof(.Llo145), %offsetof(.Llo146),30
	.d2locend
.L602:
	.d2locreg	%offsetof(.Llo147), %offsetof(.Llo148),0
	.d2locreg	%offsetof(.Llo149), %offsetof(.Llo150),0
	.d2locreg	%offsetof(.Llo151), %offsetof(.Llo152),0
	.d2locreg	%offsetof(.Llo153), %offsetof(.Llo154),0
	.d2locreg	%offsetof(.Llo155), %offsetof(.Llo156),0
	.d2locreg	%offsetof(.Llo157), %offsetof(.Llo144),0
	.d2locreg	%offsetof(.Llo158), %offsetof(.Llo159),0
	.d2locreg	%offsetof(.Llo160), %offsetof(.Llo161),0
	.d2locreg	%offsetof(.Llo162), %offsetof(.Llo142),0
	.d2locend
.L604:
	.d2locreg	%offsetof(.Llo163), %offsetof(.Llo164),29
	.d2locreg	%offsetof(.Llo165), %offsetof(.Llo142),29
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "NvM_ActBlockNvWritePRAMVerifyInProgress"
	.wrcm.nstrlist "calls", "Ea_GetJobResult"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "NvM_ActBlockNvWritePRAMVerification"
	.wrcm.nstrlist "calls", "Ea_Read","NvM_IsDem_EventIdConfigured"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "NvM_ActBlockNvWritePRAMProcessErr"
	.wrcm.nstrlist "calls", "NvM_IsDem_EventIdConfigured"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "NvM_ActBlockNvWritePRAMInProgress"
	.wrcm.nstrlist "calls", "Ea_GetJobResult"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "NvM_ActBlockNvWritePRAMStartWrite"
	.wrcm.nstrlist "calls", "Ea_Write"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "NvM_ActBlockNvWritePRAMValidate"
	.wrcm.nstrlist "calls", "NvM_ValidateCrc"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "NvM_ActBlockNvWritePRAMInit"
	.wrcm.nstrlist "calls", "NvM_MemCopy"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "NvM_ActBlockNvWritePRAMPreInit"
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nstrlist "calls", "NvM_CopyRamToRamMirror"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "NvM_ActSubStateWritePRAMBlockWriting"
	.wrcm.nstrlist "calls", "NvM_Call_Dem_ReportErrorStatus","NvM_ProcessPRAMWritingNvBlockStates"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "NvM_ActSubStateWritePRAMBlockInit"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\NvM_WriteServices.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\NvM_WriteServices.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\NvM_WriteServices.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\NvM_WriteServices.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\NvM_WriteServices.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\NvM_WriteServices.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\MEM\NvM\ssc\make\..\src\NvM_WriteServices.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
