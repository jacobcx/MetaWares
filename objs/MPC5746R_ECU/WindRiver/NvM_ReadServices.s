#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"NvM_ReadServices.c"
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
# FUNC(boolean,NVM_CODE) NvM_ActSubStateReadPRAMBlockInit (void)
	.align		2
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MEM\\NvM\\ssc\\make\\..\\src\\NvM_ReadServices.c"
        .d2line         24,24
#$$ld
.L523:

#$$bf	NvM_ActSubStateReadPRAMBlockInit,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,lr
	.globl		NvM_ActSubStateReadPRAMBlockInit
	.d2_cfa_start __cie
NvM_ActSubStateReadPRAMBlockInit:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     VAR(boolean,AUTOMATIC) stop_processing=FALSE;
	.d2line		26
.Llo1:
	diab.li		r5,0		# stop_processing=r5
# 
#     NvM_Current_Block.info.state=NVM_BLOCK_NV_READ_PRAM_INIT;
	.d2line		28
.Llo2:
	diab.li		r3,17
	lis		r4,(NvM_Current_Block+12)@ha
	stw		r3,(NvM_Current_Block+12)@l(r4)
#     Set_Sub_State_Machine(NVM_SUBSTATE_READ_PRAM_BLOCK_READING);
	.d2line		29
	diab.li		r3,32
	lis		r4,NvM_SubStateDbg@ha
	e_add16i		r4,r4,NvM_SubStateDbg@l
	stw		r3,0(r4)
# 
#     return stop_processing;
	.d2line		31
	diab.li		r3,0
# }
	.d2line		32
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L524:
	.type		NvM_ActSubStateReadPRAMBlockInit,@function
	.size		NvM_ActSubStateReadPRAMBlockInit,.-NvM_ActSubStateReadPRAMBlockInit
# Number of nodes = 15

# Allocations for NvM_ActSubStateReadPRAMBlockInit
#	?a4		stop_processing
# FUNC(boolean,NVM_CODE) NvM_ActBlockNvReadPRAMInit(void)
	.align		2
	.section	.text_vle
        .d2line         36,24
#$$ld
.L533:

#$$bf	NvM_ActBlockNvReadPRAMInit,interprocedural,rasave,nostackparams
	.globl		NvM_ActBlockNvReadPRAMInit
	.d2_cfa_start __cie
NvM_ActBlockNvReadPRAMInit:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
.Llo5:
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)		# blockManagement=r0
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     VAR(boolean,AUTOMATIC) stopProcessing = FALSE;
	.d2line		38
	diab.li		r31,0		# stopProcessing=r31
#     VAR(NvM_BlockIdType,AUTOMATIC) blockId = NvM_Current_Block.block_id;
	.d2line		39
.Llo3:
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r0,(NvM_Current_Block+4)@l(r3)		# blockManagement=r0
	sth		r0,8(r1)		# blockManagement=r0
	.d2line		40
	rlwinm		r0,r0,6,10,25		# blockManagement=r0 blockManagement=r0
#     VAR(NvM_BlockMngmtType,AUTOMATIC) blockManagement =
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	se_add		r3,r0		# blockManagement=r0
	lwz		r0,12(r3)		# blockManagement=r0
	mr		r0,r0		# blockManagement=r0 blockManagement=r0
#             NvM_BlockManagementTable.BlockDescriptorPtr[blockId].NvM_BlockManagement;
# 
#     /*Clear errors, reset counters*/
#     NvM_ReadRetryCounter = ((uint8)0U);
	.d2line		44
	diab.li		r5,0
	lis		r3,NvM_ReadRetryCounter@ha
	e_add16i		r3,r3,NvM_ReadRetryCounter@l
	stb		r5,0(r3)
#     NvM_Current_Block.info.status_err = (NvM_RequestResultType)NVM_REQ_PENDING;
	.d2line		45
	diab.li		r4,2
	lis		r3,(NvM_Current_Block+24)@ha
	stb		r4,(NvM_Current_Block+24)@l(r3)
#     NvM_Current_Block.info.dem_err = NVM_DEM_EVENT_E_NO_ERROR;
	.d2line		46
	lis		r3,(NvM_Current_Block+20)@ha
	stw		r5,(NvM_Current_Block+20)@l(r3)
# 
#     switch(blockManagement)
	.d2line		48
	mr.		r6,r0		# blockManagement=r6 blockManagement=?a6
	bc		1,2,.L344	# eq
.Llo6:
	se_cmpi		r6,1
	bc		1,2,.L342	# eq
	se_cmpi		r6,2
	bc		1,2,.L345	# eq
	b		.L343
.L342:
#     {
#         case NVM_BLOCK_REDUNDANT:
#         {
#             NvM_Current_Block.info.dataset = NVM_REDUNDANT_FIRST_BLOCK;
	.d2line		52
	diab.li		r0,0		# blockManagement=r0
.Llo7:
	lis		r3,(NvM_Current_Block+16)@ha
	sth		r0,(NvM_Current_Block+16)@l(r3)		# blockManagement=r0
#             NvM_Current_Block.info.state = NVM_BLOCK_NV_READ_PRAM_START;
	.d2line		53
	diab.li		r0,18		# blockManagement=r0
	lis		r3,(NvM_Current_Block+12)@ha
	stw		r0,(NvM_Current_Block+12)@l(r3)		# blockManagement=r0
	b		.L343
.L344:
#         }
#         break;
# 
#         case NVM_BLOCK_NATIVE:
#         {
#             NvM_Current_Block.info.state = NVM_BLOCK_NV_READ_PRAM_START;
	.d2line		59
.Llo8:
	diab.li		r0,18		# blockManagement=r0
.Llo9:
	lis		r3,(NvM_Current_Block+12)@ha
	stw		r0,(NvM_Current_Block+12)@l(r3)		# blockManagement=r0
	b		.L343
.L345:
#         }
#         break;
# 
# #if ((NVM_API_CONFIG_CLASS == NVM_API_CONFIG_CLASS_2) || (NVM_API_CONFIG_CLASS == NVM_API_CONFIG_CLASS_3))
#         case NVM_BLOCK_DATASET:
#         {
#             /* Set to the default value */
#             NvM_Current_Block.info.datasetPointsToRom = FALSE;
	.d2line		67
.Llo10:
	diab.li		r0,0		# blockManagement=r0
.Llo11:
	lis		r3,(NvM_Current_Block+25)@ha
	stb		r0,(NvM_Current_Block+25)@l(r3)		# blockManagement=r0
# 
#             /* read data set index to temporary location [DD-NVM00769-MGC01-V1] */
#             NvM_Current_Block.info.dataset = Get_Adm_Block_Dataset_Idx_U16(blockId);
	.d2line		70
	lis		r3,NvM_BlockManagementTable@ha
	lwz		r3,NvM_BlockManagementTable@l(r3)
	lhz		r4,8(r1)
	rlwinm		r0,r4,3,13,28		# blockManagement=r0
	lbzx		r0,r3,r0		# blockManagement=r0
	lis		r3,(NvM_Current_Block+16)@ha
	sth		r0,(NvM_Current_Block+16)@l(r3)		# blockManagement=r0
# 
#             /* If dataset points to a NV block it should continue in the same state as a redundant or native block */
#             if(Is_Dataset_Points_To_Nv(blockId, NvM_Current_Block.info.dataset))
	.d2line		73
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	rlwinm		r4,r4,6,10,25
	se_add		r4,r3
	lbz		r3,16(r4)
	se_cmp		r0,r3		# blockManagement=r0
	bc		0,0,.L346	# ge
#             {
#                 NvM_Current_Block.info.state = NVM_BLOCK_NV_READ_PRAM_START;
	.d2line		75
.Llo12:
	diab.li		r0,18		# blockManagement=r0
.Llo13:
	lis		r3,(NvM_Current_Block+12)@ha
	stw		r0,(NvM_Current_Block+12)@l(r3)		# blockManagement=r0
	b		.L343
.L346:
#             }
#             /*Check that the dataset points to ROM block*/
#             /* [DD-NVM00146-MGC01-V1] [DD-NVM00376-MGC01-V1] */
#             else if(Is_Dataset_Points_To_Rom(blockId, NvM_Current_Block.info.dataset))
	.d2line		79
.Llo14:
	lis		r3,(NvM_Current_Block+16)@ha
	lhz		r0,(NvM_Current_Block+16)@l(r3)		# blockManagement=r0
.Llo15:
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r4,(NvM_BlockManagementTable+4)@l(r3)
	lhz		r3,8(r1)
	rlwinm		r3,r3,6,10,25
	se_add		r3,r4
	lbz		r3,16(r3)
	se_cmp		r0,r3		# blockManagement=r0
	bc		1,0,.L348	# lt
.Llo16:
	lis		r3,(NvM_Current_Block+16)@ha
	lhz		r0,(NvM_Current_Block+16)@l(r3)		# blockManagement=r0
.Llo17:
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r4,(NvM_BlockManagementTable+4)@l(r3)
	lhz		r3,8(r1)
	rlwinm		r3,r3,6,10,25
	se_add		r3,r4
	lbz		r4,16(r3)
	lbz		r3,17(r3)
	se_add		r4,r3
	rlwinm		r3,r4,0,16,31
	se_cmp		r0,r3		# blockManagement=r0
	bc		0,0,.L348	# ge
	.section	.text_vle
.L546:
#             {
#                 P2CONST(uint8, AUTOMATIC, NVM_CONST) romDataAddress;
#                 VAR(uint16,AUTOMATIC) count = 0U;
	.d2line		82
.Llo18:
	diab.li		r0,0		# count=r0
# 
#                 NvM_Current_Block.info.datasetPointsToRom = TRUE;
	.d2line		84
	diab.li		r0,1		# count=r0
.Llo25:
	lis		r3,(NvM_Current_Block+25)@ha
	stb		r0,(NvM_Current_Block+25)@l(r3)		# count=r0
# 
#                 /*calculate ROM block dataset offset*/
#                 NvM_Current_Block.info.dataset -= Get_Conf_Block_Dataset_Nv_Block_Nb(blockId);
	.d2line		87
	lis		r3,(NvM_Current_Block+16)@ha
	lhz		r0,(NvM_Current_Block+16)@l(r3)		# count=r0
	lis		r4,(NvM_BlockManagementTable+4)@ha
	lwz		r5,(NvM_BlockManagementTable+4)@l(r4)
	lhz		r6,8(r1)
	rlwinm		r6,r6,6,10,25
	se_add		r5,r6
	lbz		r5,16(r5)
	subf		r5,r5,r0		# count=r0
	sth		r5,(NvM_Current_Block+16)@l(r3)
# 
#                 /* ROM can contain multiple datasets so this line shifts the address of the ROM to the source */
#                 romDataAddress = Get_Conf_Rom_Block_Addr(blockId)
	.d2line		90
	lwz		r0,(NvM_BlockManagementTable+4)@l(r4)		# count=r0
	se_add		r6,r0		# count=r0
	lhz		r0,60(r6)		# count=r0
	rlwinm		r0,r0,0,22,22		# count=r0 count=r0
	cmpi		0,0,r0,512		# count=r0
	diab.li		r3,2
	isel		r3,r3,r0,2		# count=r0
.L360:
.Llo26:
	diab.li		r0,0		# count=r0
.Llo27:
	isel		r0,r3,r0,2		# count=r0 count=r0
.L361:
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r4,(NvM_BlockManagementTable+4)@l(r3)
	lhz		r3,8(r1)
	rlwinm		r3,r3,6,10,25
	se_add		r3,r4
	lwz		r30,36(r3)
	lis		r4,(NvM_Current_Block+16)@ha
	lhz		r5,(NvM_Current_Block+16)@l(r4)
	lhz		r4,20(r3)
	se_add		r4,r0		# count=r0
	rlwinm		r0,r4,0,16,31		# count=r0
	mullw		r5,r5,r0		# count=r0
	se_add		r30,r5
.Llo21:
	mr		r0,r30		# romDataAddress=r0 romDataAddress=r30
#                         + ((uint32) ((NvM_Current_Block.info.dataset) * Get_Conf_Block_Data_Length(blockId)));
# 
#                 if(Is_Conf_Block_Static_BlockIdCheck(blockId)
	.d2line		93
.Llo28:
	lhz		r0,60(r3)		# count=r0
.Llo29:
	rlwinm		r0,r0,0,22,22		# count=r0 count=r0
	cmpi		0,0,r0,512		# count=r0
	bc		1,2,.L362	# eq
.Llo30:
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)		# count=r0
.Llo31:
	lhz		r3,8(r1)
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0		# count=r0
	lhz		r0,60(r3)		# count=r0
	rlwinm		r0,r0,0,25,25		# count=r0 count=r0
	cmpi		0,0,r0,64		# count=r0
	bc		1,2,.L362	# eq
.Llo32:
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)		# count=r0
.Llo33:
	lhz		r3,8(r1)
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0		# count=r0
	lhz		r0,60(r3)		# count=r0
	rlwinm		r0,r0,0,31,31		# count=r0 count=r0
	se_cmpi		r0,1		# count=r0
	bc		0,2,.L349	# ne
.L362:
	.section	.text_vle
.L557:
#                         || Is_Conf_Block_Use_Synchmechanism(blockId)
#                         || Is_Conf_Block_Use_Crc(blockId))
#                 {
#                     P2VAR(uint8,AUTOMATIC,NVM_APPL_DATA) Buf_ptr = NvM_Common.NvM_RamMirrorPtr;
	.d2line		97
.Llo34:
	lis		r3,(NvM_Common+24)@ha
	lwz		r29,(NvM_Common+24)@l(r3)
.Llo41:
	mr		r29,r29		# Buf_ptr=r29 Buf_ptr=r29
# 
#                     if(Is_Conf_Block_Static_BlockIdCheck(blockId))
	.d2line		99
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)		# count=r0
.Llo35:
	lhz		r3,8(r1)
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0		# count=r0
	lhz		r0,60(r3)		# count=r0
	rlwinm		r0,r0,0,22,22		# count=r0 count=r0
	cmpi		0,0,r0,512		# count=r0
	bc		0,2,.L350	# ne
#                     {
#                         /* Fill the RamMirror with Header if exist */
#                         NvM_MemCopy(Buf_ptr,(P2VAR(uint8,AUTOMATIC,NVM_APPL_DATA))&blockId,NVM_BLOCK_HEADER_SIZE);
	.d2line		102
.Llo36:
	diab.addi		r4,r1,8
	mr		r3,r29		# Buf_ptr=r3 Buf_ptr=r29
	diab.li		r5,2
	bl		NvM_MemCopy
# 
#                         /* Pointer arithmetic needs here */
#                         Buf_ptr += NVM_BLOCK_HEADER_SIZE;
	.d2line		105
	diab.addi		r3,r29,2		# Buf_ptr=r3 Buf_ptr=r29
	se_addi		r29,2		# Buf_ptr=r29 Buf_ptr=r29
.L350:
#                     }
# 
#                     /* Fill the RamMirror (which is shifted with the size of header if exist)
#                      * with ROMData to calculate and update the CRC if exist
#                      */
#                     for(count = ((uint16)0U); count < Get_Conf_Block_Length(blockId); count++)
	.d2line		111
	diab.li		r3,0		# count=r3
.L351:
.Llo37:
	rlwinm		r0,r3,0,16,31		# count=r0 count=r3
	lis		r4,(NvM_BlockManagementTable+4)@ha
	lwz		r5,(NvM_BlockManagementTable+4)@l(r4)
	lhz		r4,8(r1)
	rlwinm		r4,r4,6,10,25
	se_add		r4,r5
	lhz		r4,20(r4)
	se_cmp		r0,r4		# count=r0
	bc		0,0,.L353	# ge
#                     {
#                         *Buf_ptr = romDataAddress[count];
	.d2line		113
	rlwinm		r4,r3,0,16,31		# count=r3
	lbzux		r0,r4,r30		# count=r0
	stb		r0,0(r29)		# Buf_ptr=r29 count=r0
#                         Buf_ptr++;
	.d2line		114
	se_addi		r29,1		# Buf_ptr=r29 Buf_ptr=r29
#                     }
	.d2line		115
	diab.addi		r0,r3,1		# count=r0 count=r3
	se_addi		r3,1		# count=r3 count=r3
	b		.L351
.L353:
# 
#                     /* validate Crc field if exist */
#                     Set_Crc_State_Machine(NVM_CALCULATION_CRC_INIT);
	.d2line		118
.Llo38:
	diab.li		r0,0		# count=r0
.Llo39:
	lis		r3,(NvM_Data_Crc+4)@ha		# count=r3
	stw		r0,(NvM_Data_Crc+4)@l(r3)		# count=r3 count=r0
#                     NvM_Current_Block.info.state = NVM_BLOCK_NV_READ_PRAM_ROM_DATASET_VALIDATE;
	.d2line		119
	diab.li		r0,19		# count=r0
	lis		r3,(NvM_Current_Block+12)@ha		# count=r3
	stw		r0,(NvM_Current_Block+12)@l(r3)		# count=r3 count=r0
	.section	.text_vle
.L558:
.Llo22:
	b		.L343
.L349:
#                 }
#                 else
#                 {
#                     for(count = ((uint16)0U); count < Get_Conf_Block_Length(blockId); count++)
	.d2line		123
.Llo23:
	diab.li		r4,0		# count=r4
.L355:
.Llo40:
	rlwinm		r5,r4,0,16,31		# count=r4
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)		# count=r0
	lhz		r3,8(r1)
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0		# count=r0
	lhz		r0,20(r3)		# count=r0
	se_cmp		r5,r0		# count=r0
	bc		0,0,.L357	# ge
#                     {
#                         /* [DD-NVM00772-MGC01-V1] */
#                         NvM_Current_Block.ram_block_ptr[count] = romDataAddress[count];
	.d2line		126
	rlwinm		r3,r4,0,16,31		# count=r4
	lbzux		r0,r3,r30		# count=r0
	lis		r3,(NvM_Current_Block+8)@ha
	lwz		r3,(NvM_Current_Block+8)@l(r3)
	rlwinm		r5,r4,0,16,31		# count=r4
	stbx		r0,r3,r5		# count=r0
#                     }
	.d2line		127
	diab.addi		r3,r4,1		# count=r4
	se_addi		r4,1		# count=r4 count=r4
	b		.L355
.L357:
#                     /* [DD-NVM00270-MGC01-V1] */
#                     NvM_Current_Block.info.status_err = (NvM_RequestResultType)NVM_REQ_OK;
	.d2line		129
	diab.li		r0,0		# count=r0
	lis		r3,(NvM_Current_Block+24)@ha
	stb		r0,(NvM_Current_Block+24)@l(r3)		# count=r0
#                     NvM_Current_Block.info.state = NVM_BLOCK_NV_READ_PRAM_DONE;
	.d2line		130
	diab.li		r0,25		# count=r0
	lis		r3,(NvM_Current_Block+12)@ha
	stw		r0,(NvM_Current_Block+12)@l(r3)		# count=r0
	.section	.text_vle
.L547:
.Llo24:
	b		.L343
.L348:
#                 }
#             }
#             else
#             {
#                 /* see Bug21208 */
#                 NvM_Current_Block.info.state = NVM_BLOCK_NV_READ_PRAM_DONE;
	.d2line		136
	diab.li		r0,25		# blockManagement=r0
.Llo19:
	lis		r3,(NvM_Current_Block+12)@ha
	stw		r0,(NvM_Current_Block+12)@l(r3)		# blockManagement=r0
#                 NvM_Current_Block.info.status_err = (NvM_RequestResultType)NVM_REQ_NOT_OK;
	.d2line		137
	diab.li		r5,1
	lis		r3,(NvM_Current_Block+24)@ha
	stb		r5,(NvM_Current_Block+24)@l(r3)
# 
#                 NvM_Call_Dem_ReportErrorStatus(NvM_Current_Block.block_id, NVM_DEM_EVENT_E_REQ_FAILED, DEM_EVENT_STATUS_FAILED);
	.d2line		139
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	diab.li		r4,2
	bl		NvM_Call_Dem_ReportErrorStatus
# 
#                 stopProcessing = TRUE;
	.d2line		141
.Llo20:
	diab.li		r31,1		# stopProcessing=r31
.L343:
#             }
# 
#         }
#         break;
# #endif
# 
#         default:
#         {
#             /*Do nothing*/
#         }
#         break;
#     }
# 
#     return stopProcessing;
	.d2line		155
	rlwinm		r3,r31,0,24,31		# count=r3 stopProcessing=r31
# }
	.d2line		156
	.d2epilogue_begin
	lmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	3,10
.Llo4:
	lwz		r0,36(r1)		# blockManagement=r0
	mtspr		lr,r0		# blockManagement=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L534:
	.type		NvM_ActBlockNvReadPRAMInit,@function
	.size		NvM_ActBlockNvReadPRAMInit,.-NvM_ActBlockNvReadPRAMInit
# Number of nodes = 497

# Allocations for NvM_ActBlockNvReadPRAMInit
#	?a4		$$9
#	?a5		stopProcessing
#	SP,8		blockId
#	?a6		blockManagement
#	?a7		romDataAddress
#	?a8		count
#	?a9		Buf_ptr
# FUNC(boolean,NVM_CODE) NvM_ActSubStateReadPRAMBlockReading(void)
	.align		2
	.section	.text_vle
        .d2line         160,24
#$$ld
.L566:

#$$bf	NvM_ActSubStateReadPRAMBlockReading,interprocedural,rasave,nostackparams
	.globl		NvM_ActSubStateReadPRAMBlockReading
	.d2_cfa_start __cie
NvM_ActSubStateReadPRAMBlockReading:
.Llo42:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     VAR(boolean,AUTOMATIC) stop_processing = TRUE;
	.d2line		162
	diab.li		r30,1		# stop_processing=r30
#     VAR(NvM_BlockIdType,AUTOMATIC) blockId = NvM_Current_Block.block_id;
	.d2line		163
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r31,(NvM_Current_Block+4)@l(r3)
.Llo44:
	mr		r31,r31		# blockId=r31 blockId=r31
# 
#     NvM_ProcessPRAMReadingNvBlockStates(&NvM_Current_Block);
	.d2line		165
	lis		r3,NvM_Current_Block@ha
	e_add16i		r3,r3,NvM_Current_Block@l
	bl		NvM_ProcessPRAMReadingNvBlockStates
# 
#     if(NvM_Current_Block.info.state == NVM_BLOCK_NV_READ_PRAM_DONE)
	.d2line		167
	lis		r3,(NvM_Current_Block+12)@ha
	lwz		r0,(NvM_Current_Block+12)@l(r3)
	se_cmpi		r0,25
	bc		0,2,.L379	# ne
#     {
#         stop_processing = FALSE;
	.d2line		169
	diab.li		r30,0		# stop_processing=r30
# 
#         if((NvM_Current_Block.info.status_err == (NvM_RequestResultType)NVM_REQ_OK) && (NvM_Current_Block.info.dem_err == NVM_DEM_EVENT_E_NO_ERROR))
	.d2line		171
	lis		r3,(NvM_Current_Block+24)@ha
	lbz		r0,(NvM_Current_Block+24)@l(r3)
	se_cmpi		r0,0
	bc		0,2,.L380	# ne
	lis		r3,(NvM_Current_Block+20)@ha
	lwz		r0,(NvM_Current_Block+20)@l(r3)
	se_cmpi		r0,0
	bc		0,2,.L380	# ne
#         {
#             /* block read without errors [DD-NVM00773-MGC01-V1] [DD-NVM00774-MGC01-V1] */
#             Set_Adm_Block_Attrib_Block_Valid(blockId, NVM_BLOCK_VALID);
	.d2line		174
	lis		r4,NvM_BlockManagementTable@ha
	lwz		r3,NvM_BlockManagementTable@l(r4)
	rlwinm		r0,r31,3,13,28		# blockId=r31
	se_add		r3,r0
	lwz		r3,4(r3)
	.diab.bseti		r3,1
	lwz		r4,NvM_BlockManagementTable@l(r4)
	se_add		r4,r0
	stw		r3,4(r4)
# 
#             /* Clarification of the specification needs here */
#             if(Is_Conf_Block_Type_Dataset(blockId) && (TRUE == NvM_Current_Block.info.datasetPointsToRom))
	.d2line		177
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	rlwinm		r0,r31,6,10,25		# blockId=r31
	se_add		r3,r0
	lwz		r0,12(r3)
	se_cmpi		r0,2
	bc		0,2,.L381	# ne
	lis		r3,(NvM_Current_Block+25)@ha
	lbz		r0,(NvM_Current_Block+25)@l(r3)
	se_cmpi		r0,1
	bc		0,2,.L381	# ne
#             {
#                 /* [DD-NVM00774-MGC01-V1] */
#                 Set_Adm_Block_Attrib_Block_Changed(blockId, NVM_BLOCK_CHANGED);
	.d2line		180
	lis		r4,NvM_BlockManagementTable@ha
	lwz		r3,NvM_BlockManagementTable@l(r4)
	rlwinm		r0,r31,3,13,28		# blockId=r31
	se_add		r3,r0
	lwz		r3,4(r3)
	.diab.bseti		r3,2
	lwz		r4,NvM_BlockManagementTable@l(r4)
	se_add		r4,r0
	stw		r3,4(r4)
	b		.L382
.L381:
#             }
#             else
#             {
#                 /* [DD-NVM00773-MGC01-V1] */
#                 Set_Adm_Block_Attrib_Block_Changed(blockId, NVM_BLOCK_UNCHANGED);
	.d2line		185
	lis		r4,NvM_BlockManagementTable@ha
	lwz		r3,NvM_BlockManagementTable@l(r4)
	rlwinm		r0,r31,3,13,28		# blockId=r31
	se_add		r3,r0
	lwz		r3,4(r3)
	.diab.bclri		r3,2
	lwz		r4,NvM_BlockManagementTable@l(r4)
	se_add		r4,r0
	stw		r3,4(r4)
.L382:
#             }
# 
#             /* [DD-NVM00784-MGC01-V1] */
#             if(Is_Conf_Block_Type_Write_Once(blockId))
	.d2line		189
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	rlwinm		r0,r31,6,10,25		# blockId=r31
	se_add		r3,r0
	lhz		r0,60(r3)
	rlwinm		r0,r0,0,28,28
	se_cmpi		r0,8
	bc		0,2,.L383	# ne
#             {
#                 Set_Adm_Block_Attrib_Wr_Protection(blockId, NVM_WR_PROTECTION_ON);
	.d2line		191
	lis		r3,NvM_BlockManagementTable@ha
	lwz		r0,NvM_BlockManagementTable@l(r3)
	rlwinm		r4,r31,3,13,28		# blockId=r31
	add		r31,r0,r4		# blockId=r31
	lwz		r0,4(r31)		# blockId=r31
	.diab.bseti		r0,0
	lwz		r3,NvM_BlockManagementTable@l(r3)
	se_add		r4,r3
	stw		r0,4(r4)
.L383:
#             }
#             /* [DD-NVM00573-MGC01-V1] [DD-NVM00574-MGC01-V1] */
#             Set_Sub_State_Machine(NVM_SUBSTATE_SINGLEBLOCK_OPERATION_DONE);
	.d2line		194
	diab.li		r0,9
	lis		r3,NvM_SubStateDbg@ha
	e_add16i		r3,r3,NvM_SubStateDbg@l
	stw		r0,0(r3)
	b		.L379
.L380:
#         }
#         else
#         {
#             /* see Bug21209 */
#             if(TRUE == NvM_BlockMirrorError)
	.d2line		199
	lis		r3,NvM_BlockMirrorError@ha
	lbz		r0,NvM_BlockMirrorError@l(r3)
	se_cmpi		r0,1
	bc		0,2,.L385	# ne
#             {
#                 /* The request will be postponed */
#                 /* see Bug20488 */
#                 Set_Adm_Block_Attrib_Block_Valid(NvM_Current_Block.block_id, NVM_BLOCK_INVALID);
	.d2line		203
.Llo45:
	lis		r5,NvM_BlockManagementTable@ha
	lwz		r3,NvM_BlockManagementTable@l(r5)
	lis		r4,(NvM_Current_Block+4)@ha
	lhz		r0,(NvM_Current_Block+4)@l(r4)
	rlwinm		r0,r0,3,13,28
	se_add		r3,r0
	lwz		r6,4(r3)
	.diab.bclri		r6,1
	lwz		r3,NvM_BlockManagementTable@l(r5)
	se_add		r3,r0
	stw		r6,4(r3)
#                 Set_Adm_Block_Attrib_Block_Changed(NvM_Current_Block.block_id, NVM_BLOCK_UNCHANGED);
	.d2line		204
	lwz		r3,NvM_BlockManagementTable@l(r5)
	lhz		r0,(NvM_Current_Block+4)@l(r4)
	rlwinm		r0,r0,3,13,28
	se_add		r3,r0
	lwz		r3,4(r3)
	.diab.bclri		r3,2
	lwz		r4,NvM_BlockManagementTable@l(r5)
	se_add		r4,r0
	stw		r3,4(r4)
# 
#                 /* NvM_Current_Block.info.status_err has been set to (NvM_RequestResultType)NVM_REQ_NOT_OK */
#                 Set_Sub_State_Machine(NVM_SUBSTATE_SINGLEBLOCK_OPERATION_DONE);
	.d2line		207
	diab.li		r0,9
	lis		r3,NvM_SubStateDbg@ha
	e_add16i		r3,r3,NvM_SubStateDbg@l
	stw		r0,0(r3)
	b		.L379
.L385:
#             }
#             else
#             {
#                 /* Dataset block cannot call for restoring default data. See DD-NVM00818-MGC01-V1 */
#                 /* [DD-NVM00572-MGC01-V1] */
#                 if((!Is_Conf_Block_Type_Dataset(NvM_Current_Block.block_id))
	.d2line		213
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0
	lwz		r0,12(r3)
	se_cmpi		r0,2
	bc		1,2,.L387	# eq
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0
	lwz		r0,36(r3)
	se_cmpi		r0,0
	bc		0,2,.L389	# ne
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0
	lwz		r0,40(r3)
	se_cmpi		r0,0
	bc		1,2,.L387	# eq
.L389:
#                         && (Is_Conf_Block_Default_Data(NvM_Current_Block.block_id) || Is_Conf_Block_Init_Callback(NvM_Current_Block.block_id)))
#                 {
#                     /* see Bug21210 */
#                     /* [DD-NVM00047-MGC01-V1] [DD-NVM00389-MGC01-V1] [DD-NVM00390-MGC01-V1] */
#                     /* [DD-NVM00575-MGC01-V1] [DD-NVM00787-MGC01-V1] [DD-NVM00789-MGC01-V1] */
#                     /* [DD-NVM00882-MGC01-V1] [DD-NVM00882-MGC02-V1] */
#                     NvM_RestoreDefaultData(NvM_Current_Block.block_id);
	.d2line		220
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	bl		NvM_RestoreDefaultData
#                     Set_Crc_State_Machine(NVM_CALCULATION_CRC_INIT);
	.d2line		221
	diab.li		r0,0
	lis		r3,(NvM_Data_Crc+4)@ha
	stw		r0,(NvM_Data_Crc+4)@l(r3)
#                     Set_Sub_State_Machine(NVM_SUBSTATE_READ_PRAM_BLOCK_VALIDATE);
	.d2line		222
	diab.li		r0,33
	lis		r3,NvM_SubStateDbg@ha
	e_add16i		r3,r3,NvM_SubStateDbg@l
	stw		r0,0(r3)
	b		.L379
.L387:
#                 }
#                 else
#                 {
#                     /* NvM_Current_Block.info.status_err has been already set */
#                     /* [DD-NVM00785-MGC01-V1] [DD-NVM00788-MGC01-V1] */
#                     Set_Adm_Block_Attrib_Block_Valid(NvM_Current_Block.block_id, NVM_BLOCK_INVALID);
	.d2line		228
	lis		r5,NvM_BlockManagementTable@ha
	lwz		r3,NvM_BlockManagementTable@l(r5)
	lis		r4,(NvM_Current_Block+4)@ha
	lhz		r0,(NvM_Current_Block+4)@l(r4)
	rlwinm		r0,r0,3,13,28
	se_add		r3,r0
	lwz		r6,4(r3)
	.diab.bclri		r6,1
	lwz		r3,NvM_BlockManagementTable@l(r5)
	se_add		r3,r0
	stw		r6,4(r3)
#                     Set_Adm_Block_Attrib_Block_Changed(NvM_Current_Block.block_id, NVM_BLOCK_UNCHANGED);
	.d2line		229
	lwz		r3,NvM_BlockManagementTable@l(r5)
	lhz		r0,(NvM_Current_Block+4)@l(r4)
	rlwinm		r0,r0,3,13,28
	se_add		r3,r0
	lwz		r3,4(r3)
	.diab.bclri		r3,2
	lwz		r4,NvM_BlockManagementTable@l(r5)
	se_add		r4,r0
	stw		r3,4(r4)
#                     Set_Sub_State_Machine(NVM_SUBSTATE_SINGLEBLOCK_OPERATION_DONE);
	.d2line		230
	diab.li		r0,9
	lis		r3,NvM_SubStateDbg@ha
	e_add16i		r3,r3,NvM_SubStateDbg@l
	stw		r0,0(r3)
.L379:
#                 }
#             }
#         }
#     }
# 
#     return stop_processing;
	.d2line		236
	rlwinm		r3,r30,0,24,31		# stop_processing=r30
# }
	.d2line		237
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo43:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L567:
	.type		NvM_ActSubStateReadPRAMBlockReading,@function
	.size		NvM_ActSubStateReadPRAMBlockReading,.-NvM_ActSubStateReadPRAMBlockReading
# Number of nodes = 304

# Allocations for NvM_ActSubStateReadPRAMBlockReading
#	?a4		stop_processing
#	?a5		blockId
# FUNC(boolean,NVM_CODE) NvM_ActSubStateReadPRAMBlockValidate(void)
	.align		2
	.section	.text_vle
        .d2line         243,24
#$$ld
.L575:

#$$bf	NvM_ActSubStateReadPRAMBlockValidate,interprocedural,rasave,nostackparams
	.globl		NvM_ActSubStateReadPRAMBlockValidate
	.d2_cfa_start __cie
NvM_ActSubStateReadPRAMBlockValidate:
.Llo46:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     VAR(boolean,AUTOMATIC) stop_processing = TRUE;
	.d2line		245
	diab.li		r31,1		# stop_processing=r31
#     VAR(NvM_CalculationCrcStateType,AUTOMATIC) crcState = NvM_ValidateCrc(&NvM_Current_Block,
	.d2line		246
	lis		r3,(NvM_Common+24)@ha		# crcState=r3
.Llo48:
	lwz		r5,(NvM_Common+24)@l(r3)		# crcState=r3
	lis		r3,NvM_Current_Block@ha		# crcState=r3
	e_add16i		r3,r3,NvM_Current_Block@l		# crcState=r3 crcState=r3
.Llo49:
	diab.li		r4,0
	diab.li		r6,0
	bl		NvM_ValidateCrc
.Llo50:
	mr		r3,r3		# crcState=r3 crcState=r3
#                                                                               NVM_UPDATE_CRC_FIELD,
#                                                                               NvM_Common.NvM_RamMirrorPtr,
#                                                                               FALSE);
# 
#     /* CRC configured, calculation finished and updated, or CRC not configured */
#     if((NVM_CALCULATION_CRC_FINISHED_OK == crcState) || (NVM_CALCULATION_CRC_FINISHED_NOK == crcState))
	.d2line		252
	se_cmpi		r3,2		# crcState=r3
	bc		1,2,.L400	# eq
	se_cmpi		r3,3		# crcState=r3
	bc		0,2,.L399	# ne
.L400:
#     {
#         /* [DD-NVM00774-MGC01-V1] */
#         Set_Adm_Block_Attrib_Block_Valid(NvM_Current_Block.block_id, NVM_BLOCK_VALID);
	.d2line		255
.Llo51:
	lis		r5,NvM_BlockManagementTable@ha
	lwz		r3,NvM_BlockManagementTable@l(r5)		# crcState=r3
.Llo52:
	lis		r4,(NvM_Current_Block+4)@ha
	lhz		r0,(NvM_Current_Block+4)@l(r4)
	rlwinm		r0,r0,3,13,28
	se_add		r3,r0		# crcState=r3 crcState=r3
	lwz		r6,4(r3)		# crcState=r3
	.diab.bseti		r6,1
	lwz		r3,NvM_BlockManagementTable@l(r5)		# crcState=r3
	se_add		r3,r0		# crcState=r3 crcState=r3
	stw		r6,4(r3)		# crcState=r3
#         Set_Adm_Block_Attrib_Block_Changed(NvM_Current_Block.block_id, NVM_BLOCK_CHANGED);
	.d2line		256
	lwz		r3,NvM_BlockManagementTable@l(r5)		# crcState=r3
	lhz		r0,(NvM_Current_Block+4)@l(r4)
	rlwinm		r0,r0,3,13,28
	se_add		r3,r0		# crcState=r3 crcState=r3
	lwz		r3,4(r3)		# crcState=r3 crcState=r3
	.diab.bseti		r3,2		# crcState=r3
	lwz		r4,NvM_BlockManagementTable@l(r5)
	se_add		r4,r0
	stw		r3,4(r4)		# crcState=r3
# 
#         NvM_Current_Block.info.status_err = (NvM_RequestResultType)NVM_REQ_RESTORED_FROM_ROM;
	.d2line		258
	diab.li		r0,8
	lis		r3,(NvM_Current_Block+24)@ha		# crcState=r3
	stb		r0,(NvM_Current_Block+24)@l(r3)		# crcState=r3
#         Set_Sub_State_Machine(NVM_SUBSTATE_SINGLEBLOCK_OPERATION_DONE);
	.d2line		259
	diab.li		r0,9
	lis		r3,NvM_SubStateDbg@ha		# crcState=r3
	e_add16i		r3,r3,NvM_SubStateDbg@l		# crcState=r3 crcState=r3
	stw		r0,0(r3)		# crcState=r3
#         stop_processing = FALSE;
	.d2line		260
	diab.li		r31,0		# stop_processing=r31
.L399:
#     }
# 
#     return stop_processing;
	.d2line		263
.Llo53:
	rlwinm		r3,r31,0,24,31		# crcState=r3 stop_processing=r31
# }
	.d2line		264
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo47:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L576:
	.type		NvM_ActSubStateReadPRAMBlockValidate,@function
	.size		NvM_ActSubStateReadPRAMBlockValidate,.-NvM_ActSubStateReadPRAMBlockValidate
# Number of nodes = 77

# Allocations for NvM_ActSubStateReadPRAMBlockValidate
#	?a4		stop_processing
#	?a5		crcState
# FUNC(boolean,NVM_CODE) NvM_ActBlockNvReadPRAMRecalc(void) /* [DD-NVM00786-MGC01-V1] */
	.align		2
	.section	.text_vle
        .d2line         268,24
#$$ld
.L586:

#$$bf	NvM_ActBlockNvReadPRAMRecalc,interprocedural,rasave,nostackparams
	.globl		NvM_ActBlockNvReadPRAMRecalc
	.d2_cfa_start __cie
NvM_ActBlockNvReadPRAMRecalc:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     /* Check of the CRC of RAM */
#     VAR(NvM_CalculationCrcStateType,AUTOMATIC) crcState = NvM_ValidateCrc(&NvM_Current_Block,
	.d2line		271
	lis		r3,(NvM_Current_Block+8)@ha
	lwz		r5,(NvM_Current_Block+8)@l(r3)
	lis		r3,NvM_Current_Block@ha
	e_add16i		r3,r3,NvM_Current_Block@l
	diab.li		r4,1
	diab.li		r6,1
	bl		NvM_ValidateCrc
.Llo54:
	mr		r3,r3		# crcState=r3 crcState=r3
#                                                                               NVM_NOT_UPDATE_CRC_FIELD,
#                                                                               NvM_Current_Block.ram_block_ptr,
#                                                                               TRUE);
# 
#     switch(crcState)
	.d2line		276
	mr		r6,r3		# crcState=r6 crcState=r3
	se_cmpi		r6,2
	bc		1,2,.L404	# eq
.Llo55:
	se_cmpi		r6,3
	bc		1,2,.L406	# eq
	b		.L405
.L404:
#     {
#         /* The Data is consistent in RAM */
#         case NVM_CALCULATION_CRC_FINISHED_OK:
#         {
#             /* [DD-NVM00270-MGC01-V1] [DD-NVM00775-MGC01-V1] [DD-NVM00782-MGC01-V1] */
#             NvM_Current_Block.info.status_err = (NvM_RequestResultType)NVM_REQ_OK;
	.d2line		282
	diab.li		r0,0
	lis		r3,(NvM_Current_Block+24)@ha
	stb		r0,(NvM_Current_Block+24)@l(r3)
#             NvM_Current_Block.info.state = NVM_BLOCK_NV_READ_PRAM_DONE;
	.d2line		283
	diab.li		r0,25
	lis		r3,(NvM_Current_Block+12)@ha
	stw		r0,(NvM_Current_Block+12)@l(r3)
	b		.L405
.L406:
#         }
#         break;
#             /* The Data and the CRC does not match*/
#         case NVM_CALCULATION_CRC_FINISHED_NOK:
#         {
#             /* [DD-NVM00790-MGC01-V1] */
#             NvM_Call_Dem_ReportErrorStatus(NvM_Current_Block.block_id, NVM_DEM_EVENT_E_INTEGRITY_FAILED, DEM_EVENT_STATUS_FAILED);
	.d2line		290
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	diab.li		r4,3
	diab.li		r5,1
	bl		NvM_Call_Dem_ReportErrorStatus
#             /* [DD-NVM00791-MGC01-V1] */
#             NvM_Current_Block.info.status_err = (NvM_RequestResultType)NVM_REQ_INTEGRITY_FAILED;
	.d2line		292
	diab.li		r0,3
	lis		r3,(NvM_Current_Block+24)@ha
	stb		r0,(NvM_Current_Block+24)@l(r3)
#             NvM_Current_Block.info.state = NVM_BLOCK_NV_READ_PRAM_DONE;
	.d2line		293
	diab.li		r0,25
	lis		r3,(NvM_Current_Block+12)@ha
	stw		r0,(NvM_Current_Block+12)@l(r3)
.L405:
# 
#         }
#         break;
# 
#         case NVM_CALCULATION_CRC_IN_PROGRESS:
#         {
#             /* Crc calculation to be continued in the next mainfunction */
#         }
#         break;
# 
#         default:
#         {
#             /*Do nothing*/
#         }
#         break;
#     }
# 
#     return TRUE;
	.d2line		311
	diab.li		r3,1
# }
	.d2line		312
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L587:
	.type		NvM_ActBlockNvReadPRAMRecalc,@function
	.size		NvM_ActBlockNvReadPRAMRecalc,.-NvM_ActBlockNvReadPRAMRecalc
# Number of nodes = 63

# Allocations for NvM_ActBlockNvReadPRAMRecalc
#	?a4		crcState
# FUNC(void,NVM_CODE)  NvM_ActBlockNvReadPRAMStart(void)
	.align		2
	.section	.text_vle
        .d2line         315,22
#$$ld
.L593:

#$$bf	NvM_ActBlockNvReadPRAMStart,interprocedural,rasave,nostackparams
	.globl		NvM_ActBlockNvReadPRAMStart
	.d2_cfa_start __cie
NvM_ActBlockNvReadPRAMStart:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     P2VAR(uint8,AUTOMATIC,NVM_APPL_DATA) Buf_ptr;
#     VAR(NvM_BlockIdType,AUTOMATIC) blockId = NvM_Current_Block.block_id;
	.d2line		318
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r31,(NvM_Current_Block+4)@l(r3)		# blockId=r31
.Llo62:
	mr		r31,r31		# blockId=r31 blockId=r31
# #if (NVM_POLLING_MODE==STD_OFF)
#     VAR(MemIf_StatusType, AUTOMATIC) prevMemIfDrvStatus;
# #endif
# 
#     if((Is_Conf_Block_Use_Synchmechanism(blockId))
	.d2line		323
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	rlwinm		r0,r31,6,10,25		# blockId=r31
	se_add		r3,r0
	lhz		r0,60(r3)
	rlwinm		r0,r0,0,25,25
	cmpi		0,0,r0,64
	bc		1,2,.L417	# eq
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	rlwinm		r0,r31,6,10,25		# blockId=r31
	se_add		r3,r0
	lhz		r0,60(r3)
	rlwinm		r0,r0,0,31,31
	se_cmpi		r0,1
	bc		1,2,.L417	# eq
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	rlwinm		r0,r31,6,10,25		# blockId=r31
	se_add		r3,r0
	lhz		r0,60(r3)
	rlwinm		r0,r0,0,22,22
	cmpi		0,0,r0,512
	bc		0,2,.L413	# ne
.L417:
#         || (Is_Conf_Block_Use_Crc(blockId))
#         || (Is_Conf_Block_Static_BlockIdCheck(blockId)))
#     {
#         Buf_ptr = NvM_Common.NvM_RamMirrorPtr;   /*NvM Mirror is used as the buffer to read data*/
	.d2line		327
	lis		r3,(NvM_Common+24)@ha
	lwz		r5,(NvM_Common+24)@l(r3)
.Llo56:
	mr		r5,r5		# Buf_ptr=r5 Buf_ptr=r5
	b		.L414
.L413:
#     }
#     else
#     {
#         /* [DD-NVM00765-MGC01-V1] */
#         Buf_ptr = NvM_Current_Block.ram_block_ptr; /* Data is copied directly to RAM */
	.d2line		332
.Llo57:
	lis		r3,(NvM_Current_Block+8)@ha
	lwz		r5,(NvM_Current_Block+8)@l(r3)
.Llo58:
	mr		r5,r5		# Buf_ptr=r5 Buf_ptr=r5
.L414:
#     }
# 
# #if (NVM_POLLING_MODE==STD_OFF)
#     prevMemIfDrvStatus = NvM_MemIf_Driver_Status;
	.d2line		336
	lis		r3,NvM_MemIf_Driver_Status@ha
	lwz		r30,NvM_MemIf_Driver_Status@l(r3)
.Llo64:
	mr		r30,r30		# prevMemIfDrvStatus=r30 prevMemIfDrvStatus=r30
#     NvM_MemIf_Driver_Status=MEMIF_BUSY;
	.d2line		337
	diab.li		r4,2
	e_add16i		r3,r3,NvM_MemIf_Driver_Status@l
	stw		r4,0(r3)
# #endif
#     /* [DD-NVM00765-MGC01-V1] */
#     if(E_OK==MemIf_Read( /* [DD-NVM00010-MGC01-V1] */
	.d2line		340
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	rlwinm		r0,r31,6,10,25		# blockId=r31
	se_add		r3,r0
	lhz		r0,60(r3)
	rlwinm		r0,r0,0,22,22
	cmpi		0,0,r0,512
	isel		r3,r4,r0,2
.L418:
	diab.li		r0,0
	isel		r6,r3,r0,2
.L419:
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	rlwinm		r4,r31,6,10,25		# blockId=r31
	se_add		r3,r4
	lhz		r0,60(r3)
	rlwinm		r0,r0,0,31,31
	se_cmpi		r0,1
	bc		0,2,.L420	# ne
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	rlwinm		r4,r31,6,10,25		# blockId=r31
	lwzx		r3,r3,r4
	se_cmpi		r3,2
	bc		0,2,.L422	# ne
	diab.li		r0,4
	b		.L421
.L422:
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	rlwinm		r4,r31,6,10,25		# blockId=r31
	lwzx		r3,r3,r4
	se_cmpi		r3,1
	diab.li		r3,2
	isel		r3,r3,r0,2
.L424:
	diab.li		r0,1
	isel		r0,r3,r0,2
	b		.L421
.L420:
	diab.li		r0,0
.L421:
.Llo59:
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	rlwinm		r4,r31,6,10,25		# blockId=r31
	se_add		r4,r3
	lhz		r7,22(r4)
	lis		r3,(NvM_Common+32)@ha
	lbz		r3,(NvM_Common+32)@l(r3)
	slw		r7,r7,r3
	lis		r3,(NvM_Current_Block+16)@ha
	lhz		r3,(NvM_Current_Block+16)@l(r3)
	se_add		r7,r3
	rlwinm		r3,r7,0,16,31
	lhz		r4,20(r4)
	se_add		r4,r6
	se_add		r4,r0
	rlwinm		r6,r4,0,16,31
	diab.li		r4,0
.Llo60:
	mr		r5,r5		# Buf_ptr=r5 Buf_ptr=r5
.Llo61:
	bl		Ea_Read
	e_andi.		r3,r3,255
	bc		0,2,.L415	# ne
#              NvM_BlockManagementTable.BlockDescriptorPtr[blockId].NvM_NvramDeviceId,
#              /* [DD-NVM00343-MGC01-V1] */
#              Get_Block_Number(blockId,NvM_Current_Block.info.dataset),0,
#              Buf_ptr, Get_Conf_Block_Length_Total(blockId)))
#     {
#         NvM_Current_Block.info.state=NVM_BLOCK_NV_READ_PRAM_IN_PROGRESS;
	.d2line		346
	diab.li		r0,20
	lis		r3,(NvM_Current_Block+12)@ha
	stw		r0,(NvM_Current_Block+12)@l(r3)
	b		.L412
.L415:
# 
#     }
#     else
#     {
# 
# #if (NVM_POLLING_MODE==STD_OFF)
#         NvM_MemIf_Driver_Status=prevMemIfDrvStatus;
	.d2line		353
	lis		r3,NvM_MemIf_Driver_Status@ha
	e_add16i		r3,r3,NvM_MemIf_Driver_Status@l
	stw		r30,0(r3)		# prevMemIfDrvStatus=r30
# #endif
# 
#         /* [DD-NVM00783-MGC01-V1] */
#         NvM_Call_Dem_ReportErrorStatus(blockId, NVM_DEM_EVENT_E_REQ_FAILED, DEM_EVENT_STATUS_FAILED);
	.d2line		357
	rlwinm		r3,r31,0,16,31		# blockId=r31
	diab.li		r4,2
	diab.li		r5,1
	bl		NvM_Call_Dem_ReportErrorStatus
# 
#         NvM_Current_Block.info.status_err=(NvM_RequestResultType)NVM_REQ_NOT_OK;
	.d2line		359
	diab.li		r0,1
	lis		r3,(NvM_Current_Block+24)@ha
	stb		r0,(NvM_Current_Block+24)@l(r3)
#         NvM_Current_Block.info.state=NVM_BLOCK_NV_READ_PRAM_PROCESS_ERR;
	.d2line		360
	diab.li		r0,24
	lis		r3,(NvM_Current_Block+12)@ha
	stw		r0,(NvM_Current_Block+12)@l(r3)
.L412:
#     }
# }
	.d2line		362
	.d2epilogue_begin
.Llo63:
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
.L594:
	.type		NvM_ActBlockNvReadPRAMStart,@function
	.size		NvM_ActBlockNvReadPRAMStart,.-NvM_ActBlockNvReadPRAMStart
# Number of nodes = 256

# Allocations for NvM_ActBlockNvReadPRAMStart
#	?a4		$$11
#	?a5		$$10
#	?a6		Buf_ptr
#	?a7		blockId
#	?a8		prevMemIfDrvStatus
# FUNC(boolean,NVM_CODE) NvM_ReadingPRAM(P2VAR(NvM_BlockRequestType,AUTOMATIC,NVM_APPL_DATA) block)
	.align		2
	.section	.text_vle
        .d2line         364,24
#$$ld
.L606:

#$$bf	NvM_ReadingPRAM,interprocedural,rasave,nostackparams
	.globl		NvM_ReadingPRAM
	.d2_cfa_start __cie
NvM_ReadingPRAM:
.Llo65:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# block=r31 block=r3
	.d2prologue_end
# {
#     /* The state-machine comes here through NVM_BLOCK_NV_READ_PRAM_START -> NVM_BLOCK_NV_READ_PRAM_IN_PROGRESS */
#     VAR(boolean,AUTOMATIC) tmp_stop_processing = TRUE;
	.d2line		367
.Llo66:
	diab.li		r30,1		# tmp_stop_processing=r30
#     VAR(boolean,AUTOMATIC) Continue_processing_data = TRUE;
	.d2line		368
.Llo67:
	diab.li		r29,1
# 
#     /* Check of the header configuration*/
#     if(Is_Conf_Block_Static_BlockIdCheck(block->block_id))
	.d2line		371
.Llo70:
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)
	lhz		r3,4(r31)		# block=r31
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0
	lhz		r0,60(r3)
	rlwinm		r0,r0,0,22,22
	cmpi		0,0,r0,512
	bc		0,2,.L438	# ne
	.section	.text_vle
.L617:
#     {
#         /* If header is configured the data is always in the RAMMirror.
#          * Checking the header of the data. If it is the blockId we continue the processing of the data.
#          */
#         VAR(uint16,AUTOMATIC) tmp_header;
#         NvM_MemCopy((P2VAR(uint8,AUTOMATIC,NVM_APPL_DATA))&tmp_header, NvM_Common.NvM_RamMirrorPtr, NVM_BLOCK_HEADER_SIZE);
	.d2line		377
	lis		r3,(NvM_Common+24)@ha
	lwz		r4,(NvM_Common+24)@l(r3)
	diab.addi		r3,r1,8
	diab.li		r5,2
	bl		NvM_MemCopy
# 
#         if(tmp_header != block->block_id) /* [DD-NVM00524-MGC01-V1] */
	.d2line		379
	lhz		r0,8(r1)
	lhz		r3,4(r31)		# block=r31
	se_cmp		r0,r3
	bc		1,2,.L438	# eq
#         {
#             Continue_processing_data = FALSE;
	.d2line		381
	diab.li		r29,0		# Continue_processing_data=r29
	.section	.text_vle
.L618:
.L438:
#         }
#     }
# 
#     /* Header is not configured or header is good */
#     if(TRUE == Continue_processing_data)
	.d2line		386
	rlwinm		r29,r29,0,24,31		# Continue_processing_data=r29 Continue_processing_data=r29
	se_cmpi		r29,1		# Continue_processing_data=r29
	bc		0,2,.L440	# ne
#     {
#         /* Check of the CRC configuration */
#         if(Is_Conf_Block_Use_Crc(block->block_id))
	.d2line		389
.Llo71:
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)
	lhz		r3,4(r31)		# block=r31
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0
	lhz		r0,60(r3)
	rlwinm		r0,r0,0,31,31
	se_cmpi		r0,1
	bc		0,2,.L441	# ne
#         {
#             /* The data is in the RAMMirror from NVM_BLOCK_NV_READ_PRAM_START state
#              * CRC check is necessary on RAMMirror.
#              */
#             NvM_Data_Crc.state = NVM_CALCULATION_CRC_INIT;
	.d2line		394
	diab.li		r30,0		# tmp_stop_processing=r30
	lis		r3,(NvM_Data_Crc+4)@ha
	stw		r30,(NvM_Data_Crc+4)@l(r3)		# tmp_stop_processing=r30
#             block->info.state = NVM_BLOCK_NV_READ_PRAM_CHECK_CRC;
	.d2line		395
	diab.li		r0,21
	stw		r0,12(r31)		# block=r31
#             tmp_stop_processing = FALSE;
	.d2line		396
	b		.L445
.L441:
#         }
#         else
#         {
#             if( (Is_Conf_Block_Static_BlockIdCheck(block->block_id))
	.d2line		400
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)
	lhz		r3,4(r31)		# block=r31
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0
	lhz		r0,60(r3)
	rlwinm		r0,r0,0,22,22
	cmpi		0,0,r0,512
	bc		1,2,.L446	# eq
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	lhz		r0,4(r31)		# block=r31
	rlwinm		r0,r0,6,10,25
	se_add		r3,r0
	lhz		r0,60(r3)
	rlwinm		r0,r0,0,25,25
	cmpi		0,0,r0,64
	bc		0,2,.L443	# ne
.L446:
#             || (Is_Conf_Block_Use_Synchmechanism(block->block_id)))
#             {
#                 /* The data is in the RAMMirror from NVM_BLOCK_NV_READ_PRAM_START state
#                  * And ready to be copied from RAMMirror to RAM
#                  */
#                 block->info.state = NVM_BLOCK_NV_READ_PRAM_RAMMIRROR;
	.d2line		406
	diab.li		r0,22
	stw		r0,12(r31)		# block=r31
#                 tmp_stop_processing = FALSE;
	.d2line		407
	diab.li		r30,0		# tmp_stop_processing=r30
#                 NvM_ReadRepeatMirrorCount = (uint8)0U;
	.d2line		408
	diab.li		r29,0		# Continue_processing_data=r29
.Llo72:
	lis		r3,NvM_ReadRepeatMirrorCount@ha
	e_add16i		r3,r3,NvM_ReadRepeatMirrorCount@l
	stb		r29,0(r3)		# Continue_processing_data=r29
#                 NvM_BlockMirrorError = FALSE;
	.d2line		409
	lis		r3,NvM_BlockMirrorError@ha
	e_add16i		r3,r3,NvM_BlockMirrorError@l
	stb		r29,0(r3)		# Continue_processing_data=r29
	b		.L445
.L443:
#             }
#             else
#             {
#                 /* The data is in the RAM from NVM_BLOCK_NV_READ_PRAM_START state [DD-NVM00270-MGC01-V1] */
#                 /* [DD-NVM00775-MGC01-V1] [DD-NVM00782-MGC01-V1] */
#                 block->info.status_err = (NvM_RequestResultType)NVM_REQ_OK;
	.d2line		415
.Llo73:
	diab.li		r0,0
	stb		r0,24(r31)		# block=r31
#                 block->info.state = NVM_BLOCK_NV_READ_PRAM_DONE;
	.d2line		416
	diab.li		r0,25
	stw		r0,12(r31)		# block=r31
	b		.L445
.L440:
#             }
#         }
#     }
#     else
#     {
#         /* [DD-NVM00525-MGC01-V1] */
#         NvM_Call_Dem_ReportErrorStatus(block->block_id, NVM_DEM_EVENT_E_WRONG_BLOCK_ID, DEM_EVENT_STATUS_FAILED);
	.d2line		423
	lhz		r3,4(r31)		# block=r31
	diab.li		r4,8
	diab.li		r5,1
	bl		NvM_Call_Dem_ReportErrorStatus
# 
#        block->info.status_err = (NvM_RequestResultType)NVM_REQ_INTEGRITY_FAILED;
	.d2line		425
	diab.li		r0,3
	stb		r0,24(r31)		# block=r31
#        /* [DD-NVM00580-MGC01-V1] */
#        block->info.state = NVM_BLOCK_NV_READ_PRAM_PROCESS_ERR;
	.d2line		427
	diab.li		r0,24
	stw		r0,12(r31)		# block=r31
#        tmp_stop_processing = FALSE;
	.d2line		428
	diab.li		r30,0		# tmp_stop_processing=r30
.L445:
#     }
# 
#     /* The tmp_stop_processing will be TRUE only if the Data is in the RAM */
#     return tmp_stop_processing;
	.d2line		432
.Llo68:
	rlwinm		r3,r30,0,24,31		# tmp_stop_processing=r30
# }
	.d2line		433
	.d2epilogue_begin
	lmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	3,10
.Llo69:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L607:
	.type		NvM_ReadingPRAM,@function
	.size		NvM_ReadingPRAM,.-NvM_ReadingPRAM
# Number of nodes = 193

# Allocations for NvM_ReadingPRAM
#	?a4		block
#	?a5		tmp_stop_processing
#	?a6		Continue_processing_data
#	SP,8		tmp_header
# FUNC(boolean,NVM_CODE) NvM_ActBlockNvReadPRAMInProgress(void)
	.align		2
	.section	.text_vle
        .d2line         436,24
#$$ld
.L625:

#$$bf	NvM_ActBlockNvReadPRAMInProgress,interprocedural,rasave,nostackparams
	.globl		NvM_ActBlockNvReadPRAMInProgress
	.d2_cfa_start __cie
NvM_ActBlockNvReadPRAMInProgress:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
.Llo78:
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)		# memIfDrvStatus=r0
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     VAR(boolean,AUTOMATIC) stopProcessing = TRUE;
	.d2line		438
	diab.li		r31,1		# stopProcessing=r31
#     VAR(MemIf_JobResultType,AUTOMATIC) memIfJobResult;
#     VAR(MemIf_StatusType,AUTOMATIC) memIfDrvStatus;
#     VAR(NvM_BlockIdType,AUTOMATIC) blockId = NvM_Current_Block.block_id;
	.d2line		441
.Llo74:
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r30,(NvM_Current_Block+4)@l(r3)
.Llo88:
	mr		r30,r30		# blockId=r30 blockId=r30
# 
#   #if (NVM_POLLING_MODE==STD_ON)
#     /* [DD-NVM00346-MGC01-V1] */
#     memIfDrvStatus = MemIf_GetStatus(Get_Conf_Device_Index(blockId));
#   #else
#     memIfDrvStatus = NvM_MemIf_Driver_Status;
	.d2line		447
	lis		r3,NvM_MemIf_Driver_Status@ha
	lwz		r0,NvM_MemIf_Driver_Status@l(r3)		# memIfDrvStatus=r0
	mr		r0,r0		# memIfDrvStatus=r0 memIfDrvStatus=r0
#   #endif
# 
#     if(memIfDrvStatus == MEMIF_IDLE)
	.d2line		450
	se_cmpi		r0,1		# memIfDrvStatus=r0
	bc		0,2,.L454	# ne
#     {
# 
#         memIfJobResult = MemIf_GetJobResult(Get_Conf_Device_Index(blockId));
	.d2line		453
.Llo79:
	bl		Ea_GetJobResult
.Llo76:
	mr		r3,r3		# memIfJobResult=r3 memIfJobResult=r3
# 
#         switch (memIfJobResult) {
	.d2line		455
	mr		r6,r3		# memIfJobResult=r6 memIfJobResult=r3
	se_cmpi		r6,3
	bc		1,1,.L638	# gt
.Llo77:
	bc		1,2,.L460	# eq
	se_cmpi		r6,0
	bc		1,2,.L455	# eq
	se_cmpi		r6,1
	bc		1,2,.L457	# eq
	b		.L454
.L638:
	se_cmpi		r6,4
	bc		1,2,.L458	# eq
	se_cmpi		r6,5
	bc		1,2,.L459	# eq
.Llo89:
	b		.L454
.L455:
#             case MEMIF_JOB_OK:
#             {
#                 /* NvM_Current_Block.state and status_err will be set in NvM_ReadingPRAM */
#                 stopProcessing = NvM_ReadingPRAM(&NvM_Current_Block);
	.d2line		459
.Llo90:
	lis		r3,NvM_Current_Block@ha
	e_add16i		r3,r3,NvM_Current_Block@l
	bl		NvM_ReadingPRAM
	mr		r31,r3		# stopProcessing=r31 stopProcessing=r3
	b		.L454
.L457:
#             }break;
# 
#             case MEMIF_JOB_FAILED:
#             {
#                 /* [DD-NVM00781-MGC01-V1] */
#                 NvM_Call_Dem_ReportErrorStatus(blockId, NVM_DEM_EVENT_E_REQ_FAILED, DEM_EVENT_STATUS_FAILED);
	.d2line		465
	rlwinm		r3,r30,0,16,31		# blockId=r30
	diab.li		r4,2
	diab.li		r5,1
	bl		NvM_Call_Dem_ReportErrorStatus
#                 /* [DD-NVM00780-MGC01-V1] */
#                 NvM_Current_Block.info.status_err = (NvM_RequestResultType)NVM_REQ_NOT_OK;
	.d2line		467
	diab.li		r0,1		# memIfDrvStatus=r0
.Llo80:
	lis		r3,(NvM_Current_Block+24)@ha
	stb		r0,(NvM_Current_Block+24)@l(r3)		# memIfDrvStatus=r0
#                 NvM_Current_Block.info.state = NVM_BLOCK_NV_READ_PRAM_PROCESS_ERR;
	.d2line		468
	diab.li		r0,24		# memIfDrvStatus=r0
	lis		r3,(NvM_Current_Block+12)@ha
	stw		r0,(NvM_Current_Block+12)@l(r3)		# memIfDrvStatus=r0
#                 stopProcessing = FALSE;
	.d2line		469
	diab.li		r31,0		# stopProcessing=r31
	b		.L454
.L458:
#             }break;
# 
#             case MEMIF_BLOCK_INCONSISTENT:
#             {
#                 /* [DD-NVM00779-MGC01-V1] */
#                 NvM_Call_Dem_ReportErrorStatus(blockId, NVM_DEM_EVENT_E_INTEGRITY_FAILED, DEM_EVENT_STATUS_FAILED);
	.d2line		475
.Llo81:
	rlwinm		r3,r30,0,16,31		# blockId=r30
	diab.li		r4,3
	diab.li		r5,1
	bl		NvM_Call_Dem_ReportErrorStatus
#                 /* [DD-NVM00771-MGC01-V1] [DD-NVM00778-MGC01-V1] */
#                 NvM_Current_Block.info.status_err = (NvM_RequestResultType)NVM_REQ_INTEGRITY_FAILED;
	.d2line		477
	diab.li		r0,3		# memIfDrvStatus=r0
.Llo82:
	lis		r3,(NvM_Current_Block+24)@ha
	stb		r0,(NvM_Current_Block+24)@l(r3)		# memIfDrvStatus=r0
#                 NvM_Current_Block.info.state = NVM_BLOCK_NV_READ_PRAM_PROCESS_ERR;
	.d2line		478
	diab.li		r0,24		# memIfDrvStatus=r0
	lis		r3,(NvM_Current_Block+12)@ha
	stw		r0,(NvM_Current_Block+12)@l(r3)		# memIfDrvStatus=r0
#                 stopProcessing = FALSE;
	.d2line		479
	diab.li		r31,0		# stopProcessing=r31
	b		.L454
.L459:
#             }break;
# 
#             case MEMIF_BLOCK_INVALID:
#             {
#                 /* [DD-NVM00770-MGC01-V1] [DD-NVM00776-MGC01-V1] [DD-NVM00777-MGC01-V1] */
#                 NvM_Current_Block.info.status_err = (NvM_RequestResultType)NVM_REQ_NV_INVALIDATED;
	.d2line		485
.Llo83:
	diab.li		r0,5		# memIfDrvStatus=r0
.Llo84:
	lis		r3,(NvM_Current_Block+24)@ha
	stb		r0,(NvM_Current_Block+24)@l(r3)		# memIfDrvStatus=r0
#                 NvM_Current_Block.info.state = NVM_BLOCK_NV_READ_PRAM_PROCESS_ERR;
	.d2line		486
	diab.li		r0,24		# memIfDrvStatus=r0
	lis		r3,(NvM_Current_Block+12)@ha
	stw		r0,(NvM_Current_Block+12)@l(r3)		# memIfDrvStatus=r0
#                 stopProcessing = FALSE;
	.d2line		487
	diab.li		r31,0		# stopProcessing=r31
	b		.L454
.L460:
#             }break;
#             /* MEMIF_JOB_CANCELED result behaviour - clarify specification see Bug21211*/
#             case MEMIF_JOB_CANCELED:
#             {
#                 NvM_Current_Block.info.status_err = (NvM_RequestResultType)NVM_REQ_NOT_OK;
	.d2line		492
.Llo85:
	diab.li		r0,1		# memIfDrvStatus=r0
.Llo86:
	lis		r3,(NvM_Current_Block+24)@ha
	stb		r0,(NvM_Current_Block+24)@l(r3)		# memIfDrvStatus=r0
#                 NvM_Current_Block.info.state = NVM_BLOCK_NV_READ_PRAM_PROCESS_ERR;
	.d2line		493
	diab.li		r0,24		# memIfDrvStatus=r0
	lis		r3,(NvM_Current_Block+12)@ha
	stw		r0,(NvM_Current_Block+12)@l(r3)		# memIfDrvStatus=r0
#                 stopProcessing = FALSE;
	.d2line		494
	diab.li		r31,0		# stopProcessing=r31
.L454:
#             }break;
# 
#             default:
#             {
#                 /* Do nothing */
#             }break;
#         }
#     }
# 
#     return stopProcessing;
	.d2line		504
.Llo87:
	rlwinm		r3,r31,0,24,31		# stopProcessing=r31
# }
	.d2line		505
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo75:
	lwz		r0,36(r1)		# memIfDrvStatus=r0
	mtspr		lr,r0		# memIfDrvStatus=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L626:
	.type		NvM_ActBlockNvReadPRAMInProgress,@function
	.size		NvM_ActBlockNvReadPRAMInProgress,.-NvM_ActBlockNvReadPRAMInProgress
# Number of nodes = 121

# Allocations for NvM_ActBlockNvReadPRAMInProgress
#	?a4		stopProcessing
#	?a5		memIfJobResult
#	?a6		memIfDrvStatus
#	?a7		blockId
# FUNC(boolean,NVM_CODE)  NvM_ActBlockNvReadPRAMCheckCrc(void)
	.align		2
	.section	.text_vle
        .d2line         508,25
#$$ld
.L641:

#$$bf	NvM_ActBlockNvReadPRAMCheckCrc,interprocedural,rasave,nostackparams
	.globl		NvM_ActBlockNvReadPRAMCheckCrc
	.d2_cfa_start __cie
NvM_ActBlockNvReadPRAMCheckCrc:
.Llo91:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     VAR(boolean, AUTOMATIC) stopProcessing = FALSE;
	.d2line		510
	diab.li		r31,0		# stopProcessing=r31
# 
#     VAR(NvM_CalculationCrcStateType,AUTOMATIC) crcState= NvM_ValidateCrc(&NvM_Current_Block,NVM_NOT_UPDATE_CRC_FIELD,NvM_Common.NvM_RamMirrorPtr,FALSE);
	.d2line		512
	lis		r3,(NvM_Common+24)@ha
	lwz		r5,(NvM_Common+24)@l(r3)
	lis		r3,NvM_Current_Block@ha
	e_add16i		r3,r3,NvM_Current_Block@l
	diab.li		r4,1
	diab.li		r6,0
	bl		NvM_ValidateCrc
.Llo93:
	mr		r3,r3		# crcState=r3 crcState=r3
# 
#     switch (crcState)
	.d2line		514
	mr		r6,r3		# crcState=r6 crcState=r3
	se_cmpi		r6,1
	bc		1,2,.L472	# eq
.Llo94:
	se_cmpi		r6,2
	bc		1,2,.L469	# eq
	se_cmpi		r6,3
	bc		1,2,.L471	# eq
	b		.L470
.L469:
#     {
#         /* The Data is consistent in RAMMirror, and the CRC array is already updated through NvM_ValidateCrc */
#         case NVM_CALCULATION_CRC_FINISHED_OK:
#         {
#             NvM_Current_Block.info.state= NVM_BLOCK_NV_READ_PRAM_RAMMIRROR;
	.d2line		519
	diab.li		r0,22
	lis		r3,(NvM_Current_Block+12)@ha
	stw		r0,(NvM_Current_Block+12)@l(r3)
#             NvM_BlockMirrorError = FALSE;
	.d2line		520
	diab.li		r0,0
	lis		r3,NvM_BlockMirrorError@ha
	e_add16i		r3,r3,NvM_BlockMirrorError@l
	stb		r0,0(r3)
#             NvM_ReadRepeatMirrorCount = ((uint8)0U);
	.d2line		521
	lis		r3,NvM_ReadRepeatMirrorCount@ha
	e_add16i		r3,r3,NvM_ReadRepeatMirrorCount@l
	stb		r0,0(r3)
	b		.L470
.L471:
#         }break;
# 
#         /* NVM_BLOCK_NV_READ_PRAM_CHECK_CRC state is called after the check of the existence of CRC so:
#          * Data is not consistent in RAMMirror. The CRC array is not updated.
#          */
#         case NVM_CALCULATION_CRC_FINISHED_NOK:
#         {
#             /* [DD-NVM00790-MGC01-V1] */
#             NvM_Call_Dem_ReportErrorStatus(NvM_Current_Block.block_id, NVM_DEM_EVENT_E_INTEGRITY_FAILED, DEM_EVENT_STATUS_FAILED);
	.d2line		530
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	diab.li		r4,3
	diab.li		r5,1
	bl		NvM_Call_Dem_ReportErrorStatus
#             /* [DD-NVM00791-MGC01-V1] */
#             NvM_Current_Block.info.status_err= (NvM_RequestResultType)NVM_REQ_INTEGRITY_FAILED;
	.d2line		532
	diab.li		r0,3
	lis		r3,(NvM_Current_Block+24)@ha
	stb		r0,(NvM_Current_Block+24)@l(r3)
#             NvM_Current_Block.info.state = NVM_BLOCK_NV_READ_PRAM_PROCESS_ERR;
	.d2line		533
	diab.li		r0,24
	lis		r3,(NvM_Current_Block+12)@ha
	stw		r0,(NvM_Current_Block+12)@l(r3)
	b		.L470
.L472:
# 
#         }break;
# 
#         case NVM_CALCULATION_CRC_IN_PROGRESS:
#         {
#             /* Crc calculation to be continued in the next mainfunction */
#              stopProcessing = TRUE;
	.d2line		540
	diab.li		r31,1		# stopProcessing=r31
.L470:
# 
#         }break;
# 
#         default:
#         {
#             /*Do nothing*/
#         }
#         break;
#     }
# 
#     return stopProcessing;
	.d2line		551
	rlwinm		r3,r31,0,24,31		# stopProcessing=r31
# }
	.d2line		552
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo92:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L642:
	.type		NvM_ActBlockNvReadPRAMCheckCrc,@function
	.size		NvM_ActBlockNvReadPRAMCheckCrc,.-NvM_ActBlockNvReadPRAMCheckCrc
# Number of nodes = 69

# Allocations for NvM_ActBlockNvReadPRAMCheckCrc
#	?a4		stopProcessing
#	?a5		crcState
# FUNC(boolean,NVM_CODE)  NvM_ActBlockNvReadPRAMRamMirror(void)
	.align		2
	.section	.text_vle
        .d2line         555,25
#$$ld
.L650:

#$$bf	NvM_ActBlockNvReadPRAMRamMirror,interprocedural,rasave,nostackparams
	.globl		NvM_ActBlockNvReadPRAMRamMirror
	.d2_cfa_start __cie
NvM_ActBlockNvReadPRAMRamMirror:
.Llo119:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     VAR(boolean,AUTOMATIC) stopProcessing = TRUE;
	.d2line		557
	diab.li		r31,1		# stopProcessing=r31
#     VAR(Std_ReturnType,AUTOMATIC) tmp_result;
#     VAR(NvM_BlockIdType,AUTOMATIC) blockId = NvM_Current_Block.block_id;
	.d2line		559
.Llo95:
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r30,(NvM_Current_Block+4)@l(r3)		# blockId=r30
	mr		r30,r30		# blockId=r30 blockId=r30
# 
#     if(Is_Conf_Block_Use_Synchmechanism(blockId))
	.d2line		561
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	rlwinm		r0,r30,6,10,25		# blockId=r30
	se_add		r3,r0
	lhz		r0,60(r3)
	rlwinm		r0,r0,0,25,25
	cmpi		0,0,r0,64
	bc		0,2,.L479	# ne
#     {
#         /* [DD-NVM00516-MGC01-V1] [DD-NVM00540-MGC01-V2] [DD-NVM00542-MGC01-V1] */
#         /* [DD-NVM00765-MGC01-V1] */
#         tmp_result = NvM_BlockManagementTable.BlockDescriptorPtr[blockId].NvM_ReadRamBlockFromNvCallback(NvM_Common.NvM_RamMirrorPtr);
	.d2line		565
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	rlwinm		r0,r30,6,10,25		# blockId=r30
	se_add		r3,r0
	lwz		r0,48(r3)
	mtspr		ctr,r0
	lis		r3,(NvM_Common+24)@ha
	lwz		r3,(NvM_Common+24)@l(r3)
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x8 0x0 0x0 0x1
#$$rs 1 u
	bcctrl		20,0
.Llo97:
	mr		r3,r3		# tmp_result=r3 tmp_result=r3
#         if(E_OK == tmp_result)
	.d2line		566
	rlwinm		r3,r3,0,24,31		# tmp_result=r3 tmp_result=r3
	se_cmpi		r3,0		# tmp_result=r3
	bc		0,2,.L480	# ne
#         {
#             NvM_BlockMirrorError = FALSE;
	.d2line		568
.Llo98:
	diab.li		r0,0
	lis		r3,NvM_BlockMirrorError@ha		# tmp_result=r3
.Llo99:
	e_add16i		r3,r3,NvM_BlockMirrorError@l		# tmp_result=r3 tmp_result=r3
	stb		r0,0(r3)		# tmp_result=r3
# 
#             /* No recalculation if we copied from ROM */
#             if((Is_Conf_Block_Type_Dataset(blockId) && (TRUE == NvM_Current_Block.info.datasetPointsToRom))
	.d2line		571
	lis		r3,(NvM_BlockManagementTable+4)@ha		# tmp_result=r3
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)		# tmp_result=r3 tmp_result=r3
	rlwinm		r0,r30,6,10,25		# blockId=r30
	se_add		r3,r0		# tmp_result=r3 tmp_result=r3
	lwz		r0,12(r3)		# tmp_result=r3
	se_cmpi		r0,2
	bc		0,2,.L490	# ne
.Llo100:
	lis		r3,(NvM_Current_Block+25)@ha		# tmp_result=r3
.Llo101:
	lbz		r0,(NvM_Current_Block+25)@l(r3)		# tmp_result=r3
	se_cmpi		r0,1
	bc		1,2,.L489	# eq
.L490:
.Llo102:
	lis		r3,(NvM_BlockManagementTable+4)@ha		# tmp_result=r3
.Llo103:
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)		# tmp_result=r3 tmp_result=r3
	rlwinm		r0,r30,6,10,25		# blockId=r30
	se_add		r3,r0		# tmp_result=r3 tmp_result=r3
	lhz		r0,60(r3)		# tmp_result=r3
	rlwinm		r0,r0,0,31,31
	se_cmpi		r0,1
	bc		0,2,.L489	# ne
.Llo104:
	lis		r3,(NvM_BlockManagementTable+4)@ha		# tmp_result=r3
.Llo105:
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)		# tmp_result=r3
.Llo120:
	rlwinm		r30,r30,6,10,25		# blockId=r30 blockId=r30
	se_add		r30,r0		# blockId=r30 blockId=r30
	lhz		r0,60(r30)		# blockId=r30
	rlwinm		r0,r0,0,30,30
	se_cmpi		r0,2
	bc		1,2,.L481	# eq
.L489:
#               || (!(Is_Conf_Block_Use_Crc(blockId) && Is_Conf_Block_Calculate_Crc(blockId))))
#             {
#                 NvM_Current_Block.info.state = NVM_BLOCK_NV_READ_PRAM_DONE;
	.d2line		574
.Llo106:
	diab.li		r0,25
	lis		r3,(NvM_Current_Block+12)@ha		# tmp_result=r3
.Llo107:
	stw		r0,(NvM_Current_Block+12)@l(r3)		# tmp_result=r3
#                 /* [DD-NVM00270-MGC01-V1] [DD-NVM00775-MGC01-V1] [DD-NVM00782-MGC01-V1] */
#                 NvM_Current_Block.info.status_err = (NvM_RequestResultType)NVM_REQ_OK;
	.d2line		576
	diab.li		r0,0
	lis		r3,(NvM_Current_Block+24)@ha		# tmp_result=r3
	stb		r0,(NvM_Current_Block+24)@l(r3)		# tmp_result=r3
	b		.L486
.L481:
#             }
#             else
#             {
#                 /* Start Recalculation [DD-NVM00571-MGC01-V1] [DD-NVM00786-MGC01-V1] */
#                 Set_Crc_State_Machine(NVM_CALCULATION_CRC_INIT);
	.d2line		581
.Llo108:
	diab.li		r31,0		# stopProcessing=r31
	lis		r3,(NvM_Data_Crc+4)@ha		# tmp_result=r3
.Llo109:
	stw		r31,(NvM_Data_Crc+4)@l(r3)		# tmp_result=r3 stopProcessing=r31
#                 NvM_Current_Block.info.state = NVM_BLOCK_NV_READ_PRAM_RECALC;
	.d2line		582
	diab.li		r0,23
	lis		r3,(NvM_Current_Block+12)@ha		# tmp_result=r3
	stw		r0,(NvM_Current_Block+12)@l(r3)		# tmp_result=r3
#                 stopProcessing = FALSE;
	.d2line		583
	b		.L486
.L480:
#             }
#         }
#         else
#         {
#             if(NvM_ReadRepeatMirrorCount == NvM_Common.NvM_RptMirrorCnt)
	.d2line		588
.Llo110:
	lis		r3,NvM_ReadRepeatMirrorCount@ha		# tmp_result=r3
.Llo111:
	lbz		r0,NvM_ReadRepeatMirrorCount@l(r3)		# tmp_result=r3
	lis		r3,(NvM_Common+33)@ha		# tmp_result=r3
	lbz		r3,(NvM_Common+33)@l(r3)		# tmp_result=r3 tmp_result=r3
	se_cmp		r0,r3		# tmp_result=r3
	bc		0,2,.L484	# ne
#             {
#                 /* [DD-NVM00517-MGC01-V1] */
#                 NvM_BlockMirrorError = TRUE;
	.d2line		591
.Llo112:
	diab.li		r5,1
	lis		r3,NvM_BlockMirrorError@ha		# tmp_result=r3
.Llo113:
	e_add16i		r3,r3,NvM_BlockMirrorError@l		# tmp_result=r3 tmp_result=r3
	stb		r5,0(r3)		# tmp_result=r3
# 
#                 NvM_Call_Dem_ReportErrorStatus(blockId, NVM_DEM_EVENT_E_REQ_FAILED, DEM_EVENT_STATUS_FAILED);
	.d2line		593
	rlwinm		r3,r30,0,16,31		# tmp_result=r3 blockId=r30
.Llo114:
	diab.li		r4,2
	bl		NvM_Call_Dem_ReportErrorStatus
# 
#                 /* The tmp_result was E_NOT_OK too many times. stopProcessing is TRUE here */
#                 NvM_Current_Block.info.state = NVM_BLOCK_NV_READ_PRAM_DONE;
	.d2line		596
	diab.li		r0,25
	lis		r3,(NvM_Current_Block+12)@ha		# tmp_result=r3
.Llo115:
	stw		r0,(NvM_Current_Block+12)@l(r3)		# tmp_result=r3
#                 NvM_Current_Block.info.status_err = (NvM_RequestResultType)NVM_REQ_NOT_OK;
	.d2line		597
	diab.li		r0,1
	lis		r3,(NvM_Current_Block+24)@ha		# tmp_result=r3
	stb		r0,(NvM_Current_Block+24)@l(r3)		# tmp_result=r3
	b		.L486
.L484:
#             }
#             else
#             {
#                 NvM_ReadRepeatMirrorCount++;
	.d2line		601
.Llo116:
	lis		r3,NvM_ReadRepeatMirrorCount@ha		# tmp_result=r3
.Llo117:
	lbz		r3,NvM_ReadRepeatMirrorCount@l(r3)		# tmp_result=r3 tmp_result=r3
	diab.addi		r0,r3,1		# tmp_result=r3
	lis		r3,NvM_ReadRepeatMirrorCount@ha		# tmp_result=r3
	e_add16i		r3,r3,NvM_ReadRepeatMirrorCount@l		# tmp_result=r3 tmp_result=r3
	stb		r0,0(r3)		# tmp_result=r3
# 
#                 /* see Bug21212 */
#                 /* It tries again in the next mainfunction. stopProcessing is TRUE here [DD-NVM00839-MGC01-V1] */
#                 NvM_Current_Block.info.state = NVM_BLOCK_NV_READ_PRAM_RAMMIRROR;
	.d2line		605
	diab.li		r0,22
	lis		r3,(NvM_Current_Block+12)@ha		# tmp_result=r3
	stw		r0,(NvM_Current_Block+12)@l(r3)		# tmp_result=r3
	b		.L486
.L479:
#             }
#         }
#     }
#     else
#     {
#         /* [DD-NVM00765-MGC01-V1] [DD-NVM00772-MGC01-V1] */
#         NvM_CopyRamMirrorToRam(&NvM_Current_Block);
	.d2line		612
.Llo118:
	lis		r3,NvM_Current_Block@ha
	e_add16i		r3,r3,NvM_Current_Block@l
	bl		NvM_CopyRamMirrorToRam
# 
#         /* No recalculation if we copied from ROM */
#         if((Is_Conf_Block_Type_Dataset(blockId) && (TRUE == NvM_Current_Block.info.datasetPointsToRom))
	.d2line		615
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	rlwinm		r0,r30,6,10,25		# blockId=r30
	se_add		r3,r0
	lwz		r0,12(r3)
	se_cmpi		r0,2
	bc		0,2,.L493	# ne
	lis		r3,(NvM_Current_Block+25)@ha
	lbz		r0,(NvM_Current_Block+25)@l(r3)
	se_cmpi		r0,1
	bc		1,2,.L492	# eq
.L493:
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	rlwinm		r0,r30,6,10,25		# blockId=r30
	se_add		r3,r0
	lhz		r0,60(r3)
	rlwinm		r0,r0,0,31,31
	se_cmpi		r0,1
	bc		0,2,.L492	# ne
.Llo121:
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)
.Llo122:
	rlwinm		r30,r30,6,10,25		# blockId=r30 blockId=r30
	se_add		r30,r0		# blockId=r30 blockId=r30
	lhz		r0,60(r30)		# blockId=r30
	rlwinm		r0,r0,0,30,30
	se_cmpi		r0,2
	bc		1,2,.L487	# eq
.L492:
#           || (!(Is_Conf_Block_Use_Crc(blockId) && Is_Conf_Block_Calculate_Crc(blockId))))
#         {
#             NvM_Current_Block.info.state = NVM_BLOCK_NV_READ_PRAM_DONE;
	.d2line		618
	diab.li		r0,25
	lis		r3,(NvM_Current_Block+12)@ha
	stw		r0,(NvM_Current_Block+12)@l(r3)
#             /* [DD-NVM00270-MGC01-V1] [DD-NVM00772-MGC01-V1] [DD-NVM00775-MGC01-V1] */
#             /* [DD-NVM00782-MGC01-V1] */
#             NvM_Current_Block.info.status_err = (NvM_RequestResultType)NVM_REQ_OK;
	.d2line		621
	diab.li		r0,0
	lis		r3,(NvM_Current_Block+24)@ha
	stb		r0,(NvM_Current_Block+24)@l(r3)
	b		.L486
.L487:
#         }
#         else
#         {
#             /* Start Recalculation [DD-NVM00571-MGC01-V1] */
#             Set_Crc_State_Machine(NVM_CALCULATION_CRC_INIT);
	.d2line		626
.Llo123:
	diab.li		r31,0		# stopProcessing=r31
	lis		r3,(NvM_Data_Crc+4)@ha
	stw		r31,(NvM_Data_Crc+4)@l(r3)		# stopProcessing=r31
#             NvM_Current_Block.info.state = NVM_BLOCK_NV_READ_PRAM_RECALC;
	.d2line		627
	diab.li		r0,23
	lis		r3,(NvM_Current_Block+12)@ha
	stw		r0,(NvM_Current_Block+12)@l(r3)
#             stopProcessing = FALSE;
.L486:
#         }
# 
#     }
# 
#     return stopProcessing;
	.d2line		633
	rlwinm		r3,r31,0,24,31		# tmp_result=r3 stopProcessing=r31
# }
	.d2line		634
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo96:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L651:
	.type		NvM_ActBlockNvReadPRAMRamMirror,@function
	.size		NvM_ActBlockNvReadPRAMRamMirror,.-NvM_ActBlockNvReadPRAMRamMirror
# Number of nodes = 294

# Allocations for NvM_ActBlockNvReadPRAMRamMirror
#	?a4		stopProcessing
#	?a5		tmp_result
#	?a6		blockId
# FUNC(void,NVM_CODE)  NvM_ActBlockNvReadPRAMRomDatasetValidate(void)
	.align		2
	.section	.text_vle
        .d2line         637,22
#$$ld
.L662:

#$$bf	NvM_ActBlockNvReadPRAMRomDatasetValidate,interprocedural,rasave,nostackparams
	.globl		NvM_ActBlockNvReadPRAMRomDatasetValidate
	.d2_cfa_start __cie
NvM_ActBlockNvReadPRAMRomDatasetValidate:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     VAR(NvM_CalculationCrcStateType,AUTOMATIC) crcState = NvM_ValidateCrc(&NvM_Current_Block,
	.d2line		639
	lis		r3,(NvM_Common+24)@ha		# crcState=r3
.Llo124:
	lwz		r5,(NvM_Common+24)@l(r3)		# crcState=r3
	lis		r3,NvM_Current_Block@ha		# crcState=r3
	e_add16i		r3,r3,NvM_Current_Block@l		# crcState=r3 crcState=r3
.Llo125:
	diab.li		r4,0
	diab.li		r6,0
	bl		NvM_ValidateCrc
.Llo126:
	mr		r3,r3		# crcState=r3 crcState=r3
#                                                                               NVM_UPDATE_CRC_FIELD,
#                                                                               NvM_Common.NvM_RamMirrorPtr,
#                                                                               FALSE);
# 
#     /* CRC configured, calculation finished and it WAS the same as in the CRC buffer OR*/
#     /* CRC not configured OR calculation finished and it WAS NOT the same as in the CRC buffer */
#     if((NVM_CALCULATION_CRC_FINISHED_OK == crcState) || (NVM_CALCULATION_CRC_FINISHED_NOK == crcState))
	.d2line		646
	se_cmpi		r3,2		# crcState=r3
	bc		1,2,.L507	# eq
	se_cmpi		r3,3		# crcState=r3
	bc		0,2,.L505	# ne
.L507:
#     {
#         /* NvM_BlockMirrorError and NvM_ReadRepeatMirrorCount should be initialized before NVM_BLOCK_NV_READ_PRAM_RAMMIRROR */
#         NvM_BlockMirrorError = FALSE;
	.d2line		649
.Llo127:
	diab.li		r0,0
	lis		r3,NvM_BlockMirrorError@ha		# crcState=r3
.Llo128:
	e_add16i		r3,r3,NvM_BlockMirrorError@l		# crcState=r3 crcState=r3
	stb		r0,0(r3)		# crcState=r3
#         NvM_ReadRepeatMirrorCount = (uint8)0U;
	.d2line		650
	lis		r3,NvM_ReadRepeatMirrorCount@ha		# crcState=r3
	e_add16i		r3,r3,NvM_ReadRepeatMirrorCount@l		# crcState=r3 crcState=r3
	stb		r0,0(r3)		# crcState=r3
# 
#         NvM_Current_Block.info.state = NVM_BLOCK_NV_READ_PRAM_RAMMIRROR;
	.d2line		652
	diab.li		r0,22
	lis		r3,(NvM_Current_Block+12)@ha		# crcState=r3
	stw		r0,(NvM_Current_Block+12)@l(r3)		# crcState=r3
.L505:
#     }
# }
	.d2line		654
	.d2epilogue_begin
.Llo129:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L663:
	.type		NvM_ActBlockNvReadPRAMRomDatasetValidate,@function
	.size		NvM_ActBlockNvReadPRAMRomDatasetValidate,.-NvM_ActBlockNvReadPRAMRomDatasetValidate
# Number of nodes = 36

# Allocations for NvM_ActBlockNvReadPRAMRomDatasetValidate
#	?a4		crcState
# FUNC(boolean,NVM_CODE) NvM_ActBlockNvReadPRAMProcessErr(void) /* [DD-NVM00580-MGC01-V1] */
	.align		2
	.section	.text_vle
        .d2line         657,24
#$$ld
.L669:

#$$bf	NvM_ActBlockNvReadPRAMProcessErr,interprocedural,rasave,nostackparams
	.globl		NvM_ActBlockNvReadPRAMProcessErr
	.d2_cfa_start __cie
NvM_ActBlockNvReadPRAMProcessErr:
.Llo148:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
.Llo130:
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)		# stopProcessing=r0
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     VAR(boolean,AUTOMATIC) stopProcessing = TRUE;
	.d2line		659
	diab.li		r0,1		# stopProcessing=r0
#     VAR(NvM_BlockIdType,AUTOMATIC) blockId = NvM_Current_Block.block_id;
	.d2line		660
.Llo131:
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r31,(NvM_Current_Block+4)@l(r3)		# blockId=r31
	mr		r31,r31		# blockId=r31 blockId=r31
# 
#     /* [DD-NVM00526-MGC01-V1] [DD-NVM00581-MGC01-V1] [DD-NVM00582-MGC01-V1] [DD-NVM00583-MGC01-V1] */
#     if(NvM_ReadRetryCounter == NvM_BlockManagementTable.BlockDescriptorPtr[blockId].NvM_MaxNoOfReadRetry)
	.d2line		663
	lis		r3,NvM_ReadRetryCounter@ha
	lbz		r0,NvM_ReadRetryCounter@l(r3)		# stopProcessing=r0
.Llo132:
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	rlwinm		r4,r31,6,10,25		# blockId=r31
	se_add		r3,r4
	lbz		r3,26(r3)
	se_cmp		r0,r3		# stopProcessing=r0
	bc		0,2,.L511	# ne
#     {
#         if(Is_Conf_Block_Type_Redundant(blockId))
	.d2line		665
.Llo133:
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	rlwinm		r4,r31,6,10,25		# blockId=r31
	se_add		r3,r4
	lwz		r0,12(r3)		# stopProcessing=r0
.Llo134:
	se_cmpi		r0,1		# stopProcessing=r0
	bc		0,2,.L512	# ne
#         {
#             if(NVM_REDUNDANT_FIRST_BLOCK == NvM_Current_Block.info.dataset)
	.d2line		667
.Llo135:
	lis		r3,(NvM_Current_Block+16)@ha
	lhz		r0,(NvM_Current_Block+16)@l(r3)		# stopProcessing=r0
.Llo136:
	se_cmpi		r0,0		# stopProcessing=r0
	bc		0,2,.L513	# ne
#             {
#                 NvM_Current_Block.info.dem_err = NVM_DEM_EVENT_E_NO_ERROR;
	.d2line		669
.Llo137:
	diab.li		r4,0
	lis		r3,(NvM_Current_Block+20)@ha
	stw		r4,(NvM_Current_Block+20)@l(r3)
#                 /* [DD-NVM00768-MGC01-V1] */
#                 NvM_Current_Block.info.dataset = NVM_REDUNDANT_SECOND_BLOCK;
	.d2line		671
	diab.li		r0,1		# stopProcessing=r0
.Llo138:
	lis		r3,(NvM_Current_Block+16)@ha
	sth		r0,(NvM_Current_Block+16)@l(r3)		# stopProcessing=r0
#                 NvM_Current_Block.info.state = NVM_BLOCK_NV_READ_PRAM_START;
	.d2line		672
	diab.li		r0,18		# stopProcessing=r0
	lis		r3,(NvM_Current_Block+12)@ha
	stw		r0,(NvM_Current_Block+12)@l(r3)		# stopProcessing=r0
#                 NvM_ReadRetryCounter = ((uint8)0U);
	.d2line		673
	lis		r3,NvM_ReadRetryCounter@ha
	e_add16i		r3,r3,NvM_ReadRetryCounter@l
	stb		r4,0(r3)
#                 stopProcessing = FALSE;
	.d2line		674
	diab.li		r3,0
	b		.L516
.L513:
#             }
#             else /* NVM_REDUNDANT_SECOND_BLOCK */
#             {
#                 NvM_Call_Dem_ReportErrorStatus(blockId, NVM_DEM_EVENT_E_LOSS_OF_REDUNDANCY, DEM_EVENT_STATUS_FAILED);
	.d2line		678
.Llo139:
	rlwinm		r3,r31,0,16,31		# stopProcessing=r3 blockId=r31
	diab.li		r4,4
	diab.li		r5,1
	bl		NvM_Call_Dem_ReportErrorStatus
#                 /* [DD-NVM00785-MGC01-V1] */
#                 NvM_BlockManagementTable.AdminBlockPtr[blockId].attributes.valid = NVM_BLOCK_INVALID;
	.d2line		680
	lis		r3,NvM_BlockManagementTable@ha		# stopProcessing=r3
.Llo140:
	lwz		r0,NvM_BlockManagementTable@l(r3)		# stopProcessing=r0 stopProcessing=r3
	rlwinm		r4,r31,3,13,28		# blockId=r31
	add		r31,r0,r4		# blockId=r31 stopProcessing=r0
	lwz		r0,4(r31)		# stopProcessing=r0 blockId=r31
	.diab.bclri		r0,1		# stopProcessing=r0
	lwz		r3,NvM_BlockManagementTable@l(r3)		# stopProcessing=r3 stopProcessing=r3
.Llo141:
	se_add		r4,r3		# stopProcessing=r3
.Llo142:
	stw		r0,4(r4)		# stopProcessing=r0
# 
#                 NvM_Current_Block.info.status_err = (NvM_RequestResultType)NVM_REQ_REDUNDANCY_FAILED;
	.d2line		682
	diab.li		r0,7		# stopProcessing=r0
	lis		r3,(NvM_Current_Block+24)@ha		# stopProcessing=r3
	stb		r0,(NvM_Current_Block+24)@l(r3)		# stopProcessing=r3 stopProcessing=r0
#                 NvM_Current_Block.info.state = NVM_BLOCK_NV_READ_PRAM_DONE;
	.d2line		683
	diab.li		r0,25		# stopProcessing=r0
	lis		r3,(NvM_Current_Block+12)@ha		# stopProcessing=r3
	stw		r0,(NvM_Current_Block+12)@l(r3)		# stopProcessing=r3 stopProcessing=r0
#                 stopProcessing = TRUE;
	.d2line		684
	diab.li		r3,1		# stopProcessing=r3
	b		.L516
.L512:
#             }
#         }
#         else
#         {
#             NvM_Current_Block.info.state = NVM_BLOCK_NV_READ_PRAM_DONE;
	.d2line		689
.Llo143:
	diab.li		r0,25		# stopProcessing=r0
.Llo144:
	lis		r3,(NvM_Current_Block+12)@ha		# stopProcessing=r3
	stw		r0,(NvM_Current_Block+12)@l(r3)		# stopProcessing=r3 stopProcessing=r0
#             stopProcessing = TRUE;
	.d2line		690
	diab.li		r3,1		# stopProcessing=r3
	b		.L516
.L511:
#         }
#     }
#     else
#     {
#         NvM_ReadRetryCounter++;
	.d2line		695
.Llo145:
	lis		r3,NvM_ReadRetryCounter@ha
	lbz		r3,NvM_ReadRetryCounter@l(r3)
	diab.addi		r0,r3,1		# stopProcessing=r0
.Llo146:
	lis		r3,NvM_ReadRetryCounter@ha
	e_add16i		r3,r3,NvM_ReadRetryCounter@l
	stb		r0,0(r3)		# stopProcessing=r0
#         /* see Bug21213 */
#         NvM_Current_Block.info.status_err = (NvM_RequestResultType)NVM_REQ_PENDING;
	.d2line		697
	diab.li		r0,2		# stopProcessing=r0
	lis		r3,(NvM_Current_Block+24)@ha
	stb		r0,(NvM_Current_Block+24)@l(r3)		# stopProcessing=r0
#         NvM_Current_Block.info.dem_err = NVM_DEM_EVENT_E_NO_ERROR;
	.d2line		698
	diab.li		r4,0
	lis		r3,(NvM_Current_Block+20)@ha
	stw		r4,(NvM_Current_Block+20)@l(r3)
#         NvM_Current_Block.info.state = NVM_BLOCK_NV_READ_PRAM_START;
	.d2line		699
	diab.li		r0,18		# stopProcessing=r0
	lis		r3,(NvM_Current_Block+12)@ha
	stw		r0,(NvM_Current_Block+12)@l(r3)		# stopProcessing=r0
#         stopProcessing = FALSE;
	.d2line		700
	diab.li		r3,0
.L516:
#     }
# 
#     return stopProcessing;
	.d2line		703
.Llo147:
	rlwinm		r3,r3,0,24,31		# stopProcessing=r3 stopProcessing=r3
# }
	.d2line		704
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# stopProcessing=r0
	mtspr		lr,r0		# stopProcessing=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L670:
	.type		NvM_ActBlockNvReadPRAMProcessErr,@function
	.size		NvM_ActBlockNvReadPRAMProcessErr,.-NvM_ActBlockNvReadPRAMProcessErr
# Number of nodes = 158

# Allocations for NvM_ActBlockNvReadPRAMProcessErr
#	?a4		stopProcessing
#	?a5		blockId

# Allocations for module
	.section	.text_vle
	.0byte		.L676
	.section	.text_vle
#$$ld
.L5:
.L778:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MEM\\MemIf\\ssc\\make\\..\\inc\\MemIf_Types.h"
.L775:	.d2filenum "C:\\WINDRI~1\\COMPIL~1\\DIAB-5~1.4\\include\\diab/lpragma.h"
.L715:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MEM\\NvM\\ssc\\make\\..\\inc\\NvM_Types.h"
.L698:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MEM\\NvM\\ssc\\make\\..\\inc\\NvM_I.h"
.L690:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MEM\\NvM\\ssc\\make\\..\\inc\\NvM_Private.h"
.L686:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MEM\\NvM\\ssc\\make\\..\\inc\\NvM.h"
.L677:	.d2filenum "gen\\MPC5746R_ECU\\WindRiver\\NvM_Lcfg.h"
.L525:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MEM\\NvM\\ssc\\make\\..\\src\\NvM_ReadServices.c"
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
	.uleb128	8
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
	.uleb128	3
	.uleb128	8
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
	.uleb128	56
	.uleb128	9
	.uleb128	50
	.uleb128	11
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	11
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
	.uleb128	12
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
	.uleb128	13
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
	.uleb128	14
	.uleb128	40
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	28
	.uleb128	13
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	15
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
	.uleb128	16
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
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
	.uleb128	15
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
	.uleb128	39
	.uleb128	12
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	20
	.uleb128	5
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	21
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
	.uleb128	22
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MEM\\NvM\\ssc\\make\\..\\src\\NvM_ReadServices.c"
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
.L528:
	.sleb128	2
	.4byte		.L522-.L2
	.byte		"NvM_ActSubStateReadPRAMBlockInit"
	.byte		0
	.4byte		.L525
	.uleb128	24
	.uleb128	24
	.4byte		.L526
	.byte		0x1
	.byte		0x1
	.4byte		.L523
	.4byte		.L524
	.section	.debug_info,,n
.L529:
	.sleb128	3
	.4byte		.L525
	.uleb128	26
	.uleb128	28
	.byte		"stop_processing"
	.byte		0
	.4byte		.L526
	.4byte		.L530
	.section	.debug_info,,n
	.sleb128	0
.L522:
	.section	.debug_info,,n
.L535:
	.sleb128	2
	.4byte		.L532-.L2
	.byte		"NvM_ActBlockNvReadPRAMInit"
	.byte		0
	.4byte		.L525
	.uleb128	36
	.uleb128	24
	.4byte		.L526
	.byte		0x1
	.byte		0x1
	.4byte		.L533
	.4byte		.L534
.L536:
	.sleb128	3
	.4byte		.L525
	.uleb128	38
	.uleb128	28
	.byte		"stopProcessing"
	.byte		0
	.4byte		.L526
	.4byte		.L537
	.section	.debug_info,,n
.L538:
	.sleb128	4
	.4byte		.L525
	.uleb128	39
	.uleb128	36
	.byte		"blockId"
	.byte		0
	.4byte		.L539
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
.L542:
	.sleb128	3
	.4byte		.L525
	.uleb128	40
	.uleb128	39
	.byte		"blockManagement"
	.byte		0
	.4byte		.L543
	.4byte		.L545
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L549
	.4byte		.L546
	.4byte		.L547
.L550:
	.sleb128	3
	.4byte		.L525
	.uleb128	81
	.uleb128	54
	.byte		"romDataAddress"
	.byte		0
	.4byte		.L551
	.4byte		.L554
.L555:
	.sleb128	3
	.4byte		.L525
	.uleb128	82
	.uleb128	39
	.byte		"count"
	.byte		0
	.4byte		.L540
	.4byte		.L556
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L560
	.4byte		.L557
	.4byte		.L558
.L561:
	.sleb128	3
	.4byte		.L525
	.uleb128	97
	.uleb128	58
	.byte		"Buf_ptr"
	.byte		0
	.4byte		.L562
	.4byte		.L563
	.section	.debug_info,,n
	.sleb128	0
.L560:
	.section	.debug_info,,n
	.sleb128	0
.L549:
	.section	.debug_info,,n
	.sleb128	0
.L532:
	.section	.debug_info,,n
.L568:
	.sleb128	2
	.4byte		.L565-.L2
	.byte		"NvM_ActSubStateReadPRAMBlockReading"
	.byte		0
	.4byte		.L525
	.uleb128	160
	.uleb128	24
	.4byte		.L526
	.byte		0x1
	.byte		0x1
	.4byte		.L566
	.4byte		.L567
.L569:
	.sleb128	3
	.4byte		.L525
	.uleb128	162
	.uleb128	28
	.byte		"stop_processing"
	.byte		0
	.4byte		.L526
	.4byte		.L570
.L571:
	.sleb128	3
	.4byte		.L525
	.uleb128	163
	.uleb128	36
	.byte		"blockId"
	.byte		0
	.4byte		.L539
	.4byte		.L572
	.section	.debug_info,,n
	.sleb128	0
.L565:
	.section	.debug_info,,n
.L577:
	.sleb128	2
	.4byte		.L574-.L2
	.byte		"NvM_ActSubStateReadPRAMBlockValidate"
	.byte		0
	.4byte		.L525
	.uleb128	243
	.uleb128	24
	.4byte		.L526
	.byte		0x1
	.byte		0x1
	.4byte		.L575
	.4byte		.L576
.L578:
	.sleb128	3
	.4byte		.L525
	.uleb128	245
	.uleb128	28
	.byte		"stop_processing"
	.byte		0
	.4byte		.L526
	.4byte		.L579
.L580:
	.sleb128	3
	.4byte		.L525
	.uleb128	246
	.uleb128	48
	.byte		"crcState"
	.byte		0
	.4byte		.L581
	.4byte		.L583
	.section	.debug_info,,n
	.sleb128	0
.L574:
	.section	.debug_info,,n
.L588:
	.sleb128	2
	.4byte		.L585-.L2
	.byte		"NvM_ActBlockNvReadPRAMRecalc"
	.byte		0
	.4byte		.L525
	.uleb128	268
	.uleb128	24
	.4byte		.L526
	.byte		0x1
	.byte		0x1
	.4byte		.L586
	.4byte		.L587
.L589:
	.sleb128	3
	.4byte		.L525
	.uleb128	271
	.uleb128	48
	.byte		"crcState"
	.byte		0
	.4byte		.L581
	.4byte		.L590
	.section	.debug_info,,n
	.sleb128	0
.L585:
	.section	.debug_info,,n
.L595:
	.sleb128	6
	.4byte		.L592-.L2
	.byte		"NvM_ActBlockNvReadPRAMStart"
	.byte		0
	.4byte		.L525
	.uleb128	315
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L593
	.4byte		.L594
.L596:
	.sleb128	3
	.4byte		.L525
	.uleb128	317
	.uleb128	42
	.byte		"Buf_ptr"
	.byte		0
	.4byte		.L562
	.4byte		.L597
.L598:
	.sleb128	3
	.4byte		.L525
	.uleb128	318
	.uleb128	36
	.byte		"blockId"
	.byte		0
	.4byte		.L539
	.4byte		.L599
.L600:
	.sleb128	3
	.4byte		.L525
	.uleb128	320
	.uleb128	38
	.byte		"prevMemIfDrvStatus"
	.byte		0
	.4byte		.L601
	.4byte		.L603
	.section	.debug_info,,n
	.sleb128	0
.L592:
	.section	.debug_info,,n
.L608:
	.sleb128	2
	.4byte		.L605-.L2
	.byte		"NvM_ReadingPRAM"
	.byte		0
	.4byte		.L525
	.uleb128	364
	.uleb128	24
	.4byte		.L526
	.byte		0x1
	.byte		0x1
	.4byte		.L606
	.4byte		.L607
	.section	.debug_info,,n
	.sleb128	7
	.4byte		.L525
	.uleb128	364
	.uleb128	24
	.byte		"block"
	.byte		0
	.4byte		.L609
	.4byte		.L612
.L613:
	.sleb128	3
	.4byte		.L525
	.uleb128	367
	.uleb128	28
	.byte		"tmp_stop_processing"
	.byte		0
	.4byte		.L526
	.4byte		.L614
.L615:
	.sleb128	3
	.4byte		.L525
	.uleb128	368
	.uleb128	28
	.byte		"Continue_processing_data"
	.byte		0
	.4byte		.L526
	.4byte		.L616
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L620
	.4byte		.L617
	.4byte		.L618
.L621:
	.sleb128	4
	.4byte		.L525
	.uleb128	376
	.uleb128	31
	.byte		"tmp_header"
	.byte		0
	.4byte		.L540
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
	.section	.debug_info,,n
	.sleb128	0
.L620:
	.section	.debug_info,,n
	.sleb128	0
.L605:
	.section	.debug_info,,n
.L627:
	.sleb128	2
	.4byte		.L624-.L2
	.byte		"NvM_ActBlockNvReadPRAMInProgress"
	.byte		0
	.4byte		.L525
	.uleb128	436
	.uleb128	24
	.4byte		.L526
	.byte		0x1
	.byte		0x1
	.4byte		.L625
	.4byte		.L626
.L628:
	.sleb128	3
	.4byte		.L525
	.uleb128	438
	.uleb128	28
	.byte		"stopProcessing"
	.byte		0
	.4byte		.L526
	.4byte		.L629
.L630:
	.sleb128	3
	.4byte		.L525
	.uleb128	439
	.uleb128	40
	.byte		"memIfJobResult"
	.byte		0
	.4byte		.L631
	.4byte		.L633
.L634:
	.sleb128	3
	.4byte		.L525
	.uleb128	440
	.uleb128	37
	.byte		"memIfDrvStatus"
	.byte		0
	.4byte		.L601
	.4byte		.L635
.L636:
	.sleb128	3
	.4byte		.L525
	.uleb128	441
	.uleb128	36
	.byte		"blockId"
	.byte		0
	.4byte		.L539
	.4byte		.L637
	.section	.debug_info,,n
	.sleb128	0
.L624:
	.section	.debug_info,,n
.L643:
	.sleb128	2
	.4byte		.L640-.L2
	.byte		"NvM_ActBlockNvReadPRAMCheckCrc"
	.byte		0
	.4byte		.L525
	.uleb128	508
	.uleb128	25
	.4byte		.L526
	.byte		0x1
	.byte		0x1
	.4byte		.L641
	.4byte		.L642
.L644:
	.sleb128	3
	.4byte		.L525
	.uleb128	510
	.uleb128	29
	.byte		"stopProcessing"
	.byte		0
	.4byte		.L526
	.4byte		.L645
.L646:
	.sleb128	3
	.4byte		.L525
	.uleb128	512
	.uleb128	48
	.byte		"crcState"
	.byte		0
	.4byte		.L581
	.4byte		.L647
	.section	.debug_info,,n
	.sleb128	0
.L640:
	.section	.debug_info,,n
.L652:
	.sleb128	2
	.4byte		.L649-.L2
	.byte		"NvM_ActBlockNvReadPRAMRamMirror"
	.byte		0
	.4byte		.L525
	.uleb128	555
	.uleb128	25
	.4byte		.L526
	.byte		0x1
	.byte		0x1
	.4byte		.L650
	.4byte		.L651
.L653:
	.sleb128	3
	.4byte		.L525
	.uleb128	557
	.uleb128	28
	.byte		"stopProcessing"
	.byte		0
	.4byte		.L526
	.4byte		.L654
.L655:
	.sleb128	3
	.4byte		.L525
	.uleb128	558
	.uleb128	35
	.byte		"tmp_result"
	.byte		0
	.4byte		.L656
	.4byte		.L657
.L658:
	.sleb128	3
	.4byte		.L525
	.uleb128	559
	.uleb128	36
	.byte		"blockId"
	.byte		0
	.4byte		.L539
	.4byte		.L659
	.section	.debug_info,,n
	.sleb128	0
.L649:
	.section	.debug_info,,n
.L664:
	.sleb128	6
	.4byte		.L661-.L2
	.byte		"NvM_ActBlockNvReadPRAMRomDatasetValidate"
	.byte		0
	.4byte		.L525
	.uleb128	637
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L662
	.4byte		.L663
.L665:
	.sleb128	3
	.4byte		.L525
	.uleb128	639
	.uleb128	48
	.byte		"crcState"
	.byte		0
	.4byte		.L581
	.4byte		.L666
	.section	.debug_info,,n
	.sleb128	0
.L661:
	.section	.debug_info,,n
.L671:
	.sleb128	2
	.4byte		.L668-.L2
	.byte		"NvM_ActBlockNvReadPRAMProcessErr"
	.byte		0
	.4byte		.L525
	.uleb128	657
	.uleb128	24
	.4byte		.L526
	.byte		0x1
	.byte		0x1
	.4byte		.L669
	.4byte		.L670
.L672:
	.sleb128	3
	.4byte		.L525
	.uleb128	659
	.uleb128	28
	.byte		"stopProcessing"
	.byte		0
	.4byte		.L526
	.4byte		.L673
.L674:
	.sleb128	3
	.4byte		.L525
	.uleb128	660
	.uleb128	36
	.byte		"blockId"
	.byte		0
	.4byte		.L539
	.4byte		.L675
	.section	.debug_info,,n
	.sleb128	0
.L668:
	.section	.debug_info,,n
.L676:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L677
	.uleb128	98
	.uleb128	40
	.byte		"NvM_Common"
	.byte		0
	.4byte		.L678
	.section	.debug_info,,n
.L681:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L677
	.uleb128	100
	.uleb128	49
	.byte		"NvM_BlockManagementTable"
	.byte		0
	.4byte		.L682
.L685:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L686
	.uleb128	309
	.uleb128	45
	.byte		"NvM_SubStateDbg"
	.byte		0
	.4byte		.L687
	.0byte		.L685
.L689:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L690
	.uleb128	321
	.uleb128	42
	.byte		"NvM_Current_Block"
	.byte		0
	.4byte		.L610
.L691:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L690
	.uleb128	324
	.uleb128	38
	.byte		"NvM_MemIf_Driver_Status"
	.byte		0
	.4byte		.L601
.L692:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L690
	.uleb128	327
	.uleb128	37
	.byte		"NvM_Data_Crc"
	.byte		0
	.4byte		.L693
.L695:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L690
	.uleb128	352
	.uleb128	29
	.byte		"NvM_BlockMirrorError"
	.byte		0
	.4byte		.L526
.L696:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L690
	.uleb128	367
	.uleb128	27
	.byte		"NvM_ReadRepeatMirrorCount"
	.byte		0
	.4byte		.L553
.L697:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L690
	.uleb128	371
	.uleb128	27
	.byte		"NvM_ReadRetryCounter"
	.byte		0
	.4byte		.L553
	.section	.debug_info,,n
.L611:
	.sleb128	9
	.4byte		.L698
	.uleb128	227
	.uleb128	14
	.4byte		.L699-.L2
	.byte		"NvM_BlockRequestType_Tag"
	.byte		0
	.uleb128	28
	.section	.debug_info,,n
.L314:
	.sleb128	10
	.byte		"service_id"
	.byte		0
	.4byte		.L700
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L315:
	.sleb128	10
	.byte		"block_id"
	.byte		0
	.4byte		.L539
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L316:
	.sleb128	10
	.byte		"ram_block_ptr"
	.byte		0
	.4byte		.L562
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L317:
	.sleb128	10
	.byte		"info"
	.byte		0
	.4byte		.L702
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L699:
.L703:
	.sleb128	9
	.4byte		.L698
	.uleb128	227
	.uleb128	14
	.4byte		.L704-.L2
	.byte		"NvM_NvMemifInfoType_Tag"
	.byte		0
	.uleb128	16
.L309:
	.sleb128	10
	.byte		"state"
	.byte		0
	.4byte		.L705
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L310:
	.sleb128	10
	.byte		"dataset"
	.byte		0
	.4byte		.L540
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L311:
	.sleb128	10
	.byte		"dem_err"
	.byte		0
	.4byte		.L707
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L312:
	.sleb128	10
	.byte		"status_err"
	.byte		0
	.4byte		.L709
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L313:
	.sleb128	10
	.byte		"datasetPointsToRom"
	.byte		0
	.4byte		.L526
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
	.sleb128	0
.L704:
.L694:
	.sleb128	9
	.4byte		.L698
	.uleb128	227
	.uleb128	14
	.4byte		.L710-.L2
	.byte		"NvM_DataCrcType_Tag"
	.byte		0
	.uleb128	24
.L297:
	.sleb128	10
	.byte		"result"
	.byte		0
	.4byte		.L711
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L298:
	.sleb128	10
	.byte		"state"
	.byte		0
	.4byte		.L581
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L299:
	.sleb128	10
	.byte		"crcType"
	.byte		0
	.4byte		.L713
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L300:
	.sleb128	10
	.byte		"one_step_data_length"
	.byte		0
	.4byte		.L540
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L301:
	.sleb128	10
	.byte		"data_length_to_process"
	.byte		0
	.4byte		.L540
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L302:
	.sleb128	10
	.byte		"buf_ptr"
	.byte		0
	.4byte		.L562
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L303:
	.sleb128	10
	.byte		"isFirstCrcCall"
	.byte		0
	.4byte		.L526
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L710:
.L684:
	.sleb128	9
	.4byte		.L715
	.uleb128	185
	.uleb128	14
	.4byte		.L716-.L2
	.byte		"NvM_BlockManagementType_Tag"
	.byte		0
	.uleb128	8
.L295:
	.sleb128	10
	.byte		"AdminBlockPtr"
	.byte		0
	.4byte		.L717
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L296:
	.sleb128	10
	.byte		"BlockDescriptorPtr"
	.byte		0
	.4byte		.L721
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L716:
.L680:
	.sleb128	9
	.4byte		.L715
	.uleb128	185
	.uleb128	14
	.4byte		.L726-.L2
	.byte		"NvM_CommonType_Tag"
	.byte		0
	.uleb128	40
.L281:
	.sleb128	10
	.byte		"NvM_CrcNumOfBytes"
	.byte		0
	.4byte		.L540
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L282:
	.sleb128	10
	.byte		"NvM_CompiledConfigId"
	.byte		0
	.4byte		.L540
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L283:
	.sleb128	10
	.byte		"NvM_TotalBlockNb"
	.byte		0
	.4byte		.L539
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L284:
	.sleb128	10
	.byte		"NvM_MultiBlockCallback"
	.byte		0
	.4byte		.L727
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L285:
	.sleb128	10
	.byte		"NvM_BswMBlockModeCallback"
	.byte		0
	.4byte		.L731
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L286:
	.sleb128	10
	.byte		"NvM_BswMJobModeCallback"
	.byte		0
	.4byte		.L735
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L287:
	.sleb128	10
	.byte		"NvM_BlockCRCPtr"
	.byte		0
	.4byte		.L739
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L288:
	.sleb128	10
	.byte		"NvM_RamMirrorPtr"
	.byte		0
	.4byte		.L741
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L289:
	.sleb128	10
	.byte		"NvM_WriteVfyBuffPtr"
	.byte		0
	.4byte		.L741
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L290:
	.sleb128	10
	.byte		"NvM_DatasetSelectionBits"
	.byte		0
	.4byte		.L553
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L291:
	.sleb128	10
	.byte		"NvM_RptMirrorCnt"
	.byte		0
	.4byte		.L553
	.sleb128	2
	.byte		0x23
	.uleb128	33
	.byte		0x1
.L292:
	.sleb128	10
	.byte		"NvM_BswMMultiBlk"
	.byte		0
	.4byte		.L526
	.sleb128	2
	.byte		0x23
	.uleb128	34
	.byte		0x1
.L293:
	.sleb128	10
	.byte		"NvM_DrvModeSwitch"
	.byte		0
	.4byte		.L526
	.sleb128	2
	.byte		0x23
	.uleb128	35
	.byte		0x1
.L294:
	.sleb128	10
	.byte		"NvM_DynConfig"
	.byte		0
	.4byte		.L526
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
	.sleb128	0
.L726:
.L725:
	.sleb128	9
	.4byte		.L715
	.uleb128	185
	.uleb128	14
	.4byte		.L742-.L2
	.byte		"NvM_BlockDescriptorType_Tag"
	.byte		0
	.uleb128	64
.L260:
	.sleb128	10
	.byte		"NvM_BlockCRC"
	.byte		0
	.4byte		.L713
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L261:
	.sleb128	10
	.byte		"CrcFunctionPtr"
	.byte		0
	.4byte		.L743
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L262:
	.sleb128	10
	.byte		"NvM_NvramDeviceId"
	.byte		0
	.4byte		.L553
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L263:
	.sleb128	10
	.byte		"NvM_BlockManagement"
	.byte		0
	.4byte		.L543
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L264:
	.sleb128	10
	.byte		"NvM_NvBlockNum"
	.byte		0
	.4byte		.L553
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L265:
	.sleb128	10
	.byte		"NvM_RomBlockNum"
	.byte		0
	.4byte		.L553
	.sleb128	2
	.byte		0x23
	.uleb128	17
	.byte		0x1
.L266:
	.sleb128	10
	.byte		"NvM_BlockJobPriority"
	.byte		0
	.4byte		.L553
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L267:
	.sleb128	10
	.byte		"NvM_NvBlockLength"
	.byte		0
	.4byte		.L540
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L268:
	.sleb128	10
	.byte		"NvM_NvBlockBaseNumber"
	.byte		0
	.4byte		.L540
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L269:
	.sleb128	10
	.byte		"NvM_NvBlockIdentifier"
	.byte		0
	.4byte		.L539
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L270:
	.sleb128	10
	.byte		"NvM_MaxNoOfReadRetry"
	.byte		0
	.4byte		.L553
	.sleb128	2
	.byte		0x23
	.uleb128	26
	.byte		0x1
.L271:
	.sleb128	10
	.byte		"NvM_MaxNoOfWriteRetry"
	.byte		0
	.4byte		.L553
	.sleb128	2
	.byte		0x23
	.uleb128	27
	.byte		0x1
.L272:
	.sleb128	10
	.byte		"NvM_WriteVerificationDataSize"
	.byte		0
	.4byte		.L540
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L273:
	.sleb128	10
	.byte		"NvM_RamBlockDataAddress"
	.byte		0
	.4byte		.L562
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L274:
	.sleb128	10
	.byte		"NvM_RomBlockDataAddress"
	.byte		0
	.4byte		.L551
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L275:
	.sleb128	10
	.byte		"NvM_InitBlockCallback"
	.byte		0
	.4byte		.L747
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L276:
	.sleb128	10
	.byte		"NvMSingleBlockCallback"
	.byte		0
	.4byte		.L751
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L277:
	.sleb128	10
	.byte		"NvM_ReadRamBlockFromNvCallback"
	.byte		0
	.4byte		.L755
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L278:
	.sleb128	10
	.byte		"NvMWriteRamBlockToNvCallback"
	.byte		0
	.4byte		.L762
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L279:
	.sleb128	10
	.byte		"NvM_Block_DemEventIds"
	.byte		0
	.4byte		.L767
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L280:
	.sleb128	10
	.byte		"NvM_booleanconfig"
	.byte		0
	.4byte		.L540
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
	.sleb128	0
.L742:
.L720:
	.sleb128	9
	.4byte		.L715
	.uleb128	185
	.uleb128	14
	.4byte		.L771-.L2
	.byte		"NvM_AdministrativeBlockType_Tag"
	.byte		0
	.uleb128	8
.L257:
	.sleb128	10
	.byte		"dataset_idx"
	.byte		0
	.4byte		.L553
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L258:
	.sleb128	10
	.byte		"error_status"
	.byte		0
	.4byte		.L709
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L259:
	.sleb128	10
	.byte		"attributes"
	.byte		0
	.4byte		.L772
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L771:
	.section	.debug_info,,n
.L772:
	.sleb128	11
	.4byte		.L715
	.uleb128	185
	.uleb128	14
	.4byte		.L773-.L2
	.uleb128	4
	.section	.debug_info,,n
.L252:
	.sleb128	12
	.byte		"wr_protect"
	.byte		0
	.4byte		.L774
	.uleb128	4
	.byte		0x1
	.byte		0x0
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L253:
	.sleb128	12
	.byte		"valid"
	.byte		0
	.4byte		.L774
	.uleb128	4
	.byte		0x1
	.byte		0x1
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L254:
	.sleb128	12
	.byte		"changed"
	.byte		0
	.4byte		.L774
	.uleb128	4
	.byte		0x1
	.byte		0x2
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L255:
	.sleb128	12
	.byte		"BlockLock"
	.byte		0
	.4byte		.L774
	.uleb128	4
	.byte		0x1
	.byte		0x3
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L256:
	.sleb128	12
	.byte		"unused"
	.byte		0
	.4byte		.L774
	.uleb128	4
	.byte		0xc
	.byte		0x4
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L773:
.L770:
	.sleb128	9
	.4byte		.L775
	.uleb128	69
	.uleb128	1
	.4byte		.L776-.L2
	.byte		"NvM_DemEventIdType_Tag"
	.byte		0
	.uleb128	16
.L244:
	.sleb128	10
	.byte		"dem_event_e_hardware"
	.byte		0
	.4byte		.L777
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L245:
	.sleb128	10
	.byte		"dem_event_req_failed"
	.byte		0
	.4byte		.L777
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L246:
	.sleb128	10
	.byte		"dem_event_integrity_failed"
	.byte		0
	.4byte		.L777
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L247:
	.sleb128	10
	.byte		"dem_event_lossof_redundancy"
	.byte		0
	.4byte		.L777
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L248:
	.sleb128	10
	.byte		"dem_event_verify_failed"
	.byte		0
	.4byte		.L777
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L249:
	.sleb128	10
	.byte		"dem_event_queue_overflow"
	.byte		0
	.4byte		.L777
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L250:
	.sleb128	10
	.byte		"dem_event_write_protected"
	.byte		0
	.4byte		.L777
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L251:
	.sleb128	10
	.byte		"dem_event_wrong_block_id"
	.byte		0
	.4byte		.L777
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
	.sleb128	0
.L776:
	.section	.debug_info,,n
.L632:
	.sleb128	13
	.4byte		.L778
	.uleb128	115
	.uleb128	14
	.4byte		.L779-.L2
	.byte		"MemIf_JobResultType_Tag"
	.byte		0
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	14
	.byte		"MEMIF_JOB_OK"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"MEMIF_JOB_FAILED"
	.byte		0
	.sleb128	1
	.sleb128	14
	.byte		"MEMIF_JOB_PENDING"
	.byte		0
	.sleb128	2
	.sleb128	14
	.byte		"MEMIF_JOB_CANCELED"
	.byte		0
	.sleb128	3
	.sleb128	14
	.byte		"MEMIF_BLOCK_INCONSISTENT"
	.byte		0
	.sleb128	4
	.sleb128	14
	.byte		"MEMIF_BLOCK_INVALID"
	.byte		0
	.sleb128	5
	.sleb128	0
.L779:
.L602:
	.sleb128	13
	.4byte		.L778
	.uleb128	100
	.uleb128	14
	.4byte		.L780-.L2
	.byte		"MemIf_StatusType_Tag"
	.byte		0
	.uleb128	4
	.sleb128	14
	.byte		"MEMIF_UNINIT"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"MEMIF_IDLE"
	.byte		0
	.sleb128	1
	.sleb128	14
	.byte		"MEMIF_BUSY"
	.byte		0
	.sleb128	2
	.sleb128	14
	.byte		"MEMIF_BUSY_INTERNAL"
	.byte		0
	.sleb128	3
	.sleb128	0
.L780:
.L582:
	.sleb128	13
	.4byte		.L698
	.uleb128	211
	.uleb128	14
	.4byte		.L781-.L2
	.byte		"NvM_CalculationCrcStateType_Tag"
	.byte		0
	.uleb128	4
	.sleb128	14
	.byte		"NVM_CALCULATION_CRC_INIT"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"NVM_CALCULATION_CRC_IN_PROGRESS"
	.byte		0
	.sleb128	1
	.sleb128	14
	.byte		"NVM_CALCULATION_CRC_FINISHED_OK"
	.byte		0
	.sleb128	2
	.sleb128	14
	.byte		"NVM_CALCULATION_CRC_FINISHED_NOK"
	.byte		0
	.sleb128	3
	.sleb128	0
.L781:
.L701:
	.sleb128	13
	.4byte		.L698
	.uleb128	176
	.uleb128	14
	.4byte		.L782-.L2
	.byte		"NvM_ServiceIdType_Tag"
	.byte		0
	.uleb128	4
	.sleb128	14
	.byte		"NVM_INIT_ID"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"NVM_SET_DATA_INDEX_ID"
	.byte		0
	.sleb128	1
	.sleb128	14
	.byte		"NVM_GET_DATA_INDEX_ID"
	.byte		0
	.sleb128	2
	.sleb128	14
	.byte		"NVM_SET_BLOCK_PROTECTION_ID"
	.byte		0
	.sleb128	3
	.sleb128	14
	.byte		"NVM_GET_ERROR_STATUS_ID"
	.byte		0
	.sleb128	4
	.sleb128	14
	.byte		"NVM_SET_RAM_BLOCK_STATUS_ID"
	.byte		0
	.sleb128	5
	.sleb128	14
	.byte		"NVM_READ_BLOCK_ID"
	.byte		0
	.sleb128	6
	.sleb128	14
	.byte		"NVM_WRITE_BLOCK_ID"
	.byte		0
	.sleb128	7
	.sleb128	14
	.byte		"NVM_RESTORE_BLOCK_DEFAULTS_ID"
	.byte		0
	.sleb128	8
	.sleb128	14
	.byte		"NVM_ERASE_BLOCK_ID"
	.byte		0
	.sleb128	9
	.sleb128	14
	.byte		"NVM_CANCEL_WRITE_ALL_ID"
	.byte		0
	.sleb128	10
	.sleb128	14
	.byte		"NVM_INVALIDATE_NV_BLOCK_ID"
	.byte		0
	.sleb128	11
	.sleb128	14
	.byte		"NVM_READ_ALL_ID"
	.byte		0
	.sleb128	12
	.sleb128	14
	.byte		"NVM_WRITE_ALL_ID"
	.byte		0
	.sleb128	13
	.sleb128	14
	.byte		"NVM_MAIN_FUNCTION_ID"
	.byte		0
	.sleb128	14
	.sleb128	14
	.byte		"NVM_GET_VERSION_INFO_ID"
	.byte		0
	.sleb128	15
	.sleb128	14
	.byte		"NVM_CANCEL_JOB_ID"
	.byte		0
	.sleb128	16
	.sleb128	14
	.byte		"NVM_JOB_END_NOTIFICATION_ID"
	.byte		0
	.sleb128	17
	.sleb128	14
	.byte		"NVM_JOB_ERROR_NOTIFICATION_ID"
	.byte		0
	.sleb128	18
	.sleb128	14
	.byte		"NVM_SETBLOCK_LOCK_STATUS_ID"
	.byte		0
	.sleb128	19
	.sleb128	14
	.byte		"NVM_READ_PRAM_BLOCK_ID"
	.byte		0
	.sleb128	22
	.sleb128	14
	.byte		"NVM_WRITE_PRAM_BLOCK_ID"
	.byte		0
	.sleb128	23
	.sleb128	14
	.byte		"NVM_RESTORE_PRAM_BLOCK_DEFAULTS_ID"
	.byte		0
	.sleb128	24
	.sleb128	14
	.byte		"NVM_VALIDATE_ALL_ID"
	.byte		0
	.sleb128	25
	.sleb128	14
	.byte		"NVM_NO_SERVICE_PENDING_ID"
	.byte		0
	.sleb128	26
	.sleb128	0
.L782:
.L706:
	.sleb128	13
	.4byte		.L698
	.uleb128	122
	.uleb128	14
	.4byte		.L783-.L2
	.byte		"NvM_BlockMemifDriverStateType_Tag"
	.byte		0
	.uleb128	4
	.sleb128	14
	.byte		"NVM_BLOCK_NV_READ_INIT"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"NVM_BLOCK_NV_READ_START"
	.byte		0
	.sleb128	1
	.sleb128	14
	.byte		"NVM_BLOCK_NV_READ_ROM_DATASET_VALIDATE"
	.byte		0
	.sleb128	2
	.sleb128	14
	.byte		"NVM_BLOCK_NV_READ_IN_PROGRESS"
	.byte		0
	.sleb128	3
	.sleb128	14
	.byte		"NVM_BLOCK_NV_READ_CHECK_CRC"
	.byte		0
	.sleb128	4
	.sleb128	14
	.byte		"NVM_BLOCK_NV_READ_RAMMIRROR"
	.byte		0
	.sleb128	5
	.sleb128	14
	.byte		"NVM_BLOCK_NV_READ_PROCESS_ERR"
	.byte		0
	.sleb128	6
	.sleb128	14
	.byte		"NVM_BLOCK_NV_READ_DONE"
	.byte		0
	.sleb128	7
	.sleb128	14
	.byte		"NVM_BLOCK_NV_WRITE_PREINIT"
	.byte		0
	.sleb128	8
	.sleb128	14
	.byte		"NVM_BLOCK_NV_WRITE_INIT"
	.byte		0
	.sleb128	9
	.sleb128	14
	.byte		"NVM_BLOCK_NV_WRITE_IN_PROGRESS"
	.byte		0
	.sleb128	10
	.sleb128	14
	.byte		"NVM_BLOCK_NV_WRITE_VALIDATE"
	.byte		0
	.sleb128	11
	.sleb128	14
	.byte		"NVM_BLOCK_NV_WRITE_PROCESS_ERR"
	.byte		0
	.sleb128	12
	.sleb128	14
	.byte		"NVM_BLOCK_NV_WRITE_START_WRITE"
	.byte		0
	.sleb128	13
	.sleb128	14
	.byte		"NVM_BLOCK_NV_WRITE_VERIFICATION"
	.byte		0
	.sleb128	14
	.sleb128	14
	.byte		"NVM_BLOCK_NV_WRITE_VERIFICATION_IN_PROGRESS"
	.byte		0
	.sleb128	15
	.sleb128	14
	.byte		"NVM_BLOCK_NV_WRITE_DONE"
	.byte		0
	.sleb128	16
	.sleb128	14
	.byte		"NVM_BLOCK_NV_READ_PRAM_INIT"
	.byte		0
	.sleb128	17
	.sleb128	14
	.byte		"NVM_BLOCK_NV_READ_PRAM_START"
	.byte		0
	.sleb128	18
	.sleb128	14
	.byte		"NVM_BLOCK_NV_READ_PRAM_ROM_DATASET_VALIDATE"
	.byte		0
	.sleb128	19
	.sleb128	14
	.byte		"NVM_BLOCK_NV_READ_PRAM_IN_PROGRESS"
	.byte		0
	.sleb128	20
	.sleb128	14
	.byte		"NVM_BLOCK_NV_READ_PRAM_CHECK_CRC"
	.byte		0
	.sleb128	21
	.sleb128	14
	.byte		"NVM_BLOCK_NV_READ_PRAM_RAMMIRROR"
	.byte		0
	.sleb128	22
	.sleb128	14
	.byte		"NVM_BLOCK_NV_READ_PRAM_RECALC"
	.byte		0
	.sleb128	23
	.sleb128	14
	.byte		"NVM_BLOCK_NV_READ_PRAM_PROCESS_ERR"
	.byte		0
	.sleb128	24
	.sleb128	14
	.byte		"NVM_BLOCK_NV_READ_PRAM_DONE"
	.byte		0
	.sleb128	25
	.sleb128	14
	.byte		"NVM_BLOCK_NV_WRITE_PRAM_INIT"
	.byte		0
	.sleb128	26
	.sleb128	14
	.byte		"NVM_BLOCK_NV_WRITE_PRAM_PREINIT"
	.byte		0
	.sleb128	27
	.sleb128	14
	.byte		"NVM_BLOCK_NV_WRITE_PRAM_IN_PROGRESS"
	.byte		0
	.sleb128	28
	.sleb128	14
	.byte		"NVM_BLOCK_NV_WRITE_PRAM_VALIDATE"
	.byte		0
	.sleb128	29
	.sleb128	14
	.byte		"NVM_BLOCK_NV_WRITE_PRAM_PROCESS_ERR"
	.byte		0
	.sleb128	30
	.sleb128	14
	.byte		"NVM_BLOCK_NV_WRITE_PRAM_START_WRITE"
	.byte		0
	.sleb128	31
	.sleb128	14
	.byte		"NVM_BLOCK_NV_WRITE_PRAM_VERIFICATION"
	.byte		0
	.sleb128	32
	.sleb128	14
	.byte		"NVM_BLOCK_NV_WRITE_PRAM_VERIFICATION_IN_PROGRESS"
	.byte		0
	.sleb128	33
	.sleb128	14
	.byte		"NVM_BLOCK_NV_WRITE_PRAM_DONE"
	.byte		0
	.sleb128	34
	.sleb128	14
	.byte		"NVM_BLOCK_VALIDATE_INIT"
	.byte		0
	.sleb128	35
	.sleb128	14
	.byte		"NVM_BLOCK_VALIDATE_USING_RAMMIRROR"
	.byte		0
	.sleb128	36
	.sleb128	14
	.byte		"NVM_BLOCK_VALIDATE_CHECK_CRC_RAM"
	.byte		0
	.sleb128	37
	.sleb128	14
	.byte		"NVM_BLOCK_VALIDATE_CHECK_CRC_RAMMIRROR"
	.byte		0
	.sleb128	38
	.sleb128	14
	.byte		"NVM_BLOCK_VALIDATE_DONE"
	.byte		0
	.sleb128	39
	.sleb128	14
	.byte		"NVM_BLOCK_MEMIF_DRIVER_STATE_NB"
	.byte		0
	.sleb128	40
	.sleb128	0
.L783:
.L688:
	.sleb128	13
	.4byte		.L686
	.uleb128	185
	.uleb128	14
	.4byte		.L784-.L2
	.byte		"NvM_SubStateMachineType_Tag"
	.byte		0
	.uleb128	4
	.sleb128	14
	.byte		"NVM_SUBSTATE_READALL_INIT"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"NVM_SUBSTATE_READALL_SELECT_READ_METHOD"
	.byte		0
	.sleb128	1
	.sleb128	14
	.byte		"NVM_SUBSTATE_READALL_EXTENDED_METHOD"
	.byte		0
	.sleb128	2
	.sleb128	14
	.byte		"NVM_SUBSTATE_WRITEALL_INIT"
	.byte		0
	.sleb128	3
	.sleb128	14
	.byte		"NVM_SUBSTATE_WRITEALL_FIND_BLOCK"
	.byte		0
	.sleb128	4
	.sleb128	14
	.byte		"NVM_SUBSTATE_WRITEALL_CANCELED"
	.byte		0
	.sleb128	5
	.sleb128	14
	.byte		"NVM_SUBSTATE_VALIDATEALL_INIT"
	.byte		0
	.sleb128	6
	.sleb128	14
	.byte		"NVM_SUBSTATE_VALIDATEALL_SELECT_BLOCKS"
	.byte		0
	.sleb128	7
	.sleb128	14
	.byte		"NVM_SUBSTATE_VALIDATEALL_OPERATION_DONE"
	.byte		0
	.sleb128	8
	.sleb128	14
	.byte		"NVM_SUBSTATE_SINGLEBLOCK_OPERATION_DONE"
	.byte		0
	.sleb128	9
	.sleb128	14
	.byte		"NVM_SUBSTATE_MULTIBLOCK_OPERATION_DONE"
	.byte		0
	.sleb128	10
	.sleb128	14
	.byte		"NVM_SUBSTATE_READBLOCK_INIT"
	.byte		0
	.sleb128	11
	.sleb128	14
	.byte		"NVM_SUBSTATE_READBLOCK_READING"
	.byte		0
	.sleb128	12
	.sleb128	14
	.byte		"NVM_SUBSTATE_READBLOCK_VALIDATE"
	.byte		0
	.sleb128	13
	.sleb128	14
	.byte		"NVM_SUBSTATE_RESTOREBLOCK_READ_DEFAULTS"
	.byte		0
	.sleb128	14
	.sleb128	14
	.byte		"NVM_SUBSTATE_RESTOREBLOCK_VALIDATE"
	.byte		0
	.sleb128	15
	.sleb128	14
	.byte		"NVM_SUBSTATE_WRITEBLOCK_INIT"
	.byte		0
	.sleb128	16
	.sleb128	14
	.byte		"NVM_SUBSTATE_WRITEBLOCK_WRITING"
	.byte		0
	.sleb128	17
	.sleb128	14
	.byte		"NVM_SUBSTATE_ERASEBLOCK_INIT"
	.byte		0
	.sleb128	18
	.sleb128	14
	.byte		"NVM_SUBSTATE_ERASEBLOCK_START"
	.byte		0
	.sleb128	19
	.sleb128	14
	.byte		"NVM_SUBSTATE_ERASEBLOCK_INPROGRESS"
	.byte		0
	.sleb128	20
	.sleb128	14
	.byte		"NVM_SUBSTATE_INVALIDATEBLOCK_INIT"
	.byte		0
	.sleb128	21
	.sleb128	14
	.byte		"NVM_SUBSTATE_INVALIDATEBLOCK_STARTPROCESS"
	.byte		0
	.sleb128	22
	.sleb128	14
	.byte		"NVM_SUBSTATE_INVALIDATEBLOCK_OPN_IS_IN_PROGRESS"
	.byte		0
	.sleb128	23
	.sleb128	14
	.byte		"NVM_SUBSTATE_READALL_CHECK_DATA_VALID"
	.byte		0
	.sleb128	24
	.sleb128	14
	.byte		"NVM_SUBSTATE_READALL_VALIDATE_DEFAULTS"
	.byte		0
	.sleb128	25
	.sleb128	14
	.byte		"NVM_SUBSTATE_READALL_READ_CONFIGID"
	.byte		0
	.sleb128	26
	.sleb128	14
	.byte		"NVM_SUBSTATE_READALL_STANDARD_METHOD"
	.byte		0
	.sleb128	27
	.sleb128	14
	.byte		"NVM_SUBSTATE_READALL_RESTORE"
	.byte		0
	.sleb128	28
	.sleb128	14
	.byte		"NVM_SUBSTATE_READALL_RESTORE_VALIDATE"
	.byte		0
	.sleb128	29
	.sleb128	14
	.byte		"NVM_SUBSTATE_WRITEALL_WRITING"
	.byte		0
	.sleb128	30
	.sleb128	14
	.byte		"NVM_SUBSTATE_READ_PRAM_BLOCK_INIT"
	.byte		0
	.sleb128	31
	.sleb128	14
	.byte		"NVM_SUBSTATE_READ_PRAM_BLOCK_READING"
	.byte		0
	.sleb128	32
	.sleb128	14
	.byte		"NVM_SUBSTATE_READ_PRAM_BLOCK_VALIDATE"
	.byte		0
	.sleb128	33
	.sleb128	14
	.byte		"NVM_SUBSTATE_RESTORE_PRAM_BLOCK_READ_DEFAULTS"
	.byte		0
	.sleb128	34
	.sleb128	14
	.byte		"NVM_SUBSTATE_RESTORE_PRAM_BLOCK_VALIDATE"
	.byte		0
	.sleb128	35
	.sleb128	14
	.byte		"NVM_SUBSTATE_WRITE_PRAM_BLOCK_INIT"
	.byte		0
	.sleb128	36
	.sleb128	14
	.byte		"NVM_SUBSTATE_WRITE_PRAM_BLOCK_WRITING"
	.byte		0
	.sleb128	37
	.sleb128	14
	.byte		"NVM_SUBSTATE_VALIDATEALL_VALIDATE"
	.byte		0
	.sleb128	38
	.sleb128	14
	.byte		"NVM_SUBSTATE_SERVICE_NB"
	.byte		0
	.sleb128	39
	.sleb128	0
.L784:
.L544:
	.sleb128	13
	.4byte		.L715
	.uleb128	185
	.uleb128	14
	.4byte		.L785-.L2
	.byte		"NvM_BlockMngmtType_Tag"
	.byte		0
	.uleb128	4
	.sleb128	14
	.byte		"NVM_BLOCK_NATIVE"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"NVM_BLOCK_REDUNDANT"
	.byte		0
	.sleb128	1
	.sleb128	14
	.byte		"NVM_BLOCK_DATASET"
	.byte		0
	.sleb128	2
	.sleb128	0
.L785:
.L714:
	.sleb128	13
	.4byte		.L715
	.uleb128	172
	.uleb128	14
	.4byte		.L786-.L2
	.byte		"NvM_BlockCrcType_Tag"
	.byte		0
	.uleb128	4
	.sleb128	14
	.byte		"NVM_CRC8"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"NVM_CRC16"
	.byte		0
	.sleb128	1
	.sleb128	14
	.byte		"NVM_CRC32"
	.byte		0
	.sleb128	2
	.sleb128	14
	.byte		"NVM_CRC00"
	.byte		0
	.sleb128	3
	.sleb128	14
	.byte		"NVM_CRC_TYPES_NB"
	.byte		0
	.sleb128	4
	.sleb128	0
.L786:
.L708:
	.sleb128	13
	.4byte		.L715
	.uleb128	153
	.uleb128	14
	.4byte		.L787-.L2
	.byte		"NvM_DemEventIdNumberType_Tag"
	.byte		0
	.uleb128	4
	.sleb128	14
	.byte		"NVM_DEM_EVENT_E_NO_ERROR"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"NVM_DEM_EVENT_E_HARDWARE"
	.byte		0
	.sleb128	1
	.sleb128	14
	.byte		"NVM_DEM_EVENT_E_REQ_FAILED"
	.byte		0
	.sleb128	2
	.sleb128	14
	.byte		"NVM_DEM_EVENT_E_INTEGRITY_FAILED"
	.byte		0
	.sleb128	3
	.sleb128	14
	.byte		"NVM_DEM_EVENT_E_LOSS_OF_REDUNDANCY"
	.byte		0
	.sleb128	4
	.sleb128	14
	.byte		"NVM_DEM_EVENT_E_VERIFY_FAILED"
	.byte		0
	.sleb128	5
	.sleb128	14
	.byte		"NVM_DEM_EVENT_E_QUEUE_OVERFLOW"
	.byte		0
	.sleb128	6
	.sleb128	14
	.byte		"NVM_DEM_EVENT_E_WRITE_PROTECTED"
	.byte		0
	.sleb128	7
	.sleb128	14
	.byte		"NVM_DEM_EVENT_E_WRONG_BLOCK_ID"
	.byte		0
	.sleb128	8
	.sleb128	0
.L787:
	.section	.debug_info,,n
.L527:
	.sleb128	15
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L526:
	.sleb128	16
	.byte		"boolean"
	.byte		0
	.4byte		.L527
.L541:
	.sleb128	15
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L540:
	.sleb128	16
	.byte		"uint16"
	.byte		0
	.4byte		.L541
.L539:
	.sleb128	16
	.byte		"NvM_BlockIdType"
	.byte		0
	.4byte		.L540
.L543:
	.sleb128	16
	.byte		"NvM_BlockMngmtType"
	.byte		0
	.4byte		.L544
.L553:
	.sleb128	16
	.byte		"uint8"
	.byte		0
	.4byte		.L527
	.section	.debug_info,,n
.L552:
	.sleb128	17
	.4byte		.L553
	.section	.debug_info,,n
.L551:
	.sleb128	18
	.4byte		.L552
.L562:
	.sleb128	18
	.4byte		.L553
.L581:
	.sleb128	16
	.byte		"NvM_CalculationCrcStateType"
	.byte		0
	.4byte		.L582
.L601:
	.sleb128	16
	.byte		"MemIf_StatusType"
	.byte		0
	.4byte		.L602
.L610:
	.sleb128	16
	.byte		"NvM_BlockRequestType"
	.byte		0
	.4byte		.L611
.L609:
	.sleb128	18
	.4byte		.L610
.L631:
	.sleb128	16
	.byte		"MemIf_JobResultType"
	.byte		0
	.4byte		.L632
.L656:
	.sleb128	16
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L553
.L679:
	.sleb128	16
	.byte		"NvM_CommonType"
	.byte		0
	.4byte		.L680
.L678:
	.sleb128	17
	.4byte		.L679
.L683:
	.sleb128	16
	.byte		"NvM_BlockManagementType"
	.byte		0
	.4byte		.L684
.L682:
	.sleb128	17
	.4byte		.L683
.L687:
	.sleb128	16
	.byte		"NvM_SubStateMachineType"
	.byte		0
	.4byte		.L688
.L693:
	.sleb128	16
	.byte		"NvM_DataCrcType"
	.byte		0
	.4byte		.L694
.L700:
	.sleb128	16
	.byte		"NvM_ServiceIdType"
	.byte		0
	.4byte		.L701
.L702:
	.sleb128	16
	.byte		"NvM_NvMemifInfoType"
	.byte		0
	.4byte		.L703
.L705:
	.sleb128	16
	.byte		"NvM_BlockMemifDriverStateType"
	.byte		0
	.4byte		.L706
.L707:
	.sleb128	16
	.byte		"NvM_DemEventIdNumberType"
	.byte		0
	.4byte		.L708
.L709:
	.sleb128	16
	.byte		"NvM_RequestResultType"
	.byte		0
	.4byte		.L553
.L712:
	.sleb128	15
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L711:
	.sleb128	16
	.byte		"uint32"
	.byte		0
	.4byte		.L712
.L713:
	.sleb128	16
	.byte		"NvM_BlockCrcType"
	.byte		0
	.4byte		.L714
.L719:
	.sleb128	16
	.byte		"NvM_AdministrativeBlockType"
	.byte		0
	.4byte		.L720
.L718:
	.sleb128	18
	.4byte		.L719
.L717:
	.sleb128	17
	.4byte		.L718
.L724:
	.sleb128	16
	.byte		"NvM_BlockDescriptorType"
	.byte		0
	.4byte		.L725
.L723:
	.sleb128	17
	.4byte		.L724
.L722:
	.sleb128	18
	.4byte		.L723
.L721:
	.sleb128	17
	.4byte		.L722
	.section	.debug_info,,n
.L729:
	.sleb128	19
	.4byte		.L730-.L2
	.byte		0x1
	.section	.debug_info,,n
	.sleb128	20
	.4byte		.L553
	.sleb128	20
	.4byte		.L709
	.sleb128	0
.L730:
.L728:
	.sleb128	18
	.4byte		.L729
.L727:
	.sleb128	16
	.byte		"NvM_MultiBlockCallbackFunctionType"
	.byte		0
	.4byte		.L728
.L733:
	.sleb128	19
	.4byte		.L734-.L2
	.byte		0x1
	.sleb128	20
	.4byte		.L539
	.sleb128	20
	.4byte		.L709
	.sleb128	0
.L734:
.L732:
	.sleb128	18
	.4byte		.L733
.L731:
	.sleb128	16
	.byte		"NvM_BswM_NvM_CurrentBlockModeFunctionType"
	.byte		0
	.4byte		.L732
.L737:
	.sleb128	19
	.4byte		.L738-.L2
	.byte		0x1
	.sleb128	20
	.4byte		.L553
	.sleb128	20
	.4byte		.L709
	.sleb128	0
.L738:
.L736:
	.sleb128	18
	.4byte		.L737
.L735:
	.sleb128	16
	.byte		"NvM_BswM_NvM_CurrentJobModeFunctionType"
	.byte		0
	.4byte		.L736
.L740:
	.sleb128	18
	.4byte		.L711
.L739:
	.sleb128	17
	.4byte		.L740
.L741:
	.sleb128	17
	.4byte		.L562
	.section	.debug_info,,n
.L745:
	.sleb128	21
	.4byte		.L746-.L2
	.4byte		.L711
	.byte		0x1
	.sleb128	20
	.4byte		.L551
	.sleb128	20
	.4byte		.L711
	.sleb128	20
	.4byte		.L711
	.sleb128	20
	.4byte		.L526
	.sleb128	0
.L746:
.L744:
	.sleb128	18
	.4byte		.L745
.L743:
	.sleb128	16
	.byte		"NVM_CRC32_FUNC"
	.byte		0
	.4byte		.L744
.L749:
	.sleb128	21
	.4byte		.L750-.L2
	.4byte		.L656
	.byte		0x1
	.sleb128	0
.L750:
.L748:
	.sleb128	18
	.4byte		.L749
.L747:
	.sleb128	16
	.byte		"NvM_InitBlockCallbackPtrType"
	.byte		0
	.4byte		.L748
.L753:
	.sleb128	21
	.4byte		.L754-.L2
	.4byte		.L656
	.byte		0x1
	.sleb128	20
	.4byte		.L553
	.sleb128	20
	.4byte		.L709
	.sleb128	0
.L754:
.L752:
	.sleb128	18
	.4byte		.L753
.L751:
	.sleb128	16
	.byte		"NvM_SingleBlockCallbackFunctionType"
	.byte		0
	.4byte		.L752
.L757:
	.sleb128	21
	.4byte		.L758-.L2
	.4byte		.L656
	.byte		0x1
	.section	.debug_info,,n
.L761:
	.sleb128	22
	.byte		"void"
	.byte		0
	.byte		0x0
.L760:
	.sleb128	17
	.4byte		.L761
.L759:
	.sleb128	18
	.4byte		.L760
	.sleb128	20
	.4byte		.L759
	.sleb128	0
.L758:
.L756:
	.sleb128	18
	.4byte		.L757
.L755:
	.sleb128	16
	.byte		"NvM_RamMirrorOperationReadCallBackType"
	.byte		0
	.4byte		.L756
.L764:
	.sleb128	21
	.4byte		.L765-.L2
	.4byte		.L656
	.byte		0x1
.L766:
	.sleb128	18
	.4byte		.L761
	.sleb128	20
	.4byte		.L766
	.sleb128	0
.L765:
.L763:
	.sleb128	18
	.4byte		.L764
.L762:
	.sleb128	16
	.byte		"NvM_RamMirrorOperationWriteCallBackType"
	.byte		0
	.4byte		.L763
.L769:
	.sleb128	16
	.byte		"NvM_DemEventIdType"
	.byte		0
	.4byte		.L770
.L768:
	.sleb128	17
	.4byte		.L769
.L767:
	.sleb128	18
	.4byte		.L768
.L774:
	.sleb128	15
	.byte		"unsigned int"
	.byte		0
	.byte		0x7
	.byte		0x4
.L777:
	.sleb128	16
	.byte		"Dem_EventIdType"
	.byte		0
	.4byte		.L540
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L530:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),5
	.d2locend
.L537:
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),31
	.d2locend
.L545:
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),0
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),0
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),0
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo12),0
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo14),0
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo16),0
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo18),0
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo20),0
	.d2locend
.L554:
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo22),30
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo24),30
	.d2locend
.L556:
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo26),0
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo28),0
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo30),0
	.d2locreg	%offsetof(.Llo31), %offsetof(.Llo32),0
	.d2locreg	%offsetof(.Llo33), %offsetof(.Llo34),0
	.d2locreg	%offsetof(.Llo35), %offsetof(.Llo36),0
	.d2locreg	%offsetof(.Llo37), %offsetof(.Llo38),3
	.d2locreg	%offsetof(.Llo39), %offsetof(.Llo22),0
	.d2locreg	%offsetof(.Llo40), %offsetof(.Llo24),4
	.d2locend
.L563:
	.d2locreg	%offsetof(.Llo41), %offsetof(.Llo22),29
	.d2locend
.L570:
	.d2locreg	%offsetof(.Llo42), %offsetof(.Llo43),30
	.d2locend
.L572:
	.d2locreg	%offsetof(.Llo44), %offsetof(.Llo45),31
	.d2locend
.L579:
	.d2locreg	%offsetof(.Llo46), %offsetof(.Llo47),31
	.d2locend
.L583:
	.d2locreg	%offsetof(.Llo48), %offsetof(.Llo49),3
	.d2locreg	%offsetof(.Llo50), %offsetof(.Llo51),3
	.d2locreg	%offsetof(.Llo52), %offsetof(.Llo53),3
	.d2locend
.L590:
	.d2locreg	%offsetof(.Llo54), %offsetof(.Llo55),3
	.d2locend
.L597:
	.d2locreg	%offsetof(.Llo56), %offsetof(.Llo57),5
	.d2locreg	%offsetof(.Llo58), %offsetof(.Llo59),5
	.d2locreg	%offsetof(.Llo60), %offsetof(.Llo61),5
	.d2locend
.L599:
	.d2locreg	%offsetof(.Llo62), %offsetof(.Llo63),31
	.d2locend
.L603:
	.d2locreg	%offsetof(.Llo64), %offsetof(.Llo63),30
	.d2locend
.L612:
	.d2locreg	%offsetof(.Llo65), %offsetof(.Llo66),3
	.d2locreg	%offsetof(.Llo67), %offsetof(.Llo68),31
	.d2locend
.L614:
	.d2locreg	%offsetof(.Llo67), %offsetof(.Llo69),30
	.d2locend
.L616:
	.d2locreg	%offsetof(.Llo70), %offsetof(.Llo71),29
	.d2locreg	%offsetof(.Llo72), %offsetof(.Llo73),29
	.d2locend
.L629:
	.d2locreg	%offsetof(.Llo74), %offsetof(.Llo75),31
	.d2locend
.L633:
	.d2locreg	%offsetof(.Llo76), %offsetof(.Llo77),3
	.d2locend
.L635:
	.d2locreg	%offsetof(.Llo78), %offsetof(.Llo79),0
	.d2locreg	%offsetof(.Llo80), %offsetof(.Llo81),0
	.d2locreg	%offsetof(.Llo82), %offsetof(.Llo83),0
	.d2locreg	%offsetof(.Llo84), %offsetof(.Llo85),0
	.d2locreg	%offsetof(.Llo86), %offsetof(.Llo87),0
	.d2locend
.L637:
	.d2locreg	%offsetof(.Llo88), %offsetof(.Llo89),30
	.d2locreg	%offsetof(.Llo90), %offsetof(.Llo83),30
	.d2locreg	%offsetof(.Llo85), %offsetof(.Llo87),30
	.d2locend
.L645:
	.d2locreg	%offsetof(.Llo91), %offsetof(.Llo92),31
	.d2locend
.L647:
	.d2locreg	%offsetof(.Llo93), %offsetof(.Llo94),3
	.d2locend
.L654:
	.d2locreg	%offsetof(.Llo95), %offsetof(.Llo96),31
	.d2locend
.L657:
	.d2locreg	%offsetof(.Llo97), %offsetof(.Llo98),3
	.d2locreg	%offsetof(.Llo99), %offsetof(.Llo100),3
	.d2locreg	%offsetof(.Llo101), %offsetof(.Llo102),3
	.d2locreg	%offsetof(.Llo103), %offsetof(.Llo104),3
	.d2locreg	%offsetof(.Llo105), %offsetof(.Llo106),3
	.d2locreg	%offsetof(.Llo107), %offsetof(.Llo108),3
	.d2locreg	%offsetof(.Llo109), %offsetof(.Llo110),3
	.d2locreg	%offsetof(.Llo111), %offsetof(.Llo112),3
	.d2locreg	%offsetof(.Llo113), %offsetof(.Llo114),3
	.d2locreg	%offsetof(.Llo115), %offsetof(.Llo116),3
	.d2locreg	%offsetof(.Llo117), %offsetof(.Llo118),3
	.d2locend
.L659:
	.d2locreg	%offsetof(.Llo119), %offsetof(.Llo104),30
	.d2locreg	%offsetof(.Llo120), %offsetof(.Llo108),30
	.d2locreg	%offsetof(.Llo110), %offsetof(.Llo121),30
	.d2locreg	%offsetof(.Llo122), %offsetof(.Llo123),30
	.d2locend
.L666:
	.d2locreg	%offsetof(.Llo124), %offsetof(.Llo125),3
	.d2locreg	%offsetof(.Llo126), %offsetof(.Llo127),3
	.d2locreg	%offsetof(.Llo128), %offsetof(.Llo129),3
	.d2locend
.L673:
	.d2locreg	%offsetof(.Llo130), %offsetof(.Llo131),0
	.d2locreg	%offsetof(.Llo132), %offsetof(.Llo133),0
	.d2locreg	%offsetof(.Llo134), %offsetof(.Llo135),0
	.d2locreg	%offsetof(.Llo136), %offsetof(.Llo137),0
	.d2locreg	%offsetof(.Llo138), %offsetof(.Llo139),0
	.d2locreg	%offsetof(.Llo140), %offsetof(.Llo141),3
	.d2locreg	%offsetof(.Llo142), %offsetof(.Llo143),0
	.d2locreg	%offsetof(.Llo144), %offsetof(.Llo145),0
	.d2locreg	%offsetof(.Llo146), %offsetof(.Llo147),0
	.d2locend
.L675:
	.d2locreg	%offsetof(.Llo148), %offsetof(.Llo147),31
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "NvM_ActBlockNvReadPRAMProcessErr"
	.wrcm.nstrlist "calls", "NvM_Call_Dem_ReportErrorStatus"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "NvM_ActBlockNvReadPRAMRomDatasetValidate"
	.wrcm.nstrlist "calls", "NvM_ValidateCrc"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "NvM_ActBlockNvReadPRAMRamMirror"
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nstrlist "calls", "NvM_Call_Dem_ReportErrorStatus","NvM_CopyRamMirrorToRam"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "NvM_ActBlockNvReadPRAMCheckCrc"
	.wrcm.nstrlist "calls", "NvM_Call_Dem_ReportErrorStatus","NvM_ValidateCrc"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "NvM_ActBlockNvReadPRAMInProgress"
	.wrcm.nstrlist "calls", "Ea_GetJobResult","NvM_Call_Dem_ReportErrorStatus","NvM_ReadingPRAM"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "NvM_ReadingPRAM"
	.wrcm.nstrlist "calls", "NvM_Call_Dem_ReportErrorStatus","NvM_MemCopy"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "NvM_ActBlockNvReadPRAMStart"
	.wrcm.nstrlist "calls", "Ea_Read","NvM_Call_Dem_ReportErrorStatus"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "NvM_ActBlockNvReadPRAMRecalc"
	.wrcm.nstrlist "calls", "NvM_Call_Dem_ReportErrorStatus","NvM_ValidateCrc"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "NvM_ActSubStateReadPRAMBlockValidate"
	.wrcm.nstrlist "calls", "NvM_ValidateCrc"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "NvM_ActSubStateReadPRAMBlockReading"
	.wrcm.nstrlist "calls", "NvM_ProcessPRAMReadingNvBlockStates","NvM_RestoreDefaultData"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "NvM_ActBlockNvReadPRAMInit"
	.wrcm.nstrlist "calls", "NvM_Call_Dem_ReportErrorStatus","NvM_MemCopy"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "NvM_ActSubStateReadPRAMBlockInit"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\NvM_ReadServices.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\NvM_ReadServices.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\NvM_ReadServices.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\NvM_ReadServices.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\NvM_ReadServices.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\NvM_ReadServices.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\MEM\NvM\ssc\make\..\src\NvM_ReadServices.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
